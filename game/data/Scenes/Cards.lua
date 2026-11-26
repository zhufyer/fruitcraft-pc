local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.SceneCreator"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Views.CardsTabelView"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.CardView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.NavigationBar"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "widget"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Language"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Constants"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Tutorial.VerticalOverlayView"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Tutorial.HorizontalOverlayView"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Utils.Analytics"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Views.ChatButton"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Views.EffectsManager"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Tutorial.TutorialManager2"
L13_1 = L13_1(L14_1)
L14_1 = require
L15_1 = "Components.TDButtonView"
L14_1 = L14_1(L15_1)
L15_1 = require
L16_1 = "Components.TDButtonWithBadge"
L15_1 = L15_1(L16_1)
L16_1 = nil
L17_1 = L1_1.newScene
L18_1 = "Cards"
L17_1 = L17_1(L18_1)
L18_1 = nil
L19_1 = nil
L20_1 = nil
L21_1 = nil
L22_1 = nil
L23_1 = nil
L24_1 = nil
L25_1 = nil
L26_1 = nil
L27_1 = nil
L28_1 = nil
L29_1 = nil
L30_1 = -2000
L31_1 = {}
L32_1 = {}

function L33_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.cardUsedForBuilding
    if L7_2 ~= true then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L1_2
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L2_3 = L2_3[A0_3]
    L3_3 = A0_2
    L3_3 = L3_3[A1_3]
    L4_3 = mainPlayer
    L4_3 = L4_3.heroSet
    if L4_3 then
      L4_3 = mainPlayer
      L4_3 = L4_3.heroSet
      L5_3 = L2_3.baseId
      L4_3 = L4_3[L5_3]
      if L4_3 then
        L4_3 = mainPlayer
        L4_3 = L4_3.heroSet
        L5_3 = L3_3.baseId
        L4_3 = L4_3[L5_3]
        if L4_3 then
          L4_3 = L2_3.power
          L5_3 = L3_3.power
          L4_3 = L4_3 > L5_3
          return L4_3
        else
          L4_3 = true
          return L4_3
        end
    end
    else
      L4_3 = mainPlayer
      L4_3 = L4_3.heroSet
      if L4_3 then
        L4_3 = mainPlayer
        L4_3 = L4_3.heroSet
        L5_3 = L3_3.baseId
        L4_3 = L4_3[L5_3]
        if L4_3 then
          L4_3 = false
          return L4_3
      end
      else
        L4_3 = L2_3.power
        L5_3 = L3_3.power
        L4_3 = L4_3 > L5_3
        return L4_3
      end
    end
  end
  
  L2_2(L3_2, L4_2)
  return L1_2
end

function L34_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L10_1
  L1_2 = L1_2.logEvent
  L2_2 = "Card Overlay Selected"
  L1_2(L2_2)
  L1_2 = mainPlayer
  L1_2 = L1_2.settings
  L1_2 = L1_2.isShowingTutorial
  if L1_2 == true then
    L1_2 = mainPlayer
    L1_2 = L1_2.settings
    L1_2 = L1_2.activeTutorial
    if L1_2 == "start" then
      L1_2 = mainPlayer
      L1_2 = L1_2.settings
      L1_2 = L1_2.activeTutorialState
      if L1_2 == "showcaseCards" then
        L1_2 = L12_1
        L1_2 = L1_2.removePoint
        L1_2()
      end
    end
  end
  L1_2 = L17_1
  L1_2 = L1_2.scroller1
  L2_2 = L1_2
  L1_2 = L1_2.getContentPosition
  L1_2, L2_2 = L1_2(L2_2)
  L29_1 = L2_2
  L28_1 = L1_2
  L1_2 = false
  L2_2 = mainPlayer
  L2_2 = L2_2.heroSet
  if L2_2 then
    L2_2 = mainPlayer
    L2_2 = L2_2.heroSet
    L3_2 = A0_2.card
    L3_2 = L3_2.baseId
    L2_2 = L2_2[L3_2]
    if L2_2 then
      L1_2 = true
    end
  end
  L2_2 = L0_1
  L2_2 = L2_2.showOverlay
  L3_2 = "Scenes.CardOverlay"
  L4_2 = {}
  L4_2.effect = "fade"
  L5_2 = {}
  L6_2 = A0_2.card
  L5_2.card = L6_2
  L5_2.isHero = L1_2
  L4_2.params = L5_2
  L2_2(L3_2, L4_2)
