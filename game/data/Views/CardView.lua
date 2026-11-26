local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "widget"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Constants"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.CachedImageView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Utils.Toolbox"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Components.TDNumberLabelView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Components.TDButtonView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Components.AudioManager"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Views.HeroView"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Models.Card"
L9_1 = L9_1(L10_1)
L10_1 = nil
L11_1 = nil
L12_1 = 0
L13_1 = nil
L14_1 = nil
L15_1 = nil
L16_1 = nil
L17_1 = nil
L18_1 = nil
L19_1 = nil
L20_1 = nil
L21_1 = nil
L22_1 = false
L23_1 = false
L24_1 = nil
L25_1 = nil
L26_1 = nil
L27_1 = false
L28_1 = false
L29_1 = false
L30_1 = {}
L31_1 = display
L31_1 = L31_1.newGroup
L31_1 = L31_1()
L32_1 = nil
L33_1 = nil
L34_1 = nil
L35_1 = nil

function L36_1(A0_2)
  local L1_2
  L28_1 = A0_2
end

setRemoveCooldownWithDelay = L36_1

function L36_1(A0_2)
  local L1_2
  L29_1 = A0_2
end

setCoolDownCostForTutorial = L36_1

function L36_1(A0_2)
  local L1_2, L2_2
  L1_2 = L30_1
  L2_2 = A0_2.id
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L1_2 = L30_1
    L2_2 = A0_2.id
    L1_2 = L1_2[L2_2]
    return L1_2
  end
  L1_2 = nil
  return L1_2
end

function L37_1(A0_2)
  local L1_2, L2_2
  L1_2 = L30_1
  L2_2 = A0_2.card
  L2_2 = L2_2.id
  L1_2[L2_2] = A0_2
end

function L38_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = pairs
  L1_2 = L30_1
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = display
    L5_2 = L5_2.remove
    L6_2 = L4_2.view
    L5_2(L6_2)
    L5_2 = L30_1
    L5_2[L3_2] = nil
  end
end

deleteCache = L38_1

function L38_1(A0_2)
  local L1_2, L2_2
  L1_2 = mainPlayer
  L1_2 = L1_2.newCards
  if L1_2 then
    L1_2 = mainPlayer
    L1_2 = L1_2.level
    L2_2 = L2_1
    L2_2 = L2_2.MaximumLevelToShowNewSeriesOfCards
    if L1_2 < L2_2 then
      goto lbl_21
    end
  end
  L1_2 = mainPlayer
  L1_2 = L1_2.newCards
  if L1_2 then
    L1_2 = mainPlayer
    L1_2 = L1_2.showNewCards
    ::lbl_21::
    if L1_2 and A0_2 then
      L1_2 = true
      return L1_2
    end
  end
  L1_2 = false
  return L1_2
end

showNewSeriesOfCards = L38_1

function L38_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L5_2 = A2_2 or nil
  if not A2_2 then
    L5_2 = A0_2.card
  end
  L6_2 = A0_2.view
  L6_2.isVisible = true
  L6_2 = A0_2.view
  L6_2.alpha = 1
  A0_2.delegate = A1_2
  L7_2 = L5_2
  L6_2 = L5_2.cooldownRemaining
  L6_2 = L6_2(L7_2)
  L7_2 = math
  L7_2 = L7_2.floor
  L8_2 = L6_2 / 60
  L7_2 = L7_2(L8_2)
  A0_2.min = L7_2
  L7_2 = L6_2 % 60
  A0_2.sec = L7_2
  L7_2 = A0_2.usedAction
  if L7_2 then
    L7_2 = A0_2.background
    L8_2 = L7_2
    L7_2 = L7_2.removeEventListener
    L9_2 = "tap"
    L10_2 = A0_2.usedAction
    L7_2(L8_2, L9_2, L10_2)
  end
  A0_2.usedActionType = 0
  A0_2.usedAction = nil
  L7_2 = L5_2.isEnhanced
  if L7_2 then
    L7_2 = log3
    L8_2 = "card has been enhanced so we are re-loading the BG"
    L9_2 = L5_2.id
    L7_2(L8_2, L9_2)
    L7_2 = display
    L7_2 = L7_2.remove
    L8_2 = A0_2.background
    L7_2(L8_2)
    L5_2.isEnhanced = false
    L7_2 = showNewSeriesOfCards
    L8_2 = A4_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = display
      L7_2 = L7_2.newImageRect
      L8_2 = A0_2.view
      L9_2 = getCardBackGroundWithPower
      L10_2 = L5_2.power
      L11_2 = "medium"
      L12_2 = nil
      L13_2 = L5_2.veteran_level
      L14_2 = A4_2
      L15_2 = nil
      L16_2 = cardIsHero
      L17_2 = L5_2.baseId
      L16_2, L17_2 = L16_2(L17_2)
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L10_2 = 119
      L11_2 = 133
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
      A0_2.background = L7_2
    else
      L7_2 = display
      L7_2 = L7_2.newImageRect
      L8_2 = A0_2.view
      L9_2 = getCardBackGroundWithPower
      L10_2 = L5_2.power
      L11_2 = "medium"
      L12_2 = nil
      L13_2 = L5_2.veteran_level
      L14_2 = nil
      L15_2 = nil
      L16_2 = cardIsHero
      L17_2 = L5_2.baseId
      L16_2, L17_2 = L16_2(L17_2)
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L10_2 = 99
      L11_2 = 133
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
      A0_2.background = L7_2
      L7_2 = A0_2.name
      L8_2 = L7_2
      L7_2 = L7_2.setFillColor
      L9_2 = getFontColor
      L10_2 = L5_2.power
      L11_2 = L5_2.veteran_level
      L12_2 = cardIsHero
      L13_2 = L5_2.baseId
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L12_2(L13_2)
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L7_2 = A0_2.cooldown
      L8_2 = L7_2
      L7_2 = L7_2.setFillColor
      L9_2 = getFontColor
      L10_2 = L5_2.power
      L11_2 = L5_2.veteran_level
      L12_2 = cardIsHero
      L13_2 = L5_2.baseId
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L12_2(L13_2)
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L7_2 = A0_2.power
      L8_2 = L7_2
      L7_2 = L7_2.setFillColor
      L9_2 = getFontColor
      L10_2 = L5_2.power
      L11_2 = L5_2.veteran_level
      L12_2 = cardIsHero
      L13_2 = L5_2.baseId
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L12_2(L13_2)
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    end
    L7_2 = A0_2.background
    L8_2 = A0_2.background
    L8_2 = L8_2.width
    L8_2 = L8_2 / 2
    L7_2.x = L8_2
    L7_2 = A0_2.background
    L8_2 = A0_2.background
    L8_2 = L8_2.height
    L8_2 = L8_2 / 2
    L7_2.y = L8_2
    L7_2 = A0_2.background
    L8_2 = L7_2
    L7_2 = L7_2.toBack
    L7_2(L8_2)
  end
  L7_2 = Runtime
  L8_2 = L7_2
  L7_2 = L7_2.removeEventListener
  L9_2 = "click"
  L10_2 = A0_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = A0_2.power
  L8_2 = L7_2
  L7_2 = L7_2.setValue
  L9_2 = L5_2.power
  L10_2 = true
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = A0_2.power
  L7_2.numberUpdateAnimationLength = 360
  L7_2 = L24_1
  if L7_2 then
    L7_2 = A0_2.power
    L8_2 = A0_2.power
    L8_2 = L8_2.width
    L8_2 = L8_2 / 2
    L8_2 = 20 + L8_2
    L7_2.x = L8_2
    L7_2 = A0_2.selectedView
    L7_2.isVisible = false
    L8_2 = A0_2
    L7_2 = A0_2.stopAnimatingCooldown
    L7_2(L8_2)
  end
  L7_2 = A0_2.cooldownGroup
  L7_2.isVisible = false
  L8_2 = A0_2
  L7_2 = A0_2.enable
  L7_2(L8_2)
  L8_2 = A0_2
  L7_2 = A0_2.setCooldownTimeVisibility
  L9_2 = true
  L7_2(L8_2, L9_2)
  L8_2 = A0_2
  L7_2 = A0_2.animateCardPowerLabel
  L9_2 = false
  L7_2(L8_2, L9_2)
  L8_2 = A0_2
  L7_2 = A0_2.animateCooldownLabel
  L9_2 = false
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.view
  L7_2.alpha = 1
  L7_2 = A0_2.view
  L7_2.xScale = 1
  L7_2 = A0_2.view
  L7_2.yScale = 1
  L7_2 = showNewSeriesOfCards
  L8_2 = A4_2
  L7_2 = L7_2(L8_2)
  if L7_2 then
    if A3_2 then
      L7_2 = A0_2.cardShadow
      L7_2.alpha = 1
    else
      L7_2 = A0_2.cardShadow
      L7_2.alpha = 0
    end
  end
end

function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.size
  if L1_2 == "medium" then
    L1_2 = L31_1
    if L1_2 == nil then
      L1_2 = log
      L2_2 = "storage was nil"
      L1_2(L2_2)
      L1_2 = display
      L1_2 = L1_2.newGroup
      L1_2 = L1_2()
      L31_1 = L1_2
    end
    if A0_2 == nil then
      L1_2 = log
      L2_2 = "self was nil"
      L1_2(L2_2)
      return
    end
    L1_2 = A0_2.view
    if L1_2 == nil then
      L1_2 = log
      L2_2 = "self.view was nil"
      L1_2(L2_2)
      return
    end
    L1_2 = A0_2.view
    L1_2.isVisible = false
    L1_2 = L31_1
    L2_2 = L1_2
    L1_2 = L1_2.insert
    L3_2 = A0_2.view
    L1_2(L2_2, L3_2)
    L1_2 = Runtime
    L2_2 = L1_2
    L1_2 = L1_2.removeEventListener
    L3_2 = "click"
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  else
    if A0_2 == nil then
      L1_2 = log
      L2_2 = "self was nil"
      L1_2(L2_2)
      return
    end
    L1_2 = A0_2.view
    if L1_2 == nil then
      L1_2 = log
      L2_2 = "self.view was nil"
      L1_2(L2_2)
      return
    end
    L1_2 = A0_2.view
    L1_2 = L1_2.removeSelf
    if L1_2 == nil then
      L1_2 = log
      L2_2 = "self.view.removeSelf was nil"
      L1_2(L2_2)
      return
    end
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = A0_2.view
    L1_2(L2_2)
    A0_2.view = nil
  end
end

removeSelf = L39_1
L39_1 = {}

function L40_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  if A1_2 then
    L5_2 = A0_2.cooldown
    L5_2.x = A1_2
  end
  if A2_2 then
    L5_2 = A0_2.cooldown
    L5_2.y = A2_2
  end
  L5_2 = A0_2.cooldown
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Theme
  L7_2 = L7_2.colorsSet
  L7_2 = L7_2.blackColor
  L5_2(L6_2, L7_2)
  if A3_2 then
    L5_2 = A0_2.power
    L5_2.x = A3_2
  end
  if A4_2 then
    L5_2 = A0_2.power
    L5_2.y = A4_2
  end
end

function L41_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = {}
  L5_2 = A0_2.view
  L4_2.parent = L5_2
  L5_2 = L1_1
  L5_2 = L5_2.adjustNumber
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L4_2.text = L5_2
  L4_2.x = 0
  L4_2.y = 0
  L5_2 = Theme
  L5_2 = L5_2.textStyle
  L5_2 = L5_2[3]
  L5_2 = L5_2.font
  L4_2.font = L5_2
  L5_2 = Theme
  L5_2 = L5_2.textStyle
  L5_2 = L5_2[4]
  L5_2 = L5_2.fontSize
  L4_2.fontSize = L5_2
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  A0_2.rarityLabel = L5_2
  L5_2 = A0_2.rarityLabel
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Theme
  L7_2 = L7_2.colorsSet
  L7_2 = L7_2.creamColor
  L5_2(L6_2, L7_2)
  L5_2 = A0_2.rarityLabel
  L5_2.x = A2_2
  L5_2 = A0_2.rarityLabel
  L5_2.y = A3_2
end

