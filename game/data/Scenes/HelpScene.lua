local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.SceneCreator"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Constants"
L3_1(L4_1)
L3_1 = require
L4_1 = "widget"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.NavigationBar"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Utils.Analytics"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Data.FullHelpContent"
L6_1 = L6_1(L7_1)
L7_1 = L1_1.newScene
L8_1 = "HelpScene"
L7_1 = L7_1(L8_1)

function L8_1(A0_2)
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

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2.row
  L1_2 = L1_2.id
  L2_2 = A0_2.row
  L3_2 = A0_2.row
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "General/FC-smallCellBG.png"
  L5_2 = L5_2 .. L6_2
  L6_2 = L3_2.contentWidth
  L7_2 = L3_2.contentHeight
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.rowBG = L4_2
  L4_2 = L3_2.rowBG
  L5_2 = L3_2.contentWidth
  L5_2 = L5_2 / 2
  L4_2.x = L5_2
  L4_2 = L3_2.rowBG
  L5_2 = L3_2.contentHeight
  L5_2 = L5_2 / 2
  L4_2.y = L5_2
  L5_2 = L2_2
  L4_2 = L2_2.insert
  L6_2 = L3_2.rowBG
  L4_2(L5_2, L6_2)
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = L2_2
  L6_2 = L6_1
  L6_2 = L6_2.fullHelpChunks
  L6_2 = L6_2[L1_2]
  L6_2 = L6_2.name
  L7_2 = 0
  L8_2 = 0
  L9_2 = Constants
  L9_2 = L9_2.fontForTitle
  L9_2 = L9_2()
  L10_2 = 14
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2.x = 63.5
  L4_2.y = 19.5
end

function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.target
  L1_2 = L1_2.id
  L2_2 = L7_1
  L2_2 = L2_2.descriptionSide
  L2_2 = L2_2.name
  L3_2 = L6_1
  L3_2 = L3_2.fullHelpChunks
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.name
  L2_2.text = L3_2
  L2_2 = L7_1
  L2_2 = L2_2.descriptionSide
  L2_2 = L2_2.description
  L3_2 = L6_1
  L3_2 = L3_2.fullHelpChunks
  L3_2 = L3_2[L1_2]
  L3_2 = L3_2.description
  L2_2.text = L3_2
