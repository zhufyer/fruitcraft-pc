-- ============================================================
--  Fruitcraft - PC bootstrap (entry point)
--  Works with every layout:
--    1) everything at the app root  (after the launcher synced)
--    2) data/ next to the exe       (fresh zip)
--    3) data/gamefiles/             (legacy zip)
-- ============================================================
local roots = {}
if system and system.ResourceDirectory then
  roots[#roots + 1] = system.ResourceDirectory
end
local src = (debug.getinfo(1, "S") or {}).source or ""
src = src:match("^@(.*)$") or ""
local d = src:match("^(.*)[/\\]")
if d and #d > 2 then roots[#roots + 1] = d end
roots[#roots + 1] = "."

local subs = { "", "data", "data/gamefiles" }
local parts = {}
for _, r in ipairs(roots) do
  for _, s in ipairs(subs) do
    parts[#parts + 1] = r .. "/" .. (s ~= "" and (s .. "/") or "") .. "?.lua"
  end
end
package.path = table.concat(parts, ";") .. ";" .. package.path

local ok, err = pcall(require, "FCMain")
if not ok then
  pcall(function()
    native.showAlert(
      "Fruitcraft",
      "Game data not found (FCMain.lua is missing).\n\n" ..
      "Keep the whole folder together and run Fruitcraft.exe,\n" ..
      "or run FruitcraftEngine.exe and select this main.lua file.\n\n" ..
      tostring(err),
      "OK")
  end)
  os.exit(1)
end
