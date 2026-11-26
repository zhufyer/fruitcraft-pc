local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "widget"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Views.LiveBattleFinishInfoView"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Models.UserCard"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Utils.Toolbox"
L3_1 = L3_1(L4_1)
L4_1 = display
L4_1 = L4_1.contentCenterX
L4_1 = L4_1 + 40
L5_1 = 69

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = log3
  L3_2 = "live battle result for: "
  L4_2 = A1_2.viewType
  L2_2(L3_2, L4_2)
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = setmetatable
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  A1_2.infoCounter = 0
  L2_2 = display
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  A1_2.view = L2_2
  L2_2 = A1_2.playersInfo
  if not L2_2 then
    L2_2 = log3
    L3_2 = "no info set for players"
    L2_2 = L2_2(L3_2)
  end
  A1_2.playersInfo = L2_2
  L2_2 = L4_1
  L2_2 = L2_2 - 12
  L3_2 = display
  L3_2 = L3_2.contentHeight
  L3_2 = L3_2 - 70
  L4_2 = display
  L4_2 = L4_2.newRoundedRect
  L5_2 = L2_2 / 2
  L5_2 = L5_2 + 2
  L6_2 = L3_2 / 2
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = 0.8901960784313725
  L8_2 = 0.7019607843137254
  L9_2 = 0.08627450980392157
  L10_2 = 0.2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = A1_2.view
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = L0_1
  L5_2 = L5_2.newScrollView
  L6_2 = {}
  L7_2 = display
  L7_2 = L7_2.contentWidth
  L7_2 = L7_2 / 2
  L7_2 = L7_2 + 30
  L6_2.width = L7_2
  L7_2 = L4_2.height
  L6_2.height = L7_2
  L6_2.hideScrollBar = true
  L6_2.horizontalScrollDisabled = true
  L6_2.hideScrollBar = true
  L6_2.scrollWidth = 0
  L6_2.scrollHeight = 0
  L6_2.topPadding = 0
  L6_2.bottomPadding = 8
  L6_2.rightPadding = 20
  L7_2 = {}
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L6_2.backgroundColor = L7_2
  L5_2 = L5_2(L6_2)
  A1_2.scrollView = L5_2
  L5_2 = A1_2.scrollView
  L6_2 = L4_1
  L6_2 = L6_2 / 2
  L5_2.x = L6_2
  L5_2 = A1_2.scrollView
  L6_2 = A1_2.scrollView
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L5_2.y = L6_2
  L5_2 = A1_2.view
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = A1_2.scrollView
  L5_2(L6_2, L7_2)
  L5_2 = {}
  A1_2.info = L5_2
  L5_2 = true
  L6_2 = pairs
  L7_2 = A1_2.playersInfo
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2 in L6_2, L7_2, L8_2 do
    if L5_2 == true then
      L10_2 = A1_2.tribe
      if not L10_2 then
        L10_2 = A1_2.playersInfo
        L10_2 = L10_2[L9_2]
        L10_2 = L10_2.name
      end
      A1_2.tribe = L10_2
      L10_2 = A1_2.tribe
      if L10_2 == "" then
        L10_2 = A1_2.playersInfo
        L10_2 = L10_2[L9_2]
        L10_2 = L10_2.name
        A1_2.tribe = L10_2
      end
    end
    L10_2 = A1_2.info
    L11_2 = {}
    L12_2 = A1_2.playersInfo
    L12_2 = L12_2[L9_2]
    L12_2 = L12_2.name
    L11_2.name = L12_2
    L12_2 = A1_2.playersInfo
    L12_2 = L12_2[L9_2]
    L12_2 = L12_2.score
    L11_2.score = L12_2
    L12_2 = A1_2.playersInfo
    L12_2 = L12_2[L9_2]
    L12_2 = L12_2.power
    L11_2.power = L12_2
    L12_2 = A1_2.playersInfo
    L12_2 = L12_2[L9_2]
    L12_2 = L12_2.added_gold
    L11_2.added_gold = L12_2
    L12_2 = A1_2.playersInfo
    L12_2 = L12_2[L9_2]
    L12_2 = L12_2.added_xp
    L11_2.added_xp = L12_2
    L12_2 = A1_2.playersInfo
    L12_2 = L12_2[L9_2]
    L12_2 = L12_2.cards
    L11_2.cards = L12_2
    L12_2 = A1_2.playersInfo
    L12_2 = L12_2[L9_2]
    L12_2 = L12_2.hero_benefits_info
    L11_2.hero_benefits_info = L12_2
    L10_2[L9_2] = L11_2
  end
  L6_2 = A1_2.viewType
  if L6_2 == "owner" then
    L6_2 = log3
    L7_2 = "owner side"
    L6_2(L7_2)
    L6_2 = A1_2.battleResult
    if L6_2 == 0 then
      L6_2 = display
      L6_2 = L6_2.newImageRect
      L7_2 = Constants
      L7_2 = L7_2.Path_Assets
      L8_2 = "BattleItems/Invitation Achievement.png"
      L7_2 = L7_2 .. L8_2
      L8_2 = 113
      L9_2 = L5_1
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      A1_2.outcomeImage = L6_2
    else
      L6_2 = A1_2.battleResult
      if L6_2 == true then
        L6_2 = display
        L6_2 = L6_2.newImageRect
        L7_2 = Constants
        L7_2 = L7_2.Path_Assets
        L8_2 = "BattleItems/FC-Outcome-popup-youwin.png"
        L7_2 = L7_2 .. L8_2
        L8_2 = 213
        L9_2 = L5_1
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        A1_2.outcomeImage = L6_2
      else
        L6_2 = display
        L6_2 = L6_2.newImageRect
        L7_2 = Constants
        L7_2 = L7_2.Path_Assets
        L8_2 = "BattleItems/FC-Outcome-popup-youlost.png"
        L7_2 = L7_2 .. L8_2
        L8_2 = 213
        L9_2 = L5_1
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        A1_2.outcomeImage = L6_2
      end
    end
    L6_2 = A1_2.outcomeImage
    L7_2 = L4_1
    L7_2 = L7_2 / 2
    L6_2.x = L7_2
    L6_2 = A1_2.outcomeImage
    L7_2 = A1_2.outcomeImage
    L7_2 = L7_2.height
    L7_2 = L7_2 / 2
    L7_2 = L7_2 + 5
    L6_2.y = L7_2
    L6_2 = A1_2.scrollView
    L7_2 = L6_2
    L6_2 = L6_2.insert
    L8_2 = A1_2.outcomeImage
    L6_2(L7_2, L8_2)
    L6_2 = A1_2.infoCounter
    L6_2 = L6_2 + 1
    A1_2.infoCounter = L6_2
    L6_2 = tostring
    L7_2 = mainPlayer
    L7_2 = L7_2.id
    L6_2 = L6_2(L7_2)
    L7_2 = A1_2.info
    L7_2 = L7_2[L6_2]
    if L7_2 ~= nil then
      L7_2 = log3
      L8_2 = "add main player to scroller with id:"
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      L8_2 = A1_2
      L7_2 = A1_2.addInfo
      L9_2 = A1_2.info
      L9_2 = L9_2[L6_2]
      L9_2 = L9_2.name
      L10_2 = A1_2.info
      L10_2 = L10_2[L6_2]
      L10_2 = L10_2.score
      L11_2 = A1_2.info
      L11_2 = L11_2[L6_2]
      L11_2 = L11_2.power
      L12_2 = A1_2.info
      L12_2 = L12_2[L6_2]
      L12_2 = L12_2.added_gold
      L13_2 = A1_2.info
      L13_2 = L13_2[L6_2]
      L13_2 = L13_2.added_xp
      L14_2 = A1_2.info
      L14_2 = L14_2[L6_2]
      L14_2 = L14_2.cards
      L15_2 = A1_2.info
      L15_2 = L15_2[L6_2]
      L15_2 = L15_2.hero_benefits_info
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    end
  else
    L6_2 = A1_2.viewType
    if L6_2 == "opponent" then
      L6_2 = log3
      L7_2 = "opponent side"
      L6_2(L7_2)
      L6_2 = display
      L6_2 = L6_2.newGroup
      L6_2 = L6_2()
      L7_2 = 57
      L8_2 = A1_2.tribe
      if L8_2 == nil then
        A1_2.tribe = "tribe"
        L8_2 = log3
        L9_2 = "no tribe define for enemies"
        L8_2(L9_2)
      end
      L8_2 = L3_1
      L8_2 = L8_2.stringUTFLength
      L9_2 = A1_2.tribe
      L8_2 = L8_2(L9_2)
      if 20 < L8_2 then
        L8_2 = L3_1
        L8_2 = L8_2.isStringPersianInAndroid
        L9_2 = A1_2.tribe
        L10_2 = L9_2
        L9_2 = L9_2.sub
        L11_2 = 1
        L12_2 = 1
        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L9_2(L10_2, L11_2, L12_2)
        L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
        if L8_2 then
          L8_2 = "..."
          L9_2 = L3_1
          L9_2 = L9_2.utf8sub
          L10_2 = A1_2.tribe
          L11_2 = 0
          L12_2 = 18
          L9_2 = L9_2(L10_2, L11_2, L12_2)
          L8_2 = L8_2 .. L9_2
          A1_2.tribe = L8_2
        else
          L8_2 = L3_1
          L8_2 = L8_2.utf8sub
          L9_2 = A1_2.tribe
          L10_2 = 0
          L11_2 = 18
          L8_2 = L8_2(L9_2, L10_2, L11_2)
          L9_2 = "..."
          L8_2 = L8_2 .. L9_2
          A1_2.tribe = L8_2
        end
      end
      L8_2 = display
      L8_2 = L8_2.newText
      L9_2 = A1_2.tribe
      L10_2 = 0
      L11_2 = 0
      L12_2 = A1_2.font
      if not L12_2 then
        L12_2 = Constants
        L12_2 = L12_2.fontForTitle
        L12_2 = L12_2()
      end
      L13_2 = A1_2.fontSize
      if not L13_2 then
        L13_2 = 17
      end
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
      L10_2 = L8_2
      L9_2 = L8_2.setFillColor
      L11_2 = 0.7843137254901961
      L12_2 = 0.8823529411764706
      L13_2 = 0.7607843137254902
      L9_2(L10_2, L11_2, L12_2, L13_2)
      L9_2 = display
      L9_2 = L9_2.newRoundedRect
      L10_2 = 0
      L11_2 = 0
      L12_2 = L8_2.width
      L13_2 = L7_2 / 2
      L12_2 = L12_2 + L13_2
      L12_2 = L12_2 + 10
      L13_2 = 35
      L14_2 = 7
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
      L10_2 = L9_2.width
      L10_2 = L10_2 + L7_2
      L10_2 = L10_2 / 2
      L11_2 = L4_1
      L11_2 = L11_2 / 2
      L10_2 = L10_2 + L11_2
      L11_2 = L9_2.width
      L12_2 = L7_2 / 2
      L11_2 = L11_2 + L12_2
      L10_2 = L10_2 - L11_2
      L11_2 = L9_2.width
      L11_2 = L11_2 / 2
      L10_2 = L10_2 + L11_2
      L10_2 = L10_2 + 5
      L9_2.x = L10_2
      L10_2 = L5_1
      L10_2 = L10_2 / 2
      L10_2 = L10_2 - 6
      L9_2.y = L10_2
      L10_2 = L9_2.x
      L11_2 = L7_2 / 4
      L10_2 = L10_2 + L11_2
      L10_2 = L10_2 - 2
      L8_2.x = L10_2
      L10_2 = L9_2.y
      L8_2.y = L10_2
      L9_2.strokeWidth = 2
      L11_2 = L9_2
      L10_2 = L9_2.setStrokeColor
      L12_2 = Constants
      L12_2 = L12_2.darkGreenColor
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2()
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L11_2 = L9_2
      L10_2 = L9_2.setFillColor
      L12_2 = Constants
      L12_2 = L12_2.greenColor
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2()
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L10_2 = display
      L10_2 = L10_2.newImageRect
      L11_2 = Constants
      L11_2 = L11_2.Path_Assets
      L12_2 = "LiveBattle/FC-emblem.png"
      L11_2 = L11_2 .. L12_2
      L12_2 = L7_2
      L13_2 = L5_1
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L11_2 = L9_2.x
      L12_2 = L9_2.width
      L12_2 = L12_2 / 2
      L11_2 = L11_2 - L12_2
      L10_2.x = L11_2
      L11_2 = L9_2.y
      L11_2 = L11_2 + 11
      L10_2.y = L11_2
      L12_2 = L6_2
      L11_2 = L6_2.insert
      L13_2 = L9_2
      L11_2(L12_2, L13_2)
      L12_2 = L6_2
      L11_2 = L6_2.insert
      L13_2 = L8_2
      L11_2(L12_2, L13_2)
      L12_2 = L6_2
      L11_2 = L6_2.insert
      L13_2 = L10_2
      L11_2(L12_2, L13_2)
      L11_2 = A1_2.scrollView
      L12_2 = L11_2
      L11_2 = L11_2.insert
      L13_2 = L6_2
      L11_2(L12_2, L13_2)
      L11_2 = A1_2.infoCounter
      L11_2 = L11_2 + 1
      A1_2.infoCounter = L11_2
    else
      L6_2 = log3
      L7_2 = "type not define for live battle outcome view"
      L6_2(L7_2)
    end
  end
  L6_2 = pairs
  L7_2 = A1_2.info
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2 in L6_2, L7_2, L8_2 do
    L10_2 = tostring
    L11_2 = mainPlayer
    L11_2 = L11_2.id
    L10_2 = L10_2(L11_2)
    if L9_2 ~= L10_2 then
      L11_2 = A1_2
      L10_2 = A1_2.addInfo
      L12_2 = A1_2.info
      L12_2 = L12_2[L9_2]
      L12_2 = L12_2.name
      L13_2 = A1_2.info
      L13_2 = L13_2[L9_2]
      L13_2 = L13_2.score
      L14_2 = A1_2.info
      L14_2 = L14_2[L9_2]
      L14_2 = L14_2.power
      L15_2 = A1_2.info
      L15_2 = L15_2[L9_2]
      L15_2 = L15_2.added_gold
      L16_2 = A1_2.info
      L16_2 = L16_2[L9_2]
      L16_2 = L16_2.added_xp
      L17_2 = A1_2.info
      L17_2 = L17_2[L9_2]
      L17_2 = L17_2.cards
      L18_2 = A1_2.info
      L18_2 = L18_2[L9_2]
      L18_2 = L18_2.hero_benefits_info
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    else
      L10_2 = log3
      L11_2 = "this player is main player adn added before"
      L12_2 = A1_2.viewType
      L13_2 = L9_2
      L10_2(L11_2, L12_2, L13_2)
    end
  end
  return A1_2
