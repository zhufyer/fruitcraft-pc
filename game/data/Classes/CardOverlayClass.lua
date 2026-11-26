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
L2_1 = "Models.Player"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Models.Card"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.CardView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Language"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "widget"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Models.Card"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Views.ActivityIndicatorView"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Models.AuctionItem"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Constants"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Utils.Toolbox"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Tutorial.TutorialManager2"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Views.EffectsManager"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Components.TDButtonView"
L13_1 = L13_1(L14_1)
L14_1 = require
L15_1 = "Models.UserCard"
L14_1 = L14_1(L15_1)
L15_1 = require
L16_1 = "Core.ParentStandardBaseOverlayClass"
L15_1 = L15_1(L16_1)
L16_1 = setmetatable
L17_1 = _M
L18_1 = L15_1
L16_1(L17_1, L18_1)
L16_1 = _M
L17_1 = _M
L16_1.__index = L17_1
L16_1 = _M
L17_1 = true
L18_1 = nil
L19_1 = nil
L20_1 = nil
L21_1 = nil
L22_1 = nil

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = mainPlayer
  L3_2 = L3_2.cards
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.baseId
    if A0_2 == L7_2 then
      L7_2 = L6_2.cardUsedForBuilding
      if not L7_2 then
        L1_2 = L1_2 + 1
      end
    end
  end
  return L1_2
end

function L24_1(A0_2)
  local L1_2, L2_2
  L1_2 = log3
  L2_2 = "Auction was successful"
  L1_2(L2_2)
  A0_2.cardUsedForBuilding = true
  L1_2 = L0_1
  L1_2 = L1_2.getScene
  L2_2 = "Scenes.Cards"
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.refreshCards
  L2_2()
  L2_2 = L7_1
  L2_2 = L2_2.hide
  L2_2()
end

auctionDidSuccess = L24_1

function L24_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L7_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "Error"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = log3
  L2_2 = "Auction error is :"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

auctionDidFaild = L24_1

