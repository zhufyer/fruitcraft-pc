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
L2_1 = "Constants"
L1_1 = L1_1(L2_1)
L2_1 = setmetatable
L3_1 = _M
L4_1 = {}
L4_1.__index = L0_1
L2_1(L3_1, L4_1)
L2_1 = 1

function L3_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.signImageSet
  L3_2 = L3_2[A1_2]
  L3_2.isVisible = true
  L3_2 = A0_2.itemText
  L3_2.text = A2_2
  L3_2 = A0_2.itemText
  L3_2.alpha = 1
end

showSignAndText = L3_1

function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.boxImageSet
  L2_2 = L2_2[1]
  L2_2.isVisible = false
  L2_2 = A0_2.boxImageSet
  L2_2 = L2_2[2]
  L2_2.isVisible = true
  L2_2 = A0_2.itemText
  L2_2.text = A1_2
  L2_2 = A0_2.itemText
  L2_2.alpha = 1
end

openBox = L3_1

function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2.boxImage
  L1_2.rotation = 0
end

setToNormalPos = L3_1

function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  L5_2 = {}
  L6_2 = {}
  L7_2 = L1_1
  L7_2 = L7_2.Path_Assets
  L8_2 = "WheelOfFortune/"
  L9_2 = A0_2
  L7_2 = L7_2 .. L8_2 .. L9_2
  L8_2 = L1_1
  L8_2 = L8_2.Path_Assets
  L9_2 = "WheelOfFortune/"
  L10_2 = A2_2
  L8_2 = L8_2 .. L9_2 .. L10_2
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = L4_2
  L9_2 = L6_2[1]
  L10_2 = A1_2
  L11_2 = A1_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L5_2[1] = L7_2
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = L4_2
  L9_2 = L6_2[2]
  L10_2 = A3_2
  L11_2 = A3_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L5_2[2] = L7_2
  L7_2 = 1
  L8_2 = #L6_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L5_2[L10_2]
    L11_2.isVisible = false
  end
  L7_2 = L4_2
  L8_2 = L5_2
  return L7_2, L8_2
end

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = L0_1
  L3_2 = L3_2.newWithParams
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L3_1
  L5_2 = A1_2.imageNameClose
  L6_2 = 80
  L7_2 = A1_2.imageNameOpen
  L8_2 = 120
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L3_2.boxImageSet = L5_2
  L3_2.boxImage = L4_2
  L4_2 = L3_2.boxImageSet
  L4_2 = L4_2[1]
  L4_2.isVisible = 1
  L4_2 = L3_2.view
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = L3_2.boxImage
  L4_2(L5_2, L6_2)
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = L3_2.view
  L6_2 = ""
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = L1_1
  L11_2 = L11_2.fontForSubtitle
  L11_2 = L11_2()
  L12_2 = 15
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2.itemText = L4_2
  L4_2 = L3_2.itemText
  L5_2 = L3_2.boxImage
  L5_2 = L5_2.y
  L5_2 = -L5_2
  L6_2 = L3_2.boxImage
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 - 10
  L4_2.y = L5_2
  L4_2 = L3_2.itemText
  L4_2.alpha = 0
  L4_2 = L3_1
  L5_2 = "check_sign.png"
  L6_2 = 80
  L7_2 = "uncheck_sign.png"
  L8_2 = 60
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L3_2.signImageSet = L5_2
  L3_2.signImage = L4_2
  L4_2 = L3_2.view
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = L3_2.signImage
  L4_2(L5_2, L6_2)
  return L3_2
end

new = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = 5
  L5_2 = L2_1
  if L5_2 <= 10 then
    L5_2 = L2_1
    if L5_2 == 1 then
      L2_2 = 1
      L1_2 = 1000
      L5_2 = easing
      L3_2 = L5_2.inQuint
    else
      L5_2 = L2_1
      if L5_2 == 10 then
        L2_2 = 0
        L1_2 = 1000
        L5_2 = easing
        L3_2 = L5_2.outQuint
      else
        L5_2 = L2_1
        L5_2 = L5_2 % 2
        if L5_2 == 0 then
          L2_2 = -1
          L1_2 = 50
          L5_2 = easing
          L3_2 = L5_2.linear
        else
          L2_2 = 1
          L1_2 = 50
          L5_2 = easing
          L3_2 = L5_2.linear
        end
      end
    end
    L5_2 = transition
    L5_2 = L5_2.to
    L6_2 = A0_2.boxImage
    L7_2 = {}
    L7_2.time = L1_2
    L8_2 = L4_2 * L2_2
    L7_2.rotation = L8_2
    L7_2.transition = L3_2
    L7_2.tag = "boxAnimation"
    
    function L8_2()
      local L0_3, L1_3
      L0_3 = L2_1
      L0_3 = L0_3 + 1
      L2_1 = L0_3
      L0_3 = animateBox
      L1_3 = A0_2
      L0_3(L1_3)
    end
    
    L7_2.onComplete = L8_2
    L5_2(L6_2, L7_2)
  else
    L5_2 = 1
    L2_1 = L5_2
    L5_2 = animateBox
    L6_2 = A0_2
    L5_2(L6_2)
  end
end

animateBox = L4_1
