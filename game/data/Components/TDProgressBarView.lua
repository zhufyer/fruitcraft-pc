local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Theme"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Core.BaseView"
L1_1 = L1_1(L2_1)
L2_1 = setmetatable
L3_1 = _M
L4_1 = {}
L4_1.__index = L1_1
L2_1(L3_1, L4_1)

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = L1_1
  L3_2 = L3_2.newWithParams
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2.isVertical
  if L4_2 then
    L4_2 = A1_2.isVertical
    L3_2.isVertical = L4_2
  end
  L4_2 = L3_2.isVertical
  if L4_2 then
    L4_2 = A1_2.height
    L5_2 = A1_2.maxValue
    L4_2 = L4_2 / L5_2
    L3_2.multiplier = L4_2
  else
    L4_2 = A1_2.width
    L5_2 = A1_2.maxValue
    L4_2 = L4_2 / L5_2
    L3_2.multiplier = L4_2
  end
  L4_2 = A1_2.maxValue
  L5_2 = L3_2.multiplier
  L4_2 = L4_2 * L5_2
  L3_2.maxValue = L4_2
  L4_2 = A1_2.width
  L3_2.borderWidth = L4_2
  L4_2 = A1_2.height
  L3_2.borderHeight = L4_2
  L4_2 = A1_2.initialValue
  L5_2 = L3_2.multiplier
  L4_2 = L4_2 * L5_2
  if not L4_2 then
    L4_2 = 0
  end
  L3_2.initialValue = L4_2
  L3_2.incrementValue = 0
  L4_2 = L3_2.initialValue
  L5_2 = L3_2.incrementValue
  L4_2 = L4_2 + L5_2
  L3_2.totalValue = L4_2
  L4_2 = L3_2.initialValue
  L3_2.currentValue = L4_2
  L4_2 = A1_2.alpha
  if not L4_2 then
    L4_2 = 0.2
  end
  L3_2.backgroundAlpha = L4_2
  L4_2 = A1_2.label
  L3_2.labelValue = L4_2
  L4_2 = A1_2.borderColor
  if not L4_2 then
    L4_2 = {}
    L5_2 = 1
    L6_2 = 1
    L7_2 = 1
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
  end
  L3_2.borderColor = L4_2
  L4_2 = A1_2.labelColor
  if not L4_2 then
    L4_2 = {}
    L5_2 = 1
    L6_2 = 1
    L7_2 = 1
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
  end
  L3_2.labelColor = L4_2
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  L3_2.rectsGroup = L4_2
  L4_2 = L3_2.isVertical
  if L4_2 then
    L4_2 = L3_2.rectsGroup
    L4_2.anchorY = 1
  else
    L4_2 = L3_2.rectsGroup
    L4_2.anchorX = 0
  end
  L4_2 = L3_2.rectsGroup
  L4_2.anchorChildren = true
  L4_2 = L3_2.view
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = L3_2.rectsGroup
  L4_2(L5_2, L6_2)
  L4_2 = nil
  L5_2 = nil
  L6_2 = nil
  L7_2 = nil
  L8_2 = L3_2.isVertical
  if L8_2 then
    L8_2 = display
    L8_2 = L8_2.newLine
    L9_2 = L3_2.rectsGroup
    L10_2 = L3_2.borderWidth
    L10_2 = L10_2 / 2
    L10_2 = -0.5 - L10_2
    L11_2 = -0.5
    L12_2 = L3_2.borderWidth
    L12_2 = L12_2 / 2
    L12_2 = -0.5 - L12_2
    L13_2 = L3_2.borderHeight
    L13_2 = L13_2 + 0.5
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L4_2 = L8_2
    L8_2 = display
    L8_2 = L8_2.newLine
    L9_2 = L3_2.rectsGroup
    L10_2 = L3_2.borderWidth
    L10_2 = L10_2 / 2
    L10_2 = -0.5 - L10_2
    L11_2 = L3_2.borderHeight
    L11_2 = L11_2 + 0.5
    L12_2 = L3_2.borderWidth
    L12_2 = L12_2 / 2
    L12_2 = L12_2 + 0.5
    L13_2 = L3_2.borderHeight
    L13_2 = L13_2 + 0.5
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L5_2 = L8_2
    L8_2 = display
    L8_2 = L8_2.newLine
    L9_2 = L3_2.rectsGroup
    L10_2 = L3_2.borderWidth
    L10_2 = L10_2 / 2
    L10_2 = L10_2 + 0.5
    L11_2 = L3_2.borderHeight
    L11_2 = L11_2 + 0.5
    L12_2 = L3_2.borderWidth
    L12_2 = L12_2 / 2
    L12_2 = L12_2 + 0.5
    L13_2 = -0.5
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L6_2 = L8_2
    L8_2 = display
    L8_2 = L8_2.newLine
    L9_2 = L3_2.rectsGroup
    L10_2 = L3_2.borderWidth
    L10_2 = L10_2 / 2
    L10_2 = L10_2 + 0.5
    L11_2 = -0.5
    L12_2 = L3_2.borderWidth
    L12_2 = L12_2 / 2
    L12_2 = -0.5 - L12_2
    L13_2 = -0.5
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L7_2 = L8_2
  else
    L8_2 = display
    L8_2 = L8_2.newLine
    L9_2 = L3_2.rectsGroup
    L10_2 = -0.5
    L11_2 = L3_2.borderHeight
    L11_2 = L11_2 / 2
    L11_2 = -0.5 - L11_2
    L12_2 = -0.5
    L13_2 = L3_2.borderHeight
    L13_2 = L13_2 / 2
    L13_2 = L13_2 + 0.5
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L4_2 = L8_2
    L8_2 = display
    L8_2 = L8_2.newLine
    L9_2 = L3_2.rectsGroup
    L10_2 = -0.5
    L11_2 = L3_2.borderHeight
    L11_2 = L11_2 / 2
    L11_2 = -0.5 - L11_2
    L12_2 = L3_2.borderWidth
    L12_2 = L12_2 + 0.5
    L13_2 = L3_2.borderHeight
    L13_2 = L13_2 / 2
    L13_2 = -0.5 - L13_2
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L5_2 = L8_2
    L8_2 = display
    L8_2 = L8_2.newLine
    L9_2 = L3_2.rectsGroup
    L10_2 = L3_2.borderWidth
    L10_2 = L10_2 + 0.5
    L11_2 = L3_2.borderHeight
    L11_2 = L11_2 / 2
    L11_2 = -0.5 - L11_2
    L12_2 = L3_2.borderWidth
    L12_2 = L12_2 + 0.5
    L13_2 = L3_2.borderHeight
    L13_2 = L13_2 / 2
    L13_2 = L13_2 + 0.5
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L6_2 = L8_2
    L8_2 = display
    L8_2 = L8_2.newLine
    L9_2 = L3_2.rectsGroup
    L10_2 = -0.5
    L11_2 = L3_2.borderHeight
    L11_2 = L11_2 / 2
    L11_2 = L11_2 + 0.5
    L12_2 = L3_2.borderWidth
    L12_2 = L12_2 + 0.5
    L13_2 = L3_2.borderHeight
    L13_2 = L13_2 / 2
    L13_2 = L13_2 + 0.5
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L7_2 = L8_2
  end
  L9_2 = L4_2
  L8_2 = L4_2.setStrokeColor
  L10_2 = L3_2.borderColor
  L10_2 = L10_2[1]
  L11_2 = L3_2.borderColor
  L11_2 = L11_2[2]
  L12_2 = L3_2.borderColor
  L12_2 = L12_2[3]
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L9_2 = L5_2
  L8_2 = L5_2.setStrokeColor
  L10_2 = L3_2.borderColor
  L10_2 = L10_2[1]
  L11_2 = L3_2.borderColor
  L11_2 = L11_2[2]
  L12_2 = L3_2.borderColor
  L12_2 = L12_2[3]
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L9_2 = L6_2
  L8_2 = L6_2.setStrokeColor
  L10_2 = L3_2.borderColor
  L10_2 = L10_2[1]
  L11_2 = L3_2.borderColor
  L11_2 = L11_2[2]
  L12_2 = L3_2.borderColor
  L12_2 = L12_2[3]
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L9_2 = L7_2
  L8_2 = L7_2.setStrokeColor
  L10_2 = L3_2.borderColor
  L10_2 = L10_2[1]
  L11_2 = L3_2.borderColor
  L11_2 = L11_2[2]
  L12_2 = L3_2.borderColor
  L12_2 = L12_2[3]
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = L3_2.isVertical
  if L8_2 then
    L8_2 = display
    L8_2 = L8_2.newRect
    L9_2 = L3_2.rectsGroup
    L10_2 = 0
    L11_2 = 0
    L12_2 = L3_2.borderWidth
    L13_2 = L3_2.currentValue
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L3_2.filledBar = L8_2
    L8_2 = L3_2.filledBar
    L8_2.anchorY = 1
    L8_2 = L3_2.filledBar
    L9_2 = L3_2.borderHeight
    L8_2.y = L9_2
    L8_2 = display
    L8_2 = L8_2.newRect
    L9_2 = L3_2.rectsGroup
    L10_2 = 0
    L11_2 = 0
    L12_2 = L3_2.borderWidth
    L13_2 = 0
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L3_2.increasedBar = L8_2
    L8_2 = L3_2.increasedBar
    L8_2.anchorY = 1
    L8_2 = L3_2.increasedBar
    L9_2 = L3_2.borderHeight
    L8_2.y = L9_2
  else
    L8_2 = display
    L8_2 = L8_2.newRect
    L9_2 = L3_2.rectsGroup
    L10_2 = 0
    L11_2 = 0
    L12_2 = L3_2.currentValue
    L13_2 = L3_2.borderHeight
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L3_2.filledBar = L8_2
    L8_2 = L3_2.filledBar
    L8_2.anchorX = 0
    L8_2 = display
    L8_2 = L8_2.newRect
    L9_2 = L3_2.rectsGroup
    L10_2 = 0
    L11_2 = 0
    L12_2 = 0
    L13_2 = L3_2.borderHeight
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L3_2.increasedBar = L8_2
    L8_2 = L3_2.increasedBar
    L8_2.anchorX = 0
  end
  L8_2 = L3_2.filledBar
  L9_2 = L3_2.backgroundAlpha
  L8_2.alpha = L9_2
  L8_2 = L3_2.increasedBar
  L9_2 = L3_2.backgroundAlpha
  L8_2.alpha = L9_2
  L8_2 = L3_2.labelValue
  if L8_2 then
    L8_2 = display
    L8_2 = L8_2.newText
    L9_2 = L3_2.rectsGroup
    L10_2 = L3_2.labelValue
    L11_2 = L3_2.borderWidth
    L11_2 = L11_2 / 2
    L12_2 = 0
    L13_2 = Constants
    L13_2 = L13_2.fontForTitle
    L13_2 = L13_2()
    L14_2 = 13
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L3_2.label = L8_2
    L8_2 = L3_2.label
    L9_2 = L8_2
    L8_2 = L8_2.setFillColor
    L10_2 = L3_2.labelColor
    L10_2 = L10_2[1]
    L11_2 = L3_2.labelColor
    L11_2 = L11_2[2]
    L12_2 = L3_2.labelColor
    L12_2 = L12_2[3]
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = L3_2.isVertical
    if L8_2 then
      L8_2 = L3_2.label
      L8_2.x = 0
      L8_2 = L3_2.label
      L8_2.rotation = -90
      L8_2 = L3_2.label
      L9_2 = L3_2.borderHeight
      L9_2 = L9_2 / 2
      L8_2.y = L9_2
    end
  end
  L8_2 = A1_2.initialBarColor
  if not L8_2 then
    L8_2 = L0_1
    L8_2 = L8_2.colorsSet
    L8_2 = L8_2.GreenColor
  end
  L9_2 = A1_2.incrementalBarColor
  if not L9_2 then
    L9_2 = L0_1
    L9_2 = L9_2.colorsSet
    L9_2 = L9_2.lightGreenColor
  end
  L10_2 = L3_2.filledBar
  L11_2 = L10_2
  L10_2 = L10_2.setFillColor
  L12_2 = L8_2[1]
  L13_2 = L8_2[2]
  L14_2 = L8_2[3]
  L10_2(L11_2, L12_2, L13_2, L14_2)
  L10_2 = L3_2.increasedBar
  L11_2 = L10_2
  L10_2 = L10_2.setFillColor
  L12_2 = L9_2[1]
  L13_2 = L9_2[2]
  L14_2 = L9_2[3]
  L10_2(L11_2, L12_2, L13_2, L14_2)
  L10_2 = L3_2.isVertical
  if L10_2 then
    L10_2 = L3_2.rectsGroup
    L11_2 = L3_2.borderHeight
    L11_2 = L11_2 / 2
    L10_2.y = L11_2
  else
    L10_2 = L3_2.rectsGroup
    L11_2 = L3_2.borderWidth
    L11_2 = -L11_2
    L11_2 = L11_2 / 2
    L10_2.x = L11_2
  end
  return L3_2
