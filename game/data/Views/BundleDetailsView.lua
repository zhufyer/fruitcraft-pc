local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.BaseView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Components.TDButtonView"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Utils.Toolbox"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Language"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Models.ShopItem"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Data.BaseShopItems"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.ActivityIndicatorView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Models.Card"
L7_1 = L7_1(L8_1)
L8_1 = audio
L8_1 = L8_1.loadSound
L9_1 = Constants
L9_1 = L9_1.Path_Assets
L10_1 = "Audio/FC-buyGold.wav"
L9_1 = L9_1 .. L10_1
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "composer"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Models.Player"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Views.EffectsManager"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Utils.Analytics"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Views.BundleItemView"
L13_1 = L13_1(L14_1)
L14_1 = require
L15_1 = "Views.CachedImageView"
L14_1 = L14_1(L15_1)
L15_1 = 1
L16_1 = 110
L17_1 = 149
L18_1 = 0.5
L19_1 = 0.1
L20_1 = {}
L21_1 = 1
L22_1 = nil
L23_1 = setmetatable
L24_1 = _M
L25_1 = {}
L25_1.__index = L0_1
L23_1(L24_1, L25_1)
L23_1 = nil
L24_1 = true

function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = assert
  L4_2 = A1_2.itemImage
  L4_2 = L4_2 ~= nil
  L5_2 = "image of item needs to be provided in the bundle view params"
  L3_2(L4_2, L5_2)
  L3_2 = assert
  L4_2 = A1_2.bundleInfo
  L4_2 = L4_2 ~= nil
  L5_2 = "bundle info table needs to be provided in the bundle view params"
  L3_2(L4_2, L5_2)
  L3_2 = L0_1
  L3_2 = L3_2.newWithParams
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2.bundleInfo
  L22_1 = L4_2
  L4_2 = L22_1
  L4_2 = L4_2.goldPackInfo
  L4_2.itemType = 2
  L4_2 = L22_1
  L4_2 = L4_2.endTime
  L3_2.endTime = L4_2
  L4_2 = L2_1
  L4_2 = L4_2.stringThousandCommaSeperated
  L5_2 = L22_1
  L5_2 = L5_2.goldPackInfo
  L5_2 = L5_2.price
  L6_2 = Constants
  L6_2 = L6_2.StoreID
  L5_2 = L5_2[L6_2]
  L4_2 = L4_2(L5_2)
  L3_2.price = L4_2
  L4_2 = L22_1
  L4_2 = L4_2.goldAmount
  L3_2.goldAmount = L4_2
  
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.removeView
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = L9_1
    L0_3 = L0_3.getScene
    L1_3 = "Scenes.Home"
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L1_3 = L0_3.bundleButton
      if L1_3 then
        L1_3 = L0_3.bundleButton
        L2_3 = L1_3
        L1_3 = L1_3.update
        L1_3(L2_3)
      end
    end
  end
  
  L5_2 = display
  L5_2 = L5_2.newRect
  L6_2 = L3_2.view
  L7_2 = 0
  L8_2 = 0
  L9_2 = 570
  L10_2 = 360
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2.dimBackground = L5_2
  L5_2 = L3_2.dimBackground
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0.8
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = L3_2.dimBackground
  L5_2.isHitTestable = true
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  L3_2.contentGroup = L5_2
  L5_2 = L3_2.view
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L3_2.contentGroup
  L5_2(L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  L3_2.timerGroup = L5_2
  L5_2 = L3_2.view
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L3_2.timerGroup
  L5_2(L6_2, L7_2)
  L5_2 = L14_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = L3_2.contentGroup
  L8_2 = A1_2.itemImage
  L9_2 = A1_2.imageWidth
  L10_2 = A1_2.imageHeight
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2.itemImage = L5_2
  L5_2 = L3_2.itemImage
  L5_2.x = 0
  L5_2 = L3_2.itemImage
  L6_2 = L3_2.itemImage
  L6_2 = L6_2.height
  L6_2 = -L6_2
  L6_2 = L6_2 * 7
  L6_2 = L6_2 / 9
  L5_2.y = L6_2
  L5_2 = L11_1
  L5_2 = L5_2.showFireworkEffect
  L6_2 = display
  L6_2 = L6_2.contentCenterX
  L7_2 = L3_2.contentGroup
  L7_2 = L7_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L7_2 = display
  L7_2 = L7_2.contentCenterY
  L8_2 = L3_2.itemImage
  L8_2 = L8_2.y
  L7_2 = L7_2 + L8_2
  L5_2(L6_2, L7_2)
  L5_2 = "bundle_description_"
  L6_2 = tostring
  L7_2 = L22_1
  L7_2 = L7_2.id
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L6_2 = L3_1
  L6_2 = L6_2[L5_2]
  if not L6_2 then
    L6_2 = ""
  end
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = {}
  L9_2 = L3_2.contentGroup
  L8_2.parent = L9_2
  L8_2.text = L6_2
  L8_2.x = 0
  L8_2.y = 0
  L9_2 = Constants
  L9_2 = L9_2.fontForTitle
  L9_2 = L9_2()
  L8_2.font = L9_2
  L8_2.fontSize = 17
  L8_2.width = 200
  L8_2.align = "center"
  L7_2 = L7_2(L8_2)
  L3_2.title = L7_2
  L7_2 = L3_2.title
  L8_2 = L3_2.itemImage
  L8_2 = L8_2.y
  L9_2 = L3_2.itemImage
  L9_2 = L9_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L8_2 = L8_2 + 4
  L9_2 = L3_2.title
  L9_2 = L9_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L7_2.y = L8_2
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = L3_2.timerGroup
  L9_2 = " "
  L10_2 = 0
  L11_2 = 0
  L12_2 = Constants
  L12_2 = L12_2.fontForSubtitle
  L12_2 = L12_2()
  L13_2 = 15
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L3_2.timeString = L7_2
  L7_2 = L3_2.timerGroup
  L7_2.x = 0
  L7_2 = L3_2.timerGroup
  L8_2 = L3_2.title
  L8_2 = L8_2.y
  L9_2 = L3_2.title
  L9_2 = L9_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L8_2 = L8_2 + 4
  L9_2 = L3_2.timerGroup
  L9_2 = L9_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L7_2.y = L8_2
  L7_2 = L3_2.contentGroup
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = L3_2.timerGroup
  L7_2(L8_2, L9_2)
  L7_2 = print
  L8_2 = "bundleInfo.id"
  L9_2 = L22_1
  L9_2 = L9_2.id
  L10_2 = "bundleInfo.goldPackInfo.product_uid"
  L11_2 = L22_1
  L11_2 = L11_2.goldPackInfo
  L11_2 = L11_2.product_uid
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = L4_1
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = successToBuyItem
  L10_2 = failedToBuyItem
  L11_2 = L3_2
  L12_2 = L22_1
  L12_2 = L12_2.goldPackInfo
  L13_2 = L22_1
  L13_2 = L13_2.id
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = L22_1
  L8_2 = L8_2.goldPackInfo
  L8_2 = L8_2.product_uid
  L7_2.UID = L8_2
  L8_2 = L22_1
  L8_2 = L8_2.id
  L7_2.bundleID = L8_2
  L8_2 = L22_1
  L8_2 = L8_2.goldPackInfo
  L8_2 = L8_2.id
  L7_2.id = L8_2
  L8_2 = L22_1
  L8_2 = L8_2.goldPackInfo
  L8_2 = L8_2.id
  L7_2.storeId = L8_2
  L8_2 = 1
  L9_2 = L1_1
  L10_2 = L9_2
  L9_2 = L9_2.new
  L11_2 = {}
  L12_2 = L3_1
  L12_2 = L12_2.localizedString
  L13_2 = "Bundle Purchase Label"
  L14_2 = {}
  L15_2 = L3_1
  L15_2 = L15_2.adjustNumber
  L16_2 = L3_2.price
  L15_2 = L15_2(L16_2)
  L14_2.price = L15_2
  L12_2 = L12_2(L13_2, L14_2)
  L11_2.label = L12_2
  L11_2.width = 100
  L11_2.height = 30
  L12_2 = Constants
  L12_2 = L12_2.Path_Assets
  L13_2 = "BattleItems/battle_outcome_button.png"
  L12_2 = L12_2 .. L13_2
  L11_2.imageName = L12_2
  
  function L12_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = L12_1
    L1_3 = L1_3.logEvent
    L2_3 = "Bundle Purchase Button Touched"
    L1_3(L2_3)
    L1_3 = L24_1
    if L1_3 == true then
      L1_3 = L7_2
      L1_3 = L1_3.action
      L1_3()
    else
      L1_3 = L3_2
      L2_3 = L1_3
      L1_3 = L1_3.removeView
      L3_3 = false
      L1_3(L2_3, L3_3)
      L1_3 = showSimpleDialog
      L2_3 = L3_1
      L3_3 = "bundle_title_"
      L4_3 = tostring
      L5_3 = L22_1
      L5_3 = L5_3.id
      L4_3 = L4_3(L5_3)
      L3_3 = L3_3 .. L4_3
      L2_3 = L2_3[L3_3]
      L3_3 = L3_1
      L3_3 = L3_3["Bundle Time Alert"]
      L1_3(L2_3, L3_3)
    end
  end
  
  L11_2.onRelease = L12_2
  L9_2 = L9_2(L10_2, L11_2)
  L3_2.purchaseButton = L9_2
  L9_2 = L3_2.contentGroup
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L3_2.purchaseButton
  L11_2 = L11_2.view
  L9_2(L10_2, L11_2)
  L9_2 = L3_2.purchaseButton
  L10_2 = L3_2.purchaseButton
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L10_2 = 5 + L10_2
  L9_2.x = L10_2
  L9_2 = L3_2.purchaseButton
  L10_2 = L3_2.timerGroup
  L10_2 = L10_2.y
  L11_2 = L3_2.timerGroup
  L11_2 = L11_2.height
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L10_2 = L10_2 + 4
  L11_2 = L3_2.purchaseButton
  L11_2 = L11_2.height
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L9_2.y = L10_2
  L9_2 = L3_2.purchaseButton
  L9_2.alpha = 0
  L9_2 = L3_2.purchaseButton
  L10_2 = L9_2
  L9_2 = L9_2.setEnabled
  L11_2 = true
  L9_2(L10_2, L11_2)
  L9_2 = L22_1
  L9_2 = L9_2.goldPackInfo
  L9_2 = L9_2.price
  L10_2 = Constants
  L10_2 = L10_2.StoreID
  L9_2 = L9_2[L10_2]
  L10_2 = L22_1
  L10_2 = L10_2.discountRatio
  L10_2 = 1 + L10_2
  L9_2 = L9_2 * L10_2
  L10_2 = L2_1
  L10_2 = L10_2.stringThousandCommaSeperated
  L11_2 = L9_2
  L10_2 = L10_2(L11_2)
  L9_2 = L10_2
  L10_2 = display
  L10_2 = L10_2.newText
  L11_2 = L3_2.contentGroup
  L12_2 = L3_1
  L12_2 = L12_2.localizedString
  L13_2 = "Bundle Purchase Label"
  L14_2 = {}
  L15_2 = L3_1
  L15_2 = L15_2.adjustNumber
  L16_2 = L9_2
  L15_2 = L15_2(L16_2)
  L14_2.price = L15_2
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = 0
  L14_2 = 0
  L15_2 = Constants
  L15_2 = L15_2.fontForTitle
  L15_2 = L15_2()
  L16_2 = 13
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L3_2.realPriceLabel = L10_2
  L10_2 = L3_2.realPriceLabel
  L11_2 = L3_2.purchaseButton
  L11_2 = L11_2.x
  L10_2.x = L11_2
  L10_2 = L3_2.realPriceLabel
  L11_2 = L3_2.purchaseButton
  L11_2 = L11_2.y
  L12_2 = L3_2.purchaseButton
  L12_2 = L12_2.height
  L12_2 = L12_2 / 2
  L11_2 = L11_2 + L12_2
  L11_2 = L11_2 + 4
  L12_2 = L3_2.realPriceLabel
  L12_2 = L12_2.height
  L12_2 = L12_2 / 2
  L11_2 = L11_2 + L12_2
  L10_2.y = L11_2
  L10_2 = L3_2.realPriceLabel
  L10_2.alpha = 0
  L10_2 = display
  L10_2 = L10_2.newLine
  L11_2 = L3_2.realPriceLabel
  L11_2 = L11_2.x
  L12_2 = L3_2.realPriceLabel
  L12_2 = L12_2.width
  L12_2 = L12_2 / 2
  L11_2 = L11_2 - L12_2
  L11_2 = L11_2 - 2
  L12_2 = L3_2.realPriceLabel
  L12_2 = L12_2.y
  L13_2 = L3_2.realPriceLabel
  L13_2 = L13_2.x
  L14_2 = L3_2.realPriceLabel
  L14_2 = L14_2.width
  L14_2 = L14_2 / 2
  L13_2 = L13_2 + L14_2
  L13_2 = L13_2 + 2
  L14_2 = L3_2.realPriceLabel
  L14_2 = L14_2.y
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  L3_2.redLine = L10_2
  L10_2 = L3_2.redLine
  L11_2 = L10_2
  L10_2 = L10_2.setStrokeColor
  L12_2 = 1
  L13_2 = 0.19607843
  L14_2 = 0.39211569
  L15_2 = 0.8
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = L3_2.redLine
  L10_2.strokeWidth = 2
  L10_2 = L3_2.contentGroup
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = L3_2.redLine
  L10_2(L11_2, L12_2)
  L10_2 = L3_2.redLine
  L10_2.alpha = 0
  L10_2 = L1_1
  L11_2 = L10_2
  L10_2 = L10_2.new
  L12_2 = {}
  L13_2 = L3_1
  L13_2 = L13_2["Bundle Later Purchase Label"]
  L12_2.label = L13_2
  L12_2.width = 100
  L12_2.height = 30
  L13_2 = Constants
  L13_2 = L13_2.Path_Assets
  L14_2 = "BattleItems/battle_outcome_button.png"
  L13_2 = L13_2 .. L14_2
  L12_2.imageName = L13_2
  L12_2.onRelease = L4_2
  L10_2 = L10_2(L11_2, L12_2)
  L3_2.laterButton = L10_2
  L10_2 = L3_2.contentGroup
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = L3_2.laterButton
  L12_2 = L12_2.view
  L10_2(L11_2, L12_2)
  L10_2 = L3_2.laterButton
  L11_2 = L3_2.laterButton
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L11_2 = -5 - L11_2
  L10_2.x = L11_2
  L10_2 = L3_2.laterButton
  L11_2 = L3_2.purchaseButton
  L11_2 = L11_2.y
  L10_2.y = L11_2
  L10_2 = L3_2.laterButton
  L10_2.alpha = 0
  L10_2 = L3_2.laterButton
  L11_2 = L10_2
  L10_2 = L10_2.setEnabled
  L12_2 = true
  L10_2(L11_2, L12_2)
  L10_2 = L3_2.contentGroup
  L11_2 = L3_2.contentGroup
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L10_2.x = L11_2
  L10_2 = L3_2.contentGroup
  L11_2 = display
  L11_2 = L11_2.contentHeight
  L11_2 = L11_2 / 2
  L12_2 = L3_2.contentGroup
  L12_2 = L12_2.height
  L12_2 = L12_2 / 2
  L11_2 = L11_2 - L12_2
  L11_2 = L11_2 - 20
  L10_2.y = L11_2
  
  function L10_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L4_2
      L1_3()
    end
    L1_3 = true
    return L1_3
  end
  
  L11_2 = L3_2.dimBackground
  L12_2 = L11_2
  L11_2 = L11_2.addEventListener
  L13_2 = "tap"
  L14_2 = L10_2
  L11_2(L12_2, L13_2, L14_2)
  L11_2 = L3_2.dimBackground
  L12_2 = L11_2
  L11_2 = L11_2.addEventListener
  L13_2 = "touch"
  L14_2 = L10_2
  L11_2(L12_2, L13_2, L14_2)
  L11_2 = Runtime
  L12_2 = L11_2
  L11_2 = L11_2.addEventListener
  L13_2 = "click"
  L14_2 = L3_2
  L11_2(L12_2, L13_2, L14_2)
  L11_2 = L22_1
  L11_2 = L11_2.rewardsCount
  
  function L12_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = 1
    L15_1 = L0_3
    L0_3 = L22_1
    L0_3 = L0_3.goldAmount
    if 0 < L0_3 then
      L0_3 = Constants
      L0_3 = L0_3.Path_Assets
      L1_3 = "BattleItems/FC-Outcome-gold.png"
      L0_3 = L0_3 .. L1_3
      L1_3 = L3_2
      L2_3 = L1_3
      L1_3 = L1_3.createItems
      L3_3 = L22_1
      L3_3 = L3_3.goldAmount
      L4_3 = L0_3
      L5_3 = 36
      L6_3 = 36
      L7_3 = 3
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    end
    L0_3 = L22_1
    L0_3 = L0_3.nectarAmount
    if 0 < L0_3 then
      L0_3 = Constants
      L0_3 = L0_3.Path_Assets
      L1_3 = "Navbar/FC-navbar-nectar.png"
      L0_3 = L0_3 .. L1_3
      L1_3 = L3_2
      L2_3 = L1_3
      L1_3 = L1_3.createItems
      L3_3 = L22_1
      L3_3 = L3_3.nectarAmount
      L4_3 = L0_3
      L5_3 = 50
      L6_3 = 50
      L7_3 = 5
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    end
    L0_3 = L22_1
    L0_3 = L0_3.potionGift
    if L0_3 then
      L0_3 = Constants
      L0_3 = L0_3.Path_Assets
      L1_3 = "BattleItems/potion.png"
      L0_3 = L0_3 .. L1_3
      L1_3 = L3_1
      L1_3 = L1_3["Filling Out Potion Label"]
      L2_3 = L3_2
      L3_3 = L2_3
      L2_3 = L2_3.createItems
      L4_3 = L1_3
      L5_3 = L0_3
      L6_3 = 28
      L7_3 = 46
      L8_3 = 4
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    end
    L0_3 = L22_1
    L0_3 = L0_3.boostPackType
    if L0_3 ~= nil then
      L0_3 = L22_1
      L0_3 = L0_3.boostPackType
      if 0 < L0_3 then
        L0_3 = L3_2
        L1_3 = L0_3
        L0_3 = L0_3.createBoost
        L2_3 = 1
        L3_3 = L22_1
        L3_3 = L3_3.boostPackType
        L0_3(L1_3, L2_3, L3_3)
      end
    end
    L0_3 = L22_1
    L0_3 = L0_3.cardsInfo
    if L0_3 then
      L0_3 = L22_1
      L0_3 = L0_3.cardsInfo
      L0_3 = L0_3.type
      if L0_3 == 1 then
        L0_3 = L3_2
        L1_3 = L0_3
        L0_3 = L0_3.createCards
        L2_3 = L22_1
        L2_3 = L2_3.cardsInfo
        L2_3 = L2_3.cards
        L3_3 = 2
        L0_3(L1_3, L2_3, L3_3)
      else
        L0_3 = L22_1
        L0_3 = L0_3.cardsInfo
        L0_3 = L0_3.type
        if L0_3 == 2 then
          L0_3 = L3_1
          L1_3 = "bundle_text_card_pack_"
          L2_3 = tostring
          L3_3 = L22_1
          L3_3 = L3_3.id
          L2_3 = L2_3(L3_3)
          L1_3 = L1_3 .. L2_3
          L0_3 = L0_3[L1_3]
          if not L0_3 then
            L0_3 = ""
          end
          L1_3 = Constants
          L1_3 = L1_3.Path_Assets
          L2_3 = "Shop/bundle_"
          L3_3 = tostring
          L4_3 = L22_1
          L4_3 = L4_3.id
          L3_3 = L3_3(L4_3)
          L4_3 = "_image_card_pack.png"
          L1_3 = L1_3 .. L2_3 .. L3_3 .. L4_3
          L2_3 = L3_2
          L3_3 = L2_3
          L2_3 = L2_3.createItems
          L4_3 = L0_3
          L5_3 = L1_3
          L6_3 = 50
          L7_3 = 50
          L8_3 = 6
          L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        end
      end
    end
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.animateRewardsToThePlaceHolder
    L2_3 = L11_2
    L0_3(L1_3, L2_3)
  end
  
  createBundleRewardImage = L12_2
  L12_2 = timer
  L12_2 = L12_2.performWithDelay
  L13_2 = 300
  
  function L14_2()
    local L0_3, L1_3
    L0_3 = createBundleRewardImage
    L0_3()
  end
  
  L12_2(L13_2, L14_2)
  L23_1 = L3_2
  return L3_2
end

new = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L2_1
  L2_2 = L2_2.remainTimeFromNow
  L3_2 = A0_2.endTime
  L4_2 = mainPlayer
  L4_2 = L4_2.timeDelta
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2)
  if L2_2 < 0 then
    L6_2 = false
    L24_1 = L6_2
    L3_2 = "00"
    L4_2 = "00"
    L5_2 = "00"
    L6_2 = Runtime
    L7_2 = L6_2
    L6_2 = L6_2.removeEventListener
    L8_2 = "click"
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = L3_1
  L6_2 = L6_2.adjustNumber
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L3_2 = L6_2
  L6_2 = L3_1
  L6_2 = L6_2.adjustNumber
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L5_2 = L6_2
  L6_2 = L3_1
  L6_2 = L6_2.adjustNumber
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L4_2 = L6_2
  L6_2 = A0_2.timeString
  L7_2 = L3_2
  L8_2 = " : "
  L9_2 = L4_2
  L10_2 = " : "
  L11_2 = L5_2
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
  L6_2.text = L7_2
