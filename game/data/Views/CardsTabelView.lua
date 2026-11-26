local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "widget"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Models.Card"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Constants"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Language"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.CachedImageView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Utils.Toolbox"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.CardView"
L6_1 = L6_1(L7_1)
L7_1 = nil
L8_1 = nil
L9_1 = 0
L10_1 = nil
L11_1 = nil
L12_1 = {}

function L13_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.list
  L3_2.x = A1_2
  L3_2 = A0_2.list
  L3_2.y = A2_2
end

setPosition = L13_1

function L13_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.list
  L3_2.width = A1_2
  L3_2 = A0_2.list
  L3_2.height = A2_2
end

setSize = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  A0_2.sortedCardKeys = L2_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.cardUsedForBuilding
    if L7_2 ~= true then
      L7_2 = mainPlayer
      L7_2 = L7_2.activeHeroID
      L8_2 = L6_2.baseId
      if L7_2 ~= L8_2 then
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = A0_2.sortedCardKeys
        L9_2 = L5_2
        L7_2(L8_2, L9_2)
      end
    end
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2.sortedCardKeys
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A1_2
    L2_3 = L2_3[A0_3]
    L3_3 = A1_2
    L3_3 = L3_3[A1_3]
    L4_3 = L2_3.power
    L5_3 = L3_3.power
    L4_3 = L4_3 < L5_3
    return L4_3
  end
  
  L2_2(L3_2, L4_2)
end

sortCardsWithPower = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  A0_2.selectedNumber = 0
  L2_2 = A0_2.list
  L3_2 = L2_2
  L2_2 = L2_2.deleteAllRows
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.sortCardsWithPower
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = ipairs
  L3_2 = A0_2.sortedCardKeys
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2 in L2_2, L3_2, L4_2 do
    L6_2 = A0_2.list
    L7_2 = L6_2
    L6_2 = L6_2.insertRow
    L8_2 = {}
    L8_2.id = L5_2
    
    function L9_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = onRowRender
      L2_3 = A0_3
      L3_3 = A0_2
      L1_3(L2_3, L3_3)
    end
    
    L8_2.onRender = L9_2
    
    function L9_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = onRowTouch
      L2_3 = A0_3
      L3_3 = A0_2
      L1_3(L2_3, L3_3)
    end
    
    L8_2.listener = L9_2
    L9_2 = {}
    L10_2 = {}
    L11_2 = 255
    L12_2 = 255
    L13_2 = 255
    L14_2 = 0
    L10_2[1] = L11_2
    L10_2[2] = L12_2
    L10_2[3] = L13_2
    L10_2[4] = L14_2
    L9_2.default = L10_2
    L10_2 = {}
    L11_2 = 255
    L12_2 = 255
    L13_2 = 255
    L14_2 = 0
    L10_2[1] = L11_2
    L10_2[2] = L12_2
    L10_2[3] = L13_2
    L10_2[4] = L14_2
    L9_2.over = L10_2
    L8_2.rowColor = L9_2
    L6_2(L7_2, L8_2)
  end
end

reloadTabelWithNewContent = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.image
  L2_2 = string
  L2_2 = L2_2.find
  L3_2 = A0_2.image
  L4_2 = tostring
  L5_2 = A0_2.rarity
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.gsub
    L3_2 = A0_2.image
    L4_2 = tostring
    L5_2 = A0_2.rarity
    L4_2 = L4_2(L5_2)
    L5_2 = "1"
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2 = L2_2
  end
  return L1_2
end

function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = string
  L1_2 = L1_2.find
  L2_2 = L1_1
  L2_2 = L2_2.baseCards
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.image
  L3_2 = "lvl"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = string
  L2_2 = L2_2.sub
  L3_2 = L1_1
  L3_2 = L3_2.baseCards
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.image
  L4_2 = 1
  L5_2 = L1_2 - 2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  return L2_2
