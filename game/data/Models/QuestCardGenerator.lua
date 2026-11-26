local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Models.UserCard"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Models.Card"
L1_1 = L1_1(L2_1)
L2_1 = 1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = #A0_2
  L2_2 = nil
  repeat
    L2_2 = false
    L1_2 = L1_2 - 1
    L3_2 = 1
    L4_2 = L1_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2[L6_2]
      L7_2 = L7_2.power
      L8_2 = L6_2 + 1
      L8_2 = A0_2[L8_2]
      L8_2 = L8_2.power
      if L7_2 > L8_2 then
        L7_2 = L6_2 + 1
        L8_2 = L6_2 + 1
        L8_2 = A0_2[L8_2]
        L9_2 = A0_2[L6_2]
        A0_2[L7_2] = L9_2
        A0_2[L6_2] = L8_2
        L2_2 = true
      end
    end
  until L2_2 == false
end

L4_1 = {}
L5_1 = pairs
L6_1 = L1_1.baseCards
L5_1, L6_1, L7_1 = L5_1(L6_1)
for L8_1, L9_1 in L5_1, L6_1, L7_1 do
  L10_1 = #L4_1
  L10_1 = L10_1 + 1
  L4_1[L10_1] = L9_1
end
L5_1 = L3_1
L6_1 = L4_1
L5_1(L6_1)

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  L3_2 = L2_1
  L2_2.id = L3_2
  L3_2 = L2_1
  L3_2 = L3_2 + 1
  L2_1 = L3_2
  L2_2.base_card_id = A0_2
  L2_2.power = A1_2
  L2_2.last_used_at = 1393081327
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = L2_2
  return L3_2(L4_2, L5_2)
end

function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  o = L1_2
  L1_2 = setmetatable
  L2_2 = o
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  A0_2.__index = A0_2
  L1_2 = o
  L2_2 = L4_1
  L1_2.newBaseCards = L2_2
  L1_2 = o
  return L1_2
end

new = L6_1

function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L5_2 = 0
  L6_2 = {}
  if A3_2 == 1 then
    L6_2 = A0_2.newBaseCards
  else
    L7_2 = L1_1
    L6_2 = L7_2.baseCards
  end
  L7_2 = pairs
  L8_2 = A0_2.newBaseCards
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = L11_2.power
    if A1_2 >= L12_2 then
      L12_2 = L11_2.powerLimit
      if A1_2 <= L12_2 then
        L12_2 = mainPlayer
        L12_2 = L12_2.newCards
        if L12_2 then
          L12_2 = mainPlayer
          L12_2 = L12_2.showNewCards
          if L12_2 then
            L12_2 = math
            L12_2 = L12_2.random
            L13_2 = 1
            L14_2 = 4
            L12_2 = L12_2(L13_2, L14_2)
            if L12_2 <= 2 then
              L4_2 = 191
            else
              L4_2 = 128
            end
        end
        else
          L4_2 = L11_2.id
          if not A2_2 or A2_2 <= L5_2 then
            break
          else
            L5_2 = L5_2 + 1
            goto lbl_48
            break
          end
        end
      end
    end
    ::lbl_48::
  end
  if L4_2 == nil then
    if A1_2 < 15 then
      L7_2 = mainPlayer
      L7_2 = L7_2.newCards
      if L7_2 then
        L7_2 = mainPlayer
        L7_2 = L7_2.showNewCards
        if L7_2 then
          L7_2 = math
          L7_2 = L7_2.random
          L8_2 = 1
          L9_2 = 4
          L7_2 = L7_2(L8_2, L9_2)
          if L7_2 <= 2 then
            L4_2 = 247
          else
            L4_2 = 296
          end
      end
      else
        L4_2 = 100
      end
    else
      L4_2 = 386
    end
  end
  L7_2 = L5_1
  L8_2 = L4_2
  L9_2 = A1_2
  return L7_2(L8_2, L9_2)
end

generateCard = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = nil
  L4_2 = 0
  L5_2 = 1
  L6_2 = 4
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    if L8_2 < 3 then
      L9_2 = math
      L9_2 = L9_2.pow
      L10_2 = 2
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      L3_2 = L9_2
    else
      L3_2 = 8
    end
    L9_2 = math
    L9_2 = L9_2.floor
    L10_2 = A0_2 / L3_2
    L9_2 = L9_2(L10_2)
    L1_2[L8_2] = L9_2
    L9_2 = L1_2[L8_2]
    L4_2 = L4_2 + L9_2
  end
  if A0_2 > L4_2 then
    L5_2 = #L1_2
    L6_2 = #L1_2
    L6_2 = L1_2[L6_2]
    L6_2 = L6_2 + A0_2
    L6_2 = L6_2 - L4_2
    L1_2[L5_2] = L6_2
  end
  L2_2 = L1_2
  L5_2 = table
  L5_2 = L5_2.sort
  L6_2 = L2_2
  
  function L7_2(A0_3, A1_3)
    local L2_3
    L2_3 = A1_3 < A0_3
    return L2_3
  end
  
  L5_2(L6_2, L7_2)
  return L2_2
end

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = L6_1
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = 1
  L5_2 = 4
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L9_2 = A0_2
    L8_2 = A0_2.generateCard
    L10_2 = L2_2[L7_2]
    L11_2 = math
    L11_2 = L11_2.random
    L12_2 = 0
    L13_2 = 15
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = 1
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L3_2[L7_2] = L8_2
  end
  return L3_2
end

generateCardSet = L7_1
