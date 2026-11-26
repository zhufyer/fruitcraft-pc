local L0_1, L1_1, L2_1, L3_1
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
L0_1(L1_1)
L0_1 = require
L1_1 = "Utils.Toolbox"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = 0.3
scaleIncreaseAmount = L2_1
L2_1 = 900
numberUpdateAnimationLength = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = super
  L3_2 = L3_2.newWithParams
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L3_2.animating = false
  L3_2.queuedValue = nil
  L4_2 = A1_2.styleDepth
  if not L4_2 then
    L4_2 = Theme
    L4_2 = L4_2.textStyle
    L4_2 = #L4_2
  end
  L5_2 = A1_2.font
  if not L5_2 then
    L5_2 = Theme
    L5_2 = L5_2.textStyle
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.font
  end
  L6_2 = A1_2.fontSize
  if not L6_2 then
    L6_2 = Theme
    L6_2 = L6_2.textStyle
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.fontSize
  end
  L7_2 = L0_1
  L7_2 = L7_2.shortenLongNumber
  L8_2 = tostring
  L9_2 = A1_2.value
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  if not L7_2 then
    L7_2 = "0"
  end
  L8_2 = L1_1
  L8_2 = L8_2.adjustNumber
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  L7_2 = L8_2
  L8_2 = A1_2.labelColor
  if not L8_2 then
    L8_2 = Theme
    L8_2 = L8_2.textStyle
    L8_2 = L8_2[L4_2]
    L8_2 = L8_2.fontColor
  end
  L3_2.textColor = L8_2
  L8_2 = A1_2.labelAnimationColor
  if not L8_2 then
    L8_2 = L3_2.textColor
  end
  L3_2.animationTextColor = L8_2
  L8_2 = A1_2.value
  if not L8_2 then
    L8_2 = 0
  end
  L3_2.value = L8_2
  L3_2.label = nil
  L8_2 = {}
  L3_2.timers = L8_2
  if L7_2 then
    L8_2 = display
    L8_2 = L8_2.newText
    L9_2 = {}
    L10_2 = L3_2.view
    L9_2.parent = L10_2
    L9_2.text = L7_2
    L10_2 = A1_2.x
    L9_2.x = L10_2
    L10_2 = A1_2.y
    L9_2.y = L10_2
    L10_2 = A1_2.width
    L9_2.width = L10_2
    L10_2 = A1_2.height
    L9_2.height = L10_2
    L10_2 = A1_2.align
    L9_2.align = L10_2
    L9_2.font = L5_2
    L9_2.fontSize = L6_2
    L8_2 = L8_2(L9_2)
    L3_2.label = L8_2
    L8_2 = L3_2.label
    L9_2 = L8_2
    L8_2 = L8_2.setFillColor
    L10_2 = L3_2.textColor
    L10_2 = L10_2[1]
    L11_2 = L3_2.textColor
    L11_2 = L11_2[2]
    L12_2 = L3_2.textColor
    L12_2 = L12_2[3]
    L8_2(L9_2, L10_2, L11_2, L12_2)
  end
  return L3_2
end

new = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2.animationsCanceled = true
  L1_2 = pairs
  L2_2 = A0_2.timers
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = timer
    L6_2 = L6_2.cancel
    L7_2 = L5_2
    L6_2(L7_2)
  end
  L1_2 = {}
  A0_2.timers = L1_2
  A0_2.animating = false
  A0_2.queuedValue = nil
  L1_2 = A0_2.finalValue
  if not L1_2 then
    L1_2 = A0_2.value
  end
  A0_2.value = L1_2
  L1_2 = A0_2.label
  L1_2.xScale = 1
  L1_2 = A0_2.label
  L1_2.yScale = 1
  L2_2 = A0_2
  L1_2 = A0_2.setLabelText
  L3_2 = A0_2.value
  L4_2 = A0_2.showSign
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.label
  if L1_2 ~= nil then
    L1_2 = A0_2.label
    L2_2 = L1_2
    L1_2 = L1_2.setFillColor
    L3_2 = A0_2.textColor
    L3_2 = L3_2[1]
    L4_2 = A0_2.textColor
    L4_2 = L4_2[2]
    L5_2 = A0_2.textColor
    L5_2 = L5_2[3]
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end

cancelAndFinishAnimation = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A2_2 and 0 < A1_2 then
    L3_2 = A0_2.label
    L4_2 = "+"
    L5_2 = L1_1
    L5_2 = L5_2.adjustNumber
    L6_2 = L0_1
    L6_2 = L6_2.shortenLongNumber
    L7_2 = A1_2
    L6_2, L7_2 = L6_2(L7_2)
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L4_2 .. L5_2
    L3_2.text = L4_2
  else
    L3_2 = A0_2.label
    L4_2 = L1_1
    L4_2 = L4_2.adjustNumber
    L5_2 = L0_1
    L5_2 = L5_2.shortenLongNumber
    L6_2 = A1_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2.text = L4_2
  end
