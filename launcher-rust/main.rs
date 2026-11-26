// ============================================================
//  Fruitcraft.exe - Fruitcraft PC launcher (v0.1.09b, Rust)
//  Zero dependencies (raw Win32 FFI), built for x86_64-pc-windows-gnu.
//
//  * strips the "Mark of the Web" (Zone.Identifier ADS) from
//    every exe/dll so SmartScreen/antivirus treat them as local
//  * cleans stale game files from the app root (old versions)
//  * copies data/* into the app root as REAL files (progress)
//  * verifies the original bytecode modules are present
//  * launches FruitcraftEngine.exe, finds its window by title
//    (set to "Fruitcraft" by the game bootstrap), maximizes it,
//    watches for early exit, and logs everything to
//    fruitcraft.log for diagnostics
// ============================================================
#![windows_subsystem = "windows"]

use std::ffi::c_void;
use std::fs::{self, OpenOptions};
use std::io::Write;
use std::mem;
use std::path::{Path, PathBuf};
use std::sync::atomic::{AtomicI32, AtomicIsize, Ordering};
use std::sync::Mutex;
use std::time::{SystemTime, UNIX_EPOCH};

type HWND = *mut c_void;
type HANDLE = *mut c_void;
type HINSTANCE = *mut c_void;
type HDC = *mut c_void;
type HICON = *mut c_void;
type HBRUSH = *mut c_void;
type HGDIOBJ = *mut c_void;
type HMENU = *mut c_void;
type HCURSOR = *mut c_void;
type LPCWSTR = *const u16;
type LPWSTR = *mut u16;
type WPARAM = usize;
type LPARAM = isize;
type LRESULT = isize;
type BOOL = i32;
type DWORD = u32;
type COLORREF = u32;

#[repr(C)]
struct RECT {
    left: i32,
    top: i32,
    right: i32,
    bottom: i32,
}

#[repr(C)]
struct PAINTSTRUCT {
    hdc: HDC,
    fErase: BOOL,
    rcPaint: RECT,
    fRestore: BOOL,
    fIncUpdate: BOOL,
    rgbReserved: [u8; 32],
}

#[repr(C)]
struct WINDOWPLACEMENT {
    length: u32,
    flags: u32,
    showCmd: u32,
    ptMinPosition: [i32; 2],
    ptMaxPosition: [i32; 2],
    rcNormalPosition: RECT,
}

#[repr(C)]
struct MSG {
    hwnd: HWND,
    msg: u32,
    wParam: WPARAM,
    lParam: LPARAM,
    time: u32,
    pt: [i32; 2],
}

type WndProc = Option<unsafe extern "system" fn(HWND, u32, WPARAM, LPARAM) -> LRESULT>;

#[repr(C)]
struct WNDCLASSEXW {
    cbSize: u32,
    style: u32,
    lpfnWndProc: WndProc,
    cbClsExtra: i32,
    cbWndExtra: i32,
    hInstance: HINSTANCE,
    hIcon: HICON,
    hCursor: HCURSOR,
    hbrBackground: HBRUSH,
    lpszMenuName: LPCWSTR,
    lpszClassName: LPCWSTR,
    hIconSm: HICON,
}

#[repr(C)]
struct STARTUPINFOW {
    cb: u32,
    reserved: LPCWSTR,
    lpDesktop: LPCWSTR,
    lpTitle: LPCWSTR,
    dwX: i32,
    dwY: i32,
    dwXSize: i32,
    dwYSize: i32,
    dwXCountChars: i32,
    dwYCountChars: i32,
    dwFillAttribute: u32,
    dwFlags: u32,
    wShowWindow: i16,
    cbReserved2: i16,
    lpReserved2: LPWSTR,
    hStdInput: HANDLE,
    hStdOutput: HANDLE,
    hStdError: HANDLE,
}

#[repr(C)]
struct PROCESS_INFORMATION {
    hProcess: HANDLE,
    hThread: HANDLE,
    dwProcessId: u32,
    dwThreadId: u32,
}

#[repr(C)]
struct BROWSEINFOW {
    hwndOwner: HWND,
    pidl: *mut c_void,
    pszTitle: *mut u8,
    ulFlags: u32,
    lpfn: Option<unsafe extern "system" fn(*mut c_void, LPARAM)>,
    lParam: LPARAM,
    iImage: i32,
}

extern "system" {
    fn GetModuleHandleW(name: LPCWSTR) -> HINSTANCE;
    fn GetModuleFileNameW(m: HINSTANCE, b: LPWSTR, n: i32) -> i32;
    fn GetFileAttributesW(n: LPCWSTR) -> DWORD;
    fn DeleteFileW(n: LPCWSTR) -> BOOL;
    fn RemoveDirectoryW(n: LPCWSTR) -> BOOL;
    fn RegisterClassExW(wc: *const WNDCLASSEXW) -> u16;
    fn CreateWindowExW(
        ex: u32,
        cls: LPCWSTR,
        name: LPCWSTR,
        style: u32,
        x: i32,
        y: i32,
        w: i32,
        h: i32,
        parent: HWND,
        menu: HMENU,
        inst: HINSTANCE,
        param: *const c_void,
    ) -> HWND;
    fn ShowWindow(h: HWND, c: i32) -> BOOL;
    fn DestroyWindow(h: HWND) -> BOOL;
    fn DefWindowProcW(h: HWND, m: u32, w: WPARAM, l: LPARAM) -> LRESULT;
    fn BeginPaint(h: HWND, ps: *mut PAINTSTRUCT) -> HDC;
    fn EndPaint(h: HWND, ps: *const PAINTSTRUCT) -> BOOL;
    fn GetClientRect(h: HWND, rc: *mut RECT) -> BOOL;
    fn DrawIconEx(
        hdc: HDC,
        icon: HICON,
        x: i32,
        y: i32,
        cw: u32,
        ch: u32,
        xl: u32,
        yt: u32,
        ver: u32,
        flags: u32,
    ) -> BOOL;
    fn DrawTextW(hdc: HDC, s: LPWSTR, n: i32, rc: *mut RECT, f: u32) -> i32;
    fn LoadImageW(inst: HINSTANCE, name: LPCWSTR, ty: u32, w: i32, h: i32, f: u32) -> HGDIOBJ;
    fn InvalidateRect(h: HWND, rc: *const RECT, b: BOOL) -> BOOL;
    fn UpdateWindow(h: HWND) -> BOOL;
    fn MessageBoxW(h: HWND, t: LPCWSTR, c: LPCWSTR, f: u32) -> i32;
    fn PostQuitMessage(c: i32);
    fn LoadCursorW(inst: HINSTANCE, n: LPCWSTR) -> HCURSOR;
    fn SystemParametersInfoW(a: u32, p: u32, v: *mut c_void, f: u32) -> BOOL;
    fn FindWindowW(cls: LPCWSTR, name: LPCWSTR) -> HWND;
    fn SendMessageW(h: HWND, m: u32, w: WPARAM, l: LPARAM) -> LRESULT;
    fn IsWindowVisible(h: HWND) -> BOOL;
    fn SetForegroundWindow(h: HWND) -> BOOL;
    fn CreateProcessW(
        app: LPCWSTR,
        cmd: LPWSTR,
        pa: *mut c_void,
        ta: *mut c_void,
        inherit: BOOL,
        flags: u32,
        env: *mut c_void,
        cwd: LPCWSTR,
        si: *const STARTUPINFOW,
        pi: *mut PROCESS_INFORMATION,
    ) -> BOOL;
    fn WaitForSingleObject(h: HANDLE, ms: u32) -> DWORD;
    fn GetExitCodeProcess(h: HANDLE, c: *mut u32) -> BOOL;
    fn CloseHandle(h: HANDLE) -> BOOL;
    fn Sleep(ms: u32);
    fn SHBrowseForFolderW(bi: *const BROWSEINFOW) -> *mut c_void;
    fn SHGetPathFromIDListW(pidl: *mut c_void, path: LPWSTR, n: i32) -> BOOL;
    fn CoTaskMemFree(p: *mut c_void);
    fn GetEnvironmentVariableW(n: LPCWSTR, b: LPWSTR, s: u32) -> u32;
    fn GetEnvironmentStringsW() -> *mut u16;
    fn FreeEnvironmentStringsW(b: *mut u16);
    fn CreateDirectoryW(n: LPCWSTR, sa: *const c_void) -> BOOL;
    fn GetTickCount() -> u32;
    fn GetMessageW(m: *mut MSG, h: HWND, a: u32, b: u32) -> i32;
    fn DispatchMessageW(m: *const MSG) -> LRESULT;
    fn GetWindowPlacement(h: HWND, wp: *mut WINDOWPLACEMENT) -> BOOL;
    fn GetWindowRect(h: HWND, r: *mut RECT) -> BOOL;
    fn GetLastError() -> DWORD;
    fn SetWindowTextW(h: HWND, s: LPCWSTR) -> i32;
    fn GetWindowTextW(h: HWND, s: LPWSTR, n: i32) -> i32;
    fn AddFontResourceW(n: LPCWSTR) -> i32;
    fn LoadLibraryW(n: LPCWSTR) -> *mut c_void;
    fn GetProcAddress(m: *mut c_void, n: *const c_void) -> *mut c_void;
}