end

new = L2_1

function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == nil then
    return
  end
  L5_2 = A3_2 or L5_2
  if not A3_2 then
    L5_2 = 900
  end
  L6_2 = A0_2.multiplier
  L6_2 = A1_2 * L6_2
  A0_2.currentValue = L6_2
  L6_2 = A0_2.currentValue
  L7_2 = A0_2.maxValue
  if L6_2 > L7_2 then
    L6_2 = A0_2.maxValue
    A0_2.currentValue = L6_2
  end
  if A2_2 == false then
    L6_2 = A0_2.isVertical
    if L6_2 then
      L6_2 = A0_2.filledBar
      L7_2 = A0_2.currentValue
      L6_2.height = L7_2
    else
      L6_2 = A0_2.filledBar
      L7_2 = A0_2.currentValue
      L6_2.width = L7_2
    end
    if A4_2 then
      L6_2 = A4_2
      L6_2()
    end
  elseif A2_2 == true then
    L6_2 = A0_2.isVertical
    if L6_2 then
      L6_2 = transition
      L6_2 = L6_2.to
      L7_2 = A0_2.filledBar
      L8_2 = {}
      L8_2.time = L5_2
      L9_2 = A0_2.currentValue
      L8_2.height = L9_2
      L9_2 = easing
      L9_2 = L9_2.outCubic
      L8_2.transition = L9_2
      L8_2.tag = "progressBar"
      
      function L9_2()
        local L0_3, L1_3
        L0_3 = A4_2
        if L0_3 then
          L0_3 = A4_2
          L0_3()
        end
      end
      
      L8_2.onComplete = L9_2
      L6_2(L7_2, L8_2)
    else
      L6_2 = transition
      L6_2 = L6_2.to
      L7_2 = A0_2.filledBar
      L8_2 = {}
      L8_2.time = L5_2
      L9_2 = A0_2.currentValue
      L8_2.width = L9_2
      L9_2 = easing
      L9_2 = L9_2.outCubic
      L8_2.transition = L9_2
      L8_2.tag = "progressBar"
      
      function L9_2()
        local L0_3, L1_3
        L0_3 = A4_2
        if L0_3 then
          L0_3 = A4_2
          L0_3()
        end
      end
      
      L8_2.onComplete = L9_2
      L6_2(L7_2, L8_2)
    end
  end
  L6_2 = A0_2.currentValue
  A0_2.totalValue = L6_2