end

click = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 ~= nil then
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3
      
      L0_3 = Runtime
      L1_3 = L0_3
      L0_3 = L0_3.removeEventListener
      L2_3 = "click"
      L3_3 = A0_2
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = nil
      A0_2 = L0_3
    end
    
    if A1_2 == true then
      L3_2 = transition
      L3_2 = L3_2.to
      L4_2 = A0_2.view
      L5_2 = {}
      L5_2.time = 300
      L5_2.alpha = 0
      
      function L6_2()
        local L0_3, L1_3
        L0_3 = L2_2
        L0_3()
      end
      
      L5_2.onComplete = L6_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = L2_2
      L3_2()
    end
  end
end

removeView = L25_1

function L25_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = L6_1
  L4_2 = L4_2.hide
  L4_2()
end

successToBuyItem = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L23_1
  if L2_2 ~= nil then
    L2_2 = L23_1
    L3_2 = L2_2
    L2_2 = L2_2.removeView
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = log3
  L3_2 = "\195\133\195\133\195\133\195\133 bundle pack purchasing/consuming failed."
  L2_2(L3_2)
  L2_2 = L6_1
  L2_2 = L2_2.hideAll
  L2_2()
  L2_2 = L9_1
  L2_2 = L2_2.getScene
  L3_2 = "Scenes.Home"
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.bundleButton
    if L3_2 then
      L3_2 = L2_2.bundleButton
      L4_2 = L3_2
      L3_2 = L3_2.update
      L3_2(L4_2)
    end
  end
  if A1_2 == "Network error" then
    L3_2 = showSimpleDialog
    L4_2 = L3_1
    L4_2 = L4_2["Bundle Title"]
    L5_2 = A1_2
    L6_2 = "Reload"
    
    function L7_2()
      local L0_3, L1_3, L2_3
      L0_3 = L9_1
      L0_3 = L0_3.gotoScene
      L1_3 = "Scenes.Loading"
      L0_3(L1_3)
      L0_3 = L10_1
      L1_3 = L9_1
      L1_3 = L1_3.getScene
      L2_3 = "Scenes.Loading"
      L1_3 = L1_3(L2_3)
      L0_3.delegate = L1_3
      L0_3 = L10_1
      L0_3 = L0_3.loadPlayer
      L0_3()
    end
    
    L3_2(L4_2, L5_2, L6_2, L7_2)
  elseif A1_2 ~= nil then
    if A1_2 == "Market Issue" then
      L3_2 = showSimpleDialog
      L4_2 = L3_1
      L4_2 = L4_2["Bundle Title"]
      L5_2 = L3_1
      L5_2 = L5_2.localizedString
      L6_2 = "Please Install"
      L7_2 = {}
      L8_2 = L3_1
      L9_2 = _storeType
      L8_2 = L8_2[L9_2]
      L7_2.market = L8_2
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = "Cancel"
      L7_2 = nil
      L8_2 = "Continue"
      
      function L9_2()
        local L0_3, L1_3
        L0_3 = system
        L0_3 = L0_3.openURL
        L1_3 = Constants
        L1_3 = L1_3.marketURL
        L1_3 = L1_3()
        L0_3(L1_3)
      end
      
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    else
      L3_2 = showSimpleDialog
      L4_2 = L3_1
      L4_2 = L4_2["Bundle Title"]
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
end