end

L17_1.cardSelected = L34_1

function L34_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = pairs
  L2_2 = L31_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.removeSelf
    L6_2(L7_2)
    L6_2 = L5_2.timer1
    if L6_2 then
      L6_2 = timer
      L6_2 = L6_2.cancel
      L7_2 = L5_2.timer1
      L6_2(L7_2)
    end
    L6_2 = L31_1
    L6_2[L4_2] = nil
  end
  L1_2 = mainPlayer
  L1_2 = L1_2.recentlyUsedEnhance
  if L1_2 then
    L1_2 = mainPlayer
    L1_2 = L1_2.recentlyUsedEnhance
    L1_2 = L1_2[2]
    if L1_2 then
      L1_2 = log3
      L2_2 = "Remaking scroller"
      L1_2(L2_2)
      L1_2 = display
      L1_2 = L1_2.remove
      L2_2 = A0_2.scroller1
      L1_2(L2_2)
      A0_2.scroller1 = nil
      L1_2 = L5_1
      L1_2 = L1_2.newScrollView
      L2_2 = {}
      L3_2 = display
      L3_2 = L3_2.contentWidth
      L3_2 = L3_2 - 10
      L2_2.width = L3_2
      L3_2 = display
      L3_2 = L3_2.contentHeight
      L3_2 = L3_2 - 46
      L2_2.height = L3_2
      L2_2.hideScrollBar = true
      L2_2.verticalScrollDisabled = true
      L2_2.scrollWidth = 0
      L2_2.scrollHeight = 0
      L2_2.rightPadding = 20
      L3_2 = {}
      L4_2 = 0
      L5_2 = 0
      L6_2 = 0
      L7_2 = 0
      L3_2[1] = L4_2
      L3_2[2] = L5_2
      L3_2[3] = L6_2
      L3_2[4] = L7_2
      L2_2.backgroundColor = L3_2
      L1_2 = L1_2(L2_2)
      A0_2.scroller1 = L1_2
      L1_2 = A0_2.scroller1
      L2_2 = display
      L2_2 = L2_2.contentWidth
      L2_2 = L2_2 / 2
      L1_2.x = L2_2
      L1_2 = A0_2.scroller1
      L2_2 = display
      L2_2 = L2_2.contentHeight
      L2_2 = L2_2 - 46
      L2_2 = L2_2 / 2
      L2_2 = 44 + L2_2
      L1_2.y = L2_2
      L1_2 = A0_2.maskGroup
      L2_2 = L1_2
      L1_2 = L1_2.insert
      L3_2 = A0_2.scroller1
      L1_2(L2_2, L3_2)
      L1_2 = mainPlayer
      L1_2 = L1_2.recentlyUsedEnhance
      L1_2[2] = false
    end
  end
  L1_2 = L33_1
  L2_2 = mainPlayer
  L2_2 = L2_2.cards
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = math
    L8_2 = L8_2.ceil
    L9_2 = #L1_2
    L9_2 = L9_2 / 2
    L8_2 = L8_2(L9_2)
    if L6_2 <= L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L3_1
    L9_2 = L8_2
    L8_2 = L8_2.new
    L10_2 = "medium"
    L11_2 = mainPlayer
    L11_2 = L11_2.cards
    L11_2 = L11_2[L7_2]
    L12_2 = L17_1
    L13_2 = nil
    L14_2 = true
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L10_2 = L8_2
    L9_2 = L8_2.setSelectable
    L11_2 = true
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.setSimpleAction
    L9_2(L10_2)
    L10_2 = L8_2
    L9_2 = L8_2.deselected
    L9_2(L10_2)
    L10_2 = L8_2
    L9_2 = L8_2.hideCooldownView
    L9_2(L10_2)
    L10_2 = L8_2
    L9_2 = L8_2.setId
    L11_2 = L6_2
    L9_2(L10_2, L11_2)
    L9_2 = A0_2.scroller1
    L10_2 = L9_2
    L9_2 = L9_2.insert
    L11_2 = L8_2.view
    L9_2(L10_2, L11_2)
    L9_2 = L8_2.showNewSeriesOfCards
    L9_2 = L9_2()
    if L9_2 then
      L10_2 = L8_2
      L9_2 = L8_2.setPosition
      L11_2 = L6_2 - 1
      L11_2 = L11_2 * 126
      L11_2 = 5 + L11_2
      L12_2 = display
      L12_2 = L12_2.contentHeight
      L12_2 = L12_2 - 50
      L12_2 = L12_2 / 4
      L12_2 = L12_2 - 70
      L12_2 = L12_2 + 3
      L9_2(L10_2, L11_2, L12_2)
    else
      L10_2 = L8_2
      L9_2 = L8_2.setPosition
      L11_2 = L6_2 - 1
      L11_2 = L11_2 * 105
      L11_2 = 5 + L11_2
      L12_2 = display
      L12_2 = L12_2.contentHeight
      L12_2 = L12_2 - 50
      L12_2 = L12_2 / 4
      L12_2 = L12_2 - 70
      L12_2 = L12_2 + 3
      L9_2(L10_2, L11_2, L12_2)
    end
    L9_2 = L30_1
    L10_2 = L6_2 - 1
    L10_2 = L10_2 * 105
    L10_2 = 5 + L10_2
    if L9_2 < L10_2 then
      L9_2 = L6_2 - 1
      L9_2 = L9_2 * 105
      L9_2 = 5 + L9_2
      L30_1 = L9_2
    end
    L9_2 = L31_1
    L9_2[L7_2] = L8_2
  end
  L3_2 = {}
  L4_2 = #L1_2
  L5_2 = math
  L5_2 = L5_2.ceil
  L6_2 = #L1_2
  L6_2 = L6_2 / 2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 + 1
  L6_2 = -1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L3_2
    L10_2 = L1_2[L7_2]
    L8_2(L9_2, L10_2)
  end
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L3_1
    L10_2 = L9_2
    L9_2 = L9_2.new
    L11_2 = "medium"
    L12_2 = mainPlayer
    L12_2 = L12_2.cards
    L12_2 = L12_2[L8_2]
    L13_2 = L17_1
    L14_2 = nil
    L15_2 = true
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L11_2 = L9_2
    L10_2 = L9_2.setSelectable
    L12_2 = true
    L10_2(L11_2, L12_2)
    L11_2 = L9_2
    L10_2 = L9_2.setSimpleAction
    L10_2(L11_2)
    L11_2 = L9_2
    L10_2 = L9_2.deselected
    L10_2(L11_2)
    L11_2 = L9_2
    L10_2 = L9_2.hideCooldownView
    L10_2(L11_2)
    L11_2 = L9_2
    L10_2 = L9_2.setId
    L12_2 = L7_2
    L10_2(L11_2, L12_2)
    L10_2 = A0_2.scroller1
    L11_2 = L10_2
    L10_2 = L10_2.insert
    L12_2 = L9_2.view
    L10_2(L11_2, L12_2)
    L10_2 = L9_2.showNewSeriesOfCards
    L10_2 = L10_2()
    if L10_2 then
      L11_2 = L9_2
      L10_2 = L9_2.setPosition
      L12_2 = L7_2 - 1
      L12_2 = L12_2 * 126
      L12_2 = 5 + L12_2
      L13_2 = display
      L13_2 = L13_2.contentHeight
      L13_2 = L13_2 - 50
      L13_2 = L13_2 / 4
      L13_2 = L13_2 * 3
      L13_2 = L13_2 - 70
      L13_2 = L13_2 + 2
      L10_2(L11_2, L12_2, L13_2)
    else
      L11_2 = L9_2
      L10_2 = L9_2.setPosition
      L12_2 = L7_2 - 1
      L12_2 = L12_2 * 105
      L12_2 = 5 + L12_2
      L13_2 = display
      L13_2 = L13_2.contentHeight
      L13_2 = L13_2 - 50
      L13_2 = L13_2 / 4
      L13_2 = L13_2 * 3
      L13_2 = L13_2 - 70
      L13_2 = L13_2 + 2
      L10_2(L11_2, L12_2, L13_2)
    end
    L10_2 = L31_1
    L10_2[L8_2] = L9_2
  end
  L4_2 = heroAnimationHandler
  L5_2 = L31_1
  L4_2(L5_2)
  L4_2 = L27_1
  if L4_2 == true then
    L4_2 = A0_2.scroller1
    L5_2 = L4_2
    L4_2 = L4_2.scrollToPosition
    L6_2 = {}
    L6_2.x = 0
    L4_2(L5_2, L6_2)
  end
