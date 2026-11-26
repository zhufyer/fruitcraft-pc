# Changelog

Versioning: every bug fix ships as a new numbered release + zip asset.

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
