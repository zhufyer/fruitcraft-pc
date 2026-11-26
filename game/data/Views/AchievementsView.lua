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
L2_1 = "Views.NavigationBar"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "widget"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Language"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Data.BaseAchievementsSet"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Data.BaseAchievements"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Models.Player"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Constants"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Views.ActivityIndicatorView"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Utils.Analytics"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Views.AchievementItemView"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Models.AchievementManager"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Utils.Toolbox"
L12_1 = L12_1(L13_1)
L13_1 = 0
L14_1 = L0_1.newScene
L14_1 = L14_1()
L15_1 = nil
L16_1 = nil
L17_1 = nil
L18_1 = {}
L19_1 = {}
L20_1 = nil

function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end

function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  sortedAchievementsKeys = L1_2
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = sortedAchievementsKeys
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = sortedAchievementsKeys
  
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L2_3 = L2_3[A0_3]
    L3_3 = A0_2
    L3_3 = L3_3[A1_3]
    L4_3 = L2_3.id
    L5_3 = L3_3.id
    L4_3 = L4_3 < L5_3
    return L4_3
  end
  
  L1_2(L2_2, L3_2)
  L1_2 = sortedAchievementsKeys
  return L1_2
end

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = log3
  L2_2 = "card max level is : "
  L3_2 = L4_1
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.max
  L1_2(L2_2, L3_2)
  L1_2 = L17_1
  L2_2 = L1_2
  L1_2 = L1_2.setScrollWidth
  L3_2 = L4_1
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.max
  L3_2 = L3_2 * 135
  L1_2(L2_2, L3_2)
  L1_2 = L17_1
  L2_2 = L1_2
  L1_2 = L1_2.scrollTo
  L3_2 = "left"
  L4_2 = {}
  L4_2.time = 0
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = pairs
  L2_2 = L19_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.view
    L7_2 = L6_2
    L6_2 = L6_2.removeSelf
    L6_2(L7_2)
    L5_2 = nil
  end
  L1_2 = ipairs
  L2_2 = L4_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.achievementsID
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = log3
    L7_2 = " achievement id is : "
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = L19_1
    L7_2 = L10_1
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = L5_1
    L9_2 = L9_2[L5_2]
    L7_2 = L7_2(L8_2, L9_2)
    L6_2[L4_2] = L7_2
    L6_2 = L17_1
    L7_2 = L6_2
    L6_2 = L6_2.insert
    L8_2 = L19_1
    L8_2 = L8_2[L4_2]
    L8_2 = L8_2.view
    L6_2(L7_2, L8_2)
    L6_2 = L21_1
    L7_2 = L4_1
    L7_2 = L7_2[A0_2]
    L7_2 = L7_2.achievementsID
    L6_2 = L6_2(L7_2)
    if L6_2 == 1 then
      L6_2 = L17_1
      L6_2.horizontalScrollDisabled = true
      L6_2 = L19_1
      L6_2 = L6_2[L4_2]
      L7_2 = L6_2
      L6_2 = L6_2.setPosition
      L8_2 = display
      L8_2 = L8_2.contentWidth
      L8_2 = L8_2 / 4
      L8_2 = L8_2 - 50
      L9_2 = display
      L9_2 = L9_2.contentHeight
      L9_2 = L9_2 - 200
      L9_2 = L9_2 / 2
      L6_2(L7_2, L8_2, L9_2)
    else
      L6_2 = L19_1
      L6_2 = L6_2[L4_2]
      L7_2 = L6_2
      L6_2 = L6_2.setPosition
      L8_2 = L4_2 - 1
      L8_2 = L8_2 * 135
      L8_2 = 5 + L8_2
      L9_2 = display
      L9_2 = L9_2.contentHeight
      L9_2 = L9_2 - 200
      L9_2 = L9_2 / 2
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end

