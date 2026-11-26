-- ============================================================
--  Fruitcraft PC defensive stub: Scenes.TraineesOverlay
--
--  Not present in the official resource.car. It is only ever
--  referenced as a data string (a message/overlay name) and is
--  never loaded in the shipped production build. This stub
--  returns a minimal, inert Solar2D-style scene so that, if the
--  overlay manager were ever asked to show it, it degrades
--  gracefully to an empty overlay instead of a load error.
--  Pure Lua 5.1, no side effects, self-guarding.
-- ============================================================
local scene = {}
scene.name = "TraineesOverlay"

-- Content group is created lazily and only when display exists.
scene.contentGroup = nil

local function ensureGroup(self)
  if self.contentGroup == nil then
    self.contentGroup = (display and display.newGroup) and display.newGroup() or {}
  end
  return self.contentGroup
end

function scene.create()
  ensureGroup(self)
  return self
end

function scene.show()
  ensureGroup(self)
  return self
end

function scene.hide()
  return self
end

function scene.destroy()
  self.contentGroup = nil
  return self
end

return scene
