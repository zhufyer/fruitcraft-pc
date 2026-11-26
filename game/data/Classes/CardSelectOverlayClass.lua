local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Models.Card"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "widget"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.CachedImageView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Components.TDButtonView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Core.ParentStandardBaseOverlayClass"
L6_1 = L6_1(L7_1)
L7_1 = setmetatable
L8_1 = _M
L9_1 = L6_1
L7_1(L8_1, L9_1)
L7_1 = _M
L8_1 = _M
L7_1.__index = L8_1
L7_1 = _M
L8_1 = nil
L9_1 = nil
L10_1 = nil
L11_1 = nil
L12_1 = nil
L13_1 = nil
L14_1 = {}
L15_1 = -1
L16_1 = L1_1.allFruits
L16_1 = L16_1()
L17_1 = -1
L18_1 = {}
L19_1 = nil
L20_1 = {}
L21_1 = nil
L22_1 = nil
L23_1 = nil

function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = {}
  L20_1 = L0_2
  L0_2 = pairs
  L1_2 = L16_1
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = L4_2.category
    if L5_2 ~= 4 then
      L5_2 = L4_2.category
      if L5_2 ~= 3 then
        L5_2 = table
        L5_2 = L5_2.insert
        L6_2 = L20_1
        L7_2 = L3_2
        L5_2(L6_2, L7_2)
      end
    end
  end
  L0_2 = table
  L0_2 = L0_2.sort
  L1_2 = L20_1
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = L16_1
    L2_3 = L2_3[A0_3]
    L3_3 = L16_1
    L3_3 = L3_3[A1_3]
    L4_3 = L2_3.name
    L5_3 = L3_3.name
    L4_3 = L4_3 < L5_3
    return L4_3
  end
  
  L0_2(L1_2, L2_2)
end

