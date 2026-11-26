local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.SceneCreator"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Views.ShopView"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Language"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.TabBar"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "widget"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Tutorial.VerticalOverlayView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Utils.Analytics"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Tutorial.TutorialManager2"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Views.EffectsManager"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Components.TDButtonView"
L10_1 = L10_1(L11_1)
L11_1 = L1_1.newScene
L12_1 = "Shop"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Views.ActivityIndicatorView"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Views.ChatButton"
L13_1 = L13_1(L14_1)
L14_1 = require
L15_1 = "Views.AuctionView"
L14_1 = L14_1(L15_1)
L15_1 = require
L16_1 = "Models.Player"
L15_1 = L15_1(L16_1)
L16_1 = require
L17_1 = "Utils.SKComponents"
L16_1 = L16_1(L17_1)
L17_1 = nil
L18_1 = nil
L19_1 = nil
L20_1 = nil
L21_1 = nil
L22_1 = 0
L23_1 = nil
L24_1 = nil
L25_1 = nil
L26_1 = require
L27_1 = "Language"
L26_1 = L26_1(L27_1)
L11_1.shopState = nil

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = log3
  L2_2 = mainPlayer
  L2_2 = L2_2.depositsPurchaseToBank
  L1_2(L2_2)
  L1_2 = mainPlayer
  L1_2 = L1_2.depositsPurchaseToBank
  if L1_2 then
    L1_2 = mainPlayer
    L1_2 = L1_2.settings
    L1_2 = L1_2.isFirstSafePurchase
    if L1_2 == nil then
      L1_2 = L23_1
      if L1_2 == nil then
        L1_2 = display
        L1_2 = L1_2.newRect
        L2_2 = A0_2.view
        L3_2 = 0
        L4_2 = 0
        L5_2 = 570
        L6_2 = 360
        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
        A0_2.dimBackground = L1_2
        L1_2 = A0_2.dimBackground
        L2_2 = L1_2
        L1_2 = L1_2.setFillColor
        L3_2 = 0.11764705882352941
        L4_2 = 0.13333333333333333
        L5_2 = 0.0784313725490196
        L1_2(L2_2, L3_2, L4_2, L5_2)
        L1_2 = A0_2.dimBackground
        L2_2 = display
        L2_2 = L2_2.contentCenterX
        L1_2.x = L2_2
        L1_2 = A0_2.dimBackground
        L2_2 = display
        L2_2 = L2_2.contentCenterY
        L1_2.y = L2_2
        L1_2 = A0_2.dimBackground
        L1_2.alpha = 0.8
        L1_2 = A0_2.bar
        L2_2 = L1_2
        L1_2 = L1_2.selectButtonWithId
        L3_2 = 1
        L1_2(L2_2, L3_2)
        L1_2 = log3
        L2_2 = "mainPlayer.settings.isFirstSafePurchase"
        L3_2 = mainPlayer
        L3_2 = L3_2.settings
        L3_2 = L3_2.isFirstSafePurchase
        L1_2(L2_2, L3_2)
        L1_2 = log3
        L2_2 = "tutorialSequence"
        L3_2 = L23_1
        L1_2(L2_2, L3_2)
        L1_2 = {}
        L1_2.id = -1
        L1_2.type = "informative"
        L1_2.image = "Fig"
        L1_2.size = "semi"
        L1_2.dir = "left"
        L1_2.delay = 200
        L2_2 = {}
        L3_2 = L26_1
        L3_2 = L3_2["Fig says the advantage of gold purchase"]
        L2_2[1] = L3_2
        L1_2.text = L2_2
        L2_2 = L8_1
        L2_2 = L2_2.processInformativeTutorial
        L3_2 = L1_2
        
        function L4_2()
          local L0_3, L1_3, L2_3, L3_3
          L0_3 = mainPlayer
          L1_3 = L0_3
          L0_3 = L0_3.setSettingForKey
          L2_3 = "isFirstSafePurchase"
          L3_3 = false
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = A0_2
          L0_3 = L0_3.dimBackground
          L1_3 = L0_3
          L0_3 = L0_3.removeSelf
          L0_3(L1_3)
          L0_3 = A0_2
          L0_3.dimBackground = nil
          L0_3 = mainPlayer
          L1_3 = L0_3
          L0_3 = L0_3.saveSettings
          L0_3(L1_3)
        end
        
        L2_2(L3_2, L4_2)
      end
    end
  end
end