end

L17_1.setupCardScrollers = L34_1

function L34_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = mainPlayer
    L7_2 = L7_2.heroSet
    if L7_2 then
      L7_2 = mainPlayer
      L7_2 = L7_2.heroSet
      L8_2 = L6_2.card
      L8_2 = L8_2.baseId
      L7_2 = L7_2[L8_2]
      if L7_2 then
        if A1_2 then
          L8_2 = L6_2
          L7_2 = L6_2.removeEnterFrameListener
          L7_2(L8_2)
        else
          L8_2 = L6_2
          L7_2 = L6_2.addEnterFrameListener
          L7_2(L8_2)
        end
      end
    end
  end
end

heroAnimationHandler = L34_1

function L34_1(A0_2)
  local L1_2
end

function L35_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = showSimpleDialog
  L3_2 = "Cooldown"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

function L36_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2.gotoScene
  L1_2 = "Scenes.Collection"
  L0_2(L1_2)
end

function L37_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = log3
  L3_2 = "Create scene"
  L2_2(L3_2)
  L2_2 = A0_2.view
  L3_2 = {}
  L31_1 = L3_2
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = L7_1
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
  L5_2 = L2_2
  L4_2 = L2_2.insert
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = L4_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.previousScene = "Scenes.Home"
  L6_2.helpId = 19
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.navBar = L4_2
  L4_2 = A0_2.navBar
  L5_2 = L4_2
  L4_2 = L4_2.setTitle
  L6_2 = L6_1
  L6_2 = L6_2.Cards
  L4_2(L5_2, L6_2)
  L5_2 = L2_2
  L4_2 = L2_2.insert
  L6_2 = A0_2.navBar
  L6_2 = L6_2.view
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
  L7_2 = L7_1
  L7_2 = L7_2.whiteColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2.strokeWidth = 3
  L6_2 = L4_2
  L5_2 = L4_2.setStrokeColor
  L7_2 = 0.30588235
  L8_2 = 0.5254902
  L9_2 = 0.10980392
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  A0_2.maskGroup = L5_2
  L5_2 = mainPlayer
  L5_2 = L5_2.recentlyUsedEnhance
  if L5_2 then
    L5_2 = mainPlayer
    L5_2 = L5_2.recentlyUsedEnhance
    L5_2[2] = false
  end
  L5_2 = L5_1
  L5_2 = L5_2.newScrollView
  L6_2 = {}
  L7_2 = display
  L7_2 = L7_2.contentWidth
  L7_2 = L7_2 - 10
  L6_2.width = L7_2
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L7_2 = L7_2 - 46
  L6_2.height = L7_2
  L6_2.hideScrollBar = true
  L6_2.verticalScrollDisabled = true
  L6_2.scrollWidth = 0
  L6_2.scrollHeight = 0
  L6_2.rightPadding = 20
  L6_2.leftPadding = 10
  L7_2 = {}
  L8_2 = 1
  L9_2 = 1
  L10_2 = 1
  L11_2 = 1
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L6_2.backgroundColor = L7_2
  L5_2 = L5_2(L6_2)
  A0_2.scroller1 = L5_2
  L5_2 = A0_2.scroller1
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 / 2
  L5_2.x = L6_2
  L5_2 = A0_2.scroller1
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 - 46
  L6_2 = L6_2 / 2
  L6_2 = 44 + L6_2
  L5_2.y = L6_2
  L5_2 = A0_2.maskGroup
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = A0_2.scroller1
  L5_2(L6_2, L7_2)
  L5_2 = graphics
  L5_2 = L5_2.newMask
  L6_2 = L7_1
  L6_2 = L6_2.Path_Assets
  L7_2 = "General/FC-navIncluded"
  L8_2 = L7_1
  L8_2 = L8_2.deviceSpecificFilePostfix
  L8_2 = L8_2()
  L9_2 = "mask.png"
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2.maskGroup
  L7_2 = L6_2
  L6_2 = L6_2.setMask
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2.maskGroup
  L7_2 = display
  L7_2 = L7_2.contentCenterX
  L7_2 = L7_2 + 0.5
  L6_2.maskX = L7_2
  L6_2 = A0_2.maskGroup
  L7_2 = display
  L7_2 = L7_2.contentCenterY
  L6_2.maskY = L7_2
  L6_2 = A0_2.view
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = A0_2.maskGroup
  L6_2(L7_2, L8_2)
  L6_2 = L14_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.width = 35
  L8_2.height = 35
  L9_2 = L7_1
  L9_2 = L9_2.Path_Assets
  L10_2 = "CardScene/FC-collection-botton.png"
  L9_2 = L9_2 .. L10_2
  L8_2.imageName = L9_2
  L9_2 = L36_1
  L8_2.onRelease = L9_2
  L6_2 = L6_2(L7_2, L8_2)
  L24_1 = L6_2
  L6_2 = A0_2.view
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L24_1
  L8_2 = L8_2.view
  L6_2(L7_2, L8_2)
  L6_2 = L24_1
  L7_2 = L24_1
  L7_2 = L7_2.width
  L7_2 = L7_2 / 2
  L7_2 = 45 + L7_2
  L6_2.x = L7_2
  L6_2 = L24_1
  L6_2.y = 20
  L6_2 = {}
  L6_2.name = "hero"
  L6_2.width = 35
  L6_2.height = 35
  L7_2 = L7_1
  L7_2 = L7_2.Path_Assets
  L8_2 = "CardScene/Hero button.png"
  L7_2 = L7_2 .. L8_2
  L6_2.imageName = L7_2
  L6_2.scene = A0_2
  L6_2.sceneName = "Scenes.Cards"
  L7_2 = {}
  L8_2 = L6_1
  L8_2 = L8_2.localizedString
  L9_2 = "Mentor dialog about level of hero scene"
  L10_2 = {}
  L11_2 = L7_1
  L11_2 = L11_2.UnlockLevel_HeroItems
  L10_2.level = L11_2
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2)
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L7_2[5] = L12_2
  L6_2.dialogText = L7_2
  L7_2 = L6_1
  L7_2 = L7_2.localizedString
  L8_2 = "Combos List Open At Level"
  L9_2 = {}
  L10_2 = L7_1
  L10_2 = L10_2.UnlockLevel_HeroItems
  L9_2.level = L10_2
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.badgeText = L7_2
  L6_2.analyticsLog = "Hero Button Pressed under Level 4 in Cards Scene"
  L7_2 = L7_1
  L7_2 = L7_2.UnlockLevel_HeroItems
  L6_2.unlockLevel = L7_2
  L6_2.sceneNameOnPressButton = "Scenes.HeroScene"
  L7_2 = L15_1
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  L26_1 = L7_2
  L7_2 = A0_2.view
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = L26_1
  L9_2 = L9_2.view
  L7_2(L8_2, L9_2)
  L7_2 = {}
  L7_2.width = 36
  L7_2.height = 36
  L8_2 = L7_1
  L8_2 = L8_2.Path_Assets
  L9_2 = "CardScene/FC-combo-botton.png"
  L8_2 = L8_2 .. L9_2
  L7_2.imageName = L8_2
  L7_2.scene = A0_2
  L7_2.sceneName = "Scenes.Cards"
  L8_2 = {}
  L9_2 = L6_1
  L9_2 = L9_2.localizedString
  L10_2 = "Mentor Dialog About Level"
  L11_2 = {}
  L12_2 = L7_1
  L12_2 = L12_2.UnlockLevel_Combos
  L11_2.level = L12_2
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2)
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L7_2.dialogText = L8_2
  L8_2 = L6_1
  L8_2 = L8_2.localizedString
  L9_2 = "Combos List Open At Level"
  L10_2 = {}
  L11_2 = L7_1
  L11_2 = L11_2.UnlockLevel_Combos
  L10_2.level = L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L7_2.badgeText = L8_2
  L7_2.analyticsLog = "ComboButton Pressed under Level 15th"
  L8_2 = L7_1
  L8_2 = L8_2.UnlockLevel_Combos
  L7_2.unlockLevel = L8_2
  L7_2.sceneNameOnPressButton = "Scenes.ComboListScene"
  L6_2 = L7_2
  L7_2 = L15_1
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  L25_1 = L7_2
  L7_2 = A0_2.view
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = L25_1
  L9_2 = L9_2.view
  L7_2(L8_2, L9_2)
  L7_2 = L25_1
  L8_2 = L24_1
  L8_2 = L8_2.x
  L9_2 = L25_1
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L9_2 = L24_1
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L8_2 = L8_2 - 2
  L7_2.x = L8_2
  L7_2 = L25_1
  L7_2.y = 20
  L7_2 = L26_1
  L7_2 = L7_2.view
  L8_2 = L25_1
  L8_2 = L8_2.x
  L9_2 = L25_1
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L9_2 = L26_1
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L8_2 = L8_2 - 12
  L7_2.x = L8_2
  L7_2 = L26_1
  L7_2 = L7_2.view
  L7_2.y = 20
