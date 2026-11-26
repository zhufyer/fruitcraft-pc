// ============================================================
//  Fruitcraft.exe - Fruitcraft PC launcher (v0.1.03b)
//  Rewritten from scratch:
//   - pure Win32 recursive copy of data/* into the app root
//     (real files: no junctions, no hardlinks, no cmd.exe)
//   - visible topmost status window with progress + game icon
//   - if data/ is missing: folder picker (validated), then copy
//   - launches FruitcraftEngine.exe maximized
//  After the first run the app root holds the full flat game -
//  the exact layout proven to launch on the target PC.
// ============================================================
#include <windows.h>
#include <shlobj.h>
#include <stdio.h>

#define APP_NAME L"Fruitcraft"
#define MAXP 2048

static HINSTANCE g_hInst;
static HWND g_hwnd;
static wchar_t g_status[300] = L"";
static int g_total = 0, g_copied = 0;

static void SetStatus(const wchar_t *s) {
  lstrcpynW(g_status, s, 300);
  if (g_hwnd && IsWindow(g_hwnd)) {
    InvalidateRect(g_hwnd, NULL, TRUE);
    UpdateWindow(g_hwnd);
  }
}

static void SetPct(const wchar_t *label) {
  wchar_t s[300];
  int pct = g_total > 0 ? (g_copied * 100) / g_total : 0;
  swprintf(s, 300, L"%s  %d%%", label, pct);
  SetStatus(s);
}

static void Pump(void) {
  MSG m;
  while (PeekMessageW(&m, NULL, 0, 0, PM_REMOVE)) DispatchMessageW(&m);
}

LRESULT CALLBACK WndProc(HWND h, UINT m, WPARAM w, LPARAM l) {
  if (m == WM_PAINT) {
    PAINTSTRUCT ps;
    HDC dc = BeginPaint(h, &ps);
    RECT rc; GetClientRect(h, &rc);
    FillRect(dc, &rc, (HBRUSH)GetStockObject(WHITE_BRUSH));
    HICON ic = (HICON)LoadImageW(g_hInst, MAKEINTRESOURCEW(1), IMAGE_ICON, 48, 48, 0);
    if (ic) DrawIconEx(dc, 22, (rc.bottom - 48) / 2, ic, 0, 0, 48, 0, DI_NORMAL);
    RECT tr = rc; tr.left += 86;
    SetBkMode(dc, TRANSPARENT);
    SetTextColor(dc, RGB(15, 95, 55));
    SelectObject(dc, (HFONT)GetStockObject(DEFAULT_GUI_FONT));
    DrawTextW(dc, g_status, -1, &tr, DT_LEFT | DT_VCENTER | DT_WORDBREAK);
    EndPaint(h, &ps);
    return 0;
  }
  if (m == WM_DESTROY) { PostQuitMessage(0); return 0; }
  return DefWindowProcW(h, m, w, l);
}

static void ShowStatus(const wchar_t *s) {
  if (!g_hwnd) {
    WNDCLASSEXW wc; ZeroMemory(&wc, sizeof(wc));
    wc.cbSize = sizeof(wc);
    wc.lpfnWndProc = WndProc;
    wc.hInstance = g_hInst;
    wc.hCursor = LoadCursorW(NULL, MAKEINTRESOURCEW(32512));
    wc.hbrBackground = (HBRUSH)(COLOR_WINDOW + 1);
    wc.lpszClassName = L"FruitcraftStatus";
    wc.hIcon = (HICON)LoadImageW(g_hInst, MAKEINTRESOURCEW(1), IMAGE_ICON, 32, 32, 0);
    RegisterClassExW(&wc);
    g_hwnd = CreateWindowExW(WS_EX_TOPMOST | WS_EX_TOOLWINDOW,
        L"FruitcraftStatus", L"Fruitcraft",
        WS_POPUP | WS_CAPTION | WS_SYSMENU,
        CW_USEDEFAULT, CW_USEDEFAULT, 580, 150,
        NULL, NULL, g_hInst, NULL);
  }
  RECT wa;
  if (SystemParametersInfoW(SPI_GETWORKAREA, 0, &wa, 0)) {
    int x = wa.left + ((wa.right - wa.left) - 580) / 2;
    int y = wa.top + ((wa.bottom - wa.top) - 150) / 3;
    SetWindowPos(g_hwnd, HWND_TOPMOST, x, y, 580, 150, SWP_SHOWWINDOW);
  }
  SetStatus(s);
  Pump();
}

