local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = {}
  o = L3_2
  L3_2 = setmetatable
  L4_2 = o
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  A0_2.__index = A0_2
  L3_2 = o
  L4_2 = display
  L4_2 = L4_2.newLine
  L5_2 = A1_2.view
  L5_2 = L5_2.x
  L6_2 = A1_2.view
  L6_2 = L6_2.y
  L7_2 = A2_2.view
  L7_2 = L7_2.x
  L8_2 = A2_2.view
  L8_2 = L8_2.y
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L3_2.line = L4_2
  L3_2 = o
  L3_2 = L3_2.line
  L3_2.alpha = 0
  L3_2 = A1_2.nextNodes
  L4_2 = A1_2.nextNodes
  L4_2 = #L4_2
  L4_2 = L4_2 + 1
  L3_2[L4_2] = A2_2
  L3_2 = A2_2.previousNodes
  L4_2 = A2_2.previousNodes
  L4_2 = #L4_2
  L4_2 = L4_2 + 1
  L3_2[L4_2] = A1_2
  L3_2 = o
  return L3_2
end

new = L0_1
