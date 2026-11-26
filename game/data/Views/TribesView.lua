local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "widget"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Models.Tribe"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "composer"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Utils.Toolbox"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Models.Tribe"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Models.MessagePipe"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Constants"
L7_1(L8_1)
L7_1 = require
L8_1 = "Views.ActivityIndicatorView"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Components.TDButtonView"
L8_1 = L8_1(L9_1)
L9_1 = nil
L10_1 = nil
L11_1 = nil

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "hide, function needs to be called with colon"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = native
  L1_2 = L1_2.setKeyboardFocus
  L2_2 = nil
  L1_2(L2_2)
  L1_2 = A0_2.searchField
  if L1_2 ~= nil then
    L1_2 = A0_2.searchField
    L1_2.isVisible = false
  end
end

hide = L12_1

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "show, function needs to be called with colon"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.searchField
  if L1_2 ~= nil then
    L1_2 = A0_2.searchField
    L1_2.isVisible = true
  end
  L1_2 = L7_1
  L1_2 = L1_2.show
  L2_2 = L1_1
  L2_2 = L2_2["Fetching Recommended"]
  L1_2(L2_2)
  L1_2 = L2_1
  L1_2 = L1_2.getRecommendedTribes
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.didGetRecommendedTribesCallback
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.failedToGetRecommendedTribesCallback
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  
  L1_2(L2_2, L3_2)
end

show = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = A0_2.list
  L3_2 = L2_2
  L2_2 = L2_2.deleteAllRows
  L2_2(L3_2)
  A0_2.results = A1_2
  A0_2.recommendedTribe = A1_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2.list
    L8_2 = L7_2
    L7_2 = L7_2.insertRow
    L9_2 = {}
    L9_2.rowHeight = 62
    L9_2.id = L5_2
    L10_2 = {}
    L11_2 = 0
    L12_2 = 0
    L13_2 = 0
    L14_2 = 0
    L10_2[1] = L11_2
    L10_2[2] = L12_2
    L10_2[3] = L13_2
    L10_2[4] = L14_2
    L9_2.lineColor = L10_2
    L10_2 = {}
    L11_2 = {}
    L12_2 = 0
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0
    L11_2[1] = L12_2
    L11_2[2] = L13_2
    L11_2[3] = L14_2
    L11_2[4] = L15_2
    L10_2.default = L11_2
    L11_2 = {}
    L12_2 = 0
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0
    L11_2[1] = L12_2
    L11_2[2] = L13_2
    L11_2[3] = L14_2
    L11_2[4] = L15_2
    L10_2.over = L11_2
    L9_2.rowColor = L10_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = L7_1
  L2_2 = L2_2.hide
  L2_2()
end

didGetRecommendedTribesCallback = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L7_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = showSimpleDialog
  L3_2 = "Recommended Tribes"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

failedToGetRecommendedTribesCallback = L12_1

function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L7_1
  L3_2 = L3_2.hide
  L3_2()
  L3_2 = A0_2.buttons
  L3_2 = L3_2[A1_2]
  L3_2.isVisible = false
  if A2_2 then
    L3_2 = showSimpleDialog
    L4_2 = "Join"
    L5_2 = L1_1
    L5_2 = L5_2.localizedString
    L6_2 = "You have joined the tribe"
    L7_2 = {}
    L8_2 = mainPlayer
    L8_2 = L8_2.tribe
    L8_2 = L8_2.name
    L7_2.tribename = L8_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = nil
    
    function L7_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L0_3 = L0_3.searchField
      if L0_3 ~= nil then
        L0_3 = A0_2
        L0_3 = L0_3.searchField
        L0_3.isVisible = true
      end
      L0_3 = hub
      if L0_3 ~= nil then
        L0_3 = hub
        L1_3 = L0_3
        L0_3 = L0_3.removeHub
        L0_3(L1_3)
        L0_3 = nil
        hub = L0_3
        L0_3 = L6_1
        L0_3 = L0_3.createHub
        L0_3()
        L0_3 = hub
        L0_3 = L0_3.init
        L0_3()
      end
      L0_3 = L3_1
      L0_3 = L0_3.gotoScene
      L1_3 = "Scenes.Home"
      L0_3(L1_3)
    end
    
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = showSimpleDialog
    L4_2 = "Join Request"
    L5_2 = "Join request sent success"
    L6_2 = nil
    
    function L7_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L0_3 = L0_3.searchField
      if L0_3 ~= nil then
        L0_3 = A0_2
        L0_3 = L0_3.searchField
        L0_3.isVisible = true
      end
    end
    
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end

