local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.BaseView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Components.TDNumberLabelView"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Utils.Toolbox"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "composer"
L4_1 = L4_1(L5_1)
L5_1 = 12
sideMargin = L5_1
L5_1 = 5
iconGap = L5_1
L5_1 = "GoldHUDTransition"
L6_1 = "diffTransition"
L7_1 = setmetatable
L8_1 = _M
L9_1 = {}
L9_1.__index = L0_1
L7_1(L8_1, L9_1)

function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = L0_1
  L3_2 = L3_2.newWithParams
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2.mainCurrencyImageFile
  L3_2.mainCurrencyImageFile = L4_2
  L4_2 = A1_2.goldValue
  L3_2.mainCurrencyValue = L4_2
  L4_2 = A1_2.secondCurrencyImageFile
  L3_2.secondCurrencyImageFile = L4_2
  L4_2 = A1_2.nectarValue
  L3_2.secondCurrencyValue = L4_2
  L4_2 = 13
  L5_2 = A1_2.iconWidth
  if not L5_2 then
    L5_2 = 25
  end
  L6_2 = A1_2.iconHeight
  if not L6_2 then
    L6_2 = 24
  end
  L7_2 = 32
  L8_2 = 15
  L3_2.currentCurrency = "gold"
  L3_2.iconWidth = L5_2
  L9_2 = {}
  L10_2 = L3_2.mainCurrencyValue
  L9_2.value = L10_2
  L10_2 = Theme
  L10_2 = L10_2.colorsSet
  L10_2 = L10_2.whiteColor
  L9_2.labelColor = L10_2
  L10_2 = Theme
  L10_2 = L10_2.goldIndicatorFont
  L9_2.font = L10_2
  L9_2.fontSize = L4_2
  L10_2 = L9_2.value
  L3_2.previousMainCurrencyValue = L10_2
  L10_2 = L3_2.secondCurrencyValue
  L3_2.previousSecondCurrencyValue = L10_2
  L10_2 = L1_1
  L11_2 = L10_2
  L10_2 = L10_2.new
  L12_2 = L9_2
  L10_2 = L10_2(L11_2, L12_2)
  L3_2.currencyLabel = L10_2
  L10_2 = L3_2.currencyLabel
  L10_2.scaleIncreaseAmount = 0
  L10_2 = L3_2.view
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = L3_2.currencyLabel
  L12_2 = L12_2.view
  L10_2(L11_2, L12_2)
  L10_2 = 53
  L12_2 = L3_2
  L11_2 = L3_2.setTotalWidth
  L13_2 = L10_2
  L11_2(L12_2, L13_2)
  L11_2 = display
  L11_2 = L11_2.newRoundedRect
  L12_2 = L3_2.view
  L13_2 = 0
  L14_2 = 0
  L15_2 = L3_2.totalWidth
  L16_2 = L7_2
  L17_2 = L8_2
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L3_2.roundedBackground = L11_2
  L11_2 = L3_2.roundedBackground
  L12_2 = L11_2
  L11_2 = L11_2.setFillColor
  L13_2 = Constants
  L13_2 = L13_2.greenColor
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L13_2()
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L11_2 = display
  L11_2 = L11_2.newImageRect
  L12_2 = L3_2.view
  L13_2 = L3_2.mainCurrencyImageFile
  L14_2 = L3_2.iconWidth
  L15_2 = L6_2
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  L3_2.currencyImage = L11_2
  L11_2 = L3_2.currencyImage
  L12_2 = L3_2.roundedBackground
  L12_2 = L12_2.width
  L12_2 = -L12_2
  L12_2 = L12_2 / 2
  L13_2 = sideMargin
  L12_2 = L12_2 + L13_2
  L13_2 = L3_2.currencyImage
  L13_2 = L13_2.width
  L13_2 = L13_2 / 2
  L12_2 = L12_2 + L13_2
  L11_2.x = L12_2
  
  function L11_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L3_2
      L1_3 = L1_3.touchIsActive
      if L1_3 then
        L1_3 = L3_2
        L2_3 = L1_3
        L1_3 = L1_3.changeCurrency
        L3_3 = true
        L1_3(L2_3, L3_3)
      end
    end
  end
  
  L12_2 = L3_2.currencyImage
  L13_2 = L12_2
  L12_2 = L12_2.addEventListener
  L14_2 = "touch"
  L15_2 = L11_2
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = L3_2.secondCurrencyValue
  if L12_2 then
    L12_2 = display
    L12_2 = L12_2.newImageRect
    L13_2 = L3_2.view
    L14_2 = L3_2.secondCurrencyImageFile
    L15_2 = L3_2.iconWidth
    L16_2 = L6_2
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
    L3_2.secondCurrencyImage = L12_2
    L12_2 = L3_2.secondCurrencyImage
    L13_2 = L3_2.currencyImage
    L13_2 = L13_2.x
    L14_2 = L3_2.currencyImage
    L14_2 = L14_2.width
    L14_2 = L14_2 / 2
    L13_2 = L13_2 - L14_2
    L12_2.x = L13_2
    L12_2 = L3_2.secondCurrencyImage
    L12_2.xScale = 0.6
    L12_2 = L3_2.secondCurrencyImage
    L12_2.yScale = 0.6
    L12_2 = L3_2.secondCurrencyImage
    L13_2 = L12_2
    L12_2 = L12_2.addEventListener
    L14_2 = "touch"
    L15_2 = L11_2
    L12_2(L13_2, L14_2, L15_2)
    L12_2 = L3_2.view
    L13_2 = L12_2
    L12_2 = L12_2.insert
    L14_2 = L3_2.roundedBackground
    L12_2(L13_2, L14_2)
    L12_2 = L3_2.view
    L13_2 = L12_2
    L12_2 = L12_2.insert
    L14_2 = L3_2.secondCurrencyImage
    L12_2(L13_2, L14_2)
    L12_2 = L3_2.view
    L13_2 = L12_2
    L12_2 = L12_2.insert
    L14_2 = L3_2.currencyImage
    L12_2(L13_2, L14_2)
  end
  L12_2 = L3_2.currencyLabel
  L12_2 = L12_2.view
  L13_2 = L12_2
  L12_2 = L12_2.addEventListener
  L14_2 = "touch"
  
  function L15_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L4_1
      L1_3 = L1_3.getSceneName
      L2_3 = "current"
      L1_3 = L1_3(L2_3)
      if L1_3 ~= "Scenes.Shop" then
        L1_3 = false
        L2_3 = L3_2
        L2_3 = L2_3.currentCurrency
        if L2_3 == "nectar" then
          L1_3 = true
        end
        L2_3 = L4_1
        L2_3 = L2_3.gotoScene
        L3_3 = "Scenes.Shop"
        L4_3 = {}
        L5_3 = {}
        L5_3.selectedTab = 1
        L5_3.scrollingToNectarPacks = L1_3
        L4_3.params = L5_3
        L2_3(L3_3, L4_3)
      end
    end
  end
  
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = L3_2.currencyLabel
  L13_2 = L3_2.currencyImage
  L13_2 = L13_2.x
  L14_2 = L3_2.currencyImage
  L14_2 = L14_2.width
  L14_2 = L14_2 / 2
  L13_2 = L13_2 + L14_2
  L14_2 = iconGap
  L13_2 = L13_2 + L14_2
  L14_2 = L10_2 / 2
  L13_2 = L13_2 + L14_2
  L12_2.x = L13_2
  L12_2 = L3_2.roundedBackground
  L13_2 = L12_2
  L12_2 = L12_2.toBack
  L12_2(L13_2)
  L12_2 = display
  L12_2 = L12_2.newText
  L13_2 = L3_2.view
  L14_2 = ""
  L15_2 = 0
  L16_2 = 0
  L17_2 = Constants
  L17_2 = L17_2.fontForTitle
  L17_2 = L17_2()
  L18_2 = 10
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L3_2.diffText = L12_2
  L12_2 = L3_2.diffText
  L13_2 = L3_2.currencyLabel
  L13_2 = L13_2.x
  L12_2.x = L13_2
  L12_2 = L3_2.diffText
  L12_2.alpha = 0
  L3_2.touchIsActive = true
  return L3_2
