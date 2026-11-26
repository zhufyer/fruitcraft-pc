local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Constants"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = 200
L3_1 = nil
L4_1 = nil

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if not A1_2 then
    L3_2 = {}
    A1_2 = L3_2
  end
  L3_2 = setmetatable
  L4_2 = A1_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  A0_2.__index = A0_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  A1_2.view = L3_2
  L3_2 = A1_2.counter
  if not L3_2 then
    L3_2 = L0_1
    L3_2 = L3_2.LIVE_BATTLE_ROUND_TIME
  end
  A1_2.counter = L3_2
  A1_2.first = true
  A1_2.nextRoundFunction = A2_2
  A1_2.state = 0
  return A1_2
end

new = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2.state = 1
  L1_2 = display
  L1_2 = L1_2.newImageRect
  L2_2 = A0_2.view
  L3_2 = L0_1
  L3_2 = L3_2.Path_Assets
  L4_2 = "Buildings/FC-listellipse-views.png"
  L3_2 = L3_2 .. L4_2
  L4_2 = 35
  L5_2 = 35
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.coin = L1_2
  L1_2 = A0_2.coin
  L1_2.x = 0
  L1_2 = A0_2.coin
  L1_2.y = 0
  L1_2 = A0_2.counter
  L2_2 = L2_1
  if L1_2 > L2_2 then
    L1_2 = L2_1
    A0_2.counter = L1_2
  end
  L1_2 = display
  L1_2 = L1_2.newText
  L2_2 = A0_2.view
  L3_2 = L1_1
  L3_2 = L3_2.adjustNumber
  L4_2 = A0_2.counter
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2.coin
  L4_2 = L4_2.x
  L5_2 = A0_2.coin
  L5_2 = L5_2.y
  L6_2 = Theme
  L6_2 = L6_2.textStyle
  L6_2 = L6_2[3]
  L6_2 = L6_2.font
  L7_2 = 22
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.text = L1_2
  L1_2 = A0_2.text
  L2_2 = L1_2
  L1_2 = L1_2.setFillColor
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2)
  
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = A0_2
    L1_3 = L1_3.coin
    L2_3 = {}
    L2_3.xScale = 1
    L2_3.time = 100
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L0_3 = L0_3.counter
    L1_3 = L2_1
    if L0_3 > L1_3 then
      L0_3 = A0_2
      L1_3 = L2_1
      L0_3.counter = L1_3
    end
    L0_3 = A0_2
    L0_3 = L0_3.text
    L1_3 = L1_1
    L1_3 = L1_3.adjustNumber
    L2_3 = A0_2
    L2_3 = L2_3.counter
    L1_3 = L1_3(L2_3)
    L0_3.text = L1_3
  end
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L0_3 = L0_3.first
    if L0_3 == false then
      L0_3 = A0_2
      L1_3 = A0_2
      L1_3 = L1_3.counter
      L1_3 = L1_3 - 1
      L0_3.counter = L1_3
      L0_3 = transition
      L0_3 = L0_3.to
      L1_3 = A0_2
      L1_3 = L1_3.coin
      L2_3 = {}
      L2_3.xScale = 1.0E-4
      L2_3.time = 100
      L3_3 = L1_2
      L2_3.onComplete = L3_3
      L0_3(L1_3, L2_3)
    end
    L0_3 = A0_2
    L0_3.first = false
    L0_3 = A0_2
    L1_3 = timer
    L1_3 = L1_3.performWithDelay
    L2_3 = 1000
    L3_3 = L2_2
    L1_3 = L1_3(L2_3, L3_3)
    L0_3.tm = L1_3
    L0_3 = A0_2
    L0_3 = L0_3.counter
    if L0_3 < 4 then
      L0_3 = A0_2
      L0_3 = L0_3.counter
      if 0 < L0_3 then
      end
    end
    L0_3 = A0_2
    L0_3 = L0_3.counter
    if L0_3 < 1 then
      L0_3 = A0_2
      L0_3.state = -1
      L0_3 = timer
      L0_3 = L0_3.cancel
      L1_3 = A0_2
      L1_3 = L1_3.tm
      L0_3(L1_3)
      L0_3 = A0_2
      L0_3 = L0_3.nextRoundFunction
      L0_3()
    end
  end
  
  L3_2 = L2_2
  L3_2()
end

startCoinTimer = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.tm
  if L2_2 ~= nil then
    L2_2 = timer
    L2_2 = L2_2.cancel
    L3_2 = A0_2.tm
    L2_2(L3_2)
  end
  A0_2.state = -1
  if A1_2 == true then
    L2_2 = A0_2.nextRoundFunction
    L2_2()
  end
