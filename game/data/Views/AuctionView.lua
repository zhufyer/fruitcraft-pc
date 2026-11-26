local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "widget"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.ActivityIndicatorView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Models.AuctionItem"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Models.Card"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.CachedImageView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Utils.Toolbox"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Views.AuctionMoreView"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Views.NotificationView"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "json"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Utils.Analytics"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Components.TDButtonView"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Components.TDGoldLabelView"
L13_1 = L13_1(L14_1)
L14_1 = {}
L15_1 = {}
L16_1 = 0
L17_1 = nil
L18_1 = {}
L19_1 = nil
L20_1 = nil
L21_1 = 0
L22_1 = nil
L23_1 = nil
L24_1 = nil
L25_1 = nil
L26_1 = nil

function L27_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = display
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  view = L2_2
  L2_2 = display
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  L23_1 = L2_2
  L2_2 = view
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = L23_1
  L2_2(L3_2, L4_2)
  L2_2 = view
  L19_1 = A1_2
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = L2_2
  L5_2 = L1_1
  L5_2 = L5_2.localizedString
  L6_2 = "This section will be unlocked once you reach level"
  L7_2 = {}
  L8_2 = L1_1
  L8_2 = L8_2.adjustNumber
  L9_2 = Constants
  L9_2 = L9_2.UnlockLevel_Auction
  L8_2 = L8_2(L9_2)
  L7_2.level = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = 0
  L7_2 = 0
  L8_2 = Constants
  L8_2 = L8_2.fontForTitle
  L8_2 = L8_2()
  L9_2 = 16
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L22_1 = L3_2
  L3_2 = L22_1
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.darkBlueColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L3_2 = L22_1
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L4_2 = L4_2 - 10
  L3_2.x = L4_2
  L3_2 = L22_1
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L4_2 = L4_2 - 50
  L3_2.y = L4_2
  L3_2 = L2_1
  L3_2 = L3_2.newTableView
  L4_2 = {}
  L4_2.width = 160
  L5_2 = display
  L5_2 = L5_2.contentHeight
  L5_2 = L5_2 - 63
  L4_2.height = L5_2
  L5_2 = optionsRowRender
  L4_2.onRowRender = L5_2
  L5_2 = optionsRowTouch
  L4_2.onRowTouch = L5_2
  L4_2.hideScrollBar = true
  L3_2 = L3_2(L4_2)
  optionsTable = L3_2
  L3_2 = optionsTable
  L3_2.x = 80
  L3_2 = optionsTable
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 - 63
  L4_2 = L4_2 / 2
  L4_2 = L4_2 - 3
  L3_2.y = L4_2
  L3_2 = L23_1
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = optionsTable
  L3_2(L4_2, L5_2)
  L3_2 = 1
  L16_1 = L3_2
  L3_2 = 1
  L4_2 = 3
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L14_1
    L8_2 = {}
    L8_2.view = nil
    L8_2.isVisit = true
    L8_2.background = nil
    L8_2.inserted = false
    L8_2.isSelected = false
    L7_2[L6_2] = L8_2
    L7_2 = L14_1
    L7_2 = L7_2[1]
    L7_2.isSelected = true
    L7_2 = optionsTable
    L8_2 = L7_2
    L7_2 = L7_2.insertRow
    L9_2 = {}
    L9_2.rowHeight = 42
    L9_2.id = L6_2
    L10_2 = {}
    L11_2 = {}
    L12_2 = 255
    L13_2 = 255
    L14_2 = 255
    L15_2 = 200
    L11_2[1] = L12_2
    L11_2[2] = L13_2
    L11_2[3] = L14_2
    L11_2[4] = L15_2
    L10_2.default = L11_2
    L11_2 = {}
    L12_2 = 0
    L13_2 = 0
    L14_2 = 0
    L15_2 = 1
    L11_2[1] = L12_2
    L11_2[2] = L13_2
    L11_2[3] = L14_2
    L11_2[4] = L15_2
    L10_2.over = L11_2
    L9_2.rowColor = L10_2
    L7_2(L8_2, L9_2)
  end
  L3_2 = L2_1
  L3_2 = L3_2.newTableView
  L4_2 = {}
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 - 170
  L4_2.width = L5_2
  L5_2 = display
  L5_2 = L5_2.contentHeight
  L5_2 = L5_2 - 63
  L4_2.height = L5_2
  L5_2 = contentRowRender
  L4_2.onRowRender = L5_2
  L5_2 = contentRowTouch
  L4_2.onRowTouch = L5_2
  L5_2 = contentTableListener
  L4_2.listener = L5_2
  L3_2 = L3_2(L4_2)
  contentTable = L3_2
  L3_2 = contentTable
  L4_2 = display
  L4_2 = L4_2.contentWidth
  L4_2 = L4_2 - 170
  L4_2 = L4_2 / 2
  L4_2 = 160 + L4_2
  L3_2.x = L4_2
  L3_2 = contentTable
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 - 63
  L4_2 = L4_2 / 2
  L4_2 = L4_2 - 3
  L3_2.y = L4_2
  L3_2 = L23_1
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = contentTable
  L3_2(L4_2, L5_2)
  L3_2 = L0_1
  L3_2 = L3_2.getScene
  L4_2 = "Scenes.Shop"
  L3_2 = L3_2(L4_2)
  L4_2 = display
  L4_2 = L4_2.newRect
  L5_2 = L3_2.view
  L6_2 = 0
  L7_2 = 0
  L8_2 = 3
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 - 60
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  seprate = L4_2
  L4_2 = seprate
  L5_2 = L4_2
  L4_2 = L4_2.setFillColor
  L6_2 = 0.2627451
  L7_2 = 0.50588235
  L8_2 = 0.17254902
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = seprate
  L4_2.x = 167
  L4_2 = seprate
  L5_2 = display
  L5_2 = L5_2.contentCenterY
  L5_2 = L5_2 + 25
  L4_2.y = L5_2
  L4_2 = seprate
  L4_2.isVisible = false
  L4_2 = L0_1
  L4_2 = L4_2.getScene
  L5_2 = "Scenes.Shop"
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L4_2.moreView = L5_2
  L5_2 = 1
  L6_2 = 3
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = nil
    if L8_2 == 1 then
      L10_2 = L8_1
      L11_2 = L10_2
      L10_2 = L10_2.new
      L12_2 = "search"
      L13_2 = A0_2
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L9_2 = L10_2
    elseif L8_2 == 2 then
      L10_2 = L8_1
      L11_2 = L10_2
      L10_2 = L10_2.new
      L12_2 = "involved"
      L13_2 = A0_2
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L9_2 = L10_2
    else
      L10_2 = L8_1
      L11_2 = L10_2
      L10_2 = L10_2.new
      L12_2 = "sales"
      L13_2 = A0_2
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L9_2 = L10_2
    end
    L10_2 = L18_1
    L10_2[L8_2] = L9_2
    L11_2 = L9_2
    L10_2 = L9_2.hide
    L12_2 = false
    L10_2(L11_2, L12_2)
    L10_2 = L4_2.moreView
    L10_2[L8_2] = L9_2
  end
  return A0_2
end

new = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Constants
  L1_2 = L1_2.UnlockLevel_Auction
  L2_2 = mainPlayer
  L2_2 = L2_2.level
  if L1_2 > L2_2 then
    L1_2 = L23_1
    L1_2.isVisible = false
    L1_2 = L22_1
    L1_2.isVisible = true
    return
  end
  L1_2 = L23_1
  L1_2.isVisible = true
  L1_2 = L22_1
  L1_2.isVisible = false
  L1_2 = mainPlayer
  L1_2 = L1_2.settings
  L1_2 = L1_2.activeTutorial
  if L1_2 == "auction" then
    L1_2 = require
    L2_2 = "Tutorial.HorizontalOverlayView"
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.new
    L4_2 = {}
    L5_2 = L1_1
    L5_2 = L5_2["Finished auction tutorial text"]
    L4_2.message = L5_2
    L4_2.position = "center"
    L4_2.bgAlpha = 0.5
    L5_2 = Constants
    L5_2 = L5_2.Path_Assets
    L6_2 = "Tutorial/Dandelion-head.png"
    L5_2 = L5_2 .. L6_2
    L4_2.imageName = L5_2
    L4_2.touchEnabled = false
    L5_2 = L1_1
    L5_2 = L5_2.Done
    L4_2.buttonText = L5_2
    
    function L5_2()
      local L0_3, L1_3
    end
    
    L4_2.buttonAction = L5_2
    L2_2(L3_2, L4_2)
    L2_2 = require
    L3_2 = "Views.EffectsManager"
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.removePoint
    L3_2()
  end
  L1_2 = seprate
  L1_2.isVisible = true
  L1_2 = seprate
  L2_2 = L1_2
  L1_2 = L1_2.toFront
  L1_2(L2_2)
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = "auctionBid"
  L4_2 = newBidForAuction
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = "minClick"
  L4_2 = timerChange
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = setupContent
  L1_2()
  L1_2 = L11_1
  L1_2 = L1_2.logEvent
  L2_2 = "Auction shown"
  L1_2(L2_2)
end

show = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = Constants
  L1_2 = L1_2.UnlockLevel_Auction
  L2_2 = mainPlayer
  L2_2 = L2_2.level
  if L1_2 > L2_2 then
    return
  end
  L1_2 = seprate
  L1_2.isVisible = false
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = "auctionBid"
  L4_2 = newBidForAuction
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = "minClick"
  L4_2 = timerChange
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = 1
  L2_2 = L18_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L18_1
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.hide
    L7_2 = false
    L5_2(L6_2, L7_2)
  end
end

hide = L27_1

function L27_1()
  local L0_2, L1_2
  L0_2 = contentTable
  L1_2 = L0_2
  L0_2 = L0_2.reloadData
  L0_2(L1_2)
end

timerChange = L27_1

function L27_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = {}
  L15_1 = L3_2
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L15_1
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L15_1
  
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L2_3 = L2_3[A0_3]
    L3_3 = A0_2
    L3_3 = L3_3[A1_3]
    L4_3 = A2_2
    if L4_3 then
      L4_3 = A2_2
      if L4_3 == "ascending" then
        L4_3 = A1_2
        L4_3 = L2_3[L4_3]
        L5_3 = A1_2
        L5_3 = L3_3[L5_3]
        L4_3 = L4_3 < L5_3
        return L4_3
      else
        L4_3 = A1_2
        L4_3 = L2_3[L4_3]
        L5_3 = A1_2
        L5_3 = L3_3[L5_3]
        L4_3 = L4_3 > L5_3
        return L4_3
      end
    else
      L4_3 = A1_2
      L4_3 = L2_3[L4_3]
      L5_3 = A1_2
      L5_3 = L3_3[L5_3]
      L4_3 = L4_3 > L5_3
      return L4_3
    end
  end
  
  L3_2(L4_2, L5_2)
  L3_2 = ipairs
  L4_2 = L15_1
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = log3
    L9_2 = "sorted card key id is :"
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end

sortCardsWithProperty = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L15_1 = L1_2
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L15_1
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = L15_1
  
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L2_3 = L2_3[A0_3]
    L3_3 = A0_2
    L3_3 = L3_3[A1_3]
    if L2_3 and L3_3 then
      L4_3 = L2_3.status
      if L4_3 then
        L4_3 = L3_3.status
        if L4_3 then
          L4_3 = L2_3.status
          L5_3 = L3_3.status
          if L4_3 > L5_3 then
            L4_3 = true
            return L4_3
          else
            L4_3 = L2_3.status
            L5_3 = L3_3.status
            if L4_3 < L5_3 then
              L4_3 = false
              return L4_3
            else
              L4_3 = L2_3.status
              if L4_3 == 1 then
                L4_3 = L2_3.createdAt
                L5_3 = L3_3.createdAt
                if L4_3 < L5_3 then
                  L4_3 = true
                  return L4_3
                else
                  L4_3 = false
                  return L4_3
                end
              else
                L4_3 = L2_3.createdAt
                L5_3 = L3_3.createdAt
                if L4_3 < L5_3 then
                  L4_3 = false
                  return L4_3
                else
                  L4_3 = true
                  return L4_3
                end
              end
            end
          end
        end
      end
    end
  end
  
  L1_2(L2_2, L3_2)
end

sortAuctionItems = L27_1

function L27_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = {}
  L15_1 = L3_2
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L15_1
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L15_1
  
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L2_3 = A0_2
    L2_3 = L2_3[A0_3]
    L3_3 = A0_2
    L3_3 = L3_3[A1_3]
    L4_3 = 1
    L5_3 = A1_2
    L5_3 = #L5_3
    L6_3 = 1
    for L7_3 = L4_3, L5_3, L6_3 do
      L8_3 = A2_2
      L8_3 = L8_3[L7_3]
      if L8_3 then
        L8_3 = A2_2
        L8_3 = L8_3[L7_3]
        if L8_3 == "ascending" then
          L8_3 = A1_2
          L8_3 = L8_3[L7_3]
          L8_3 = L2_3[L8_3]
          L9_3 = A1_2
          L9_3 = L9_3[L7_3]
          L9_3 = L3_3[L9_3]
          if L8_3 < L9_3 then
            L8_3 = true
            return L8_3
          else
            L8_3 = A1_2
            L8_3 = L8_3[L7_3]
            L8_3 = L2_3[L8_3]
            L9_3 = A1_2
            L9_3 = L9_3[L7_3]
            L9_3 = L3_3[L9_3]
            if L8_3 > L9_3 then
              L8_3 = false
              return L8_3
            else
            end
          end
        else
          L8_3 = A1_2
          L8_3 = L8_3[L7_3]
          L8_3 = L2_3[L8_3]
          L9_3 = A1_2
          L9_3 = L9_3[L7_3]
          L9_3 = L3_3[L9_3]
          if L8_3 < L9_3 then
            L8_3 = false
            return L8_3
          else
            L8_3 = A1_2
            L8_3 = L8_3[L7_3]
            L8_3 = L2_3[L8_3]
            L9_3 = A1_2
            L9_3 = L9_3[L7_3]
            L9_3 = L3_3[L9_3]
            if L8_3 > L9_3 then
              L8_3 = true
              return L8_3
            else
            end
          end
        end
      else
        L8_3 = A1_2
        L8_3 = L8_3[L7_3]
        L8_3 = L2_3[L8_3]
        L9_3 = A1_2
        L9_3 = L9_3[L7_3]
        L9_3 = L3_3[L9_3]
        if L8_3 < L9_3 then
          L8_3 = false
          return L8_3
        else
          L8_3 = A1_2
          L8_3 = L8_3[L7_3]
          L8_3 = L2_3[L8_3]
          L9_3 = A1_2
          L9_3 = L9_3[L7_3]
          L9_3 = L3_3[L9_3]
          if L8_3 > L9_3 then
            L8_3 = true
            return L8_3
          else
          end
        end
      end
    end
    L4_3 = true
    return L4_3
  end
  
  L3_2(L4_2, L5_2)
end

sortCardsWithProperties = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2.row
  L2_2 = L1_2.id
  L3_2 = L1_2
  L4_2 = nil
  L5_2 = nil
  L6_2 = 40
  L7_2 = 40
  if L2_2 == 1 then
    L6_2 = 50
    L7_2 = 32
    L8_2 = display
    L8_2 = L8_2.newText
    L9_2 = L1_1
    L9_2 = L9_2.Search
    L10_2 = 0
    L11_2 = 0
    L12_2 = Constants
    L12_2 = L12_2.fontForSubtitle
    L12_2 = L12_2()
    L13_2 = 13
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L4_2 = L8_2
  elseif L2_2 == 2 then
    L6_2 = 50
    L7_2 = 40
    L8_2 = display
    L8_2 = L8_2.newText
    L9_2 = L1_1
    L9_2 = L9_2["My Deals"]
    L10_2 = 0
    L11_2 = 0
    L12_2 = Constants
    L12_2 = L12_2.fontForSubtitle
    L12_2 = L12_2()
    L13_2 = 13
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L4_2 = L8_2
  else
    L6_2 = 50
    L7_2 = 31
    L8_2 = display
    L8_2 = L8_2.newText
    L9_2 = L1_1
    L9_2 = L9_2["My Sales"]
    L10_2 = 0
    L11_2 = 0
    L12_2 = Constants
    L12_2 = L12_2.fontForSubtitle
    L12_2 = L12_2()
    L13_2 = 13
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L4_2 = L8_2
  end
  L9_2 = L4_2
  L8_2 = L4_2.setFillColor
  L10_2 = Constants
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = L4_2.width
  L8_2 = L8_2 / 2
  L8_2 = 70 + L8_2
  L4_2.x = L8_2
  L8_2 = L1_2.height
  L8_2 = L8_2 * 0.5
  L4_2.y = L8_2
  L8_2 = display
  L8_2 = L8_2.newImageRect
  L9_2 = Constants
  L9_2 = L9_2.Path_Assets
  L10_2 = "Auction/FC-Auction-Side"
  L11_2 = L2_2
  L12_2 = ".png"
  L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
  L10_2 = L6_2
  L11_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L5_2 = L8_2
  L8_2 = L5_2.width
  L8_2 = L8_2 / 2
  L8_2 = 5 + L8_2
  L5_2.x = L8_2
  L8_2 = L1_2.height
  L8_2 = L8_2 * 0.5
  L5_2.y = L8_2
  L8_2 = display
  L8_2 = L8_2.newImageRect
  L9_2 = Constants
  L9_2 = L9_2.Path_Assets
  L10_2 = "cell_background.png"
  L9_2 = L9_2 .. L10_2
  L10_2 = L1_2.contentWidth
  L11_2 = L1_2.contentHeight
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = L1_2.contentWidth
  L9_2 = L9_2 / 2
  L8_2.x = L9_2
  L9_2 = L1_2.contentHeight
  L9_2 = L9_2 / 2
  L8_2.y = L9_2
  L9_2 = display
  L9_2 = L9_2.newImageRect
  L10_2 = Constants
  L10_2 = L10_2.Path_Assets
  L11_2 = "cell_background_selected.png"
  L10_2 = L10_2 .. L11_2
  L11_2 = L1_2.contentWidth
  L12_2 = L1_2.contentHeight
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = L1_2.contentWidth
  L10_2 = L10_2 / 2
  L9_2.x = L10_2
  L10_2 = L1_2.contentHeight
  L10_2 = L10_2 / 2
  L9_2.y = L10_2
  L9_2.isVisible = false
  L10_2 = L14_1
  L10_2 = L10_2[L2_2]
  L10_2.selectedView = L9_2
  L10_2 = L14_1
  L10_2 = L10_2[L2_2]
  L10_2 = L10_2.isSelected
  if L10_2 == true then
    L10_2 = log3
    L11_2 = "set selectedView visible"
    L10_2(L11_2)
    L9_2.isVisible = true
  end
  L11_2 = L3_2
  L10_2 = L3_2.insert
  L12_2 = L8_2
  L10_2(L11_2, L12_2)
  L11_2 = L3_2
  L10_2 = L3_2.insert
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L11_2 = L3_2
  L10_2 = L3_2.insert
  L12_2 = L4_2
  L10_2(L11_2, L12_2)
  L11_2 = L3_2
  L10_2 = L3_2.insert
  L12_2 = L5_2
  L10_2(L11_2, L12_2)