end

new = L7_1

function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 then
    L3_2 = A0_2.currentCurrency
    if L3_2 ~= A1_2 then
      L4_2 = A0_2
      L3_2 = A0_2.changeCurrency
      L5_2 = A2_2
      L3_2(L4_2, L5_2)
    end
  end
end

changeCurrencyTo = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.currentCurrency
  if L2_2 == "gold" then
    L2_2 = A0_2.secondCurrencyValue
    if L2_2 then
      A0_2.currentCurrency = "nectar"
      if A1_2 then
        L3_2 = A0_2
        L2_2 = A0_2.animateCurrencies
        L4_2 = A0_2.secondCurrencyImage
        L5_2 = A0_2.currencyImage
        L2_2(L3_2, L4_2, L5_2)
        L2_2 = A0_2.currencyLabel
        L3_2 = L2_2
        L2_2 = L2_2.setValue
        L4_2 = A0_2.previousSecondCurrencyValue
        L5_2 = true
        L2_2(L3_2, L4_2, L5_2)
      else
        L2_2 = A0_2.secondCurrencyImage
        L2_2.xScale = 1
        L2_2 = A0_2.secondCurrencyImage
        L2_2.yScale = 1
        L2_2 = A0_2.secondCurrencyImage
        L3_2 = A0_2.roundedBackground
        L3_2 = L3_2.width
        L3_2 = -L3_2
        L3_2 = L3_2 / 2
        L4_2 = sideMargin
        L3_2 = L3_2 + L4_2
        L4_2 = A0_2.secondCurrencyImage
        L4_2 = L4_2.width
        L4_2 = L4_2 / 2
        L3_2 = L3_2 + L4_2
        L2_2.x = L3_2
        L2_2 = A0_2.currencyImage
        L3_2 = A0_2.secondCurrencyImage
        L3_2 = L3_2.x
        L4_2 = A0_2.secondCurrencyImage
        L4_2 = L4_2.width
        L4_2 = L4_2 / 2
        L3_2 = L3_2 - L4_2
        L2_2.x = L3_2
        L2_2 = A0_2.currencyImage
        L2_2.xScale = 0.6
        L2_2 = A0_2.currencyImage
        L2_2.yScale = 0.6
        L2_2 = A0_2.view
        L3_2 = L2_2
        L2_2 = L2_2.insert
        L4_2 = A0_2.roundedBackground
        L2_2(L3_2, L4_2)
        L2_2 = A0_2.view
        L3_2 = L2_2
        L2_2 = L2_2.insert
        L4_2 = A0_2.currencyImage
        L2_2(L3_2, L4_2)
        L2_2 = A0_2.view
        L3_2 = L2_2
        L2_2 = L2_2.insert
        L4_2 = A0_2.secondCurrencyImage
        L2_2(L3_2, L4_2)
        L2_2 = A0_2.view
        L3_2 = L2_2
        L2_2 = L2_2.insert
        L4_2 = A0_2.currencyLabel
        L4_2 = L4_2.view
        L2_2(L3_2, L4_2)
        L2_2 = A0_2.view
        L3_2 = L2_2
        L2_2 = L2_2.insert
        L4_2 = A0_2.diffText
        L2_2(L3_2, L4_2)
        L2_2 = A0_2.currencyLabel
        L3_2 = L2_2
        L2_2 = L2_2.setValue
        L4_2 = A0_2.previousSecondCurrencyValue
        L5_2 = true
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  else
    L2_2 = A0_2.currentCurrency
    if L2_2 == "nectar" then
      A0_2.currentCurrency = "gold"
      if A1_2 then
        L3_2 = A0_2
        L2_2 = A0_2.animateCurrencies
        L4_2 = A0_2.currencyImage
        L5_2 = A0_2.secondCurrencyImage
        L2_2(L3_2, L4_2, L5_2)
        L2_2 = A0_2.currencyLabel
        L3_2 = L2_2
        L2_2 = L2_2.setValue
        L4_2 = A0_2.previousMainCurrencyValue
        L5_2 = true
        L2_2(L3_2, L4_2, L5_2)
      else
        L2_2 = A0_2.currencyImage
        L2_2.xScale = 1
        L2_2 = A0_2.currencyImage
        L2_2.yScale = 1
        L2_2 = A0_2.currencyImage
        L3_2 = A0_2.roundedBackground
        L3_2 = L3_2.width
        L3_2 = -L3_2
        L3_2 = L3_2 / 2
        L4_2 = sideMargin
        L3_2 = L3_2 + L4_2
        L4_2 = A0_2.currencyImage
        L4_2 = L4_2.width
        L4_2 = L4_2 / 2
        L3_2 = L3_2 + L4_2
        L2_2.x = L3_2
        L2_2 = A0_2.secondCurrencyImage
        L3_2 = A0_2.currencyImage
        L3_2 = L3_2.x
        L4_2 = A0_2.currencyImage
        L4_2 = L4_2.width
        L4_2 = L4_2 / 2
        L3_2 = L3_2 - L4_2
        L2_2.x = L3_2
        L2_2 = A0_2.secondCurrencyImage
        L2_2.xScale = 0.6
        L2_2 = A0_2.secondCurrencyImage
        L2_2.yScale = 0.6
        L2_2 = A0_2.view
        L3_2 = L2_2
        L2_2 = L2_2.insert
        L4_2 = A0_2.roundedBackground
        L2_2(L3_2, L4_2)
        L2_2 = A0_2.view
        L3_2 = L2_2
        L2_2 = L2_2.insert
        L4_2 = A0_2.secondCurrencyImage
        L2_2(L3_2, L4_2)
        L2_2 = A0_2.view
        L3_2 = L2_2
        L2_2 = L2_2.insert
        L4_2 = A0_2.currencyImage
        L2_2(L3_2, L4_2)
        L2_2 = A0_2.view
        L3_2 = L2_2
        L2_2 = L2_2.insert
        L4_2 = A0_2.currencyLabel
        L4_2 = L4_2.view
        L2_2(L3_2, L4_2)
        L2_2 = A0_2.view
        L3_2 = L2_2
        L2_2 = L2_2.insert
        L4_2 = A0_2.diffText
        L2_2(L3_2, L4_2)
        L2_2 = A0_2.currencyLabel
        L3_2 = L2_2
        L2_2 = L2_2.setValue
        L4_2 = A0_2.previousMainCurrencyValue
        L5_2 = true
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
end