end

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = A0_2.row
  L2_2 = L2_2.id
  L3_2 = A0_2.row
  L4_2 = A0_2.row
  L5_2 = mainPlayer
  L5_2 = L5_2.cards
  L6_2 = A1_2.sortedCardKeys
  L6_2 = L6_2[L2_2]
  L5_2 = L5_2[L6_2]
  L6_2 = false
  L7_2 = mainPlayer
  L7_2 = L7_2.heroSet
  if L7_2 then
    L7_2 = pairs
    L8_2 = mainPlayer
    L8_2 = L8_2.heroSet
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = L11_2.id
      L13_2 = L5_2.baseId
      if L12_2 == L13_2 then
        L6_2 = true
      end
    end
  end
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = L2_1
  L8_2 = L8_2.Path_Assets
  L9_2 = "cell_background.png"
  L8_2 = L8_2 .. L9_2
  L9_2 = L4_2.contentWidth
  L10_2 = L4_2.contentHeight
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = L4_2.contentWidth
  L8_2 = L8_2 / 2
  L7_2.x = L8_2
  L8_2 = L4_2.contentHeight
  L8_2 = L8_2 / 2
  L7_2.y = L8_2
  L9_2 = L3_2
  L8_2 = L3_2.insert
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = L12_1
  L8_2 = L8_2[L2_2]
  L8_2.background = L7_2
  L8_2 = L12_1
  L8_2 = L8_2[L2_2]
  L8_2 = L8_2.background
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = 1
  L11_2 = 1
  L12_2 = 1
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = L3_2
  L10_2 = L5_2.name
  L11_2 = 0
  L12_2 = 0
  L13_2 = L2_1
  L13_2 = L13_2.fontForSubtitle
  L13_2 = L13_2()
  L14_2 = 8
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L10_2 = L8_2
  L9_2 = L8_2.setFillColor
  L11_2 = L2_1
  L11_2 = L11_2.darkBlueColor
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L11_2()
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L9_2 = L4_2.height
  L9_2 = L9_2 * 0.25
  L8_2.y = L9_2
  L9_2 = L3_1
  L9_2 = L9_2.isLanguageRightToLeft
  L9_2 = L9_2()
  if L9_2 then
    L9_2 = L8_2.width
    L9_2 = L9_2 / 2
    L9_2 = 140 - L9_2
    L8_2.x = L9_2
  else
    L9_2 = L8_2.width
    L9_2 = L9_2 / 2
    L9_2 = 52 + L9_2
    L8_2.x = L9_2
  end
  L10_2 = L3_2
  L9_2 = L3_2.insert
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = 0
  L10_2 = L5_2.veteran_level
  if 0 < L10_2 then
    L9_2 = 1
  end
  if not L6_2 then
    L10_2 = L5_2.rarity
    if L10_2 < 7 then
      L10_2 = setStarsWithRarityWithStartPositionWithGroup
      L11_2 = L5_2.rarity
      L12_2 = 58.5
      L13_2 = L4_2.height
      L13_2 = L13_2 * 0.66
      L14_2 = L3_2
      L15_2 = L9_2
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    else
      L10_2 = setStarsWithRarityWithStartPositionWithGroup
      L11_2 = L5_2.rarity
      L12_2 = 52.5
      L13_2 = L4_2.height
      L13_2 = L13_2 * 0.66
      L14_2 = L3_2
      L15_2 = L9_2
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    end
  end
  L10_2 = display
  L10_2 = L10_2.newText
  L11_2 = L3_2
  L12_2 = L3_1
  L12_2 = L12_2.adjustNumber
  L13_2 = L5_1
  L13_2 = L13_2.shortenLongNumber
  L14_2 = L5_2.power
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L13_2(L14_2)
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L13_2 = 0
  L14_2 = 0
  L15_2 = L2_1
  L15_2 = L15_2.fontForSubtitle
  L15_2 = L15_2()
  L16_2 = 8
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  power = L10_2
  L10_2 = power
  L11_2 = L10_2
  L10_2 = L10_2.setFillColor
  L12_2 = L2_1
  L12_2 = L12_2.darkBlueColor
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L10_2 = L3_1
  L10_2 = L10_2.lang
  if L10_2 == "en" then
    L10_2 = power
    L11_2 = power
    L11_2 = L11_2.width
    L11_2 = L11_2 / 2
    L11_2 = 140 - L11_2
    L10_2.x = L11_2
  else
    L10_2 = power
    L11_2 = power
    L11_2 = L11_2.width
    L11_2 = L11_2 / 2
    L11_2 = 52 + L11_2
    L10_2.x = L11_2
  end
  L10_2 = power
  L11_2 = L4_2.height
  L11_2 = L11_2 * 0.25
  L10_2.y = L11_2
  L10_2 = L5_2.isSelected
  if L10_2 then
    L10_2 = L12_1
    L10_2 = L10_2[L2_2]
    L10_2 = L10_2.background
    L11_2 = L10_2
    L10_2 = L10_2.setFillColor
    L12_2 = 0
    L13_2 = 0.39215686
    L14_2 = 0
    L10_2(L11_2, L12_2, L13_2, L14_2)
    L5_2.isSelected = false
  end
  L10_2 = nil
  L11_2 = nil
  L12_2 = _imageQuality
  if L12_2 == "HD" then
    L12_2 = L2_1
    L12_2 = L12_2.Path_Assets
    L13_2 = "Cards/"
    L14_2 = L5_2.image
    L15_2 = "-m.jpg"
    L10_2 = L12_2 .. L13_2 .. L14_2 .. L15_2
  else
    L12_2 = nil
    L13_2 = mainPlayer
    L13_2 = L13_2.newCards
    if L13_2 then
      L13_2 = mainPlayer
      L13_2 = L13_2.level
      L14_2 = L2_1
      L14_2 = L14_2.MaximumLevelToShowNewSeriesOfCards
      if L13_2 < L14_2 then
        L13_2 = nil
        L14_2 = L5_2.rarity
        if L14_2 == 1 then
          L13_2 = L5_2.image
        else
          L14_2 = L13_1
          L15_2 = L5_2
          L14_2 = L14_2(L15_2)
          L13_2 = L14_2
        end
        L14_2 = L2_1
        L14_2 = L14_2.Path_Assets
        L15_2 = "Cards/New Characters/"
        L16_2 = L13_2
        L17_2 = ".png"
        L10_2 = L14_2 .. L15_2 .. L16_2 .. L17_2
    end
    else
      L13_2 = mainPlayer
      L13_2 = L13_2.heroSet
      if L13_2 then
        L13_2 = mainPlayer
        L13_2 = L13_2.heroSet
        L14_2 = L5_2.baseId
        L13_2 = L13_2[L14_2]
        if L13_2 then
          L13_2 = L14_1
          L14_2 = L5_2.baseId
          L13_2 = L13_2(L14_2)
          L12_2 = L13_2
          L13_2 = L2_1
          L13_2 = L13_2.Path_Assets
          L14_2 = "Cards/"
          L15_2 = L12_2
          L16_2 = ".jpg"
          L10_2 = L13_2 .. L14_2 .. L15_2 .. L16_2
      end
      else
        L13_2 = L2_1
        L13_2 = L13_2.Path_Assets
        L14_2 = "Cards/"
        L15_2 = L5_2.image
        L16_2 = ".jpg"
        L10_2 = L13_2 .. L14_2 .. L15_2 .. L16_2
      end
    end
  end
  L12_2 = mainPlayer
  L12_2 = L12_2.newCards
  if L12_2 then
    L12_2 = mainPlayer
    L12_2 = L12_2.level
    L13_2 = L2_1
    L13_2 = L13_2.MaximumLevelToShowNewSeriesOfCards
    if L12_2 < L13_2 then
      L12_2 = L4_1
      L13_2 = L12_2
      L12_2 = L12_2.new
      L14_2 = L3_2
      L15_2 = L10_2
      L16_2 = 36
      L17_2 = 40
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
      L11_2 = L12_2
  end
  else
    L12_2 = L4_1
    L13_2 = L12_2
    L12_2 = L12_2.new
    L14_2 = L3_2
    L15_2 = L10_2
    L16_2 = 40
    L17_2 = 40
    L18_2 = nil
    L19_2 = nil
    L20_2 = folderName
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L11_2 = L12_2
  end
  L11_2.index = 4
  L11_2.x = 20
  L11_2.y = 20
  L12_2 = L12_1
  L12_2 = L12_2[L2_2]
  L12_2.image = L11_2
  L12_2 = display
  L12_2 = L12_2.newImageRect
  L13_2 = L2_1
  L13_2 = L13_2.Path_Assets
  L14_2 = "General/FC-death-skull.png"
  L13_2 = L13_2 .. L14_2
  L14_2 = 25
  L15_2 = 25
  L12_2 = L12_2(L13_2, L14_2, L15_2)
  selectedView = L12_2
  L12_2 = selectedView
  L13_2 = L11_2.x
  L12_2.x = L13_2
  L12_2 = selectedView
  L13_2 = L4_2.height
  L13_2 = L13_2 * 0.5
  L12_2.y = L13_2
  L12_2 = selectedView
  L12_2.isVisible = false
  L12_2 = L12_1
  L12_2 = L12_2[L2_2]
  L12_2 = L12_2.selected
  if L12_2 then
    L12_2 = selectedView
    L12_2.isVisible = true
  end
  L12_2 = L12_1
  L12_2 = L12_2[L2_2]
  L13_2 = selectedView
  L12_2.selectedView = L13_2
  L13_2 = L3_2
  L12_2 = L3_2.insert
  L14_2 = selectedView
  L12_2(L13_2, L14_2)
