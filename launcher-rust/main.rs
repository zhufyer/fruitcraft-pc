// ============================================================
//  Fruitcraft.exe - Fruitcraft PC launcher (v0.1.12, Rust)
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

const SOCK_STREAM: i32 = 1;

type HOOKPROC = Option<unsafe extern "system" fn(i32, usize, isize) -> isize>;

const WH_CBT: i32 = 5;
const HCBT_ACTIVATE: i32 = 5;
const MB_TOPMOST: u32 = 0x0004_0000;

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
    fn GetStdHandle(nStdHandle: u32) -> HANDLE;
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
const PM_REMOVE: u32 = 0x0001;
const WM_NULL: u32 = 0x0000;
const SW_HIDE: i32 = 0;
const SMTO_ABORTIFHUNG: u32 = 0x0002;
const STARTF_USESTDHANDLES: u32 = 0x0000_0100;
const SPI_GETWORKAREA: u32 = 0x0030;
const SWP_NOZORDER: u32 = 0x0004;
const SWP_NOOWNERZORDER: u32 = 0x0200;
const SWP_FRAMECHANGED: u32 = 0x0020;
const STD_INPUT_HANDLE: u32 = 0xFFFF_FFF6; // -10 as DWORD
const STD_OUTPUT_HANDLE: u32 = 0xFFFF_FFF5; // -11
const STD_ERROR_HANDLE: u32 = 0xFFFF_FFF4; // -12

#[link(name = "user32")]
extern "system" {
    fn IsZoomed(hWnd: HWND) -> i32;
    fn SetWindowPos(
        hWnd: HWND,
        hWndInsertAfter: HWND,
        X: i32,
        Y: i32,
        cx: i32,
        cy: i32,
        uFlags: u32,
    ) -> i32;
    fn SendMessageTimeoutW(
        hWnd: HWND,
        Msg: u32,
        wParam: usize,
        lParam: isize,
        fuFlags: u32,
        uTimeout: u32,
        lpdwResult: *mut usize,
    ) -> isize;
    fn PeekMessageW(
        lpMsg: *mut MSG,
        hWnd: HWND,
        wMsgFilterMin: u32,
        wMsgFilterMax: u32,
        wRemoveMsg: u32,
    ) -> i32;
    fn TranslateMessage(lpMsg: *const MSG) -> i32;
    fn ExitProcess(uExitCode: u32) -> !;
}
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
fn build_env_block(appdata: &str, local: &str, extra: &[(String, String)]) -> Vec<u16> {
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
    let mut pairs: Vec<(String, String)> = Vec::new();
    if !appdata.is_empty() {
        pairs.push(("APPDATA".to_string(), appdata.to_string()));
    }
    if !local.is_empty() {
        pairs.push(("LOCALAPPDATA".to_string(), local.to_string()));
    }
    for (k, v) in extra {
        pairs.push((k.clone(), v.clone()));
    }
    for (k, v) in pairs {
        out.extend(format!("{}={}", k, v).encode_utf16());
        out.push(0);
    }
    out.push(0); // block terminator
    out
}

static LAST_PROFILE: Mutex<Option<i32>> = Mutex::new(None);