failedToBuyItem = L25_1

function L25_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = mainPlayer
  L4_2.canBuyBundle = false
  L4_2 = L6_1
  L4_2 = L4_2.hideAll
  L4_2()
  L4_2 = L23_1
  if L4_2 then
    L4_2 = L23_1
    L4_2 = L4_2.purchaseButton
    if L4_2 then
      L4_2 = L23_1
      L4_2 = L4_2.purchaseButton
      L5_2 = L4_2
      L4_2 = L4_2.setEnabled
      L6_2 = false
      L4_2(L5_2, L6_2)
      L4_2 = L23_1
      L4_2 = L4_2.purchaseButton
      L4_2.alpha = 0.5
    end
    L4_2 = L23_1
    L4_2 = L4_2.laterButton
    if L4_2 then
      L4_2 = L23_1
      L4_2 = L4_2.laterButton
      L5_2 = L4_2
      L4_2 = L4_2.setEnabled
      L6_2 = false
      L4_2(L5_2, L6_2)
      L4_2 = L23_1
      L4_2 = L4_2.laterButton
      L4_2.alpha = 0.5
    end
  end
  L4_2 = log3
  L5_2 = "\195\133\195\133\195\133\195\133 a bundle pack purchased and consumed."
  L4_2(L5_2)
  L4_2 = animateRewardsToHUD
  L5_2 = A3_2
  L4_2(L5_2)
  L4_2 = isAndroid
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = todNative
    L4_2 = L4_2.metrixSDK
    L5_2 = {}
    L5_2.operation = "NewEvent"
    L5_2.eventSlug = "fzmos"
    L4_2(L5_2)
  end