end

L17_1.create = L37_1

function L37_1()
  local L0_2, L1_2
  L0_2 = L17_1
  L1_2 = L0_2
  L0_2 = L0_2.setupCardScrollers
  L0_2(L1_2)
end

L17_1.refreshCards = L37_1

function L37_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = log3
  L3_2 = "++++++++++++++++++++++++++++++ Enter scene"
  L2_2(L3_2)
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = L25_1
    L5_2 = L4_2
    L4_2 = L4_2.changeVisualProperty
    L4_2(L5_2)
    L4_2 = L26_1
    L5_2 = L4_2
    L4_2 = L4_2.changeVisualProperty
    L4_2(L5_2)
  elseif L3_2 == "did" then
    L4_2 = "Scenes.Home"
    _backAction = L4_2
    L4_2 = L11_1
    L4_2 = L4_2.newOnScene
    L5_2 = A0_2
    L4_2(L5_2)
    L5_2 = A0_2
    L4_2 = A0_2.setupCardScrollers
    L4_2(L5_2)
    L4_2 = A0_2.navBar
    L4_2.currentScene = "Scenes.Cards"
    L4_2 = A0_2.navBar
    L5_2 = L4_2
    L4_2 = L4_2.setNectar
    L6_2 = mainPlayer
    L6_2 = L6_2.nectar
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.navBar
    L5_2 = L4_2
    L4_2 = L4_2.updateGold
    L4_2(L5_2)
    L4_2 = L13_1
    L4_2 = L4_2.checkForTutorial
    L5_2 = "Scenes.Cards"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
    L4_2 = L28_1
    if L4_2 ~= nil then
      L4_2 = L29_1
      if L4_2 ~= nil then
        L4_2 = L27_1
        if L4_2 ~= true then
          L4_2 = math
          L4_2 = L4_2.abs
          L5_2 = L30_1
          L4_2 = L4_2(L5_2)
          L5_2 = math
          L5_2 = L5_2.abs
          L6_2 = L28_1
          L5_2 = L5_2(L6_2)
          L4_2 = L4_2 - L5_2
          if 362 < L4_2 then
            L4_2 = A0_2.scroller1
            L5_2 = L4_2
            L4_2 = L4_2.scrollToPosition
            L6_2 = {}
            L7_2 = L28_1
            L6_2.x = L7_2
            L7_2 = L29_1
            L6_2.y = L7_2
            L4_2(L5_2, L6_2)
          else
            L4_2 = A0_2.scroller1
            L5_2 = L4_2
            L4_2 = L4_2.scrollToPosition
            L6_2 = {}
            L6_2.x = 0
            L4_2(L5_2, L6_2)
          end
          L4_2 = nil
          L28_1 = L4_2
          L4_2 = nil
          L29_1 = L4_2
          L4_2 = -2000
          L30_1 = L4_2
        end
      end
    end
    L4_2 = A1_2.params
    if L4_2 then
      L4_2 = A1_2.params
      L4_2 = L4_2.isTutorial
      if L4_2 then
        L4_2 = mainPlayer
        L4_2 = L4_2.level
        if L4_2 ~= 4 then
          L4_2 = A0_2.navBar
          L4_2 = L4_2.view
          L4_2.isVisible = false
          L4_2 = L24_1
          L4_2.isVisible = false
          L4_2 = L26_1
          L4_2.isVisible = false
          L4_2 = L25_1
          L4_2.isVisible = false
          L4_2 = L11_1
          L4_2 = L4_2.removeFromScene
          L5_2 = A0_2
          L4_2(L5_2)
          L4_2 = nil
          _backAction = L4_2
      end
    end
    else
      L4_2 = A0_2.navBar
      L4_2 = L4_2.view
      L4_2.isVisible = true
      L4_2 = L24_1
      L4_2.isVisible = true
      L4_2 = L26_1
      L4_2.isVisible = true
      L4_2 = L25_1
      L4_2.isVisible = true
    end
  end