const IMAGE_ICON: u32 = 3;
const WS_EX_TOPMOST: u32 = 0x0008_0000;
const WS_EX_TOOLWINDOW: u32 = 0x0000_0080;
const WS_POPUP: u32 = 0x8000_0000;
const WS_CAPTION: u32 = 0x00C0_0000;
const WS_SYSMENU: u32 = 0x0008_0000;
const WM_PAINT: u32 = 0x000F;
const WM_ERASEBKGND: u32 = 0x0014;
const WM_CLOSE: u32 = 0x0010;
const WM_DESTROY: u32 = 0x0002;
const WM_SETTEXT: u32 = 0x000C;
const SW_SHOW: i32 = 5;
const SW_SHOWMAXIMIZED: i32 = 3;
const MB_ICONERROR: u32 = 0x10;
const MB_ICONQUESTION: u32 = 0x20;
const MB_ICONWARNING: u32 = 0x30;
const MB_ICONINFORMATION: u32 = 0x40;
const WS_OVERLAPPED: u32 = 0x0000_0000;
const WS_MINIMIZEBOX: u32 = 0x0002_0000;
const WM_CREATE: u32 = 0x0001;
const WM_MOUSEMOVE: u32 = 0x0200;
const WM_LBUTTONDOWN: u32 = 0x0201;
const WM_LBUTTONUP: u32 = 0x0202;
const MB_YESNOCANCEL: u32 = 0x0006;
const IDYES: i32 = 6;
const IDNO: i32 = 7;
const MB_OKCANCEL: u32 = 0x0001;
const IDOK: i32 = 1;
const DT_LEFT: u32 = 0x0000;
const DT_VCENTER: u32 = 0x0004;
const DT_WORDBREAK: u32 = 0x0010;
const SPI_GETWORKAREA: u32 = 0x0030;
const BIF_RETURNONLYFSDIRS: u32 = 0x1;
const BIF_NEWDIALOGSTYLE: u32 = 0x40;
const FILE_ATTRIBUTE_DIRECTORY: DWORD = 0x10;
const FILE_ATTRIBUTE_REPARSE_POINT: DWORD = 0x400;
const INVALID_FILE_ATTRIBUTES: DWORD = 0xFFFF_FFFF;
const WAIT_OBJECT_0: DWORD = 0;
const CREATE_NO_WINDOW: u32 = 0x0800_0000;
const IDC_ARROW: u32 = 32512;
const SW_MAXIMIZE: i32 = 3;
const WM_COMMAND: u32 = 0x0111;
const BS_PUSHBUTTON: u32 = 0;
const BS_DEFPUSHBUTTON: u32 = 1;
const WS_CHILD: u32 = 0x4000_0000;
const WS_VISIBLE: u32 = 0x1000_0000;
const IDCANCEL: u32 = 2;
const DI_NORMAL: u32 = 0;

// Persian status strings (UTF-16 escapes)
const PREP: &str = "\u{062f}\u{0631} \u{062d}\u{0627}\u{0644} \u{0622}\u{0645}\u{0627}\u{062f}\u{0647}\u{200c}\u{0633}\u{0627}\u{0632}\u{06cc} \u{0628}\u{0627}\u{0632}\u{06cc}...";
const READY: &str = "\u{0622}\u{0645}\u{0627}\u{062f}\u{0647}\u{200c}\u{0633}\u{0627}\u{0632}\u{06cc} \u{062a}\u{0645}\u{0627}\u{0645} \u{0634}\u{062f} \u{2014} \u{062f}\u{0631} \u{062d}\u{0627}\u{0644} \u{0627}\u{062c}\u{0631}\u{0627}\u{06cc} \u{0628}\u{0627}\u{0632}\u{06cc}...";

static HINST: AtomicIsize = AtomicIsize::new(0);
static HWIN: AtomicIsize = AtomicIsize::new(0);
static ROOT: Mutex<String> = Mutex::new(String::new());
static STATUS: Mutex<String> = Mutex::new(String::new());
static PCT: AtomicI32 = AtomicI32::new(-1);
static COPY_DONE: AtomicI32 = AtomicI32::new(0);
static COPY_TOTAL: AtomicI32 = AtomicI32::new(1);

fn wide(s: &str) -> Vec<u16> {
    s.encode_utf16().chain(std::iter::once(0)).collect()
}

fn log_line(msg: &str, root: &Path) {
    let t = SystemTime::now()
        .duration_since(UNIX_EPOCH)
        .map(|d| d.as_secs())
        .unwrap_or(0);
    let line = format!("[{}] {}\n", t, msg);
    let path = root.join("fruitcraft.log");
    if let Ok(mut f) = OpenOptions::new().create(true).append(true).open(&path) {
        let _ = f.write_all(line.as_bytes());
    }
}

fn msgbox(text: &str, caption: &str, flags: u32) {
    unsafe {
        MessageBoxW(
            std::ptr::null_mut(),
            wide(text).as_ptr(),
            wide(caption).as_ptr(),
            flags,
        );
    }
}

unsafe extern "system" fn wnd_proc(hwnd: HWND, msg: u32, _wp: WPARAM, _lp: LPARAM) -> LRESULT {
    match msg {
        WM_ERASEBKGND => 1, // painted in WM_PAINT (no GDI brushes available)
        WM_PAINT => {
            let mut ps: PAINTSTRUCT = mem::zeroed();
            let dc = BeginPaint(hwnd, &mut ps);
            let mut rc: RECT = mem::zeroed();
            GetClientRect(hwnd, &mut rc);
            // white-fill the whole client area via OPAQUE DrawText of a space
            let mut sp = vec![0x0020u16, 0];
            DrawTextW(dc, sp.as_mut_ptr(), 1, &mut rc, DT_WORDBREAK | DT_LEFT | DT_VCENTER);
            let hinst = HINST.load(Ordering::SeqCst) as HINSTANCE;
            let icon = LoadImageW(hinst, 1usize as LPCWSTR, IMAGE_ICON, 48, 48, 0);
            if !icon.is_null() {
                DrawIconEx(dc, icon as HICON, 22, (rc.bottom - 48) / 2, 48, 48, 0, 0, 0, DI_NORMAL);
            }
            let mut tr = rc;
            tr.left += 86;
            let s = STATUS.lock().unwrap().clone();
            let mut text: Vec<u16> = s.encode_utf16().collect();
            text.push(0);
            DrawTextW(dc, text.as_mut_ptr(), -1, &mut tr, DT_LEFT | DT_VCENTER | DT_WORDBREAK);
            EndPaint(hwnd, &ps);
            0
        }
        WM_CLOSE | WM_DESTROY => {
            PostQuitMessage(0);
            0
        }
        _ => DefWindowProcW(hwnd, msg, _wp, _lp),
    }
}

fn set_status(text: &str) {
    let pct = PCT.load(Ordering::SeqCst);
    let s = if pct >= 0 {
        format!("{}  {}%", text, pct)
    } else {
        text.to_string()
    };
    *STATUS.lock().unwrap() = s;
    let hwnd = HWIN.load(Ordering::SeqCst) as HWND;
    if hwnd.is_null() {
        let hinst = HINST.load(Ordering::SeqCst) as HINSTANCE;
        unsafe {
            let cls = wide("FruitcraftStatus");
            let mut wc: WNDCLASSEXW = mem::zeroed();
            wc.cbSize = mem::size_of::<WNDCLASSEXW>() as u32;
            wc.lpfnWndProc = Some(wnd_proc);
            wc.hbrBackground = std::ptr::null_mut();
            wc.lpszClassName = cls.as_ptr();
            wc.hCursor = LoadCursorW(std::ptr::null_mut(), IDC_ARROW as u32 as usize as LPCWSTR);
            wc.hInstance = hinst;
            wc.hIcon = LoadImageW(hinst, 1usize as LPCWSTR, IMAGE_ICON, 32, 32, 0) as HICON;
            RegisterClassExW(&wc);
            let mut wa: RECT = mem::zeroed();
            SystemParametersInfoW(SPI_GETWORKAREA, 0, &mut wa as *mut _ as *mut c_void, 0);
            let x = wa.left + (wa.right - wa.left) / 2 - 290;
            let y = wa.top + (wa.bottom - wa.top) / 3 - 75;
            let hwnd = CreateWindowExW(
                WS_EX_TOPMOST | WS_EX_TOOLWINDOW,
                wide("FruitcraftStatus").as_ptr(),
                wide("Fruitcraft").as_ptr(),
                WS_POPUP | WS_CAPTION | WS_SYSMENU,
                x,
                y,
                580,
                150,
                std::ptr::null_mut(),
                std::ptr::null_mut(),
                hinst,
                std::ptr::null(),
            );
            HWIN.store(hwnd as isize, Ordering::SeqCst);
            ShowWindow(hwnd, SW_SHOW);
        }
    } else {
        unsafe {
            InvalidateRect(hwnd, std::ptr::null(), 0);
            UpdateWindow(hwnd);
        }
    }
}

