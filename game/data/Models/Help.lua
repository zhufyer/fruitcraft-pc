-- ============================================================
--  Fruitcraft PC defensive stub: Models.Help
--
--  The official resource.car (all 362 original modules) does not
--  contain Models.Help. Its only consumer, Data.PopupHelpContent,
--  is dead code in the shipped game (nothing requires it), so this
--  module is never loaded on Android either. This stub keeps the
--  require graph complete so no path can ever fail to resolve.
--  Pure Lua 5.1, no side effects.
-- ============================================================
local Help = {}
Help.__index = Help

function Help.new(cls, opts)
  opts = opts or {}
  return setmetatable({
    id = opts.id or 0,
    name = opts.name or "",
    description = opts.description or "",
  }, cls)
end

return Help