end

L17_1.show = L37_1

function L37_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L12_1
  L3_2 = L3_2.pointAt
  L4_2 = A0_2.scroller1
  L5_2 = 55
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 - 50
  L6_2 = L6_2 / 4
  L6_2 = L6_2 - 70
  L6_2 = L6_2 + 60
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A2_2
  L3_2()
end

L17_1.pointAtCard = L37_1

function L37_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = A0_2.view
  L5_2 = 0
  L6_2 = 0
  L7_2 = 570
  L8_2 = 360
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.dimBackgroundForHeroButton = L3_2
  L3_2 = A0_2.dimBackgroundForHeroButton
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Theme
  L5_2 = L5_2.dimBackgroundOfButtonWithBadgeColor
  L5_2 = L5_2[1]
  L6_2 = Theme
  L6_2 = L6_2.dimBackgroundOfButtonWithBadgeColor
  L6_2 = L6_2[2]
  L7_2 = Theme
  L7_2 = L7_2.dimBackgroundOfButtonWithBadgeColor
  L7_2 = L7_2[3]
  L8_2 = 0.8
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2.dimBackgroundForHeroButton
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L3_2 = A0_2.dimBackgroundForHeroButton
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L3_2 = A0_2.dimBackgroundForHeroButton
  L4_2 = L3_2
  L3_2 = L3_2.addEventListener
  L5_2 = "touch"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.dimBackgroundForHeroButton
  L4_2 = L3_2
  L3_2 = L3_2.addEventListener
  L5_2 = "tap"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = L26_1
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L3_2 = L12_1
  L3_2 = L3_2.pointAt
  L4_2 = L26_1
  L4_2 = L4_2.view
  L5_2 = 0
  L6_2 = 0
  L3_2(L4_2, L5_2, L6_2)
  if A2_2 then
    L3_2 = A2_2
    L3_2()
  end
