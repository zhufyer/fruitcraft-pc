local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.KeyboardAvoider"
L1_1 = L1_1(L2_1)
L2_1 = _M
L3_1 = _M
L2_1.__index = L3_1
L2_1 = display
L2_1 = L2_1.contentCenterX
L3_1 = display
L3_1 = L3_1.contentCenterY
L4_1 = display
L4_1 = L4_1.contentWidth
L5_1 = display
L5_1 = L5_1.contentHeight

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = assert
  L3_2 = A1_2 ~= nil
  L4_2 = "name of the scene needs to be provided in the newScene function parameters"
  L2_2(L3_2, L4_2)
  L2_2 = L0_1
  L2_2 = L2_2.newScene
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.create
  L2_2.create = L3_2
  L3_2 = A0_2.show
  L2_2.show = L3_2
  L3_2 = A0_2.hide
  L2_2.hide = L3_2
  L3_2 = A0_2.destroy
  L2_2.destroy = L3_2
  L3_2 = setupListeners
  L4_2 = L2_2
  L3_2(L4_2)
  return L2_2
end

newScene = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.view
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  A0_2.contentGroup = L3_2
  L3_2 = A0_2.contentGroup
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L3_2 = A0_2.contentGroup
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L4_2 = L2_2
  L3_2 = L2_2.insert
  L5_2 = A0_2.contentGroup
  L3_2(L4_2, L5_2)
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = L2_2
  L5_2 = L2_1
  L6_2 = L3_1
  L7_2 = 570
  L8_2 = 360
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.mask = L3_2
  L3_2 = A0_2.mask
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Theme
  L5_2 = L5_2.colorsSet
  L5_2 = L5_2.blackColor
  L5_2 = L5_2[1]
  L6_2 = Theme
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.blackColor
  L6_2 = L6_2[2]
  L7_2 = Theme
  L7_2 = L7_2.colorsSet
  L7_2 = L7_2.blackColor
  L7_2 = L7_2[3]
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2.mask
  L3_2.alpha = 0.5
  L3_2 = A0_2.mask
  L4_2 = L3_2
  L3_2 = L3_2.toBack
  L3_2(L4_2)
  L3_2 = A0_2.mask
  L3_2.isHitTestable = true
  L3_2 = A0_2.mask
  L4_2 = L3_2
  L3_2 = L3_2.addEventListener
  L5_2 = "tap"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = L1_1
    L0_3 = L0_3.dismiss
    L0_3()
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.mask
  L4_2 = L3_2
  L3_2 = L3_2.addEventListener
  L5_2 = "touch"
  
  function L6_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "began" then
      L1_3 = L1_1
      L1_3 = L1_3.dismiss
      L1_3()
    end
    L1_3 = true
    return L1_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
end

create = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = L1_1
    L4_2 = L4_2.reset
    L5_2 = A0_2.contentGroup
    L4_2(L5_2)
    L4_2 = showWithAnimation
    L5_2 = A0_2
    L4_2(L5_2)
  elseif L3_2 == "did" then
  end
end

show = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = transition
  L1_2 = L1_2.to
  L2_2 = A0_2.contentGroup
  L3_2 = {}
  L3_2.time = 120
  L3_2.xScale = 1.08
  L3_2.yScale = 1.08
  L3_2.alpha = 0.3
  L4_2 = easing
  L4_2 = L4_2.outQuart
  L3_2.transition = L4_2
  L3_2.tag = "hideOverlay"
  
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = A0_2
    L1_3 = L1_3.contentGroup
    L2_3 = {}
    L2_3.time = 120
    L2_3.xScale = 1
    L2_3.yScale = 1
    L2_3.alpha = 0
    L3_3 = easing
    L3_3 = L3_3.outBounce
    L2_3.transition = L3_3
    L2_3.tag = "hideOverlay"
    L0_3(L1_3, L2_3)
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = A0_2
    L1_3 = L1_3.mask
    L2_3 = {}
    L2_3.time = 200
    L2_3.alpha = 0
    L2_3.tag = "hideOverlay"
    
    function L3_3()
      local L0_4, L1_4
      L0_4 = L0_1
      L0_4 = L0_4.hideOverlay
      L0_4()
    end
    
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L3_2.onComplete = L4_2
  L1_2(L2_2, L3_2)
end

hideWithAnimation = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = transition
  L1_2 = L1_2.cancel
  L2_2 = "hideOverlay"
  L1_2(L2_2)
  L1_2 = A0_2.contentGroup
  L1_2.alpha = 0
  L1_2 = transition
  L1_2 = L1_2.to
  L2_2 = A0_2.contentGroup
  L3_2 = {}
  L3_2.time = 120
  L3_2.xScale = 1.08
  L3_2.yScale = 1.08
  L3_2.alpha = 0.7
  L4_2 = easing
  L4_2 = L4_2.outQuart
  L3_2.transition = L4_2
  
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = A0_2
    L1_3 = L1_3.contentGroup
    L2_3 = {}
    L2_3.time = 120
    L2_3.xScale = 1
    L2_3.yScale = 1
    L2_3.alpha = 1
    L3_3 = easing
    L3_3 = L3_3.outBounce
    L2_3.transition = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L3_2.onComplete = L4_2
  L1_2(L2_2, L3_2)
end

showWithAnimation = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
  elseif L3_2 == "did" then
  end
end

hide = L6_1

function L6_1(A0_2)
  local L1_2
end

destroy = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.addEventListener
  L3_2 = "create"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.addEventListener
  L3_2 = "show"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.addEventListener
  L3_2 = "hide"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.addEventListener
  L3_2 = "destroy"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end

setupListeners = L6_1
