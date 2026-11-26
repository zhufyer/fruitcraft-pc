local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Models.UserCard"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "TestServer"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "json"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Constants"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Utils.SKComponents"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Utils.Analytics"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Models.AchievementManager"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Data.BaseShopItems"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Utils.Toolbox"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "composer"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Data.BaseAchievements"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Views.ActivityIndicatorView"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Language"
L12_1 = L12_1(L13_1)
L13_1 = 0
id = L13_1
L13_1 = 0
price = L13_1
L13_1 = "name not set"
name = L13_1
L13_1 = "description not set"
description = L13_1
L13_1 = L3_1.Path_MissingImage
image = L13_1
L13_1 = 0
itemType = L13_1
L13_1 = nil
action = L13_1

function L13_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2
  L9_2 = checkValidityAssert
  L10_2 = A0_2
  L11_2 = "new, function needs to be called on the ShopItem module using a colon"
  L12_2 = _NAME
  L13_2 = "table"
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L9_2 = checkValidityAssert
  L10_2 = A4_2
  L11_2 = "new, the shop item data needs to be provided. Use data provided in the BaseShopItems module"
  L12_2 = _NAME
  L13_2 = "table"
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L9_2 = checkValidityAssert
  L10_2 = A4_2.id
  L11_2 = "new, the provided shop item data must have an 'id'"
  L12_2 = _NAME
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = checkValidityAssert
  L10_2 = A4_2.itemType
  L11_2 = "new, the provided shop item data must have an 'itemType'"
  L12_2 = _NAME
  L9_2(L10_2, L11_2, L12_2)
  if not A4_2 then
    L9_2 = {}
    A4_2 = L9_2
  end
  L9_2 = setmetatable
  L10_2 = A4_2
  L11_2 = A0_2
  L9_2(L10_2, L11_2)
  A0_2.__index = A0_2
  
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = A4_2
    L2_3 = L1_3
    L1_3 = L1_3.buyItem
    L3_3 = A1_2
    L4_3 = A2_2
    L5_3 = A3_2
    L6_3 = A5_2
    L7_3 = nil
    L8_3 = A6_2
    L9_3 = A7_2
    L10_3 = A8_2
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
  end
  
  A4_2.action = L9_2
  return A4_2
end

new = L13_1

