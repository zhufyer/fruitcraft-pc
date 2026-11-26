local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1
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
L4_1 = "Constants"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.CardView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "widget"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.ActivityIndicatorView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Views.AvatarView"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Data.BaseShopItems"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Models.ProfileManager"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Components.TDButtonView"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Components.TDNumberLabelView"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Views.EffectsManager"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Tutorial.TutorialManager2"
L13_1 = L13_1(L14_1)
L14_1 = require
L15_1 = "Models.Card"
L14_1 = L14_1(L15_1)
L15_1 = L1_1.newScene
L16_1 = "ShopAnimationScene"
L15_1 = L15_1(L16_1)
L15_1.receivedItems = nil
L16_1 = false
L17_1 = audio
L17_1 = L17_1.loadSound
L18_1 = L3_1.Path_Assets
L19_1 = "Audio/FC-buyPack.wav"
L18_1 = L18_1 .. L19_1
L17_1 = L17_1(L18_1)
L18_1 = nil

function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = log3
  L3_2 = "create scene"
  L2_2(L3_2)
  L2_2 = A0_2.view
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = A0_2.view
  L5_2 = 0
  L6_2 = 0
  L7_2 = 570
  L8_2 = 360
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.background = L3_2
  L3_2 = A0_2.background
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 1
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2.background
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L3_2 = A0_2.background
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L3_2 = A0_2.background
  L4_2 = L3_2
  L3_2 = L3_2.addEventListener
  L5_2 = "tap"
  L6_2 = gotoReceivedView
  L3_2(L4_2, L5_2, L6_2)
  A0_2.packImage = nil
  L3_2 = {}
  A0_2.receivedCardViews = L3_2
  L3_2 = {}
  A0_2.receivedAvatarViews = L3_2
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A0_2.view
  L5_2 = L2_1
  L5_2 = L5_2["Tap to continue"]
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L7_2 = display
  L7_2 = L7_2.contentCenterY
  L7_2 = L7_2 - 8
  L8_2 = L3_1
  L8_2 = L8_2.fontForTitle
  L8_2 = L8_2()
  L9_2 = 12
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2.continueLabel = L3_2
  L3_2 = A0_2.continueLabel
  L4_2 = display
  L4_2 = L4_2.contentWidth
  L4_2 = L4_2 - 10
  L5_2 = A0_2.continueLabel
  L5_2 = L5_2.width
  L5_2 = L5_2 / 2
  L4_2 = L4_2 - L5_2
  L3_2.x = L4_2
  L3_2 = A0_2.continueLabel
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 - 20
  L3_2.y = L4_2
  L3_2 = A0_2.continueLabel
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = L3_1
  L5_2 = L5_2.whiteColor
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = A0_2.continueLabel
  L3_2.isVisible = false
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A0_2.view
  L5_2 = L2_1
  L5_2 = L5_2["choose you avatar"]
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L7_2 = display
  L7_2 = L7_2.contentCenterY
  L7_2 = L7_2 - 8
  L8_2 = L3_1
  L8_2 = L8_2.fontForTitle
  L8_2 = L8_2()
  L9_2 = 12
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2.selectAvatarLable = L3_2
  L3_2 = A0_2.selectAvatarLable
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L3_2 = A0_2.selectAvatarLable
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 - 50
  L3_2.y = L4_2
  L3_2 = A0_2.selectAvatarLable
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = L3_1
  L5_2 = L5_2.whiteColor
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = A0_2.selectAvatarLable
  L3_2.isVisible = false
  L3_2 = L10_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L6_2 = L2_1
  L6_2 = L6_2["Buy Again"]
  L5_2.label = L6_2
  L5_2.width = 80
  L5_2.height = 22
  L6_2 = L3_1
  L6_2 = L6_2.Path_Assets
  L7_2 = "CardScene/button.png"
  L6_2 = L6_2 .. L7_2
  L5_2.defaultFile = L6_2
  L6_2 = Theme
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.blackColor
  L5_2.labelColor = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.repurchaseButton = L3_2
  L3_2 = A0_2.repurchaseButton
  
  function L4_2()
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
    L0_3 = A0_2
    L0_3 = L0_3.item
    L0_3 = L0_3.action
    L0_3()
    L0_3 = L0_1
    L0_3 = L0_3.gotoScene
    L1_3 = "Scenes.Shop"
    L0_3(L1_3)
  end
  
  L3_2.onRelease = L4_2
  L3_2 = A0_2.repurchaseButton
  L3_2.x = 90
  L3_2 = A0_2.repurchaseButton
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 - 20
  L3_2.y = L4_2
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.repurchaseButton
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L3_2 = L10_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L6_2 = L2_1
  L6_2 = L6_2.choose
  L5_2.label = L6_2
  L5_2.width = 80
  L5_2.height = 22
  L6_2 = L3_1
  L6_2 = L6_2.Path_Assets
  L7_2 = "CardScene/button.png"
  L6_2 = L6_2 .. L7_2
  L5_2.defaultFile = L6_2
  L6_2 = Theme
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.blackColor
  L5_2.labelColor = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.selectAvatarButton = L3_2
  L3_2 = A0_2.selectAvatarButton
  
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L18_1
    if L0_3 ~= nil then
      L0_3 = L9_1
      L0_3 = L0_3.setAvatar
      L1_3 = L18_1
      L1_3 = L1_3.avatar
      L1_3 = L1_3.id
      
      function L2_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = L0_1
        L0_4 = L0_4.gotoScene
        L1_4 = "Scenes.Shop"
        L2_4 = {}
        L3_4 = {}
        L3_4.hasBoughtAvatar = true
        L2_4.params = L3_4
        L0_4(L1_4, L2_4)
      end
      
      function L3_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = showSimpleDialog
        L1_4 = "Error"
        L2_4 = "Could not set Avatar"
        L3_4 = "ok"
        L0_4(L1_4, L2_4, L3_4)
      end
      
      L0_3(L1_3, L2_3, L3_3)
    else
      L0_3 = showSimpleDialog
      L1_3 = "Error"
      L2_3 = "You Must Select an avatar"
      L3_3 = "ok"
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  
  L3_2.onRelease = L4_2
  L3_2 = A0_2.selectAvatarButton
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L3_2 = A0_2.selectAvatarButton
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 - 20
  L3_2.y = L4_2
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.selectAvatarButton
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
end

L15_1.create = L19_1

function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L16_1
  if L1_2 then
    L1_2 = L15_1
    L1_2 = L1_2.tutorialMode
    if L1_2 then
      L1_2 = L0_1
      L1_2 = L1_2.gotoScene
      L2_2 = "Scenes.Home"
      L3_2 = {}
      L4_2 = {}
      L5_2 = L15_1
      L5_2 = L5_2.receivedItems
      L4_2.receivedCards = L5_2
      L3_2.params = L4_2
      L1_2(L2_2, L3_2)
    else
      L1_2 = L15_1
      L1_2 = L1_2.isLadder
      if L1_2 then
        L1_2 = L15_1
        L1_2 = L1_2.callbackFunction
        if L1_2 then
          L1_2 = L15_1
          L1_2 = L1_2.callbackFunction
          L1_2()
        end
      else
        L1_2 = L15_1
        L1_2 = L1_2.isBundle
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.gotoScene
          L2_2 = "Scenes.Home"
          L1_2(L2_2)
        else
          L1_2 = L15_1
          L1_2 = L1_2.item
          L1_2 = L1_2.id
          if L1_2 == 5 then
            L1_2 = L0_1
            L1_2 = L1_2.gotoScene
            L2_2 = "Scenes.ReceivedScene"
            L3_2 = {}
            L4_2 = {}
            L4_2.type = "cards"
            L5_2 = L15_1
            L5_2 = L5_2.receivedItems
            L4_2.items = L5_2
            L5_2 = L15_1
            L5_2 = L5_2.item
            L4_2.shopItem = L5_2
            L3_2.params = L4_2
            L1_2(L2_2, L3_2)
          else
            L1_2 = L0_1
            L1_2 = L1_2.gotoScene
            L2_2 = "Scenes.Shop"
            L1_2(L2_2)
          end
        end
      end
    end
  end
