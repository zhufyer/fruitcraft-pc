local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.BaseView"
L0_1 = L0_1(L1_1)
L1_1 = setmetatable
L2_1 = _M
L3_1 = {}
L3_1.__index = L0_1
L1_1(L2_1, L3_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "widget"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Utils.Analytics"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "composer"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.NotificationView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Models.AchievementManager"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Views.EffectsManager"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Utils.Toolbox"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Tutorial.VerticalOverlayView"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Components.TDButtonView"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Components.TDProgressBarView"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Components.TDGoldLabelView"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Components.TDNumberLabelView"
L13_1 = L13_1(L14_1)
L14_1 = require
L15_1 = "Models.Player"
L14_1 = L14_1(L15_1)
L15_1 = require
L16_1 = "Tutorial.TutorialManager2"
L15_1 = L15_1(L16_1)
L16_1 = require
L17_1 = "Views.EffectsManager"
L16_1 = L16_1(L17_1)
L17_1 = require
L18_1 = "Components.TDDialogView"
L17_1 = L17_1(L18_1)
L18_1 = nil
L19_1 = nil
L20_1 = nil

function L21_1()
  local L0_2, L1_2, L2_2
  L0_2 = currentOverlay
  if L0_2 then
    L0_2 = currentOverlay
    L1_2 = L0_2
    L0_2 = L0_2.pressHomeButton
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = nil
    currentOverlay = L0_2
    L0_2 = "exit"
    _backAction = L0_2
  end
end

removeOverlay = L21_1

function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = L3_2
  L6_2 = A2_2
  L7_2 = 25
  L8_2 = 25
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L3_2
  L7_2 = A1_2
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = Constants
  L12_2 = L12_2.fontForTitle
  L12_2 = L12_2()
  L13_2 = 12
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2.x = 0
  L4_2.y = 0
  L6_2 = L4_2.x
  L5_2.x = L6_2
  L6_2 = L4_2.y
  L7_2 = L4_2.height
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L7_2 = L5_2.height
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L5_2.y = L6_2
  L3_2.alpha = 0
  return L3_2
end

function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = display
  L1_2 = L1_2.newRect
  L2_2 = A0_2.view
  L3_2 = 0
  L4_2 = 0
  L5_2 = 570
  L6_2 = 360
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.dimBackground = L1_2
  L1_2 = A0_2.operation
  L1_2 = L1_2.outcome
  if L1_2 == true then
    L1_2 = A0_2.dimBackground
    L2_2 = L1_2
    L1_2 = L1_2.setFillColor
    L3_2 = 0.11764705882352941
    L4_2 = 0.13333333333333333
    L5_2 = 0.0784313725490196
    L6_2 = 0.8
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = display
    L1_2 = L1_2.newImageRect
    L2_2 = A0_2.view
    L3_2 = Constants
    L3_2 = L3_2.Path_Assets
    L4_2 = "BattleItems/FC-Outcome-popup-youwin.png"
    L3_2 = L3_2 .. L4_2
    L4_2 = 142
    L5_2 = 46
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2.outcomeImage = L1_2
  else
    L1_2 = A0_2.dimBackground
    L2_2 = L1_2
    L1_2 = L1_2.setFillColor
    L3_2 = Theme
    L3_2 = L3_2.colorsSet
    L3_2 = L3_2[1]
    L4_2 = Theme
    L4_2 = L4_2.colorsSet
    L4_2 = L4_2[2]
    L5_2 = Theme
    L5_2 = L5_2.colorsSet
    L5_2 = L5_2[3]
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = display
    L1_2 = L1_2.newImageRect
    L2_2 = A0_2.view
    L3_2 = Constants
    L3_2 = L3_2.Path_Assets
    L4_2 = "BattleItems/FC-Outcome-popup-youlost.png"
    L3_2 = L3_2 .. L4_2
    L4_2 = 142
    L5_2 = 46
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    A0_2.outcomeImage = L1_2
  end
  L1_2 = A0_2.dimBackground
  L2_2 = display
  L2_2 = L2_2.contentCenterX
  L1_2.x = L2_2
  L1_2 = A0_2.dimBackground
  L2_2 = display
  L2_2 = L2_2.contentCenterY
  L1_2.y = L2_2
  L1_2 = A0_2.dimBackground
  L1_2.isHitTestable = true
  L1_2 = A0_2.dimBackground
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = "touch"
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.dimBackground
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = "tap"
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.type
  if L1_2 == "battle" then
    L1_2 = display
    L1_2 = L1_2.newText
    L2_2 = A0_2.view
    L3_2 = A0_2.operation
    L3_2 = L3_2.opponentName
    L4_2 = 0
    L5_2 = 0
    L6_2 = Constants
    L6_2 = L6_2.fontForTitle
    L6_2 = L6_2()
    L7_2 = 13
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
    A0_2.opponentNameLabel = L1_2
    L1_2 = A0_2.opponentNameLabel
    L1_2.alpha = 0
  end
  L1_2 = A0_2.view
  L2_2 = L1_2
  L1_2 = L1_2.insert
  L3_2 = A0_2.outcomeImage
  L1_2(L2_2, L3_2)
  L1_2 = display
  L1_2 = L1_2.newGroup
  L1_2 = L1_2()
  A0_2.heroAbilityGroup = L1_2
  L1_2 = A0_2.view
  L2_2 = L1_2
  L1_2 = L1_2.insert
  L3_2 = A0_2.heroAbilityGroup
  L1_2(L2_2, L3_2)
  L1_2 = L21_1
  L2_2 = L1_1
  L2_2 = L2_2["Power Attribute"]
  L3_2 = L1_1
  L3_2 = L3_2.adjustNumber
  L4_2 = L8_1
  L4_2 = L4_2.shortenLongNumber
  L5_2 = A0_2.powerBenefitAmount
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "Heroes/powerIcon-Small.png"
  L4_2 = L4_2 .. L5_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.heroPowerAbility = L1_2
  L1_2 = A0_2.heroAbilityGroup
  L2_2 = L1_2
  L1_2 = L1_2.insert
  L3_2 = A0_2.heroPowerAbility
  L1_2(L2_2, L3_2)
  L1_2 = L21_1
  L2_2 = L1_1
  L2_2 = L2_2["Wisdom Attribute"]
  L3_2 = L1_1
  L3_2 = L3_2.adjustNumber
  L4_2 = L8_1
  L4_2 = L4_2.getTimeStringFromNumberOfSeconds
  L5_2 = A0_2.wisdomBenefitAmount
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "Heroes/wisdomIcon-Small.png"
  L4_2 = L4_2 .. L5_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.heroWisdomAbility = L1_2
  L1_2 = A0_2.heroAbilityGroup
  L2_2 = L1_2
  L1_2 = L1_2.insert
  L3_2 = A0_2.heroWisdomAbility
  L1_2(L2_2, L3_2)
  L1_2 = L21_1
  L2_2 = L1_1
  L2_2 = L2_2["Blessing Attribute"]
  L3_2 = L1_1
  L3_2 = L3_2.adjustNumber
  L4_2 = L8_1
  L4_2 = L4_2.shortenLongNumber
  L5_2 = A0_2.blessingBenefitAmount
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "Heroes/blessingIcon-Small.png"
  L4_2 = L4_2 .. L5_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.heroBlessingAbility = L1_2
  L1_2 = A0_2.heroAbilityGroup
  L2_2 = L1_2
  L1_2 = L1_2.insert
  L3_2 = A0_2.heroBlessingAbility
  L1_2(L2_2, L3_2)
  L1_2 = display
  L1_2 = L1_2.newText
  L2_2 = A0_2.view
  L3_2 = L1_1
  L3_2 = L3_2.Level
  L4_2 = " "
  L5_2 = L1_1
  L5_2 = L5_2.adjustNumber
  L6_2 = mainPlayer
  L6_2 = L6_2.level
  L5_2 = L5_2(L6_2)
  L3_2 = L3_2 .. L4_2 .. L5_2
  L4_2 = 0
  L5_2 = 0
  L6_2 = Constants
  L6_2 = L6_2.fontForTitle
  L6_2 = L6_2()
  L7_2 = 13
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.currentLevelLabel = L1_2
  L1_2 = A0_2.currentLevelLabel
  L1_2.alpha = 0
  L1_2 = L11_1
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L3_2.id = "xpProgress"
  L3_2.initialValue = 0
  L3_2.maxValue = 100
  L4_2 = display
  L4_2 = L4_2.contentWidth
  L4_2 = L4_2 * 1060
  L4_2 = L4_2 / 1920
  L3_2.width = L4_2
  L3_2.height = 12.5
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L4_2 = L4_2 - 10
  L3_2.y = L4_2
  L3_2.alpha = 0.59
  L4_2 = L1_1
  L4_2 = L4_2.localizedString
  L5_2 = "more to level up"
  L6_2 = {}
  L7_2 = L1_1
  L7_2 = L7_2.adjustNumber
  L8_2 = mainPlayer
  L9_2 = L8_2
  L8_2 = L8_2.xpTillLevelUp
  L8_2, L9_2 = L8_2(L9_2)
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.xp = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.label = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.xpProgressBar = L1_2
  L1_2 = A0_2.view
  L2_2 = L1_2
  L1_2 = L1_2.insert
  L3_2 = A0_2.xpProgressBar
  L3_2 = L3_2.view
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.xpProgressBar
  L1_2.alpha = 0
  L1_2 = display
  L1_2 = L1_2.newText
  L2_2 = A0_2.view
  L3_2 = L1_1
  L3_2 = L3_2.Rewards
  L4_2 = " : "
  L3_2 = L3_2 .. L4_2
  L4_2 = 0
  L5_2 = 0
  L6_2 = Constants
  L6_2 = L6_2.fontForTitle
  L6_2 = L6_2()
  L7_2 = 13
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.awardslabel = L1_2
  L1_2 = A0_2.awardslabel
  L1_2.alpha = 0
  L1_2 = nil
  L2_2 = L1_1
  L2_2 = L2_2.lang
  if L2_2 ~= "fa" then
    L2_2 = L1_1
    L2_2 = L2_2.lang
    if L2_2 ~= "ar" then
      goto lbl_258
    end
  end
  L1_2 = "L"
  goto lbl_259
  ::lbl_258::
  L1_2 = "R"
  ::lbl_259::
  L2_2 = {}
  L2_2.value = 0
  L3_2 = {}
  L4_2 = 1
  L5_2 = 1
  L6_2 = 1
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L2_2.labelColor = L3_2
  L3_2 = {}
  L4_2 = 1
  L5_2 = 1
  L6_2 = 1
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L2_2.labelAnimationColor = L3_2
  L3_2 = Constants
  L3_2 = L3_2.fontForTitle
  L3_2 = L3_2()
  L2_2.font = L3_2
  L2_2.fontSize = 13
  L2_2.mode = L1_2
  L3_2 = Constants
  L3_2 = L3_2.Path_Assets
  L4_2 = "BattleItems/FC-Outcome-XP.png"
  L3_2 = L3_2 .. L4_2
  L2_2.image = L3_2
  L2_2.widthIm = 18
  L2_2.heightIm = 18
  L3_2 = L12_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.xpLabel = L3_2
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.xpLabel
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.xpLabel
  L3_2.scaleIncreaseAmount = 0
  L3_2 = A0_2.xpLabel
  L3_2.alpha = 0
  L3_2 = Constants
  L3_2 = L3_2.Path_Assets
  L4_2 = "BattleItems/FC-Outcome-gold.png"
  L3_2 = L3_2 .. L4_2
  L2_2.image = L3_2
  L3_2 = L12_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.goldLabel = L3_2
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.goldLabel
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.goldLabel
  L3_2.scaleIncreaseAmount = 0
  L3_2 = A0_2.goldLabel
  L3_2.alpha = 0
  L3_2 = A0_2.rareGiftAmount
  if L3_2 then
    L3_2 = A0_2.rareGiftAmount
    if 0 < L3_2 then
      L3_2 = Constants
      L3_2 = L3_2.Path_Assets
      L4_2 = "BattleItems/potion.png"
      L3_2 = L3_2 .. L4_2
      L2_2.image = L3_2
      L2_2.widthIm = 14
      L2_2.heightIm = 23
      L3_2 = A0_2.operation
      L3_2 = L3_2.giftNectar
      if 0 < L3_2 then
        L3_2 = Theme
        L3_2 = L3_2.nectarIconImage
        L2_2.image = L3_2
        L2_2.widthIm = 20
        L2_2.heightIm = 22
      end
      L3_2 = L12_1
      L4_2 = L3_2
      L3_2 = L3_2.new
      L5_2 = L2_2
      L3_2 = L3_2(L4_2, L5_2)
      A0_2.rareGiftLabel = L3_2
      L3_2 = A0_2.view
      L4_2 = L3_2
      L3_2 = L3_2.insert
      L5_2 = A0_2.rareGiftLabel
      L5_2 = L5_2.view
      L3_2(L4_2, L5_2)
      L3_2 = A0_2.rareGiftLabel
      L3_2.scaleIncreaseAmount = 0
      L3_2 = A0_2.rareGiftLabel
      L3_2.alpha = 0
      L3_2 = A0_2.rareGiftLabel
      L4_2 = L3_2
      L3_2 = L3_2.setValue
      L5_2 = A0_2.rareGiftAmount
      L6_2 = true
      L7_2 = true
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  end
  L3_2 = A0_2.operation
  L3_2 = L3_2.scoreAdded
  if L3_2 then
    L3_2 = mainPlayer
    L3_2 = L3_2.leagueId
    if L3_2 ~= nil then
      L3_2 = mainPlayer
      L3_2 = L3_2.leagueId
      if L3_2 ~= 0 then
        L3_2 = Constants
        L3_2 = L3_2.Path_Assets
        L4_2 = "LiveBattle/score.png"
        L3_2 = L3_2 .. L4_2
        L2_2.image = L3_2
        L2_2.widthIm = 16
        L2_2.heightIm = 19
        L3_2 = L12_1
        L4_2 = L3_2
        L3_2 = L3_2.new
        L5_2 = L2_2
        L3_2 = L3_2(L4_2, L5_2)
        A0_2.seedLabel = L3_2
        L3_2 = A0_2.view
        L4_2 = L3_2
        L3_2 = L3_2.insert
        L5_2 = A0_2.seedLabel
        L5_2 = L5_2.view
        L3_2(L4_2, L5_2)
        L3_2 = A0_2.seedLabel
        L3_2.scaleIncreaseAmount = 0
        L3_2 = A0_2.seedLabel
        L3_2.alpha = 0
      end
    end
  end
  L3_2 = A0_2.operation
  L3_2 = L3_2.leagueBonus
  if L3_2 then
    L3_2 = mainPlayer
    L3_2 = L3_2.leagueId
    if L3_2 ~= nil then
      L3_2 = mainPlayer
      L3_2 = L3_2.leagueId
      if L3_2 ~= 0 then
        L3_2 = Constants
        L3_2 = L3_2.setLeagueItemsSize
        L3_2()
        L3_2 = Constants
        L3_2 = L3_2.Path_Assets
        L4_2 = "League/"
        L5_2 = Constants
        L5_2 = L5_2.League_Image
        L3_2 = L3_2 .. L4_2 .. L5_2
        L2_2.image = L3_2
        L3_2 = Constants
        L3_2 = L3_2.League_logoWidth
        L3_2 = L3_2 / 4
        L2_2.widthIm = L3_2
        L3_2 = Constants
        L3_2 = L3_2.League_logoHeight
        L3_2 = L3_2 / 4
        L2_2.heightIm = L3_2
        L3_2 = L12_1
        L4_2 = L3_2
        L3_2 = L3_2.new
        L5_2 = L2_2
        L3_2 = L3_2(L4_2, L5_2)
        A0_2.leagueBonusLabel = L3_2
        L3_2 = A0_2.view
        L4_2 = L3_2
        L3_2 = L3_2.insert
        L5_2 = A0_2.leagueBonusLabel
        L5_2 = L5_2.view
        L3_2(L4_2, L5_2)
        L3_2 = A0_2.leagueBonusLabel
        L3_2.scaleIncreaseAmount = 0
        L3_2 = A0_2.leagueBonusLabel
        L3_2.alpha = 0
      end
    end
  end
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A0_2.view
  L5_2 = L1_1
  L5_2 = L5_2["available cards"]
  L6_2 = ": "
  L7_2 = L1_1
  L7_2 = L7_2.adjustNumber
  L8_2 = mainPlayer
  L9_2 = L8_2
  L8_2 = L8_2.numberOfAvailableCards
  L8_2, L9_2 = L8_2(L9_2)
  L7_2 = L7_2(L8_2, L9_2)
  L5_2 = L5_2 .. L6_2 .. L7_2
  L6_2 = 0
  L7_2 = 0
  L8_2 = Constants
  L8_2 = L8_2.fontForTitle
  L8_2 = L8_2()
  L9_2 = 13
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2.availableCardsLabel = L3_2
  L3_2 = A0_2.availableCardsLabel
  L3_2.alpha = 0
  L3_2 = {}
  A0_2.options = L3_2
  L3_2 = A0_2.options
  L4_2 = {}
  L3_2.params = L4_2
  L3_2 = {}
  L3_2.label = "Again"
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = pressAgainButton
    L1_3 = A0_2
    L0_3(L1_3)
  end
  
  L3_2.onRelease = L4_2
  L5_2 = A0_2
  L4_2 = A0_2.createButtons
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.gotoButton = L4_2
  L4_2 = A0_2.gotoButton
  L4_2.alpha = 0
  L4_2 = {}
  L5_2 = L1_1
  L5_2 = L5_2["Go Home"]
  L4_2.label = L5_2
  
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.pressHomeButton
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  
  L4_2.onRelease = L5_2
  L3_2 = L4_2
  L5_2 = A0_2
  L4_2 = A0_2.createButtons
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.homeButton = L4_2
  L4_2 = A0_2.homeButton
  L4_2.alpha = 0
end

createAllElements = L22_1

function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L7_2 = setBannerPosition
  L8_2 = A0_2
  L9_2 = 500
  L10_2 = 0
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = setCurrentLevelLabelPosition
  L8_2 = A0_2
  L9_2 = 1000
  L10_2 = 500
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = setOpponentLabelPosition
  L8_2 = A0_2
  L9_2 = 500
  L10_2 = 500
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = setProgressBarPosition
  L8_2 = A0_2
  L9_2 = 200
  L10_2 = 500
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = setAwardsPosition
  L8_2 = A0_2
  L9_2 = 400
  L10_2 = 500
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = A0_2.powerBenefitAmount
  if not (0 < L7_2) then
    L7_2 = A0_2.wisdomBenefitAmount
    if not (0 < L7_2) then
      L7_2 = A0_2.blessingBenefitAmount
      if not (0 < L7_2) then
        goto lbl_40
      end
    end
  end
  L7_2 = setHeroInfosPosition
  L8_2 = A0_2
  L9_2 = 300
  L10_2 = 500
  L7_2(L8_2, L9_2, L10_2)
  ::lbl_40::
  L1_2 = A0_2.xpLabel
  L7_2 = A0_2.awardslabel
  L7_2 = L7_2.y
  L8_2 = A0_2.xpLabel
  L8_2 = L8_2.height
  L7_2 = L7_2 + L8_2
  L2_2 = L7_2 + 3
  L7_2 = L1_1
  L7_2 = L7_2.adjustX
  L8_2 = A0_2.xpProgressBar
  L8_2 = L8_2.x
  L9_2 = A0_2.xpProgressBar
  L9_2 = L9_2.width
  L9_2 = L9_2 / 3
  L8_2 = L8_2 + L9_2
  L7_2 = L7_2(L8_2)
  L3_2 = L7_2
  L7_2 = L1_1
  L7_2 = L7_2.adjustX
  L8_2 = A0_2.xpProgressBar
  L8_2 = L8_2.x
  L9_2 = A0_2.xpProgressBar
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L9_2 = A0_2.xpLabel
  L9_2 = L9_2.length
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L7_2 = L7_2(L8_2)
  L4_2 = L7_2
  L5_2 = A0_2.xpAmount
  L6_2 = true
  L7_2 = tdGoldLabelsPosition
  L8_2 = A0_2
  L9_2 = 400
  L10_2 = 500
  L11_2 = L1_2
  L12_2 = L2_2
  L13_2 = L3_2
  L14_2 = L4_2
  L15_2 = L5_2
  L16_2 = L6_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L1_2 = A0_2.goldLabel
  L7_2 = A0_2.xpLabel
  L7_2 = L7_2.y
  L8_2 = A0_2.goldLabel
  L8_2 = L8_2.height
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L8_2 = A0_2.xpLabel
  L8_2 = L8_2.height
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L2_2 = L7_2 + 5
  L7_2 = L1_1
  L7_2 = L7_2.adjustX
  L8_2 = A0_2.xpProgressBar
  L8_2 = L8_2.x
  L9_2 = A0_2.xpProgressBar
  L9_2 = L9_2.width
  L9_2 = L9_2 / 3
  L8_2 = L8_2 + L9_2
  L7_2 = L7_2(L8_2)
  L3_2 = L7_2
  L7_2 = L1_1
  L7_2 = L7_2.adjustX
  L8_2 = A0_2.xpProgressBar
  L8_2 = L8_2.x
  L9_2 = A0_2.xpProgressBar
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L9_2 = A0_2.goldLabel
  L9_2 = L9_2.length
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L7_2 = L7_2(L8_2)
  L4_2 = L7_2
  L5_2 = A0_2.goldAmount
  L6_2 = false
  L7_2 = tdGoldLabelsPosition
  L8_2 = A0_2
  L9_2 = 400
  L10_2 = 600
  L11_2 = L1_2
  L12_2 = L2_2
  L13_2 = L3_2
  L14_2 = L4_2
  L15_2 = L5_2
  L16_2 = L6_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L7_2 = A0_2.rareGiftAmount
  if L7_2 then
    L7_2 = A0_2.rareGiftAmount
    if 0 < L7_2 then
      L1_2 = A0_2.rareGiftLabel
      L7_2 = A0_2.goldLabel
      L7_2 = L7_2.y
      L8_2 = A0_2.goldLabel
      L8_2 = L8_2.height
      L8_2 = L8_2 / 2
      L7_2 = L7_2 + L8_2
      L8_2 = A0_2.rareGiftLabel
      L8_2 = L8_2.height
      L8_2 = L8_2 / 2
      L7_2 = L7_2 + L8_2
      L2_2 = L7_2 + 5
      L7_2 = L1_1
      L7_2 = L7_2.adjustX
      L8_2 = A0_2.xpProgressBar
      L8_2 = L8_2.x
      L9_2 = A0_2.xpProgressBar
      L9_2 = L9_2.width
      L9_2 = L9_2 / 2
      L8_2 = L8_2 + L9_2
      L9_2 = A0_2.goldLabel
      L9_2 = L9_2.length
      L9_2 = L9_2 / 2
      L8_2 = L8_2 - L9_2
      L7_2 = L7_2(L8_2)
      L4_2 = L7_2
      L7_2 = setRareGiftPosition
      L8_2 = A0_2
      L9_2 = 400
      L10_2 = 3000
      L11_2 = L1_2
      L12_2 = L2_2
      L13_2 = L4_2
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    end
  end
  L7_2 = A0_2.operation
  L7_2 = L7_2.scoreAdded
  if L7_2 then
    L7_2 = mainPlayer
    L7_2 = L7_2.leagueId
    if L7_2 ~= nil then
      L7_2 = mainPlayer
      L7_2 = L7_2.leagueId
      if L7_2 ~= 0 then
        L7_2 = log3
        L8_2 = "score added"
        L9_2 = A0_2.operation
        L9_2 = L9_2.scoreAdded
        L7_2(L8_2, L9_2)
        L1_2 = A0_2.seedLabel
        L7_2 = A0_2.awardslabel
        L7_2 = L7_2.y
        L8_2 = A0_2.seedLabel
        L8_2 = L8_2.height
        L7_2 = L7_2 + L8_2
        L2_2 = L7_2 + 3
        L7_2 = L1_1
        L7_2 = L7_2.adjustX
        L8_2 = display
        L8_2 = L8_2.contentCenterX
        L9_2 = A0_2.seedLabel
        L9_2 = L9_2.length
        L8_2 = L8_2 - L9_2
        L7_2 = L7_2(L8_2)
        L3_2 = L7_2
        L7_2 = L1_1
        L7_2 = L7_2.adjustX
        L8_2 = display
        L8_2 = L8_2.contentCenterX
        L9_2 = A0_2.seedLabel
        L9_2 = L9_2.length
        L9_2 = L9_2 / 2
        L8_2 = L8_2 - L9_2
        L7_2 = L7_2(L8_2)
        L4_2 = L7_2
        L5_2 = A0_2.seedAmount
        L6_2 = false
        L7_2 = tdGoldLabelsPosition
        L8_2 = A0_2
        L9_2 = 400
        L10_2 = 670
        L11_2 = L1_2
        L12_2 = L2_2
        L13_2 = L3_2
        L14_2 = L4_2
        L15_2 = L5_2
        L16_2 = L6_2
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      end
    end
  end
  L7_2 = A0_2.operation
  L7_2 = L7_2.leagueBonus
  if L7_2 then
    L7_2 = mainPlayer
    L7_2 = L7_2.leagueId
    if L7_2 ~= nil then
      L7_2 = mainPlayer
      L7_2 = L7_2.leagueId
      if L7_2 ~= 0 then
        L7_2 = log3
        L8_2 = "leagueBonus"
        L9_2 = A0_2.operation
        L9_2 = L9_2.leagueBonus
        L7_2(L8_2, L9_2)
        L1_2 = A0_2.leagueBonusLabel
        L7_2 = A0_2.seedLabel
        L7_2 = L7_2.y
        L8_2 = A0_2.seedLabel
        L8_2 = L8_2.height
        L8_2 = L8_2 / 2
        L7_2 = L7_2 + L8_2
        L8_2 = A0_2.xpLabel
        L8_2 = L8_2.height
        L8_2 = L8_2 / 2
        L7_2 = L7_2 + L8_2
        L2_2 = L7_2 + 5
        L7_2 = L1_1
        L7_2 = L7_2.adjustX
        L8_2 = display
        L8_2 = L8_2.contentCenterX
        L9_2 = A0_2.seedLabel
        L9_2 = L9_2.length
        L8_2 = L8_2 - L9_2
        L7_2 = L7_2(L8_2)
        L3_2 = L7_2
        L7_2 = L1_1
        L7_2 = L7_2.adjustX
        L8_2 = display
        L8_2 = L8_2.contentCenterX
        L9_2 = A0_2.leagueBonusLabel
        L9_2 = L9_2.length
        L9_2 = L9_2 / 2
        L8_2 = L8_2 - L9_2
        L7_2 = L7_2(L8_2)
        L4_2 = L7_2
        L5_2 = A0_2.leagueBonusAmount
        L6_2 = false
        L7_2 = tdGoldLabelsPosition
        L8_2 = A0_2
        L9_2 = 400
        L10_2 = 720
        L11_2 = L1_2
        L12_2 = L2_2
        L13_2 = L3_2
        L14_2 = L4_2
        L15_2 = L5_2
        L16_2 = L6_2
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      end
    end
  end
  L7_2 = setReadyCardsPosition
  L8_2 = A0_2
  L9_2 = 400
  L10_2 = 500
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = setButtonsPosition
  L8_2 = A0_2
  L9_2 = 400
  L10_2 = 3000
  L7_2(L8_2, L9_2, L10_2)
end

setAllElementsPositions = L22_1

function L22_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.outcomeImage
  L3_2.alpha = 1
  L3_2 = A0_2.isAnimate
  if L3_2 then
    L3_2 = A0_2.outcomeImage
    L3_2.xScale = 3.5
    L3_2 = A0_2.outcomeImage
    L3_2.yScale = 3.5
    L3_2 = A0_2.outcomeImage
    L3_2.rotation = 15
    L3_2 = A0_2.outcomeImage
    L4_2 = display
    L4_2 = L4_2.contentCenterX
    L3_2.x = L4_2
    L3_2 = A0_2.outcomeImage
    L4_2 = display
    L4_2 = L4_2.contentHeight
    L4_2 = L4_2 / 8
    L4_2 = L4_2 - 8
    L3_2.y = L4_2
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = A0_2.outcomeImage
    L5_2 = {}
    L5_2.time = A1_2
    L6_2 = A2_2 + 100
    L5_2.delay = L6_2
    L5_2.rotation = 0
    L5_2.xScale = 1
    L5_2.yScale = 1
    L5_2.tag = "tag"
    L6_2 = easing
    L6_2 = L6_2.outBounce
    L5_2.transition = L6_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.operation
    L3_2 = L3_2.outcome
    if L3_2 == true then
      L3_2 = L16_1
      L3_2 = L3_2.showFireworkEffect
      L4_2 = A0_2.outcomeImage
      L4_2 = L4_2.x
      L5_2 = A0_2.outcomeImage
      L5_2 = L5_2.y
      L3_2(L4_2, L5_2)
    end
  else
    L3_2 = A0_2.outcomeImage
    L3_2.xScale = 1
    L3_2 = A0_2.outcomeImage
    L3_2.yScale = 1
    L3_2 = A0_2.outcomeImage
    L3_2.rotation = 0
    L3_2 = A0_2.outcomeImage
    L4_2 = display
    L4_2 = L4_2.contentCenterX
    L3_2.x = L4_2
    L3_2 = A0_2.outcomeImage
    L4_2 = display
    L4_2 = L4_2.contentHeight
    L4_2 = L4_2 / 8
    L4_2 = L4_2 - 8
    L3_2.y = L4_2
  end
end

setBannerPosition = L22_1

function L22_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.isAnimate
  if L3_2 then
    L3_2 = A0_2.currentLevelLabel
    L3_2.xScale = 1.5
    L3_2 = A0_2.currentLevelLabel
    L3_2.yScale = 1.5
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = A0_2.currentLevelLabel
    L5_2 = {}
    L5_2.time = A1_2
    L5_2.delay = A2_2
    L5_2.alpha = 1
    L5_2.tag = "tag"
    L3_2(L4_2, L5_2)
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = A0_2.currentLevelLabel
    L5_2 = {}
    L5_2.time = A1_2
    L6_2 = A2_2 + 100
    L5_2.delay = L6_2
    L5_2.xScale = 1
    L5_2.yScale = 1
    L5_2.tag = "tag"
    L6_2 = easing
    L6_2 = L6_2.outElastic
    L5_2.transition = L6_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2.currentLevelLabel
    L3_2.alpha = 1
    L3_2 = A0_2.currentLevelLabel
    L3_2.xScale = 1
    L3_2 = A0_2.currentLevelLabel
    L3_2.yScale = 1
  end
  L3_2 = A0_2.currentLevelLabel
  L4_2 = L1_1
  L4_2 = L4_2.adjustX
  L5_2 = display
  L5_2 = L5_2.contentCenterX
  L6_2 = A0_2.xpProgressBar
  L6_2 = L6_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L6_2 = A0_2.currentLevelLabel
  L6_2 = L6_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 - 5
  L4_2 = L4_2(L5_2)
  L3_2.x = L4_2
  L3_2 = A0_2.currentLevelLabel
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L4_2 = L4_2 - 30
  L3_2.y = L4_2
end

setCurrentLevelLabelPosition = L22_1

function L22_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.type
  if L3_2 == "battle" then
    L3_2 = A0_2.opponentNameLabel
    L3_2.alpha = 1
    L3_2 = A0_2.isAnimate
    if L3_2 then
      L3_2 = A0_2.opponentNameLabel
      L3_2.xScale = 1.5
      L3_2 = A0_2.opponentNameLabel
      L3_2.yScale = 1.5
      L3_2 = A0_2.opponentNameLabel
      L3_2.rotation = 60
      L3_2 = A0_2.opponentNameLabel
      L4_2 = display
      L4_2 = L4_2.contentCenterX
      L3_2.x = L4_2
      L3_2 = A0_2.opponentNameLabel
      L4_2 = display
      L4_2 = L4_2.contentHeight
      L4_2 = L4_2 / 8
      L4_2 = L4_2 + 0
      L3_2.y = L4_2
      L3_2 = transition
      L3_2 = L3_2.to
      L4_2 = A0_2.opponentNameLabel
      L5_2 = {}
      L5_2.time = A1_2
      L6_2 = A2_2 + 50
      L5_2.delay = L6_2
      L5_2.rotation = 0
      L5_2.tag = "effect"
      L6_2 = easing
      L6_2 = L6_2.outBounce
      L5_2.transition = L6_2
      L3_2(L4_2, L5_2)
      L3_2 = transition
      L3_2 = L3_2.to
      L4_2 = A0_2.opponentNameLabel
      L5_2 = {}
      L5_2.time = A1_2
      L5_2.xScale = 1
      L5_2.yScale = 1
      L5_2.delay = A2_2
      L6_2 = A0_2.opponentNameLabel
      L6_2 = L6_2.y
      L6_2 = L6_2 + 25
      L5_2.y = L6_2
      L5_2.tag = "effect"
      L6_2 = easing
      L6_2 = L6_2.outBounce
      L5_2.transition = L6_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2.opponentNameLabel
      L3_2.xScale = 1
      L3_2 = A0_2.opponentNameLabel
      L3_2.yScale = 1
      L3_2 = A0_2.opponentNameLabel
      L3_2.rotation = 0
      L3_2 = A0_2.opponentNameLabel
      L4_2 = display
      L4_2 = L4_2.contentCenterX
      L3_2.x = L4_2
      L3_2 = A0_2.opponentNameLabel
      L4_2 = display
      L4_2 = L4_2.contentHeight
      L4_2 = L4_2 / 8
      L4_2 = L4_2 + 25
      L3_2.y = L4_2
    end
  end
end

setOpponentLabelPosition = L22_1

function L22_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.isAnimate
  if L3_2 then
    L3_2 = A0_2.xpLeftToLevelUpLabel
    L3_2.xScale = 1.5
    L3_2 = A0_2.xpLeftToLevelUpLabel
    L3_2.yScale = 1.5
    L3_2 = A0_2.xpLeftToLevelUpLabel
    L4_2 = display
    L4_2 = L4_2.contentCenterX
    L3_2.x = L4_2
    L3_2 = A0_2.xpLeftToLevelUpLabel
    L4_2 = display
    L4_2 = L4_2.contentCenterY
    L4_2 = L4_2 - 10
    L3_2.y = L4_2
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = A0_2.xpLeftToLevelUpLabel
    L5_2 = {}
    L5_2.time = A1_2
    L5_2.delay = A2_2
    L5_2.alpha = 1
    L5_2.tag = "tag"
    L3_2(L4_2, L5_2)
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = A0_2.xpLeftToLevelUpLabel
    L5_2 = {}
    L5_2.time = A1_2
    L6_2 = A2_2 + 100
    L5_2.delay = L6_2
    L5_2.xScale = 1
    L5_2.yScale = 1
    L5_2.tag = "tag"
    L6_2 = easing
    L6_2 = L6_2.outElastic
    L5_2.transition = L6_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2.xpLeftToLevelUpLabel
    L3_2.alpha = 1
    L3_2 = A0_2.xpLeftToLevelUpLabel
    L3_2.xScale = 1
    L3_2 = A0_2.xpLeftToLevelUpLabel
    L3_2.yScale = 1
    L3_2 = A0_2.xpLeftToLevelUpLabel
    L4_2 = display
    L4_2 = L4_2.contentCenterX
    L3_2.x = L4_2
    L3_2 = A0_2.xpLeftToLevelUpLabel
    L4_2 = display
    L4_2 = L4_2.contentCenterY
    L4_2 = L4_2 - 10
    L3_2.y = L4_2
  end
end

setRemainedXPToLevelUpPosition = L22_1

function L22_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.isAnimate
  if L3_2 then
    L3_2 = A0_2.xpProgressBar
    L3_2.xScale = 0.5
    L3_2 = A0_2.xpProgressBar
    L3_2.yScale = 1
    L3_2 = A0_2.xpProgressBar
    L4_2 = display
    L4_2 = L4_2.contentCenterX
    L3_2.x = L4_2
    L3_2 = A0_2.xpProgressBar
    L4_2 = display
    L4_2 = L4_2.contentCenterY
    L4_2 = L4_2 - 10
    L3_2.y = L4_2
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = A0_2.xpProgressBar
    L5_2 = {}
    L5_2.time = A1_2
    L5_2.delay = A2_2
    L5_2.alpha = 1
    L5_2.tag = "tag"
    L3_2(L4_2, L5_2)
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = A0_2.xpProgressBar
    L5_2 = {}
    L5_2.time = A1_2
    L6_2 = A2_2 + 100
    L5_2.delay = L6_2
    L5_2.xScale = 1
    L5_2.yScale = 1
    L5_2.tag = "tag"
    L6_2 = easing
    L6_2 = L6_2.outSine
    L5_2.transition = L6_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2.xpProgressBar
    L3_2.alpha = 1
    L3_2 = A0_2.xpProgressBar
    L3_2.xScale = 1
    L3_2 = A0_2.xpProgressBar
    L3_2.yScale = 1
    L3_2 = A0_2.xpProgressBar
    L4_2 = display
    L4_2 = L4_2.contentCenterX
    L3_2.x = L4_2
    L3_2 = A0_2.xpProgressBar
    L4_2 = display
    L4_2 = L4_2.contentCenterY
    L4_2 = L4_2 - 10
    L3_2.y = L4_2
  end
end

setProgressBarPosition = L22_1

function L22_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2.isAnimate
  if L3_2 then
    L3_2 = A0_2.awardslabel
    L4_2 = L1_1
    L4_2 = L4_2.adjustX
    L5_2 = display
    L5_2 = L5_2.contentCenterX
    L6_2 = A0_2.xpProgressBar
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L5_2 = L5_2 - L6_2
    L6_2 = A0_2.awardslabel
    L6_2 = L6_2.width
    L5_2 = L5_2 + L6_2
    L4_2 = L4_2(L5_2)
    L3_2.x = L4_2
    L3_2 = A0_2.awardslabel
    L4_2 = display
    L4_2 = L4_2.contentCenterY
    L4_2 = L4_2 + 10
    L3_2.y = L4_2
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = A0_2.awardslabel
    L5_2 = {}
    L5_2.time = A1_2
    L5_2.delay = A2_2
    L5_2.alpha = 1
    L5_2.tag = "tag"
    L3_2(L4_2, L5_2)
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = A0_2.awardslabel
    L5_2 = {}
    L5_2.time = A1_2
    L6_2 = A2_2 + 100
    L5_2.delay = L6_2
    L5_2.tag = "tag"
    L6_2 = easing
    L6_2 = L6_2.outSine
    L5_2.transition = L6_2
    L6_2 = L1_1
    L6_2 = L6_2.adjustX
    L7_2 = display
    L7_2 = L7_2.contentCenterX
    L8_2 = A0_2.xpProgressBar
    L8_2 = L8_2.width
    L8_2 = L8_2 / 2
    L7_2 = L7_2 - L8_2
    L8_2 = A0_2.awardslabel
    L8_2 = L8_2.width
    L8_2 = L8_2 / 2
    L7_2 = L7_2 + L8_2
    L6_2 = L6_2(L7_2)
    L5_2.x = L6_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2.awardslabel
    L3_2.alpha = 1
    L3_2 = A0_2.awardslabel
    L4_2 = L1_1
    L4_2 = L4_2.adjustX
    L5_2 = display
    L5_2 = L5_2.contentCenterX
    L6_2 = A0_2.xpProgressBar
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L5_2 = L5_2 - L6_2
    L6_2 = A0_2.awardslabel
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L5_2 = L5_2 + L6_2
    L4_2 = L4_2(L5_2)
    L3_2.x = L4_2
    L3_2 = A0_2.awardslabel
    L4_2 = display
    L4_2 = L4_2.contentCenterY
    L4_2 = L4_2 + 10
    L3_2.y = L4_2
  end
end

setAwardsPosition = L22_1

function L22_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = transition
  L4_2 = L4_2.to
  L5_2 = A0_2
  L6_2 = {}
  L6_2.time = A2_2
  L6_2.delay = A3_2
  L6_2.xScale = 0.8
  L6_2.yScale = 0.8
  L6_2.x = A1_2
  L6_2.alpha = 0.7
  L7_2 = easing
  L7_2 = L7_2.inBounce
  L6_2.transition = L7_2
  L6_2.tag = "tag"
  
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = A0_2
    L2_3 = {}
    L3_3 = A2_2
    L3_3 = L3_3 / 2
    L2_3.time = L3_3
    L2_3.alpha = 1
    L2_3.xScale = 1
    L2_3.yScale = 1
    L3_3 = easing
    L3_3 = L3_3.inSine
    L2_3.transition = L3_3
    L2_3.tag = "tag"
    L0_3(L1_3, L2_3)
  end
  
  L6_2.onComplete = L7_2
  L4_2(L5_2, L6_2)
end

function L23_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.heroAbilityGroup
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L3_2 = A0_2.heroAbilityGroup
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 / 8
  L4_2 = L4_2 + 25
  L4_2 = L4_2 + 25
  L4_2 = L4_2 + 15
  L3_2.y = L4_2
  L3_2 = A0_2.isAnimate
  if L3_2 then
    L3_2 = A0_2.heroPowerAbility
    L3_2.x = 0
    L3_2 = A0_2.heroPowerAbility
    L4_2 = L3_2
    L3_2 = L3_2.scale
    L5_2 = 2
    L6_2 = 2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2.heroWisdomAbility
    L4_2 = A0_2.heroPowerAbility
    L4_2 = L4_2.x
    L5_2 = A0_2.heroPowerAbility
    L5_2 = L5_2.width
    L5_2 = L5_2 / 2
    L4_2 = L4_2 + L5_2
    L5_2 = A0_2.heroWisdomAbility
    L5_2 = L5_2.width
    L5_2 = L5_2 / 2
    L4_2 = L4_2 + L5_2
    L4_2 = L4_2 + 90
    L3_2.x = L4_2
    L3_2 = A0_2.heroWisdomAbility
    L4_2 = L3_2
    L3_2 = L3_2.scale
    L5_2 = 2
    L6_2 = 2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2.heroBlessingAbility
    L4_2 = A0_2.heroPowerAbility
    L4_2 = L4_2.x
    L5_2 = A0_2.heroPowerAbility
    L5_2 = L5_2.width
    L5_2 = L5_2 / 2
    L4_2 = L4_2 - L5_2
    L5_2 = A0_2.heroBlessingAbility
    L5_2 = L5_2.width
    L5_2 = L5_2 / 2
    L4_2 = L4_2 - L5_2
    L4_2 = L4_2 - 90
    L3_2.x = L4_2
    L3_2 = A0_2.heroBlessingAbility
    L4_2 = L3_2
    L3_2 = L3_2.scale
    L5_2 = 2
    L6_2 = 2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = L22_1
    L4_2 = A0_2.heroBlessingAbility
    L5_2 = A0_2.heroBlessingAbility
    L5_2 = L5_2.x
    L5_2 = L5_2 + 80
    L6_2 = A1_2
    L7_2 = A2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = L22_1
    L4_2 = A0_2.heroPowerAbility
    L5_2 = A0_2.heroPowerAbility
    L5_2 = L5_2.x
    L6_2 = A1_2
    L7_2 = A2_2 + 300
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = L22_1
    L4_2 = A0_2.heroWisdomAbility
    L5_2 = A0_2.heroWisdomAbility
    L5_2 = L5_2.x
    L5_2 = L5_2 - 80
    L6_2 = A1_2
    L7_2 = A2_2 + 600
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = A0_2.heroPowerAbility
    L3_2.x = 0
    L3_2 = A0_2.heroPowerAbility
    L3_2.alpha = 1
    L3_2 = A0_2.heroPowerAbility
    L3_2.xScale = 1
    L3_2 = A0_2.heroPowerAbility
    L3_2.yScale = 1
    L3_2 = A0_2.heroWisdomAbility
    L4_2 = A0_2.heroPowerAbility
    L4_2 = L4_2.x
    L5_2 = A0_2.heroPowerAbility
    L5_2 = L5_2.width
    L5_2 = L5_2 / 2
    L4_2 = L4_2 + L5_2
    L5_2 = A0_2.heroWisdomAbility
    L5_2 = L5_2.width
    L5_2 = L5_2 / 2
    L4_2 = L4_2 + L5_2
    L4_2 = L4_2 + 10
    L3_2.x = L4_2
    L3_2 = A0_2.heroWisdomAbility
    L3_2.alpha = 1
    L3_2 = A0_2.heroWisdomAbility
    L3_2.xScale = 1
    L3_2 = A0_2.heroWisdomAbility
    L3_2.yScale = 1
    L3_2 = A0_2.heroBlessingAbility
    L4_2 = A0_2.heroPowerAbility
    L4_2 = L4_2.x
    L5_2 = A0_2.heroPowerAbility
    L5_2 = L5_2.width
    L5_2 = L5_2 / 2
    L4_2 = L4_2 - L5_2
    L5_2 = A0_2.heroBlessingAbility
    L5_2 = L5_2.width
    L5_2 = L5_2 / 2
    L4_2 = L4_2 - L5_2
    L4_2 = L4_2 - 10
    L3_2.x = L4_2
    L3_2 = A0_2.heroBlessingAbility
    L3_2.alpha = 1
    L3_2 = A0_2.heroBlessingAbility
    L3_2.xScale = 1
    L3_2 = A0_2.heroBlessingAbility
    L3_2.yScale = 1
  end
end

setHeroInfosPosition = L23_1

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = mainPlayer
  L1_2 = L1_2.xp
  L2_2 = mainPlayer
  L2_2 = L2_2.xp
  L3_2 = A0_2.operation
  L3_2 = L3_2.xpGain
  L2_2 = L2_2 - L3_2
  L3_2 = mainPlayer
  L3_2 = L3_2.level
  L4_2 = mainPlayer
  L4_2 = L4_2.level
  L5_2 = A0_2.operation
  L5_2 = L5_2.levelChange
  L4_2 = L4_2 - L5_2
  L5_2 = mainPlayer
  L6_2 = L5_2
  L5_2 = L5_2.levelProgress
  L5_2 = L5_2(L6_2)
  L6_2 = L14_1
  L6_2 = L6_2.levelProgressForLevelAndXP
  L7_2 = L4_2
  L8_2 = L2_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L6_2
  L8_2 = nil
  L9_2 = A0_2.operation
  L9_2 = L9_2.levelChange
  if 0 < L9_2 then
    L9_2 = 100 - L6_2
    L8_2 = L9_2 + L5_2
    if L5_2 == 0 then
      L8_2 = L8_2 + 1
    end
  else
    L8_2 = L5_2 - L6_2
  end
  L9_2 = L7_2
  L10_2 = L8_2
  return L9_2, L10_2
end

calculateXPProgressBarValues = L23_1

function L23_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L6_2 = A0_2.isAnimate
  if L6_2 then
    L6_2 = A3_2.width
    L6_2 = L6_2 / 2
    L6_2 = A5_2 - L6_2
    L7_2 = A3_2.height
    L7_2 = L7_2 / 2
    L7_2 = A4_2 - L7_2
    L8_2 = A3_2.width
    L8_2 = L8_2 / 2
    L8_2 = A5_2 + L8_2
    L9_2 = A3_2.height
    L9_2 = L9_2 / 2
    L9_2 = A4_2 + L9_2
    L10_2 = timer
    L10_2 = L10_2.performWithDelay
    L11_2 = A2_2 - 2000
    
    function L12_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      L0_3 = L16_1
      L0_3 = L0_3.sparkle
      L1_3 = A0_2
      L1_3 = L1_3.view
      L2_3 = A1_2
      L2_3 = L2_3 - 100
      L3_3 = L6_2
      L4_3 = L7_2
      L5_3 = L8_2
      L6_3 = L9_2
      L7_3 = 5
      L8_3 = true
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    end
    
    L10_2 = L10_2(L11_2, L12_2)
    L20_1 = L10_2
    A3_2.y = A4_2
    A3_2.x = A5_2
    A3_2.xScale = 1.2
    A3_2.yScale = 1.2
    L10_2 = transition
    L10_2 = L10_2.to
    L11_2 = A3_2
    L12_2 = {}
    L12_2.time = A1_2
    L13_2 = A2_2 - 1700
    L12_2.delay = L13_2
    L12_2.alpha = 0.5
    L12_2.tag = "rareAnimate"
    L10_2(L11_2, L12_2)
    L10_2 = transition
    L10_2 = L10_2.to
    L11_2 = A3_2
    L12_2 = {}
    L12_2.time = A1_2
    L13_2 = A2_2 - 1400
    L12_2.delay = L13_2
    L12_2.alpha = 1
    L12_2.tag = "rareAnimate"
    L10_2(L11_2, L12_2)
    L10_2 = transition
    L10_2 = L10_2.to
    L11_2 = A3_2
    L12_2 = {}
    L12_2.time = A1_2
    L13_2 = A2_2 - 1100
    L12_2.delay = L13_2
    L12_2.xScale = 1
    L12_2.yScale = 1
    L12_2.tag = "rareAnimate"
    L13_2 = easing
    L13_2 = L13_2.outSine
    L12_2.transition = L13_2
    L10_2(L11_2, L12_2)
  else
    A3_2.xScale = 1
    A3_2.yScale = 1
    A3_2.alpha = 1
  end
end

setRareGiftPosition = L23_1

function L23_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2
  L9_2 = A0_2.isAnimate
  if L9_2 then
    A3_2.x = A5_2
    A3_2.y = A4_2
    L9_2 = transition
    L9_2 = L9_2.to
    L10_2 = A3_2
    L11_2 = {}
    L11_2.time = A1_2
    L11_2.delay = A2_2
    L11_2.alpha = 1
    L11_2.tag = "tag"
    L9_2(L10_2, L11_2)
    L9_2 = transition
    L9_2 = L9_2.to
    L10_2 = A3_2
    L11_2 = {}
    L11_2.time = A1_2
    L12_2 = A2_2 + 100
    L11_2.delay = L12_2
    L11_2.x = A6_2
    L11_2.tag = "tag"
    L12_2 = easing
    L12_2 = L12_2.outSine
    L11_2.transition = L12_2
    
    function L12_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = A3_2
      L1_3 = L0_3
      L0_3 = L0_3.setValue
      L2_3 = A7_2
      L3_3 = false
      L4_3 = true
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = A8_2
      if L0_3 then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.calculateXPProgressBarValues
        L0_3, L1_3 = L0_3(L1_3)
        L2_3 = A0_2
        L2_3 = L2_3.xpProgressBar
        L3_3 = L2_3
        L2_3 = L2_3.setValue
        L4_3 = L0_3
        L5_3 = true
        L2_3(L3_3, L4_3, L5_3)
        L2_3 = timer
        L2_3 = L2_3.performWithDelay
        L3_3 = 900
        
        function L4_3()
          local L0_4, L1_4, L2_4, L3_4
          L19_1 = L0_4
          L0_4 = A0_2
          L0_4 = L0_4.xpProgressBar
          L1_4 = L0_4
          L0_4 = L0_4.increaseBar
          L2_4 = L1_3
          L3_4 = true
          L0_4(L1_4, L2_4, L3_4)
        end
        
        L5_3 = 1
        L2_3 = L2_3(L3_3, L4_3, L5_3)
        L19_1 = L2_3
      end
    end
    
    L11_2.onComplete = L12_2
    L9_2(L10_2, L11_2)
  else
    A3_2.alpha = 1
    A3_2.x = A6_2
    A3_2.y = A4_2
  end
end

tdGoldLabelsPosition = L23_1

function L23_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = log3
  L4_2 = "Ready cards, is Animated "
  L5_2 = tostring
  L6_2 = A0_2.isAnimate
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = A0_2.isAnimate
  if L3_2 then
    L3_2 = A0_2.availableCardsLabel
    L4_2 = L1_1
    L4_2 = L4_2.adjustX
    L5_2 = display
    L5_2 = L5_2.contentCenterX
    L6_2 = A0_2.xpProgressBar
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L5_2 = L5_2 - L6_2
    L6_2 = A0_2.availableCardsLabel
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L5_2 = L5_2 - L6_2
    L4_2 = L4_2(L5_2)
    L3_2.x = L4_2
    L3_2 = A0_2.availableCardsLabel
    L4_2 = display
    L4_2 = L4_2.contentHeight
    L5_2 = A0_2.homeButton
    L5_2 = L5_2.height
    L5_2 = L5_2 / 2
    L4_2 = L4_2 - L5_2
    L4_2 = L4_2 - 35
    L5_2 = A0_2.availableCardsLabel
    L5_2 = L5_2.height
    L5_2 = L5_2 / 2
    L4_2 = L4_2 - L5_2
    L3_2.y = L4_2
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = A0_2.availableCardsLabel
    L5_2 = {}
    L5_2.time = A1_2
    L5_2.delay = A2_2
    L5_2.alpha = 1
    L5_2.tag = "tag"
    L3_2(L4_2, L5_2)
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = A0_2.availableCardsLabel
    L5_2 = {}
    L5_2.time = A1_2
    L6_2 = A2_2 + 100
    L5_2.delay = L6_2
    L5_2.tag = "tag"
    L6_2 = easing
    L6_2 = L6_2.outSine
    L5_2.transition = L6_2
    L6_2 = L1_1
    L6_2 = L6_2.adjustX
    L7_2 = display
    L7_2 = L7_2.contentCenterX
    L8_2 = A0_2.xpProgressBar
    L8_2 = L8_2.width
    L8_2 = L8_2 / 2
    L7_2 = L7_2 - L8_2
    L8_2 = A0_2.availableCardsLabel
    L8_2 = L8_2.width
    L8_2 = L8_2 / 2
    L7_2 = L7_2 + L8_2
    L6_2 = L6_2(L7_2)
    L5_2.x = L6_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2.availableCardsLabel
    L3_2.alpha = 1
    L3_2 = A0_2.availableCardsLabel
    L4_2 = L1_1
    L4_2 = L4_2.adjustX
    L5_2 = display
    L5_2 = L5_2.contentCenterX
    L6_2 = A0_2.xpProgressBar
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L5_2 = L5_2 - L6_2
    L6_2 = A0_2.availableCardsLabel
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L5_2 = L5_2 + L6_2
    L4_2 = L4_2(L5_2)
    L3_2.x = L4_2
    L3_2 = A0_2.availableCardsLabel
    L4_2 = display
    L4_2 = L4_2.contentHeight
    L5_2 = A0_2.homeButton
    L5_2 = L5_2.height
    L5_2 = L5_2 / 2
    L4_2 = L4_2 - L5_2
    L4_2 = L4_2 - 35
    L5_2 = A0_2.availableCardsLabel
    L5_2 = L5_2.height
    L5_2 = L5_2 / 2
    L4_2 = L4_2 - L5_2
    L3_2.y = L4_2
  end
end

setReadyCardsPosition = L23_1

function L23_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = log3
  L4_2 = "setButton, is Animated "
  L5_2 = tostring
  L6_2 = A0_2.isAnimate
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.shouldHideButtons
  if L3_2 ~= true then
    L3_2 = A0_2.homeButton
    L3_2.isVisible = true
    L3_2 = A0_2.gotoButton
    L3_2.isVisible = true
  end
  L3_2 = A0_2.isAnimate
  if L3_2 then
    L3_2 = A0_2.homeButton
    L3_2.xScale = 0.1
    L3_2 = A0_2.homeButton
    L3_2.yScale = 0.1
    L3_2 = A0_2.homeButton
    L4_2 = L1_1
    L4_2 = L4_2.adjustX
    L5_2 = display
    L5_2 = L5_2.contentCenterX
    L5_2 = L5_2 + 14
    L6_2 = A0_2.homeButton
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L5_2 = L5_2 + L6_2
    L4_2 = L4_2(L5_2)
    L3_2.x = L4_2
    L3_2 = A0_2.homeButton
    L4_2 = display
    L4_2 = L4_2.contentHeight
    L5_2 = A0_2.homeButton
    L5_2 = L5_2.height
    L5_2 = L5_2 / 2
    L4_2 = L4_2 - L5_2
    L4_2 = L4_2 - 12.5
    L3_2.y = L4_2
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = A0_2.homeButton
    L5_2 = {}
    L5_2.time = A1_2
    L6_2 = A2_2 + 150
    L5_2.delay = L6_2
    L5_2.alpha = 1
    L5_2.tag = "tag"
    L3_2(L4_2, L5_2)
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = A0_2.homeButton
    L5_2 = {}
    L5_2.time = A1_2
    L6_2 = A2_2 + 150
    L5_2.delay = L6_2
    L5_2.xScale = 1
    L5_2.yScale = 1
    L5_2.tag = "tag"
    L6_2 = easing
    L6_2 = L6_2.outElastic
    L5_2.transition = L6_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.gotoButton
    L3_2.xScale = 0.3
    L3_2 = A0_2.gotoButton
    L3_2.yScale = 0.3
    L3_2 = A0_2.gotoButton
    L4_2 = L1_1
    L4_2 = L4_2.adjustX
    L5_2 = display
    L5_2 = L5_2.contentCenterX
    L5_2 = L5_2 - 14
    L6_2 = A0_2.gotoButton
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L5_2 = L5_2 - L6_2
    L4_2 = L4_2(L5_2)
    L3_2.x = L4_2
    L3_2 = A0_2.gotoButton
    L4_2 = display
    L4_2 = L4_2.contentHeight
    L5_2 = A0_2.gotoButton
    L5_2 = L5_2.height
    L5_2 = L5_2 / 2
    L4_2 = L4_2 - L5_2
    L4_2 = L4_2 - 12.5
    L3_2.y = L4_2
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = A0_2.gotoButton
    L5_2 = {}
    L5_2.time = A1_2
    L5_2.delay = A2_2
    L5_2.alpha = 1
    L5_2.tag = "tag"
    L3_2(L4_2, L5_2)
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = A0_2.gotoButton
    L5_2 = {}
    L5_2.time = A1_2
    L5_2.delay = A2_2
    L5_2.xScale = 1
    L5_2.yScale = 1
    L5_2.tag = "tag"
    L6_2 = easing
    L6_2 = L6_2.outElastic
    L5_2.transition = L6_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2.homeButton
    L3_2.alpha = 1
    L3_2 = A0_2.homeButton
    L3_2.xScale = 1
    L3_2 = A0_2.homeButton
    L3_2.yScale = 1
    L3_2 = A0_2.homeButton
    L4_2 = L1_1
    L4_2 = L4_2.adjustX
    L5_2 = display
    L5_2 = L5_2.contentCenterX
    L5_2 = L5_2 + 14
    L6_2 = A0_2.homeButton
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L5_2 = L5_2 + L6_2
    L4_2 = L4_2(L5_2)
    L3_2.x = L4_2
    L3_2 = A0_2.homeButton
    L4_2 = display
    L4_2 = L4_2.contentHeight
    L5_2 = A0_2.homeButton
    L5_2 = L5_2.height
    L5_2 = L5_2 / 2
    L4_2 = L4_2 - L5_2
    L4_2 = L4_2 - 12.5
    L3_2.y = L4_2
    L3_2 = A0_2.gotoButton
    L3_2.alpha = 1
    L3_2 = A0_2.gotoButton
    L3_2.xScale = 1
    L3_2 = A0_2.gotoButton
    L3_2.yScale = 1
    L3_2 = A0_2.gotoButton
    L4_2 = L1_1
    L4_2 = L4_2.adjustX
    L5_2 = display
    L5_2 = L5_2.contentCenterX
    L5_2 = L5_2 - 14
    L6_2 = A0_2.gotoButton
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L5_2 = L5_2 - L6_2
    L4_2 = L4_2(L5_2)
    L3_2.x = L4_2
    L3_2 = A0_2.gotoButton
    L4_2 = display
    L4_2 = L4_2.contentHeight
    L5_2 = A0_2.gotoButton
    L5_2 = L5_2.height
    L5_2 = L5_2 / 2
    L4_2 = L4_2 - L5_2
    L4_2 = L4_2 - 12.5
    L3_2.y = L4_2
  end
end

setButtonsPosition = L23_1

function L23_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = L0_1
  L4_2 = L4_2.new
  L5_2 = A0_2
  L6_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2)
  A3_2 = L4_2
  A3_2.type = A1_2
  A3_2.operation = A2_2
  A3_2.shouldHideButtons = false
  A3_2.isAnimate = true
  L4_2 = removeOverlay
  _backAction = L4_2
  A3_2.xpAmount = 0
  L4_2 = A2_2.xpGain
  if 0 < L4_2 then
    L4_2 = A2_2.xpGain
    A3_2.xpAmount = L4_2
  end
  A3_2.goldAmount = 0
  L4_2 = A2_2.goldGain
  if L4_2 then
    L4_2 = A2_2.goldGain
    A3_2.goldAmount = L4_2
  end
  A3_2.rareGiftAmount = 0
  L4_2 = A2_2.giftPotion
  if L4_2 then
    L4_2 = A2_2.giftPotion
    if 0 < L4_2 then
      L4_2 = A2_2.giftPotion
      A3_2.rareGiftAmount = L4_2
  end
  else
    L4_2 = A2_2.giftNectar
    if L4_2 then
      L4_2 = A2_2.giftNectar
      if 0 < L4_2 then
        L4_2 = A2_2.giftNectar
        A3_2.rareGiftAmount = L4_2
      end
    end
  end
  A3_2.powerBenefitAmount = 0
  A3_2.wisdomBenefitAmount = 0
  A3_2.blessingBenefitAmount = 0
  L4_2 = A2_2.attackerHeroData
  if L4_2 then
    L4_2 = A2_2.attackerHeroData
    L4_2 = L4_2.powerBenefit
    if L4_2 then
      L4_2 = A2_2.attackerHeroData
      L4_2 = L4_2.powerBenefit
      A3_2.powerBenefitAmount = L4_2
    end
  end
  L4_2 = A2_2.attackerHeroData
  if L4_2 then
    L4_2 = A2_2.attackerHeroData
    L4_2 = L4_2.goldBenefit
    if L4_2 then
      L4_2 = A2_2.attackerHeroData
      L4_2 = L4_2.goldBenefit
      A3_2.blessingBenefitAmount = L4_2
    end
  end
  L4_2 = A2_2.attackerHeroData
  if L4_2 then
    L4_2 = A2_2.attackerHeroData
    L4_2 = L4_2.cooldownBenefit
    if L4_2 then
      L4_2 = A2_2.attackerHeroData
      L4_2 = L4_2.cooldownBenefit
      A3_2.wisdomBenefitAmount = L4_2
    end
  end
  L4_2 = A2_2.scoreAdded
  if L4_2 then
    L4_2 = mainPlayer
    L4_2 = L4_2.leagueId
    if L4_2 ~= nil then
      L4_2 = mainPlayer
      L4_2 = L4_2.leagueId
      if L4_2 ~= 0 then
        L4_2 = log3
        L5_2 = "scoreAdded in new "
        L6_2 = A2_2.scoreAdded
        L4_2(L5_2, L6_2)
        A3_2.seedAmount = 0
        L4_2 = A2_2.scoreAdded
        if L4_2 then
          L4_2 = A2_2.scoreAdded
          A3_2.seedAmount = L4_2
        end
      end
    end
  end
  L4_2 = A2_2.leagueBonus
  if L4_2 then
    L4_2 = mainPlayer
    L4_2 = L4_2.leagueId
    if L4_2 ~= nil then
      L4_2 = mainPlayer
      L4_2 = L4_2.leagueId
      if L4_2 ~= 0 then
        A3_2.leagueBonusAmount = 0
        L4_2 = A2_2.leagueBonus
        if 0 < L4_2 then
          L4_2 = A2_2.leagueBonus
          A3_2.leagueBonusAmount = L4_2
        end
      end
    end
  end
  L4_2 = A2_2.newComboDiscovered
  if L4_2 then
    L4_2 = nil
    L5_2 = A2_2.newComboCount
    if L5_2 == 1 then
      L5_2 = L1_1
      L4_2 = L5_2["One Combo"]
    else
      L5_2 = L1_1
      L4_2 = L5_2["Two Combos"]
    end
    L5_2 = L5_1
    L6_2 = L5_2
    L5_2 = L5_2.new
    L7_2 = L1_1
    L7_2 = L7_2.localizedString
    L8_2 = "You Discover New Combo"
    L9_2 = {}
    L9_2.count = L4_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = nil
    L9_2 = L1_1
    L9_2 = L9_2["Combo List"]
    
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = A3_2
      L0_3 = L0_3.view
      if L0_3 then
        L0_3 = A3_2
        L1_3 = L0_3
        L0_3 = L0_3.tap
        L0_3(L1_3)
        L0_3 = A3_2
        L1_3 = L0_3
        L0_3 = L0_3.removeSelf
        L0_3(L1_3)
        L0_3 = nil
        A3_2 = L0_3
      end
      L0_3 = {}
      L1_3 = {}
      L1_3.previousScene = "Scenes.Home"
      L2_3 = A2_2
      L2_3 = L2_3.newComboDiscovered
      L1_3.newComboDiscovered = L2_3
      L0_3.params = L1_3
      L1_3 = L4_1
      L1_3 = L1_3.gotoScene
      L2_3 = "Scenes.ComboListScene"
      L3_3 = L0_3
      L1_3(L2_3, L3_3)
    end
    
    L11_2 = 4000
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L5_2 = L5_1
    L5_2 = L5_2.showNotifications
    L5_2()
  end
  L5_2 = A3_2
  L4_2 = A3_2.createAllElements
  L4_2(L5_2)
  L5_2 = A3_2
  L4_2 = A3_2.setAllElementsPositions
  L4_2(L5_2)
  L5_2 = A3_2
  L4_2 = A3_2.setupButtonTextAndAction
  L4_2(L5_2)
  L4_2 = timer
  L4_2 = L4_2.performWithDelay
  L5_2 = 1
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = A3_2
    L1_3 = L0_3
    L0_3 = L0_3.showAlertOnLevelRankUp
    L0_3(L1_3)
  end
  
  L7_2 = 1
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = timer
  L4_2 = L4_2.performWithDelay
  L5_2 = 200
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = A3_2
    L1_3 = L0_3
    L0_3 = L0_3.checkAndShowGameLostMessage
    L0_3(L1_3)
  end
  
  L7_2 = 1
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = checkForChooseDeckPurge
  L4_2()
  currentOverlay = A3_2
  L5_2 = A3_2
  L4_2 = A3_2.updateQuestMap
  L6_2 = A3_2.options
  L4_2(L5_2, L6_2)
  L4_2 = A3_2.dimBackground
  L5_2 = L4_2
  L4_2 = L4_2.addEventListener
  L6_2 = "tap"
  L7_2 = A3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L15_1
  L4_2 = L4_2.checkForTutorial
  L5_2 = "Views.BattleOutComeView2"
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
  return A3_2