L25_1 = L24_1
L25_1()

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = L6_1
  L2_2 = L2_2.create
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = fruitsRowRender
  L8_1 = L2_2
  L2_2 = fruitsRowTouch
  L9_1 = L2_2
  L2_2 = levelsRowRender
  L10_1 = L2_2
  L2_2 = levelsRowTouch
  L11_1 = L2_2
  L2_2 = setLevelStars
  L12_1 = L2_2
  L2_2 = setupLevelsTable
  L13_1 = L2_2
  L2_2 = display
  L2_2 = L2_2.newRect
  L3_2 = A0_2.contentGroup
  L4_2 = 0
  L5_2 = 0
  L6_2 = 570
  L7_2 = 360
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L4_2 = L2_2
  L3_2 = L2_2.setFillColor
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.isHitTestable = true
  L4_2 = L2_2
  L3_2 = L2_2.addEventListener
  L5_2 = "tap"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = L7_1
    L0_3 = L0_3.hideWithAnimation
    L1_3 = A0_2
    L0_3(L1_3)
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.addEventListener
  L5_2 = "touch"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = L7_1
    L0_3 = L0_3.hideWithAnimation
    L1_3 = A0_2
    L0_3(L1_3)
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = display
  L3_2 = L3_2.newRoundedRect
  L4_2 = A0_2.contentGroup
  L5_2 = 0
  L6_2 = 0
  L7_2 = 320
  L8_2 = 295
  L9_2 = 3
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2.strokeWidth = 2
  L5_2 = L3_2
  L4_2 = L3_2.setStrokeColor
  L6_2 = Constants
  L6_2 = L6_2.greenColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = Constants
  L6_2 = L6_2.whiteColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L5_2 = L3_2
  L4_2 = L3_2.addEventListener
  L6_2 = "touch"
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = L3_2
  L4_2 = L3_2.addEventListener
  L6_2 = "tap"
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = A0_2.contentGroup
  L6_2 = L2_1
  L6_2 = L6_2["Select Card"]
  L7_2 = 0
  L8_2 = 0
  L9_2 = Constants
  L9_2 = L9_2.fontForTitle
  L9_2 = L9_2()
  L10_2 = 20
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L5_2 = L3_2.x
  L4_2.x = L5_2
  L5_2 = L3_2.height
  L5_2 = -L5_2
  L5_2 = L5_2 / 2
  L5_2 = L5_2 + 10
  L6_2 = L4_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L5_2 = L5_2 - 5
  L4_2.y = L5_2
  L5_2 = L5_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.width = 30
  L7_2.height = 30
  L8_2 = Constants
  L8_2 = L8_2.Path_Assets
  L9_2 = "BattleItems/close.png"
  L8_2 = L8_2 .. L9_2
  L7_2.imageName = L8_2
  
  function L8_2()
    local L0_3, L1_3
    L0_3 = L7_1
    L0_3 = L0_3.hideWithAnimation
    L1_3 = A0_2
    L0_3(L1_3)
  end
  
  L7_2.onRelease = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A0_2.contentGroup
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L5_2.view
  L6_2(L7_2, L8_2)
  L6_2 = L3_2.width
  L6_2 = -L6_2
  L6_2 = L6_2 / 2
  L6_2 = L6_2 + 10
  L7_2 = L5_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L5_2.x = L6_2
  L6_2 = L4_2.y
  L5_2.y = L6_2
  L6_2 = display
  L6_2 = L6_2.newGroup
  L6_2 = L6_2()
  A0_2.innerContentGroup = L6_2
  L6_2 = graphics
  L6_2 = L6_2.newMask
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Auction/FC-auction-mask-small"
  L9_2 = Constants
  L9_2 = L9_2.deviceSpecificFilePostfix
  L9_2 = L9_2()
  L10_2 = ".png"
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
  L6_2 = L6_2(L7_2)
  L7_2 = A0_2.innerContentGroup
  L8_2 = L7_2
  L7_2 = L7_2.setMask
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.innerContentGroup
  L7_2.maskX = 0
  L7_2 = A0_2.innerContentGroup
  L7_2.maskY = 0
  L7_2 = A0_2.contentGroup
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = A0_2.innerContentGroup
  L7_2(L8_2, L9_2)
  L7_2 = L3_1
  L7_2 = L7_2.newTableView
  L8_2 = {}
  L9_2 = L3_2.width
  L9_2 = L9_2 / 2
  L9_2 = L9_2 - 5
  L8_2.width = L9_2
  L9_2 = L3_2.height
  L9_2 = L9_2 - 95
  L8_2.height = L9_2
  L9_2 = L8_1
  L8_2.onRowRender = L9_2
  L9_2 = L9_1
  L8_2.onRowTouch = L9_2
  L8_2.hideScrollBar = true
  L8_2.bottomPadding = 5
  L7_2 = L7_2(L8_2)
  A0_2.fruitsTable = L7_2
  L7_2 = A0_2.fruitsTable
  L8_2 = L3_2.x
  L9_2 = L3_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L8_2 = L8_2 + 5
  L9_2 = L3_2.width
  L9_2 = L9_2 / 2
  L9_2 = L9_2 - 5
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L7_2.x = L8_2
  L7_2 = A0_2.fruitsTable
  L8_2 = L3_2.height
  L8_2 = -L8_2
  L8_2 = L8_2 / 2
  L8_2 = L8_2 + 50
  L9_2 = L3_2.height
  L9_2 = L9_2 - 95
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L7_2.y = L8_2
  L7_2 = A0_2.innerContentGroup
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = A0_2.fruitsTable
  L7_2(L8_2, L9_2)
  L7_2 = false
  L8_2 = A1_2.params
  if L8_2 then
    L8_2 = A1_2.params
    L8_2 = L8_2.selectedFruit
    if L8_2 then
      L7_2 = true
      L8_2 = A1_2.params
      L8_2 = L8_2.selectedFruit
      L15_1 = L8_2
      L8_2 = A1_2.params
      if L8_2 then
        L8_2 = A1_2.params
        L8_2 = L8_2.selectedLevel
        if L8_2 then
          L8_2 = A1_2.params
          L8_2 = L8_2.selectedLevel
          L17_1 = L8_2
        end
      end
  end
  else
    L8_2 = A1_2.params
    if L8_2 then
      L8_2 = A1_2.params
      L8_2 = L8_2.selectedCard
      if L8_2 then
        L7_2 = true
        L8_2 = A1_2.params
        L8_2 = L8_2.selectedCard
        L8_2 = L8_2.fruitId
        L15_1 = L8_2
        L8_2 = A1_2.params
        L8_2 = L8_2.selectedCard
        L8_2 = L8_2.rarity
        L17_1 = L8_2
    end
    else
      L8_2 = A1_2.params
      if L8_2 then
        L8_2 = A1_2.params
        L8_2 = L8_2.selectedCardId
        if L8_2 then
          L7_2 = true
          L8_2 = L1_1
          L8_2 = L8_2.baseCardWithId
          L9_2 = A1_2.params
          L9_2 = L9_2.selectedCardId
          L8_2 = L8_2(L9_2)
          L9_2 = L8_2.fruitId
          L15_1 = L9_2
          L9_2 = L8_2.rarity
          L17_1 = L9_2
      end
      else
        L8_2 = A1_2.params
        L8_2 = L8_2.preSelectedFruitID
        if not L8_2 then
          L8_2 = -1
        end
        L15_1 = L8_2
        L8_2 = A1_2.params
        L8_2 = L8_2.preSelectedLevel
        if not L8_2 then
          L8_2 = 1
        end
        L17_1 = L8_2
      end
    end
  end
  L8_2 = ipairs
  L9_2 = L20_1
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = L14_1
    L14_2 = {}
    L14_2.view = nil
    L14_2.isVisit = false
    L14_2.background = nil
    L14_2.inserted = false
    L14_2.isSelecte = false
    L13_2[L12_2] = L14_2
    L13_2 = L15_1
    if L13_2 < 1 then
      L13_2 = L14_1
      L13_2 = L13_2[L12_2]
      L13_2.isSelected = true
      L15_1 = L12_2
    else
      L13_2 = L15_1
      if L12_2 == L13_2 then
        L13_2 = L14_1
        L13_2 = L13_2[L12_2]
        L13_2.isSelected = true
      end
    end
  end
  L8_2 = ipairs
  L9_2 = mainPlayer
  L9_2 = L9_2.collection
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = L1_1
    L13_2 = L13_2.baseCardWithId
    L14_2 = L12_2
    L13_2 = L13_2(L14_2)
    L14_2 = L13_2.fruitId
    rowNumber = L14_2
    L14_2 = L14_1
    L15_2 = rowNumber
    L14_2 = L14_2[L15_2]
    if L14_2 ~= nil then
      L14_2 = L14_1
      L15_2 = rowNumber
      L14_2 = L14_2[L15_2]
      L14_2.isVisit = true
    end
  end
  L8_2 = ipairs
  L9_2 = L20_1
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = A0_2.fruitsTable
    L14_2 = L13_2
    L13_2 = L13_2.insertRow
    L15_2 = {}
    L15_2.rowHeight = 42
    L15_2.id = L12_2
    L16_2 = {}
    L17_2 = {}
    L18_2 = 255
    L19_2 = 255
    L20_2 = 255
    L21_2 = 255
    L17_2[1] = L18_2
    L17_2[2] = L19_2
    L17_2[3] = L20_2
    L17_2[4] = L21_2
    L16_2.default = L17_2
    L17_2 = {}
    L18_2 = 0
    L19_2 = 0
    L20_2 = 0
    L21_2 = 1
    L17_2[1] = L18_2
    L17_2[2] = L19_2
    L17_2[3] = L20_2
    L17_2[4] = L21_2
    L16_2.over = L17_2
    L15_2.rowColor = L16_2
    L13_2(L14_2, L15_2)
  end
  L8_2 = L3_1
  L8_2 = L8_2.newTableView
  L9_2 = {}
  L10_2 = L3_2.width
  L10_2 = L10_2 / 2
  L10_2 = L10_2 - 5
  L9_2.width = L10_2
  L10_2 = L3_2.height
  L10_2 = L10_2 - 95
  L9_2.height = L10_2
  L10_2 = L10_1
  L9_2.onRowRender = L10_2
  L10_2 = L11_1
  L9_2.onRowTouch = L10_2
  L9_2.hideScrollBar = true
  L9_2.noLines = true
  L9_2.bottomPadding = 5
  L8_2 = L8_2(L9_2)
  L19_1 = L8_2
  L8_2 = L19_1
  L9_2 = L3_2.x
  L10_2 = L3_2.width
  L10_2 = L10_2 / 2
  L10_2 = L10_2 - 5
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L8_2.x = L9_2
  L8_2 = L19_1
  L9_2 = L3_2.height
  L9_2 = -L9_2
  L9_2 = L9_2 / 2
  L9_2 = L9_2 + 50
  L10_2 = L3_2.height
  L10_2 = L10_2 - 95
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L8_2.y = L9_2
  L8_2 = A0_2.innerContentGroup
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L19_1
  L8_2(L9_2, L10_2)
  L8_2 = nil
  L9_2 = A1_2.params
  if L9_2 then
    L9_2 = A1_2.params
    L9_2 = L9_2.buttonText
    if L9_2 then
      L9_2 = A1_2.params
      L8_2 = L9_2.buttonText
  end
  else
    L9_2 = L2_1
    L8_2 = L9_2.Accept
  end
  L9_2 = L5_1
  L10_2 = L9_2
  L9_2 = L9_2.new
  L11_2 = {}
  L11_2.label = L8_2
  L12_2 = Theme
  L12_2 = L12_2.colorsSet
  L12_2 = L12_2.blackColor
  L11_2.labelColor = L12_2
  L11_2.width = 123
  L11_2.height = 22
  L12_2 = Constants
  L12_2 = L12_2.Path_Assets
  L13_2 = "CardScene/button.png"
  L12_2 = L12_2 .. L13_2
  L11_2.imageName = L12_2
  
  function L12_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = log3
    L1_3 = "accepts button pressed "
    L0_3(L1_3)
    L0_3 = L15_1
    if not (L0_3 < 1) then
      L0_3 = L17_1
      if not (L0_3 < 1) then
        goto lbl_24
      end
    end
    L0_3 = showSimpleDialog
    L1_3 = L2_1
    L1_3 = L1_3["Card Selection"]
    L2_3 = L2_1
    L2_3 = L2_3["You need to select a fruit and the level of that fruit."]
    L3_3 = nil
    
    function L4_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
      L0_4 = {}
      L1_4 = A1_2
      L1_4 = L1_4.params
      if L1_4 then
        L1_4 = pairs
        L2_4 = A1_2
        L2_4 = L2_4.params
        L1_4, L2_4, L3_4 = L1_4(L2_4)
        for L4_4, L5_4 in L1_4, L2_4, L3_4 do
          L0_4[L4_4] = L5_4
        end
      end
      L1_4 = L23_1
      L0_4.preSelectedFruitRowID = L1_4
      L1_4 = L22_1
      L0_4.preSelectedLevel = L1_4
      L1_4 = L21_1
      L0_4.preSelectedFruitID = L1_4
      L1_4 = L0_1
      L1_4 = L1_4.showOverlay
      L2_4 = "Scenes.CardSelectOverlay"
      L3_4 = {}
      L3_4.params = L0_4
      L1_4(L2_4, L3_4)
    end
    
    L0_3(L1_3, L2_3, L3_3, L4_3)
    do return end
    ::lbl_24::
    L0_3 = L7_1
    L0_3 = L0_3.hideWithAnimation
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = A1_2
    L0_3 = L0_3.params
    if L0_3 then
      L0_3 = A1_2
      L0_3 = L0_3.params
      L0_3 = L0_3.onSelect
      if L0_3 then
        L0_3 = L1_1
        L0_3 = L0_3.baseCardFromFruitAndLevel
        L1_3 = L15_1
        L2_3 = L17_1
        L0_3 = L0_3(L1_3, L2_3)
        L0_3 = L0_3.id
        L1_3 = A1_2
        L1_3 = L1_3.params
        L1_3 = L1_3.onSelect
        L2_3 = L0_3
        L3_3 = L23_1
        L4_3 = L22_1
        L5_3 = L21_1
        L1_3(L2_3, L3_3, L4_3, L5_3)
      end
    end
  end
  
  L11_2.onRelease = L12_2
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = A0_2.contentGroup
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = L9_2.view
  L10_2(L11_2, L12_2)
  L9_2.x = 0
  L10_2 = L3_2.y
  L11_2 = L3_2.height
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L10_2 = L10_2 - 13
  L11_2 = L9_2.height
  L11_2 = L11_2 / 2
  L10_2 = L10_2 - L11_2
  L9_2.y = L10_2
  L10_2 = display
  L10_2 = L10_2.newRoundedRect
  L11_2 = A0_2.contentGroup
  L12_2 = 0
  L13_2 = 0
  L14_2 = 310
  L15_2 = 199
  L16_2 = 1
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2.strokeWidth = 2
  L12_2 = L10_2
  L11_2 = L10_2.setStrokeColor
  L13_2 = Constants
  L13_2 = L13_2.darkBlueColor
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L13_2()
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L12_2 = L10_2
  L11_2 = L10_2.setFillColor
  L13_2 = 0
  L14_2 = 0
  L15_2 = 0
  L16_2 = 0
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2.x = 0
  L11_2 = L10_2.height
  L11_2 = -L11_2
  L11_2 = L11_2 / 2
  L11_2 = L11_2 + 2
  L12_2 = L10_2.height
  L12_2 = L12_2 / 2
  L11_2 = L11_2 + L12_2
  L10_2.y = L11_2
  L11_2 = display
  L11_2 = L11_2.newLine
  L12_2 = A0_2.contentGroup
  L13_2 = 0
  L14_2 = L10_2.height
  L14_2 = -L14_2
  L14_2 = L14_2 / 2
  L14_2 = L14_2 + 2
  L15_2 = 0
  L16_2 = L10_2.height
  L16_2 = -L16_2
  L16_2 = L16_2 / 2
  L16_2 = L16_2 + 2
  L17_2 = L10_2.height
  L16_2 = L16_2 + L17_2
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L13_2 = L11_2
  L12_2 = L11_2.setStrokeColor
  L14_2 = Constants
  L14_2 = L14_2.darkBlueColor
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L14_2()
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L11_2.strokeWidth = 2
  L12_2 = L13_1
  L13_2 = L17_1
  L12_2(L13_2)
  L12_2 = L16_1
  L13_2 = L15_1
  L12_2 = L12_2[L13_2]
  L12_2 = L12_2.maxLevel
  L13_2 = L16_1
  L14_2 = L15_1
  L13_2 = L13_2[L14_2]
  L13_2 = L13_2.minLevel
  L12_2 = L12_2 - L13_2
  L12_2 = L12_2 + 1
  if 2 < L12_2 then
    L13_2 = L19_1
    L14_2 = L13_2
    L13_2 = L13_2.scrollToIndex
    L15_2 = 3
    L16_2 = 0
    L13_2(L14_2, L15_2, L16_2)
  else
    L13_2 = L19_1
    L14_2 = L13_2
    L13_2 = L13_2.scrollToIndex
    L15_2 = 2
    L16_2 = 0
    L13_2(L14_2, L15_2, L16_2)
  end
