local L0_1, L1_1, L2_1, L3_1
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
L2_1 = require
L3_1 = "Components.TDButtonView"
L2_1 = L2_1(L3_1)

function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  if not A1_2 then
    L5_2 = {}
    A1_2 = L5_2
  end
  L5_2 = setmetatable
  L6_2 = A1_2
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  A0_2.__index = A0_2
  A1_2.task = A2_2
  L5_2 = L2_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L8_2 = A2_2.name
  L7_2.label = L8_2
  L7_2.width = 104
  L7_2.height = 33
  L8_2 = L1_1
  L8_2 = L8_2.Path_Assets
  L9_2 = "BattleItems/next.png"
  L8_2 = L8_2 .. L9_2
  L7_2.defaultFile = L8_2
  L8_2 = L1_1
  L8_2 = L8_2.Path_Assets
  L9_2 = "BattleItems/next-p.png"
  L8_2 = L8_2 .. L9_2
  L7_2.overFile = L8_2
  
  function L8_2()
    local L0_3, L1_3
    L0_3 = A3_2
    L1_3 = A1_2
    L1_3 = L1_3.task
    L0_3(L1_3)
  end
  
  L7_2.onRelease = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  A1_2.Button = L5_2
  L6_2 = A4_2
  L5_2 = A4_2.insert
  L7_2 = A1_2.Button
  L7_2 = L7_2.view
  L5_2(L6_2, L7_2)
  return A1_2
end

new = L3_1

function L3_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.Button
  L3_2.x = A1_2
  L3_2 = A0_2.Button
  L3_2.y = A2_2
end

setPosition = L3_1
