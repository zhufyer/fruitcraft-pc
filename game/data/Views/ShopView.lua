local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Views.ShopItemView"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Views.BundleShopItemView"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Models.ShopItem"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Language"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "widget"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.ActivityIndicatorView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Utils.SKComponents"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Models.Player"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Models.AchievementManager"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Data.BaseShopItems"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Tutorial.HorizontalOverlayView"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Views.EffectsManager"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Tutorial.TutorialManager"
L13_1 = L13_1(L14_1)
L14_1 = require
L15_1 = "Data.Avatars"
L14_1 = L14_1(L15_1)
L15_1 = require
L16_1 = "json"
L15_1 = L15_1(L16_1)
L16_1 = {}
L17_1 = {}
L18_1 = nil
L19_1 = nil
L20_1 = nil
L21_1 = {}
L22_1 = audio
L22_1 = L22_1.loadSound
L23_1 = Constants
L23_1 = L23_1.Path_Assets
L24_1 = "Audio/FC-buyGold.wav"
L23_1 = L23_1 .. L24_1
L22_1 = L22_1(L23_1)

function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = log3
  L2_2()
  L2_2 = {}
  L3_2 = {}
  L4_2 = {}
  L5_2 = {}
  L6_2 = {}
  L7_2 = {}
  L8_2 = {}
  L9_2 = {}
  if A1_2 ~= nil then
    L10_2 = pairs
    L11_2 = A1_2
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    for L13_2, L14_2 in L10_2, L11_2, L12_2 do
      L15_2 = L14_2.baseCurrencyAmount
      if L15_2 then
        L15_2 = L14_2.product_uid
        L16_2 = L14_2.baseCurrencyAmount
        L6_2[L15_2] = L16_2
      end
      L15_2 = L14_2.currencyToPriceRatio
      if L15_2 then
        L15_2 = L14_2.product_uid
        L16_2 = L14_2.currencyToPriceRatio
        L7_2[L15_2] = L16_2
      end
      L15_2 = L14_2.product_uid
      if not L15_2 then
        L15_2 = L14_2.name
        L14_2.product_uid = L15_2
        L15_2 = L14_2.product_uid
        L16_2 = L14_2.priceNumber
        L4_2[L15_2] = L16_2
      else
        L15_2 = L14_2.product_uid
        L16_2 = L14_2.givesAvatar
        L9_2[L15_2] = L16_2
      end
      L15_2 = L14_2.product_uid
      L16_2 = L14_2.localPrice
      L3_2[L15_2] = L16_2
      L15_2 = L14_2.sale
      if L15_2 then
        L15_2 = L14_2.product_uid
        L16_2 = L14_2.sale
        L5_2[L15_2] = L16_2
      end
      L15_2 = L14_2.popularityStatus
      if L15_2 then
        L15_2 = L14_2.product_uid
        L16_2 = L14_2.popularityStatus
        L8_2[L15_2] = L16_2
      end
    end
  end
  L10_2 = ipairs
  L11_2 = L10_1
  L10_2, L11_2, L12_2 = L10_2(L11_2)
  for L13_2, L14_2 in L10_2, L11_2, L12_2 do
    L15_2 = L14_2.UID
    L15_2 = L6_2[L15_2]
    if L15_2 then
      L15_2 = L14_2.UID
      L15_2 = L6_2[L15_2]
      L14_2.baseCurrencyAmount = L15_2
    end
    L15_2 = L14_2.UID
    L15_2 = L7_2[L15_2]
    if L15_2 then
      L15_2 = L14_2.UID
      L15_2 = L7_2[L15_2]
      L14_2.currencyToPriceRatio = L15_2
    end
    L15_2 = L14_2.UID
    L15_2 = L3_2[L15_2]
    if not L15_2 then
      L15_2 = L14_2.price
      if not L15_2 then
        L15_2 = "0"
      end
    end
    L14_2.localPrice = L15_2
    L15_2 = L14_2.UID
    L15_2 = L4_2[L15_2]
    if not L15_2 then
      L15_2 = L14_2.priceNumber
      if not L15_2 then
        L15_2 = 0
      end
    end
    L14_2.priceNumber = L15_2
    L15_2 = L14_2.UID
    L15_2 = L5_2[L15_2]
    L14_2.sale = L15_2
    L15_2 = L14_2.UID
    L15_2 = L8_2[L15_2]
    if L15_2 then
      L15_2 = L14_2.UID
      L15_2 = L8_2[L15_2]
      L14_2.popularityStatus = L15_2
    end
    L15_2 = L14_2.UID
    L15_2 = L9_2[L15_2]
    L14_2.givesAvatar = L15_2
  end
  if A1_2 == nil then
    A0_2.listIsEmpty = true
  else
    A0_2.listIsEmpty = false
  end
  L11_2 = A0_2
  L10_2 = A0_2.generateItems
  L10_2(L11_2)
  L10_2 = A0_2.view
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = A0_2.scroller
  L10_2(L11_2, L12_2)
end

getProductList = L23_1