function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = ipairs
  L1_2 = sortedBaseAchievements
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = L18_1
    L6_2 = {}
    L6_2.view = nil
    L6_2.isVisit = true
    L6_2.background = nil
    L6_2.inserted = false
    L6_2.isSelected = false
    L5_2[L4_2] = L6_2
  end
  L0_2 = L15_1
  L1_2 = L0_2
  L0_2 = L0_2.deleteAllRows
  L0_2(L1_2)
  L0_2 = ipairs
  L1_2 = sortedBaseAchievements
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = L20_1
    if L5_2 == nil then
      L20_1 = L3_2
      L13_1 = L3_2
      L5_2 = L18_1
      L5_2 = L5_2[L4_2]
      L5_2.isSelected = true
    end
    L5_2 = L15_1
    L6_2 = L5_2
    L5_2 = L5_2.insertRow
    L7_2 = {}
    L7_2.rowHeight = 42
    L7_2.id = L3_2
    L8_2 = {}
    L9_2 = {}
    L10_2 = 255
    L11_2 = 255
    L12_2 = 255
    L13_2 = 200
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L9_2[3] = L12_2
    L9_2[4] = L13_2
    L8_2.default = L9_2
    L9_2 = {}
    L10_2 = 0
    L11_2 = 0
    L12_2 = 0
    L13_2 = 1
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L9_2[3] = L12_2
    L9_2[4] = L13_2
    L8_2.over = L9_2
    L7_2.rowColor = L8_2
    L5_2(L6_2, L7_2)
  end
  L0_2 = L18_1
  L1_2 = L20_1
  L0_2 = L0_2[L1_2]
  L0_2 = L0_2.selectedView
  L0_2.isVisible = true
  L0_2 = L23_1
  L1_2 = sortedBaseAchievements
  L2_2 = L20_1
  L1_2 = L1_2[L2_2]
  L0_2(L1_2)
end

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = log3
  L2_2 = "on row render"
  L1_2(L2_2)
  L1_2 = A0_2.row
  L1_2 = L1_2.id
  L2_2 = sortedBaseAchievements
  L1_2 = L2_2[L1_2]
  L2_2 = A0_2.row
  L3_2 = A0_2.row
  L4_2 = nil
  L5_2 = nil
  L6_2 = log3
  L7_2 = "BaseAchievementsSet[k].id is : "
  L8_2 = L4_1
  L8_2 = L8_2[L1_2]
  L8_2 = L8_2.id
  L6_2(L7_2, L8_2)
  L6_2 = L11_1
  L6_2 = L6_2.getNextAchievementForSetId
  L7_2 = L4_1
  L7_2 = L7_2[L1_2]
  L7_2 = L7_2.id
  L6_2, L7_2 = L6_2(L7_2)
  L8_2 = L4_1
  L8_2 = L8_2[L1_2]
  L8_2 = L8_2.staticsName
  if L8_2 then
    L8_2 = math
    L8_2 = L8_2.floor
    L9_2 = L11_1
    L9_2 = L9_2.getAchievementsProgress
    L10_2 = L4_1
    L10_2 = L10_2[L1_2]
    L10_2 = L10_2.staticsName
    L9_2 = L9_2(L10_2)
    L10_2 = L6_2.limit
    L9_2 = L9_2 / L10_2
    L9_2 = L9_2 * 100
    L8_2 = L8_2(L9_2)
    if 100 < L8_2 then
      L8_2 = 100
    elseif L8_2 < 0 then
      L8_2 = 0
    end
    L9_2 = display
    L9_2 = L9_2.newText
    L10_2 = L3_1
    L10_2 = L10_2.adjustNumber
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    L11_2 = " %"
    L10_2 = L10_2 .. L11_2
    L11_2 = 0
    L12_2 = 0
    L13_2 = L7_1
    L13_2 = L13_2.fontForSubtitle
    L13_2 = L13_2()
    L14_2 = 9
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    L4_2 = L9_2
    L10_2 = L4_2
    L9_2 = L4_2.setFillColor
    L11_2 = L7_1
    L11_2 = L11_2.darkBlueColor
    L11_2, L12_2, L13_2, L14_2 = L11_2()
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    L9_2 = L4_2.width
    L9_2 = L9_2 / 2
    L9_2 = 65 + L9_2
    L4_2.x = L9_2
    L9_2 = L3_2.height
    L9_2 = L9_2 * 0.8
    L4_2.y = L9_2
    if L7_2 then
      L9_2 = L3_1
      L9_2 = L9_2.adjustNumber
      L10_2 = 100
      L9_2 = L9_2(L10_2)
      L10_2 = " %"
      L9_2 = L9_2 .. L10_2
      L4_2.text = L9_2
    end
  end
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = L4_1
  L9_2 = L9_2[L1_2]
  L9_2 = L9_2.name
  L10_2 = 0
  L11_2 = 0
  L12_2 = L7_1
  L12_2 = L12_2.fontForSubtitle
  L12_2 = L12_2()
  L13_2 = 13
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L9_2 = nil
  L10_2 = L18_1
  L10_2 = L10_2[L1_2]
  L11_2 = A0_2.row
  L10_2.view = L11_2
  L11_2 = L8_2
  L10_2 = L8_2.setFillColor
  L12_2 = L7_1
  L12_2 = L12_2.darkBlueColor
  L12_2, L13_2, L14_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2)
  L10_2 = L8_2.width
  L10_2 = L10_2 / 2
  L10_2 = 65 + L10_2
  L8_2.x = L10_2
  L10_2 = L3_2.height
  L10_2 = L10_2 * 0.5
  L8_2.y = L10_2
  L10_2 = display
  L10_2 = L10_2.newImageRect
  L11_2 = L7_1
  L11_2 = L11_2.Path_Assets
  L12_2 = L6_2.image
  L11_2 = L11_2 .. L12_2
  L12_2 = 40
  L13_2 = 40
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L9_2 = L10_2
  L10_2 = L9_2.width
  L10_2 = L10_2 / 2
  L10_2 = 10 + L10_2
  L9_2.x = L10_2
  L10_2 = L3_2.height
  L10_2 = L10_2 * 0.5
  L9_2.y = L10_2
  L10_2 = display
  L10_2 = L10_2.newImageRect
  L11_2 = L7_1
  L11_2 = L11_2.Path_Assets
  L12_2 = "cell_background.png"
  L11_2 = L11_2 .. L12_2
  L12_2 = L3_2.contentWidth
  L13_2 = L3_2.contentHeight
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  rowBG = L10_2
  L10_2 = rowBG
  L11_2 = L3_2.contentWidth
  L11_2 = L11_2 / 2
  L10_2.x = L11_2
  L10_2 = rowBG
  L11_2 = L3_2.contentHeight
  L11_2 = L11_2 / 2
  L10_2.y = L11_2
  L10_2 = display
  L10_2 = L10_2.newImageRect
  L11_2 = L7_1
  L11_2 = L11_2.Path_Assets
  L12_2 = "cell_background_selected.png"
  L11_2 = L11_2 .. L12_2
  L12_2 = L3_2.contentWidth
  L13_2 = L3_2.contentHeight
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = L3_2.contentWidth
  L11_2 = L11_2 / 2
  L10_2.x = L11_2
  L11_2 = L3_2.contentHeight
  L11_2 = L11_2 / 2
  L10_2.y = L11_2
  L10_2.isVisible = false
  L11_2 = L18_1
  L11_2 = L11_2[L1_2]
  L11_2.selectedView = L10_2
  L11_2 = L18_1
  L11_2 = L11_2[L1_2]
  L11_2 = L11_2.isSelected
  if L11_2 == true then
    L11_2 = log3
    L12_2 = "set selectedView visible"
    L11_2(L12_2)
    L10_2.isVisible = true
  end
  L12_2 = L2_2
  L11_2 = L2_2.insert
  L13_2 = rowBG
  L11_2(L12_2, L13_2)
  L12_2 = L2_2
  L11_2 = L2_2.insert
  L13_2 = L10_2
  L11_2(L12_2, L13_2)
  L12_2 = L2_2
  L11_2 = L2_2.insert
  L13_2 = L8_2
  L11_2(L12_2, L13_2)
  if L4_2 then
    L12_2 = L2_2
    L11_2 = L2_2.insert
    L13_2 = L4_2
    L11_2(L12_2, L13_2)
  end
  L12_2 = L2_2
  L11_2 = L2_2.insert
  L13_2 = L9_2
  L11_2(L12_2, L13_2)
