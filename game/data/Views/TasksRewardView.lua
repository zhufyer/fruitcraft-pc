local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Language"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.Toolbox"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Views.BoxWithTitleView"
L2_1 = L2_1(L3_1)
L3_1 = 12
L4_1 = 15

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = log3
  L4_2 = "new live battle ticket create"
  L3_2(L4_2)
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.width = A1_2
  L5_2.height = A2_2
  L5_2.name = "Rewards"
  L5_2.color = true
  L3_2 = L3_2(L4_2, L5_2)
  o = L3_2
  L3_2 = o
  L3_2.goldGain = 0
  L3_2 = o
  L4_2 = setRewards
  L3_2.setRewards = L4_2
  L3_2 = nil
  L4_2 = o
  L4_2 = L4_2.goldGain
  if 0 < L4_2 then
    L4_2 = "+"
    L5_2 = L0_1
    L5_2 = L5_2.adjustNumber
    L6_2 = L1_1
    L6_2 = L6_2.shortenLongNumber
    L7_2 = o
    L7_2 = L7_2.goldGain
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L3_2 = L4_2 .. L5_2
  else
    L4_2 = L0_1
    L4_2 = L4_2.adjustNumber
    L5_2 = L1_1
    L5_2 = L5_2.shortenLongNumber
    L6_2 = o
    L6_2 = L6_2.goldGain
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L3_2 = L4_2
  end
  L4_2 = o
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = o
  L6_2 = L6_2.group
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "BattleItems/FC-Outcome-gold.png"
  L7_2 = L7_2 .. L8_2
  L8_2 = 20
  L9_2 = 20
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L4_2.goldLabel = L5_2
  L4_2 = o
  L4_2 = L4_2.goldLabel
  L5_2 = o
  L5_2 = L5_2.info
  L5_2 = L5_2.width
  L5_2 = L5_2 / 2
  L6_2 = o
  L6_2 = L6_2.goldLabel
  L6_2 = L6_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 + 5
  L4_2.x = L5_2
  L4_2 = o
  L4_2 = L4_2.goldLabel
  L5_2 = o
  L5_2 = L5_2.bg
  L5_2 = L5_2.y
  L5_2 = L5_2 * 1.4
  L4_2.y = L5_2
  L4_2 = L3_1
  L5_2 = o
  L6_2 = display
  L6_2 = L6_2.newText
  L7_2 = o
  L7_2 = L7_2.group
  L8_2 = L3_2
  L9_2 = 0
  L10_2 = 0
  L11_2 = o
  L11_2 = L11_2.font
  if not L11_2 then
    L11_2 = native
    L11_2 = L11_2.systemFont
  end
  L12_2 = o
  L12_2 = L12_2.fontSize
  if not L12_2 then
    L12_2 = L4_2
  end
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2.goldLabelText = L6_2
  L5_2 = o
  L5_2 = L5_2.goldLabelText
  L6_2 = o
  L6_2 = L6_2.goldLabel
  L6_2 = L6_2.x
  L7_2 = o
  L7_2 = L7_2.goldLabel
  L7_2 = L7_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L6_2 = L6_2 + 4
  L7_2 = o
  L7_2 = L7_2.goldLabelText
  L7_2 = L7_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L5_2.x = L6_2
  L5_2 = o
  L5_2 = L5_2.goldLabelText
  L6_2 = o
  L6_2 = L6_2.goldLabel
  L6_2 = L6_2.y
  L5_2.y = L6_2
  L5_2 = o
  L5_2 = L5_2.goldLabelText
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = gray
  L5_2(L6_2, L7_2)
  L5_2 = o
  return L5_2
end

new = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.goldGain
  if 0 < L3_2 then
    L3_2 = "+"
    L4_2 = L0_1
    L4_2 = L4_2.adjustNumber
    L5_2 = L1_1
    L5_2 = L5_2.shortenLongNumber
    L6_2 = A1_2.goldGain
    L5_2, L6_2 = L5_2(L6_2)
    L4_2 = L4_2(L5_2, L6_2)
    L2_2 = L3_2 .. L4_2
  else
    L3_2 = L0_1
    L3_2 = L3_2.adjustNumber
    L4_2 = L1_1
    L4_2 = L4_2.shortenLongNumber
    L5_2 = A1_2.goldGain
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  end
  L3_2 = A0_2.goldLabelText
  L3_2.text = L2_2
  L3_2 = A0_2.goldLabelText
  L4_2 = A0_2.goldLabel
  L4_2 = L4_2.x
  L5_2 = A0_2.goldLabel
  L5_2 = L5_2.width
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L4_2 = L4_2 + 4
  L5_2 = A0_2.goldLabelText
  L5_2 = L5_2.width
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L3_2.x = L4_2
end

setRewards = L5_1