fn read_last_profile() -> i32 {
    if let Some(v) = *LAST_PROFILE.lock().unwrap() {
        return v;
    }
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
    *LAST_PROFILE.lock().unwrap() = Some(n);
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
//  Fruitcraft launcher UI  (v0.1.12)
//
//  * no GDI+ and no extra import libraries - pure user32/gdi32
//  * PNG images are decoded here (stored-deflate inflater) and shown
//    straight from the game's own Assets-SD/Splash folder
//  * Persian is shaped here: presentation forms + RTL reordering
//  * fonts: the game's own TTFs, registered privately for this process
// ==================================================================

fn log_root_line(msg: &str) {
    let r = ROOT.lock().unwrap().clone();
    log_line(msg, Path::new(&r));
}

// Plain MessageBox fallback (English only: it is only a last resort).
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


#[link(name = "kernel32")]
extern "system" {
    fn GetCurrentThreadId() -> u32;
}

#[link(name = "ws2_32")]
extern "system" {
    fn WSAStartup(v: u16, d: *mut c_void) -> i32;
    fn WSACleanup() -> i32;
    fn GetAddrInfoW(node: LPCWSTR, service: LPCWSTR, hints: *const ADDRINFOW, res: *mut *mut ADDRINFOW) -> i32;
    fn FreeAddrInfoW(res: *mut ADDRINFOW);
    fn socket(af: i32, ty: i32, proto: i32) -> usize;
    fn connect(s: usize, name: *const SOCKADDR, len: i32) -> i32;
    fn closesocket(s: usize) -> i32;
    fn setsockopt(s: usize, level: i32, opt: i32, val: *const i8, len: i32) -> i32;
    fn ioctlsocket(s: usize, cmd: i32, argp: *mut u32) -> i32;
    fn select(nfds: i32, rd: *mut FdSet, wr: *mut FdSet, ex: *mut FdSet, tv: *mut Timeval) -> i32;
    fn send(s: usize, buf: *const i8, len: i32, flags: i32) -> i32;
    fn recv(s: usize, buf: *mut i8, len: i32, flags: i32) -> i32;
}

#[link(name = "user32")]
extern "system" {
    fn SetWindowsHookExW(idHook: i32, fn_: HOOKPROC, hMod: HANDLE, tid: u32) -> HANDLE;
    fn UnhookWindowsHookEx(h: HANDLE) -> i32;
    fn CallNextHookEx(h: HANDLE, code: i32, w: usize, l: isize) -> isize;
    fn GetDlgItem(hDlg: HWND, id: i32) -> HWND;
}

// ------------------------- Win32 / GDI -------------------------
type HFONT = *mut c_void;

/// 0xRRGGBB -> COLORREF (0x00BBGGRR)
fn cref(c: u32) -> u32 {
    ((c & 0xFF) << 16) | (c & 0xFF00) | ((c >> 16) & 0xFF)
}
type HBITMAP = *mut c_void;

#[repr(C)]
struct ADDRINFOW {
    ai_flags: i32,
    ai_family: i32,
    ai_socktype: i32,
    ai_protocol: i32,
    ai_addrlen: usize,
    ai_canonname: *mut u16,
    ai_addr: *mut SOCKADDR,
    ai_next: *mut ADDRINFOW,
}

#[repr(C)]
struct SOCKADDR {
    sa_family: u16,
    sa_data: [u8; 14],
}

#[repr(C)]
struct FdSet {
    fd_count: u32,
    fd_array: [usize; 64],
}

#[repr(C)]
struct Timeval {
    tv_sec: i32,
    tv_usec: i32,
}

#[repr(C)]
struct LOGFONTW {
    lf_height: i32,
    lf_width: i32,
    lf_escapement: i32,
    lf_orientation: i32,
    lf_weight: i32,
    lf_italic: u8,
    lf_underline: u8,
    lf_strikeout: u8,
    lf_charset: u8,
    lf_outprecision: u8,
    lf_clipprecision: u8,
    lf_quality: u8,
    lf_pitchandfamily: u8,
    lf_facename: [u16; 32],
}

#[repr(C)]
struct SIZE2 {
    cx: i32,
    cy: i32,
}

#[repr(C)]
struct BITMAPINFOHEADER {
    bi_size: u32,
    bi_width: i32,
    bi_height: i32,
    bi_planes: u16,
    bi_bitcount: u16,
    bi_compression: u32,
    bi_sizeimage: u32,
    bi_xpels: i32,
    bi_ypels: i32,
    bi_clrused: u32,
    bi_clrimportant: u32,
}

#[repr(C)]
struct BITMAPINFO {
    hdr: BITMAPINFOHEADER,
    colors: [u32; 3],
}

extern "system" {
    fn SelectObject(hdc: HDC, o: HGDIOBJ) -> HGDIOBJ;
    fn CreateSolidBrush(c: COLORREF) -> HBRUSH;
    fn CreatePen(p: i32, w: i32, c: COLORREF) -> HGDIOBJ;
    fn CreateFontIndirectW(lf: *const LOGFONTW) -> HFONT;
    fn DeleteObject(o: HGDIOBJ) -> BOOL;
    fn SetBkMode(hdc: HDC, m: i32) -> i32;
    fn SetBkColor(hdc: HDC, c: COLORREF) -> COLORREF;
    fn SetTextColor(hdc: HDC, c: COLORREF) -> COLORREF;
    fn SetTextAlign(hdc: HDC, f: u32) -> u32;
    fn TextOutW(hdc: HDC, x: i32, y: i32, s: LPCWSTR, n: i32) -> BOOL;
    fn GetTextExtentPoint32W(hdc: HDC, s: LPCWSTR, n: i32, sz: *mut SIZE2) -> BOOL;
    fn GetDeviceCaps(hdc: HDC, index: i32) -> i32;
    fn GetSysColorBrush(n: i32) -> HBRUSH;
    fn GetStockObject(n: i32) -> HGDIOBJ;
    fn RoundRect(hdc: HDC, l: i32, t: i32, r: i32, b: i32, ew: i32, eh: i32) -> BOOL;
    fn FillRect(hdc: HDC, rc: *const RECT, br: HBRUSH) -> i32;
    fn GetDC(h: HWND) -> HDC;
    fn ReleaseDC(h: HWND, dc: HDC) -> i32;
    fn CreateCompatibleDC(hdc: HDC) -> HDC;
    fn DeleteDC(hdc: HDC) -> BOOL;
    fn CreateDIBSection(
        hdc: HDC,
        bmi: *const BITMAPINFO,
        usage: u32,
        bits: *mut *mut c_void,
        section: HANDLE,
        offset: u32,
    ) -> HBITMAP;
    fn BitBlt(dst: HDC, x: i32, y: i32, w: i32, h: i32, src: HDC, sx: i32, sy: i32, rop: u32) -> BOOL;
    fn SetWindowLongPtrW(h: HWND, idx: i32, val: isize) -> isize;
    fn CallWindowProcW(p: isize, h: HWND, m: u32, w: WPARAM, l: LPARAM) -> LRESULT;
    fn SetCapture(h: HWND) -> HWND;
    fn AdjustWindowRect(rc: *mut RECT, style: u32, menu: BOOL) -> BOOL;
    fn ReleaseCapture() -> BOOL;
}

const CLEARTYPE_QUALITY: u8 = 5;
const NULL_BRUSH: i32 = 5;
const NULL_PEN: i32 = 8;
const LOGPIXELSY: i32 = 90;
const TRANSPARENT: i32 = 1;
const SRCCOPY: u32 = 0x00CC_0020;
const GWLP_WNDPROC: i32 = -4;
const VK_RETURN_KEY: usize = 0x0D;
const WM_KEYDOWN: u32 = 0x0100;
const WM_GETDLGCODE: u32 = 0x0087;
const WM_SETFONT: u32 = 0x0030;
const DLGC_WANTALLKEYS: isize = 0x0004;

// ------------------------- layout -------------------------
const UI_W: i32 = 680;
const UI_H: i32 = 420;
const CARD_W: i32 = 148;
const CARD_H: i32 = 150;
const CARD_Y: i32 = 150;
const CARD_X0: i32 = 26;
const CARD_DX: i32 = 160;
const BTN_Y: i32 = 316;
const BTN_H: i32 = 58;
const NAME_Y: i32 = 384;
const NAME_H: i32 = 26;
// RTL row: label left of the box, box right-most, row centred in the window.
//   label  (UI_W-46-32) .. (UI_W-46)   |  box  UI_W-46-330 .. UI_W-46
const EDIT_W: i32 = 330;
const EDIT_X: i32 = UI_W - 46 - EDIT_W;
const LABEL_W: i32 = 32;
const LABEL_X: i32 = EDIT_X - 12 - LABEL_W;
const ES_RIGHT: u32 = 0x0002;
const ES_AUTOHSCROLL: u32 = 0x0008;
const WS_BORDER: u32 = 0x0080_0000;
const WS_EX_APPWINDOW: u32 = 0x0004_0000;

// RTL layout: the UI reads right-to-left, so slot 1 is the right-most card
fn card_x(i: i32) -> i32 {
    CARD_X0 + (3 - i) * CARD_DX
}
fn btn_x(id: i32) -> (i32, i32) {
    match id {
        20 => (454, 200), // شروع   - right-most
        21 => (240, 200), // ساخت پروفایل
        _ => (26, 200),   // خروج    - left-most
    }
}

// ------------------------- Persian shaper -------------------------
fn sk_of(c: char) -> Option<bool> {
    // Some(connects_to_next) for Arabic-script letters, None otherwise
    match c {
        '\u{0640}' => Some(true),
        'ا' | 'آ' | 'أ' | 'إ' | 'ٱ' | 'د' | 'ذ' | 'ر' | 'ز' | 'ژ' | 'و' | 'ؤ' | 'ة' => Some(false),
        'ب' | 'ت' | 'ث' | 'ن' | 'ی' | 'ي' | 'ئ' | 'ج' | 'ح' | 'خ' | 'چ' | 'س' | 'ش' | 'ص'
        | 'ض' | 'ط' | 'ظ' | 'ع' | 'غ' | 'ف' | 'ق' | 'ک' | 'ك' | 'گ' | 'ل' | 'م' | 'ه' | 'ۀ' => {
            Some(true)
        }
        _ => None,
    }
}

fn pform(c: char, prev_join: bool, next_join: bool) -> char {
    // returns the presentation form of an Arabic letter
    let join = sk_of(c).unwrap_or(false) && next_join;
    match (prev_join, join) {
        (false, false) => isolated_form(c),
        (false, true) => initial_form(c),
        (true, false) => final_form(c),
        (true, true) => medial_form(c),
    }
}

fn isolated_form(c: char) -> char {
    match c {
        'ب' => '\u{FE8F}', 'ت' => '\u{FE95}', 'ث' => '\u{FE99}', 'ن' => '\u{FEE7}',
        'ی' => '\u{FEF1}', 'ي' => '\u{FEF3}', 'ا' => '\u{FE8D}', 'آ' => '\u{FE81}',
        'د' => '\u{FEA9}', 'ذ' => '\u{FEAB}', 'ر' => '\u{FEAD}', 'ز' => '\u{FEAF}',
        'ژ' => '\u{FB8A}', 'و' => '\u{FEED}', 'ج' => '\u{FE9D}', 'ح' => '\u{FEA1}',
        'خ' => '\u{FEA5}', 'چ' => '\u{FB7A}', 'س' => '\u{FEB1}', 'ش' => '\u{FEB5}',
        'ص' => '\u{FEB9}', 'ض' => '\u{FEBD}', 'ط' => '\u{FEC1}', 'ظ' => '\u{FEC5}',
        'ع' => '\u{FEC9}', 'غ' => '\u{FECD}', 'ف' => '\u{FED1}', 'ق' => '\u{FED5}',
        'ک' => '\u{FB8E}', 'ك' => '\u{FED9}', 'گ' => '\u{FB92}', 'ل' => '\u{FEDD}',
        'م' => '\u{FEE1}', 'ه' => '\u{FEE9}', 'ة' => '\u{FE93}', 'ئ' => '\u{FE8B}',
        'ؤ' => '\u{FE85}', 'أ' => '\u{FE83}', 'إ' => '\u{FE87}', 'ٱ' => '\u{FEEB}',
        _ => c,
    }
}
fn final_form(c: char) -> char {
    match c {
        'ب' => '\u{FE90}', 'ت' => '\u{FE96}', 'ث' => '\u{FE9A}', 'ن' => '\u{FEE8}',
        'ی' => '\u{FEF2}', 'ي' => '\u{FEF4}', 'ج' => '\u{FE9E}', 'ح' => '\u{FEA2}',
        'خ' => '\u{FEA6}', 'چ' => '\u{FB7B}', 'س' => '\u{FEB2}', 'ش' => '\u{FEB6}',
        'ص' => '\u{FEBA}', 'ض' => '\u{FEBE}', 'ط' => '\u{FEC2}', 'ظ' => '\u{FEC6}',
        'ع' => '\u{FECA}', 'غ' => '\u{FECE}', 'ف' => '\u{FED2}', 'ق' => '\u{FED6}',
        'ک' => '\u{FB8F}', 'ك' => '\u{FEDA}', 'گ' => '\u{FB93}', 'ل' => '\u{FEDE}',
        'م' => '\u{FEE2}', 'ه' => '\u{FEEA}',
        _ => isolated_form(c),
    }
}
fn initial_form(c: char) -> char {
    match c {
        'ب' => '\u{FE91}', 'ت' => '\u{FE97}', 'ث' => '\u{FE9B}', 'ن' => '\u{FEE7}',
        'ی' => '\u{FEF3}', 'ي' => '\u{FEF3}', 'ج' => '\u{FE9F}', 'ح' => '\u{FEA3}',
        'خ' => '\u{FEA7}', 'چ' => '\u{FB7C}', 'س' => '\u{FEB3}', 'ش' => '\u{FEB7}',
        'ص' => '\u{FEBB}', 'ض' => '\u{FEBF}', 'ط' => '\u{FEC3}', 'ظ' => '\u{FEC7}',
        'ع' => '\u{FECB}', 'غ' => '\u{FECF}', 'ف' => '\u{FED3}', 'ق' => '\u{FED7}',
        'ک' => '\u{FB90}', 'ك' => '\u{FEDB}', 'گ' => '\u{FB94}', 'ل' => '\u{FEDF}',
        'م' => '\u{FEE3}', 'ه' => '\u{FEE9}',
        _ => isolated_form(c),
    }
}
fn medial_form(c: char) -> char {
    match c {
        'ب' => '\u{FE92}', 'ت' => '\u{FE98}', 'ث' => '\u{FE9C}', 'ن' => '\u{FEEA}',
        'ی' => '\u{FEF4}', 'ي' => '\u{FEF4}', 'ج' => '\u{FEA0}', 'ح' => '\u{FEA4}',
        'خ' => '\u{FEA8}', 'چ' => '\u{FB7D}', 'س' => '\u{FEB4}', 'ش' => '\u{FEB8}',
        'ص' => '\u{FEBC}', 'ض' => '\u{FEC0}', 'ط' => '\u{FEC4}', 'ظ' => '\u{FEC8}',
        'ع' => '\u{FECC}', 'غ' => '\u{FED0}', 'ف' => '\u{FED4}', 'ق' => '\u{FED8}',
        'ک' => '\u{FB91}', 'ك' => '\u{FEDC}', 'گ' => '\u{FB95}', 'ل' => '\u{FEE0}',
        'م' => '\u{FEE4}', 'ه' => '\u{FEEB}',
        _ => isolated_form(c),
    }
}

/// logical Persian text -> visual (right-to-left) sequence of presentation forms
fn shape_visual(text: &str) -> Vec<u16> {
    let chars: Vec<char> = text
        .chars()
        .filter(|c| *c != '\u{200c}' && *c != '\u{200f}' && *c != '\u{200e}')
        .collect();
    let mut out: Vec<u16> = Vec::with_capacity(chars.len());
    for (i, &c) in chars.iter().enumerate() {
        if sk_of(c).is_none() {
            out.push(c as u16);
            continue;
        }
        let prev = if i > 0 { chars[i - 1] } else { ' ' };
        let next = if i + 1 < chars.len() {
            chars[i + 1]
        } else {
            ' '
        };
        let pj = sk_of(prev).unwrap_or(false);
        let nj = sk_of(next).is_some();
        out.push(pform(c, pj, nj) as u16);
    }
    out.reverse();
    out
}

// ------------------------- text helpers -------------------------
fn text_w(hdc: HDC, s: &[u16]) -> i32 {
    if s.is_empty() {
        return 0;
    }
    let mut sz = SIZE2 { cx: 0, cy: 0 };
    unsafe {
        if GetTextExtentPoint32W(hdc, s.as_ptr(), s.len() as i32, &mut sz) != 0 {
            sz.cx
        } else {
            0
        }
    }
}

/// align: 0 = left, >0 = centred inside that width, <0 = right edge at |align|
/// The string is already in VISUAL order, so every glyph is placed by hand:
/// GDI would otherwise run its own bidi pass over the Arabic-script run and
/// mirror it back (that was the "reversed text" bug).
fn draw_text_at(hdc: HDC, s: &[u16], x: i32, y: i32, color: u32, align: i32) {
    if s.is_empty() {
        return;
    }
    let mut widths: Vec<i32> = Vec::with_capacity(s.len());
    let mut total = 0;
    for &c in s {
        let mut sz = SIZE2 { cx: 0, cy: 0 };
        let w = unsafe {
            if GetTextExtentPoint32W(hdc, &c as *const u16, 1, &mut sz) != 0 {
                sz.cx
            } else {
                0
            }
        };
        widths.push(w);
        total += w;
    }
    let px = if align > 0 {
        x + (align - total) / 2
    } else if align < 0 {
        x + (-align) - total
    } else {
        x
    };
    unsafe {
        SetBkMode(hdc, TRANSPARENT);
        SetTextColor(hdc, cref(color & 0x00FF_FFFF));
        let mut cx = px;
        for (i, &c) in s.iter().enumerate() {
            if c != 0x20 {
                TextOutW(hdc, cx, y, &c as *const u16, 1);
            }
            cx += widths[i];
        }
    }
}

// ------------------------- Uniscribe (complex script layout) -------------------------
#[repr(C)]
#[derive(Default, Clone, Copy)]
struct SCRIPT_STATE {
    v: u16,
}
#[repr(C)]
#[derive(Default, Clone, Copy)]
struct SCRIPT_ANALYSIS {
    state: SCRIPT_STATE,
    script: u16,
    flags: u16,
}
#[repr(C)]
#[derive(Default, Clone, Copy)]
struct SCRIPT_VISATTR {
    v: u16,
}
#[repr(C)]
#[derive(Default, Clone, Copy)]
struct SCRIPT_ITEM {
    pos: i32,
    analysis: SCRIPT_ANALYSIS,
}
#[repr(C)]
#[derive(Default, Clone, Copy)]
struct GOFFSET {
    du: i32,
    dv: i32,
}
#[repr(C)]
#[derive(Default, Clone, Copy)]
struct SCRIPT_LOGATTR {
    v: u8,
    pad: [u8; 3],
}


// ScriptItemize & co. are exported only by ordinal on Windows, so resolve them at run time.
type FnItemize = unsafe extern "system" fn(
    *const u16,
    i32,
    i32,
    *const c_void,
    *const c_void,
    *mut SCRIPT_ITEM,
    *mut i32,
) -> i32;
type FnShape = unsafe extern "system" fn(
    HDC,
    *mut c_void,
    *const u16,
    i32,
    i32,
    *mut SCRIPT_ANALYSIS,
    *mut u16,
    *mut SCRIPT_VISATTR,
    *mut i32,
) -> i32;
type FnPlace = unsafe extern "system" fn(
    HDC,
    *mut c_void,
    *const u16,
    i32,
    *const SCRIPT_VISATTR,
    *mut SCRIPT_ANALYSIS,
    *mut i32,
    *mut GOFFSET,
    *mut i32,
) -> i32;
type FnTextOut = unsafe extern "system" fn(
    HDC,
    *mut c_void,
    i32,
    i32,
    u32,
    *const RECT,
    *const SCRIPT_ANALYSIS,
    *const i32,
    *const GOFFSET,
    *const u16,
    i32,
    *const SCRIPT_VISATTR,
    *const i32,
) -> i32;

struct Usp {
    itemize: FnItemize,
    shape: FnShape,
    place: FnPlace,
    text_out: FnTextOut,
}

fn usp_load() -> Option<Usp> {
    let h = unsafe { LoadLibraryW(wide("usp10.dll").as_ptr()) };
    if h.is_null() {
        return None;
    }
    // try the name first (Wine / newer Windows), then the ordinal (all Windows builds)
    let get = |_p: *mut c_void, ord: usize, name: &str| -> *mut c_void {
        let mut r = unsafe { GetProcAddress(h, wide(name).as_ptr() as *const c_void) };
        if r.is_null() {
            r = unsafe { GetProcAddress(h, ord as *const u16 as *const c_void) };
        }
        r
    };
    let a = get(std::ptr::null_mut(), 1, "ScriptItemize");
    let b = get(std::ptr::null_mut(), 2, "ScriptShape");
    let c = get(std::ptr::null_mut(), 3, "ScriptPlace");
    let d = get(std::ptr::null_mut(), 4, "ScriptTextOut");
    if a.is_null() || b.is_null() || c.is_null() || d.is_null() {
        return None;
    }
    unsafe {
        Some(Usp {
            itemize: mem::transmute::<*mut c_void, FnItemize>(a),
            shape: mem::transmute::<*mut c_void, FnShape>(b),
            place: mem::transmute::<*mut c_void, FnPlace>(c),
            text_out: mem::transmute::<*mut c_void, FnTextOut>(d),
        })
    }
}

struct Uniscribe {
    f: Usp,
    cache: *mut c_void,
}

impl Uniscribe {
    fn new(_hdc: HDC) -> Option<Uniscribe> {
        let f = usp_load()?;
        Some(Uniscribe {
            f,
            cache: std::ptr::null_mut(),
        })
    }
}

/// Layout + draw a logical-order Persian string with Uniscribe.
/// Returns the drawn width, or None when Uniscribe refused the run.
fn draw_text_usp(
    us: &Uniscribe,
    hdc: HDC,
    text: &str,
    x: i32,
    y: i32,
    color: u32,
    align: i32,
) -> Option<i32> {
    let chars: Vec<u16> = text
        .encode_utf16()
        .filter(|c| *c != 0x200C && *c != 0x200E && *c != 0x200F)
        .collect();
    let n = chars.len() as i32;
    if n == 0 {
        return Some(0);
    }
    let mut items: Vec<SCRIPT_ITEM> = vec![Default::default(); (n + 2) as usize];
    let mut nitems = 0i32;
    let rc = unsafe {
        (us.f.itemize)(
            chars.as_ptr(),
            n,
            n + 2,
            std::ptr::null(),
            std::ptr::null(),
            items.as_mut_ptr(),
            &mut nitems,
        )
    };
    if rc != 0 || nitems <= 0 {
        return None;
    }
    items.truncate(nitems as usize);
    // first pass: total advance
    let mut runs: Vec<(usize, i32, Vec<u16>, Vec<i32>, Vec<GOFFSET>, Vec<SCRIPT_VISATTR>, SCRIPT_ANALYSIS)> =
        Vec::new();
    let mut total = 0i32;
    for (k, it) in items.iter().enumerate() {
        let start = it.pos as usize;
        let end = if k + 1 < items.len() {
            items[k + 1].pos as usize
        } else {
            chars.len()
        };
        let mut analysis = SCRIPT_ANALYSIS {
            state: SCRIPT_STATE {
                v: it.analysis.state.v,
            },
            script: it.analysis.script,
            flags: it.analysis.flags,
        };
        let mut glyphs = vec![0u16; (end - start) * 2 + 8];
        let mut attrs = vec![SCRIPT_VISATTR::default(); glyphs.len()];
        let mut nglyphs = 0i32;
        let r = unsafe {
            (us.f.shape)(
                hdc,
                us.cache,
                chars[start..end].as_ptr(),
                (end - start) as i32,
                glyphs.len() as i32,
                &mut analysis,
                glyphs.as_mut_ptr(),
                attrs.as_mut_ptr(),
                &mut nglyphs,
            )
        };
        // 0 = ok, 0x800 = SCRIPT_IS_COMPLEX / missing glyphs: still drawable
        if r < 0 || nglyphs <= 0 {
            return None;
        }
        let mut adv = vec![0i32; nglyphs as usize];
        let mut goff = vec![GOFFSET::default(); nglyphs as usize];
        let mut abc = [0i32; 3];
        let r2 = unsafe {
            (us.f.place)(
                hdc,
                us.cache,
                glyphs.as_ptr(),
                nglyphs,
                attrs.as_ptr(),
                &mut analysis,
                adv.as_mut_ptr(),
                goff.as_mut_ptr(),
                abc.as_mut_ptr(),
            )
        };
        if r2 != 0 {
            return None;
        }
        let w: i32 = adv.iter().sum();
        total += w;
        glyphs.truncate(nglyphs as usize);
        adv.truncate(nglyphs as usize);
        goff.truncate(nglyphs as usize);
        attrs.truncate(nglyphs as usize);
        runs.push((0, w, glyphs, adv, goff, attrs, analysis));
    }
    let ox = if align > 0 {
        x + (align - total) / 2
    } else if align < 0 {
        x + (-align) - total
    } else {
        x
    };
    let col = (color & 0xFF) << 16 | (color & 0xFF00) | ((color >> 16) & 0xFF);
    unsafe {
        SetTextColor(hdc, col);
        SetBkMode(hdc, TRANSPARENT);
    }
    let mut cx = ox;
    for (_a, _b, glyphs, adv, goff, attrs, analysis) in runs.iter() {
        unsafe {
            (us.f.text_out)(
                hdc,
                us.cache,
                cx,
                y,
                0,
                std::ptr::null(),
                analysis,
                adv.as_ptr(),
                goff.as_ptr(),
                glyphs.as_ptr(),
                glyphs.len() as i32,
                attrs.as_ptr(),
                std::ptr::null(),
            );
        }
        cx += adv.iter().sum::<i32>();
    }
    Some(total)
}

/// One entry point used by the painter: Uniscribe first, built-in shaper after.
fn draw_line(us: &Option<Uniscribe>, hdc: HDC, text: &str, x: i32, y: i32, color: u32, align: i32) {
    if let Some(u) = us.as_ref() {
        if draw_text_usp(u, hdc, text, x, y, color, align).is_some() {
            return;
        }
    }
    let v = shape_visual(text);
    draw_text_at(hdc, &v, x, y, color, align);
}

fn make_font(face: &str, px: i32, weight: i32) -> HFONT {
    make_font_cs(face, px, weight, 1) // DEFAULT_CHARSET
}

fn make_font_cs(face: &str, px: i32, weight: i32, charset: u8) -> HFONT {
    let mut lf: LOGFONTW = unsafe { mem::zeroed() };
    lf.lf_height = -px;
    lf.lf_weight = weight;
    lf.lf_charset = charset;
    lf.lf_quality = CLEARTYPE_QUALITY;
    let mut name: Vec<u16> = face.encode_utf16().collect();
    name.truncate(31);
    lf.lf_facename[..name.len()].copy_from_slice(&name);
    unsafe { CreateFontIndirectW(&lf) }
}

fn font_px(hdc: HDC, pt: i32) -> i32 {
    let dpi = unsafe { GetDeviceCaps(hdc, LOGPIXELSY) };
    let dpi = if dpi <= 0 { 96 } else { dpi };
    ((pt * dpi) / 72).max(11)
}

fn round_fill(hdc: HDC, x: i32, y: i32, w: i32, h: i32, r: i32, color: u32, alpha_pct: u32) -> u32 {
    // GDI has no alpha; blend the requested colour with what is already there
    let r0 = ((color >> 16) & 0xFF) as u32;
    let g0 = ((color >> 8) & 0xFF) as u32;
    let b0 = (color & 0xFF) as u32;
    let col = if alpha_pct >= 100 {
        color
    } else {
        // approximate: mix towards the typical card backdrop
        let a = alpha_pct;
        let br = 40u32;
        let bg = 52u32;
        let bb = 64u32;
        let r1 = (r0 * a + br * (100 - a)) / 100;
        let g1 = (g0 * a + bg * (100 - a)) / 100;
        let b1 = (b0 * a + bb * (100 - a)) / 100;
        (r1 << 16) | (g1 << 8) | b1
    };
    let b = unsafe { CreateSolidBrush(cref(col)) };
    unsafe {
        let old_b = SelectObject(hdc, b as HGDIOBJ);
        let old_p = SelectObject(hdc, GetStockObject(NULL_PEN));
        RoundRect(hdc, x, y, x + w, y + h, r, r);
        SelectObject(hdc, old_b);
        SelectObject(hdc, old_p);
        DeleteObject(b as HGDIOBJ);
    }
    col
}

fn round_stroke(hdc: HDC, x: i32, y: i32, w: i32, h: i32, r: i32, color: u32, width: i32) {
    let p = unsafe { CreatePen(0, width, cref(color)) };
    unsafe {
        let old_p = SelectObject(hdc, p);
        let old_b = SelectObject(hdc, GetStockObject(NULL_BRUSH));
        RoundRect(hdc, x, y, x + w, y + h, r, r);
        SelectObject(hdc, old_p);
        SelectObject(hdc, old_b);
        DeleteObject(p);
    }
}

// ------------------------- PNG decoder (stored deflate) -------------------------
struct Png {
    w: i32,
    h: i32,
    px: Vec<u32>, // 0xAARRGGBB
}

fn be32(b: &[u8], o: usize) -> u32 {
    ((b[o] as u32) << 24) | ((b[o + 1] as u32) << 16) | ((b[o + 2] as u32) << 8) | (b[o + 3] as u32)
}
fn crc32(data: &[u8]) -> u32 {
    let mut table = [0u32; 256];
    for i in 0..256u32 {
        let mut c = i;
        for _ in 0..8 {
            c = if c & 1 != 0 { 0xEDB8_8320 ^ (c >> 1) } else { c >> 1 };
        }
        table[i as usize] = c;
    }
    let mut crc = 0xFFFF_FFFFu32;
    for &b in data {
        crc = table[((crc ^ b as u32) & 0xFF) as usize] ^ (crc >> 8);
    }
    crc ^ 0xFFFF_FFFF
}

#[allow(dead_code)]
fn adler32(data: &[u8]) -> u32 {
    let mut a = 1u32;
    let mut b = 0u32;
    for &x in data {
        a = (a + x as u32) % 65521;
        b = (b + a) % 65521;
    }
    (b << 16) | a
}

// ---- full DEFLATE decoder (the game's PNGs use fixed/dynamic Huffman blocks) ----
struct Bits<'a> {
    d: &'a [u8],
    pos: usize,
    bitbuf: u32,
    bitcnt: u32,
}