end

stopCoinTimer = L5_1

function L5_1(A0_2)
  local L1_2, L2_2
  A0_2.state = -2
  L1_2 = A0_2.tm
  if L1_2 ~= nil then
    L1_2 = timer
    L1_2 = L1_2.pause
    L2_2 = A0_2.tm
    L1_2(L2_2)
  end
end

pauseCoinTimer = L5_1

function L5_1(A0_2)
  local L1_2, L2_2
  A0_2.state = 1
  L1_2 = A0_2.tm
  if L1_2 ~= nil then
    L1_2 = timer
    L1_2 = L1_2.resume
    L2_2 = A0_2.tm
    L1_2(L2_2)
  end
end

resumeCoinTimer = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = A0_2.view
  L6_2 = L0_1
  L6_2 = L6_2.Path_Assets
  L7_2 = "Quest/Node1-2.png"
  L6_2 = L6_2 .. L7_2
  L7_2 = 34
  L8_2 = 34
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  A0_2.coin1 = L4_2
  L4_2 = A0_2.coin1
  L4_2.x = 0
  L4_2 = A0_2.coin1
  L4_2.y = 0.1
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = A0_2.view
  L6_2 = L0_1
  L6_2 = L6_2.Path_Assets
  L7_2 = "Quest/Node1-1.png"
  L6_2 = L6_2 .. L7_2
  L7_2 = 34
  L8_2 = 34
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  A0_2.coin2 = L4_2
  L4_2 = A0_2.coin2
  L4_2.x = 0
  L4_2 = A0_2.coin2
  L4_2.y = 0
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = A0_2.view
  L6_2 = L0_1
  L6_2 = L6_2.Path_Assets
  L7_2 = "Quest/NodeR.png"
  L6_2 = L6_2 .. L7_2
  L7_2 = 32
  L8_2 = 16
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L3_1 = L4_2
  L4_2 = L3_1
  L4_2.x = 0
  L4_2 = L3_1
  L4_2.y = 0
  L4_2 = L3_1
  L4_2.anchorX = 0.5
  L4_2 = L3_1
  L4_2.anchorY = 1
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = A0_2.view
  L6_2 = L0_1
  L6_2 = L6_2.Path_Assets
  L7_2 = "Quest/NodeR.png"
  L6_2 = L6_2 .. L7_2
  L7_2 = 32
  L8_2 = 16
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_1 = L4_2
  L4_2 = L4_1
  L4_2.x = 0
  L4_2 = L4_1
  L4_2.y = 0
  L4_2 = L4_1
  L4_2.rotation = 180
  L4_2 = L4_1
  L4_2.anchorX = 0.5
  L4_2 = L4_1
  L4_2.anchorY = 1
  L4_2 = 1000
  
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2
    L0_3 = L0_3.coin1
    L1_3 = L0_3
    L0_3 = L0_3.toFront
    L0_3(L1_3)
    L0_3 = L4_1
    L1_3 = L0_3
    L0_3 = L0_3.toBack
    L0_3(L1_3)
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L3_1
    L2_3 = {}
    L3_3 = A2_2
    if not L3_3 then
      L3_3 = "pieTimer"
    end
    L2_3.tag = L3_3
    L3_3 = easing
    L3_3 = L3_3.outCirc
    L2_3.transition = L3_3
    L3_3 = A1_2
    L3_3 = L3_3 * 360
    L2_3.rotation = L3_3
    L3_3 = L4_2
    L4_3 = A1_2
    L4_3 = L4_3 * 2
    L4_3 = L4_3 - 1
    L3_3 = L3_3 * L4_3
    L2_3.time = L3_3
    
    function L3_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = transition
      L0_4 = L0_4.to
      L1_4 = A0_2
      L1_4 = L1_4.view
      L2_4 = {}
      L3_4 = A2_2
      if not L3_4 then
        L3_4 = "pieTimer"
      end
      L2_4.tag = L3_4
      L2_4.time = 300
      L3_4 = easing
      L3_4 = L3_4.inSine
      L2_4.transition = L3_4
      L2_4.xScale = 1
      L2_4.yScale = 1
      L0_4(L1_4, L2_4)
    end
    
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
  end
  
  if A3_2 ~= false then
    if 0.5 < A1_2 then
      L6_2 = transition
      L6_2 = L6_2.to
      L7_2 = A0_2.view
      L8_2 = {}
      L8_2.tag = A2_2
      L8_2.time = 300
      L9_2 = easing
      L9_2 = L9_2.outSine
      L8_2.transition = L9_2
      L8_2.xScale = 1.3
      L8_2.yScale = 1.3
      
      function L9_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = transition
        L0_3 = L0_3.to
        L1_3 = L3_1
        L2_3 = {}
        L3_3 = A2_2
        L2_3.tag = L3_3
        L3_3 = easing
        L3_3 = L3_3.inCubic
        L2_3.transition = L3_3
        L2_3.rotation = 180
        L3_3 = L4_2
        L3_3 = L3_3 / 2
        L2_3.time = L3_3
        L3_3 = L5_2
        L2_3.onComplete = L3_3
        L0_3(L1_3, L2_3)
      end
      
      L8_2.onComplete = L9_2
      L6_2(L7_2, L8_2)
    else
      L6_2 = transition
      L6_2 = L6_2.to
      L7_2 = A0_2.view
      L8_2 = {}
      L8_2.tag = A2_2
      L8_2.time = 300
      L8_2.xScale = 1.3
      L8_2.yScale = 1.3
      
      function L9_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = transition
        L0_3 = L0_3.to
        L1_3 = L3_1
        L2_3 = {}
        L3_3 = A2_2
        L2_3.tag = L3_3
        L3_3 = easing
        L3_3 = L3_3.outCirc
        L2_3.transition = L3_3
        L3_3 = A1_2
        L3_3 = L3_3 * 360
        L2_3.rotation = L3_3
        L3_3 = L4_2
        L2_3.time = L3_3
        
        function L3_3()
          local L0_4, L1_4, L2_4, L3_4
          L0_4 = transition
          L0_4 = L0_4.to
          L1_4 = A0_2
          L1_4 = L1_4.view
          L2_4 = {}
          L3_4 = A2_2
          L2_4.tag = L3_4
          L2_4.time = 300
          L3_4 = easing
          L3_4 = L3_4.inSine
          L2_4.transition = L3_4
          L2_4.xScale = 1
          L2_4.yScale = 1
          L0_4(L1_4, L2_4)
        end
        
        L2_3.onComplete = L3_3
        L0_3(L1_3, L2_3)
      end
      
      L8_2.onComplete = L9_2
      L6_2(L7_2, L8_2)
    end
  else
    if 0.5 < A1_2 then
      L6_2 = A0_2.coin1
      L7_2 = L6_2
      L6_2 = L6_2.toFront
      L6_2(L7_2)
      L6_2 = L4_1
      L7_2 = L6_2
      L6_2 = L6_2.toBack
      L6_2(L7_2)
    end
    L6_2 = L3_1
    L7_2 = A1_2 * 360
    L6_2.rotation = L7_2
  end