end

new = L23_1

function L23_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.homeButton
  L3_2.isVisible = false
  L3_2 = A0_2.gotoButton
  L3_2.isVisible = false
  A0_2.shouldHideButtons = true
  L3_2 = A2_2
  L3_2()
end

hideButtons = L23_1

function L23_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = mainPlayer
  L3_2 = L3_2.heroTutorialAtLevelFour
  if L3_2 then
    L3_2 = mainPlayer
    L3_2 = L3_2.level
    if L3_2 == 4 then
      L3_2 = A1_2.heroTutorialTestText
      A1_2.text = L3_2
    end
  end
  L3_2 = L15_1
  L3_2 = L3_2.processInformativeTutorial
  L4_2 = A1_2
  
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.tap
    L0_3(L1_3)
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = A0_2
    L1_3 = L1_3.view
    L2_3 = {}
    L2_3.alpha = 0
    L2_3.time = 500
    L2_3.tag = "effect"
    
    function L3_3()
      local L0_4, L1_4
      L0_4 = A0_2
      L1_4 = L0_4
      L0_4 = L0_4.removeSelf
      L0_4(L1_4)
    end
    
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
    L0_3 = A2_2
    L0_3()
  end
  
  L3_2(L4_2, L5_2)
end

hideBattleOutcomeOnDialogComplete = L23_1