end

new = L6_1

function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2
  L8_2 = L1_1
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = {}
  L11_2 = A0_2.battleResult
  L10_2.battleResult = L11_2
  L10_2.name = A1_2
  L10_2.score = A2_2
  L10_2.battlePower = A3_2
  L10_2.goldGain = A4_2
  L10_2.xpGain = A5_2
  L10_2.cards = A6_2
  L10_2.heroBenefits = A7_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = L8_2.group
  L10_2 = L4_1
  L11_2 = L8_2.bg
  L11_2 = L11_2.width
  L10_2 = L10_2 - L11_2
  L10_2 = L10_2 / 2
  L10_2 = L10_2 - 10
  L9_2.x = L10_2
  L9_2 = L8_2.group
  L10_2 = A0_2.infoCounter
  L11_2 = L8_2.bg
  L11_2 = L11_2.height
  L11_2 = L11_2 + 10
  L11_2 = L11_2 + 30
  L10_2 = L10_2 * L11_2
  L10_2 = L10_2 - 10
  L9_2.y = L10_2
  L9_2 = A0_2.scrollView
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L8_2.group
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.heroCard
  if L9_2 == nil then
    L9_2 = {}
    A0_2.heroCard = L9_2
  end
  L9_2 = L8_2.heroCard
  if L9_2 then
    L9_2 = A0_2.heroCard
    L10_2 = A0_2.infoCounter
    L11_2 = L8_2.heroCard
    L9_2[L10_2] = L11_2
  end
  L9_2 = A0_2.infoCounter
  L9_2 = L9_2 + 1
  A0_2.infoCounter = L9_2
end

addInfo = L6_1

function L6_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L1_2.id = 5572848
  L1_2.base_card_id = 333
  L1_2.power = A0_2
  L1_2.last_used_at = 1393081327
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = L1_2
  return L2_2(L3_2, L4_2)
end

setCard = L6_1
