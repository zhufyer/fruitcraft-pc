local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "widget"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Constants"
L2_1(L3_1)
L2_1 = require
L3_1 = "Models.Player"
L2_1(L3_1)
L2_1 = nil
L3_1 = nil
L4_1 = nil
L5_1 = nil
L6_1 = nil
L7_1 = nil
L8_1 = nil
L9_1 = nil

function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A2_2 then
    L3_2 = {}
    A2_2 = L3_2
  end
  L3_2 = setmetatable
  L4_2 = A2_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  A0_2.__index = A0_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  A2_2.view = L3_2
  A2_2.achievement = A1_2
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "Shop/FC-shop-card.png"
  L4_2 = L4_2 .. L5_2
  L5_2 = 128
  L6_2 = 185
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A2_2.box = L3_2
  L3_2 = A2_2.box
  L4_2 = A2_2.box
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L3_2.x = L4_2
  L3_2 = A2_2.box
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 * 0.22
  L3_2.y = L4_2
  L3_2 = A2_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A2_2.box
  L3_2(L4_2, L5_2)
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A2_2.view
  L5_2 = A1_2.name
  if not L5_2 then
    L5_2 = " "
  end
  L6_2 = 40
  L7_2 = 0
  L8_2 = Constants
  L8_2 = L8_2.fontForTitle
  L8_2 = L8_2()
  L9_2 = 14
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A2_2.name = L3_2
  L3_2 = A2_2.name
  L3_2.x = 64
  L3_2 = A2_2.name
  L3_2.y = -35
  L3_2 = A2_2.name
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.darkBlueColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = system
  L3_2 = L3_2.getInfo
  L4_2 = "build"
  L3_2 = L3_2(L4_2)
  if "2013.1137" < L3_2 then
    L3_2 = system
    L3_2 = L3_2.getInfo
    L4_2 = "platformName"
    L3_2 = L3_2(L4_2)
    if L3_2 ~= "Android" then
      L3_2 = L1_1
      L3_2 = L3_2.lang
      if L3_2 == "fa" then
        goto lbl_84
      end
    end
  end
  L3_2 = L1_1
  L3_2 = L3_2.lang
  if L3_2 == "ar" then
    ::lbl_84::
    L3_2 = {}
    L4_2 = A2_2.view
    L3_2.parent = L4_2
    L4_2 = A1_2.description
    if not L4_2 then
      L4_2 = " "
    end
    L3_2.text = L4_2
    L3_2.x = 0
    L3_2.y = 0
    L3_2.width = 100
    L3_2.height = 80
    L4_2 = Constants
    L4_2 = L4_2.fontForSubtitle
    L4_2 = L4_2()
    L3_2.font = L4_2
    L3_2.fontSize = 12
    L3_2.align = "right"
    L4_2 = display
    L4_2 = L4_2.newText
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    A2_2.description = L4_2
  else
    L3_2 = display
    L3_2 = L3_2.newText
    L4_2 = A2_2.view
    L5_2 = A1_2.description
    if not L5_2 then
      L5_2 = " "
    end
    L6_2 = 0
    L7_2 = 0
    L8_2 = 100
    L9_2 = 80
    L10_2 = Constants
    L10_2 = L10_2.fontForSubtitle
    L10_2 = L10_2()
    L11_2 = 12
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    A2_2.description = L3_2
  end
  L3_2 = A2_2.description
  L3_2.x = 64
  L3_2 = A2_2.description
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 * 0.42
  L3_2.y = L4_2
  L3_2 = A2_2.description
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.darkBlueColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = A1_2.recieved
  if L3_2 then
    L3_2 = display
    L3_2 = L3_2.newImageRect
    L4_2 = A2_2.view
    L5_2 = Constants
    L5_2 = L5_2.Path_Assets
    L6_2 = A1_2.image
    L5_2 = L5_2 .. L6_2
    L6_2 = A1_2.imageWidth
    L7_2 = A1_2.imageHeight
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    A2_2.image = L3_2
  else
    L3_2 = display
    L3_2 = L3_2.newImageRect
    L4_2 = A2_2.view
    L5_2 = Constants
    L5_2 = L5_2.Path_Assets
    L6_2 = "General/FC-emblem.png"
    L5_2 = L5_2 .. L6_2
    L6_2 = 78
    L7_2 = 94
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    A2_2.image = L3_2
  end
  L3_2 = A2_2.image
  L3_2.x = 64
  L3_2 = A2_2.image
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 * 0.15
  L3_2.y = L4_2
  return A2_2
end

new = L10_1

function L10_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = display
  L2_2 = L2_2.remove
  L3_2 = A0_2.image
  L2_2(L3_2)
  A0_2.image = nil
  L2_2 = display
  L2_2 = L2_2.newImageRect
  L3_2 = A1_2
  L4_2 = 120
  L5_2 = 156
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.image = L2_2
  L2_2 = A0_2.view
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = A0_2.image
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.image
  L2_2.x = 64
  L2_2 = A0_2.image
  L3_2 = display
  L3_2 = L3_2.contentHeight
  L3_2 = L3_2 * 0.3
  L2_2.y = L3_2
end

setImage = L10_1

function L10_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.name
  L2_2.text = A1_2
end

setName = L10_1

function L10_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.description
  L2_2.text = A1_2
end

setDescription = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.name
  L2_2 = A0_2.achievement
  L2_2 = L2_2.name
  if not L2_2 then
    L2_2 = " "
  end
  L1_2.text = L2_2
  L1_2 = A0_2.description
  L2_2 = A0_2.achievement
  L2_2 = L2_2.description
  if not L2_2 then
    L2_2 = " "
  end
  L1_2.text = L2_2
  L1_2 = A0_2.achievement
  L1_2 = L1_2.recieved
  if L1_2 then
    L1_2 = display
    L1_2 = L1_2.newImageRect
    L2_2 = A0_2.view
    L3_2 = Constants
    L3_2 = L3_2.Path_Assets
    L4_2 = A0_2.achievement
    L4_2 = L4_2.image
    L3_2 = L3_2 .. L4_2
    L4_2 = A0_2.achievement
    L4_2 = L4_2.imageWidth
    L5_2 = A0_2.achievement
    L5_2 = L5_2.imageHeight
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2.image = L1_2
  else
    L1_2 = display
    L1_2 = L1_2.newImageRect
    L2_2 = A0_2.view
    L3_2 = Constants
    L3_2 = L3_2.Path_Assets
    L4_2 = "General/FC-emblem.png"
    L3_2 = L3_2 .. L4_2
    L4_2 = 78
    L5_2 = 94
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2.image = L1_2
  end
  L1_2 = A0_2.image
  L1_2.x = 64
  L1_2 = A0_2.image
  L2_2 = display
  L2_2 = L2_2.contentHeight
  L2_2 = L2_2 * 0.15
  L1_2.y = L2_2
end

update = L10_1
