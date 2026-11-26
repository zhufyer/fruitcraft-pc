-- Fruitcraft desktop content settings (landscape, 960x640)
-- NOTE: no "orientation" entry is used on purpose. If build.settings sets an
-- orientation, the desktop shell picks a portrait device profile and the game
-- window comes up rotated/square. Leaving it out makes the window follow this
-- content size, which is what the game's own portrait-era layout expects when
-- it is turned 90 degrees.
application = {
  content = {
    width = 960,
    height = 640,
    scale = "letterbox",
    fps = 60,
    imageSuffix = { ["@2x"] = 1.5, ["@3x"] = 2.5 },
  },
}