function L23_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2.tap
  L3_2(L4_2)
  L3_2 = A2_2
  L3_2()
  L4_2 = A0_2
  L3_2 = A0_2.pressHomeButton
  L5_2 = true
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
end

hideBattleOutcomeAndGoHome = L23_1

function L23_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = mainPlayer
  L3_2 = L3_2.coachTest
  if L3_2 then
    L3_2 = mainPlayer
    L3_2 = L3_2.tribe
    if L3_2 then
      L3_2 = hideBattleOutcomeAndGoHome
      L4_2 = A0_2
      L5_2 = A1_2
      L6_2 = A2_2
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end

hideBattleOutcomeAndGoHomeForCoachTutorial = L23_1

function L23_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2.tap
  L3_2(L4_2)
  L3_2 = A2_2
  L3_2()
  L3_2 = L16_1
  L3_2 = L3_2.pointAtObjectInView
  L4_2 = A0_2.gotoButton
  L5_2 = A0_2.view
  L3_2(L4_2, L5_2)
end

pointAtMoreButton = L23_1

function L23_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.outcome
  L4_2 = A0_2.operation
  L4_2 = L4_2.outcome
  if L3_2 == L4_2 then
    L3_2 = A1_2.innerType
    A1_2.type = L3_2
    L3_2 = A1_2.innerKey
    A1_2.key = L3_2
    L3_2 = A1_2.testText
    if L3_2 then
      L3_2 = A1_2.type
      if L3_2 == "task" then
        L3_2 = mainPlayer
        L3_2 = L3_2.fasterLevelUp
        if L3_2 == true then
          L3_2 = A1_2.testText
          A1_2.text = L3_2
        end
      end
    end
    L3_2 = L15_1
    L3_2 = L3_2.processTutorial
    L4_2 = A1_2
    L5_2 = "Views.BattleOutComeView2"
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = L15_1
    L3_2 = L3_2.resetTutorialState
    L3_2()
  end
