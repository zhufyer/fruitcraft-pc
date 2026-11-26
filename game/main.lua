-- ============================================================
--  Fruit Craft PC - bootstrap entry point
--  The real game entry is data/FCMain.lua
-- ============================================================
local root = (system and system.ResourceDirectory) or "."
package.path = root .. "/data/?.lua;" .. package.path
require("FCMain")
