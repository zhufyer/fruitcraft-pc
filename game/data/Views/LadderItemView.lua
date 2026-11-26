local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Language"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.Toolbox"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Components.TDButtonView"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.CachedImageView"
L3_1 = L3_1(L4_1)
L4_1 = Constants
L4_1 = L4_1.Path_Assets
L5_1 = "BattleItems/next.png"
L4_1 = L4_1 .. L5_1
L5_1 = Constants
L5_1 = L5_1.Path_Assets
L6_1 = "BattleItems/next-0.png"
L5_1 = L5_1 .. L6_1

function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if not A2_2 then
    L3_2 = {}
    A2_2 = L3_2
  end
  L3_2 = setmetatable
  L4_2 = A2_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  A0_2.__index = A0_2
  A2_2.ladderItem = A1_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  A2_2.group = L3_2
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = A2_2.group
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "Shop/FC-shop-card.png"
  L5_2 = L5_2 .. L6_2
  L6_2 = 100
  L7_2 = 140
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  A2_2.background = L3_2
  L3_2 = A2_2.background
  L3_2.x = 50
  L3_2 = A2_2.background
  L3_2.y = 60
  L3_2 = A2_2.background
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = 1
  L6_2 = 1
  L7_2 = 1
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L3_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = A2_2.group
  L6_2 = A1_2.image
  L7_2 = 85
  L8_2 = 90
  L9_2 = nil
  L10_2 = nil
  L11_2 = nil
  L12_2 = true
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  A2_2.itemIcon = L3_2
  L3_2 = A2_2.itemIcon
  L3_2.x = 50
  L3_2 = A2_2.itemIcon
  L3_2.y = 55
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = {}
  L5_2 = A2_2.group
  L4_2.parent = L5_2
  L5_2 = A1_2.description
  L4_2.text = L5_2
  L4_2.x = 50
  L4_2.y = 115
  L4_2.width = 75
  L4_2.height = 30
  L5_2 = Constants
  L5_2 = L5_2.fontForSubtitle
  L5_2 = L5_2()
  L4_2.font = L5_2
  L4_2.fontSize = 8
  L4_2.align = "center"
  L3_2 = L3_2(L4_2)
  A2_2.descriptionText = L3_2
  L3_2 = A2_2.descriptionText
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = 0.2
  L6_2 = 0.2
  L7_2 = 0.2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L0_1
  L3_2 = L3_2.Free
  L4_2 = A1_2.price
  if L4_2 then
    L4_2 = tostring
    L5_2 = A1_2.price
    L4_2 = L4_2(L5_2)
    if L4_2 ~= "0" then
      L4_2 = L0_1
      L4_2 = L4_2.adjustNumber
      L5_2 = L1_1
      L5_2 = L5_2.stringThousandCommaSeperated
      L6_2 = A1_2.price
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2)
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      L5_2 = L0_1
      L5_2 = L5_2.localizedString
      L6_2 = "Bundle Purchase Label"
      L7_2 = {}
      L7_2.price = L4_2
      L5_2 = L5_2(L6_2, L7_2)
      L3_2 = L5_2
    end
  end
  L4_2 = L2_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.label = L3_2
  L6_2.fontSize = 10
  L6_2.width = 80
  L6_2.height = 25
  L7_2 = L4_1
  L6_2.defaultFile = L7_2
  L7_2 = L5_1
  L6_2.overFile = L7_2
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = A1_2
    L0_3 = L0_3.action
    if L0_3 then
      L0_3 = A1_2
      L0_3 = L0_3.action
      L0_3()
    end
  end
  
  L6_2.onRelease = L7_2
  L6_2.emboss = false
  L4_2 = L4_2(L5_2, L6_2)
  A2_2.actionButton = L4_2
  L4_2 = A2_2.group
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = A2_2.actionButton
  L6_2 = L6_2.view
  L4_2(L5_2, L6_2)
  L4_2 = A2_2.actionButton
  L4_2.x = 50
  L4_2 = A2_2.actionButton
  L4_2.y = 150
  return A2_2
end

new = L6_1

function L6_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.group
  if L3_2 then
    L3_2 = A0_2.group
    L3_2.x = A1_2
    L3_2 = A0_2.group
    L3_2.y = A2_2
  end
end

setPosition = L6_1

function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.itemIcon
  if L1_2 then
    L1_2 = A0_2.itemIcon
    L1_2 = L1_2.removeSelf
    if L1_2 then
      L1_2 = A0_2.itemIcon
      L2_2 = L1_2
      L1_2 = L1_2.removeSelf
      L1_2(L2_2)
      A0_2.itemIcon = nil
    end
  end
  L1_2 = A0_2.group
  if L1_2 then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = A0_2.group
    L1_2(L2_2)
    A0_2.group = nil
  end
  A0_2.actionButton = nil
  A0_2.background = nil
  A0_2.descriptionText = nil
  A0_2.ladderItem = nil
end

destroy = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.actionButton
  if not L2_2 then
    return
  end
  L2_2 = A0_2.actionButton
  L3_2 = L2_2
  L2_2 = L2_2.setEnabled
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = L4_1
    if L2_2 then
      goto lbl_15
    end
  end
  L2_2 = L5_1
  ::lbl_15::
  L4_2 = A0_2
  L3_2 = A0_2.updateButtonImage
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.updateButtonTextColor
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end

setEnabled = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A0_2.actionButton
  if L2_2 then
    L2_2 = A0_2.actionButton
    L2_2 = L2_2.image
    if L2_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = A0_2.actionButton
  L2_2 = L2_2.image
  L3_2 = A0_2.actionButton
  L3_2 = L3_2.view
  L4_2 = L2_2.x
  L5_2 = L2_2.y
  L6_2 = L2_2.width
  L7_2 = L2_2.height
  L8_2 = L2_2.id
  L10_2 = L2_2
  L9_2 = L2_2.removeEventListener
  L11_2 = "touch"
  L12_2 = A0_2.actionButton
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = display
  L9_2 = L9_2.remove
  L10_2 = L2_2
  L9_2(L10_2)
  L9_2 = display
  L9_2 = L9_2.newImageRect
  L10_2 = L3_2
  L11_2 = A1_2
  L12_2 = L6_2
  L13_2 = L7_2
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  L2_2 = L9_2
  L9_2 = L4_2
  L2_2.y = L5_2
  L2_2.x = L9_2
  L2_2.id = L8_2
  L10_2 = L2_2
  L9_2 = L2_2.addEventListener
  L11_2 = "touch"
  L12_2 = A0_2.actionButton
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = A0_2.actionButton
  L9_2.image = L2_2
  L9_2 = A0_2.actionButton
  L9_2 = L9_2.label
  if L9_2 then
    L10_2 = L3_2
    L9_2 = L3_2.insert
    L11_2 = A0_2.actionButton
    L11_2 = L11_2.label
    L9_2(L10_2, L11_2)
  end
end

updateButtonImage = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.actionButton
  if L2_2 then
    L2_2 = A0_2.actionButton
    L2_2 = L2_2.label
    if L2_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  if A1_2 then
    L2_2 = A0_2.actionButton
    L2_2 = L2_2.label
    L3_2 = L2_2
    L2_2 = L2_2.setFillColor
    L4_2 = Constants
    L4_2 = L4_2.darkGreenColor
    L4_2, L5_2, L6_2 = L4_2()
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = A0_2.actionButton
    L2_2 = L2_2.label
    L3_2 = L2_2
    L2_2 = L2_2.setFillColor
    L4_2 = 0.5
    L5_2 = 0.5
    L6_2 = 0.5
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end

updateButtonTextColor = L6_1