end

create = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2.row
  L2_2 = L1_2.id
  L3_2 = L1_2
  L4_2 = nil
  L5_2 = nil
  L6_2 = display
  L6_2 = L6_2.newText
  L7_2 = L16_1
  L7_2 = L7_2[L2_2]
  L7_2 = L7_2.name
  L8_2 = 0
  L9_2 = 0
  L10_2 = Constants
  L10_2 = L10_2.fontForSubtitle
  L10_2 = L10_2()
  L11_2 = 13
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = L6_2
  L7_2 = L4_2
  L6_2 = L4_2.setFillColor
  L8_2 = Constants
  L8_2 = L8_2.darkBlueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L6_2 = L4_2.width
  L6_2 = L6_2 / 2
  L6_2 = 65 + L6_2
  L4_2.x = L6_2
  L6_2 = L1_2.height
  L6_2 = L6_2 * 0.5
  L4_2.y = L6_2
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "cell_background.png"
  L7_2 = L7_2 .. L8_2
  L8_2 = L1_2.contentWidth
  L9_2 = L1_2.contentHeight
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = L1_2.contentWidth
  L7_2 = L7_2 / 2
  L6_2.x = L7_2
  L7_2 = L1_2.contentHeight
  L7_2 = L7_2 / 2
  L6_2.y = L7_2
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = Constants
  L8_2 = L8_2.Path_Assets
  L9_2 = "General/FC-tick.png"
  L8_2 = L8_2 .. L9_2
  L9_2 = 25
  L10_2 = 25
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L7_2.x = 30
  L8_2 = L1_2.height
  L8_2 = L8_2 * 0.5
  L7_2.y = L8_2
  L7_2.isVisible = false
  L8_2 = L14_1
  L8_2 = L8_2[L2_2]
  L8_2 = L8_2.isSelected
  if L8_2 then
    L7_2.isVisible = true
  end
  L8_2 = L14_1
  L8_2 = L8_2[L2_2]
  L8_2.selectedView = L7_2
  L9_2 = L3_2
  L8_2 = L3_2.insert
  L10_2 = L6_2
  L8_2(L9_2, L10_2)
  L9_2 = L3_2
  L8_2 = L3_2.insert
  L10_2 = L4_2
  L8_2(L9_2, L10_2)
  L8_2 = nil
  L9_2 = L14_1
  L9_2 = L9_2[L2_2]
  L9_2 = L9_2.isVisit
  if L9_2 == true then
    L9_2 = Constants
    L9_2 = L9_2.Path_Assets
    L10_2 = "Cards/"
    L11_2 = L16_1
    L11_2 = L11_2[L2_2]
    L11_2 = L11_2.smallImage
    L8_2 = L9_2 .. L10_2 .. L11_2
  else
    L9_2 = Constants
    L8_2 = L9_2.Path_MissingImage
  end
  L9_2 = L4_1
  L10_2 = L9_2
  L9_2 = L9_2.new
  L11_2 = L3_2
  L12_2 = L8_2
  L13_2 = 35
  L14_2 = 35
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L5_2 = L9_2
  L5_2.index = 3
  L9_2 = L5_2.width
  L9_2 = L9_2 / 2
  L9_2 = 10 + L9_2
  L5_2.x = L9_2
  L5_2.y = 23
  L10_2 = L3_2
  L9_2 = L3_2.insert
  L11_2 = L7_2
  L9_2(L10_2, L11_2)
