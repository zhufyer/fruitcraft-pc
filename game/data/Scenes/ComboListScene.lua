local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1
L0_1 = require
L1_1 = "Utils.SceneCreator"
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
L5_1 = "Constants"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Utils.Analytics"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.ComboCardsView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Components.DataManager"
L7_1 = L7_1(L8_1)
L8_1 = L7_1.dataWithName
L9_1 = "CardComboData"
L8_1 = L8_1(L9_1)
L9_1 = L7_1.dataWithName
L10_1 = "CardComboLanguage_"
L11_1 = L3_1.lang
L10_1 = L10_1 .. L11_1
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Tutorial.TutorialManager2"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Views.EffectsManager"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Components.TDButtonView"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "composer"
L13_1 = L13_1(L14_1)
L14_1 = L0_1.newScene
L15_1 = "ComboListScene"
L14_1 = L14_1(L15_1)
L15_1 = nil
L16_1 = {}
L17_1 = {}
L18_1 = nil
L19_1 = nil
L20_1 = 0

function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = mainPlayer
  L2_2 = L2_2.availableIdsOfComboSet
  if L2_2 then
    L2_2 = ipairs
    L3_2 = mainPlayer
    L3_2 = L3_2.availableIdsOfComboSet
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L17_1
      L7_2 = L7_2[A0_2]
      L7_2 = L7_2.id
      if L6_2 == L7_2 then
        L1_2 = L6_2
      end
    end
  end
  return L1_2
end

function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L21_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  if L1_2 == 0 then
    L3_2 = {}
    L4_2 = L8_1
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2.count
    L3_2.count = L4_2
    L4_2 = L9_1
    L5_2 = "Combo"
    L6_2 = L8_1
    L6_2 = L6_2[A0_2]
    L6_2 = L6_2.id
    L7_2 = " unlock description"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2 = L4_2[L5_2]
    L3_2.description = L4_2
    L3_2.discovered = false
    L2_2 = L3_2
    return L2_2
  else
    L3_2 = L8_1
    L3_2 = L3_2[L1_2]
    L4_2 = L9_1
    L5_2 = "Combo"
    L6_2 = L8_1
    L6_2 = L6_2[L1_2]
    L6_2 = L6_2.id
    L5_2 = L5_2 .. L6_2
    L4_2 = L4_2[L5_2]
    L3_2.text = L4_2
    L3_2 = L8_1
    L3_2 = L3_2[L1_2]
    L4_2 = L9_1
    L5_2 = "Combo"
    L6_2 = L8_1
    L6_2 = L6_2[L1_2]
    L6_2 = L6_2.id
    L7_2 = " description"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2 = L4_2[L5_2]
    L3_2.description = L4_2
    L3_2 = L8_1
    L3_2 = L3_2[L1_2]
    L3_2.discovered = true
    L3_2 = L8_1
    L3_2 = L3_2[L1_2]
    return L3_2
  end
end

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L17_1
  L1_2 = L1_2[A0_2]
  L1_2.isSelected = true
  L1_2 = L17_1
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.rowBGSelectedRect
  L1_2.isVisible = true
  L20_1 = A0_2
  L1_2 = L18_1
  if L1_2 ~= nil then
    L1_2 = L18_1
    L2_2 = L1_2
    L1_2 = L1_2.setValue
    L3_2 = L22_1
    L4_2 = A0_2
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
end