function L28_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = log3
  L1_2()
  L1_2 = L12_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = _LatestURLForSKComponent
  if L1_2 ~= nil then
    L1_2 = L16_1
    L1_2 = L1_2.webPurchaseCallback
    L2_2 = _LatestURLForSKComponent
    L3_2 = nil
    L1_2(L2_2, L3_2)
    L1_2 = nil
    _LatestURLForSKComponent = L1_2
  end
  L1_2 = L18_1
  if L1_2 then
    L1_2 = log3
    L2_2 = "gold shop isn't nil"
    L1_2(L2_2)
    L1_2 = L18_1
    L2_2 = L1_2
    L1_2 = L1_2.repaint
    L1_2(L2_2)
    L1_2 = mainPlayer
    L1_2 = L1_2.level
    L2_2 = Constants
    L2_2 = L2_2.UnlockLevel_Boosts
    if L1_2 >= L2_2 then
      L1_2 = L19_1
      L2_2 = L1_2
      L1_2 = L1_2.repaint
      L1_2(L2_2)
    end
    L1_2 = A0_2.scrollingToNectarPacks
    if L1_2 then
      L1_2 = L18_1
      L1_2 = L1_2.scroller
      if L1_2 then
        function L1_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
          
          L1_3 = pairs
          L2_3 = L18_1
          L2_3 = L2_3.items
          L1_3, L2_3, L3_3 = L1_3(L2_3)
          for L4_3, L5_3 in L1_3, L2_3, L3_3 do
            L6_3 = L5_3.isNectar
            if L6_3 then
              if L0_3 then
                if L4_3 < L0_3 then
                  L0_3 = L4_3
                end
              else
                L0_3 = L4_3
              end
            end
          end
          return L0_3
        end
        
        L2_2 = L1_2
        L2_2 = L2_2()
        if L2_2 then
          L3_2 = L18_1
          L3_2 = L3_2.itemsView
          L3_2 = L3_2[L2_2]
          if L3_2 then
            L3_2 = L18_1
            L3_2 = L3_2.scroller
            L4_2 = L3_2
            L3_2 = L3_2.scrollToPosition
            L5_2 = {}
            L6_2 = L18_1
            L6_2 = L6_2.itemsView
            L6_2 = L6_2[L2_2]
            L6_2 = L6_2.group
            L6_2 = L6_2.x
            L6_2 = -L6_2
            L5_2.x = L6_2
            L5_2.time = 800
            L3_2(L4_2, L5_2)
          end
        end
      end
    else
      L1_2 = L18_1
      L1_2 = L1_2.scroller
      L2_2 = L1_2
      L1_2 = L1_2.scrollToPosition
      L3_2 = {}
      L3_2.x = 0
      L1_2(L2_2, L3_2)
    end
  end
end

L11_1.didFinishGoldPackLoading = L28_1

function L28_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L12_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = print
  L2_2 = "Shop: errorMessage is "
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = L18_1
  if L1_2 then
    L1_2 = log3
    L2_2 = "gold shop isn't nil"
    L1_2(L2_2)
    L1_2 = L18_1
    L2_2 = L1_2
    L1_2 = L1_2.repaint
    L1_2(L2_2)
  end
  L1_2 = showSimpleDialog
  L2_2 = "Get Shop Items"
  L3_2 = A0_2
  L4_2 = nil
  
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = log3
    L1_3 = "scene is:"
    L2_3 = L11_1
    L0_3(L1_3, L2_3)
    L0_3 = log3
    L1_3 = "scene bar is:"
    L2_3 = L11_1
    L2_3 = L2_3.bar
    L0_3(L1_3, L2_3)
    L0_3 = L11_1
    L0_3 = L0_3.bar
    L1_3 = L0_3
    L0_3 = L0_3.setEnableButtons
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

failedToGoldPackLoad = L28_1