end

didPurchaseItemWithId = L25_1

function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.baseId
    if L8_2 then
      L8_2 = L7_1
      L8_2 = L8_2.baseCardWithId
      L9_2 = L7_2.baseId
      L8_2 = L8_2(L9_2)
    end
    if L8_2 then
      L9_2 = L8_2.isHero
      if not L9_2 then
        L9_2 = {}
        L10_2 = L16_1
        L9_2.backgroundWidth = L10_2
        L10_2 = L17_1
        L9_2.backgroundHeight = L10_2
        L9_2.type = A2_2
        L9_2.card = L7_2
        L10_2 = L8_2.name
        L9_2.text = L10_2
        L10_2 = L13_1
        L11_2 = L10_2
        L10_2 = L10_2.new
        L12_2 = L9_2
        L10_2 = L10_2(L11_2, L12_2)
        L10_2.alpha = 0
        L11_2 = L20_1
        L12_2 = L15_1
        L11_2[L12_2] = L10_2
        L11_2 = A0_2.view
        L12_2 = L11_2
        L11_2 = L11_2.insert
        L13_2 = L10_2.view
        L11_2(L12_2, L13_2)
        L11_2 = L19_1
        L10_2.xScale = L11_2
        L11_2 = L19_1
        L10_2.yScale = L11_2
        L11_2 = A0_2.contentGroup
        L11_2 = L11_2.x
        L12_2 = L19_1
        L13_2 = L10_2.width
        L12_2 = L12_2 * L13_2
        L12_2 = L12_2 / 2
        L11_2 = L11_2 - L12_2
        L10_2.x = L11_2
        L11_2 = A0_2.contentGroup
        L11_2 = L11_2.y
        L12_2 = A0_2.itemImage
        L12_2 = L12_2.height
        L12_2 = L12_2 * 7
        L12_2 = L12_2 / 9
        L11_2 = L11_2 - L12_2
        L12_2 = L18_1
        L13_2 = L10_2.height
        L12_2 = L12_2 * L13_2
        L12_2 = L12_2 / 2
        L11_2 = L11_2 - L12_2
        L11_2 = L11_2 + 10
        L10_2.y = L11_2
        L11_2 = L15_1
        L11_2 = L11_2 + 1
        L15_1 = L11_2
      end
    end
  end