successToSendCallBack = L12_1

function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L7_1
  L3_2 = L3_2.hide
  L3_2()
  L3_2 = showSimpleDialog
  L4_2 = "Join Request"
  L5_2 = A2_2
  L6_2 = nil
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L0_3 = L0_3.searchField
    if L0_3 ~= nil then
      L0_3 = A0_2
      L0_3 = L0_3.searchField
      L0_3.isVisible = true
    end
  end
  
  L3_2(L4_2, L5_2, L6_2, L7_2)
end

failedToSendCallback = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  A0_2.results = A1_2
  L2_2 = A0_2.list
  L3_2 = L2_2
  L2_2 = L2_2.deleteAllRows
  L2_2(L3_2)
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2.list
    L8_2 = L7_2
    L7_2 = L7_2.insertRow
    L9_2 = {}
    L9_2.rowHeight = 62
    L9_2.id = L5_2
    L10_2 = {}
    L11_2 = 0
    L12_2 = 0
    L13_2 = 0
    L14_2 = 0
    L10_2[1] = L11_2
    L10_2[2] = L12_2
    L10_2[3] = L13_2
    L10_2[4] = L14_2
    L9_2.lineColor = L10_2
    L10_2 = {}
    L11_2 = {}
    L12_2 = 0
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0
    L11_2[1] = L12_2
    L11_2[2] = L13_2
    L11_2[3] = L14_2
    L11_2[4] = L15_2
    L10_2.default = L11_2
    L11_2 = {}
    L12_2 = 0
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0
    L11_2[1] = L12_2
    L11_2[2] = L13_2
    L11_2[3] = L14_2
    L11_2[4] = L15_2
    L10_2.over = L11_2
    L9_2.rowColor = L10_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2.searchField
  if L2_2 ~= nil then
    L2_2 = A0_2.searchField
    L2_2.isVisible = true
  end
  L2_2 = L7_1
  L2_2 = L2_2.hide
  L2_2()
end

didGetFoundTribesCallback = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L7_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = showSimpleDialog
  L3_2 = "Tribe Search"
  L4_2 = A1_2
  L5_2 = nil
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L0_3 = L0_3.searchField
    if L0_3 ~= nil then
      L0_3 = A0_2
      L0_3 = L0_3.searchField
      L0_3.isVisible = true
    end
  end
  
  L2_2(L3_2, L4_2, L5_2, L6_2)
end

failedToGetFoundTribesCallback = L12_1

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.phase
  if "submitted" == L1_2 then
    L1_2 = A0_2.target
    L1_2 = L1_2.delegate
    L1_2 = L1_2.searchField
    L1_2 = L1_2.text
    if L1_2 ~= "" then
      L1_2 = A0_2.target
      L1_2 = L1_2.delegate
      L1_2 = L1_2.searchField
      L1_2.isVisible = false
      L1_2 = L7_1
      L1_2 = L1_2.show
      L2_2 = L1_1
      L2_2 = L2_2["Finding Tribes"]
      L1_2(L2_2)
      L1_2 = L5_1
      L1_2 = L1_2.searchForTribeWithQuery
      L2_2 = A0_2.target
      L2_2 = L2_2.delegate
      L2_2 = L2_2.searchField
      L2_2 = L2_2.text
      L3_2 = didGetFoundTribesCallback
      L4_2 = failedToGetFoundTribesCallback
      L5_2 = A0_2.target
      L5_2 = L5_2.delegate
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
    L1_2 = native
    L1_2 = L1_2.setKeyboardFocus
    L2_2 = nil
    L1_2(L2_2)
  end