function L42_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L6_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.width = 35
  L4_2.height = 35
  L5_2 = L2_1
  L5_2 = L5_2.Path_Assets
  L6_2 = "General/refresh.png"
  L5_2 = L5_2 .. L6_2
  L4_2.defaultFile = L5_2
  L5_2 = L2_1
  L5_2 = L5_2.Path_Assets
  L6_2 = "General/refresh-pressed.png"
  L5_2 = L5_2 .. L6_2
  L4_2.overFile = L5_2
  
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_2
    L1_3 = L1_3.cooldownPriceOnTutorial
    if L1_3 then
      L1_3 = A0_2
      L1_3 = L1_3.cooldownPriceOnTutorial
      if 0 < L1_3 then
        L1_3 = A0_2
        L1_3 = L1_3.delegate
        L1_3 = L1_3.setFakeGoldAmount
        L2_3 = A0_2
        L2_3 = L2_3.cooldownPriceOnTutorial
        L1_3(L2_3)
      end
    end
    L1_3 = A0_2
    L1_3 = L1_3.delegate
    L1_3 = L1_3.didPressCooloffButton
    L2_3 = A0_2
    L1_3(L2_3)
  end
  
  L4_2.onRelease = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.cooldownViewButton = L2_2
  L2_2 = A0_2.cooldownGroup
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = A0_2.cooldownViewButton
  L4_2 = L4_2.view
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.cooldownViewButton
  L3_2 = A0_2.cooldownBG
  L3_2 = L3_2.x
  L2_2.x = L3_2
  L2_2 = A0_2.cooldownViewButton
  L3_2 = A0_2.cooldownBG
  L3_2 = L3_2.y
  L3_2 = L3_2 - 10
  L2_2.y = L3_2
  L2_2 = display
  L2_2 = L2_2.newImageRect
  L3_2 = A0_2.cooldownGroup
  L4_2 = L2_1
  L4_2 = L4_2.Path_Assets
  L5_2 = "CardView/FC-Time.png"
  L4_2 = L4_2 .. L5_2
  L5_2 = 12
  L6_2 = 12
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.cooldownTimeImage = L2_2
  L2_2 = A0_2.cooldownTimeImage
  L3_2 = A0_2.cooldownBG
  L3_2 = L3_2.x
  L3_2 = L3_2 - 15
  L2_2.x = L3_2
  L2_2 = A0_2.cooldownTimeImage
  L3_2 = A0_2.cooldownBG
  L3_2 = L3_2.y
  L3_2 = L3_2 + 14
  L2_2.y = L3_2
  L2_2 = display
  L2_2 = L2_2.newText
  L3_2 = A0_2.cooldownGroup
  L4_2 = ""
  L5_2 = L1_1
  L5_2 = L5_2.adjustNumber
  L6_2 = A0_2.min
  L5_2 = L5_2(L6_2)
  L6_2 = ":"
  L7_2 = L1_1
  L7_2 = L7_2.adjustNumber
  L8_2 = A0_2.sec
  L7_2 = L7_2(L8_2)
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
  L5_2 = 0
  L6_2 = 0
  L7_2 = L2_1
  L7_2 = L7_2.fontForTitle
  L7_2 = L7_2()
  L8_2 = 11
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.cooldownTimeLabel = L2_2
  L2_2 = A0_2.cooldownTimeLabel
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = L2_1
  L4_2 = L4_2.darkGreenColor
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = A0_2.cooldownTimeLabel
  L3_2 = A0_2.cooldownTimeImage
  L3_2 = L3_2.x
  L3_2 = L3_2 + 10
  L4_2 = A0_2.cooldownTimeLabel
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L3_2 = L3_2 + L4_2
  L2_2.x = L3_2
  L2_2 = A0_2.cooldownTimeLabel
  L3_2 = A0_2.cooldownTimeImage
  L3_2 = L3_2.y
  L2_2.y = L3_2
  L2_2 = nil
  L3_2 = mainPlayer
  L3_2 = L3_2.unifiedGoldIcon
  if L3_2 then
    L2_2 = "Navbar/FC-navbar-gold.png"
  end
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = A0_2.cooldownGroup
  L5_2 = L2_1
  L5_2 = L5_2.Path_Assets
  L6_2 = L2_2
  L5_2 = L5_2 .. L6_2
  L6_2 = 12
  L7_2 = 12
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  A0_2.cooldownGoldImage = L3_2
  L3_2 = A0_2.cooldownGoldImage
  L4_2 = A0_2.cooldownBG
  L4_2 = L4_2.x
  L4_2 = L4_2 - 15
  L3_2.x = L4_2
  L3_2 = A0_2.cooldownGoldImage
  L4_2 = A0_2.cooldownBG
  L4_2 = L4_2.y
  L4_2 = L4_2 + 28
  L3_2.y = L4_2
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A0_2.cooldownGroup
  L5_2 = L1_1
  L5_2 = L5_2.adjustNumber
  L6_2 = "200"
  L5_2 = L5_2(L6_2)
  L6_2 = 0
  L7_2 = 0
  L8_2 = L2_1
  L8_2 = L8_2.fontForTitle
  L8_2 = L8_2()
  L9_2 = 11
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2.cooldownCostLabel = L3_2
  L3_2 = A0_2.cooldownCostLabel
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = L2_1
  L5_2 = L5_2.darkGreenColor
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = A0_2.cooldownCostLabel
  L4_2 = A0_2.cooldownGoldImage
  L4_2 = L4_2.x
  L4_2 = L4_2 + 10
  L5_2 = A0_2.cooldownCostLabel
  L5_2 = L5_2.width
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L3_2.x = L4_2
  L3_2 = A0_2.cooldownCostLabel
  L4_2 = A0_2.cooldownGoldImage
  L4_2 = L4_2.y
  L3_2.y = L4_2
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.cooldownGroup
  L3_2(L4_2, L5_2)
  if A1_2 then
    L3_2 = 0.65
    L4_2 = A0_2.cooldownViewButton
    L4_2 = L4_2.view
    L4_2.xScale = L3_2
    L4_2 = A0_2.cooldownViewButton
    L4_2 = L4_2.view
    L4_2.yScale = L3_2
    L4_2 = A0_2.cooldownTimeImage
    L4_2.xScale = L3_2
    L4_2 = A0_2.cooldownTimeImage
    L4_2.yScale = L3_2
    L4_2 = A0_2.cooldownTimeLabel
    L4_2.xScale = L3_2
    L4_2 = A0_2.cooldownTimeLabel
    L4_2.yScale = L3_2
    L4_2 = A0_2.cooldownGoldImage
    L4_2.xScale = L3_2
    L4_2 = A0_2.cooldownGoldImage
    L4_2.yScale = L3_2
    L4_2 = A0_2.cooldownCostLabel
    L4_2.xScale = L3_2
    L4_2 = A0_2.cooldownCostLabel
    L4_2.yScale = L3_2
    L4_2 = A0_2.cooldownTimeImage
    L5_2 = A0_2.cooldownBG
    L5_2 = L5_2.x
    L6_2 = 15 * L3_2
    L5_2 = L5_2 - L6_2
    L4_2.x = L5_2
    L4_2 = A0_2.cooldownTimeImage
    L5_2 = A0_2.cooldownViewButton
    L5_2 = L5_2.view
    L5_2 = L5_2.y
    L6_2 = A0_2.cooldownViewButton
    L6_2 = L6_2.view
    L6_2 = L6_2.height
    L6_2 = L6_2 / 2
    L6_2 = L6_2 * L3_2
    L5_2 = L5_2 + L6_2
    L5_2 = L5_2 + 4
    L4_2.y = L5_2
    L4_2 = A0_2.cooldownTimeLabel
    L5_2 = A0_2.cooldownTimeImage
    L5_2 = L5_2.x
    L6_2 = A0_2.cooldownTimeImage
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L6_2 = L6_2 * L3_2
    L5_2 = L5_2 + L6_2
    L5_2 = L5_2 + 1
    L6_2 = A0_2.cooldownTimeLabel
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L6_2 = L6_2 * L3_2
    L5_2 = L5_2 + L6_2
    L4_2.x = L5_2
    L4_2 = A0_2.cooldownTimeLabel
    L5_2 = A0_2.cooldownTimeImage
    L5_2 = L5_2.y
    L4_2.y = L5_2
    L4_2 = A0_2.cooldownGoldImage
    L5_2 = A0_2.cooldownTimeImage
    L5_2 = L5_2.x
    L4_2.x = L5_2
    L4_2 = A0_2.cooldownGoldImage
    L5_2 = A0_2.cooldownTimeImage
    L5_2 = L5_2.y
    L6_2 = A0_2.cooldownTimeImage
    L6_2 = L6_2.height
    L6_2 = L6_2 / 2
    L6_2 = L6_2 * L3_2
    L5_2 = L5_2 + L6_2
    L5_2 = L5_2 + 2
    L6_2 = A0_2.cooldownGoldImage
    L6_2 = L6_2.height
    L6_2 = L6_2 / 2
    L6_2 = L6_2 * L3_2
    L5_2 = L5_2 + L6_2
    L4_2.y = L5_2
    L4_2 = A0_2.cooldownCostLabel
    L5_2 = A0_2.cooldownGoldImage
    L5_2 = L5_2.x
    L6_2 = A0_2.cooldownGoldImage
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L6_2 = L6_2 * L3_2
    L5_2 = L5_2 + L6_2
    L5_2 = L5_2 + 1
    L6_2 = A0_2.cooldownCostLabel
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L6_2 = L6_2 * L3_2
    L5_2 = L5_2 + L6_2
    L4_2.x = L5_2
    L4_2 = A0_2.cooldownCostLabel
    L5_2 = A0_2.cooldownGoldImage
    L5_2 = L5_2.y
    L4_2.y = L5_2
  end
end

function L43_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.image
  L2_2 = string
  L2_2 = L2_2.find
  L3_2 = A0_2.image
  L4_2 = tostring
  L5_2 = A0_2.rarity
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.gsub
    L3_2 = A0_2.image
    L4_2 = tostring
    L5_2 = A0_2.rarity
    L4_2 = L4_2(L5_2)
    L5_2 = "1"
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2 = L2_2
  end
  return L1_2
end

function L44_1(A0_2)
  local L1_2
  if A0_2 then
    L1_2 = L9_1
    L1_2 = L1_2.baseCards
    L1_2 = L1_2[A0_2]
    if L1_2 then
      L1_2 = L9_1
      L1_2 = L1_2.baseCards
      L1_2 = L1_2[A0_2]
      L1_2 = L1_2.isHero
      if L1_2 then
        L1_2 = true
        return L1_2
      end
    end
  end
  L1_2 = false
  return L1_2
end

cardIsHero = L44_1

function L44_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = A0_2.isObjectForCollection
  if L5_2 then
    L5_2 = L32_1
    L5_2.spineCharacter = false
    L5_2 = L32_1
    L5_2.isShowingBackground = false
  end
  L5_2 = L32_1
  L5_2.id = A1_2
  L5_2 = L32_1
  L5_2.widthOfView = A2_2
  L5_2 = L32_1
  L5_2.heightOfView = A3_2
  L5_2 = L32_1
  L5_2.sceneName = "Cards"
  L5_2 = L32_1
  L5_2.shouldHideHeroItems = A4_2
  L5_2 = L8_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = L32_1
  L5_2 = L5_2(L6_2, L7_2)
  A0_2.imageRect = L5_2
  L5_2 = A0_2.view
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = A0_2.imageRect
  L7_2 = L7_2.view
  L5_2(L6_2, L7_2)
end