end

createCards = L25_1

function L25_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L7_2 = type
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  if L7_2 == "number" then
    L7_2 = L2_1
    L7_2 = L7_2.shortenLongNumber
    L8_2 = A1_2
    L7_2 = L7_2(L8_2)
    L6_2 = L7_2
    L7_2 = L3_1
    L7_2 = L7_2.adjustNumber
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L6_2 = L7_2
  else
    L6_2 = A1_2
  end
  L7_2 = {}
  L8_2 = L16_1
  L7_2.backgroundWidth = L8_2
  L8_2 = L17_1
  L7_2.backgroundHeight = L8_2
  L7_2.type = A5_2
  L7_2.iconPath = A2_2
  L7_2.iconWidth = A3_2
  L7_2.iconHeight = A4_2
  L7_2.text = L6_2
  L8_2 = L13_1
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2)
  L8_2.alpha = 0
  L9_2 = L20_1
  L10_2 = L15_1
  L9_2[L10_2] = L8_2
  L9_2 = A0_2.view
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L8_2.view
  L9_2(L10_2, L11_2)
  L9_2 = L19_1
  L8_2.xScale = L9_2
  L9_2 = L19_1
  L8_2.yScale = L9_2
  L9_2 = A0_2.contentGroup
  L9_2 = L9_2.x
  L10_2 = L19_1
  L11_2 = L8_2.width
  L10_2 = L10_2 * L11_2
  L10_2 = L10_2 / 2
  L9_2 = L9_2 - L10_2
  L8_2.x = L9_2
  L9_2 = A0_2.contentGroup
  L9_2 = L9_2.y
  L10_2 = A0_2.itemImage
  L10_2 = L10_2.height
  L10_2 = L10_2 * 7
  L10_2 = L10_2 / 9
  L9_2 = L9_2 - L10_2
  L10_2 = L18_1
  L11_2 = L8_2.height
  L10_2 = L10_2 * L11_2
  L10_2 = L10_2 / 2
  L9_2 = L9_2 - L10_2
  L9_2 = L9_2 + 10
  L8_2.y = L9_2
  L9_2 = L15_1
  L9_2 = L9_2 + 1
  L15_1 = L9_2
end

createItems = L25_1

function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = require
  L4_2 = "Data.BaseShopItems"
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = L16_1
  L4_2.backgroundWidth = L5_2
  L5_2 = L17_1
  L4_2.backgroundHeight = L5_2
  L4_2.type = A1_2
  L5_2 = L3_2[A2_2]
  L5_2 = L5_2.image
  L6_2 = ".png"
  L5_2 = L5_2 .. L6_2
  L4_2.imagePath = L5_2
  L5_2 = tostring
  L6_2 = L3_2[A2_2]
  L6_2 = L6_2.multiplier
  L5_2 = L5_2(L6_2)
  L4_2.boostPercentage = L5_2
  L5_2 = L3_1
  L5_2 = L5_2["Boost Pack"]
  L4_2.text = L5_2
  L5_2 = L13_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L5_2.alpha = 0
  L6_2 = L20_1
  L7_2 = L15_1
  L6_2[L7_2] = L5_2
  L6_2 = A0_2.view
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L5_2.view
  L6_2(L7_2, L8_2)
  L6_2 = L19_1
  L5_2.xScale = L6_2
  L6_2 = L19_1
  L5_2.yScale = L6_2
  L6_2 = A0_2.contentGroup
  L6_2 = L6_2.x
  L7_2 = L19_1
  L8_2 = L5_2.width
  L7_2 = L7_2 * L8_2
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L5_2.x = L6_2
  L6_2 = A0_2.contentGroup
  L6_2 = L6_2.y
  L7_2 = A0_2.itemImage
  L7_2 = L7_2.height
  L7_2 = L7_2 * 7
  L7_2 = L7_2 / 9
  L6_2 = L6_2 - L7_2
  L7_2 = L18_1
  L8_2 = L5_2.height
  L7_2 = L7_2 * L8_2
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 + 10
  L5_2.y = L6_2
  L6_2 = L15_1
  L6_2 = L6_2 + 1
  L15_1 = L6_2
end