end

L17_1.pointAtHeroButton = L37_1

function L37_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L12_1
  L3_2 = L3_2.pointAt
  L4_2 = A0_2.scroller1
  L5_2 = 55
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 - 50
  L6_2 = L6_2 / 4
  L6_2 = L6_2 - 70
  L6_2 = L6_2 + 60
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A2_2
  L3_2()
end

L17_1.pointAtEvolveCard = L37_1

function L37_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = mainPlayer
  L3_2 = L3_2.settings
  L3_2 = L3_2.tutorialRequiredCardID
  if L3_2 then
    L3_2 = mainPlayer
    L3_2 = L3_2.cards
    L4_2 = mainPlayer
    L4_2 = L4_2.settings
    L4_2 = L4_2.tutorialRequiredCardID
    L3_2 = L3_2[L4_2]
    if L3_2 then
      L3_2 = A2_2
      L3_2()
      L3_2 = L0_1
      L3_2 = L3_2.showOverlay
      L4_2 = "Scenes.CardOverlay"
      L5_2 = {}
      L6_2 = {}
      L7_2 = mainPlayer
      L7_2 = L7_2.cards
      L8_2 = mainPlayer
      L8_2 = L8_2.settings
      L8_2 = L8_2.tutorialRequiredCardID
      L7_2 = L7_2[L8_2]
      L6_2.card = L7_2
      L5_2.params = L6_2
      L3_2(L4_2, L5_2)
  end
  else
    L3_2 = A2_2
    L3_2()
    L3_2 = L13_1
    L3_2 = L3_2.goToNextStepAfterCurrentSequence
    L3_2()
    L3_2 = L13_1
    L3_2 = L3_2.checkForTutorial
    L4_2 = "Scenes.Cards"
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
  end
