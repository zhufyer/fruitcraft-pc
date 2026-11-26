local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Views.CardView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Models.UserCard"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Models.Card"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.CircleTimer"
L3_1 = L3_1(L4_1)

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if not A1_2 then
    L3_2 = {}
    A1_2 = L3_2
  end
  L3_2 = setmetatable
  L4_2 = A1_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  A0_2.__index = A0_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  A1_2.view = L3_2
  L3_2 = {}
  L4_2 = A1_2.card_height
  if L4_2 ~= nil then
    L4_2 = A1_2.card_height
    L3_2.cardHeight = L4_2
  end
  L3_2.createObjectForLiveBattle = true
  L4_2 = L0_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = "big"
  L7_2 = "slot"
  L8_2 = nil
  L9_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  A1_2.card = L4_2
  L4_2 = A1_2.card
  L4_2 = L4_2.cardWidth
  A1_2.card_width = L4_2
  L4_2 = A1_2.card
  L5_2 = L4_2
  L4_2 = L4_2.deselected
  L4_2(L5_2)
  A1_2.state = "empty"
  L4_2 = A1_2.view
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = A1_2.card
  L6_2 = L6_2.view
  L4_2(L5_2, L6_2)
  L4_2 = A1_2._time
  if not L4_2 then
    L4_2 = 10
  end
  A1_2._time = L4_2
  L4_2 = L3_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L7_2 = A1_2._time
  L6_2.counter = L7_2
  L7_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A1_2.timer = L4_2
  L4_2 = A1_2.timer
  L4_2 = L4_2.view
  L5_2 = A1_2.card
  L5_2 = L5_2.background
  L5_2 = L5_2.x
  L4_2.x = L5_2
  L4_2 = A1_2.timer
  L4_2 = L4_2.view
  L5_2 = A1_2.card
  L5_2 = L5_2.background
  L5_2 = L5_2.y
  L5_2 = L5_2 - 3
  L4_2.y = L5_2
  L4_2 = A1_2.view
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = A1_2.timer
  L6_2 = L6_2.view
  L4_2(L5_2, L6_2)
  return A1_2
end

new = L4_1