function L13_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L9_2 = L9_1
  L9_2 = L9_2.getScene
  L10_2 = "Scenes.Shop"
  L9_2 = L9_2(L10_2)
  L10_2 = A0_2.itemType
  if L10_2 == 1 then
    L10_2 = A0_2.id
    if L10_2 == 25 then
      L10_2 = L10_1
      L10_2 = L10_2[153]
      L10_2 = L10_2.recieved
      if L10_2 ~= true then
        L10_2 = L9_1
        L10_2 = L10_2.showOverlay
        L11_2 = "Scenes.WarningOverlay"
        L12_2 = {}
        L13_2 = {}
        L14_2 = L12_1
        L14_2 = L14_2["Crystal CardPack Warning"]
        L13_2.description = L14_2
        L14_2 = L3_1
        L14_2 = L14_2.Path_Assets
        L15_2 = "Shop/12. Card Pack.png"
        L14_2 = L14_2 .. L15_2
        L13_2.image = L14_2
        L14_2 = L12_1
        L14_2 = L14_2["Crystal Pack"]
        L13_2.title = L14_2
        L13_2.imageWidth = 130
        L13_2.imageHeight = 130
        L12_2.params = L13_2
        L10_2(L11_2, L12_2)
        L10_2 = L6_1
        L10_2 = L10_2.registerAchievementsWithId
        L11_2 = 153
        L12_2 = nil
        
        function L13_2()
          local L0_3, L1_3
          L0_3 = L10_1
          L0_3 = L0_3[153]
          L0_3.recieved = true
        end
        
        L10_2(L11_2, L12_2, L13_2)
        return
      end
    end
    if not A6_2 then
      L10_2 = L11_1
      L10_2 = L10_2.show
      L11_2 = L12_1
      L11_2 = L11_2.Purchasing
      L10_2(L11_2)
    end
    L10_2 = L5_1
    L10_2 = L10_2.logEvent
    L11_2 = "Item Bought"
    L12_2 = {}
    L12_2.itemType = "pack"
    L13_2 = A0_2.id
    L12_2.valueId = L13_2
    L10_2(L11_2, L12_2)
    
    function L10_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
      L1_3 = network
      L1_3 = L1_3.checkForErrors
      L2_3 = A0_3
      L3_3 = "Buy Item"
      
      function L4_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4
        L1_4 = A2_2
        L2_4 = A0_2
        L3_4 = A0_4
        L4_4 = A3_2
        L1_4(L2_4, L3_4, L4_4)
      end
      
      L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
      if L1_3 then
        L3_3 = nil
        L4_3 = L2_3.base_card_id_set
        if L4_3 then
          L3_3 = L2_3.base_card_id_set
        end
        L4_3 = L2_3.cards
        if L4_3 then
          L4_3 = A7_2
          if L4_3 then
            L4_3 = A7_2
            L4_3()
          end
          L4_3 = pairs
          L5_3 = L2_3.cards
          L4_3, L5_3, L6_3 = L4_3(L5_3)
          for L7_3, L8_3 in L4_3, L5_3, L6_3 do
            L9_3 = mainPlayer
            L9_3 = L9_3.cards
            L10_3 = L8_3.id
            L11_3 = L0_1
            L12_3 = L11_3
            L11_3 = L11_3.new
            L13_3 = L8_3
            L11_3 = L11_3(L12_3, L13_3)
            L9_3[L10_3] = L11_3
            L9_3 = mainPlayer
            L9_3 = L9_3.powerBoost
            if L9_3 ~= nil then
              L9_3 = mainPlayer
              L9_3 = L9_3.cards
              L10_3 = L8_3.id
              L9_3 = L9_3[L10_3]
              L10_3 = mainPlayer
              L10_3 = L10_3.cards
              L11_3 = L8_3.id
              L10_3 = L10_3[L11_3]
              L10_3 = L10_3.power
              L9_3.powerBeforeBoost = L10_3
              L9_3 = mainPlayer
              L9_3 = L9_3.cards
              L10_3 = L8_3.id
              L9_3 = L9_3[L10_3]
              L9_3 = L9_3.power
              L10_3 = mainPlayer
              L10_3 = L10_3.cards
              L11_3 = L8_3.id
              L10_3 = L10_3[L11_3]
              L11_3 = math
              L11_3 = L11_3.ceil
              L12_3 = mainPlayer
              L12_3 = L12_3.powerBoost
              L12_3 = L12_3.multiplier
              L12_3 = L9_3 * L12_3
              L11_3 = L11_3(L12_3)
              L10_3.power = L11_3
            end
            L9_3 = A5_2
            if L9_3 then
              L9_3 = mainPlayer
              L9_3 = L9_3.heroSet
              if L9_3 == nil then
                L9_3 = mainPlayer
                L10_3 = {}
                L9_3.heroSet = L10_3
              end
              L9_3 = mainPlayer
              L9_3 = L9_3.activeHeroID
              if L9_3 == nil then
                L9_3 = mainPlayer
                L10_3 = A5_2
                L9_3.activeHeroID = L10_3
              end
              L9_3 = mainPlayer
              L9_3 = L9_3.heroSet
              L10_3 = A5_2
              L11_3 = {}
              L9_3[L10_3] = L11_3
              L9_3 = mainPlayer
              L9_3 = L9_3.heroSet
              L10_3 = A5_2
              L9_3 = L9_3[L10_3]
              L10_3 = A5_2
              L9_3.id = L10_3
              L9_3 = mainPlayer
              L9_3 = L9_3.heroSet
              L10_3 = A5_2
              L9_3 = L9_3[L10_3]
              L10_3 = {}
              L9_3.items = L10_3
              L9_3 = mainPlayer
              L9_3 = L9_3.heroSet
              L10_3 = A5_2
              L9_3 = L9_3[L10_3]
              L10_3 = L8_3.id
              L9_3.cardId = L10_3
              L9_3 = mainPlayer
              L9_3 = L9_3.heroSet
              L10_3 = A5_2
              L9_3 = L9_3[L10_3]
              L9_3.potion = 0
            end
          end
        end
        L4_3 = L2_3.gold
        if L4_3 then
          L4_3 = mainPlayer
          L5_3 = L2_3.gold
          L4_3.gold = L5_3
        end
        L4_3 = L2_3.nectar
        if L4_3 then
          L4_3 = mainPlayer
          L5_3 = L2_3.nectar
          L4_3.nectar = L5_3
        end
        L4_3 = A1_2
        if L4_3 ~= nil then
          L4_3 = A1_2
          L5_3 = A0_2
          L6_3 = L2_3.cards
          L7_3 = A3_2
          L8_3 = L3_3
          L4_3(L5_3, L6_3, L7_3, L8_3)
        end
        L4_3 = L6_1
        L4_3 = L4_3.buyCardPacks
        L5_3 = A0_2
        L5_3 = L5_3.id
        L4_3(L5_3)
      end
    end
    
    L11_2 = {}
    L12_2 = A0_2.id
    L11_2.type = L12_2
    if A5_2 then
      L11_2.base_card_id = A5_2
    end
    L12_2 = {}
    L12_2.body = L11_2
    L13_2 = log3
    L14_2 = "~~~~ Post data for purchase:"
    L15_2 = postData
    L13_2(L14_2, L15_2)
    L13_2 = network
    L13_2 = L13_2.getDefaultHeader
    L13_2 = L13_2()
    L12_2.headers = L13_2
    L13_2 = network
    L13_2 = L13_2.request
    L14_2 = L3_1
    L14_2 = L14_2.API_Path
    L15_2 = L3_1
    L15_2 = L15_2.API_BuyCardPack
    L14_2 = L14_2 .. L15_2
    L15_2 = "POST"
    L16_2 = L10_2
    L17_2 = L12_2
    L18_2 = "buy item"
    L19_2 = nil
    L20_2 = A2_2
    L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  else
    L10_2 = A0_2.itemType
    if L10_2 == 3 then
      L10_2 = L11_1
      L10_2 = L10_2.show
      L11_2 = L12_1
      L11_2 = L11_2.Purchasing
      L10_2(L11_2)
      
      function L10_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
        L1_3 = network
        L1_3 = L1_3.checkForErrors
        L2_3 = A0_3
        L3_3 = "Buy Item"
        
        function L4_3(A0_4)
          local L1_4, L2_4, L3_4, L4_4
          L1_4 = A2_2
          L2_4 = A0_2
          L3_4 = A0_4
          L4_4 = A3_2
          L1_4(L2_4, L3_4, L4_4)
        end
        
        L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
        if L1_3 then
          L3_3 = L2_3.pwboost_created_at
          if L3_3 then
            L3_3 = mainPlayer
            L4_3 = {}
            L5_3 = L2_3.pwboost_created_at
            L4_3.creationTime = L5_3
            L5_3 = A0_2
            L5_3 = L5_3.id
            L4_3.id = L5_3
            L5_3 = L3_1
            L5_3 = L5_3.BOOST_MULTIPLIERS
            L6_3 = tostring
            L7_3 = A0_2
            L7_3 = L7_3.id
            L6_3 = L6_3(L7_3)
            L5_3 = L5_3[L6_3]
            L4_3.multiplier = L5_3
            L3_3.powerBoost = L4_3
            L3_3 = pairs
            L4_3 = mainPlayer
            L4_3 = L4_3.cards
            L3_3, L4_3, L5_3 = L3_3(L4_3)
            for L6_3, L7_3 in L3_3, L4_3, L5_3 do
              L8_3 = L7_3.power
              L7_3.powerBeforeBoost = L8_3
              L8_3 = L7_3.power
              L9_3 = math
              L9_3 = L9_3.ceil
              L10_3 = L3_1
              L10_3 = L10_3.BOOST_MULTIPLIERS
              L11_3 = tostring
              L12_3 = A0_2
              L12_3 = L12_3.id
              L11_3 = L11_3(L12_3)
              L10_3 = L10_3[L11_3]
              L10_3 = L8_3 * L10_3
              L9_3 = L9_3(L10_3)
              L7_3.power = L9_3
            end
          else
            L3_3 = L2_3.xpboost_created_at
            if L3_3 then
              L3_3 = mainPlayer
              L4_3 = {}
              L5_3 = L2_3.xpboost_created_at
              L4_3.creationTime = L5_3
              L5_3 = A0_2
              L5_3 = L5_3.id
              L4_3.id = L5_3
              L3_3.xpBoost = L4_3
            end
          end
          L3_3 = {}
          L4_3 = L2_3.next_prices
          if L4_3 then
            L4_3 = pairs
            L5_3 = L2_3.next_prices
            L4_3, L5_3, L6_3 = L4_3(L5_3)
            for L7_3, L8_3 in L4_3, L5_3, L6_3 do
              L9_3 = tonumber
              L10_3 = L7_3
              L9_3 = L9_3(L10_3)
              L9_3 = L9_3 - 17
              L3_3[L9_3] = L8_3
              L9_3 = L7_1
              L10_3 = tonumber
              L11_3 = L7_3
              L10_3 = L10_3(L11_3)
              L9_3 = L9_3[L10_3]
              L9_3.price = L8_3
              L9_3 = L7_1
              L10_3 = tonumber
              L11_3 = L7_3
              L10_3 = L10_3(L11_3)
              L9_3 = L9_3[L10_3]
              L9_3.priceNumber = L8_3
              L9_3 = L7_1
              L10_3 = tonumber
              L11_3 = L7_3
              L10_3 = L10_3(L11_3)
              L9_3 = L9_3[L10_3]
              L9_3.localPrice = L8_3
            end
          end
          L4_3 = mainPlayer
          L5_3 = L2_3.gold
          L4_3.gold = L5_3
          L4_3 = mainPlayer
          L5_3 = L2_3.nectar
          L4_3.nectar = L5_3
          L4_3 = A1_2
          if L4_3 ~= nil then
            L4_3 = A1_2
            L5_3 = A3_2
            L6_3 = L3_3
            L4_3(L5_3, L6_3)
          end
        end
      end
      
      L11_2 = {}
      L12_2 = log3
      L13_2 = "Buying comsumable pack with id : "
      L14_2 = A0_2.id
      L12_2(L13_2, L14_2)
      L12_2 = A0_2.id
      L11_2.type = L12_2
      L11_2.with_nectar = true
      L12_2 = {}
      L12_2.body = L11_2
      L13_2 = log3
      L14_2 = "~~~~ Post data for purchase:"
      L15_2 = postData
      L13_2(L14_2, L15_2)
      L13_2 = network
      L13_2 = L13_2.getDefaultHeader
      L13_2 = L13_2()
      L12_2.headers = L13_2
      L13_2 = network
      L13_2 = L13_2.request
      L14_2 = L3_1
      L14_2 = L14_2.API_Path
      L15_2 = L3_1
      L15_2 = L15_2.API_Buy_Boost_Pack
      L14_2 = L14_2 .. L15_2
      L15_2 = "POST"
      L16_2 = L10_2
      L17_2 = L12_2
      L18_2 = "buy item"
      L19_2 = nil
      L20_2 = A2_2
      L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    else
      L10_2 = A0_2.itemType
      if L10_2 == 2 then
        L10_2 = L11_1
        L10_2 = L10_2.show
        L11_2 = L12_1
        L11_2 = L11_2.Purchasing
        L10_2(L11_2)
        L10_2 = _serverType
        if L10_2 == "test" then
          L10_2 = A2_2
          L11_2 = A0_2
          L12_2 = "\216\175\216\177 \216\167\219\140\217\134 \216\179\216\177\217\136\216\177 \216\167\217\133\218\169\216\167\217\134 \216\174\216\177\219\140\216\175 \216\183\217\132\216\167 \217\136\216\172\217\136\216\175 \217\134\216\175\216\167\216\177\216\175."
          L10_2(L11_2, L12_2)
          return
        end
        L10_2 = A0_2.UID
        L11_2 = L3_1
        L11_2 = L11_2.App_UID
        L12_2 = ".avatar"
        L11_2 = L11_2 .. L12_2
        if L10_2 == L11_2 then
          L10_2 = mainPlayer
          L10_2 = L10_2.avatarnumFreeSlots
          if L10_2 then
            L10_2 = mainPlayer
            L10_2 = L10_2.avatarnumFreeSlots
            if 0 < L10_2 then
              L10_2 = L4_1
              L10_2 = L10_2.buyAvatarPackWithFreeSlot
              L11_2 = A3_2
              L12_2 = A3_2.successToBuyItem
              L13_2 = A3_2.failedToBuyItem
              L10_2(L11_2, L12_2, L13_2)
              L10_2 = mainPlayer
              L11_2 = mainPlayer
              L11_2 = L11_2.avatarnumFreeSlots
              L11_2 = L11_2 - 1
              L10_2.avatarnumFreeSlots = L11_2
              return
            end
          end
          L9_2.shopState = "BuyAvatarPack"
        elseif L9_2 then
          L9_2.shopState = "BuyGoldPack"
        end
        L10_2 = L5_1
        L10_2 = L10_2.logEvent
        L11_2 = "Buy Button For Gold Packs Touched"
        L10_2(L11_2)
        L10_2 = L5_1
        L10_2 = L10_2.logEvent
        L11_2 = "Item Bought"
        L12_2 = {}
        L12_2.itemType = "gold"
        L13_2 = A0_2.id
        L12_2.valueId = L13_2
        L10_2(L11_2, L12_2)
        L10_2 = print
        L11_2 = "Buy button clicked with storeType = "
        L12_2 = L4_1
        L12_2 = L12_2.storeType
        L11_2 = L11_2 .. L12_2
        L10_2(L11_2)
        L10_2 = L4_1
        L10_2 = L10_2.storeType
        if L10_2 ~= "bazar" then
          L10_2 = L4_1
          L10_2 = L10_2.storeType
          if L10_2 ~= "myket" then
            L10_2 = L4_1
            L10_2 = L10_2.storeType
            if L10_2 ~= "iraqapps" then
              L10_2 = L4_1
              L10_2 = L10_2.storeType
              if L10_2 ~= "google" then
                goto lbl_248
              end
            end
          end
        end
        L10_2 = log3
        L11_2 = "startPurchaseWithIdAndUID"
        L12_2 = A0_2.storeId
        L13_2 = A0_2.id
        L14_2 = A0_2.UID
        L15_2 = A4_2
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        L10_2 = L4_1
        L10_2 = L10_2.startPurchaseWithIdAndUID
        L11_2 = A0_2.storeId
        L12_2 = A0_2.UID
        L13_2 = A3_2
        L14_2 = A4_2
        L15_2 = A0_2.isNectar
        L16_2 = A0_2.isSubscription
        L17_2 = A8_2
        L18_2 = false
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
        goto lbl_343
        ::lbl_248::
        L10_2 = L4_1
        L10_2 = L10_2.storeType
        if L10_2 ~= "sibche" then
          L10_2 = L4_1
          L10_2 = L10_2.storeType
          if L10_2 ~= "appstore" then
            goto lbl_272
          end
          L10_2 = mainPlayer
          L10_2 = L10_2.canUseVitrin
          if L10_2 ~= true then
            goto lbl_272
          end
        end
        L10_2 = L11_1
        L10_2 = L10_2.hide
        L10_2()
        L10_2 = L4_1
        L10_2 = L10_2.startWebPurchaseFlow
        L11_2 = A0_2.storeId
        L12_2 = A0_2.UID
        L13_2 = A3_2
        L14_2 = A4_2
        L15_2 = A0_2.isNectar
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        goto lbl_343
        ::lbl_272::
        L10_2 = _storeType
        if L10_2 == "samsung" then
          L10_2 = log3
          L11_2 = "samsung uid is :"
          L12_2 = A0_2.samsungId
          L10_2(L11_2, L12_2)
          L10_2 = L4_1
          L10_2 = L10_2.startPurchaseWithIdAndUID
          L11_2 = A0_2.storeId
          L12_2 = A0_2.samsungId
          L13_2 = A3_2
          L14_2 = A4_2
          L15_2 = A0_2.isNectar
          L16_2 = nil
          L17_2 = nil
          L18_2 = false
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
        else
          L10_2 = L4_1
          L10_2 = L10_2.storeType
          if L10_2 == "parsian" then
            L10_2 = L11_1
            L10_2 = L10_2.hide
            L10_2()
            L10_2 = L4_1
            L10_2 = L10_2.startWebPurchaseFlow
            L11_2 = A0_2.storeId
            L12_2 = A0_2.UID
            L13_2 = A3_2
            L14_2 = A4_2
            L15_2 = A0_2.isNectar
            L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
          else
            L10_2 = L4_1
            L10_2 = L10_2.storeType
            if L10_2 == "appstore" then
              L10_2 = L4_1
              L10_2 = L10_2.startPurchaseWithIdAndUID
              L11_2 = A0_2.storeId
              L12_2 = A0_2.UID
              L13_2 = A3_2
              L14_2 = A4_2
              L15_2 = A0_2.isNectar
              L16_2 = nil
              L17_2 = nil
              L18_2 = false
              L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
            else
              L10_2 = L4_1
              L10_2 = L10_2.storeType
              if L10_2 == "test" then
                function L10_2(A0_3)
                  local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
                  
                  if A0_3 < 1 then
                    L1_3 = nil
                    return L1_3
                  end
                  L1_3 = ""
                  L2_3 = 1
                  L3_3 = A0_3
                  L4_3 = 1
                  for L5_3 = L2_3, L3_3, L4_3 do
                    L6_3 = L1_3
                    L7_3 = string
                    L7_3 = L7_3.char
                    L8_3 = math
                    L8_3 = L8_3.random
                    L9_3 = 32
                    L10_3 = 126
                    L8_3, L9_3, L10_3 = L8_3(L9_3, L10_3)
                    L7_3 = L7_3(L8_3, L9_3, L10_3)
                    L1_3 = L6_3 .. L7_3
                  end
                  return L1_3
                end
                
                L11_2 = L4_1
                L11_2 = L11_2.sendReceipt
                L12_2 = L10_2
                L13_2 = 16
                L12_2 = L12_2(L13_2)
                L13_2 = A3_2.successToBuyItem
                L14_2 = A3_2.failedToBuyItem
                L15_2 = nil
                L16_2 = A3_2
                L17_2 = nil
                L18_2 = nil
                L19_2 = false
                L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
              else
                L10_2 = A2_2
                L11_2 = A0_2
                L12_2 = [[
We thank you for your interest, however gold purchasing is currently unavailable.
Thank you.]]
                L10_2(L11_2, L12_2)
              end
            end
          end
        end
      end
    end
  end
  ::lbl_343::