end

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = A0_2.row
  L2_2 = A0_2.row
  L3_2 = A0_2.row
  L3_2 = L3_2.index
  L4_2 = A0_2.target
  L4_2 = L4_2.delegate
  L4_2 = L4_2.results
  L5_2 = L2_2.id
  L4_2 = L4_2[L5_2]
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "cell_background.png"
  L6_2 = L6_2 .. L7_2
  L7_2 = L2_2.contentWidth
  L8_2 = L2_2.contentHeight
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = L2_2.contentWidth
  L6_2 = L6_2 / 2
  L5_2.x = L6_2
  L6_2 = L2_2.contentHeight
  L6_2 = L6_2 / 2
  L5_2.y = L6_2
  L7_2 = L1_2
  L6_2 = L1_2.insert
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = display
  L6_2 = L6_2.newText
  L7_2 = L1_2
  L8_2 = L1_1
  L8_2 = L8_2.adjustNumber
  L9_2 = L4_2.rank
  L10_2 = "."
  L9_2 = L9_2 .. L10_2
  L8_2 = L8_2(L9_2)
  L9_2 = 0
  L10_2 = 0
  L11_2 = Constants
  L11_2 = L11_2.fontForSubtitle
  L11_2 = L11_2()
  L12_2 = 14
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = L6_2
  L7_2 = L6_2.setFillColor
  L9_2 = Constants
  L9_2 = L9_2.darkBlueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L7_2 = L6_2.width
  L7_2 = L7_2 / 2
  L7_2 = 10 + L7_2
  L6_2.x = L7_2
  L7_2 = L2_2.contentHeight
  L7_2 = L7_2 * 0.46
  L6_2.y = L7_2
  L7_2 = L4_2.name
  L8_2 = L4_1
  L8_2 = L8_2.stringUTFLength
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  if 30 < L8_2 then
    L8_2 = L4_1
    L8_2 = L8_2.utf8sub
    L9_2 = L7_2
    L10_2 = 1
    L11_2 = 30
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L7_2 = L8_2
  end
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = L1_2
  L10_2 = L7_2
  L11_2 = 0
  L12_2 = 0
  L13_2 = 120
  L14_2 = 0
  L15_2 = Constants
  L15_2 = L15_2.fontForTitle
  L15_2 = L15_2()
  L16_2 = 12
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2 = L8_2
  L9_2 = L8_2.setFillColor
  L11_2 = Constants
  L11_2 = L11_2.darkBlueColor
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L11_2()
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L9_2 = L6_2.x
  L9_2 = L9_2 + 5
  L10_2 = L6_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L10_2 = L8_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L8_2.x = L9_2
  L9_2 = L6_2.y
  L8_2.y = L9_2
  L9_2 = display
  L9_2 = L9_2.newText
  L10_2 = L1_2
  L11_2 = L1_1
  L11_2 = L11_2.localizedString
  L12_2 = "Members"
  L13_2 = {}
  L14_2 = L1_1
  L14_2 = L14_2.adjustNumber
  L15_2 = L4_2.memberCount
  L14_2 = L14_2(L15_2)
  L13_2.num = L14_2
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = 0
  L13_2 = 0
  L14_2 = Constants
  L14_2 = L14_2.fontForSubtitle
  L14_2 = L14_2()
  L15_2 = 8
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L11_2 = L9_2
  L10_2 = L9_2.setFillColor
  L12_2 = Constants
  L12_2 = L12_2.darkBlueColor
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L10_2 = L9_2.width
  L10_2 = L10_2 / 2
  L10_2 = 10 + L10_2
  L9_2.x = L10_2
  L10_2 = L8_2.y
  L10_2 = L10_2 + 20
  L9_2.y = L10_2
  L10_2 = L4_2.description
  L11_2 = L4_1
  L11_2 = L11_2.stringUTFLength
  L12_2 = L10_2
  L11_2 = L11_2(L12_2)
  if 100 < L11_2 then
    L11_2 = L4_1
    L11_2 = L11_2.utf8sub
    L12_2 = L10_2
    L13_2 = 1
    L14_2 = 100
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L12_2 = "..."
    L10_2 = L11_2 .. L12_2
  end
  L11_2 = {}
  L11_2.parent = L1_2
  L11_2.text = L10_2
  L11_2.x = 0
  L11_2.y = 0
  L12_2 = L2_2.contentWidth
  L12_2 = L12_2 * 0.4
  L11_2.width = L12_2
  L12_2 = L2_2.contentHeight
  L12_2 = L12_2 * 0.8
  L11_2.height = L12_2
  L12_2 = Constants
  L12_2 = L12_2.fontForSubtitle
  L12_2 = L12_2()
  L11_2.font = L12_2
  L11_2.fontSize = 10
  L12_2 = L4_1
  L12_2 = L12_2.isStringPersianInAndroid
  L13_2 = L10_2
  L12_2 = L12_2(L13_2)
  if L12_2 then
    L12_2 = system
    L12_2 = L12_2.getInfo
    L13_2 = "platformName"
    L12_2 = L12_2(L13_2)
    if L12_2 ~= "Android" then
      L11_2.align = "right"
    end
  end
  L12_2 = display
  L12_2 = L12_2.newText
  L13_2 = L11_2
  L12_2 = L12_2(L13_2)
  L14_2 = L12_2
  L13_2 = L12_2.setFillColor
  L15_2 = Constants
  L15_2 = L15_2.darkBlueColor
  L15_2, L16_2, L17_2, L18_2 = L15_2()
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  L13_2 = L8_2.x
  L14_2 = display
  L14_2 = L14_2.contentHeight
  L14_2 = L14_2 * 0.03
  L13_2 = L13_2 + L14_2
  L14_2 = L8_2.width
  L14_2 = L14_2 / 2
  L13_2 = L13_2 + L14_2
  L14_2 = L12_2.width
  L14_2 = L14_2 / 2
  L13_2 = L13_2 + L14_2
  L12_2.x = L13_2
  L13_2 = L2_2.contentHeight
  L13_2 = L13_2 * 0.48
  L12_2.y = L13_2
  L13_2 = L4_2.status
  L14_2 = Constants
  L14_2 = L14_2.Tribe_Status_Closed
  if L13_2 ~= L14_2 then
    L13_2 = nil
    L14_2 = L4_2.status
    L15_2 = Constants
    L15_2 = L15_2.Tribe_Status_Open
    if L14_2 == L15_2 then
      L14_2 = L1_1
      L13_2 = L14_2.Join
    else
      L14_2 = L4_2.status
      L15_2 = Constants
      L15_2 = L15_2.Tribe_Status_Invite_Only
      if L14_2 == L15_2 then
        L14_2 = L1_1
        L13_2 = L14_2["Send Request"]
      end
    end
    L14_2 = L8_1
    L15_2 = L14_2
    L14_2 = L14_2.new
    L16_2 = {}
    L16_2.width = 80
    L16_2.height = 22
    L16_2.label = L13_2
    L16_2.fontSize = 10
    L16_2.labelYOffset = -1
    L16_2.labelXOffset = 1
    L16_2.emboss = false
    L17_2 = Constants
    L17_2 = L17_2.Path_Assets
    L18_2 = "BattleItems/battle_outcome_button.png"
    L17_2 = L17_2 .. L18_2
    L16_2.defaultFile = L17_2
    
    function L17_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = A0_2
      L0_3 = L0_3.target
      L0_3 = L0_3.delegate
      L0_3 = L0_3.searchField
      if L0_3 ~= nil then
        L0_3 = A0_2
        L0_3 = L0_3.target
        L0_3 = L0_3.delegate
        L0_3 = L0_3.searchField
        L0_3.isVisible = false
      end
      L0_3 = L7_1
      L0_3 = L0_3.show
      L1_3 = L1_1
      L1_3 = L1_3["Join Request"]
      L0_3(L1_3)
      L0_3 = L2_1
      L0_3 = L0_3.sendJoinRequestToTribeWithId
      L1_3 = L2_2
      L1_3 = L1_3.id
      L2_3 = successToSendCallBack
      
      function L3_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4
        L1_4 = failedToSendCallback
        L2_4 = A0_2
        L2_4 = L2_4.target
        L2_4 = L2_4.delegate
        L3_4 = nil
        L4_4 = A0_4
        L1_4(L2_4, L3_4, L4_4)
      end
      
      L4_3 = A0_2
      L4_3 = L4_3.target
      L4_3 = L4_3.delegate
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    
    L16_2.onRelease = L17_2
    L14_2 = L14_2(L15_2, L16_2)
    L15_2 = A0_2.target
    L15_2 = L15_2.delegate
    L15_2 = L15_2.buttons
    L16_2 = L2_2.id
    L15_2[L16_2] = L14_2
    L16_2 = L1_2
    L15_2 = L1_2.insert
    L17_2 = L14_2.view
    L15_2(L16_2, L17_2)
    L15_2 = L2_2.contentWidth
    L15_2 = L15_2 * 0.82
    L14_2.x = L15_2
    L15_2 = L2_2.contentHeight
    L15_2 = L15_2 * 0.48
    L14_2.y = L15_2
  end
