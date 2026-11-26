local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1
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
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.TabBar"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.MilitaryView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "widget"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Utils.Analytics"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Views.ChatButton"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Components.TDButtonView"
L9_1 = L9_1(L10_1)
L10_1 = L1_1.newScene
L11_1 = "Military"
L10_1 = L10_1(L11_1)
L11_1 = nil
L12_1 = nil
L13_1 = nil
L14_1 = nil

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.view
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = L3_1
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
  L4_2 = L4_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L7_2 = L2_1
  L7_2 = L7_2.Defense
  L8_2 = L2_1
  L8_2 = L8_2.Offense
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L7_2 = {}
  L7_2.previousScene = "Scenes.Home"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.setPosition
  L7_2 = 0
  L8_2 = 0
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L5_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = "defense"
  L5_2 = L5_2(L6_2, L7_2)
  A0_2.defenseView = L5_2
  L5_2 = L5_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = "attack"
  L5_2 = L5_2(L6_2, L7_2)
  A0_2.attackView = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.setButtonsView
  L7_2 = {}
  L8_2 = A0_2.defenseView
  L9_2 = A0_2.attackView
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L5_2(L6_2, L7_2)
  L6_2 = L2_2
  L5_2 = L2_2.insert
  L7_2 = L4_2.view
  L5_2(L6_2, L7_2)
  A0_2.bar = L4_2
  L5_2 = L9_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L8_2 = L3_1
  L8_2 = L8_2.Path_Assets
  L9_2 = "Navbar/FC-navbar-help.png"
  L8_2 = L8_2 .. L9_2
  L7_2.defaultFile = L8_2
  L8_2 = L3_1
  L8_2 = L8_2.Path_Assets
  L9_2 = "Navbar/FC-navbar-help.png"
  L8_2 = L8_2 .. L9_2
  L7_2.default = L8_2
  L8_2 = L3_1
  L8_2 = L8_2.Path_Assets
  L9_2 = "Navbar/FC-navbar-help-pressed.png"
  L8_2 = L8_2 .. L9_2
  L7_2.overFile = L8_2
  L7_2.width = 34
  L7_2.height = 34
  
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L0_3 = L0_3.bar
    L0_3 = L0_3.selectedTab
    if L0_3 == 1 then
      L0_3 = L0_1
      L0_3 = L0_3.gotoScene
      L1_3 = "Scenes.HelpScene"
      L2_3 = {}
      L3_3 = {}
      L3_3.helpId = 26
      L3_3.previousScene = "Scenes.Military"
      L2_3.params = L3_3
      L0_3(L1_3, L2_3)
    else
      L0_3 = A0_2
      L0_3 = L0_3.bar
      L0_3 = L0_3.selectedTab
      if L0_3 == 2 then
        L0_3 = L0_1
        L0_3 = L0_3.gotoScene
        L1_3 = "Scenes.HelpScene"
        L2_3 = {}
        L3_3 = {}
        L3_3.helpId = 25
        L3_3.previousScene = "Scenes.Military"
        L2_3.params = L3_3
        L0_3(L1_3, L2_3)
      end
    end
  end
  
  L7_2.onRelease = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  A0_2.helpButton = L5_2
  L5_2 = A0_2.helpButton
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 - 14
  L5_2.x = L6_2
  L5_2 = A0_2.helpButton
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 - 14
  L5_2.y = L6_2
  L5_2 = A0_2.helpButton
  L5_2.isVisible = false
end

L10_1.create = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L7_1
  L2_2 = L2_2.logEvent
  L3_2 = "Military Scene Shown"
  L2_2(L3_2)
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = "Scenes.Home"
    _backAction = L4_2
    L4_2 = L8_1
    L4_2 = L4_2.newOnScene
    L5_2 = A0_2
    L4_2(L5_2)
    L4_2 = sceneChange
    if L4_2 ~= nil then
      L4_2 = sceneChange
      L4_2 = L4_2.refresh
      L4_2()
    end
    L4_2 = A1_2.params
    if L4_2 ~= nil then
      L4_2 = A1_2.params
      L4_2 = L4_2.defenseBuilding
      if L4_2 ~= nil then
        L4_2 = A0_2.defenseView
        L5_2 = A1_2.params
        L5_2 = L5_2.defenseBuilding
        L5_2 = L5_2.assignedCards
        L4_2.assignedCards = L5_2
        L4_2 = A0_2.defenseView
        L5_2 = A1_2.params
        L5_2 = L5_2.defenseBuilding
        L4_2.building = L5_2
        L4_2 = A0_2.defenseView
        L5_2 = L4_2
        L4_2 = L4_2.repaint
        L4_2(L5_2)
      end
      L4_2 = A1_2.params
      L4_2 = L4_2.offenseBuilding
      if L4_2 ~= nil then
        L4_2 = A0_2.attackView
        L5_2 = A1_2.params
        L5_2 = L5_2.offenseBuilding
        L5_2 = L5_2.assignedCards
        L4_2.assignedCards = L5_2
        L4_2 = A0_2.attackView
        L5_2 = A1_2.params
        L5_2 = L5_2.offenseBuilding
        L4_2.building = L5_2
        L4_2 = A0_2.attackView
        L5_2 = L4_2
        L4_2 = L4_2.repaint
        L4_2(L5_2)
      end
    end
    L4_2 = A0_2.bar
    L5_2 = L4_2
    L4_2 = L4_2.selectButtonWithId
    L6_2 = A0_2.bar
    L6_2 = L6_2.selectedTab
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.helpButton
    L4_2.isVisible = true
  end
end

L10_1.show = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = A0_2.helpButton
    L4_2.isVisible = false
    L4_2 = L8_1
    L4_2 = L4_2.removeFromScene
    L5_2 = L10_1
    L4_2(L5_2)
  end
end

L10_1.hide = L15_1

function L15_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.view
end

L10_1.destroy = L15_1
L16_1 = L10_1
L15_1 = L10_1.addEventListener
L17_1 = "create"
L18_1 = L10_1
L15_1(L16_1, L17_1, L18_1)
L16_1 = L10_1
L15_1 = L10_1.addEventListener
L17_1 = "show"
L18_1 = L10_1
L15_1(L16_1, L17_1, L18_1)
L16_1 = L10_1
L15_1 = L10_1.addEventListener
L17_1 = "hide"
L18_1 = L10_1
L15_1(L16_1, L17_1, L18_1)
L16_1 = L10_1
L15_1 = L10_1.addEventListener
L17_1 = "destroy"
L18_1 = L10_1
L15_1(L16_1, L17_1, L18_1)
return L10_1