end

gotoReceivedView = L19_1

function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = display
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = L2_2
  L5_2 = L3_1
  L5_2 = L5_2.Path_Assets
  L6_2 = "Heroes/"
  L7_2 = A0_2
  L5_2 = L5_2 .. L6_2 .. L7_2
  L6_2 = 15
  L7_2 = 15
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = L3_2.width
  L4_2 = -L4_2
  L4_2 = L4_2 / 2
  L3_2.x = L4_2
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = L2_2
  L6_2 = "  "
  L7_2 = L2_1
  L7_2 = L7_2.adjustNumber
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 .. L7_2
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = L3_1
  L11_2 = L11_2.fontForTitle
  L11_2 = L11_2()
  L12_2 = 10
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = L3_2.x
  L6_2 = L3_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L6_2 = L4_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L4_2.x = L5_2
  return L2_2
end

function L20_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  L4_2 = L19_1
  L5_2 = "powerIcon-Small.png"
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  L4_2.x = 0
  L6_2 = L3_2
  L5_2 = L3_2.insert
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = L19_1
  L6_2 = "wisdomIcon-Small.png"
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.width
  L6_2 = -L6_2
  L6_2 = L6_2 / 2
  L7_2 = L4_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 - 15
  L5_2.x = L6_2
  L7_2 = L3_2
  L6_2 = L3_2.insert
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = L19_1
  L7_2 = "blessingIcon-Small.png"
  L8_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L6_2.width
  L7_2 = L7_2 / 2
  L8_2 = L4_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L7_2 = L7_2 + 15
  L6_2.x = L7_2
  L8_2 = L3_2
  L7_2 = L3_2.insert
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  return L3_2
end