end

L17_1.showCardOverlayOfApple = L37_1

function L37_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A2_2
  L3_2()
  L3_2 = L0_1
  L3_2 = L3_2.gotoScene
  L4_2 = "Scenes.Home"
  L3_2(L4_2)
end

L17_1.goToHomeOnComplete = L37_1

function L37_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = log3
    L5_2 = "++++++++++++++++++++++++++++++ Leaving card scene"
    L4_2(L5_2)
    L4_2 = heroAnimationHandler
    L5_2 = L31_1
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = pairs
    L5_2 = L31_1
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L10_2 = L8_2
      L9_2 = L8_2.removeSelf
      L9_2(L10_2)
      L9_2 = L31_1
      L9_2[L7_2] = nil
    end
    L4_2 = L12_1
    L4_2 = L4_2.removePoint
    L4_2()
    L4_2 = A0_2.dimBackgroundForHeroButton
    if L4_2 then
      L4_2 = A0_2.dimBackgroundForHeroButton
      L5_2 = L4_2
      L4_2 = L4_2.removeSelf
      L4_2(L5_2)
      A0_2.dimBackgroundForHeroButton = nil
    end
  end
end

L17_1.hide = L37_1

function L37_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.view
  L3_2 = L11_1
  L3_2 = L3_2.removeFromScene
  L4_2 = L17_1
  L3_2(L4_2)
  L3_2 = L25_1
  if L3_2 then
    L3_2 = L25_1
    L4_2 = L3_2
    L3_2 = L3_2.removeSelf
    L3_2(L4_2)
  end
  L3_2 = L26_1
  if L3_2 then
    L3_2 = L26_1
    L4_2 = L3_2
    L3_2 = L3_2.removeSelf
    L3_2(L4_2)
  end
end

L17_1.destroy = L37_1
L38_1 = L17_1
L37_1 = L17_1.addEventListener
L39_1 = "create"
L40_1 = L17_1
L37_1(L38_1, L39_1, L40_1)
L38_1 = L17_1
L37_1 = L17_1.addEventListener
L39_1 = "show"
L40_1 = L17_1
L37_1(L38_1, L39_1, L40_1)
L38_1 = L17_1
L37_1 = L17_1.addEventListener
L39_1 = "hide"
L40_1 = L17_1
L37_1(L38_1, L39_1, L40_1)
L38_1 = L17_1
L37_1 = L17_1.addEventListener
L39_1 = "destroy"
L40_1 = L17_1
L37_1(L38_1, L39_1, L40_1)
return L17_1