end

optionsRowRender = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.target
  L1_2 = L1_2.id
  L2_2 = A0_2.row
  L3_2 = A0_2.view
  L4_2 = A0_2.table
  L5_2 = A0_2.phase
  if L5_2 == "release" then
  else
    L5_2 = L16_1
    if L5_2 == L1_2 then
      return
    end
    L5_2 = L16_1
    if L5_2 ~= 0 then
      L5_2 = L14_1
      L6_2 = L16_1
      L5_2 = L5_2[L6_2]
      L5_2.isSelected = false
      L5_2 = L14_1
      L6_2 = L16_1
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.selectedView
      L5_2.isVisible = false
    end
    L5_2 = A0_2.target
    L5_2 = L5_2.id
    L16_1 = L5_2
    L5_2 = L14_1
    L6_2 = L16_1
    L5_2 = L5_2[L6_2]
    L5_2.isSelected = true
    L5_2 = L14_1
    L6_2 = L16_1
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.selectedView
    L5_2.isVisible = true
    L5_2 = setupContent
    L5_2()
  end
end

optionsRowTouch = L27_1

function L27_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = 1
  L1_2 = L18_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L18_1
    L4_2 = L4_2[L3_2]
    L5_2 = L4_2
    L4_2 = L4_2.hide
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L0_2 = contentTable
  L1_2 = L0_2
  L0_2 = L0_2.deleteAllRows
  L0_2(L1_2)
  L0_2 = nil
  L24_1 = L0_2
  L0_2 = nil
  L25_1 = L0_2
  L0_2 = nil
  L26_1 = L0_2
  L0_2 = L16_1
  if L0_2 == 1 then
    L0_2 = contentTable
    L1_2 = L0_2
    L0_2 = L0_2.insertRow
    L2_2 = {}
    L2_2.rowHeight = 42
    L2_2.id = -1
    L3_2 = {}
    L4_2 = {}
    L5_2 = 255
    L6_2 = 255
    L7_2 = 255
    L8_2 = 200
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L4_2[4] = L8_2
    L3_2.default = L4_2
    L4_2 = {}
    L5_2 = 0
    L6_2 = 0
    L7_2 = 0
    L8_2 = 1
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L4_2[4] = L8_2
    L3_2.over = L4_2
    L2_2.rowColor = L3_2
    L0_2(L1_2, L2_2)
    L0_2 = L3_1
    L0_2 = L0_2.show
    L1_2 = L1_1
    L1_2 = L1_2["Retrieving auction items"]
    L0_2(L1_2)
    L0_2 = L4_1
    L0_2 = L0_2.searchAuctions
    L1_2 = successToGetSearchItems
    L2_2 = failedToGetSearchItems
    L3_2 = 1
    L0_2(L1_2, L2_2, L3_2)
  else
    L0_2 = L16_1
    if L0_2 == 2 then
      L0_2 = L3_1
      L0_2 = L0_2.show
      L1_2 = L1_1
      L1_2 = L1_2["Retrieving auction items"]
      L0_2(L1_2)
      L0_2 = L4_1
      L0_2 = L0_2.loadMyParticipatingAuctionItems
      L1_2 = finishedFetchingContent
      L2_2 = failedToFetchContent
      L0_2(L1_2, L2_2)
    else
      L0_2 = L3_1
      L0_2 = L0_2.show
      L1_2 = L1_1
      L1_2 = L1_2["Retrieving auction items"]
      L0_2(L1_2)
      L0_2 = L4_1
      L0_2 = L0_2.loadMyAuctionItems
      L1_2 = finishedFetchingContent
      L2_2 = failedToFetchContent
      L0_2(L1_2, L2_2)
    end
  end
end

setupContent = L27_1

function L27_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L20_1 = A0_2
  L4_2 = log3
  L5_2 = "Selected base card id:"
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
  L4_2 = L3_1
  L4_2 = L4_2.show
  L5_2 = L1_1
  L5_2 = L5_2["Retrieving auction items"]
  L4_2(L5_2)
  L24_1 = A1_2
  L25_1 = A2_2
  L26_1 = A3_2
  L4_2 = L4_1
  L4_2 = L4_2.searchAuctions
  L5_2 = successToGetSearchItems
  L6_2 = failedToGetSearchItems
  L7_2 = 2
  L8_2 = A0_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end

didSelectSearchParams = L27_1

function L27_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = {}
  L3_2.category = A0_2
  L3_2.rarity = A1_2
  if A2_2 then
    L3_2.cheapest = 1
  else
    L3_2.cheapest = 2
  end
  L4_2 = L4_1
  L4_2 = L4_2.searchAuctions
  L5_2 = successToGetSearchItems
  L6_2 = failedToGetSearchItems
  L7_2 = 6
  L8_2 = nil
  L9_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end