end

fruitsRowRender = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.target
  L1_2 = L1_2.id
  L2_2 = A0_2.target
  L2_2 = L2_2.index
  L23_1 = L2_2
  L21_1 = L1_2
  L2_2 = A0_2.row
  L3_2 = A0_2.view
  L4_2 = A0_2.table
  L5_2 = A0_2.phase
  if L5_2 == "release" then
  else
    L5_2 = L15_1
    if L5_2 == L1_2 then
      return
    end
    L5_2 = L15_1
    if 0 < L5_2 then
      L5_2 = L14_1
      L6_2 = L15_1
      L5_2 = L5_2[L6_2]
      L5_2.isSelected = false
      L5_2 = L14_1
      L6_2 = L15_1
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.selectedView
      if L5_2 ~= nil then
        L5_2 = L14_1
        L6_2 = L15_1
        L5_2 = L5_2[L6_2]
        L5_2 = L5_2.selectedView
        L5_2.isVisible = false
      end
    end
    L15_1 = L1_2
    L5_2 = L14_1
    L6_2 = L15_1
    L5_2 = L5_2[L6_2]
    L5_2.isSelected = true
    L5_2 = L14_1
    L6_2 = L15_1
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.selectedView
    L5_2.isVisible = true
    L5_2 = L13_1
    L5_2()
  end