function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L2_2 = L15_1
  L2_2 = L2_2.create
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = startTutorialSequence
  A0_2.startTutorialSequence = L2_2
  L2_2 = assert
  L3_2 = A1_2.params
  L3_2 = L3_2.card
  L4_2 = "A card needs to be provided in the params field."
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.params
  L2_2 = L2_2.card
  L3_2 = nil
  L4_2 = A1_2.params
  if L4_2 then
    L4_2 = A1_2.params
    L4_2 = L4_2.isHero
    if L4_2 then
      L4_2 = A1_2.params
      L3_2 = L4_2.isHero
    end
  end
  L4_2 = display
  L4_2 = L4_2.newRect
  L5_2 = A0_2.contentGroup
  L6_2 = 0
  L7_2 = 0
  L8_2 = 570
  L9_2 = 360
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2.x = 0
  L4_2.y = 0
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2.isHitTestable = true
  L6_2 = L4_2
  L5_2 = L4_2.addEventListener
  L7_2 = "tap"
  
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L17_1
    if L0_3 then
      L0_3 = log3
      L1_3 = "hiding overlay"
      L0_3(L1_3)
      L0_3 = L16_1
      L0_3 = L0_3.hideWithAnimation
      L1_3 = A0_2
      L0_3(L1_3)
      L0_3 = L3_2
      if L0_3 ~= true then
        L0_3 = L0_1
        L0_3 = L0_3.getScene
        L1_3 = "Scenes.Cards"
        L0_3 = L0_3(L1_3)
        L2_3 = L0_3
        L1_3 = L0_3.show
        L3_3 = {}
        L3_3.phase = "did"
        L1_3(L2_3, L3_3)
      end
    end
    L0_3 = true
    return L0_3
  end
  
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.addEventListener
  L7_2 = "touch"
  
  function L8_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = 3
  L6_2 = mainPlayer
  L6_2 = L6_2.newCards
  if L6_2 then
    L6_2 = mainPlayer
    L6_2 = L6_2.level
    L7_2 = L9_1
    L7_2 = L7_2.MaximumLevelToShowNewSeriesOfCards
    if L6_2 < L7_2 then
      L5_2 = 10
    end
  end
  L6_2 = display
  L6_2 = L6_2.newRoundedRect
  L7_2 = A0_2.contentGroup
  L8_2 = 0
  L9_2 = 0
  L10_2 = 320
  L11_2 = 295
  L12_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2.strokeWidth = 2
  L8_2 = L6_2
  L7_2 = L6_2.setStrokeColor
  L9_2 = L9_1
  L9_2 = L9_2.greenColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L8_2 = L6_2
  L7_2 = L6_2.setFillColor
  L9_2 = L9_1
  L9_2 = L9_2.whiteColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L6_2.x = 0
  L6_2.y = 0
  L8_2 = L6_2
  L7_2 = L6_2.addEventListener
  L9_2 = "touch"
  
  function L10_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L6_2
  L7_2 = L6_2.addEventListener
  L9_2 = "tap"
  
  function L10_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = A0_2.contentGroup
  L9_2 = L4_1
  L9_2 = L9_2["Card Details"]
  L10_2 = 0
  L11_2 = 0
  L12_2 = L9_1
  L12_2 = L12_2.fontForTitle
  L12_2 = L12_2()
  L13_2 = 20
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L9_2 = L7_2
  L8_2 = L7_2.setFillColor
  L10_2 = L9_1
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L8_2 = L6_2.x
  L7_2.x = L8_2
  L8_2 = L6_2.height
  L8_2 = -L8_2
  L8_2 = L8_2 / 2
  L8_2 = L8_2 + 10
  L9_2 = L7_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L7_2.y = L8_2
  L8_2 = L13_1
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = {}
  L10_2.width = 30
  L10_2.height = 30
  L11_2 = L9_1
  L11_2 = L11_2.Path_Assets
  L12_2 = "BattleItems/close.png"
  L11_2 = L11_2 .. L12_2
  L10_2.imageName = L11_2
  
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L17_1
    if L0_3 then
      L0_3 = log3
      L1_3 = "hiding overlay from button"
      L0_3(L1_3)
      L0_3 = L16_1
      L0_3 = L0_3.hideWithAnimation
      L1_3 = A0_2
      L0_3(L1_3)
      L0_3 = L3_2
      if L0_3 ~= true then
        L0_3 = L0_1
        L0_3 = L0_3.getScene
        L1_3 = "Scenes.Cards"
        L0_3 = L0_3(L1_3)
        L2_3 = L0_3
        L1_3 = L0_3.show
        L3_3 = {}
        L3_3.phase = "did"
        L1_3(L2_3, L3_3)
      end
    end
  end
  
  L10_2.onRelease = L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L18_1 = L8_2
  L8_2 = A0_2.contentGroup
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L18_1
  L10_2 = L10_2.view
  L8_2(L9_2, L10_2)
  L8_2 = L18_1
  L9_2 = L6_2.width
  L9_2 = -L9_2
  L9_2 = L9_2 / 2
  L9_2 = L9_2 + 10
  L10_2 = L18_1
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L8_2.x = L9_2
  L8_2 = L18_1
  L9_2 = L7_2.y
  L8_2.y = L9_2
  L8_2 = 178
  L9_2 = 250
  L10_2 = L6_2.height
  L10_2 = L10_2 / 2
  L10_2 = L10_2 - 42
  L11_2 = mainPlayer
  L11_2 = L11_2.newCards
  if L11_2 then
    L11_2 = mainPlayer
    L11_2 = L11_2.level
    L12_2 = L9_1
    L12_2 = L12_2.MaximumLevelToShowNewSeriesOfCards
    if L11_2 < L12_2 then
      L8_2 = 179
      L9_2 = 200
    end
  end
  L11_2 = L3_1
  L12_2 = L11_2
  L11_2 = L11_2.new
  L13_2 = "big"
  L14_2 = L2_2
  L15_2 = scene
  L16_2 = {}
  L16_2.cardWidth = L8_2
  L16_2.cardHeight = L9_2
  L17_2 = mainPlayer
  L17_2 = L17_2.newCards
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  A0_2.cardUI = L11_2
  L11_2 = mainPlayer
  L11_2 = L11_2.newCards
  if L11_2 then
    L11_2 = mainPlayer
    L11_2 = L11_2.level
    L12_2 = L9_1
    L12_2 = L12_2.MaximumLevelToShowNewSeriesOfCards
    if L11_2 < L12_2 then
      L11_2 = A0_2.cardUI
      L11_2 = L11_2.view
      L11_2 = L11_2.height
      L11_2 = L11_2 / 2
      L10_2 = L11_2 - 25
    end
  end
  L11_2 = A0_2.contentGroup
  L12_2 = L11_2
  L11_2 = L11_2.insert
  L13_2 = A0_2.cardUI
  L13_2 = L13_2.view
  L11_2(L12_2, L13_2)
  L11_2 = A0_2.cardUI
  L12_2 = L11_2
  L11_2 = L11_2.setPosition
  L13_2 = L6_2.x
  L14_2 = L6_2.width
  L14_2 = L14_2 / 2
  L13_2 = L13_2 - L14_2
  L13_2 = L13_2 + 10
  L14_2 = L6_2.y
  L14_2 = L14_2 - L10_2
  L11_2(L12_2, L13_2, L14_2)
  L11_2 = A1_2.params
  if L11_2 then
    L11_2 = A1_2.params
    L11_2 = L11_2.noButtons
    if L11_2 == true then
  end
  else
    L11_2 = mainPlayer
    L11_2 = L11_2.level
    L12_2 = L9_1
    L12_2 = L12_2.UnlockLevel_Auction
    if L11_2 >= L12_2 then
      L11_2 = L2_2.veteran_level
      if L11_2 == 0 and L3_2 ~= true then
        L11_2 = L13_1
        L12_2 = L11_2
        L11_2 = L11_2.new
        L13_2 = {}
        L13_2.width = 30
        L13_2.height = 30
        L14_2 = L9_1
        L14_2 = L14_2.Path_Assets
        L15_2 = "Auction/Sell-button.png"
        L14_2 = L14_2 .. L15_2
        L13_2.imageName = L14_2
        
        function L14_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
          L0_3 = L8_1
          L0_3 = L0_3.auctionPriceForCard
          L1_3 = L2_2
          L0_3 = L0_3(L1_3)
          L1_3 = L10_1
          L1_3 = L1_3.stringThousandCommaSeperated
          L2_3 = ""
          L3_3 = L0_3
          L2_3 = L2_3 .. L3_3
          L1_3 = L1_3(L2_3)
          L0_3 = L1_3
          L1_3 = L4_1
          L1_3 = L1_3.adjustNumber
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          L2_3 = "G"
          L0_3 = L1_3 .. L2_3
          L1_3 = L0_1
          L1_3 = L1_3.showOverlay
          L2_3 = "Scenes.AlertOverlay"
          L3_3 = {}
          L4_3 = {}
          L5_3 = L4_1
          L5_3 = L5_3.Auction
          L4_3.title = L5_3
          L5_3 = L4_1
          L5_3 = L5_3.localizedString
          L6_3 = "Card auction alert"
          L7_3 = {}
          L7_3.price = L0_3
          L5_3 = L5_3(L6_3, L7_3)
          L4_3.text = L5_3
          
          function L5_3()
            local L0_4, L1_4, L2_4, L3_4
            L0_4 = L7_1
            L0_4 = L0_4.show
            L1_4 = L4_1
            L1_4 = L1_4.Auction
            L0_4(L1_4)
            L0_4 = L8_1
            L0_4 = L0_4.auctionCard
            L1_4 = L2_2
            L2_4 = auctionDidSuccess
            L3_4 = auctionDidFaild
            L0_4(L1_4, L2_4, L3_4)
          end
          
          L4_3.action = L5_3
          L5_3 = L4_1
          L5_3 = L5_3.Auction
          L4_3.buttonText = L5_3
          L5_3 = L4_1
          L5_3 = L5_3.Cancel
          L4_3.buttonText2 = L5_3
          
          function L5_3()
            local L0_4, L1_4, L2_4, L3_4, L4_4
            L0_4 = L0_1
            L0_4 = L0_4.showOverlay
            L1_4 = "Scenes.CardOverlay"
            L2_4 = {}
            L3_4 = {}
            L4_4 = L2_2
            L3_4.card = L4_4
            L2_4.params = L3_4
            L0_4(L1_4, L2_4)
          end
          
          L4_3.action2 = L5_3
          L3_3.params = L4_3
          L1_3(L2_3, L3_3)
        end
        
        L13_2.onRelease = L14_2
        L11_2 = L11_2(L12_2, L13_2)
        L20_1 = L11_2
        L11_2 = A0_2.contentGroup
        L12_2 = L11_2
        L11_2 = L11_2.insert
        L13_2 = L20_1
        L13_2 = L13_2.view
        L11_2(L12_2, L13_2)
        L11_2 = L20_1
        L12_2 = L6_2.width
        L12_2 = L12_2 / 2
        L12_2 = L12_2 - 10
        L13_2 = L18_1
        L13_2 = L13_2.width
        L13_2 = L13_2 / 2
        L12_2 = L12_2 - L13_2
        L11_2.x = L12_2
        L11_2 = L20_1
        L12_2 = L7_2.y
        L11_2.y = L12_2
      end
    end
    L11_2 = log3
    L12_2 = L9_1
    L12_2 = L12_2.UnlockLevel_Enhance
    L11_2(L12_2)
    L11_2 = mainPlayer
    L11_2 = L11_2.level
    L12_2 = L9_1
    L12_2 = L12_2.UnlockLevel_Enhance
    if L11_2 >= L12_2 then
      L11_2 = L2_2.cardUsedForBuilding
      if L11_2 ~= true then
        L11_2 = L2_2.powerBeforeBoost
        if not L11_2 then
          L11_2 = L2_2.power
        end
        L12_2 = L2_2.powerLimit
        if L11_2 < L12_2 then
          L12_2 = L13_1
          L13_2 = L12_2
          L12_2 = L12_2.new
          L14_2 = {}
          L15_2 = L4_1
          L15_2 = L15_2.Enhance
          L14_2.label = L15_2
          L15_2 = Theme
          L15_2 = L15_2.colorsSet
          L15_2 = L15_2.blackColor
          L14_2.labelColor = L15_2
          L14_2.width = 123
          L14_2.height = 22
          L15_2 = L9_1
          L15_2 = L15_2.Path_Assets
          L16_2 = "CardScene/button.png"
          L15_2 = L15_2 .. L16_2
          L14_2.imageName = L15_2
          
          function L15_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
            L0_3 = {}
            L1_3 = {}
            L2_3 = L2_2
            L1_3.enhanceCard = L2_3
            L2_3 = L0_1
            L2_3 = L2_3.getSceneName
            L3_3 = "current"
            L2_3 = L2_3(L3_3)
            L1_3.previousScene = L2_3
            L0_3.params = L1_3
            L1_3 = L22_1
            if L1_3 then
              L1_3 = L22_1
              L1_3()
              L1_3 = nil
              L22_1 = L1_3
              L1_3 = L0_3.params
              L1_3.isTutorial = true
            end
            L1_3 = L3_2
            if L1_3 then
              L1_3 = L0_1
              L1_3 = L1_3.getSceneName
              L2_3 = "current"
              L1_3 = L1_3(L2_3)
              if L1_3 == "Scenes.HeroScene" then
                L1_3 = showSimpleDialog
                L2_3 = L4_1
                L2_3 = L2_3["Active Hero"]
                L3_3 = L4_1
                L3_3 = L3_3["Are you sure this is your active hero?"]
                L4_3 = L4_1
                L4_3 = L4_3.OK
                
                function L5_3()
                  local L0_4, L1_4, L2_4
                  L0_4 = L0_1
                  L0_4 = L0_4.gotoScene
                  L1_4 = "Scenes.Enhance"
                  L2_4 = L0_3
                  L0_4(L1_4, L2_4)
                end
                
                L6_3 = L4_1
                L6_3 = L6_3.Cancel
                L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
            end
            else
              L1_3 = L0_1
              L1_3 = L1_3.gotoScene
              L2_3 = "Scenes.Enhance"
              L3_3 = L0_3
              L1_3(L2_3, L3_3)
            end
          end
          
          L14_2.onRelease = L15_2
          L12_2 = L12_2(L13_2, L14_2)
          L19_1 = L12_2
          L12_2 = A0_2.contentGroup
          L13_2 = L12_2
          L12_2 = L12_2.insert
          L14_2 = L19_1
          L14_2 = L14_2.view
          L12_2(L13_2, L14_2)
          L12_2 = L19_1
          L13_2 = L6_2.x
          L14_2 = L6_2.width
          L14_2 = L14_2 / 2
          L13_2 = L13_2 + L14_2
          L13_2 = L13_2 - 5
          L14_2 = L19_1
          L14_2 = L14_2.width
          L14_2 = L14_2 / 2
          L13_2 = L13_2 - L14_2
          L12_2.x = L13_2
          L12_2 = L19_1
          L13_2 = L6_2.y
          L14_2 = L6_2.height
          L14_2 = L14_2 / 2
          L13_2 = L13_2 + L14_2
          L13_2 = L13_2 - 32
          L14_2 = L19_1
          L14_2 = L14_2.height
          L14_2 = L14_2 / 2
          L13_2 = L13_2 - L14_2
          L12_2.y = L13_2
        else
          L12_2 = L13_1
          L13_2 = L12_2
          L12_2 = L12_2.new
          L14_2 = {}
          L15_2 = L4_1
          L15_2 = L15_2["Max Power Reached"]
          L14_2.label = L15_2
          L14_2.width = 123
          L14_2.height = 23
          L15_2 = L9_1
          L15_2 = L15_2.Path_Assets
          L16_2 = "CardScene/maxRarityFrame.png"
          L15_2 = L15_2 .. L16_2
          L14_2.imageName = L15_2
          L15_2 = Theme
          L15_2 = L15_2.colorsSet
          L15_2 = L15_2.whiteColor
          L14_2.labelColor = L15_2
          L12_2 = L12_2(L13_2, L14_2)
          L14_2 = L12_2
          L13_2 = L12_2.setEnabled
          L15_2 = false
          L13_2(L14_2, L15_2)
          L13_2 = A0_2.contentGroup
          L14_2 = L13_2
          L13_2 = L13_2.insert
          L15_2 = L12_2.view
          L13_2(L14_2, L15_2)
          L13_2 = L6_2.x
          L14_2 = L6_2.width
          L14_2 = L14_2 / 2
          L13_2 = L13_2 + L14_2
          L13_2 = L13_2 - 5
          L14_2 = L12_2.width
          L14_2 = L14_2 / 2
          L13_2 = L13_2 - L14_2
          L12_2.x = L13_2
          L13_2 = L6_2.y
          L14_2 = L6_2.height
          L14_2 = L14_2 / 2
          L13_2 = L13_2 + L14_2
          L13_2 = L13_2 - 32
          L14_2 = L12_2.height
          L14_2 = L14_2 / 2
          L13_2 = L13_2 - L14_2
          L12_2.y = L13_2
        end
        L12_2 = mainPlayer
        L12_2 = L12_2.tribe
        if L12_2 then
          L12_2 = mainPlayer
          L12_2 = L12_2.level
          if 6 <= L12_2 then
            L12_2 = L2_2.cardUsedForBuilding
            if L12_2 ~= true then
              L12_2 = L23_1
              L13_2 = L2_2.baseId
              L12_2 = L12_2(L13_2)
              if not (2 <= L12_2) or L3_2 == true then
                if L3_2 ~= true then
                  goto lbl_480
                end
                L12_2 = L14_1
                L12_2 = L12_2.getNextCardForbaseId
                L13_2 = L2_2.baseId
                L12_2 = L12_2(L13_2)
                if not L12_2 then
                  goto lbl_480
                end
              end
              L12_2 = L2_2.rarity
              L13_2 = L2_2.maxLevel
              if L12_2 < L13_2 then
                L12_2 = L13_1
                L13_2 = L12_2
                L12_2 = L12_2.new
                L14_2 = {}
                L15_2 = L4_1
                L15_2 = L15_2.Evolve
                L14_2.label = L15_2
                L15_2 = Theme
                L15_2 = L15_2.colorsSet
                L15_2 = L15_2.blackColor
                L14_2.labelColor = L15_2
                L14_2.width = 123
                L14_2.height = 23
                L15_2 = L9_1
                L15_2 = L15_2.Path_Assets
                L16_2 = "CardScene/button.png"
                L15_2 = L15_2 .. L16_2
                L14_2.imageName = L15_2
                
                function L15_2()
                  local L0_3, L1_3, L2_3, L3_3
                  L0_3 = {}
                  L1_3 = {}
                  L2_3 = L2_2
                  L1_3.evolveCard = L2_3
                  L2_3 = L0_1
                  L2_3 = L2_3.getSceneName
                  L3_3 = "current"
                  L2_3 = L2_3(L3_3)
                  L1_3.previousScene = L2_3
                  L0_3.params = L1_3
                  L1_3 = L22_1
                  if L1_3 then
                    L1_3 = L22_1
                    L1_3()
                    L1_3 = nil
                    L22_1 = L1_3
                    L1_3 = L0_3.params
                    L1_3.isTutorial = true
                  end
                  L1_3 = L3_2
                  if L1_3 then
                    L1_3 = L0_1
                    L1_3 = L1_3.gotoScene
                    L2_3 = "Scenes.HeroEvolveScene"
                    L3_3 = L0_3
                    L1_3(L2_3, L3_3)
                  else
                    L1_3 = L0_1
                    L1_3 = L1_3.gotoScene
                    L2_3 = "Scenes.Evolve"
                    L3_3 = L0_3
                    L1_3(L2_3, L3_3)
                  end
                end
                
                L14_2.onRelease = L15_2
                L12_2 = L12_2(L13_2, L14_2)
                L21_1 = L12_2
                L12_2 = A0_2.contentGroup
                L13_2 = L12_2
                L12_2 = L12_2.insert
                L14_2 = L21_1
                L14_2 = L14_2.view
                L12_2(L13_2, L14_2)
                L12_2 = L21_1
                L13_2 = L6_2.x
                L14_2 = L6_2.width
                L14_2 = L14_2 / 2
                L13_2 = L13_2 + L14_2
                L13_2 = L13_2 - 5
                L14_2 = L21_1
                L14_2 = L14_2.width
                L14_2 = L14_2 / 2
                L13_2 = L13_2 - L14_2
                L12_2.x = L13_2
                L12_2 = L21_1
                L13_2 = L6_2.y
                L14_2 = L6_2.height
                L14_2 = L14_2 / 2
                L13_2 = L13_2 + L14_2
                L13_2 = L13_2 - 34
                L14_2 = L21_1
                L14_2 = L14_2.height
                L14_2 = L14_2 / 2
                L13_2 = L13_2 - L14_2
                L13_2 = L13_2 + 5
                L14_2 = L21_1
                L14_2 = L14_2.height
                L13_2 = L13_2 + L14_2
                L12_2.y = L13_2
              else
                ::lbl_480::
                L12_2 = L6_1
                L12_2 = L12_2.cardIsEvolvable
                L13_2 = L2_2
                L12_2 = L12_2(L13_2)
                if not L12_2 then
                  L12_2 = L13_1
                  L13_2 = L12_2
                  L12_2 = L12_2.new
                  L14_2 = {}
                  L15_2 = L4_1
                  L15_2 = L15_2["Max Rarity"]
                  L14_2.label = L15_2
                  L14_2.width = 123
                  L14_2.height = 23
                  L15_2 = L9_1
                  L15_2 = L15_2.Path_Assets
                  L16_2 = "CardScene/maxRarityFrame.png"
                  L15_2 = L15_2 .. L16_2
                  L14_2.imageName = L15_2
                  L15_2 = Theme
                  L15_2 = L15_2.colorsSet
                  L15_2 = L15_2.whiteColor
                  L14_2.labelColor = L15_2
                  L12_2 = L12_2(L13_2, L14_2)
                  L14_2 = L12_2
                  L13_2 = L12_2.setEnabled
                  L15_2 = false
                  L13_2(L14_2, L15_2)
                  L13_2 = A0_2.contentGroup
                  L14_2 = L13_2
                  L13_2 = L13_2.insert
                  L15_2 = L12_2.view
                  L13_2(L14_2, L15_2)
                  L13_2 = L6_2.x
                  L14_2 = L6_2.width
                  L14_2 = L14_2 / 2
                  L13_2 = L13_2 + L14_2
                  L13_2 = L13_2 - 5
                  L14_2 = L12_2.width
                  L14_2 = L14_2 / 2
                  L13_2 = L13_2 - L14_2
                  L12_2.x = L13_2
                  L13_2 = L6_2.y
                  L14_2 = L6_2.height
                  L14_2 = L14_2 / 2
                  L13_2 = L13_2 + L14_2
                  L13_2 = L13_2 - 34
                  L14_2 = L12_2.height
                  L14_2 = L14_2 / 2
                  L13_2 = L13_2 - L14_2
                  L13_2 = L13_2 + 5
                  L14_2 = L12_2.height
                  L13_2 = L13_2 + L14_2
                  L12_2.y = L13_2
                end
              end
            end
          end
        end
      end
    end
  end
  L11_2 = L2_2.description
  if not L11_2 then
    L11_2 = ""
  end
  L12_2 = nil
  L13_2 = math
  L13_2 = L13_2.ceil
  L14_2 = L10_1
  L14_2 = L14_2.stringUTFLength
  L15_2 = L11_2
  L14_2 = L14_2(L15_2)
  L14_2 = L14_2 * 6.5
  L14_2 = L14_2 / 123
  L13_2 = L13_2(L14_2)
  L12_2 = L13_2 * 20
  L13_2 = nil
  L14_2 = 10
  L15_2 = system
  L15_2 = L15_2.getInfo
  L16_2 = "build"
  L15_2 = L15_2(L16_2)
  if "2013.1137" < L15_2 then
    L15_2 = system
    L15_2 = L15_2.getInfo
    L16_2 = "platformName"
    L15_2 = L15_2(L16_2)
    if L15_2 ~= "Android" then
      L15_2 = L4_1
      L15_2 = L15_2.lang
      if L15_2 == "fa" then
        goto lbl_569
      end
    end
  end
  L15_2 = L4_1
  L15_2 = L15_2.lang
  if L15_2 == "ar" then
    ::lbl_569::
    L15_2 = {}
    L16_2 = A0_2.contentGroup
    L15_2.parent = L16_2
    L15_2.text = L11_2
    L15_2.x = 0
    L15_2.y = 0
    L15_2.width = 123
    L15_2.height = 250
    L16_2 = L9_1
    L16_2 = L16_2.fontForSubtitle
    L16_2 = L16_2()
    L15_2.font = L16_2
    L15_2.fontSize = L14_2
    L15_2.align = "right"
    L16_2 = display
    L16_2 = L16_2.newText
    L17_2 = L15_2
    L16_2 = L16_2(L17_2)
    L13_2 = L16_2
  else
    L15_2 = display
    L15_2 = L15_2.newText
    L16_2 = A0_2.contentGroup
    L17_2 = L11_2
    L18_2 = 0
    L19_2 = 0
    L20_2 = 123
    L21_2 = 250
    L22_2 = L9_1
    L22_2 = L22_2.fontForSubtitle
    L22_2 = L22_2()
    L23_2 = L14_2
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L13_2 = L15_2
  end
  L16_2 = L13_2
  L15_2 = L13_2.setFillColor
  L17_2 = L9_1
  L17_2 = L17_2.darkBlueColor
  L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L17_2()
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L15_2 = L4_1
  L15_2 = L15_2.lang
  if L15_2 ~= "fa" then
    L15_2 = L4_1
    L15_2 = L15_2.lang
    if L15_2 ~= "ar" then
      goto lbl_623
    end
  end
  L15_2 = A0_2.cardUI
  L15_2 = L15_2.view
  L15_2 = L15_2.y
  L15_2 = L15_2 + 125
  L15_2 = L15_2 + 20
  L13_2.y = L15_2
  goto lbl_629
  ::lbl_623::
  L15_2 = A0_2.cardUI
  L15_2 = L15_2.view
  L15_2 = L15_2.y
  L15_2 = L15_2 + 125
  L15_2 = L15_2 + 20
  L13_2.y = L15_2
  ::lbl_629::
  L15_2 = L6_2.x
  L16_2 = L6_2.width
  L16_2 = L16_2 / 2
  L15_2 = L15_2 + L16_2
  L15_2 = L15_2 - 5
  L15_2 = L15_2 - 61.5
  L13_2.x = L15_2
  L15_2 = pointAtEnhance
  A0_2.pointAtEnhance = L15_2
  L15_2 = pointAtEvolve
  A0_2.pointAtEvolve = L15_2
