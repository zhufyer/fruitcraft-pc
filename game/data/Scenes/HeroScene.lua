local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.SceneCreator"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.NavigationBar"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "widget"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Components.TDCarouselView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.HeroAttributesView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Views.HeroItemsView"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Views.ItemView"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Models.Card"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Models.Player"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Views.ActivityIndicatorView"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Models.UserCard"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Tutorial.TutorialManager2"
L13_1 = L13_1(L14_1)
L14_1 = require
L15_1 = "Views.EffectsManager"
L14_1 = L14_1(L15_1)
L15_1 = require
L16_1 = "Utils.Analytics"
L15_1 = L15_1(L16_1)
L16_1 = L1_1.newScene
L17_1 = "HeroScene"
L16_1 = L16_1(L17_1)

function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = "Scenes.Cards"
  L2_2 = A0_2.navBar
  L2_2 = L2_2.previousScene
  if L2_2 then
    L2_2 = A0_2.navBar
    L1_2 = L2_2.previousScene
  end
  L2_2 = L0_1
  L2_2 = L2_2.gotoScene
  L3_2 = L1_2
  L2_2(L3_2)
end

L16_1.goToPreviousScene = L17_1

function L17_1(A0_2)
  local L1_2, L2_2
  L1_2 = L11_1
  L1_2 = L1_2.hide
  L1_2()
  L2_2 = A0_2
  L1_2 = A0_2.goToPreviousScene
  L1_2(L2_2)
end

L16_1.didSetHeroCallback = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L11_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = L2_1
  L2_2 = L2_2.Heroes
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

failedToSetHeroCallback = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L11_1
  L1_2 = L1_2.show
  L2_2 = L2_1
  L2_2 = L2_2["Saving Heroes"]
  L1_2(L2_2)
  L1_2 = L10_1
  L1_2 = L1_2.setHeroesDetails
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.didSetHeroCallback
    L0_3(L1_3)
  end
  
  L3_2 = failedToSetHeroCallback
  L1_2(L2_2, L3_2)
end

L16_1.goBack = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = mainPlayer
  L3_2 = L3_2.cards
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.baseId
    if L7_2 then
      L7_2 = L6_2.baseId
      if L7_2 == A0_2 then
        L1_2 = L6_2.id
      end
    end
  end
  return L1_2
end

getCardId = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L0_1
  L1_2 = L1_2.showOverlay
  L2_2 = "Scenes.CardOverlay"
  L3_2 = {}
  L4_2 = {}
  L5_2 = mainPlayer
  L5_2 = L5_2.cards
  L6_2 = getCardId
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2[L6_2]
  L4_2.card = L5_2
  L4_2.isHero = true
  L3_2.params = L4_2
  L1_2(L2_2, L3_2)
end

didTouchHero = L17_1

function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = mainPlayer
  L4_2 = L4_2.heroSet
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.items
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2.base_heroitem_id
    L8_2(L9_2, L10_2)
  end
  return L2_2
end

L16_1.getItemsOfHeroByHeroId = L17_1

function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = {}
  L4_2 = L9_1
  L4_2 = L4_2.baseCards
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.powerAttribute
  L5_2 = L9_1
  L5_2 = L5_2.baseCards
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.wisdomAttribute
  L6_2 = L9_1
  L6_2 = L6_2.baseCards
  L6_2 = L6_2[A1_2]
  L6_2 = L6_2.blessingAttribute
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L4_2 = L12_1
  L4_2 = L4_2.getGainedAttributesByItems
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L6_2 = L4_2.powerValue
  L7_2 = L4_2.wisdomValue
  L8_2 = L4_2.blessingValue
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L6_2 = A0_2.attributesView
  L7_2 = L6_2
  L6_2 = L6_2.updateAttributes
  L8_2 = L3_2
  L9_2 = L5_2
  L10_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
end

L16_1.updateHeroAttributesView = L17_1

