local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.SceneCreator"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Views.NavigationBar"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "widget"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.CardView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Language"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Models.Card"
L6_1 = L6_1(L7_1)
L7_1 = L6_1.allFruits
L7_1 = L7_1()
L8_1 = require
L9_1 = "Models.Player"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Constants"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Views.ActivityIndicatorView"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Utils.Analytics"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Views.CachedImageView"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Views.ChatButton"
L13_1 = L13_1(L14_1)
L14_1 = require
L15_1 = "Views.EffectsManager"
L14_1 = L14_1(L15_1)
L15_1 = 0
L16_1 = L1_1.newScene
L17_1 = "Collection"
L16_1 = L16_1(L17_1)
L17_1 = false
L18_1 = nil
L19_1 = nil
L20_1 = nil
L21_1 = {}
L22_1 = {}
L23_1 = nil
L24_1 = {}
L25_1 = nil
L26_1 = nil

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  sortedCardKeys = L1_2
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.cardUsedForBuilding
    if L6_2 ~= true then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = sortedCardKeys
      L8_2 = L4_2
      L6_2(L7_2, L8_2)
    end
  end
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = sortedCardKeys
  
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L2_3 = L2_3[A0_3]
    L3_3 = A0_2
    L3_3 = L3_3[A1_3]
    L4_3 = L2_3.name
    L5_3 = L3_3.name
    L4_3 = L4_3 < L5_3
    return L4_3
  end
  
  L1_2(L2_2, L3_2)
  L1_2 = sortedCardKeys
  return L1_2
end

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = string
  L2_2 = L2_2.find
  L3_2 = A0_2
  L4_2 = L5_1
  L4_2 = L4_2.adjustNumber
  L5_2 = A1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = nil
  if L2_2 then
    L4_2 = string
    L4_2 = L4_2.sub
    L5_2 = A0_2
    L6_2 = 1
    L7_2 = L2_2 - 2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L4_2
  else
    L3_2 = A0_2
  end
  return L3_2
end

