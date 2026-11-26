local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.BaseView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Components.Animation"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "composer"
L3_1 = L3_1(L4_1)
L4_1 = setmetatable
L5_1 = _M
L6_1 = {}
L6_1.__index = L0_1
L4_1(L5_1, L6_1)
L4_1 = nil
L5_1 = nil

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L0_1
  L2_2 = L2_2.new
  L3_2 = L0_1
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = L2_2.view
  L5_2 = 0
  L6_2 = 0
  L7_2 = 570
  L8_2 = 360
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.backgroundRect = L3_2
  L3_2 = L2_2.backgroundRect
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L2_2.backgroundRect
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L3_2 = L2_2.backgroundRect
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L3_2 = L2_2.backgroundRect
  L4_2 = L3_2
  L3_2 = L3_2.addEventListener
  L5_2 = "tap"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L2_2.backgroundRect
  L4_2 = L3_2
  L3_2 = L3_2.addEventListener
  L5_2 = "touch"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = L2_2.view
  L5_2 = 0
  L6_2 = 0
  L7_2 = 640
  L8_2 = 480
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.imagesContainerRect = L3_2
  L3_2 = L2_2.imagesContainerRect
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L3_2.height = L4_2
  L3_2 = L2_2.imagesContainerRect
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 * 1.5
  L3_2.width = L4_2
  L3_2 = L2_2.imagesContainerRect
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L3_2 = L2_2.imagesContainerRect
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L3_2 = L2_2.imagesContainerRect
  L3_2.alpha = 0
  return L2_2
end

new = L6_1
L6_1 = _M
L6_1 = L6_1.new
L7_1 = _M
L8_1 = _M
L6_1(L7_1, L8_1)

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = {}
  L2_2.type = "image"
  L2_2.filename = A1_2
  L3_2 = A0_2.imagesContainerRect
  L3_2.fill = L2_2
  L3_2 = A0_2.imagesContainerRect
  L3_2.alpha = 0
  L3_2 = transition
  L3_2 = L3_2.to
  L4_2 = A0_2.imagesContainerRect
  L5_2 = {}
  L5_2.time = 1000
  L5_2.alpha = 1
  L6_2 = transition
  L6_2 = L6_2.inExpo
  L5_2.easing = L6_2
  L3_2(L4_2, L5_2)
end

function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = 0
  if A2_2 then
    L4_2 = L2_1
    L5_2 = L4_2
    L4_2 = L4_2.new
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    L4_1 = L4_2
    L4_2 = L4_1
    L4_2 = L4_2.view
    L5_2 = display
    L5_2 = L5_2.contentCenterX
    L4_2.x = L5_2
    L4_2 = L4_1
    L4_2 = L4_2.view
    L5_2 = display
    L5_2 = L5_2.contentCenterY
    L4_2.y = L5_2
    L4_2 = A0_2.view
    L5_2 = L4_2
    L4_2 = L4_2.insert
    L6_2 = L4_1
    L6_2 = L6_2.view
    L4_2(L5_2, L6_2)
  end
  L4_2 = ipairs
  L5_2 = A1_2.imageAddress
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A1_2.delayBeforShowImage
    L9_2 = L9_2[L7_2]
    L3_2 = L3_2 + L9_2
    L9_2 = timer
    L9_2 = L9_2.performWithDelay
    L10_2 = L3_2
    
    function L11_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = L6_1
      L1_3 = A0_2
      L2_3 = A1_2
      L2_3 = L2_3.imageAddress
      L3_3 = L7_2
      L2_3 = L2_3[L3_3]
      L0_3(L1_3, L2_3)
    end
    
    L9_2(L10_2, L11_2)
  end
  L4_2 = A1_2.delayBeforShowImage
  L5_2 = A1_2.delayBeforShowImage
  L5_2 = #L5_2
  L4_2 = L4_2[L5_2]
  L3_2 = L3_2 + L4_2
  L4_2 = timer
  L4_2 = L4_2.performWithDelay
  L5_2 = L3_2
  
  function L6_2(A0_3)
    local L1_3, L2_3
    L5_1 = L1_3
    L1_3 = L4_1
    L2_3 = L1_3
    L1_3 = L1_3.destroyAnimation
    L1_3(L2_3)
    L1_3 = L3_1
    L1_3 = L1_3.gotoScene
    L2_3 = A1_2
    L2_3 = L2_3.nextScene
    L1_3(L2_3)
    L1_3 = A1_2
    L1_3 = L1_3.completionCallback
    if L1_3 then
      L1_3 = A1_2
      L1_3 = L1_3.completionCallback
      L1_3()
    end
  end
  
  L4_2 = L4_2(L5_2, L6_2)
  L5_1 = L4_2
  return A0_2
end

manageMovie = L7_1

function L7_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L1_2 = L0_2
  L0_2 = L0_2.destroyAnimation
  L0_2(L1_2)
  L0_2 = L5_1
  if L0_2 then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = L5_1
    L0_2(L1_2)
    L0_2 = nil
    L5_1 = L0_2
  end
end

exitStorySceneFrame = L7_1