end

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = A0_2.view
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = Constants
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
  L7_2 = Constants
  L7_2 = L7_2.whiteColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L4_2.strokeWidth = 3
  L6_2 = L4_2
  L5_2 = L4_2.setStrokeColor
  L7_2 = Constants
  L7_2 = L7_2.greenColorSceneBorder
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  L6_2 = L3_1
  L6_2 = L6_2.newTableView
  L7_2 = {}
  L7_2.width = 127
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 - 47
  L7_2.height = L8_2
  L7_2.id = "help_tableview"
  L7_2.noLines = true
  L8_2 = L9_1
  L7_2.onRowRender = L8_2
  L8_2 = L10_1
  L7_2.onRowTouch = L8_2
  L7_2.hideScrollBar = true
  L6_2 = L6_2(L7_2)
  A0_2.list = L6_2
  L6_2 = A0_2.list
  L6_2.x = 68.5
  L6_2 = A0_2.list
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L7_2 = L7_2 - 47
  L7_2 = L7_2 / 2
  L7_2 = 41 + L7_2
  L6_2.y = L7_2
  A0_2.selectedIndex = -1
  L7_2 = L5_2
  L6_2 = L5_2.insert
  L8_2 = A0_2.list
  L6_2(L7_2, L8_2)
  L6_2 = L8_1
  L7_2 = L6_1
  L7_2 = L7_2.fullHelpChunks
  L6_2 = L6_2(L7_2)
  sortedHelpContent = L6_2
  L6_2 = {}
  A0_2.rowRef = L6_2
  L6_2 = ipairs
  L7_2 = sortedHelpContent
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = {}
    L11_2.id = L10_2
    L11_2.rowHeight = 39
    L12_2 = L6_1
    L12_2 = L12_2.fullHelpChunks
    L12_2 = L12_2[L10_2]
    L12_2 = L12_2.isVisible
    if L12_2 ~= nil then
      L12_2 = L6_1
      L12_2 = L12_2.fullHelpChunks
      L12_2 = L12_2[L10_2]
      L12_2 = L12_2.isVisible
      if L12_2 ~= true then
        goto lbl_118
      end
    end
    L12_2 = A0_2.list
    L13_2 = L12_2
    L12_2 = L12_2.insertRow
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
    L12_2 = table
    L12_2 = L12_2.insert
    L13_2 = A0_2.rowRef
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
    ::lbl_118::
  end
  L6_2 = {}
  A0_2.descriptionSide = L6_2
  L6_2 = A0_2.descriptionSide
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = L2_2
  L9_2 = L2_1
  L9_2 = L9_2["Game Help"]
  L10_2 = 0
  L11_2 = 0
  L12_2 = Constants
  L12_2 = L12_2.fontForTitle
  L12_2 = L12_2()
  L13_2 = 20
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2.name = L7_2
  L6_2 = A0_2.descriptionSide
  L6_2 = L6_2.name
  L7_2 = L6_2
  L6_2 = L6_2.setFillColor
  L8_2 = Constants
  L8_2 = L8_2.darkBlueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2 = A0_2.descriptionSide
  L6_2 = L6_2.name
  L7_2 = display
  L7_2 = L7_2.contentWidth
  L7_2 = L7_2 - 12
  L7_2 = L7_2 - 127
  L7_2 = L7_2 / 2
  L7_2 = L7_2 + 6
  L7_2 = L7_2 + 127
  L6_2.x = L7_2
  L6_2 = A0_2.descriptionSide
  L6_2 = L6_2.name
  L6_2.y = 60
  L6_2 = display
  L6_2 = L6_2.newLine
  L7_2 = L2_2
  L8_2 = 143
  L9_2 = 80
  L10_2 = display
  L10_2 = L10_2.contentWidth
  L10_2 = L10_2 - 6
  L10_2 = L10_2 - 10
  L11_2 = 80
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L8_2 = L6_2
  L7_2 = L6_2.setStrokeColor
  L9_2 = Constants
  L9_2 = L9_2.blueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2.strokeWidth = 1
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
      L7_2 = L2_1
      L7_2 = L7_2.lang
      if L7_2 == "fa" then
        goto lbl_193
      end
    end
  end
  L7_2 = L2_1
  L7_2 = L7_2.lang
  if L7_2 == "ar" then
    ::lbl_193::
    L7_2 = {}
    L7_2.parent = L2_2
    L8_2 = L2_1
    L8_2 = L8_2["Help page description"]
    L9_2 = L8_2
    L8_2 = L8_2.gsub
    L10_2 = "%[SUPPORT_EMAIL%]"
    L11_2 = _supportEmail
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L7_2.text = L8_2
    L7_2.x = 0
    L7_2.y = 0
    L8_2 = display
    L8_2 = L8_2.contentWidth
    L8_2 = L8_2 - 12
    L8_2 = L8_2 - 20
    L8_2 = L8_2 - 127
    L7_2.width = L8_2
    L8_2 = display
    L8_2 = L8_2.contentHeight
    L8_2 = L8_2 - 47
    L8_2 = L8_2 - 20
    L8_2 = L8_2 - 40
    L7_2.height = L8_2
    L8_2 = Constants
    L8_2 = L8_2.fontForSubtitle
    L8_2 = L8_2()
    L7_2.font = L8_2
    L7_2.fontSize = 12
    L7_2.align = "right"
    L8_2 = A0_2.descriptionSide
    L9_2 = display
    L9_2 = L9_2.newText
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    L8_2.description = L9_2
  else
    L7_2 = A0_2.descriptionSide
    L8_2 = display
    L8_2 = L8_2.newText
    L9_2 = L2_2
    L10_2 = L2_1
    L10_2 = L10_2["Help page description"]
    L11_2 = L10_2
    L10_2 = L10_2.gsub
    L12_2 = "%[SUPPORT_EMAIL%]"
    L13_2 = _supportEmail
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = 0
    L12_2 = 0
    L13_2 = display
    L13_2 = L13_2.contentWidth
    L13_2 = L13_2 - 12
    L13_2 = L13_2 - 20
    L13_2 = L13_2 - 127
    L14_2 = display
    L14_2 = L14_2.contentHeight
    L14_2 = L14_2 - 47
    L14_2 = L14_2 - 20
    L14_2 = L14_2 - 40
    L15_2 = Constants
    L15_2 = L15_2.fontForSubtitle
    L15_2 = L15_2()
    L16_2 = 12
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L7_2.description = L8_2
  end
  L7_2 = A0_2.descriptionSide
  L7_2 = L7_2.description
  L8_2 = L7_2
  L7_2 = L7_2.setFillColor
  L9_2 = Constants
  L9_2 = L9_2.darkBlueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L7_2 = A0_2.descriptionSide
  L7_2 = L7_2.description
  L8_2 = A0_2.descriptionSide
  L8_2 = L8_2.description
  L8_2 = L8_2.width
  L8_2 = L8_2 / 2
  L8_2 = 143 + L8_2
  L7_2.x = L8_2
  L7_2 = A0_2.descriptionSide
  L7_2 = L7_2.description
  L8_2 = A0_2.descriptionSide
  L8_2 = L8_2.description
  L8_2 = L8_2.height
  L8_2 = L8_2 / 2
  L8_2 = 90 + L8_2
  L7_2.y = L8_2
  L7_2 = graphics
  L7_2 = L7_2.newMask
  L8_2 = Constants
  L8_2 = L8_2.Path_Assets
  L9_2 = "General/FC-navIncluded"
  L10_2 = Constants
  L10_2 = L10_2.deviceSpecificFilePostfix
  L10_2 = L10_2()
  L11_2 = "mask.png"
  L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
  L7_2 = L7_2(L8_2)
  L9_2 = L5_2
  L8_2 = L5_2.setMask
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = display
  L8_2 = L8_2.contentCenterX
  L8_2 = L8_2 + 0.5
  L5_2.maskX = L8_2
  L8_2 = display
  L8_2 = L8_2.contentCenterY
  L5_2.maskY = L8_2
  L8_2 = L4_1
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = {}
  L10_2.helpNotIncluded = true
  L8_2 = L8_2(L9_2, L10_2)
  A0_2.navBar = L8_2
  L8_2 = A0_2.navBar
  L8_2.previousScene = "Scenes.Home"
  L8_2 = A0_2.navBar
  L9_2 = L8_2
  L8_2 = L8_2.setPosition
  L10_2 = 0
  L11_2 = 0
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = A0_2.navBar
  L9_2 = L8_2
  L8_2 = L8_2.setTitle
  L10_2 = L2_1
  L10_2 = L10_2.Help
  L8_2(L9_2, L10_2)
  L9_2 = L2_2
  L8_2 = L2_2.insert
  L10_2 = A0_2.navBar
  L10_2 = L10_2.view
  L8_2(L9_2, L10_2)
  L9_2 = L2_2
  L8_2 = L2_2.insert
  L10_2 = L5_2
  L8_2(L9_2, L10_2)
