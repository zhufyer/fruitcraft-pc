// ============================================================
//  Fruitcraft.exe - Fruitcraft PC launcher (v0.1.06b, Rust)
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

// Delete a file, a junction (reparse point), or a real directory tree.
fn delete_entry(path: &Path) {
    let a = unsafe { GetFileAttributesW(wide(&path.to_string_lossy()).as_ptr()) };
    if a == INVALID_FILE_ATTRIBUTES {
        return;
    }
    let is_dir = a & FILE_ATTRIBUTE_DIRECTORY != 0;
    let is_reparse = a & FILE_ATTRIBUTE_REPARSE_POINT != 0;
    if is_dir && !is_reparse {
        if let Ok(rd) = fs::read_dir(path) {
            for e in rd.flatten() {
                delete_entry(&e.path());
            }
        }
        let _ = unsafe { RemoveDirectoryW(wide(&path.to_string_lossy()).as_ptr()) };
    } else {
        // files and junctions: DeleteFileW removes the junction itself, not the target
        let _ = unsafe { DeleteFileW(wide(&path.to_string_lossy()).as_ptr()) };
    }
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
                let same = match (fs::canonicalize(&p), fs::canonicalize(&d)) {
                    (Ok(a), Ok(b)) => a == b,
                    _ => false,
                };
                if !same {
                    if fs::copy(&p, &d).is_ok() {
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
            "Fruitcraft launcher v0.1.06b (rust) starting; root={}",
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

    // ---- 2) find + validate the data folder ----
    let mut data_dir: Option<PathBuf> = None;
    let mut cands: Vec<PathBuf> = vec![root.join("data")];
    if let Some(par) = root.parent() {
        cands.push(par.join("data"));
    }
    for cand in &cands {
        if cand.is_dir() {
            if let Some(d) = resolve_data_dir(cand) {
                data_dir = Some(d);
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
                    let target = root.join("data");
                    if !target.exists() {
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
    let data_dir = data_dir.unwrap();
    log_line(&format!("data dir = {}", data_dir.display()), &root);

    // ---- 3) integrity check: original bytecode modules ----
    let lu = count_lu(&data_dir);
    log_line(
        &format!("bytecode modules (.lu) in data: {} (expected 363)", lu),
        &root,
    );
    if lu < 100 {
        msgbox(
            "Game data looks incomplete (too few .lu modules).\nRe-extract the release zip and try again.",
            "Fruitcraft",
            MB_ICONWARNING,
        );
    }

    // ---- 4) prepare the app root: clean stale, then copy real files ----
    set_status(PREP);
    let total = count_files(&data_dir) as i32;
    COPY_TOTAL.store(total, Ordering::SeqCst);
    COPY_DONE.store(0, Ordering::SeqCst);
    PCT.store(0, Ordering::SeqCst);

    if let Ok(rd) = fs::read_dir(&data_dir) {
        for e in rd.flatten() {
            let name = e.file_name();
            let ns = name.to_string_lossy().to_string();
            if ns.eq_ignore_ascii_case("data") {
                continue; // never touch the source folder itself
            }
            let target = root.join(&name);
            if target.exists() || target.symlink_metadata().is_ok() {
                log_line(&format!("clean stale root entry: {}", ns), &root);
                delete_entry(&target);
            }
        }
    }

    copy_tree(&data_dir, &root);
    log_line(
        &format!(
            "copy done: {} files synced into app root",
            COPY_DONE.load(Ordering::SeqCst)
        ),
        &root,
    );

    // ---- 5) launch the engine ----
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
            std::ptr::null_mut(),
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