searchByPrice = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2
  L1_2 = A0_2.row
  L2_2 = L1_2.id
  L3_2 = L1_2
  L4_2 = nil
  if L2_2 == -1 then
    L5_2 = display
    L5_2 = L5_2.newImageRect
    L6_2 = Constants
    L6_2 = L6_2.Path_Assets
    L7_2 = "cell_background.png"
    L6_2 = L6_2 .. L7_2
    L7_2 = L1_2.contentWidth
    L8_2 = L1_2.contentHeight
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = L1_2.contentWidth
    L6_2 = L6_2 / 2
    L5_2.x = L6_2
    L6_2 = L1_2.contentHeight
    L6_2 = L6_2 / 2
    L5_2.y = L6_2
    L6_2 = L1_2.contentWidth
    L6_2 = L6_2 - 200
    L6_2 = L6_2 / 5
    L8_2 = L3_2
    L7_2 = L3_2.insert
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = L12_1
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = {}
    L10_2 = L1_1
    L10_2 = L10_2.Fruit
    L9_2.label = L10_2
    L9_2.fontSize = 15
    L10_2 = Theme
    L10_2 = L10_2.colorsSet
    L10_2 = L10_2.blackColor
    L9_2.labelColor = L10_2
    L10_2 = Constants
    L10_2 = L10_2.Path_Assets
    L11_2 = "Auction/FC-Auction-button.png"
    L10_2 = L10_2 .. L11_2
    L9_2.defaultFile = L10_2
    L9_2.width = 50
    L9_2.height = 32
    
    function L10_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3
      L1_3 = L11_1
      L1_3 = L1_3.logEvent
      L2_3 = "Auction fruit search used"
      L1_3(L2_3)
      L1_3 = L18_1
      L2_3 = L16_1
      L1_3 = L1_3[L2_3]
      L2_3 = L1_3
      L1_3 = L1_3.hide
      L3_3 = false
      L1_3(L2_3, L3_3)
      L1_3 = L0_1
      L1_3 = L1_3.showOverlay
      L2_3 = "Scenes.CardSelectOverlay"
      L3_3 = {}
      L3_3.effect = "fade"
      L4_3 = {}
      L5_3 = didSelectSearchParams
      L4_3.onSelect = L5_3
      L5_3 = L1_1
      L5_3 = L5_3.Search
      L4_3.buttonText = L5_3
      L5_3 = L24_1
      L4_3.preSelectedFruitRowID = L5_3
      L5_3 = L25_1
      L4_3.preSelectedLevel = L5_3
      L5_3 = L26_1
      L4_3.preSelectedFruitID = L5_3
      L3_3.params = L4_3
      L1_3(L2_3, L3_3)
    end
    
    L9_2.onRelease = L10_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2.width
    L8_2 = L8_2 / 2
    L8_2 = L6_2 + L8_2
    L7_2.x = L8_2
    L8_2 = L1_2.contentHeight
    L8_2 = L8_2 / 2
    L7_2.y = L8_2
    L9_2 = L3_2
    L8_2 = L3_2.insert
    L10_2 = L7_2.view
    L8_2(L9_2, L10_2)
    L8_2 = L12_1
    L9_2 = L8_2
    L8_2 = L8_2.new
    L10_2 = {}
    L11_2 = L1_1
    L11_2 = L11_2.Power
    L10_2.label = L11_2
    L10_2.fontSize = 15
    L11_2 = Theme
    L11_2 = L11_2.colorsSet
    L11_2 = L11_2.blackColor
    L10_2.labelColor = L11_2
    L11_2 = Constants
    L11_2 = L11_2.Path_Assets
    L12_2 = "Auction/FC-Auction-button.png"
    L11_2 = L11_2 .. L12_2
    L10_2.defaultFile = L11_2
    L10_2.width = 50
    L10_2.height = 32
    
    function L11_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = L11_1
      L1_3 = L1_3.logEvent
      L2_3 = "Auction power search used"
      L1_3(L2_3)
      L1_3 = L3_1
      L1_3 = L1_3.show
      L2_3 = L1_1
      L2_3 = L2_3["Retrieving auction items"]
      L1_3(L2_3)
      L1_3 = L4_1
      L1_3 = L1_3.searchAuctions
      L2_3 = successToGetSearchItems
      L3_3 = failedToGetSearchItems
      L4_3 = 1
      L1_3(L2_3, L3_3, L4_3)
    end
    
    L10_2.onRelease = L11_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L7_2.x
    L10_2 = L7_2.width
    L10_2 = L10_2 / 2
    L9_2 = L9_2 + L10_2
    L9_2 = L9_2 + L6_2
    L10_2 = L8_2.width
    L10_2 = L10_2 / 2
    L9_2 = L9_2 + L10_2
    L8_2.x = L9_2
    L9_2 = L1_2.contentHeight
    L9_2 = L9_2 / 2
    L8_2.y = L9_2
    L10_2 = L3_2
    L9_2 = L3_2.insert
    L11_2 = L8_2.view
    L9_2(L10_2, L11_2)
    L9_2 = L12_1
    L10_2 = L9_2
    L9_2 = L9_2.new
    L11_2 = {}
    L12_2 = L1_1
    L12_2 = L12_2.Time
    L11_2.label = L12_2
    L11_2.fontSize = 15
    L12_2 = Theme
    L12_2 = L12_2.colorsSet
    L12_2 = L12_2.blackColor
    L11_2.labelColor = L12_2
    L12_2 = Constants
    L12_2 = L12_2.Path_Assets
    L13_2 = "Auction/FC-Auction-button.png"
    L12_2 = L12_2 .. L13_2
    L11_2.defaultFile = L12_2
    L11_2.width = 50
    L11_2.height = 32
    
    function L12_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = L11_1
      L1_3 = L1_3.logEvent
      L2_3 = "Auction time search used"
      L1_3(L2_3)
      L1_3 = L3_1
      L1_3 = L1_3.show
      L2_3 = L1_1
      L2_3 = L2_3["Retrieving auction items"]
      L1_3(L2_3)
      L1_3 = L4_1
      L1_3 = L1_3.searchAuctions
      L2_3 = successToGetSearchItems
      L3_3 = failedToGetSearchItems
      L4_3 = 3
      L1_3(L2_3, L3_3, L4_3)
    end
    
    L11_2.onRelease = L12_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = L8_2.x
    L11_2 = L8_2.width
    L11_2 = L11_2 / 2
    L10_2 = L10_2 + L11_2
    L10_2 = L10_2 + L6_2
    L11_2 = L9_2.width
    L11_2 = L11_2 / 2
    L10_2 = L10_2 + L11_2
    L9_2.x = L10_2
    L10_2 = L1_2.contentHeight
    L10_2 = L10_2 / 2
    L9_2.y = L10_2
    L11_2 = L3_2
    L10_2 = L3_2.insert
    L12_2 = L9_2.view
    L10_2(L11_2, L12_2)
    L10_2 = L12_1
    L11_2 = L10_2
    L10_2 = L10_2.new
    L12_2 = {}
    L13_2 = L1_1
    L13_2 = L13_2.Price
    L12_2.label = L13_2
    L12_2.fontSize = 15
    L13_2 = Theme
    L13_2 = L13_2.colorsSet
    L13_2 = L13_2.blackColor
    L12_2.labelColor = L13_2
    L13_2 = Constants
    L13_2 = L13_2.Path_Assets
    L14_2 = "Auction/FC-Auction-button.png"
    L13_2 = L13_2 .. L14_2
    L12_2.defaultFile = L13_2
    L12_2.width = 50
    L12_2.height = 32
    
    function L13_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3
      L1_3 = L11_1
      L1_3 = L1_3.logEvent
      L2_3 = "Auction price search used"
      L1_3(L2_3)
      L1_3 = L0_1
      L1_3 = L1_3.showOverlay
      L2_3 = "Scenes.AuctionSearchByPriceOverlay"
      L3_3 = {}
      L4_3 = {}
      L5_3 = searchByPrice
      L4_3.onSelect = L5_3
      L3_3.params = L4_3
      L1_3(L2_3, L3_3)
    end
    
    L12_2.onRelease = L13_2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = L9_2.x
    L12_2 = L9_2.width
    L12_2 = L12_2 / 2
    L11_2 = L11_2 + L12_2
    L11_2 = L11_2 + L6_2
    L12_2 = L10_2.width
    L12_2 = L12_2 / 2
    L11_2 = L11_2 + L12_2
    L10_2.x = L11_2
    L11_2 = L1_2.contentHeight
    L11_2 = L11_2 / 2
    L10_2.y = L11_2
    L12_2 = L3_2
    L11_2 = L3_2.insert
    L13_2 = L10_2.view
    L11_2(L12_2, L13_2)
  elseif L2_2 == -2 then
    L5_2 = display
    L5_2 = L5_2.newImageRect
    L6_2 = Constants
    L6_2 = L6_2.Path_Assets
    L7_2 = "cell_background.png"
    L6_2 = L6_2 .. L7_2
    L7_2 = L1_2.contentWidth
    L8_2 = L1_2.contentHeight
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = L1_2.contentWidth
    L6_2 = L6_2 / 2
    L5_2.x = L6_2
    L6_2 = L1_2.contentHeight
    L6_2 = L6_2 / 2
    L5_2.y = L6_2
    L7_2 = L3_2
    L6_2 = L3_2.insert
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = {}
    L7_2 = L1_1
    L7_2 = L7_2["There was error while trying to fetch auction items!"]
    L6_2.text = L7_2
    L7_2 = L1_2.width
    L7_2 = L7_2 - 10
    L6_2.width = L7_2
    L7_2 = L1_2.height
    L6_2.height = L7_2
    L7_2 = Constants
    L7_2 = L7_2.fontForSubtitle
    L7_2 = L7_2()
    L6_2.font = L7_2
    L6_2.fontSize = 13
    L6_2.align = "center"
    L7_2 = display
    L7_2 = L7_2.newText
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L9_2 = L7_2
    L8_2 = L7_2.setFillColor
    L10_2 = Constants
    L10_2 = L10_2.darkBlueColor
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L10_2()
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
    L8_2 = L7_2.width
    L8_2 = L8_2 / 2
    L7_2.x = L8_2
    L7_2.y = 25
    L9_2 = L3_2
    L8_2 = L3_2.insert
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  elseif L2_2 == -5 then
    L5_2 = display
    L5_2 = L5_2.newImageRect
    L6_2 = Constants
    L6_2 = L6_2.Path_Assets
    L7_2 = "cell_background.png"
    L6_2 = L6_2 .. L7_2
    L7_2 = L1_2.contentWidth
    L8_2 = L1_2.contentHeight
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = L1_2.contentWidth
    L6_2 = L6_2 / 2
    L5_2.x = L6_2
    L6_2 = L1_2.contentHeight
    L6_2 = L6_2 / 2
    L5_2.y = L6_2
    L7_2 = L3_2
    L6_2 = L3_2.insert
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = {}
    L7_2 = L1_1
    L7_2 = L7_2["No auction items were found"]
    L6_2.text = L7_2
    L7_2 = L1_2.width
    L7_2 = L7_2 - 10
    L6_2.width = L7_2
    L7_2 = L1_2.height
    L6_2.height = L7_2
    L7_2 = Constants
    L7_2 = L7_2.fontForSubtitle
    L7_2 = L7_2()
    L6_2.font = L7_2
    L6_2.fontSize = 13
    L6_2.align = "center"
    L7_2 = display
    L7_2 = L7_2.newText
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L9_2 = L7_2
    L8_2 = L7_2.setFillColor
    L10_2 = Constants
    L10_2 = L10_2.darkBlueColor
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L10_2()
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
    L8_2 = L7_2.width
    L8_2 = L8_2 / 2
    L7_2.x = L8_2
    L7_2.y = 25
    L9_2 = L3_2
    L8_2 = L3_2.insert
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  else
    L5_2 = L15_1
    L2_2 = L5_2[L2_2]
    L5_2 = display
    L5_2 = L5_2.newImageRect
    L6_2 = Constants
    L6_2 = L6_2.Path_Assets
    L7_2 = "Auction/Auction-cell"
    L8_2 = Constants
    L8_2 = L8_2.deviceWidthSpecificFilePostfix
    L8_2 = L8_2()
    L9_2 = ".png"
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
    L7_2 = L1_2.contentWidth
    L8_2 = 61
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = L1_2.contentWidth
    L6_2 = L6_2 / 2
    L5_2.x = L6_2
    L6_2 = L1_2.contentHeight
    L6_2 = L6_2 / 2
    L5_2.y = L6_2
    L7_2 = L3_2
    L6_2 = L3_2.insert
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = L17_1
    L6_2 = L6_2[L2_2]
    L7_2 = L5_1
    L7_2 = L7_2.baseCardWithId
    L8_2 = L6_2.baseId
    L7_2 = L7_2(L8_2)
    L8_2 = L1_2.contentWidth
    L9_2 = Constants
    L9_2 = L9_2.Path_Assets
    L10_2 = "Cards/"
    L11_2 = L7_2.image
    L12_2 = ".jpg"
    L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
    L10_2 = _imageQuality
    if L10_2 == "HD" then
      L10_2 = Constants
      L10_2 = L10_2.Path_Assets
      L11_2 = "Cards/"
      L12_2 = L7_2.image
      L13_2 = "-m.jpg"
      L9_2 = L10_2 .. L11_2 .. L12_2 .. L13_2
    end
    L10_2 = mainPlayer
    L10_2 = L10_2.isSeenCardWithId
    L11_2 = L7_2.id
    L10_2 = L10_2(L11_2)
    if not L10_2 then
      L10_2 = mainPlayer
      L10_2 = L10_2.haveCardWithId
      L11_2 = L7_2.id
      L10_2 = L10_2(L11_2)
      if not L10_2 then
        L10_2 = Constants
        L9_2 = L10_2.Path_MissingImage
      end
    end
    L10_2 = display
    L10_2 = L10_2.newGroup
    L10_2 = L10_2()
    L11_2 = L6_1
    L12_2 = L11_2
    L11_2 = L11_2.new
    L13_2 = L10_2
    L14_2 = L9_2
    L15_2 = 50
    L16_2 = 50
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    L11_2.x = 0
    L11_2.y = 0
    L12_2 = graphics
    L12_2 = L12_2.newMask
    L13_2 = Constants
    L13_2 = L13_2.Path_Assets
    L14_2 = "Auction/FC-auction-mask.png"
    L13_2 = L13_2 .. L14_2
    L12_2 = L12_2(L13_2)
    L14_2 = L10_2
    L13_2 = L10_2.setMask
    L15_2 = L12_2
    L13_2(L14_2, L15_2)
    L10_2.maskX = 0
    L10_2.maskY = 0
    L14_2 = L3_2
    L13_2 = L3_2.insert
    L15_2 = L10_2
    L13_2(L14_2, L15_2)
    L13_2 = Constants
    L13_2 = L13_2.deviceWidthSpecificFilePostfix
    L13_2 = L13_2()
    if L13_2 == "568" then
      L13_2 = L8_2 * 0.084
      L10_2.x = L13_2
    else
      L13_2 = L8_2 * 0.084
      L13_2 = L13_2 + 3
      L10_2.x = L13_2
    end
    L10_2.y = 30.5
    L13_2 = display
    L13_2 = L13_2.newText
    L14_2 = L3_2
    L15_2 = L7_2.name
    L16_2 = 0
    L17_2 = 0
    L18_2 = Constants
    L18_2 = L18_2.fontForSubtitle
    L18_2 = L18_2()
    L19_2 = 10
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L15_2 = L13_2
    L14_2 = L13_2.setFillColor
    L16_2 = Constants
    L16_2 = L16_2.darkBlueColor
    L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L16_2()
    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
    L14_2 = L8_2 * 0.195
    L15_2 = L13_2.width
    L15_2 = L15_2 / 2
    L14_2 = L14_2 + L15_2
    L13_2.x = L14_2
    L13_2.y = 12
    L14_2 = L7_1
    L14_2 = L14_2.shortenLongNumber
    L15_2 = ""
    L16_2 = L6_2.cardPower
    L15_2 = L15_2 .. L16_2
    L14_2 = L14_2(L15_2)
    L15_2 = L1_1
    L15_2 = L15_2.adjustNumber
    L16_2 = L14_2
    L15_2 = L15_2(L16_2)
    L14_2 = L15_2
    L15_2 = display
    L15_2 = L15_2.newText
    L16_2 = L3_2
    L17_2 = L1_1
    L17_2 = L17_2.adjustNumber
    L18_2 = L14_2
    L17_2 = L17_2(L18_2)
    L18_2 = 0
    L19_2 = 0
    L20_2 = Constants
    L20_2 = L20_2.fontForSubtitle
    L20_2 = L20_2()
    L21_2 = 10
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L17_2 = L15_2
    L16_2 = L15_2.setFillColor
    L18_2 = Constants
    L18_2 = L18_2.darkBlueColor
    L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L18_2()
    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
    L16_2 = L8_2 * 0.221
    L17_2 = L15_2.width
    L17_2 = L17_2 / 2
    L16_2 = L16_2 + L17_2
    L15_2.x = L16_2
    L15_2.y = 36
    L16_2 = nil
    L17_2 = L16_1
    if L17_2 ~= 3 then
      L17_2 = L6_2.ownerName
      L18_2 = L7_1
      L18_2 = L18_2.stringUTFLength
      L19_2 = L17_2
      L18_2 = L18_2(L19_2)
      if 20 < L18_2 then
        L18_2 = L7_1
        L18_2 = L18_2.utf8sub
        L19_2 = L17_2
        L20_2 = 1
        L21_2 = 20
        L18_2 = L18_2(L19_2, L20_2, L21_2)
        L19_2 = "..."
        L17_2 = L18_2 .. L19_2
      end
      L18_2 = display
      L18_2 = L18_2.newText
      L19_2 = L3_2
      L20_2 = L1_1
      L20_2 = L20_2.Owner
      L21_2 = ": "
      L22_2 = L17_2
      L20_2 = L20_2 .. L21_2 .. L22_2
      L21_2 = 0
      L22_2 = 0
      L23_2 = Constants
      L23_2 = L23_2.fontForSubtitle
      L23_2 = L23_2()
      L24_2 = 8
      L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L16_2 = L18_2
      L19_2 = L16_2
      L18_2 = L16_2.setFillColor
      L20_2 = Constants
      L20_2 = L20_2.darkGreyColor
      L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L20_2()
      L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
      L18_2 = L8_2 * 0.4
      L19_2 = L16_2.width
      L19_2 = L19_2 / 2
      L18_2 = L18_2 + L19_2
      L16_2.x = L18_2
      L16_2.y = 14
    end
    L17_2 = L6_2.lastBidderName
    L18_2 = L7_1
    L18_2 = L18_2.stringUTFLength
    L19_2 = L17_2
    L18_2 = L18_2(L19_2)
    if 20 < L18_2 then
      L18_2 = L7_1
      L18_2 = L18_2.utf8sub
      L19_2 = L6_2.lastBidderName
      L20_2 = 1
      L21_2 = 20
      L18_2 = L18_2(L19_2, L20_2, L21_2)
      L19_2 = "..."
      L17_2 = L18_2 .. L19_2
    end
    L18_2 = display
    L18_2 = L18_2.newText
    L19_2 = L3_2
    L20_2 = L1_1
    L20_2 = L20_2["Top bidder"]
    L21_2 = ": "
    L22_2 = L17_2
    L20_2 = L20_2 .. L21_2 .. L22_2
    L21_2 = 0
    L22_2 = 0
    L23_2 = Constants
    L23_2 = L23_2.fontForSubtitle
    L23_2 = L23_2()
    L24_2 = 8
    L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    L20_2 = L18_2
    L19_2 = L18_2.setFillColor
    L21_2 = Constants
    L21_2 = L21_2.darkGreyColor
    L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L21_2()
    L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
    L19_2 = L8_2 * 0.4
    L20_2 = L18_2.width
    L20_2 = L20_2 / 2
    L19_2 = L19_2 + L20_2
    L18_2.x = L19_2
    L18_2.y = 28
    L19_2 = nil
    L20_2 = getWidthAndHeightOfButton
    L20_2 = L20_2()
    L21_2 = mainPlayer
    L21_2 = L21_2.unifiedGoldIcon
    if L21_2 then
      L21_2 = nil
      L22_2 = nil
      L23_2 = nil
      L24_2 = L6_2.status
      if L24_2 == 0 then
        L24_2 = Constants
        L24_2 = L24_2.darkGreyColor
        L24_2, L25_2, L26_2 = L24_2()
        L23_2 = L26_2
        L22_2 = L25_2
        L21_2 = L24_2
      else
        L24_2 = Constants
        L24_2 = L24_2.darkBlueColor
        L24_2, L25_2, L26_2 = L24_2()
        L23_2 = L26_2
        L22_2 = L25_2
        L21_2 = L24_2
      end
      L24_2 = {}
      L25_2 = L6_2.bidPrice
      L24_2.value = L25_2
      L25_2 = Constants
      L25_2 = L25_2.Path_Assets
      L26_2 = "Navbar/FC-navbar-gold.png"
      L25_2 = L25_2 .. L26_2
      L24_2.image = L25_2
      L24_2.widthIm = 20
      L24_2.heightIm = 20
      L25_2 = Constants
      L25_2 = L25_2.fontForTitle
      L25_2 = L25_2()
      L24_2.font = L25_2
      L24_2.fontSize = 15
      L24_2.mode = "L"
      L24_2.gap = 6
      L25_2 = {}
      L26_2 = L21_2
      L27_2 = L22_2
      L28_2 = L23_2
      L25_2[1] = L26_2
      L25_2[2] = L27_2
      L25_2[3] = L28_2
      L24_2.labelColor = L25_2
      L25_2 = L13_1
      L26_2 = L25_2
      L25_2 = L25_2.new
      L27_2 = L24_2
      L25_2 = L25_2(L26_2, L27_2)
      L19_2 = L25_2
      L26_2 = L3_2
      L25_2 = L3_2.insert
      L27_2 = L19_2.view
      L25_2(L26_2, L27_2)
      L25_2 = L8_2 * 0.859
      L26_2 = L20_2 / 2
      L25_2 = L25_2 - L26_2
      L26_2 = L19_2.width
      L26_2 = L26_2 / 2
      L25_2 = L25_2 + L26_2
      L26_2 = L20_2 * 0.1
      L25_2 = L25_2 + L26_2
      L19_2.x = L25_2
      L19_2.y = 19
    else
      L21_2 = L7_1
      L21_2 = L21_2.stringThousandCommaSeperated
      L22_2 = ""
      L23_2 = L6_2.bidPrice
      L22_2 = L22_2 .. L23_2
      L21_2 = L21_2(L22_2)
      L22_2 = L7_1
      L22_2 = L22_2.addKForLargeNumber
      L23_2 = L21_2
      L22_2 = L22_2(L23_2)
      L21_2 = L22_2
      L22_2 = L1_1
      L22_2 = L22_2.adjustNumber
      L23_2 = L21_2
      L22_2 = L22_2(L23_2)
      L21_2 = L22_2
      L22_2 = display
      L22_2 = L22_2.newText
      L23_2 = L3_2
      L24_2 = L21_2
      L25_2 = "G"
      L24_2 = L24_2 .. L25_2
      L25_2 = 0
      L26_2 = 0
      L27_2 = Constants
      L27_2 = L27_2.fontForTitle
      L27_2 = L27_2()
      L28_2 = 15
      L22_2 = L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
      L19_2 = L22_2
      L22_2 = L6_2.status
      if L22_2 == 0 then
        L23_2 = L19_2
        L22_2 = L19_2.setFillColor
        L24_2 = Constants
        L24_2 = L24_2.darkGreyColor
        L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L24_2()
        L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
      else
        L23_2 = L19_2
        L22_2 = L19_2.setFillColor
        L24_2 = Constants
        L24_2 = L24_2.darkBlueColor
        L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L24_2()
        L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
      end
      L22_2 = L8_2 * 0.859
      L19_2.x = L22_2
      L19_2.y = 19
    end
    L21_2 = os
    L21_2 = L21_2.time
    L21_2 = L21_2()
    L22_2 = L6_2.createdAt
    L21_2 = L21_2 - L22_2
    L22_2 = mainPlayer
    L22_2 = L22_2.timeDelta
    L21_2 = L21_2 + L22_2
    L21_2 = 86400 - L21_2
    L22_2 = nil
    L23_2 = nil
    if L21_2 < 0 then
      L22_2 = "00"
      L23_2 = "00"
      L6_2.status = 0
    else
      L24_2 = math
      L24_2 = L24_2.floor
      L25_2 = L21_2 / 3600
      L24_2 = L24_2(L25_2)
      L22_2 = L24_2
      L24_2 = math
      L24_2 = L24_2.floor
      L25_2 = L22_2 * 60
      L25_2 = L25_2 * 60
      L25_2 = L21_2 - L25_2
      L25_2 = L25_2 / 60
      L24_2 = L24_2(L25_2)
      L23_2 = L24_2
      if L22_2 < 0 then
        L22_2 = 0
      end
      if L23_2 < 0 then
        L23_2 = 0
      end
      if L23_2 < 10 then
        L24_2 = "0"
        L25_2 = L23_2
        L23_2 = L24_2 .. L25_2
      end
      if L22_2 < 10 then
        L24_2 = "0"
        L25_2 = L22_2
        L22_2 = L24_2 .. L25_2
      end
    end
    L24_2 = L1_1
    L24_2 = L24_2.adjustNumber
    L25_2 = L23_2
    L24_2 = L24_2(L25_2)
    L23_2 = L24_2
    L24_2 = L1_1
    L24_2 = L24_2.adjustNumber
    L25_2 = L22_2
    L24_2 = L24_2(L25_2)
    L22_2 = L24_2
    L24_2 = display
    L24_2 = L24_2.newText
    L25_2 = L3_2
    L26_2 = L22_2
    L27_2 = ":"
    L28_2 = L23_2
    L26_2 = L26_2 .. L27_2 .. L28_2
    L27_2 = 0
    L28_2 = 0
    L29_2 = Constants
    L29_2 = L29_2.fontForSubtitle
    L29_2 = L29_2()
    L30_2 = 13
    L24_2 = L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
    L25_2 = L6_2.status
    if L25_2 == 0 then
      L25_2 = L1_1
      L25_2 = L25_2["Auction Closed"]
      L24_2.text = L25_2
      L25_2 = L6_2.lastBidderId
      L26_2 = mainPlayer
      L26_2 = L26_2.id
      if L25_2 == L26_2 then
        L26_2 = L5_2
        L25_2 = L5_2.setFillColor
        L27_2 = 0.9
        L28_2 = 1
        L29_2 = 0.9
        L25_2(L26_2, L27_2, L28_2, L29_2)
      else
        L26_2 = L5_2
        L25_2 = L5_2.setFillColor
        L27_2 = 0.9
        L25_2(L26_2, L27_2)
      end
    end
    L26_2 = L24_2
    L25_2 = L24_2.setFillColor
    L27_2 = Constants
    L27_2 = L27_2.darkBlueColor
    L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2 = L27_2()
    L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2)
    L25_2 = L8_2 * 0.445
    L26_2 = L24_2.width
    L26_2 = L26_2 / 2
    L25_2 = L25_2 + L26_2
    L24_2.x = L25_2
    L24_2.y = 51
    L25_2 = Constants
    L25_2 = L25_2.deviceWidthSpecificFilePostfix
    L25_2 = L25_2()
    if L25_2 == "568" then
      L25_2 = L8_2 * 0.162
      L26_2 = L13_2.width
      L26_2 = L26_2 / 2
      L25_2 = L25_2 + L26_2
      L13_2.x = L25_2
      L25_2 = L8_2 * 0.192
      L26_2 = L15_2.width
      L26_2 = L26_2 / 2
      L25_2 = L25_2 + L26_2
      L15_2.x = L25_2
      L25_2 = L8_2 * 0.43
      L26_2 = L24_2.width
      L26_2 = L26_2 / 2
      L25_2 = L25_2 + L26_2
      L24_2.x = L25_2
    end
    L25_2 = L6_2.status
    if L25_2 == 1 then
      L25_2 = nil
      L26_2 = nil
      L27_2 = Constants
      L27_2 = L27_2.deviceWidthSpecificFilePostfix
      L27_2 = L27_2()
      if L27_2 == "480" then
        L25_2 = 70
        L26_2 = 22
      else
        L27_2 = Constants
        L27_2 = L27_2.deviceWidthSpecificFilePostfix
        L27_2 = L27_2()
        if L27_2 == "512" then
          L25_2 = 72
          L26_2 = 22
        else
          L25_2 = 91
          L26_2 = 22
        end
      end
      L27_2 = L16_1
      if L27_2 ~= 1 then
        L27_2 = L16_1
        if L27_2 ~= 2 then
          goto lbl_903
        end
      end
      L27_2 = L4_1
      L27_2 = L27_2.bidPriceForCardWithPower
      L28_2 = L6_2.cardPower
      L27_2 = L27_2(L28_2)
      L4_2 = L27_2
      L27_2 = L7_1
      L27_2 = L27_2.shortenLongNumber
      L28_2 = ""
      L29_2 = L4_2
      L28_2 = L28_2 .. L29_2
      L27_2 = L27_2(L28_2)
      L28_2 = L1_1
      L28_2 = L28_2.adjustNumber
      L29_2 = L27_2
      L28_2 = L28_2(L29_2)
      L27_2 = L28_2
      L28_2 = mainPlayer
      L28_2 = L28_2.unifiedGoldIcon
      if L28_2 then
        L28_2 = L1_1
        L28_2 = L28_2.Bid
        L29_2 = " +"
        L30_2 = L27_2
        L27_2 = L28_2 .. L29_2 .. L30_2
      else
        L28_2 = L1_1
        L28_2 = L28_2.Bid
        L29_2 = " +"
        L30_2 = L27_2
        L31_2 = "G"
        L27_2 = L28_2 .. L29_2 .. L30_2 .. L31_2
      end
      L28_2 = 9
      L29_2 = L7_1
      L29_2 = L29_2.stringUTFLength
      L30_2 = L27_2
      L29_2 = L29_2(L30_2)
      if 15 < L29_2 then
        L29_2 = Constants
        L29_2 = L29_2.deviceWidthSpecificFilePostfix
        L29_2 = L29_2()
        if L29_2 == "480" then
          L28_2 = 8
        end
      end
      L29_2 = L12_1
      L30_2 = L29_2
      L29_2 = L29_2.new
      L31_2 = {}
      L31_2.label = L27_2
      L31_2.fontSize = L28_2
      L32_2 = Theme
      L32_2 = L32_2.colorsSet
      L32_2 = L32_2.whiteColor
      L31_2.labelColor = L32_2
      L32_2 = Constants
      L32_2 = L32_2.Path_Assets
      L33_2 = "Auction/Auction"
      L34_2 = Constants
      L34_2 = L34_2.deviceWidthSpecificFilePostfix
      L34_2 = L34_2()
      L35_2 = "B2.png"
      L32_2 = L32_2 .. L33_2 .. L34_2 .. L35_2
      L31_2.defaultFile = L32_2
      L31_2.width = L25_2
      L31_2.height = L26_2
      L31_2.emboss = false
      L29_2 = L29_2(L30_2, L31_2)
      
      function L30_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = L29_2
        L0_3 = L0_3.isActive
        if L0_3 then
          L0_3 = mainPlayer
          L1_3 = L0_3
          L0_3 = L0_3.checkPlayerCurrency
          L2_3 = L4_2
          L3_3 = L6_2
          L3_3 = L3_3.bidPrice
          L2_3 = L2_3 + L3_3
          L0_3 = L0_3(L1_3, L2_3)
          if L0_3 then
            L0_3 = L3_1
            L0_3 = L0_3.show
            L1_3 = L1_1
            L1_3 = L1_3["Placing bid..."]
            L0_3(L1_3)
            L0_3 = L6_2
            L1_3 = L0_3
            L0_3 = L0_3.bid
            L2_3 = successToBidAuction
            L3_3 = failedToBidAuction
            L0_3(L1_3, L2_3, L3_3)
          end
        end
      end
      
      L29_2.onRelease = L30_2
      L29_2.isActive = true
      L30_2 = L8_2 * 0.859
      L29_2.x = L30_2
      L29_2.y = 47
      L31_2 = L3_2
      L30_2 = L3_2.insert
      L32_2 = L29_2.view
      L30_2(L31_2, L32_2)
      L30_2 = mainPlayer
      L30_2 = L30_2.unifiedGoldIcon
      if L30_2 then
        L30_2 = L29_2.x
        L31_2 = L29_2.width
        L31_2 = L31_2 / 2
        L30_2 = L30_2 - L31_2
        L31_2 = L19_2.width
        L31_2 = L31_2 / 2
        L30_2 = L30_2 + L31_2
        L31_2 = L29_2.width
        L31_2 = L31_2 * 0.1
        L30_2 = L30_2 + L31_2
        L19_2.x = L30_2
      end
      L30_2 = L6_2.lastBidderId
      L31_2 = mainPlayer
      L31_2 = L31_2.id
      if L30_2 == L31_2 then
        L29_2.alpha = 0.5
        L31_2 = L29_2
        L30_2 = L29_2.setEnabled
        L32_2 = false
        L30_2(L31_2, L32_2)
        L29_2.isActive = false
      end
      goto lbl_947
      ::lbl_903::
      L27_2 = L12_1
      L28_2 = L27_2
      L27_2 = L27_2.new
      L29_2 = {}
      L30_2 = L1_1
      L30_2 = L30_2["Sell Now"]
      L29_2.label = L30_2
      L29_2.fontSize = 10
      L30_2 = Theme
      L30_2 = L30_2.colorsSet
      L30_2 = L30_2.whiteColor
      L29_2.labelColor = L30_2
      L30_2 = Constants
      L30_2 = L30_2.Path_Assets
      L31_2 = "Auction/Auction"
      L32_2 = Constants
      L32_2 = L32_2.deviceWidthSpecificFilePostfix
      L32_2 = L32_2()
      L33_2 = "B2.png"
      L30_2 = L30_2 .. L31_2 .. L32_2 .. L33_2
      L29_2.defaultFile = L30_2
      L30_2 = Constants
      L30_2 = L30_2.Path_Assets
      L31_2 = "Auction/Auction"
      L32_2 = Constants
      L32_2 = L32_2.deviceWidthSpecificFilePostfix
      L32_2 = L32_2()
      L33_2 = "B2-pressed.png"
      L30_2 = L30_2 .. L31_2 .. L32_2 .. L33_2
      L29_2.overFile = L30_2
      L29_2.width = L25_2
      L29_2.height = L26_2
      L29_2.emboss = false
      L27_2 = L27_2(L28_2, L29_2)
      
      function L28_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = L3_1
        L0_3 = L0_3.show
        L1_3 = L1_1
        L1_3 = L1_3["Selling card..."]
        L0_3(L1_3)
        L0_3 = L6_2
        L1_3 = L0_3
        L0_3 = L0_3.sellNow
        L2_3 = successToSellAuction
        L3_3 = failedToSellAuction
        L0_3(L1_3, L2_3, L3_3)
      end
      
      L27_2.onRelease = L28_2
      L28_2 = L8_2 * 0.859
      L27_2.x = L28_2
      L27_2.y = 47
      L29_2 = L3_2
      L28_2 = L3_2.insert
      L30_2 = L27_2.view
      L28_2(L29_2, L30_2)
    end
    ::lbl_947::
  end
