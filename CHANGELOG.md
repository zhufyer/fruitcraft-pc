# Changelog

## v0.1.12 - the black window explained and handled

**Root cause of the frozen black window.** The game is an online client: on
start it fetches the player from `https://iran.fruitcraft.ir/player/load`. When
that host cannot be reached, the loading scene never advances - the window
turns black and Windows marks it "Not Responding". Nothing in the game assets
can change that; what the launcher can do is explain it.

* Windows launcher: before starting the engine it performs a real TCP + TLS
  liveness probe against `iran.fruitcraft.ir:443` and, when the server does not
  answer, shows a Persian message ("check the connection / turn the VPN off")
  instead of launching a window that is doomed to hang.
* `data/main.lua`: watches `network.request` for `player/load`; after three
  failures it raises a Persian alert (covers a connection that drops mid-run).
* Windows launcher: the name row is fixed - the edit box stays inside the
  window (`EDIT_W=330`, right aligned) and the "نام:" label sits to its right.
* Launcher alerts use Tahoma with Persian right-to-left text and a Persian
  "باشه" button.
* Engine crash or hung window -> Persian message plus the location of
  `fruitcraft.log` / `fruitcraft-engine.log`, never a silent black window.
* After a session ends the launcher returns to the profile picker.
* Game window is placed with `SetWindowPos` on the desktop work area instead
  of an aggressive maximise.
* The same server precheck landed in the Linux launcher (`fruitcraft.py`).


Versioning: every bug fix ships as a new numbered release + zip asset.

## v0.1.11 — Linux build (tested end-to-end) + Windows window fix

Two assets in this release:
* `fruitcraft-v0.1.11-linux.zip` — native Linux launcher (Python + Tk + Pillow),
  the game itself runs through the system Wine with the same Solar2D 2026 runtime.
* `fruitcraft-v0.1.11-windows.zip` — the Windows build, now with real window sizing.

Linux specifics
* Fixed Persian strings are shaped with HarfBuzz (Pillow + libraqm) at build time
  into PNG labels, so the launcher looks identical regardless of the desktop's
  Arabic shaping support.
* RTL layout identical to the Windows launcher (profile 1 right-most, شروع /
  ساخت پروفایل / خروج, name field to the left of "نام:").
* Each profile gets its own Wine prefix: `~/.local/share/Fruitcraft/profiles/pN`.
* First run of a profile creates the Wine prefix (1–3 min, progress text shown);
  `WINEDLLOVERRIDES=mscoree,mshtml=` suppresses the Wine-Mono install dialog
  that would otherwise block start-up.
* Engine window is renamed from "Corona Shell" to "Fruitcraft" (via xdotool when
  available) and the launcher keeps running until the game exits.
* Verified on Wine 11.22 (staging, wow64) + Mesa llvmpipe on a plain X server:
  launcher → شروع → 960x640 landscape Persian splash → the game's loading scene.
  Persian renders correctly inside Wine without any font configuration.

Windows specifics
* The launcher now maximises the engine window and *checks* that it really grew
  (1288x808 in the test run), instead of assuming.
* If a `winelinux/bin/wine` runtime is bundled, `Fruitcraft.exe` restarts itself
  through it, so the same double-click works on Linux.
* Missing-engine message now points Linux users at the Linux package.


## v0.1.10 — engine migration to Solar2D 2026 (landscape fixed end-to-end)

* Runtime: official Solar2D 2026.3738 `Corona.Shell.exe` + `CoronaLabs.Corona.Native.dll`
  (64-bit, actively maintained) replaces the old Android-era engine that produced the
  "scenegraph start lu" crash. Old engine kept in the package only as fallback.
* Launcher is now engine-aware: prefers `engine/Corona.Shell.exe` (cwd = engine dir),
  falls back to `FruitcraftEngine.exe`, logs the chosen engine and command line.
* Nothing is redirected for the modern runtime (a redirected `%APPDATA%` makes it fault);
  profile junctions + env redirection apply only to the legacy engine.
* Bug fixes proven by real Wine runs:
  - `f:read("a")` (Lua 5.2 syntax) -> `read("*a")`
  - `load(string)` -> `loadstring` (Lua 5.1 engine)
  - plugin stubs written with `{{ }}` (invalid Lua) -> proper `plugin/*.lua` stubs,
    so `require "plugin.notifications.v2"` no longer returns nil (`cancelNotification` crash)
  - `resource.car` removed: the archive carried its own 320x480 SDK config and
    overrode every window setting, forcing a portrait window
  - `config.lu` runs again (defines `_serverType`, `_profanityList`, metadata) and the
    landscape content block is re-applied afterwards
  - game forced to its native Persian data set (`_mainLang = "fa"`)
* Window: `config.lua` 960x640, **no** `orientation` key. With an orientation the desktop
  shell selects a portrait device profile and the window comes up square/rotated.
  Launcher also verifies the window really grew (1288x808 in the test run).
* Tested end-to-end: launcher (RTL picker) -> شروع -> landscape splash with the Persian
  logo -> the game's own loading scene.


## v0.1.03b — 2026-11-26
- **Full launcher rewrite**: pure Win32 recursive copy of `data/*` into the
  app root — real files, no junctions/hardlinks/cmd.exe (antivirus-safe)
- Visible topmost progress window (game icon + percent) while preparing
- Runtime layout after first launch = the flat layout proven to launch
  (engine auto-detects `main.lua` at the app root)
- Guaranteed manual fallback: run `FruitcraftEngine.exe` → select
  `data\main.lua` (self-contained game data folder)
- Data validation accepts `main.lua` / `FCMain.lua` / `gamefiles/` layouts

## v0.1.02b — 2026-11-26
- **Fix "FCMain.lua is missing"**: bootstrap (`main.lua` / `config.lua`) now
  resolves game data from the app root, `data/`, or legacy `data/gamefiles/`
  (works no matter which build was extracted)
- Launcher validates the data folder (requires `FCMain.lua`) and auto-resolves
  legacy layouts instead of accepting an invalid folder
- Clear error dialog when game data is absent (no more raw Lua crash)
- All UI/window titles renamed to **Fruitcraft**

## v0.1.01b — 2026-11-26
- First portable build: `Fruitcraft.exe` launcher (official game icon) +
  official Solar2D 2026.3738 Windows runtime
- Game data in `data/` (362 Lua modules, assets, `resource.car`)
- Ads / IAP / analytics auto-disabled + safe plugin stubs