function L45_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2
  if A1_2 == "medium" then
    L8_2 = L36_1
    L9_2 = A2_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L9_2 = mainPlayer
      L9_2 = L9_2.level
      if L9_2 == 4 then
        L9_2 = mainPlayer
        L9_2 = L9_2.newCards
        if L9_2 then
          L9_2 = mainPlayer
          L9_2 = L9_2.showNewCards
          if L9_2 == false then
        end
      end
      else
        L9_2 = L38_1
        L10_2 = L8_2
        L11_2 = A3_2
        L12_2 = A2_2
        L13_2 = A5_2
        L14_2 = A6_2
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
        L8_2.isObjectForBattleAnimation = A6_2
        return L8_2
      end
    end
  end
  if not A4_2 then
    L8_2 = {}
    A4_2 = L8_2
  end
  L8_2 = setmetatable
  L9_2 = A4_2
  L10_2 = A0_2
  L8_2(L9_2, L10_2)
  A0_2.__index = A0_2
  A4_2.size = A1_2
  A4_2.delegate = A3_2
  L8_2 = L2_1
  L8_2 = L8_2.Path_Assets
  L9_2 = "General/missing.png"
  L8_2 = L8_2 .. L9_2
  defaultImage = L8_2
  A4_2.card = A2_2
  L8_2 = A4_2.createObjectForLiveBattle
  if not L8_2 then
    L8_2 = false
  end
  A4_2.createObjectForLiveBattle = L8_2
  L8_2 = A6_2 or L8_2
  if not A6_2 then
    L8_2 = false
  end
  A4_2.isObjectForBattleAnimation = L8_2
  L8_2 = A4_2.isObjectForCollection
  if not L8_2 then
    L8_2 = false
  end
  A4_2.isObjectForCollection = L8_2
  L8_2 = nil
  L9_2 = nil
  L10_2 = 0
  L11_2 = nil
  L12_2 = nil
  L13_2 = 0
  A4_2.usedActionType = 0
  A4_2.usedAction = nil
  L14_2 = display
  L14_2 = L14_2.newGroup
  L14_2 = L14_2()
  A4_2.view = L14_2
  if A2_2 == nil then
    L8_2 = " "
    L9_2 = " "
    L11_2 = " "
    L14_2 = L2_1
    L14_2 = L14_2.Path_Assets
    L15_2 = "General/missing.png"
    L14_2 = L14_2 .. L15_2
    A4_2.cardImage = L14_2
    L12_2 = " "
    L13_2 = 0
  elseif A2_2 == "slot" then
    L8_2 = " "
    L9_2 = " "
    L11_2 = " "
    L12_2 = " "
    L13_2 = 0
    L10_2 = 750
  else
    L14_2 = showNewSeriesOfCards
    L15_2 = A4_2.isObjectForBattleAnimation
    L14_2 = L14_2(L15_2)
    if L14_2 then
      L14_2 = A4_2.isObjectForCollection
      if not L14_2 then
        L14_2 = nil
        L15_2 = A2_2.rarity
        if L15_2 == 1 then
          L14_2 = A2_2.image
        else
          L15_2 = L43_1
          L16_2 = A2_2
          L15_2 = L15_2(L16_2)
          L14_2 = L15_2
        end
        L15_2 = L2_1
        L15_2 = L15_2.Path_Assets
        L16_2 = "Cards/New Characters/"
        L17_2 = L14_2
        L18_2 = ".png"
        L15_2 = L15_2 .. L16_2 .. L17_2 .. L18_2
        A4_2.cardImage = L15_2
        L8_2 = ""
    end
    else
      L14_2 = L2_1
      L14_2 = L14_2.Path_Assets
      L15_2 = "Cards/"
      L16_2 = A2_2.image
      L17_2 = ".jpg"
      L14_2 = L14_2 .. L15_2 .. L16_2 .. L17_2
      A4_2.cardImage = L14_2
      L8_2 = A2_2.name
    end
    if A1_2 == "medium" or A1_2 == "small" then
      L14_2 = _imageQuality
      if L14_2 == "HD" then
        L14_2 = L2_1
        L14_2 = L14_2.Path_Assets
        L15_2 = "Cards/"
        L16_2 = A2_2.image
        L17_2 = "-m.jpg"
        L14_2 = L14_2 .. L15_2 .. L16_2 .. L17_2
        A4_2.cardImage = L14_2
      end
    end
    L14_2 = mainPlayer
    L14_2 = L14_2.isSeenCardWithId
    L15_2 = A2_2.baseId
    L14_2 = L14_2(L15_2)
    if not L14_2 then
      L14_2 = mainPlayer
      L14_2 = L14_2.haveCardWithId
      L15_2 = A2_2.baseId
      L14_2 = L14_2(L15_2)
      if not L14_2 then
        L14_2 = L2_1
        L14_2 = L14_2.Path_MissingImage
        L15_1 = L14_2
      end
    end
    L10_2 = A2_2.power
    L14_2 = L4_1
    L14_2 = L14_2.shortenLongNumber
    L15_2 = L10_2
    L14_2 = L14_2(L15_2)
    L9_2 = L14_2
    L14_2 = L1_1
    L14_2 = L14_2.adjustNumber
    L15_2 = L9_2
    L14_2 = L14_2(L15_2)
    L9_2 = L14_2
    L13_2 = A2_2.veteran_level
    L14_2 = A2_2.cooldown
    if L14_2 < 120 then
      L14_2 = L1_1
      L14_2 = L14_2.adjustNumber
      L15_2 = A2_2.cooldown
      L14_2 = L14_2(L15_2)
      L15_2 = " s"
      L11_2 = L14_2 .. L15_2
    else
      L14_2 = A2_2.cooldown
      if L14_2 < 3600 then
        L14_2 = math
        L14_2 = L14_2.floor
        L15_2 = A2_2.cooldown
        L15_2 = L15_2 / 60
        L14_2 = L14_2(L15_2)
        L15_2 = L1_1
        L15_2 = L15_2.adjustNumber
        L16_2 = L14_2
        L15_2 = L15_2(L16_2)
        L16_2 = " m"
        L11_2 = L15_2 .. L16_2
      else
        L14_2 = math
        L14_2 = L14_2.floor
        L15_2 = A2_2.cooldown
        L15_2 = L15_2 / 3600
        L14_2 = L14_2(L15_2)
        L15_2 = math
        L15_2 = L15_2.floor
        L16_2 = A2_2.cooldown
        L16_2 = L16_2 / 60
        L15_2 = L15_2(L16_2)
        if 0 < L14_2 then
          L16_2 = L14_2 * 60
          L15_2 = L15_2 - L16_2
          if L15_2 < 10 then
            L16_2 = "0"
            L17_2 = L15_2
            L15_2 = L16_2 .. L17_2
          end
        end
        L16_2 = L1_1
        L16_2 = L16_2.adjustNumber
        L17_2 = L14_2
        L16_2 = L16_2(L17_2)
        L17_2 = " : "
        L18_2 = L1_1
        L18_2 = L18_2.adjustNumber
        L19_2 = L15_2
        L18_2 = L18_2(L19_2)
        L11_2 = L16_2 .. L17_2 .. L18_2
      end
    end
    L12_2 = A2_2.description
  end
  L14_2 = {}
  L14_2.isShowingBackEmitter = true
  L14_2.isShowingFrontEmitter = true
  L14_2.spineCharacter = true
  L14_2.animatedFoothold = true
  L14_2.isShowingBackground = true
  L32_1 = L14_2
  if A1_2 == "big" then
    if A2_2 and A2_2 ~= "slot" then
      L14_2 = mainPlayer
      L14_2 = L14_2.isSeenCardWithId
      L15_2 = A2_2.baseId
      L14_2 = L14_2(L15_2)
      if not L14_2 then
        L14_2 = mainPlayer
        L14_2 = L14_2.haveCardWithId
        L15_2 = A2_2.baseId
        L14_2 = L14_2(L15_2)
        if not L14_2 then
          L14_2 = A4_2.battleAnimationCard
          if not L14_2 then
            L14_2 = L2_1
            L14_2 = L14_2.Path_MissingImage
            A4_2.cardImage = L14_2
          end
        end
      end
    end
    L14_2 = A4_2.cardHeight
    if not L14_2 then
      L14_2 = display
      L14_2 = L14_2.contentHeight
      L14_2 = L14_2 - 70
    end
    L15_2 = showNewSeriesOfCards
    L15_2 = L15_2()
    if L15_2 then
      L15_2 = A4_2.isObjectForCollection
      if not L15_2 then
        L15_2 = A4_2.cardWidth
        if not L15_2 then
          L15_2 = math
          L15_2 = L15_2.floor
          L16_2 = L14_2 / 1.116071
          L15_2 = L15_2(L16_2)
        end
        A4_2.cardWidth = L15_2
        L15_2 = L2_1
        L15_2 = L15_2.Path_Assets
        L16_2 = "CardView/New Large Cards/card-shadow.png"
        L15_2 = L15_2 .. L16_2
        L16_2 = display
        L16_2 = L16_2.newImageRect
        L17_2 = A4_2.view
        L18_2 = L15_2
        L19_2 = A4_2.cardWidth
        L20_2 = L14_2
        L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
        A4_2.cardShadow = L16_2
        L16_2 = A4_2.cardShadow
        L16_2.alpha = 0
        L16_2 = A4_2.cardShadow
        L17_2 = A4_2.cardShadow
        L17_2 = L17_2.width
        L17_2 = L17_2 / 2
        L16_2.x = L17_2
        L16_2 = A4_2.cardShadow
        L17_2 = A4_2.cardShadow
        L17_2 = L17_2.height
        L17_2 = L17_2 / 2
        L16_2.y = L17_2
        if A5_2 then
          L16_2 = A4_2.cardShadow
          L16_2.alpha = 1
        end
    end
    else
      L15_2 = A4_2.cardWidth
      if not L15_2 then
        L15_2 = math
        L15_2 = L15_2.floor
        L16_2 = L14_2 / 1.343434
        L15_2 = L15_2(L16_2)
      end
      A4_2.cardWidth = L15_2
    end
    L15_2 = A4_2.cardWidth
    L16_2 = nil
    if A2_2 then
      L17_2 = A2_2.baseId
      if L17_2 then
        L16_2 = A2_2.baseId
      end
    end
    L17_2 = display
    L17_2 = L17_2.newImageRect
    L18_2 = A4_2.view
    L19_2 = getCardBackGroundWithPower
    L20_2 = L10_2
    L21_2 = "big"
    L22_2 = A4_2.createObjectForLiveBattle
    L23_2 = L13_2
    L24_2 = A4_2.isObjectForCollection
    L25_2 = nil
    L26_2 = cardIsHero
    L27_2 = L16_2
    L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L26_2(L27_2)
    L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L20_2 = L15_2
    L21_2 = L14_2
    L22_2 = A4_2.isObjectForCollection
    L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
    A4_2.background = L17_2
    L17_2 = A4_2.background
    L18_2 = A4_2.background
    L18_2 = L18_2.width
    L18_2 = L18_2 / 2
    L17_2.x = L18_2
    L17_2 = A4_2.background
    L18_2 = A4_2.background
    L18_2 = L18_2.height
    L18_2 = L18_2 / 2
    L17_2.y = L18_2
    L17_2 = display
    L17_2 = L17_2.newText
    L18_2 = A4_2.view
    L19_2 = L8_2
    L20_2 = 0
    L21_2 = 0
    L22_2 = L2_1
    L22_2 = L22_2.fontForTitle
    L22_2 = L22_2()
    L23_2 = L15_2 / 10
    L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    A4_2.name = L17_2
    L17_2 = A4_2.name
    L18_2 = L17_2
    L17_2 = L17_2.setFillColor
    L19_2 = getFontColor
    L20_2 = L10_2
    L21_2 = L13_2
    L22_2 = cardIsHero
    L23_2 = L16_2
    L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L22_2(L23_2)
    L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L17_2 = A4_2.name
    L18_2 = A4_2.background
    L18_2 = L18_2.x
    L17_2.x = L18_2
    L17_2 = A4_2.name
    L18_2 = L14_2 * 0.06
    L17_2.y = L18_2
    if A2_2 ~= "slot" then
      L17_2 = A4_2.createObjectForLiveBattle
      if L17_2 == true then
        L17_2 = cardIsHero
        L18_2 = A2_2.baseId
        L17_2 = L17_2(L18_2)
        if L17_2 then
          L17_2 = L44_1
          L18_2 = A4_2
          L19_2 = A2_2.baseId
          L20_2 = L15_2 * 0.94
          L21_2 = L15_2 * 0.94
          L22_2 = A7_2
          L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
        else
          L17_2 = L3_1
          L18_2 = L17_2
          L17_2 = L17_2.new
          L19_2 = A4_2.view
          L20_2 = A4_2.cardImage
          L21_2 = L15_2 * 0.94
          L22_2 = L15_2 * 0.94
          L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
          A4_2.imageRect = L17_2
        end
        L17_2 = A4_2.imageRect
        L18_2 = 0.46 * L14_2
        L17_2.y = L18_2
      else
        L17_2 = showNewSeriesOfCards
        L17_2 = L17_2()
        if L17_2 then
          L17_2 = A4_2.isObjectForCollection
          if not L17_2 then
            L17_2 = L3_1
            L18_2 = L17_2
            L17_2 = L17_2.new
            L19_2 = A4_2.view
            L20_2 = A4_2.cardImage
            L21_2 = math
            L21_2 = L21_2.floor
            L22_2 = L14_2 / 1.116071
            L21_2 = L21_2(L22_2)
            L22_2 = L14_2
            L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
            A4_2.imageRect = L17_2
            L17_2 = A4_2.imageRect
            L18_2 = 0.46 * L14_2
            L18_2 = L18_2 + 5
            L17_2.y = L18_2
        end
        else
          if A2_2 then
            L17_2 = cardIsHero
            L18_2 = A2_2.baseId
            L17_2 = L17_2(L18_2)
            if L17_2 then
              L17_2 = L44_1
              L18_2 = A4_2
              L19_2 = A2_2.baseId
              L20_2 = L15_2 * 0.93
              L21_2 = L15_2 * 0.93
              L22_2 = A7_2
              L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
          end
          else
            L17_2 = L3_1
            L18_2 = L17_2
            L17_2 = L17_2.new
            L19_2 = A4_2.view
            L20_2 = A4_2.cardImage
            L21_2 = L15_2 * 0.93
            L22_2 = L15_2 * 0.93
            L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
            A4_2.imageRect = L17_2
          end
          L17_2 = A4_2.imageRect
          L18_2 = 0.46 * L14_2
          L17_2.y = L18_2
        end
      end
      L17_2 = A4_2.imageRect
      L17_2.index = 3
      L17_2 = A4_2.imageRect
      L18_2 = A4_2.background
      L18_2 = L18_2.x
      L17_2.x = L18_2
    end
    L17_2 = nil
    L18_2 = A4_2.createObjectForLiveBattle
    if L18_2 == true then
    else
      L18_2 = A4_2.fontSize
      L17_2 = L18_2 or L17_2
      if not L18_2 then
        L17_2 = L15_2 / 14
      end
      L18_2 = display
      L18_2 = L18_2.newText
      L19_2 = A4_2.view
      L20_2 = L11_2
      L21_2 = 0
      L22_2 = 0
      L23_2 = L2_1
      L23_2 = L23_2.fontForTitle
      L23_2 = L23_2()
      L24_2 = L17_2
      L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      A4_2.cooldown = L18_2
      L18_2 = A4_2.cooldown
      L19_2 = L18_2
      L18_2 = L18_2.setFillColor
      L20_2 = getFontColor
      L21_2 = L10_2
      L22_2 = L13_2
      L23_2 = cardIsHero
      L24_2 = L16_2
      L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L23_2(L24_2)
      L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
      L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
      L18_2 = A4_2.cooldown
      L19_2 = L15_2 * 0.6
      L20_2 = A4_2.cooldown
      L20_2 = L20_2.width
      L20_2 = L20_2 / 2
      L19_2 = L19_2 + L20_2
      L18_2.x = L19_2
      L18_2 = A4_2.cooldown
      L19_2 = L14_2 * 0.93
      L18_2.y = L19_2
    end
    L18_2 = A4_2.fontSize
    L17_2 = L18_2 or L17_2
    if not L18_2 then
      L17_2 = 10
    end
    L18_2 = {}
    L18_2.id = "card power label"
    L18_2.value = L10_2
    L19_2 = {}
    L20_2 = getFontColor
    L21_2 = L10_2
    L22_2 = L13_2
    L23_2 = cardIsHero
    L24_2 = L16_2
    L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L23_2(L24_2)
    L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L19_2[1] = L20_2
    L19_2[2] = L21_2
    L19_2[3] = L22_2
    L19_2[4] = L23_2
    L19_2[5] = L24_2
    L19_2[6] = L25_2
    L19_2[7] = L26_2
    L19_2[8] = L27_2
    L19_2[9] = L28_2
    L19_2[10] = L29_2
    L19_2[11] = L30_2
    L19_2[12] = L31_2
    L19_2[13] = L32_2
    L18_2.labelColor = L19_2
    L19_2 = {}
    L20_2 = getFontColor
    L21_2 = L10_2
    L22_2 = L13_2
    L23_2 = cardIsHero
    L24_2 = L16_2
    L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L23_2(L24_2)
    L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L19_2[1] = L20_2
    L19_2[2] = L21_2
    L19_2[3] = L22_2
    L19_2[4] = L23_2
    L19_2[5] = L24_2
    L19_2[6] = L25_2
    L19_2[7] = L26_2
    L19_2[8] = L27_2
    L19_2[9] = L28_2
    L19_2[10] = L29_2
    L19_2[11] = L30_2
    L19_2[12] = L31_2
    L19_2[13] = L32_2
    L18_2.labelAnimationColor = L19_2
    L19_2 = L2_1
    L19_2 = L19_2.fontForTitle
    L19_2 = L19_2()
    L18_2.font = L19_2
    L18_2.fontSize = L17_2
    L19_2 = A4_2.createObjectForLiveBattle
    if L19_2 == true then
      L19_2 = A4_2.createObjectForPlayerCardSlots
      if L19_2 then
        L19_2 = L14_2 / 6
        L18_2.fontSize = L19_2
      end
      L19_2 = L5_1
      L20_2 = L19_2
      L19_2 = L19_2.new
      L21_2 = L18_2
      L19_2 = L19_2(L20_2, L21_2)
      A4_2.power = L19_2
      L19_2 = A4_2.power
      L19_2.scaleIncreaseAmount = 0
      L19_2 = A4_2.power
      L19_2.numberUpdateAnimationLength = 360
      L19_2 = A4_2.view
      L20_2 = L19_2
      L19_2 = L19_2.insert
      L21_2 = A4_2.power
      L21_2 = L21_2.view
      L19_2(L20_2, L21_2)
      L19_2 = A4_2.power
      L20_2 = L15_2 * 0.5
      L19_2.x = L20_2
      L19_2 = A4_2.power
      L20_2 = L14_2 * 0.89
      L19_2.y = L20_2
      if A2_2 == "slot" then
        L19_2 = A4_2.power
        L19_2 = L19_2.view
        L19_2.alpha = 0
      end
    else
      L19_2 = L5_1
      L20_2 = L19_2
      L19_2 = L19_2.new
      L21_2 = L18_2
      L19_2 = L19_2(L20_2, L21_2)
      A4_2.power = L19_2
      L19_2 = A4_2.power
      L19_2.scaleIncreaseAmount = 0
      L19_2 = A4_2.power
      L19_2.numberUpdateAnimationLength = 360
      L19_2 = A4_2.view
      L20_2 = L19_2
      L19_2 = L19_2.insert
      L21_2 = A4_2.power
      L21_2 = L21_2.view
      L19_2(L20_2, L21_2)
      L19_2 = A4_2.power
      L20_2 = L15_2 * 0.16
      L21_2 = A4_2.power
      L21_2 = L21_2.width
      L21_2 = L21_2 / 2
      L20_2 = L20_2 + L21_2
      L19_2.x = L20_2
      L19_2 = A4_2.power
      L20_2 = L14_2 * 0.93
      L19_2.y = L20_2
    end
    L19_2 = L15_2 / 10
    L20_2 = L15_2 / 10
    L21_2 = L15_2 / 100
    L22_2 = A4_2.createObjectForLiveBattle
    if L22_2 == true then
    else
      L22_2 = showNewSeriesOfCards
      L22_2 = L22_2()
      if L22_2 then
        L22_2 = A4_2.isObjectForCollection
        if not L22_2 then
          L22_2 = L40_1
          L23_2 = A4_2
          L24_2 = A4_2.cooldown
          L24_2 = L24_2.width
          L24_2 = L24_2 / 2
          L24_2 = 35 + L24_2
          L25_2 = nil
          L26_2 = 42
          L27_2 = 27
          L22_2(L23_2, L24_2, L25_2, L26_2, L27_2)
          L22_2 = L41_1
          L23_2 = A4_2
          L24_2 = A2_2.rarity
          L25_2 = A4_2.view
          L25_2 = L25_2.width
          L25_2 = L25_2 - 23
          L26_2 = A4_2.view
          L26_2 = L26_2.height
          L26_2 = L26_2 - 26
          L22_2(L23_2, L24_2, L25_2, L26_2)
          L22_2 = A4_2.power
          L23_2 = L22_2
          L22_2 = L22_2.setFillColor
          L24_2 = Theme
          L24_2 = L24_2.colorsSet
          L24_2 = L24_2.blackColor
          L22_2(L23_2, L24_2)
      end
      elseif A2_2 ~= nil then
        L22_2 = cardIsHero
        L23_2 = A2_2.baseId
        L22_2 = L22_2(L23_2)
        if not L22_2 then
          L22_2 = A4_2.background
          L22_2 = L22_2.x
          L23_2 = A2_2.rarity
          L23_2 = L23_2 * L19_2
          L24_2 = A2_2.rarity
          L24_2 = L24_2 - 1
          L24_2 = L24_2 * L21_2
          L23_2 = L23_2 + L24_2
          L23_2 = L23_2 / 2
          L22_2 = L22_2 - L23_2
          L23_2 = "General/FC-star.png"
          if 0 < L13_2 then
            L23_2 = "CardView/Star.png"
          end
          L24_2 = 1
          L25_2 = A2_2.rarity
          L26_2 = 1
          for L27_2 = L24_2, L25_2, L26_2 do
            L28_2 = display
            L28_2 = L28_2.newImageRect
            L29_2 = A4_2.view
            L30_2 = L2_1
            L30_2 = L30_2.Path_Assets
            L31_2 = L23_2
            L30_2 = L30_2 .. L31_2
            L31_2 = L19_2
            L32_2 = L20_2
            L28_2 = L28_2(L29_2, L30_2, L31_2, L32_2)
            L29_2 = L27_2 - 1
            L30_2 = L19_2 + L21_2
            L29_2 = L29_2 * L30_2
            L29_2 = L22_2 + L29_2
            L30_2 = L19_2 / 2
            L29_2 = L29_2 + L30_2
            L28_2.x = L29_2
            L29_2 = L14_2 * 0.85
            L28_2.y = L29_2
          end
        end
      end
    end
    L22_2 = display
    L22_2 = L22_2.newRect
    L23_2 = A4_2.view
    L24_2 = 0
    L25_2 = 0
    L26_2 = L15_2 * 0.92
    L26_2 = L26_2 + 1
    L27_2 = L14_2 * 0.7
    L22_2 = L22_2(L23_2, L24_2, L25_2, L26_2, L27_2)
    A4_2.selectedBG = L22_2
    L22_2 = A4_2.selectedBG
    L23_2 = L22_2
    L22_2 = L22_2.setFillColor
    L24_2 = L2_1
    L24_2 = L24_2.lightBlueColor3
    L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L24_2()
    L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L22_2 = A4_2.selectedBG
    L23_2 = A4_2.background
    L23_2 = L23_2.x
    L22_2.x = L23_2
    L22_2 = A4_2.selectedBG
    L23_2 = L14_2 * 61
    L23_2 = L23_2 / 133
    L22_2.y = L23_2
    L22_2 = A4_2.selectedBG
    L22_2.isVisible = false
    L22_2 = display
    L22_2 = L22_2.newImageRect
    L23_2 = A4_2.view
    L24_2 = L2_1
    L24_2 = L24_2.Path_Assets
    L25_2 = "General/FC-tick.png"
    L24_2 = L24_2 .. L25_2
    L25_2 = L15_2 * 0.3
    L26_2 = L15_2 * 0.3
    L22_2 = L22_2(L23_2, L24_2, L25_2, L26_2)
    A4_2.selectedView = L22_2
    L22_2 = A4_2.selectedView
    L22_2.isVisible = false
    L22_2 = A4_2.selectedView
    L23_2 = A4_2.background
    L23_2 = L23_2.x
    L22_2.x = L23_2
    L22_2 = A4_2.selectedView
    L23_2 = A4_2.selectedBG
    L23_2 = L23_2.y
    L22_2.y = L23_2
    L22_2 = A4_2.hasCooldownView
    if L22_2 then
      L23_2 = A2_2
      L22_2 = A2_2.cooldownRemaining
      L22_2 = L22_2(L23_2)
      L23_2 = math
      L23_2 = L23_2.floor
      L24_2 = L22_2 / 60
      L23_2 = L23_2(L24_2)
      A4_2.min = L23_2
      L23_2 = L22_2 % 60
      A4_2.sec = L23_2
      L23_2 = display
      L23_2 = L23_2.newGroup
      L23_2 = L23_2()
      A4_2.cooldownGroup = L23_2
      L23_2 = display
      L23_2 = L23_2.newRect
      L24_2 = A4_2.cooldownGroup
      L25_2 = 0
      L26_2 = 0
      L27_2 = L15_2 * 0.92
      L27_2 = L27_2 + 1
      L28_2 = L14_2 * 0.7
      L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2, L28_2)
      A4_2.cooldownBG = L23_2
      L23_2 = A4_2.cooldownBG
      L24_2 = L23_2
      L23_2 = L23_2.setFillColor
      L25_2 = L2_1
      L25_2 = L25_2.brightGreenColor
      L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L25_2()
      L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
      L23_2 = A4_2.cooldownBG
      L24_2 = A4_2.background
      L24_2 = L24_2.x
      L23_2.x = L24_2
      L23_2 = A4_2.cooldownBG
      L24_2 = A4_2.imageRect
      L24_2 = L24_2.y
      L23_2.y = L24_2
      L23_2 = L42_1
      L24_2 = A4_2
      L25_2 = true
      L23_2(L24_2, L25_2)
      L23_2 = A4_2.cooldownGroup
      L23_2.isVisible = false
    end
  elseif A1_2 == "medium" then
    A4_2.cardHeight = 133
    A4_2.cardWidth = 98
    L14_2 = A4_2.cardWidth
    A4_2.width = L14_2
    L14_2 = A4_2.cardHeight
    A4_2.height = L14_2
    L15_2 = A2_2
    L14_2 = A2_2.cooldownRemaining
    L14_2 = L14_2(L15_2)
    L15_2 = math
    L15_2 = L15_2.floor
    L16_2 = L14_2 / 60
    L15_2 = L15_2(L16_2)
    A4_2.min = L15_2
    L15_2 = L14_2 % 60
    A4_2.sec = L15_2
    L15_2 = showNewSeriesOfCards
    L16_2 = A4_2.isObjectForBattleAnimation
    L15_2 = L15_2(L16_2)
    if L15_2 then
      L15_2 = display
      L15_2 = L15_2.newImageRect
      L16_2 = A4_2.view
      L17_2 = getCardBackGroundWithPower
      L18_2 = L10_2
      L19_2 = "medium"
      L20_2 = nil
      L21_2 = L13_2
      L22_2 = nil
      L23_2 = A4_2.isObjectForBattleAnimation
      L24_2 = cardIsHero
      L25_2 = A2_2.baseId
      L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L24_2(L25_2)
      L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
      L18_2 = 119
      L19_2 = 133
      L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
      A4_2.background = L15_2
      L15_2 = L2_1
      L15_2 = L15_2.Path_Assets
      L16_2 = "CardView/New Medium Cards/card-shadow.png"
      L15_2 = L15_2 .. L16_2
      L16_2 = display
      L16_2 = L16_2.newImageRect
      L17_2 = A4_2.view
      L18_2 = L15_2
      L19_2 = 119
      L20_2 = 133
      L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
      A4_2.cardShadow = L16_2
      L16_2 = A4_2.cardShadow
      L16_2.alpha = 0
      L16_2 = A4_2.cardShadow
      L17_2 = A4_2.background
      L17_2 = L17_2.width
      L17_2 = L17_2 / 2
      L16_2.x = L17_2
      L16_2 = A4_2.cardShadow
      L17_2 = A4_2.background
      L17_2 = L17_2.height
      L17_2 = L17_2 / 2
      L16_2.y = L17_2
      if A5_2 then
        L16_2 = A4_2.cardShadow
        L16_2.alpha = 1
      end
      L16_2 = cardIsHero
      L17_2 = A2_2.baseId
      L16_2 = L16_2(L17_2)
      if L16_2 then
        L16_2 = L44_1
        L17_2 = A4_2
        L18_2 = A2_2.baseId
        L19_2 = 119
        L20_2 = 133
        L16_2(L17_2, L18_2, L19_2, L20_2)
      else
        L16_2 = L3_1
        L17_2 = L16_2
        L16_2 = L16_2.new
        L18_2 = A4_2.view
        L19_2 = A4_2.cardImage
        L20_2 = 119
        L21_2 = 133
        L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
        A4_2.imageRect = L16_2
      end
      L16_2 = A4_2.imageRect
      L16_2.y = 65
      L16_2 = display
      L16_2 = L16_2.newImageRect
      L17_2 = A4_2.view
      L18_2 = L2_1
      L18_2 = L18_2.Path_Assets
      L19_2 = "General/FC-tick.png"
      L18_2 = L18_2 .. L19_2
      L19_2 = 35
      L20_2 = 35
      L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
      A4_2.selectedView = L16_2
      L16_2 = A4_2.selectedView
      L16_2.isVisible = false
      L16_2 = A4_2.selectedView
      L17_2 = A4_2.background
      L17_2 = L17_2.width
      L17_2 = L17_2 / 2
      L16_2.x = L17_2
      L16_2 = A4_2.selectedView
      L17_2 = A4_2.background
      L17_2 = L17_2.height
      L17_2 = L17_2 / 2
      L16_2.y = L17_2
    else
      L15_2 = display
      L15_2 = L15_2.newImageRect
      L16_2 = A4_2.view
      L17_2 = getCardBackGroundWithPower
      L18_2 = L10_2
      L19_2 = "medium"
      L20_2 = nil
      L21_2 = L13_2
      L22_2 = nil
      L23_2 = nil
      L24_2 = cardIsHero
      L25_2 = A2_2.baseId
      L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L24_2(L25_2)
      L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
      L18_2 = 98
      L19_2 = 133
      L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
      A4_2.background = L15_2
      L15_2 = cardIsHero
      L16_2 = A2_2.baseId
      L15_2 = L15_2(L16_2)
      if L15_2 then
        L15_2 = L44_1
        L16_2 = A4_2
        L17_2 = A2_2.baseId
        L18_2 = 92
        L19_2 = 92
        L15_2(L16_2, L17_2, L18_2, L19_2)
      else
        L15_2 = L3_1
        L16_2 = L15_2
        L15_2 = L15_2.new
        L17_2 = A4_2.view
        L18_2 = A4_2.cardImage
        L19_2 = 92
        L20_2 = 92
        L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
        A4_2.imageRect = L15_2
      end
      L15_2 = A4_2.imageRect
      L15_2.y = 61
    end
    L15_2 = A4_2.background
    L16_2 = A4_2.background
    L16_2 = L16_2.width
    L16_2 = L16_2 / 2
    L15_2.x = L16_2
    L15_2 = A4_2.background
    L16_2 = A4_2.background
    L16_2 = L16_2.height
    L16_2 = L16_2 / 2
    L15_2.y = L16_2
    L15_2 = display
    L15_2 = L15_2.newText
    L16_2 = A4_2.view
    L17_2 = L8_2
    L18_2 = 0
    L19_2 = 0
    L20_2 = L2_1
    L20_2 = L20_2.fontForTitle
    L20_2 = L20_2()
    L21_2 = 10
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    A4_2.name = L15_2
    L15_2 = A4_2.name
    L16_2 = L15_2
    L15_2 = L15_2.setFillColor
    L17_2 = getFontColor
    L18_2 = L10_2
    L19_2 = A2_2.veteran_level
    L20_2 = cardIsHero
    L21_2 = A2_2.baseId
    L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L20_2(L21_2)
    L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L15_2 = A4_2.name
    L16_2 = A4_2.background
    L16_2 = L16_2.x
    L15_2.x = L16_2
    L15_2 = A4_2.name
    L15_2.y = 7
    L15_2 = A4_2.imageRect
    L15_2.index = 3
    L15_2 = A4_2.imageRect
    L16_2 = A4_2.background
    L16_2 = L16_2.width
    L16_2 = L16_2 / 2
    L15_2.x = L16_2
    L15_2 = display
    L15_2 = L15_2.newText
    L16_2 = A4_2.view
    L17_2 = L11_2
    L18_2 = 0
    L19_2 = 0
    L20_2 = L2_1
    L20_2 = L20_2.fontForTitle
    L20_2 = L20_2()
    L21_2 = 10
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    A4_2.cooldown = L15_2
    L15_2 = A4_2.cooldown
    L16_2 = L15_2
    L15_2 = L15_2.setFillColor
    L17_2 = getFontColor
    L18_2 = L10_2
    L19_2 = A2_2.veteran_level
    L20_2 = cardIsHero
    L21_2 = A2_2.baseId
    L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L20_2(L21_2)
    L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L15_2 = A4_2.cooldown
    L16_2 = A4_2.cooldown
    L16_2 = L16_2.width
    L16_2 = L16_2 / 2
    L16_2 = 59 + L16_2
    L15_2.x = L16_2
    L15_2 = isAndroid
    L15_2 = L15_2()
    if L15_2 then
      L15_2 = A4_2.cooldown
      L15_2.y = 122
    else
      L15_2 = A4_2.cooldown
      L15_2.y = 124
    end
    L15_2 = nil
    L16_2 = showNewSeriesOfCards
    L17_2 = A4_2.isObjectForBattleAnimation
    L16_2 = L16_2(L17_2)
    if L16_2 then
      L16_2 = {}
      L16_2.id = "card power label"
      L16_2.value = L10_2
      L17_2 = Theme
      L17_2 = L17_2.textStyle
      L17_2 = L17_2[4]
      L17_2 = L17_2.font
      L16_2.font = L17_2
      L16_2.fontSize = 9
      L15_2 = L16_2
    else
      L16_2 = {}
      L16_2.id = "card power label"
      L16_2.value = L10_2
      L17_2 = {}
      L18_2 = getFontColor
      L19_2 = L10_2
      L20_2 = A2_2.veteran_level
      L21_2 = cardIsHero
      L22_2 = A2_2.baseId
      L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L21_2(L22_2)
      L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
      L17_2[1] = L18_2
      L17_2[2] = L19_2
      L17_2[3] = L20_2
      L17_2[4] = L21_2
      L17_2[5] = L22_2
      L17_2[6] = L23_2
      L17_2[7] = L24_2
      L17_2[8] = L25_2
      L17_2[9] = L26_2
      L17_2[10] = L27_2
      L17_2[11] = L28_2
      L17_2[12] = L29_2
      L17_2[13] = L30_2
      L17_2[14] = L31_2
      L17_2[15] = L32_2
      L16_2.labelColor = L17_2
      L17_2 = {}
      L18_2 = getFontColor
      L19_2 = L10_2
      L20_2 = A2_2.veteran_level
      L21_2 = cardIsHero
      L22_2 = A2_2.baseId
      L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L21_2(L22_2)
      L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
      L17_2[1] = L18_2
      L17_2[2] = L19_2
      L17_2[3] = L20_2
      L17_2[4] = L21_2
      L17_2[5] = L22_2
      L17_2[6] = L23_2
      L17_2[7] = L24_2
      L17_2[8] = L25_2
      L17_2[9] = L26_2
      L17_2[10] = L27_2
      L17_2[11] = L28_2
      L17_2[12] = L29_2
      L17_2[13] = L30_2
      L17_2[14] = L31_2
      L17_2[15] = L32_2
      L16_2.labelAnimationColor = L17_2
      L17_2 = L2_1
      L17_2 = L17_2.fontForTitle
      L17_2 = L17_2()
      L16_2.font = L17_2
      L16_2.fontSize = 10
      L15_2 = L16_2
    end
    L16_2 = L5_1
    L17_2 = L16_2
    L16_2 = L16_2.new
    L18_2 = L15_2
    L16_2 = L16_2(L17_2, L18_2)
    A4_2.power = L16_2
    L16_2 = A4_2.power
    L16_2.scaleIncreaseAmount = 0
    L16_2 = A4_2.power
    L16_2.numberUpdateAnimationLength = 360
    L16_2 = A4_2.view
    L17_2 = L16_2
    L16_2 = L16_2.insert
    L18_2 = A4_2.power
    L18_2 = L18_2.view
    L16_2(L17_2, L18_2)
    L16_2 = A4_2.power
    L17_2 = A4_2.power
    L17_2 = L17_2.width
    L17_2 = L17_2 / 2
    L17_2 = 14 + L17_2
    L16_2.x = L17_2
    L16_2 = isAndroid
    L16_2 = L16_2()
    if L16_2 then
      L16_2 = A4_2.power
      L16_2.y = 122
    else
      L16_2 = A4_2.power
      L16_2.y = 124
    end
    L16_2 = display
    L16_2 = L16_2.newGroup
    L16_2 = L16_2()
    A4_2.cooldownGroup = L16_2
    L16_2 = showNewSeriesOfCards
    L17_2 = A4_2.isObjectForBattleAnimation
    L16_2 = L16_2(L17_2)
    if L16_2 then
      L16_2 = 0
      L17_2 = isAndroid
      L17_2 = L17_2()
      if L17_2 then
        L16_2 = 121
      else
        L16_2 = 123
      end
      L17_2 = L40_1
      L18_2 = A4_2
      L19_2 = A4_2.cooldown
      L19_2 = L19_2.width
      L19_2 = L19_2 / 2
      L19_2 = 25 + L19_2
      L20_2 = L16_2
      L21_2 = 28
      L22_2 = 18
      L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
      L17_2 = A4_2.view
      L17_2 = L17_2.width
      L17_2 = L17_2 - 15
      L18_2 = A4_2.view
      L18_2 = L18_2.height
      L18_2 = L18_2 - 18
      L19_2 = L41_1
      L20_2 = A4_2
      L21_2 = A2_2.rarity
      L22_2 = L17_2
      L23_2 = L18_2
      L19_2(L20_2, L21_2, L22_2, L23_2)
      L19_2 = display
      L19_2 = L19_2.newImage
      L20_2 = A4_2.cooldownGroup
      L21_2 = L2_1
      L21_2 = L21_2.Path_Assets
      L22_2 = "CardView/New Medium Cards/0.overlay.png"
      L21_2 = L21_2 .. L22_2
      L22_2 = 119
      L23_2 = 133
      L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2)
      A4_2.cooldownBG = L19_2
      L19_2 = A4_2.cooldownBG
      L20_2 = A4_2.background
      L20_2 = L20_2.x
      L19_2.x = L20_2
      L19_2 = A4_2.cooldownBG
      L20_2 = A4_2.background
      L20_2 = L20_2.y
      L19_2.y = L20_2
      L19_2 = L42_1
      L20_2 = A4_2
      L19_2(L20_2)
      L19_2 = display
      L19_2 = L19_2.newImage
      L20_2 = A4_2.view
      L21_2 = L2_1
      L21_2 = L21_2.Path_Assets
      L22_2 = "CardView/New Medium Cards/selectedBG.png"
      L21_2 = L21_2 .. L22_2
      L22_2 = 119
      L23_2 = 133
      L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2)
      A4_2.selectedBG = L19_2
      L19_2 = A4_2.selectedBG
      L20_2 = A4_2.background
      L20_2 = L20_2.x
      L19_2.x = L20_2
      L19_2 = A4_2.selectedBG
      L20_2 = A4_2.background
      L20_2 = L20_2.y
      L19_2.y = L20_2
      L19_2 = A4_2.selectedBG
      L19_2.isVisible = false
      L19_2 = A4_2.selectedView
      L20_2 = L19_2
      L19_2 = L19_2.toFront
      L19_2(L20_2)
    else
      L16_2 = 10
      L17_2 = 10
      L18_2 = 1
      L19_2 = A4_2.background
      L19_2 = L19_2.x
      L20_2 = A2_2.rarity
      L20_2 = L20_2 * L16_2
      L21_2 = A2_2.rarity
      L21_2 = L21_2 - 1
      L21_2 = L21_2 * L18_2
      L20_2 = L20_2 + L21_2
      L20_2 = L20_2 / 2
      L19_2 = L19_2 - L20_2
      L20_2 = {}
      A4_2.stars = L20_2
      L20_2 = "General/FC-star.png"
      if 0 < L13_2 then
        L20_2 = "CardView/Star.png"
      end
      L21_2 = cardIsHero
      L22_2 = A2_2.baseId
      L21_2 = L21_2(L22_2)
      if not L21_2 then
        L21_2 = 1
        L22_2 = A2_2.rarity
        L23_2 = 1
        for L24_2 = L21_2, L22_2, L23_2 do
          L25_2 = A4_2.stars
          L26_2 = display
          L26_2 = L26_2.newImageRect
          L27_2 = A4_2.view
          L28_2 = L2_1
          L28_2 = L28_2.Path_Assets
          L29_2 = L20_2
          L28_2 = L28_2 .. L29_2
          L29_2 = L16_2
          L30_2 = L17_2
          L26_2 = L26_2(L27_2, L28_2, L29_2, L30_2)
          L25_2[L24_2] = L26_2
          L25_2 = A4_2.stars
          L25_2 = L25_2[L24_2]
          L26_2 = L24_2 - 1
          L27_2 = L16_2 + L18_2
          L26_2 = L26_2 * L27_2
          L26_2 = L19_2 + L26_2
          L27_2 = L16_2 / 2
          L26_2 = L26_2 + L27_2
          L25_2.x = L26_2
          L25_2 = A4_2.stars
          L25_2 = L25_2[L24_2]
          L25_2.y = 113
        end
      end
      L21_2 = display
      L21_2 = L21_2.newRect
      L22_2 = A4_2.view
      L23_2 = 0
      L24_2 = 0
      L25_2 = 93
      L26_2 = 92
      L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2, L26_2)
      A4_2.selectedBG = L21_2
      L21_2 = A4_2.selectedBG
      L22_2 = L21_2
      L21_2 = L21_2.setFillColor
      L23_2 = L2_1
      L23_2 = L23_2.lightBlueColor3
      L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L23_2()
      L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
      L21_2 = A4_2.selectedBG
      L22_2 = A4_2.background
      L22_2 = L22_2.x
      L21_2.x = L22_2
      L21_2 = A4_2.selectedBG
      L21_2.y = 61
      L21_2 = A4_2.selectedBG
      L21_2.isVisible = false
      L21_2 = display
      L21_2 = L21_2.newImageRect
      L22_2 = A4_2.view
      L23_2 = L2_1
      L23_2 = L23_2.Path_Assets
      L24_2 = "General/FC-tick.png"
      L23_2 = L23_2 .. L24_2
      L24_2 = 35
      L25_2 = 35
      L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2)
      A4_2.selectedView = L21_2
      L21_2 = A4_2.selectedView
      L21_2.isVisible = false
      L21_2 = A4_2.selectedView
      L22_2 = A4_2.selectedBG
      L22_2 = L22_2.x
      L21_2.x = L22_2
      L21_2 = A4_2.selectedView
      L22_2 = A4_2.selectedBG
      L22_2 = L22_2.y
      L21_2.y = L22_2
      L21_2 = display
      L21_2 = L21_2.newRect
      L22_2 = A4_2.cooldownGroup
      L23_2 = 0
      L24_2 = 0
      L25_2 = 93
      L26_2 = 92
      L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2, L26_2)
      A4_2.cooldownBG = L21_2
      L21_2 = A4_2.cooldownBG
      L22_2 = L21_2
      L21_2 = L21_2.setFillColor
      L23_2 = L2_1
      L23_2 = L23_2.brightGreenColor
      L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L23_2()
      L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
      L21_2 = A4_2.cooldownBG
      L22_2 = A4_2.background
      L22_2 = L22_2.x
      L21_2.x = L22_2
      L21_2 = A4_2.cooldownBG
      L21_2.y = 61
      L21_2 = L42_1
      L22_2 = A4_2
      L21_2(L22_2)
    end
    L16_2 = A4_2.cooldownGroup
    L16_2.isVisible = false
    L16_2 = L37_1
    L17_2 = A4_2
    L16_2(L17_2)
  elseif A1_2 == "small" then
    A4_2.cardHeight = 80
    A4_2.cardWidth = 60
    L14_2 = showNewSeriesOfCards
    L14_2 = L14_2()
    if L14_2 then
      L14_2 = L3_1
      L15_2 = L14_2
      L14_2 = L14_2.new
      L16_2 = A4_2.view
      L17_2 = A4_2.cardImage
      L18_2 = 53
      L19_2 = 59
      L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
      A4_2.imageRect = L14_2
    else
      L14_2 = cardIsHero
      L15_2 = A2_2.baseId
      L14_2 = L14_2(L15_2)
      if L14_2 then
        L14_2 = L32_1
        L14_2.isShowingBackEmitter = false
        L14_2 = L32_1
        L14_2.isShowingFrontEmitter = false
        L14_2 = L44_1
        L15_2 = A4_2
        L16_2 = A2_2.baseId
        L17_2 = 59
        L18_2 = 59
        L14_2(L15_2, L16_2, L17_2, L18_2)
      else
        L14_2 = L3_1
        L15_2 = L14_2
        L14_2 = L14_2.new
        L16_2 = A4_2.view
        L17_2 = A4_2.cardImage
        L18_2 = 59
        L19_2 = 59
        L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
        A4_2.imageRect = L14_2
      end
    end
    L14_2 = A4_2.imageRect
    L14_2.index = 1
    L14_2 = A4_2.imageRect
    L14_2.x = 30
    L14_2 = A4_2.imageRect
    L14_2.y = 33.5
    L14_2 = display
    L14_2 = L14_2.newImageRect
    L15_2 = A4_2.view
    L16_2 = L2_1
    L16_2 = L16_2.Path_Assets
    L17_2 = "CardView/small-card-bg.png"
    L16_2 = L16_2 .. L17_2
    L17_2 = 60
    L18_2 = 80
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
    A4_2.background = L14_2
    L14_2 = A4_2.background
    L15_2 = A4_2.background
    L15_2 = L15_2.width
    L15_2 = L15_2 / 2
    L14_2.x = L15_2
    L14_2 = A4_2.background
    L15_2 = A4_2.background
    L15_2 = L15_2.height
    L15_2 = L15_2 / 2
    L14_2.y = L15_2
    L14_2 = display
    L14_2 = L14_2.newText
    L15_2 = A4_2.view
    L16_2 = L9_2
    L17_2 = 0
    L18_2 = 0
    L19_2 = L2_1
    L19_2 = L19_2.fontForTitle
    L19_2 = L19_2()
    L20_2 = 10
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    A4_2.power = L14_2
    L14_2 = A4_2.power
    L15_2 = L14_2
    L14_2 = L14_2.setFillColor
    L16_2 = L2_1
    L16_2 = L16_2.darkBlueColor
    L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L16_2()
    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L14_2 = A4_2.power
    L15_2 = A4_2.background
    L15_2 = L15_2.width
    L15_2 = L15_2 / 2
    L15_2 = L15_2 + 7
    L14_2.x = L15_2
    L14_2 = isAndroid
    L14_2 = L14_2()
    if L14_2 then
      L14_2 = A4_2.power
      L14_2.y = 70
    else
      L14_2 = A4_2.power
      L14_2.y = 72
    end
    L14_2 = A4_2.isSelective
    if L14_2 then
      L14_2 = 59
      L15_2 = 59
      L16_2 = display
      L16_2 = L16_2.newRect
      L17_2 = A4_2.view
      L18_2 = 0
      L19_2 = 0
      L20_2 = L15_2 * 0.92
      L20_2 = L20_2 + 1
      L21_2 = L14_2
      L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
      A4_2.selectedBG = L16_2
      L16_2 = A4_2.selectedBG
      L17_2 = L16_2
      L16_2 = L16_2.setFillColor
      L18_2 = L2_1
      L18_2 = L18_2.lightBlueColor3
      L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L18_2()
      L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
      L16_2 = A4_2.selectedBG
      L17_2 = A4_2.background
      L17_2 = L17_2.x
      L16_2.x = L17_2
      L16_2 = A4_2.selectedBG
      L17_2 = L14_2 * 75
      L17_2 = L17_2 / 133
      L16_2.y = L17_2
      L16_2 = A4_2.selectedBG
      L16_2.isVisible = false
      L16_2 = display
      L16_2 = L16_2.newImageRect
      L17_2 = A4_2.view
      L18_2 = L2_1
      L18_2 = L18_2.Path_Assets
      L19_2 = "General/FC-tick.png"
      L18_2 = L18_2 .. L19_2
      L19_2 = L15_2 * 0.3
      L20_2 = L15_2 * 0.3
      L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
      A4_2.selectedView = L16_2
      L16_2 = A4_2.selectedView
      L16_2.isVisible = false
      L16_2 = A4_2.selectedView
      L17_2 = A4_2.background
      L17_2 = L17_2.x
      L16_2.x = L17_2
      L16_2 = A4_2.selectedView
      L17_2 = A4_2.selectedBG
      L17_2 = L17_2.y
      L16_2.y = L17_2
    end
  elseif A1_2 == "liveBattle" then
    A4_2.cardHeight = 133
    A4_2.cardWidth = 98
    L15_2 = A2_2
    L14_2 = A2_2.cooldownRemaining
    L14_2 = L14_2(L15_2)
    L15_2 = math
    L15_2 = L15_2.floor
    L16_2 = L14_2 / 60
    L15_2 = L15_2(L16_2)
    A4_2.min = L15_2
    L15_2 = L14_2 % 60
    A4_2.sec = L15_2
    L15_2 = display
    L15_2 = L15_2.newImageRect
    L16_2 = A4_2.view
    L17_2 = getCardBackGroundWithPower
    L18_2 = L10_2
    L19_2 = "medium"
    L20_2 = nil
    L21_2 = L13_2
    L22_2 = nil
    L23_2 = nil
    L24_2 = cardIsHero
    L25_2 = A2_2.baseId
    L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L24_2(L25_2)
    L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L18_2 = 98
    L19_2 = 133
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
    A4_2.background = L15_2
    L15_2 = A4_2.background
    L16_2 = A4_2.background
    L16_2 = L16_2.width
    L16_2 = L16_2 / 2
    L15_2.x = L16_2
    L15_2 = A4_2.background
    L16_2 = A4_2.background
    L16_2 = L16_2.height
    L16_2 = L16_2 / 2
    L15_2.y = L16_2
    L15_2 = display
    L15_2 = L15_2.newText
    L16_2 = A4_2.view
    L17_2 = L8_2
    L18_2 = 0
    L19_2 = 0
    L20_2 = L2_1
    L20_2 = L20_2.fontForTitle
    L20_2 = L20_2()
    L21_2 = 10
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    A4_2.name = L15_2
    L15_2 = A4_2.name
    L16_2 = L15_2
    L15_2 = L15_2.setFillColor
    L17_2 = getFontColor
    L18_2 = L10_2
    L19_2 = A2_2.veteran_level
    L20_2 = cardIsHero
    L21_2 = A2_2.baseId
    L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L20_2(L21_2)
    L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L15_2 = A4_2.name
    L16_2 = A4_2.background
    L16_2 = L16_2.x
    L15_2.x = L16_2
    L15_2 = A4_2.name
    L15_2.y = 8
    L15_2 = cardIsHero
    L16_2 = A2_2.baseId
    L15_2 = L15_2(L16_2)
    if L15_2 then
      L15_2 = L44_1
      L16_2 = A4_2
      L17_2 = A2_2.baseId
      L18_2 = 92
      L19_2 = 92
      L15_2(L16_2, L17_2, L18_2, L19_2)
    else
      L15_2 = L3_1
      L16_2 = L15_2
      L15_2 = L15_2.new
      L17_2 = A4_2.view
      L18_2 = A4_2.cardImage
      L19_2 = 92
      L20_2 = 92
      L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
      A4_2.imageRect = L15_2
    end
    L15_2 = A4_2.imageRect
    L15_2.index = 3
    L15_2 = A4_2.imageRect
    L16_2 = A4_2.background
    L16_2 = L16_2.width
    L16_2 = L16_2 / 2
    L15_2.x = L16_2
    L15_2 = A4_2.imageRect
    L15_2.y = 61
    L15_2 = display
    L15_2 = L15_2.newText
    L16_2 = A4_2.view
    L17_2 = L11_2
    L18_2 = 0
    L19_2 = 0
    L20_2 = L2_1
    L20_2 = L20_2.fontForTitle
    L20_2 = L20_2()
    L21_2 = 10
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    A4_2.cooldown = L15_2
    L15_2 = A4_2.cooldown
    L16_2 = L15_2
    L15_2 = L15_2.setFillColor
    L17_2 = getFontColor
    L18_2 = L10_2
    L19_2 = A2_2.veteran_level
    L20_2 = cardIsHero
    L21_2 = A2_2.baseId
    L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L20_2(L21_2)
    L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L15_2 = A4_2.cooldown
    L16_2 = A4_2.cooldown
    L16_2 = L16_2.width
    L16_2 = L16_2 / 2
    L16_2 = 59 + L16_2
    L15_2.x = L16_2
    L15_2 = A4_2.cooldown
    L15_2.y = 124
    L15_2 = display
    L15_2 = L15_2.newText
    L16_2 = A4_2.view
    L17_2 = L9_2
    L18_2 = 0
    L19_2 = 0
    L20_2 = L2_1
    L20_2 = L20_2.fontForTitle
    L20_2 = L20_2()
    L21_2 = 10
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    A4_2.power = L15_2
    L15_2 = A4_2.power
    L16_2 = L15_2
    L15_2 = L15_2.setFillColor
    L17_2 = getFontColor
    L18_2 = L10_2
    L19_2 = A2_2.veteran_level
    L20_2 = cardIsHero
    L21_2 = A2_2.baseId
    L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L20_2(L21_2)
    L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L15_2 = A4_2.power
    L16_2 = A4_2.power
    L16_2 = L16_2.width
    L16_2 = L16_2 / 2
    L16_2 = 14 + L16_2
    L15_2.x = L16_2
    L15_2 = A4_2.power
    L15_2.y = 124
    L15_2 = 10
    L16_2 = 10
    L17_2 = 1
    L18_2 = A4_2.background
    L18_2 = L18_2.x
    L19_2 = A2_2.rarity
    L19_2 = L19_2 * L15_2
    L20_2 = A2_2.rarity
    L20_2 = L20_2 - 1
    L20_2 = L20_2 * L17_2
    L19_2 = L19_2 + L20_2
    L19_2 = L19_2 / 2
    L18_2 = L18_2 - L19_2
    L19_2 = {}
    A4_2.stars = L19_2
    L19_2 = "General/FC-star.png"
    if 0 < L13_2 then
      L19_2 = "CardView/Star.png"
    end
    L20_2 = cardIsHero
    L21_2 = A2_2.baseId
    L20_2 = L20_2(L21_2)
    if not L20_2 then
      L20_2 = 1
      L21_2 = A2_2.rarity
      L22_2 = 1
      for L23_2 = L20_2, L21_2, L22_2 do
        L24_2 = A4_2.stars
        L25_2 = display
        L25_2 = L25_2.newImageRect
        L26_2 = A4_2.view
        L27_2 = L2_1
        L27_2 = L27_2.Path_Assets
        L28_2 = L19_2
        L27_2 = L27_2 .. L28_2
        L28_2 = L15_2
        L29_2 = L16_2
        L25_2 = L25_2(L26_2, L27_2, L28_2, L29_2)
        L24_2[L23_2] = L25_2
        L24_2 = A4_2.stars
        L24_2 = L24_2[L23_2]
        L25_2 = L23_2 - 1
        L26_2 = L15_2 + L17_2
        L25_2 = L25_2 * L26_2
        L25_2 = L18_2 + L25_2
        L26_2 = L15_2 / 2
        L25_2 = L25_2 + L26_2
        L24_2.x = L25_2
        L24_2 = A4_2.stars
        L24_2 = L24_2[L23_2]
        L24_2.y = 113
      end
    end
    L20_2 = display
    L20_2 = L20_2.newRect
    L21_2 = A4_2.view
    L22_2 = 0
    L23_2 = 0
    L24_2 = 93
    L25_2 = 92
    L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2)
    A4_2.selectedBG = L20_2
    L20_2 = A4_2.selectedBG
    L21_2 = L20_2
    L20_2 = L20_2.setFillColor
    L22_2 = L2_1
    L22_2 = L22_2.lightBlueColor3
    L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L22_2()
    L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L20_2 = A4_2.selectedBG
    L21_2 = A4_2.background
    L21_2 = L21_2.x
    L20_2.x = L21_2
    L20_2 = A4_2.selectedBG
    L20_2.y = 61
    L20_2 = A4_2.selectedBG
    L20_2.isVisible = false
    L20_2 = display
    L20_2 = L20_2.newImageRect
    L21_2 = A4_2.view
    L22_2 = L2_1
    L22_2 = L22_2.Path_Assets
    L23_2 = "General/FC-tick.png"
    L22_2 = L22_2 .. L23_2
    L23_2 = 35
    L24_2 = 35
    L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2)
    A4_2.selectedView = L20_2
    L20_2 = A4_2.selectedView
    L20_2.isVisible = false
    L20_2 = A4_2.selectedView
    L21_2 = A4_2.selectedBG
    L21_2 = L21_2.x
    L20_2.x = L21_2
    L20_2 = A4_2.selectedView
    L21_2 = A4_2.selectedBG
    L21_2 = L21_2.y
    L20_2.y = L21_2
    L20_2 = display
    L20_2 = L20_2.newGroup
    L20_2 = L20_2()
    A4_2.cooldownGroup = L20_2
    L20_2 = display
    L20_2 = L20_2.newRect
    L21_2 = A4_2.cooldownGroup
    L22_2 = 0
    L23_2 = 0
    L24_2 = 93
    L25_2 = 92
    L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2)
    A4_2.cooldownBG = L20_2
    L20_2 = A4_2.cooldownBG
    L21_2 = L20_2
    L20_2 = L20_2.setFillColor
    L22_2 = L2_1
    L22_2 = L22_2.brightGreenColor
    L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L22_2()
    L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L20_2 = A4_2.cooldownBG
    L21_2 = A4_2.background
    L21_2 = L21_2.x
    L20_2.x = L21_2
    L20_2 = A4_2.cooldownBG
    L20_2.y = 61
    L20_2 = L6_1
    L21_2 = L20_2
    L20_2 = L20_2.new
    L22_2 = {}
    L22_2.width = 35
    L22_2.height = 35
    L23_2 = L2_1
    L23_2 = L23_2.Path_Assets
    L24_2 = "General/refresh.png"
    L23_2 = L23_2 .. L24_2
    L22_2.defaultFile = L23_2
    L23_2 = L2_1
    L23_2 = L23_2.Path_Assets
    L24_2 = "General/refresh-pressed.png"
    L23_2 = L23_2 .. L24_2
    L22_2.overFile = L23_2
    
    function L23_2(A0_3)
      local L1_3, L2_3
      L1_3 = A4_2
      L1_3 = L1_3.delegate
      L1_3 = L1_3.didPressCooloffButton
      L2_3 = A4_2
      L1_3(L2_3)
    end
    
    L22_2.onRelease = L23_2
    L20_2 = L20_2(L21_2, L22_2)
    A4_2.cooldownViewButton = L20_2
    L20_2 = A4_2.cooldownGroup
    L21_2 = L20_2
    L20_2 = L20_2.insert
    L22_2 = A4_2.cooldownViewButton
    L22_2 = L22_2.view
    L20_2(L21_2, L22_2)
    L20_2 = A4_2.cooldownViewButton
    L21_2 = A4_2.cooldownBG
    L21_2 = L21_2.x
    L20_2.x = L21_2
    L20_2 = A4_2.cooldownViewButton
    L21_2 = A4_2.cooldownBG
    L21_2 = L21_2.y
    L21_2 = L21_2 - 10
    L20_2.y = L21_2
    L20_2 = display
    L20_2 = L20_2.newImageRect
    L21_2 = A4_2.cooldownGroup
    L22_2 = L2_1
    L22_2 = L22_2.Path_Assets
    L23_2 = "CardView/FC-Time.png"
    L22_2 = L22_2 .. L23_2
    L23_2 = 12
    L24_2 = 12
    L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2)
    A4_2.cooldownTimeImage = L20_2
    L20_2 = A4_2.cooldownTimeImage
    L21_2 = A4_2.cooldownBG
    L21_2 = L21_2.x
    L21_2 = L21_2 - 15
    L20_2.x = L21_2
    L20_2 = A4_2.cooldownTimeImage
    L21_2 = A4_2.cooldownBG
    L21_2 = L21_2.y
    L21_2 = L21_2 + 14
    L20_2.y = L21_2
    L20_2 = display
    L20_2 = L20_2.newText
    L21_2 = A4_2.cooldownGroup
    L22_2 = ""
    L23_2 = L1_1
    L23_2 = L23_2.adjustNumber
    L24_2 = A4_2.min
    L23_2 = L23_2(L24_2)
    L24_2 = ":"
    L25_2 = L1_1
    L25_2 = L25_2.adjustNumber
    L26_2 = A4_2.sec
    L25_2 = L25_2(L26_2)
    L22_2 = L22_2 .. L23_2 .. L24_2 .. L25_2
    L23_2 = 0
    L24_2 = 0
    L25_2 = L2_1
    L25_2 = L25_2.fontForTitle
    L25_2 = L25_2()
    L26_2 = 10
    L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    A4_2.cooldownTimeLabel = L20_2
    L20_2 = A4_2.cooldownTimeLabel
    L21_2 = L20_2
    L20_2 = L20_2.setFillColor
    L22_2 = L2_1
    L22_2 = L22_2.darkGreenColor
    L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L22_2()
    L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L20_2 = A4_2.cooldownTimeLabel
    L21_2 = A4_2.cooldownTimeImage
    L21_2 = L21_2.x
    L21_2 = L21_2 + 10
    L22_2 = A4_2.cooldownTimeLabel
    L22_2 = L22_2.width
    L22_2 = L22_2 / 2
    L21_2 = L21_2 + L22_2
    L20_2.x = L21_2
    L20_2 = A4_2.cooldownTimeLabel
    L21_2 = A4_2.cooldownTimeImage
    L21_2 = L21_2.y
    L20_2.y = L21_2
    L20_2 = display
    L20_2 = L20_2.newImageRect
    L21_2 = A4_2.cooldownGroup
    L22_2 = L2_1
    L22_2 = L22_2.Path_Assets
    L23_2 = "CardView/FC-Cost.png"
    L22_2 = L22_2 .. L23_2
    L23_2 = 12
    L24_2 = 12
    L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2)
    A4_2.cooldownGoldImage = L20_2
    L20_2 = A4_2.cooldownGoldImage
    L21_2 = A4_2.cooldownBG
    L21_2 = L21_2.x
    L21_2 = L21_2 - 15
    L20_2.x = L21_2
    L20_2 = A4_2.cooldownGoldImage
    L21_2 = A4_2.cooldownBG
    L21_2 = L21_2.y
    L21_2 = L21_2 + 28
    L20_2.y = L21_2
    L20_2 = display
    L20_2 = L20_2.newText
    L21_2 = A4_2.cooldownGroup
    L22_2 = L1_1
    L22_2 = L22_2.adjustNumber
    L23_2 = "200"
    L22_2 = L22_2(L23_2)
    L23_2 = 0
    L24_2 = 0
    L25_2 = L2_1
    L25_2 = L25_2.fontForTitle
    L25_2 = L25_2()
    L26_2 = 10
    L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    A4_2.cooldownCostLabel = L20_2
    L20_2 = A4_2.cooldownCostLabel
    L21_2 = L20_2
    L20_2 = L20_2.setFillColor
    L22_2 = L2_1
    L22_2 = L22_2.darkGreenColor
    L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L22_2()
    L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
    L20_2 = A4_2.cooldownCostLabel
    L21_2 = A4_2.cooldownGoldImage
    L21_2 = L21_2.x
    L21_2 = L21_2 + 10
    L22_2 = A4_2.cooldownCostLabel
    L22_2 = L22_2.width
    L22_2 = L22_2 / 2
    L21_2 = L21_2 + L22_2
    L20_2.x = L21_2
    L20_2 = A4_2.cooldownCostLabel
    L21_2 = A4_2.cooldownGoldImage
    L21_2 = L21_2.y
    L20_2.y = L21_2
    L20_2 = A4_2.view
    L21_2 = L20_2
    L20_2 = L20_2.insert
    L22_2 = A4_2.cooldownGroup
    L20_2(L21_2, L22_2)
    L20_2 = A4_2.cooldownGroup
    L20_2.isVisible = false
  end
  return A4_2