end

performTutorialStepBasedOnOutcome = L23_1

function L23_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = mainPlayer
  L3_2 = L3_2.activeHeroID
  if L3_2 == nil then
    function L3_2(A0_3, A1_3, A2_3, A3_3)
      local L4_3, L5_3, L6_3, L7_3, L8_3
      
      if A0_3 then
        L4_3 = A0_3.id
        if L4_3 == 32 then
          L4_3 = L4_1
          L4_3 = L4_3.gotoScene
          L5_3 = "Scenes.ShopAnimationScene"
          L6_3 = {}
          L7_3 = {}
          L7_3.type = "heroes"
          L7_3.items = A3_3
          L7_3.shopItem = A0_3
          L8_3 = A2_2
          L7_3.heroTutorialCallback = L8_3
          L7_3.isHeroTutorial = true
          L6_3.params = L7_3
          L4_3(L5_3, L6_3)
        end
      end
    end
    
    function L4_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      if A1_3 then
        L2_3 = showSimpleDialog
        L3_3 = "Select Hero"
        L4_3 = error
        L5_3 = "Reload"
        
        function L6_3()
          local L0_4, L1_4, L2_4
          L0_4 = L4_1
          L0_4 = L0_4.gotoScene
          L1_4 = "Scenes.Loading"
          L0_4(L1_4)
          L0_4 = PlayerModel
          L1_4 = L4_1
          L1_4 = L1_4.getScene
          L2_4 = "Scenes.Loading"
          L1_4 = L1_4(L2_4)
          L0_4.delegate = L1_4
          L0_4 = PlayerModel
          L0_4 = L0_4.loadPlayer
          L0_4()
        end
        
        L2_3(L3_3, L4_3, L5_3, L6_3)
      end
    end
    
    L5_2 = require
    L6_2 = "Models.ShopItem"
    L5_2 = L5_2(L6_2)
    L6_2 = require
    L7_2 = "Data.BaseShopItems"
    L6_2 = L6_2(L7_2)
    L8_2 = L5_2
    L7_2 = L5_2.new
    L9_2 = L3_2
    L10_2 = L4_2
    L11_2 = nil
    L12_2 = L6_2[32]
    L13_2 = nil
    L14_2 = true
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L8_2 = L7_2.action
    L8_2()
  else
    L3_2 = A2_2
    L3_2()
  end
