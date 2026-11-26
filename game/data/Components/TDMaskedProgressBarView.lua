local L0_1, L1_1, L2_1, L3_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.BaseView"
L0_1 = L0_1(L1_1)
L1_1 = setmetatable
L2_1 = _M
L3_1 = {}
L3_1.__index = L0_1
L1_1(L2_1, L3_1)

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = L0_1
  L3_2 = L3_2.newWithParams
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L3_2.progressionAmount = 0
  L4_2 = A1_2.progressWidth
  L3_2.totalWidth = L4_2
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = L3_2.view
  L6_2 = A1_2.boxImage
  L7_2 = A1_2.progressWidth
  L8_2 = A1_2.progressHeight
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L3_2.progressBox = L4_2
  L4_2 = L3_2.progressBox
  L4_2.x = 0
  L4_2 = L3_2.progressBox
  L4_2.y = 0
  L4_2 = A1_2.filledImage
  if L4_2 then
    L4_2 = display
    L4_2 = L4_2.newImageRect
    L5_2 = L3_2.view
    L6_2 = A1_2.filledImage
    L7_2 = A1_2.progressWidth
    L8_2 = A1_2.progressHeight
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L3_2.filledBar = L4_2
  else
    L4_2 = A1_2.progressionColor
    if not L4_2 then
      L4_2 = {}
      L5_2 = 1
      L6_2 = 0.596078431372549
      L7_2 = 0
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L4_2[3] = L7_2
    end
    L3_2.progressionColor = L4_2
    L4_2 = display
    L4_2 = L4_2.newRect
    L5_2 = L3_2.view
    L6_2 = 0
    L7_2 = 0
    L8_2 = A1_2.progressWidth
    L9_2 = A1_2.progressHeight
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L3_2.filledBar = L4_2
    L4_2 = L3_2.filledBar
    L5_2 = L4_2
    L4_2 = L4_2.setFillColor
    L6_2 = L3_2.progressionColor
    L6_2 = L6_2[1]
    L7_2 = L3_2.progressionColor
    L7_2 = L7_2[2]
    L8_2 = L3_2.progressionColor
    L8_2 = L8_2[3]
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L4_2 = L3_2.filledBar
  L5_2 = L3_2.progressBox
  L5_2 = L5_2.width
  L5_2 = -L5_2
  L5_2 = L5_2 / 2
  L6_2 = L3_2.filledBar
  L6_2 = L6_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 - L6_2
  L4_2.x = L5_2
  L4_2 = L3_2.filledBar
  L4_2.y = 0
  L4_2 = L3_2.filledBar
  L4_2 = L4_2.x
  L3_2.initialPositionOfFilledBar = L4_2
  L4_2 = graphics
  L4_2 = L4_2.newMask
  L5_2 = A1_2.maskImage
  L4_2 = L4_2(L5_2)
  L3_2.mask = L4_2
  L4_2 = L3_2.view
  L5_2 = L4_2
  L4_2 = L4_2.setMask
  L6_2 = L3_2.mask
  L4_2(L5_2, L6_2)
  L4_2 = L3_2.view
  L4_2.maskScaleX = 0.25
  L4_2 = L3_2.view
  L4_2.maskScaleY = 0.25
  L4_2 = L3_2.view
  L5_2 = A1_2.progressWidth
  L5_2 = -L5_2
  L5_2 = L5_2 / 2
  L4_2.maskX = L5_2
  L4_2 = L3_2.view
  L4_2.maskY = 0
  return L3_2
end

new = L1_1

function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == nil then
    L4_2 = true
    return L4_2
  end
  if 100 < A1_2 then
    A1_2 = 100 - A1_2
  end
  L4_2 = A0_2.totalWidth
  L4_2 = L4_2 * A1_2
  L4_2 = L4_2 / 100
  A0_2.progressionAmount = L4_2
  if A2_2 == true then
    L4_2 = A3_2 or L4_2
    if not A3_2 then
      L4_2 = 1500
    end
    L5_2 = transition
    L5_2 = L5_2.to
    L6_2 = A0_2.filledBar
    L7_2 = {}
    L7_2.time = L4_2
    L8_2 = A0_2.initialPositionOfFilledBar
    L9_2 = A0_2.progressionAmount
    L8_2 = L8_2 + L9_2
    L7_2.x = L8_2
    L8_2 = easing
    L8_2 = L8_2.outCubic
    L7_2.transition = L8_2
    L7_2.tag = "TDMaskedProgressBar"
    L5_2(L6_2, L7_2)
  else
    L4_2 = A0_2.filledBar
    L5_2 = A0_2.initialPositionOfFilledBar
    L6_2 = A0_2.progressionAmount
    L5_2 = L5_2 + L6_2
    L4_2.x = L5_2
  end
end

setValue = L1_1
