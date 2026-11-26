local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.BaseView"
L0_1 = L0_1(L1_1)
super = L0_1
L0_1 = setmetatable
L1_1 = _M
L2_1 = {}
L3_1 = super
L2_1.__index = L3_1
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Theme"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Utils.Toolbox"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.CardView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.CachedImageView"
L4_1 = L4_1(L5_1)

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = super
  L3_2 = L3_2.new
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2.backgroundWidth
  L3_2.backgroundWidth = L4_2
  L4_2 = A1_2.backgroundHeight
  L3_2.backgroundHeight = L4_2
  L4_2 = A1_2.type
  L3_2.type = L4_2
  L4_2 = A1_2.text
  L3_2.text = L4_2
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = L3_2.view
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "Shop/FC-shop-card.png"
  L6_2 = L6_2 .. L7_2
  L7_2 = L3_2.backgroundWidth
  L8_2 = L3_2.backgroundHeight
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L3_2.backGround = L4_2
  L4_2 = {}
  L5_2 = L3_2.view
  L4_2.parent = L5_2
  L5_2 = L3_2.text
  L4_2.text = L5_2
  L4_2.x = 0
  L4_2.y = 0
  L5_2 = Constants
  L5_2 = L5_2.fontForTitle
  L5_2 = L5_2()
  L4_2.font = L5_2
  L4_2.fontSize = 15
  L5_2 = L3_2.backgroundWidth
  L5_2 = L5_2 * 0.85
  L4_2.width = L5_2
  L4_2.align = "center"
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = L3_2.backGround
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L7_2 = L3_2.backGround
  L7_2 = L7_2.height
  L7_2 = 0.1 * L7_2
  L6_2 = L6_2 - L7_2
  L7_2 = L5_2.height
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L5_2.y = L6_2
  L7_2 = L5_2
  L6_2 = L5_2.setFillColor
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = L3_2.type
  if L6_2 == 1 then
    L6_2 = A1_2.boostPercentage
    L3_2.boostPercentage = L6_2
    L6_2 = A1_2.imagePath
    L3_2.imagePath = L6_2
    L6_2 = display
    L6_2 = L6_2.newImageRect
    L7_2 = L3_2.view
    L8_2 = L3_2.imagePath
    L9_2 = 100
    L10_2 = 100
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L3_2.image = L6_2
    L6_2 = L3_2.image
    L6_2.y = -10
    L6_2 = display
    L6_2 = L6_2.newText
    L7_2 = L3_2.boostPercentage
    L8_2 = "%"
    L7_2 = L7_2 .. L8_2
    L8_2 = 0
    L9_2 = 0
    L10_2 = Constants
    L10_2 = L10_2.fontForTitle
    L10_2 = L10_2()
    L11_2 = 18
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L3_2.imageLabel = L6_2
    L6_2 = L3_2.imageLabel
    L7_2 = L6_2
    L6_2 = L6_2.setFillColor
    L8_2 = 0.5764705882352941
    L9_2 = 0.09803921568627451
    L10_2 = 0.08235294117647059
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = L3_2.imageLabel
    L7_2 = L3_2.image
    L7_2 = L7_2.x
    L6_2.x = L7_2
    L6_2 = L3_2.imageLabel
    L7_2 = L3_2.image
    L7_2 = L7_2.y
    L8_2 = L3_2.image
    L8_2 = L8_2.height
    L8_2 = L8_2 * 0.18
    L7_2 = L7_2 + L8_2
    L6_2.y = L7_2
    L6_2 = L3_2.view
    L7_2 = L6_2
    L6_2 = L6_2.insert
    L8_2 = L3_2.imageLabel
    L6_2(L7_2, L8_2)
    L6_2 = L3_2.imageLabel
    L6_2 = L6_2.y
    L7_2 = L3_2.imageLabel
    L7_2 = L7_2.height
    L7_2 = L7_2 / 2
    L6_2 = L6_2 + L7_2
    L6_2 = L6_2 + 15
    L7_2 = L5_2.height
    L7_2 = L7_2 / 2
    L6_2 = L6_2 + L7_2
    L5_2.y = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.toFront
    L6_2(L7_2)
  else
    L6_2 = L3_2.type
    if L6_2 == 2 then
      L6_2 = A1_2.card
      L3_2.card = L6_2
      L6_2 = {}
      L7_2 = L3_1
      L8_2 = L7_2
      L7_2 = L7_2.new
      L9_2 = "small"
      L10_2 = L3_2.card
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.setSelectable
      L10_2 = false
      L8_2(L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.hideCooldownView
      L8_2(L9_2)
      L9_2 = L7_2
      L8_2 = L7_2.deselected
      L8_2(L9_2)
      L9_2 = L7_2
      L8_2 = L7_2.setId
      L10_2 = L3_2.card
      L10_2 = L10_2.id
      L8_2(L9_2, L10_2)
      L8_2 = L3_2.view
      L9_2 = L8_2
      L8_2 = L8_2.insert
      L10_2 = L7_2.view
      L8_2(L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.setPosition
      L10_2 = L7_2.view
      L10_2 = L10_2.width
      L10_2 = -L10_2
      L10_2 = L10_2 / 2
      L11_2 = L7_2.view
      L11_2 = L11_2.height
      L11_2 = -L11_2
      L11_2 = L11_2 / 2
      L11_2 = L11_2 - 10
      L8_2(L9_2, L10_2, L11_2)
    else
      L6_2 = A1_2.iconPath
      L3_2.iconPath = L6_2
      L6_2 = A1_2.iconWidth
      L3_2.iconWidth = L6_2
      L6_2 = A1_2.iconHeight
      L3_2.iconHeight = L6_2
      L6_2 = L4_1
      L7_2 = L6_2
      L6_2 = L6_2.new
      L8_2 = L3_2.view
      L9_2 = L3_2.iconPath
      L10_2 = L3_2.iconWidth
      L11_2 = L3_2.iconHeight
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      L3_2.icon = L6_2
      L6_2 = L3_2.icon
      L6_2.y = -10
    end
  end
  L6_2 = L3_2.view
  L7_2 = L6_2
  L6_2 = L6_2.addEventListener
  L8_2 = "touch"
  
  function L9_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end

new = L5_1