end

performHeroPurchaseStep = L23_1

function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = mainPlayer
  L0_2 = L0_2.totalQuests
  L1_2 = Constants
  L1_2 = L1_2.Quest_PurgeStep
  L0_2 = L0_2 / L1_2
  L1_2 = math
  L1_2 = L1_2.modf
  L2_2 = L0_2
  L1_2, L2_2 = L1_2(L2_2)
  if L2_2 == 0 then
    L3_2 = log
    L4_2 = "Removing choose deck seen (for degredation reasons)"
    L3_2(L4_2)
    L3_2 = L4_1
    L3_2 = L3_2.removeScene
    L4_2 = "Scenes.ChooseDeck"
    L3_2(L4_2)
  end
end

checkForChooseDeckPurge = L23_1

function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.view
  if L2_2 then
    L2_2 = A0_2.xpLabel
    L3_2 = L2_2
    L2_2 = L2_2.cancelAndFinishAnimation
    L2_2(L3_2)
    L2_2 = A0_2.goldLabel
    L3_2 = L2_2
    L2_2 = L2_2.cancelAndFinishAnimation
    L2_2(L3_2)
    L2_2 = mainPlayer
    L2_2 = L2_2.leagueId
    if L2_2 ~= nil then
      L2_2 = mainPlayer
      L2_2 = L2_2.leagueId
      if L2_2 ~= 0 then
        L2_2 = A0_2.operation
        L2_2 = L2_2.scoreAdded
        if L2_2 then
          L2_2 = A0_2.seedLabel
          L3_2 = L2_2
          L2_2 = L2_2.cancelAndFinishAnimation
          L2_2(L3_2)
        end
        L2_2 = A0_2.operation
        L2_2 = L2_2.leagueBonus
        if L2_2 then
          L2_2 = A0_2.leagueBonusLabel
          L3_2 = L2_2
          L2_2 = L2_2.cancelAndFinishAnimation
          L2_2(L3_2)
        end
      end
    end
    L3_2 = A0_2
    L2_2 = A0_2.calculateXPProgressBarValues
    L2_2, L3_2 = L2_2(L3_2)
    L4_2 = transition
    L4_2 = L4_2.cancel
    L5_2 = "progressBar"
    L4_2(L5_2)
    L4_2 = L19_1
    if L4_2 ~= nil then
      L4_2 = timer
      L4_2 = L4_2.cancel
      L5_2 = L19_1
      L4_2(L5_2)
    end
    L4_2 = A0_2.xpProgressBar
    L5_2 = L4_2
    L4_2 = L4_2.setValue
    L6_2 = L2_2
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2.xpProgressBar
    L5_2 = L4_2
    L4_2 = L4_2.increaseBar
    L6_2 = L3_2
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2.xpLabel
    L5_2 = L4_2
    L4_2 = L4_2.setValue
    L6_2 = A0_2.xpAmount
    L7_2 = true
    L8_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = A0_2.goldLabel
    L5_2 = L4_2
    L4_2 = L4_2.setValue
    L6_2 = A0_2.goldAmount
    L7_2 = true
    L8_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = mainPlayer
    L4_2 = L4_2.leagueId
    if L4_2 ~= nil then
      L4_2 = mainPlayer
      L4_2 = L4_2.leagueId
      if L4_2 ~= 0 then
        L4_2 = A0_2.operation
        L4_2 = L4_2.scoreAdded
        if L4_2 then
          L4_2 = A0_2.seedLabel
          L5_2 = L4_2
          L4_2 = L4_2.setValue
          L6_2 = A0_2.seedAmount
          L7_2 = true
          L8_2 = true
          L4_2(L5_2, L6_2, L7_2, L8_2)
        end
        L4_2 = A0_2.operation
        L4_2 = L4_2.leagueBonus
        if L4_2 then
          L4_2 = A0_2.leagueBonusLabel
          L5_2 = L4_2
          L4_2 = L4_2.setValue
          L6_2 = A0_2.leagueBonusAmount
          L7_2 = true
          L8_2 = true
          L4_2(L5_2, L6_2, L7_2, L8_2)
        end
      end
    end
    L4_2 = transition
    L4_2 = L4_2.cancel
    L5_2 = "tag"
    L4_2(L5_2)
    L4_2 = transition
    L4_2 = L4_2.cancel
    L5_2 = "rareAnimate"
    L4_2(L5_2)
    L4_2 = L20_1
    if L4_2 ~= nil then
      L4_2 = timer
      L4_2 = L4_2.cancel
      L5_2 = L20_1
      L4_2(L5_2)
    end
    A0_2.isAnimate = false
    L5_2 = A0_2
    L4_2 = A0_2.setAllElementsPositions
    L4_2(L5_2)
  end