end

fruitsRowTouch = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.row
  L2_2 = L1_2.id
  L3_2 = L1_2
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "General/FC-tick.png"
  L5_2 = L5_2 .. L6_2
  L6_2 = 25
  L7_2 = 25
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L4_2.x = 30
  L5_2 = L1_2.height
  L5_2 = L5_2 * 0.5
  L4_2.y = L5_2
  L4_2.isVisible = false
  L5_2 = L18_1
  L5_2 = L5_2[L2_2]
  L5_2 = L5_2.isSelected
  if L5_2 then
    L4_2.isVisible = true
  end
  L5_2 = L18_1
  L5_2 = L5_2[L2_2]
  L5_2.selectedView = L4_2
  L5_2 = L12_1
  L6_2 = L2_2
  L7_2 = 57.5
  L8_2 = L1_2.height
  L8_2 = L8_2 * 0.5
  L9_2 = L3_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L3_2
  L5_2 = L3_2.insert
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end

levelsRowRender = L25_1

function L25_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = 1
  L5_2 = A0_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = display
    L8_2 = L8_2.newImageRect
    L9_2 = Constants
    L9_2 = L9_2.Path_Assets
    L10_2 = "General/FC-star.png"
    L9_2 = L9_2 .. L10_2
    L10_2 = 13
    L11_2 = 13
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L9_2 = L7_2 - 1
    L9_2 = L9_2 * 14
    L9_2 = A1_2 + L9_2
    L8_2.x = L9_2
    L8_2.y = A2_2
    L10_2 = A3_2
    L9_2 = A3_2.insert
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
end

