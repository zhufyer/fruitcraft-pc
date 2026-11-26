local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.BaseView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "composer"
L2_1 = L2_1(L3_1)
L3_1 = setmetatable
L4_1 = _M
L5_1 = {}
L5_1.__index = L0_1
L3_1(L4_1, L5_1)

function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = L0_1
  L3_2 = L3_2.new
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2.width
  if not L4_2 then
    L4_2 = 100
  end
  L3_2.width = L4_2
  L4_2 = A1_2.height
  if not L4_2 then
    L4_2 = 115
  end
  L3_2.height = L4_2
  L4_2 = A1_2.fontSize
  if not L4_2 then
    L4_2 = 14
  end
  L3_2.fontSize = L4_2
  L4_2 = A1_2.iconSize
  if not L4_2 then
    L4_2 = 20
  end
  L3_2.iconSize = L4_2
  L4_2 = {}
  L3_2.attributes = L4_2
  L4_2 = A1_2.baseAttributesValues
  L3_2.baseAttributesValues = L4_2
  L4_2 = A1_2.addedAttributesValues
  L3_2.addedAttributesValues = L4_2
  L4_2 = display
  L4_2 = L4_2.newRoundedRect
  L5_2 = L3_2.view
  L6_2 = 0
  L7_2 = 0
  L8_2 = L3_2.width
  L9_2 = L3_2.height
  L10_2 = 10
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0.2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2.strokeWidth = 1
  L6_2 = L4_2
  L5_2 = L4_2.setStrokeColor
  L7_2 = 0.5
  L8_2 = 0.5
  L9_2 = 0.5
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = display
  L5_2 = L5_2.newRoundedRect
  L6_2 = L3_2.view
  L7_2 = 0
  L8_2 = 0
  L9_2 = L3_2.width
  L10_2 = L3_2.height
  L11_2 = 10
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2.effectBackground = L5_2
  L5_2 = L3_2.effectBackground
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = L3_2.effectBackground
  L5_2.strokeWidth = 1
  L5_2 = L3_2.effectBackground
  L6_2 = L5_2
  L5_2 = L5_2.setStrokeColor
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = L3_2.effectBackground
  L5_2.alpha = 0
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = L3_2.view
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Heroes/powerIcon-Small.png"
  L7_2 = L7_2 .. L8_2
  L8_2 = L3_2.iconSize
  L9_2 = L3_2.iconSize
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L3_2.powerIcon = L5_2
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = L3_2.view
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Heroes/wisdomIcon-Small.png"
  L7_2 = L7_2 .. L8_2
  L8_2 = L3_2.iconSize
  L9_2 = L3_2.iconSize
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L3_2.wisdomIcon = L5_2
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = L3_2.view
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Heroes/blessingIcon-Small.png"
  L7_2 = L7_2 .. L8_2
  L8_2 = L3_2.iconSize
  L9_2 = L3_2.iconSize
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L3_2.blessingIcon = L5_2
  L5_2 = {}
  L6_2 = L1_1
  L6_2 = L6_2["Power Attribute Details"]
  L5_2.description = L6_2
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "Heroes/powerIcon-Large.png"
  L6_2 = L6_2 .. L7_2
  L5_2.image = L6_2
  L6_2 = L1_1
  L6_2 = L6_2["Power Attribute"]
  L5_2.title = L6_2
  L5_2.imageWidth = 130
  L5_2.imageHeight = 130
  L6_2 = L3_2.powerIcon
  L7_2 = L6_2
  L6_2 = L6_2.addEventListener
  L8_2 = "touch"
  
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L3_2
    L2_3 = L1_3
    L1_3 = L1_3.didPressIcon
    L3_3 = A0_3
    L4_3 = L5_2
    L1_3(L2_3, L3_3, L4_3)
  end
  
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = {}
  L7_2 = L1_1
  L7_2 = L7_2["Wisdom Attribute Details"]
  L6_2.description = L7_2
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Heroes/wisdomIcon-Large.png"
  L7_2 = L7_2 .. L8_2
  L6_2.image = L7_2
  L7_2 = L1_1
  L7_2 = L7_2["Wisdom Attribute"]
  L6_2.title = L7_2
  L6_2.imageWidth = 130
  L6_2.imageHeight = 130
  L7_2 = L3_2.wisdomIcon
  L8_2 = L7_2
  L7_2 = L7_2.addEventListener
  L9_2 = "touch"
  
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L3_2
    L2_3 = L1_3
    L1_3 = L1_3.didPressIcon
    L3_3 = A0_3
    L4_3 = L6_2
    L1_3(L2_3, L3_3, L4_3)
  end
  
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = {}
  L8_2 = L1_1
  L8_2 = L8_2["Blessing Attribute Details"]
  L7_2.description = L8_2
  L8_2 = Constants
  L8_2 = L8_2.Path_Assets
  L9_2 = "Heroes/blessingIcon-Large.png"
  L8_2 = L8_2 .. L9_2
  L7_2.image = L8_2
  L8_2 = L1_1
  L8_2 = L8_2["Blessing Attribute"]
  L7_2.title = L8_2
  L7_2.imageWidth = 130
  L7_2.imageHeight = 130
  L8_2 = L3_2.blessingIcon
  L9_2 = L8_2
  L8_2 = L8_2.addEventListener
  L10_2 = "touch"
  
  function L11_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L3_2
    L2_3 = L1_3
    L1_3 = L1_3.didPressIcon
    L3_3 = A0_3
    L4_3 = L7_2
    L1_3(L2_3, L3_3, L4_3)
  end
  
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = 1
  L9_2 = 3
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = L3_2.attributes
    L13_2 = {}
    L12_2[L11_2] = L13_2
    L12_2 = L3_2.attributes
    L12_2 = L12_2[L11_2]
    L13_2 = display
    L13_2 = L13_2.newText
    L14_2 = L3_2.view
    L15_2 = ""
    L16_2 = 0
    L17_2 = 0
    L18_2 = Constants
    L18_2 = L18_2.fontForTitle
    L18_2 = L18_2()
    L19_2 = L3_2.fontSize
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L12_2.baseValue = L13_2
    L12_2 = L3_2.attributes
    L12_2 = L12_2[L11_2]
    L12_2 = L12_2.baseValue
    L13_2 = L12_2
    L12_2 = L12_2.setFillColor
    L14_2 = 0
    L15_2 = 0
    L16_2 = 0
    L12_2(L13_2, L14_2, L15_2, L16_2)
    L12_2 = L3_2.attributes
    L12_2 = L12_2[L11_2]
    L13_2 = display
    L13_2 = L13_2.newText
    L14_2 = L3_2.view
    L15_2 = ""
    L16_2 = 0
    L17_2 = 0
    L18_2 = Constants
    L18_2 = L18_2.fontForTitle
    L18_2 = L18_2()
    L19_2 = L3_2.fontSize
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L12_2.addedValue = L13_2
    L12_2 = L3_2.attributes
    L12_2 = L12_2[L11_2]
    L12_2 = L12_2.addedValue
    L13_2 = L12_2
    L12_2 = L12_2.setFillColor
    L14_2 = Theme
    L14_2 = L14_2.gainedAttributeColor
    L14_2 = L14_2[1]
    L15_2 = Theme
    L15_2 = L15_2.gainedAttributeColor
    L15_2 = L15_2[2]
    L16_2 = Theme
    L16_2 = L16_2.gainedAttributeColor
    L16_2 = L16_2[3]
    L12_2(L13_2, L14_2, L15_2, L16_2)
  end
  L8_2 = L3_2.powerIcon
  L9_2 = L3_2.powerIcon
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L9_2 = -15 - L9_2
  L8_2.x = L9_2
  L8_2 = L3_2.wisdomIcon
  L9_2 = L3_2.powerIcon
  L9_2 = L9_2.x
  L8_2.x = L9_2
  L8_2 = L3_2.blessingIcon
  L9_2 = L3_2.powerIcon
  L9_2 = L9_2.x
  L8_2.x = L9_2
  L8_2 = L3_2.powerIcon
  L9_2 = L4_2.height
  L9_2 = -L9_2
  L9_2 = L9_2 / 2
  L9_2 = L9_2 + 15
  L10_2 = L3_2.powerIcon
  L10_2 = L10_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L8_2.y = L9_2
  L8_2 = L3_2.wisdomIcon
  L9_2 = L3_2.powerIcon
  L9_2 = L9_2.y
  L10_2 = L3_2.powerIcon
  L10_2 = L10_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L9_2 = L9_2 + 15
  L10_2 = L3_2.wisdomIcon
  L10_2 = L10_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L8_2.y = L9_2
  L8_2 = L3_2.blessingIcon
  L9_2 = L3_2.wisdomIcon
  L9_2 = L9_2.y
  L10_2 = L3_2.wisdomIcon
  L10_2 = L10_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L9_2 = L9_2 + 15
  L10_2 = L3_2.blessingIcon
  L10_2 = L10_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L8_2.y = L9_2
  L8_2 = L3_2.attributes
  L8_2 = L8_2[1]
  L8_2 = L8_2.baseValue
  L9_2 = L3_2.powerIcon
  L9_2 = L9_2.x
  L10_2 = L3_2.powerIcon
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L9_2 = L9_2 + 15
  L10_2 = L3_2.attributes
  L10_2 = L10_2[1]
  L10_2 = L10_2.baseValue
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L8_2.x = L9_2
  L8_2 = L3_2.attributes
  L8_2 = L8_2[2]
  L8_2 = L8_2.baseValue
  L9_2 = L3_2.wisdomIcon
  L9_2 = L9_2.x
  L10_2 = L3_2.wisdomIcon
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L9_2 = L9_2 + 15
  L10_2 = L3_2.attributes
  L10_2 = L10_2[2]
  L10_2 = L10_2.baseValue
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L8_2.x = L9_2
  L8_2 = L3_2.attributes
  L8_2 = L8_2[3]
  L8_2 = L8_2.baseValue
  L9_2 = L3_2.blessingIcon
  L9_2 = L9_2.x
  L10_2 = L3_2.blessingIcon
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L9_2 = L9_2 + 15
  L10_2 = L3_2.attributes
  L10_2 = L10_2[3]
  L10_2 = L10_2.baseValue
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L8_2.x = L9_2
  L8_2 = L3_2.attributes
  L8_2 = L8_2[1]
  L8_2 = L8_2.addedValue
  L9_2 = L3_2.attributes
  L9_2 = L9_2[1]
  L9_2 = L9_2.baseValue
  L9_2 = L9_2.x
  L10_2 = L3_2.attributes
  L10_2 = L10_2[1]
  L10_2 = L10_2.baseValue
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L10_2 = L3_2.attributes
  L10_2 = L10_2[1]
  L10_2 = L10_2.addedValue
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L8_2.x = L9_2
  L8_2 = L3_2.attributes
  L8_2 = L8_2[2]
  L8_2 = L8_2.addedValue
  L9_2 = L3_2.attributes
  L9_2 = L9_2[2]
  L9_2 = L9_2.baseValue
  L9_2 = L9_2.x
  L10_2 = L3_2.attributes
  L10_2 = L10_2[2]
  L10_2 = L10_2.baseValue
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L10_2 = L3_2.attributes
  L10_2 = L10_2[2]
  L10_2 = L10_2.addedValue
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L8_2.x = L9_2
  L8_2 = L3_2.attributes
  L8_2 = L8_2[3]
  L8_2 = L8_2.addedValue
  L9_2 = L3_2.attributes
  L9_2 = L9_2[3]
  L9_2 = L9_2.baseValue
  L9_2 = L9_2.x
  L10_2 = L3_2.attributes
  L10_2 = L10_2[3]
  L10_2 = L10_2.baseValue
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L10_2 = L3_2.attributes
  L10_2 = L10_2[3]
  L10_2 = L10_2.addedValue
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L8_2.x = L9_2
  L8_2 = L3_2.attributes
  L8_2 = L8_2[1]
  L8_2 = L8_2.baseValue
  L9_2 = L3_2.powerIcon
  L9_2 = L9_2.y
  L8_2.y = L9_2
  L8_2 = L3_2.attributes
  L8_2 = L8_2[2]
  L8_2 = L8_2.baseValue
  L9_2 = L3_2.wisdomIcon
  L9_2 = L9_2.y
  L8_2.y = L9_2
  L8_2 = L3_2.attributes
  L8_2 = L8_2[3]
  L8_2 = L8_2.baseValue
  L9_2 = L3_2.blessingIcon
  L9_2 = L9_2.y
  L8_2.y = L9_2
  L8_2 = L3_2.attributes
  L8_2 = L8_2[1]
  L8_2 = L8_2.addedValue
  L9_2 = L3_2.powerIcon
  L9_2 = L9_2.y
  L8_2.y = L9_2
  L8_2 = L3_2.attributes
  L8_2 = L8_2[2]
  L8_2 = L8_2.addedValue
  L9_2 = L3_2.wisdomIcon
  L9_2 = L9_2.y
  L8_2.y = L9_2
  L8_2 = L3_2.attributes
  L8_2 = L8_2[3]
  L8_2 = L8_2.addedValue
  L9_2 = L3_2.blessingIcon
  L9_2 = L9_2.y
  L8_2.y = L9_2
  L9_2 = L3_2
  L8_2 = L3_2.updateAttributes
  L10_2 = L3_2.baseAttributesValues
  L11_2 = L3_2.addedAttributesValues
  L8_2(L9_2, L10_2, L11_2)
  return L3_2
