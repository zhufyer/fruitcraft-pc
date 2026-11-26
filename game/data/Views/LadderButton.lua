local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Components.TDTimeIndicatorButton"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Views.LadderDetailsView"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Utils.Analytics"
L2_1 = L2_1(L3_1)
L3_1 = setmetatable
L4_1 = _M
L5_1 = {}
L5_1.__index = L0_1
L3_1(L4_1, L5_1)

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  L2_2 = L2_2.click
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.rem
  if L2_2 < 0 then
    L2_2 = mainPlayer
    L2_2.canAccessLadder = false
  end
end

click = L3_1

function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1
  L3_2 = L3_2.new
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = print
  L5_2 = "ladder finish time: "
  L6_2 = mainPlayer
  L6_2 = L6_2.ladder
  L6_2 = L6_2.finishTime
  L5_2 = L5_2 .. L6_2
  L4_2(L5_2)
  L4_2 = mainPlayer
  L4_2 = L4_2.ladder
  L4_2 = L4_2.finishTime
  L3_2.endTime = L4_2
  L4_2 = L3_2.timerGroup
  L4_2.alpha = 1
  L4_2 = L3_2.image
  L4_2.anchorY = 1
  L4_2 = L3_2.image
  L4_2.anchorChildren = true
  
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L2_1
    L0_3 = L0_3.logEvent
    L1_3 = "Ladder Button Touched"
    L0_3(L1_3)
    L0_3 = transition
    L0_3 = L0_3.pause
    L1_3 = "LadderButtonMovement"
    L0_3(L1_3)
    L0_3 = L3_2
    L0_3 = L0_3.image
    L0_3.y = 0
    L0_3 = L3_2
    L0_3 = L0_3.image
    L0_3.xScale = 1
    L0_3 = L3_2
    L0_3 = L0_3.image
    L0_3.yScale = 1
    L0_3 = L1_1
    L1_3 = L0_3
    L0_3 = L0_3.new
    L2_3 = {}
    L3_3 = Constants
    L3_3 = L3_3.Path_Assets
    L4_3 = "Ladder/ladder-icon.png"
    L3_3 = L3_3 .. L4_3
    L2_3.itemImage = L3_3
    L2_3.imageWidth = 60
    L2_3.imageHeight = 60
    L3_3 = mainPlayer
    L3_3 = L3_3.ladder
    L2_3.ladderInfo = L3_3
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = display
    L1_3 = L1_3.contentCenterX
    L0_3.x = L1_3
    L1_3 = display
    L1_3 = L1_3.contentCenterY
    L0_3.y = L1_3
    L1_3 = A1_2
    L1_3 = L1_3.parent
    L2_3 = L1_3
    L1_3 = L1_3.insert
    L3_3 = L0_3.view
    L1_3(L2_3, L3_3)
  end
  
  L3_2.onRelease = L4_2
  L4_2 = Runtime
  L5_2 = L4_2
  L4_2 = L4_2.addEventListener
  L6_2 = "click"
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  return L3_2
end

new = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = transition
  L1_2 = L1_2.to
  L2_2 = A0_2
  L3_2 = {}
  L3_2.time = 500
  L3_2.alpha = 0
  L4_2 = easing
  L4_2 = L4_2.inQuint
  L3_2.transition = L4_2
  
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.removeListener
    L0_3(L1_3)
    L0_3 = Runtime
    L1_3 = L0_3
    L0_3 = L0_3.removeEventListener
    L2_3 = "click"
    L3_3 = A0_2
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A0_2
    L0_3 = L0_3.timerGroup
    L1_3 = L0_3
    L0_3 = L0_3.removeSelf
    L0_3(L1_3)
    L0_3 = A0_2
    L0_3.timerGroup = nil
    L0_3 = A0_2
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = nil
      A0_2 = L0_3
    end
  end
  
  L3_2.onComplete = L4_2
  L1_2(L2_2, L3_2)
end

removeLadderButton = L3_1
