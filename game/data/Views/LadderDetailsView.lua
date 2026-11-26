local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1
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
L8_1 = require
L9_1 = "Models.UserCard"
L8_1 = L8_1(L9_1)
L9_1 = audio
L9_1 = L9_1.loadSound
L10_1 = Constants
L10_1 = L10_1.Path_Assets
L11_1 = "Audio/FC-buyGold.wav"
L10_1 = L10_1 .. L11_1
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "composer"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Models.Player"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Views.EffectsManager"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Utils.Analytics"
L13_1 = L13_1(L14_1)
L14_1 = require
L15_1 = "Views.BundleItemView"
L14_1 = L14_1(L15_1)
L15_1 = require
L16_1 = "widget"
L15_1 = L15_1(L16_1)
L16_1 = require
L17_1 = "Views.LadderItemView"
L16_1 = L16_1(L17_1)
L17_1 = require
L18_1 = "Utils.SKComponents"
L17_1 = L17_1(L18_1)
L18_1 = require
L19_1 = "plugin.gameanalytics_v2"
L18_1 = L18_1(L19_1)
L19_1 = setmetatable
L20_1 = _M
L21_1 = {}
L21_1.__index = L0_1
L19_1(L20_1, L21_1)
L19_1 = nil
L20_1 = true

function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = assert
  L4_2 = A1_2.itemImage
  L4_2 = L4_2 ~= nil
  L5_2 = "image of item needs to be provided in the ladder view params"
  L3_2(L4_2, L5_2)
  L3_2 = assert
  L4_2 = A1_2.ladderInfo
  L4_2 = L4_2 ~= nil
  L5_2 = "ladder info table needs to be provided in the ladder view params"
  L3_2(L4_2, L5_2)
  L3_2 = L0_1
  L3_2 = L3_2.newWithParams
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = print
  L5_2 = "LadderDetailsView: ladderInfo = "
  L4_2(L5_2)
  L4_2 = pairs
  L5_2 = A1_2.ladderInfo
  L5_2 = L5_2.data
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = print
    L10_2 = "  "
    L11_2 = L7_2
    L12_2 = L8_2
    L9_2(L10_2, L11_2, L12_2)
  end
  L4_2 = A1_2.ladderInfo
  L4_2 = L4_2.finishTime
  L3_2.finishTime = L4_2
  L4_2 = A1_2.ladderInfo
  L4_2 = L4_2.startTime
  L3_2.startTime = L4_2
  L4_2 = A1_2.ladderInfo
  L4_2 = L4_2.minLevel
  L3_2.minLevel = L4_2
  L4_2 = A1_2.ladderInfo
  L4_2 = L4_2.maxLevel
  L3_2.maxLevel = L4_2
  L4_2 = A1_2.ladderInfo
  L4_2 = L4_2.step
  L3_2.step = L4_2
  L4_2 = A1_2.ladderInfo
  L4_2 = L4_2.data
  if not L4_2 then
    L4_2 = {}
  end
  L3_2.ladderData = L4_2
  L4_2 = {}
  L3_2.items = L4_2
  L4_2 = {}
  L3_2.itemsView = L4_2
  
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.removeView
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = L10_1
    L0_3 = L0_3.getScene
    L1_3 = "Scenes.Home"
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L1_3 = L0_3.bundleButton
      if L1_3 then
        L1_3 = L0_3.bundleButton
        L1_3 = L1_3.update
        if L1_3 then
          L1_3 = L0_3.bundleButton
          L2_3 = L1_3
          L1_3 = L1_3.update
          L1_3(L2_3)
        end
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
  L3_2.leftContainer = L5_2
  L5_2 = L3_2.view
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L3_2.leftContainer
  L5_2(L6_2, L7_2)
  L5_2 = L3_2.leftContainer
  L5_2.x = -120
  L5_2 = L3_2.leftContainer
  L5_2.y = 0
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  L3_2.rightContainer = L5_2
  L5_2 = L3_2.view
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L3_2.rightContainer
  L5_2(L6_2, L7_2)
  L5_2 = L3_2.rightContainer
  L5_2.x = 150
  L5_2 = L3_2.rightContainer
  L5_2.y = 0
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  L3_2.timerGroup = L5_2
  L5_2 = L3_2.rightContainer
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L3_2.timerGroup
  L5_2(L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = L3_2.rightContainer
  L7_2 = A1_2.itemImage
  L8_2 = A1_2.imageWidth
  L9_2 = A1_2.imageHeight
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L3_2.itemImage = L5_2
  L5_2 = L3_2.itemImage
  L5_2.x = 0
  L5_2 = L3_2.itemImage
  L5_2.y = -30
  L5_2 = L3_2.itemImage
  L6_2 = L5_2
  L5_2 = L5_2.addEventListener
  L7_2 = "touch"
  
  function L8_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L3_2.rightContainer
  L7_2 = L3_1
  L7_2 = L7_2["Ladder Title"]
  L8_2 = 0
  L9_2 = 0
  L10_2 = Constants
  L10_2 = L10_2.fontForTitle
  L10_2 = L10_2()
  L11_2 = 17
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2.title = L5_2
  L5_2 = L3_2.title
  L6_2 = L3_2.itemImage
  L6_2 = L6_2.y
  L7_2 = L3_2.itemImage
  L7_2 = L7_2.height
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L6_2 = L6_2 + 10
  L7_2 = L3_2.title
  L7_2 = L7_2.height
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L5_2.y = L6_2
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L3_2.timerGroup
  L7_2 = " "
  L8_2 = 0
  L9_2 = 0
  L10_2 = Constants
  L10_2 = L10_2.fontForSubtitle
  L10_2 = L10_2()
  L11_2 = 15
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2.timeString = L5_2
  L5_2 = L3_2.timerGroup
  L5_2.x = 0
  L5_2 = L3_2.timerGroup
  L6_2 = L3_2.title
  L6_2 = L6_2.y
  L7_2 = L3_2.title
  L7_2 = L7_2.height
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L6_2 = L6_2 + 10
  L7_2 = L3_2.timerGroup
  L7_2 = L7_2.height
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L5_2.y = L6_2
  L6_2 = L3_2
  L5_2 = L3_2.createLadderScrollView
  L5_2(L6_2)
  L6_2 = L3_2
  L5_2 = L3_2.generateLadderItems
  L5_2(L6_2)
  L5_2 = 1
  L6_2 = mainPlayer
  L6_2 = L6_2.ladder
  if L6_2 then
    L6_2 = mainPlayer
    L6_2 = L6_2.ladder
    L6_2 = L6_2.step
    if L6_2 then
      L6_2 = mainPlayer
      L6_2 = L6_2.ladder
      L6_2 = L6_2.step
      L5_2 = L6_2 + 1
    end
  end
  L7_2 = L3_2
  L6_2 = L3_2.scrollTo
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  
  function L6_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L4_2
      L1_3()
    end
    L1_3 = true
    return L1_3
  end
  
  L7_2 = L3_2.dimBackground
  L8_2 = L7_2
  L7_2 = L7_2.addEventListener
  L9_2 = "tap"
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = L3_2.dimBackground
  L8_2 = L7_2
  L7_2 = L7_2.addEventListener
  L9_2 = "touch"
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = Runtime
  L8_2 = L7_2
  L7_2 = L7_2.addEventListener
  L9_2 = "click"
  L10_2 = L3_2
  L7_2(L8_2, L9_2, L10_2)
  L19_1 = L3_2
  return L3_2
end

new = L21_1

function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = A0_2.ladderData
  L2_2 = #L2_2
  L2_2 = L2_2 * 110
  L2_2 = L2_2 + 20
  L3_2 = 300
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L15_1
  L2_2 = L2_2.newScrollView
  L3_2 = {}
  L3_2.width = 360
  L3_2.height = 180
  L3_2.x = 30
  L3_2.y = 0
  L3_2.scrollWidth = L1_2
  L3_2.scrollHeight = 180
  L3_2.rightPadding = 20
  L3_2.verticalScrollDisabled = true
  L3_2.horizontalScrollDisabled = true
  L3_2.hideScrollBar = true
  L4_2 = {}
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  L3_2.backgroundColor = L4_2
  L2_2 = L2_2(L3_2)
  A0_2.scroller = L2_2
  L2_2 = A0_2.leftContainer
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = A0_2.scroller
  L2_2(L3_2, L4_2)
end

createLadderScrollView = L21_1

function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = ipairs
  L2_2 = A0_2.ladderData
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.createLadderItemFromData
    L8_2 = L5_2
    L9_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2.items
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      L7_2 = L16_1
      L8_2 = L7_2
      L7_2 = L7_2.new
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = A0_2.itemsView
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
        L9_2 = L7_2
        L8_2 = L7_2.setPosition
        L10_2 = L4_2 - 1
        L10_2 = L10_2 * 110
        L10_2 = 10 + L10_2
        L11_2 = 10
        L8_2(L9_2, L10_2, L11_2)
        L9_2 = L7_2
        L8_2 = L7_2.setEnabled
        L10_2 = L6_2.enabled
        L8_2(L9_2, L10_2)
        L8_2 = A0_2.scroller
        L9_2 = L8_2
        L8_2 = L8_2.insert
        L10_2 = L7_2.group
        L8_2(L9_2, L10_2)
      else
        L8_2 = table
        L8_2 = L8_2.remove
        L9_2 = A0_2.items
        L10_2 = A0_2.items
        L10_2 = #L10_2
        L8_2(L9_2, L10_2)
      end
    end
  end
end

generateLadderItems = L21_1

function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2.scroller
  if L2_2 then
    L2_2 = A0_2.itemsView
    if L2_2 then
      L2_2 = A0_2.itemsView
      L2_2 = #L2_2
      if L2_2 ~= 0 then
        goto lbl_12
      end
    end
  end
  do return end
  ::lbl_12::
  if not (A1_2 < 1) then
    L2_2 = A0_2.itemsView
    L2_2 = #L2_2
    if not (A1_2 > L2_2) then
      goto lbl_19
    end
  end
  do return end
  ::lbl_19::
  L2_2 = A1_2 - 1
  L2_2 = L2_2 * 110
  L2_2 = 10 + L2_2
  L3_2 = L2_2
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = A0_2.itemsView
  L5_2 = #L5_2
  L5_2 = L5_2 * 110
  L5_2 = L5_2 + 20
  L6_2 = 300
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = 360
  L6_2 = math
  L6_2 = L6_2.max
  L7_2 = 0
  L8_2 = L4_2 - L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = math
  L7_2 = L7_2.max
  L8_2 = 0
  L9_2 = math
  L9_2 = L9_2.min
  L10_2 = L3_2
  L11_2 = L6_2
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L3_2 = L7_2
  L7_2 = timer
  L7_2 = L7_2.performWithDelay
  L8_2 = 100
  
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L0_3 = L0_3.scroller
    if L0_3 then
      L0_3 = A0_2
      L0_3 = L0_3.scroller
      L0_3 = L0_3.scrollToPosition
      if L0_3 then
        L0_3 = A0_2
        L0_3 = L0_3.scroller
        L1_3 = L0_3
        L0_3 = L0_3.scrollToPosition
        L2_3 = {}
        L3_3 = L3_2
        L3_3 = -L3_3
        L2_3.x = L3_3
        L2_3.time = 800
        L0_3(L1_3, L2_3)
      end
    end
  end
  
  L7_2(L8_2, L9_2)
end

scrollTo = L21_1

function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if not A1_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = 0
  L4_2 = mainPlayer
  L4_2 = L4_2.ladder
  if L4_2 then
    L4_2 = mainPlayer
    L4_2 = L4_2.ladder
    L4_2 = L4_2.step
    if L4_2 then
      L4_2 = mainPlayer
      L4_2 = L4_2.ladder
      L3_2 = L4_2.step
    end
  end
  L4_2 = false
  L5_2 = mainPlayer
  L5_2 = L5_2.ladder
  if L5_2 then
    L5_2 = mainPlayer
    L5_2 = L5_2.ladder
    L5_2 = L5_2.step
    if L5_2 then
      goto lbl_33
    end
  end
  L4_2 = A2_2 == 1
  goto lbl_38
  ::lbl_33::
  L5_2 = L3_2 + 1
  L4_2 = A2_2 == L5_2
  ::lbl_38::
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "Ladder/shop_ladder_"
  L7_2 = tostring
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  L8_2 = ".png"
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
  L6_2 = {}
  L7_2 = 1000 + A2_2
  L6_2.id = L7_2
  L8_2 = A0_2
  L7_2 = A0_2.getLadderItemDescription
  L9_2 = A1_2
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.description = L7_2
  L6_2.image = L5_2
  L8_2 = A0_2
  L7_2 = A0_2.getLadderItemPrice
  L9_2 = A1_2
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.price = L7_2
  L7_2 = A1_2.packageType
  L6_2.packageType = L7_2
  L7_2 = A1_2.purchaseType
  L6_2.purchaseType = L7_2
  L6_2.enabled = L4_2
  L7_2 = A2_2 - 1
  L6_2.stepIndex = L7_2
  
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = 0
    L1_3 = mainPlayer
    L1_3 = L1_3.ladder
    if L1_3 then
      L1_3 = mainPlayer
      L1_3 = L1_3.ladder
      L1_3 = L1_3.step
      if L1_3 then
        L1_3 = mainPlayer
        L1_3 = L1_3.ladder
        L0_3 = L1_3.step
      end
    end
    L1_3 = false
    L2_3 = mainPlayer
    L2_3 = L2_3.ladder
    if L2_3 then
      L2_3 = mainPlayer
      L2_3 = L2_3.ladder
      L2_3 = L2_3.step
      if L2_3 then
        goto lbl_30
      end
    end
    L2_3 = A2_2
    L1_3 = L2_3 == 1
    goto lbl_36
    ::lbl_30::
    L2_3 = A2_2
    L3_3 = L0_3 + 1
    L1_3 = L2_3 == L3_3
    ::lbl_36::
    if L1_3 then
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3.handleLadderItemAction
      L4_3 = A1_2
      L5_3 = A2_2
      L2_3(L3_3, L4_3, L5_3)
    end
  end
  
  L6_2.action = L7_2
  return L6_2
end

createLadderItemFromData = L21_1

function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = ""
  L3_2 = A1_2.packageType
  if L3_2 == 1 then
    L4_2 = L2_1
    L4_2 = L4_2.shortenLongNumber
    L5_2 = A1_2.goldAmount
    L6_2 = Constants
    L6_2 = L6_2.getShopMultiplier
    L6_2 = L6_2()
    L5_2 = L5_2 * L6_2
    L4_2 = L4_2(L5_2)
    L5_2 = " "
    L6_2 = L3_1
    L6_2 = L6_2["Gold coins"]
    L2_2 = L4_2 .. L5_2 .. L6_2
  elseif L3_2 == 2 then
    L4_2 = A1_2.nectarAmount
    L5_2 = " "
    L6_2 = L3_1
    L6_2 = L6_2.Nectar
    L2_2 = L4_2 .. L5_2 .. L6_2
  elseif L3_2 == 3 then
    L4_2 = A1_2.cardsInfo
    L4_2 = L4_2.cardPackId
    L5_2 = L5_1
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L5_2 = L5_1
      L5_2 = L5_2[L4_2]
      L2_2 = L5_2.name
    else
      L2_2 = "Unknown Pack"
    end
  elseif L3_2 == 4 then
    L4_2 = A1_2.boostPackType
    L5_2 = L5_1
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L5_2 = L5_1
      L5_2 = L5_2[L4_2]
      L2_2 = L5_2.description
    else
      L2_2 = "Unknown Pack"
    end
  elseif L3_2 == 5 then
    L4_2 = L3_1
    L2_2 = L4_2["Fill Out Potion"]
  end
  return L2_2
end

getLadderItemDescription = L21_1

function L21_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.purchaseType
  if L2_2 == 0 then
    L2_2 = "0"
    return L2_2
  else
    L2_2 = A1_2.purchaseType
    if L2_2 == 1 then
      L2_2 = A1_2.goldPackInfo
      L2_2 = L2_2.price
      L3_2 = Constants
      L3_2 = L3_2.StoreID
      L2_2 = L2_2[L3_2]
      if not L2_2 then
        L2_2 = "0"
      end
      return L2_2
    end
  end
  L2_2 = "0"
  return L2_2
end

getLadderItemPrice = L21_1

function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.purchaseType
  if L3_2 == 1 then
    L4_2 = A0_2
    L3_2 = A0_2.handleLadderPurchase
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = A1_2.purchaseType
    if L3_2 == 0 then
      L4_2 = A0_2
      L3_2 = A0_2.handleFreePackageClaim
      L5_2 = A1_2
      L6_2 = A2_2
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end

handleLadderItemAction = L21_1

function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = {}
  
  function L4_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L5_3 = {}
    L6_3 = mainPlayer
    L6_3 = L6_3.gold
    L5_3.gold = L6_3
    L6_3 = mainPlayer
    L6_3 = L6_3.nectar
    L5_3.nectar = L6_3
    L5_3.cards = A4_3
    L6_3 = mainPlayer
    L6_3 = L6_3.ladder
    if L6_3 then
      L6_3 = mainPlayer
      L6_3 = L6_3.ladder
      L6_3 = L6_3.step
      if L6_3 ~= nil then
        L6_3 = mainPlayer
        L6_3 = L6_3.ladder
        L6_3 = L6_3.step
        L6_3 = L6_3 + 1
        L5_3.step = L6_3
        L6_3 = mainPlayer
        L6_3 = L6_3.ladder
        L7_3 = L5_3.step
        L6_3.step = L7_3
    end
    else
      L6_3 = mainPlayer
      L6_3 = L6_3.ladder
      if not L6_3 then
        L6_3 = mainPlayer
        L7_3 = {}
        L6_3.ladder = L7_3
      end
      L5_3.step = 1
      L6_3 = mainPlayer
      L6_3 = L6_3.ladder
      L7_3 = L5_3.step
      L6_3.step = L7_3
    end
    L6_3 = A0_2
    L7_3 = L6_3
    L6_3 = L6_3.processLadderPackageRewards
    L8_3 = L5_3
    L9_3 = A1_2
    L10_3 = A2_2
    L6_3(L7_3, L8_3, L9_3, L10_3)
  end
  
  L3_2.didPurchaseItemWithId = L4_2
  
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3
    L3_3 = showSimpleDialog
    L4_3 = "Purchase Failed"
    L5_3 = A2_3 or L5_3
    if not A2_3 then
      L5_3 = "Failed to complete purchase"
    end
    L6_3 = "OK"
    L7_3 = nil
    L3_3(L4_3, L5_3, L6_3, L7_3)
  end
  
  L3_2.failedToBuyItem = L4_2
  
  function L4_2(A0_3, A1_3)
  end
  
  L3_2.successToBuyAvatar = L4_2
  L4_2 = A1_2.goldPackInfo
  L4_2 = L4_2.id
  L5_2 = A1_2.goldPackInfo
  L5_2 = L5_2.product_uid
  L3_2.ladderDelegate = A0_2
  L3_2.itemData = A1_2
  L3_2.itemIndex = A2_2
  L6_2 = L17_1
  L6_2 = L6_2.startPurchaseWithIdAndUID
  L7_2 = L4_2
  L8_2 = L5_2
  L9_2 = L3_2
  L10_2 = nil
  L11_2 = false
  L12_2 = false
  L13_2 = nil
  L14_2 = true
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end

handleLadderPurchase = L21_1

function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "handleFreePackageClaim"
    
    function L4_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      L1_4 = showSimpleDialog
      L2_4 = "Error"
      L3_4 = A0_4 or L3_4
      if not A0_4 then
        L3_4 = "Failed to claim free package"
      end
      L4_4 = "OK"
      L5_4 = nil
      L1_4(L2_4, L3_4, L4_4, L5_4)
    end
    
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = A0_2
      L4_3 = L3_3
      L3_3 = L3_3.processLadderPackageRewards
      L5_3 = L2_3
      L6_3 = A1_2
      L7_3 = A2_2
      L3_3(L4_3, L5_3, L6_3, L7_3)
      L3_3 = L13_1
      L3_3 = L3_3.logEvent
      L4_3 = "Free Ladder Package Claimed"
      L5_3 = {}
      L6_3 = A2_2
      L5_3.item_index = L6_3
      L6_3 = A1_2
      L6_3 = L6_3.packageType
      L5_3.package_type = L6_3
      L3_3(L4_3, L5_3)
    end
  end
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = showSimpleDialog
    L2_3 = "Error"
    L3_3 = A0_3 or L3_3
    if not A0_3 then
      L3_3 = "Network error occurred"
    end
    L4_3 = "OK"
    L5_3 = nil
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L1_3 = L13_1
    L1_3 = L1_3.logEvent
    L2_3 = "Free Ladder Package Claim Failed"
    L3_3 = {}
    L4_3 = A2_2
    L3_3.item_index = L4_3
    L4_3 = A1_2
    L4_3 = L4_3.packageType
    L3_3.package_type = L4_3
    L3_3.error = A0_3
    L1_3(L2_3, L3_3)
  end
  
  L5_2 = Constants
  L5_2 = L5_2.API_Path
  L6_2 = Constants
  L6_2 = L6_2.API_BuyProgressBundle
  L5_2 = L5_2 .. L6_2
  L6_2 = network
  L6_2 = L6_2.request
  L7_2 = L5_2
  L8_2 = "POST"
  L9_2 = L3_2
  L10_2 = nil
  L11_2 = "claim free ladder package"
  L12_2 = nil
  L13_2 = L4_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

handleFreePackageClaim = L21_1

function L21_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = L18_1
  L4_2 = L4_2.addDesignEvent
  L5_2 = {}
  L6_2 = "ladder_"
  L7_2 = A3_2 - 1
  L6_2 = L6_2 .. L7_2
  L5_2.eventId = L6_2
  L4_2(L5_2)
  L4_2 = isAndroid
  L4_2 = L4_2()
  if not L4_2 then
    L4_2 = isIOS
    L4_2 = L4_2()
    if not L4_2 then
      goto lbl_31
    end
  end
  L4_2 = todNative
  L4_2 = L4_2.firebaseSDK
  L5_2 = {}
  L5_2.operation = "LogEvent"
  L6_2 = "ladder_"
  L7_2 = A3_2 - 1
  L6_2 = L6_2 .. L7_2
  L5_2.eventName = L6_2
  L5_2.paramKey = "index"
  L6_2 = tostring
  L7_2 = A3_2 - 1
  L6_2 = L6_2(L7_2)
  L5_2.paramValue = L6_2
  L4_2(L5_2)
  ::lbl_31::
  if A1_2 then
    L4_2 = A1_2.bank_account_balance
    if L4_2 ~= nil then
      L4_2 = mainPlayer
      L4_2 = L4_2.bankBuilding
      if L4_2 ~= nil then
        L4_2 = mainPlayer
        L4_2 = L4_2.bankBuilding
        L5_2 = A1_2.bank_account_balance
        L4_2.gold = L5_2
      end
    end
  end
  if A1_2 then
    L4_2 = A1_2.gold
    if L4_2 ~= nil then
      L4_2 = mainPlayer
      L5_2 = A1_2.gold
      L4_2.gold = L5_2
    end
  end
  if A1_2 then
    L4_2 = A1_2.nectar
    if L4_2 ~= nil then
      L4_2 = mainPlayer
      L5_2 = A1_2.nectar
      L4_2.nectar = L5_2
    end
  end
  if A1_2 then
    L4_2 = A1_2.fill_potion
    if L4_2 ~= nil then
      L4_2 = A1_2.fill_potion
      if L4_2 == true then
        L4_2 = mainPlayer
        L5_2 = Constants
        L5_2 = L5_2.Potion_Capacity
        L4_2.potionAmount = L5_2
      end
    end
  end
  L4_2 = {}
  if A1_2 then
    L5_2 = A1_2.cards
    if L5_2 ~= nil then
      L5_2 = pairs
      L6_2 = A1_2.cards
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      for L8_2, L9_2 in L5_2, L6_2, L7_2 do
        L10_2 = mainPlayer
        L10_2 = L10_2.cards
        L11_2 = L9_2.id
        L12_2 = L8_1
        L13_2 = L12_2
        L12_2 = L12_2.new
        L14_2 = L9_2
        L12_2 = L12_2(L13_2, L14_2)
        L10_2[L11_2] = L12_2
        L10_2 = L9_2.id
        L11_2 = mainPlayer
        L11_2 = L11_2.cards
        L12_2 = L9_2.id
        L11_2 = L11_2[L12_2]
        L4_2[L10_2] = L11_2
        L10_2 = mainPlayer
        L10_2 = L10_2.powerBoost
        if L10_2 ~= nil then
          L10_2 = mainPlayer
          L10_2 = L10_2.cards
          L11_2 = L9_2.id
          L10_2 = L10_2[L11_2]
          L11_2 = mainPlayer
          L11_2 = L11_2.cards
          L12_2 = L9_2.id
          L11_2 = L11_2[L12_2]
          L11_2 = L11_2.power
          L10_2.powerBeforeBoost = L11_2
          L10_2 = mainPlayer
          L10_2 = L10_2.cards
          L11_2 = L9_2.id
          L10_2 = L10_2[L11_2]
          L10_2 = L10_2.power
          L11_2 = mainPlayer
          L11_2 = L11_2.cards
          L12_2 = L9_2.id
          L11_2 = L11_2[L12_2]
          L12_2 = math
          L12_2 = L12_2.ceil
          L13_2 = mainPlayer
          L13_2 = L13_2.powerBoost
          L13_2 = L13_2.multiplier
          L13_2 = L10_2 * L13_2
          L12_2 = L12_2(L13_2)
          L11_2.power = L12_2
        end
      end
    end
  end
  if A1_2 then
    L5_2 = A1_2.pwboost_created_at
    if L5_2 then
      L5_2 = mainPlayer
      L6_2 = {}
      L7_2 = A1_2.pwboost_created_at
      L6_2.creationTime = L7_2
      L7_2 = A1_2.boost_id
      L6_2.id = L7_2
      L7_2 = Constants
      L7_2 = L7_2.BOOST_MULTIPLIERS
      L8_2 = tostring
      L9_2 = A1_2.boost_id
      L8_2 = L8_2(L9_2)
      L7_2 = L7_2[L8_2]
      L6_2.multiplier = L7_2
      L5_2.powerBoost = L6_2
      L5_2 = pairs
      L6_2 = mainPlayer
      L6_2 = L6_2.cards
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      for L8_2, L9_2 in L5_2, L6_2, L7_2 do
        L10_2 = L9_2.power
        L9_2.powerBeforeBoost = L10_2
        L10_2 = L9_2.power
        L11_2 = math
        L11_2 = L11_2.ceil
        L12_2 = Constants
        L12_2 = L12_2.BOOST_MULTIPLIERS
        L13_2 = tostring
        L14_2 = A1_2.boost_id
        L13_2 = L13_2(L14_2)
        L12_2 = L12_2[L13_2]
        L12_2 = L10_2 * L12_2
        L11_2 = L11_2(L12_2)
        L9_2.power = L11_2
      end
    end
  end
  if A1_2 then
    L5_2 = A1_2.xpboost_created_at
    if L5_2 then
      L5_2 = mainPlayer
      L6_2 = {}
      L7_2 = A1_2.xpboost_created_at
      L6_2.creationTime = L7_2
      L7_2 = A1_2.boost_id
      L6_2.id = L7_2
      L5_2.xpBoost = L6_2
    end
  end
  L5_2 = nil
  if A1_2 then
    L6_2 = A1_2.avatars
    if L6_2 then
      L5_2 = A1_2.avatars
    end
  end
  if A1_2 then
    L6_2 = A1_2.step
    if L6_2 ~= nil then
      L6_2 = mainPlayer
      L6_2 = L6_2.ladder
      if not L6_2 then
        L6_2 = mainPlayer
        L7_2 = {}
        L6_2.ladder = L7_2
      end
      L6_2 = mainPlayer
      L6_2 = L6_2.ladder
      L7_2 = A1_2.step
      L6_2.step = L7_2
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2.updateUIAfterRewards
  L6_2(L7_2)
  L7_2 = A0_2
  L6_2 = A0_2.refreshLadderItems
  L6_2(L7_2)
  if A1_2 then
    L6_2 = A1_2.step
    if L6_2 ~= nil then
      L6_2 = A1_2.step
      if 0 < L6_2 then
        L6_2 = A1_2.step
        L6_2 = L6_2 + 1
        L7_2 = A0_2.itemsView
        L7_2 = #L7_2
        if L6_2 <= L7_2 then
          L8_2 = A0_2
          L7_2 = A0_2.scrollTo
          L9_2 = L6_2
          L7_2(L8_2, L9_2)
        end
      end
    end
  end
  if A1_2 then
    L6_2 = A1_2.cards
    if L6_2 then
      L6_2 = next
      L7_2 = A1_2.cards
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L7_2 = A0_2
        L6_2 = A0_2.showCardRewardsInAnimationScene
        L8_2 = A2_2
        L9_2 = L4_2
        L6_2(L7_2, L8_2, L9_2)
      end
    end
  end
end

processLadderPackageRewards = L21_1

function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L10_1
  L1_2 = L1_2.getScene
  L2_2 = "Scenes.Home"
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.navBar
    if L2_2 then
      L2_2 = L1_2.navBar
      L3_2 = L2_2
      L2_2 = L2_2.setGold
      L4_2 = mainPlayer
      L4_2 = L4_2.gold
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = L1_2.navBar
      L3_2 = L2_2
      L2_2 = L2_2.setNectar
      L4_2 = mainPlayer
      L4_2 = L4_2.nectar
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  if L1_2 then
    L2_2 = L1_2.tabbar
    if L2_2 then
      L2_2 = L1_2.tabbar
      L3_2 = L2_2
      L2_2 = L2_2.setGold
      L4_2 = mainPlayer
      L4_2 = L4_2.gold
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = L1_2.tabbar
      L3_2 = L2_2
      L2_2 = L2_2.setNectar
      L4_2 = mainPlayer
      L4_2 = L4_2.nectar
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end

updateUIAfterRewards = L21_1

function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = {}
  L4_2 = A1_2.id
  if not L4_2 then
    L4_2 = 999
  end
  L3_2.id = L4_2
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "Shop/12. Card Pack.png"
  L4_2 = L4_2 .. L5_2
  L3_2.image = L4_2
  L4_2 = A1_2.name
  if not L4_2 then
    L4_2 = L3_1
    L4_2 = L4_2["Card Pack"]
    if not L4_2 then
      L4_2 = "Card Pack"
    end
  end
  L3_2.name = L4_2
  L3_2.priceNumber = 0
  L3_2.price = 0
  
  function L4_2()
    local L0_3, L1_3
  end
  
  L3_2.action = L4_2
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = 0
    L2_3 = pairs
    L3_3 = A2_2
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3 in L2_3, L3_3, L4_3 do
      L1_3 = L1_3 + 1
    end
    return L1_3
  end
  
  L3_2.numberOfCardInCardPack = L4_2
  L4_2 = require
  L5_2 = "composer"
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2.showOverlay
  L6_2 = "Scenes.ShopAnimationScene"
  L7_2 = {}
  L7_2.isModal = true
  L7_2.effect = "fade"
  L7_2.time = 300
  L8_2 = {}
  L8_2.type = "cards"
  L8_2.items = A2_2
  L8_2.shopItem = L3_2
  L8_2.isLadder = true
  
  function L9_2()
    local L0_3, L1_3, L2_3
    L0_3 = L4_2
    L0_3 = L0_3.hideOverlay
    L1_3 = "fade"
    L2_3 = 300
    L0_3(L1_3, L2_3)
    L0_3 = L19_1
    if L0_3 then
      L0_3 = L19_1
      L0_3 = L0_3.view
      if L0_3 then
        L0_3 = L19_1
        L0_3 = L0_3.view
        L1_3 = L0_3
        L0_3 = L0_3.toFront
        L0_3(L1_3)
      end
    end
  end
  
  L8_2.callbackFunction = L9_2
  L7_2.params = L8_2
  L5_2(L6_2, L7_2)
end

showCardRewardsInAnimationScene = L21_1

function L21_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = ""
  L5_2 = A1_2.packageType
  if L5_2 == 1 then
    L6_2 = L3_1
    L6_2 = L6_2["Gold coins"]
    L7_2 = " "
    L8_2 = L3_1
    L8_2 = L8_2.received
    L9_2 = "!"
    L4_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
  elseif L5_2 == 2 then
    L6_2 = L3_1
    L6_2 = L6_2.Nectar
    L7_2 = " "
    L8_2 = L3_1
    L8_2 = L8_2.received
    L9_2 = "!"
    L4_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
  elseif L5_2 == 3 then
    if A2_2 then
      L6_2 = next
      L7_2 = A2_2
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = 0
        L7_2 = pairs
        L8_2 = A2_2
        L7_2, L8_2, L9_2 = L7_2(L8_2)
        for L10_2 in L7_2, L8_2, L9_2 do
          L6_2 = L6_2 + 1
        end
        L7_2 = L6_2
        L8_2 = " "
        L9_2 = L3_1
        L9_2 = L9_2.Cards
        L10_2 = " "
        L11_2 = L3_1
        L11_2 = L11_2.received
        L12_2 = "!"
        L4_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2
    end
    else
      L6_2 = L3_1
      L6_2 = L6_2.Cards
      L7_2 = " "
      L8_2 = L3_1
      L8_2 = L8_2.received
      L9_2 = "!"
      L4_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
    end
  elseif L5_2 == 4 then
    L6_2 = L3_1
    L6_2 = L6_2.Boost
    L7_2 = " "
    L8_2 = L3_1
    L8_2 = L8_2.activated
    L9_2 = "!"
    L4_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
  elseif L5_2 == 5 then
    L6_2 = L3_1
    L6_2 = L6_2["Potion filled"]
    L7_2 = "!"
    L4_2 = L6_2 .. L7_2
  else
    L6_2 = L3_1
    L6_2 = L6_2["Reward received"]
    L7_2 = "!"
    L4_2 = L6_2 .. L7_2
  end
  L6_2 = showSimpleDialog
  L7_2 = L3_1
  L7_2 = L7_2.Success
  if not L7_2 then
    L7_2 = "Success"
  end
  L8_2 = L4_2
  L9_2 = "OK"
  
  function L10_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.refreshLadderData
    L0_3(L1_3)
  end
  
  L6_2(L7_2, L8_2, L9_2, L10_2)
end

showRewardPopup = L21_1

function L21_1(A0_2)
  local L1_2
end

refreshLadderData = L21_1

function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 0
  L2_2 = mainPlayer
  L2_2 = L2_2.ladder
  if L2_2 then
    L2_2 = mainPlayer
    L2_2 = L2_2.ladder
    L2_2 = L2_2.step
    if L2_2 then
      L2_2 = mainPlayer
      L2_2 = L2_2.ladder
      L1_2 = L2_2.step
    end
  end
  L2_2 = ipairs
  L3_2 = A0_2.items
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = false
      L8_2 = mainPlayer
      L8_2 = L8_2.ladder
      if L8_2 then
        L8_2 = mainPlayer
        L8_2 = L8_2.ladder
        L8_2 = L8_2.step
        if L8_2 then
          goto lbl_35
        end
      end
      L7_2 = L5_2 == 1
      goto lbl_40
      ::lbl_35::
      L8_2 = L1_2 + 1
      L7_2 = L5_2 == L8_2
      ::lbl_40::
      L6_2.enabled = L7_2
    end
  end
  L2_2 = ipairs
  L3_2 = A0_2.itemsView
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = false
      L8_2 = mainPlayer
      L8_2 = L8_2.ladder
      if L8_2 then
        L8_2 = mainPlayer
        L8_2 = L8_2.ladder
        L8_2 = L8_2.step
        if L8_2 then
          goto lbl_64
        end
      end
      L7_2 = L5_2 == 1
      goto lbl_69
      ::lbl_64::
      L8_2 = L1_2 + 1
      L7_2 = L5_2 == L8_2
      ::lbl_69::
      L9_2 = L6_2
      L8_2 = L6_2.setEnabled
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
end

refreshLadderItems = L21_1

function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L2_1
  L2_2 = L2_2.remainTimeFromNow
  L3_2 = A0_2.finishTime
  L4_2 = mainPlayer
  L4_2 = L4_2.timeDelta
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2)
  if L2_2 < 0 then
    L6_2 = false
    L20_1 = L6_2
    L3_2 = "00"
    L4_2 = "00"
    L5_2 = "00"
    L6_2 = Runtime
    L7_2 = L6_2
    L6_2 = L6_2.removeEventListener
    L8_2 = "click"
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2.accessButton
    if L6_2 then
      L6_2 = A0_2.accessButton
      L7_2 = L6_2
      L6_2 = L6_2.setEnabled
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
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

