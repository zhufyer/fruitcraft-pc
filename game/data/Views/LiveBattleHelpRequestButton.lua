local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)

function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
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
  A1_2.w = A2_2
  A1_2.h = A3_2
  A1_2.onTouch = A4_2
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "LiveBattle/Clock.png"
  L6_2 = L6_2 .. L7_2
  L7_2 = A2_2
  L8_2 = A3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  A1_2.clockimg = L5_2
  L5_2 = A1_2.clockimg
  L5_2.x = 0
  L5_2 = A1_2.clockimg
  L5_2.y = 0
  L5_2 = A1_2.group
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = A1_2.clockimg
  L5_2(L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "LiveBattle/clock-hands-hi.png"
  L6_2 = L6_2 .. L7_2
  L7_2 = A2_2 * 0.5
  L8_2 = 32 * A2_2
  L8_2 = L8_2 / 412
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  A1_2.secondHand = L5_2
  L5_2 = A1_2.secondHand
  L5_2.anchorX = 0.2257
  L5_2 = A1_2.secondHand
  L5_2.anchorY = 0.5
  L5_2 = A1_2.secondHand
  L5_2.x = 0.4
  L5_2 = A1_2.secondHand
  L5_2.y = 2
  L5_2 = A1_2.secondHand
  L6_2 = A1_2.secondHand
  L6_2 = L6_2.rotation
  L6_2 = L6_2 - 90
  L5_2.rotation = L6_2
  L5_2 = A1_2.group
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = A1_2.secondHand
  L5_2(L6_2, L7_2)
  L5_2 = A1_2.group
  L5_2.x = 0
  L5_2 = A1_2.group
  L5_2.y = 0
  A1_2.timerId = 0
  L5_2 = touch
  A1_2.touch = L5_2
  L5_2 = A1_2.group
  L6_2 = L5_2
  L5_2 = L5_2.addEventListener
  L7_2 = "touch"
  L8_2 = A1_2
  L5_2(L6_2, L7_2, L8_2)
  A1_2.canClick = true
  return A1_2
end

new = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2.canClick = true
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = transition
    L1_3 = L1_3.to
    L2_3 = A0_2
    L2_3 = L2_3.secondHand
    L3_3 = {}
    L4_3 = A0_2
    L4_3 = L4_3.secondHand
    L4_3 = L4_3.rotation
    L5_3 = A1_2
    L5_3 = 360 / L5_3
    L4_3 = L4_3 + L5_3
    L3_3.rotation = L4_3
    L3_3.time = 500
    L4_3 = easing
    L4_3 = L4_3.inOutCubic
    L3_3.transition = L4_3
    L1_3(L2_3, L3_3)
  end
  
  L3_2 = timer
  L3_2 = L3_2.performWithDelay
  L4_2 = 1000
  L5_2 = L2_2
  L6_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2.timerId = L3_2
end

startClock = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = timer
  L0_2 = L0_2.cancel
  L1_2 = self
  L1_2 = L1_2.timerId
  L0_2(L1_2)
end

stopClock = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.scaleTo
    L1_3 = A0_2
    L1_3 = L1_3.group
    L2_3 = {}
    L2_3.xScale = 1
    L2_3.yScale = 1
    L3_3 = easing
    L3_3 = L3_3.inOutBack
    L2_3.transition = L3_3
    L2_3.time = 500
    L0_3(L1_3, L2_3)
  end
  
  L2_2 = transition
  L2_2 = L2_2.scaleTo
  L3_2 = A0_2.group
  L4_2 = {}
  L4_2.xScale = 1.3
  L4_2.yScale = 1.3
  L5_2 = easing
  L5_2 = L5_2.inOutBack
  L4_2.transition = L5_2
  L4_2.time = 500
  L4_2.onComplete = L1_2
  L2_2(L3_2, L4_2)
end

shakeClock = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.phase
  if L2_2 == "ended" then
    L2_2 = A0_2.canClick
    if L2_2 == true then
      L3_2 = A0_2
      L2_2 = A0_2.shakeClock
      L2_2(L3_2)
      L2_2 = A0_2.onTouch
      L2_2()
      A0_2.canClick = false
    end
  end
end

touch = L0_1