end

create = L24_1

function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 == "showcaseCards" then
    L1_2 = false
    L17_1 = L1_2
    L1_2 = L12_1
    L1_2 = L1_2.sparkle
    L2_2 = self
    L2_2 = L2_2.view
    L3_2 = 2000
    L4_2 = display
    L4_2 = L4_2.contentCenterX
    L4_2 = L4_2 - 150
    L5_2 = display
    L5_2 = L5_2.contentCenterY
    L5_2 = L5_2 + 100
    L6_2 = display
    L6_2 = L6_2.contentCenterX
    L6_2 = L6_2 + 30
    L7_2 = display
    L7_2 = L7_2.contentCenterY
    L7_2 = L7_2 + 140
    L8_2 = 50
    L9_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L1_2 = timer
    L1_2 = L1_2.performWithDelay
    L2_2 = 3000
    
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = true
      L17_1 = L0_3
      L0_3 = L12_1
      L0_3 = L0_3.pointAtObjectInView
      L1_3 = L18_1
      L2_3 = self
      L2_3 = L2_3.view
      L0_3(L1_3, L2_3)
      L0_3 = mainPlayer
      L1_3 = L0_3
      L0_3 = L0_3.setSettingForKey
      L2_3 = "activeTutorialState"
      L3_3 = "showcaseCollection"
      L0_3(L1_3, L2_3, L3_3)
    end
    
    L4_2 = 1
    L1_2(L2_2, L3_2, L4_2)
  elseif A0_2 == "showcaseEnhance" then
    L1_2 = L12_1
    L1_2 = L1_2.pointAtObjectInView
    L2_2 = L19_1
    L3_2 = self
    L3_2 = L3_2.view
    L1_2(L2_2, L3_2)
  elseif A0_2 == "showcaseEvolve" then
  elseif A0_2 == "showcaseAuctionSell" then
    L1_2 = L12_1
    L1_2 = L1_2.sparkle
    L2_2 = self
    L2_2 = L2_2.view
    L3_2 = 10000
    L4_2 = L20_1
    L4_2 = L4_2.x
    L5_2 = L20_1
    L5_2 = L5_2.width
    L5_2 = L5_2 / 2
    L4_2 = L4_2 - L5_2
    L5_2 = L20_1
    L5_2 = L5_2.y
    L6_2 = L20_1
    L6_2 = L6_2.height
    L6_2 = L6_2 / 2
    L5_2 = L5_2 - L6_2
    L6_2 = L20_1
    L6_2 = L6_2.x
    L7_2 = L20_1
    L7_2 = L7_2.width
    L7_2 = L7_2 / 2
    L6_2 = L6_2 + L7_2
    L7_2 = L20_1
    L7_2 = L7_2.y
    L8_2 = L20_1
    L8_2 = L8_2.height
    L8_2 = L8_2 / 2
    L7_2 = L7_2 + L8_2
    L8_2 = 50
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L1_2 = L12_1
    L1_2 = L1_2.removePoint
    L1_2()
    L1_2 = require
    L2_2 = "Tutorial.HorizontalOverlayView"
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.new
    L4_2 = {}
    L5_2 = L4_1
    L5_2 = L5_2["Auction sell tutorial text"]
    L4_2.message = L5_2
    L4_2.position = "center"
    L4_2.bgAlpha = 0
    L5_2 = L9_1
    L5_2 = L5_2.Path_Assets
    L6_2 = "Tutorial/Dandelion-head.png"
    L5_2 = L5_2 .. L6_2
    L4_2.imageName = L5_2
    L4_2.touchEnabled = false
    L5_2 = L4_1
    L5_2 = L5_2.Continue
    L4_2.buttonText = L5_2
    
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = mainPlayer
      L1_3 = L0_3
      L0_3 = L0_3.setSettingForKey
      L2_3 = "activeTutorialState"
      L3_3 = "showcaseAuction"
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L0_1
      L0_3 = L0_3.hideOverlay
      L1_3 = "fade"
      L0_3(L1_3)
      L0_3 = L0_1
      L0_3 = L0_3.getScene
      L1_3 = "Scenes.Cards"
      L0_3 = L0_3(L1_3)
      L2_3 = L0_3
      L1_3 = L0_3.show
      L3_3 = {}
      L3_3.phase = "did"
      L1_3(L2_3, L3_3)
    end
    
    L4_2.buttonAction = L5_2
    L2_2(L3_2, L4_2)
  end