function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.updateHeroAttributesView
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.itemsView
  L3_2 = L2_2
  L2_2 = L2_2.updateView
  L5_2 = A0_2
  L4_2 = A0_2.getItemsOfHeroByHeroId
  L6_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = mainPlayer
  L2_2.activeHeroID = A1_2
end

L16_1.didShowHeroCallback = L17_1

function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = 1
  L4_2 = Constants
  L4_2 = L4_2.ItemTypes
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    if L6_2 == A1_2 then
      L2_2 = true
    else
      L2_2 = false
    end
    L7_2 = A0_2.itemScrollers
    L7_2 = L7_2[L6_2]
    L7_2.isVisible = L2_2
  end
end

L16_1.showScroller = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = Constants
  L2_2 = L2_2.ItemTypes
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = table
    L5_2 = L5_2.sort
    L6_2 = A0_2.items
    L6_2 = L6_2[L4_2]
    
    function L7_2(A0_3, A1_3)
      local L2_3, L3_3
      L2_3 = A0_3.cost
      L3_3 = A1_3.cost
      if L2_3 < L3_3 then
        L2_3 = A0_3.cost
        L3_3 = A1_3.cost
        L2_3 = L2_3 < L3_3
        return L2_3
      else
        L2_3 = A0_3.cost
        L3_3 = A1_3.cost
        if L2_3 == L3_3 then
          L2_3 = A0_3.baseID
          L3_3 = A1_3.baseID
          if L2_3 < L3_3 then
            L2_3 = true
            return L2_3
          else
            L2_3 = false
            return L2_3
          end
        end
      end
    end
    
    L5_2(L6_2, L7_2)
  end
end

L16_1.sortItemsTableByCost = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = Constants
  L2_2 = L2_2.ItemTypes
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.items
    L6_2 = {}
    L5_2[L4_2] = L6_2
  end
  L1_2 = pairs
  L2_2 = mainPlayer
  L2_2 = L2_2.heroItems
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.items
    L8_2 = L5_2.category
    L7_2 = L7_2[L8_2]
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.sortItemsTableByCost
  L1_2(L2_2)
end