end

contentRowRender = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.target
  L2_2 = A0_2.target
  L2_2 = L2_2.id
  L3_2 = A0_2.phase
  if L3_2 == "release" then
  elseif 0 < L2_2 then
    L3_2 = L15_1
    L2_2 = L3_2[L2_2]
    L3_2 = L17_1
    L3_2 = L3_2[L2_2]
    L4_2 = log3
    L5_2 = "item is:"
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = L18_1
    L5_2 = L16_1
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.view
    L4_2 = L4_2.isVisible
    if not L4_2 then
      L4_2 = 20
      L5_2 = Constants
      L5_2 = L5_2.deviceWidthSpecificFilePostfix
      L5_2 = L5_2()
      if L5_2 == "480" then
        L4_2 = 120
      else
        L5_2 = Constants
        L5_2 = L5_2.deviceWidthSpecificFilePostfix
        L5_2 = L5_2()
        if L5_2 == "512" then
          L4_2 = 120
        else
          L4_2 = 80
        end
      end
      L5_2 = Constants
      L5_2 = L5_2.deviceHeightSpecificFilePostfix
      L5_2 = L5_2()
      if L5_2 == "360" then
        L5_2 = 30
        L21_1 = L5_2
      end
      L5_2 = L16_1
      if L5_2 == 1 then
        L5_2 = L18_1
        L6_2 = L16_1
        L5_2 = L5_2[L6_2]
        L6_2 = L5_2
        L5_2 = L5_2.changeMoreViewPositionAndData
        L7_2 = L3_2
        L8_2 = L1_2.x
        L9_2 = L1_2.width
        L9_2 = L9_2 / 2
        L8_2 = L8_2 + L9_2
        L8_2 = L8_2 + L4_2
        L9_2 = contentTable
        L10_2 = L9_2
        L9_2 = L9_2.getContentPosition
        L9_2 = L9_2(L10_2)
        L10_2 = L1_2.y
        L9_2 = L9_2 + L10_2
        L10_2 = L1_2.height
        L9_2 = L9_2 + L10_2
        L10_2 = L18_1
        L11_2 = L16_1
        L10_2 = L10_2[L11_2]
        L10_2 = L10_2.height
        L10_2 = 2 * L10_2
        L9_2 = L9_2 + L10_2
        L5_2(L6_2, L7_2, L8_2, L9_2)
      else
        L5_2 = L18_1
        L6_2 = L16_1
        L5_2 = L5_2[L6_2]
        L6_2 = L5_2
        L5_2 = L5_2.changeMoreViewPositionAndData
        L7_2 = L3_2
        L8_2 = L1_2.x
        L9_2 = L1_2.width
        L9_2 = L9_2 / 2
        L8_2 = L8_2 + L9_2
        L8_2 = L8_2 + L4_2
        L9_2 = contentTable
        L10_2 = L9_2
        L9_2 = L9_2.getContentPosition
        L9_2 = L9_2(L10_2)
        L10_2 = L1_2.y
        L9_2 = L9_2 + L10_2
        L10_2 = L18_1
        L11_2 = L16_1
        L10_2 = L10_2[L11_2]
        L10_2 = L10_2.height
        L10_2 = 6 * L10_2
        L9_2 = L9_2 + L10_2
        L10_2 = L21_1
        L9_2 = L9_2 + L10_2
        L5_2(L6_2, L7_2, L8_2, L9_2)
      end
    else
      L4_2 = L18_1
      L5_2 = L16_1
      L4_2 = L4_2[L5_2]
      L5_2 = L4_2
      L4_2 = L4_2.hide
      L6_2 = false
      L4_2(L5_2, L6_2)
    end
  end