fn strip_motw(path: &Path, root: &Path) {
    let ads = format!("{}:Zone.Identifier", path.to_string_lossy());
    let r = unsafe { DeleteFileW(wide(&ads).as_ptr()) };
    let name = path
        .file_name()
        .map(|n| n.to_string_lossy().to_string())
        .unwrap_or_default();
    log_line(
        &format!("motw-strip {} -> {}", name, if r != 0 { "removed" } else { "none" }),
        root,
    );
}

fn count_files(dir: &Path) -> u32 {
    let mut n = 0u32;
    if let Ok(rd) = fs::read_dir(dir) {
        for e in rd.flatten() {
            let ft = match e.file_type() {
                Ok(t) => t,
                Err(_) => continue,
            };
            if ft.is_dir() {
                n += count_files(&e.path());
            } else if ft.is_file() {
                n += 1;
            }
        }
    }
    n
}

fn count_lu(dir: &Path) -> u32 {
    let mut n = 0u32;
    if let Ok(rd) = fs::read_dir(dir) {
        for e in rd.flatten() {
            if e.path().extension().map(|x| x == "lu").unwrap_or(false) {
                n += 1;
            }
        }
    }
    n
}

// Non-destructive file sync: a file is copied only when the destination
// is missing or its size differs. Identical files are left alone, and
// NOTHING is ever deleted. Also refuses to touch a file that is the
// source itself (data dir == app root case).
fn sync_file(src: &Path, dst: &Path) {
    let same = match (fs::canonicalize(src), fs::canonicalize(dst)) {
        (Ok(a), Ok(b)) => a == b,
        _ => false,
    };
    if same {
        return;
    }
    if let (Ok(s), Ok(m)) = (src.metadata(), dst.metadata()) {
        if s.len() == m.len() {
            return; // already in sync
        }
    }
    let _ = fs::copy(src, dst);
}

fn copy_tree(src: &Path, dst: &Path) {
    let _ = fs::create_dir_all(dst);
    if let Ok(rd) = fs::read_dir(src) {
        for e in rd.flatten() {
            let p = e.path();
            let name = e.file_name();
            let d = dst.join(name);
            let ft = match e.file_type() {
                Ok(t) => t,
                Err(_) => continue,
            };
            if ft.is_dir() {
                copy_tree(&p, &d);
            } else if ft.is_file() {
                sync_file(&p, &d);
                let done = COPY_DONE.fetch_add(1, Ordering::SeqCst) + 1;
                let total = COPY_TOTAL.load(Ordering::SeqCst).max(1);
                PCT.store((done * 100) / total as i32, Ordering::SeqCst);
                if done % 64 == 0 {
                    set_status(PREP);
                }
            }
        }
    }
}

// A data dir is valid if it has the bootstrap (main.lua) and/or the
// original bytecode entry (main.lu).
fn resolve_data_dir(base: &Path) -> Option<PathBuf> {
    if base.join("main.lua").is_file() || base.join("main.lu").is_file() {
        return Some(base.to_path_buf());
    }
    let gf = base.join("gamefiles");
    if gf.join("main.lua").is_file() || gf.join("main.lu").is_file() {
        return Some(gf);
    }
    None
}

fn browse_for_folder() -> Option<PathBuf> {
    let mut bi: BROWSEINFOW = unsafe { mem::zeroed() };
    bi.ulFlags = BIF_RETURNONLYFSDIRS | BIF_NEWDIALOGSTYLE;
    let pidl = unsafe { SHBrowseForFolderW(&bi) };
    if pidl.is_null() {
        return None;
    }
    let mut buf = vec![0u16; 4096];
    let ok = unsafe { SHGetPathFromIDListW(pidl, buf.as_mut_ptr(), buf.len() as i32) };
    unsafe { CoTaskMemFree(pidl) };
    if ok != 0 {
        let s = String::from_utf16_lossy(&buf);
        let s = s.trim_end_matches('\0').to_string();
        if !s.is_empty() {
            return Some(PathBuf::from(s));
        }
    }
    None
}

// Find the engine's main window by its title. The bootstrap tries to
// set "Fruitcraft"; if the platform no-ops that, the window keeps its
// default "Corona Shell" title - try both.
fn find_game_window() -> HWND {
    let mut last: HWND = std::ptr::null_mut();
    unsafe {
        for title in ["Fruitcraft", "Corona Shell", "Corona.Shell", "Corona"] {
            let h = FindWindowW(std::ptr::null(), wide(title).as_ptr());
            if h.is_null() {
                continue;
            }
            if IsWindowVisible(h) != 0 {
                return h;
            }
            last = h;
        }
    }
    last
}

// ---------- profiles & data management ----------

fn get_env(name: &str) -> Option<String> {
    let n = wide(name);
    let mut buf = vec![0u16; 1024];
    let r = unsafe { GetEnvironmentVariableW(n.as_ptr(), buf.as_mut_ptr(), buf.len() as u32) };
    if r == 0 {
        return None;
    }
    if (r as usize) >= buf.len() {
        buf.resize(r as usize + 1, 0);
        unsafe { GetEnvironmentVariableW(n.as_ptr(), buf.as_mut_ptr(), buf.len() as u32) };
    }
    let end = buf.iter().position(|&c| c == 0)?;
    Some(String::from_utf16_lossy(&buf[..end]))
}

// Create a directory and every missing intermediate directory.
fn ensure_dir(path: &Path) {
    let parts: Vec<_> = path.components().collect();
    let mut acc = PathBuf::new();
    for c in parts {
        acc.push(c.as_os_str());
        if !acc.exists() {
            let w = wide(&acc.to_string_lossy());
            unsafe { CreateDirectoryW(w.as_ptr(), std::ptr::null_mut()) };
        }
    }
}

fn make_junction(link: &Path, target: &Path) {
    if link.symlink_metadata().is_ok() {
        let w = wide(&link.to_string_lossy());
        unsafe { DeleteFileW(w.as_ptr()) }; // removes the junction link only
    }
    ensure_dir(target);
    let cmd = format!(
        "cmd.exe /c mklink /J \" {}\" \" {}\" >NUL 2>&1",
        link.to_string_lossy(),
        target.to_string_lossy()
    );
    let cmd_w = wide(&cmd);
    unsafe {
        CreateProcessW(
            cmd_w.as_ptr(),
            std::ptr::null_mut(),
            std::ptr::null_mut(),
            std::ptr::null_mut(),
            0,
            CREATE_NO_WINDOW,
            std::ptr::null_mut(),
            std::ptr::null(),
            std::ptr::null(),
            std::ptr::null_mut(),
        );
    }
}

// Best-effort recursive removal (used only for migrated legacy data).
fn remove_tree(p: &Path) {
    if let Ok(rd) = fs::read_dir(p) {
        for e in rd.flatten() {
            let is_dir = e.file_type().map(|t| t.is_dir()).unwrap_or(false);
            if is_dir {
                remove_tree(&e.path());
            } else {
                let w = wide(&e.path().to_string_lossy());
                unsafe { DeleteFileW(w.as_ptr()) };
            }
        }
    }
    let w = wide(&p.to_string_lossy());
    unsafe { RemoveDirectoryW(w.as_ptr()) };
}

// Child-process environment: current env with APPDATA / LOCALAPPDATA
// redirected into the selected profile folder.
fn build_env_block(appdata: &str, local: &str) -> Vec<u16> {
    let mut v: Vec<u16> = Vec::new();
    unsafe {
        let block = GetEnvironmentStringsW();
        if !block.is_null() {
            let mut p = block;
            while *p != 0 {
                v.push(*p);
                p = p.add(1);
            }
            FreeEnvironmentStringsW(block);
        }
    }
    let mut entries: Vec<Vec<u16>> = Vec::new();
    let mut cur = Vec::new();
    for c in v {
        if c == 0 {
            if !cur.is_empty() {
                entries.push(std::mem::take(&mut cur));
            }
        } else {
            cur.push(c);
        }
    }
    let mut out: Vec<u16> = Vec::new();
    for e in entries {
        let s = String::from_utf16_lossy(&e);
        if let Some(k) = s.split('=').next() {
            if k.eq_ignore_ascii_case("APPDATA") || k.eq_ignore_ascii_case("LOCALAPPDATA") {
                continue;
            }
        }
        out.extend_from_slice(&e);
        out.push(0);
    }
    for kv in [format!("APPDATA={}", appdata), format!("LOCALAPPDATA={}", local)] {
        out.extend(kv.encode_utf16());
        out.push(0);
    }
    out.push(0); // block terminator
    out
}