function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2.row
  L1_2 = L1_2.id
  L2_2 = A0_2.row
  L3_2 = L2_2.contentHeight
  L4_2 = L2_2.contentWidth
  L5_2 = L17_1
  L6_2 = {}
  L6_2.view = L2_2
  L6_2.isSelected = false
  L7_2 = L8_1
  L7_2 = L7_2[L1_2]
  L7_2 = L7_2.id
  L6_2.id = L7_2
  L5_2[L1_2] = L6_2
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = L2_2
  L7_2 = L4_1
  L7_2 = L7_2.Path_Assets
  L8_2 = "cell_background.png"
  L7_2 = L7_2 .. L8_2
  L8_2 = L4_2
  L9_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L4_2 / 2
  L5_2.x = L6_2
  L6_2 = L3_2 / 2
  L5_2.y = L6_2
  L5_2.alpha = 0.5
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = L2_2
  L8_2 = L4_1
  L8_2 = L8_2.Path_Assets
  L9_2 = "cell_background_selected.png"
  L8_2 = L8_2 .. L9_2
  L9_2 = L4_2
  L10_2 = L3_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L19_1 = L6_2
  L6_2 = L19_1
  L7_2 = L4_2 / 2
  L6_2.x = L7_2
  L6_2 = L19_1
  L7_2 = L3_2 / 2
  L6_2.y = L7_2
  L6_2 = L19_1
  L6_2.isVisible = false
  L6_2 = L17_1
  L6_2 = L6_2[L1_2]
  L7_2 = L19_1
  L6_2.rowBGSelectedRect = L7_2
  L6_2 = {}
  L6_2.parent = L2_2
  L7_2 = L9_1
  L8_2 = "Combo"
  L9_2 = L8_1
  L9_2 = L9_2[L1_2]
  L9_2 = L9_2.id
  L8_2 = L8_2 .. L9_2
  L7_2 = L7_2[L8_2]
  L6_2.text = L7_2
  L6_2.x = 0
  L6_2.y = 0
  L6_2.width = 100
  L7_2 = Theme
  L7_2 = L7_2.textStyle
  L7_2 = L7_2[5]
  L7_2 = L7_2.font
  L6_2.font = L7_2
  L6_2.fontSize = 12
  L7_2 = system
  L7_2 = L7_2.getInfo
  L8_2 = "build"
  L7_2 = L7_2(L8_2)
  if "2013.1137" < L7_2 then
    L7_2 = system
    L7_2 = L7_2.getInfo
    L8_2 = "platformName"
    L7_2 = L7_2(L8_2)
    if L7_2 ~= "Android" then
      L7_2 = L3_1
      L7_2 = L7_2.lang
      if L7_2 == "fa" then
        goto lbl_92
      end
    end
  end
  L7_2 = L3_1
  L7_2 = L7_2.lang
  ::lbl_92::
  if L7_2 == "ar" then
    L6_2.align = "right"
  end
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  L9_2 = L7_2
  L8_2 = L7_2.setFillColor
  L10_2 = L4_1
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L8_2 = L7_2.width
  L8_2 = L8_2 / 2
  L8_2 = 55 + L8_2
  L7_2.x = L8_2
  L8_2 = L2_2.height
  L8_2 = L8_2 * 0.5
  L7_2.y = L8_2
  L7_2.alpha = 0.5
  L8_2 = display
  L8_2 = L8_2.newImageRect
  L9_2 = L2_2
  L10_2 = L4_1
  L10_2 = L10_2.Path_Assets
  L11_2 = "Combos/icons/"
  L12_2 = L8_1
  L12_2 = L12_2[L1_2]
  L12_2 = L12_2.smallImage
  L10_2 = L10_2 .. L11_2 .. L12_2
  L11_2 = 35
  L12_2 = 34
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2.x = 30
  L8_2.y = 22
  L8_2.alpha = 0.5
  L9_2 = mainPlayer
  L9_2 = L9_2.availableIdsOfComboSet
  if L9_2 then
    L9_2 = ipairs
    L10_2 = mainPlayer
    L10_2 = L10_2.availableIdsOfComboSet
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L14_2 = L17_1
      L14_2 = L14_2[L1_2]
      L14_2 = L14_2.id
      if L13_2 == L14_2 then
        L5_2.alpha = 1
        L7_2.alpha = 1
        L8_2.alpha = 1
        break
      end
    end
  else
    L9_2 = L23_1
    L10_2 = 1
    L9_2(L10_2)
  end
end

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.target
  L1_2 = L1_2.id
  L2_2 = A0_2.phase
  if L2_2 == "release" then
  else
    L2_2 = L20_1
    if L2_2 ~= 0 then
      L2_2 = L17_1
      L3_2 = L20_1
      L2_2 = L2_2[L3_2]
      L2_2.isSelected = false
      L2_2 = L17_1
      L3_2 = L20_1
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.rowBGSelectedRect
      L2_2.isVisible = false
      L2_2 = L18_1
      L3_2 = L2_2
      L2_2 = L2_2.removeCards
      L4_2 = L22_1
      L5_2 = L20_1
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = L23_1
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end

function L26_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.params
  if L2_2 then
    L2_2 = A0_2.navBar
    L3_2 = A1_2.params
    L3_2 = L3_2.previousScene
    L2_2.previousScene = L3_2
    L2_2 = A1_2.params
    L2_2 = L2_2.previousScene
    _backAction = L2_2
  end
end

