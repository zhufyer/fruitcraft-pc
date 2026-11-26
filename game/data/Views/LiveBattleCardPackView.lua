local L0_1, L1_1, L2_1, L3_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Views.CardPackView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Utils.Toolbox"
L2_1 = L2_1(L3_1)

function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = log3
  L6_2 = "new card packet view create"
  L5_2(L6_2)
  L5_2 = {}
  A0_2 = L5_2
  L5_2 = setmetatable
  L6_2 = A0_2
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  A0_2.__index = A0_2
  A0_2.height = A3_2
  A0_2.width = A2_2
  A0_2.power = 0
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  A0_2.view = L5_2
  A0_2.name = A4_2
  A0_2.cards = A1_2
  L5_2 = display
  L5_2 = L5_2.newRoundedRect
  L6_2 = A0_2.view
  L7_2 = A2_2 / 2
  L8_2 = A3_2 / 2
  L9_2 = A2_2
  L10_2 = A3_2 - 5
  L11_2 = 3
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  A0_2.bg = L5_2
  L5_2 = A0_2.bg
  L5_2.strokeWidth = 2
  L5_2 = A0_2.bg
  L6_2 = L5_2
  L5_2 = L5_2.setStrokeColor
  L7_2 = Constants
  L7_2 = L7_2.greenColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = A0_2.bg
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = 1
  L8_2 = 1
  L9_2 = 1
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = A0_2.bg
  L6_2 = L5_2
  L5_2 = L5_2.toBack
  L5_2(L6_2)
  L5_2 = display
  L5_2 = L5_2.newRoundedRect
  L6_2 = A0_2.view
  L7_2 = A2_2 / 2
  L8_2 = A3_2 / 2
  L9_2 = A2_2 - 30
  L10_2 = A3_2 - 5
  L11_2 = 3
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  A0_2.bg1 = L5_2
  L5_2 = A0_2.bg1
  L5_2.strokeWidth = 2
  L5_2 = A0_2.bg1
  L6_2 = L5_2
  L5_2 = L5_2.setStrokeColor
  L7_2 = Constants
  L7_2 = L7_2.greenColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = A0_2.bg1
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = 1
  L8_2 = 1
  L9_2 = 1
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = A0_2.view
  L7_2 = A4_2
  L8_2 = 0
  L9_2 = 0
  L10_2 = Constants
  L10_2 = L10_2.fontForTitle
  L10_2 = L10_2()
  L11_2 = 10
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2.x = 14
  L6_2 = A3_2 * 0.5
  L5_2.y = L6_2
  L7_2 = L5_2
  L6_2 = L5_2.setFillColor
  L8_2 = gray
  L6_2(L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.rotate
  L8_2 = 90
  L6_2(L7_2, L8_2)
  L6_2 = display
  L6_2 = L6_2.newText
  L7_2 = A0_2.view
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = Constants
  L11_2 = L11_2.fontForTitle
  L11_2 = L11_2()
  L12_2 = 15
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  A0_2.maxPower = L6_2
  L6_2 = A0_2.maxPower
  L7_2 = A0_2.bg1
  L7_2 = L7_2.x
  L8_2 = A0_2.bg
  L8_2 = L8_2.x
  L7_2 = L7_2 + L8_2
  L7_2 = L7_2 - 7
  L6_2.x = L7_2
  L6_2 = A0_2.maxPower
  L7_2 = A3_2 * 0.5
  L6_2.y = L7_2
  L6_2 = A0_2.maxPower
  L7_2 = L6_2
  L6_2 = L6_2.setFillColor
  L8_2 = gray
  L6_2(L7_2, L8_2)
  L6_2 = A0_2.maxPower
  L7_2 = L6_2
  L6_2 = L6_2.rotate
  L8_2 = -90
  L6_2(L7_2, L8_2)
  L6_2 = L0_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = A0_2.cards
  L9_2 = A0_2.bg
  L9_2 = L9_2.height
  L9_2 = L9_2 - 20
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  A0_2.cardPackView = L6_2
  L6_2 = A0_2.cardPackView
  L6_2 = L6_2.view
  L7_2 = A0_2.width
  L7_2 = L7_2 * 0.5
  L6_2.x = L7_2
  L6_2 = A0_2.cardPackView
  L6_2 = L6_2.view
  L7_2 = A0_2.height
  L7_2 = L7_2 * 0.5
  L6_2.y = L7_2
  L6_2 = A0_2.cardPackView
  L6_2 = L6_2.card_width
  A0_2.card_width = L6_2
  L6_2 = A0_2.view
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = A0_2.cardPackView
  L8_2 = L8_2.view
  L6_2(L7_2, L8_2)
  L6_2 = ipairs
  L7_2 = A1_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = A0_2.power
    L12_2 = L10_2.power
    L11_2 = L11_2 + L12_2
    A0_2.power = L11_2
  end
  L6_2 = A0_2.maxPower
  L7_2 = L1_1
  L7_2 = L7_2.adjustNumber
  L8_2 = L2_1
  L8_2 = L8_2.shortenLongNumber
  L9_2 = A0_2.power
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2.text = L7_2
  return A0_2
end

new = L3_1

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = print
  L3_2 = "hahahahahaha"
  L2_2(L3_2)
  L2_2 = A0_2.cards
  L3_2 = A0_2.cards
  L3_2 = #L3_2
  L3_2 = L3_2 + 1
  L2_2[L3_2] = A1_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = A0_2.cards
  L5_2 = A0_2.bg
  L5_2 = L5_2.height
  L5_2 = L5_2 - 20
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.cardPackView = L2_2
  L2_2 = A0_2.cardPackView
  L2_2 = L2_2.view
  L3_2 = A0_2.width
  L3_2 = L3_2 * 0.5
  L2_2.x = L3_2
  L2_2 = A0_2.cardPackView
  L2_2 = L2_2.view
  L3_2 = A0_2.height
  L3_2 = L3_2 * 0.5
  L2_2.y = L3_2
  L2_2 = A0_2.cardPackView
  L2_2 = L2_2.card_width
  A0_2.card_width = L2_2
  L2_2 = A0_2.view
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = A0_2.cardPackView
  L4_2 = L4_2.view
  L2_2(L3_2, L4_2)
end

liveBattleAddCard = L3_1

function L3_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2 in L1_2, L2_2, L3_2 do
    A0_2[L4_2] = nil
  end
end

removeObject = L3_1
