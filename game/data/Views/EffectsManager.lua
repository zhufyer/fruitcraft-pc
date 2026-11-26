local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Constants"
L0_1 = L0_1(L1_1)
L1_1 = audio
L1_1 = L1_1.loadSound
L2_1 = L0_1.Path_Assets
L3_1 = "Audio/FC-reveal.wav"
L2_1 = L2_1 .. L3_1
L1_1 = L1_1(L2_1)
L2_1 = display
L2_1 = L2_1.newRect
L3_1 = 0
L4_1 = 0
L5_1 = 570
L6_1 = 360
L2_1 = L2_1(L3_1, L4_1, L5_1, L6_1)
L3_1 = display
L3_1 = L3_1.contentCenterX
L2_1.x = L3_1
L3_1 = display
L3_1 = L3_1.contentCenterY
L2_1.y = L3_1
L4_1 = L2_1
L3_1 = L2_1.setFillColor
L5_1 = 0
L6_1 = 0
L7_1 = 0
L8_1 = 0.1
L3_1(L4_1, L5_1, L6_1, L7_1, L8_1)
L4_1 = L2_1
L3_1 = L2_1.addEventListener
L5_1 = "tap"

function L6_1()
  local L0_2, L1_2
  L0_2 = true
  return L0_2
end

L3_1(L4_1, L5_1, L6_1)
L4_1 = L2_1
L3_1 = L2_1.addEventListener
L5_1 = "touch"

function L6_1()
  local L0_2, L1_2
  L0_2 = true
  return L0_2
end

L3_1(L4_1, L5_1, L6_1)
L2_1.isVisible = false

function L3_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2.alpha = 0.1
  L0_2 = L2_1
  L0_2.isVisible = true
  L0_2 = L2_1
  L1_2 = L0_2
  L0_2 = L0_2.toFront
  L0_2(L1_2)
end

disableTouch = L3_1

function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = transition
  L0_2 = L0_2.to
  L1_2 = L2_1
  L2_2 = {}
  L2_2.time = 100
  L2_2.alpha = 0
  
  function L3_2()
    local L0_3, L1_3
    L0_3 = L2_1
    L0_3.isVisible = false
  end
  
  L2_2.onComplete = L3_2
  L0_2(L1_2, L2_2)
end

enableTouch = L3_1

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = reveal
  L3_2 = A1_2
  L4_2 = A0_2.x
  L5_2 = A0_2.y
  L2_2(L3_2, L4_2, L5_2)
end

revealObjectInView = L3_1

