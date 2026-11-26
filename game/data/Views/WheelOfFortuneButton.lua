local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.BaseView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Views.PirtulModel"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Components.TDTimerIndicator"
L2_1 = L2_1(L3_1)
L3_1 = setmetatable
L4_1 = _M
L5_1 = {}
L5_1.__index = L0_1
L3_1(L4_1, L5_1)
L3_1 = 1
L4_1 = {}
L5_1 = nil

function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.phase
  if L1_2 == "ended" then
    L1_2 = L4_1
    if L1_2 then
      L1_2 = L4_1
      L2_2 = L3_1
      L1_2 = L1_2[L2_2]
      if L1_2 then
        L1_2 = L4_1
        L2_2 = L3_1
        L1_2 = L1_2[L2_2]
        L1_2 = L1_2.view
        if L1_2 then
          L1_2 = L4_1
          L2_2 = L3_1
          L1_2 = L1_2[L2_2]
          L1_2 = L1_2.view
          L1_2.alpha = 0
          L1_2 = L4_1
          L2_2 = L3_1
          L1_2 = L1_2[L2_2]
          L2_2 = L1_2
          L1_2 = L1_2.stop
          L1_2(L2_2)
          L1_2 = L3_1
          if L1_2 == 3 then
            L1_2 = 1
            L3_1 = L1_2
          else
            L1_2 = L3_1
            L1_2 = L1_2 + 1
            L3_1 = L1_2
          end
          L1_2 = L4_1
          L2_2 = L3_1
          L1_2 = L1_2[L2_2]
          L1_2 = L1_2.view
          L1_2.alpha = 1
          L1_2 = L4_1
          L2_2 = L3_1
          L1_2 = L1_2[L2_2]
          L2_2 = L1_2
          L1_2 = L1_2.play
          L1_2(L2_2)
        end
      end
    end
  end
end

function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = L0_1
  L3_2 = L3_2.newWithParams
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = onRelease
  L3_2.onRelease = L4_2
  L3_2.enabled = true
  L4_2 = A1_2.onRelease
  if L4_2 ~= nil then
    L4_2 = A1_2.onRelease
    L3_2.onRelease = L4_2
  end
  L4_2 = 1
  L5_2 = 3
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L4_1
    L8_2 = L8_2[L7_2]
    if L8_2 == nil then
      L8_2 = L4_1
      L9_2 = L1_1
      L10_2 = L9_2
      L9_2 = L9_2.new
      L11_2 = nil
      L12_2 = nil
      L13_2 = nil
      L14_2 = nil
      L15_2 = true
      L16_2 = true
      L17_2 = L7_2
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L8_2[L7_2] = L9_2
      L8_2 = L3_2.view
      L9_2 = L8_2
      L8_2 = L8_2.insert
      L10_2 = L4_1
      L10_2 = L10_2[L7_2]
      L10_2 = L10_2.view
      L8_2(L9_2, L10_2)
      L8_2 = L4_1
      L8_2 = L8_2[L7_2]
      L8_2 = L8_2.view
      L8_2.alpha = 0
      L8_2 = L4_1
      L8_2 = L8_2[L7_2]
      L8_2 = L8_2.view
      L9_2 = L8_2
      L8_2 = L8_2.addEventListener
      L10_2 = "sprite"
      L11_2 = L6_1
      L8_2(L9_2, L10_2, L11_2)
    end
  end
  L4_2 = L4_1
  L4_2 = L4_2[1]
  L4_2 = L4_2.view
  L4_2.alpha = 1
  L4_2 = L4_1
  L4_2 = L4_2[1]
  L5_2 = L4_2
  L4_2 = L4_2.play
  L4_2(L5_2)
  L4_2 = {}
  L5_2 = A1_2.endTime
  L4_2.endTime = L5_2
  L5_2 = L2_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L5_1 = L5_2
  L5_2 = L3_2.view
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L5_1
  L7_2 = L7_2.view
  L5_2(L6_2, L7_2)
  L5_2 = L4_1
  L5_2 = L5_2[1]
  L5_2 = L5_2.view
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L6_2 = L5_1
  L6_2 = L6_2.height
  L5_2 = L5_2 + L6_2
  L6_2 = display
  L6_2 = L6_2.newRect
  L7_2 = L3_2.view
  L8_2 = 0
  L9_2 = 0
  L10_2 = L4_1
  L10_2 = L10_2[1]
  L10_2 = L10_2.view
  L10_2 = L10_2.width
  L11_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L8_2 = L6_2
  L7_2 = L6_2.setFillColor
  L9_2 = 1
  L10_2 = 1
  L11_2 = 1
  L12_2 = 0
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2.isHitTestable = true
  
  function L7_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A1_3.phase
    if L2_3 == "ended" then
      L3_3 = A0_3
      L2_3 = A0_3.onRelease
      L2_3(L3_3)
    end
    L2_3 = true
    return L2_3
  end
  
  L3_2.touch = L7_2
  L8_2 = L6_2
  L7_2 = L6_2.addEventListener
  L9_2 = "touch"
  L10_2 = L3_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = 1
  L8_2 = 3
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L4_1
    L11_2 = L11_2[L10_2]
    L12_2 = L11_2
    L11_2 = L11_2.setPosition
    L13_2 = 0
    L14_2 = -L5_2
    L14_2 = L14_2 / 2
    L15_2 = L4_1
    L15_2 = L15_2[1]
    L15_2 = L15_2.view
    L15_2 = L15_2.height
    L15_2 = L15_2 / 4
    L14_2 = L14_2 + L15_2
    L11_2(L12_2, L13_2, L14_2)
  end
  L7_2 = L5_1
  L8_2 = L5_2 / 2
  L9_2 = L5_1
  L9_2 = L9_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L7_2.y = L8_2
  return L3_2
end

new = L7_1

function L7_1(A0_2)
  local L1_2
end

onRelease = L7_1

function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = 1
  L1_2 = 3
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = display
    L4_2 = L4_2.remove
    L5_2 = L4_1
    L5_2 = L5_2[L3_2]
    L5_2 = L5_2.view
    L4_2(L5_2)
    L4_2 = L4_1
    L4_2 = L4_2[L3_2]
    L4_2.view = nil
  end
  L0_2 = {}
  L4_1 = L0_2
  L0_2 = display
  L0_2 = L0_2.remove
  L1_2 = L5_1
  L0_2(L1_2)
  L0_2 = nil
  L5_1 = L0_2
  L0_2 = 1
  L3_1 = L0_2
end

remove = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L5_1
  L2_2 = L1_2
  L1_2 = L1_2.addTimer
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

update = L7_1
