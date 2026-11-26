# Changelog

Versioning: every bug fix ships as a new numbered release + zip asset.

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