createBoost = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = 600
  if A1_2 == 1 then
    L3_2 = 1
    L18_1 = L3_2
  elseif A1_2 == 2 then
    L3_2 = 0.8
    L18_1 = L3_2
  else
    L3_2 = 0.5
    L18_1 = L3_2
  end
  L3_2 = pairs
  L4_2 = L20_1
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = findPosition
    L9_2 = A1_2
    L10_2 = L6_2
    L8_2, L9_2 = L8_2(L9_2, L10_2)
    L10_2 = transition
    L10_2 = L10_2.to
    L11_2 = L7_2
    L12_2 = {}
    L12_2.time = 200
    L13_2 = A0_2.contentGroup
    L13_2 = L13_2.y
    L14_2 = A0_2.itemImage
    L14_2 = L14_2.height
    L14_2 = L14_2 * 7
    L14_2 = L14_2 / 9
    L13_2 = L13_2 - L14_2
    L14_2 = L18_1
    L15_2 = A0_2.itemImage
    L15_2 = L15_2.height
    L14_2 = L14_2 * L15_2
    L14_2 = L14_2 / 2
    L13_2 = L13_2 - L14_2
    L12_2.y = L13_2
    L12_2.alpha = 1
    L12_2.xScale = 0.2
    L12_2.yScale = 0.2
    L10_2(L11_2, L12_2)
    L10_2 = transition
    L10_2 = L10_2.to
    L11_2 = L7_2
    L12_2 = {}
    L12_2.time = 900
    L13_2 = L2_2 * L6_2
    L12_2.delay = L13_2
    L12_2.x = L8_2
    L12_2.y = L9_2
    L13_2 = easing
    L13_2 = L13_2.outSine
    L12_2.transition = L13_2
    L10_2(L11_2, L12_2)
    L10_2 = transition
    L10_2 = L10_2.to
    L11_2 = L7_2
    L12_2 = {}
    L12_2.time = 300
    L13_2 = L2_2 * L6_2
    L13_2 = L13_2 + 600
    L12_2.delay = L13_2
    L13_2 = L18_1
    L12_2.xScale = L13_2
    L13_2 = L18_1
    L12_2.yScale = L13_2
    
    function L13_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = L6_2
      L1_3 = L15_1
      L1_3 = L1_3 - 1
      if L0_3 == L1_3 then
        L0_3 = transition
        L0_3 = L0_3.to
        L1_3 = A0_2
        L1_3 = L1_3.realPriceLabel
        L2_3 = {}
        L2_3.time = 200
        L2_3.alpha = 1
        
        function L3_3()
          local L0_4, L1_4, L2_4
          L0_4 = transition
          L0_4 = L0_4.to
          L1_4 = A0_2
          L1_4 = L1_4.redLine
          L2_4 = {}
          L2_4.time = 300
          L2_4.alpha = 1
          L0_4(L1_4, L2_4)
          L0_4 = transition
          L0_4 = L0_4.to
          L1_4 = A0_2
          L1_4 = L1_4.purchaseButton
          L2_4 = {}
          L2_4.delay = 250
          L2_4.time = 100
          L2_4.alpha = 1
          L0_4(L1_4, L2_4)
          L0_4 = transition
          L0_4 = L0_4.to
          L1_4 = A0_2
          L1_4 = L1_4.laterButton
          L2_4 = {}
          L2_4.delay = 350
          L2_4.time = 100
          L2_4.alpha = 1
          L0_4(L1_4, L2_4)
        end
        
        L2_3.onComplete = L3_3
        L0_3(L1_3, L2_3)
      end
    end
    
    L12_2.onComplete = L13_2
    L10_2(L11_2, L12_2)
  end
end