fn read_last_profile() -> i32 {
    if let Some(appdata) = get_env("APPDATA") {
        let p = PathBuf::from(appdata).join("Fruitcraft").join("lastprofile.txt");
        if let Ok(s) = fs::read_to_string(&p) {
            if let Ok(n) = s.trim().parse::<i32>() {
                if (1..=4).contains(&n) {
                    return n;
                }
            }
        }
    }
    1
}

fn write_last_profile(n: i32) {
    if let Some(appdata) = get_env("APPDATA") {
        let dir = PathBuf::from(appdata).join("Fruitcraft");
        ensure_dir(&dir);
        let _ = fs::write(dir.join("lastprofile.txt"), n.to_string());
    }
}

// Profile picker built from plain message boxes - the most reliable UI on
// Windows (same mechanism as system dialogs). Yes = this profile,
// No = next profile, Cancel = exit.

// ==================================================================
//  Game-styled launcher UI (v0.1.09b)
//  Background + logo + font come from the game's own assets.
//  GDI+ is loaded dynamically (no extra import libs needed).
// ==================================================================

#[repr(C)]
struct RectF {
    x: f32,
    y: f32,
    w: f32,
    h: f32,
}

#[repr(C)]
struct GpStartupInput {
    version: u32,
    cb: *const c_void,
    suppress_bg: u32,
    suppress_codecs: u32,
}

type GpStartupFn =
    unsafe extern "system" fn(*mut u64, *const GpStartupInput, *mut c_void) -> i32;
type GpShutdownFn = unsafe extern "system" fn(u64);
type GpFromHdcFn = unsafe extern "system" fn(HDC, *mut *mut c_void) -> i32;
type GpBitmapFileFn = unsafe extern "system" fn(LPCWSTR, *mut *mut c_void) -> i32;
type GpFontFamFn = unsafe extern "system" fn(LPCWSTR, *mut c_void, *mut *mut c_void) -> i32;
type GpFontFn =
    unsafe extern "system" fn(*mut c_void, f32, i32, i32, *mut *mut c_void) -> i32;
type GpSolidFillFn = unsafe extern "system" fn(u32, *mut *mut c_void) -> i32;
type GpPenFn = unsafe extern "system" fn(u32, f32, i32, *mut *mut c_void) -> i32;
type GpStrFmtFn = unsafe extern "system" fn(i32, i32, *mut *mut c_void) -> i32;
type GpStrFmtAlignFn = unsafe extern "system" fn(*mut c_void, i32) -> i32;
type GpDrawStrFn = unsafe extern "system" fn(
    *mut c_void,
    LPCWSTR,
    i32,
    *mut c_void,
    *mut RectF,
    *mut c_void,
    *mut c_void,
) -> i32;
type GpFillRectIFn =
    unsafe extern "system" fn(*mut c_void, *mut c_void, i32, i32, i32, i32) -> i32;
type GpDrawImageRectIFn =
    unsafe extern "system" fn(*mut c_void, *mut c_void, i32, i32, i32, i32) -> i32;
type GpPathFn = unsafe extern "system" fn(i32, *mut *mut c_void) -> i32;
type GpPathArcFn =
    unsafe extern "system" fn(*mut c_void, f32, f32, f32, f32, f32, f32) -> i32;
type GpPathCloseFn = unsafe extern "system" fn(*mut c_void) -> i32;
type GpFillPathFn = unsafe extern "system" fn(*mut c_void, *mut c_void, *mut c_void) -> i32;
type GpDrawPathFn = unsafe extern "system" fn(*mut c_void, *mut c_void, *mut c_void) -> i32;
type GpDeleteFn = unsafe extern "system" fn(*mut c_void);

struct GpFns {
    startup: GpStartupFn,
    shutdown: GpShutdownFn,
    from_hdc: GpFromHdcFn,
    bitmap_file: GpBitmapFileFn,
    font_fam: GpFontFamFn,
    font: GpFontFn,
    solid_fill: GpSolidFillFn,
    pen: GpPenFn,
    str_fmt: GpStrFmtFn,
    fmt_align: GpStrFmtAlignFn,
    fmt_line_align: GpStrFmtAlignFn,
    draw_str: GpDrawStrFn,
    fill_rect_i: GpFillRectIFn,
    draw_image_rect_i: GpDrawImageRectIFn,
    path: GpPathFn,
    path_arc: GpPathArcFn,
    path_close: GpPathCloseFn,
    fill_path: GpFillPathFn,
    draw_path: GpDrawPathFn,
    delete: GpDeleteFn,
}

fn gp_get(mod_h: *mut c_void, name: &str) -> *mut c_void {
    let n = wide(name);
    unsafe { GetProcAddress(mod_h, n.as_ptr() as *const c_void) }
}

unsafe fn load_gp_fns() -> Option<GpFns> {
    let mod_h = LoadLibraryW(wide("gdiplus.dll").as_ptr());
    if mod_h.is_null() {
        return None;
    }
    macro_rules! req {
        ($name:expr) => {{
            let p = gp_get(mod_h, $name);
            if p.is_null() {
                return None;
            }
            std::mem::transmute::<*mut c_void, _>(p)
        }};
    }
    Some(GpFns {
        startup: req!("GdiplusStartup"),
        shutdown: req!("GdiplusShutdown"),
        from_hdc: req!("GdipCreateFromHDC"),
        bitmap_file: req!("GdipCreateBitmapFromFile"),
        font_fam: req!("GdipCreateFontFamilyFromName"),
        font: req!("GdipCreateFont"),
        solid_fill: req!("GdipCreateSolidFill"),
        pen: req!("GdipCreatePen1"),
        str_fmt: req!("GdipCreateStringFormat"),
        fmt_align: req!("GdipSetStringFormatAlignment"),
        fmt_line_align: req!("GdipSetStringFormatLineAlignment"),
        draw_str: req!("GdipDrawString"),
        fill_rect_i: req!("GdipGraphicsFillRectangleI"),
        draw_image_rect_i: req!("GdipGraphicsDrawImageRectI"),
        path: req!("GdipCreatePath"),
        path_arc: req!("GdipAddPathArc"),
        path_close: req!("GdipClosePathFigure"),
        fill_path: req!("GdipGraphicsFillPath"),
        draw_path: req!("GdipGraphicsDrawPath"),
        delete: req!("GdipDeleteObject"),
    })
}

static GP_FNS: Mutex<Option<GpFns>> = Mutex::new(None);

fn log_root_line(msg: &str) {
    let r = ROOT.lock().unwrap().clone();
    log_line(msg, Path::new(&r));
}

struct UiState {
    sel: i32,
    hover: i32,
    pressed: i32,
    result: i32,
    hwnd: HWND,
    token: u64,
    bg: *mut c_void,
    logo: *mut c_void,
    fam_a: *mut c_void,
    fam_b: *mut c_void,
    f_title: *mut c_void,
    f_sub: *mut c_void,
    f_name: *mut c_void,
    f_btn: *mut c_void,
    f_label: *mut c_void,
    fmt_center: *mut c_void,
    edit: HWND,
    names: [String; 4],
    created: [bool; 4],
    profiles_root: String,
}

// Only ever touched from the main thread under the UI mutex.
unsafe impl Send for UiState {}
static UI: Mutex<Option<UiState>> = Mutex::new(None);

const UI_W: i32 = 680;
const UI_H: i32 = 420;
const CARD_W: i32 = 148;
const CARD_H: i32 = 150;
const CARD_Y: i32 = 150;
const CARD_X0: i32 = 26;
const CARD_DX: i32 = 160;
const BTN_Y: i32 = 316;
const BTN_H: i32 = 58;
const ES_AUTOHSCROLL: u32 = 0x0008;
const WS_BORDER: u32 = 0x0080_0000;
const WS_EX_APPWINDOW: u32 = 0x0004_0000;

// control ids: 11..14 cards, 20 start, 21 create, 22 exit
fn card_x(i: i32) -> i32 {
    CARD_X0 + i * CARD_DX
}

fn btn_x(id: i32) -> (i32, i32) {
    match id {
        20 => (26, 200),
        21 => (240, 200),
        22 => (454, 200),
        _ => (0, 0),
    }
}

fn brighten(c: u32) -> u32 {
    let r = ((c >> 16) & 0xFF).min(237) as u32;
    let g = ((c >> 8) & 0xFF).min(237) as u32;
    let b = (c & 0xFF).min(237) as u32;
    0xFF000000 | (r << 16) | (g << 8) | b
}

