// ============================================================
//  Fruitcraft.exe - Fruitcraft PC launcher (v0.1.02b)
//  Finds and VALIDATES the game data folder (next to exe,
//  parent dir, or user-picked), links its contents into the
//  app root (junctions / hardlinks, no copies), then launches
//  FruitcraftEngine.exe maximized.
// ============================================================
#include <windows.h>
#include <shlobj.h>
#include <shellapi.h>
#include <stdio.h>

#define APP_NAME L"Fruitcraft"
#define MAXP 2048

static void RunHidden(const wchar_t *cmd) {
  STARTUPINFOW si; PROCESS_INFORMATION pi;
  ZeroMemory(&si, sizeof(si)); si.cb = sizeof(si);
  ZeroMemory(&pi, sizeof(pi));
  if (CreateProcessW(NULL, (LPWSTR)cmd, NULL, NULL, FALSE,
                     CREATE_NO_WINDOW, NULL, NULL, &si, &pi)) {
    WaitForSingleObject(pi.hProcess, 120000);
    CloseHandle(pi.hProcess); CloseHandle(pi.hThread);
  }
}

static BOOL IsDir(const wchar_t *p) {
  DWORD a = GetFileAttributesW(p);
  return a != INVALID_FILE_ATTRIBUTES && (a & FILE_ATTRIBUTE_DIRECTORY);
}
static BOOL IsFile(const wchar_t *p) {
  DWORD a = GetFileAttributesW(p);
  return a != INVALID_FILE_ATTRIBUTES && !(a & FILE_ATTRIBUTE_DIRECTORY);
}

// Resolve a picked/auto dir to the actual data dir:
//   dir/FCMain.lua            -> dir
//   dir/gamefiles/FCMain.lua  -> dir/gamefiles   (legacy layout)
//   dir/data/FCMain.lua       -> dir/data
static BOOL ResolveDataDir(const wchar_t *dir, wchar_t *out, int outlen) {
  wchar_t p[MAXP + 64];
  swprintf(p, MAXP + 64, L"%s\\FCMain.lua", dir);
  if (IsFile(p)) { lstrcpynW(out, dir, outlen); return TRUE; }
  swprintf(p, MAXP + 64, L"%s\\gamefiles\\FCMain.lua", dir);
  if (IsFile(p)) { swprintf(out, outlen, L"%s\\gamefiles", dir); return TRUE; }
  swprintf(p, MAXP + 64, L"%s\\data\\FCMain.lua", dir);
  if (IsFile(p)) { swprintf(out, outlen, L"%s\\data", dir); return TRUE; }
  return FALSE;
}

static void LinkAll(const wchar_t *exedir, const wchar_t *gf, int *failed) {
  wchar_t spec[MAXP + 8];
  swprintf(spec, MAXP + 8, L"%s\\*", gf);
  WIN32_FIND_DATAW fd;
  HANDLE h = FindFirstFileW(spec, &fd);
  if (h == INVALID_HANDLE_VALUE) { *failed = 1; return; }
  *failed = 0;
  do {
    if (lstrcmpW(fd.cFileName, L".") == 0 || lstrcmpW(fd.cFileName, L"..") == 0) continue;
    wchar_t linkPath[MAXP + 48], srcPath[MAXP + 48], cmd[4096];
    swprintf(linkPath, MAXP + 48, L"%s\\%s", exedir, fd.cFileName);
    if (GetFileAttributesW(linkPath) != INVALID_FILE_ATTRIBUTES) continue; // already synced
    swprintf(srcPath, MAXP + 48, L"%s\\%s", gf, fd.cFileName);
    if (fd.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) {
      swprintf(cmd, 4096, L"cmd.exe /c mklink /J \"%s\" \"%s\" >NUL 2>&1", linkPath, srcPath);
      RunHidden(cmd);
      if (!IsDir(linkPath)) {
        swprintf(cmd, 4096, L"cmd.exe /c xcopy /E /I /Q /Y \"%s\" \"%s\" >NUL 2>&1", srcPath, linkPath);
        RunHidden(cmd);
        if (!IsDir(linkPath)) *failed = 1;
      }
    } else {
      if (!CreateHardLinkW(linkPath, srcPath, NULL)) {
        if (!CopyFileW(srcPath, linkPath, FALSE)) *failed = 1;
      }
    }
  } while (FindNextFileW(h, &fd));
  FindClose(h);
}

