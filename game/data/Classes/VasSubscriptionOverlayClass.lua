local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Language"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "widget"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Utils.Analytics"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Components.TDButtonView"
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
L8_1 = "composer"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Models.Player"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "json"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Core.ParentStandardBaseOverlayClass"
L10_1 = L10_1(L11_1)
L11_1 = setmetatable
L12_1 = _M
L13_1 = L10_1
L11_1(L12_1, L13_1)
L11_1 = _M
L12_1 = _M
L11_1.__index = L12_1
L11_1 = _M
L12_1 = nil

function L13_1(A0_2)
  local L1_2
  L1_2 = L6_1
  L1_2 = L1_2.hideAll
  L1_2()
end

successToBuyItem = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L6_1
  L1_2 = L1_2.hideAll
  L1_2()
  L1_2 = L7_1
  L1_2 = L1_2.hideOverlay
  L1_2()
  if A0_2 == "Network error" then
    L1_2 = showSimpleDialog
    L2_2 = L0_1
    L2_2 = L2_2["Vas Subscription"]
    L3_2 = A0_2
    L4_2 = "Reload"
    
    function L5_2()
      local L0_3, L1_3, L2_3
      L0_3 = L7_1
      L0_3 = L0_3.gotoScene
      L1_3 = "Scenes.Loading"
      L0_3(L1_3)
      L0_3 = L8_1
      L1_3 = L7_1
      L1_3 = L1_3.getScene
      L2_3 = "Scenes.Loading"
      L1_3 = L1_3(L2_3)
      L0_3.delegate = L1_3
      L0_3 = L8_1
      L0_3 = L0_3.loadPlayer
      L0_3()
    end
    
    L1_2(L2_2, L3_2, L4_2, L5_2)
  elseif A0_2 ~= nil then
    if A0_2 == "Market Issue" then
      L1_2 = showSimpleDialog
      L2_2 = L0_1
      L2_2 = L2_2["Vas Subscription"]
      L3_2 = L0_1
      L3_2 = L3_2.localizedString
      L4_2 = "Please Install"
      L5_2 = {}
      L6_2 = L0_1
      L7_2 = _storeType
      L6_2 = L6_2[L7_2]
      L5_2.market = L6_2
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = "Cancel"
      L5_2 = nil
      L6_2 = "Continue"
      
      function L7_2()
        local L0_3, L1_3
        L0_3 = system
        L0_3 = L0_3.openURL
        L1_3 = Constants
        L1_3 = L1_3.marketURL
        L1_3 = L1_3()
        L0_3(L1_3)
      end
      
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
    else
      L1_2 = showSimpleDialog
      L2_2 = L0_1
      L2_2 = L2_2["Vas Subscription"]
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
    end
  end
end

failedToBuyItem = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L6_1
  L2_2 = L2_2.hideAll
  L2_2()
  L2_2 = L7_1
  L2_2 = L2_2.hideOverlay
  L2_2()
  L2_2 = mainPlayer
  L2_2.mobileNumberVerified = true
  L2_2 = mainPlayer
  L2_2.isSubscribedToCharkhoneh = true
  L2_2 = showSimpleDialog
  L3_2 = L0_1
  L3_2 = L3_2["Vas Subscription"]
  L4_2 = L0_1
  L4_2 = L4_2["Vas Subscribed Successfully"]
  L2_2(L3_2, L4_2)
end

didPurchaseItemWithId = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 then
    function L1_2(A0_3)
      local L1_3, L2_3
      
      L1_3 = L6_1
      L1_3 = L1_3.hide
      L1_3()
      L1_3 = network
      L1_3 = L1_3.parseResposeHeader
      L2_3 = A0_3.responseHeaders
      L1_3(L2_3)
      if A0_3 then
        L1_3 = L9_1
        L1_3 = L1_3.decode
        L2_3 = A0_3.response
        L1_3 = L1_3(L2_3)
        if L1_3 then
          L2_3 = L1_3.status
          if L2_3 == true then
            L2_3 = mainPlayer
            L2_3.isSubscribedToCharkhoneh = true
            L2_3 = L7_1
            L2_3 = L2_3.hideOverlay
            L2_3()
          end
        end
      end
    end
    
    function L2_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = L6_1
      L1_3 = L1_3.hide
      L1_3()
      L1_3 = showSimpleDialog
      L2_3 = L0_1
      L2_3 = L2_3["Vas Subscription"]
      L3_3 = error
      L1_3(L2_3, L3_3)
    end
    
    L3_2 = L9_1
    L3_2 = L3_2.decode
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = L6_1
    L4_2 = L4_2.show
    L4_2()
    L4_2 = SKComponent
    L4_2 = L4_2.verifySubscription
    L5_2 = L3_2.recipt
    L6_2 = L3_2.purchaseToken
    L7_2 = L1_2
    L8_2 = L2_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  else
  end