L16_1.setupItemsTables = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = 1
  L2_2 = Constants
  L2_2 = L2_2.ItemTypes
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = pairs
    L6_2 = A0_2.items
    L6_2 = L6_2[L4_2]
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = {}
      L11_2 = L9_2.id
      L10_2.id = L11_2
      L10_2.widthOfView = 50
      L10_2.heightOfView = 50
      L10_2.isShowingImageBG = false
      L10_2.isTouchEnable = true
      L10_2.isShowingSolidBG = true
      L11_2 = A0_2.itemScrollers
      L11_2 = L11_2[L4_2]
      L10_2.scrollViewObject = L11_2
      
      function L11_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3
        L0_3 = A0_2
        L0_3 = L0_3.itemsView
        L1_3 = L0_3
        L0_3 = L0_3.setItem
        L2_3 = L9_2
        L2_3 = L2_3.id
        L3_3 = true
        
        function L4_3()
          local L0_4, L1_4, L2_4, L3_4
          L0_4 = A0_2
          L1_4 = L0_4
          L0_4 = L0_4.removeItemFromHeroTable
          L2_4 = mainPlayer
          L2_4 = L2_4.activeHeroID
          L3_4 = L9_2
          L3_4 = L3_4.id
          L0_4(L1_4, L2_4, L3_4)
          L0_4 = A0_2
          L0_4 = L0_4.allItems
          L1_4 = L0_4
          L0_4 = L0_4.setStatusOfItem
          L2_4 = 2
          L0_4(L1_4, L2_4)
        end
        
        L0_3(L1_3, L2_3, L3_3, L4_3)
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.addItemToHeroTable
        L2_3 = mainPlayer
        L2_3 = L2_3.activeHeroID
        L3_3 = L9_2
        L3_3 = L3_3.id
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.updateHeroAttributesView
        L2_3 = mainPlayer
        L2_3 = L2_3.activeHeroID
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = A0_2
        L0_3 = L0_3.heroCarousel
        L0_3 = L0_3.mainViews
        L1_3 = A0_2
        L1_3 = L1_3.heroCarousel
        L1_3 = L1_3.currentViewID
        L0_3 = L0_3[L1_3]
        L1_3 = L0_3
        L0_3 = L0_3.addItem
        L2_3 = L9_2
        L2_3 = L2_3.id
        L0_3(L1_3, L2_3)
        L0_3 = A0_2
        L0_3 = L0_3.itemTypeCarousel
        L0_3 = L0_3.leftArrow
        L0_3 = L0_3.enabled
        if not L0_3 then
          L0_3 = A0_2
          L0_3 = L0_3.itemTypeCarousel
          L0_3 = L0_3.rightArrow
          L0_3 = L0_3.enabled
          if not L0_3 then
            L0_3 = A0_2
            L0_3 = L0_3.itemTypeCarousel
            L1_3 = L0_3
            L0_3 = L0_3.updateArrows
            L0_3(L1_3)
          end
        end
      end
      
      L10_2.useItemCallback = L11_2
      L11_2 = A0_2.allItems
      L12_2 = L9_2.id
      L13_2 = L8_1
      L14_2 = L13_2
      L13_2 = L13_2.new
      L15_2 = L10_2
      L13_2 = L13_2(L14_2, L15_2)
      L11_2[L12_2] = L13_2
      L11_2 = A0_2.itemScrollers
      L11_2 = L11_2[L4_2]
      L12_2 = L11_2
      L11_2 = L11_2.insert
      L13_2 = A0_2.allItems
      L14_2 = L9_2.id
      L13_2 = L13_2[L14_2]
      L13_2 = L13_2.view
      L11_2(L12_2, L13_2)
      L11_2 = A0_2.allItems
      L12_2 = L9_2.id
      L11_2 = L11_2[L12_2]
      L11_2 = L11_2.view
      L12_2 = L8_2 - 1
      L13_2 = A0_2.allItems
      L14_2 = L9_2.id
      L13_2 = L13_2[L14_2]
      L13_2 = L13_2.view
      L13_2 = L13_2.width
      L13_2 = L13_2 + 3
      L12_2 = L12_2 * L13_2
      L12_2 = 30 + L12_2
      L13_2 = A0_2.allItems
      L14_2 = L9_2.id
      L13_2 = L13_2[L14_2]
      L13_2 = L13_2.view
      L13_2 = L13_2.width
      L13_2 = L13_2 / 2
      L12_2 = L12_2 + L13_2
      L11_2.x = L12_2
      L11_2 = A0_2.allItems
      L12_2 = L9_2.id
      L11_2 = L11_2[L12_2]
      L11_2 = L11_2.view
      L12_2 = A0_2.allItems
      L13_2 = L9_2.id
      L12_2 = L12_2[L13_2]
      L12_2 = L12_2.view
      L12_2 = L12_2.height
      L12_2 = L12_2 / 2
      L11_2.y = L12_2
    end
  end
end

L16_1.addItemsToScrollers = L17_1

function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = {}
  L3_2.base_heroitem_id = A2_2
  L3_2.position = 0
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = mainPlayer
  L5_2 = L5_2.heroSet
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.items
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end

L16_1.addItemToHeroTable = L17_1

function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = pairs
  L4_2 = mainPlayer
  L4_2 = L4_2.heroSet
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.items
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.base_heroitem_id
    if L8_2 == A2_2 then
      L8_2 = table
      L8_2 = L8_2.remove
      L9_2 = mainPlayer
      L9_2 = L9_2.heroSet
      L9_2 = L9_2[A1_2]
      L9_2 = L9_2.items
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = A0_2.heroCarousel
  L3_2 = L3_2.mainViews
  L4_2 = A0_2.heroCarousel
  L4_2 = L4_2.currentViewID
  L3_2 = L3_2[L4_2]
  L4_2 = L3_2
  L3_2 = L3_2.removeItem
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end