function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L2_2 = log3
  L3_2 = "enter scene"
  L2_2(L3_2)
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = nil
    L18_1 = L4_2
    L4_2 = assert
    L5_2 = A1_2.params
    if L5_2 then
      L5_2 = A1_2.params
      L5_2 = L5_2.items
      if L5_2 then
        L5_2 = A1_2.params
        L5_2 = L5_2.shopItem
      end
    end
    L6_2 = "Event params which includes items and shopItem needs to be provided for ShopAnimationScene."
    L4_2(L5_2, L6_2)
    L4_2 = A1_2.params
    L4_2 = L4_2.callbackFunction
    if L4_2 then
      L4_2 = A1_2.params
      L4_2 = L4_2.callbackFunction
      A0_2.callbackFunction = L4_2
    end
    L4_2 = A1_2.params
    if L4_2 then
      L4_2 = A1_2.params
      L4_2 = L4_2.type
      if L4_2 == "cards" then
        L4_2 = A1_2.params
        L4_2 = L4_2.isTutorial
        if L4_2 then
          A0_2.tutorialMode = true
        else
          A0_2.tutorialMode = false
        end
        L4_2 = A1_2.params
        L4_2 = L4_2.isBundle
        if L4_2 then
          A0_2.isBundle = true
        else
          A0_2.isBundle = false
        end
        L4_2 = A1_2.params
        L4_2 = L4_2.isLadder
        if L4_2 then
          A0_2.isLadder = true
        else
          A0_2.isLadder = false
        end
        L4_2 = A1_2.params
        L4_2 = L4_2.items
        A0_2.receivedItems = L4_2
        L4_2 = A1_2.params
        L4_2 = L4_2.shopItem
        A0_2.item = L4_2
        L4_2 = false
        L16_1 = L4_2
        L4_2 = 0
        L5_2 = math
        L5_2 = L5_2.floor
        L6_2 = 148.87221850868744
        L5_2 = L5_2(L6_2)
        L6_2 = 200
        L7_2 = pairs
        L8_2 = A0_2.receivedItems
        L7_2, L8_2, L9_2 = L7_2(L8_2)
        for L10_2, L11_2 in L7_2, L8_2, L9_2 do
          L12_2 = L4_1
          L13_2 = L12_2
          L12_2 = L12_2.new
          L14_2 = "big"
          L15_2 = L11_2
          L16_2 = L15_1
          L17_2 = {}
          L17_2.cardHeight = 200
          L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
          L14_2 = L12_2
          L13_2 = L12_2.setSelectable
          L15_2 = false
          L13_2(L14_2, L15_2)
          L14_2 = L12_2
          L13_2 = L12_2.deselected
          L13_2(L14_2)
          L14_2 = L12_2
          L13_2 = L12_2.setId
          L15_2 = L10_2
          L13_2(L14_2, L15_2)
          L13_2 = A0_2.receivedCardViews
          L13_2[L10_2] = L12_2
          L13_2 = A0_2.view
          L14_2 = L13_2
          L13_2 = L13_2.insert
          L15_2 = L12_2.view
          L13_2(L14_2, L15_2)
          L14_2 = L12_2
          L13_2 = L12_2.setPosition
          L15_2 = display
          L15_2 = L15_2.contentCenterX
          L16_2 = display
          L16_2 = L16_2.contentHeight
          L16_2 = L16_2 + 100
          L13_2(L14_2, L15_2, L16_2)
          L4_2 = L4_2 + 1
        end
        L7_2 = A0_2.continueLabel
        L7_2.alpha = 0
        L7_2 = A0_2.continueLabel
        L7_2.isVisible = true
        L7_2 = A0_2.selectAvatarLable
        L7_2.alpha = 0
        L7_2 = A0_2.selectAvatarLable
        L7_2.isVisible = true
        L7_2 = A0_2.isBundle
        if not L7_2 then
          L7_2 = A0_2.isLadder
          if not L7_2 then
            goto lbl_124
          end
        end
        L7_2 = A0_2.repurchaseButton
        L7_2.isVisible = false
        goto lbl_126
        ::lbl_124::
        L7_2 = A0_2.repurchaseButton
        L7_2.isVisible = true
        ::lbl_126::
        L7_2 = A0_2.repurchaseButton
        L7_2.alpha = 0
        L7_2 = A0_2.selectAvatarButton
        L7_2.isVisible = true
        L7_2 = A0_2.selectAvatarButton
        L7_2.alpha = 0
        L7_2 = 300
        L8_2 = 300
        L9_2 = mainPlayer
        L9_2 = L9_2.newCards
        if L9_2 then
          L9_2 = mainPlayer
          L9_2 = L9_2.level
          L10_2 = L3_1
          L10_2 = L10_2.MaximumLevelToShowNewSeriesOfCards
          if L9_2 < L10_2 then
            L7_2 = 320
            L8_2 = 320
          end
        end
        L9_2 = display
        L9_2 = L9_2.newImageRect
        L10_2 = A0_2.view
        L11_2 = A0_2.item
        L11_2 = L11_2.image
        L12_2 = L7_2
        L13_2 = L8_2
        L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
        A0_2.packImage = L9_2
        L9_2 = A0_2.packImage
        L9_2.rotation = -45
        L9_2 = A0_2.packImage
        L10_2 = display
        L10_2 = L10_2.contentCenterX
        L9_2.x = L10_2
        L9_2 = A0_2.packImage
        L10_2 = display
        L10_2 = L10_2.contentHeight
        L11_2 = A0_2.packImage
        L11_2 = L11_2.height
        L11_2 = L11_2 / 2
        L10_2 = L10_2 + L11_2
        L9_2.y = L10_2
        L9_2 = A0_2.packImage
        L10_2 = L9_2
        L9_2 = L9_2.toFront
        L9_2(L10_2)
        L9_2 = A0_2.continueLabel
        L10_2 = L9_2
        L9_2 = L9_2.toFront
        L9_2(L10_2)
        L9_2 = display
        L9_2 = L9_2.newGroup
        L9_2 = L9_2()
        A0_2.goldView = L9_2
        L9_2 = A0_2.view
        L10_2 = L9_2
        L9_2 = L9_2.insert
        L11_2 = A0_2.goldView
        L9_2(L10_2, L11_2)
        L9_2 = math
        L9_2 = L9_2.floor
        L10_2 = tostring
        L11_2 = mainPlayer
        L11_2 = L11_2.gold
        L10_2 = L10_2(L11_2)
        L11_2 = L10_2
        L10_2 = L10_2.len
        L10_2 = L10_2(L11_2)
        L11_2 = L2_1
        L11_2 = L11_2.charWidth
        L10_2 = L10_2 / L11_2
        L10_2 = L10_2 * 7
        L9_2 = L9_2(L10_2)
        L9_2 = L9_2 + 35
        L9_2 = L9_2 + 10
        L10_2 = display
        L10_2 = L10_2.newRoundedRect
        L11_2 = A0_2.goldView
        L12_2 = 0
        L13_2 = 0
        L14_2 = L9_2
        L15_2 = 32
        L16_2 = 15
        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
        A0_2.goldBackground = L10_2
        L10_2 = A0_2.goldBackground
        L11_2 = L10_2
        L10_2 = L10_2.setFillColor
        L12_2 = 1
        L13_2 = 1
        L14_2 = 1
        L15_2 = 0
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        L10_2 = L11_1
        L11_2 = L10_2
        L10_2 = L10_2.new
        L12_2 = {}
        L12_2.id = "goldLabel"
        L13_2 = mainPlayer
        L13_2 = L13_2.gold
        L14_2 = A0_2.item
        L14_2 = L14_2.priceNumber
        L13_2 = L13_2 + L14_2
        L12_2.value = L13_2
        L12_2.align = "center"
        L13_2 = Theme
        L13_2 = L13_2.buttonFont
        L12_2.font = L13_2
        L12_2.fontSize = 30
        L13_2 = {}
        L14_2 = 1
        L15_2 = 1
        L16_2 = 1
        L13_2[1] = L14_2
        L13_2[2] = L15_2
        L13_2[3] = L16_2
        L12_2.labelColor = L13_2
        L10_2 = L10_2(L11_2, L12_2)
        A0_2.goldLabel = L10_2
        L10_2 = A0_2.goldLabel
        L10_2.scaleIncreaseAmount = 0
        L10_2 = A0_2.goldLabel
        L10_2 = L10_2.view
        L11_2 = A0_2.goldBackground
        L11_2 = L11_2.width
        L11_2 = L11_2 / 2
        L11_2 = L11_2 - 5
        L12_2 = A0_2.goldLabel
        L12_2 = L12_2.width
        L12_2 = L12_2 / 2
        L11_2 = L11_2 - L12_2
        L10_2.x = L11_2
        L10_2 = A0_2.goldLabel
        L10_2 = L10_2.view
        L10_2.y = 0
        L10_2 = A0_2.goldView
        L11_2 = L10_2
        L10_2 = L10_2.insert
        L12_2 = A0_2.goldLabel
        L12_2 = L12_2.view
        L10_2(L11_2, L12_2)
        L10_2 = A0_2.goldLabel
        L10_2.alpha = 0
        L10_2 = A0_2.goldLabel
        L10_2.xScale = 0.5
        L10_2 = A0_2.goldLabel
        L10_2.yScale = 0.5
        L10_2 = display
        L10_2 = L10_2.newImage
        L11_2 = A0_2.view
        L12_2 = L3_1
        L12_2 = L12_2.Path_Assets
        L13_2 = "Navbar/FC-navbar-gold.png"
        L12_2 = L12_2 .. L13_2
        L10_2 = L10_2(L11_2, L12_2)
        A0_2.goldImage = L10_2
        L10_2 = A0_2.goldImage
        L11_2 = A0_2.goldLabel
        L11_2 = L11_2.x
        L12_2 = A0_2.goldLabel
        L12_2 = L12_2.width
        L12_2 = L12_2 / 2
        L11_2 = L11_2 - L12_2
        L12_2 = A0_2.goldImage
        L12_2 = L12_2.width
        L12_2 = L12_2 / 2
        L11_2 = L11_2 - L12_2
        L10_2.x = L11_2
        L10_2 = A0_2.goldImage
        L10_2.y = 0
        L10_2 = A0_2.goldImage
        L10_2.alpha = 0
        L10_2 = A0_2.goldView
        L11_2 = L10_2
        L10_2 = L10_2.insert
        L12_2 = A0_2.goldImage
        L10_2(L11_2, L12_2)
        L10_2 = A0_2.goldView
        L11_2 = display
        L11_2 = L11_2.contentWidth
        L11_2 = L11_2 - 15
        L12_2 = A0_2.goldBackground
        L12_2 = L12_2.width
        L12_2 = L12_2 / 2
        L11_2 = L11_2 - L12_2
        L10_2.x = L11_2
        L10_2 = A0_2.goldView
        L10_2.y = 30
        L10_2 = A0_2.isBundle
        if not L10_2 then
          L10_2 = A0_2.isLadder
          if not L10_2 then
            goto lbl_313
          end
        end
        L10_2 = A0_2.goldView
        L10_2.alpha = 0
        ::lbl_313::
        
        function L10_2()
          local L0_3, L1_3
          L0_3 = gotoReceivedView
          L0_3()
        end
        
        _backAction = L10_2
        
        function L10_2()
          local L0_3, L1_3, L2_3, L3_3
          L0_3 = transition
          L0_3 = L0_3.to
          L1_3 = A0_2
          L1_3 = L1_3.packImage
          L2_3 = {}
          L2_3.time = 500
          L3_3 = easing
          L3_3 = L3_3.outExpo
          L2_3.transition = L3_3
          L3_3 = display
          L3_3 = L3_3.contentHeight
          L3_3 = L3_3 + 35
          L2_3.y = L3_3
          
          function L3_3()
            local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4
            L0_4 = transition
            L0_4 = L0_4.to
            L1_4 = A0_2
            L1_4 = L1_4.goldView
            L2_4 = {}
            L2_4.time = 300
            L2_4.delay = 800
            L2_4.alpha = 0
            L3_4 = easing
            L3_4 = L3_4.outSine
            L2_4.transition = L3_4
            L0_4(L1_4, L2_4)
            L0_4 = 10
            L1_4 = display
            L1_4 = L1_4.contentWidth
            L2_4 = L0_4 * 2
            L1_4 = L1_4 - L2_4
            L2_4 = L4_2
            L2_4 = L1_4 / L2_4
            L3_4 = L2_4 / 2
            L4_4 = 1
            L5_4 = pairs
            L6_4 = A0_2
            L6_4 = L6_4.receivedCardViews
            L5_4, L6_4, L7_4 = L5_4(L6_4)
            for L8_4, L9_4 in L5_4, L6_4, L7_4 do
              L10_4 = log3
              L11_4 = L8_4
              L10_4(L11_4)
              L10_4 = L5_2
              L10_4 = L10_4 / 2
              L11_4 = L5_2
              L11_4 = L11_4 / 2
              L12_4 = mainPlayer
              L12_4 = L12_4.newCards
              if L12_4 then
                L12_4 = mainPlayer
                L12_4 = L12_4.level
                L13_4 = L3_1
                L13_4 = L13_4.MaximumLevelToShowNewSeriesOfCards
                if L12_4 < L13_4 then
                  L12_4 = L9_4.view
                  L12_4 = L12_4.width
                  L12_4 = L12_4 / 2
                  L10_4 = L12_4 + 7.5
                  L11_4 = L10_4 - 7.5
                end
              end
              L12_4 = L0_4 + L3_4
              L13_4 = L4_4 - 1
              L13_4 = L13_4 * L2_4
              L12_4 = L12_4 + L13_4
              L12_4 = L12_4 - L11_4
              L9_4.finalPosition = L12_4
              L13_4 = L9_4
              L12_4 = L9_4.setPosition
              L14_4 = display
              L14_4 = L14_4.contentCenterX
              L14_4 = L14_4 - L10_4
              L15_4 = display
              L15_4 = L15_4.contentHeight
              L15_4 = L15_4 - 100
              L12_4(L13_4, L14_4, L15_4)
              L12_4 = transition
              L12_4 = L12_4.to
              L13_4 = L9_4.view
              L14_4 = {}
              L14_4.time = 500
              L15_4 = easing
              L15_4 = L15_4.inOutExpo
              L14_4.transition = L15_4
              L15_4 = display
              L15_4 = L15_4.contentCenterY
              L16_4 = L6_2
              L16_4 = L16_4 / 2
              L15_4 = L15_4 - L16_4
              L15_4 = L15_4 - 50
              L14_4.y = L15_4
              
              function L15_4()
                local L0_5, L1_5, L2_5, L3_5
                L0_5 = transition
                L0_5 = L0_5.to
                L1_5 = L9_4
                L1_5 = L1_5.view
                L2_5 = {}
                L2_5.time = 500
                L3_5 = easing
                L3_5 = L3_5.inOutExpo
                L2_5.transition = L3_5
                L3_5 = L9_4
                L3_5 = L3_5.finalPosition
                L2_5.x = L3_5
                
                function L3_5()
                  local L0_6, L1_6
                  L0_6 = L9_4
                  L0_6 = L0_6.view
                  L1_6 = L0_6
                  L0_6 = L0_6.toFront
                  L0_6(L1_6)
                end
                
                L2_5.onComplete = L3_5
                L0_5(L1_5, L2_5)
              end
              
              L14_4.onComplete = L15_4
              L12_4(L13_4, L14_4)
              L4_4 = L4_4 + 1
            end
            L5_4 = timer
            L5_4 = L5_4.performWithDelay
            L6_4 = 700
            
            function L7_4()
              local L0_5, L1_5, L2_5, L3_5
              L0_5 = transition
              L0_5 = L0_5.to
              L1_5 = A0_2
              L1_5 = L1_5.continueLabel
              L2_5 = {}
              L2_5.time = 500
              L2_5.alpha = 1
              L0_5(L1_5, L2_5)
              L0_5 = A0_2
              L0_5 = L0_5.tutorialMode
              if L0_5 ~= true then
                L0_5 = A0_2
                L0_5 = L0_5.repurchaseButton
                L1_5 = L0_5
                L0_5 = L0_5.toFront
                L0_5(L1_5)
                L0_5 = transition
                L0_5 = L0_5.to
                L1_5 = A0_2
                L1_5 = L1_5.repurchaseButton
                L2_5 = {}
                L2_5.time = 500
                L2_5.alpha = 1
                
                function L3_5()
                  local L0_6, L1_6
                  L0_6 = true
                  L16_1 = L0_6
                end
                
                L2_5.onComplete = L3_5
                L0_5(L1_5, L2_5)
              else
                L0_5 = A0_2
                L0_5 = L0_5.repurchaseButton
                L0_5.isVisible = false
                L0_5 = timer
                L0_5 = L0_5.performWithDelay
                L1_5 = 500
                
                function L2_5()
                  local L0_6, L1_6
                  L0_6 = true
                  L16_1 = L0_6
                end
                
                L0_5(L1_5, L2_5)
              end
            end
            
            L5_4(L6_4, L7_4)
          end
          
          L2_3.onComplete = L3_3
          L0_3(L1_3, L2_3)
        end
        
        L11_2 = transition
        L11_2 = L11_2.to
        L12_2 = A0_2.goldImage
        L13_2 = {}
        L13_2.time = 700
        L13_2.xScale = 1.1
        L13_2.yScale = 1.1
        L13_2.alpha = 1
        L14_2 = easing
        L14_2 = L14_2.outBounce
        L13_2.transition = L14_2
        
        function L14_2()
          local L0_3, L1_3, L2_3, L3_3
          L0_3 = transition
          L0_3 = L0_3.to
          L1_3 = A0_2
          L1_3 = L1_3.goldImage
          L2_3 = {}
          L2_3.time = 400
          L2_3.xScale = 1
          L2_3.yScale = 1
          
          function L3_3()
            local L0_4, L1_4, L2_4, L3_4
            L0_4 = transition
            L0_4 = L0_4.to
            L1_4 = A0_2
            L1_4 = L1_4.goldLabel
            L1_4 = L1_4.view
            L2_4 = {}
            L2_4.time = 400
            L2_4.alpha = 1
            
            function L3_4()
              local L0_5, L1_5, L2_5, L3_5, L4_5, L5_5, L6_5, L7_5, L8_5
              L0_5 = A0_2
              L0_5 = L0_5.goldLabel
              L1_5 = L0_5
              L0_5 = L0_5.setValue
              L2_5 = mainPlayer
              L2_5 = L2_5.gold
              L3_5 = false
              L0_5(L1_5, L2_5, L3_5)
              L0_5 = L12_1
              L0_5 = L0_5.sparkle
              L1_5 = A0_2
              L1_5 = L1_5.goldView
              L2_5 = 600
              L3_5 = A0_2
              L3_5 = L3_5.goldLabel
              L3_5 = L3_5.view
              L3_5 = L3_5.x
              L4_5 = A0_2
              L4_5 = L4_5.goldLabel
              L4_5 = L4_5.view
              L4_5 = L4_5.width
              L4_5 = L4_5 / 2
              L3_5 = L3_5 - L4_5
              L3_5 = L3_5 + 10
              L4_5 = A0_2
              L4_5 = L4_5.goldLabel
              L4_5 = L4_5.view
              L4_5 = L4_5.y
              L5_5 = A0_2
              L5_5 = L5_5.goldLabel
              L5_5 = L5_5.view
              L5_5 = L5_5.height
              L5_5 = L5_5 / 2
              L4_5 = L4_5 - L5_5
              L4_5 = L4_5 + 5
              L5_5 = A0_2
              L5_5 = L5_5.goldLabel
              L5_5 = L5_5.view
              L5_5 = L5_5.x
              L6_5 = A0_2
              L6_5 = L6_5.goldLabel
              L6_5 = L6_5.view
              L6_5 = L6_5.width
              L6_5 = L6_5 / 2
              L5_5 = L5_5 + L6_5
              L5_5 = L5_5 - 10
              L6_5 = A0_2
              L6_5 = L6_5.goldLabel
              L6_5 = L6_5.view
              L6_5 = L6_5.y
              L7_5 = A0_2
              L7_5 = L7_5.goldLabel
              L7_5 = L7_5.view
              L7_5 = L7_5.height
              L7_5 = L7_5 / 2
              L6_5 = L6_5 + L7_5
              L6_5 = L6_5 - 5
              L7_5 = 10
              L8_5 = true
              L0_5(L1_5, L2_5, L3_5, L4_5, L5_5, L6_5, L7_5, L8_5)
              L0_5 = timer
              L0_5 = L0_5.performWithDelay
              L1_5 = 500
              
              function L2_5()
                local L0_6, L1_6
                L0_6 = L10_2
                L0_6()
              end
              
              L3_5 = 1
              L0_5(L1_5, L2_5, L3_5)
            end
            
            L2_4.onComplete = L3_4
            L0_4(L1_4, L2_4)
          end
          
          L2_3.onComplete = L3_3
          L0_3(L1_3, L2_3)
        end
        
        L13_2.onComplete = L14_2
        L11_2(L12_2, L13_2)
      else
        L4_2 = A1_2.params
        L4_2 = L4_2.type
        if L4_2 == "avatar" then
          L4_2 = A1_2.params
          L4_2 = L4_2.items
          A0_2.receivedItems = L4_2
          L4_2 = L8_1
          L4_2 = L4_2[1]
          A0_2.item = L4_2
          L4_2 = false
          L16_1 = L4_2
          L4_2 = 0
          L5_2 = 120
          L6_2 = 120
          L7_2 = pairs
          L8_2 = A0_2.receivedItems
          L7_2, L8_2, L9_2 = L7_2(L8_2)
          for L10_2, L11_2 in L7_2, L8_2, L9_2 do
            L12_2 = L7_1
            L13_2 = L12_2
            L12_2 = L12_2.new
            L14_2 = L11_2
            L15_2 = L5_2
            L16_2 = L6_2
            L17_2 = L15_1
            L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
            L14_2 = L12_2
            L13_2 = L12_2.hideLockView
            L13_2(L14_2)
            L13_2 = A0_2.receivedAvatarViews
            L13_2[L10_2] = L12_2
            L13_2 = A0_2.view
            L14_2 = L13_2
            L13_2 = L13_2.insert
            L15_2 = L12_2.view
            L13_2(L14_2, L15_2)
            L14_2 = L12_2
            L13_2 = L12_2.setPosition
            L15_2 = display
            L15_2 = L15_2.contentCenterX
            L16_2 = display
            L16_2 = L16_2.contentHeight
            L16_2 = L16_2 + 100
            L13_2(L14_2, L15_2, L16_2)
            L4_2 = L4_2 + 1
          end
          L7_2 = A0_2.selectAvatarLable
          L7_2.alpha = 0
          L7_2 = A0_2.selectAvatarLable
          L7_2.isVisible = true
          L7_2 = A0_2.selectAvatarLable
          L8_2 = L2_1
          L8_2 = L8_2.localizedString
          L9_2 = "choose you avatar"
          L10_2 = {}
          L11_2 = L2_1
          L11_2 = L11_2.adjustNumber
          L12_2 = L4_2
          L11_2 = L11_2(L12_2)
          L10_2.number = L11_2
          L8_2 = L8_2(L9_2, L10_2)
          L7_2.text = L8_2
          L7_2 = A0_2.repurchaseButton
          L7_2.isVisible = true
          L7_2 = A0_2.repurchaseButton
          L7_2.alpha = 0
          L7_2 = A0_2.selectAvatarButton
          L7_2.isVisible = true
          L7_2 = A0_2.selectAvatarButton
          L7_2.alpha = 0
          L7_2 = display
          L7_2 = L7_2.newImageRect
          L8_2 = A0_2.view
          L9_2 = A0_2.item
          L9_2 = L9_2.image
          L10_2 = 300
          L11_2 = 300
          L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
          A0_2.packImage = L7_2
          L7_2 = A0_2.packImage
          L7_2.rotation = -45
          L7_2 = A0_2.packImage
          L8_2 = display
          L8_2 = L8_2.contentCenterX
          L7_2.x = L8_2
          L7_2 = A0_2.packImage
          L8_2 = display
          L8_2 = L8_2.contentHeight
          L9_2 = A0_2.packImage
          L9_2 = L9_2.height
          L9_2 = L9_2 / 2
          L8_2 = L8_2 + L9_2
          L7_2.y = L8_2
          L7_2 = A0_2.packImage
          L8_2 = L7_2
          L7_2 = L7_2.toFront
          L7_2(L8_2)
          L7_2 = A0_2.selectAvatarLable
          L8_2 = L7_2
          L7_2 = L7_2.toFront
          L7_2(L8_2)
          
          function L7_2()
            local L0_3, L1_3
            L0_3 = gotoReceivedView
            L0_3()
          end
          
          _backAction = L7_2
          L7_2 = transition
          L7_2 = L7_2.to
          L8_2 = A0_2.packImage
          L9_2 = {}
          L9_2.time = 500
          L10_2 = easing
          L10_2 = L10_2.outExpo
          L9_2.transition = L10_2
          L10_2 = display
          L10_2 = L10_2.contentHeight
          L10_2 = L10_2 + 35
          L9_2.y = L10_2
          
          function L10_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
            L0_3 = 10
            L1_3 = display
            L1_3 = L1_3.contentWidth
            L2_3 = L0_3 * 2
            L1_3 = L1_3 - L2_3
            L2_3 = L4_2
            L2_3 = L1_3 / L2_3
            L3_3 = L2_3 / 2
            L4_3 = 1
            L5_3 = pairs
            L6_3 = A0_2
            L6_3 = L6_3.receivedAvatarViews
            L5_3, L6_3, L7_3 = L5_3(L6_3)
            for L8_3, L9_3 in L5_3, L6_3, L7_3 do
              L10_3 = log3
              L11_3 = L8_3
              L10_3(L11_3)
              L10_3 = L0_3 + L3_3
              L11_3 = L4_3 - 1
              L11_3 = L11_3 * L2_3
              L10_3 = L10_3 + L11_3
              L9_3.finalPosition = L10_3
              L11_3 = L9_3
              L10_3 = L9_3.setPosition
              L12_3 = display
              L12_3 = L12_3.contentCenterX
              L13_3 = display
              L13_3 = L13_3.contentHeight
              L13_3 = L13_3 - 100
              L10_3(L11_3, L12_3, L13_3)
              L10_3 = transition
              L10_3 = L10_3.to
              L11_3 = L9_3.view
              L12_3 = {}
              L12_3.time = 500
              L13_3 = easing
              L13_3 = L13_3.inOutExpo
              L12_3.transition = L13_3
              L13_3 = display
              L13_3 = L13_3.contentCenterY
              L13_3 = L13_3 - 50
              L12_3.y = L13_3
              
              function L13_3()
                local L0_4, L1_4, L2_4, L3_4
                L0_4 = transition
                L0_4 = L0_4.to
                L1_4 = L9_3
                L1_4 = L1_4.view
                L2_4 = {}
                L2_4.time = 500
                L3_4 = easing
                L3_4 = L3_4.inOutExpo
                L2_4.transition = L3_4
                L3_4 = L9_3
                L3_4 = L3_4.finalPosition
                L2_4.x = L3_4
                L2_4.onComplete = nil
                L0_4(L1_4, L2_4)
              end
              
              L12_3.onComplete = L13_3
              L10_3(L11_3, L12_3)
              L4_3 = L4_3 + 1
            end
            L5_3 = timer
            L5_3 = L5_3.performWithDelay
            L6_3 = 700
            
            function L7_3()
              local L0_4, L1_4, L2_4
              L0_4 = transition
              L0_4 = L0_4.to
              L1_4 = A0_2
              L1_4 = L1_4.selectAvatarLable
              L2_4 = {}
              L2_4.time = 500
              L2_4.alpha = 1
              L0_4(L1_4, L2_4)
              L0_4 = A0_2
              L0_4 = L0_4.selectAvatarButton
              L1_4 = L0_4
              L0_4 = L0_4.toFront
              L0_4(L1_4)
              L0_4 = transition
              L0_4 = L0_4.to
              L1_4 = A0_2
              L1_4 = L1_4.selectAvatarButton
              L2_4 = {}
              L2_4.time = 500
              L2_4.alpha = 1
              L0_4(L1_4, L2_4)
            end
            
            L5_3(L6_3, L7_3)
          end
          
          L9_2.onComplete = L10_2
          L7_2(L8_2, L9_2)
        else
          L4_2 = A1_2.params
          L4_2 = L4_2.type
          if L4_2 == "heroes" then
            L4_2 = false
            L16_1 = L4_2
            L4_2 = A1_2.params
            L4_2 = L4_2.items
            A0_2.receivedItems = L4_2
            L4_2 = A1_2.params
            L4_2 = L4_2.shopItem
            A0_2.item = L4_2
            L4_2 = A1_2.params
            L4_2 = L4_2.isHeroTutorial
            L5_2 = A1_2.params
            L5_2 = L5_2.heroTutorialCallback
            A0_2.heroTutorialCallback = L5_2
            L5_2 = A0_2.repurchaseButton
            L5_2.alpha = 0
            L5_2 = A0_2.selectAvatarButton
            L5_2.alpha = 0
            L5_2 = {}
            A0_2.selectButtons = L5_2
            L5_2 = {}
            A0_2.availableHeroes = L5_2
            L5_2 = {}
            A0_2.heroType = L5_2
            L5_2 = {}
            A0_2.heroAttributeGroup = L5_2
            L5_2 = L10_1
            L6_2 = L5_2
            L5_2 = L5_2.new
            L7_2 = {}
            L7_2.width = 30
            L7_2.height = 30
            L8_2 = L3_1
            L8_2 = L8_2.Path_Assets
            L9_2 = "BattleItems/close.png"
            L8_2 = L8_2 .. L9_2
            L7_2.imageName = L8_2
            
            function L8_2()
              local L0_3, L1_3
              L0_3 = transition
              L0_3 = L0_3.cancel
              L1_3 = "heroAnime"
              L0_3(L1_3)
              L0_3 = L0_1
              L0_3 = L0_3.gotoScene
              L1_3 = "Scenes.Shop"
              L0_3(L1_3)
            end
            
            L7_2.onRelease = L8_2
            L5_2 = L5_2(L6_2, L7_2)
            A0_2.backButton = L5_2
            L5_2 = A0_2.view
            L6_2 = L5_2
            L5_2 = L5_2.insert
            L7_2 = A0_2.backButton
            L7_2 = L7_2.view
            L5_2(L6_2, L7_2)
            L5_2 = A0_2.backButton
            L5_2 = L5_2.view
            L6_2 = A0_2.backButton
            L6_2 = L6_2.view
            L6_2 = L6_2.width
            L6_2 = L6_2 / 2
            L6_2 = 15 + L6_2
            L5_2.x = L6_2
            L5_2 = A0_2.backButton
            L5_2 = L5_2.view
            L6_2 = A0_2.backButton
            L6_2 = L6_2.view
            L6_2 = L6_2.height
            L6_2 = L6_2 / 2
            L6_2 = 15 + L6_2
            L5_2.y = L6_2
            if not L4_2 then
              L5_2 = mainPlayer
              L5_2 = L5_2.heroSet
              if L5_2 then
                goto lbl_533
              end
            end
            L5_2 = A0_2.backButton
            L5_2 = L5_2.view
            L5_2.isVisible = false
            ::lbl_533::
            
            function L5_2()
              local L0_3, L1_3
              L0_3 = gotoReceivedView
              L0_3()
            end
            
            _backAction = L5_2
            
            function L5_2()
              local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
              L0_3 = mainPlayer
              L0_3 = L0_3.heroMaxRarity
              if L0_3 == 0 then
                L0_3 = mainPlayer
                L0_3.heroMaxRarity = 1
              end
              L0_3 = A0_2
              L0_3 = L0_3.heroTutorialCallback
              if not L0_3 then
                L0_3 = L6_1
                L1_3 = L0_3
                L0_3 = L0_3.hide
                L0_3(L1_3)
                L0_3 = 0
                L1_3 = mainPlayer
                L1_3 = L1_3.heroSet
                if L1_3 then
                  L1_3 = pairs
                  L2_3 = mainPlayer
                  L2_3 = L2_3.heroSet
                  L1_3, L2_3, L3_3 = L1_3(L2_3)
                  for L4_3, L5_3 in L1_3, L2_3, L3_3 do
                    L0_3 = L0_3 + 1
                    if 1 < L0_3 then
                      break
                    end
                  end
                end
                L1_3 = mainPlayer
                L1_3 = L1_3.settings
                L1_3 = L1_3.sawHeroTutorialOfShopScene
                if not L1_3 then
                  L1_3 = mainPlayer
                  L2_3 = L1_3
                  L1_3 = L1_3.setSettingForKey
                  L3_3 = "sawHeroTutorialOfShopScene"
                  L4_3 = true
                  L1_3(L2_3, L3_3, L4_3)
                  L1_3 = mainPlayer
                  L2_3 = L1_3
                  L1_3 = L1_3.saveSettings
                  L1_3(L2_3)
                  if L0_3 == 1 then
                    L1_3 = L0_1
                    L1_3 = L1_3.gotoScene
                    L2_3 = "Scenes.HeroScene"
                    L1_3(L2_3)
                  else
                    L1_3 = L0_1
                    L1_3 = L1_3.gotoScene
                    L2_3 = "Scenes.Shop"
                    L1_3(L2_3)
                  end
                else
                  L1_3 = L0_1
                  L1_3 = L1_3.gotoScene
                  L2_3 = "Scenes.Shop"
                  L1_3(L2_3)
                end
              end
            end
            
            function L6_2(A0_3, A1_3)
              local L2_3, L3_3, L4_3, L5_3, L6_3
              L2_3 = A0_2
              L2_3 = L2_3.heroTutorialCallback
              if not L2_3 then
                L2_3 = L6_1
                L2_3 = L2_3.hide
                L2_3()
                L2_3 = showSimpleDialog
                L3_3 = L2_1
                L3_3 = L3_3.Error
                L4_3 = A1_3
                L5_3 = L2_1
                L5_3 = L5_3.OK
                
                function L6_3()
                  local L0_4, L1_4
                  L0_4 = L0_1
                  L0_4 = L0_4.gotoScene
                  L1_4 = "Scenes.Shop"
                  L0_4(L1_4)
                end
                
                L2_3(L3_3, L4_3, L5_3, L6_3)
              end
            end
            
            function L7_2(A0_3, A1_3)
              local L2_3, L3_3, L4_3, L5_3, L6_3
              L2_3 = transition
              L2_3 = L2_3.to
              L3_3 = A0_3
              L4_3 = {}
              L4_3.time = 1600
              L5_3 = display
              L5_3 = L5_3.contentCenterY
              L6_3 = A0_3.height
              L6_3 = L6_3 / 2
              L5_3 = L5_3 - L6_3
              L5_3 = L5_3 - 20
              L4_3.y = L5_3
              L4_3.tag = "heroAnime"
              L5_3 = easing
              L5_3 = L5_3.outElastic
              L4_3.transition = L5_3
              L2_3(L3_3, L4_3)
              L2_3 = transition
              L2_3 = L2_3.to
              L3_3 = A0_3
              L4_3 = {}
              L4_3.time = 200
              L4_3.delay = 1400
              L4_3.alpha = 0.6
              L4_3.tag = "heroAnime"
              
              function L5_3()
                local L0_4, L1_4, L2_4, L3_4
                L0_4 = transition
                L0_4 = L0_4.to
                L1_4 = A0_3
                L2_4 = {}
                L2_4.time = 220
                L2_4.alpha = 1
                L2_4.tag = "heroAnime"
                
                function L3_4()
                  local L0_5, L1_5, L2_5
                  L0_5 = transition
                  L0_5 = L0_5.to
                  L1_5 = A1_3
                  L2_5 = {}
                  L2_5.time = 200
                  L2_5.alpha = 1
                  L2_5.tag = "heroAnime"
                  L0_5(L1_5, L2_5)
                end
                
                L2_4.onComplete = L3_4
                L0_4(L1_4, L2_4)
              end
              
              L4_3.onComplete = L5_3
              L2_3(L3_3, L4_3)
            end
            
            function L8_2(A0_3, A1_3, A2_3, A3_3)
              local L4_3, L5_3, L6_3, L7_3
              L4_3 = display
              L4_3 = L4_3.contentCenterX
              L5_3 = A0_3.width
              L5_3 = L5_3 / 2
              L4_3 = L4_3 - L5_3
              if A1_3 == 2 then
                L5_3 = math
                L5_3 = L5_3.pow
                L6_3 = -1
                L7_3 = A2_3
                L5_3 = L5_3(L6_3, L7_3)
                L6_3 = A0_3.width
                L6_3 = L6_3 / 2
                L6_3 = L6_3 + A3_3
                L5_3 = L5_3 * L6_3
                L4_3 = L4_3 + L5_3
              elseif A1_3 == 3 then
                if A2_3 < 2 then
                  L5_3 = A0_3.width
                  L5_3 = L5_3 + A3_3
                  L4_3 = L4_3 - L5_3
                elseif 2 < A2_3 then
                  L5_3 = A0_3.width
                  L5_3 = L4_3 + L5_3
                  L4_3 = L5_3 + A3_3
                end
              end
              A0_3.x = L4_3
            end
            
            L9_2 = pairs
            L10_2 = A0_2.receivedItems
            L9_2, L10_2, L11_2 = L9_2(L10_2)
            for L12_2, L13_2 in L9_2, L10_2, L11_2 do
              L14_2 = L14_1
              L14_2 = L14_2.baseCardWithId
              L15_2 = L13_2
              L14_2 = L14_2(L15_2)
              L15_2 = L14_1
              L16_2 = L15_2
              L15_2 = L15_2.new
              L17_2 = {}
              L18_2 = L14_2.fruitId
              L17_2.fruitId = L18_2
              L18_2 = L14_2.id
              L17_2.id = L18_2
              L18_2 = L14_2.name
              L17_2.name = L18_2
              L18_2 = L14_2.power
              L17_2.power = L18_2
              L18_2 = L14_2.cooldown
              L17_2.cooldown = L18_2
              L18_2 = L14_2.image
              L17_2.image = L18_2
              L18_2 = L14_2.rarity
              L17_2.rarity = L18_2
              L18_2 = L14_2.powerLimit
              L17_2.powerLimit = L18_2
              L18_2 = L14_2.virtualRarity
              L17_2.virtualRarity = L18_2
              L18_2 = L14_2.veteran_level
              L17_2.veteran_level = L18_2
              L18_2 = L14_2.description
              L17_2.description = L18_2
              L15_2 = L15_2(L16_2, L17_2)
              L15_2.baseId = L13_2
              L16_2 = A0_2.availableHeroes
              L17_2 = L4_1
              L18_2 = L17_2
              L17_2 = L17_2.new
              L19_2 = "big"
              L20_2 = L15_2
              L21_2 = L15_1
              L22_2 = {}
              L22_2.cardHeight = 170
              L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
              L16_2[L12_2] = L17_2
              L16_2 = A0_2.availableHeroes
              L16_2 = L16_2[L12_2]
              L17_2 = L16_2
              L16_2 = L16_2.addEnterFrameListener
              L16_2(L17_2)
              L16_2 = A0_2.availableHeroes
              L16_2 = L16_2[L12_2]
              L17_2 = L16_2
              L16_2 = L16_2.setSelectable
              L18_2 = false
              L16_2(L17_2, L18_2)
              L16_2 = A0_2.availableHeroes
              L16_2 = L16_2[L12_2]
              L17_2 = L16_2
              L16_2 = L16_2.deselected
              L16_2(L17_2)
              L16_2 = A0_2.availableHeroes
              L16_2 = L16_2[L12_2]
              L17_2 = L16_2
              L16_2 = L16_2.setId
              L18_2 = L12_2
              L16_2(L17_2, L18_2)
              L16_2 = A0_2.view
              L17_2 = L16_2
              L16_2 = L16_2.insert
              L18_2 = A0_2.availableHeroes
              L18_2 = L18_2[L12_2]
              L18_2 = L18_2.view
              L16_2(L17_2, L18_2)
              L16_2 = L8_2
              L17_2 = A0_2.availableHeroes
              L17_2 = L17_2[L12_2]
              L17_2 = L17_2.view
              L18_2 = A0_2.receivedItems
              L18_2 = #L18_2
              L19_2 = L12_2
              L20_2 = 20
              L16_2(L17_2, L18_2, L19_2, L20_2)
              if L12_2 == 2 then
                L16_2 = A0_2.availableHeroes
                L16_2 = L16_2[L12_2]
                L16_2 = L16_2.view
                L17_2 = A0_2.availableHeroes
                L17_2 = L17_2[L12_2]
                L17_2 = L17_2.view
                L17_2 = L17_2.height
                L17_2 = -L17_2
                L17_2 = L17_2 - 20
                L16_2.y = L17_2
              else
                L16_2 = A0_2.availableHeroes
                L16_2 = L16_2[L12_2]
                L16_2 = L16_2.view
                L17_2 = display
                L17_2 = L17_2.contentHeight
                L18_2 = A0_2.availableHeroes
                L18_2 = L18_2[L12_2]
                L18_2 = L18_2.view
                L18_2 = L18_2.height
                L17_2 = L17_2 + L18_2
                L17_2 = L17_2 + 20
                L16_2.y = L17_2
              end
              L16_2 = {}
              L17_2 = L2_1
              L17_2 = L17_2.choose
              L16_2.label = L17_2
              L16_2.width = 80
              L16_2.height = 22
              L17_2 = L3_1
              L17_2 = L17_2.Path_Assets
              L18_2 = "CardScene/button.png"
              L17_2 = L17_2 .. L18_2
              L16_2.defaultFile = L17_2
              L17_2 = Theme
              L17_2 = L17_2.colorsSet
              L17_2 = L17_2.blackColor
              L16_2.labelColor = L17_2
              L17_2 = A0_2.selectButtons
              L18_2 = L10_1
              L19_2 = L18_2
              L18_2 = L18_2.new
              L20_2 = L16_2
              L18_2 = L18_2(L19_2, L20_2)
              L17_2[L12_2] = L18_2
              L17_2 = A0_2.view
              L18_2 = L17_2
              L17_2 = L17_2.insert
              L19_2 = A0_2.selectButtons
              L19_2 = L19_2[L12_2]
              L19_2 = L19_2.view
              L17_2(L18_2, L19_2)
              L17_2 = A0_2.selectButtons
              L17_2 = L17_2[L12_2]
              L17_2 = L17_2.view
              L18_2 = A0_2.availableHeroes
              L18_2 = L18_2[L12_2]
              L18_2 = L18_2.view
              L18_2 = L18_2.x
              L19_2 = A0_2.availableHeroes
              L19_2 = L19_2[L12_2]
              L19_2 = L19_2.view
              L19_2 = L19_2.width
              L19_2 = L19_2 / 2
              L18_2 = L18_2 + L19_2
              L17_2.x = L18_2
              L17_2 = A0_2.selectButtons
              L17_2 = L17_2[L12_2]
              L17_2 = L17_2.view
              L18_2 = display
              L18_2 = L18_2.contentHeight
              L18_2 = L18_2 - 25
              L19_2 = A0_2.selectButtons
              L19_2 = L19_2[L12_2]
              L19_2 = L19_2.view
              L19_2 = L19_2.height
              L19_2 = L19_2 / 2
              L18_2 = L18_2 - L19_2
              L17_2.y = L18_2
              L17_2 = A0_2.selectButtons
              L17_2 = L17_2[L12_2]
              L17_2 = L17_2.view
              L17_2.alpha = 0
              L17_2 = A0_2.selectButtons
              L17_2 = L17_2[L12_2]
              
              function L18_2()
                local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
                L0_3 = A0_2
                L0_3 = L0_3.heroTutorialCallback
                if L0_3 then
                  L0_3 = A0_2
                  L0_3 = L0_3.item
                  L1_3 = L0_3
                  L0_3 = L0_3.buyItem
                  L2_3 = L5_2
                  L3_3 = L6_2
                  L4_3 = A0_2
                  L5_3 = nil
                  L6_3 = L13_2
                  L7_3 = true
                  L8_3 = A0_2
                  L8_3 = L8_3.heroTutorialCallback
                  L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
                else
                  L0_3 = A0_2
                  L0_3 = L0_3.item
                  L1_3 = L0_3
                  L0_3 = L0_3.buyItem
                  L2_3 = L5_2
                  L3_3 = L6_2
                  L4_3 = A0_2
                  L5_3 = nil
                  L6_3 = L13_2
                  L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
                end
              end
              
              L17_2.onRelease = L18_2
              L17_2 = L7_2
              L18_2 = A0_2.availableHeroes
              L18_2 = L18_2[L12_2]
              L18_2 = L18_2.view
              L19_2 = A0_2.selectButtons
              L19_2 = L19_2[L12_2]
              L17_2(L18_2, L19_2)
              L17_2 = nil
              L18_2 = L14_2.heroType
              if L18_2 then
                L18_2 = L14_2.heroType
                if L18_2 == 0 then
                  L17_2 = "Power Title"
                else
                  L18_2 = L14_2.heroType
                  if L18_2 == 1 then
                    L17_2 = "Wisdom Title"
                  else
                    L18_2 = L14_2.heroType
                    if L18_2 == 2 then
                      L17_2 = "Blessing Title"
                    end
                  end
                end
              end
              L18_2 = A0_2.heroType
              L19_2 = display
              L19_2 = L19_2.newText
              L20_2 = A0_2.view
              L21_2 = L2_1
              L21_2 = L21_2[L17_2]
              L22_2 = 0
              L23_2 = 0
              L24_2 = 0
              L25_2 = 0
              L26_2 = L3_1
              L26_2 = L26_2.fontForTitle
              L26_2 = L26_2()
              L27_2 = 12
              L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
              L18_2[L12_2] = L19_2
              L18_2 = A0_2.heroType
              L18_2 = L18_2[L12_2]
              L19_2 = A0_2.selectButtons
              L19_2 = L19_2[L12_2]
              L19_2 = L19_2.view
              L19_2 = L19_2.x
              L18_2.x = L19_2
              L18_2 = A0_2.heroType
              L18_2 = L18_2[L12_2]
              L18_2.y = 40
              L18_2 = mainPlayer
              L18_2 = L18_2.level
              L19_2 = L3_1
              L19_2 = L19_2.UnlockLevel_Hero
              if L18_2 >= L19_2 then
                L18_2 = A0_2.heroAttributeGroup
                L19_2 = L20_1
                L20_2 = L14_2.powerAttribute
                L21_2 = L14_2.wisdomAttribute
                L22_2 = L14_2.blessingAttribute
                L19_2 = L19_2(L20_2, L21_2, L22_2)
                L18_2[L12_2] = L19_2
                L18_2 = A0_2.heroAttributeGroup
                L18_2 = L18_2[L12_2]
                L19_2 = A0_2.selectButtons
                L19_2 = L19_2[L12_2]
                L19_2 = L19_2.view
                L19_2 = L19_2.y
                L20_2 = A0_2.selectButtons
                L20_2 = L20_2[L12_2]
                L20_2 = L20_2.view
                L20_2 = L20_2.height
                L20_2 = L20_2 / 2
                L19_2 = L19_2 - L20_2
                L20_2 = A0_2.heroAttributeGroup
                L20_2 = L20_2[L12_2]
                L20_2 = L20_2.height
                L20_2 = L20_2 / 2
                L19_2 = L19_2 - L20_2
                L19_2 = L19_2 - 15
                L18_2.y = L19_2
                L18_2 = A0_2.heroAttributeGroup
                L18_2 = L18_2[L12_2]
                L19_2 = A0_2.selectButtons
                L19_2 = L19_2[L12_2]
                L19_2 = L19_2.view
                L19_2 = L19_2.x
                L18_2.x = L19_2
              end
            end
          end
        end
      end
    end
    L4_2 = L13_1
    L4_2 = L4_2.checkForTutorial
    L5_2 = "Scenes.ShopAnimationScene"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
  end
