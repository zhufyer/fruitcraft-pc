local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Components.TDButtonView"
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
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2.timerGroup
  if L3_2 == nil then
    L3_2 = display
    L3_2 = L3_2.newGroup
    L3_2 = L3_2()
    A0_2.timerGroup = L3_2
    L3_2 = A1_2.countdownImageName
    if L3_2 then
      L3_2 = A1_2.countdownImageWidth
      if L3_2 then
        L3_2 = A1_2.countdownImageHeight
        if L3_2 then
          L3_2 = display
          L3_2 = L3_2.newImageRect
          L4_2 = A0_2.timerGroup
          L5_2 = Constants
          L5_2 = L5_2.Path_Assets
          L6_2 = A1_2.countdownImageName
          L5_2 = L5_2 .. L6_2
          L6_2 = A1_2.countdownImageWidth
          L7_2 = A1_2.countdownImageHeight
          L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
          L2_2 = L3_2
          L3_2 = A0_2.timerGroup
          L3_2.image = L2_2
      end
    end
    else
      L3_2 = display
      L3_2 = L3_2.newRoundedRect
      L4_2 = A0_2.timerGroup
      L5_2 = 0
      L6_2 = 0
      L7_2 = 55
      L8_2 = 15
      L9_2 = 2
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      L2_2 = L3_2
      L2_2.strokeWidth = 1
      L4_2 = L2_2
      L3_2 = L2_2.setStrokeColor
      L5_2 = Theme
      L5_2 = L5_2.timeIndicatorStrokeColor
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2()
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L4_2 = L2_2
      L3_2 = L2_2.setFillColor
      L5_2 = Theme
      L5_2 = L5_2.timeIndicatorBackGroundColor
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2()
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L2_2.alpha = 0.7
    end
    L3_2 = display
    L3_2 = L3_2.newText
    L4_2 = A0_2.timerGroup
    L5_2 = " "
    L6_2 = 0
    L7_2 = A1_2.countdownTextY
    if not L7_2 then
      L7_2 = 0
    end
    L8_2 = A1_2.countdownTextX
    if not L8_2 then
      L8_2 = 0
    end
    L9_2 = 0
    L10_2 = Theme
    L10_2 = L10_2.textStyle
    L10_2 = L10_2[5]
    L10_2 = L10_2.font
    L11_2 = Theme
    L11_2 = L11_2.buttonBadgeFontSize
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L5_2 = L3_2
    L4_2 = L3_2.setFillColor
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
    L4_2 = A0_2.timerGroup
    L4_2.label = L3_2
    L4_2 = A0_2.timerGroup
    L4_2.alpha = 0
    L4_2 = A0_2.view
    L5_2 = L4_2
    L4_2 = L4_2.insert
    L6_2 = A0_2.timerGroup
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.timerGroup
    L5_2 = A1_2.countdownImageXPos
    L4_2.x = L5_2
    L4_2 = A0_2.timerGroup
    L5_2 = A1_2.countdownImageYPos
    L4_2.y = L5_2
  end
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.image
  L3_2(L4_2, L5_2)
end

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = "click"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end

removeListener = L4_1

function L4_1(A0_2, A1_2)
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
    L6_2 = A0_2.timerGroup
    L6_2.alpha = 0
    L6_2 = Runtime
    L7_2 = L6_2
    L6_2 = L6_2.removeEventListener
    L8_2 = "click"
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2.badge
    if L6_2 then
      L6_2 = A0_2.badge
      L7_2 = L6_2
      L6_2 = L6_2.removeSelf
      L6_2(L7_2)
      A0_2.badge = nil
    end
    L6_2 = A0_2.removeButton
    if L6_2 then
      L6_2 = A0_2.image
      if L6_2 then
        L7_2 = A0_2
        L6_2 = A0_2.removeSelf
        L6_2(L7_2)
        A0_2 = nil
      end
    end
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
    L6_2 = A0_2.timerGroup
    L6_2 = L6_2.label
    L7_2 = timeString
    L6_2.text = L7_2
  end
end

click = L4_1

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1
  L3_2 = L3_2.new
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2.removable
  L3_2.removeButton = L4_2
  L4_2 = {}
  L5_2 = A1_2.countdownImageName
  L4_2.countdownImageName = L5_2
  L5_2 = A1_2.countdownImageWidth
  L4_2.countdownImageWidth = L5_2
  L5_2 = A1_2.countdownImageHeight
  L4_2.countdownImageHeight = L5_2
  L5_2 = A1_2.countdownTextY
  L4_2.countdownTextY = L5_2
  L5_2 = A1_2.countdownTextX
  L4_2.countdownTextX = L5_2
  L5_2 = A1_2.countdownImageXPos
  L4_2.countdownImageXPos = L5_2
  L5_2 = A1_2.countdownImageYPos
  L4_2.countdownImageYPos = L5_2
  L5_2 = L3_1
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  return L3_2
end

new = L4_1