function L23_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = log3
  L5_2 = "Success to buy item"
  L4_2(L5_2)
  L4_2 = L6_1
  L4_2 = L4_2.hide
  L4_2()
  if A1_2 then
    L4_2 = pairs
    L5_2 = A1_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = mainPlayer
      L9_2 = L9_2.isSeenCardWithId
      L10_2 = L8_2.baseId
      L9_2 = L9_2(L10_2)
      if not L9_2 then
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = mainPlayer
        L10_2 = L10_2.collection
        L11_2 = L8_2.baseId
        L9_2(L10_2, L11_2)
      end
    end
  end
  L4_2 = log3
  L5_2 = "collection cards is : "
  L6_2 = L15_1
  L6_2 = L6_2.encode
  L7_2 = mainPlayer
  L7_2 = L7_2.collection
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = L9_1
  L4_2 = L4_2.checkColletionAchievements
  L4_2()
  L4_2 = L9_1
  L4_2 = L4_2.checkSecretAchievements
  L4_2()
  if A0_2 then
    L4_2 = A0_2.id
    if L4_2 == 5 then
      L4_2 = L0_1
      L4_2 = L4_2.gotoScene
      L5_2 = "Scenes.ReceivedScene"
      L6_2 = {}
      L7_2 = {}
      L7_2.type = "cards"
      L7_2.items = A1_2
      L7_2.shopItem = A0_2
      L6_2.params = L7_2
      L4_2(L5_2, L6_2)
    else
      L4_2 = A0_2.id
      if L4_2 == 32 then
        if A3_2 then
          L4_2 = L0_1
          L4_2 = L4_2.gotoScene
          L5_2 = "Scenes.ShopAnimationScene"
          L6_2 = {}
          L7_2 = {}
          L7_2.type = "heroes"
          L7_2.items = A3_2
          L7_2.shopItem = A0_2
          L6_2.params = L7_2
          L4_2(L5_2, L6_2)
        end
      else
        L4_2 = L0_1
        L4_2 = L4_2.gotoScene
        L5_2 = "Scenes.ShopAnimationScene"
        L6_2 = {}
        L7_2 = {}
        L7_2.type = "cards"
        L7_2.items = A1_2
        L7_2.shopItem = A0_2
        L8_2 = A2_2.tutorialMode
        L7_2.isTutorial = L8_2
        L6_2.params = L7_2
        L4_2(L5_2, L6_2)
      end
    end
  end
  L4_2 = A2_2.tutorialMode
  if L4_2 then
    L4_2 = A2_2.tutorialCallback
    if L4_2 then
      L4_2 = A2_2.tutorialCallback
      L4_2()
      L5_2 = A2_2
      L4_2 = A2_2.clearTutorialActions
      L4_2(L5_2)
    end
  end
  L4_2 = tabbar
  L5_2 = L4_2
  L4_2 = L4_2.updateGold
  L4_2(L5_2)
  L4_2 = tabbar
  L5_2 = L4_2
  L4_2 = L4_2.setNectar
  L6_2 = mainPlayer
  L6_2 = L6_2.nectar
  L4_2(L5_2, L6_2)
end

successToBuyItem = L23_1

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L6_1
  L1_2 = L1_2.hideAll
  L1_2()
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L14_1
    L6_2 = L6_2.getAvatarByID
    L7_2 = L5_2
    L6_2(L7_2)
  end
  L1_2 = L0_1
  L1_2 = L1_2.gotoScene
  L2_2 = "Scenes.ShopAnimationScene"
  L3_2 = {}
  L4_2 = {}
  L4_2.type = "avatar"
  L4_2.items = A0_2
  L5_2 = {}
  L5_2.empty = "empty"
  L4_2.shopItem = L5_2
  L3_2.params = L4_2
  L1_2(L2_2, L3_2)
end

successToBuyAvatar = L23_1

function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L6_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = tabbar
  L3_2 = L2_2
  L2_2 = L2_2.updateGold
  L2_2(L3_2)
  L2_2 = tabbar
  L3_2 = L2_2
  L2_2 = L2_2.setNectar
  L4_2 = mainPlayer
  L4_2 = L4_2.nectar
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = updatePrices
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

successToBuyBoost = L23_1

function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L6_1
  L2_2 = L2_2.hideAll
  L2_2()
  if A1_2 == "Network error" then
    L2_2 = showSimpleDialog
    L3_2 = "Shop"
    L4_2 = A1_2
    L5_2 = "Reload"
    
    function L6_2()
      local L0_3, L1_3, L2_3
      L0_3 = L0_1
      L0_3 = L0_3.gotoScene
      L1_3 = "Scenes.Loading"
      L0_3(L1_3)
      L0_3 = L8_1
      L1_3 = L0_1
      L1_3 = L1_3.getScene
      L2_3 = "Scenes.Loading"
      L1_3 = L1_3(L2_3)
      L0_3.delegate = L1_3
      L0_3 = L8_1
      L0_3 = L0_3.loadPlayer
      L0_3()
    end
    
    L2_2(L3_2, L4_2, L5_2, L6_2)
  elseif A1_2 ~= nil then
    if A1_2 == "Market Issue" then
      L2_2 = showSimpleDialog
      L3_2 = "Purchase"
      L4_2 = L4_1
      L4_2 = L4_2.localizedString
      L5_2 = "Please Install"
      L6_2 = {}
      L7_2 = L4_1
      L8_2 = _storeType
      L7_2 = L7_2[L8_2]
      L6_2.market = L7_2
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = "Cancel"
      L6_2 = nil
      L7_2 = "Continue"
      
      function L8_2()
        local L0_3, L1_3
        L0_3 = system
        L0_3 = L0_3.openURL
        L1_3 = Constants
        L1_3 = L1_3.marketURL
        L1_3 = L1_3()
        L0_3(L1_3)
      end
      
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    else
      L2_2 = showSimpleDialog
      L3_2 = "Purchase"
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end

failedToBuyItem = L23_1

function L23_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = log3
  L4_2 = "!!!!!!!!!!!!!!!!did purchase in shop view"
  L3_2(L4_2)
  L3_2 = L6_1
  L3_2 = L3_2.hideAll
  L3_2()
  L3_2 = mainPlayer
  L3_2 = L3_2.settings
  L3_2 = L3_2.bgMusicEnabled
  if L3_2 ~= nil then
    L3_2 = mainPlayer
    L3_2 = L3_2.settings
    L3_2 = L3_2.bgMusicEnabled
    if L3_2 ~= true then
      goto lbl_21
    end
  end
  L3_2 = audio
  L3_2 = L3_2.play
  L4_2 = L22_1
  L3_2(L4_2)
  ::lbl_21::
  if A2_2 then
    L3_2 = tabbar
    L4_2 = L3_2
    L3_2 = L3_2.updateGold
    L3_2(L4_2)
    L3_2 = tabbar
    L4_2 = L3_2
    L3_2 = L3_2.setNectar
    L5_2 = mainPlayer
    L5_2 = L5_2.nectar
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = tabbar
    L4_2 = L3_2
    L3_2 = L3_2.setNectar
    L5_2 = mainPlayer
    L5_2 = L5_2.nectar
    L3_2(L4_2, L5_2)
    L3_2 = tabbar
    L4_2 = L3_2
    L3_2 = L3_2.updateGold
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
end