end

onRowRender = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.target
  L3_2 = A0_2.target
  L3_2 = L3_2.id
  L4_2 = A0_2.target
  L5_2 = A0_2.target
  L6_2 = A0_2.phase
  if L6_2 == "release" then
  else
    L6_2 = A1_2.selectable
    if L6_2 then
      L6_2 = L12_1
      L6_2 = L6_2[L3_2]
      L7_2 = L12_1
      L7_2 = L7_2[L3_2]
      L7_2 = L7_2.selected
      L7_2 = not L7_2
      L6_2.selected = L7_2
      L6_2 = L12_1
      L6_2 = L6_2[L3_2]
      L6_2 = L6_2.selected
      if L6_2 == true then
        L6_2 = L12_1
        L6_2 = L6_2[L3_2]
        L6_2 = L6_2.selectedView
        L6_2.isVisible = true
        L6_2 = A1_2.delegate
        L6_2 = L6_2.didSelectedRow
        if L6_2 ~= nil then
          L6_2 = A1_2.delegate
          L6_2 = L6_2.didSelectedRow
          L7_2 = A1_2.sortedCardKeys
          L7_2 = L7_2[L3_2]
          L6_2(L7_2)
        end
      else
        L6_2 = L12_1
        L6_2 = L6_2[L3_2]
        L6_2 = L6_2.selectedView
        L6_2.isVisible = false
        L6_2 = A1_2.delegate
        L6_2 = L6_2.didDeselectedRow
        if L6_2 ~= nil then
          L6_2 = A1_2.delegate
          L6_2 = L6_2.didDeselectedRow
          L7_2 = A1_2.sortedCardKeys
          L7_2 = L7_2[L3_2]
          L6_2(L7_2)
        end
      end
    end
    L6_2 = A1_2.delegate
    L6_2 = L6_2.didPressRowWithCardId
    L7_2 = A1_2.sortedCardKeys
    L7_2 = L7_2[L3_2]
    L6_2(L7_2)
  end