L16_1.removeItemFromHeroTable = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = display
  L1_2 = L1_2.newRect
  L2_2 = A0_2.view
  L3_2 = A0_2.boxBackground
  L3_2 = L3_2.x
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L5_2 = A0_2.boxBackground
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L4_2 = L4_2 + 5
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 * 0.7
  L6_2 = 25
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L3_2 = L1_2
  L2_2 = L1_2.setFillColor
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0.2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2.strokeWidth = 1
  L3_2 = L1_2
  L2_2 = L1_2.setStrokeColor
  L4_2 = 0.5
  L5_2 = 0.5
  L6_2 = 0.5
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = L1_2.path
  L2_2.x1 = 30
  L2_2 = L1_2.path
  L2_2.x4 = -30
  L2_2 = 1
  L3_2 = Constants
  L3_2 = L3_2.ItemTypes
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.itemScrollers
    L7_2 = L4_1
    L7_2 = L7_2.newScrollView
    L8_2 = {}
    L9_2 = display
    L9_2 = L9_2.contentWidth
    L9_2 = L9_2 * 0.7
    L8_2.width = L9_2
    L8_2.height = 50
    L8_2.hideScrollBar = true
    L8_2.verticalScrollDisabled = true
    L8_2.scrollWidth = 100
    L8_2.rightPadding = 0
    L8_2.leftPadding = 0
    L9_2 = {}
    L10_2 = 1
    L11_2 = 1
    L12_2 = 1
    L13_2 = 1
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L9_2[3] = L12_2
    L9_2[4] = L13_2
    L8_2.backgroundColor = L9_2
    L8_2.hideBackground = true
    L7_2 = L7_2(L8_2)
    L6_2[L5_2] = L7_2
    L6_2 = A0_2.itemScrollers
    L6_2 = L6_2[L5_2]
    L7_2 = A0_2.boxBackground
    L7_2 = L7_2.x
    L6_2.x = L7_2
    L6_2 = A0_2.itemScrollers
    L6_2 = L6_2[L5_2]
    L7_2 = display
    L7_2 = L7_2.contentCenterY
    L8_2 = A0_2.boxBackground
    L8_2 = L8_2.height
    L8_2 = L8_2 / 2
    L7_2 = L7_2 + L8_2
    L7_2 = L7_2 - 25
    L7_2 = L7_2 + 5
    L6_2.y = L7_2
    L6_2 = A0_2.itemScrollers
    L6_2 = L6_2[L5_2]
    L6_2.isVisible = false
    L6_2 = A0_2.view
    L7_2 = L6_2
    L6_2 = L6_2.insert
    L8_2 = A0_2.itemScrollers
    L8_2 = L8_2[L5_2]
    L6_2(L7_2, L8_2)
  end
end

L16_1.createScrollers = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L1_2.displayType = "hero"
  L3_2 = A0_2
  L2_2 = A0_2.getActiveHeroIndex
  L2_2 = L2_2(L3_2)
  L1_2.activeID = L2_2
  L1_2.arrowWidth = 35
  L1_2.arrowHeight = 35
  L1_2.paddingAmount = 20
  L3_2 = A0_2
  L2_2 = A0_2.getHeroContentsData
  L2_2 = L2_2(L3_2)
  L1_2.contents = L2_2
  L2_2 = L5_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.heroCarousel = L2_2
  L2_2 = A0_2.heroCarousel
  L3_2 = display
  L3_2 = L3_2.contentCenterX
  L2_2.x = L3_2
  L2_2 = A0_2.heroCarousel
  L3_2 = display
  L3_2 = L3_2.contentCenterY
  L4_2 = A0_2.heroCarousel
  L4_2 = L4_2.height
  L4_2 = L4_2 / 3
  L3_2 = L3_2 - L4_2
  L2_2.y = L3_2
  L2_2 = A0_2.view
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = A0_2.heroCarousel
  L4_2 = L4_2.view
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L2_2.displayType = "text"
  L2_2.activeID = 1
  L2_2.arrowWidth = 25
  L2_2.arrowHeight = 25
  L2_2.textFontSize = 15
  L4_2 = A0_2
  L3_2 = A0_2.getItemTypesContentsData
  L3_2 = L3_2(L4_2)
  L2_2.contents = L3_2
  L3_2 = L5_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.itemTypeCarousel = L3_2
  L3_2 = A0_2.itemTypeCarousel
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L3_2 = A0_2.itemTypeCarousel
  L4_2 = A0_2.heroCarousel
  L4_2 = L4_2.y
  L5_2 = A0_2.heroCarousel
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L4_2 = L4_2 + 15
  L4_2 = L4_2 + 20
  L5_2 = A0_2.itemTypeCarousel
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L3_2.y = L4_2
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.itemTypeCarousel
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
end

