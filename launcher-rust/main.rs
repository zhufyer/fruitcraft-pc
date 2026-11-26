// ============================================================
//  Fruitcraft.exe - Fruitcraft PC launcher (v0.1.08b, Rust)
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
static STATUS: Mutex<String> = Mutex::new(String::new());
static PCT: AtomicI32 = AtomicI32::new(-1);
static COPY_DONE: AtomicI32 = AtomicI32::new(0);
static COPY_TOTAL: AtomicI32 = AtomicI32::new(1);
static PROFILE_SEL: AtomicI32 = AtomicI32::new(0);

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
            let mut wc: WNDCLASSEXW = mem::zeroed();
            wc.cbSize = mem::size_of::<WNDCLASSEXW>() as u32;
            wc.lpfnWndProc = Some(wnd_proc);
            wc.hbrBackground = std::ptr::null_mut();
            wc.lpszClassName = wide("FruitcraftStatus").as_ptr();
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

unsafe extern "system" fn dlg_proc(hwnd: HWND, msg: u32, w: WPARAM, _l: LPARAM) -> LRESULT {
    match msg {
        WM_COMMAND => {
            let id = (w & 0xFFFF) as i32;
            PROFILE_SEL.store(if (1..=4).contains(&id) { id } else { 0 }, Ordering::SeqCst);
            DestroyWindow(hwnd);
            0
        }
        WM_CLOSE | WM_DESTROY => {
            PostQuitMessage(0);
            0
        }
        _ => DefWindowProcW(hwnd, msg, w, _l),
    }
}