end

new = L3_1

function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A1_2 then
    L4_2 = A1_2.baseValue
    L5_2 = L1_1
    L5_2 = L5_2.adjustNumber
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    L4_2.text = L5_2
    L4_2 = A1_2.baseValue
    L5_2 = A0_2.powerIcon
    L5_2 = L5_2.x
    L6_2 = A0_2.powerIcon
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L5_2 = L5_2 + L6_2
    L5_2 = L5_2 + 15
    L6_2 = A1_2.baseValue
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L5_2 = L5_2 + L6_2
    L4_2.x = L5_2
    if A3_2 and 0 <= A3_2 then
      L4_2 = A1_2.addedValue
      L5_2 = " + "
      L6_2 = L1_1
      L6_2 = L6_2.adjustNumber
      L7_2 = A3_2
      L6_2 = L6_2(L7_2)
      L5_2 = L5_2 .. L6_2
      L4_2.text = L5_2
      L4_2 = A1_2.addedValue
      L5_2 = A1_2.baseValue
      L5_2 = L5_2.x
      L6_2 = A1_2.baseValue
      L6_2 = L6_2.width
      L6_2 = L6_2 / 2
      L5_2 = L5_2 + L6_2
      L6_2 = A1_2.addedValue
      L6_2 = L6_2.width
      L6_2 = L6_2 / 2
      L5_2 = L5_2 + L6_2
      L4_2.x = L5_2
    end
  end