end

new = L45_1

function L45_1(A0_2, A1_2)
  A0_2.selectable = A1_2
end

setSelectable = L45_1

function L45_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.cooldownTimeImage
  L1_2.isVisible = false
  L1_2 = A0_2.cooldownTimeLabel
  L1_2.isVisible = false
  L1_2 = A0_2.cooldownGoldImage
  L1_2.isVisible = false
  L1_2 = A0_2.cooldownCostLabel
  L1_2.isVisible = false
  L1_2 = A0_2.cooldownViewButton
  L2_2 = L1_2
  L1_2 = L1_2.setEnabled
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = transition
  L1_2 = L1_2.to
  L2_2 = A0_2.cooldownViewButton
  L3_2 = {}
  L4_2 = A0_2.cooldownBG
  L4_2 = L4_2.y
  L3_2.y = L4_2
  L3_2.time = 100
  L1_2(L2_2, L3_2)
  
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = A0_2
    L1_3 = L1_3.cooldownViewButton
    L2_3 = {}
    L3_3 = A0_2
    L3_3 = L3_3.cooldownViewButton
    L3_3 = L3_3.rotation
    L3_3 = L3_3 + 12
    L2_3.rotation = L3_3
    L2_3.time = 50
    L3_3 = L1_2
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L2_2 = transition
  L2_2 = L2_2.to
  L3_2 = A0_2.cooldownViewButton
  L4_2 = {}
  L5_2 = A0_2.cooldownViewButton
  L5_2 = L5_2.rotation
  L5_2 = L5_2 + 12
  L4_2.rotation = L5_2
  L4_2.time = 50
  L4_2.onComplete = L1_2
  L2_2(L3_2, L4_2)
