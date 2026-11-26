-- ============================================================
--  Fruitcraft PC defensive stub: Components.TDLookUpView
--
--  Not present in the official resource.car. It is only required
--  behind the `coachTest` debug flag in Scenes.TutorialStartScene,
--  which is false in production, so the original Android build
--  never loads it either. This stub (new(cls, opts) class contract,
--  matching the decompiled call site) keeps the require graph
--  complete. Pure Lua 5.1, no side effects.
-- ============================================================
local TDLookUpView = {}
TDLookUpView.__index = TDLookUpView

function TDLookUpView.new(cls, opts)
  opts = opts or {}
  local v = {
    trainerName = opts.trainerName or "",
    trainerTribeName = opts.trainerTribeName or "",
    tutorialCallback = opts.tutorialCallback or function() end,
    x = 0,
    y = 0,
  }
  return setmetatable(v, cls)
end

return TDLookUpView