end

setAttributeText = L3_1

function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A0_2 and A1_2 and A2_2 then
    if A3_2 then
      L5_2 = A0_2
      L4_2 = A0_2.animateBackground
      L4_2(L5_2)
      L4_2 = animateAttributeIcon
      L5_2 = A0_2.powerIcon
      L4_2(L5_2)
      L4_2 = animateAttributeIcon
      L5_2 = A0_2.wisdomIcon
      L4_2(L5_2)
      L4_2 = animateAttributeIcon
      L5_2 = A0_2.blessingIcon
      L4_2(L5_2)
    end
    L4_2 = 1
    L5_2 = #A1_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L9_2 = A0_2
      L8_2 = A0_2.setAttributeText
      L10_2 = A0_2.attributes
      L10_2 = L10_2[L7_2]
      L11_2 = A1_2[L7_2]
      L12_2 = A2_2[L7_2]
      L8_2(L9_2, L10_2, L11_2, L12_2)
    end
  end
end

updateAttributes = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.effectBackground
  L1_2.alpha = 1
  L1_2 = A0_2.effectBackground
  L1_2.xScale = 0.5
  L1_2 = A0_2.effectBackground
  L1_2.yScale = 0.5
  L1_2 = transition
  L1_2 = L1_2.to
  L2_2 = A0_2.effectBackground
  L3_2 = {}
  L3_2.time = 450
  L3_2.xScale = 1.4
  L3_2.yScale = 1.4
  L3_2.alpha = 0
  L3_2.tag = "updateEffect"
  L4_2 = easing
  L4_2 = L4_2.outCubic
  L3_2.transition = L4_2
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L0_3 = L0_3.effectBackground
    L0_3.xScale = 1
    L0_3 = A0_2
    L0_3 = L0_3.effectBackground
    L0_3.yScale = 1
  end
  
  L3_2.onComplete = L4_2
  L1_2(L2_2, L3_2)
end

animateBackground = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = transition
  L1_2 = L1_2.to
  L2_2 = A0_2
  L3_2 = {}
  L3_2.time = 200
  L3_2.xScale = 0.7
  L3_2.yScale = 1.2
  L3_2.tag = "updateEffect"
  L4_2 = easing
  L4_2 = L4_2.inBack
  L3_2.transition = L4_2
  
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = A0_2
    L2_3 = {}
    L2_3.time = 200
    L2_3.xScale = 1
    L2_3.yScale = 1
    L3_3 = easing
    L3_3 = L3_3.inOutSine
    L2_3.transition = L3_3
    L2_3.tag = "updateEffect"
    L0_3(L1_3, L2_3)
  end
  
  L3_2.onComplete = L4_2
  L1_2(L2_2, L3_2)
end

animateAttributeIcon = L3_1

function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A1_2.phase
  if L3_2 == "ended" then
    L3_2 = L2_1
    L3_2 = L3_2.showOverlay
    L4_2 = "Scenes.WarningOverlay"
    L5_2 = {}
    L5_2.params = A2_2
    L3_2(L4_2, L5_2)
  end
end

didPressIcon = L3_1