end

onRowTouch = L15_1

function L15_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  if not A4_2 then
    L5_2 = {}
    A4_2 = L5_2
  end
  L5_2 = setmetatable
  L6_2 = A4_2
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  A0_2.__index = A0_2
  A4_2.selectable = A3_2
  A4_2.delegate = A1_2
  A4_2.selectedNumber = 0
  L5_2 = L0_1
  L5_2 = L5_2.newTableView
  L6_2 = {}
  L6_2.width = 150
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L7_2 = L7_2 - 47
  L6_2.height = L7_2
  L6_2.noLines = true
  L6_2.hideBackground = true
  
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = onRowRender
    L2_3 = A0_3
    L3_3 = A4_2
    L1_3(L2_3, L3_3)
  end
  
  L6_2.onRowRender = L7_2
  
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = onRowTouch
    L2_3 = A0_3
    L3_3 = A4_2
    L1_3(L2_3, L3_3)
  end
  
  L6_2.onRowTouch = L7_2
  L5_2 = L5_2(L6_2)
  A4_2.list = L5_2
  L5_2 = A4_2.list
  L5_2.x = 75
  L5_2 = A4_2.list
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 - 45
  L6_2 = L6_2 - 22
  L6_2 = L6_2 / 2
  L5_2.y = L6_2
  L6_2 = A4_2
  L5_2 = A4_2.sortCardsWithPower
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  L5_2 = ipairs
  L6_2 = A4_2.sortedCardKeys
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2 in L5_2, L6_2, L7_2 do
    L9_2 = L12_1
    L10_2 = {}
    L10_2.selected = false
    L10_2.background = false
    L10_2.selectedView = nil
    L9_2[L8_2] = L10_2
    L9_2 = A4_2.list
    L10_2 = L9_2
    L9_2 = L9_2.insertRow
    L11_2 = {}
    L11_2.id = L8_2
    L12_2 = {}
    L13_2 = {}
    L14_2 = 255
    L15_2 = 255
    L16_2 = 255
    L17_2 = 0
    L13_2[1] = L14_2
    L13_2[2] = L15_2
    L13_2[3] = L16_2
    L13_2[4] = L17_2
    L12_2.default = L13_2
    L13_2 = {}
    L14_2 = 255
    L15_2 = 255
    L16_2 = 255
    L17_2 = 0
    L13_2[1] = L14_2
    L13_2[2] = L15_2
    L13_2[3] = L16_2
    L13_2[4] = L17_2
    L12_2.over = L13_2
    L11_2.rowColor = L12_2
    L9_2(L10_2, L11_2)
  end
  L5_2 = A4_2
  L6_2 = L12_1
  return L5_2, L6_2
end

new = L15_1

function L15_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = L2_1
  L5_2 = L5_2.Path_Assets
  L6_2 = "General/FC-star.png"
  L5_2 = L5_2 .. L6_2
  if A4_2 == 1 then
    L6_2 = L2_1
    L6_2 = L6_2.Path_Assets
    L7_2 = "CardView/Star.png"
    L5_2 = L6_2 .. L7_2
  end
  L6_2 = 1
  L7_2 = A0_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = display
    L10_2 = L10_2.newImageRect
    L11_2 = L5_2
    L12_2 = 13
    L13_2 = 13
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = L9_2 - 1
    L11_2 = L11_2 * 14
    L11_2 = A1_2 + L11_2
    L10_2.x = L11_2
    L10_2.y = A2_2
    L12_2 = A3_2
    L11_2 = A3_2.insert
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
  end
end

setStarsWithRarityWithStartPositionWithGroup = L15_1

function L15_1()
  local L0_2, L1_2
end

selected = L15_1