end

contentRowTouch = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L4_1
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = A0_2.message
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L17_1
  L3_2 = A0_2.message
  L3_2 = L3_2.id
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L2_2 = L17_1
    L3_2 = A0_2.message
    L3_2 = L3_2.id
    L2_2[L3_2] = L1_2
  end
  L2_2 = contentTable
  L3_2 = L2_2
  L2_2 = L2_2.reloadData
  L2_2(L3_2)
end

newBidForAuction = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.phase
  if L1_2 == "moved" then
    L1_2 = L18_1
    L2_2 = L16_1
    L1_2 = L1_2[L2_2]
    L2_2 = L1_2
    L1_2 = L1_2.hide
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end

contentTableListener = L27_1

function L27_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = log3
  L2_2 = "Sell"
  L3_2 = "Sell Auction is successful"
  L1_2(L2_2, L3_2)
  L1_2 = log3
  L2_2 = "calling reload data"
  L1_2(L2_2)
  L1_2 = contentTable
  L2_2 = L1_2
  L1_2 = L1_2.reloadData
  L1_2(L2_2)
  L1_2 = L19_1
  L2_2 = L1_2
  L1_2 = L1_2.updateGold
  L3_2 = true
  L1_2(L2_2, L3_2)
end

successToSellAuction = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "Sell"
  L3_2 = L1_1
  L3_2 = L3_2.localizedString
  L4_2 = "Failed to sell card, with error:"
  L5_2 = {}
  L6_2 = L1_1
  L6_2 = L6_2[A0_2]
  L5_2.error = L6_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end