end

animateCooldown = L45_1

function L45_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L28_1
  if L1_2 then
    L1_2 = timer
    L1_2 = L1_2.performWithDelay
    L2_2 = 3000
    
    function L3_2()
      local L0_3, L1_3
      L0_3 = transition
      L0_3 = L0_3.cancel
      L1_3 = A0_2
      L1_3 = L1_3.cooldownViewButton
      L0_3(L1_3)
    end
    
    L1_2(L2_2, L3_2)
  else
    L1_2 = transition
    L1_2 = L1_2.cancel
    L2_2 = A0_2.cooldownViewButton
    L1_2(L2_2)
  end
  L1_2 = A0_2.cooldownViewButton
  L1_2.rotation = 0
  L1_2 = A0_2.cooldownTimeImage
  L1_2.isVisible = true
  L1_2 = A0_2.cooldownTimeLabel
  L1_2.isVisible = true
  L1_2 = A0_2.cooldownGoldImage
  L1_2.isVisible = true
  L1_2 = A0_2.cooldownCostLabel
  L1_2.isVisible = true
  L1_2 = A0_2.cooldownViewButton
  L2_2 = L1_2
  L1_2 = L1_2.setEnabled
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.cooldownViewButton
  L2_2 = A0_2.cooldownBG
  L2_2 = L2_2.y
  L2_2 = L2_2 - 10
  L1_2.y = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.click
  L1_2(L2_2)