static BOOL BrowseForData(wchar_t *out, int outlen) {
  BROWSEINFOW bi; ZeroMemory(&bi, sizeof(bi));
  bi.hwndOwner = NULL;
  bi.lpszTitle = L"Select the folder containing the game data (the folder with FCMain.lua)";
  bi.ulFlags = BIF_RETURNONLYFSDIRS | BIF_NEWDIALOGSTYLE;
  LPITEMIDLIST pidl = SHBrowseForFolderW(&bi);
  if (!pidl) return FALSE;
  BOOL ok = SHGetPathFromIDListW(pidl, out) && lstrlenW(out) < outlen;
  CoTaskMemFree(pidl);
  return ok;
}

int WINAPI wWinMain(HINSTANCE h, HINSTANCE p, LPWSTR c, int s) {
  (void)p; (void)c; (void)s;

  wchar_t exedir[MAXP] = L"";
  UINT n = GetModuleFileNameW(h, exedir, MAXP);
  if (n == 0 || n >= MAXP) {
    MessageBoxW(0, L"Cannot resolve the launcher location.", APP_NAME, MB_ICONERROR);
    return 1;
  }
  wchar_t *sl = wcsrchr(exedir, L'\\');
  if (sl) *sl = 0;

  // 1) find + validate data: next to the exe, then in the parent folder
  wchar_t dataDir[MAXP] = L"";
  {
    wchar_t cand[MAXP + 16];
    swprintf(cand, MAXP + 16, L"%s\\data", exedir);
    if (IsDir(cand) && ResolveDataDir(cand, dataDir, MAXP)) {
      // ok
    } else {
      wchar_t parent[MAXP];
      lstrcpynW(parent, exedir, MAXP);
      wchar_t *s2 = wcsrchr(parent, L'\\');
      if (s2) {
        *s2 = 0;
        swprintf(cand, MAXP + 16, L"%s\\data", parent);
        if (IsDir(cand) && ResolveDataDir(cand, dataDir, MAXP)) {
          // ok
        }
      }
    }
  }

  // 2) not found -> let the user pick it manually (also validates)
  if (!dataDir[0]) {
    int r = MessageBoxW(0,
      L"Game data folder was not found next to the launcher.\n\n"
      L"OK: choose the data folder manually\nCancel: exit",
      APP_NAME, MB_ICONERROR | MB_OKCANCEL);
    if (r == IDOK) {
      wchar_t picked[MAXP] = L"";
      if (!BrowseForData(picked, MAXP)) return 1;
      if (!ResolveDataDir(picked, dataDir, MAXP)) {
        MessageBoxW(0,
          L"That folder does not look like game data (FCMain.lua is missing).\n"
          L"Pick the folder that directly contains FCMain.lua "
          L"(or its gamefiles/ subfolder).",
          APP_NAME, MB_ICONERROR);
        return 1;
      }
      // link it next to the launcher for future runs
      if (lstrcmpiW(dataDir, exedir) != 0) {
        wchar_t target[MAXP + 16], cmd[4096];
        swprintf(target, MAXP + 16, L"%s\\data", exedir);
        if (!IsDir(target)) {
          swprintf(cmd, 4096, L"cmd.exe /c mklink /J \"%s\" \"%s\" >NUL 2>&1", target, dataDir);
          RunHidden(cmd);
        }
      }
    } else {
      return 1;
    }
  }

  // 3) link data contents into the app root
  int failed = 0;
  LinkAll(exedir, dataDir, &failed);

  // 4) launch the engine maximized
  wchar_t engine[MAXP + 32];
  swprintf(engine, MAXP + 32, L"%s\\FruitcraftEngine.exe", exedir);
  if (!IsFile(engine)) {
    MessageBoxW(0, L"FruitcraftEngine.exe not found. Keep the whole folder intact.",
                APP_NAME, MB_ICONERROR);
    return 1;
  }
  if (failed) {
    MessageBoxW(0,
      L"Some files could not be linked automatically.\n"
      L"If the engine reports missing files, check that antivirus is not blocking this folder.",
      APP_NAME, MB_ICONWARNING);
  }
  SHELLEXECUTEINFOW sei; ZeroMemory(&sei, sizeof(sei));
  sei.cbSize = sizeof(sei);
  sei.fMask = SEE_MASK_NOCLOSEPROCESS;
  sei.lpFile = engine;
  sei.lpDirectory = exedir;
  sei.nShow = SW_SHOWMAXIMIZED;
  if (!ShellExecuteExW(&sei)) {
    MessageBoxW(0, L"Could not start the engine.\nTry running FruitcraftEngine.exe manually and select main.lua.",
                APP_NAME, MB_ICONERROR);
    return 1;
  }
  if (sei.hProcess) CloseHandle(sei.hProcess);
  return 0;
}
