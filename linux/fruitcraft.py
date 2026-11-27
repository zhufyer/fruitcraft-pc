#!/usr/bin/env python3
# ============================================================
#  Fruitcraft - PC launcher for Linux
#
#  Mirrors the Windows launcher (fc-launcher/src/main.rs):
#    * profile picker with 4 profiles, drawn with the game's own art
#    * start (شروع) / create profile (ساخت پروفایل) / name edit / quit
#    * runs the game through Wine (Solar2D 2026 runtime in game/engine)
#    * per-profile data under ~/.local/share/Fruitcraft/profiles/pN
#
#  Only Python 3 + Tkinter + Pillow are needed (both ship with every
#  mainstream desktop distribution).
# ============================================================
import os
import re
import shutil
import subprocess
import sys
import time
import tkinter as tk
from tkinter import font as tkfont

try:
    from PIL import Image, ImageDraw, ImageTk, ImageFilter
except Exception:  # pragma: no cover
    sys.stderr.write("Pillow (python3-pil) is required: sudo apt install python3-pil\n")
    raise

APP = "Fruitcraft"
HERE = os.path.dirname(os.path.abspath(__file__))
GAME = os.path.join(HERE, "game")
ENGINE_DIR = os.path.join(GAME, "engine")
DATA = os.path.join(GAME, "data")
MAIN_LUA = os.path.join(DATA, "main.lua")
ASSETS = os.path.join(HERE, "assets")
LABELS = os.path.join(HERE, "launcher", "labels")
LOG = os.path.join(HERE, "fruitcraft.log")

XDG_DATA = os.environ.get("XDG_DATA_HOME") or os.path.expanduser("~/.local/share")
PROFILES = os.path.join(XDG_DATA, APP, "profiles")

W, H = 900, 560
CARD_W, CARD_H, CARD_Y, CARD_GAP = 190, 172, 168, 20
BTN_H, BTN_Y = 54, 372

COL_BG = (22, 30, 40)
COL_CARD = (38, 52, 66)
COL_CARD_SEL = (46, 74, 104)
COL_EDGE = (255, 200, 90)
COL_BTN = (58, 160, 92)
COL_BTN_CREATE = (52, 122, 190)
COL_BTN_QUIT = (190, 74, 62)


def log(msg):
    line = "[%d] %s" % (int(time.time()), msg)
    try:
        with open(LOG, "a") as f:
            f.write(line + "\n")
    except Exception:
        pass
    print(line, flush=True)


# ---------------------------------------------------------------- assets
def load_png(path):
    return Image.open(path).convert("RGBA")


def rounded_card(w, h, fill, outline=None, radius=18, alpha=225):
    im = Image.new("RGBA", (w, h), (0, 0, 0, 0))
    d = ImageDraw.Draw(im)
    d.rounded_rectangle([0, 0, w - 1, h - 1], radius=radius, fill=fill + (alpha,),
                        outline=(outline + (255,)) if outline else None,
                        width=3 if outline else 0)
    return im