setLevelStars = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.target
  L1_2 = L1_2.id
  L2_2 = A0_2.target
  L2_2 = L2_2.index
  L22_1 = L2_2
  L2_2 = A0_2.row
  L3_2 = A0_2.view
  L4_2 = A0_2.table
  L5_2 = A0_2.phase
  if L5_2 == "release" then
  else
    L5_2 = L17_1
    if L5_2 == L1_2 then
      return
    end
    L5_2 = L17_1
    if 0 < L5_2 then
      L5_2 = L18_1
      L6_2 = L17_1
      L5_2 = L5_2[L6_2]
      L5_2.isSelected = false
      L5_2 = L18_1
      L6_2 = L17_1
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.selectedView
      if L5_2 ~= nil then
        L5_2 = L18_1
        L6_2 = L17_1
        L5_2 = L5_2[L6_2]
        L5_2 = L5_2.selectedView
        L5_2.isVisible = false
      end
    end
    L5_2 = A0_2.target
    L5_2 = L5_2.id
    L17_1 = L5_2
    L5_2 = L18_1
    L6_2 = L17_1
    L5_2 = L5_2[L6_2]
    L5_2.isSelected = true
    L5_2 = L18_1
    L6_2 = L17_1
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.selectedView
    L5_2.isVisible = true
  end