failedToSellAuction = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = log3
  L2_2 = "Follow"
  L3_2 = "Follow is successful"
  L1_2(L2_2, L3_2)
  L1_2 = L9_1
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = L1_1
  L3_2 = L3_2["Auction added to 'My Deals' list"]
  L4_2 = nil
  L5_2 = nil
  L6_2 = nil
  L7_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = L9_1
  L1_2 = L1_2.showNotifications
  L1_2()
end

successToFollowAuction = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "Follow"
  L3_2 = L1_1
  L3_2 = L3_2.localizedString
  L4_2 = "Failed to follow auction, with error:"
  L5_2 = {}
  L6_2 = L1_1
  L6_2 = L6_2[A0_2]
  L5_2.error = L6_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end

failedToFollowAuction = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = log3
  L2_2 = "Bid"
  L3_2 = "Bid is successful"
  L1_2(L2_2, L3_2)
  L1_2 = L9_1
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = L1_1
  L3_2 = L3_2["Bid was successfully posted"]
  L4_2 = nil
  L5_2 = nil
  L6_2 = nil
  L7_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = L9_1
  L1_2 = L1_2.showNotifications
  L1_2()
  L1_2 = log3
  L2_2 = "calling reload data"
  L1_2(L2_2)
  L1_2 = contentTable
  L2_2 = L1_2
  L1_2 = L1_2.reloadData
  L1_2(L2_2)
  L1_2 = L19_1
  L2_2 = L1_2
  L1_2 = L1_2.updateGold
  L3_2 = true
  L1_2(L2_2, L3_2)