function L28_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = log3
  L2_2 = "Did finish shop item loading"
  L1_2(L2_2)
  L1_2 = L12_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  L17_1 = L1_2
  L1_2 = L11_1
  L2_2 = L17_1
  L1_2.packShop = L2_2
  L1_2 = L17_1
  if L1_2 then
    L1_2 = L17_1
    L2_2 = L1_2
    L1_2 = L1_2.updateHeroCardPackPrice
    L1_2(L2_2)
  end
  L1_2 = mainPlayer
  L1_2 = L1_2.level
  L2_2 = Constants
  L2_2 = L2_2.UnlockLevel_Boosts
  if L1_2 >= L2_2 then
    L1_2 = L2_1
    L2_2 = L1_2
    L1_2 = L1_2.new
    L3_2 = 3
    L1_2 = L1_2(L2_2, L3_2)
    L19_1 = L1_2
  end
  
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = A0_3.limitReached
    if L1_3 then
      L1_3 = "gold"
      L2_3 = A0_3.direction
      if L2_3 == "left" then
        L1_3 = "nectar"
      end
      L2_3 = L21_1
      L2_3 = L2_3.hudGold
      L3_3 = L2_3
      L2_3 = L2_3.changeCurrencyTo
      L4_3 = L1_3
      L5_3 = true
      L2_3(L3_3, L4_3, L5_3)
    end
  end
  
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = 2
  L5_2 = nil
  L6_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L18_1 = L2_2
  L2_2 = L18_1
  L3_2 = A0_2.delegate
  L2_2.delegate = L3_2
  L2_2 = L18_1
  A0_2.goldShop = L2_2
  L2_2 = L14_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = L21_1
  L2_2 = L2_2(L3_2, L4_2)
  L20_1 = L2_2
  L2_2 = mainPlayer
  L2_2 = L2_2.level
  L3_2 = Constants
  L3_2 = L3_2.UnlockLevel_Boosts
  if L2_2 >= L3_2 then
    L2_2 = L21_1
    L3_2 = L2_2
    L2_2 = L2_2.setButtonsView
    L4_2 = {}
    L5_2 = L18_1
    L6_2 = L17_1
    L7_2 = L20_1
    L8_2 = L19_1
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L4_2[4] = L8_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = L21_1
    L3_2 = L2_2
    L2_2 = L2_2.setButtonsView
    L4_2 = {}
    L5_2 = L18_1
    L6_2 = L17_1
    L7_2 = L20_1
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = L21_1
  L3_2 = L2_2
  L2_2 = L2_2.setPosition
  L4_2 = 0
  L5_2 = 0
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L21_1
  A0_2.bar = L2_2
  L2_2 = L2_1
  L3_2 = L21_1
  L2_2.tabbar = L3_2
  L2_2 = A0_2.bar
  L3_2 = L2_2
  L2_2 = L2_2.setEnableButtons
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.bar
  L3_2 = L2_2
  L2_2 = L2_2.selectButtonWithId
  L4_2 = A0_2.bar
  L4_2 = L4_2.selectedTab
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.bar
  L3_2 = L2_2
  L2_2 = L2_2.setNectar
  L4_2 = mainPlayer
  L4_2 = L4_2.nectar
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.bar
  L3_2 = L2_2
  L2_2 = L2_2.updateGold
  L2_2(L3_2)
  L2_2 = L23_1
  if L2_2 == "shop" then
    L3_2 = A0_2
    L2_2 = A0_2.pointAtPack
    L2_2(L3_2)
  end
end

L11_1.didFinishShopItemLoading = L28_1

function L28_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L12_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = log3
  L2_2 = "errorMessage is :"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = showSimpleDialog
  L2_2 = "Get Shop Items"
  L3_2 = A0_2
  L4_2 = nil
  
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.gotoScene
    L1_3 = "Scenes.Loading"
    L0_3(L1_3)
    L0_3 = L15_1
    L1_3 = L0_1
    L1_3 = L1_3.getScene
    L2_3 = "Scenes.Loading"
    L1_3 = L1_3(L2_3)
    L0_3.delegate = L1_3
    L0_3 = L15_1
    L0_3 = L0_3.loadPlayer
    L0_3()
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L11_1
  L1_2 = L1_2.bar
  L2_2 = L1_2
  L1_2 = L1_2.setEnableButtons
  L3_2 = true
  L1_2(L2_2, L3_2)
end

