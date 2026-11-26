-- ============================================================
--  Safe no-op stub for the native mobile plugin "plugin.admob"
--  (desktop build: the native Android/iOS plugin is not present)
-- ============================================================
local M = {{}}
setmetatable(M, {{ __index = function(_, k)
  if type(k) == "string" then
    return function() end
  end
end }})
return M