function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L3_2 = disableTouch
  L3_2()
  L3_2 = timer
  L3_2 = L3_2.performWithDelay
  L4_2 = 200
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = audio
    L0_3 = L0_3.play
    L1_3 = L1_1
    L0_3(L1_3)
  end
  
  L6_2 = 1
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = 8
  L4_2 = nil
  L5_2 = {}
  L6_2 = {}
  L7_2 = 50
  L8_2 = 36
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L7_2 = {}
  L8_2 = 70
  L9_2 = 42
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L8_2 = {}
  L9_2 = 80
  L10_2 = 49
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L9_2 = {}
  L10_2 = 75
  L11_2 = 46
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L6_2 = display
  L6_2 = L6_2.newGroup
  L6_2 = L6_2()
  L7_2 = 1
  L8_2 = 4
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = 1
    L12_2 = 2
    L13_2 = 1
    for L14_2 = L11_2, L12_2, L13_2 do
      L15_2 = math
      L15_2 = L15_2.random
      L16_2 = 1
      L17_2 = 4
      L15_2 = L15_2(L16_2, L17_2)
      L4_2 = L15_2
      L15_2 = display
      L15_2 = L15_2.newImageRect
      L16_2 = L6_2
      L17_2 = L0_1
      L17_2 = L17_2.Path_Assets
      L18_2 = "General/FC-DirtCloud"
      L19_2 = L4_2
      L20_2 = ".png"
      L17_2 = L17_2 .. L18_2 .. L19_2 .. L20_2
      L18_2 = L5_2[L4_2]
      L18_2 = L18_2[1]
      L19_2 = L5_2[L4_2]
      L19_2 = L19_2[2]
      L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
      L15_2.xScale = 0.6
      L15_2.yScale = 0.6
      L16_2 = L14_2 - 1
      L16_2 = L16_2 * 20
      L17_2 = L14_2 * 20
      L16_2 = L16_2 + L17_2
      L15_2.x = L16_2
      L16_2 = L10_2 * 20
      L16_2 = L16_2 - 20
      L15_2.y = L16_2
      L15_2.alpha = 0
      L16_2 = L15_2.x
      L17_2 = math
      L17_2 = L17_2.random
      L18_2 = -20
      L19_2 = 20
      L17_2 = L17_2(L18_2, L19_2)
      L16_2 = L16_2 + L17_2
      L17_2 = L15_2.y
      L18_2 = math
      L18_2 = L18_2.random
      L19_2 = -20
      L20_2 = 20
      L18_2 = L18_2(L19_2, L20_2)
      L17_2 = L17_2 + L18_2
      L18_2 = transition
      L18_2 = L18_2.to
      L19_2 = L15_2
      L20_2 = {}
      L20_2.time = 150
      L20_2.alpha = 1
      L20_2.xScale = 1
      L20_2.yScale = 1
      
      function L21_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = L15_2
        if L0_3 ~= nil then
          L0_3 = transition
          L0_3 = L0_3.to
          L1_3 = L15_2
          L2_3 = {}
          L2_3.time = 2000
          L3_3 = easing
          L3_3 = L3_3.inSine
          L2_3.transition = L3_3
          L3_3 = L16_2
          L2_3.x = L3_3
          L3_3 = L17_2
          L2_3.y = L3_3
          L2_3.alpha = 0
          
          function L3_3()
            local L0_4, L1_4
            L0_4 = L15_2
            if L0_4 ~= nil then
              L0_4 = L15_2
              L0_4 = L0_4.removeSelf
              if L0_4 then
                L0_4 = L15_2
                L1_4 = L0_4
                L0_4 = L0_4.removeSelf
                L0_4(L1_4)
              end
            end
          end
          
          L2_3.onComplete = L3_3
          L0_3(L1_3, L2_3)
        end
      end
      
      L20_2.onComplete = L21_2
      L18_2(L19_2, L20_2)
    end
  end
  L8_2 = A0_2
  L7_2 = A0_2.insert
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = A1_2 - 40
  L6_2.x = L7_2
  L7_2 = A2_2 - 40
  L6_2.y = L7_2
  L7_2 = timer
  L7_2 = L7_2.performWithDelay
  L8_2 = 1500
  L9_2 = enableTouch
  L10_2 = 1
  L7_2(L8_2, L9_2, L10_2)
end

reveal = L3_1

