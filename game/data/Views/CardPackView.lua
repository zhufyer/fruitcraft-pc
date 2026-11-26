local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Views.CardView"
L0_1 = L0_1(L1_1)
L1_1 = nil

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = log3
  L4_2 = "new card packet view create"
  L3_2(L4_2)
  L3_2 = {}
  o = L3_2
  L3_2 = setmetatable
  L4_2 = o
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  A0_2.__index = A0_2
  L3_2 = o
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  L3_2.view = L4_2
  L3_2 = o
  L3_2.card_height = A2_2
  L3_2 = 0
  L4_2 = #A1_2
  L5_2 = pairs
  L6_2 = A1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = o
    L11_2 = L10_2
    L10_2 = L10_2.setCard
    L12_2 = L9_2
    L13_2 = L3_2 * 5
    L14_2 = L4_2 - 1
    L14_2 = L14_2 * 5
    L14_2 = L14_2 / 2
    L13_2 = L13_2 - L14_2
    L14_2 = L3_2 * 5
    L14_2 = -L14_2
    L15_2 = L4_2 - 1
    L15_2 = L15_2 * 5
    L15_2 = L15_2 / 2
    L14_2 = L14_2 + L15_2
    L10_2(L11_2, L12_2, L13_2, L14_2)
    L3_2 = L3_2 + 1
  end
  L5_2 = o
  L6_2 = L1_1
  L5_2.card_width = L6_2
  L5_2 = o
  return L5_2
end

new = L2_1

function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = {}
  L5_2 = A0_2.card_height
  if L5_2 ~= nil then
    L5_2 = A0_2.card_height
    L4_2.cardHeight = L5_2
  end
  L4_2.createObjectForLiveBattle = true
  L5_2 = L0_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = "big"
  L8_2 = A1_2
  L9_2 = nil
  L10_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L5_2.cardWidth
  L1_1 = L6_2
  L7_2 = L5_2
  L6_2 = L5_2.deselected
  L6_2(L7_2)
  L7_2 = L5_2
  L6_2 = L5_2.setPosition
  L8_2 = L5_2.cardWidth
  L8_2 = L8_2 / 2
  L8_2 = A2_2 - L8_2
  L9_2 = L5_2.cardHeight
  L9_2 = L9_2 / 2
  L9_2 = A3_2 - L9_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2.view
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L5_2.view
  L6_2(L7_2, L8_2)
  L6_2 = L5_2.view
  L7_2 = L6_2
  L6_2 = L6_2.toBack
  L6_2(L7_2)
  L6_2 = L0_1
  L6_2 = L6_2.cardIsHero
  L7_2 = L5_2.card
  L7_2 = L7_2.baseId
  L6_2 = L6_2(L7_2)
  if L6_2 then
    A0_2.heroCard = L5_2
    L7_2 = L5_2
    L6_2 = L5_2.addEnterFrameListener
    L6_2(L7_2)
  end
end

setCard = L2_1
