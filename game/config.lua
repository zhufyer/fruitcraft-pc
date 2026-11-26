-- ============================================================
--  Fruit Craft PC - bootstrap config
--  Loads the real game config from data/config.lua
-- ============================================================
local root = (system and system.ResourceDirectory) or "."
package.path = root .. "/data/?.lua;" .. package.path
dofile(root .. "/data/config.lua")