function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  if A7_2 == false then
    L9_2 = L0_1
    L9_2 = L9_2.Path_Assets
    L10_2 = "General/FC-spark.png"
    L8_2 = L9_2 .. L10_2
  else
    L9_2 = L0_1
    L9_2 = L9_2.Path_Assets
    L10_2 = "General/FC-spark-dark.png"
    L8_2 = L9_2 .. L10_2
  end
  L9_2 = 1
  L10_2 = A6_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = math
    L13_2 = L13_2.random
    L14_2 = 0
    L15_2 = A1_2
    L13_2 = L13_2(L14_2, L15_2)
    L14_2 = math
    L14_2 = L14_2.random
    L15_2 = A2_2
    L16_2 = A4_2
    L14_2 = L14_2(L15_2, L16_2)
    L15_2 = math
    L15_2 = L15_2.random
    L16_2 = A3_2
    L17_2 = A5_2
    L15_2 = L15_2(L16_2, L17_2)
    L16_2 = math
    L16_2 = L16_2.random
    L17_2 = 0.6
    L18_2 = 1.2
    L16_2 = L16_2(L17_2, L18_2)
    L17_2 = display
    L17_2 = L17_2.newImageRect
    L18_2 = A0_2
    L19_2 = L8_2
    L20_2 = 32
    L21_2 = 32
    L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2)
    L17_2.xScale = L16_2
    L17_2.yScale = L16_2
    L17_2.x = L14_2
    L17_2.y = L15_2
    L17_2.alpha = 0
    L18_2 = transition
    L18_2 = L18_2.to
    L19_2 = L17_2
    L20_2 = {}
    L20_2.delay = L13_2
    L20_2.time = 150
    L20_2.alpha = 1
    L21_2 = L16_2 + 0.2
    L20_2.xScale = L21_2
    L21_2 = L16_2 + 0.2
    L20_2.yScale = L21_2
    
    function L21_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = transition
      L0_3 = L0_3.to
      L1_3 = L17_2
      L2_3 = {}
      L2_3.time = 700
      L2_3.alpha = 0
      L3_3 = L16_2
      L3_3 = L3_3 - 0.1
      L2_3.xScale = L3_3
      L3_3 = L16_2
      L3_3 = L3_3 - 0.1
      L2_3.yScale = L3_3
      
      function L3_3()
        local L0_4, L1_4
        L0_4 = L17_2
        if L0_4 ~= nil then
          L0_4 = L17_2
          L0_4 = L0_4.removeSelf
          if L0_4 then
            L0_4 = L17_2
            L1_4 = L0_4
            L0_4 = L0_4.removeSelf
            L0_4(L1_4)
          end
        end
        L0_4 = nil
        L17_2 = L0_4
      end
      
      L2_3.onComplete = L3_3
      
      function L3_3()
        local L0_4, L1_4
        L0_4 = L17_2
        if L0_4 ~= nil then
          L0_4 = L17_2
          L0_4 = L0_4.removeSelf
          if L0_4 then
            L0_4 = L17_2
            L1_4 = L0_4
            L0_4 = L0_4.removeSelf
            L0_4(L1_4)
          end
        end
        L0_4 = nil
        L17_2 = L0_4
      end
      
      L2_3.onCancel = L3_3
      L0_3(L1_3, L2_3)
    end
    
    L20_2.onComplete = L21_2
    
    function L21_2()
      local L0_3, L1_3
      L0_3 = L17_2
      if L0_3 ~= nil then
        L0_3 = L17_2
        L0_3 = L0_3.removeSelf
        if L0_3 then
          L0_3 = L17_2
          L1_3 = L0_3
          L0_3 = L0_3.removeSelf
          L0_3(L1_3)
        end
      end
      L0_3 = nil
      L17_2 = L0_3
    end
    
    L20_2.onCancel = L21_2
    L18_2(L19_2, L20_2)
  end
end

sparkle = L3_1
L3_1 = nil
L4_1 = nil
L5_1 = nil
L6_1 = nil
L7_1 = nil

function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A2_2 or nil
  if not A2_2 then
    L4_2 = A0_2.x
  end
  L5_2 = A3_2 or L5_2
  if not A3_2 then
    L5_2 = A0_2.y
  end
  L6_2 = pointAt
  L7_2 = A1_2
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
end

pointAtObjectInView = L8_1

function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = pointAtWithDelay
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = 10
  L3_2(L4_2, L5_2, L6_2, L7_2)
end

pointAt = L8_1

function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A3_2 ~= nil and 0 < A3_2 then
    L4_2 = timer
    L4_2 = L4_2.performWithDelay
    L5_2 = A3_2
    
    function L6_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = performPointing
      L1_3 = A0_2
      L2_3 = A1_2
      L3_3 = A2_2
      L0_3(L1_3, L2_3, L3_3)
    end
    
    L7_2 = 1
    L4_2(L5_2, L6_2, L7_2)
  else
  end
end

pointAtWithDelay = L8_1