end

buyItem = L13_1

function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.sale
  if L1_2 then
    L1_2 = A0_2.sale
    L1_2 = L1_2.startTime
    L2_2 = mainPlayer
    L2_2 = L2_2.timeDelta
    L1_2 = L1_2 + L2_2
    L2_2 = os
    L2_2 = L2_2.time
    L2_2 = L2_2()
    if L1_2 <= L2_2 then
      L1_2 = A0_2.sale
      L1_2 = L1_2.endTime
      L2_2 = mainPlayer
      L2_2 = L2_2.timeDelta
      L1_2 = L1_2 + L2_2
      L2_2 = os
      L2_2 = L2_2.time
      L2_2 = L2_2()
      if L1_2 > L2_2 then
        L1_2 = true
        return L1_2
    end
    else
      L1_2 = false
      return L1_2
    end
  else
    L1_2 = false
    return L1_2
  end
end

checkForSale = L13_1

function L13_1(A0_2)
  local L1_2
  L1_2 = A0_2.id
  if L1_2 == 5 then
    L1_2 = 20
    return L1_2
  else
    L1_2 = A0_2.id
    if L1_2 ~= 25 then
      L1_2 = A0_2.id
      if L1_2 ~= 16 then
        goto lbl_16
      end
    end
    L1_2 = 1
    do return L1_2 end
    goto lbl_18
    ::lbl_16::
    L1_2 = 2
    return L1_2
  end
  ::lbl_18::
end

numberOfCardInCardPack = L13_1