end

startTutorialSequence = L24_1

function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L15_1
  L4_2 = L4_2.show
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "will" then
    L4_2 = A0_2.cardUI
    L5_2 = L4_2
    L4_2 = L4_2.addEnterFrameListener
    L4_2(L5_2)
  elseif L3_2 == "did" then
    L4_2 = "hideOverlay"
    _backAction = L4_2
    L4_2 = L11_1
    L4_2 = L4_2.checkForTutorial
    L5_2 = "Scenes.CardOverlay"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
  end
end

show = L24_1

function L24_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L12_1
  L3_2 = L3_2.pointAtObjectInView
  L4_2 = L19_1
  L5_2 = A0_2.contentGroup
  L3_2(L4_2, L5_2)
  L22_1 = A2_2
  L3_2 = false
  L17_1 = L3_2
  L3_2 = L18_1
  L3_2.isVisible = false
  L3_2 = nil
  _backAction = L3_2
end

pointAtEnhance = L24_1

function L24_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L12_1
  L3_2 = L3_2.pointAtObjectInView
  L4_2 = L21_1
  L5_2 = A0_2.contentGroup
  L3_2(L4_2, L5_2)
  L22_1 = A2_2
  L3_2 = false
  L17_1 = L3_2
  L3_2 = L18_1
  L3_2.isVisible = false
  L3_2 = L19_1
  L3_2.isVisible = false
  L3_2 = nil
  _backAction = L3_2
  L3_2 = log3
  L4_2 = "End of point at evolve"
  L3_2(L4_2)
end

pointAtEvolve = L24_1

function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L15_1
  L4_2 = L4_2.hide
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "will" then
    L4_2 = "Scenes.Home"
    _backAction = L4_2
    L4_2 = true
    L17_1 = L4_2
    L4_2 = L12_1
    L4_2 = L4_2.removePoint
    L4_2()
    L4_2 = A0_2.cardUI
    L5_2 = L4_2
    L4_2 = L4_2.removeEnterFrameListener
    L4_2(L5_2)
  end
end

hide = L24_1

function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = L15_1
  L3_2 = L3_2.destroy
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end

destroy = L24_1
