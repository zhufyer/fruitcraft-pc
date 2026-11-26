local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.SceneCreator"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Views.NavigationBar"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.CardView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "widget"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Language"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Tutorial.VerticalOverlayView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Views.ActivityIndicatorView"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Views.EffectsManager"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Components.TDButtonView"
L9_1 = L9_1(L10_1)
L10_1 = L1_1.newScene
L11_1 = "ReceivedScene"
L10_1 = L10_1(L11_1)

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = A0_2.view
  L3_2 = A1_2.params
  L3_2 = L3_2.callbackFunction
  if L3_2 then
    L3_2 = A1_2.params
    L3_2 = L3_2.callbackFunction
    A0_2.callbackFunction = L3_2
  end
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "FC-bg.png"
  L4_2 = L4_2 .. L5_2
  L5_2 = 570
  L6_2 = 360
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L4_2 = A0_2.view
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = display
  L4_2 = L4_2.newRoundedRect
  L5_2 = L2_2
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 / 2
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L7_2 = L7_2 - 45
  L7_2 = L7_2 / 2
  L7_2 = 40 + L7_2
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 - 10
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 - 45
  L10_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.whiteColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L4_2.strokeWidth = 3
  L6_2 = L4_2
  L5_2 = L4_2.setStrokeColor
  L7_2 = Constants
  L7_2 = L7_2.greenColorSceneBorder
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L5_2 = L2_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.helpNotIncluded = true
  L7_2.purgeOnFinish = true
  L7_2.currentScene = "Scenes.ReceivedScene"
  L8_2 = A0_2.callbackFunction
  L7_2.callbackFunction = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  A0_2.navBar = L5_2
  L5_2 = A0_2.navBar
  L6_2 = L5_2
  L5_2 = L5_2.setPosition
  L7_2 = 0
  L8_2 = 0
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2.view
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = A0_2.navBar
  L7_2 = L7_2.view
  L5_2(L6_2, L7_2)
  L5_2 = A1_2.params
  L5_2 = L5_2.type
  L6_2 = A1_2.params
  L6_2 = L6_2.items
  if L5_2 == "enhance" then
    L7_2 = pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = log3
      L13_2 = "receivedViews"
      L14_2 = L10_2
      L15_2 = " "
      L16_2 = L11_2
      L12_2(L13_2, L14_2, L15_2, L16_2)
    end
    L7_2 = L3_1
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = "big"
    L10_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    cardV = L7_2
    L7_2 = A0_2.view
    L8_2 = L7_2
    L7_2 = L7_2.insert
    L9_2 = cardV
    L9_2 = L9_2.view
    L7_2(L8_2, L9_2)
    L7_2 = cardV
    L8_2 = L7_2
    L7_2 = L7_2.setPosition
    L9_2 = display
    L9_2 = L9_2.contentWidth
    L9_2 = L9_2 / 2
    L10_2 = cardV
    L10_2 = L10_2.background
    L10_2 = L10_2.width
    L10_2 = L10_2 / 2
    L9_2 = L9_2 - L10_2
    L10_2 = 60
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = A0_2.navBar
    L8_2 = L7_2
    L7_2 = L7_2.setTitle
    L9_2 = L5_1
    L9_2 = L9_2["enhance received"]
    L7_2(L8_2, L9_2)
    L7_2 = A0_2.navBar
    L7_2.previousScene = "Scenes.Cards"
    L7_2 = "Scenes.Cards"
    _backAction = L7_2
  elseif L5_2 == "evolve" then
    L7_2 = pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = log3
      L13_2 = "receivedViews"
      L14_2 = L10_2
      L15_2 = " "
      L16_2 = L11_2
      L12_2(L13_2, L14_2, L15_2, L16_2)
    end
    L7_2 = L3_1
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = "big"
    L10_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    cardV = L7_2
    L7_2 = A0_2.view
    L8_2 = L7_2
    L7_2 = L7_2.insert
    L9_2 = cardV
    L9_2 = L9_2.view
    L7_2(L8_2, L9_2)
    L7_2 = cardV
    L8_2 = L7_2
    L7_2 = L7_2.setPosition
    L9_2 = display
    L9_2 = L9_2.contentWidth
    L9_2 = L9_2 / 2
    L10_2 = cardV
    L10_2 = L10_2.background
    L10_2 = L10_2.width
    L10_2 = L10_2 / 2
    L9_2 = L9_2 - L10_2
    L10_2 = 60
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = A0_2.navBar
    L8_2 = L7_2
    L7_2 = L7_2.setTitle
    L9_2 = L5_1
    L9_2 = L9_2["Evolve received"]
    L7_2(L8_2, L9_2)
    L7_2 = A0_2.navBar
    L7_2.previousScene = "Scenes.Cards"
    L7_2 = "Scenes.Cards"
    _backAction = L7_2
  elseif L5_2 == "gold" then
    L7_2 = A0_2.navBar
    L7_2.previousScene = "Scenes.Home"
    L7_2 = "Scenes.Home"
    _backAction = L7_2
  elseif L5_2 == "cards" then
    L7_2 = A0_2.navBar
    L8_2 = L7_2
    L7_2 = L7_2.setTitle
    L9_2 = L5_1
    L9_2 = L9_2["Pack Purchased"]
    L7_2(L8_2, L9_2)
    L7_2 = A0_2.navBar
    L7_2.previousScene = "Scenes.Shop"
    L7_2 = "Scenes.Shop"
    _backAction = L7_2
    L7_2 = A1_2.params
    L7_2 = L7_2.isBundle
    if L7_2 then
      L7_2 = A0_2.navBar
      L7_2.previousScene = "Scenes.Home"
      L7_2 = "Scenes.Home"
      _backAction = L7_2
    end
    L7_2 = display
    L7_2 = L7_2.contentHeight
    L7_2 = L7_2 - 70
    L8_2 = math
    L8_2 = L8_2.floor
    L9_2 = L7_2 / 1.343434
    L8_2 = L8_2(L9_2)
    L9_2 = L4_1
    L9_2 = L9_2.newScrollView
    L10_2 = {}
    L11_2 = display
    L11_2 = L11_2.contentWidth
    L11_2 = L11_2 - 10
    L10_2.width = L11_2
    L11_2 = display
    L11_2 = L11_2.contentHeight
    L11_2 = L11_2 - 40
    L10_2.height = L11_2
    L10_2.left = 5
    L10_2.top = -5
    L10_2.scrollHeight = 10
    L10_2.rightPadding = 20
    L10_2.verticalScrollDisabled = true
    L10_2.hideScrollBar = true
    L11_2 = {}
    L12_2 = 0
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0
    L11_2[1] = L12_2
    L11_2[2] = L13_2
    L11_2[3] = L14_2
    L11_2[4] = L15_2
    L10_2.backgroundColor = L11_2
    L11_2 = #L6_2
    L12_2 = L8_2 + 10
    L11_2 = L11_2 * L12_2
    L10_2.scrollWidth = L11_2
    L9_2 = L9_2(L10_2)
    scroller = L9_2
    L9_2 = scroller
    L10_2 = display
    L10_2 = L10_2.contentWidth
    L10_2 = L10_2 - 10
    L10_2 = L10_2 / 2
    L10_2 = 5 + L10_2
    L9_2.x = L10_2
    L9_2 = scroller
    L10_2 = display
    L10_2 = L10_2.contentHeight
    L10_2 = L10_2 - 40
    L10_2 = L10_2 / 2
    L10_2 = 40 + L10_2
    L9_2.y = L10_2
    L9_2 = nil
    L10_2 = L11_1
    L11_2 = L6_2
    L10_2 = L10_2(L11_2)
    L10_2 = L8_2 * L10_2
    L11_2 = display
    L11_2 = L11_2.contentWidth
    if L10_2 > L11_2 then
      L9_2 = 10
    else
      L10_2 = display
      L10_2 = L10_2.contentWidth
      L10_2 = L10_2 - 20
      L11_2 = L11_1
      L12_2 = L6_2
      L11_2 = L11_2(L12_2)
      L11_2 = L8_2 * L11_2
      L10_2 = L10_2 - L11_2
      L9_2 = L10_2 / 2
    end
    L10_2 = pairs
    L11_2 = L6_2
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    for L13_2, L14_2 in L10_2, L11_2, L12_2 do
      L15_2 = mainPlayer
      L15_2 = L15_2.newCards
      if L15_2 then
        L15_2 = mainPlayer
        L15_2 = L15_2.level
        L16_2 = Constants
        L16_2 = L16_2.MaximumLevelToShowNewSeriesOfCards
        if L15_2 < L16_2 then
          L15_2 = L3_1
          L16_2 = L15_2
          L15_2 = L15_2.new
          L17_2 = "big"
          L18_2 = L14_2
          L19_2 = nil
          L20_2 = {}
          L20_2.cardHeight = 200
          L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
          cardV = L15_2
      end
      else
        L15_2 = L3_1
        L16_2 = L15_2
        L15_2 = L15_2.new
        L17_2 = "big"
        L18_2 = L14_2
        L15_2 = L15_2(L16_2, L17_2, L18_2)
        cardV = L15_2
      end
      L15_2 = cardV
      L16_2 = L15_2
      L15_2 = L15_2.setId
      L17_2 = L13_2
      L15_2(L16_2, L17_2)
      L15_2 = scroller
      L16_2 = L15_2
      L15_2 = L15_2.insert
      L17_2 = cardV
      L17_2 = L17_2.view
      L15_2(L16_2, L17_2)
      L15_2 = mainPlayer
      L15_2 = L15_2.newCards
      if L15_2 then
        L15_2 = mainPlayer
        L15_2 = L15_2.level
        L16_2 = Constants
        L16_2 = L16_2.MaximumLevelToShowNewSeriesOfCards
        if L15_2 < L16_2 then
          L15_2 = cardV
          L15_2 = L15_2.view
          L8_2 = L15_2.width
          L15_2 = cardV
          L16_2 = L15_2
          L15_2 = L15_2.setPosition
          L17_2 = L13_2 - 1
          L17_2 = L17_2 * L8_2
          L17_2 = L9_2 + L17_2
          L18_2 = math
          L18_2 = L18_2.max
          L19_2 = 0
          L20_2 = L13_2 - 1
          L18_2 = L18_2(L19_2, L20_2)
          L18_2 = L18_2 * 20
          L17_2 = L17_2 + L18_2
          L18_2 = 40
          L15_2(L16_2, L17_2, L18_2)
      end
      else
        L15_2 = cardV
        L16_2 = L15_2
        L15_2 = L15_2.setPosition
        L17_2 = L13_2 - 1
        L17_2 = L17_2 * L8_2
        L17_2 = L9_2 + L17_2
        L18_2 = math
        L18_2 = L18_2.max
        L19_2 = 0
        L20_2 = L13_2 - 1
        L18_2 = L18_2(L19_2, L20_2)
        L18_2 = L18_2 * 10
        L17_2 = L17_2 + L18_2
        L18_2 = 10
        L15_2(L16_2, L17_2, L18_2)
      end
      L15_2 = A0_2.view
      L16_2 = L15_2
      L15_2 = L15_2.insert
      L17_2 = scroller
      L15_2(L16_2, L17_2)
    end
    L10_2 = graphics
    L10_2 = L10_2.newMask
    L11_2 = Constants
    L11_2 = L11_2.Path_Assets
    L12_2 = "General/FC-navIncluded"
    L13_2 = Constants
    L13_2 = L13_2.deviceSpecificFilePostfix
    L13_2 = L13_2()
    L14_2 = "mask.png"
    L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2
    L10_2 = L10_2(L11_2)
    L11_2 = scroller
    L12_2 = L11_2
    L11_2 = L11_2.setMask
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
    L11_2 = scroller
    L11_2.maskX = 0
    L11_2 = scroller
    L11_2.maskY = -20
    L11_2 = A1_2.params
    L11_2 = L11_2.shopItem
    L12_2 = A1_2.params
    L12_2 = L12_2.isBundle
    if not L12_2 then
      L12_2 = L9_1
      L13_2 = L12_2
      L12_2 = L12_2.new
      L14_2 = {}
      L15_2 = L5_1
      L15_2 = L15_2["Buy Again"]
      L14_2.label = L15_2
      L15_2 = Theme
      L15_2 = L15_2.colorsSet
      L15_2 = L15_2.blackColor
      L14_2.labelColor = L15_2
      L14_2.width = 80
      L14_2.height = 22
      L15_2 = Constants
      L15_2 = L15_2.Path_Assets
      L16_2 = "CardScene/button.png"
      L15_2 = L15_2 .. L16_2
      L14_2.defaultFile = L15_2
      
      function L15_2()
        local L0_3, L1_3, L2_3
        L0_3 = mainPlayer
        L1_3 = L0_3
        L0_3 = L0_3.numberOfCards
        L0_3 = L0_3(L1_3)
        L1_3 = A1_2
        L1_3 = L1_3.params
        L1_3 = L1_3.shopItem
        L2_3 = L1_3
        L1_3 = L1_3.numberOfCardInCardPack
        L1_3 = L1_3(L2_3)
        L0_3 = L0_3 + L1_3
        if 200 < L0_3 then
          L0_3 = showSimpleDialog
          L1_3 = "Shop"
          L2_3 = "You have more than 200 cards and can't buy anymore!"
          L0_3(L1_3, L2_3)
          return
        end
        L0_3 = L0_1
        L0_3 = L0_3.gotoScene
        L1_3 = "Scenes.Shop"
        L0_3(L1_3)
        L0_3 = L0_1
        L0_3 = L0_3.removeScene
        L1_3 = "Scenes.ReceivedScene"
        L0_3(L1_3)
        L0_3 = L11_2
        L0_3 = L0_3.action
        L0_3()
      end
      
      L14_2.onRelease = L15_2
      L12_2 = L12_2(L13_2, L14_2)
      L12_2.x = 90
      L12_2.y = 20
      L13_2 = A0_2.view
      L14_2 = L13_2
      L13_2 = L13_2.insert
      L15_2 = L12_2.view
      L13_2(L14_2, L15_2)
    end
  end
end

L10_1.create = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = log3
  L3_2 = "starting tutorial sequence with name:"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 == "goBackHome" then
    L2_2 = L8_1
    L2_2 = L2_2.pointAt
    L3_2 = A0_2.view
    L4_2 = 25
    L5_2 = 20
    L2_2(L3_2, L4_2, L5_2)
  end
end

L10_1.startTutorialSequence = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
  end
end

L10_1.show = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
  end
end

L10_1.hide = L12_1

function L12_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.view
end

L10_1.destroy = L12_1
L13_1 = L10_1
L12_1 = L10_1.addEventListener
L14_1 = "create"
L15_1 = L10_1
L12_1(L13_1, L14_1, L15_1)
L13_1 = L10_1
L12_1 = L10_1.addEventListener
L14_1 = "show"
L15_1 = L10_1
L12_1(L13_1, L14_1, L15_1)
L13_1 = L10_1
L12_1 = L10_1.addEventListener
L14_1 = "hide"
L15_1 = L10_1
L12_1(L13_1, L14_1, L15_1)
L13_1 = L10_1
L12_1 = L10_1.addEventListener
L14_1 = "destroy"
L15_1 = L10_1
L12_1(L13_1, L14_1, L15_1)
return L10_1