L16_1.setupCarousels = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = Constants
  L3_2 = L3_2.ItemTypes
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = {}
    L6_2.id = L5_2
    L7_2 = L2_1
    L8_2 = Constants
    L8_2 = L8_2.ItemTypes
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.name
    L7_2 = L7_2[L8_2]
    L6_2.value = L7_2
    
    function L7_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.showScroller
      L2_3 = L5_2
      L0_3(L1_3, L2_3)
    end
    
    L6_2.actionCallback = L7_2
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  return L1_2
end

L16_1.getItemTypesContentsData = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = pairs
  L4_2 = mainPlayer
  L4_2 = L4_2.heroSet
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = {}
    L8_2.id = L2_2
    L9_2 = {}
    L8_2.value = L9_2
    L9_2 = L8_2.value
    L10_2 = L7_2.id
    L9_2.id = L10_2
    L9_2 = L8_2.value
    L9_2.spineCharacter = true
    L9_2 = L8_2.value
    L9_2.isShowingBackground = false
    L9_2 = L8_2.value
    L9_2.widthOfView = 130
    L9_2 = L8_2.value
    L9_2.heightOfView = 130
    
    function L9_2()
      local L0_3, L1_3
      L0_3 = didTouchHero
      L1_3 = L7_2
      L1_3 = L1_3.id
      L0_3(L1_3)
    end
    
    L8_2.touchCallback = L9_2
    
    function L9_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.didShowHeroCallback
      L2_3 = L7_2
      L2_3 = L2_3.id
      L0_3(L1_3, L2_3)
    end
    
    L8_2.actionCallback = L9_2
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L1_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L2_2 = L2_2 + 1
  end
  return L1_2
end

L16_1.getHeroContentsData = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = pairs
  L3_2 = A0_2.heroes
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = mainPlayer
    L7_2 = L7_2.activeHeroID
    if L6_2 == L7_2 then
      L1_2 = L5_2
    end
  end
  return L1_2
end

L16_1.getActiveHeroIndex = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = {}
  A0_2.heroes = L2_2
  L2_2 = pairs
  L3_2 = mainPlayer
  L3_2 = L3_2.heroSet
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2.heroes
    L8_2 = L6_2.id
    L7_2[L1_2] = L8_2
    L1_2 = L1_2 + 1
  end
end

L16_1.storeHeroesWithNumericalIndex = L17_1