failedToShopItemLoad = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = log3
  L3_2 = "create scene"
  L2_2(L3_2)
  L2_2 = A0_2.view
  L3_2 = A1_2.params
  if L3_2 ~= nil then
    L3_2 = log3
    L4_2 = "!!!scene:createScene!!! DELEGATE"
    L3_2(L4_2)
    L3_2 = A1_2.params
    L3_2 = L3_2.delegate
    A0_2.delegate = L3_2
    L3_2 = log3
    L4_2 = A0_2.delegate
    L3_2(L4_2)
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
  L5_2 = L2_2
  L4_2 = L2_2.insert
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = mainPlayer
  L4_2 = L4_2.level
  L5_2 = Constants
  L5_2 = L5_2.UnlockLevel_Boosts
  if L4_2 >= L5_2 then
    L4_2 = L4_1
    L5_2 = L4_2
    L4_2 = L4_2.new
    L6_2 = {}
    L7_2 = L26_1
    L7_2 = L7_2.Shop
    L8_2 = L26_1
    L8_2 = L8_2["Card Packs"]
    L9_2 = L26_1
    L9_2 = L9_2["Auction House"]
    L10_2 = L26_1
    L10_2 = L10_2["Boosts Packs"]
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L6_2[3] = L9_2
    L6_2[4] = L10_2
    L7_2 = {}
    L7_2.previousScene = "Scenes.Home"
    L7_2.showsPlayerGold = true
    L7_2.hasNectar = true
    L8_2 = "shop"
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L21_1 = L4_2
  else
    L4_2 = L4_1
    L5_2 = L4_2
    L4_2 = L4_2.new
    L6_2 = {}
    L7_2 = L26_1
    L7_2 = L7_2.Shop
    L8_2 = L26_1
    L8_2 = L8_2["Card Packs"]
    L9_2 = L26_1
    L9_2 = L9_2["Auction House"]
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L6_2[3] = L9_2
    L7_2 = {}
    L7_2.previousScene = "Scenes.Home"
    L7_2.showsPlayerGold = true
    L7_2.hasNectar = true
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L21_1 = L4_2
  end
  L4_2 = A0_2.view
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = L21_1
  L6_2 = L6_2.view
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.didFinishShopItemLoading
  L4_2(L5_2)
  L4_2 = L10_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Navbar/FC-navbar-help.png"
  L7_2 = L7_2 .. L8_2
  L6_2.defaultFile = L7_2
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Navbar/FC-navbar-help.png"
  L7_2 = L7_2 .. L8_2
  L6_2.default = L7_2
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Navbar/FC-navbar-help-pressed.png"
  L7_2 = L7_2 .. L8_2
  L6_2.overFile = L7_2
  L6_2.width = 34
  L6_2.height = 34
  
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L0_3 = L0_3.bar
    L0_3 = L0_3.selectedTab
    if L0_3 == 1 then
      L0_3 = L0_1
      L0_3 = L0_3.gotoScene
      L1_3 = "Scenes.HelpScene"
      L2_3 = {}
      L3_3 = {}
      L3_3.helpId = 10
      L3_3.previousScene = "Scenes.Shop"
      L2_3.params = L3_3
      L0_3(L1_3, L2_3)
    else
      L0_3 = A0_2
      L0_3 = L0_3.bar
      L0_3 = L0_3.selectedTab
      if L0_3 == 2 then
        L0_3 = L0_1
        L0_3 = L0_3.gotoScene
        L1_3 = "Scenes.HelpScene"
        L2_3 = {}
        L3_3 = {}
        L3_3.helpId = 11
        L3_3.previousScene = "Scenes.Shop"
        L2_3.params = L3_3
        L0_3(L1_3, L2_3)
      else
        L0_3 = A0_2
        L0_3 = L0_3.bar
        L0_3 = L0_3.selectedTab
        if L0_3 == 3 then
          L0_3 = L0_1
          L0_3 = L0_3.gotoScene
          L1_3 = "Scenes.HelpScene"
          L2_3 = {}
          L3_3 = {}
          L3_3.helpId = 12
          L3_3.previousScene = "Scenes.Shop"
          L2_3.params = L3_3
          L0_3(L1_3, L2_3)
        else
          L0_3 = L0_1
          L0_3 = L0_3.gotoScene
          L1_3 = "Scenes.HelpScene"
          L2_3 = {}
          L3_3 = {}
          L3_3.helpId = 12
          L3_3.previousScene = "Scenes.Shop"
          L2_3.params = L3_3
          L0_3(L1_3, L2_3)
        end
      end
    end
  end
  
  L6_2.onRelease = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.helpButton = L4_2
  L4_2 = A0_2.helpButton
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 - 14
  L4_2.x = L5_2
  L4_2 = A0_2.helpButton
  L5_2 = display
  L5_2 = L5_2.contentHeight
  L5_2 = L5_2 - 14
  L4_2.y = L5_2
  L4_2 = A0_2.helpButton
  L4_2.isVisible = false
  A0_2.isNeededToCallConsumableRepaint = true
end