fn ui_hit_test(x: i32, y: i32) -> i32 {
    for i in 0..4 {
        let cx = card_x(i);
        if x >= cx && x <= cx + CARD_W && y >= CARD_Y && y <= CARD_Y + CARD_H {
            return 11 + i;
        }
    }
    for id in [20, 21, 22] {
        let (bx, bw) = btn_x(id);
        if x >= bx && x <= bx + bw && y >= BTN_Y && y <= BTN_Y + BTN_H {
            return id;
        }
    }
    0
}

// creates a rounded-rect path; caller must GdipDeleteObject it
fn make_rounded_path(gp: &GpFns, x: i32, y: i32, w: i32, h: i32, r: f32) -> *mut c_void {
    let mut p: *mut c_void = std::ptr::null_mut();
    if unsafe { (gp.path)(0, &mut p) } != 0 || p.is_null() {
        return std::ptr::null_mut();
    }
    let r2 = r * 2.0;
    unsafe {
        (gp.path_arc)(p, x as f32, y as f32, r2, r2, 180.0, 90.0);
        (gp.path_arc)(
            p,
            (x + w) as f32 - r2,
            y as f32,
            r2,
            r2,
            270.0,
            90.0,
        );
        (gp.path_arc)(
            p,
            (x + w) as f32 - r2,
            (y + h) as f32 - r2,
            r2,
            r2,
            0.0,
            90.0,
        );
        (gp.path_arc)(p, x as f32, (y + h) as f32 - r2, r2, r2, 90.0, 90.0);
        (gp.path_close)(p);
    }
    p
}

// draw a string centered inside a box
fn draw_str_c(
    gp: &GpFns,
    g: *mut c_void,
    text: &str,
    font: *mut c_void,
    x: i32,
    y: i32,
    w: i32,
    h: i32,
    color: u32,
    fmt: *mut c_void,
) {
    let s = wide(text);
    let mut rect = RectF {
        x: x as f32,
        y: y as f32,
        w: w as f32,
        h: h as f32,
    };
    let mut brush: *mut c_void = std::ptr::null_mut();
    if unsafe { (gp.solid_fill)(color, &mut brush) } != 0 {
        return;
    }
    unsafe {
        (gp.draw_str)(g, s.as_ptr(), -1, font, &mut rect, fmt, brush);
        (gp.delete)(brush);
    }
}

fn fill_rounded(
    gp: &GpFns,
    g: *mut c_void,
    x: i32,
    y: i32,
    w: i32,
    h: i32,
    r: f32,
    fill: u32,
    border: u32,
    border_w: f32,
) {
    let p = make_rounded_path(gp, x, y, w, h, r);
    if p.is_null() {
        return;
    }
    unsafe {
        let mut fb: *mut c_void = std::ptr::null_mut();
        if (gp.solid_fill)(fill, &mut fb) == 0 {
            (gp.fill_path)(g, fb, p);
            (gp.delete)(fb);
        }
        let mut pen: *mut c_void = std::ptr::null_mut();
        if (gp.pen)(border, border_w, 2, &mut pen) == 0 {
            (gp.draw_path)(g, pen, p);
            (gp.delete)(pen);
        }
        (gp.delete)(p);
    }
}

fn paint_ui(st: &UiState, hdc: HDC, gp: &GpFns) {
    let mut g: *mut c_void = std::ptr::null_mut();
    if unsafe { (gp.from_hdc)(hdc, &mut g) } != 0 || g.is_null() {
        return;
    }
    unsafe {
        // background
        if !st.bg.is_null() {
            (gp.draw_image_rect_i)(g, st.bg, 0, 0, UI_W, UI_H);
        }
        // dark overlay for readability
        let mut ov: *mut c_void = std::ptr::null_mut();
        if (gp.solid_fill)(0x6E000000, &mut ov) == 0 {
            (gp.fill_rect_i)(g, ov, 0, 0, UI_W, UI_H);
            (gp.delete)(ov);
        }
        // game logo
        if !st.logo.is_null() {
            (gp.draw_image_rect_i)(g, st.logo, 160, 16, 360, 100);
        }
        // subtitle
        draw_str_c(
            gp,
            g,
            "انتخاب پروفایل و شروع بازی",
            st.f_sub,
            0,
            122,
            UI_W,
            30,
            0xF2FFFFFF,
            st.fmt_center,
        );
        // profile cards
        for i in 0..4usize {
            let i32 = i as i32;
            let cx = card_x(i32);
            let selected = st.sel == i32 + 1;
            let hovered = st.hover == 11 + i32;
            let (fill, border, bw) = if selected {
                (0x5CFFFFFF, 0xFFFFD24A, 3.0f32)
            } else if hovered {
                (0x4D3A5A78, 0xB3FFFFFF, 2.0)
            } else {
                (0x42182634, 0x59FFFFFF, 1.5)
            };
            fill_rounded(gp, g, cx, CARD_Y, CARD_W, CARD_H, 16.0, fill, border, bw);
            let title = format!("پروفایل {}", ["۱", "۲", "۳", "۴"][i]);
            draw_str_c(
                gp,
                g,
                &title,
                st.f_title,
                cx,
                CARD_Y + 26,
                CARD_W,
                36,
                if st.created[i] {
                    0xFFFFFFFF
                } else {
                    0xFFB9C6CF
                },
                st.fmt_center,
            );
            let sub = if st.created[i] {
                st.names[i].as_str()
            } else {
                "خالی"
            };
            draw_str_c(
                gp,
                g,
                sub,
                st.f_name,
                cx,
                CARD_Y + 78,
                CARD_W,
                28,
                if st.created[i] {
                    0xFFE8F0F5
                } else {
                    0xFF8FA0AC
                },
                st.fmt_center,
            );
        }
        // buttons
        let btns: [(i32, u32, &str); 3] = [
            (20, 0xFF2FA84F, "شروع"),
            (21, 0xFF2E86C1, "ساخت پروفایل"),
            (22, 0xFFC0392B, "خروج"),
        ];
        for (id, color, label) in btns.iter() {
            let (bx, bw) = btn_x(*id);
            let c = if st.hover == *id {
                brighten(*color)
            } else {
                *color
            };
            fill_rounded(gp, g, bx, BTN_Y, bw, BTN_H, 12.0, c, 0x66000000, 2.0);
            draw_str_c(
                gp,
                g,
                label,
                st.f_btn,
                bx,
                BTN_Y + 13,
                bw,
            32,
                0xFFFFFFFF,
                st.fmt_center,
            );
        }
        // name label (right of the edit box)
        draw_str_c(
            gp,
            g,
            "نام:",
            st.f_label,
            566,
            384,
            88,
            30,
            0xFFE8F0F5,
            st.fmt_center,
        );
    }
    unsafe {
        (gp.delete)(g);
    }
}

fn ui_set_edit(st: &UiState, text: &str) {
    if !st.edit.is_null() {
        let w = wide(text);
        unsafe { SetWindowTextW(st.edit, w.as_ptr()) };
    }
}

fn ui_read_edit(st: &UiState) -> String {
    if st.edit.is_null() {
        return String::new();
    }
    let mut buf = vec![0u16; 128];
    let n = unsafe { GetWindowTextW(st.edit, buf.as_mut_ptr(), buf.len() as i32) };
    if n > 0 {
        String::from_utf16_lossy(&buf[..n as usize]).trim().to_string()
    } else {
        String::new()
    }
}

fn profile_file(st: &UiState, n: i32) -> PathBuf {
    PathBuf::from(st.profiles_root.as_str())
        .join(format!("p{}", n))
        .join("profile.txt")
}

fn ui_action(st: &mut UiState, id: i32) {
    match id {
        11..=14 => {
            st.sel = id - 10;
            write_last_profile(st.sel);
            ui_set_edit(st, &st.names[(st.sel - 1).max(0) as usize]);
        }
        20 => {
            // شروع: persist the name, then launch
            if st.sel >= 1 && st.sel <= 4 {
                let n = (st.sel - 1) as usize;
                let name = ui_read_edit(st);
                if !name.is_empty() {
                    st.names[n] = name;
                }
                st.created[n] = true;
                let _ = fs::write(profile_file(st, st.sel), st.names[n].as_str());
            }
            write_last_profile(st.sel);
            st.result = st.sel;
            unsafe { DestroyWindow(st.hwnd) };
        }
        21 => {
            // ساخت پروفایل: first slot without a marker
            if let Some(j) = (0..4).find(|j| !st.created[*j]) {
                let name = ui_read_edit(st);
                st.created[j] = true;
                if !name.is_empty() {
                    st.names[j] = name;
                }
                let _ = fs::write(
                    profile_file(st, (j + 1) as i32),
                    st.names[j].as_str(),
                );
                st.sel = j as i32 + 1;
                write_last_profile(st.sel);
                ui_set_edit(st, &st.names[j]);
            } else {
                unsafe {
                    MessageBoxW(
                        st.hwnd,
                        wide("همهٔ پروفایل‌ها ساخته شده‌اند")
                            .as_ptr(),
                        wide("Fruitcraft").as_ptr(),
                        MB_ICONINFORMATION,
                    );
                }
            }
        }
        22 => {
            st.result = 0;
            unsafe { DestroyWindow(st.hwnd) };
        }
        _ => {}
    }
}