function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  A0_2.itemScrollers = L2_2
  L2_2 = {}
  A0_2.items = L2_2
  L2_2 = {}
  A0_2.allItems = L2_2
  L2_2 = {}
  A0_2.heroes = L2_2
  L2_2 = display
  L2_2 = L2_2.newImageRect
  L3_2 = A0_2.view
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "FC-bg.png"
  L4_2 = L4_2 .. L5_2
  L5_2 = 570
  L6_2 = 360
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = display
  L3_2 = L3_2.contentCenterX
  L2_2.x = L3_2
  L3_2 = display
  L3_2 = L3_2.contentCenterY
  L2_2.y = L3_2
  L3_2 = L3_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.previousScene = "Scenes.Cards"
  L5_2.helpId = 39
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.goBack
    L0_3(L1_3)
  end
  
  L5_2.backButtonAction = L6_2
  L5_2.hasNectar = true
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.navBar = L3_2
  L3_2 = A0_2.navBar
  L4_2 = L3_2
  L3_2 = L3_2.setTitle
  L5_2 = L2_1
  L5_2 = L5_2.Heroes
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.navBar
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L3_2 = display
  L3_2 = L3_2.newRoundedRect
  L4_2 = A0_2.view
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 / 2
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 - 45
  L6_2 = L6_2 / 2
  L6_2 = 40 + L6_2
  L7_2 = display
  L7_2 = L7_2.contentWidth
  L7_2 = L7_2 - 10
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 - 45
  L9_2 = 3
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2.boxBackground = L3_2
  L3_2 = A0_2.boxBackground
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.whiteColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = A0_2.boxBackground
  L3_2.strokeWidth = 3
  L3_2 = A0_2.boxBackground
  L4_2 = L3_2
  L3_2 = L3_2.setStrokeColor
  L5_2 = Theme
  L5_2 = L5_2.heroSceneBackgroundBoxColor
  L5_2 = L5_2[1]
  L6_2 = Theme
  L6_2 = L6_2.heroSceneBackgroundBoxColor
  L6_2 = L6_2[2]
  L7_2 = Theme
  L7_2 = L7_2.heroSceneBackgroundBoxColor
  L7_2 = L7_2[3]
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A0_2.view
  L5_2 = L2_1
  L5_2 = L5_2["Heroes Attributes"]
  L6_2 = 0
  L7_2 = 0
  L8_2 = Constants
  L8_2 = L8_2.fontForTitle
  L8_2 = L8_2()
  L9_2 = 16
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = A0_2.view
  L6_2 = L2_1
  L6_2 = L6_2["Heroes Items"]
  L7_2 = 0
  L8_2 = 0
  L9_2 = Constants
  L9_2 = L9_2.fontForTitle
  L9_2 = L9_2()
  L10_2 = 16
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L3_2
  L5_2 = L3_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.blackColor
  L7_2, L8_2, L9_2, L10_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.blackColor
  L7_2, L8_2, L9_2, L10_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = {}
  L5_2.id = "hero attributes"
  L5_2.width = 100
  L5_2.height = 115
  L6_2 = {}
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L5_2.baseAttributesValues = L6_2
  L6_2 = {}
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L5_2.addedAttributesValues = L6_2
  L5_2.fontSize = 10
  L6_2 = L6_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  A0_2.attributesView = L6_2
  L6_2 = A0_2.attributesView
  L7_2 = display
  L7_2 = L7_2.contentWidth
  L7_2 = L7_2 - 20
  L8_2 = A0_2.attributesView
  L8_2 = L8_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 - L8_2
  L6_2.x = L7_2
  L6_2 = A0_2.view
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = A0_2.attributesView
  L8_2 = L8_2.view
  L6_2(L7_2, L8_2)
  L6_2 = A0_2.attributesView
  L6_2 = L6_2.x
  L3_2.x = L6_2
  L6_2 = L3_2.height
  L6_2 = L6_2 / 2
  L6_2 = 45 + L6_2
  L3_2.y = L6_2
  L6_2 = A0_2.attributesView
  L7_2 = display
  L7_2 = L7_2.contentCenterY
  L8_2 = L3_2.height
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L7_2 = L7_2 + 12
  L8_2 = A0_2.attributesView
  L8_2 = L8_2.height
  L8_2 = L8_2 / 2
  L7_2 = L7_2 - L8_2
  L6_2.y = L7_2
  L6_2 = {}
  L6_2.id = " hero equipped items"
  L6_2.width = 100
  L6_2.height = 115
  L7_2 = L7_1
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  A0_2.itemsView = L7_2
  L7_2 = A0_2.itemsView
  L8_2 = A0_2.attributesView
  L8_2 = L8_2.width
  L8_2 = L8_2 / 2
  L8_2 = 20 + L8_2
  L7_2.x = L8_2
  L7_2 = A0_2.view
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = A0_2.itemsView
  L9_2 = L9_2.view
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.itemsView
  L7_2 = L7_2.x
  L4_2.x = L7_2
  L7_2 = L4_2.height
  L7_2 = L7_2 / 2
  L7_2 = 45 + L7_2
  L4_2.y = L7_2
  L7_2 = A0_2.itemsView
  L8_2 = display
  L8_2 = L8_2.contentCenterY
  L8_2 = L8_2 + 12
  L9_2 = L4_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L9_2 = A0_2.attributesView
  L9_2 = L9_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L7_2.y = L8_2
  L8_2 = A0_2
  L7_2 = A0_2.createScrollers
  L7_2(L8_2)