end

onRowRender = L13_1

function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if not A2_2 then
    L3_2 = {}
    A2_2 = L3_2
  end
  L3_2 = setmetatable
  L4_2 = A2_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  A0_2.__index = A0_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  A2_2.view = L3_2
  L3_2 = {}
  A2_2.buttons = L3_2
  L3_2 = display
  L3_2 = L3_2.contentHeight
  L3_2 = L3_2 - 65
  L4_2 = -2
  L5_2 = nil
  if A1_2 == "search" then
    L3_2 = L3_2 - 36
    L4_2 = L4_2 + 34
    L6_2 = {}
    A2_2.recommendedTribe = L6_2
    L6_2 = L8_1
    L7_2 = L6_2
    L6_2 = L6_2.new
    L8_2 = {}
    L8_2.width = 80
    L8_2.height = 22
    L9_2 = L1_1
    L9_2 = L9_2.Recommended
    L8_2.label = L9_2
    L8_2.fontSize = 10
    L8_2.labelYOffset = -1
    L8_2.labelXOffset = 1
    L8_2.emboss = false
    L9_2 = Constants
    L9_2 = L9_2.Path_Assets
    L10_2 = "BattleItems/battle_outcome_button.png"
    L9_2 = L9_2 .. L10_2
    L8_2.defaultFile = L9_2
    
    function L9_2()
      local L0_3, L1_3, L2_3
      L0_3 = A2_2
      L1_3 = L0_3
      L0_3 = L0_3.didGetRecommendedTribesCallback
      L2_3 = A2_2
      L2_3 = L2_3.recommendedTribe
      L0_3(L1_3, L2_3)
    end
    
    L8_2.onRelease = L9_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = display
    L7_2 = L7_2.contentWidth
    L7_2 = L7_2 * 0.862
    L6_2.x = L7_2
    L6_2.y = 16
    L7_2 = A2_2.view
    L8_2 = L7_2
    L7_2 = L7_2.insert
    L9_2 = L6_2.view
    L7_2(L8_2, L9_2)
    L7_2 = display
    L7_2 = L7_2.newRoundedRect
    L8_2 = A2_2.view
    L9_2 = 0
    L10_2 = 0
    L11_2 = 300
    L12_2 = 32
    L13_2 = 8
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L5_2 = L7_2
    L5_2.strokeWidth = 2
    L8_2 = L5_2
    L7_2 = L5_2.setStrokeColor
    L9_2 = Constants
    L9_2 = L9_2.blueColor
    L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2()
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L8_2 = L5_2
    L7_2 = L5_2.setFillColor
    L9_2 = Constants
    L9_2 = L9_2.lightBlueColor
    L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2()
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L7_2 = L6_2.x
    L8_2 = L6_2.width
    L8_2 = L8_2 / 2
    L7_2 = L7_2 - L8_2
    L7_2 = L7_2 / 2
    L5_2.x = L7_2
    L7_2 = L5_2.height
    L7_2 = L7_2 / 2
    L5_2.y = L7_2
    L7_2 = display
    L7_2 = L7_2.newImageRect
    L8_2 = Constants
    L8_2 = L8_2.Path_Assets
    L9_2 = "General/FC-searchIcon.png"
    L8_2 = L8_2 .. L9_2
    L9_2 = 15
    L10_2 = 16
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = L5_2.x
    L9_2 = L5_2.width
    L9_2 = L9_2 / 2
    L8_2 = L8_2 - L9_2
    L8_2 = L8_2 + 13
    L7_2.x = L8_2
    L8_2 = L7_2.height
    L8_2 = L8_2 / 2
    L8_2 = L8_2 + 6
    L7_2.y = L8_2
    L8_2 = A2_2.view
    L9_2 = L8_2
    L8_2 = L8_2.insert
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = A2_2.searchField
    if L8_2 == nil then
      L8_2 = 62
      L9_2 = system
      L9_2 = L9_2.getInfo
      L10_2 = "platformName"
      L9_2 = L9_2(L10_2)
      if L9_2 == "iPhone OS" then
        L8_2 = 60
      end
      L9_2 = native
      L9_2 = L9_2.newTextField
      L10_2 = L5_2.x
      L11_2 = L5_2.y
      L11_2 = L11_2 + 2
      L12_2 = 250
      L13_2 = 30
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      A2_2.searchField = L9_2
      L9_2 = A2_2.searchField
      L10_2 = L12_1
      L9_2.userInput = L10_2
      L9_2 = A2_2.searchField
      L10_2 = L9_2
      L9_2 = L9_2.addEventListener
      L11_2 = "userInput"
      L12_2 = L12_1
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = A2_2.searchField
      L9_2.isVisible = false
      L9_2 = A2_2.searchField
      L9_2.isEditable = true
      L9_2 = A2_2.searchField
      L10_2 = Constants
      L10_2 = L10_2.nativeFontForTextFields
      L10_2 = L10_2()
      L9_2.font = L10_2
      L9_2 = A2_2.searchField
      L10_2 = L9_2
      L9_2 = L9_2.setTextColor
      L11_2 = Constants
      L11_2 = L11_2.darkBlueColor
      L11_2, L12_2, L13_2 = L11_2()
      L9_2(L10_2, L11_2, L12_2, L13_2)
      L9_2 = A2_2.searchField
      L9_2.delegate = A2_2
      L9_2 = A2_2.view
      L10_2 = L9_2
      L9_2 = L9_2.insert
      L11_2 = A2_2.searchField
      L9_2(L10_2, L11_2)
    end
  end
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 - 11
  A2_2.width = L6_2
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 - 70
  A2_2.height = L6_2
  L6_2 = L0_1
  L6_2 = L6_2.newTableView
  L7_2 = {}
  L8_2 = A2_2.width
  L7_2.width = L8_2
  L7_2.height = L3_2
  L7_2.id = "tribes_tableview"
  L7_2.noLines = true
  L8_2 = onRowRender
  L7_2.onRowRender = L8_2
  L7_2.hideScrollBar = true
  L6_2 = L6_2(L7_2)
  A2_2.list = L6_2
  L6_2 = A2_2.list
  L7_2 = A2_2.width
  L7_2 = L7_2 / 2
  L6_2.x = L7_2
  if A1_2 == "search" then
    L6_2 = A2_2.list
    L7_2 = L3_2 / 2
    L7_2 = 36 + L7_2
    L6_2.y = L7_2
  else
    L6_2 = A2_2.list
    L7_2 = L3_2 / 2
    L7_2 = -2 + L7_2
    L6_2.y = L7_2
  end
  L6_2 = A2_2.list
  L6_2.delegate = A2_2
  L6_2 = A2_2.view
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = A2_2.list
  L6_2(L7_2, L8_2)
  if A1_2 == "search" then
    L6_2 = graphics
    L6_2 = L6_2.newMask
    L7_2 = Constants
    L7_2 = L7_2.Path_Assets
    L8_2 = "Tabbar/FC-tabbar-search-mask"
    L9_2 = Constants
    L9_2 = L9_2.deviceSpecificFilePostfix
    L9_2 = L9_2()
    L10_2 = ".png"
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
    L6_2 = L6_2(L7_2)
    L7_2 = A2_2.list
    L8_2 = L7_2
    L7_2 = L7_2.setMask
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = A2_2.list
    L8_2 = display
    L8_2 = L8_2.contentCenterX
    L8_2 = L8_2 - 6
    L9_2 = A2_2.width
    L9_2 = L9_2 / 2
    L8_2 = L8_2 - L9_2
    L7_2.maskX = L8_2
    L7_2 = A2_2.list
    L8_2 = display
    L8_2 = L8_2.contentCenterY
    L8_2 = L8_2 - 95
    L9_2 = L3_2 / 2
    L8_2 = L8_2 - L9_2
    L7_2.maskY = L8_2
  else
    L6_2 = graphics
    L6_2 = L6_2.newMask
    L7_2 = Constants
    L7_2 = L7_2.Path_Assets
    L8_2 = "Tabbar/FC-tabbar-mask"
    L9_2 = Constants
    L9_2 = L9_2.deviceSpecificFilePostfix
    L9_2 = L9_2()
    L10_2 = ".png"
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
    L6_2 = L6_2(L7_2)
    L7_2 = A2_2.list
    L8_2 = L7_2
    L7_2 = L7_2.setMask
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = A2_2.list
    L8_2 = display
    L8_2 = L8_2.contentCenterX
    L8_2 = L8_2 - 6
    L9_2 = A2_2.width
    L9_2 = L9_2 / 2
    L8_2 = L8_2 - L9_2
    L7_2.maskX = L8_2
    L7_2 = A2_2.list
    L8_2 = display
    L8_2 = L8_2.contentCenterY
    L8_2 = L8_2 - 57
    L9_2 = L3_2 / 2
    L8_2 = L8_2 - L9_2
    L7_2.maskY = L8_2
  end
  return A2_2
end

new = L13_1

function L13_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L13_1