end

function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.target
  L1_2 = L1_2.id
  L2_2 = sortedBaseAchievements
  L1_2 = L2_2[L1_2]
  L2_2 = A0_2.row
  L3_2 = A0_2.view
  L4_2 = A0_2.table
  L5_2 = A0_2.phase
  if L5_2 == "release" then
  else
    L5_2 = L13_1
    if L5_2 ~= 0 then
      L5_2 = L18_1
      L6_2 = sortedBaseAchievements
      L7_2 = L13_1
      L6_2 = L6_2[L7_2]
      L5_2 = L5_2[L6_2]
      L5_2.isSelected = false
      L5_2 = L18_1
      L6_2 = sortedBaseAchievements
      L7_2 = L13_1
      L6_2 = L6_2[L7_2]
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.selectedView
      L5_2.isVisible = false
    end
    L5_2 = A0_2.target
    L5_2 = L5_2.id
    L13_1 = L5_2
    L5_2 = L18_1
    L6_2 = sortedBaseAchievements
    L7_2 = L13_1
    L6_2 = L6_2[L7_2]
    L5_2 = L5_2[L6_2]
    L5_2.isSelected = true
    L5_2 = L18_1
    L6_2 = sortedBaseAchievements
    L7_2 = L13_1
    L6_2 = L6_2[L7_2]
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.selectedView
    L5_2.isVisible = true
    L5_2 = L23_1
    L6_2 = L1_2
    L5_2(L6_2)
  end