function L29_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = log3
  L2_2 = "card max level is : "
  L3_2 = L7_1
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.maxLevel
  L1_2(L2_2, L3_2)
  L1_2 = L7_1
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.maxLevel
  L2_2 = L20_1
  if L2_2 then
    L2_2 = L20_1
    L3_2 = L2_2
    L2_2 = L2_2.removeSelf
    L2_2(L3_2)
    L2_2 = nil
    L20_1 = L2_2
  end
  L2_2 = L22_1
  L2_2 = L2_2[1]
  if L2_2 then
    L2_2 = L22_1
    L2_2 = L2_2[1]
    L2_2 = L2_2.view
    L3_2 = L2_2
    L2_2 = L2_2.removeSelf
    L2_2(L3_2)
    L2_2 = L22_1
    L2_2[1] = nil
  end
  L2_2 = L7_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.maxLevel
  if L2_2 <= 7 then
    L2_2 = L3_1
    L2_2 = L2_2.newScrollView
    L3_2 = {}
    L4_2 = display
    L4_2 = L4_2.contentWidth
    L4_2 = L4_2 - 175
    L3_2.width = L4_2
    L4_2 = display
    L4_2 = L4_2.contentHeight
    L4_2 = L4_2 - 60
    L3_2.height = L4_2
    L3_2.verticalScrollDisabled = true
    L3_2.scrollWidth = 1190
    L3_2.rightPadding = 20
    L3_2.scrollHeight = 0
    L2_2 = L2_2(L3_2)
    L20_1 = L2_2
    L2_2 = L20_1
    L3_2 = display
    L3_2 = L3_2.contentWidth
    L3_2 = L3_2 - 175
    L3_2 = L3_2 / 2
    L3_2 = 172 + L3_2
    L2_2.x = L3_2
    L2_2 = L20_1
    L3_2 = display
    L3_2 = L3_2.contentHeight
    L3_2 = L3_2 - 60
    L3_2 = L3_2 / 2
    L3_2 = 45 + L3_2
    L2_2.y = L3_2
    L2_2 = L20_1
    L2_2.verticalScrollDisabled = true
  else
    L1_2 = 1
  end
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = {}
    L6_2.isObjectForCollection = true
    L6_2.fontSize = 13
    L7_2 = L22_1
    L8_2 = L4_1
    L9_2 = L8_2
    L8_2 = L8_2.new
    L10_2 = "big"
    L11_2 = nil
    L12_2 = nil
    L13_2 = L6_2
    L14_2 = nil
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L7_2[L5_2] = L8_2
    if 1 < L1_2 then
      L7_2 = L20_1
      L8_2 = L7_2
      L7_2 = L7_2.insert
      L9_2 = L22_1
      L9_2 = L9_2[L5_2]
      L9_2 = L9_2.view
      L7_2(L8_2, L9_2)
      L7_2 = L22_1
      L7_2 = L7_2[L5_2]
      L8_2 = L7_2
      L7_2 = L7_2.setPosition
      L9_2 = L5_2 - 1
      L10_2 = L22_1
      L10_2 = L10_2[L5_2]
      L10_2 = L10_2.cardWidth
      if not L10_2 then
        L10_2 = math
        L10_2 = L10_2.floor
        L11_2 = L22_1
        L11_2 = L11_2[L5_2]
        L11_2 = L11_2.cardHeight
        if not L11_2 then
          L11_2 = display
          L11_2 = L11_2.contentHeight
          L11_2 = L11_2 - 70
        end
        L11_2 = L11_2 / 1.343434
        L10_2 = L10_2(L11_2)
      end
      L10_2 = L10_2 + 5
      L9_2 = L9_2 * L10_2
      L9_2 = 5 + L9_2
      L10_2 = 10
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = L19_1
      L8_2 = L7_2
      L7_2 = L7_2.insert
      L9_2 = L20_1
      L7_2(L8_2, L9_2)
    else
      L7_2 = L22_1
      L7_2 = L7_2[L5_2]
      L8_2 = L7_2
      L7_2 = L7_2.setPosition
      L9_2 = display
      L9_2 = L9_2.contentWidth
      L9_2 = L9_2 - 175
      L9_2 = L9_2 / 2
      L9_2 = 172 + L9_2
      L10_2 = L22_1
      L10_2 = L10_2[L5_2]
      L10_2 = L10_2.cardWidth
      L10_2 = L10_2 / 2
      L9_2 = L9_2 - L10_2
      L9_2 = L9_2 - 5
      L10_2 = L5_2 - 1
      L11_2 = L22_1
      L11_2 = L11_2[L5_2]
      L11_2 = L11_2.cardWidth
      if not L11_2 then
        L11_2 = math
        L11_2 = L11_2.floor
        L12_2 = L22_1
        L12_2 = L12_2[L5_2]
        L12_2 = L12_2.cardHeight
        if not L12_2 then
          L12_2 = display
          L12_2 = L12_2.contentHeight
          L12_2 = L12_2 - 70
        end
        L12_2 = L12_2 / 1.343434
        L11_2 = L11_2(L12_2)
      end
      L11_2 = L11_2 + 5
      L10_2 = L10_2 * L11_2
      L9_2 = L9_2 + L10_2
      L10_2 = display
      L10_2 = L10_2.contentHeight
      L10_2 = L10_2 - 60
      L10_2 = L10_2 / 2
      L10_2 = 45 + L10_2
      L10_2 = L10_2 + 10
      L11_2 = display
      L11_2 = L11_2.contentHeight
      L11_2 = L11_2 - 60
      L11_2 = L11_2 / 2
      L10_2 = L10_2 - L11_2
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = L19_1
      L8_2 = L7_2
      L7_2 = L7_2.insert
      L9_2 = L22_1
      L9_2 = L9_2[L5_2]
      L9_2 = L9_2.view
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = display
  L2_2 = L2_2.contentHeight
  L2_2 = L2_2 - 70
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = L2_2 / 1.343434
  L3_2 = L3_2(L4_2)
  L4_2 = L20_1
  if L4_2 then
    L4_2 = L20_1
    L5_2 = L4_2
    L4_2 = L4_2.setScrollWidth
    L6_2 = L7_1
    L6_2 = L6_2[A0_2]
    L6_2 = L6_2.maxLevel
    L7_2 = L7_1
    L7_2 = L7_2[A0_2]
    L7_2 = L7_2.minLevel
    L6_2 = L6_2 - L7_2
    L6_2 = L6_2 + 1
    L7_2 = L3_2 + 8
    L6_2 = L6_2 * L7_2
    L4_2(L5_2, L6_2)
    L4_2 = L20_1
    L5_2 = L4_2
    L4_2 = L4_2.scrollTo
    L6_2 = "left"
    L7_2 = {}
    L7_2.time = 0
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = 1
  L5_2 = L1_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = nil
    L9_2 = L7_1
    L9_2 = L9_2[A0_2]
    L9_2 = L9_2.minLevel
    if 1 < L9_2 then
      L9_2 = L7_2 - 1
      L10_2 = L7_1
      L10_2 = L10_2[A0_2]
      L10_2 = L10_2.minLevel
      L8_2 = L9_2 + L10_2
      L9_2 = L22_1
      L9_2 = L9_2[L7_2]
      L10_2 = L9_2
      L9_2 = L9_2.createCard
      L11_2 = {}
      L12_2 = L7_1
      L12_2 = L12_2[A0_2]
      L12_2 = L12_2.name
      L13_2 = " "
      L14_2 = L5_1
      L14_2 = L14_2.adjustNumber
      L15_2 = L8_2
      L14_2 = L14_2(L15_2)
      L12_2 = L12_2 .. L13_2 .. L14_2
      L11_2.name = L12_2
      L11_2.rarity = L8_2
      L9_2(L10_2, L11_2)
    elseif L1_2 == 1 then
      L9_2 = L22_1
      L9_2 = L9_2[L7_2]
      L10_2 = L9_2
      L9_2 = L9_2.createCard
      L11_2 = {}
      L12_2 = L7_1
      L12_2 = L12_2[A0_2]
      L12_2 = L12_2.name
      L11_2.name = L12_2
      L9_2(L10_2, L11_2)
    else
      L8_2 = L7_2
      L9_2 = L22_1
      L9_2 = L9_2[L7_2]
      L10_2 = L9_2
      L9_2 = L9_2.createCard
      L11_2 = {}
      L12_2 = L7_1
      L12_2 = L12_2[A0_2]
      L12_2 = L12_2.name
      L13_2 = " "
      L14_2 = L5_1
      L14_2 = L14_2.adjustNumber
      L15_2 = L8_2
      L14_2 = L14_2(L15_2)
      L12_2 = L12_2 .. L13_2 .. L14_2
      L11_2.name = L12_2
      L11_2.rarity = L8_2
      L9_2(L10_2, L11_2)
    end
    L9_2 = L7_1
    L9_2 = L9_2[A0_2]
    L9_2 = L9_2.maxLevel
    L10_2 = L7_1
    L10_2 = L10_2[A0_2]
    L10_2 = L10_2.minLevel
    L9_2 = L9_2 - L10_2
    L9_2 = L9_2 + 1
    if L7_2 > L9_2 then
      L9_2 = L22_1
      L9_2 = L9_2[L7_2]
      L9_2 = L9_2.view
      L9_2.isVisible = false
    else
      L9_2 = L22_1
      L9_2 = L9_2[L7_2]
      L9_2 = L9_2.view
      L9_2.isVisible = true
    end
  end
  L4_2 = pairs
  L5_2 = L24_1
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L6_1
    L9_2 = L9_2.baseCardWithId
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    seenCard = L9_2
    L9_2 = seenCard
    L9_2 = L9_2.fruitId
    if L9_2 == A0_2 then
      L9_2 = L7_1
      L9_2 = L9_2[A0_2]
      L9_2 = L9_2.minLevel
      if 1 < L9_2 then
        L9_2 = seenCard
        L9_2 = L9_2.rarity
        L10_2 = L7_1
        L10_2 = L10_2[A0_2]
        L10_2 = L10_2.minLevel
        L9_2 = L9_2 - L10_2
        L9_2 = L9_2 + 1
        L10_2 = L22_1
        L10_2 = L10_2[L9_2]
        L11_2 = L10_2
        L10_2 = L10_2.createCard
        L12_2 = seenCard
        L10_2(L11_2, L12_2)
      elseif L1_2 == 1 then
        L9_2 = seenCard
        L10_2 = L9_2.rarity
        if L10_2 ~= 0 then
          L10_2 = L28_1
          L11_2 = L9_2.name
          L12_2 = L9_2.rarity
          L10_2 = L10_2(L11_2, L12_2)
          L9_2.name = L10_2
        end
        L10_2 = L22_1
        L10_2 = L10_2[1]
        L11_2 = L10_2
        L10_2 = L10_2.createCard
        L12_2 = L9_2
        L13_2 = true
        L10_2(L11_2, L12_2, L13_2)
      else
        L9_2 = L22_1
        L10_2 = seenCard
        L10_2 = L10_2.rarity
        L9_2 = L9_2[L10_2]
        L10_2 = L9_2
        L9_2 = L9_2.createCard
        L11_2 = seenCard
        L9_2(L10_2, L11_2)
      end
    end
  end