end

tap = L23_1

function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = L4_1
  L2_2 = L2_2.getScene
  L3_2 = "Scenes.WorldMap"
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.questManager
  L3_2 = L3_2.findPlayerQuestMapInfo
  L4_2 = mainPlayer
  L4_2 = L4_2.totalQuests
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.subWorld
  if L4_2 == 1 then
    L4_2 = L3_2.subWorld_level
    if L4_2 == 1 then
      L4_2 = log3
      L5_2 = "new World open"
      L4_2(L5_2)
      L4_2 = L2_2.questManager
      L4_2.mapState = 0
      L4_2 = L2_2.questManager
      L4_2.isNewWorldAnimationOn = true
    end
  end
  L4_2 = L3_2.subWorld
  if L4_2 ~= 1 then
    L4_2 = L3_2.subWorld_level
    if L4_2 == 1 then
      L4_2 = A0_2.operation
      L4_2 = L4_2.outcome
      if L4_2 == true then
        L4_2 = log3
        L5_2 = "player won boss fight"
        L4_2(L5_2)
        L4_2 = A1_2.params
        L4_2.isNextSubWorld = true
    end
  end
  else
    L4_2 = L2_2.questManager
    L4_2 = L4_2.isBoss
    if L4_2 == true then
      L4_2 = A0_2.operation
      L4_2 = L4_2.outcome
      if L4_2 ~= true then
        L4_2 = log3
        L5_2 = "player lose boss fight"
        L4_2(L5_2)
        L4_2 = L2_2.questManager
        L4_2.isBoss = false
        L4_2 = A1_2.params
        L4_2.isBackSubWorld = true
      end
    end
  end
  L4_2 = mainPlayer
  L4_2 = L4_2.totalQuests
  L5_2 = L2_2.questManager
  L5_2 = L5_2.totalWorldsLevelNumbers
  L5_2 = L5_2 + 1
  if L4_2 == L5_2 then
    L4_2 = A0_2.operation
    L4_2 = L4_2.outcome
    if L4_2 == true then
      L4_2 = log3
      L5_2 = "quest map finished"
      L4_2(L5_2)
      L4_2 = removeOverlay
      L4_2()
      L4_2 = nil
      L5_2 = L17_1
      L6_2 = L5_2
      L5_2 = L5_2.new
      L7_2 = {}
      L7_2.id = "End Of Quests Map "
      L8_2 = {}
      L9_2 = L1_1
      L9_2 = L9_2.localizedString
      L10_2 = "QuestMapFinishDescription"
      L11_2 = {}
      L12_2 = Constants
      L12_2 = L12_2.QUEST_MAP_FINISHED_REWARD
      L11_2.gold = L12_2
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2)
      L8_2[1] = L9_2
      L8_2[2] = L10_2
      L8_2[3] = L11_2
      L8_2[4] = L12_2
      L7_2.texts = L8_2
      L7_2.mentorAlignment = "right"
      L7_2.mode = "full"
      L8_2 = Constants
      L8_2 = L8_2.Path_Assets
      L9_2 = "Tutorial/FC-Sarhang.png"
      L8_2 = L8_2 .. L9_2
      L7_2.mentorImage = L8_2
      L7_2.mentorWidth = 111
      L7_2.mentorHeight = 115
      
      function L8_2()
        local L0_3, L1_3
        L0_3 = L2_2
        L0_3 = L0_3.questManager
        L0_3.isFinishedQuestMap = true
      end
      
      L7_2.callBackFunction = L8_2
      L5_2 = L5_2(L6_2, L7_2)
      L4_2 = L5_2
    end
  end
  return A1_2