end

setLabelText = L2_1

function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  if A1_2 == nil then
    return
  end
  L4_2 = A0_2.timers
  L4_2[4] = nil
  A0_2.showSign = A3_2
  L4_2 = A0_2.animating
  if L4_2 == false then
    if A2_2 then
      A0_2.value = A1_2
      L5_2 = A0_2
      L4_2 = A0_2.setLabelText
      L6_2 = A0_2.value
      L7_2 = A3_2
      L4_2(L5_2, L6_2, L7_2)
      return
    end
    A0_2.animationsCanceled = false
    L4_2 = A0_2.value
    if L4_2 == A1_2 then
      return
    end
    A0_2.animating = true
    A0_2.queuedValue = nil
    A0_2.finalValue = A1_2
    L4_2 = {}
    L5_2 = {}
    L6_2 = 300
    L7_2 = A0_2.scaleIncreaseAmount
    if L7_2 == 0 then
      L6_2 = 60
    end
    L7_2 = L6_2 / 30
    L8_2 = A0_2.scaleIncreaseAmount
    L8_2 = L8_2 / L7_2
    L9_2 = ipairs
    L10_2 = A0_2.textColor
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L14_2 = A0_2.animationTextColor
      L14_2 = L14_2[L12_2]
      L14_2 = L14_2 - L13_2
      L14_2 = L14_2 / L7_2
      L4_2[L12_2] = L14_2
      L5_2[L12_2] = L13_2
    end
    L9_2 = 0
    L10_2 = 1
    
    function L11_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
      L0_3 = A0_2
      L0_3 = L0_3.label
      L1_3 = A0_2
      L1_3 = L1_3.label
      L1_3 = L1_3.xScale
      L2_3 = L10_2
      L3_3 = L8_2
      L2_3 = L2_3 * L3_3
      L1_3 = L1_3 + L2_3
      L0_3.xScale = L1_3
      L0_3 = A0_2
      L0_3 = L0_3.label
      L1_3 = A0_2
      L1_3 = L1_3.label
      L1_3 = L1_3.yScale
      L2_3 = L10_2
      L3_3 = L8_2
      L2_3 = L2_3 * L3_3
      L1_3 = L1_3 + L2_3
      L0_3.yScale = L1_3
      L0_3 = ipairs
      L1_3 = L5_2
      L0_3, L1_3, L2_3 = L0_3(L1_3)
      for L3_3, L4_3 in L0_3, L1_3, L2_3 do
        L5_3 = L5_2
        L6_3 = L5_2
        L6_3 = L6_3[L3_3]
        L7_3 = L10_2
        L8_3 = L4_2
        L8_3 = L8_3[L3_3]
        L7_3 = L7_3 * L8_3
        L6_3 = L6_3 + L7_3
        L5_3[L3_3] = L6_3
      end
      L0_3 = A0_2
      L0_3 = L0_3.label
      L1_3 = L0_3
      L0_3 = L0_3.setFillColor
      L2_3 = L5_2
      L2_3 = L2_3[1]
      L3_3 = L5_2
      L3_3 = L3_3[2]
      L4_3 = L5_2
      L4_3 = L4_3[3]
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = L9_2
      L0_3 = L0_3 + 1
      L9_2 = L0_3
      L0_3 = L9_2
      L1_3 = L7_2
      if L0_3 >= L1_3 then
        L0_3 = L10_2
        if 0 < L0_3 then
          L0_3 = A0_2
          L0_3 = L0_3.timers
          L0_3[1] = nil
          L0_3 = A0_2
          L0_3 = L0_3.value
          L1_3 = A0_2
          L1_3 = L1_3.value
          L2_3 = A0_2
          L2_3 = L2_3.numberUpdateAnimationLength
          L3_3 = L2_3 / 30
          L4_3 = A1_2
          L4_3 = L4_3 - L0_3
          L4_3 = L4_3 / L3_3
          L5_3 = 0
          
          function L6_3()
            local L0_4, L1_4, L2_4, L3_4, L4_4
            L0_4 = L1_3
            L1_4 = L4_3
            L0_4 = L0_4 + L1_4
            L1_3 = L0_4
            L0_4 = A0_2
            L1_4 = L0_4
            L0_4 = L0_4.setLabelText
            L2_4 = L1_3
            L3_4 = A3_2
            L0_4(L1_4, L2_4, L3_4)
            L0_4 = L5_3
            L0_4 = L0_4 + 1
            L5_3 = L0_4
            L0_4 = L5_3
            L1_4 = L3_3
            if L0_4 >= L1_4 then
              L0_4 = A0_2
              L0_4 = L0_4.timers
              L0_4[2] = nil
              L0_4 = -1
              L10_2 = L0_4
              L0_4 = 0
              L9_2 = L0_4
              L0_4 = A0_2
              L1_4 = L0_4
              L0_4 = L0_4.setLabelText
              L2_4 = A1_2
              L3_4 = A3_2
              L0_4(L1_4, L2_4, L3_4)
              L0_4 = A0_2
              L1_4 = A1_2
              L0_4.value = L1_4
              L0_4 = A0_2
              L0_4 = L0_4.animationsCanceled
              if L0_4 then
                return
              end
              L0_4 = L11_2
              L0_4()
              L0_4 = A0_2
              L0_4 = L0_4.timers
              L1_4 = timer
              L1_4 = L1_4.performWithDelay
              L2_4 = 30
              L3_4 = L11_2
              L4_4 = L7_2
              L4_4 = L4_4 - 1
              L1_4 = L1_4(L2_4, L3_4, L4_4)
              L0_4[3] = L1_4
            end
          end
          
          L7_3 = A0_2
          L7_3 = L7_3.animationsCanceled
          if L7_3 then
            return
          end
          L7_3 = L6_3
          L7_3()
          L7_3 = A0_2
          L7_3 = L7_3.timers
          L8_3 = timer
          L8_3 = L8_3.performWithDelay
          L9_3 = 30
          L10_3 = L6_3
          L11_3 = L3_3 - 1
          L8_3 = L8_3(L9_3, L10_3, L11_3)
          L7_3[2] = L8_3
      end
      else
        L0_3 = L9_2
        L1_3 = L7_2
        if L0_3 >= L1_3 then
          L0_3 = A0_2
          L0_3 = L0_3.timers
          L0_3[3] = nil
          L0_3 = A0_2
          L0_3 = L0_3.label
          L0_3.xScale = 1
          L0_3 = A0_2
          L0_3 = L0_3.label
          L0_3.yScale = 1
          L0_3 = A0_2
          L0_3.animating = false
        end
      end
    end
    
    L12_2 = A0_2.animationsCanceled
    if L12_2 then
      return
    end
    L12_2 = L11_2
    L12_2()
    L12_2 = A0_2.timers
    L13_2 = timer
    L13_2 = L13_2.performWithDelay
    L14_2 = 30
    L15_2 = L11_2
    L16_2 = L7_2 - 1
    L13_2 = L13_2(L14_2, L15_2, L16_2)
    L12_2[1] = L13_2
  else
    L4_2 = A0_2.animationsCanceled
    if L4_2 then
      return
    end
    A0_2.queuedValue = A1_2
    L4_2 = A0_2.timers
    L5_2 = timer
    L5_2 = L5_2.performWithDelay
    L6_2 = 1000
    
    function L7_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setValue
      L2_3 = A0_2
      L2_3 = L2_3.queuedValue
      L3_3 = A2_2
      L4_3 = A0_2
      L4_3 = L4_3.showSign
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    
    L8_2 = 1
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2[4] = L5_2
  end