// Modal profile picker: four profile buttons + exit.
fn pick_profile() -> i32 {
    PROFILE_SEL.store(0, Ordering::SeqCst);
    let hinst = unsafe { GetModuleHandleW(std::ptr::null()) };
    unsafe {
        let mut wc: WNDCLASSEXW = mem::zeroed();
        wc.cbSize = mem::size_of::<WNDCLASSEXW>() as u32;
        wc.lpfnWndProc = Some(dlg_proc);
        wc.hbrBackground = std::ptr::null_mut();
        wc.lpszClassName = wide("FruitcraftDlg").as_ptr();
        wc.hCursor = LoadCursorW(std::ptr::null_mut(), IDC_ARROW as u32 as usize as LPCWSTR);
        wc.hInstance = hinst;
        wc.hIcon = LoadImageW(hinst, 1usize as LPCWSTR, IMAGE_ICON, 32, 32, 0) as HICON;
        RegisterClassExW(&wc);

        let mut wa: RECT = mem::zeroed();
        SystemParametersInfoW(SPI_GETWORKAREA, 0, &mut wa as *mut _ as *mut c_void, 0);
        let x = wa.left + (wa.right - wa.left) / 2 - 240;
        let y = wa.top + (wa.bottom - wa.top) / 2 - 235;
        let hwnd = CreateWindowExW(
            WS_EX_TOPMOST | WS_EX_TOOLWINDOW,
            wide("FruitcraftDlg").as_ptr(),
            wide("Fruitcraft \u{2014} \u{0627}\u{0646}\u{062a}\u{062e}\u{0627}\u{0628} \u{067e}\u{0631}\u{0648}\u{0641}\u{0627}\u{06cc}\u{0644}").as_ptr(),
            WS_POPUP | WS_CAPTION | WS_SYSMENU,
            x,
            y,
            480,
            470,
            std::ptr::null_mut(),
            std::ptr::null_mut(),
            hinst,
            std::ptr::null(),
        );
        if hwnd.is_null() {
            return 0;
        }
        let btns: [(&str, u32, i32); 5] = [
            ("\u{067e}\u{0631}\u{0648}\u{0641}\u{0627}\u{06cc}\u{0644} 1 \u{2014} \u{0627}\u{0635}\u{0644}\u{06cc}", BS_DEFPUSHBUTTON, 1),
            ("\u{067e}\u{0631}\u{0648}\u{0641}\u{0627}\u{06cc}\u{0644} 2", BS_PUSHBUTTON, 2),
            ("\u{067e}\u{0631}\u{0648}\u{0641}\u{0627}\u{06cc}\u{0644} 3", BS_PUSHBUTTON, 3),
            ("\u{067e}\u{0631}\u{0648}\u{0641}\u{0627}\u{06cc}\u{0644} 4", BS_PUSHBUTTON, 4),
            ("\u{062e}\u{0631}\u{0648}\u{062c}", BS_PUSHBUTTON, IDCANCEL as i32),
        ];
        for (lab, style, id) in btns.iter() {
            CreateWindowExW(
                0,
                wide("BUTTON").as_ptr(),
                wide(lab).as_ptr(),
                WS_CHILD | WS_VISIBLE | style,
                20,
                50 + ((id - 1) as i32) * 72,
                440,
                62,
                hwnd,
                std::ptr::null_mut(),
                hinst,
                *id as usize as *const c_void,
            );
        }
        ShowWindow(hwnd, SW_SHOW);
        UpdateWindow(hwnd);
        let mut m: MSG = mem::zeroed();
        while GetMessageW(&mut m, std::ptr::null_mut(), 0, 0) != 0 {
            DispatchMessageW(&m);
        }
    }
    PROFILE_SEL.load(Ordering::SeqCst)
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
    log_line(
        &format!(
            "Fruitcraft launcher v0.1.08b (rust) starting; root={}",
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

    // ---- 2) determine the runtime layout (NON-DESTRUCTIVE) ----
    // (a) If the app root already holds the whole game (flat layout from a
    //     previous run), no sync is needed at all - the user may safely
    //     delete the data/ folder after the first run.
    let root_lu = count_lu(&root);
    let root_complete = root.join("main.lua").is_file()
        && root.join("main.lu").is_file()
        && root_lu >= 100;
    log_line(
        &format!(
            "root runtime check: main.lua={} main.lu={} root .lu count={} (complete={})",
            root.join("main.lua").is_file(),
            root.join("main.lu").is_file(),
            root_lu,
            root_complete
        ),
        &root,
    );

    let mut data_dir: Option<PathBuf> = None;
    let mut sync_needed = false;

    if !root_complete {
        let mut cands: Vec<PathBuf> = vec![root.join("data")];
        if let Some(par) = root.parent() {
            cands.push(par.join("data"));
        }
        for cand in &cands {
            if cand.is_dir() {
                if let Some(d) = resolve_data_dir(cand) {
                    data_dir = Some(d);
                    sync_needed = true;
                    break;
                }
            }
        }
        if data_dir.is_none() {
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
                        data_dir = Some(d);
                        sync_needed = true;
                        // Remember the location via junction - but NEVER
                        // point the junction back into the app root itself
                        // (that is what wiped game files in v0.1.05b).
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
            if data_dir.is_none() {
                return;
            }
        }
        if let Some(ref dd) = data_dir {
            log_line(&format!("data dir = {}", dd.display()), &root);
        }
    }

    // ---- 3) integrity gate: original bytecode must be present, or we stop ----
    let (lu, where_lu) = match &data_dir {
        Some(dd) => (count_lu(dd), format!("data dir ({})", dd.display())),
        None => (root_lu, "app root".to_string()),
    };
    log_line(
        &format!("bytecode modules (.lu) in {}: {} (expected 363)", where_lu, lu),
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

    // ---- 4) sync data into the app root (merge: copy missing/changed files, delete nothing) ----
    if sync_needed {
        set_status(PREP);
        let dd = data_dir.as_ref().unwrap();
        let total = count_files(dd) as i32;
        COPY_TOTAL.store(total, Ordering::SeqCst);
        COPY_DONE.store(0, Ordering::SeqCst);
        PCT.store(0, Ordering::SeqCst);
        copy_tree(dd, &root);
        log_line(
            &format!(
                "sync done: {} files processed (missing or changed files copied, nothing deleted)",
                COPY_DONE.load(Ordering::SeqCst)
            ),
            &root,
        );
        let lu2 = count_lu(&root);
        log_line(&format!("root .lu count after sync: {}", lu2), &root);
        if lu2 < 100 {
            msgbox(
                "Could not prepare the game files in this folder (still not enough .lu modules after sync).\nTry a different folder (e.g. Documents) with enough free space.",
                "Fruitcraft",
                MB_ICONERROR,
            );
            return;
        }
    } else {
        log_line("root runtime already complete - no sync performed", &root);
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
    let profile = pick_profile();
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

    // ---- 6) launch the engine ----
    set_status(READY);
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
    let cwd_w = wide(&root.to_string_lossy());

    // Pass the bootstrap entry point as an argument so the engine loads
    // it directly instead of popping a file picker. The shell accepts the
    // main-file path as its first argument.
    let main_lua = root.join("main.lua");
    let main_lua_s = main_lua.to_string_lossy().to_string();
    let cmdline = if main_lua.is_file() {
        format!("\"{}\" \"{}\"", engine_path.to_string_lossy(), main_lua_s)
    } else {
        format!("\"{}\"", engine_path.to_string_lossy())
    };
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