animateRewardsToThePlaceHolder = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L6_2 = log3
  L7_2 = "findPosition totalRewardNumber"
  L8_2 = A0_2
  L6_2(L7_2, L8_2)
  if A0_2 == 1 then
    L6_2 = display
    L6_2 = L6_2.contentWidth
    L6_2 = -L6_2
    L6_2 = L6_2 / 2
    L7_2 = L16_1
    L7_2 = L7_2 / 2
    L8_2 = L18_1
    L7_2 = L7_2 * L8_2
    L6_2 = L6_2 + L7_2
    L3_2 = L6_2 + 30
    L6_2 = log3
    L7_2 = "findPosition 1 item x"
    L8_2 = L3_2
    L6_2(L7_2, L8_2)
    L4_2 = 0
  elseif A0_2 == 2 then
    L6_2 = display
    L6_2 = L6_2.contentWidth
    L6_2 = -L6_2
    L6_2 = L6_2 / 2
    L7_2 = L16_1
    L7_2 = L7_2 / 2
    L8_2 = L18_1
    L7_2 = L7_2 * L8_2
    L6_2 = L6_2 + L7_2
    L6_2 = L6_2 + 30
    L7_2 = L16_1
    L8_2 = L18_1
    L7_2 = L7_2 * L8_2
    L7_2 = L7_2 + 20
    if A1_2 == 1 then
      L3_2 = L6_2
      L4_2 = 0
    elseif A1_2 == 2 then
      L3_2 = L6_2 + L7_2
      L4_2 = 0
    end
  elseif A0_2 == 3 then
    L6_2 = display
    L6_2 = L6_2.contentHeight
    L7_2 = L17_1
    L7_2 = A0_2 * L7_2
    L8_2 = L18_1
    L7_2 = L7_2 * L8_2
    L6_2 = L6_2 - L7_2
    L7_2 = A0_2 + 1
    L2_2 = L6_2 / L7_2
    L6_2 = display
    L6_2 = L6_2.contentWidth
    L6_2 = L6_2 / 2
    L7_2 = L16_1
    L8_2 = L18_1
    L7_2 = L7_2 * L8_2
    L6_2 = L6_2 - L7_2
    L5_2 = L6_2 / 2
    L6_2 = display
    L6_2 = L6_2.contentWidth
    L6_2 = -L6_2
    L6_2 = L6_2 / 2
    L7_2 = L16_1
    L7_2 = L7_2 / 2
    L8_2 = L18_1
    L7_2 = L7_2 * L8_2
    L6_2 = L6_2 + L7_2
    L3_2 = L6_2 + L5_2
    L6_2 = display
    L6_2 = L6_2.contentHeight
    L6_2 = -L6_2
    L6_2 = L6_2 / 2
    L7_2 = L17_1
    L7_2 = A1_2 * L7_2
    L7_2 = L7_2 / 2
    L8_2 = L18_1
    L7_2 = L7_2 * L8_2
    L6_2 = L6_2 + L7_2
    L7_2 = A1_2 * L2_2
    L6_2 = L6_2 + L7_2
    L7_2 = A1_2 - 1
    L8_2 = L17_1
    L8_2 = L8_2 / 2
    L7_2 = L7_2 * L8_2
    L8_2 = L18_1
    L7_2 = L7_2 * L8_2
    L4_2 = L6_2 + L7_2
  elseif A0_2 == 4 then
    L6_2 = display
    L6_2 = L6_2.contentHeight
    L7_2 = A0_2 / 2
    L8_2 = L17_1
    L7_2 = L7_2 * L8_2
    L8_2 = L18_1
    L7_2 = L7_2 * L8_2
    L6_2 = L6_2 - L7_2
    L7_2 = A0_2 - 1
    L2_2 = L6_2 / L7_2
    L6_2 = display
    L6_2 = L6_2.contentWidth
    L6_2 = L6_2 / 2
    L7_2 = L16_1
    L7_2 = L7_2 + 10
    L7_2 = 2 * L7_2
    L8_2 = L18_1
    L7_2 = L7_2 * L8_2
    L6_2 = L6_2 - L7_2
    L5_2 = L6_2 / 2
    L6_2 = display
    L6_2 = L6_2.contentWidth
    L6_2 = -L6_2
    L6_2 = L6_2 / 2
    L7_2 = L16_1
    L7_2 = L7_2 / 2
    L8_2 = L18_1
    L7_2 = L7_2 * L8_2
    L6_2 = L6_2 + L7_2
    L6_2 = L6_2 + L5_2
    L6_2 = L6_2 + 10
    L7_2 = L16_1
    L7_2 = L7_2 / 2
    L7_2 = 2 * L7_2
    L8_2 = L18_1
    L7_2 = L7_2 * L8_2
    L6_2 = L6_2 + L7_2
    L7_2 = display
    L7_2 = L7_2.contentWidth
    L7_2 = -L7_2
    L7_2 = L7_2 / 2
    L8_2 = L16_1
    L8_2 = L8_2 / 2
    L9_2 = L18_1
    L8_2 = L8_2 * L9_2
    L7_2 = L7_2 + L8_2
    L7_2 = L7_2 + L5_2
    L8_2 = display
    L8_2 = L8_2.contentHeight
    L8_2 = -L8_2
    L8_2 = L8_2 / 2
    L9_2 = L17_1
    L9_2 = L9_2 / 2
    L10_2 = L18_1
    L9_2 = L9_2 * L10_2
    L8_2 = L8_2 + L9_2
    L8_2 = L8_2 + L2_2
    L9_2 = display
    L9_2 = L9_2.contentHeight
    L9_2 = -L9_2
    L9_2 = L9_2 / 2
    L10_2 = L17_1
    L10_2 = 2 * L10_2
    L10_2 = L10_2 / 2
    L11_2 = L18_1
    L10_2 = L10_2 * L11_2
    L9_2 = L9_2 + L10_2
    L10_2 = 2 * L2_2
    L9_2 = L9_2 + L10_2
    L10_2 = L17_1
    L10_2 = L10_2 / 2
    L10_2 = 1 * L10_2
    L11_2 = L18_1
    L10_2 = L10_2 * L11_2
    L9_2 = L9_2 + L10_2
    if A1_2 == 1 then
      L3_2 = L7_2
      L4_2 = L8_2
    elseif A1_2 == 2 then
      L3_2 = L6_2
      L4_2 = L8_2
    elseif A1_2 == 3 then
      L3_2 = L7_2
      L4_2 = L9_2
    elseif A1_2 == 4 then
      L3_2 = L6_2
      L4_2 = L9_2
    end
  elseif A0_2 == 5 then
    L6_2 = display
    L6_2 = L6_2.contentHeight
    L7_2 = L17_1
    L7_2 = 2 * L7_2
    L8_2 = L18_1
    L7_2 = L7_2 * L8_2
    L6_2 = L6_2 - L7_2
    L2_2 = L6_2 / 3
    L6_2 = display
    L6_2 = L6_2.contentWidth
    L6_2 = L6_2 / 2
    L7_2 = L16_1
    L7_2 = L7_2 + 10
    L7_2 = 3 * L7_2
    L8_2 = L18_1
    L7_2 = L7_2 * L8_2
    L6_2 = L6_2 - L7_2
    L5_2 = L6_2 / 2
    L6_2 = display
    L6_2 = L6_2.contentWidth
    L6_2 = -L6_2
    L6_2 = L6_2 / 2
    L7_2 = L16_1
    L7_2 = L7_2 / 2
    L8_2 = L18_1
    L7_2 = L7_2 * L8_2
    L6_2 = L6_2 + L7_2
    L6_2 = L6_2 + L5_2
    L6_2 = L6_2 + 10
    L7_2 = L16_1
    L7_2 = L7_2 / 2
    L7_2 = 2 * L7_2
    L8_2 = L18_1
    L7_2 = L7_2 * L8_2
    L6_2 = L6_2 + L7_2
    L6_2 = L6_2 + 10
    L7_2 = L16_1
    L7_2 = L7_2 / 2
    L6_2 = L6_2 + L7_2
    L7_2 = display
    L7_2 = L7_2.contentWidth
    L7_2 = -L7_2
    L7_2 = L7_2 / 2
    L8_2 = L16_1
    L8_2 = L8_2 / 2
    L9_2 = L18_1
    L8_2 = L8_2 * L9_2
    L7_2 = L7_2 + L8_2
    L7_2 = L7_2 + L5_2
    L8_2 = display
    L8_2 = L8_2.contentHeight
    L8_2 = -L8_2
    L8_2 = L8_2 / 2
    L9_2 = L17_1
    L9_2 = L9_2 / 2
    L10_2 = L18_1
    L9_2 = L9_2 * L10_2
    L8_2 = L8_2 + L9_2
    L8_2 = L8_2 + L2_2
    L9_2 = display
    L9_2 = L9_2.contentHeight
    L9_2 = -L9_2
    L9_2 = L9_2 / 2
    L10_2 = L17_1
    L10_2 = 2 * L10_2
    L10_2 = L10_2 / 2
    L11_2 = L18_1
    L10_2 = L10_2 * L11_2
    L9_2 = L9_2 + L10_2
    L10_2 = 2 * L2_2
    L9_2 = L9_2 + L10_2
    L10_2 = L17_1
    L10_2 = L10_2 / 2
    L10_2 = 1 * L10_2
    L11_2 = L18_1
    L10_2 = L10_2 * L11_2
    L9_2 = L9_2 + L10_2
    L10_2 = L7_2 + 10
    L11_2 = L16_1
    L11_2 = L11_2 / 2
    L10_2 = L10_2 + L11_2
    L11_2 = 0
    if A1_2 == 1 then
      L3_2 = L7_2
      L4_2 = L8_2
    elseif A1_2 == 2 then
      L3_2 = L6_2
      L4_2 = L8_2
    elseif A1_2 == 3 then
      L3_2 = L7_2
      L4_2 = L9_2
    elseif A1_2 == 4 then
      L3_2 = L6_2
      L4_2 = L9_2
    elseif A1_2 == 5 then
      L3_2 = L10_2
      L4_2 = L11_2
    end
  end
  L6_2 = L3_2
  L7_2 = L4_2
  return L6_2, L7_2
end