end

L15_1.show = L21_1

function L21_1(A0_2)
  local L1_2, L2_2
  L1_2 = L18_1
  if L1_2 then
    L1_2 = L18_1
    L2_2 = L1_2
    L1_2 = L1_2.deselected
    L1_2(L2_2)
  end
  L18_1 = A0_2
end

L15_1.avatarSelected = L21_1

function L21_1(A0_2)
  local L1_2, L2_2
  L1_2 = L18_1
  if L1_2 then
    L1_2 = L18_1
    L2_2 = L1_2
    L1_2 = L1_2.deselected
    L1_2(L2_2)
  end
  L1_2 = nil
  L18_1 = L1_2
end

L15_1.avatarDeselected = L21_1

function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = A0_2.continueLabel
    L4_2.isVisible = false
    L4_2 = A0_2.packImage
    if L4_2 then
      L4_2 = A0_2.packImage
      L5_2 = L4_2
      L4_2 = L4_2.removeSelf
      L4_2(L5_2)
      A0_2.packImage = nil
    end
    L4_2 = A0_2.goldView
    if L4_2 ~= nil then
      L4_2 = A0_2.goldView
      L5_2 = L4_2
      L4_2 = L4_2.removeSelf
      L4_2(L5_2)
      A0_2.goldView = nil
    end
    L4_2 = A0_2.heroType
    if L4_2 then
      L4_2 = pairs
      L5_2 = A0_2.heroType
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L10_2 = L8_2
        L9_2 = L8_2.removeSelf
        L9_2(L10_2)
        L8_2 = nil
      end
      A0_2.heroType = nil
    end
    L4_2 = A0_2.backButton
    if L4_2 then
      L4_2 = A0_2.backButton
      L5_2 = L4_2
      L4_2 = L4_2.removeSelf
      L4_2(L5_2)
      A0_2.backButton = nil
    end
    L4_2 = A0_2.heroAttributeGroup
    if L4_2 then
      L4_2 = pairs
      L5_2 = A0_2.heroAttributeGroup
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L10_2 = L8_2
        L9_2 = L8_2.removeSelf
        L9_2(L10_2)
        L8_2 = nil
      end
      A0_2.heroAttributeGroup = nil
    end
    L4_2 = A0_2.receivedCardViews
    if L4_2 then
      L4_2 = pairs
      L5_2 = A0_2.receivedCardViews
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L10_2 = L8_2
        L9_2 = L8_2.removeSelf
        L9_2(L10_2)
        L9_2 = A0_2.receivedCardViews
        L9_2[L7_2] = nil
      end
    end
    L4_2 = A0_2.receivedAvatarViews
    if L4_2 then
      L4_2 = pairs
      L5_2 = A0_2.receivedAvatarViews
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L9_2 = display
        L9_2 = L9_2.remove
        L10_2 = L8_2.view
        L9_2(L10_2)
        L9_2 = A0_2.receivedAvatarViews
        L9_2[L7_2] = nil
      end
    end
    L4_2 = A0_2.selectButtons
    if L4_2 then
      L4_2 = pairs
      L5_2 = A0_2.selectButtons
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L10_2 = L8_2
        L9_2 = L8_2.removeSelf
        L9_2(L10_2)
        L8_2 = nil
      end
    end
    L4_2 = A0_2.availableHeroes
    if L4_2 then
      L4_2 = pairs
      L5_2 = A0_2.availableHeroes
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L10_2 = L8_2
        L9_2 = L8_2.removeEnterFrameListener
        L9_2(L10_2)
        L10_2 = L8_2
        L9_2 = L8_2.removeSelf
        L9_2(L10_2)
        L8_2 = nil
      end
    end
  elseif L3_2 == "did" then
    L4_2 = A0_2.callbackFunction
    if L4_2 then
      L4_2 = A0_2.callbackFunction
      L4_2()
      A0_2.callbackFunction = nil
    end
  end
end

L15_1.hide = L21_1

function L21_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.view
end

L15_1.destroy = L21_1
L22_1 = L15_1
L21_1 = L15_1.addEventListener
L23_1 = "create"
L24_1 = L15_1
L21_1(L22_1, L23_1, L24_1)
L22_1 = L15_1
L21_1 = L15_1.addEventListener
L23_1 = "show"
L24_1 = L15_1
L21_1(L22_1, L23_1, L24_1)
L22_1 = L15_1
L21_1 = L15_1.addEventListener
L23_1 = "hide"
L24_1 = L15_1
L21_1(L22_1, L23_1, L24_1)
L22_1 = L15_1
L21_1 = L15_1.addEventListener
L23_1 = "destroy"
L24_1 = L15_1
L21_1(L22_1, L23_1, L24_1)
return L15_1