click = L21_1

function L21_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = transition
  L1_2 = L1_2.to
  L2_2 = A0_2.rightContainer
  L3_2 = {}
  L3_2.time = 500
  L3_2.alpha = 1
  L3_2.delay = 200
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.leftContainer
  if L1_2 then
    L1_2 = transition
    L1_2 = L1_2.to
    L2_2 = A0_2.leftContainer
    L3_2 = {}
    L3_2.time = 500
    L3_2.alpha = 1
    L3_2.delay = 400
    L1_2(L2_2, L3_2)
  end
end

animateElements = L21_1

function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.itemsView
  if L2_2 then
    L2_2 = pairs
    L3_2 = A0_2.itemsView
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L6_2.destroy
      if L7_2 then
        L8_2 = L6_2
        L7_2 = L6_2.destroy
        L7_2(L8_2)
      end
      L7_2 = A0_2.itemsView
      L7_2[L5_2] = nil
    end
  end
  L2_2 = A0_2.items
  if L2_2 then
    L2_2 = pairs
    L3_2 = A0_2.items
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = A0_2.items
      L7_2[L5_2] = nil
    end
  end
  L2_2 = A0_2.scroller
  if L2_2 then
    L2_2 = display
    L2_2 = L2_2.remove
    L3_2 = A0_2.scroller
    L2_2(L3_2)
    A0_2.scroller = nil
  end
  L2_2 = A0_2.leftContainer
  if L2_2 then
    L2_2 = display
    L2_2 = L2_2.remove
    L3_2 = A0_2.leftContainer
    L2_2(L3_2)
    A0_2.leftContainer = nil
  end
  L2_2 = A0_2.rightContainer
  if L2_2 then
    L2_2 = display
    L2_2 = L2_2.remove
    L3_2 = A0_2.rightContainer
    L2_2(L3_2)
    A0_2.rightContainer = nil
  end
  if A1_2 then
    L2_2 = transition
    L2_2 = L2_2.to
    L3_2 = A0_2.view
    L4_2 = {}
    L4_2.time = 300
    L4_2.alpha = 0
    
    function L5_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L0_3 = L0_3.view
      if L0_3 then
        L0_3 = A0_2
        L0_3 = L0_3.view
        L1_3 = L0_3
        L0_3 = L0_3.removeSelf
        L0_3(L1_3)
        L0_3 = A0_2
        L0_3.view = nil
      end
    end
    
    L4_2.onComplete = L5_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2.view
    if L2_2 then
      L2_2 = A0_2.view
      L3_2 = L2_2
      L2_2 = L2_2.removeSelf
      L2_2(L3_2)
      A0_2.view = nil
    end
  end
end

removeView = L21_1