end

stopAnimatingCooldown = L45_1

function L45_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.cooldown
  L2_2.isVisible = A1_2
end

setCooldownTimeVisibility = L45_1

function L45_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A3_2 == true then
    L4_2 = "_animCircle"
    L5_2 = A2_2
    L4_2 = L4_2 .. L5_2
    L5_2 = display
    L5_2 = L5_2.newCircle
    L6_2 = A0_2.view
    L7_2 = A1_2.x
    L8_2 = A1_2.y
    L9_2 = A1_2.width
    L9_2 = L9_2 / 2
    L9_2 = L9_2 + 3
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    A0_2[L4_2] = L5_2
    L4_2 = "_animCircle"
    L5_2 = A2_2
    L4_2 = L4_2 .. L5_2
    L4_2 = A0_2[L4_2]
    L5_2 = L4_2
    L4_2 = L4_2.setFillColor
    L6_2 = 1
    L7_2 = 0
    L8_2 = 0
    L9_2 = 0
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L4_2 = "_animCircle"
    L5_2 = A2_2
    L4_2 = L4_2 .. L5_2
    L4_2 = A0_2[L4_2]
    L4_2.strokeWidth = 2
    L4_2 = "_animCircle"
    L5_2 = A2_2
    L4_2 = L4_2 .. L5_2
    L4_2 = A0_2[L4_2]
    L5_2 = L4_2
    L4_2 = L4_2.setStrokeColor
    L6_2 = 1
    L7_2 = 0
    L8_2 = 0
    L9_2 = 1
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L4_2 = transition
    L4_2 = L4_2.blink
    L5_2 = "_animCircle"
    L6_2 = A2_2
    L5_2 = L5_2 .. L6_2
    L5_2 = A0_2[L5_2]
    L6_2 = {}
    L6_2.time = 3000
    L4_2(L5_2, L6_2)
  else
    L4_2 = "_animCircle"
    L5_2 = A2_2
    L4_2 = L4_2 .. L5_2
    L4_2 = A0_2[L4_2]
    if L4_2 then
      L4_2 = transition
      L4_2 = L4_2.cancel
      L5_2 = "_animCircle"
      L6_2 = A2_2
      L5_2 = L5_2 .. L6_2
      L5_2 = A0_2[L5_2]
      L4_2(L5_2)
      L4_2 = display
      L4_2 = L4_2.remove
      L5_2 = "_animCircle"
      L6_2 = A2_2
      L5_2 = L5_2 .. L6_2
      L5_2 = A0_2[L5_2]
      L4_2(L5_2)
      L4_2 = "_animCircle"
      L5_2 = A2_2
      L4_2 = L4_2 .. L5_2
      A0_2[L4_2] = nil
    end
  end
end

animateCircleAroundLabel = L45_1

function L45_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.animateCircleAroundLabel
  L4_2 = A0_2.power
  L5_2 = "power"
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end

animateCardPowerLabel = L45_1

function L45_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.animateCircleAroundLabel
  L4_2 = A0_2.cooldown
  L5_2 = "cooldown"
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end

animateCooldownLabel = L45_1

function L45_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  
  function L1_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L0_3 = L0_3.selectable
    if L0_3 then
      L0_3 = L7_1
      L0_3 = L0_3.playEffect
      L1_3 = Theme
      L1_3 = L1_3.buttonTouchSoundName
      L0_3(L1_3)
      L0_3 = A0_2
      L0_3 = L0_3.selected
      if L0_3 then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.deselected
        L0_3(L1_3)
        L0_3 = A0_2
        L0_3 = L0_3.delegate
        L0_3 = L0_3.cardDeselected
        L1_3 = A0_2
        L0_3(L1_3)
      else
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.didSelect
        L0_3(L1_3)
        L0_3 = A0_2
        L0_3 = L0_3.delegate
        L0_3 = L0_3.cardSelected
        L1_3 = A0_2
        L0_3(L1_3)
      end
    end
    L0_3 = true
    return L0_3
  end
  
  L2_2 = A0_2.background
  if L2_2 then
    L2_2 = A0_2.usedActionType
    if L2_2 ~= 1 then
      L2_2 = A0_2.usedActionType
      if L2_2 ~= 0 then
        L2_2 = A0_2.background
        L3_2 = L2_2
        L2_2 = L2_2.removeEventListener
        L4_2 = "tap"
        L5_2 = A0_2.usedAction
        L2_2(L3_2, L4_2, L5_2)
        A0_2.usedActionType = 0
      end
    end
  end
  L2_2 = A0_2.background
  if L2_2 then
    L2_2 = A0_2.usedActionType
    if L2_2 == 0 then
      L2_2 = A0_2.background
      L3_2 = L2_2
      L2_2 = L2_2.addEventListener
      L4_2 = "tap"
      L5_2 = L1_2
      L2_2(L3_2, L4_2, L5_2)
      A0_2.usedAction = L1_2
      A0_2.usedActionType = 1
    end
  end