end

L7_1.create = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = L5_1
    L4_2 = L4_2.logEvent
    L5_2 = "Help Shown"
    L4_2(L5_2)
    L4_2 = "Scenes.Home"
    _backAction = L4_2
    L4_2 = A1_2.params
    if L4_2 ~= nil then
      L5_2 = L4_2.helpId
      if L5_2 ~= nil then
        L6_2 = L6_1
        L6_2 = L6_2.fullHelpChunks
        L6_2 = L6_2[L5_2]
        if L6_2 ~= nil then
          L7_2 = L6_2.isVisible
          if L7_2 ~= nil then
            L7_2 = L6_2.isVisible
            if L7_2 ~= true then
              goto lbl_38
            end
          end
          L7_2 = L7_1
          L7_2 = L7_2.descriptionSide
          L7_2 = L7_2.name
          L8_2 = L6_2.name
          L7_2.text = L8_2
          L7_2 = L7_1
          L7_2 = L7_2.descriptionSide
          L7_2 = L7_2.description
          L8_2 = L6_2.description
          L7_2.text = L8_2
        end
      end
      ::lbl_38::
      L6_2 = L4_2.previousScene
      if L6_2 ~= nil then
        _backAction = L6_2
        L7_2 = A0_2.navBar
        L7_2.previousScene = L6_2
      end
    end
    L5_2 = L6_1
    L5_2 = L5_2.updateGoldenTimeContent
    L5_2()
  end
end

L7_1.show = L11_1

function L11_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.view
end

L7_1.hide = L11_1

function L11_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.view
end

L7_1.destroy = L11_1
L12_1 = L7_1
L11_1 = L7_1.addEventListener
L13_1 = "create"
L14_1 = L7_1
L11_1(L12_1, L13_1, L14_1)
L12_1 = L7_1
L11_1 = L7_1.addEventListener
L13_1 = "show"
L14_1 = L7_1
L11_1(L12_1, L13_1, L14_1)
L12_1 = L7_1
L11_1 = L7_1.addEventListener
L13_1 = "hide"
L14_1 = L7_1
L11_1(L12_1, L13_1, L14_1)
L12_1 = L7_1
L11_1 = L7_1.addEventListener
L13_1 = "destroy"
L14_1 = L7_1
L11_1(L12_1, L13_1, L14_1)
return L7_1