end

function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L24_1 = A0_2
  L1_2 = mainPlayer
  L1_2.collection = A0_2
  L1_2 = L27_1
  L2_2 = L7_1
  L1_2 = L1_2(L2_2)
  L26_1 = L1_2
  L1_2 = ipairs
  L2_2 = L26_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L21_1
    L7_2 = {}
    L7_2.view = nil
    L7_2.isVisit = false
    L7_2.background = nil
    L7_2.inserted = false
    L7_2.isSelected = false
    L6_2[L5_2] = L7_2
  end
  L1_2 = ipairs
  L2_2 = L24_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L6_1
    L6_2 = L6_2.baseCardWithId
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    seenCard = L6_2
    L6_2 = seenCard
    L6_2 = L6_2.fruitId
    rowNumber = L6_2
    L6_2 = L21_1
    L7_2 = rowNumber
    L6_2 = L6_2[L7_2]
    L6_2.isVisit = true
  end
  L1_2 = L18_1
  L2_2 = L1_2
  L1_2 = L1_2.deleteAllRows
  L1_2(L2_2)
  L1_2 = ipairs
  L2_2 = L26_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L25_1
    if L6_2 == nil then
      L25_1 = L4_2
      L15_1 = L4_2
      L6_2 = L21_1
      L6_2 = L6_2[L5_2]
      L6_2.isSelected = true
    end
    L6_2 = L18_1
    L7_2 = L6_2
    L6_2 = L6_2.insertRow
    L8_2 = {}
    L8_2.rowHeight = 42
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
    L11_2 = 0
    L12_2 = 0
    L13_2 = 0
    L14_2 = 1
    L10_2[1] = L11_2
    L10_2[2] = L12_2
    L10_2[3] = L13_2
    L10_2[4] = L14_2
    L9_2.over = L10_2
    L8_2.rowColor = L9_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = L29_1
  L2_2 = L26_1
  L3_2 = L25_1
  L2_2 = L2_2[L3_2]
  L1_2(L2_2)
  L1_2 = L10_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = L17_1
  if L1_2 then
    L1_2 = false
    L17_1 = L1_2
    L1_2 = log3
    L2_2 = "ZNZNZNNZNZNZNNZNZNZNZ showing tutorial effects"
    L1_2(L2_2)
    L1_2 = L14_1
    L1_2 = L1_2.sparkle
    L2_2 = L16_1
    L2_2 = L2_2.view
    L3_2 = 4000
    L4_2 = 5
    L5_2 = 40
    L6_2 = 170
    L7_2 = display
    L7_2 = L7_2.contentHeight
    L7_2 = L7_2 - 45
    L8_2 = 100
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L1_2 = timer
    L1_2 = L1_2.performWithDelay
    L2_2 = 4000
    
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = L14_1
      L0_3 = L0_3.pointAt
      L1_3 = L16_1
      L1_3 = L1_3.view
      L2_3 = 25
      L3_3 = 20
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = mainPlayer
      L1_3 = L0_3
      L0_3 = L0_3.setSettingForKey
      L2_3 = "activeTutorialState"
      L3_3 = "goBackHome"
      L0_3(L1_3, L2_3, L3_3)
    end
    
    L4_2 = 1
    L1_2(L2_2, L3_2, L4_2)
  end