findPosition = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = 0.2
  L2_2 = 600
  L3_2 = nil
  L4_2 = pairs
  L5_2 = L20_1
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = transition
    L9_2 = L9_2.to
    L10_2 = L8_2
    L11_2 = {}
    L11_2.time = 900
    L12_2 = L2_2 * L7_2
    L11_2.delay = L12_2
    L12_2 = display
    L12_2 = L12_2.contentWidth
    L12_2 = -L12_2
    L12_2 = L12_2 / 2
    L13_2 = L16_1
    L13_2 = L13_2 / 2
    L13_2 = L13_2 * 0.5
    L12_2 = L12_2 + L13_2
    L12_2 = L12_2 + 10
    L11_2.x = L12_2
    L12_2 = display
    L12_2 = L12_2.contentHeight
    L12_2 = -L12_2
    L12_2 = L12_2 / 2
    L13_2 = L16_1
    L13_2 = L13_2 / 2
    L13_2 = L13_2 * 0.5
    L12_2 = L12_2 + L13_2
    L12_2 = L12_2 + 10
    L11_2.y = L12_2
    L12_2 = easing
    L12_2 = L12_2.outSine
    L11_2.transition = L12_2
    L9_2(L10_2, L11_2)
    L9_2 = transition
    L9_2 = L9_2.to
    L10_2 = L8_2
    L11_2 = {}
    L11_2.time = 300
    L12_2 = L2_2 * L7_2
    L12_2 = L12_2 + 600
    L11_2.delay = L12_2
    L11_2.xScale = L1_2
    L11_2.yScale = L1_2
    L11_2.alpha = 0
    
    function L12_2()
      local L0_3, L1_3, L2_3
      L0_3 = L7_2
      L1_3 = L20_1
      L1_3 = #L1_3
      L1_3 = L1_3 - 1
      if L0_3 == L1_3 then
        L0_3 = L3_2
        if L0_3 then
          goto lbl_18
        end
      end
      L0_3 = L7_2
      L1_3 = L20_1
      L1_3 = #L1_3
      if L0_3 == L1_3 then
        L0_3 = L3_2
        if L0_3 then
          ::lbl_18::
          L0_3 = A0_2
          if L0_3 then
            L0_3 = showCardPackAnimation
            L1_3 = A0_2
            L0_3(L1_3)
          else
            L0_3 = announcePurchaseDone
            L0_3()
          end
      end
      else
        L0_3 = L7_2
        L1_3 = L20_1
        L1_3 = #L1_3
        if L0_3 == L1_3 then
          L0_3 = L23_1
          if L0_3 ~= nil then
            L0_3 = L23_1
            L1_3 = L0_3
            L0_3 = L0_3.removeView
            L2_3 = false
            L0_3(L1_3, L2_3)
          end
          L0_3 = announcePurchaseDone
          L0_3()
        end
      end
    end
    
    L11_2.onComplete = L12_2
    L9_2(L10_2, L11_2)
  end
end

animateRewardsToHUD = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L23_1
  if L1_2 ~= nil then
    L1_2 = L23_1
    L2_2 = L1_2
    L1_2 = L1_2.removeView
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = require
  L2_2 = "Data.BaseShopItems"
  L1_2 = L1_2(L2_2)
  L2_2 = mainPlayer
  L2_2 = L2_2.bundles
  L3_2 = L22_1
  L3_2 = L3_2.id
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.cardsInfo
  L2_2 = L2_2.cardPackId
  if L2_2 == 5 then
    L3_2 = 1
    L4_2 = {}
    L5_2 = pairs
    L6_2 = A0_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L4_2[L3_2] = L9_2
      L3_2 = L3_2 + 1
    end
    L5_2 = L9_1
    L5_2 = L5_2.gotoScene
    L6_2 = "Scenes.ReceivedScene"
    L7_2 = {}
    L8_2 = {}
    L8_2.type = "cards"
    L8_2.items = L4_2
    L9_2 = L1_2[L2_2]
    L8_2.shopItem = L9_2
    L9_2 = announcePurchaseDone
    L8_2.callbackFunction = L9_2
    L8_2.isBundle = true
    L7_2.params = L8_2
    L5_2(L6_2, L7_2)
  else
    L3_2 = L9_1
    L3_2 = L3_2.gotoScene
    L4_2 = "Scenes.ShopAnimationScene"
    L5_2 = {}
    L6_2 = {}
    L6_2.type = "cards"
    L6_2.items = A0_2
    L7_2 = L1_2[L2_2]
    L6_2.shopItem = L7_2
    L7_2 = announcePurchaseDone
    L6_2.callbackFunction = L7_2
    L6_2.isBundle = true
    L5_2.params = L6_2
    L3_2(L4_2, L5_2)
  end
end

showCardPackAnimation = L25_1

function L25_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = showSimpleDialog
  L1_2 = L3_1
  L2_2 = "bundle_title_"
  L3_2 = tostring
  L4_2 = L22_1
  L4_2 = L4_2.id
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2[L2_2]
  L2_2 = L3_1
  L2_2 = L2_2["Bundle Success Purchased"]
  L3_2 = nil
  
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = mainPlayer
    L0_3 = L0_3.settings
    L0_3 = L0_3.bgMusicEnabled
    if L0_3 ~= nil then
      L0_3 = mainPlayer
      L0_3 = L0_3.settings
      L0_3 = L0_3.bgMusicEnabled
      if L0_3 ~= true then
        goto lbl_15
      end
    end
    L0_3 = audio
    L0_3 = L0_3.play
    L1_3 = L8_1
    L0_3(L1_3)
    ::lbl_15::
    L0_3 = L9_1
    L0_3 = L0_3.getScene
    L1_3 = "Scenes.Home"
    L0_3 = L0_3(L1_3)
    L1_3 = mainPlayer
    L1_3 = L1_3.activeBundleId
    L2_3 = L22_1
    L2_3 = L2_3.id
    if L1_3 == L2_3 and L0_3 then
      L1_3 = L0_3.bundleButton
      if L1_3 then
        L1_3 = L0_3.bundleButton
        L2_3 = L1_3
        L1_3 = L1_3.removeBundleButton
        L1_3(L2_3)
      end
    end
    L2_3 = L0_3
    L1_3 = L0_3.updateGold
    L3_3 = true
    L1_3(L2_3, L3_3)
    L1_3 = mainPlayer
    L1_3 = L1_3.bundles
    L2_3 = L22_1
    L2_3 = L2_3.id
    L1_3[L2_3] = nil
    L1_3 = false
    L2_3 = pairs
    L3_3 = mainPlayer
    L3_3 = L3_3.bundles
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      if L6_3 then
        L7_3 = L6_3.show_on_home
        if L7_3 then
          L7_3 = mainPlayer
          L7_3.activeBundleId = L5_3
          L1_3 = true
          break
        end
      end
    end
    if not L1_3 then
      L2_3 = mainPlayer
      L2_3.activeBundleId = nil
    end
    L3_3 = L0_3
    L2_3 = L0_3.updateUI
    L2_3(L3_3)
    L2_3 = L9_1
    L2_3 = L2_3.getScene
    L3_3 = "Scenes.Shop"
    L2_3 = L2_3(L3_3)
    if L2_3 then
      L3_3 = L2_3.goldShop
      if L3_3 then
        L3_3 = L2_3.goldShop
        L4_3 = L3_3
        L3_3 = L3_3.refreshBundles
        L3_3(L4_3)
        L3_3 = log3
        L4_3 = "bundle: 9"
        L3_3(L4_3)
      end
    end
  end
  
  L0_2(L1_2, L2_2, L3_2, L4_2)
end

announcePurchaseDone = L25_1
