local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "mime"
L0_1 = L0_1(L1_1)

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L1_2 = L1_2.b64
  L2_2 = A0_2
  return L1_2(L2_2)
end

encode = L1_1

function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L1_2 = L1_2.unb64
  L2_2 = A0_2
  return L1_2(L2_2)
end

decode = L1_1