end

function L31_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L10_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "Collection"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = false
  L17_1 = L1_2
end

function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.row
  L1_2 = L1_2.id
  L2_2 = L26_1
  L1_2 = L2_2[L1_2]
  L2_2 = A0_2.row
  L3_2 = A0_2.row
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = L7_1
  L5_2 = L5_2[L1_2]
  L5_2 = L5_2.name
  L6_2 = 0
  L7_2 = 0
  L8_2 = L9_1
  L8_2 = L8_2.fontForSubtitle
  L8_2 = L8_2()
  L9_2 = 12
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = nil
  L6_2 = L21_1
  L6_2 = L6_2[L1_2]
  L7_2 = A0_2.row
  L6_2.view = L7_2
  L7_2 = L4_2
  L6_2 = L4_2.setFillColor
  L8_2 = L9_1
  L8_2 = L8_2.darkBlueColor
  L8_2, L9_2, L10_2, L11_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = L4_2.width
  L6_2 = L6_2 / 2
  L6_2 = 65 + L6_2
  L4_2.x = L6_2
  L6_2 = L3_2.height
  L6_2 = L6_2 * 0.5
  L4_2.y = L6_2
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = L9_1
  L7_2 = L7_2.Path_Assets
  L8_2 = "cell_background.png"
  L7_2 = L7_2 .. L8_2
  L8_2 = L3_2.contentWidth
  L9_2 = L3_2.contentHeight
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  rowBG = L6_2
  L6_2 = rowBG
  L7_2 = L3_2.contentWidth
  L7_2 = L7_2 / 2
  L6_2.x = L7_2
  L6_2 = rowBG
  L7_2 = L3_2.contentHeight
  L7_2 = L7_2 / 2
  L6_2.y = L7_2
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = L9_1
  L7_2 = L7_2.Path_Assets
  L8_2 = "cell_background_selected.png"
  L7_2 = L7_2 .. L8_2
  L8_2 = L3_2.contentWidth
  L9_2 = L3_2.contentHeight
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  selectedView = L6_2
  L6_2 = selectedView
  L7_2 = L3_2.contentWidth
  L7_2 = L7_2 / 2
  L6_2.x = L7_2
  L6_2 = selectedView
  L7_2 = L3_2.contentHeight
  L7_2 = L7_2 / 2
  L6_2.y = L7_2
  L6_2 = selectedView
  L6_2.isVisible = false
  L6_2 = L21_1
  L6_2 = L6_2[L1_2]
  L7_2 = selectedView
  L6_2.selectedView = L7_2
  L6_2 = L21_1
  L6_2 = L6_2[L1_2]
  L6_2 = L6_2.isSelected
  if L6_2 == true then
    L6_2 = selectedView
    L6_2.isVisible = true
  end
  L7_2 = L2_2
  L6_2 = L2_2.insert
  L8_2 = rowBG
  L6_2(L7_2, L8_2)
  L7_2 = L2_2
  L6_2 = L2_2.insert
  L8_2 = selectedView
  L6_2(L7_2, L8_2)
  L7_2 = L2_2
  L6_2 = L2_2.insert
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L6_2 = L21_1
  L6_2 = L6_2[L1_2]
  L6_2 = L6_2.isVisit
  if L6_2 == true then
    L6_2 = L12_1
    L7_2 = L6_2
    L6_2 = L6_2.new
    L8_2 = L2_2
    L9_2 = L9_1
    L9_2 = L9_2.Path_Assets
    L10_2 = "Cards/"
    L11_2 = L7_1
    L11_2 = L11_2[L1_2]
    L11_2 = L11_2.smallImage
    L9_2 = L9_2 .. L10_2 .. L11_2
    L10_2 = 40
    L11_2 = 40
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L5_2 = L6_2
  else
    L6_2 = display
    L6_2 = L6_2.newImageRect
    L7_2 = L2_2
    L8_2 = L9_1
    L8_2 = L8_2.Path_Assets
    L9_2 = "General/missing.png"
    L8_2 = L8_2 .. L9_2
    L9_2 = 40
    L10_2 = 40
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L5_2 = L6_2
  end
  L5_2.x = 30
  L5_2.y = 22