function L27_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.view
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = L4_1
  L4_2 = L4_2.Path_Assets
  L5_2 = "FC-bg.png"
  L4_2 = L4_2 .. L5_2
  L5_2 = 570
  L6_2 = 360
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2.backgroundRect = L3_2
  L3_2 = A0_2.backgroundRect
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L3_2 = A0_2.backgroundRect
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L4_2 = L2_2
  L3_2 = L2_2.insert
  L5_2 = A0_2.backgroundRect
  L3_2(L4_2, L5_2)
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  L15_1 = L3_2
  L3_2 = display
  L3_2 = L3_2.newRoundedRect
  L4_2 = L2_2
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 / 2
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 - 45
  L6_2 = L6_2 / 2
  L6_2 = 40 + L6_2
  L7_2 = display
  L7_2 = L7_2.contentWidth
  L7_2 = L7_2 - 10
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 - 45
  L9_2 = 3
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2.boxBackgroundRect = L3_2
  L3_2 = A0_2.boxBackgroundRect
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Theme
  L5_2 = L5_2.colorsSet
  L5_2 = L5_2.whiteColor
  L5_2 = L5_2[1]
  L6_2 = Theme
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.whiteColor
  L6_2 = L6_2[2]
  L7_2 = Theme
  L7_2 = L7_2.colorsSet
  L7_2 = L7_2.whiteColor
  L7_2 = L7_2[3]
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2.boxBackgroundRect
  L3_2.strokeWidth = 3
  L3_2 = A0_2.boxBackgroundRect
  L4_2 = L3_2
  L3_2 = L3_2.setStrokeColor
  L5_2 = Theme
  L5_2 = L5_2.overlayStrokeColor
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L3_2 = L3_2(L4_2)
  A0_2.navBar = L3_2
  L3_2 = A0_2.navBar
  L3_2.previousScene = "Scenes.Cards"
  L3_2 = A0_2.navBar
  L3_2.helpId = 36
  L3_2 = A0_2.navBar
  L4_2 = L3_2
  L3_2 = L3_2.setTitle
  L5_2 = L3_1
  L5_2 = L5_2.Combo
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.insert
  L5_2 = A0_2.navBar
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L3_2 = L2_1
  L3_2 = L3_2.newTableView
  L4_2 = {}
  L4_2.width = 165
  L4_2.topPadding = 5
  L5_2 = display
  L5_2 = L5_2.contentHeight
  L5_2 = L5_2 - 45
  L4_2.height = L5_2
  L5_2 = L24_1
  L4_2.onRowRender = L5_2
  L5_2 = L25_1
  L4_2.onRowTouch = L5_2
  L3_2 = L3_2(L4_2)
  A0_2.comboList = L3_2
  L3_2 = A0_2.comboList
  L3_2.x = 87.5
  L3_2 = A0_2.comboList
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 - 45
  L4_2 = L4_2 / 2
  L4_2 = 40 + L4_2
  L3_2.y = L4_2
  L3_2 = L15_1
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.comboList
  L3_2(L4_2, L5_2)
  L3_2 = 1
  L4_2 = L8_1
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2.comboList
    L8_2 = L7_2
    L7_2 = L7_2.insertRow
    L9_2 = {}
    L7_2(L8_2, L9_2)
  end
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = A0_2.view
  L5_2 = 0
  L6_2 = 0
  L7_2 = 3
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 - 45
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.seperateLine = L3_2
  L3_2 = A0_2.seperateLine
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Theme
  L5_2 = L5_2.overlayStrokeColor
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = A0_2.seperateLine
  L3_2.x = 171
  L3_2 = A0_2.seperateLine
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L5_2 = A0_2.seperateLine
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 - L5_2
  L4_2 = L4_2 - 4
  L3_2.y = L4_2
  L3_2 = L6_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L3_2 = L3_2(L4_2)
  L18_1 = L3_2
  L4_2 = L2_2
  L3_2 = L2_2.insert
  L5_2 = L18_1
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.insert
  L5_2 = L15_1
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.seperateLine
  L4_2 = L3_2
  L3_2 = L3_2.toFront
  L3_2(L4_2)
end

L14_1.create = L27_1

