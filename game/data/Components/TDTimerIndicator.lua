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
L2_1 = "Utils.Toolbox"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = setmetatable
L4_1 = _M
L5_1 = {}
L5_1.__index = L0_1
L3_1(L4_1, L5_1)

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L1_1
  L2_2 = L2_2.remainTimeFromNow
  L3_2 = A0_2.endTime
  L4_2 = mainPlayer
  L4_2 = L4_2.timeDelta
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2)
  A0_2.rem = L2_2
  L6_2 = A0_2.rem
  if L6_2 < 0 then
    L6_2 = Runtime
    L7_2 = L6_2
    L6_2 = L6_2.removeEventListener
    L8_2 = "click"
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2.timerLabel
    L7_2 = L2_1
    L7_2 = L7_2["Chance Box"]
    L6_2.text = L7_2
  else
    L6_2 = L2_1
    L6_2 = L6_2.adjustNumber
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
    L6_2 = L2_1
    L6_2 = L6_2.adjustNumber
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2
    L6_2 = L2_1
    L6_2 = L6_2.adjustNumber
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L4_2 = L6_2
    L6_2 = L3_2
    L7_2 = " : "
    L8_2 = L4_2
    L9_2 = " : "
    L10_2 = L5_2
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
    timeString = L6_2
    L6_2 = A0_2.timerLabel
    L7_2 = timeString
    L6_2.text = L7_2
  end
end

click = L3_1

function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = L0_1
  L3_2 = L3_2.newWithParams
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2.endTime
  L3_2.endTime = L4_2
  L4_2 = display
  L4_2 = L4_2.newRoundedRect
  L5_2 = L3_2.view
  L6_2 = 0
  L7_2 = 0
  L8_2 = 55
  L9_2 = 15
  L10_2 = 2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2.timerBGImage = L4_2
  L4_2 = L3_2.timerBGImage
  L4_2.strokeWidth = 1
  L4_2 = L3_2.timerBGImage
  L5_2 = L4_2
  L4_2 = L4_2.setStrokeColor
  L6_2 = Theme
  L6_2 = L6_2.timeIndicatorStrokeColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = L3_2.timerBGImage
  L5_2 = L4_2
  L4_2 = L4_2.setFillColor
  L6_2 = Theme
  L6_2 = L6_2.timeIndicatorBackGroundColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = L3_2.timerBGImage
  L4_2.alpha = 0.7
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = L3_2.view
  L6_2 = ""
  L7_2 = 0
  L8_2 = A1_2.countdownTextY
  if not L8_2 then
    L8_2 = 0
  end
  L9_2 = A1_2.countdownTextX
  if not L9_2 then
    L9_2 = 0
  end
  L10_2 = 0
  L11_2 = Theme
  L11_2 = L11_2.textStyle
  L11_2 = L11_2[5]
  L11_2 = L11_2.font
  L12_2 = Theme
  L12_2 = L12_2.buttonBadgeFontSize
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2.timerLabel = L4_2
  L4_2 = L3_2.timerLabel
  L5_2 = L4_2
  L4_2 = L4_2.setFillColor
  L6_2 = Theme
  L6_2 = L6_2.buttonBadgeFontColor
  L6_2 = L6_2[1]
  L7_2 = Theme
  L7_2 = L7_2.buttonBadgeFontColor
  L7_2 = L7_2[2]
  L8_2 = Theme
  L8_2 = L8_2.buttonBadgeFontColor
  L8_2 = L8_2[3]
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = L3_2
  L4_2 = L3_2.click
  L4_2(L5_2)
  L4_2 = Runtime
  L5_2 = L4_2
  L4_2 = L4_2.addEventListener
  L6_2 = "click"
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  return L3_2
end

new = L3_1

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2.endTime = A1_2
  L2_2 = Runtime
  L3_2 = L2_2
  L2_2 = L2_2.addEventListener
  L4_2 = "click"
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end

addTimer = L3_1