end

setValue = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "text" then
    L2_2 = true
    L3_2 = A0_2.label
    L3_2 = L3_2.text
    return L2_2, L3_2
  end
  L2_2 = false
  L3_2 = nil
  return L2_2, L3_2
end

customIndex = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == "text" then
    L3_2 = tonumber
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = rawset
      L5_2 = A0_2
      L6_2 = "value"
      L7_2 = L3_2
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = A0_2.label
      L5_2 = L1_1
      L5_2 = L5_2.adjustNumber
      L6_2 = L0_1
      L6_2 = L6_2.shortenLongNumber
      L7_2 = tostring
      L8_2 = A2_2
      L7_2, L8_2 = L7_2(L8_2)
      L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2.text = L5_2
    else
      L4_2 = rawset
      L5_2 = A0_2
      L6_2 = "value"
      L7_2 = 0
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = A0_2.label
      L4_2.text = A2_2
    end
    L4_2 = true
    return L4_2
  end
  L3_2 = false
  return L3_2
end

customSet = L2_1

function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A4_2 == nil then
    L6_2 = {}
    L7_2 = A1_2
    L8_2 = A2_2
    L9_2 = A3_2
    L10_2 = 1
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L6_2[3] = L9_2
    L6_2[4] = L10_2
    A0_2.textColor = L6_2
    if A5_2 ~= true then
      L6_2 = A0_2.textColor
      A0_2.animationTextColor = L6_2
    end
    L6_2 = A0_2.label
    L7_2 = L6_2
    L6_2 = L6_2.setFillColor
    L8_2 = A1_2
    L9_2 = A2_2
    L10_2 = A3_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  else
    L6_2 = {}
    L7_2 = A1_2
    L8_2 = A2_2
    L9_2 = A3_2
    L10_2 = A4_2
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L6_2[3] = L9_2
    L6_2[4] = L10_2
    A0_2.textColor = L6_2
    if A5_2 ~= true then
      L6_2 = A0_2.textColor
      A0_2.animationTextColor = L6_2
    end
    L6_2 = A0_2.label
    L7_2 = L6_2
    L6_2 = L6_2.setFillColor
    L8_2 = A1_2
    L9_2 = A2_2
    L10_2 = A3_2
    L11_2 = A4_2
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end

setFillColor = L2_1
