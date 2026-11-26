local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Utils.Toolbox"
L0_1 = L0_1(L1_1)
L1_1 = easing
L1_1 = L1_1.outQuad

function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A1_2 then
    L5_2 = {}
    A1_2 = L5_2
  end
  L5_2 = setmetatable
  L6_2 = A1_2
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  A0_2.__index = A0_2
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  A1_2.group = L5_2
  L5_2 = A3_2 * 0.5
  A1_2.h = L5_2
  A1_2.w = A2_2
  A1_2.gap = A4_2
  L5_2 = A1_2.group
  L5_2.x = 0
  L5_2 = A1_2.group
  L5_2.y = 0
  A1_2.indicatorValue = 0
  A1_2.finalValue = 0
  A1_2.state = "green"
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "LiveBattle/lose2.png"
  L6_2 = L6_2 .. L7_2
  L7_2 = A1_2.w
  L8_2 = A1_2.h
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  A1_2.redPowerView = L5_2
  L5_2 = A1_2.redPowerView
  L5_2.anchorX = 0.5
  L5_2 = A1_2.redPowerView
  L5_2.anchorY = 0
  L5_2 = A1_2.redPowerView
  L5_2.yScale = 0.001
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "LiveBattle/win2.png"
  L6_2 = L6_2 .. L7_2
  L7_2 = A1_2.w
  L8_2 = A1_2.h
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  A1_2.greenPowerView = L5_2
  L5_2 = A1_2.greenPowerView
  L5_2.anchorX = 0.5
  L5_2 = A1_2.greenPowerView
  L5_2.anchorY = 1
  L5_2 = A1_2.greenPowerView
  L5_2.yScale = 0.001
  L5_2 = A1_2.redPowerView
  L5_2.x = 0
  L5_2 = A1_2.redPowerView
  L6_2 = -A3_2
  L7_2 = A4_2 / 2
  L6_2 = L6_2 - L7_2
  L5_2.y = L6_2
  L5_2 = A1_2.group
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = A1_2.redPowerView
  L5_2(L6_2, L7_2)
  L5_2 = A1_2.greenPowerView
  L5_2.x = 0
  L5_2 = A1_2.greenPowerView
  L6_2 = A4_2 / 2
  L6_2 = A3_2 + L6_2
  L5_2.y = L6_2
  L5_2 = A1_2.group
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = A1_2.greenPowerView
  L5_2(L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "LiveBattle/Score frame.png"
  L6_2 = L6_2 .. L7_2
  L7_2 = A1_2.w
  L8_2 = A1_2.h
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  A1_2.redEmptyPowerView = L5_2
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "LiveBattle/Score frame1.png"
  L6_2 = L6_2 .. L7_2
  L7_2 = A1_2.w
  L8_2 = A1_2.h
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  A1_2.greenEmptyPowerView = L5_2
  L5_2 = A1_2.redEmptyPowerView
  L5_2.x = 0
  L5_2 = A1_2.redEmptyPowerView
  L6_2 = -A3_2
  L6_2 = L6_2 * 0.25
  L7_2 = A4_2 / 2
  L6_2 = L6_2 - L7_2
  L5_2.y = L6_2
  L5_2 = A1_2.group
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = A1_2.redEmptyPowerView
  L5_2(L6_2, L7_2)
  L5_2 = A1_2.greenEmptyPowerView
  L5_2.x = 0
  L5_2 = A1_2.greenEmptyPowerView
  L6_2 = A3_2 * 0.25
  L7_2 = A4_2 / 2
  L6_2 = L6_2 + L7_2
  L5_2.y = L6_2
  L5_2 = A1_2.group
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = A1_2.greenEmptyPowerView
  L5_2(L6_2, L7_2)
  L5_2 = A1_2.greenSideName
  if not L5_2 then
    L5_2 = log3
    L6_2 = "no green side name set for power indicator"
    L5_2 = L5_2(L6_2)
  end
  A1_2.greenSideName = L5_2
  L5_2 = L0_1
  L5_2 = L5_2.stringUTFLength
  L6_2 = A1_2.greenSideName
  L5_2 = L5_2(L6_2)
  if 12 < L5_2 then
    L5_2 = L0_1
    L5_2 = L5_2.isStringPersianInAndroid
    L6_2 = A1_2.greenSideName
    L7_2 = L6_2
    L6_2 = L6_2.sub
    L8_2 = 1
    L9_2 = 1
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    if L5_2 then
      L5_2 = "..."
      L6_2 = L0_1
      L6_2 = L6_2.utf8sub
      L7_2 = A1_2.greenSideName
      L8_2 = 0
      L9_2 = 10
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2 = L5_2 .. L6_2
      A1_2.greenSideName = L5_2
    else
      L5_2 = L0_1
      L5_2 = L5_2.utf8sub
      L6_2 = A1_2.greenSideName
      L7_2 = 0
      L8_2 = 10
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L6_2 = "..."
      L5_2 = L5_2 .. L6_2
      A1_2.greenSideName = L5_2
    end
  end
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = A1_2.greenSideName
  L7_2 = 0
  L8_2 = 0
  L9_2 = Constants
  L9_2 = L9_2.fontForSubtitle
  L9_2 = L9_2()
  L10_2 = 10
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  A1_2.greenSideNameText = L5_2
  L5_2 = L0_1
  L5_2 = L5_2.isStringPersianInAndroid
  L6_2 = A1_2.greenSideName
  L7_2 = L6_2
  L6_2 = L6_2.sub
  L8_2 = 1
  L9_2 = 1
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if L5_2 then
    L5_2 = A1_2.greenSideNameText
    L6_2 = A1_2.greenEmptyPowerView
    L6_2 = L6_2.x
    L6_2 = L6_2 + 2.5
    L5_2.x = L6_2
  else
    L5_2 = A1_2.greenSideNameText
    L6_2 = A1_2.greenEmptyPowerView
    L6_2 = L6_2.x
    L5_2.x = L6_2
  end
  L5_2 = A1_2.greenSideNameText
  L6_2 = A1_2.greenEmptyPowerView
  L6_2 = L6_2.y
  L5_2.y = L6_2
  L5_2 = A1_2.greenSideNameText
  L5_2.rotation = 90
  L5_2 = A1_2.group
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = A1_2.greenSideNameText
  L5_2(L6_2, L7_2)
  L5_2 = L0_1
  L5_2 = L5_2.fixedTextSize
  L6_2 = A1_2.greenSideNameText
  L7_2 = 10
  L8_2 = {}
  L9_2 = 1
  L10_2 = 1
  L11_2 = 1
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L9_2 = A1_2.group
  L10_2 = A1_2.greenEmptyPowerView
  L10_2 = L10_2.height
  L10_2 = L10_2 - 5
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  A1_2.greenSideNameText = L5_2
  L5_2 = A1_2.redSideName
  if not L5_2 then
    L5_2 = log3
    L6_2 = "no red side name set for power indicator"
    L5_2 = L5_2(L6_2)
  end
  A1_2.redSideName = L5_2
  L5_2 = L0_1
  L5_2 = L5_2.stringUTFLength
  L6_2 = A1_2.redSideName
  L5_2 = L5_2(L6_2)
  if 12 < L5_2 then
    L5_2 = L0_1
    L5_2 = L5_2.isStringPersianInAndroid
    L6_2 = A1_2.redSideName
    L7_2 = L6_2
    L6_2 = L6_2.sub
    L8_2 = 1
    L9_2 = 1
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    if L5_2 then
      L5_2 = "..."
      L6_2 = L0_1
      L6_2 = L6_2.utf8sub
      L7_2 = A1_2.redSideName
      L8_2 = 0
      L9_2 = 10
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2 = L5_2 .. L6_2
      A1_2.redSideName = L5_2
    else
      L5_2 = L0_1
      L5_2 = L5_2.utf8sub
      L6_2 = A1_2.redSideName
      L7_2 = 0
      L8_2 = 10
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L6_2 = "..."
      L5_2 = L5_2 .. L6_2
      A1_2.redSideName = L5_2
    end
  end
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = A1_2.redSideName
  L7_2 = 0
  L8_2 = 0
  L9_2 = Constants
  L9_2 = L9_2.fontForSubtitle
  L9_2 = L9_2()
  L10_2 = 10
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  A1_2.redSideNameText = L5_2
  L5_2 = L0_1
  L5_2 = L5_2.isStringPersianInAndroid
  L6_2 = A1_2.redSideName
  L7_2 = L6_2
  L6_2 = L6_2.sub
  L8_2 = 1
  L9_2 = 1
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if L5_2 then
    L5_2 = A1_2.redSideNameText
    L6_2 = A1_2.redEmptyPowerView
    L6_2 = L6_2.x
    L6_2 = L6_2 + 2.5
    L5_2.x = L6_2
  else
    L5_2 = A1_2.redSideNameText
    L6_2 = A1_2.redEmptyPowerView
    L6_2 = L6_2.x
    L5_2.x = L6_2
  end
  L5_2 = A1_2.redSideNameText
  L6_2 = A1_2.redEmptyPowerView
  L6_2 = L6_2.y
  L6_2 = L6_2 + 1
  L5_2.y = L6_2
  L5_2 = A1_2.redSideNameText
  L5_2.rotation = 90
  L5_2 = A1_2.group
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = A1_2.redSideNameText
  L5_2(L6_2, L7_2)
  L5_2 = L0_1
  L5_2 = L5_2.fixedTextSize
  L6_2 = A1_2.redSideNameText
  L7_2 = 10
  L8_2 = {}
  L9_2 = 1
  L10_2 = 1
  L11_2 = 1
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L9_2 = A1_2.group
  L10_2 = A1_2.redEmptyPowerView
  L10_2 = L10_2.height
  L10_2 = L10_2 - 5
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  A1_2.redSideNameText = L5_2
  A1_2.isAnimating = false
  return A1_2
end

new = L2_1

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.redPowerView
  L2_2 = A0_2.gap
  L2_2 = L2_2 / 2
  L1_2.y = L2_2
  L1_2 = A0_2.redPowerView
  L1_2.yScale = 0.001
  L1_2 = A0_2.greenPowerView
  L2_2 = A0_2.gap
  L2_2 = -L2_2
  L2_2 = L2_2 / 2
  L1_2.y = L2_2
  L1_2 = A0_2.greenPowerView
  L1_2.yScale = 0.001
  A0_2.state = "green"
  L1_2 = A0_2.redEmptyPowerView
  L2_2 = L1_2
  L1_2 = L1_2.toBack
  L1_2(L2_2)
  L1_2 = A0_2.greenEmptyPowerView
  L2_2 = L1_2
  L1_2 = L1_2.toBack
  L1_2(L2_2)
  L1_2 = A0_2.redPowerView
  L2_2 = L1_2
  L1_2 = L1_2.toFront
  L1_2(L2_2)
  L1_2 = A0_2.greenPowerView
  L2_2 = L1_2
  L1_2 = L1_2.toFront
  L1_2(L2_2)
  A0_2.firstTime = true
  A0_2.isAnimating = false
end

resetPowerView = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L0_1
  L2_2 = L2_2.isStringPersianInAndroid
  L4_2 = A1_2
  L3_2 = A1_2.sub
  L5_2 = 1
  L6_2 = 1
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  if L2_2 then
    L2_2 = A0_2.greenSideNameText
    L3_2 = A0_2.greenEmptyPowerView
    L3_2 = L3_2.x
    L3_2 = L3_2 + 2
    L2_2.x = L3_2
  end
  L2_2 = L0_1
  L2_2 = L2_2.stringUTFLength
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if 10 < L2_2 then
    L2_2 = L0_1
    L2_2 = L2_2.isStringPersianInAndroid
    L4_2 = A1_2
    L3_2 = A1_2.sub
    L5_2 = 1
    L6_2 = 1
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    if L2_2 then
      L2_2 = "..."
      L3_2 = L0_1
      L3_2 = L3_2.utf8sub
      L4_2 = A1_2
      L5_2 = 0
      L6_2 = 8
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      A1_2 = L2_2 .. L3_2
    else
      L2_2 = L0_1
      L2_2 = L2_2.utf8sub
      L3_2 = A1_2
      L4_2 = 0
      L5_2 = 8
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      L3_2 = "..."
      A1_2 = L2_2 .. L3_2
    end
  end
  L2_2 = A0_2.greenSideNameText
  L2_2.text = A1_2
  L2_2 = L0_1
  L2_2 = L2_2.fixedTextSize
  L3_2 = A0_2.greenSideNameText
  L4_2 = 10
  L5_2 = {}
  L6_2 = 1
  L7_2 = 1
  L8_2 = 1
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L6_2 = A0_2.group
  L7_2 = A0_2.greenEmptyPowerView
  L7_2 = L7_2.height
  L7_2 = L7_2 - 5
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.greenSideNameText = L2_2
end

updateGreenSideText = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L0_1
  L2_2 = L2_2.isStringPersianInAndroid
  L4_2 = A1_2
  L3_2 = A1_2.sub
  L5_2 = 1
  L6_2 = 1
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  if L2_2 then
    L2_2 = A0_2.redSideNameText
    L3_2 = A0_2.redEmptyPowerView
    L3_2 = L3_2.x
    L3_2 = L3_2 + 2
    L2_2.x = L3_2
  end
  L2_2 = L0_1
  L2_2 = L2_2.stringUTFLength
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if 10 < L2_2 then
    L2_2 = L0_1
    L2_2 = L2_2.isStringPersianInAndroid
    L4_2 = A1_2
    L3_2 = A1_2.sub
    L5_2 = 1
    L6_2 = 1
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    if L2_2 then
      L2_2 = "..."
      L3_2 = L0_1
      L3_2 = L3_2.utf8sub
      L4_2 = A1_2
      L5_2 = 0
      L6_2 = 8
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      A1_2 = L2_2 .. L3_2
    else
      L2_2 = L0_1
      L2_2 = L2_2.utf8sub
      L3_2 = A1_2
      L4_2 = 0
      L5_2 = 8
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      L3_2 = "..."
      A1_2 = L2_2 .. L3_2
    end
  end
  L2_2 = A0_2.redSideNameText
  L2_2.text = A1_2
  L2_2 = L0_1
  L2_2 = L2_2.fixedTextSize
  L3_2 = A0_2.redSideNameText
  L4_2 = 10
  L5_2 = {}
  L6_2 = 1
  L7_2 = 1
  L8_2 = 1
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L6_2 = A0_2.group
  L7_2 = A0_2.redEmptyPowerView
  L7_2 = L7_2.height
  L7_2 = L7_2 - 5
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.redSideNameText = L2_2
end

updateRedSideText = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if 1 < A1_2 then
    A1_2 = 1
  elseif A1_2 < -1 then
    A1_2 = -1
  end
  L2_2 = A0_2.isAnimating
  if L2_2 ~= false then
    L2_2 = A0_2.state
    if L2_2 == "red" then
      L2_2 = transition
      L2_2 = L2_2.cancel
      L3_2 = A0_2.redPowerView
      L2_2(L3_2)
    else
      L2_2 = transition
      L2_2 = L2_2.cancel
      L3_2 = A0_2.greenPowerView
      L2_2(L3_2)
    end
  end
  A0_2.isAnimating = true
  
  function L2_2(A0_3)
    local L1_3
    if A0_3 == "green" then
      L1_3 = A0_2
      L1_3.state = "green"
    elseif A0_3 == "red" then
      L1_3 = A0_2
      L1_3.state = "red"
    end
  end
  
  L3_2 = A0_2.firstTime
  if L3_2 == true then
    L3_2 = L2_2
    L4_2 = "green"
    L3_2(L4_2)
    A0_2.firstTime = false
  end
  
  function L3_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    
    function L3_3()
      local L0_4, L1_4
      L0_4 = A0_2
      L0_4.isAnimating = false
    end
    
    function L4_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      
      function L0_4()
        local L0_5, L1_5
        L0_5 = A0_2
        L0_5.isAnimating = false
      end
      
      L1_4 = A0_2
      L1_4 = L1_4.state
      if L1_4 == "green" then
        L1_4 = transition
        L1_4 = L1_4.cancel
        L2_4 = A0_2
        L2_4 = L2_4.greenPowerView
        L1_4(L2_4)
        L1_4 = L2_2
        L2_4 = "red"
        L1_4(L2_4)
        L1_4 = transition
        L1_4 = L1_4.scaleTo
        L2_4 = A0_2
        L2_4 = L2_4.redPowerView
        L3_4 = {}
        L4_4 = A0_2
        L4_4 = L4_4.finalValue
        L4_4 = -L4_4
        L3_4.yScale = L4_4
        L4_4 = L1_1
        L3_4.transition = L4_4
        L3_4.time = 2000
        L3_4.onComplete = L0_4
        L1_4(L2_4, L3_4)
      else
        L1_4 = transition
        L1_4 = L1_4.cancel
        L2_4 = A0_2
        L2_4 = L2_4.redPowerView
        L1_4(L2_4)
        L1_4 = L2_2
        L2_4 = "green"
        L1_4(L2_4)
        L1_4 = transition
        L1_4 = L1_4.scaleTo
        L2_4 = A0_2
        L2_4 = L2_4.greenPowerView
        L3_4 = {}
        L4_4 = A0_2
        L4_4 = L4_4.finalValue
        L3_4.yScale = L4_4
        L4_4 = L1_1
        L3_4.transition = L4_4
        L3_4.time = 2000
        L3_4.onComplete = L0_4
        L1_4(L2_4, L3_4)
      end
    end
    
    if A2_3 then
      L5_3 = transition
      L5_3 = L5_3.scaleTo
      L6_3 = A0_3
      L7_3 = {}
      L7_3.yScale = A1_3
      L8_3 = L1_1
      L7_3.transition = L8_3
      L7_3.time = 1000
      L7_3.onComplete = L4_3
      L5_3(L6_3, L7_3)
    else
      L5_3 = transition
      L5_3 = L5_3.scaleTo
      L6_3 = A0_3
      L7_3 = {}
      L7_3.yScale = A1_3
      L8_3 = L1_1
      L7_3.transition = L8_3
      L7_3.time = 2000
      L7_3.onComplete = L3_3
      L5_3(L6_3, L7_3)
    end
  end
  
  A0_2.finalValue = A1_2
  L4_2 = A0_2.state
  if L4_2 == "green" then
    L4_2 = A0_2.finalValue
    if L4_2 < 0 then
      L4_2 = L3_2
      L5_2 = A0_2.greenPowerView
      L6_2 = 0.001
      L7_2 = true
      L4_2(L5_2, L6_2, L7_2)
    else
      L4_2 = L3_2
      L5_2 = A0_2.greenPowerView
      L6_2 = A0_2.finalValue
      L4_2(L5_2, L6_2)
    end
  else
    L4_2 = A0_2.state
    if L4_2 == "red" then
      L4_2 = A0_2.finalValue
      if 0 <= L4_2 then
        L4_2 = L3_2
        L5_2 = A0_2.redPowerView
        L6_2 = 0.001
        L7_2 = true
        L4_2(L5_2, L6_2, L7_2)
      else
        L4_2 = L3_2
        L5_2 = A0_2.redPowerView
        L6_2 = A0_2.finalValue
        L6_2 = -L6_2
        L4_2(L5_2, L6_2)
      end
    end
  end
  L4_2 = A0_2.redSideNameText
  L5_2 = L4_2
  L4_2 = L4_2.toFront
  L4_2(L5_2)
  L4_2 = A0_2.greenSideNameText
  L5_2 = L4_2
  L4_2 = L4_2.toFront
  L4_2(L5_2)
end

setNumber = L2_1