function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = log3
  L4_2 = "pointing at something"
  L3_2(L4_2)
  L3_2 = L6_1
  if L3_2 ~= nil then
    L3_2 = removePoint
    L3_2()
  end
  L3_2 = L3_1
  if L3_2 ~= nil then
    L3_2 = L4_1
    if L3_2 ~= nil then
      L3_2 = L5_1
      if L3_2 ~= nil then
        goto lbl_44
      end
    end
  end
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  L3_1 = L3_2
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = L3_1
  L5_2 = L0_1
  L5_2 = L5_2.Path_Assets
  L6_2 = "General/FC-finger.png"
  L5_2 = L5_2 .. L6_2
  L6_2 = 50
  L7_2 = 42
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_1 = L3_2
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = L3_1
  L5_2 = L0_1
  L5_2 = L5_2.Path_Assets
  L6_2 = "General/FC-touch.png"
  L5_2 = L5_2 .. L6_2
  L6_2 = 50
  L7_2 = 52
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_1 = L3_2
  ::lbl_44::
  L3_2 = L4_1
  L4_2 = L4_1
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L3_2.x = L4_2
  L3_2 = L4_1
  L4_2 = L4_1
  L4_2 = L4_2.height
  L4_2 = L4_2 / 2
  L3_2.y = L4_2
  L3_2 = L4_1
  L3_2.xScale = 1
  L3_2 = L4_1
  L3_2.yScale = 1
  L3_2 = L5_1
  L3_2.alpha = 0.5
  L3_2 = L3_1
  L3_2.x = A1_2
  L3_2 = L3_1
  L3_2.y = A2_2
  L4_2 = A0_2
  L3_2 = A0_2.insert
  L5_2 = L3_1
  L3_2(L4_2, L5_2)
  L3_2 = L3_1
  L3_2.alpha = 1
  
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L4_1
    if L0_3 ~= nil then
      L0_3 = L4_1
      L0_3 = L0_3.width
      if L0_3 ~= nil then
        goto lbl_13
      end
    end
    L0_3 = print
    L1_3 = "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!  fingerImage.width was nil. Finger image: "
    L2_3 = L4_1
    L0_3(L1_3, L2_3)
    do return end
    ::lbl_13::
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L4_1
    L2_3 = {}
    L2_3.time = 1000
    L2_3.xScale = 1
    L2_3.yScale = 1
    L3_3 = L4_1
    L3_3 = L3_3.width
    L3_3 = L3_3 / 2
    L2_3.x = L3_3
    L3_3 = L4_1
    L3_3 = L3_3.height
    L3_3 = L3_3 / 2
    L2_3.y = L3_3
    L3_3 = easing
    L3_3 = L3_3.inOutBack
    L2_3.transition = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L4_2 = transition
  L4_2 = L4_2.to
  L5_2 = L4_1
  L6_2 = {}
  L6_2.time = 1000
  L6_2.xScale = 0.7
  L6_2.yScale = 0.7
  L7_2 = L4_1
  L7_2 = L7_2.width
  L7_2 = L7_2 / 2
  L7_2 = L7_2 * 0.7
  L6_2.x = L7_2
  L7_2 = L4_1
  L7_2 = L7_2.height
  L7_2 = L7_2 / 2
  L7_2 = L7_2 * 0.7
  L6_2.y = L7_2
  L7_2 = easing
  L7_2 = L7_2.inOutBack
  L6_2.transition = L7_2
  L6_2.onComplete = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = timer
  L4_2 = L4_2.performWithDelay
  L5_2 = 2005
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L4_1
    if L0_3 ~= nil then
      L0_3 = L4_1
      L0_3 = L0_3.width
      if L0_3 ~= nil then
        goto lbl_13
      end
    end
    L0_3 = print
    L1_3 = "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!  fingerImage.width was nil. Finger image: "
    L2_3 = L4_1
    L0_3(L1_3, L2_3)
    do return end
    ::lbl_13::
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L4_1
    L2_3 = {}
    L2_3.time = 1000
    L2_3.xScale = 0.7
    L2_3.yScale = 0.7
    L3_3 = L4_1
    L3_3 = L3_3.width
    L3_3 = L3_3 / 2
    L3_3 = L3_3 * 0.7
    L2_3.x = L3_3
    L3_3 = L4_1
    L3_3 = L3_3.height
    L3_3 = L3_3 / 2
    L3_3 = L3_3 * 0.7
    L2_3.y = L3_3
    L3_3 = easing
    L3_3 = L3_3.inOutBack
    L2_3.transition = L3_3
    L3_3 = L3_2
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L7_2 = 0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_1 = L4_2
  
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L5_1
    L2_3 = {}
    L2_3.time = 1000
    L2_3.alpha = 0
    L3_3 = easing
    L3_3 = L3_3.inOutBack
    L2_3.transition = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L5_2 = transition
  L5_2 = L5_2.to
  L6_2 = L5_1
  L7_2 = {}
  L7_2.time = 1000
  L7_2.alpha = 1
  L8_2 = easing
  L8_2 = L8_2.inOutBack
  L7_2.transition = L8_2
  L7_2.onComplete = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = timer
  L5_2 = L5_2.performWithDelay
  L6_2 = 2005
  
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L5_1
    L2_3 = {}
    L2_3.time = 1000
    L2_3.alpha = 1
    L3_3 = easing
    L3_3 = L3_3.inOutBack
    L2_3.transition = L3_3
    L3_3 = L4_2
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L8_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L7_1 = L5_2
end

