local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  o = L2_2
  L2_2 = setmetatable
  L3_2 = o
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  L2_2 = o
  L2_2.first = 0
  L2_2 = o
  L2_2.last = -1
  L2_2 = o
  L2_2.lenght = A1_2
  L2_2 = o
  return L2_2
end

new = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.lenght
  if L2_2 == 0 then
    L3_2 = A0_2
    L2_2 = A0_2.poplast
    L2_2(L3_2)
  end
  L2_2 = A0_2.first
  L2_2 = L2_2 - 1
  A0_2.first = L2_2
  A0_2[L2_2] = A1_2
  L3_2 = A0_2.lenght
  L3_2 = L3_2 - 1
  A0_2.lenght = L3_2
end

pushfirst = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.lenght
  if L2_2 == 0 then
    L3_2 = A0_2
    L2_2 = A0_2.popfirst
    L2_2(L3_2)
  end
  L2_2 = A0_2.last
  L2_2 = L2_2 + 1
  A0_2.last = L2_2
  A0_2[L2_2] = A1_2
  L3_2 = A0_2.lenght
  L3_2 = L3_2 - 1
  A0_2.lenght = L3_2
end

pushlast = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.first
  L2_2 = A0_2.last
  if L1_2 > L2_2 then
    L2_2 = log3
    L3_2 = "list is empty"
    L2_2(L3_2)
  else
    L2_2 = A0_2[L1_2]
    A0_2[L1_2] = nil
    L3_2 = L1_2 + 1
    A0_2.first = L3_2
    L3_2 = A0_2.lenght
    L3_2 = L3_2 + 1
    A0_2.lenght = L3_2
    return L2_2
  end
end

popfirst = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.last
  L2_2 = A0_2.first
  if L1_2 < L2_2 then
    L2_2 = log3
    L3_2 = "list is empty"
    L2_2(L3_2)
  else
    L2_2 = A0_2[L1_2]
    A0_2[L1_2] = nil
    L3_2 = L1_2 - 1
    A0_2.last = L3_2
    L3_2 = A0_2.lenght
    L3_2 = L3_2 + 1
    A0_2.lenght = L3_2
    return L2_2
  end
end

poplast = L0_1