end

levelsRowTouch = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = L19_1
  L2_2 = L1_2
  L1_2 = L1_2.deleteAllRows
  L1_2(L2_2)
  L1_2 = -1
  L17_1 = L1_2
  if A0_2 and 0 < A0_2 then
    L17_1 = A0_2
  end
  L1_2 = L16_1
  L2_2 = L15_1
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.minLevel
  L2_2 = L16_1
  L3_2 = L15_1
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.maxLevel
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L18_1
    L6_2 = {}
    L6_2.view = nil
    L6_2.isVisit = true
    L6_2.background = nil
    L6_2.inserted = false
    L6_2.isSelected = false
    L5_2[L4_2] = L6_2
    L5_2 = L17_1
    if 0 < L5_2 then
      L5_2 = L17_1
      if L4_2 == L5_2 then
        L5_2 = L18_1
        L6_2 = L17_1
        L5_2 = L5_2[L6_2]
        L5_2.isSelected = true
      end
    end
    L5_2 = L19_1
    L6_2 = L5_2
    L5_2 = L5_2.insertRow
    L7_2 = {}
    L7_2.rowHeight = 42
    L7_2.id = L4_2
    L8_2 = {}
    L9_2 = {}
    L10_2 = 227
    L11_2 = 242
    L12_2 = 250
    L13_2 = 200
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L9_2[3] = L12_2
    L9_2[4] = L13_2
    L8_2.default = L9_2
    L9_2 = {}
    L10_2 = 227
    L11_2 = 242
    L12_2 = 250
    L13_2 = 200
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L9_2[3] = L12_2
    L9_2[4] = L13_2
    L8_2.over = L9_2
    L7_2.rowColor = L8_2
    L5_2(L6_2, L7_2)
  end
end

setupLevelsTable = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L6_1
  L2_2 = L2_2.show
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    L2_2 = "hideOverlay"
    _backAction = L2_2
    L2_2 = A1_2.params
    L2_2 = L2_2.preSelectedFruitRowID
    if L2_2 then
      L2_2 = A1_2.params
      L2_2 = L2_2.preSelectedFruitRowID
      L23_1 = L2_2
      L2_2 = A0_2.fruitsTable
      L3_2 = L2_2
      L2_2 = L2_2.scrollToIndex
      L4_2 = L23_1
      L5_2 = 500
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = A1_2.params
      L2_2 = L2_2.preSelectedFruitID
      if L2_2 then
        L2_2 = A1_2.params
        L2_2 = L2_2.preSelectedFruitID
        L21_1 = L2_2
        L2_2 = A1_2.params
        L2_2 = L2_2.preSelectedFruitID
        L15_1 = L2_2
        L2_2 = L14_1
        L3_2 = L15_1
        L2_2 = L2_2[L3_2]
        L2_2.isSelected = true
        L2_2 = L14_1
        L3_2 = L15_1
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.selectedView
        if L2_2 then
          L2_2 = L14_1
          L3_2 = L15_1
          L2_2 = L2_2[L3_2]
          L2_2 = L2_2.selectedView
          L2_2.isVisible = true
        end
      end
      L2_2 = A1_2.params
      L2_2 = L2_2.preSelectedLevel
      if L2_2 then
        L2_2 = A1_2.params
        L2_2 = L2_2.preSelectedLevel
        L22_1 = L2_2
      end
    end
  end
end

show = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.phase
  L3_2 = L6_1
  L3_2 = L3_2.hide
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if L2_2 == "will" then
    L3_2 = "Scenes.Home"
    _backAction = L3_2
  end
end

hide = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L6_1
  L2_2 = L2_2.destroy
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

destroy = L25_1