end

function L14_1()
  local L0_2, L1_2, L2_2
  L1_2 = system
  L1_2 = L1_2.getInfo
  L2_2 = "build"
  L1_2 = L1_2(L2_2)
  if "2013.1137" < L1_2 then
    L1_2 = system
    L1_2 = L1_2.getInfo
    L2_2 = "platformName"
    L1_2 = L1_2(L2_2)
    if L1_2 ~= "Android" then
      L1_2 = L0_1
      L1_2 = L1_2.lang
      if L1_2 == "fa" then
        goto lbl_21
      end
    end
  end
  L1_2 = L0_1
  L1_2 = L1_2.lang
  if L1_2 == "ar" then
    ::lbl_21::
    L0_2 = "right"
  else
    L0_2 = "left"
  end
  return L0_2
end

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = L10_1
  L2_2 = L2_2.create
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = successToBuyItem
  A0_2.successToBuyItem = L2_2
  L2_2 = failedToBuyItem
  A0_2.failedToBuyItem = L2_2
  L2_2 = didPurchaseItemWithId
  A0_2.didPurchaseItemWithId = L2_2
  L2_2 = L4_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = successToBuyItem
  L5_2 = failedToBuyItem
  L6_2 = A0_2
  L7_2 = L5_1
  L7_2 = L7_2[38]
  L8_2 = nil
  L9_2 = nil
  L10_2 = nil
  L11_2 = L13_1
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L12_1 = L2_2
  L2_2 = display
  L2_2 = L2_2.newRoundedRect
  L3_2 = A0_2.contentGroup
  L4_2 = 0
  L5_2 = 0
  L6_2 = 280
  L7_2 = 160
  L8_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.strokeWidth = 2
  L4_2 = L2_2
  L3_2 = L2_2.setStrokeColor
  L5_2 = Constants
  L5_2 = L5_2.greenColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2 = L2_2
  L3_2 = L2_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.whiteColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L2_2.x = 0
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A0_2.contentGroup
  L5_2 = "\216\172\216\185\216\168\217\135 \216\180\216\167\217\134\216\179"
  L6_2 = 0
  L7_2 = 0
  L8_2 = Theme
  L8_2 = L8_2.overlayFontTitleFont
  L9_2 = Theme
  L9_2 = L9_2.overlayFontTitleSize
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = Constants
  L6_2 = L6_2.darkBlueColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2 = L2_2.x
  L3_2.x = L4_2
  L4_2 = L2_2.height
  L4_2 = -L4_2
  L4_2 = L4_2 / 2
  L4_2 = L4_2 + 15
  L5_2 = L3_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L3_2.y = L4_2
  L4_2 = L3_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.width = 30
  L6_2.height = 30
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "BattleItems/close.png"
  L7_2 = L7_2 .. L8_2
  L6_2.imageName = L7_2
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = L11_1
    L0_3 = L0_3.hideWithAnimation
    L1_3 = A0_2
    L0_3(L1_3)
  end
  
  L6_2.onRelease = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2.contentGroup
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L4_2.view
  L5_2(L6_2, L7_2)
  L5_2 = L2_2.width
  L5_2 = -L5_2
  L5_2 = L5_2 / 2
  L5_2 = L5_2 + 10
  L6_2 = L4_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L4_2.x = L5_2
  L5_2 = L3_2.y
  L4_2.y = L5_2
  L5_2 = display
  L5_2 = L5_2.newRoundedRect
  L6_2 = A0_2.contentGroup
  L7_2 = 0
  L8_2 = 0
  L9_2 = L2_2.width
  L9_2 = L9_2 - 20
  L10_2 = L2_2.height
  L10_2 = L10_2 - 60
  L11_2 = 3
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = L5_2
  L6_2 = L5_2.setFillColor
  L8_2 = Theme
  L8_2 = L8_2.overlayContentBG
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = L5_2
  L6_2 = L5_2.setStrokeColor
  L8_2 = Theme
  L8_2 = L8_2.overlayStrokeContentBG
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2.strokeWidth = 1
  L6_2 = L2_2.x
  L5_2.x = L6_2
  L6_2 = L2_2.y
  L6_2 = L6_2 + 20
  L5_2.y = L6_2
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = A0_2.contentGroup
  L8_2 = Constants
  L8_2 = L8_2.Path_Assets
  L9_2 = "General/FruitcraftLogo.png"
  L8_2 = L8_2 .. L9_2
  L9_2 = 46
  L10_2 = 46
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L5_2.width
  L7_2 = L7_2 / 2
  L8_2 = L6_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 - L8_2
  L7_2 = L7_2 - 10
  L6_2.x = L7_2
  L7_2 = L2_2.height
  L7_2 = -L7_2
  L7_2 = L7_2 / 2
  L8_2 = L6_2.height
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L7_2 = L7_2 + 20
  L7_2 = L7_2 + 40
  L6_2.y = L7_2
  L7_2 = {}
  L8_2 = A0_2.contentGroup
  L7_2.parent = L8_2
  L7_2.text = "\216\168\216\167 \216\185\216\182\217\136\219\140\216\170 \217\136\219\140\218\152\217\135\216\140 \217\133\219\140\216\170\217\136\217\134\219\140 \217\135\216\177 \216\177\217\136\216\178 \216\172\216\185\216\168\217\135 \216\180\216\167\217\134\216\179 \216\177\217\136 \216\168\216\167\216\178 \218\169\217\134\219\140 \217\136 \216\172\216\167\219\140\216\178\217\135 \216\168\216\168\216\177\219\140."
  L7_2.x = 0
  L8_2 = L6_2.y
  L7_2.y = L8_2
  L8_2 = L5_2.width
  L8_2 = L8_2 - 20
  L9_2 = L6_2.width
  L8_2 = L8_2 - L9_2
  L8_2 = L8_2 - 5
  L7_2.width = L8_2
  L8_2 = Theme
  L8_2 = L8_2.overlayFont
  L7_2.font = L8_2
  L8_2 = Theme
  L8_2 = L8_2.overlayFontContentSize
  L7_2.fontSize = L8_2
  L8_2 = L14_1
  L8_2 = L8_2()
  L7_2.align = L8_2
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  L9_2 = L6_2.x
  L10_2 = L6_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 - L10_2
  L9_2 = L9_2 - 10
  L10_2 = L8_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 - L10_2
  L8_2.x = L9_2
  L10_2 = L8_2
  L9_2 = L8_2.setFillColor
  L11_2 = Constants
  L11_2 = L11_2.darkBlueColor
  L11_2, L12_2, L13_2 = L11_2()
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L9_2 = L3_1
  L10_2 = L9_2
  L9_2 = L9_2.new
  L11_2 = {}
  L11_2.width = 85
  L11_2.height = 25
  L11_2.label = "\216\185\216\182\217\136\219\140\216\170 \217\136\219\140\218\152\217\135"
  L12_2 = Constants
  L12_2 = L12_2.Path_Assets
  L13_2 = "Buttons/FC-Select-Deck6.png"
  L12_2 = L12_2 .. L13_2
  L11_2.defaultFile = L12_2
  L12_2 = Constants
  L12_2 = L12_2.Path_Assets
  L13_2 = "Buttons/FC-gui-select.png"
  L12_2 = L12_2 .. L13_2
  L11_2.overFile = L12_2
  
  function L12_2()
    local L0_3, L1_3
    L0_3 = L12_1
    L0_3 = L0_3.action
    L0_3()
  end
  
  L11_2.onRelease = L12_2
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = A0_2.contentGroup
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = L9_2.view
  L10_2(L11_2, L12_2)
  L10_2 = L2_2.x
  L9_2.x = L10_2
  L10_2 = L6_2.y
  L11_2 = L6_2.height
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L11_2 = L9_2.height
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L10_2 = L10_2 + 13
  L9_2.y = L10_2
end

create = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L10_1
  L4_2 = L4_2.show
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "did" then
    L4_2 = "hideOverlay"
    _backActition = L4_2
    L4_2 = L2_1
    L4_2 = L4_2.logEvent
    L5_2 = "Vas Subscription Shown"
    L4_2(L5_2)
  end
end

show = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.phase
  L3_2 = L10_1
  L3_2 = L3_2.hide
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end

hide = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L10_1
  L3_2 = L2_2
  L2_2 = L2_2.destroy
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = display
  L2_2 = L2_2.remove
  L3_2 = A0_2.scroller
  L2_2(L3_2)
  A0_2.scroller = nil
  L2_2 = display
  L3_2 = L2_2
  L2_2 = L2_2.remove
  L4_2 = A0_2.internalContentGroup
  L2_2(L3_2, L4_2)
  A0_2.internalContentGroup = nil
end

destroy = L15_1
