print(string.format("PROBE content %s x %s actual %s x %s pixel %s x %s", display.contentWidth, display.contentHeight, display.actualContentWidth, display.actualContentHeight, display.pixelWidth, display.pixelHeight))
-- ============================================================
--  Fruitcraft - PC bootstrap (entry point, pure Lua 5.1)
--
--  Runs the ORIGINAL game bytecode (.lu chunks extracted from
--  the official resource.car) on the official Solar2D engine.
--  No decompiled source is executed - zero decompiler bugs.
--
--  Works with every layout:
--    * after the launcher synced data/* into the app root
--    * picked manually as data/main.lua
-- ============================================================

local function maindir()
  local info = debug.getinfo(1, "S") or {}
  local src = info.source or ""
  src = src:match("^@(.*)$") or ""
  local d = src:match("^(.*)[/\\]")
  if d and #d > 2 then
    return d
  end
  return "."
end

local root = maindir()

-- Loaders for the original bytecode chunks (car file names use dots,
-- so "Scenes.Loading" -> "Scenes.Loading.lu"; also try slash form).
local loaders = package.loaders or package.searchers
local function lu_loader(name)
  local f = io.open(root .. "/" .. name .. ".lu", "rb")
  if not f then
    f = io.open(root .. "/" .. (name:gsub("%.", "/")) .. ".lu", "rb")
  end
  if not f then
    -- .lua fallback (plugin stubs, Assets-SD sprite definitions)
    f = io.open(root .. "/" .. (name:gsub("%.", "/")) .. ".lua", "rb")
  end
  if f then
    local data = f:read("*a")
    f:close()
    local fn, err = (loadstring or load)(data)
    if fn then
      return fn
    end
    return error("bad lua chunk for '" .. name .. "': " .. tostring(err))
  end
end
table.insert(loaders, 1, lu_loader)

-- Proper window title (no-op on other platforms)
pcall(function()
  if native and native.setWindowTitle then
    native.setWindowTitle("Fruitcraft")
  end
end)

-- Force the desktop window to maximized (landscape per build.settings)
pcall(function()
  if native and native.setProperty then
    native.setProperty("windowMode", "maximized")
  end
end)

-- Execute the archive's own config chunk, but keep the desktop window
-- landscape: config.lu recomputes `application.content` from the device
-- (portrait 320x480 for a phone short-name) - harmless on desktop, but it also
-- defines the globals the game needs (_mainLang, _profanityList, _isMyCountry,
-- _serverType, _storeType, application.metadata ...). Since it runs AFTER
-- config.lua, the content block is re-applied here for the desktop window.
do
  local cf = io.open(root .. "/config.lu", "rb")
  if cf then
    local cdata = cf:read("*a")
    cf:close()
    local cfn = (loadstring or load)(cdata)
    if cfn then
      pcall(function() setfenv(cfn, _G) end)
      _G._fc_orig_config = cfn
    end
  end
end
if _G._fc_orig_config then pcall(_G._fc_orig_config) end
-- The archive decides its language from the OS timezone (+0330 -> Persian).
-- A Windows PC set to any other region would silently start in English, so the
-- game's own Persian data set is selected explicitly here.
_G._isMyCountry = true
_G._mainLang = "fa"
_G._ignoresDeviceLang = true
do
  application = application or {}
  application.content = {
    width = 960, height = 640, scale = "letterbox", fps = 60,
    xAlign = "center", yAlign = "center",
    imageSuffix = { ["@2x"] = 1.5, ["@3x"] = 2.5 },
    antialias = true,
  }
end

-- Desktop (Solar2D 2026) preloads: the archive ships its plugins as .lu
-- inside plugin/ - register them under the names the game requires.
pcall(function()
  local names = {
    "admob", "appsflyer", "pasteboard", "gameanalytics_v2",
    "notifications_v2",
  }
  for _, n in ipairs(names) do
    local mod = "plugin_" .. n
    if package.loaded[mod] == nil then
      local tries = { root .. "/plugin_" .. n .. ".lua",
                      root .. "/Plugins/plugin_" .. n .. ".lua" }
      for _, path in ipairs(tries) do
        local f = io.open(path, "rb")
        if f then
          local data = f:read("*a")
          f:close()
          local fn = (loadstring or load)(data)
          if fn then
            package.preload[mod] = fn
            package.loaded[mod] = fn()
          end
          break
        end
      end
    end
  end
end)

-- Run the original main chunk
local mf = io.open(root .. "/main.lu", "rb")
if not mf then
  pcall(function()
    native.showAlert("Fruitcraft",
      "main.lu not found.\nKeep the whole folder together and run " ..
      "Fruitcraft.exe (the launcher).\n\nLooked in: " .. root, "OK")
  end)
  os.exit(1)
end
local mdata = mf:read("*a")
mf:close()
local mfn, merr = (loadstring or load)(mdata)
if not mfn then
  pcall(function()
    native.showAlert("Fruitcraft",
      "Cannot load the original game bytecode (main.lu):\n" .. tostring(merr), "OK")
  end)
  os.exit(1)
end
pcall(function() setfenv(mfn, _G) end)
mfn()