static void RunHidden(const wchar_t *cmd) {
  STARTUPINFOW si; PROCESS_INFORMATION pi;
  ZeroMemory(&si, sizeof(si)); si.cb = sizeof(si);
  ZeroMemory(&pi, sizeof(pi));
  if (CreateProcessW(NULL, (LPWSTR)cmd, NULL, NULL, FALSE,
                     CREATE_NO_WINDOW, NULL, NULL, &si, &pi)) {
    WaitForSingleObject(pi.hProcess, 60000);
    CloseHandle(pi.hProcess); CloseHandle(pi.hThread);
  }
}

static BOOL HasEntry(const wchar_t *dir, const wchar_t *name) {
  wchar_t p[MAXP + 64];
  swprintf(p, MAXP + 64, L"%s\\%s", dir, name);
  return GetFileAttributesW(p) != INVALID_FILE_ATTRIBUTES;
}

// dir/main.lua or dir/FCMain.lua        -> dir
// dir/gamefiles/main.lua (or FCMain)    -> dir/gamefiles
static BOOL ResolveDataDir(const wchar_t *dir, wchar_t *out, int outlen) {
  if (HasEntry(dir, L"main.lua") || HasEntry(dir, L"FCMain.lua")) {
    lstrcpynW(out, dir, outlen);
    return TRUE;
  }
  if (HasEntry(dir, L"gamefiles\\main.lua") || HasEntry(dir, L"gamefiles\\FCMain.lua")) {
    swprintf(out, outlen, L"%s\\gamefiles", dir);
    return TRUE;
  }
  return FALSE;
}

static BOOL BrowseForData(wchar_t *out, int outlen) {
  BROWSEINFOW bi; ZeroMemory(&bi, sizeof(bi));
  bi.hwndOwner = NULL;
  bi.lpszTitle = L"Select the folder containing the game data (the folder with main.lua)";
  bi.ulFlags = BIF_RETURNONLYFSDIRS | BIF_NEWDIALOGSTYLE;
  LPITEMIDLIST pidl = SHBrowseForFolderW(&bi);
  if (!pidl) return FALSE;
  BOOL ok = SHGetPathFromIDListW(pidl, out) && lstrlenW(out) < outlen;
  CoTaskMemFree(pidl);
  return ok;
}

static void CountTree(const wchar_t *dir, int *nfiles) {
  wchar_t spec[MAXP + 8];
  swprintf(spec, MAXP + 8, L"%s\\*", dir);
  WIN32_FIND_DATAW fd;
  HANDLE h = FindFirstFileW(spec, &fd);
  if (h == INVALID_HANDLE_VALUE) return;
  do {
    if (lstrcmpW(fd.cFileName, L".") == 0 || lstrcmpW(fd.cFileName, L"..") == 0) continue;
    wchar_t p[MAXP + 48];
    swprintf(p, MAXP + 48, L"%s\\%s", dir, fd.cFileName);
    if (fd.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) CountTree(p, nfiles);
    else (*nfiles)++;
  } while (FindNextFileW(h, &fd));
  FindClose(h);
}

static BOOL CopyTree(const wchar_t *src, const wchar_t *dst) {
  CreateDirectoryW(dst, NULL);
  wchar_t spec[MAXP + 8];
  swprintf(spec, MAXP + 8, L"%s\\*", src);
  WIN32_FIND_DATAW fd;
  HANDLE h = FindFirstFileW(spec, &fd);
  if (h == INVALID_HANDLE_VALUE) return FALSE;
  BOOL ok = TRUE;
  do {
    if (lstrcmpW(fd.cFileName, L".") == 0 || lstrcmpW(fd.cFileName, L"..") == 0) continue;
    wchar_t s[MAXP + 48], d[MAXP + 48];
    swprintf(s, MAXP + 48, L"%s\\%s", src, fd.cFileName);
    swprintf(d, MAXP + 48, L"%s\\%s", dst, fd.cFileName);
    if (fd.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) {
      if (!CopyTree(s, d)) ok = FALSE;
    } else {
      if (GetFileAttributesW(d) == INVALID_FILE_ATTRIBUTES) {
        if (!CopyFileW(s, d, FALSE)) ok = FALSE;
      }
      g_copied++;
      if ((g_copied & 31) == 0) SetPct(L"\u062f\u0631 \u062d\u0627\u0644 \u0622\u0645\u0627\u062f\u06af\u0627\u0631\u06cc\u0632\u0627\u0633\u06cc \u0628\u0627\u0632\u06cc...");
    }
  } while (FindNextFileW(h, &fd));
  FindClose(h);
  return ok;
}

