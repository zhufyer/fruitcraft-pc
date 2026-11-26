local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Utils.Toolbox"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = 50
L3_1 = 3

function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
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
  A1_2.text = A4_2
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "LiveBattle/lose5.png"
  L6_2 = L6_2 .. L7_2
  L7_2 = A2_2
  L8_2 = A3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  A1_2.redMiddlePowerView = L5_2
  L5_2 = A1_2.redMiddlePowerView
  L5_2.x = 0
  L5_2 = A1_2.redMiddlePowerView
  L5_2.y = 0
  L5_2 = A1_2.group
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = A1_2.redMiddlePowerView
  L5_2(L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "LiveBattle/win5.png"
  L6_2 = L6_2 .. L7_2
  L7_2 = A2_2
  L8_2 = A3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  A1_2.greenMiddlePowerView = L5_2
  L5_2 = A1_2.greenMiddlePowerView
  L5_2.x = 0
  L5_2 = A1_2.greenMiddlePowerView
  L5_2.y = 0
  L5_2 = A1_2.group
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = A1_2.greenMiddlePowerView
  L5_2(L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = A4_2
  L7_2 = 0
  L8_2 = 0
  L9_2 = Constants
  L9_2 = L9_2.fontForTitle
  L9_2 = L9_2()
  L10_2 = 11
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  A1_2.textField = L5_2
  L5_2 = A1_2.textField
  L5_2.x = 0
  L5_2 = A1_2.textField
  L6_2 = 0
  L7_2 = A1_2.group
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = A1_2.textField
  L7_2(L8_2, L9_2)
  L5_2.y = L6_2
  L5_2 = A1_2.textField
  L6_2 = L5_2
  L5_2 = L5_2.toFront
  L5_2(L6_2)
  L5_2 = A1_2.group
  L5_2.x = 0
  L5_2 = A1_2.group
  L5_2.y = 0
  L5_2 = setText
  A1_2.setText = L5_2
  return A1_2
end

new = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = log3
  L3_2 = "setNumber"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 < 0 then
    L2_2 = A0_2.textField
    L3_2 = L2_2
    L2_2 = L2_2.setTextColor
    L4_2 = 1
    L5_2 = 1
    L6_2 = 1
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2.redMiddlePowerView
    L2_2.alpha = 1
    L2_2 = A0_2.redMiddlePowerView
    L3_2 = L2_2
    L2_2 = L2_2.toFront
    L2_2(L3_2)
    L2_2 = A0_2.greenMiddlePowerView
    L2_2.alpha = 0
    L2_2 = A0_2.textField
    L3_2 = L1_1
    L3_2 = L3_2.adjustNumber
    L4_2 = L0_1
    L4_2 = L4_2.shortenLongNumber
    L5_2 = A1_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2.text = L3_2
  else
    L2_2 = A0_2.textField
    L3_2 = L2_2
    L2_2 = L2_2.setTextColor
    L4_2 = 1
    L5_2 = 1
    L6_2 = 1
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2.greenMiddlePowerView
    L2_2.alpha = 1
    L2_2 = A0_2.greenMiddlePowerView
    L3_2 = L2_2
    L2_2 = L2_2.toFront
    L2_2(L3_2)
    L2_2 = A0_2.redMiddlePowerView
    L2_2.alpha = 0
    L2_2 = A0_2.textField
    L3_2 = "+"
    L4_2 = L1_1
    L4_2 = L4_2.adjustNumber
    L5_2 = L0_1
    L5_2 = L5_2.shortenLongNumber
    L6_2 = A1_2
    L5_2, L6_2 = L5_2(L6_2)
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L3_2 .. L4_2
    L2_2.text = L3_2
  end
  L2_2 = A0_2.textField
  L3_2 = L2_2
  L2_2 = L2_2.toFront
  L2_2(L3_2)
end

setNumber = L4_1