unsafe extern "system" fn ui_proc(hwnd: HWND, msg: u32, w: WPARAM, l: LPARAM) -> LRESULT {
    match msg {
        WM_CREATE => {
            let hinst = GetModuleHandleW(std::ptr::null());
            let edit = CreateWindowExW(
                0,
                wide("EDIT").as_ptr(),
                std::ptr::null(),
                WS_CHILD | WS_VISIBLE | WS_BORDER | ES_AUTOHSCROLL,
                40,
                386,
                500,
                28,
                hwnd,
                std::ptr::null_mut(),
                hinst,
                std::ptr::null(),
            );
            if let Some(st) = UI.lock().unwrap().as_mut() {
                st.edit = edit;
                ui_set_edit(st, &st.names[((st.sel - 1) as usize).min(3)]);
            }
            0
        }
        WM_PAINT => {
            let mut ps: PAINTSTRUCT = mem::zeroed();
            let hdc = BeginPaint(hwnd, &mut ps);
            // lock order everywhere: UI then GP_FNS
            let ui_g = UI.lock().unwrap();
            let gp_g = GP_FNS.lock().unwrap();
            if let (Some(st), Some(gp)) = (ui_g.as_ref(), gp_g.as_ref()) {
                paint_ui(st, hdc, gp);
            }
            EndPaint(hwnd, &ps);
            0
        }
        WM_MOUSEMOVE => {
            let x = (l as u32 & 0xFFFF) as i32;
            let y = ((l as u32 >> 16) & 0xFFFF) as i32;
            let id = ui_hit_test(x, y);
            let mut changed = false;
            if let Some(mut st) = UI.lock().unwrap().as_mut() {
                changed = st.hover != id;
                st.hover = id;
            }
            if changed {
                unsafe { InvalidateRect(hwnd, std::ptr::null(), 0) };
            }
            0
        }
        WM_LBUTTONDOWN => {
            let x = (l as u32 & 0xFFFF) as i32;
            let y = ((l as u32 >> 16) & 0xFFFF) as i32;
            if let Some(mut st) = UI.lock().unwrap().as_mut() {
                st.pressed = ui_hit_test(x, y);
            }
            0
        }
        WM_LBUTTONUP => {
            let x = (l as u32 & 0xFFFF) as i32;
            let y = ((l as u32 >> 16) & 0xFFFF) as i32;
            let id = ui_hit_test(x, y);
            let fire = UI
                .lock()
                .unwrap()
                .as_ref()
                .map(|s| s.pressed == id && id != 0)
                .unwrap_or(false);
            if let Some(mut st) = UI.lock().unwrap().as_mut() {
                st.pressed = 0;
            }
            if fire {
                if let Some(mut st) = UI.lock().unwrap().as_mut() {
                    ui_action(&mut st, id);
                }
            }
            0
        }
        WM_ERASEBKGND => 1,
        WM_CLOSE => {
            unsafe { DestroyWindow(hwnd) };
            0
        }
        WM_DESTROY => {
            PostQuitMessage(0);
            0
        }
        _ => DefWindowProcW(hwnd, msg, w, l),
    }
}

// Fallback picker (plain message boxes, English text - always legible).
fn pick_profile_msgbox() -> i32 {
    let last = read_last_profile();
    let first = unsafe {
        MessageBoxW(
            std::ptr::null_mut(),
            wide(&format!(
                "Fruitcraft\n\nStart with profile {} (last used)?\n\nYes = start   No = pick another   Cancel = exit",
                last
            ))
            .as_ptr(),
            wide("Fruitcraft").as_ptr(),
            MB_YESNOCANCEL,
        )
    };
    if first == IDCANCEL as i32 {
        return 0;
    }
    if first == IDYES {
        write_last_profile(last);
        return last;
    }
    let mut i = 1;
    loop {
        let r = unsafe {
            MessageBoxW(
                std::ptr::null_mut(),
                wide(&format!(
                    "Fruitcraft\n\nYes = profile {}   No = next profile   Cancel = exit",
                    i
                ))
                .as_ptr(),
                wide("Fruitcraft").as_ptr(),
                MB_YESNOCANCEL,
            )
        };
        if r == IDYES {
            write_last_profile(i);
            return i;
        }
        if r == IDCANCEL as i32 {
            return 0;
        }
        i = if i == 4 { 1 } else { i + 1 };
    }
}

fn pick_profile_ui(game_dir: &Path, profiles_root: &Path) -> i32 {
    // read profile names / created state
    let mut names: [String; 4] = Default::default();
    let mut created: [bool; 4] = [false; 4];
    let def = ["پروفایل ۱", "پروفایل ۲", "پروفایل ۳", "پروفایل ۴"];
    for n in 0..4 {
        let pf = profiles_root
            .join(format!("p{}", n + 1))
            .join("profile.txt");
        if let Ok(s) = fs::read_to_string(&pf) {
            let s = s.trim().to_string();
            created[n] = true;
            if !s.is_empty() {
                names[n] = s;
            }
        }
        if names[n].is_empty() {
            names[n] = def[n].to_string();
        }
    }

    // dynamic GDI+
    let gp = match unsafe { load_gp_fns() } {
        Some(g) => g,
        None => {
            log_root_line("gdiplus.dll not loadable - falling back to message boxes");
            return pick_profile_msgbox();
        }
    };
    let mut token: u64 = 0;
    let si = GpStartupInput {
        version: 1,
        cb: std::ptr::null(),
        suppress_bg: 0,
        suppress_codecs: 0,
    };
    if unsafe { (gp.startup)(&mut token, &si, std::ptr::null_mut()) } != 0 {
        log_root_line("GdiplusStartup failed - falling back to message boxes");
        return pick_profile_msgbox();
    }
    GP_FNS.lock().unwrap().replace(gp);

    // register the game fonts
    for f in ["QuadonSoltan.ttf", "QuadonSoltanBold.ttf", "adivery_dana_normal.ttf"] {
        let p = game_dir.join(f);
        if p.is_file() {
            let w = wide(&p.to_string_lossy());
            let _ = unsafe { AddFontResourceW(w.as_ptr()) };
        }
    }

    // load bitmaps
    let gp_g2 = GP_FNS.lock().unwrap();
    let gp_ref = gp_g2.as_ref().unwrap();
    let mut bg: *mut c_void = std::ptr::null_mut();
    let bgp = game_dir
        .join("Assets-SD")
        .join("Splash")
        .join("FC-SplashBackground@2x.png");
    if bgp.is_file() {
        let w = wide(&bgp.to_string_lossy());
        unsafe { (gp_ref.bitmap_file)(w.as_ptr(), &mut bg) };
    }
    let mut logo: *mut c_void = std::ptr::null_mut();
    let lp = game_dir
        .join("Assets-SD")
        .join("Splash")
        .join("Fruit-Craft-E@2x.png");
    if lp.is_file() {
        let w = wide(&lp.to_string_lossy());
        unsafe { (gp_ref.bitmap_file)(w.as_ptr(), &mut logo) };
    }

    // fonts (game fonts with Tahoma fallback)
    fn fam(gp: &GpFns, name: &str) -> *mut c_void {
        let mut f: *mut c_void = std::ptr::null_mut();
        if unsafe { (gp.font_fam)(wide(name).as_ptr(), std::ptr::null_mut(), &mut f) } == 0
            && !f.is_null()
        {
            return f;
        }
        let mut t: *mut c_void = std::ptr::null_mut();
        unsafe {
            (gp.font_fam)(
                wide("Tahoma").as_ptr(),
                std::ptr::null_mut(),
                &mut t,
            )
        };
        t
    }
    let famq = fam(gp_ref, "Quadon Soltan");
    let fammad = fam(gp_ref, "Dana");
    let mut f_title: *mut c_void = std::ptr::null_mut();
    let mut f_sub: *mut c_void = std::ptr::null_mut();
    let mut f_name: *mut c_void = std::ptr::null_mut();
    let mut f_btn: *mut c_void = std::ptr::null_mut();
    let mut f_label: *mut c_void = std::ptr::null_mut();
    unsafe {
        (gp_ref.font)(famq, 26.0, 1, 2, &mut f_title);
        (gp_ref.font)(fammad, 20.0, 0, 2, &mut f_sub);
        (gp_ref.font)(fammad, 16.0, 0, 2, &mut f_name);
        (gp_ref.font)(fammad, 22.0, 1, 2, &mut f_btn);
        (gp_ref.font)(fammad, 17.0, 0, 2, &mut f_label);
    }
    let mut fmt_center: *mut c_void = std::ptr::null_mut();
    unsafe {
        // NoClip | DirectionRTL
        (gp_ref.str_fmt)(0x0001 | 0x0002, 0, &mut fmt_center);
        (gp_ref.fmt_align)(fmt_center, 1);
        (gp_ref.fmt_line_align)(fmt_center, 1);
    }

    // window
    let hinst = unsafe { GetModuleHandleW(std::ptr::null()) };
    let cls = wide("FruitcraftUi");
    let mut wc: WNDCLASSEXW = unsafe { mem::zeroed() };
    wc.cbSize = mem::size_of::<WNDCLASSEXW>() as u32;
    wc.lpfnWndProc = Some(ui_proc);
    wc.hbrBackground = std::ptr::null_mut();
    wc.lpszClassName = cls.as_ptr();
    wc.hCursor =
        unsafe { LoadCursorW(std::ptr::null_mut(), IDC_ARROW as u32 as usize as LPCWSTR) };
    wc.hInstance = hinst;
    unsafe { RegisterClassExW(&wc) };
    let mut wa: RECT = unsafe { mem::zeroed() };
    unsafe {
        SystemParametersInfoW(SPI_GETWORKAREA, 0, &mut wa as *mut _ as *mut c_void, 0);
    }
    let ww = UI_W;
    let wh = UI_H + 40;
    let x = wa.left + (wa.right - wa.left) / 2 - ww / 2;
    let y = wa.top + (wa.bottom - wa.top) / 2 - wh / 2;
    let hwnd = unsafe {
        CreateWindowExW(
            WS_EX_APPWINDOW,
            cls.as_ptr(),
            wide("Fruitcraft").as_ptr(),
            WS_OVERLAPPED | WS_CAPTION | WS_SYSMENU | WS_MINIMIZEBOX,
            x,
            y,
            ww,
            wh,
            std::ptr::null_mut(),
            std::ptr::null_mut(),
            hinst,
            std::ptr::null(),
        )
    };
    if hwnd.is_null() {
        log_root_line(&format!(
            "launcher ui window FAILED err={} - falling back to message boxes",
            unsafe { GetLastError() }
        ));
        return pick_profile_msgbox();
    }
    let last = read_last_profile();
    UI.lock().unwrap().replace(UiState {
        sel: last,
        hover: 0,
        pressed: 0,
        result: 0,
        hwnd,
        token,
        bg,
        logo,
        fam_a: famq,
        fam_b: fammad,
        f_title,
        f_sub,
        f_name,
        f_btn,
        f_label,
        fmt_center,
        edit: std::ptr::null_mut(),
        names,
        created,
        profiles_root: profiles_root.to_string_lossy().to_string(),
    });
    log_root_line("launcher ui window shown");
    unsafe {
        ShowWindow(hwnd, SW_SHOW);
        UpdateWindow(hwnd);
        SetForegroundWindow(hwnd);
    }
    let mut m: MSG = unsafe { mem::zeroed() };
    loop {
        let r = unsafe { GetMessageW(&mut m, std::ptr::null_mut(), 0, 0) };
        if r == 0 || r == -1 {
            break;
        }
        unsafe { DispatchMessageW(&m) };
    }
    let result = UI
        .lock()
        .unwrap()
        .as_ref()
        .map(|s| s.result)
        .unwrap_or(0);
    unsafe {
        (gp_ref.shutdown)(token);
    }
    GP_FNS.lock().unwrap().take();
    result
}