end

function L33_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.target
  L1_2 = L1_2.id
  L2_2 = L26_1
  L1_2 = L2_2[L1_2]
  L2_2 = A0_2.row
  L3_2 = A0_2.view
  L4_2 = A0_2.table
  L5_2 = A0_2.phase
  if L5_2 == "release" then
  else
    L5_2 = L15_1
    if L5_2 ~= 0 then
      L5_2 = L21_1
      L6_2 = L26_1
      L7_2 = L15_1
      L6_2 = L6_2[L7_2]
      L5_2 = L5_2[L6_2]
      L5_2.isSelected = false
      L5_2 = L21_1
      L6_2 = L26_1
      L7_2 = L15_1
      L6_2 = L6_2[L7_2]
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.selectedView
      L5_2.isVisible = false
    end
    L5_2 = A0_2.target
    L5_2 = L5_2.id
    L15_1 = L5_2
    L5_2 = L21_1
    L6_2 = L26_1
    L7_2 = L15_1
    L6_2 = L6_2[L7_2]
    L5_2 = L5_2[L6_2]
    L5_2.isSelected = true
    L5_2 = L21_1
    L6_2 = L26_1
    L7_2 = L15_1
    L6_2 = L6_2[L7_2]
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.selectedView
    L5_2.isVisible = true
    L5_2 = L29_1
    L6_2 = L1_2
    L5_2(L6_2)
  end
