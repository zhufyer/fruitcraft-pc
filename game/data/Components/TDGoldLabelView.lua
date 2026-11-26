local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Components.TDNumberLabelView"
L0_1 = L0_1(L1_1)
L1_1 = setmetatable
L2_1 = _M
L3_1 = {}
L3_1.__index = L0_1
L1_1(L2_1, L3_1)
L1_1 = require
L2_1 = "Theme"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Utils.Toolbox"
L3_1 = L3_1(L4_1)
L4_1 = 25
gapWidth = L4_1

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = L0_1
  L3_2 = L3_2.new
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2.image
  L3_2.image = L4_2
  L4_2 = A1_2.gap
  if not L4_2 then
    L4_2 = gapWidth
  end
  L3_2.gapWidth = L4_2
  L4_2 = A1_2.additionalText
  L3_2.additionalText = L4_2
  L4_2 = 0
  L5_2 = 0
  L6_2 = L3_2.additionalText
  if L6_2 then
    L6_2 = display
    L6_2 = L6_2.newText
    L7_2 = L3_2.view
    L8_2 = L2_1
    L8_2 = L8_2.adjustNumber
    L9_2 = L3_2.additionalText
    L8_2 = L8_2(L9_2)
    L9_2 = 0
    L10_2 = 0
    L11_2 = Constants
    L11_2 = L11_2.fontForTitle
    L11_2 = L11_2()
    L12_2 = 11
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L3_2.additionalLabel = L6_2
    L6_2 = L3_2.additionalLabel
    L7_2 = L6_2
    L6_2 = L6_2.setFillColor
    L8_2 = L1_1
    L8_2 = L8_2.gainedAttributeColor
    L8_2 = L8_2[1]
    L9_2 = L1_1
    L9_2 = L9_2.gainedAttributeColor
    L9_2 = L9_2[2]
    L10_2 = L1_1
    L10_2 = L10_2.gainedAttributeColor
    L10_2 = L10_2[3]
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = L3_2.additionalLabel
    L4_2 = L6_2.width
    L5_2 = 5
  end
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = L3_2.view
  L8_2 = L3_2.image
  L9_2 = A1_2.widthIm
  L10_2 = A1_2.heightIm
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L3_2.icon = L6_2
  L6_2 = L3_2.icon
  L6_2 = L6_2.width
  L7_2 = L3_2.label
  L7_2 = L7_2.width
  L6_2 = L6_2 + L7_2
  L7_2 = L3_2.gapWidth
  L6_2 = L6_2 + L7_2
  L6_2 = L6_2 + L4_2
  L6_2 = L6_2 + L5_2
  L3_2.length = L6_2
  L6_2 = 1
  L7_2 = A1_2.mode
  if L7_2 == "L" then
    L7_2 = L3_2.icon
    L8_2 = L3_2.length
    L8_2 = -L8_2
    L8_2 = L8_2 / 2
    L9_2 = L3_2.icon
    L9_2 = L9_2.width
    L9_2 = L9_2 / 2
    L8_2 = L8_2 + L9_2
    L7_2.x = L8_2
    L7_2 = L3_2.label
    L8_2 = L3_2.length
    L8_2 = L8_2 / 2
    L9_2 = L4_2 + L5_2
    L10_2 = L3_2.label
    L10_2 = L10_2.width
    L10_2 = L10_2 / 2
    L9_2 = L9_2 + L10_2
    L8_2 = L8_2 - L9_2
    L7_2.x = L8_2
  else
    L7_2 = L3_2.icon
    L8_2 = L3_2.length
    L8_2 = L8_2 / 2
    L9_2 = L3_2.icon
    L9_2 = L9_2.width
    L9_2 = L9_2 / 2
    L8_2 = L8_2 - L9_2
    L7_2.x = L8_2
    L7_2 = L3_2.label
    L8_2 = L3_2.length
    L8_2 = -L8_2
    L8_2 = L8_2 / 2
    L9_2 = L4_2 + L5_2
    L10_2 = L3_2.label
    L10_2 = L10_2.width
    L10_2 = L10_2 / 2
    L9_2 = L9_2 + L10_2
    L8_2 = L8_2 + L9_2
    L7_2.x = L8_2
    L6_2 = -1
  end
  L7_2 = L3_2.additionalLabel
  if L7_2 then
    L7_2 = L3_2.additionalLabel
    L8_2 = L3_2.label
    L8_2 = L8_2.x
    L9_2 = L3_2.label
    L9_2 = L9_2.width
    L9_2 = L9_2 / 2
    L9_2 = L9_2 + L5_2
    L10_2 = L4_2 * 0.5
    L9_2 = L9_2 + L10_2
    L9_2 = L6_2 * L9_2
    L8_2 = L8_2 + L9_2
    L7_2.x = L8_2
  end
  L7_2 = L3_2.label
  L7_2.y = 0
  L7_2 = L3_2.icon
  L7_2.y = 0
  return L3_2
end

new = L4_1