fn main() {
    let hinst = unsafe { GetModuleHandleW(std::ptr::null()) };
    HINST.store(hinst as isize, Ordering::SeqCst);

    let mut buf = vec![0u16; 2048];
    let n = unsafe { GetModuleFileNameW(hinst, buf.as_mut_ptr(), buf.len() as i32) };
    if n == 0 || (n as usize) >= buf.len() {
        msgbox(
            "Cannot resolve the launcher location.\nTry moving the folder to a shorter path.",
            "Fruitcraft",
            MB_ICONERROR,
        );
        return;
    }
    let exe_path = String::from_utf16_lossy(&buf[..n as usize]);
    let root = match Path::new(&exe_path).parent() {
        Some(p) => p.to_path_buf(),
        None => return,
    };
    *ROOT.lock().unwrap() = root.to_string_lossy().to_string();
    log_line(
        &format!(
            "Fruitcraft launcher v0.1.09b (rust) starting; root={}",
            root.display()
        ),
        &root,
    );

    // ---- 1) strip Mark of the Web from all executables/dlls ----
    if let Ok(rd) = fs::read_dir(&root) {
        for e in rd.flatten() {
            let p = e.path();
            let ext = p
                .extension()
                .and_then(|x| x.to_str())
                .map(|x| x.to_ascii_lowercase())
                .unwrap_or_default();
            if ext == "exe" || ext == "dll" {
                strip_motw(&p, &root);
            }
        }
    }

    // ---- 2) locate the game files (NO copy into the app root) ----
    // The engine changes its working directory to the main file's folder,
    // so the game runs directly from data/ - the app root stays clean.
    let data_dir = root.join("data");
    let root_lu = count_lu(&root);
    let data_lu = count_lu(&data_dir);
    let data_complete = data_dir.join("main.lua").is_file()
        && data_dir.join("main.lu").is_file()
        && data_lu >= 100;
    let root_complete = root.join("main.lua").is_file()
        && root.join("main.lu").is_file()
        && root_lu >= 100;
    log_line(
        &format!(
            "game layout: data .lu={} (complete={}) | root .lu={} (complete={})",
            data_lu, data_complete, root_lu, root_complete
        ),
        &root,
    );

    let mut game_dir: Option<PathBuf> = None;
    if data_complete {
        game_dir = Some(data_dir.clone());
    } else if root_complete {
        game_dir = Some(root.clone()); // legacy flat layout from an older version
    }
    if game_dir.is_none() {
        let choice = unsafe {
            MessageBoxW(
                std::ptr::null_mut(),
                wide(
                    "Game data was not found next to the launcher.\n\nOK: choose the data folder manually\nCancel: exit",
                )
                .as_ptr(),
                wide("Fruitcraft").as_ptr(),
                MB_ICONQUESTION | MB_OKCANCEL,
            )
        };
        if choice == IDOK {
            if let Some(picked) = browse_for_folder() {
                if let Some(d) = resolve_data_dir(&picked) {
                    // Remember the location via junction - but NEVER point the
                    // junction back into the app root itself.
                    let target = root.join("data");
                    let related = picked.starts_with(&root) || root.starts_with(&picked);
                    if !target.exists() && !related {
                        let cmd = format!(
                            "cmd.exe /c mklink /J \"{}\" \"{}\" >NUL 2>&1",
                            target.to_string_lossy(),
                            picked.to_string_lossy()
                        );
                        log_line(&format!("remember data via junction: {}", cmd), &root);
                        let cmd_w = wide(&cmd);
                        let cwd_w = wide(&root.to_string_lossy());
                        unsafe {
                            CreateProcessW(
                                cmd_w.as_ptr(),
                                std::ptr::null_mut(),
                                std::ptr::null_mut(),
                                std::ptr::null_mut(),
                                0,
                                CREATE_NO_WINDOW,
                                std::ptr::null_mut(),
                                cwd_w.as_ptr(),
                                std::ptr::null(),
                                std::ptr::null_mut(),
                            );
                        }
                    }
                    game_dir = Some(d);
                } else {
                    msgbox(
                        "That folder does not look like game data (main.lua / main.lu is missing).",
                        "Fruitcraft",
                        MB_ICONERROR,
                    );
                    return;
                }
            }
        }
        if game_dir.is_none() {
            return;
        }
    }
    let game_dir = game_dir.unwrap();
    log_line(&format!("game dir = {}", game_dir.display()), &root);

    // ---- 3) integrity gate: original bytecode must be present, or we stop ----
    let lu = count_lu(&game_dir);
    log_line(
        &format!(
            "bytecode modules (.lu) in game dir ({}): {} (expected 363)",
            game_dir.display(),
            lu
        ),
        &root,
    );
    if lu < 100 {
        msgbox(
            "Game data is incomplete - the original bytecode modules (.lu) cannot be found.\n\nPlease extract the release zip into a FRESH folder and run Fruitcraft.exe from there.\n\n(If you removed the game files from this folder, they cannot be restored - use the zip again.)",
            "Fruitcraft",
            MB_ICONERROR,
        );
        return;
    }

    // ---- 3b) ensure build.settings (landscape + maximized desktop window) ----
    const BUILD_SETTINGS: &str = "settings = {\n    orientation = {\n        default = \"landscapeLeft\",\n        supported = { \"landscapeLeft\", \"landscapeRight\" },\n    },\n    window = {\n        defaultMode = \"maximized\",\n        titleText = \"Fruitcraft\",\n        resizable = true,\n    },\n    win32 = {\n        singleInstance = false,\n    },\n}\n";
    for d in [&root, &game_dir] {
        let p = d.join("build.settings");
        if !p.is_file() {
            match fs::write(&p, BUILD_SETTINGS) {
                Ok(()) => log_line(
                    &format!("build.settings written to {}", p.display()),
                    &root,
                ),
                Err(e) => log_line(
                    &format!("could not write {}: {}", p.display(), e),
                    &root,
                ),
            }
        }
    }

    // ---- 5) profile selection + per-profile data directories ----
    let appdata = match get_env("APPDATA") {
        Some(a) => PathBuf::from(a),
        None => {
            msgbox(
                "Cannot resolve %APPDATA%. The managed game-data folder cannot be prepared.",
                "Fruitcraft",
                MB_ICONERROR,
            );
            return;
        }
    };
    let fn_base = appdata.join("Fruitcraft");
    let profiles_root = fn_base.join("profiles");
    for n in 1..=4 {
        let p = profiles_root.join(format!("p{}", n));
        ensure_dir(&p.join("engine"));
        ensure_dir(&p.join("appdata"));
        ensure_dir(&p.join("local"));
    }
    log_line("showing profile picker", &root);
    let profile = pick_profile_ui(&game_dir, &profiles_root);
    if profile == 0 {
        log_line("no profile selected - exiting", &root);
        return;
    }
    log_line(&format!("profile {} selected", profile), &root);
    let pdir = profiles_root.join(format!("p{}", profile));
    let pdir_engine = pdir.join("engine");
    let pdir_appdata = pdir.join("appdata");
    let pdir_local = pdir.join("local");

    // This engine build stores its documents at %APPDATA%\Fruitcraft\Fruitcraft.
    // Point that node at the chosen profile (junction), so each profile owns
    // its data. Only the junction link is ever removed - never the target.
    let engine_node = fn_base.join("Fruitcraft");
    match engine_node.symlink_metadata() {
        Ok(m) if m.file_type().is_symlink() => {
            let w = wide(&engine_node.to_string_lossy());
            unsafe { DeleteFileW(w.as_ptr()) };
        }
        Ok(m) if m.is_dir() => {
            copy_tree(&engine_node, &pdir_engine);
            let w = wide(&engine_node.to_string_lossy());
            unsafe { RemoveDirectoryW(w.as_ptr()) }; // best effort
        }
        _ => {}
    }
    make_junction(&engine_node, &pdir_engine);
    log_line(&format!("engine data node -> {}", pdir_engine.display()), &root);

    // One-time migration from the legacy Corona path (files already copied
    // into the profile before the old tree is removed).
    let legacy = appdata.join("Corona Labs Inc").join("Corona Shell");
    let legacy_existed = legacy.is_dir();
    if legacy_existed {
        log_line("migrating legacy Corona data into selected profile", &root);
        copy_tree(&legacy, &pdir_engine);
        remove_tree(&legacy);
        remove_tree(&appdata.join("Corona Labs Inc"));
        // If this engine build still writes to the old path, keep it working
        // (and per-profile) via a junction. The junction link itself is
        // empty and safe for the user to remove.
        make_junction(&legacy, &pdir_engine);
        log_line("legacy Corona data migrated; legacy path re-linked to profile", &root);
    }

    // Per-profile environment: isolates plugin/cache dirs per profile.
    let env_block =
        build_env_block(&pdir_appdata.to_string_lossy(), &pdir_local.to_string_lossy());
    let env_ptr = env_block.as_ptr() as *mut c_void; // never written through

    // Close the status window (if any) before the game starts
    {
        let hwnd = HWIN.load(Ordering::SeqCst) as HWND;
        if !hwnd.is_null() {
            unsafe { DestroyWindow(hwnd) };
            HWIN.store(0, Ordering::SeqCst);
        }
    }

    // ---- 6) launch the engine (working dir = game dir) ----
    let engine_path = root.join("FruitcraftEngine.exe");
    if !engine_path.is_file() {
        msgbox(
            "FruitcraftEngine.exe not found. Keep the whole folder intact.",
            "Fruitcraft",
            MB_ICONERROR,
        );
        return;
    }
    let engine_w = wide(&engine_path.to_string_lossy());
    let cwd_w = wide(&game_dir.to_string_lossy());

    // Pass the bootstrap entry point as an argument so the engine loads
    // it directly instead of popping a file picker. The shell accepts the
    // main-file path as its first argument.
    let main_lua = game_dir.join("main.lua");
    let main_lua_s = main_lua.to_string_lossy().to_string();
    let cmdline = format!("\"{}\" \"{}\"", engine_path.to_string_lossy(), main_lua_s);
    log_line(&format!("engine command line: {}", cmdline), &root);
    let mut cmd_w = wide(&cmdline);

    let mut si: STARTUPINFOW = unsafe { mem::zeroed() };
    si.cb = mem::size_of::<STARTUPINFOW>() as u32;
    let mut pi: PROCESS_INFORMATION = unsafe { mem::zeroed() };
    let ok = unsafe {
        CreateProcessW(
            engine_w.as_ptr(),
            cmd_w.as_mut_ptr(),
            std::ptr::null_mut(),
            std::ptr::null_mut(),
            0,
            0,
            env_ptr,
            cwd_w.as_ptr(),
            &si,
            &mut pi,
        )
    };
    if ok == 0 {
        msgbox(
            "Could not start the engine.\nRun FruitcraftEngine.exe and select data\\main.lua from this folder.\nSee fruitcraft.log for details.",
            "Fruitcraft",
            MB_ICONERROR,
        );
        return;
    }
    log_line(&format!("engine launched, pid={}", pi.dwProcessId), &root);

    // ---- 6) wait for the game window (up to ~12 s), then maximize it ----
    let mut game_hwnd: HWND = std::ptr::null_mut();
    for _ in 0..24 {
        unsafe { Sleep(500) };
        game_hwnd = find_game_window();
        if !game_hwnd.is_null() {
            break;
        }
        if unsafe { WaitForSingleObject(pi.hProcess, 0) } == WAIT_OBJECT_0 {
            break; // engine already gone
        }
    }
    if !game_hwnd.is_null() {
        let title_w = wide("Fruitcraft");
        unsafe {
            ShowWindow(game_hwnd, SW_SHOWMAXIMIZED);
            SetForegroundWindow(game_hwnd);
            // Replace the "Corona Shell" title with the game name.
            SendMessageW(game_hwnd, WM_SETTEXT, 0, title_w.as_ptr() as LPARAM);
        }
        log_line("engine window found, maximized, title set to Fruitcraft", &root);
    } else {
        // no window within 12 s: check what happened
        let mut code: u32 = 0;
        let exited = unsafe { WaitForSingleObject(pi.hProcess, 3000) } == WAIT_OBJECT_0;
        if exited {
            unsafe { GetExitCodeProcess(pi.hProcess, &mut code) };
            log_line(&format!("engine exited early, code={}", code), &root);
            msgbox(
                "The engine stopped shortly after start.\n\nOpen fruitcraft.log in this folder and send it together with a screenshot of any error window - that is exactly what the next version fixes.\n\nFallback: run FruitcraftEngine.exe and select data\\main.lua.",
                "Fruitcraft",
                MB_ICONERROR,
            );
        } else {
            log_line("engine still running but no main window found", &root);
            msgbox(
                "The engine is running but its window was not found.\nIf an error window is visible, take a screenshot and send it together with fruitcraft.log.\n\nFallback: run FruitcraftEngine.exe and select data\\main.lua.",
                "Fruitcraft",
                MB_ICONWARNING,
            );
        }
    }

    // ---- 7) keep the game window landscape-fullscreen while it runs ----
    let start_tick = unsafe { GetTickCount() };
    loop {
        if unsafe { WaitForSingleObject(pi.hProcess, 1500) } == WAIT_OBJECT_0 {
            break; // engine exited
        }
        if u32::wrapping_sub(unsafe { GetTickCount() }, start_tick) > 12 * 3600 * 1000 {
            break; // safety cap: 12 h
        }
        let h = find_game_window();
        if h.is_null() {
            continue;
        }
        let mut wp: WINDOWPLACEMENT = unsafe { mem::zeroed() };
        wp.length = 44;
        if unsafe { GetWindowPlacement(h, &mut wp) } != 0 && wp.showCmd != SW_MAXIMIZE as u32 {
            let title_w = wide("Fruitcraft");
            unsafe {
                ShowWindow(h, SW_SHOWMAXIMIZED);
                SetForegroundWindow(h);
                SendMessageW(h, WM_SETTEXT, 0, title_w.as_ptr() as LPARAM);
            }
        }
    }

    unsafe {
        CloseHandle(pi.hProcess);
        CloseHandle(pi.hThread);
    }

    let hwnd = HWIN.load(Ordering::SeqCst) as HWND;
    if !hwnd.is_null() {
        unsafe { DestroyWindow(hwnd) };
        HWIN.store(0, Ordering::SeqCst);
    }
}