changeCurrency = L7_1

function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2.touchIsActive = false
  L3_2 = transition
  L3_2 = L3_2.to
  L4_2 = A1_2
  L5_2 = {}
  L5_2.time = 200
  L5_2.xScale = 1
  L5_2.yScale = 1
  L6_2 = L5_1
  L5_2.tag = L6_2
  L3_2(L4_2, L5_2)
  L3_2 = transition
  L3_2 = L3_2.to
  L4_2 = A2_2
  L5_2 = {}
  L5_2.time = 200
  L5_2.xScale = 0.6
  L5_2.yScale = 0.6
  L6_2 = L5_1
  L5_2.tag = L6_2
  L3_2(L4_2, L5_2)
  L3_2 = transition
  L3_2 = L3_2.to
  L4_2 = A1_2
  L5_2 = {}
  L5_2.time = 200
  L6_2 = A0_2.roundedBackground
  L6_2 = L6_2.width
  L6_2 = -L6_2
  L6_2 = L6_2 / 2
  L7_2 = sideMargin
  L6_2 = L6_2 + L7_2
  L7_2 = A1_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L5_2.x = L6_2
  L6_2 = L5_1
  L5_2.tag = L6_2
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = A2_2
    L2_3 = {}
    L2_3.time = 200
    L3_3 = A1_2
    L3_3 = L3_3.x
    L4_3 = A1_2
    L4_3 = L4_3.width
    L4_3 = L4_3 / 2
    L3_3 = L3_3 - L4_3
    L2_3.x = L3_3
    L3_3 = L5_1
    L2_3.tag = L3_3
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L0_3.touchIsActive = true
  end
  
  L5_2.onComplete = L6_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.roundedBackground
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.currencyLabel
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.diffText
  L3_2(L4_2, L5_2)