end

function L34_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2.view
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = L9_1
  L4_2 = L4_2.Path_Assets
  L5_2 = "FC-bg.png"
  L4_2 = L4_2 .. L5_2
  L5_2 = 570
  L6_2 = 360
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L5_2 = L2_2
  L4_2 = L2_2.insert
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  L19_1 = L4_2
  L4_2 = display
  L4_2 = L4_2.newRoundedRect
  L5_2 = L2_2
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 / 2
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L7_2 = L7_2 - 45
  L7_2 = L7_2 / 2
  L7_2 = 40 + L7_2
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 - 10
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 - 45
  L10_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = L9_1
  L7_2 = L7_2.whiteColor
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2.strokeWidth = 3
  L6_2 = L4_2
  L5_2 = L4_2.setStrokeColor
  L7_2 = 0.30588235
  L8_2 = 0.5254902
  L9_2 = 0.10980392
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = L3_1
  L5_2 = L5_2.newTableView
  L6_2 = {}
  L6_2.width = 165
  L6_2.topPadding = 5
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L7_2 = L7_2 - 45
  L6_2.height = L7_2
  L7_2 = L32_1
  L6_2.onRowRender = L7_2
  L7_2 = L33_1
  L6_2.onRowTouch = L7_2
  L5_2 = L5_2(L6_2)
  L18_1 = L5_2
  L5_2 = L18_1
  L5_2.x = 87.5
  L5_2 = L18_1
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 - 45
  L6_2 = L6_2 / 2
  L6_2 = 40 + L6_2
  L5_2.y = L6_2
  L5_2 = L19_1
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L18_1
  L5_2(L6_2, L7_2)
  L5_2 = graphics
  L5_2 = L5_2.newMask
  L6_2 = L9_1
  L6_2 = L6_2.Path_Assets
  L7_2 = "General/FC-navIncluded"
  L8_2 = L9_1
  L8_2 = L8_2.deviceSpecificFilePostfix
  L8_2 = L8_2()
  L9_2 = "mask.png"
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
  L5_2 = L5_2(L6_2)
  L6_2 = L19_1
  L7_2 = L6_2
  L6_2 = L6_2.setMask
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = L19_1
  L7_2 = display
  L7_2 = L7_2.contentCenterX
  L7_2 = L7_2 + 0.5
  L6_2.maskX = L7_2
  L6_2 = L19_1
  L7_2 = display
  L7_2 = L7_2.contentCenterY
  L6_2.maskY = L7_2
  L6_2 = display
  L6_2 = L6_2.newRect
  L7_2 = A0_2.view
  L8_2 = 0
  L9_2 = 0
  L10_2 = 3
  L11_2 = display
  L11_2 = L11_2.contentHeight
  L11_2 = L11_2 - 45
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  seprate = L6_2
  L6_2 = seprate
  L7_2 = L6_2
  L6_2 = L6_2.setFillColor
  L8_2 = 0.2627451
  L9_2 = 0.50588235
  L10_2 = 0.17254902
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = seprate
  L6_2.x = 171
  L6_2 = seprate
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L8_2 = seprate
  L8_2 = L8_2.height
  L8_2 = L8_2 / 2
  L7_2 = L7_2 - L8_2
  L7_2 = L7_2 - 4
  L6_2.y = L7_2
  L6_2 = L2_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L6_2 = L6_2(L7_2)
  A0_2.navBar = L6_2
  L6_2 = A0_2.navBar
  L6_2.previousScene = "Scenes.Cards"
  L6_2 = A0_2.navBar
  L6_2.helpId = 23
  L6_2 = A0_2.navBar
  L7_2 = L6_2
  L6_2 = L6_2.setTitle
  L8_2 = L5_1
  L8_2 = L8_2.Collection
  L6_2(L7_2, L8_2)
  L7_2 = L2_2
  L6_2 = L2_2.insert
  L8_2 = A0_2.navBar
  L8_2 = L8_2.view
  L6_2(L7_2, L8_2)
  L7_2 = L2_2
  L6_2 = L2_2.insert
  L8_2 = L19_1
  L6_2(L7_2, L8_2)
  L6_2 = seprate
  L7_2 = L6_2
  L6_2 = L6_2.toFront
  L6_2(L7_2)