didPurchaseItemWithId = L23_1

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L0_1
  L1_2 = L1_2.getScene
  L2_2 = "Scenes.Shop"
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.mode
  if L2_2 == 3 then
    L2_2 = L1_2.isNeededToCallConsumableRepaint
    if L2_2 == false then
      return
    end
  end
  L2_2 = log3
  L3_2 = "!!!!!!!!!!REPAINT!!!!!!!!!!!!!!!"
  L2_2(L3_2)
  L2_2 = pairs
  L3_2 = A0_2.itemsView
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.destroy
    if L7_2 then
      L8_2 = L6_2
      L7_2 = L6_2.destroy
      L7_2(L8_2)
    else
      L7_2 = display
      L7_2 = L7_2.remove
      L8_2 = L6_2.group
      L7_2(L8_2)
    end
    L7_2 = A0_2.itemsView
    L7_2[L5_2] = nil
  end
  L2_2 = pairs
  L3_2 = A0_2.items
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L6_2 = nil
  end
  L2_2 = A0_2.mode
  if L2_2 == 2 then
    L3_2 = A0_2
    L2_2 = A0_2.getProductList
    L4_2 = L7_1
    L4_2 = L4_2.productList
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2.mode
    if L2_2 == 3 then
      L1_2.isNeededToCallConsumableRepaint = false
      L3_2 = A0_2
      L2_2 = A0_2.getProductList
      L4_2 = L7_1
      L4_2 = L4_2.productList
      L2_2(L3_2, L4_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2.generateItems
      L2_2(L3_2)
    end
  end
end

repaint = L23_1

function L23_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "Shop/FC-shop-divider@2x.png"
  L5_2 = L5_2 .. L6_2
  L6_2 = 30
  L7_2 = 200
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L4_2.x = 0
  L4_2.y = 0
  L6_2 = L3_2
  L5_2 = L3_2.insert
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = A1_2
  L7_2 = 0
  L8_2 = 0
  L9_2 = Constants
  L9_2 = L9_2.fontForTitle
  L9_2 = L9_2()
  L10_2 = 12
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L7_2 = L5_2
  L6_2 = L5_2.setFillColor
  L8_2 = 1
  L9_2 = 1
  L10_2 = 1
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L5_2.rotation = -90
  L7_2 = L3_2
  L6_2 = L3_2.insert
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A2_2 + 20
  L3_2.x = L6_2
  L3_2.y = 120
  return L3_2
end

createSectionDivider = L23_1

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = 12
  L2_2 = 140
  L3_2 = 0
  L4_2 = 0
  L5_2 = A0_2.mode
  if L5_2 == 2 then
    L5_2 = mainPlayer
    L5_2 = L5_2.bundles
    if L5_2 then
      L5_2 = pairs
      L6_2 = mainPlayer
      L6_2 = L6_2.bundles
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      for L8_2, L9_2 in L5_2, L6_2, L7_2 do
        L10_2 = L9_2.endTime
        if L10_2 then
          L10_2 = L9_2.endTime
          L11_2 = os
          L11_2 = L11_2.time
          L11_2 = L11_2()
          if L10_2 > L11_2 then
            L10_2 = L9_2.packageType
            if L10_2 ~= 4 then
              if L3_2 == 0 then
                L11_2 = A0_2
                L10_2 = A0_2.createSectionDivider
                L12_2 = L4_1
                L12_2 = L12_2["Special Pack"]
                if not L12_2 then
                  L12_2 = "\216\168\216\179\216\170\217\135 \217\136\219\140\218\152\217\135"
                end
                L13_2 = L1_2
                L10_2 = L10_2(L11_2, L12_2, L13_2)
                L11_2 = table
                L11_2 = L11_2.insert
                L12_2 = A0_2.otherObjects
                L13_2 = L10_2
                L11_2(L12_2, L13_2)
                L11_2 = A0_2.scroller
                L12_2 = L11_2
                L11_2 = L11_2.insert
                L13_2 = L10_2
                L11_2(L12_2, L13_2)
                L11_2 = L1_2 + 40
                L1_2 = L11_2 + 20
              end
              L10_2 = L2_1
              L11_2 = L10_2
              L10_2 = L10_2.new
              L12_2 = L9_2
              L10_2 = L10_2(L11_2, L12_2)
              L11_2 = table
              L11_2 = L11_2.insert
              L12_2 = A0_2.items
              L13_2 = L10_2
              L11_2(L12_2, L13_2)
              L11_2 = table
              L11_2 = L11_2.insert
              L12_2 = A0_2.itemsView
              L13_2 = L10_2
              L11_2(L12_2, L13_2)
              L12_2 = L10_2
              L11_2 = L10_2.setPosition
              L13_2 = L1_2
              L14_2 = 5
              L11_2(L12_2, L13_2, L14_2)
              L11_2 = A0_2.scroller
              L12_2 = L11_2
              L11_2 = L11_2.insert
              L13_2 = L10_2.group
              L11_2(L12_2, L13_2)
              L1_2 = L1_2 + L2_2
              L3_2 = L3_2 + 1
            end
          end
        end
      end
      L5_2 = pairs
      L6_2 = mainPlayer
      L6_2 = L6_2.bundles
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      for L8_2, L9_2 in L5_2, L6_2, L7_2 do
        L10_2 = L9_2.endTime
        if L10_2 then
          L10_2 = L9_2.endTime
          L11_2 = os
          L11_2 = L11_2.time
          L11_2 = L11_2()
          if L10_2 > L11_2 then
            L10_2 = L9_2.packageType
            if L10_2 == 4 then
              if L4_2 == 0 then
                L11_2 = A0_2
                L10_2 = A0_2.createSectionDivider
                L12_2 = L4_1
                L12_2 = L12_2["Avatars Pack"]
                L13_2 = L1_2
                L10_2 = L10_2(L11_2, L12_2, L13_2)
                L11_2 = table
                L11_2 = L11_2.insert
                L12_2 = A0_2.otherObjects
                L13_2 = L10_2
                L11_2(L12_2, L13_2)
                L11_2 = A0_2.scroller
                L12_2 = L11_2
                L11_2 = L11_2.insert
                L13_2 = L10_2
                L11_2(L12_2, L13_2)
                L11_2 = L1_2 + 40
                L1_2 = L11_2 + 20
              end
              L10_2 = L2_1
              L11_2 = L10_2
              L10_2 = L10_2.new
              L12_2 = L9_2
              L10_2 = L10_2(L11_2, L12_2)
              L11_2 = table
              L11_2 = L11_2.insert
              L12_2 = A0_2.items
              L13_2 = L10_2
              L11_2(L12_2, L13_2)
              L11_2 = table
              L11_2 = L11_2.insert
              L12_2 = A0_2.itemsView
              L13_2 = L10_2
              L11_2(L12_2, L13_2)
              L12_2 = L10_2
              L11_2 = L10_2.setPosition
              L13_2 = L1_2
              L14_2 = 5
              L11_2(L12_2, L13_2, L14_2)
              L11_2 = A0_2.scroller
              L12_2 = L11_2
              L11_2 = L11_2.insert
              L13_2 = L10_2.group
              L11_2(L12_2, L13_2)
              L1_2 = L1_2 + L2_2
              L4_2 = L4_2 + 1
            end
          end
        end
      end
    end
  end
  L5_2 = {}
  L6_2 = pairs
  L7_2 = L10_1
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L5_2
    L13_2 = L9_2
    L11_2(L12_2, L13_2)
  end
  L6_2 = table
  L6_2 = L6_2.sort
  L7_2 = L5_2
  
  function L8_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = L10_1
    L2_3 = L2_3[A0_3]
    L3_3 = L10_1
    L3_3 = L3_3[A1_3]
    L4_3 = L2_3.itemType
    if L4_3 == 2 then
      L4_3 = L3_3.itemType
      if L4_3 == 2 then
        L4_3 = mainPlayer
        L4_3 = L4_3.isGoldPacksDescending
        if L4_3 == true then
          L4_3 = L2_3.baseCurrencyAmount
          L5_3 = L3_3.baseCurrencyAmount
          L4_3 = L4_3 > L5_3
          return L4_3
        else
          L4_3 = L3_1
          L4_3 = L4_3.checkForSale
          L5_3 = L2_3
          L4_3 = L4_3(L5_3)
          if L4_3 then
            L4_3 = L3_1
            L4_3 = L4_3.checkForSale
            L5_3 = L3_3
            L4_3 = L4_3(L5_3)
            if L4_3 then
              L4_3 = L2_3.isNectar
              if L4_3 then
                L4_3 = L3_3.isNectar
                if L4_3 then
                  L4_3 = L2_3.baseCurrencyAmount
                  L5_3 = L3_3.baseCurrencyAmount
                  L4_3 = L4_3 < L5_3
                  return L4_3
                end
              end
              L4_3 = L2_3.isNectar
              if L4_3 then
                L4_3 = false
                return L4_3
              end
              L4_3 = L3_3.isNectar
              if L4_3 then
                L4_3 = true
                return L4_3
              end
              L4_3 = L2_3.baseCurrencyAmount
              L5_3 = L3_3.baseCurrencyAmount
              L4_3 = L4_3 < L5_3
              return L4_3
            else
              L4_3 = true
              return L4_3
            end
          else
            L4_3 = L3_1
            L4_3 = L4_3.checkForSale
            L5_3 = L3_3
            L4_3 = L4_3(L5_3)
            if L4_3 then
              L4_3 = false
              return L4_3
            else
              L4_3 = L2_3.isNectar
              if L4_3 then
                L4_3 = L3_3.isNectar
                if L4_3 then
                  L4_3 = L2_3.baseCurrencyAmount
                  L5_3 = L3_3.baseCurrencyAmount
                  L4_3 = L4_3 < L5_3
                  return L4_3
                end
              end
              L4_3 = L2_3.isNectar
              if L4_3 then
                L4_3 = false
                return L4_3
              end
              L4_3 = L3_3.isNectar
              if L4_3 then
                L4_3 = true
                return L4_3
              end
              L4_3 = L2_3.baseCurrencyAmount
              L5_3 = L3_3.baseCurrencyAmount
              L4_3 = L4_3 < L5_3
              return L4_3
            end
          end
        end
    end
    else
      L4_3 = L2_3.id
      L5_3 = L3_3.id
      L4_3 = L4_3 < L5_3
      return L4_3
    end
  end
  
  L6_2(L7_2, L8_2)
  L6_2 = pairs
  L7_2 = L10_1
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = L10_2.itemType
    if L11_2 == 2 then
      L11_2 = L10_2.UID
      L12_2 = Constants
      L12_2 = L12_2.App_UID
      L13_2 = ".gold6"
      L12_2 = L12_2 .. L13_2
      if L11_2 == L12_2 then
        L20_1 = L10_2
      end
    end
  end
  L6_2 = Constants
  L6_2 = L6_2.getShopMultiplier
  L6_2 = L6_2()
  L7_2 = L20_1
  L7_2 = L7_2.baseCurrencyAmount
  L6_2 = L6_2 * L7_2
  L7_2 = nil
  L8_2 = true
  L9_2 = ipairs
  L10_2 = L5_2
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  for L12_2, L13_2 in L9_2, L10_2, L11_2 do
    L14_2 = L10_1
    L14_2 = L14_2[L13_2]
    L14_2 = L14_2.itemType
    L15_2 = A0_2.mode
    if L14_2 == L15_2 then
      L14_2 = L10_1
      L14_2 = L14_2[L13_2]
      L14_2 = L14_2.localPrice
      if L14_2 ~= "0" then
        L14_2 = L10_1
        L14_2 = L14_2[L13_2]
        L14_2 = L14_2.localPrice
        if L14_2 ~= 0 then
          L14_2 = Constants
          L14_2 = L14_2.Can_Open_Avatar_Pack
          if L14_2 == false then
            L14_2 = L10_1
            L14_2 = L14_2[L13_2]
            L14_2 = L14_2.isAvatarPack
            if L14_2 ~= true then
              L14_2 = L10_1
              L14_2 = L14_2[L13_2]
              L14_2 = L14_2.itemType
              if L14_2 == 1 then
                L14_2 = L10_1
                L14_2 = L14_2[L13_2]
                L14_2 = L14_2.priceNumber
              end
              if L6_2 > L14_2 then
                L14_2 = L10_1
                L14_2 = L14_2[L13_2]
                L14_2 = L14_2.isNectar
                if L14_2 and (L7_2 == nil or L7_2 ~= "nectar") then
                  L15_2 = A0_2
                  L14_2 = A0_2.createSectionDivider
                  L16_2 = L4_1
                  L16_2 = L16_2.Nectar
                  if not L16_2 then
                    L16_2 = "\217\134\218\169\216\170\216\167\216\177"
                  end
                  L17_2 = L1_2
                  L14_2 = L14_2(L15_2, L16_2, L17_2)
                  L15_2 = table
                  L15_2 = L15_2.insert
                  L16_2 = A0_2.otherObjects
                  L17_2 = L14_2
                  L15_2(L16_2, L17_2)
                  L15_2 = A0_2.scroller
                  L16_2 = L15_2
                  L15_2 = L15_2.insert
                  L17_2 = L14_2
                  L15_2(L16_2, L17_2)
                  L15_2 = L1_2 + 40
                  L1_2 = L15_2 + 20
                  L8_2 = true
                else
                  L14_2 = L10_1
                  L14_2 = L14_2[L13_2]
                  L14_2 = L14_2.isNectar
                  if not L14_2 then
                    L14_2 = L10_1
                    L14_2 = L14_2[L13_2]
                    L14_2 = L14_2.itemType
                    if L14_2 == 2 and (L7_2 == nil or L7_2 ~= "gold") then
                      L15_2 = A0_2
                      L14_2 = A0_2.createSectionDivider
                      L16_2 = L4_1
                      L16_2 = L16_2.Gold
                      if not L16_2 then
                        L16_2 = "\216\183\217\132\216\167"
                      end
                      L17_2 = L1_2
                      L14_2 = L14_2(L15_2, L16_2, L17_2)
                      L15_2 = table
                      L15_2 = L15_2.insert
                      L16_2 = A0_2.otherObjects
                      L17_2 = L14_2
                      L15_2(L16_2, L17_2)
                      L15_2 = A0_2.scroller
                      L16_2 = L15_2
                      L15_2 = L15_2.insert
                      L17_2 = L14_2
                      L15_2(L16_2, L17_2)
                      L15_2 = L1_2 + 40
                      L1_2 = L15_2 + 20
                      L8_2 = true
                    end
                  end
                end
                L14_2 = nil
                L15_2 = L10_1
                L15_2 = L15_2[L13_2]
                L15_2 = L15_2.itemType
                if L15_2 == 3 then
                  L15_2 = L3_1
                  L16_2 = L15_2
                  L15_2 = L15_2.new
                  L17_2 = successToBuyBoost
                  L18_2 = failedToBuyItem
                  L19_2 = A0_2
                  L20_2 = L10_1
                  L20_2 = L20_2[L13_2]
                  L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
                  L14_2 = L15_2
                else
                  L15_2 = L3_1
                  L16_2 = L15_2
                  L15_2 = L15_2.new
                  L17_2 = successToBuyItem
                  L18_2 = failedToBuyItem
                  L19_2 = A0_2
                  L20_2 = L10_1
                  L20_2 = L20_2[L13_2]
                  L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
                  L14_2 = L15_2
                end
                L15_2 = table
                L15_2 = L15_2.insert
                L16_2 = A0_2.items
                L17_2 = L14_2
                L15_2(L16_2, L17_2)
                L15_2 = L1_1
                L16_2 = L15_2
                L15_2 = L15_2.new
                L17_2 = L14_2
                L15_2 = L15_2(L16_2, L17_2)
                L16_2 = table
                L16_2 = L16_2.insert
                L17_2 = A0_2.itemsView
                L18_2 = L15_2
                L16_2(L17_2, L18_2)
                L17_2 = L15_2
                L16_2 = L15_2.setPosition
                L18_2 = L1_2
                L19_2 = 5
                L16_2(L17_2, L18_2, L19_2)
                L16_2 = A0_2.scroller
                L17_2 = L16_2
                L16_2 = L16_2.insert
                L18_2 = L15_2.group
                L16_2(L17_2, L18_2)
                L14_2.shopItemView = L15_2
                L16_2 = L10_1
                L16_2 = L16_2[L13_2]
                L16_2 = L16_2.itemType
                if L16_2 == 3 then
                  L16_2 = A0_2.boostShopItemViews
                  L17_2 = A0_2.boostShopItemViews
                  L17_2 = #L17_2
                  L17_2 = L17_2 + 1
                  L16_2[L17_2] = L15_2
                end
                L1_2 = L1_2 + L2_2
                L16_2 = L10_1
                L16_2 = L16_2[L13_2]
                L16_2 = L16_2.isNectar
                if L16_2 then
                  L7_2 = "nectar"
                else
                  L16_2 = L10_1
                  L16_2 = L16_2[L13_2]
                  L16_2 = L16_2.itemType
                  if L16_2 == 2 then
                    L7_2 = "gold"
                  else
                    L7_2 = "other"
                  end
                end
                L8_2 = false
              end
            end
          else
            L14_2 = L10_1
            L14_2 = L14_2[L13_2]
            L14_2 = L14_2.itemType
            if L14_2 == 1 then
              L14_2 = L10_1
              L14_2 = L14_2[L13_2]
              L14_2 = L14_2.priceNumber
              if not (L6_2 > L14_2) then
                goto lbl_509
              end
            end
            L14_2 = L10_1
            L14_2 = L14_2[L13_2]
            L14_2 = L14_2.isNectar
            if L14_2 and (L7_2 == nil or L7_2 ~= "nectar") then
              L15_2 = A0_2
              L14_2 = A0_2.createSectionDivider
              L16_2 = L4_1
              L16_2 = L16_2.Nectar
              if not L16_2 then
                L16_2 = "\217\134\218\169\216\170\216\167\216\177"
              end
              L17_2 = L1_2
              L14_2 = L14_2(L15_2, L16_2, L17_2)
              L15_2 = table
              L15_2 = L15_2.insert
              L16_2 = A0_2.otherObjects
              L17_2 = L14_2
              L15_2(L16_2, L17_2)
              L15_2 = A0_2.scroller
              L16_2 = L15_2
              L15_2 = L15_2.insert
              L17_2 = L14_2
              L15_2(L16_2, L17_2)
              L15_2 = L1_2 + 40
              L1_2 = L15_2 + 20
              L8_2 = true
            else
              L14_2 = L10_1
              L14_2 = L14_2[L13_2]
              L14_2 = L14_2.isNectar
              if not L14_2 then
                L14_2 = L10_1
                L14_2 = L14_2[L13_2]
                L14_2 = L14_2.itemType
                if L14_2 == 2 and (L7_2 == nil or L7_2 ~= "gold") then
                  L15_2 = A0_2
                  L14_2 = A0_2.createSectionDivider
                  L16_2 = L4_1
                  L16_2 = L16_2.Gold
                  if not L16_2 then
                    L16_2 = "\216\183\217\132\216\167"
                  end
                  L17_2 = L1_2
                  L14_2 = L14_2(L15_2, L16_2, L17_2)
                  L15_2 = table
                  L15_2 = L15_2.insert
                  L16_2 = A0_2.otherObjects
                  L17_2 = L14_2
                  L15_2(L16_2, L17_2)
                  L15_2 = A0_2.scroller
                  L16_2 = L15_2
                  L15_2 = L15_2.insert
                  L17_2 = L14_2
                  L15_2(L16_2, L17_2)
                  L15_2 = L1_2 + 40
                  L1_2 = L15_2 + 20
                  L8_2 = true
                end
              end
            end
            L14_2 = nil
            L15_2 = L10_1
            L15_2 = L15_2[L13_2]
            L15_2 = L15_2.itemType
            if L15_2 == 3 then
              L15_2 = L3_1
              L16_2 = L15_2
              L15_2 = L15_2.new
              L17_2 = successToBuyBoost
              L18_2 = failedToBuyItem
              L19_2 = A0_2
              L20_2 = L10_1
              L20_2 = L20_2[L13_2]
              L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
              L14_2 = L15_2
            else
              L15_2 = L3_1
              L16_2 = L15_2
              L15_2 = L15_2.new
              L17_2 = successToBuyItem
              L18_2 = failedToBuyItem
              L19_2 = A0_2
              L20_2 = L10_1
              L20_2 = L20_2[L13_2]
              L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
              L14_2 = L15_2
            end
            L15_2 = table
            L15_2 = L15_2.insert
            L16_2 = A0_2.items
            L17_2 = L14_2
            L15_2(L16_2, L17_2)
            L15_2 = L1_1
            L16_2 = L15_2
            L15_2 = L15_2.new
            L17_2 = L14_2
            L15_2 = L15_2(L16_2, L17_2)
            L16_2 = table
            L16_2 = L16_2.insert
            L17_2 = A0_2.itemsView
            L18_2 = L15_2
            L16_2(L17_2, L18_2)
            L17_2 = L15_2
            L16_2 = L15_2.setPosition
            L18_2 = L1_2
            L19_2 = 5
            L16_2(L17_2, L18_2, L19_2)
            L16_2 = A0_2.scroller
            L17_2 = L16_2
            L16_2 = L16_2.insert
            L18_2 = L15_2.group
            L16_2(L17_2, L18_2)
            L14_2.shopItemView = L15_2
            L16_2 = L10_1
            L16_2 = L16_2[L13_2]
            L16_2 = L16_2.itemType
            if L16_2 == 3 then
              L16_2 = A0_2.boostShopItemViews
              L17_2 = A0_2.boostShopItemViews
              L17_2 = #L17_2
              L17_2 = L17_2 + 1
              L16_2[L17_2] = L15_2
            end
            L1_2 = L1_2 + L2_2
            L16_2 = L10_1
            L16_2 = L16_2[L13_2]
            L16_2 = L16_2.isNectar
            if L16_2 then
              L7_2 = "nectar"
            else
              L16_2 = L10_1
              L16_2 = L16_2[L13_2]
              L16_2 = L16_2.itemType
              if L16_2 == 2 then
                L7_2 = "gold"
              else
                L7_2 = "other"
              end
            end
            L8_2 = false
          end
        end
      end
    end
    ::lbl_509::
  end
  L9_2 = A0_2.listIsEmpty
  if L9_2 == true then
    L9_2 = A0_2.emptyListLabel
    if L9_2 ~= nil then
      L9_2 = A0_2.emptyListLabel
      L9_2.isVisible = true
    else
      L9_2 = {}
      L10_2 = A0_2.view
      L9_2.parent = L10_2
      L10_2 = L4_1
      L10_2 = L10_2["Failed to connect to In-App-Purchases store"]
      L9_2.text = L10_2
      L10_2 = display
      L10_2 = L10_2.contentWidth
      L10_2 = L10_2 / 2
      L9_2.x = L10_2
      L10_2 = display
      L10_2 = L10_2.contentHeight
      L10_2 = L10_2 / 2
      L10_2 = L10_2 + 20
      L9_2.y = L10_2
      L10_2 = display
      L10_2 = L10_2.contentWidth
      L10_2 = L10_2 - 100
      L9_2.width = L10_2
      L9_2.height = 200
      L10_2 = Constants
      L10_2 = L10_2.fontForTitle
      L10_2 = L10_2()
      L9_2.font = L10_2
      L9_2.fontSize = 14
      L9_2.align = "center"
      L10_2 = display
      L10_2 = L10_2.newText
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      A0_2.emptyListLabel = L10_2
      L10_2 = A0_2.emptyListLabel
      L11_2 = L10_2
      L10_2 = L10_2.setFillColor
      L12_2 = Constants
      L12_2 = L12_2.darkBlueColor
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L12_2()
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    end
  else
    L9_2 = A0_2.emptyListLabel
    if L9_2 ~= nil then
      L9_2 = A0_2.emptyListLabel
      L9_2.isVisible = false
    end
  end
end

generateItems = L23_1

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = mainPlayer
  L1_2 = L1_2.settings
  L1_2 = L1_2.activeTutorial
  if L1_2 == "shop" then
    L1_2 = mainPlayer
    L1_2 = L1_2.settings
    L1_2 = L1_2.activeTutorialState
    if L1_2 ~= "buySimplePack" then
      L1_2 = mainPlayer
      L1_2 = L1_2.settings
      L1_2 = L1_2.activeTutorialState
      if L1_2 ~= "gotoShopForSimplePack" then
        goto lbl_29
      end
    end
    L1_2 = A0_2.mode
    if L1_2 == 1 then
      L1_2 = L12_1
      L1_2 = L1_2.pointAtObjectInView
      L2_2 = A0_2.itemsView
      L2_2 = L2_2[1]
      L2_2 = L2_2.buyButton
      L3_2 = A0_2.itemsView
      L3_2 = L3_2[1]
      L3_2 = L3_2.group
      L1_2(L2_2, L3_2)
      goto lbl_96
      ::lbl_29::
      L1_2 = mainPlayer
      L1_2 = L1_2.settings
      L1_2 = L1_2.activeTutorialState
      if L1_2 ~= "buyGoodPack" then
        L1_2 = mainPlayer
        L1_2 = L1_2.settings
        L1_2 = L1_2.activeTutorialState
      end
      if L1_2 == "gotoShopForGoodPack" then
        L1_2 = A0_2.mode
        if L1_2 == 1 then
        end
        L1_2 = L12_1
        L1_2 = L1_2.pointAtObjectInView
        L2_2 = A0_2.itemsView
        L2_2 = L2_2[2]
        L2_2 = L2_2.buyButton
        L3_2 = A0_2.itemsView
        L3_2 = L3_2[2]
        L3_2 = L3_2.group
        L1_2(L2_2, L3_2)
      end
    end
  else
    L1_2 = mainPlayer
    L1_2 = L1_2.settings
    L1_2 = L1_2.activeTutorial
    if L1_2 == "boosts" then
      L1_2 = mainPlayer
      L1_2 = L1_2.settings
      L1_2 = L1_2.activeTutorialState
      if L1_2 == "showBoosts" then
        L1_2 = A0_2.mode
        if L1_2 == 3 then
          L1_2 = L12_1
          L1_2 = L1_2.removePoint
          L1_2()
          L1_2 = L12_1
          L1_2 = L1_2.sparkle
          L2_2 = A0_2.view
          L3_2 = 2000
          L4_2 = display
          L4_2 = L4_2.contentCenterX
          L4_2 = L4_2 - 200
          L5_2 = display
          L5_2 = L5_2.contentCenterY
          L5_2 = L5_2 - 200
          L6_2 = display
          L6_2 = L6_2.contentCenterX
          L6_2 = L6_2 + 200
          L7_2 = display
          L7_2 = L7_2.contentCenterY
          L7_2 = L7_2 + 200
          L8_2 = 200
          L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
          
          function L1_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
            L0_3 = L11_1
            L1_3 = L0_3
            L0_3 = L0_3.new
            L2_3 = {}
            L3_3 = L4_1
            L3_3 = L3_3["Boosts Packs"]
            L2_3.title = L3_3
            L2_3.touchEnabled = false
            L3_3 = L4_1
            L3_3 = L3_3.localizedString
            L4_3 = "BoostsTut"
            L5_3 = {}
            L6_3 = L4_1
            L7_3 = math
            L7_3 = L7_3.floor
            L8_3 = Constants
            L8_3 = L8_3.XP_BOOST_TOTAL_TIME
            L8_3 = L8_3 / 60
            L7_3 = L7_3(L8_3)
            L6_3 = L6_3[L7_3]
            L5_3.count = L6_3
            L3_3 = L3_3(L4_3, L5_3)
            L2_3.message = L3_3
            L2_3.position = "top"
            L2_3.bgAlpha = 0
            L3_3 = L4_1
            L3_3 = L3_3.OK
            L2_3.buttonText = L3_3
            
            function L3_3()
              local L0_4, L1_4
              L0_4 = warningLog
              L1_4 = "Boosts Tutorial Finished"
              L0_4(L1_4)
              L0_4 = L9_1
              L0_4 = L0_4.registerAchievementsWithId
              L1_4 = 152
              L0_4(L1_4)
              L0_4 = L13_1
              L0_4 = L0_4.finishedTutorial
              L1_4 = "boosts"
              L0_4(L1_4)
            end
            
            L2_3.buttonAction = L3_3
            L0_3(L1_3, L2_3)
          end
          
          L2_2 = timer
          L2_2 = L2_2.performWithDelay
          L3_2 = 2000
          L4_2 = L1_2
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
  ::lbl_96::
end

show = L23_1

function L23_1(A0_2)
  local L1_2
end

hide = L23_1

function L23_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2.tutorialCallback = A2_2
  A0_2.tutorialMode = true
  L3_2 = pairs
  L4_2 = A0_2.itemsView
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.shopItem
    L8_2 = L8_2.id
    if L8_2 == A1_2 then
      L9_2 = L7_2
      L8_2 = L7_2.pointAtBuyButton
      L8_2(L9_2)
    else
      L9_2 = L7_2
      L8_2 = L7_2.disableItem
      L8_2(L9_2)
    end
  end
end

pointAtPack = L23_1

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L12_1
  L1_2 = L1_2.removePoint
  L1_2()
  A0_2.tutorialCallback = nil
  A0_2.tutorialMode = nil
  L1_2 = pairs
  L2_2 = A0_2.itemsView
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.enableItem
    L6_2(L7_2)
  end
end

clearTutorialActions = L23_1

function L23_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if not A2_2 then
    L4_2 = {}
    A2_2 = L4_2
  end
  L4_2 = setmetatable
  L5_2 = A2_2
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
  A0_2.__index = A0_2
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  A2_2.view = L4_2
  A2_2.mode = A1_2
  L4_2 = A2_2.view
  L5_2 = {}
  A2_2.items = L5_2
  L5_2 = {}
  A2_2.itemsView = L5_2
  L5_2 = {}
  A2_2.otherObjects = L5_2
  A2_2.emptyListLabel = nil
  A2_2.listIsEmpty = false
  L5_2 = L10_1
  L5_2 = #L5_2
  L6_2 = 0
  L7_2 = mainPlayer
  L7_2 = L7_2.bundles
  if L7_2 then
    L7_2 = pairs
    L8_2 = mainPlayer
    L8_2 = L8_2.bundles
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = L11_2.endTime
      if L12_2 then
        L12_2 = L11_2.endTime
        L13_2 = os
        L13_2 = L13_2.time
        L13_2 = L13_2()
        if L12_2 > L13_2 then
          L5_2 = L5_2 + 1
        end
      end
    end
    L6_2 = 1
  end
  L6_2 = L6_2 + 2
  L7_2 = L5_1
  L7_2 = L7_2.newScrollView
  L8_2 = {}
  L9_2 = display
  L9_2 = L9_2.contentWidth
  L9_2 = L9_2 - 10
  L8_2.width = L9_2
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 - 40
  L8_2.height = L9_2
  L8_2.left = 5
  L8_2.top = -5
  L9_2 = L5_2 * 140
  L10_2 = L6_2 * 60
  L9_2 = L9_2 + L10_2
  L9_2 = L9_2 + 12
  L8_2.scrollWidth = L9_2
  L8_2.scrollHeight = 10
  L8_2.rightPadding = 30
  L8_2.verticalScrollDisabled = true
  L8_2.hideScrollBar = true
  L9_2 = {}
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L13_2 = 0
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L9_2[4] = L13_2
  L8_2.backgroundColor = L9_2
  L8_2.listener = A3_2
  L7_2 = L7_2(L8_2)
  A2_2.scroller = L7_2
  L7_2 = A2_2.scroller
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 - 10
  L8_2 = L8_2 / 2
  L7_2.x = L8_2
  if A1_2 == 2 then
  elseif A1_2 == 3 then
    L7_2 = {}
    A2_2.boostShopItemViews = L7_2
  else
    L8_2 = A2_2
    L7_2 = A2_2.generateItems
    L7_2(L8_2)
    L8_2 = L4_2
    L7_2 = L4_2.insert
    L9_2 = A2_2.scroller
    L7_2(L8_2, L9_2)
  end
  return A2_2
end

new = L23_1

function L23_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L23_1

function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 then
    L2_2 = pairs
    L3_2 = A1_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = A0_2.boostShopItemViews
      L7_2 = L7_2[L5_2]
      L8_2 = L7_2
      L7_2 = L7_2.updatePrice
      L7_2(L8_2)
    end
  end
end

updatePrices = L23_1

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = print
  L2_2 = "ShopView: updateHeroCardPackPrice"
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = A0_2.itemsView
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.shopItem
    if L6_2 then
      L6_2 = L5_2.shopItem
      L6_2 = L6_2.id
      if L6_2 == 32 then
        L7_2 = L5_2
        L6_2 = L5_2.updatePrice
        L6_2(L7_2)
      end
    end
  end
end

updateHeroCardPackPrice = L23_1

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.mode
  if L1_2 == 2 then
    L1_2 = log3
    L2_2 = "refreshing bundles"
    L1_2(L2_2)
    L1_2 = pairs
    L2_2 = A0_2.itemsView
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L5_2.destroy
      if L6_2 then
        L7_2 = L5_2
        L6_2 = L5_2.destroy
        L6_2(L7_2)
      else
        L6_2 = display
        L6_2 = L6_2.remove
        L7_2 = L5_2.group
        L6_2(L7_2)
      end
      L6_2 = A0_2.itemsView
      L6_2[L4_2] = nil
    end
    L1_2 = pairs
    L2_2 = A0_2.otherObjects
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L5_2.destroy
      if L6_2 then
        L7_2 = L5_2
        L6_2 = L5_2.destroy
        L6_2(L7_2)
      else
        L6_2 = display
        L6_2 = L6_2.remove
        L7_2 = L5_2
        L6_2(L7_2)
      end
      L6_2 = A0_2.otherObjects
      L6_2[L4_2] = nil
    end
    L1_2 = pairs
    L2_2 = A0_2.items
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L5_2 = nil
    end
    L1_2 = {}
    A0_2.items = L1_2
    L1_2 = {}
    A0_2.itemsView = L1_2
    L2_2 = A0_2
    L1_2 = A0_2.generateItems
    L1_2(L2_2)
  end
end

refreshBundles = L23_1