L11_1.create = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = log3
  L3_2 = "enter scene"
  L2_2(L3_2)
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = L7_1
    L4_2 = L4_2.logEvent
    L5_2 = "Shop Scene Shown"
    L4_2(L5_2)
    L4_2 = L13_1
    L4_2 = L4_2.newOnScene
    L5_2 = A0_2
    L4_2(L5_2)
    L4_2 = system
    L4_2 = L4_2.getInfo
    L5_2 = "platformName"
    L4_2 = L4_2(L5_2)
    if L4_2 == "iPhone OS" then
      L4_2 = todNative
      L4_2 = L4_2.initSwizzle
      L4_2()
    end
    L4_2 = A0_2.bar
    if L4_2 ~= nil then
      L4_2 = A0_2.bar
      L5_2 = L4_2
      L4_2 = L4_2.setEnableButtons
      L6_2 = true
      L4_2(L5_2, L6_2)
    end
    L4_2 = A1_2.params
    if L4_2 ~= nil then
      L4_2 = A0_2.bar
      if L4_2 ~= nil then
        L4_2 = A1_2.params
        L4_2 = L4_2.selectedTab
        if L4_2 ~= nil then
          L4_2 = log3
          L5_2 = " selectedTab is : "
          L6_2 = A1_2.params
          L6_2 = L6_2.selectedTab
          L4_2(L5_2, L6_2)
          L4_2 = A0_2.bar
          L5_2 = L4_2
          L4_2 = L4_2.selectButtonWithId
          L6_2 = A1_2.params
          L6_2 = L6_2.selectedTab
          L4_2(L5_2, L6_2)
        end
      end
    else
      L4_2 = A0_2.bar
      if L4_2 ~= nil then
        L4_2 = A0_2.bar
        L5_2 = L4_2
        L4_2 = L4_2.selectButtonWithId
        L6_2 = A0_2.bar
        L6_2 = L6_2.selectedTab
        L4_2(L5_2, L6_2)
      end
    end
    L4_2 = A1_2.params
    if L4_2 then
      L4_2 = A1_2.params
      L4_2 = L4_2.scrollingToNectarPacks
      if L4_2 then
        L4_2 = A1_2.params
        L4_2 = L4_2.scrollingToNectarPacks
        A0_2.scrollingToNectarPacks = L4_2
    end
    else
      A0_2.scrollingToNectarPacks = false
    end
    L4_2 = L12_1
    L4_2 = L4_2.show
    L5_2 = L26_1
    L5_2 = L5_2["Get Shop Items"]
    L4_2(L5_2)
    L4_2 = L16_1
    L4_2 = L4_2.loadProductData
    
    function L5_2()
      local L0_3, L1_3
      L0_3 = print
      L1_3 = "Shop: Finished loading IAP products"
      L0_3(L1_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.didFinishGoldPackLoading
      L0_3(L1_3)
    end
    
    L6_2 = failedToGoldPackLoad
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.bar
    if L4_2 ~= nil then
      L4_2 = A0_2.bar
      L5_2 = L4_2
      L4_2 = L4_2.setNectar
      L6_2 = mainPlayer
      L6_2 = L6_2.nectar
      L4_2(L5_2, L6_2)
      L4_2 = A0_2.bar
      L5_2 = L4_2
      L4_2 = L4_2.updateGold
      L4_2(L5_2)
    end
    L4_2 = L17_1
    if L4_2 then
      L4_2 = L17_1
      L5_2 = L4_2
      L4_2 = L4_2.updateHeroCardPackPrice
      L4_2(L5_2)
    end
    L4_2 = nil
    L23_1 = L4_2
    L4_2 = L8_1
    L4_2 = L4_2.checkForTutorial
    L5_2 = "Scenes.Shop"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
    L4_2 = A1_2.params
    if L4_2 then
      L4_2 = A1_2.params
      L4_2 = L4_2.isTutorial
      if L4_2 then
        L5_2 = A0_2
        L4_2 = A0_2.setupForTutorial
        L4_2(L5_2)
    end
    else
      L5_2 = A0_2
      L4_2 = A0_2.cleanUpTutorialChanges
      L4_2(L5_2)
    end
    L4_2 = L27_1
    L5_2 = A0_2
    L4_2(L5_2)
    L4_2 = mainPlayer
    L4_2 = L4_2.heroSet
    if not L4_2 then
      L4_2 = mainPlayer
      L4_2 = L4_2.settings
      L4_2 = L4_2.sawHeroTutorialOfShopScene
      if L4_2 ~= true then
        L4_2 = mainPlayer
        L4_2 = L4_2.heroTutorialAtLevelFour
        if L4_2 ~= true then
          L5_2 = A0_2
          L4_2 = A0_2.pointAtHeroPack
          L4_2(L5_2)
      end
    end
    else
      L4_2 = mainPlayer
      L4_2 = L4_2.level
      if L4_2 < 4 then
        L4_2 = L17_1
        L4_2 = L4_2.itemsView
        L4_2 = L4_2[8]
        L5_2 = L4_2
        L4_2 = L4_2.disableItem
        L4_2(L5_2)
      else
        L4_2 = mainPlayer
        L4_2 = L4_2.level
        if 4 <= L4_2 then
          L4_2 = L17_1
          L4_2 = L4_2.itemsView
          L4_2 = L4_2[8]
          L5_2 = L4_2
          L4_2 = L4_2.enableItem
          L4_2(L5_2)
        end
      end
    end
  end
end

L11_1.show = L28_1

function L28_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = "shop"
  L23_1 = L1_2
  L1_2 = nil
  _backAction = L1_2
  L1_2 = L13_1
  L1_2 = L1_2.removeFromScene
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2.bar
  if L1_2 == nil then
    L1_2 = L21_1
  end
  L2_2 = L21_1
  L3_2 = L2_2
  L2_2 = L2_2.setBarButtonsVisibility
  L4_2 = false
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end

L11_1.setupForTutorial = L28_1

function L28_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L23_1 = L1_2
  L1_2 = A0_2.bar
  if L1_2 == nil then
    L1_2 = L21_1
  end
  L2_2 = L21_1
  L3_2 = L2_2
  L2_2 = L2_2.setBarButtonsVisibility
  L4_2 = true
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end

L11_1.cleanUpTutorialChanges = L28_1

function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = pairs
  L1_2 = L17_1
  L1_2 = L1_2.itemsView
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L6_2 = L4_2
    L5_2 = L4_2.enableItem
    L5_2(L6_2)
  end
end

function L29_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L17_1
  L1_2 = L1_2.itemsView
  L1_2 = #L1_2
  L2_2 = L1_2 - 2
  L3_2 = L17_1
  L3_2 = L3_2.scroller
  L4_2 = L3_2
  L3_2 = L3_2.scrollToPosition
  L5_2 = {}
  L6_2 = L17_1
  L6_2 = L6_2.itemsView
  L6_2 = L6_2[L2_2]
  L6_2 = L6_2.group
  L6_2 = L6_2.x
  L6_2 = -L6_2
  L5_2.x = L6_2
  L5_2.time = 2000
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L17_1
    L1_3 = L0_3
    L0_3 = L0_3.pointAtPack
    L2_3 = 32
    L3_3 = L28_1
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L5_2.onComplete = L6_2
  L3_2(L4_2, L5_2)
end

L11_1.pointAtHeroPack = L29_1

function L29_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L24_1 = A2_2
  L25_1 = A1_2
  L3_2 = L17_1
  if L3_2 then
    L3_2 = L17_1
    L4_2 = L3_2
    L3_2 = L3_2.pointAtPack
    L5_2 = A1_2.packId
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = nil
    L24_1 = L3_2
    L3_2 = nil
    L25_1 = L3_2
  end
end

L11_1.pointAtPack = L29_1

function L29_1(A0_2)
  local L1_2, L2_2
  L1_2 = L11_1
  L1_2 = L1_2.bar
  if L1_2 == nil then
    L1_2 = L21_1
  end
  L2_2 = L21_1
  L2_2 = L2_2.view
  L2_2.isVisible = true
end

L11_1.clearUpAfterTutorial = L29_1

function L29_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.view
end

L11_1.hide = L29_1

function L29_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.view
  L3_2 = L13_1
  L3_2 = L3_2.removeFromScene
  L4_2 = L11_1
  L3_2(L4_2)
end

L11_1.destroy = L29_1
L30_1 = L11_1
L29_1 = L11_1.addEventListener
L31_1 = "create"
L32_1 = L11_1
L29_1(L30_1, L31_1, L32_1)
L30_1 = L11_1
L29_1 = L11_1.addEventListener
L31_1 = "show"
L32_1 = L11_1
L29_1(L30_1, L31_1, L32_1)
L30_1 = L11_1
L29_1 = L11_1.addEventListener
L31_1 = "hide"
L32_1 = L11_1
L29_1(L30_1, L31_1, L32_1)
L30_1 = L11_1
L29_1 = L11_1.addEventListener
L31_1 = "destroy"
L32_1 = L11_1
L29_1(L30_1, L31_1, L32_1)
return L11_1