end

setValue = L2_1

function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == nil then
    L4_2 = true
    return L4_2
  end
  L4_2 = A3_2 or L4_2
  if not A3_2 then
    L4_2 = 1500
  end
  L5_2 = A0_2.multiplier
  L5_2 = A1_2 * L5_2
  A0_2.incrementValue = L5_2
  L5_2 = A0_2.isVertical
  if L5_2 then
    L5_2 = A0_2.increasedBar
    L6_2 = A0_2.filledBar
    L6_2 = L6_2.y
    L7_2 = A0_2.filledBar
    L7_2 = L7_2.height
    L6_2 = L6_2 - L7_2
    L5_2.y = L6_2
  else
    L5_2 = A0_2.increasedBar
    L6_2 = A0_2.filledBar
    L6_2 = L6_2.width
    L5_2.x = L6_2
  end
  L5_2 = A0_2.currentValue
  L6_2 = A0_2.incrementValue
  L5_2 = L5_2 + L6_2
  L6_2 = A0_2.maxValue
  if L5_2 > L6_2 then
    L5_2 = A0_2.maxValue
    L6_2 = A0_2.currentValue
    L5_2 = L5_2 - L6_2
    if A2_2 == true then
      L6_2 = A0_2.isVertical
      if L6_2 then
        L6_2 = transition
        L6_2 = L6_2.to
        L7_2 = A0_2.increasedBar
        L8_2 = {}
        L8_2.time = L4_2
        L8_2.height = L5_2
        L8_2.tag = "progressBar"
        
        function L9_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3.setValue
          L2_3 = 0
          L3_3 = false
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = A0_2
          L0_3 = L0_3.increasedBar
          L1_3 = A0_2
          L1_3 = L1_3.borderHeight
          L0_3.y = L1_3
          L0_3 = A0_2
          L0_3 = L0_3.increasedBar
          L0_3.height = 0
          L0_3 = transition
          L0_3 = L0_3.to
          L1_3 = A0_2
          L1_3 = L1_3.increasedBar
          L2_3 = {}
          L3_3 = L4_2
          L2_3.time = L3_3
          L3_3 = A0_2
          L3_3 = L3_3.incrementValue
          L4_3 = L5_2
          L3_3 = L3_3 - L4_3
          L2_3.height = L3_3
          L3_3 = easing
          L3_3 = L3_3.outCubic
          L2_3.transition = L3_3
          L2_3.tag = "progressBar"
          L0_3(L1_3, L2_3)
        end
        
        L8_2.onComplete = L9_2
        L6_2(L7_2, L8_2)
      else
        L6_2 = transition
        L6_2 = L6_2.to
        L7_2 = A0_2.increasedBar
        L8_2 = {}
        L8_2.time = L4_2
        L8_2.width = L5_2
        L8_2.tag = "progressBar"
        
        function L9_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3.setValue
          L2_3 = 0
          L3_3 = false
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = A0_2
          L0_3 = L0_3.increasedBar
          L0_3.x = 0
          L0_3 = A0_2
          L0_3 = L0_3.increasedBar
          L0_3.width = 0
          L0_3 = transition
          L0_3 = L0_3.to
          L1_3 = A0_2
          L1_3 = L1_3.increasedBar
          L2_3 = {}
          L3_3 = L4_2
          L2_3.time = L3_3
          L3_3 = A0_2
          L3_3 = L3_3.incrementValue
          L4_3 = L5_2
          L3_3 = L3_3 - L4_3
          L2_3.width = L3_3
          L3_3 = easing
          L3_3 = L3_3.outCubic
          L2_3.transition = L3_3
          L2_3.tag = "progressBar"
          L0_3(L1_3, L2_3)
        end
        
        L8_2.onComplete = L9_2
        L6_2(L7_2, L8_2)
      end
    else
      L7_2 = A0_2
      L6_2 = A0_2.setValue
      L8_2 = 0
      L9_2 = false
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = A0_2.isVertical
      if L6_2 then
        L6_2 = A0_2.increasedBar
        L7_2 = A0_2.borderHeight
        L6_2.y = L7_2
        L6_2 = A0_2.increasedBar
        L7_2 = A0_2.incrementValue
        L7_2 = L7_2 - L5_2
        L6_2.height = L7_2
      else
        L6_2 = A0_2.increasedBar
        L6_2.x = 0
        L6_2 = A0_2.increasedBar
        L7_2 = A0_2.incrementValue
        L7_2 = L7_2 - L5_2
        L6_2.width = L7_2
      end
    end
  elseif A2_2 == true then
    L5_2 = A0_2.isVertical
    if L5_2 then
      L5_2 = transition
      L5_2 = L5_2.to
      L6_2 = A0_2.increasedBar
      L7_2 = {}
      L7_2.time = L4_2
      L8_2 = A0_2.incrementValue
      L7_2.height = L8_2
      L8_2 = easing
      L8_2 = L8_2.outCubic
      L7_2.transition = L8_2
      L7_2.tag = "progressBar"
      L5_2(L6_2, L7_2)
    else
      L5_2 = transition
      L5_2 = L5_2.to
      L6_2 = A0_2.increasedBar
      L7_2 = {}
      L7_2.time = L4_2
      L8_2 = A0_2.incrementValue
      L7_2.width = L8_2
      L8_2 = easing
      L8_2 = L8_2.outCubic
      L7_2.transition = L8_2
      L7_2.tag = "progressBar"
      L5_2(L6_2, L7_2)
    end
  else
    L5_2 = A0_2.isVertical
    if L5_2 then
      L5_2 = A0_2.increasedBar
      L6_2 = A0_2.incrementValue
      L5_2.height = L6_2
    else
      L5_2 = A0_2.increasedBar
      L6_2 = A0_2.incrementValue
      L5_2.width = L6_2
    end
  end
  L5_2 = A0_2.totalValue
  L6_2 = A0_2.incrementValue
  L5_2 = L5_2 + L6_2
  A0_2.totalValue = L5_2
end

increaseBar = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2.view
  L4_2 = A0_2.view
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L4_2 = A1_2 - L4_2
  L3_2.x = L4_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L2_1