function L27_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = 180
  L4_2 = L18_1
  L4_2 = L4_2.detailsDataLabel
  L4_2 = L4_2.y
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 - 10
  L6_2 = L18_1
  L6_2 = L6_2.comboExplanationLabel
  L6_2 = L6_2.y
  L7_2 = L18_1
  L7_2 = L7_2.comboExplanationLabel
  L7_2 = L7_2.height
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L7_2 = L11_1
  L7_2 = L7_2.sparkle
  L8_2 = A0_2.view
  L9_2 = 1400
  L10_2 = L3_2
  L11_2 = L4_2
  L12_2 = L5_2
  L13_2 = L6_2
  L14_2 = 100
  L15_2 = true
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L7_2 = display
  L7_2 = L7_2.newCircle
  L8_2 = A0_2.view
  L9_2 = L18_1
  L9_2 = L9_2.potionCostLabel
  L9_2 = L9_2.x
  L10_2 = L18_1
  L10_2 = L10_2.potionCostLabel
  L10_2 = L10_2.icon
  L10_2 = L10_2.x
  L9_2 = L9_2 + L10_2
  L10_2 = L18_1
  L10_2 = L10_2.potionCostLabel
  L10_2 = L10_2.y
  L11_2 = L18_1
  L11_2 = L11_2.potionCostLabel
  L11_2 = L11_2.icon
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L11_2 = L11_2 + 10
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L9_2 = L7_2
  L8_2 = L7_2.setFillColor
  L10_2 = 1
  L11_2 = 0
  L12_2 = 0
  L13_2 = 0
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2.strokeWidth = 2
  L9_2 = L7_2
  L8_2 = L7_2.setStrokeColor
  L10_2 = 1
  L11_2 = 0
  L12_2 = 0
  L13_2 = 1
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2.alpha = 0
  L8_2 = timer
  L8_2 = L8_2.performWithDelay
  L9_2 = 1500
  
  function L10_2()
    local L0_3, L1_3, L2_3
    L0_3 = L7_2
    L0_3.alpha = 1
    L0_3 = transition
    L0_3 = L0_3.blink
    L1_3 = L7_2
    L2_3 = {}
    L2_3.time = 3000
    L0_3(L1_3, L2_3)
  end
  
  L8_2(L9_2, L10_2)
  L8_2 = L10_1
  L8_2 = L8_2.processInformativeTutorial
  L9_2 = A1_2
  
  function L10_2()
    local L0_3, L1_3
    L0_3 = transition
    L0_3 = L0_3.cancel
    L1_3 = L7_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L7_2
    L0_3(L1_3)
    L0_3 = nil
    L7_2 = L0_3
    L0_3 = A2_2
    L0_3()
  end
  
  L8_2(L9_2, L10_2)
end

L14_1.highlightPotion = L27_1

function L27_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = A0_2.comboList
    L5_2 = L4_2
    L4_2 = L4_2.reloadData
    L4_2(L5_2)
    L4_2 = nil
    L5_2 = nil
    L6_2 = mainPlayer
    L6_2 = L6_2.availableIdsOfComboSet
    if L6_2 then
      L6_2 = A1_2.params
      if L6_2 then
        L6_2 = A1_2.params
        L6_2 = L6_2.newComboDiscovered
        if L6_2 then
          L6_2 = mainPlayer
          L6_2 = L6_2.availableIdsOfComboSet
          L4_2 = #L6_2
          L6_2 = mainPlayer
          L6_2 = L6_2.availableIdsOfComboSet
          L5_2 = L6_2[L4_2]
        else
          L6_2 = A1_2.params
          L6_2 = L6_2.newComboDiscovered
          if not L6_2 then
            L6_2 = L20_1
            if L6_2 == 0 then
              L6_2 = mainPlayer
              L6_2 = L6_2.availableIdsOfComboSet
              L6_2 = L6_2[1]
              if L6_2 then
                L6_2 = mainPlayer
                L6_2 = L6_2.availableIdsOfComboSet
                L7_2 = mainPlayer
                L7_2 = L7_2.availableIdsOfComboSet
                L7_2 = #L7_2
                L5_2 = L6_2[L7_2]
              else
                L5_2 = 1
              end
          end
          else
            L6_2 = A1_2.params
            L6_2 = L6_2.newComboDiscovered
            if not L6_2 then
              L6_2 = L20_1
              if 0 < L6_2 then
                L5_2 = L20_1
              end
            end
          end
        end
      else
        L5_2 = 1
      end
      L6_2 = A0_2.comboList
      L7_2 = L6_2
      L6_2 = L6_2.scrollToIndex
      L8_2 = L5_2
      L9_2 = 100
      
      function L10_2()
        local L0_3, L1_3
        L0_3 = L23_1
        L1_3 = L5_2
        L0_3(L1_3)
      end
      
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = L26_1
    L7_2 = A0_2
    L8_2 = A1_2
    L6_2(L7_2, L8_2)
    L6_2 = L10_1
    L6_2 = L6_2.checkForTutorial
    L7_2 = "Scenes.ComboListScene"
    L8_2 = A0_2
    L6_2(L7_2, L8_2)
    L6_2 = L5_1
    L6_2 = L6_2.logEvent
    L7_2 = "Combo List Viewed"
    L6_2(L7_2)
    L6_2 = A0_2.navBar
    L7_2 = L6_2
    L6_2 = L6_2.setNectar
    L8_2 = mainPlayer
    L8_2 = L8_2.nectar
    L6_2(L7_2, L8_2)
    L6_2 = A0_2.navBar
    L7_2 = L6_2
    L6_2 = L6_2.updateGold
    L6_2(L7_2)
  end
end

L14_1.show = L27_1
L28_1 = L14_1
L27_1 = L14_1.addEventListener
L29_1 = "create"
L30_1 = L14_1
L27_1(L28_1, L29_1, L30_1)
L28_1 = L14_1
L27_1 = L14_1.addEventListener
L29_1 = "show"
L30_1 = L14_1
L27_1(L28_1, L29_1, L30_1)
return L14_1
