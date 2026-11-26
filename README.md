# Fruitcraft PC

Windows (portable) build of **Fruitcraft** v1.10.10760, rebuilt from the official
APK (MD5 `37780547e4172a1905a5abbfcdea0f04`) on the official open-source
**Solar2D / Corona SDK** Windows runtime (2026.3738).

> Personal, non-commercial port for testing. The game and all its content are
> © TOD Studio — see [NOTICE.md](NOTICE.md).

## Run

Download the release zip → extract → double-click `game/Fruitcraft.exe`.

The launcher (game icon) links `data/` into the app root (junctions/hardlinks,
no copies) and starts `FruitcraftEngine.exe` maximized. If `data/` is not found
it offers a folder-picker. Fallback: run `FruitcraftEngine.exe` manually and
select `main.lua`.

## Layout

```
game/
├── Fruitcraft.exe          launcher (native Win32, source in launcher/)
├── FruitcraftEngine.exe    Solar2D Windows shell (Corona.Shell.exe)
├── 7za.exe, *.dll          engine runtime dependencies
├── fruitcraft.ico          official game icon
├── main.lua / config.lua   bootstrap (redirect to data/)
├── build.settings          window: landscape, content scale auto
└── data/                   all game data
    ├── FCMain.lua          real entry point (362 Lua modules, untouched)
    ├── plugin/             safe no-op stubs (ads / analytics / IAP)
    ├── resource.car        original compiled bytecode (reference)
    └── assets…             Assets-SD, fonts (FA/EN), spine, Json, …
```

## What was rebuilt (this project)

| Part | Where |
|---|---|
| Win32 launcher (C, no payload, robust path handling) | `launcher/FruitcraftLauncher.c` |
| Bootstrap `main.lua` / `config.lua` / `build.settings` | `game/` root |
| Native-plugin stubs (gameanalytics_v2, notifications.v2, appsflyer) | `game/data/plugin/` |
| Window-title patch for desktop | `game/data/FCMain.lua` (last lines) |
| Icon build (16–256 px multi-size) | `game/fruitcraft.ico` |

The **game logic itself is the developers' original Lua**, unmodified, running
on the **official engine** — the same stack the developer ships on Windows.

## Notes

- Ads / in-app purchase / analytics are auto-disabled (they only load on
  Android/iOS) plus safe stubs.
- Online features (battle / leaderboard / tribe) need internet.
- If the game window comes up small: use the launcher (maximized) or
  maximize manually.

## Releases

Each release carries the ready-to-run zip (`fruitcraft-vX.Y.Z.zip`).
