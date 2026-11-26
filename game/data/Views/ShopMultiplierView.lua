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
  L4_2 = A1_2.imageName
  if not L4_2 then
    L4_2 = Constants
    L4_2 = L4_2.Path_Assets
    L5_2 = "Shop/Shop Multiple Background.png"
    L4_2 = L4_2 .. L5_2
  end
  L3_2.imageName = L4_2
  L4_2 = A1_2.imageWidth
  if not L4_2 then
    L4_2 = 36
  end
  L3_2.imageWidth = L4_2
  L4_2 = A1_2.imageHeight
  if not L4_2 then
    L4_2 = 19
  end
  L3_2.imageHeight = L4_2
  L4_2 = A1_2.text
  L3_2.text = L4_2
  L4_2 = A1_2.animated
  if not L4_2 then
    L4_2 = false
  end
  L3_2.animated = L4_2
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = L3_2.view
  L6_2 = L3_2.imageName
  L7_2 = L3_2.imageWidth
  L8_2 = L3_2.imageHeight
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L3_2.multiplierImage = L4_2
  L4_2 = {}
  L5_2 = L3_2.view
  L4_2.parent = L5_2
  L5_2 = "x"
  L6_2 = L3_2.text
  L5_2 = L5_2 .. L6_2
  L4_2.text = L5_2
  L4_2.x = 0
  L4_2.y = 0
  L4_2.width = 40
  L5_2 = Constants
  L5_2 = L5_2.fontForTitle
  L5_2 = L5_2()
  L4_2.font = L5_2
  L4_2.fontSize = 8
  L4_2.align = "center"
  L5_2 = L3_2.text
  if 1000 < L5_2 then
    L4_2.fontSize = 7
  end
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L3_2.label = L5_2
  L5_2 = L3_2.label
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.redColor
  L7_2, L8_2, L9_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = L3_2.animated
  if L5_2 == true then
    function L5_2()
      local L0_3, L1_3, L2_3
      
      L0_3 = transition
      L0_3 = L0_3.to
      L1_3 = L3_2
      L1_3 = L1_3.view
      L2_3 = {}
      L2_3.time = 500
      L2_3.xScale = 1
      L2_3.yScale = 1
      L2_3.tag = "multiplierTrans"
      L0_3(L1_3, L2_3)
    end
    
    L6_2 = timer
    L6_2 = L6_2.performWithDelay
    L7_2 = 1010
    
    function L8_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = transition
      L0_3 = L0_3.to
      L1_3 = L3_2
      L1_3 = L1_3.view
      L2_3 = {}
      L2_3.time = 500
      L2_3.xScale = 0.9
      L2_3.yScale = 0.9
      L2_3.tag = "multiplierTrans"
      L3_3 = L5_2
      L2_3.onComplete = L3_3
      L0_3(L1_3, L2_3)
    end
    
    L9_2 = 0
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L3_2.animationTimer = L6_2
  end
  return L3_2
end

new = L1_1

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = timer
  L1_2 = L1_2.cancel
  L2_2 = A0_2.animationTimer
  L1_2(L2_2)
  A0_2.animationTimer = nil
  L1_2 = transition
  L1_2 = L1_2.cancel
  L2_2 = "multiplierTrans"
  L1_2(L2_2)
  L1_2 = A0_2.view
  L1_2.xScale = 1
  L1_2 = A0_2.view
  L1_2.yScale = 1
end

cancelAnimation = L1_1
