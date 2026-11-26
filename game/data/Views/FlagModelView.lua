local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "widget"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Constants"
L1_1 = L1_1(L2_1)
L2_1 = ""
L3_1 = display
L3_1 = L3_1.pixelHeight
L4_1 = display
L4_1 = L4_1.contentWidth
L3_1 = L3_1 / L4_1
if 1.5 < L3_1 then
  L2_1 = "@2x"
end
if 3 < L3_1 then
  L4_1 = _imageQuality
  if L4_1 == "HD" then
    L2_1 = "@4x"
  end
end
L4_1 = require
L5_1 = L1_1.Path_AssetsName
L6_1 = ".Animations.FC-animations-flag"
L7_1 = L2_1
L5_1 = L5_1 .. L6_1 .. L7_1
L4_1 = L4_1(L5_1)
L5_1 = graphics
L5_1 = L5_1.newImageSheet
L6_1 = L1_1.Path_Assets
L7_1 = "Animations/FC-animations-flag.png"
L6_1 = L6_1 .. L7_1
L8_1 = L4_1
L7_1 = L4_1.getSheet
L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1 = L7_1(L8_1)
L5_1 = L5_1(L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1)
L6_1 = {}
L7_1 = {}
L7_1.name = "normal"
L8_1 = {}
L9_1 = 1
L10_1 = 2
L11_1 = 3
L12_1 = 4
L13_1 = 5
L14_1 = 6
L15_1 = 7
L16_1 = 8
L17_1 = 9
L18_1 = 10
L8_1[1] = L9_1
L8_1[2] = L10_1
L8_1[3] = L11_1
L8_1[4] = L12_1
L8_1[5] = L13_1
L8_1[6] = L14_1
L8_1[7] = L15_1
L8_1[8] = L16_1
L8_1[9] = L17_1
L8_1[10] = L18_1
L7_1.frames = L8_1
L7_1.time = 700
L7_1.loopCount = 0
L6_1[1] = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 1
  L3_2 = 10
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2.view
  L3_2 = L2_2
  L2_2 = L2_2.setFrame
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.view
  L3_2 = L2_2
  L2_2 = L2_2.play
  L2_2(L3_2)
end

play = L7_1

function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.view
  if L1_2 then
    L1_2 = A0_2.view
    L1_2 = L1_2.pause
    if L1_2 then
      L1_2 = A0_2.view
      L2_2 = L1_2
      L1_2 = L1_2.pause
      L1_2(L2_2)
    end
  end
end

stop = L7_1

function L7_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
  A0_2.x = A1_2
  A0_2.y = A2_2
end

setPosition = L7_1

function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.remove
  L1_2(L2_2)
end

removeSelf = L7_1

function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A0_2.view
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end

setFillColor = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  if L2_2 ~= nil then
    if A1_2 then
      L2_2 = transition
      L2_2 = L2_2.to
      L3_2 = A0_2.view
      L4_2 = {}
      L4_2.time = 300
      L4_2.alpha = 0
      
      function L5_2()
        local L0_3, L1_3
        L0_3 = A0_2
        L0_3 = L0_3.view
        if L0_3 ~= nil then
          L0_3 = A0_2
          L0_3 = L0_3.view
          L1_3 = L0_3
          L0_3 = L0_3.removeSelf
          L0_3(L1_3)
          L0_3 = A0_2
          L0_3.view = nil
        end
      end
      
      L4_2.onComplete = L5_2
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2.view
      L3_2 = L2_2
      L2_2 = L2_2.removeSelf
      L2_2(L3_2)
      A0_2.view = nil
    end
  end
end

remove = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.stop
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.remove
  L2_2(L3_2)
end

removeAndCancel = L7_1

function L7_1(A0_2, A1_2)
  local L2_2
  A0_2.scale = A1_2
  L2_2 = A0_2.view
  L2_2.xScale = A1_2
  L2_2 = A0_2.view
  L2_2.yScale = A1_2
end

setScale = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = setmetatable
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  L2_2 = display
  L2_2 = L2_2.newSprite
  L3_2 = L5_1
  L4_2 = L6_1
  L2_2 = L2_2(L3_2, L4_2)
  A1_2.view = L2_2
  L2_2 = L3_1
  if 3 < L2_2 then
    L2_2 = _imageQuality
    if L2_2 == "HD" then
      L2_2 = A1_2.view
      L2_2.xScale = 0.25
      L2_2 = A1_2.view
      L2_2.yScale = 0.25
      A1_2.scale = 0.25
  end
  else
    L2_2 = L3_1
    if 1.5 < L2_2 then
      L2_2 = A1_2.view
      L2_2.xScale = 0.5
      L2_2 = A1_2.view
      L2_2.yScale = 0.5
      A1_2.scale = 0.5
    else
      L2_2 = A1_2.view
      L2_2.xScale = 1
      L2_2 = A1_2.view
      L2_2.yScale = 1
      A1_2.scale = 1
    end
  end
  return A1_2
end

new = L7_1
