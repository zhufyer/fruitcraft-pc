local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.BaseView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Components.TDCircularProgressBarView"
L1_1 = L1_1(L2_1)
L2_1 = setmetatable
L3_1 = _M
L4_1 = {}
L4_1.__index = L0_1
L2_1(L3_1, L4_1)
L2_1 = 2

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = 1
  L3_2 = 3
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    function L6_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      
      L0_3 = A1_2
      L1_3 = L5_2
      if L0_3 ~= L1_3 then
        L0_3 = A0_2
        L0_3 = L0_3.circularProgressBarViews
        L1_3 = L5_2
        L0_3 = L0_3[L1_3]
        L1_3 = L0_3
        L0_3 = L0_3.setValue
        L2_3 = 110
        L3_3 = true
        
        function L4_3()
          local L0_4, L1_4
          L0_4 = A0_2
          L0_4 = L0_4.abilityLabels
          L1_4 = L5_2
          L0_4 = L0_4[L1_4]
          L0_4.alpha = 1
          L0_4 = A0_2
          L0_4.touchIsActive = true
        end
        
        L0_3(L1_3, L2_3, L3_3, L4_3)
      else
        L0_3 = A0_2
        L0_3 = L0_3.circularProgressBarViews
        L1_3 = L5_2
        L0_3 = L0_3[L1_3]
        L0_3.isTouched = true
        L0_3 = A0_2
        L0_3 = L0_3.circularProgressBarViews
        L1_3 = L5_2
        L0_3 = L0_3[L1_3]
        L1_3 = L0_3
        L0_3 = L0_3.setValue
        L2_3 = -10
        L0_3(L1_3, L2_3)
        L0_3 = A0_2
        L0_3 = L0_3.circularProgressBarViews
        L1_3 = L5_2
        L0_3 = L0_3[L1_3]
        L0_3 = L0_3.view
        L0_3.alpha = 0.6
      end
    end
    
    L7_2 = A0_2.circularProgressBarViews
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.isTouched
    if L7_2 ~= true then
      L7_2 = A0_2.abilityLabels
      L7_2 = L7_2[L5_2]
      L7_2.alpha = 0.5
      L7_2 = A0_2.circularProgressBarViews
      L7_2 = L7_2[L5_2]
      L8_2 = L7_2
      L7_2 = L7_2.setValue
      L9_2 = 0
      L10_2 = false
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = L6_2
      L7_2()
    end
  end
end

touchSuccessCallback = L3_1

function L3_1(A0_2, A1_2)
  local L2_2
  if A0_2 then
    L2_2 = A0_2.touchIsActive
    if L2_2 then
      L2_2 = A0_2.circularProgressBarViews
      L2_2 = L2_2[A1_2]
      if L2_2 then
        L2_2 = A0_2.circularProgressBarViews
        L2_2 = L2_2[A1_2]
        L2_2 = L2_2.isTouched
        if L2_2 ~= true then
          L2_2 = A0_2.items
          L2_2 = L2_2[A1_2]
          L2_2 = L2_2.touchCallback
          if L2_2 then
            L2_2 = A0_2.items
            L2_2 = L2_2[A1_2]
            L2_2 = L2_2.touchCallback
            L2_2()
          end
          L2_2 = L1_1
          L2_2.animationStepSize = 0.6666666666666666
          A0_2.touchIsActive = false
        end
      end
    end
  end
end

touchListener = L3_1

function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = L0_1
  L3_2 = L3_2.newWithParams
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2.items
  L3_2.items = L4_2
  L3_2.touchIsActive = true
  L4_2 = {}
  L3_2.circularProgressBarViews = L4_2
  L4_2 = {}
  L3_2.abilityLabels = L4_2
  L4_2 = 1
  L5_2 = 3
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = {}
    L8_2.id = L7_2
    L8_2.value = 110
    L9_2 = L3_2.items
    L9_2 = L9_2[L7_2]
    L9_2 = L9_2.size
    L8_2.size = L9_2
    L9_2 = L3_2.items
    L9_2 = L9_2[L7_2]
    L9_2 = L9_2.fillImage
    L8_2.fillImage = L9_2
    L9_2 = L3_2.circularProgressBarViews
    L10_2 = L1_1
    L11_2 = L10_2
    L10_2 = L10_2.new
    L12_2 = L8_2
    L10_2 = L10_2(L11_2, L12_2)
    L9_2[L7_2] = L10_2
    L9_2 = L3_2.view
    L10_2 = L9_2
    L9_2 = L9_2.insert
    L11_2 = L3_2.circularProgressBarViews
    L11_2 = L11_2[L7_2]
    L11_2 = L11_2.view
    L9_2(L10_2, L11_2)
    L9_2 = L3_2.circularProgressBarViews
    L9_2 = L9_2[L7_2]
    L9_2 = L9_2.view
    L9_2.y = 0
    L9_2 = L3_2.circularProgressBarViews
    L9_2 = L9_2[L7_2]
    L9_2 = L9_2.view
    L10_2 = 2 - L7_2
    L11_2 = math
    L11_2 = L11_2.pow
    L12_2 = -1
    L13_2 = L7_2
    L11_2 = L11_2(L12_2, L13_2)
    L10_2 = L10_2 * L11_2
    L11_2 = L3_2.circularProgressBarViews
    L11_2 = L11_2[L7_2]
    L11_2 = L11_2.view
    L11_2 = L11_2.width
    L12_2 = L2_1
    L11_2 = L11_2 + L12_2
    L10_2 = L10_2 * L11_2
    L9_2.x = L10_2
    L9_2 = L3_2.circularProgressBarViews
    L9_2 = L9_2[L7_2]
    L9_2 = L9_2.view
    L10_2 = L9_2
    L9_2 = L9_2.addEventListener
    L11_2 = "touch"
    
    function L12_2()
      local L0_3, L1_3, L2_3
      L0_3 = L3_2
      L1_3 = L0_3
      L0_3 = L0_3.touchListener
      L2_3 = L7_2
      L0_3(L1_3, L2_3)
    end
    
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = L3_2.circularProgressBarViews
    L9_2 = L9_2[L7_2]
    L9_2.isTouched = false
    L9_2 = L3_2.abilityLabels
    L10_2 = display
    L10_2 = L10_2.newText
    L11_2 = L3_2.view
    L12_2 = L3_2.items
    L12_2 = L12_2[L7_2]
    L12_2 = L12_2.label
    L13_2 = L3_2.circularProgressBarViews
    L13_2 = L13_2[L7_2]
    L13_2 = L13_2.view
    L13_2 = L13_2.x
    L14_2 = 0
    L15_2 = Constants
    L15_2 = L15_2.fontForTitle
    L15_2 = L15_2()
    L16_2 = 6
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L9_2[L7_2] = L10_2
  end
  return L3_2
end

new = L3_1