end

successToBidAuction = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "Bid"
  L3_2 = L1_1
  L3_2 = L3_2.localizedString
  L4_2 = "Failed to post bid, with error:"
  L5_2 = {}
  L6_2 = L1_1
  L6_2 = L6_2[A0_2]
  L5_2.error = L6_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end

failedToBidAuction = L27_1

function L27_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = L3_1
  L2_2 = L2_2.hide
  L2_2()
  L17_1 = A0_2
  L2_2 = contentTable
  L3_2 = L2_2
  L2_2 = L2_2.deleteAllRows
  L2_2(L3_2)
  L2_2 = contentTable
  L3_2 = L2_2
  L2_2 = L2_2.insertRow
  L4_2 = {}
  L4_2.rowHeight = 42
  L4_2.id = -1
  L5_2 = {}
  L6_2 = {}
  L7_2 = 255
  L8_2 = 255
  L9_2 = 255
  L10_2 = 200
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L5_2.default = L6_2
  L6_2 = {}
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 1
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L5_2.over = L6_2
  L4_2.rowColor = L5_2
  L2_2(L3_2, L4_2)
  if A1_2 == 3 then
    L2_2 = sortCardsWithProperty
    L3_2 = L17_1
    L4_2 = "createdAt"
    L5_2 = "ascending"
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = sortCardsWithProperty
    L3_2 = L17_1
    L4_2 = "power"
    L5_2 = "descendig"
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L15_1
  L2_2 = #L2_2
  if L2_2 <= 0 then
    L2_2 = contentTable
    L3_2 = L2_2
    L2_2 = L2_2.insertRow
    L4_2 = {}
    L4_2.rowHeight = 42
    L4_2.id = -5
    L5_2 = {}
    L6_2 = {}
    L7_2 = 255
    L8_2 = 255
    L9_2 = 255
    L10_2 = 200
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L6_2[3] = L9_2
    L6_2[4] = L10_2
    L5_2.default = L6_2
    L6_2 = {}
    L7_2 = 255
    L8_2 = 255
    L9_2 = 255
    L10_2 = 200
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L6_2[3] = L9_2
    L6_2[4] = L10_2
    L5_2.over = L6_2
    L4_2.rowColor = L5_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = pairs
    L3_2 = L15_1
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = contentTable
      L8_2 = L7_2
      L7_2 = L7_2.insertRow
      L9_2 = {}
      L9_2.rowHeight = 61
      L9_2.id = L5_2
      L10_2 = {}
      L11_2 = {}
      L12_2 = 255
      L13_2 = 255
      L14_2 = 255
      L15_2 = 200
      L11_2[1] = L12_2
      L11_2[2] = L13_2
      L11_2[3] = L14_2
      L11_2[4] = L15_2
      L10_2.default = L11_2
      L11_2 = {}
      L12_2 = 255
      L13_2 = 255
      L14_2 = 255
      L15_2 = 200
      L11_2[1] = L12_2
      L11_2[2] = L13_2
      L11_2[3] = L14_2
      L11_2[4] = L15_2
      L10_2.over = L11_2
      L9_2.rowColor = L10_2
      L7_2(L8_2, L9_2)
    end
  end
end

successToGetSearchItems = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = log3
  L2_2 = " error for get search items : "
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = contentTable
  L2_2 = L1_2
  L1_2 = L1_2.deleteAllRows
  L1_2(L2_2)
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = contentTable
  L2_2 = L1_2
  L1_2 = L1_2.insertRow
  L3_2 = {}
  L3_2.rowHeight = 42
  L3_2.id = -2
  L4_2 = {}
  L5_2 = {}
  L6_2 = 255
  L7_2 = 255
  L8_2 = 255
  L9_2 = 200
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L4_2.default = L5_2
  L5_2 = {}
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L9_2 = 1
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L4_2.over = L5_2
  L3_2.rowColor = L4_2
  L1_2(L2_2, L3_2)
end

failedToGetSearchItems = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L17_1 = A0_2
  L1_2 = sortAuctionItems
  L2_2 = L17_1
  L1_2(L2_2)
  L1_2 = L15_1
  L1_2 = #L1_2
  if L1_2 <= 0 then
    L1_2 = contentTable
    L2_2 = L1_2
    L1_2 = L1_2.insertRow
    L3_2 = {}
    L3_2.rowHeight = 42
    L3_2.id = -5
    L4_2 = {}
    L5_2 = {}
    L6_2 = 255
    L7_2 = 255
    L8_2 = 255
    L9_2 = 200
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L5_2[3] = L8_2
    L5_2[4] = L9_2
    L4_2.default = L5_2
    L5_2 = {}
    L6_2 = 255
    L7_2 = 255
    L8_2 = 255
    L9_2 = 200
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L5_2[3] = L8_2
    L5_2[4] = L9_2
    L4_2.over = L5_2
    L3_2.rowColor = L4_2
    L1_2(L2_2, L3_2)
  end
  L1_2 = pairs
  L2_2 = L15_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = contentTable
    L7_2 = L6_2
    L6_2 = L6_2.insertRow
    L8_2 = {}
    L8_2.rowHeight = 61
    L8_2.id = L4_2
    L9_2 = {}
    L10_2 = {}
    L11_2 = 255
    L12_2 = 255
    L13_2 = 255
    L14_2 = 200
    L10_2[1] = L11_2
    L10_2[2] = L12_2
    L10_2[3] = L13_2
    L10_2[4] = L14_2
    L9_2.default = L10_2
    L10_2 = {}
    L11_2 = 255
    L12_2 = 255
    L13_2 = 255
    L14_2 = 200
    L10_2[1] = L11_2
    L10_2[2] = L12_2
    L10_2[3] = L13_2
    L10_2[4] = L14_2
    L9_2.over = L10_2
    L8_2.rowColor = L9_2
    L6_2(L7_2, L8_2)
  end
end

finishedFetchingContent = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = contentTable
  L2_2 = L1_2
  L1_2 = L1_2.deleteAllRows
  L1_2(L2_2)
  L1_2 = contentTable
  L2_2 = L1_2
  L1_2 = L1_2.insertRow
  L3_2 = {}
  L3_2.rowHeight = 42
  L3_2.id = -2
  L4_2 = {}
  L5_2 = {}
  L6_2 = 255
  L7_2 = 255
  L8_2 = 255
  L9_2 = 200
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L4_2.default = L5_2
  L5_2 = {}
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L9_2 = 1
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L4_2.over = L5_2
  L3_2.rowColor = L4_2
  L1_2(L2_2, L3_2)
end

failedToFetchContent = L27_1

function L27_1()
  local L0_2, L1_2, L2_2, L3_2
  L2_2 = Constants
  L2_2 = L2_2.deviceWidthSpecificFilePostfix
  L2_2 = L2_2()
  if L2_2 == "480" then
    L0_2 = 70
    L1_2 = 22
  else
    L2_2 = Constants
    L2_2 = L2_2.deviceWidthSpecificFilePostfix
    L2_2 = L2_2()
    if L2_2 == "512" then
      L0_2 = 72
      L1_2 = 22
    else
      L0_2 = 91
      L1_2 = 22
    end
  end
  L2_2 = L0_2
  L3_2 = L1_2
  return L2_2, L3_2
end

getWidthAndHeightOfButton = L27_1