end

animateCurrencies = L7_1

function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = transition
  L4_2 = L4_2.cancel
  L5_2 = L6_1
  L4_2(L5_2)
  L4_2 = A0_2.previousMainCurrencyValue
  if A3_2 then
    L4_2 = A0_2.previousSecondCurrencyValue
    L6_2 = A0_2
    L5_2 = A0_2.changeCurrencyTo
    L7_2 = "nectar"
    L5_2(L6_2, L7_2)
  else
    L6_2 = A0_2
    L5_2 = A0_2.changeCurrencyTo
    L7_2 = "gold"
    L5_2(L6_2, L7_2)
  end
  L5_2 = A1_2 - L4_2
  if L5_2 == 0 then
    L6_2 = true
    return L6_2
  end
  L6_2 = nil
  L7_2 = ""
  L8_2 = nil
  if 0 < L5_2 then
    L6_2 = -1
    L7_2 = "+"
    L9_2 = Theme
    L9_2 = L9_2.colorsSet
    L8_2 = L9_2.brightGreen
  else
    L6_2 = 1
    L9_2 = Theme
    L9_2 = L9_2.colorsSet
    L8_2 = L9_2.sharpRedColor
  end
  L9_2 = A0_2.diffText
  L10_2 = L7_2
  L11_2 = L2_1
  L11_2 = L11_2.adjustNumber
  L12_2 = L3_1
  L12_2 = L12_2.shortenLongNumber
  L13_2 = L5_2
  L12_2, L13_2 = L12_2(L13_2)
  L11_2 = L11_2(L12_2, L13_2)
  L10_2 = L10_2 .. L11_2
  L9_2.text = L10_2
  L9_2 = A0_2.diffText
  L10_2 = L9_2
  L9_2 = L9_2.setFillColor
  L11_2 = L8_2[1]
  L12_2 = L8_2[2]
  L13_2 = L8_2[3]
  L9_2(L10_2, L11_2, L12_2, L13_2)
  if A2_2 then
    L9_2 = A0_2.currencyLabel
    L10_2 = L9_2
    L9_2 = L9_2.setValue
    L11_2 = A1_2
    L12_2 = false
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = A0_2.diffText
    L9_2.alpha = 1
    L9_2 = A0_2.diffText
    L9_2.y = 0
    L9_2 = transition
    L9_2 = L9_2.to
    L10_2 = A0_2.diffText
    L11_2 = {}
    L11_2.time = 1600
    L11_2.alpha = 0
    L12_2 = L6_1
    L11_2.tag = L12_2
    L9_2(L10_2, L11_2)
    L9_2 = transition
    L9_2 = L9_2.to
    L10_2 = A0_2.diffText
    L11_2 = {}
    L11_2.time = 1400
    L12_2 = L6_2 * 15
    L11_2.y = L12_2
    L12_2 = L6_1
    L11_2.tag = L12_2
    
    function L12_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L0_3 = L0_3.diffText
      L1_3 = A0_2
      L1_3 = L1_3.currencyLabel
      L1_3 = L1_3.x
      L0_3.x = L1_3
      L0_3 = A0_2
      L0_3 = L0_3.diffText
      L0_3.y = 0
      L0_3 = A3_2
      if L0_3 then
        L0_3 = A0_2
        L1_3 = A1_2
        L0_3.previousSecondCurrencyValue = L1_3
      else
        L0_3 = A0_2
        L1_3 = A1_2
        L0_3.previousMainCurrencyValue = L1_3
      end
    end
    
    L11_2.onComplete = L12_2
    
    function L12_2()
      local L0_3, L1_3
      L0_3 = A0_2
      if L0_3 then
        L0_3 = A0_2
        L0_3 = L0_3.diffText
        if L0_3 then
          L0_3 = A0_2
          L0_3 = L0_3.diffText
          L0_3.alpha = 0
          L0_3 = A0_2
          L0_3 = L0_3.diffText
          L0_3.y = 0
        end
      end
      L0_3 = A3_2
      if L0_3 then
        L0_3 = A0_2
        L1_3 = A1_2
        L0_3.previousSecondCurrencyValue = L1_3
      else
        L0_3 = A0_2
        L1_3 = A1_2
        L0_3.previousMainCurrencyValue = L1_3
      end
    end
    
    L11_2.onCancel = L12_2
    L9_2(L10_2, L11_2)
  else
    L9_2 = A0_2.currencyLabel
    L10_2 = L9_2
    L9_2 = L9_2.setValue
    L11_2 = A1_2
    L12_2 = true
    L9_2(L10_2, L11_2, L12_2)
    if A3_2 then
      A0_2.previousSecondCurrencyValue = A1_2
    else
      A0_2.previousMainCurrencyValue = A1_2
    end
  end
end

setCurrency = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = sideMargin
  L3_2 = iconGap
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2.iconWidth
  L2_2 = L2_2 + L3_2
  L3_2 = sideMargin
  L2_2 = L2_2 + L3_2
  L2_2 = L2_2 + A1_2
  A0_2.totalWidth = L2_2
end

setTotalWidth = L7_1