end

setAction = L45_1

function L45_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  
  function L1_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L0_3 = L0_3.selectable
    if L0_3 then
      L0_3 = L7_1
      L0_3 = L0_3.playEffect
      L1_3 = Theme
      L1_3 = L1_3.buttonTouchSoundName
      L0_3(L1_3)
      L0_3 = A0_2
      L0_3 = L0_3.delegate
      L0_3 = L0_3.cardSelected
      L1_3 = A0_2
      L0_3(L1_3)
    end
  end
  
  func = L1_2
  L1_2 = A0_2.background
  if L1_2 then
    L1_2 = A0_2.usedActionType
    if L1_2 ~= 2 then
      L1_2 = A0_2.usedActionType
      if L1_2 ~= 0 then
        L1_2 = A0_2.background
        L2_2 = L1_2
        L1_2 = L1_2.removeEventListener
        L3_2 = "tap"
        L4_2 = A0_2.usedAction
        L1_2(L2_2, L3_2, L4_2)
        A0_2.usedActionType = 0
      end
    end
  end
  L1_2 = A0_2.background
  if L1_2 then
    L1_2 = A0_2.usedActionType
    if L1_2 == 0 then
      L1_2 = A0_2.background
      L2_2 = L1_2
      L1_2 = L1_2.addEventListener
      L3_2 = "tap"
      L4_2 = func
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = func
      A0_2.usedAction = L1_2
      A0_2.usedActionType = 2
    end
  end
end

setSimpleAction = L45_1

function L45_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.card
  L3_2 = L2_2
  L2_2 = L2_2.cooldownRemaining
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = L2_2 / 60
  L3_2 = L3_2(L4_2)
  A0_2.min = L3_2
  L3_2 = L2_2 % 60
  A0_2.sec = L3_2
  L3_2 = A0_2.min
  if L3_2 <= 0 then
    L3_2 = A0_2.sec
    if L3_2 <= 0 then
      L3_2 = Runtime
      L4_2 = L3_2
      L3_2 = L3_2.removeEventListener
      L5_2 = "click"
      L6_2 = A0_2
      L3_2(L4_2, L5_2, L6_2)
      L4_2 = A0_2
      L3_2 = A0_2.hideCooldownView
      L3_2(L4_2)
      L4_2 = A0_2
      L3_2 = A0_2.setAction
      L3_2(L4_2)
      L3_2 = L28_1
      if not L3_2 then
        A0_2.selectable = true
      end
    end
  end
  L3_2 = L4_1
  L3_2 = L3_2.getTimeStringFromNumberOfSeconds
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2.cooldownTimeLabel
  L4_2.text = L3_2
  L4_2 = A0_2.cooldownCostLabel
  L5_2 = L1_1
  L5_2 = L5_2.adjustNumber
  L6_2 = ""
  L7_2 = A0_2.card
  L8_2 = L7_2
  L7_2 = L7_2.cooldownCost
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 .. L7_2
  L5_2 = L5_2(L6_2)
  L4_2.text = L5_2
  L4_2 = A0_2.cooldownTimeLabel
  L5_2 = A0_2.cooldownTimeImage
  L5_2 = L5_2.x
  L5_2 = L5_2 + 10
  L6_2 = A0_2.cooldownTimeLabel
  L6_2 = L6_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L4_2.x = L5_2
  L4_2 = A0_2.cooldownCostLabel
  L5_2 = A0_2.cooldownGoldImage
  L5_2 = L5_2.x
  L5_2 = L5_2 + 10
  L6_2 = A0_2.cooldownCostLabel
  L6_2 = L6_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L4_2.x = L5_2
  L4_2 = mainPlayer
  L4_2 = L4_2.settings
  L4_2 = L4_2.newTutorial
  if L4_2 then
    L4_2 = L29_1
    if L4_2 then
      L4_2 = A0_2.card
      L5_2 = L4_2
      L4_2 = L4_2.cooldownCost
      L4_2 = L4_2(L5_2)
      A0_2.cooldownPriceOnTutorial = L4_2
    end
  end
end

click = L45_1

function L45_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 then
    L4_2 = A0_2
    L3_2 = A0_2.setSelectable
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.card
    L4_2 = L3_2
    L3_2 = L3_2.setLastUsageDate
    L5_2 = os
    L5_2 = L5_2.time
    L5_2 = L5_2()
    L6_2 = mainPlayer
    L6_2 = L6_2.timeDelta
    L5_2 = L5_2 + L6_2
    L3_2(L4_2, L5_2)
    if A2_2 then
      L4_2 = A0_2
      L3_2 = A0_2.showCooldownView
      L3_2(L4_2)
    else
      L3_2 = Runtime
      L4_2 = L3_2
      L3_2 = L3_2.removeEventListener
      L5_2 = "click"
      L6_2 = A0_2
      L3_2(L4_2, L5_2, L6_2)
      L4_2 = A0_2
      L3_2 = A0_2.showCooldownView
      L5_2 = true
      L3_2(L4_2, L5_2)
    end
  else
    L4_2 = A0_2
    L3_2 = A0_2.setSelectable
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.cooldownGroup
    L3_2.isVisible = false
  end
end

showFakeCooldownGroup = L45_1

function L45_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = require
  L2_2 = "Views.EffectsManager"
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.pointAtObjectInView
  L3_2 = A0_2.cooldownViewButton
  L4_2 = A0_2.cooldownGroup
  L2_2(L3_2, L4_2)
  A0_2.showingPointEffect = true
end

pointAtCooldownButton = L45_1

function L45_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.stopAnimatingCooldown
  L2_2(L3_2)
  L2_2 = A0_2.usedAction
  if L2_2 then
    A0_2.usedActionType = 0
    L2_2 = A0_2.background
    L3_2 = L2_2
    L2_2 = L2_2.removeEventListener
    L4_2 = "tap"
    L5_2 = A0_2.usedAction
    L2_2(L3_2, L4_2, L5_2)
    A0_2.usedAction = nil
  end
  L2_2 = A0_2.cooldownGroup
  L2_2.isVisible = true
  L3_2 = A0_2
  L2_2 = A0_2.click
  L2_2(L3_2)
  if A1_2 then
    return
  end
  L2_2 = Runtime
  L3_2 = L2_2
  L2_2 = L2_2.addEventListener
  L4_2 = "click"
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end

showCooldownView = L45_1

function L45_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = "click"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L28_1
  if L1_2 then
    L1_2 = A0_2.cooldownTimeImage
    L1_2.isVisible = false
    L1_2 = A0_2.cooldownTimeLabel
    L1_2.isVisible = false
    L1_2 = A0_2.cooldownGoldImage
    L1_2.isVisible = false
    L1_2 = A0_2.cooldownCostLabel
    L1_2.isVisible = false
    L1_2 = A0_2.cooldownViewButton
    L2_2 = L1_2
    L1_2 = L1_2.setEnabled
    L3_2 = false
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.setSelectable
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = timer
    L1_2 = L1_2.performWithDelay
    L2_2 = 3000
    
    function L3_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2
      L0_3 = L0_3.cooldownTimeImage
      L0_3.isVisible = true
      L0_3 = A0_2
      L0_3 = L0_3.cooldownTimeLabel
      L0_3.isVisible = true
      L0_3 = A0_2
      L0_3 = L0_3.cooldownGoldImage
      L0_3.isVisible = true
      L0_3 = A0_2
      L0_3 = L0_3.cooldownCostLabel
      L0_3.isVisible = true
      L0_3 = A0_2
      L0_3 = L0_3.cooldownGroup
      L0_3.isVisible = false
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setSelectable
      L2_3 = true
      L0_3(L1_3, L2_3)
      L0_3 = false
      L28_1 = L0_3
      L0_3 = A0_2
      L0_3 = L0_3.cooldownViewButton
      L1_3 = L0_3
      L0_3 = L0_3.setEnabled
      L2_3 = true
      L0_3(L1_3, L2_3)
    end
    
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2.cooldownGroup
    if L1_2 then
      L1_2 = A0_2.cooldownGroup
      L1_2.isVisible = false
    end
  end
  L1_2 = A0_2.showingPointEffect
  if L1_2 then
    L1_2 = require
    L2_2 = "Views.EffectsManager"
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2.removePoint
    L2_2()
    A0_2.showingPointEffect = false
  end
end

hideCooldownView = L45_1

function L45_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.imageRect
  L1_2 = L1_2.jsonIsAvailableNow
  if L1_2 then
    L1_2 = A0_2.imageRect
    L1_2 = L1_2.addListenerToHero
    if L1_2 then
      L1_2 = A0_2.imageRect
      L2_2 = L1_2
      L1_2 = L1_2.addListenerToHero
      L1_2(L2_2)
    end
  end
end

addEnterFrameListener = L45_1

function L45_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.imageRect
  L2_2 = L2_2.removeHero
  if L2_2 then
    L2_2 = A0_2.imageRect
    L3_2 = L2_2
    L2_2 = L2_2.removeHero
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end

removeEnterFrameListener = L45_1

function L45_1(A0_2)
  local L1_2, L2_2
  A0_2.selected = false
  L1_2 = showNewSeriesOfCards
  L2_2 = A0_2.isObjectForBattleAnimation
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2.background
    if L1_2 then
      L1_2 = A0_2.background
      L1_2.alpha = 1
    end
    L1_2 = A0_2.power
    if L1_2 then
      L1_2 = A0_2.power
      L1_2.alpha = 1
    end
    L1_2 = A0_2.Rank
    if L1_2 then
      L1_2 = A0_2.Rank
      L1_2.alpha = 1
    end
  end
  L1_2 = A0_2.selectedBG
  if L1_2 then
    L1_2 = A0_2.selectedBG
    L1_2.isVisible = false
  end
  L1_2 = A0_2.selectedView
  if L1_2 then
    L1_2 = A0_2.selectedView
    L1_2.isVisible = false
  end
end

deselected = L45_1

function L45_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.isDisabled
  if L1_2 == true then
    return
  end
  A0_2.isDisabled = true
  L2_2 = A0_2
  L1_2 = A0_2.deselected
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setSelectable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = display
  L1_2 = L1_2.newRect
  L2_2 = A0_2.view
  L3_2 = 0
  L4_2 = 0
  L5_2 = A0_2.background
  L5_2 = L5_2.width
  L6_2 = A0_2.background
  L6_2 = L6_2.height
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.disableBG = L1_2
  L1_2 = A0_2.disableBG
  L2_2 = L1_2
  L1_2 = L1_2.setFillColor
  L3_2 = L2_1
  L3_2 = L3_2.darkGreyColor
  L3_2 = L3_2()
  L4_2 = 0.75
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.disableBG
  L2_2 = A0_2.disableBG
  L2_2 = L2_2.width
  L2_2 = L2_2 / 2
  L1_2.x = L2_2
  L1_2 = A0_2.disableBG
  L2_2 = A0_2.disableBG
  L2_2 = L2_2.height
  L2_2 = L2_2 / 2
  L1_2.y = L2_2
end

disable = L45_1

function L45_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.isDisabled
  if L1_2 ~= true then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.deselected
  L1_2(L2_2)
  L1_2 = A0_2.disableBG
  if L1_2 then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = A0_2.disableBG
    L1_2(L2_2)
    A0_2.isDisabled = false
  end
end

enable = L45_1

function L45_1(A0_2)
  local L1_2
  A0_2.selected = true
  L1_2 = showNewSeriesOfCards
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2.background
    if L1_2 then
      L1_2 = A0_2.background
      L1_2.alpha = 0.7
    end
    L1_2 = A0_2.power
    if L1_2 then
      L1_2 = A0_2.power
      L1_2.alpha = 0.7
    end
    L1_2 = A0_2.Rank
    if L1_2 then
      L1_2 = A0_2.Rank
      L1_2.alpha = 0.7
    end
  end
  L1_2 = A0_2.selectedBG
  if L1_2 ~= nil then
    L1_2 = A0_2.selectedBG
    L1_2.isVisible = true
  end
  L1_2 = A0_2.selectedView
  if L1_2 ~= nil then
    L1_2 = A0_2.selectedView
    L1_2.isVisible = true
  end
end

didSelect = L45_1

function L45_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L45_1

function L45_1(A0_2, A1_2)
  A0_2.id = A1_2
end

setId = L45_1

function L45_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L2_1
  L3_2 = L3_2.Path_Assets
  L4_2 = "CardView/Stars/"
  L5_2 = A0_2
  L6_2 = "Stars.png"
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  if A1_2 == "big" then
    L4_2 = 13 * A0_2
    L4_2 = 3 + L4_2
    L5_2 = display
    L5_2 = L5_2.newImageRect
    L6_2 = L3_2
    L7_2 = L4_2
    L8_2 = 16
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L2_2 = L5_2
  else
    L4_2 = 8 * A0_2
    L4_2 = 2 + L4_2
    L5_2 = display
    L5_2 = L5_2.newImageRect
    L6_2 = L3_2
    L7_2 = L4_2
    L8_2 = 10
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L2_2 = L5_2
  end
  return L2_2
end

getStarImage = L45_1

function L45_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2
  L7_2 = L2_1
  L7_2 = L7_2.Path_Assets
  L8_2 = "CardView"
  L7_2 = L7_2 .. L8_2
  L8_2 = nil
  if A2_2 == true then
    A1_2 = "LiveBattle"
  end
  if A1_2 == "big" then
    L9_2 = showNewSeriesOfCards
    L9_2 = L9_2()
    if L9_2 and not A4_2 then
      L8_2 = "/New Large Cards/"
    else
      L8_2 = "/Large Cards/"
    end
  elseif A1_2 == "LiveBattle" then
    L8_2 = "/LiveBattle Cards/"
  else
    L9_2 = showNewSeriesOfCards
    L10_2 = A5_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L8_2 = "/New Medium Cards/"
    else
      L8_2 = "/Medium Cards/"
    end
  end
  L9_2 = L7_2
  L10_2 = L8_2
  L7_2 = L9_2 .. L10_2
  if A3_2 ~= 0 then
    L9_2 = L7_2
    L10_2 = "16"
    L7_2 = L9_2 .. L10_2
  elseif A6_2 == true then
    L9_2 = L7_2
    L10_2 = "17"
    L7_2 = L9_2 .. L10_2
  elseif A0_2 < 50 then
    L9_2 = L7_2
    L10_2 = "0"
    L7_2 = L9_2 .. L10_2
  elseif A0_2 < 150 then
    L9_2 = L7_2
    L10_2 = "1"
    L7_2 = L9_2 .. L10_2
  elseif A0_2 < 250 then
    L9_2 = L7_2
    L10_2 = "2"
    L7_2 = L9_2 .. L10_2
  elseif A0_2 < 500 then
    L9_2 = L7_2
    L10_2 = "3"
    L7_2 = L9_2 .. L10_2
  elseif A0_2 < 750 then
    L9_2 = L7_2
    L10_2 = "4"
    L7_2 = L9_2 .. L10_2
  elseif A0_2 < 1000 then
    L9_2 = L7_2
    L10_2 = "5"
    L7_2 = L9_2 .. L10_2
  elseif A0_2 < 2000 then
    L9_2 = L7_2
    L10_2 = "6"
    L7_2 = L9_2 .. L10_2
  elseif A0_2 < 5000 then
    L9_2 = L7_2
    L10_2 = "7"
    L7_2 = L9_2 .. L10_2
  elseif A0_2 < 10000 then
    L9_2 = L7_2
    L10_2 = "8"
    L7_2 = L9_2 .. L10_2
  elseif A0_2 < 20000 then
    L9_2 = L7_2
    L10_2 = "9"
    L7_2 = L9_2 .. L10_2
  elseif A0_2 < 30000 then
    L9_2 = L7_2
    L10_2 = "10"
    L7_2 = L9_2 .. L10_2
  elseif A0_2 < 40000 then
    L9_2 = L7_2
    L10_2 = "11"
    L7_2 = L9_2 .. L10_2
  elseif A0_2 < 50000 then
    L9_2 = L7_2
    L10_2 = "12"
    L7_2 = L9_2 .. L10_2
  elseif A0_2 < 60000 then
    L9_2 = L7_2
    L10_2 = "13"
    L7_2 = L9_2 .. L10_2
  elseif A0_2 < 70000 then
    L9_2 = L7_2
    L10_2 = "14"
    L7_2 = L9_2 .. L10_2
  else
    L9_2 = L7_2
    L10_2 = "15"
    L7_2 = L9_2 .. L10_2
  end
  L9_2 = L7_2
  L10_2 = ".card.png"
  L7_2 = L9_2 .. L10_2
  return L7_2
