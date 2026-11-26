local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  o = L1_2
  L1_2 = setmetatable
  L2_2 = o
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  A0_2.__index = A0_2
  L1_2 = o
  L2_2 = display
  L2_2 = L2_2.newImageRect
  L3_2 = Constants
  L3_2 = L3_2.Path_Assets
  L4_2 = "Quest/Node.png"
  L3_2 = L3_2 .. L4_2
  L4_2 = 32
  L5_2 = 32
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.dot = L2_2
end

new = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = display
  L2_2 = L2_2.newLine
  L3_2 = A0_2.rect
  L3_2 = L3_2.x
  L4_2 = A0_2.rect
  L4_2 = L4_2.y
  L5_2 = A1_2.rect
  L5_2 = L5_2.x
  L6_2 = A1_2.rect
  L6_2 = L6_2.y
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.line = L2_2
end

createLine = L0_1