end

L16_1.create = L34_1

function L34_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = log3
  L3_2 = "zcxmxzmcmzmxcmzmxcmzxmcxzmcmxzmcmz start tutorial sequence called"
  L2_2(L3_2)
  if A1_2 == "showcaseCollection" then
    L2_2 = true
    L17_1 = L2_2
  end
end

L16_1.startTutorialSequence = L34_1

function L34_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = "Scenes.Cards"
    _backAction = L4_2
    L4_2 = L11_1
    L4_2 = L4_2.logEvent
    L5_2 = "Collection Viewed"
    L4_2(L5_2)
    L4_2 = A0_2.navBar
    L5_2 = L4_2
    L4_2 = L4_2.setNectar
    L6_2 = mainPlayer
    L6_2 = L6_2.nectar
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.navBar
    L5_2 = L4_2
    L4_2 = L4_2.updateGold
    L4_2(L5_2)
    L4_2 = L13_1
    L4_2 = L4_2.newOnScene
    L5_2 = A0_2
    L4_2(L5_2)
    L4_2 = L10_1
    L4_2 = L4_2.show
    L5_2 = L5_1
    L5_2 = L5_2["Fetching Collection"]
    L4_2(L5_2)
    L4_2 = nil
    L25_1 = L4_2
    L4_2 = mainPlayer
    L4_2 = L4_2.getCardCollection
    L5_2 = L30_1
    L6_2 = L31_1
    L4_2(L5_2, L6_2)
  end
end

L16_1.show = L34_1

function L34_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.view
end

L16_1.hide = L34_1

function L34_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.view
  L3_2 = L13_1
  L3_2 = L3_2.removeFromScene
  L4_2 = L16_1
  L3_2(L4_2)
end

L16_1.destroy = L34_1
L35_1 = L16_1
L34_1 = L16_1.addEventListener
L36_1 = "create"
L37_1 = L16_1
L34_1(L35_1, L36_1, L37_1)
L35_1 = L16_1
L34_1 = L16_1.addEventListener
L36_1 = "show"
L37_1 = L16_1
L34_1(L35_1, L36_1, L37_1)
L35_1 = L16_1
L34_1 = L16_1.addEventListener
L36_1 = "hide"
L37_1 = L16_1
L34_1(L35_1, L36_1, L37_1)
L35_1 = L16_1
L34_1 = L16_1.addEventListener
L36_1 = "destroy"
L37_1 = L16_1
L34_1(L35_1, L36_1, L37_1)
return L16_1