end

updateQuestMap = L23_1

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.operation
  L1_2 = L1_2.outcome
  if L1_2 ~= true then
    L1_2 = mainPlayer
    L1_2 = L1_2.level
    if L1_2 < 5 then
      L1_2 = mainPlayer
      L1_2 = L1_2.level
      if L1_2 ~= 1 then
        L1_2 = {}
        L1_2.id = -1
        L1_2.type = "informative"
        L1_2.image = "Sarhang"
        L1_2.size = "semi"
        L1_2.dir = "right"
        L2_2 = A0_2.operation
        L2_2 = L2_2.operationType
        if L2_2 == "quest" then
          L2_2 = mainPlayer
          L2_2 = L2_2.settings
          L2_2 = L2_2.questLossTipShown
          if L2_2 ~= true then
            L2_2 = {}
            L3_2 = "Sarhang gives quest tips"
            L2_2[1] = L3_2
            L1_2.text = L2_2
            L2_2 = mainPlayer
            L3_2 = L2_2
            L2_2 = L2_2.setSettingForKey
            L4_2 = "questLossTipShown"
            L5_2 = true
            L2_2(L3_2, L4_2, L5_2)
        end
        else
          L2_2 = A0_2.operation
          L2_2 = L2_2.operationType
          if L2_2 == "battle" then
            L2_2 = mainPlayer
            L2_2 = L2_2.settings
            L2_2 = L2_2.battleLossTipShown
            if L2_2 ~= true then
              L2_2 = {}
              L3_2 = "Sarhang gives battle tips"
              L2_2[1] = L3_2
              L1_2.text = L2_2
              L2_2 = mainPlayer
              L3_2 = L2_2
              L2_2 = L2_2.setSettingForKey
              L4_2 = "battleLossTipShown"
              L5_2 = true
              L2_2(L3_2, L4_2, L5_2)
          end
          else
            return
          end
        end
        L2_2 = mainPlayer
        L3_2 = L2_2
        L2_2 = L2_2.saveSettings
        L2_2(L3_2)
        L2_2 = L15_1
        L2_2 = L2_2.processInformativeTutorial
        L3_2 = L1_2
        
        function L4_2()
          local L0_3, L1_3
        end
        
        L2_2(L3_2, L4_2)
      end
    end
  end
end