end

L16_1.create = L17_1

function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = pairs
  L1_2 = mainPlayer
  L1_2 = L1_2.heroItems
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = pairs
    L6_2 = L4_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      if L8_2 == "assignedHeroID" then
        L10_2 = true
        return L10_2
      end
    end
  end
end

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = 1
  L3_2 = Constants
  L3_2 = L3_2.ItemTypes
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = pairs
    L7_2 = A0_2.items
    L7_2 = L7_2[L5_2]
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      if A1_2 then
        L11_2 = L10_2.id
        L12_2 = A0_2.items
        L12_2 = L12_2[1]
        L12_2 = L12_2[1]
        L12_2 = L12_2.id
        if L11_2 ~= L12_2 then
          L11_2 = A0_2.allItems
          L12_2 = L10_2.id
          L11_2 = L11_2[L12_2]
          L12_2 = L11_2
          L11_2 = L11_2.enableTouch
          L11_2(L12_2)
        end
      else
        L11_2 = A0_2.allItems
        L12_2 = L10_2.id
        L11_2 = L11_2[L12_2]
        L12_2 = L11_2
        L11_2 = L11_2.disableTouch
        L11_2(L12_2)
      end
    end
  end
end

L16_1.makeItemsTouchEnable = L18_1

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    L3_2 = A0_2
    L2_2 = A0_2.storeHeroesWithNumericalIndex
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.setupCarousels
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.setupItemsTables
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.addItemsToScrollers
    L2_2(L3_2)
    L2_2 = L13_1
    L2_2 = L2_2.checkForTutorial
    L3_2 = "Scenes.HeroScene"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
    L2_2 = L15_1
    L2_2 = L2_2.logEvent
    L3_2 = " Hero Scene Shown"
    L2_2(L3_2)
    L2_2 = A0_2.heroCarousel
    L2_2 = L2_2.mainViews
    L3_2 = A0_2.heroCarousel
    L3_2 = L3_2.currentViewID
    L2_2 = L2_2[L3_2]
    L3_2 = L2_2
    L2_2 = L2_2.addListenerToHero
    L2_2(L3_2)
    L2_2 = A0_2.navBar
    L3_2 = L2_2
    L2_2 = L2_2.updateGold
    L2_2(L3_2)
    L2_2 = A0_2.navBar
    L3_2 = L2_2
    L2_2 = L2_2.setNectar
    L4_2 = mainPlayer
    L4_2 = L4_2.nectar
    L2_2(L3_2, L4_2)
    L2_2 = L17_1
    L2_2 = L2_2()
    if not L2_2 then
      L2_2 = mainPlayer
      L2_2 = L2_2.settings
      L2_2 = L2_2.sawTutorialOfHeroScene
      if not L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.makeItemsTouchEnable
        L4_2 = false
        L2_2(L3_2, L4_2)
        L2_2 = A0_2.allItems
        L3_2 = A0_2.items
        L3_2 = L3_2[1]
        L3_2 = L3_2[1]
        L3_2 = L3_2.id
        L2_2 = L2_2[L3_2]
        L3_2 = L2_2
        L2_2 = L2_2.enableTouch
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2.pointAtItem
        L2_2(L3_2)
    end
    else
      L2_2 = L17_1
      L2_2 = L2_2()
      if L2_2 then
        L2_2 = mainPlayer
        L2_2 = L2_2.settings
        L2_2 = L2_2.sawTutorialOfHeroScene
        if not L2_2 then
          L2_2 = mainPlayer
          L3_2 = L2_2
          L2_2 = L2_2.setSettingForKey
          L4_2 = "sawTutorialOfHeroScene"
          L5_2 = true
          L2_2(L3_2, L4_2, L5_2)
          L2_2 = mainPlayer
          L3_2 = L2_2
          L2_2 = L2_2.saveSettings
          L2_2(L3_2)
        end
      end
    end
  end
