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
    local data = f:read("a")
    f:close()
    local fn, err = load(data)
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

-- Run the original config chunk (SDK settings), like the SDK does
pcall(function()
  local f = io.open(root .. "/config.lu", "rb")
  if f then
    local data = f:read("a")
    f:close()
    local fn = load(data)
    if fn then
      fn()
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
local mdata = mf:read("a")
mf:close()
local mfn, merr = load(mdata)
if not mfn then
  pcall(function()
    native.showAlert("Fruitcraft",
      "Cannot load the original game bytecode (main.lu):\n" .. tostring(merr), "OK")
  end)
  os.exit(1)
end
mfn()