checkAndShowGameLostMessage = L23_1

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.operation
  L1_2 = L1_2.levelChange
  if 0 < L1_2 then
    L1_2 = mainPlayer
    L1_2 = L1_2.level
    L1_2 = L1_2 % 10
    if L1_2 == 0 then
      L1_2 = L4_1
      L1_2 = L1_2.getScene
      L2_2 = "Scenes.Shop"
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2.repaintFlag = true
      end
    end
    L1_2 = require
    L2_2 = "Views.LevelUpView"
    L1_2 = L1_2(L2_2)
    L18_1 = L1_2
    L1_2 = L18_1
    L1_2 = L1_2.show
    L1_2()
    L1_2 = A0_2.operation
    L1_2 = L1_2.giftCard
    if L1_2 then
      L1_2 = nil
      L2_2 = Constants
      L2_2 = L2_2.Path_Assets
      L3_2 = "Cards/"
      L4_2 = A0_2.operation
      L4_2 = L4_2.giftCard
      L4_2 = L4_2.image
      L5_2 = ".jpg"
      L1_2 = L2_2 .. L3_2 .. L4_2 .. L5_2
      L2_2 = mainPlayer
      L2_2 = L2_2.level
      if 3 < L2_2 then
        L2_2 = mainPlayer
        L2_2 = L2_2.level
        if not (L2_2 <= 10) then
          L2_2 = mainPlayer
          L2_2 = L2_2.level
          if L2_2 ~= 12 then
            L2_2 = mainPlayer
            L2_2 = L2_2.level
            if L2_2 ~= 15 then
              goto lbl_62
            end
          end
        end
        L2_2 = L5_1
        L3_2 = L2_2
        L2_2 = L2_2.new
        L4_2 = L1_1
        L4_2 = L4_2["You've leveled up and have received a bonus card"]
        L5_2 = L1_2
        L6_2 = nil
        L7_2 = nil
        L8_2 = 4000
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
        goto lbl_74
        ::lbl_62::
        L2_2 = L5_1
        L3_2 = L2_2
        L2_2 = L2_2.new
        L4_2 = L1_1
        L4_2 = L4_2["You've leveled up and have received a bonus card"]
        L5_2 = L1_2
        L6_2 = L1_1
        L6_2 = L6_2.View
        
        function L7_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3
          L0_3 = A0_2
          L0_3 = L0_3.view
          if L0_3 then
            L0_3 = A0_2
            L1_3 = L0_3
            L0_3 = L0_3.pressHomeButton
            L2_3 = false
            L0_3(L1_3, L2_3)
          end
          L0_3 = L4_1
          L0_3 = L0_3.showOverlay
          L1_3 = "Scenes.CardOverlay"
          L2_3 = {}
          L2_3.effect = "fade"
          L3_3 = {}
          L4_3 = A0_2
          L4_3 = L4_3.operation
          L4_3 = L4_3.giftCard
          L3_3.card = L4_3
          L2_3.params = L3_3
          L0_3(L1_3, L2_3)
        end
        
        L8_2 = 4000
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
      end
      ::lbl_74::
      L2_2 = mainPlayer
      L2_2 = L2_2.isSeenCardWithId
      L3_2 = A0_2.operation
      L3_2 = L3_2.giftCard
      L3_2 = L3_2.baseId
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L2_2 = table
        L2_2 = L2_2.insert
        L3_2 = mainPlayer
        L3_2 = L3_2.collection
        L4_2 = A0_2.operation
        L4_2 = L4_2.giftCard
        L4_2 = L4_2.baseId
        L2_2(L3_2, L4_2)
      end
      L2_2 = L6_1
      L2_2 = L2_2.checkColletionAchievements
      L2_2()
      L2_2 = L6_1
      L2_2 = L2_2.checkSecretAchievements
      L2_2()
      L2_2 = L6_1
      L2_2 = L2_2.checkLevelAchievement
      L2_2()
      L2_2 = L5_1
      L2_2 = L2_2.showNotifications
      L2_2()
    end
  end
end

showAlertOnLevelRankUp = L23_1

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.operation
  L1_2 = L1_2.outcome
  if L1_2 == true then
    L1_2 = mainPlayer
    L1_2 = L1_2.tribe
    if L1_2 then
      L1_2 = L6_1
      L1_2 = L1_2.goldCollectedForTribe
      L2_2 = math
      L2_2 = L2_2.floor
      L3_2 = A0_2.operation
      L3_2 = L3_2.goldGain
      L3_2 = L3_2 / 5
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
  L1_2 = A0_2.type
  if L1_2 == "battle" then
    L1_2 = A0_2.gotoButton
    L2_2 = L1_2
    L1_2 = L1_2.setLabel
    L3_2 = L1_1
    L3_2 = L3_2["go to battle"]
    L1_2(L2_2, L3_2)
    L1_2 = A0_2.operation
    L1_2 = L1_2.outcome
    if L1_2 == true then
      function L1_2()
        local L0_3, L1_3, L2_3
        
        L0_3 = A0_2
        if L0_3 then
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3.pressHomeButton
          L2_3 = false
          L0_3(L1_3, L2_3)
        end
      end
      
      L2_2 = L6_1
      L2_2 = L2_2.wonBattle
      L3_2 = L1_2
      L4_2 = A0_2.operation
      L4_2 = L4_2.goldGain
      L5_2 = A0_2.operation
      L5_2 = L5_2.scoreAdded
      L2_2(L3_2, L4_2, L5_2)
    end
  else
    L1_2 = A0_2.type
    if L1_2 == "quest" then
      L1_2 = A0_2.gotoButton
      L2_2 = L1_2
      L1_2 = L1_2.setLabel
      L3_2 = L1_1
      L3_2 = L3_2["go to quest"]
      L1_2(L2_2, L3_2)
      L1_2 = A0_2.operation
      L1_2 = L1_2.outcome
      if L1_2 == true then
        function L1_2()
          local L0_3, L1_3, L2_3
          
          L0_3 = A0_2
          if L0_3 then
            L0_3 = A0_2
            L1_3 = L0_3
            L0_3 = L0_3.pressHomeButton
            L2_3 = false
            L0_3(L1_3, L2_3)
          end
        end
        
        L2_2 = L6_1
        L2_2 = L2_2.wonQuest
        L3_2 = L1_2
        L4_2 = A0_2.operation
        L4_2 = L4_2.isBoss
        L2_2(L3_2, L4_2)
      end
    end
  end
end

setupButtonTextAndAction = L23_1

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.options
  options = L1_2
  L1_2 = options
  L2_2 = A0_2.options
  L2_2 = L2_2.params
  L1_2.params = L2_2
  L1_2 = A0_2.type
  if L1_2 == "battle" then
    L1_2 = A0_2.operation
    L1_2 = L1_2.outcome
    L3_2 = A0_2
    L2_2 = A0_2.removeSelf
    L2_2(L3_2)
    L2_2 = mainPlayer
    L2_2 = L2_2.wonBattleNum
    L2_2 = L2_2 + 1
    L3_2 = Constants
    L3_2 = L3_2.RATING_WINNER_DIVISOR
    L2_2 = L2_2 % L3_2
    if L2_2 == 0 and L1_2 == true then
      L2_2 = mainPlayer
      L2_2 = L2_2.settings
      L2_2 = L2_2.rated
      if L2_2 ~= true then
        L2_2 = timer
        L2_2 = L2_2.performWithDelay
        L3_2 = 100
        
        function L4_2()
          local L0_3, L1_3
          L0_3 = log3
          L1_3 = "Level Up removal Function !!!!!"
          L0_3(L1_3)
          L0_3 = L18_1
          if L0_3 then
            L0_3 = log3
            L1_3 = "******There is Level up view !!!!"
            L0_3(L1_3)
            L0_3 = L18_1
            L0_3 = L0_3.remove
            L0_3()
          end
        end
        
        L5_2 = 1
        L2_2(L3_2, L4_2, L5_2)
        L2_2 = mainPlayer
        L3_2 = L2_2
        L2_2 = L2_2.showRateOverlay
        L4_2 = "Scenes.Battle"
        L2_2(L3_2, L4_2)
    end
    else
      L2_2 = L4_1
      L2_2 = L2_2.gotoScene
      L3_2 = "Scenes.Battle"
      L2_2(L3_2)
    end
    A0_2 = nil
  else
    L1_2 = A0_2.type
    if L1_2 == "quest" then
      L1_2 = options
      L1_2 = L1_2.params
      L1_2.mode = "quest"
      L1_2 = options
      L1_2 = L1_2.params
      L1_2.previousScene = "Scenes.Home"
      L2_2 = A0_2
      L1_2 = A0_2.removeSelf
      L1_2(L2_2)
      L1_2 = L4_1
      L1_2 = L1_2.getScene
      L2_2 = "Scenes.WorldMap"
      L1_2 = L1_2(L2_2)
      L2_2 = options
      L2_2 = L2_2.params
      L2_2 = L2_2.isNextSubWorld
      if L2_2 ~= true then
        L2_2 = options
        L2_2 = L2_2.params
        L2_2 = L2_2.isBackSubWorld
        if L2_2 ~= true then
          L2_2 = L1_2.questManager
          L2_2 = L2_2.mapState
          if L2_2 ~= 0 then
            goto lbl_86
          end
        end
      end
      L2_2 = L1_2.questManager
      L2_2 = L2_2.isFinishedQuestMap
      if L2_2 == false then
        L2_2 = L4_1
        L2_2 = L2_2.gotoScene
        L3_2 = "Scenes.WorldMap"
        L4_2 = options
        L2_2(L3_2, L4_2)
      else
        ::lbl_86::
        L2_2 = L4_1
        L2_2 = L2_2.gotoScene
        L3_2 = "Scenes.ChooseDeck"
        L4_2 = options
        L2_2(L3_2, L4_2)
      end
    end
  end
end

pressAgainButton = L23_1

function L23_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = mainPlayer
  L0_2 = L0_2.level
  if L0_2 == 2 then
    L0_2 = {}
    L0_2.mode = "quest"
    L0_2.previousScene = "Scenes.Home"
    L1_2 = L4_1
    L1_2 = L1_2.gotoScene
    L2_2 = "Scenes.WorldMap"
    L3_2 = {}
    L3_2.params = L0_2
    L1_2(L2_2, L3_2)
    L1_2 = L3_1
    L1_2 = L1_2.logEvent
    L2_2 = "HomeButton Pressed On Level 2"
    L1_2(L2_2)
  else
    L0_2 = mainPlayer
    L0_2 = L0_2.level
    if 2 < L0_2 then
      L0_2 = L4_1
      L0_2 = L0_2.gotoScene
      L1_2 = "Scenes.Home"
      L0_2(L1_2)
    end
  end
end

function L24_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 ~= nil then
    L3_2 = nil
    currentOverlay = L3_2
    L3_2 = A0_2.operation
    L3_2 = L3_2.outcome
    L4_2 = A0_2.type
    L6_2 = A0_2
    L5_2 = A0_2.tap
    L5_2(L6_2)
    if A1_2 then
      L5_2 = L23_1
      L5_2()
      L5_2 = transition
      L5_2 = L5_2.to
      L6_2 = A0_2.view
      L7_2 = {}
      L7_2.alpha = 0
      L7_2.time = 500
      L7_2.tag = "effect"
      
      function L8_2()
        local L0_3, L1_3
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.removeSelf
        L0_3(L1_3)
      end
      
      L7_2.onComplete = L8_2
      L5_2(L6_2, L7_2)
    else
      L6_2 = A0_2
      L5_2 = A0_2.removeSelf
      L5_2(L6_2)
      L5_2 = L23_1
      L5_2()
    end
    if A2_2 then
      L5_2 = mainPlayer
      L5_2 = L5_2.wonBattleNum
      L5_2 = L5_2 + 1
      L6_2 = Constants
      L6_2 = L6_2.RATING_WINNER_DIVISOR
      L5_2 = L5_2 % L6_2
      if L5_2 == 0 and L3_2 == true and L4_2 == "battle" then
        L5_2 = timer
        L5_2 = L5_2.performWithDelay
        L6_2 = 100
        
        function L7_2()
          local L0_3, L1_3
          L0_3 = L18_1
          if L0_3 then
            L0_3 = L18_1
            L0_3 = L0_3.remove
            L0_3()
          end
        end
        
        L8_2 = 1
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = mainPlayer
        L6_2 = L5_2
        L5_2 = L5_2.showRateOverlay
        L7_2 = "Scenes.Home"
        L5_2(L6_2, L7_2)
      end
    end
  end
end

pressHomeButton = L24_1

function L24_1(A0_2)
  local L1_2, L2_2
  L1_2 = L16_1
  L1_2 = L1_2.removePoint
  L1_2()
  L1_2 = A0_2.view
  if L1_2 then
    L1_2 = L0_1
    L1_2 = L1_2.removeSelf
    L2_2 = A0_2
    L1_2(L2_2)
  end
end

removeSelf = L24_1

function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Theme
  L2_2 = L2_2.battleOutcomeButtonWidth
  A1_2.width = L2_2
  L2_2 = Theme
  L2_2 = L2_2.battleOutcomeButtonHeight
  A1_2.height = L2_2
  L2_2 = Theme
  L2_2 = L2_2.battleOutcomeButtonImage
  A1_2.defaultFile = L2_2
  L2_2 = L10_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = L2_2.view
  L3_2(L4_2, L5_2)
  return L2_2
end

createButtons = L24_1