impl<'a> Bits<'a> {
    fn new(d: &'a [u8]) -> Bits<'a> {
        Bits {
            d,
            pos: 0,
            bitbuf: 0,
            bitcnt: 0,
        }
    }
    fn need(&mut self, n: u32) {
        while self.bitcnt < n {
            let b = if self.pos < self.d.len() {
                self.d[self.pos]
            } else {
                0
            };
            self.pos += 1;
            self.bitbuf |= (b as u32) << self.bitcnt;
            self.bitcnt += 8;
        }
    }
    fn get(&mut self, n: u32) -> u32 {
        if n == 0 {
            return 0;
        }
        self.need(n);
        let v = self.bitbuf & ((1u32 << n) - 1);
        self.bitbuf >>= n;
        self.bitcnt -= n;
        v
    }
    fn align(&mut self) {
        let drop = self.bitcnt % 8;
        self.bitbuf >>= drop;
        self.bitcnt -= drop;
    }
}

struct Huff {
    count: [u16; 16],
    symbol: Vec<u16>,
}

fn huff_build(lengths: &[u8]) -> Huff {
    let mut count = [0u16; 16];
    for &l in lengths {
        count[l as usize] += 1;
    }
    count[0] = 0;
    let mut offs = [0u16; 16];
    for i in 1..16 {
        offs[i] = offs[i - 1] + count[i - 1];
    }
    let mut symbol = vec![0u16; lengths.len()];
    for (sym, &l) in lengths.iter().enumerate() {
        if l != 0 {
            symbol[offs[l as usize] as usize] = sym as u16;
            offs[l as usize] += 1;
        }
    }
    Huff { count, symbol }
}

fn huff_decode(h: &Huff, bits: &mut Bits) -> Option<u16> {
    let mut code: i32 = 0;
    let mut first: i32 = 0;
    let mut index: i32 = 0;
    for len in 1..16 {
        code |= bits.get(1) as i32;
        let count = h.count[len] as i32;
        if code - first < count {
            let k = index + (code - first);
            return h.symbol.get(k as usize).copied();
        }
        index += count;
        first = (first + count) << 1;
        code <<= 1;
    }
    None
}

const LBASE: [u16; 29] = [
    3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 15, 17, 19, 23, 27, 31, 35, 43, 51, 59, 67, 83, 99, 115,
    131, 163, 195, 227, 258,
];
const LEXT: [u8; 29] = [
    0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 0,
];
const DBASE: [u16; 30] = [
    1, 2, 3, 4, 5, 7, 9, 13, 17, 25, 33, 49, 65, 97, 129, 193, 257, 385, 513, 769, 1025, 1537,
    2049, 3073, 4097, 6145, 8193, 12289, 16385, 24577,
];
const DEXT: [u8; 30] = [
    0, 0, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13,
    13,
];

fn inflate_codes(bits: &mut Bits, out: &mut Vec<u8>, lit: &Huff, dist: &Huff) -> bool {
    loop {
        let sym = match huff_decode(lit, bits) {
            Some(s) => s,
            None => return false,
        };
        if sym < 256 {
            out.push(sym as u8);
        } else if sym == 256 {
            return true;
        } else {
            let li = (sym - 257) as usize;
            if li >= 29 {
                return false;
            }
            let len = LBASE[li] as usize + bits.get(LEXT[li] as u32) as usize;
            let ds = match huff_decode(dist, bits) {
                Some(d) => d,
                None => return false,
            };
            let di = ds as usize;
            if di >= 30 {
                return false;
            }
            let d = DBASE[di] as usize + bits.get(DEXT[di] as u32) as usize;
            if d > out.len() {
                return false;
            }
            let start = out.len() - d;
            for k in 0..len {
                let b = out[start + k];
                out.push(b);
            }
        }
    }
}

/// zlib stream -> raw bytes (stored, fixed and dynamic Huffman blocks)
fn zlib_inflate(data: &[u8], want: usize) -> Option<Vec<u8>> {
    if data.len() < 2 {
        return None;
    }
    let cmf = data[0];
    let flg = data[1];
    if cmf & 0x0F != 8 {
        return None;
    }
    if ((cmf as u32) << 8 | flg as u32) % 31 != 0 {
        return None;
    }
    let mut p = 2usize;
    if flg & 0x20 != 0 {
        p += 4;
    }
    if p >= data.len() {
        return None;
    }
    let mut bits = Bits::new(&data[p..]);
    let mut out: Vec<u8> = Vec::with_capacity(want + 4096);
    loop {
        let last = bits.get(1);
        let btype = bits.get(2);
        match btype {
            0 => {
                bits.align();
                let len = bits.get(16) as usize;
                let _nlen = bits.get(16);
                for _ in 0..len {
                    let b = bits.get(8) as u8;
                    out.push(b);
                }
            }
            1 => {
                // fixed Huffman code lengths (RFC 1951 section 3.2.6)
                let mut l = [8u8; 288];
                for v in l.iter_mut().take(256).skip(144) {
                    *v = 9;
                }
                for v in l.iter_mut().take(280).skip(256) {
                    *v = 7;
                }
                let lit = huff_build(&l);
                let dl = [5u8; 30];
                let dist = huff_build(&dl);
                if !inflate_codes(&mut bits, &mut out, &lit, &dist) {
                    return None;
                }
            }
            2 => {
                let hlit = bits.get(5) as usize + 257;
                let hdist = bits.get(5) as usize + 1;
                let hclen = bits.get(4) as usize + 4;
                const ORDER: [usize; 19] = [
                    16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15,
                ];
                let mut cl = [0u8; 19];
                for i in 0..hclen {
                    cl[ORDER[i]] = bits.get(3) as u8;
                }
                let clh = huff_build(&cl);
                let mut lengths = vec![0u8; hlit + hdist];
                let mut i = 0usize;
                while i < hlit + hdist {
                    let sym = match huff_decode(&clh, &mut bits) {
                        Some(s) => s,
                        None => return None,
                    };
                    match sym {
                        0..=15 => {
                            lengths[i] = sym as u8;
                            i += 1;
                        }
                        16 => {
                            if i == 0 {
                                return None;
                            }
                            let prev = lengths[i - 1];
                            let rep = 3 + bits.get(2) as usize;
                            for _ in 0..rep {
                                if i < lengths.len() {
                                    lengths[i] = prev;
                                    i += 1;
                                }
                            }
                        }
                        17 => {
                            let rep = 3 + bits.get(3) as usize;
                            for _ in 0..rep {
                                if i < lengths.len() {
                                    lengths[i] = 0;
                                    i += 1;
                                }
                            }
                        }
                        _ => {
                            let rep = 11 + bits.get(7) as usize;
                            for _ in 0..rep {
                                if i < lengths.len() {
                                    lengths[i] = 0;
                                    i += 1;
                                }
                            }
                        }
                    }
                }
                let lit = huff_build(&lengths[..hlit]);
                let dist = huff_build(&lengths[hlit..]);
                if !inflate_codes(&mut bits, &mut out, &lit, &dist) {
                    return None;
                }
            }
            _ => return None,
        }
        if last == 1 {
            break;
        }
        if out.len() > want + 1_000_000 {
            return None;
        }
        if out.len() > (1 << 26) {
            return None;
        }
    }
    Some(out)
}

fn png_decode(bytes: &[u8]) -> Option<Png> {
    const SIG: [u8; 8] = [137, 80, 78, 71, 13, 10, 26, 10];
    if bytes.len() < 8 || bytes[..8] != SIG {
        return None;
    }
    let mut p = 8usize;
    let mut w = 0i32;
    let mut h = 0i32;
    let mut depth = 0u8;
    let mut ctype = 0u8;
    let mut interlace = 0u8;
    let mut palette: Vec<[u8; 3]> = Vec::new();
    let mut trns: Vec<u8> = Vec::new();
    let mut idat: Vec<u8> = Vec::new();
    while p + 8 <= bytes.len() {
        let len = be32(bytes, p) as usize;
        let typ = &bytes[p + 4..p + 8];
        let body_start = p + 8;
        if body_start + len + 4 > bytes.len() {
            return None;
        }
        let body = &bytes[body_start..body_start + len];
        match typ {
            b"IHDR" => {
                w = be32(body, 0) as i32;
                h = be32(body, 4) as i32;
                depth = body[8];
                ctype = body[9];
                interlace = body[12];
            }
            b"PLTE" => {
                palette.clear();
                for c in body.chunks(3) {
                    if c.len() == 3 {
                        palette.push([c[0], c[1], c[2]]);
                    }
                }
            }
            b"tRNS" => trns = body.to_vec(),
            b"IDAT" => idat.extend_from_slice(body),
            b"IEND" => break,
            _ => {}
        }
        p = body_start + len + 4;
    }
    if w <= 0 || h <= 0 || depth != 8 || interlace != 0 {
        return None;
    }
    let channels = match ctype {
        0 => 1, // gray
        2 => 3, // rgb
        3 => 1, // palette
        4 => 2, // gray+alpha
        6 => 4, // rgba
        _ => return None,
    };
    let raw = zlib_inflate(&idat, (w as usize) * (h as usize) * channels + h as usize)?;
    let stride = (w as usize) * channels;
    let mut px: Vec<u32> = vec![0; (w as usize) * (h as usize)];
    let mut cur = vec![0u8; stride];
    let mut prev = vec![0u8; stride];
    let mut off = 0usize;
    for y in 0..h as usize {
        if off + 1 + stride > raw.len() {
            return None;
        }
        let filter = raw[off];
        off += 1;
        cur.copy_from_slice(&raw[off..off + stride]);
        off += stride;
        let bpp = channels;
        match filter {
            0 => {}
            1 => {
                for i in bpp..stride {
                    cur[i] = cur[i].wrapping_add(cur[i - bpp]);
                }
            }
            2 => {
                for i in 0..stride {
                    cur[i] = cur[i].wrapping_add(prev[i]);
                }
            }
            3 => {
                for i in 0..stride {
                    let left = if i >= bpp { cur[i - bpp] as u32 } else { 0 };
                    cur[i] = cur[i].wrapping_add(((left + prev[i] as u32) / 2) as u8);
                }
            }
            4 => {
                for i in 0..stride {
                    let a = if i >= bpp { cur[i - bpp] as i32 } else { 0 };
                    let b = prev[i] as i32;
                    let c = if i >= bpp { prev[i - bpp] as i32 } else { 0 };
                    let pp = a + b - c;
                    let pa = (pp - a).abs();
                    let pb = (pp - b).abs();
                    let pc = (pp - c).abs();
                    let pr = if pa <= pb && pa <= pc {
                        a
                    } else if pb <= pc {
                        b
                    } else {
                        c
                    };
                    cur[i] = cur[i].wrapping_add(pr as u8);
                }
            }
            _ => return None,
        }
        for x in 0..w as usize {
            let i = y * w as usize + x;
            let o = x * channels;
            let (r, g, b, a) = match ctype {
                0 => (
                    cur[o] as u32,
                    cur[o] as u32,
                    cur[o] as u32,
                    if trns.len() >= 2 && cur[o] == trns[1] { 0 } else { 255 },
                ),
                2 => (cur[o] as u32, cur[o + 1] as u32, cur[o + 2] as u32, 255),
                3 => {
                    let idx = cur[o] as usize;
                    let c = palette.get(idx).copied().unwrap_or([0, 0, 0]);
                    let a = trns.get(idx).copied().unwrap_or(255);
                    (c[0] as u32, c[1] as u32, c[2] as u32, a as u32)
                }
                4 => (
                    cur[o] as u32,
                    cur[o] as u32,
                    cur[o] as u32,
                    cur[o + 1] as u32,
                ),
                6 => (
                    cur[o] as u32,
                    cur[o + 1] as u32,
                    cur[o + 2] as u32,
                    cur[o + 3] as u32,
                ),
                _ => (0, 0, 0, 255),
            };
            px[i] = (a << 24) | (r << 16) | (g << 8) | b;
        }
        prev.copy_from_slice(&cur);
    }
    Some(Png { w, h, px })
}

fn read_png(path: &Path) -> Option<Png> {
    let bytes = fs::read(path).ok()?;
    png_decode(&bytes)
}

/// box-filter resize + (optional) darkening, output 0xAARRGGBB
fn resize_dark(src: &Png, dw: i32, dh: i32, dark_pct: u32) -> Vec<u32> {
    // NOTE: alpha is averaged too (premultiplied), otherwise transparent areas
    // turn into a black box around the game logo.
    let mut out = vec![0u32; (dw * dh) as usize];
    let sx = src.w as f32 / dw as f32;
    let sy = src.h as f32 / dh as f32;
    for y in 0..dh {
        for x in 0..dw {
            let x0 = (x as f32 * sx) as i32;
            let y0 = (y as f32 * sy) as i32;
            let x1 = (((x + 1) as f32 * sx) as i32).clamp(x0 + 1, src.w);
            let y1 = (((y + 1) as f32 * sy) as i32).clamp(y0 + 1, src.h);
            let (mut r, mut g, mut b, mut a, mut n) = (0u32, 0u32, 0u32, 0u32, 0u32);
            for yy in y0..y1 {
                for xx in x0..x1 {
                    let p = src.px[(yy * src.w + xx) as usize];
                    let pa = (p >> 24) & 0xFF;
                    // premultiply so fully transparent pixels do not darken the edges
                    r += ((p >> 16) & 0xFF) * pa / 255;
                    g += ((p >> 8) & 0xFF) * pa / 255;
                    b += (p & 0xFF) * pa / 255;
                    a += pa;
                    n += 1;
                }
            }
            let n = n.max(1);
            let a = a / n;
            let (r, g, b) = if a > 0 {
                let un = |v: u32| (v * 255 / a).min(255);
                (un(r / n), un(g / n), un(b / n))
            } else {
                (0, 0, 0)
            };
            let keep = 100 - dark_pct;
            let r = r * keep / 100;
            let g = g * keep / 100;
            let b = b * keep / 100;
            out[(y * dw + x) as usize] = (a << 24) | (r << 16) | (g << 8) | b;
        }
    }
    out
}

// ------------------------- UI state -------------------------
struct Fonts {
    title: HFONT,
    sub: HFONT,
    name: HFONT,
    btn: HFONT,
    label: HFONT,
    edit: HFONT, // ARABIC_CHARSET copy for the input box
}

struct UiState {
    sel: i32,
    hover: i32,
    pressed: i32,
    result: i32,
    hwnd: HWND,
    edit: HWND,
    old_edit_proc: isize,
    fonts: Fonts,
    us: Option<Uniscribe>,
    poster: Vec<u32>, // pre-composited background (client sized)
    names: [String; 4],
    created: [bool; 4],
    profiles_root: String,
    game_dir: String,
}

unsafe impl Send for UiState {}
static UI: Mutex<Option<UiState>> = Mutex::new(None);

struct Canvas {
    dc: HDC,
    bmp: HBITMAP,
    old: HGDIOBJ,
    bits: *mut u32,
}

fn canvas_new(hdc: HDC, w: i32, h: i32) -> Option<Canvas> {
    let mut bmi = BITMAPINFO {
        hdr: BITMAPINFOHEADER {
            bi_size: mem::size_of::<BITMAPINFOHEADER>() as u32,
            bi_width: w,
            bi_height: -h,
            bi_planes: 1,
            bi_bitcount: 32,
            bi_compression: 0,
            bi_sizeimage: (w * h * 4) as u32,
            bi_xpels: 0,
            bi_ypels: 0,
            bi_clrused: 0,
            bi_clrimportant: 0,
        },
        colors: [0; 3],
    };
    let mdc = unsafe { CreateCompatibleDC(hdc) };
    if mdc.is_null() {
        return None;
    }
    let mut bits: *mut c_void = std::ptr::null_mut();
    let bmp = unsafe {
        CreateDIBSection(
            hdc,
            &mut bmi,
            0,
            &mut bits,
            std::ptr::null_mut(),
            0,
        )
    };
    if bmp.is_null() || bits.is_null() {
        unsafe { DeleteDC(mdc) };
        return None;
    }
    let old = unsafe { SelectObject(mdc, bmp as HGDIOBJ) };
    Some(Canvas {
        dc: mdc,
        bmp,
        old,
        bits: bits as *mut u32,
    })
}

fn canvas_free(c: &Canvas) {
    unsafe {
        SelectObject(c.dc, c.old);
        DeleteObject(c.bmp as HGDIOBJ);
        DeleteDC(c.dc);
    }
}

fn build_poster(game_dir: &Path) -> Vec<u32> {
    let targets = [
        "Assets-SD/Splash/FC-SplashBackground@2x.png",
        "Assets-SD/Splash/FC-SplashBackground.png",
        "Assets-SD/Splash/FC-SplashBackground@3x.png",
    ];
    let mut poster: Vec<u32> = vec![0xFF16_212Bu32; (UI_W * UI_H) as usize];
    let mut note = String::new();
    let mut got_bg = false;
    for rel in targets.iter() {
        let p = game_dir.join(rel);
        if !p.is_file() {
            continue;
        }
        match read_png(&p) {
            Some(img) => {
                // cover-fit: crop to the UI aspect first so nothing is squashed
                let want = UI_W as f32 / UI_H as f32;
                let have = img.w as f32 / img.h as f32;
                let cropped;
                let src: &Png = if have > want {
                    let cw = (img.h as f32 * want) as i32;
                    let x0 = (img.w - cw) / 2;
                    let mut px = vec![0u32; (cw * img.h) as usize];
                    for y in 0..img.h {
                        for x in 0..cw {
                            px[(y * cw + x) as usize] =
                                img.px[(y * img.w + x0 + x) as usize];
                        }
                    }
                    cropped = Png { w: cw, h: img.h, px };
                    &cropped
                } else if have < want {
                    let ch = (img.w as f32 / want) as i32;
                    let y0 = (img.h - ch) / 2;
                    let mut px = vec![0u32; (img.w * ch) as usize];
                    for y in 0..ch {
                        for x in 0..img.w {
                            px[(y * img.w + x) as usize] =
                                img.px[((y0 + y) * img.w + x) as usize];
                        }
                    }
                    cropped = Png { w: img.w, h: ch, px };
                    &cropped
                } else {
                    &img
                };
                let scaled = resize_dark(src, UI_W, UI_H, 45);
                poster.copy_from_slice(&scaled);
                note = format!("bg {} {}x{} ok", rel, img.w, img.h);
                got_bg = true;
                break;
            }
            None => {
                note = format!("bg {} decode FAILED", rel);
            }
        }
    }
    if !got_bg && note.is_empty() {
        note = "bg not found - flat colour".to_string();
    }
    // logo (alpha blended)
    for rel in [
        "Assets-SD/Splash/Fruit-Craft-E@2x.png",
        "Assets-SD/Splash/Fruit-Craft-E.png",
    ]
    .iter()
    {
        let p = game_dir.join(rel);
        if !p.is_file() {
            continue;
        }
        if let Some(img) = read_png(&p) {
            let dh = 92i32;
            let dw = (img.w as f32 * (dh as f32 / img.h as f32)) as i32;
            let sc = resize_dark(&img, dw, dh, 0);
            let ox = (UI_W - dw) / 2;
            let oy = 14;
            for y in 0..dh {
                let ty = oy + y;
                if ty < 0 || ty >= UI_H {
                    continue;
                }
                for x in 0..dw {
                    let tx = ox + x;
                    if tx < 0 || tx >= UI_W {
                        continue;
                    }
                    let s = sc[(y * dw + x) as usize];
                    let a = (s >> 24) & 0xFF;
                    if a < 8 {
                        continue;
                    }
                    let d = poster[(ty * UI_W + tx) as usize];
                    let mix = |fg: u32, bg: u32| -> u32 { (fg * a + bg * (255 - a)) / 255 };
                    let r = mix((s >> 16) & 0xFF, (d >> 16) & 0xFF);
                    let g = mix((s >> 8) & 0xFF, (d >> 8) & 0xFF);
                    let b = mix(s & 0xFF, d & 0xFF);
                    poster[(ty * UI_W + tx) as usize] = 0xFF00_0000 | (r << 16) | (g << 8) | b;
                }
            }
            note = format!("{} | logo {} ok", note, rel);
            break;
        }
    }
    STATE_NOTE.lock().unwrap().replace(note);
    poster
}

static STATE_NOTE: Mutex<Option<String>> = Mutex::new(None);

fn paint_ui(st: &UiState, hdc: HDC) {
    let us = &st.us;
    let can = match canvas_new(hdc, UI_W, UI_H) {
        Some(c) => c,
        None => return,
    };
    unsafe {
        std::ptr::copy_nonoverlapping(st.poster.as_ptr(), can.bits, (UI_W * UI_H) as usize);
    }
    let dc = can.dc;
    // subtitle
    unsafe {
        SelectObject(dc, st.fonts.sub as HGDIOBJ);
    }
    draw_line(us, dc, "انتخاب پروفایل و شروع بازی", 0, 118, 0xFFFFFF, UI_W);

    // profile cards
    for i in 0..4i32 {
        let cx = card_x(i);
        let id = 11 + i;
        let selected = st.sel == i + 1;
        let hovered = st.hover == id;
        if selected {
            round_fill(dc, cx, CARD_Y, CARD_W, CARD_H, 20, 0x2A4A6A, 100);
            round_stroke(dc, cx, CARD_Y, CARD_W, CARD_H, 20, 0xFFD24A, 3);
        } else if hovered {
            round_fill(dc, cx, CARD_Y, CARD_W, CARD_H, 20, 0x24405C, 100);
            round_stroke(dc, cx, CARD_Y, CARD_W, CARD_H, 20, 0xD8E4F0, 2);
        } else {
            round_fill(dc, cx, CARD_Y, CARD_W, CARD_H, 20, 0x22303E, 100);
            round_stroke(dc, cx, CARD_Y, CARD_W, CARD_H, 20, 0x6E7C8A, 1);
        }
        // round avatar
        round_fill(dc, cx + CARD_W / 2 - 20, CARD_Y + 44, 40, 40, 40, 0x4A6070, 100);
        unsafe {
            SelectObject(dc, st.fonts.title as HGDIOBJ);
        }
        let title = format!("پروفایل {}", ["۱", "۲", "۳", "۴"][i as usize]);
        draw_line(us, dc, &title, cx, CARD_Y + 14, 0xFFF2D24A, CARD_W);
        unsafe {
            SelectObject(dc, st.fonts.name as HGDIOBJ);
        }
        let nm = if st.created[i as usize] {
            st.names[i as usize].clone()
        } else {
            "خالی".to_string()
        };
        draw_line(
            us,
            dc,
            &nm,
            cx,
            CARD_Y + 100,
            if st.created[i as usize] { 0xEAF2F8 } else { 0x8FA0AC },
            CARD_W,
        );
    }

    // buttons
    let btns: [(i32, u32, u32, &str); 3] = [
        (20, 0x2FA84F, 0x39C05C, "شروع"),
        (21, 0x2E86C1, 0x3D9BD6, "ساخت پروفایل"),
        (22, 0xC0392B, 0xD94A3A, "خروج"),
    ];
    unsafe {
        SelectObject(dc, st.fonts.btn as HGDIOBJ);
    }
    for (id, base, hot, label) in btns.iter() {
        let (bx, bw) = btn_x(*id);
        let pressed = st.pressed == *id;
        let color = if st.hover == *id || pressed { *hot } else { *base };
        round_fill(dc, bx, BTN_Y, bw, BTN_H, 16, color, 100);
        round_stroke(dc, bx, BTN_Y, bw, BTN_H, 16, 0x33000000, 2);
        let ty = BTN_Y + (BTN_H - 26) / 2 + if pressed { 1 } else { 0 };
        draw_line(us, dc, label, bx, ty, 0xFFFFFF, bw);
    }

    // name row, RTL:  [نام:] [ edit box ]  - the box sits on the right, the
    // label immediately to its left, and the whole row is centred.
    round_fill(dc, EDIT_X - 6, NAME_Y - 6, EDIT_W + 12, NAME_H + 12, 10, 0x1A2430, 100);
    unsafe {
        SelectObject(dc, st.fonts.label as HGDIOBJ);
    }
    draw_line(us, dc, "نام:", LABEL_X, NAME_Y - 2, 0xE8F0F5, LABEL_W);

    // blit
    unsafe {
        BitBlt(hdc, 0, 0, UI_W, UI_H, can.dc, 0, 0, SRCCOPY);
    }
    canvas_free(&can);
}

// ------------------------- actions -------------------------
fn ui_set_edit(st: &UiState, text: &str) {
    if !st.edit.is_null() {
        let w = wide(text);
        unsafe {
            SetWindowTextW(st.edit, w.as_ptr());
        }
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

fn ui_hit_test(x: i32, y: i32) -> i32 {
    for i in 0..4i32 {
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

fn ui_action(st: &mut UiState, id: i32) {
    log_root_line(&format!("ui action {}", id));
    match id {
        11..=14 => {
            // keep the name typed for the currently selected card before switching
            let prev = st.sel;
            if prev >= 1 && prev <= 4 {
                let idx = (prev - 1) as usize;
                let name = ui_read_edit(st);
                if !name.is_empty() {
                    st.names[idx] = name;
                }
                if st.created[idx] {
                    let _ = fs::write(profile_file(st, prev), st.names[idx].as_str());
                }
            }
            st.sel = id - 10;
            write_last_profile(st.sel);
            ui_set_edit(st, &st.names[(st.sel - 1).max(0) as usize]);
        }
        20 => {
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
            unsafe {
                DestroyWindow(st.hwnd);
            }
        }
        21 => {
            let j = (0..4usize).find(|j| !st.created[*j]).unwrap_or(3);
            let name = ui_read_edit(st);
            st.created[j] = true;
            if !name.is_empty() {
                st.names[j] = name;
            } else if st.names[j].is_empty() {
                st.names[j] = format!("پروفایل {}", ["۱", "۲", "۳", "۴"][j]);
            }
            let _ = fs::write(profile_file(st, (j + 1) as i32), st.names[j].as_str());
            st.sel = j as i32 + 1;
            write_last_profile(st.sel);
            ui_set_edit(st, &st.names[j]);
        }
        _ => {
            // save whatever is typed, then close (only for a real profile)
            if st.sel >= 1 && st.sel <= 4 {
                let idx = (st.sel - 1) as usize;
                let name = ui_read_edit(st);
                if !name.is_empty() {
                    st.names[idx] = name;
                }
                if st.created[idx] {
                    let _ = fs::write(profile_file(st, st.sel), st.names[idx].as_str());
                }
            }
            st.result = 0;
            unsafe {
                DestroyWindow(st.hwnd);
            }
        }
    }
}

static EDIT_OLD_PROC: AtomicIsize = AtomicIsize::new(0);

unsafe extern "system" fn edit_proc(h: HWND, m: u32, w: WPARAM, l: LPARAM) -> LRESULT {
    let old = EDIT_OLD_PROC.load(Ordering::SeqCst);
    if m == WM_KEYDOWN && w == VK_RETURN_KEY {
        let mut fire = false;
        if let Some(mut st) = UI.lock().unwrap().as_mut() {
            // Enter = save the name and start the game
            let sel = st.sel;
            if sel >= 1 && sel <= 4 {
                let name = ui_read_edit(&st);
                if !name.is_empty() {
                    st.names[(sel - 1) as usize] = name;
                }
            }
            fire = true;
        }
        if fire {
            if let Some(mut st) = UI.lock().unwrap().as_mut() {
                ui_action(&mut st, 20);
            }
        }
        return 0;
    }
    if m == WM_GETDLGCODE {
        return DLGC_WANTALLKEYS;
    }
    CallWindowProcW(old, h, m, w, l)
}

unsafe extern "system" fn ui_proc(hwnd: HWND, msg: u32, w: WPARAM, l: LPARAM) -> LRESULT {
    match msg {
        WM_CREATE => {
            let hinst = GetModuleHandleW(std::ptr::null());
            let edit = CreateWindowExW(
                0,
                wide("EDIT").as_ptr(),
                std::ptr::null(),
                WS_CHILD | WS_VISIBLE | WS_BORDER | ES_AUTOHSCROLL | ES_RIGHT,
                EDIT_X,
                NAME_Y,
                EDIT_W,
                NAME_H,
                hwnd,
                std::ptr::null_mut(),
                hinst,
                std::ptr::null(),
            );
            if let Some(st) = UI.lock().unwrap().as_mut() {
                st.edit = edit;
                let i = ((st.sel - 1).max(0) as usize).min(3);
                ui_set_edit(st, &st.names[i]);
                let f = st.fonts.edit;
                SendMessageW(edit, WM_SETFONT, f as usize, 1);
                let old = SetWindowLongPtrW(edit, GWLP_WNDPROC, edit_proc as usize as isize);
                EDIT_OLD_PROC.store(old, Ordering::SeqCst);
                st.old_edit_proc = old;
            }
            0
        }
        WM_PAINT => {
            let mut ps: PAINTSTRUCT = mem::zeroed();
            let hdc = BeginPaint(hwnd, &mut ps);
            {
                let ui_g = UI.lock().unwrap();
                if let Some(st) = ui_g.as_ref() {
                    paint_ui(st, hdc);
                }
            }
            EndPaint(hwnd, &ps);
            0
        }
        WM_MOUSEMOVE => {
            let x = (l as u32 & 0xFFFF) as i32;
            let y = ((l as u32 >> 16) & 0xFFFF) as i32;
            let id = ui_hit_test(x, y);
            let mut changed = false;
            if let Some(st) = UI.lock().unwrap().as_mut() {
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
            let id = ui_hit_test(x, y);
            if let Some(st) = UI.lock().unwrap().as_mut() {
                st.pressed = id;
            }
            unsafe {
                SetCapture(hwnd);
                InvalidateRect(hwnd, std::ptr::null(), 0);
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
            if let Some(st) = UI.lock().unwrap().as_mut() {
                st.pressed = 0;
            }
            unsafe {
                ReleaseCapture();
                InvalidateRect(hwnd, std::ptr::null(), 0);
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
            if let Some(mut st) = UI.lock().unwrap().as_mut() {
                st.result = 0;
            }
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


// ------------------------- Persian-capable alert -------------------------
// MessageBoxW renders Persian right-to-left only with a font that has Arabic
// glyphs; the default GUI font does not. Set a private font on the box.
static ALERT_FONT: Mutex<isize> = Mutex::new(0);

fn alert_box(text: &str, caption: &str, flags: u32) {
    unsafe {
        if ALERT_FONT.lock().unwrap().clone() == 0 {
            let mut lf: LOGFONTW = mem::zeroed();
            let face = wide("Tahoma");
            for (i, c) in face.iter().take(31).enumerate() {
                lf.lf_facename[i] = *c;
            }
            lf.lf_height = -14; // ~ 14 px, readable on 1366x768
            lf.lf_charset = 0; // DEFAULT_CHARSET -> Tahoma/Arabic fallback
            let f = CreateFontIndirectW(&lf);
            *ALERT_FONT.lock().unwrap() = f as isize;
        }
        // Install hook, show box, remove hook.
        let hook = SetWindowsHookExW(WH_CBT, Some(cbt_proc), std::ptr::null_mut(), GetCurrentThreadId());
        let t = wide(text);
        let c = wide(caption);
        MessageBoxW(std::ptr::null_mut(), t.as_ptr(), c.as_ptr(), flags | MB_TOPMOST);
        if !hook.is_null() {
            UnhookWindowsHookEx(hook);
        }
    }
}

unsafe extern "system" fn cbt_proc(code: i32, w: usize, l: isize) -> isize {
    if code == HCBT_ACTIVATE {
        let font = *ALERT_FONT.lock().unwrap() as HANDLE;
        if !font.is_null() {
            // Persian button captions - an English "OK" would be a bug report
            for (id, label) in [(0i32, "باشه"), (1i32, "لغو"), (2i32, "لغو"), (6i32, "بله"), (7i32, "نه")] {
                let ctl = GetDlgItem(w as HWND, id);
                if !ctl.is_null() {
                    SendMessageW(ctl, WM_SETFONT, font as usize, 1);
                    let lw = wide(label);
                    SetWindowTextW(ctl, lw.as_ptr());
                }
            }
            // 0xFFFF is the static text control of a MessageBox
            let ctl = GetDlgItem(w as HWND, 0xFFFF);
            if !ctl.is_null() {
                SendMessageW(ctl, WM_SETFONT, font as usize, 1);
            }
        }
    }
    CallNextHookEx(std::ptr::null_mut(), code, w, l)
}

// ------------------------- network precheck -------------------------
// The game is an online client: it loads the player from
// https://iran.fruitcraft.ir/player/load and never leaves the loading scene
// when that host cannot be reached. Failing fast with a clear message is far
// better than a frozen black window.
fn host_reachable(host: &str, port: u16, timeout_ms: u32) -> bool {
    // A TCP connect alone proves nothing on the Iranian hosts this game uses:
    // the TLS handshake stalls there. Send a ClientHello and wait for the
    // server to answer, then measure how long the whole thing took.
    unsafe {
        let wsa = WSAStartup(0x0202, &mut mem::zeroed());
        if wsa != 0 {
            return true; // cannot tell - do not block the user
        }
        let mut hints: ADDRINFOW = mem::zeroed();
        hints.ai_socktype = SOCK_STREAM;
        hints.ai_family = 2; // AF_INET
        let mut res: *mut ADDRINFOW = std::ptr::null_mut();
        let host_w = wide(host);
        let rc = GetAddrInfoW(host_w.as_ptr(), std::ptr::null(), &hints, &mut res);
        if rc != 0 || res.is_null() {
            WSACleanup();
            return false;
        }
        let mut addr: *mut SOCKADDR = (*res).ai_addr;
        let mut addr_len = (*res).ai_addrlen as i32;
        let mut ok = false;
        while !addr.is_null() {
            let s = socket((*res).ai_family, (*res).ai_socktype, (*res).ai_protocol);
            if s != usize::MAX as usize {
                // non-blocking connect
                let mut mode: u32 = 1;
                ioctlsocket(s, 0x8004_666E_u32 as i32 /*FIONBIO*/, &mut mode);
                let _ = connect(s, addr, addr_len);
                let mut wfd: FdSet = mem::zeroed();
                wfd.fd_count = 1;
                wfd.fd_array[0] = s;
                let mut tv = Timeval { tv_sec: (timeout_ms / 1000) as i32, tv_usec: 0 };
                let sel = select(0, std::ptr::null_mut(), &mut wfd, std::ptr::null_mut(), &mut tv);
                if sel > 0 {
                    // now the TLS hello: 0x16 0x03 0x01 + length + handshake
                    let hello: [u8; 11] = [
                        0x16, 0x03, 0x01, 0x00, 0x2f, // record: handshake, TLS1.0, 47 bytes
                        0x01, 0x00, 0x00, 0x2b, 0x03, 0x03,
                    ];
                    let sent = send(s, hello.as_ptr() as *const i8, hello.len() as i32, 0);
                    if sent > 0 {
                        let mut rfd: FdSet = mem::zeroed();
                        rfd.fd_count = 1;
                        rfd.fd_array[0] = s;
                        let mut tv2 = Timeval { tv_sec: (timeout_ms / 1000) as i32, tv_usec: 0 };
                        let r = select(0, &mut rfd, std::ptr::null_mut(), std::ptr::null_mut(), &mut tv2);
                        if r > 0 {
                            let mut buf = [0u8; 8];
                            let n = recv(s, buf.as_mut_ptr() as *mut i8, buf.len() as i32, 0);
                            // any TLS record (0x15 alert / 0x16 handshake) means the
                            // server is alive and talking to us
                            ok = n > 0 && (buf[0] == 0x15 || buf[0] == 0x16 || buf[0] == 0x17);
                        }
                    }
                }
                closesocket(s);
                if ok {
                    break;
                }
            }
            addr = (*res).ai_next as *mut SOCKADDR;
            if (*res).ai_next.is_null() {
                break;
            }
            addr_len = (*res).ai_next.as_ref().map(|n| n.ai_addrlen as i32).unwrap_or(8);
            addr = (*res).ai_next.as_ref().map(|n| n.ai_addr).unwrap_or(std::ptr::null_mut());
        }
        FreeAddrInfoW(res);
        WSACleanup();
        ok
    }
}

// ------------------------- window entry point -------------------------
fn pick_profile_ui(game_dir: &Path, profiles_root: &Path) -> i32 {
    let mut names: [String; 4] = Default::default();
    let mut created: [bool; 4] = [false; 4];
    let def = ["پروفایل ۱", "پروفایل ۲", "پروفایل ۳", "پروفایل ۴"];
    for n in 0..4usize {
        let pf = profiles_root
            .join(format!("p{}", n + 1))
            .join("profile.txt");
        if let Ok(s) = fs::read_to_string(&pf) {
            created[n] = true;
            let s = s.trim().to_string();
            if !s.is_empty() {
                names[n] = s;
            }
        }
        if names[n].is_empty() {
            names[n] = def[n].to_string();
        }
    }

    // 1) register the game's own fonts (process private - nothing is installed)
    let mut font_dir = game_dir.to_path_buf();
    for cand in [
        game_dir.to_path_buf(),
        game_dir.join("fonts"),
        game_dir.join("Assets-SD/Splash"),
    ] {
        if cand.join("QuadonSoltan.ttf").is_file() {
            font_dir = cand;
            break;
        }
    }
    for f in [
        "QuadonSoltan.ttf",
        "QuadonSoltanBold.ttf",
        "adivery_dana_normal.ttf",
    ] {
        let p = font_dir.join(f);
        if p.is_file() {
            let w = wide(&p.to_string_lossy());
            let n = unsafe { AddFontResourceW(w.as_ptr()) };
            log_root_line(&format!("font {} added={}", f, n));
        } else {
            log_root_line(&format!("font {} MISSING in {}", f, font_dir.display()));
        }
    }

    // 2) background poster from the game's splash image
    let poster = build_poster(game_dir);
    if let Some(note) = STATE_NOTE.lock().unwrap().clone() {
        log_root_line(&format!("ui art: {}", note));
    }

    // 3) fonts
    let sdc = unsafe { GetDC(std::ptr::null_mut()) };
    let fonts = Fonts {
        title: make_font("Quadon Soltan", font_px(sdc, 16), 700),
        sub: make_font("Dana", font_px(sdc, 13), 400),
        name: make_font("Dana", font_px(sdc, 12), 400),
        btn: make_font("Dana", font_px(sdc, 14), 700),
        label: make_font("Dana", font_px(sdc, 13), 400),
        edit: make_font_cs("Dana", font_px(sdc, 13), 400, 178),
    };
    let us = Uniscribe::new(sdc);
    unsafe { ReleaseDC(std::ptr::null_mut(), sdc) };
    log_root_line(&format!(
        "text engine: uniscribe={}",
        if us.is_some() { "yes" } else { "no (built-in shaper)" }
    ));

    let hinst = unsafe { GetModuleHandleW(std::ptr::null()) };
    let cls = wide("FruitcraftUi");
    let mut wc: WNDCLASSEXW = unsafe { mem::zeroed() };
    wc.cbSize = mem::size_of::<WNDCLASSEXW>() as u32;
    wc.lpfnWndProc = Some(ui_proc);
    wc.hbrBackground = std::ptr::null_mut();
    wc.lpszClassName = cls.as_ptr();
    wc.hCursor = unsafe { LoadCursorW(std::ptr::null_mut(), IDC_ARROW as u32 as usize as LPCWSTR) };
    wc.hInstance = hinst;
    let atom = unsafe { RegisterClassExW(&wc) };
    log_root_line(&format!(
        "ui class atom={} err={}",
        atom,
        unsafe { GetLastError() }
    ));
    if atom == 0 {
        return pick_profile_msgbox();
    }
    let mut wa: RECT = unsafe { mem::zeroed() };
    unsafe {
        SystemParametersInfoW(SPI_GETWORKAREA, 0, &mut wa as *mut _ as *mut c_void, 0);
    }
    let style = WS_OVERLAPPED | WS_CAPTION | WS_SYSMENU | WS_MINIMIZEBOX;
    let mut wr = RECT {
        left: 0,
        top: 0,
        right: UI_W,
        bottom: UI_H,
    };
    unsafe { AdjustWindowRect(&mut wr, style, 0) };
    let ww = wr.right - wr.left;
    let wh = wr.bottom - wr.top;
    let x = wa.left + ((wa.right - wa.left) - ww) / 2;
    let y = wa.top + ((wa.bottom - wa.top) - wh) / 2;
    // the window proc needs the state in place, WM_CREATE fires inside CreateWindowExW
    let last = read_last_profile();
    UI.lock().unwrap().replace(UiState {
        sel: last,
        hover: 0,
        pressed: 0,
        result: 0,
        hwnd: std::ptr::null_mut(),
        edit: std::ptr::null_mut(),
        old_edit_proc: 0,
        fonts,
        us,
        poster,
        names,
        created,
        profiles_root: profiles_root.to_string_lossy().to_string(),
        game_dir: game_dir.to_string_lossy().to_string(),
    });
    let hwnd = unsafe {
        CreateWindowExW(
            WS_EX_APPWINDOW,
            cls.as_ptr(),
            wide("Fruitcraft").as_ptr(),
            style,
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
    if let Some(st) = UI.lock().unwrap().as_mut() {
        st.hwnd = hwnd;
    }
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
    let ui_g = UI.lock().unwrap();
    let result = ui_g.as_ref().map(|s| s.result).unwrap_or(0);
    if let Some(st) = ui_g.as_ref() {
        for f in [
            st.fonts.title,
            st.fonts.sub,
            st.fonts.name,
            st.fonts.btn,
            st.fonts.label,
            st.fonts.edit,
        ] {
            if !f.is_null() {
                unsafe { DeleteObject(f as HGDIOBJ) };
            }
        }
    }
    drop(ui_g);
    UI.lock().unwrap().take();
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
            "Fruitcraft launcher v0.1.12 (rust) starting; root={}",
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

    // ---- 6) launch the engine (working dir = game dir) ----
    // Two engines can be shipped:
    //   engine\Corona.Shell.exe + engine\CoronaLabs.Corona.Native.dll
    //        = official Solar2D 2026 (used when present, it is the better runtime)
    //   FruitcraftEngine.exe
    //        = the original mobile engine, fallback only
    // A double-clickable Windows build can also be started under Wine on Linux.
    // If a runtime is shipped next to the launcher, restart ourselves through it
    // so a Linux user only ever double-clicks Fruitcraft.exe.
    if std::env::var_os("FRUITCRAFT_UNDER_WINE").is_none() {
        let wine = root.join("winelinux").join("bin").join("wine");
        if wine.is_file() {
            let exe = std::env::current_exe().unwrap_or_else(|_| root.join("Fruitcraft.exe"));
            log_line("wine runtime found, restarting the launcher through it", &root);
            let mut cmd = std::process::Command::new(&wine);
            cmd.arg(&exe).env("FRUITCRAFT_UNDER_WINE", "1");
            match cmd.spawn() {
                Ok(_) => {
                    unsafe { ExitProcess(0) };
                }
                Err(e) => log_line(&format!("wine restart failed: {}", e), &root),
            }
        }
    }

    let modern_engine = root.join("engine").join("Corona.Shell.exe");
    let legacy_engine = root.join("FruitcraftEngine.exe");
    let (engine_path, modern) = if modern_engine.is_file() {
        (modern_engine, true)
    } else if legacy_engine.is_file() {
        (legacy_engine, false)
    } else {
        msgbox(
            "No Windows game engine was found in this folder.\n\nIf you are on Linux: unpack fruitcraft-v0.1.11-linux.zip from the same release, it runs the game natively through the system Wine.\n\nOn Windows: keep the whole folder intact (engine\\Corona.Shell.exe must exist).",
            "Fruitcraft",
            MB_ICONERROR,
        );
        return;
    };
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
    loop {
    let profile = pick_profile_ui(&game_dir, &profiles_root);
    if profile == 0 {
        log_line("no profile selected - exiting", &root);
        break;
    }
    log_line(&format!("profile {} selected", profile), &root);
    // ---- after the picker: the game needs its server ----
    {
        let online = host_reachable("iran.fruitcraft.ir", 443, 4000);
        log_line(&format!("network precheck iran.fruitcraft.ir:443 reachable={}", online), &root);
        if !online {
            alert_box(
                "بازی به سرور اصلی خودش وصل نمی‌شود.\n\n                 آدرس سرور: iran.fruitcraft.ir\n\n                 بدون اتصال، بازی داخل صفحهٔ بارگذاری می‌ماند (همان پنجرهٔ سیاه).\n\n                 اینترنت (و اگر روشن است، فیلترشکن) را بررسی کن و دوباره شروع کن.\n                 پوشهٔ بازی هیچ فایلی را روی سیستم نصب یا پراکنده نمی‌کند.",
                "Fruitcraft - اتصال به سرور",
                MB_ICONWARNING,
            );
            log_line("server unreachable - back to the picker", &root);
            continue;
        }
    }


    let pdir = profiles_root.join(format!("p{}", profile));
    let pdir_engine = pdir.join("engine");
    let pdir_appdata = pdir.join("appdata");
    let pdir_local = pdir.join("local");

    // This engine build stores its documents at %APPDATA%\Fruitcraft\Fruitcraft.
    // Point that node at the chosen profile (junction), so each profile owns
    // its data. Only the junction link is ever removed - never the target.
    // (The modern runtime keeps its own store, so it is left alone.)
    if !modern {
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

    }

    // Per-profile environment: isolates plugin/cache dirs per profile.
    // The modern Solar2D runtime resolves its own folders from APPDATA and
    // faults when that is redirected, so it always gets the plain environment.
    // FRUITCRAFT_LOGDIR is passed in both cases: the game writes its
    // fruitcraft-engine.log straight into the game folder, next to Fruitcraft.exe.
    let extra_env: Vec<(String, String)> =
        vec![("FRUITCRAFT_LOGDIR".to_string(), root.to_string_lossy().to_string())];
    let env_block = if modern {
        build_env_block("", "", &extra_env)
    } else {
        build_env_block(
            &pdir_appdata.to_string_lossy(),
            &pdir_local.to_string_lossy(),
            &extra_env,
        )
    };
    let env_ptr = {
        env_block.as_ptr() as *mut c_void // never written through
    };

    // Close the picker window before the game starts: two GL/owner windows on
    // screen can make the engine's first frame come up black on some drivers.
    {
        let hwnd = HWIN.load(Ordering::SeqCst) as HWND;
        if !hwnd.is_null() {
            unsafe {
                ShowWindow(hwnd, SW_HIDE);
                DestroyWindow(hwnd);
            }
            HWIN.store(0, Ordering::SeqCst);
        }
        // let the desktop process the destruction before the engine maps its window
        let mut msg: MSG = unsafe { mem::zeroed() };
        unsafe {
            while PeekMessageW(&mut msg, std::ptr::null_mut(), 0, 0, PM_REMOVE) != 0 {
                TranslateMessage(&msg);
                DispatchMessageW(&msg);
            }
            Sleep(250);
        }
    }

    log_line(
        &format!(
            "engine: {} ({})",
            engine_path.display(),
            if modern { "Solar2D 2026" } else { "legacy mobile engine" }
        ),
        &root,
    );
    // the modern engine keeps its runtime data next to the exe
    let engine_dir = engine_path
        .parent()
        .map(|p| p.to_path_buf())
        .unwrap_or_else(|| root.clone());
    let engine_w = wide(&engine_path.to_string_lossy());
    let cwd_owned = if modern { engine_dir.clone() } else { game_dir.clone() };
    let cwd_w = wide(&cwd_owned.to_string_lossy());

    // Pass the bootstrap entry point as an argument so the engine loads
    // it directly instead of popping a file picker. The shell accepts the
    // main-file path as its first argument.
    let main_lua = game_dir.join("main.lua");
    let main_lua_s = main_lua.to_string_lossy().to_string();
    let cmdline = format!("\"{}\" \"{}\"", engine_path.to_string_lossy(), main_lua_s);
    log_line(&format!("engine command line: {}", cmdline), &root);
    let mut cmd_w = wide(&cmdline);

    // The engine must inherit a child console, NOT the launcher's own handles:
    // a Windows GUI parent has no console at all, and inheriting NULL std
    // handles makes the runtime's output path fault - the black window.
    let mut si: STARTUPINFOW = unsafe { mem::zeroed() };
    si.cb = mem::size_of::<STARTUPINFOW>() as u32;
    let _ = si.dwFlags; // no handle redirection: the engine manages its own
    let mut pi: PROCESS_INFORMATION = unsafe { mem::zeroed() };
    let ok = unsafe {
        CreateProcessW(
            engine_w.as_ptr(),
            cmd_w.as_mut_ptr(),
            std::ptr::null_mut(),
            std::ptr::null_mut(),
            0,
            CREATE_NO_WINDOW,
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

    // ---- 6) wait for the engine window, then make it big ----
    // The engine draws its own window; we only help it. A hard maximise of a
    // fresh GL window can fault inside some drivers, so the window is resized
    // to the desktop work area instead (Solar2D scales its content to fit).
    let mut game_hwnd: HWND = std::ptr::null_mut();
    for _ in 0..90 {
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
        let mut wa: RECT = unsafe { mem::zeroed() };
        unsafe { SystemParametersInfoW(SPI_GETWORKAREA, 0, &mut wa as *mut RECT as *mut c_void, 0) };
        let (mut wa_w, mut wa_h) = (wa.right - wa.left, wa.bottom - wa.top);
        if wa_w < 640 {
            wa_w = 1280;
        }
        if wa_h < 480 {
            wa_h = 720;
        }
        unsafe {
            SetWindowPos(
                game_hwnd,
                std::ptr::null_mut(),
                wa.left,
                wa.top,
                wa_w,
                wa_h,
                SWP_NOZORDER | SWP_NOOWNERZORDER | SWP_FRAMECHANGED,
            );
            SetForegroundWindow(game_hwnd);
        }
        log_line(&format!("engine window placed {}x{}", wa_w, wa_h), &root);
    } else {
        let mut code: u32 = 0;
        let exited = unsafe { WaitForSingleObject(pi.hProcess, 5000) } == WAIT_OBJECT_0;
        if exited {
            unsafe { GetExitCodeProcess(pi.hProcess, &mut code) };
            log_line(&format!("engine exited early, code={}", code), &root);
        } else {
            log_line("engine still running but no window matched yet", &root);
        }
    }

    // ---- 7) supervise the game window ----
    // Real Windows: the engine can take a while to open its GL window, can come
    // up titled "Corona Shell", and - if the game itself throws before showing a
    // scene - can sit on a black, non-responding window. All three are handled
    // here, and everything relevant is written to fruitcraft.log so a stuck run
    // can be diagnosed instead of guessed at.
    let start_tick = unsafe { GetTickCount() };
    let mut nudges = 0u32;
    let mut reported_no_window = false;
    let mut hung_ticks = 0u32;
    let mut reported_hung = false;
    loop {
        if unsafe { WaitForSingleObject(pi.hProcess, 2000) } == WAIT_OBJECT_0 {
            let mut code: u32 = 0;
            unsafe { GetExitCodeProcess(pi.hProcess, &mut code) };
            log_line(&format!("engine exited, code={}", code), &root);
            let ran = u32::wrapping_sub(unsafe { GetTickCount() }, start_tick);
            if code != 0 && ran < 30_000 {
                alert_box(
                    "بازی غیرمنتظره بسته شد.\n\n                     دو فایل کنار Fruitcraft.exe هست: fruitcraft.log و fruitcraft-engine.log\n                     همان‌ها را بفرست تا علت دقیق مشخص شود.\n\n                     اگر در لاگ از کارت گرافیک یا OpenGL حرفی بود، درایور گرافیک را به‌روز کن.",
                    "Fruitcraft - خطای اجرا",
                    MB_ICONERROR,
                );
            }
            break;
        }
        let elapsed = u32::wrapping_sub(unsafe { GetTickCount() }, start_tick);
        if elapsed > 12 * 3600 * 1000 {
            break; // safety cap: 12 h
        }

        let h = find_game_window();
        if h.is_null() {
            if !reported_no_window && elapsed > 45_000 {
                reported_no_window = true;
                log_line("no engine window after 45 s", &root);
            }
            continue;
        }

        // A window that stops answering for 30 s is the classic black-window
        // symptom: report it once, with a pointer to the logs.
        let mut resp: usize = 0;
        let alive = unsafe {
            SendMessageTimeoutW(h, WM_NULL, 0, 0, SMTO_ABORTIFHUNG, 1500, &mut resp) != 0
        };
        // a hung (black) window is not just slow: once it does not answer for
        // 30 s it never will, so lift the modal box off it after a grace period
        if !alive && !reported_hung && hung_ticks >= 15 {
            unsafe {
                ShowWindow(h, SW_HIDE);
            }
        }
        hung_ticks = if alive { 0 } else { hung_ticks + 1 };
        // ~30 s without answering = the black, non-responding window the user saw.
        if hung_ticks >= 15 && !reported_hung {
            reported_hung = true;
            log_line("engine window is not responding (hung) - showing error", &root);
            alert_box(
                "پنجرهٔ بازی پاسخ نمی‌دهد (قفل شده).\n\n                 این معمولاً یعنی بازی به سرورش وصل نشده یا کارت گرافیک صحنه را نکشیده.\n                 فایل‌های fruitcraft.log و fruitcraft-engine.log کنار Fruitcraft.exe را بفرست.\n\n                 Internet را بررسی کن و دوباره شروع کن.",
                "Fruitcraft - پنجرهٔ قفل‌شده",
                MB_ICONWARNING,
            );
        }

        // Landscape check: a portrait window means the engine ignored the
        // orientation in build.settings; fix it once and log it.
        if nudges < 4 {
            let mut r: RECT = unsafe { mem::zeroed() };
            if unsafe { GetWindowRect(h, &mut r) } != 0 {
                let w = r.right - r.left;
                let ht = r.bottom - r.top;
                if w > 0 && ht > w {
                    log_line(
                        &format!("engine window {}x{} is portrait - resizing", w, ht),
                        &root,
                    );
                    let mut wa: RECT = unsafe { mem::zeroed() };
                    unsafe {
                        SystemParametersInfoW(SPI_GETWORKAREA, 0, &mut wa as *mut RECT as *mut c_void, 0);
                        SetWindowPos(
                            h,
                            std::ptr::null_mut(),
                            wa.left,
                            wa.top,
                            wa.right - wa.left,
                            wa.bottom - wa.top,
                            SWP_NOZORDER | SWP_NOOWNERZORDER | SWP_FRAMECHANGED,
                        );
                    }
                    nudges += 1;
                }
            }
        }

        // Title: Solar2D names its window "Corona Shell"; show the game name.
        let title_w = wide("Fruitcraft");
        unsafe {
            SendMessageW(h, WM_SETTEXT, 0, title_w.as_ptr() as LPARAM);
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

    log_line("session ended - back to the profile picker", &root);
    } // end of session loop
}
