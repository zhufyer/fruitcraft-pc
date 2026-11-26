local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Components.TDButtonView"
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
L4_1 = require
L5_1 = "Components.TDGoldLabelView"
L4_1 = L4_1(L5_1)
L5_1 = 8
labelsDefaultYOffset = L5_1

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A1_2.subImageWidth
  if not L3_2 then
    L3_2 = 12
  end
  L4_2 = A1_2.subImageHeight
  if not L4_2 then
    L4_2 = 20
  end
  L5_2 = A1_2.subTextFontSize
  if not L5_2 then
    L5_2 = 9
  end
  L6_2 = A1_2.labelYOffset
  if L6_2 == nil then
    L6_2 = labelsDefaultYOffset
    L6_2 = -L6_2
    A1_2.labelYOffset = L6_2
  end
  L6_2 = L0_1
  L6_2 = L6_2.new
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = A1_2.subImage
  L6_2.subImage = L7_2
  L7_2 = A1_2.subText
  L6_2.subText = L7_2
  L7_2 = A1_2.labelYOffset
  L7_2 = L7_2 / 2
  L6_2.BottomLabelYMargin = L7_2
  L7_2 = L4_1
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L10_2 = L6_2.subText
  L9_2.value = L10_2
  L10_2 = L6_2.subImage
  L9_2.image = L10_2
  L9_2.widthIm = L3_2
  L9_2.heightIm = L4_2
  L10_2 = Constants
  L10_2 = L10_2.fontForTitle
  L10_2 = L10_2()
  L9_2.font = L10_2
  L9_2.fontSize = L5_2
  L9_2.mode = "L"
  L9_2.gap = 10
  L10_2 = {}
  L11_2 = L1_1
  L11_2 = L11_2.buttonFontColor
  L11_2 = L11_2[1]
  L12_2 = L1_1
  L12_2 = L12_2.buttonFontColor
  L12_2 = L12_2[2]
  L13_2 = L1_1
  L13_2 = L13_2.buttonFontColor
  L13_2 = L13_2[3]
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L9_2.labelColor = L10_2
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.subLabel = L7_2
  L7_2 = L6_2.view
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = L6_2.subLabel
  L9_2 = L9_2.view
  L7_2(L8_2, L9_2)
  L7_2 = L6_2.subLabel
  L7_2 = L7_2.view
  L8_2 = L6_2.width
  L8_2 = -L8_2
  L8_2 = L8_2 / 2
  L9_2 = L6_2.width
  L9_2 = L9_2 * 0.2
  L8_2 = L8_2 + L9_2
  L9_2 = L6_2.subLabel
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L7_2.x = L8_2
  L7_2 = L6_2.subLabel
  L7_2 = L7_2.view
  L8_2 = L6_2.height
  L8_2 = L8_2 / 2
  L9_2 = L6_2.BottomLabelYMargin
  L8_2 = L8_2 + L9_2
  L9_2 = L6_2.subLabel
  L9_2 = L9_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L7_2.y = L8_2
  L7_2 = A1_2.iconYOffSet
  if L7_2 then
    L7_2 = L6_2.subLabel
    L7_2 = L7_2.icon
    L8_2 = A1_2.iconYOffSet
    L7_2.y = L8_2
  end
  return L6_2
end

new = L5_1

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 then
    L3_2 = A0_2.subLabel
    L4_2 = L3_2
    L3_2 = L3_2.setValue
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end

setSubText = L5_1