def rounded_btn(w, h, fill, alpha=235, radius=14):
    im = Image.new("RGBA", (w, h), (0, 0, 0, 0))
    d = ImageDraw.Draw(im)
    d.rounded_rectangle([0, 0, w - 1, h - 1], radius=radius, fill=fill + (alpha,))
    # subtle top highlight so the buttons do not look flat
    d.rounded_rectangle([3, 3, w - 4, h // 2], radius=radius - 3, fill=(255, 255, 255, 26))
    return im


def label(name):
    path = os.path.join(LABELS, name + ".png")
    return load_png(path)


# ---------------------------------------------------------------- state
def profile_dir(n):
    return os.path.join(PROFILES, "p%d" % n)


def profile_name(n):
    path = os.path.join(profile_dir(n), "profile.txt")
    try:
        with open(path, encoding="utf-8") as f:
            return f.read().strip()
    except Exception:
        return ""


def save_profile_name(n, name):
    os.makedirs(profile_dir(n), exist_ok=True)
    with open(os.path.join(profile_dir(n), "profile.txt"), "w", encoding="utf-8") as f:
        f.write(name)


def last_profile():
    try:
        with open(os.path.join(PROFILES, "last.txt")) as f:
            n = int(f.read().strip())
            if 1 <= n <= 4:
                return n
    except Exception:
        pass
    return 1


def remember_profile(n):
    os.makedirs(PROFILES, exist_ok=True)
    with open(os.path.join(PROFILES, "last.txt"), "w") as f:
        f.write(str(n))


# ---------------------------------------------------------------- wine
def which(*names):
    for n in names:
        p = shutil.which(n)
        if p:
            return p
    return None


def wine_cmd():
    """Return the Wine launcher command (list) or None."""
    for candidate in ("wine64", "wine", "wine-stable", "wine-development"):
        p = which(candidate)
        if p:
            return [p]
    for p in ("/usr/lib/wine/wine64", "/opt/wine-stable/bin/wine64",
              os.path.expanduser("~/.local/share/wine/bin/wine64")):
        if os.path.exists(p):
            return [p]
    return None


def win_path(p):
    """Absolute POSIX path -> Wine Z: path."""
    return "Z:" + os.path.abspath(p).replace("/", "\\")


# ---------------------------------------------------------------- launcher UI
class Launcher(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title(APP)
        self.configure(bg="#%02x%02x%02x" % COL_BG)
        self.resizable(False, False)
        self.selected = last_profile()
        self.game_proc = None
        self.status = ""

        os.makedirs(PROFILES, exist_ok=True)
        for n in range(1, 5):
            os.makedirs(profile_dir(n), exist_ok=True)

        self.canvas = tk.Canvas(self, width=W, height=H, highlightthickness=0,
                                bg="#%02x%02x%02x" % COL_BG)
        self.canvas.pack()
        self._images = {}          # keep references alive
        self._hit = []             # (x1,y1,x2,y2,callback)
        self._build_background()
        self._build_widgets()
        self._bind_keys()

        self.protocol("WM_DELETE_WINDOW", self.quit_app)
        log("launcher window shown (linux)")

    # -- background ---------------------------------------------------
    def _build_background(self):
        bgp = os.path.join(ASSETS, "bg.png")
        if os.path.exists(bgp):
            bg = load_png(bgp).resize((W, H), Image.LANCZOS)
            # darken + slight blur so the UI stays readable on top of the art
            dark = Image.new("RGBA", (W, H), (10, 16, 24, 165))
            bg = Image.alpha_composite(bg, dark)
        else:
            bg = Image.new("RGBA", (W, H), COL_BG + (255,))
        self.bg_img = ImageTk.PhotoImage(bg)
        self._images["bg"] = self.bg_img
        self.canvas.create_image(0, 0, anchor="nw", image=self.bg_img)

        logop = os.path.join(ASSETS, "logo.png")
        if os.path.exists(logop):
            logo = load_png(logop)
            self.logo_img = ImageTk.PhotoImage(logo)
            self._images["logo"] = self.logo_img
            # right-aligned (RTL layout)
            self.canvas.create_image(W - 30, 22, anchor="ne", image=self.logo_img)

        # RTL: the title sits under the logo, right-aligned
        self._img_at(label("title"), W - 34, 118, anchor="e")

    def _img_at(self, img, x, y, anchor="center", key=None):
        ph = ImageTk.PhotoImage(img)
        self._images[key or id(ph)] = ph
        return self.canvas.create_image(x, y, anchor=anchor, image=ph)

    # -- widgets ------------------------------------------------------
    def _build_widgets(self):
        self.cards = []
        # RTL: profile 1 is the right-most card
        for i in range(4):
            n = i + 1
            cx = W - 60 - i * (CARD_W + CARD_GAP) - CARD_W
            sel = (n == self.selected)
            card = rounded_card(CARD_W, CARD_H, COL_CARD_SEL if sel else COL_CARD,
                                COL_EDGE if sel else None)
            ph = ImageTk.PhotoImage(card)
            self._images["card%d" % n] = ph
            item = self.canvas.create_image(cx, CARD_Y, anchor="nw", image=ph)
            img = self._img_at(label("card%d" % n), cx + CARD_W // 2, CARD_Y + 18, "n")
            name = profile_name(n)
            sub = self.canvas.create_text(cx + CARD_W // 2, CARD_Y + 62,
                                          text=name if name else "",
                                          fill="#ffffff", font=("DejaVu Sans", 15))
            if not name:
                img2 = self._img_at(label("empty"), cx + CARD_W // 2, CARD_Y + 62, "n")
                sub = img2
            self.cards.append({"n": n, "x": cx, "item": item, "name_item": sub})
            self._hit.append((cx, CARD_Y, cx + CARD_W, CARD_Y + CARD_H,
                              lambda n=n: self.select(n)))

        # buttons: start (right), create (middle), quit (left)
        bw = 210
        self.btn_start = self._button(W - 40 - bw, BTN_Y, bw, COL_BTN, label("start"), self.start_game)
        self.btn_create = self._button(W - 40 - 2 * bw - 20, BTN_Y, bw, COL_BTN_CREATE,
                                      label("create"), self.create_profile)
        self.btn_quit = self._button(W - 40 - 3 * bw - 40, BTN_Y, bw, COL_BTN_QUIT,
                                    label("quit"), self.quit_app)

        # name row (RTL: label on the right, entry to its left)
        name_y = BTN_Y + BTN_H + 34
        self._img_at(label("namelabel"), W - 70, name_y, "e")
        entry_w = 330
        entry_x = W - 70 - 52 - entry_w
        self.name_var = tk.StringVar(value=profile_name(self.selected))
        self.entry = tk.Entry(self, textvariable=self.name_var, justify="right",
                              bg="#ffffff", fg="#101820", relief="flat",
                              font=("DejaVu Sans", 14), insertbackground="#101820")
        self.entry.place(x=entry_x, y=name_y - 14, width=entry_w, height=28)
        self.entry.bind("<Return>", lambda e: self.start_game())
        self._hit.append((entry_x, name_y - 14, entry_x + entry_w, name_y + 14,
                          lambda: self.entry.focus_set()))

        hint = label("hint")
        self._img_at(hint, W // 2, H - 26, "center")

    def _button(self, x, y, w, color, img, cmd):
        bg = rounded_btn(w, BTN_H, color)
        ph = ImageTk.PhotoImage(bg)
        key = "btn%d" % id(ph)
        self._images[key] = ph
        self.canvas.create_image(x, y, anchor="nw", image=ph)
        self._img_at(img, x + w // 2, y + BTN_H // 2, "center")
        self._hit.append((x, y, x + w, y + BTN_H, cmd))
        return (x, y, w)

    def _bind_keys(self):
        self.canvas.bind("<Button-1>", self._on_click)
        self.bind("<Left>", lambda e: self.select(self.selected - 1 if self.selected > 1 else 4))
        self.bind("<Right>", lambda e: self.select(self.selected + 1 if self.selected < 4 else 1))
        self.bind("<Return>", lambda e: self.start_game())
        self.bind("<Escape>", lambda e: self.quit_app())

    def _on_click(self, ev):
        for (x1, y1, x2, y2, cb) in reversed(self._hit):
            if x1 <= ev.x <= x2 and y1 <= ev.y <= y2:
                cb()
                return

    # -- actions ------------------------------------------------------
    def select(self, n):
        if not 1 <= n <= 4:
            return
        self.selected = n
        for c in self.cards:
            sel = (c["n"] == n)
            card = rounded_card(CARD_W, CARD_H, COL_CARD_SEL if sel else COL_CARD,
                                COL_EDGE if sel else None)
            ph = ImageTk.PhotoImage(card)
            self._images["card%d" % c["n"]] = ph
            self.canvas.itemconfigure(c["item"], image=ph)
        self.name_var.set(profile_name(n))
        log("profile %d selected" % n)

    def create_profile(self):
        name = self.name_var.get().strip() or ("Player %d" % self.selected)
        save_profile_name(self.selected, name)
        log("profile %d saved as %r" % (self.selected, name))
        self.select(self.selected)

    def start_game(self):
        name = self.name_var.get().strip()
        if name:
            save_profile_name(self.selected, name)
        remember_profile(self.selected)
        if not os.path.exists(MAIN_LUA):
            self._fatal("game/data/main.lua is missing - extract the whole folder.")
            return
        wine = wine_cmd()
        if not wine:
            self._fatal("Wine was not found. Install it, then run this launcher again.")
            return
        engine = os.path.join(ENGINE_DIR, "Corona.Shell.exe")
        if not os.path.exists(engine):
            self._fatal("game/engine/Corona.Shell.exe is missing - extract the whole folder.")
            return

        env = dict(os.environ)
        env.setdefault("WINEDEBUG", "-all")
        # Mono/Gecko are not needed by the game, and their installer dialog
        # would block start-up on a fresh Wine prefix.
        env["WINEDLLOVERRIDES"] = "mscoree,mshtml="
        # keep each profile's Wine data separate
        prefix = os.path.join(profile_dir(self.selected), "wineprefix")
        env["WINEPREFIX"] = prefix

        if not os.path.isdir(os.path.join(prefix, "drive_c")):
            self._set_busy(True, "preparing")
            log("creating wine prefix (first run): %s" % prefix)
            try:
                subprocess.run(wine + ["wineboot", "-i"], env=env,
                               stdout=subprocess.DEVNULL,
                               stderr=subprocess.DEVNULL, timeout=900)
            except Exception as exc:
                log("wineboot warning: %s" % exc)
            log("wine prefix ready")

        cmd = wine + [engine, win_path(MAIN_LUA)]
        log("engine: %s" % engine)
        log("engine command line: %s" % " ".join(cmd))
        try:
            self.game_proc = subprocess.Popen(cmd, cwd=ENGINE_DIR, env=env,
                                              stdout=subprocess.DEVNULL,
                                              stderr=subprocess.DEVNULL,
                                              start_new_session=True)
        except Exception as exc:
            self._fatal("Could not start the game: %s" % exc)
            return
        log("engine launched, pid=%d" % self.game_proc.pid)
        self._set_busy(True)
        self._title_fix()
        self.after(1200, self._watch_game)

    def _title_fix(self, tries=0):
        """Rename the engine window from 'Corona Shell' to 'Fruitcraft'."""
        if self.game_proc is None or self.game_proc.poll() is not None or tries > 40:
            return
        xdo = shutil.which("xdotool")
        if xdo:
            try:
                out = subprocess.run([xdo, "search", "--name", "Corona Shell"],
                                     capture_output=True, text=True, timeout=5).stdout.split()
                for wid in out:
                    subprocess.run([xdo, "set_window", "--name", "Fruitcraft", wid],
                                   timeout=5)
                if out:
                    log("engine window renamed (wid %s)" % ",".join(out))
                    return
            except Exception:
                pass
        self.after(1500, lambda: self._title_fix(tries + 1))

    def _watch_game(self):
        if self.game_proc is None:
            return
        if self.game_proc.poll() is None:
            self.after(1500, self._watch_game)
        else:
            log("engine exited, code=%s" % self.game_proc.returncode)
            self.game_proc = None
            self._set_busy(False)

    def _set_busy(self, busy, what="game"):
        self.busy = busy
        if getattr(self, "_status_img", None):
            self.canvas.delete(self._status_img)
            self._status_img = None
        if busy:
            name = "status_prep" if what == "preparing" else "status_game"
            self._status_img = self._img_at(label(name), W // 2, BTN_Y + BTN_H + 78)

    def _fatal(self, msg):
        log("ERROR: " + msg)
        from tkinter import messagebox
        messagebox.showerror(APP, msg)

    def quit_app(self):
        if self.game_proc and self.game_proc.poll() is None:
            log("launcher closing, game still running (leaving it up)")
        log("launcher exit")
        self.destroy()


def main():
    os.makedirs(PROFILES, exist_ok=True)
    log("=== Fruitcraft linux launcher start (python %s) ===" % sys.version.split()[0])
    log("game dir = %s" % GAME)
    if not os.path.isdir(DATA):
        sys.stderr.write("game/data not found next to the launcher\n")
        return 2
    app = Launcher()
    app.mainloop()
    return 0


if __name__ == "__main__":
    sys.exit(main())