end

L16_1.show = L18_1

function L18_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 then
    L3_2 = pairs
    L4_2 = A1_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      if A2_2 then
        L9_2 = L7_2
        L8_2 = L7_2.removeSelf
        L8_2(L9_2)
      end
      L7_2 = nil
    end
    A1_2 = nil
  end
end

L16_1.clearTable = L18_1

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.itemTypeCarousel
  L2_2 = L2_2.leftArrow
  L3_2 = L2_2
  L2_2 = L2_2.setEnabled
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.itemTypeCarousel
  L2_2 = L2_2.rightArrow
  L3_2 = L2_2
  L2_2 = L2_2.setEnabled
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

L16_1.setEnableItemCarousel = L18_1

function L18_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2.itemTypeCarousel
  L4_2 = L3_2
  L3_2 = L3_2.setDisable
  L3_2(L4_2)
  L3_2 = A0_2.itemScrollers
  L3_2 = L3_2[1]
  L3_2 = L3_2.x
  L4_2 = A0_2.itemScrollers
  L4_2 = L4_2[1]
  L4_2 = L4_2.width
  L4_2 = L4_2 * 0.5
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2.allItems
  L5_2 = A0_2.items
  L5_2 = L5_2[1]
  L5_2 = L5_2[1]
  L5_2 = L5_2.id
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.view
  L4_2 = L4_2.width
  L4_2 = L4_2 * 0.5
  L3_2 = L3_2 + L4_2
  L3_2 = L3_2 + 30
  L4_2 = A0_2.itemScrollers
  L4_2 = L4_2[1]
  L4_2 = L4_2.y
  L5_2 = L14_1
  L5_2 = L5_2.pointAt
  L6_2 = A0_2.view
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
  if A2_2 then
    L5_2 = A2_2
    L5_2()
  end
end

L16_1.pointAtItem = L18_1

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    L2_2 = A0_2.heroCarousel
    L2_2 = L2_2.mainViews
    L3_2 = A0_2.heroCarousel
    L3_2 = L3_2.currentViewID
    L2_2 = L2_2[L3_2]
    L3_2 = L2_2
    L2_2 = L2_2.removeHero
    L2_2(L3_2)
    L2_2 = A0_2.heroCarousel
    L3_2 = L2_2
    L2_2 = L2_2.removeSelf
    L2_2(L3_2)
    A0_2.heroCarousel = nil
    L2_2 = A0_2.itemTypeCarousel
    L3_2 = L2_2
    L2_2 = L2_2.removeSelf
    L2_2(L3_2)
    A0_2.itemTypeCarousel = nil
    L3_2 = A0_2
    L2_2 = A0_2.clearTable
    L4_2 = A0_2.allItems
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2.clearTable
    L4_2 = A0_2.items
    L2_2(L3_2, L4_2)
  end
end

L16_1.hide = L18_1

function L18_1(A0_2, A1_2)
end

L16_1.destroy = L18_1
L19_1 = L16_1
L18_1 = L16_1.addEventListener
L20_1 = "create"
L21_1 = L16_1
L18_1(L19_1, L20_1, L21_1)
L19_1 = L16_1
L18_1 = L16_1.addEventListener
L20_1 = "show"
L21_1 = L16_1
L18_1(L19_1, L20_1, L21_1)
L19_1 = L16_1
L18_1 = L16_1.addEventListener
L20_1 = "hide"
L21_1 = L16_1
L18_1(L19_1, L20_1, L21_1)
L19_1 = L16_1
L18_1 = L16_1.addEventListener
L20_1 = "destroy"
L21_1 = L16_1
L18_1(L19_1, L20_1, L21_1)
return L16_1
