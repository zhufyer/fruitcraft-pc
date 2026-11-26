local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2 - L1_2
  if 0 < L1_2 then
    L1_2 = error
    L2_2 = "trying to use bitwise operation on non-integer!"
    L1_2(L2_2)
  end
end

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1
  L2_2 = A0_2
  L1_2(L2_2)
  if A0_2 < 0 then
    L1_2 = L1_1
    L2_2 = bit
    L2_2 = L2_2.bnot
    L3_2 = math
    L3_2 = L3_2.abs
    L4_2 = A0_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L2_2 = L2_2 + 1
    return L1_2(L2_2)
  end
  L1_2 = {}
  L2_2 = 1
  while 0 < A0_2 do
    L3_2 = math
    L3_2 = L3_2.mod
    L4_2 = A0_2
    L5_2 = 2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 == 1 then
      L1_2[L2_2] = 1
    else
      L1_2[L2_2] = 0
    end
    L4_2 = A0_2 - L3_2
    A0_2 = L4_2 / 2
    L2_2 = L2_2 + 1
  end
  return L1_2
end

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = table
  L1_2 = L1_2.getn
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = 1
  L4_2 = 1
  L5_2 = L1_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2[L7_2]
    L8_2 = L8_2 * L3_2
    L2_2 = L2_2 + L8_2
    L3_2 = L3_2 * 2
  end
  return L2_2
end

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = table
  L4_2 = L4_2.getn
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = table
  L5_2 = L5_2.getn
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if L4_2 > L5_2 then
    L2_2 = A0_2
    L3_2 = A1_2
  else
    L2_2 = A1_2
    L3_2 = A0_2
  end
  L4_2 = table
  L4_2 = L4_2.getn
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 + 1
  L5_2 = table
  L5_2 = L5_2.getn
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L3_2[L7_2] = 0
  end
end

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L1_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_1
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = {}
  L5_2 = math
  L5_2 = L5_2.max
  L6_2 = table
  L6_2 = L6_2.getn
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L7_2 = table
  L7_2 = L7_2.getn
  L8_2 = L3_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = 1
  L7_2 = L5_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L2_2[L9_2]
    if L10_2 == 0 then
      L10_2 = L3_2[L9_2]
      if L10_2 == 0 then
        L4_2[L9_2] = 0
    end
    else
      L4_2[L9_2] = 1
    end
  end
  L6_2 = L2_1
  L7_2 = L4_2
  return L6_2(L7_2)
end

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L1_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_1
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = {}
  L5_2 = math
  L5_2 = L5_2.max
  L6_2 = table
  L6_2 = L6_2.getn
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L7_2 = table
  L7_2 = L7_2.getn
  L8_2 = L3_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = 1
  L7_2 = L5_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L2_2[L9_2]
    if L10_2 ~= 0 then
      L10_2 = L3_2[L9_2]
      if L10_2 ~= 0 then
        goto lbl_35
      end
    end
    L4_2[L9_2] = 0
    goto lbl_36
    ::lbl_35::
    L4_2[L9_2] = 1
    ::lbl_36::
  end
  L6_2 = L2_1
  L7_2 = L4_2
  return L6_2(L7_2)
end

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = table
  L3_2 = L3_2.getn
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = 32
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 1
  L4_2 = L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    if L7_2 == 1 then
      L1_2[L6_2] = 0
    else
      L1_2[L6_2] = 1
    end
  end
  L3_2 = L2_1
  L4_2 = L1_2
  return L3_2(L4_2)
end

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L1_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_1
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = {}
  L5_2 = math
  L5_2 = L5_2.max
  L6_2 = table
  L6_2 = L6_2.getn
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L7_2 = table
  L7_2 = L7_2.getn
  L8_2 = L3_2
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = 1
  L7_2 = L5_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L2_2[L9_2]
    L11_2 = L3_2[L9_2]
    if L10_2 ~= L11_2 then
      L4_2[L9_2] = 1
    else
      L4_2[L9_2] = 0
    end
  end
  L6_2 = L2_1
  L7_2 = L4_2
  return L6_2(L7_2)
end

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L0_1
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = 0
  if A0_2 < 0 then
    L3_2 = L6_1
    L4_2 = math
    L4_2 = L4_2.abs
    L5_2 = A0_2
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    A0_2 = L3_2 + 1
    L2_2 = 2147483648
  end
  L3_2 = 1
  L4_2 = A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    A0_2 = A0_2 / 2
    L7_2 = L4_1
    L8_2 = math
    L8_2 = L8_2.floor
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    L9_2 = L2_2
    L7_2 = L7_2(L8_2, L9_2)
    A0_2 = L7_2
  end
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A0_2
  return L3_2(L4_2)
end

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1
  L3_2 = A0_2
  L2_2(L3_2)
  if A0_2 < 0 then
    L2_2 = L6_1
    L3_2 = math
    L3_2 = L3_2.abs
    L4_2 = A0_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2 = L2_2 + 1
  end
  L2_2 = 1
  L3_2 = A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    A0_2 = A0_2 / 2
  end
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A0_2
  return L2_2(L3_2)
end

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1
  L3_2 = A0_2
  L2_2(L3_2)
  if A0_2 < 0 then
    L2_2 = L6_1
    L3_2 = math
    L3_2 = L3_2.abs
    L4_2 = A0_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2 = L2_2 + 1
  end
  L2_2 = 1
  L3_2 = A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    A0_2 = A0_2 * 2
  end
  L2_2 = L5_1
  L3_2 = A0_2
  L4_2 = 4294967295
  return L2_2(L3_2, L4_2)
end

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L4_1
  L3_2 = L6_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L6_1
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = L4_1
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L5_1
  L5_2 = L3_2
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  return L4_2
end

L12_1 = {}
L12_1.bnot = L6_1
L12_1.band = L5_1
L12_1.bor = L4_1
L12_1.bxor = L7_1
L12_1.brshift = L8_1
L12_1.blshift = L10_1
L12_1.bxor2 = L11_1
L12_1.blogic_rshift = L9_1
L12_1.tobits = L1_1
L12_1.tonumb = L2_1
bit = L12_1
L12_1 = bit
return L12_1