performPointing = L8_1

function L8_1()
  local L0_2, L1_2
  L0_2 = L6_1
  if L0_2 == nil then
    return
  end
  L0_2 = timer
  L0_2 = L0_2.cancel
  L1_2 = L6_1
  L0_2(L1_2)
  L0_2 = timer
  L0_2 = L0_2.cancel
  L1_2 = L7_1
  L0_2(L1_2)
  L0_2 = L3_1
  L0_2.alpha = 0
  L0_2 = nil
  L6_1 = L0_2
  L0_2 = nil
  L7_1 = L0_2
  L0_2 = L3_1
  if L0_2 ~= nil then
    L0_2 = display
    L0_2 = L0_2.remove
    L1_2 = L3_1
    L0_2(L1_2)
  end
  L0_2 = nil
  L3_1 = L0_2
  L0_2 = nil
  L4_1 = L0_2
  L0_2 = nil
  L5_1 = L0_2
end

removePoint = L8_1

function L8_1()
  local L0_2, L1_2
  L0_2 = L3_1
  if L0_2 ~= nil then
    L0_2 = L3_1
    L0_2 = L0_2.toFront
    if L0_2 ~= nil then
      L0_2 = L3_1
      L1_2 = L0_2
      L0_2 = L0_2.toFront
      L0_2(L1_2)
    end
  end
end

bringPointToFront = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = _isFillterSupport
  if L2_2 == false then
    return
  end
  L2_2 = require
  L3_2 = "Components.ParticleDesigner"
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.newEmitter
  L4_2 = L0_1
  L4_2 = L4_2.Path_Assets
  L5_2 = "Effects/fireworks.json"
  L4_2 = L4_2 .. L5_2
  L3_2 = L3_2(L4_2)
  L3_2.x = A0_2
  L3_2.y = A1_2
  L5_2 = L3_2
  L4_2 = L3_2.start
  L4_2(L5_2)
  L4_2 = timer
  L4_2 = L4_2.performWithDelay
  L5_2 = 10000
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.removeSelf
    L0_3(L1_3)
  end
  
  L7_2 = 1
  L4_2(L5_2, L6_2, L7_2)
end

showFireworkEffect = L8_1

function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = _isFillterSupport
  if L3_2 == false then
    return
  end
  L3_2 = require
  L4_2 = "Components.ParticleDesigner"
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.newEmitter
  L5_2 = L0_1
  L5_2 = L5_2.Path_Assets
  L6_2 = "Effects/rewardEffect.json"
  L5_2 = L5_2 .. L6_2
  L4_2 = L4_2(L5_2)
  L4_2.x = A0_2
  L4_2.y = A1_2
  L6_2 = A2_2
  L5_2 = A2_2.insert
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.start
  L5_2(L6_2)
end

rewardEffect = L8_1

function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = _isFillterSupport
  if L3_2 == false then
    return
  end
  L3_2 = require
  L4_2 = "Components.ParticleDesigner"
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.newEmitter
  L5_2 = L0_1
  L5_2 = L5_2.Path_Assets
  L6_2 = "Effects/smoke.json"
  L5_2 = L5_2 .. L6_2
  L4_2 = L4_2(L5_2)
  L4_2.x = A0_2
  L4_2.y = A1_2
  L6_2 = A2_2
  L5_2 = A2_2.insert
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.start
  L5_2(L6_2)
  return L4_2
end

smokeEffect = L8_1
