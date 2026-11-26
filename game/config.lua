-- ============================================================
--  Fruitcraft - PC bootstrap (config)
--  Loads the original game config.lua from the game data.
--  Skips itself (this bootstrap file is also named config.lua).
-- ============================================================
local selfSrc = (debug.getinfo(1, "S") or {}).source or ""
selfSrc = selfSrc:match("^@(.*)$") or ""

local roots = {}
if system and system.ResourceDirectory then
  roots[#roots + 1] = system.ResourceDirectory
end
local d = selfSrc:match("^(.*)[/\\]")
if d and #d > 2 then roots[#roots + 1] = d end
roots[#roots + 1] = "."

local found = nil
for _, r in ipairs(roots) do
  for _, s in ipairs({ "data", "data/gamefiles", "" }) do
    local p = r .. "/" .. (s ~= "" and (s .. "/") or "") .. "config.lua"
    if p:lower() ~= selfSrc:lower() then
      local f = io.open(p, "r")
      if f then
        f:close()
        found = p
        break
      end
    end
  end
  if found then break end
end

if found then
  local ok, err = pcall(dofile, found)
  if not ok then
    pcall(function()
      native.showAlert("Fruitcraft",
        "Error loading config.lua:\n" .. tostring(err), "OK")
    end)
  end
end
