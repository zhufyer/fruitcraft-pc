local L0_1, L1_1, L2_1
L0_1 = {}
L1_1 = require
L2_1 = "json"
L1_1 = L1_1(L2_1)

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = system
  L2_2 = L2_2.pathForFile
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = io
  L3_2 = L3_2.open
  L4_2 = L2_2
  L5_2 = "r"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.read
  L6_2 = "*a"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L3_2
  L5_2 = L3_2.close
  L5_2(L6_2)
  L5_2 = L1_1
  L5_2 = L5_2.decode
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  return L5_2
end

L0_1.loadParams = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A2_2 then
    L3_2 = L0_1
    L3_2.emitterParams = A2_2
  else
    L3_2 = L0_1
    L4_2 = L0_1
    L4_2 = L4_2.loadParams
    L5_2 = A0_2
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2.emitterParams = L4_2
  end
  L3_2 = display
  L3_2 = L3_2.newEmitter
  L4_2 = L0_1
  L4_2 = L4_2.emitterParams
  L3_2 = L3_2(L4_2)
  return L3_2
end

L0_1.newEmitter = L2_1
return L0_1