end

startPieTimer = L5_1

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = A0_2.view
  L5_2 = L0_1
  L5_2 = L5_2.Path_Assets
  L6_2 = "Quest/Node1-2.png"
  L5_2 = L5_2 .. L6_2
  L6_2 = 34
  L7_2 = 34
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  A0_2.coin1 = L3_2
  L3_2 = A0_2.coin1
  L3_2.x = 0
  L3_2 = A0_2.coin1
  L3_2.y = 0.1
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = A0_2.view
  L5_2 = L0_1
  L5_2 = L5_2.Path_Assets
  L6_2 = "Quest/Node1-1.png"
  L5_2 = L5_2 .. L6_2
  L6_2 = 34
  L7_2 = 34
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  A0_2.coin2 = L3_2
  L3_2 = A0_2.coin2
  L3_2.x = 0
  L3_2 = A0_2.coin2
  L3_2.y = 0
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = A0_2.view
  L5_2 = L0_1
  L5_2 = L5_2.Path_Assets
  L6_2 = "Quest/NodeR.png"
  L5_2 = L5_2 .. L6_2
  L6_2 = 32
  L7_2 = 16
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_1 = L3_2
  L3_2 = L3_1
  L3_2.x = 0
  L3_2 = L3_1
  L3_2.y = 0
  L3_2 = L3_1
  L3_2.anchorX = 0.5
  L3_2 = L3_1
  L3_2.anchorY = 1
  L3_2 = L3_1
  L4_2 = A1_2 * 360
  L3_2.rotation = L4_2
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = A0_2.view
  L5_2 = L0_1
  L5_2 = L5_2.Path_Assets
  L6_2 = "Quest/NodeR.png"
  L5_2 = L5_2 .. L6_2
  L6_2 = 32
  L7_2 = 16
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_1 = L3_2
  L3_2 = L4_1
  L3_2.x = 0
  L3_2 = L4_1
  L3_2.y = 0
  L3_2 = L4_1
  L3_2.anchorX = 0.5
  L3_2 = L4_1
  L3_2.anchorY = 1
  L3_2 = L4_1
  L3_2.rotation = 180
  if 0.5 < A1_2 then
    L3_2 = A0_2.coin1
    L4_2 = L3_2
    L3_2 = L3_2.toFront
    L3_2(L4_2)
    L3_2 = L4_1
    L4_2 = L3_2
    L3_2 = L3_2.toBack
    L3_2(L4_2)
  end
  L3_2 = 1000
  
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L3_1
    L1_3 = L0_3
    L0_3 = L0_3.toFront
    L0_3(L1_3)
    L0_3 = L4_1
    L1_3 = L0_3
    L0_3 = L0_3.toFront
    L0_3(L1_3)
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L3_1
    L2_3 = {}
    L3_3 = A2_2
    if not L3_3 then
      L3_3 = "pieTimer"
    end
    L2_3.tag = L3_3
    L3_3 = easing
    L3_3 = L3_3.outCirc
    L2_3.transition = L3_3
    L2_3.rotation = 0
    L3_3 = L3_2
    L4_3 = A1_2
    L4_3 = L4_3 * 2
    L4_3 = L4_3 - 1
    L3_3 = L3_3 * L4_3
    L2_3.time = L3_3
    
    function L3_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = transition
      L0_4 = L0_4.to
      L1_4 = A0_2
      L1_4 = L1_4.view
      L2_4 = {}
      L3_4 = A2_2
      if not L3_4 then
        L3_4 = "pieTimer"
      end
      L2_4.tag = L3_4
      L2_4.time = 300
      L3_4 = easing
      L3_4 = L3_4.inSine
      L2_4.transition = L3_4
      L2_4.xScale = 1
      L2_4.yScale = 1
      L0_4(L1_4, L2_4)
    end
    
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
  end
  
  if 0.5 < A1_2 then
    L5_2 = transition
    L5_2 = L5_2.to
    L6_2 = A0_2.view
    L7_2 = {}
    L7_2.tag = A2_2
    L7_2.time = 300
    L8_2 = easing
    L8_2 = L8_2.outSine
    L7_2.transition = L8_2
    L7_2.xScale = 1.3
    L7_2.yScale = 1.3
    
    function L8_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = transition
      L0_3 = L0_3.to
      L1_3 = L3_1
      L2_3 = {}
      L3_3 = A2_2
      L2_3.tag = L3_3
      L3_3 = easing
      L3_3 = L3_3.inCubic
      L2_3.transition = L3_3
      L2_3.rotation = 180
      L3_3 = L3_2
      L3_3 = L3_3 / 2
      L2_3.time = L3_3
      L3_3 = L4_2
      L2_3.onComplete = L3_3
      L0_3(L1_3, L2_3)
    end
    
    L7_2.onComplete = L8_2
    L5_2(L6_2, L7_2)
  else
    L5_2 = transition
    L5_2 = L5_2.to
    L6_2 = A0_2.view
    L7_2 = {}
    L7_2.tag = A2_2
    L7_2.time = 300
    L7_2.xScale = 1.3
    L7_2.yScale = 1.3
    
    function L8_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = transition
      L0_3 = L0_3.to
      L1_3 = L3_1
      L2_3 = {}
      L3_3 = A2_2
      L2_3.tag = L3_3
      L3_3 = easing
      L3_3 = L3_3.outCirc
      L2_3.transition = L3_3
      L2_3.rotation = 0
      L3_3 = L3_2
      L2_3.time = L3_3
      
      function L3_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = transition
        L0_4 = L0_4.to
        L1_4 = A0_2
        L1_4 = L1_4.view
        L2_4 = {}
        L3_4 = A2_2
        L2_4.tag = L3_4
        L2_4.time = 300
        L3_4 = easing
        L3_4 = L3_4.inSine
        L2_4.transition = L3_4
        L2_4.xScale = 1
        L2_4.yScale = 1
        L0_4(L1_4, L2_4)
      end
      
      L2_3.onComplete = L3_3
      L0_3(L1_3, L2_3)
    end
    
    L7_2.onComplete = L8_2
    L5_2(L6_2, L7_2)
  end
end

resetPieTimer = L5_1