end

getCardBackGroundWithPower = L45_1

function L45_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if 0 < A1_2 or A2_2 then
    L3_2 = L2_1
    L3_2 = L3_2.whiteColor
    return L3_2()
  end
  if A0_2 < 50 then
    L3_2 = 0.2980392156862745
    L4_2 = 0.4117647058823529
    L5_2 = 0.1568627450980392
    return L3_2, L4_2, L5_2
  elseif A0_2 < 150 then
    L3_2 = 0.2980392156862745
    L4_2 = 0.4117647058823529
    L5_2 = 0.1568627450980392
    return L3_2, L4_2, L5_2
  elseif A0_2 < 250 then
    L3_2 = 0.6078431372549019
    L4_2 = 0.2980392156862745
    L5_2 = 0.09019607843137255
    return L3_2, L4_2, L5_2
  elseif A0_2 < 500 then
    L3_2 = 0.6078431372549019
    L4_2 = 0.2980392156862745
    L5_2 = 0.09019607843137255
    return L3_2, L4_2, L5_2
  elseif A0_2 < 750 then
    L3_2 = 0.4588235294117647
    L4_2 = 0.4588235294117647
    L5_2 = 0.4588235294117647
    return L3_2, L4_2, L5_2
  elseif A0_2 < 1000 then
    L3_2 = 0.4588235294117647
    L4_2 = 0.4588235294117647
    L5_2 = 0.4588235294117647
    return L3_2, L4_2, L5_2
  elseif A0_2 < 2000 then
    L3_2 = 0.8313725490196079
    L4_2 = 0.3333333333333333
    L5_2 = 0.09803921568627451
    return L3_2, L4_2, L5_2
  elseif A0_2 < 5000 then
    L3_2 = 0.8313725490196079
    L4_2 = 0.3333333333333333
    L5_2 = 0.09803921568627451
    return L3_2, L4_2, L5_2
  elseif A0_2 < 10000 then
    L3_2 = 0.10196078431372549
    L4_2 = 0.6274509803921569
    L5_2 = 0.6980392156862745
    return L3_2, L4_2, L5_2
  elseif A0_2 < 20000 then
    L3_2 = 0.10196078431372549
    L4_2 = 0.6274509803921569
    L5_2 = 0.6980392156862745
    return L3_2, L4_2, L5_2
  elseif A0_2 < 30000 then
    L3_2 = 0.3058823529411765
    L4_2 = 0.06666666666666667
    L5_2 = 0.047058823529411764
    return L3_2, L4_2, L5_2
  elseif A0_2 < 40000 then
    L3_2 = 0.3058823529411765
    L4_2 = 0.06666666666666667
    L5_2 = 0.047058823529411764
    return L3_2, L4_2, L5_2
  elseif A0_2 < 50000 then
    L3_2 = 0.17254901960784313
    L4_2 = 0.07058823529411765
    L5_2 = 0.16470588235294117
    return L3_2, L4_2, L5_2
  elseif A0_2 < 60000 then
    L3_2 = 0.17254901960784313
    L4_2 = 0.07058823529411765
    L5_2 = 0.16470588235294117
    return L3_2, L4_2, L5_2
  elseif A0_2 < 70000 then
    L3_2 = 0.9019607843137255
    L4_2 = 0.9019607843137255
    L5_2 = 0.9019607843137255
    return L3_2, L4_2, L5_2
  else
    L3_2 = 0.9019607843137255
    L4_2 = 0.9019607843137255
    L5_2 = 0.9019607843137255
    return L3_2, L4_2, L5_2
  end
  L3_2 = L2_1
  L3_2 = L3_2.whiteColor
  return L3_2()
end

getFontColor = L45_1

function L45_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A1_2 = A1_2 + 1
  if A2_2 <= A1_2 then
    return
  end
  L3_2 = math
  L3_2 = L3_2.random
  L4_2 = -5
  L5_2 = 5
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = math
  L4_2 = L4_2.random
  L5_2 = -7
  L6_2 = 2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2.view
  L5_2 = L5_2.x
  L6_2 = A0_2.view
  L6_2 = L6_2.y
  L7_2 = transition
  L7_2 = L7_2.to
  L8_2 = A0_2.view
  L9_2 = {}
  L9_2.time = 60
  L10_2 = L5_2 + L3_2
  L9_2.x = L10_2
  L10_2 = L6_2 + L4_2
  L9_2.y = L10_2
  
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = A0_2
    L1_3 = L1_3.view
    L2_3 = {}
    L2_3.time = 60
    L3_3 = L5_2
    L2_3.x = L3_3
    L3_3 = L6_2
    L2_3.y = L3_3
    
    function L3_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = A0_2
      L1_4 = L0_4
      L0_4 = L0_4.shakeCard
      L2_4 = A1_2
      L3_4 = A2_2
      L0_4(L1_4, L2_4, L3_4)
    end
    
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L9_2.onComplete = L10_2
  L7_2(L8_2, L9_2)
end

shakeCard = L45_1

function L45_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  A0_2.card = A1_2
  L4_2 = A0_2.name
  L5_2 = A0_2.card
  L5_2 = L5_2.name
  L4_2.text = L5_2
  L4_2 = ""
  L5_2 = A0_2.card
  L5_2 = L5_2.image
  if L5_2 then
    L5_2 = A0_2.size
    if L5_2 ~= "big" then
      L5_2 = _imageQuality
      if L5_2 ~= "SD" then
        goto lbl_23
      end
    end
    L5_2 = A0_2.card
    L5_2 = L5_2.image
    L6_2 = ".jpg"
    L5_2 = L5_2 .. L6_2
    A0_2.image = L5_2
    goto lbl_28
    ::lbl_23::
    L5_2 = A0_2.card
    L5_2 = L5_2.image
    L6_2 = "-m.jpg"
    L5_2 = L5_2 .. L6_2
    A0_2.image = L5_2
    ::lbl_28::
    L5_2 = L2_1
    L5_2 = L5_2.Path_Assets
    L6_2 = "Cards/"
    L7_2 = A0_2.image
    L4_2 = L5_2 .. L6_2 .. L7_2
  else
    L5_2 = L2_1
    L5_2 = L5_2.Path_MissingImage
    A0_2.image = L5_2
    L5_2 = L2_1
    L4_2 = L5_2.Path_MissingImage
  end
  L5_2 = A0_2.imageRect
  if L5_2 then
    L5_2 = A0_2.imageRect
    L5_2 = L5_2._view
    if L5_2 then
      L5_2 = display
      L5_2 = L5_2.remove
      L6_2 = A0_2.imageRect
      L6_2 = L6_2._view
      L5_2(L6_2)
    else
      L5_2 = display
      L5_2 = L5_2.remove
      L6_2 = A0_2.imageRect
      L5_2(L6_2)
    end
    A0_2.imageRect = nil
  end
  L5_2 = A0_2.cardHeight
  if not L5_2 then
    L5_2 = display
    L5_2 = L5_2.contentHeight
    L5_2 = L5_2 - 70
  end
  L6_2 = A0_2.cardWidth
  if not L6_2 then
    L6_2 = math
    L6_2 = L6_2.floor
    L7_2 = L5_2 / 1.343434
    L6_2 = L6_2(L7_2)
  end
  L7_2 = A0_2.size
  if L7_2 == "big" then
    L7_2 = A1_2.id
    if L7_2 then
      L7_2 = cardIsHero
      L8_2 = A1_2.id
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = L44_1
        L8_2 = A0_2
        L9_2 = A1_2.id
        L10_2 = L6_2 * 0.92972973
        L11_2 = L6_2 * 0.92972973
        L7_2(L8_2, L9_2, L10_2, L11_2)
    end
    else
      L7_2 = L3_1
      L8_2 = L7_2
      L7_2 = L7_2.new
      L9_2 = A0_2.view
      L10_2 = L4_2
      L11_2 = L6_2 * 0.92972973
      L12_2 = L6_2 * 0.92972973
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
      A0_2.imageRect = L7_2
    end
    L7_2 = A0_2.imageRect
    L7_2.index = 3
  else
    L7_2 = A1_2.id
    if L7_2 then
      L7_2 = cardIsHero
      L8_2 = A1_2.id
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = L44_1
        L8_2 = A0_2
        L9_2 = A1_2.id
        L10_2 = 115.5
        L11_2 = 112.5
        L7_2(L8_2, L9_2, L10_2, L11_2)
    end
    else
      L7_2 = L3_1
      L8_2 = L7_2
      L7_2 = L7_2.new
      L9_2 = A0_2.view
      L10_2 = L4_2
      L11_2 = 115.5
      L12_2 = 112.5
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
      A0_2.imageRect = L7_2
    end
    L7_2 = A0_2.imageRect
    L7_2.index = 3
  end
  L7_2 = A0_2.size
  if L7_2 == "big" and A2_2 ~= true then
    L7_2 = 13
    L8_2 = 13
    L9_2 = A0_2.cardWidth
    L9_2 = L9_2 / 100
    L10_2 = A0_2.levelStars
    if L10_2 ~= nil then
      L10_2 = pairs
      L11_2 = A0_2.levelStars
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      for L13_2, L14_2 in L10_2, L11_2, L12_2 do
        L16_2 = L14_2
        L15_2 = L14_2.removeSelf
        L15_2(L16_2)
      end
    end
    L10_2 = A1_2.rarity
    if L10_2 then
      L10_2 = {}
      A0_2.levelStars = L10_2
      L10_2 = A0_2.background
      L10_2 = L10_2.x
      L11_2 = A1_2.rarity
      L11_2 = L11_2 * L7_2
      L12_2 = A1_2.rarity
      L12_2 = L12_2 - 1
      L12_2 = L12_2 * L9_2
      L11_2 = L11_2 + L12_2
      L11_2 = L11_2 / 2
      L10_2 = L10_2 - L11_2
      L11_2 = "General/FC-star.png"
      L12_2 = 1
      L13_2 = A1_2.rarity
      L14_2 = 1
      for L15_2 = L12_2, L13_2, L14_2 do
        L16_2 = A0_2.levelStars
        L17_2 = display
        L17_2 = L17_2.newImageRect
        L18_2 = A0_2.view
        L19_2 = L2_1
        L19_2 = L19_2.Path_Assets
        L20_2 = L11_2
        L19_2 = L19_2 .. L20_2
        L20_2 = L7_2
        L21_2 = L8_2
        L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2)
        L16_2[L15_2] = L17_2
        L16_2 = A0_2.levelStars
        L16_2 = L16_2[L15_2]
        L17_2 = L15_2 - 1
        L18_2 = L7_2 + L9_2
        L17_2 = L17_2 * L18_2
        L17_2 = L10_2 + L17_2
        L18_2 = L7_2 / 2
        L17_2 = L17_2 + L18_2
        L16_2.x = L17_2
        L16_2 = A0_2.levelStars
        L16_2 = L16_2[L15_2]
        L17_2 = L5_2 * 0.85
        L16_2.y = L17_2
      end
    end
  end
  L7_2 = ""
  L8_2 = A0_2.size
  if L8_2 == "big" then
    L8_2 = A0_2.imageRect
    L9_2 = A0_2.background
    L9_2 = L9_2.x
    L8_2.x = L9_2
    L8_2 = A0_2.imageRect
    L9_2 = A0_2.background
    L9_2 = L9_2.height
    L9_2 = 0.46 * L9_2
    L8_2.y = L9_2
  else
    L8_2 = A0_2.imageRect
    L9_2 = A0_2.imageRect
    L9_2 = L9_2.width
    L9_2 = L9_2 / 2
    L9_2 = 0 + L9_2
    L8_2.x = L9_2
    L8_2 = A0_2.imageRect
    L9_2 = A0_2.background
    L9_2 = L9_2.height
    L9_2 = 0.46 * L9_2
    L8_2.y = L9_2
  end
  L8_2 = nil
  L9_2 = A0_2.card
  L9_2 = L9_2.power
  if L9_2 then
    if A3_2 then
      L9_2 = L4_1
      L9_2 = L9_2.shortenLongNumber
      L10_2 = A0_2.card
      L10_2 = L10_2.power
      L9_2 = L9_2(L10_2)
      L8_2 = L9_2
    else
      L9_2 = L4_1
      L9_2 = L9_2.stringThousandCommaSeperated
      L10_2 = ""
      L11_2 = A0_2.card
      L11_2 = L11_2.power
      L10_2 = L10_2 .. L11_2
      L9_2 = L9_2(L10_2)
      L8_2 = L9_2
      L9_2 = L4_1
      L9_2 = L9_2.addKForLargeNumber
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      L8_2 = L9_2
    end
    L9_2 = L1_1
    L9_2 = L9_2.adjustNumber
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L8_2 = L9_2
  else
    L9_2 = L1_1
    L9_2 = L9_2.adjustNumber
    L10_2 = "?"
    L9_2 = L9_2(L10_2)
    L8_2 = L9_2
  end
  L9_2 = A0_2.power
  L9_2.text = L8_2
  L9_2 = A0_2.power
  L10_2 = L6_2 * 0.16
  L11_2 = A0_2.power
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L9_2.x = L10_2
  L9_2 = A0_2.card
  L9_2 = L9_2.cooldown
  if L9_2 ~= nil then
    L9_2 = A0_2.card
    L9_2 = L9_2.cooldown
    if L9_2 < 120 then
      L9_2 = L1_1
      L9_2 = L9_2.adjustNumber
      L10_2 = A0_2.card
      L10_2 = L10_2.cooldown
      L9_2 = L9_2(L10_2)
      L10_2 = " s"
      L7_2 = L9_2 .. L10_2
    else
      L9_2 = A0_2.card
      L9_2 = L9_2.cooldown
      if L9_2 < 3600 then
        L9_2 = math
        L9_2 = L9_2.floor
        L10_2 = A0_2.card
        L10_2 = L10_2.cooldown
        L10_2 = L10_2 / 60
        L9_2 = L9_2(L10_2)
        L10_2 = L1_1
        L10_2 = L10_2.adjustNumber
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        L11_2 = " m"
        L7_2 = L10_2 .. L11_2
      else
        L9_2 = math
        L9_2 = L9_2.floor
        L10_2 = A1_2.cooldown
        L10_2 = L10_2 / 3600
        L9_2 = L9_2(L10_2)
        L10_2 = math
        L10_2 = L10_2.floor
        L11_2 = A1_2.cooldown
        L11_2 = L11_2 / 60
        L10_2 = L10_2(L11_2)
        if 0 < L9_2 then
          L11_2 = L9_2 * 60
          L10_2 = L10_2 - L11_2
          if L10_2 < 10 then
            L11_2 = "0"
            L12_2 = L10_2
            L10_2 = L11_2 .. L12_2
          end
        end
        L11_2 = L1_1
        L11_2 = L11_2.adjustNumber
        L12_2 = L9_2
        L11_2 = L11_2(L12_2)
        L12_2 = " : "
        L13_2 = L1_1
        L13_2 = L13_2.adjustNumber
        L14_2 = L10_2
        L13_2 = L13_2(L14_2)
        L7_2 = L11_2 .. L12_2 .. L13_2
      end
    end
  end
  L9_2 = A0_2.card
  L9_2 = L9_2.description
  descriptionText = L9_2
  L9_2 = A0_2.cooldown
  L10_2 = L1_1
  L10_2 = L10_2.adjustNumber
  L11_2 = L7_2 or L11_2
  if not L7_2 then
    L11_2 = "?"
  end
  L10_2 = L10_2(L11_2)
  L9_2.text = L10_2
  L9_2 = A0_2.cooldown
  L10_2 = L6_2 * 0.6
  L11_2 = A0_2.cooldown
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L9_2.x = L10_2
  L9_2 = A0_2.selectedView
  L10_2 = L9_2
  L9_2 = L9_2.toFront
  L9_2(L10_2)
end

createCard = L45_1

function L45_1(A0_2, A1_2, A2_2, A3_2)
  A0_2.imageRect = nil
end

changeCachedImageView = L45_1