end

function L27_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = pairs
  L1_2 = L18_1
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L4_2 = nil
  end
  L0_2 = nil
  L20_1 = L0_2
  L0_2 = {}
  L18_1 = L0_2
  L0_2 = L22_1
  L1_2 = L4_1
  L0_2 = L0_2(L1_2)
  sortedBaseAchievements = L0_2
  L0_2 = L24_1
  L0_2()
end

repaint = L27_1

function L27_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = setmetatable
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  L2_2 = display
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  A1_2.view = L2_2
  L2_2 = L17_1
  if L2_2 then
    L2_2 = L17_1
    L3_2 = L2_2
    L2_2 = L2_2.removeSelf
    L2_2(L3_2)
    L2_2 = nil
    L17_1 = L2_2
  end
  L2_2 = L2_1
  L2_2 = L2_2.newScrollView
  L3_2 = {}
  L4_2 = display
  L4_2 = L4_2.contentWidth
  L4_2 = L4_2 - 175
  L3_2.width = L4_2
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 - 70
  L3_2.height = L4_2
  L3_2.verticalScrollDisabled = true
  L3_2.scrollWidth = 1190
  L3_2.rightPadding = 20
  L3_2.scrollHeight = 0
  L2_2 = L2_2(L3_2)
  L17_1 = L2_2
  L2_2 = L17_1
  L3_2 = display
  L3_2 = L3_2.contentWidth
  L3_2 = L3_2 - 175
  L3_2 = L3_2 / 2
  L3_2 = 164 + L3_2
  L2_2.x = L3_2
  L2_2 = L17_1
  L3_2 = display
  L3_2 = L3_2.contentHeight
  L3_2 = L3_2 - 70
  L3_2 = L3_2 / 2
  L2_2.y = L3_2
  L2_2 = L17_1
  L2_2.verticalScrollDisabled = true
  L2_2 = A1_2.view
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = L17_1
  L2_2(L3_2, L4_2)
  L2_2 = L15_1
  if L2_2 then
    L2_2 = L15_1
    L3_2 = L2_2
    L2_2 = L2_2.removeSelf
    L2_2(L3_2)
    L2_2 = nil
    L15_1 = L2_2
  end
  L2_2 = L2_1
  L2_2 = L2_2.newTableView
  L3_2 = {}
  L3_2.width = 164
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 - 62
  L3_2.height = L4_2
  L4_2 = L25_1
  L3_2.onRowRender = L4_2
  L4_2 = L26_1
  L3_2.onRowTouch = L4_2
  L2_2 = L2_2(L3_2)
  L15_1 = L2_2
  L2_2 = L15_1
  L2_2.x = 81
  L2_2 = L15_1
  L3_2 = display
  L3_2 = L3_2.contentHeight
  L3_2 = L3_2 - 70
  L3_2 = L3_2 / 2
  L2_2.y = L3_2
  L2_2 = A1_2.view
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = L15_1
  L2_2(L3_2, L4_2)
  L2_2 = L0_1
  L2_2 = L2_2.getScene
  L3_2 = "Scenes.SocialScene"
  L2_2 = L2_2(L3_2)
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = L2_2.view
  L5_2 = 0
  L6_2 = 0
  L7_2 = 3
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 - 59
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  A1_2.seprate = L3_2
  L3_2 = A1_2.seprate
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = 0.2627451
  L6_2 = 0.50588235
  L7_2 = 0.17254902
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A1_2.seprate
  L3_2.x = 168
  L3_2 = A1_2.seprate
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L4_2 = L4_2 + 25
  L3_2.y = L4_2
  L3_2 = A1_2.seprate
  L3_2.isVisible = false
  return A1_2
end

new = L27_1

function L27_1()
  local L0_2, L1_2
  L17_1 = L0_2
  L0_2 = nil
  L15_1 = L0_2
end

destroyView = L27_1

function L27_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.seprate
  L1_2.isVisible = true
  L1_2 = A0_2.seprate
  L2_2 = L1_2
  L1_2 = L1_2.toFront
  L1_2(L2_2)
end

show = L27_1

function L27_1(A0_2)
  local L1_2
  L1_2 = A0_2.seprate
  L1_2.isVisible = false
end

hide = L27_1

function L27_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L27_1
