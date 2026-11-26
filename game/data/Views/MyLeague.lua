local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Language"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Components.TDGoldLabelView"
L1_1 = L1_1(L2_1)

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = mainPlayer
  L1_2 = L1_2.betterLeagueTutorial
  if L1_2 then
    L1_2 = A0_2.currentGoldBonus
    L2_2 = L1_2
    L1_2 = L1_2.setValue
    L3_2 = mainPlayer
    L3_2 = L3_2.currentLeagueBonus
    L4_2 = true
    L5_2 = false
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = mainPlayer
    L1_2 = L1_2.nextLeagueBonus
    if 0 < L1_2 then
      L1_2 = A0_2.nextGoldBonus
      L2_2 = L1_2
      L1_2 = L1_2.setValue
      L3_2 = mainPlayer
      L3_2 = L3_2.nextLeagueBonus
      L4_2 = true
      L5_2 = false
      L1_2(L2_2, L3_2, L4_2, L5_2)
    else
      L1_2 = A0_2.nextLeagueText
      L1_2.isVisible = false
      L1_2 = A0_2.nextGoldBonus
      L1_2.isVisible = false
    end
  end
end

show = L2_1

function L2_1(A0_2)
  local L1_2
end

hide = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = setmetatable
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  L2_2 = display
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  A1_2.view = L2_2
  L2_2 = A1_2.view
  L3_2 = Constants
  L3_2 = L3_2.League_Info_Image_Height
  L4_2 = Constants
  L4_2 = L4_2.League_Info_Image_Width
  L3_2 = L3_2 / L4_2
  L4_2 = display
  L4_2 = L4_2.newRoundedRect
  L5_2 = L2_2
  L6_2 = 0
  L7_2 = 0
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 - 12
  L9_2 = display
  L9_2 = L9_2.contentWidth
  L9_2 = L9_2 - 12
  L9_2 = L9_2 * L3_2
  L10_2 = 5
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.leagueInfoBackgroundColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 - 12
  L5_2 = L5_2 / 2
  L4_2.x = L5_2
  L5_2 = display
  L5_2 = L5_2.contentHeight
  L5_2 = L5_2 - 70
  L5_2 = L5_2 / 2
  L4_2.y = L5_2
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = L2_2
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "League/League_Info_BG.png"
  L7_2 = L7_2 .. L8_2
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 - 12
  L9_2 = display
  L9_2 = L9_2.contentWidth
  L9_2 = L9_2 - 12
  L9_2 = L9_2 * L3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 - 12
  L6_2 = L6_2 / 2
  L5_2.x = L6_2
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 - 70
  L6_2 = L6_2 / 2
  L5_2.y = L6_2
  L5_2.alpha = 0.4
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = L2_2
  L8_2 = Constants
  L8_2 = L8_2.Path_Assets
  L9_2 = "League/League_Info_FG.png"
  L8_2 = L8_2 .. L9_2
  L9_2 = display
  L9_2 = L9_2.contentWidth
  L9_2 = L9_2 - 12
  L10_2 = display
  L10_2 = L10_2.contentWidth
  L10_2 = L10_2 - 12
  L10_2 = L10_2 * L3_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = display
  L7_2 = L7_2.contentWidth
  L7_2 = L7_2 - 12
  L7_2 = L7_2 / 2
  L6_2.x = L7_2
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L7_2 = L7_2 - 70
  L7_2 = L7_2 / 2
  L6_2.y = L7_2
  L7_2 = mainPlayer
  L7_2 = L7_2.betterLeagueTutorial
  if L7_2 then
    L7_2 = display
    L7_2 = L7_2.newText
    L8_2 = L2_2
    L9_2 = L0_1
    L9_2 = L9_2["Current League Bonus"]
    L10_2 = ": "
    L9_2 = L9_2 .. L10_2
    L10_2 = 0
    L11_2 = 0
    L12_2 = Constants
    L12_2 = L12_2.fontForTitle
    L12_2 = L12_2()
    L13_2 = 11
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L8_2 = L0_1
    L8_2 = L8_2.adjustX
    L9_2 = L7_2.width
    L9_2 = L9_2 / 2
    L9_2 = 20 + L9_2
    L10_2 = display
    L10_2 = L10_2.contentWidth
    L10_2 = -L10_2
    L10_2 = L10_2 + 120
    L11_2 = L7_2.width
    L10_2 = L10_2 + L11_2
    L8_2 = L8_2(L9_2, L10_2)
    L7_2.x = L8_2
    L7_2.y = 20
    L9_2 = L7_2
    L8_2 = L7_2.setFillColor
    L10_2 = Theme
    L10_2 = L10_2.colorsSet
    L10_2 = L10_2.blackColor
    L8_2(L9_2, L10_2)
    L8_2 = {}
    L8_2.value = 0
    L9_2 = Theme
    L9_2 = L9_2.colorsSet
    L9_2 = L9_2.blackColor
    L8_2.labelColor = L9_2
    L9_2 = Theme
    L9_2 = L9_2.colorsSet
    L9_2 = L9_2.blackColor
    L8_2.labelAnimationColor = L9_2
    L9_2 = Constants
    L9_2 = L9_2.fontForSubtitle
    L9_2 = L9_2()
    L8_2.font = L9_2
    L8_2.fontSize = 11
    L8_2.mode = "L"
    L8_2.gap = 15
    L9_2 = Constants
    L9_2 = L9_2.Path_Assets
    L10_2 = "BattleItems/FC-Outcome-gold.png"
    L9_2 = L9_2 .. L10_2
    L8_2.image = L9_2
    L8_2.widthIm = 18
    L8_2.heightIm = 18
    L9_2 = L1_1
    L10_2 = L9_2
    L9_2 = L9_2.new
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    A1_2.currentGoldBonus = L9_2
    L9_2 = A1_2.currentGoldBonus
    L10_2 = L0_1
    L10_2 = L10_2.adjustX
    L11_2 = L7_2.x
    L12_2 = L7_2.width
    L12_2 = L12_2 / 2
    L11_2 = L11_2 + L12_2
    L12_2 = A1_2.currentGoldBonus
    L12_2 = L12_2.width
    L12_2 = L12_2 / 2
    L11_2 = L11_2 + L12_2
    L11_2 = L11_2 + 10
    L12_2 = display
    L12_2 = L12_2.contentWidth
    L12_2 = -L12_2
    L13_2 = L7_2.x
    L12_2 = L12_2 + L13_2
    L13_2 = L7_2.x
    L12_2 = L12_2 + L13_2
    L10_2 = L10_2(L11_2, L12_2)
    L9_2.x = L10_2
    L9_2 = A1_2.currentGoldBonus
    L10_2 = L7_2.y
    L9_2.y = L10_2
    L10_2 = L2_2
    L9_2 = L2_2.insert
    L11_2 = A1_2.currentGoldBonus
    L11_2 = L11_2.view
    L9_2(L10_2, L11_2)
    L9_2 = display
    L9_2 = L9_2.newText
    L10_2 = L2_2
    L11_2 = L0_1
    L11_2 = L11_2["Next League Bonus"]
    L12_2 = ": "
    L11_2 = L11_2 .. L12_2
    L12_2 = 0
    L13_2 = 0
    L14_2 = Constants
    L14_2 = L14_2.fontForTitle
    L14_2 = L14_2()
    L15_2 = 11
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    A1_2.nextLeagueText = L9_2
    L9_2 = A1_2.nextLeagueText
    L10_2 = L0_1
    L10_2 = L10_2.adjustX
    L11_2 = A1_2.nextLeagueText
    L11_2 = L11_2.width
    L11_2 = L11_2 / 2
    L11_2 = 20 + L11_2
    L12_2 = display
    L12_2 = L12_2.contentWidth
    L12_2 = -L12_2
    L12_2 = L12_2 + 120
    L13_2 = A1_2.nextLeagueText
    L13_2 = L13_2.width
    L12_2 = L12_2 + L13_2
    L10_2 = L10_2(L11_2, L12_2)
    L9_2.x = L10_2
    L9_2 = A1_2.nextLeagueText
    L10_2 = L7_2.y
    L11_2 = L7_2.height
    L11_2 = L11_2 / 2
    L10_2 = L10_2 + L11_2
    L11_2 = A1_2.nextLeagueText
    L11_2 = L11_2.height
    L11_2 = L11_2 / 2
    L10_2 = L10_2 + L11_2
    L10_2 = L10_2 + 5
    L9_2.y = L10_2
    L9_2 = A1_2.nextLeagueText
    L10_2 = L9_2
    L9_2 = L9_2.setFillColor
    L11_2 = Theme
    L11_2 = L11_2.colorsSet
    L11_2 = L11_2.blackColor
    L9_2(L10_2, L11_2)
    L9_2 = L1_1
    L10_2 = L9_2
    L9_2 = L9_2.new
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    A1_2.nextGoldBonus = L9_2
    L9_2 = A1_2.nextGoldBonus
    L10_2 = A1_2.currentGoldBonus
    L10_2 = L10_2.x
    L9_2.x = L10_2
    L9_2 = A1_2.nextGoldBonus
    L10_2 = A1_2.nextLeagueText
    L10_2 = L10_2.y
    L9_2.y = L10_2
    L10_2 = L2_2
    L9_2 = L2_2.insert
    L11_2 = A1_2.nextGoldBonus
    L11_2 = L11_2.view
    L9_2(L10_2, L11_2)
  end
  return A1_2
end

new = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L2_1