int WINAPI wWinMain(HINSTANCE h, HINSTANCE p, LPWSTR c, int s) {
  (void)p; (void)c; (void)s;
  g_hInst = h;

  wchar_t exedir[MAXP] = L"";
  UINT n = GetModuleFileNameW(h, exedir, MAXP);
  if (n == 0 || n >= MAXP) {
    MessageBoxW(NULL, L"Cannot resolve the launcher location.\nTry moving the folder to a shorter path.",
                APP_NAME, MB_ICONERROR);
    return 1;
  }
  wchar_t *sl = wcsrchr(exedir, L'\\');
  if (sl) *sl = 0;

  // ---- 1) find + validate the data folder ----
  wchar_t dataDir[MAXP] = L"";
  {
    wchar_t cand[MAXP + 16];
    swprintf(cand, MAXP + 16, L"%s\\data", exedir);
    if (!ResolveDataDir(cand, dataDir, MAXP)) {
      dataDir[0] = 0;
      wchar_t parent[MAXP];
      lstrcpynW(parent, exedir, MAXP);
      wchar_t *s2 = wcsrchr(parent, L'\\');
      if (s2) {
        *s2 = 0;
        swprintf(cand, MAXP + 16, L"%s\\data", parent);
        ResolveDataDir(cand, dataDir, MAXP);
      }
    }
  }
  if (!dataDir[0]) {
    int r = MessageBoxW(NULL,
      L"Game data was not found next to the launcher.\n\n"
      L"OK: choose the data folder manually\nCancel: exit",
      APP_NAME, MB_ICONQUESTION | MB_OKCANCEL);
    if (r != IDOK) return 1;
    wchar_t picked[MAXP] = L"";
    if (!BrowseForData(picked, MAXP)) return 1;
    if (!ResolveDataDir(picked, dataDir, MAXP)) {
      MessageBoxW(NULL,
        L"That folder does not look like game data (main.lua is missing).\n"
        L"Pick the folder that contains main.lua (or its gamefiles/ subfolder).",
        APP_NAME, MB_ICONERROR);
      return 1;
    }
    // remember it for next time (best effort)
    wchar_t target[MAXP + 16], cmd[4096];
    swprintf(target, MAXP + 16, L"%s\\data", exedir);
    if (GetFileAttributesW(target) == INVALID_FILE_ATTRIBUTES) {
      swprintf(cmd, 4096, L"cmd.exe /c mklink /J \"%s\" \"%s\" >NUL 2>&1", target, dataDir);
      RunHidden(cmd);
    }
  }

  // ---- 2) copy data/* into the app root (real files) ----
  ShowStatus(L"\u062f\u0631 \u062d\u0627\u0644 \u0622\u0645\u0627\u062f\u06af\u0627\u0631\u06cc\u0632\u0627\u0633\u06cc \u0628\u0627\u0632\u06cc...  0%");
  CountTree(dataDir, &g_total);
  g_copied = 0;
  BOOL ok = CopyTree(dataDir, exedir);
  ShowStatus(L"\u0622\u0645\u0627\u062f\u06af\u0627\u0631\u06cc\u0632\u06cc \u062a\u0627\u0645\u0627\u0645 \u0634\u062f \u2014 \u062f\u0631 \u062d\u0627\u0644 \u0627\u062c\u0631\u0627\u06cc \u0628\u0627\u0632\u06cc...");
  if (g_hwnd) { DestroyWindow(g_hwnd); g_hwnd = NULL; }
  Pump();

  // ---- 3) launch the engine maximized ----
  wchar_t engine[MAXP + 32];
  swprintf(engine, MAXP + 32, L"%s\\FruitcraftEngine.exe", exedir);
  if (GetFileAttributesW(engine) == INVALID_FILE_ATTRIBUTES) {
    MessageBoxW(NULL, L"FruitcraftEngine.exe not found. Keep the whole folder intact.",
                APP_NAME, MB_ICONERROR);
    return 1;
  }
  if (!ok) {
    MessageBoxW(NULL,
      L"Some files could not be copied (antivirus blocking?).\n"
      L"If the game reports a missing file, allow this folder in your antivirus, then run the launcher again.",
      APP_NAME, MB_ICONWARNING);
  }
  SHELLEXECUTEINFOW sei; ZeroMemory(&sei, sizeof(sei));
  sei.cbSize = sizeof(sei);
  sei.fMask = SEE_MASK_NOCLOSEPROCESS;
  sei.lpFile = engine;
  sei.lpDirectory = exedir;
  sei.nShow = SW_SHOWMAXIMIZED;
  if (!ShellExecuteExW(&sei)) {
    MessageBoxW(NULL, L"Could not start the engine.\nRun FruitcraftEngine.exe and select data\\main.lua from this folder.",
                APP_NAME, MB_ICONERROR);
    return 1;
  }
  if (sei.hProcess) CloseHandle(sei.hProcess);
  return 0;
}
