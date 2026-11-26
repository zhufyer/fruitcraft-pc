local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Views.TabBar"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.RankingView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Utils.Analytics"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "widget"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.ChatButton"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Views.MyLeague"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Views.LeagueHistory"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Components.TDButtonView"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Tutorial.TutorialManager2"
L10_1 = L10_1(L11_1)
L11_1 = L0_1.newScene
L11_1 = L11_1()
L12_1 = nil
L13_1 = nil
L11_1.secondMin = 2
L11_1.secondMax = 10
L11_1.thirdMin = 11
L11_1.thirdMax = 50

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
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
  L4_2 = L3_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = 5
  L4_2 = L4_2(L5_2, L6_2)
  L12_1 = L4_2
  L4_2 = L7_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L4_2 = L4_2(L5_2)
  L5_2 = L8_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L5_2 = L5_2(L6_2)
  L6_2 = L1_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L9_2 = L2_1
  L9_2 = L9_2["My League"]
  L10_2 = L2_1
  L10_2 = L10_2.League
  L11_2 = L2_1
  L11_2 = L11_2["League History"]
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L9_2 = {}
  L9_2.previousScene = "Scenes.Home"
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L13_1 = L6_2
  L6_2 = L13_1
  L7_2 = L6_2
  L6_2 = L6_2.setButtonsView
  L8_2 = {}
  L9_2 = L12_1
  L10_2 = L4_2
  L11_2 = L5_2
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L6_2(L7_2, L8_2)
  L6_2 = L13_1
  L7_2 = L6_2
  L6_2 = L6_2.setPosition
  L8_2 = 0
  L9_2 = 0
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L2_2
  L6_2 = L2_2.insert
  L8_2 = L13_1
  L8_2 = L8_2.view
  L6_2(L7_2, L8_2)
  L6_2 = L13_1
  A0_2.bar = L6_2
  L6_2 = L9_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L9_2 = Constants
  L9_2 = L9_2.Path_Assets
  L10_2 = "Navbar/FC-navbar-help.png"
  L9_2 = L9_2 .. L10_2
  L8_2.defaultFile = L9_2
  L9_2 = Constants
  L9_2 = L9_2.Path_Assets
  L10_2 = "Navbar/FC-navbar-help.png"
  L9_2 = L9_2 .. L10_2
  L8_2.default = L9_2
  L9_2 = Constants
  L9_2 = L9_2.Path_Assets
  L10_2 = "Navbar/FC-navbar-help-pressed.png"
  L9_2 = L9_2 .. L10_2
  L8_2.overFile = L9_2
  L8_2.width = 34
  L8_2.height = 34
  
  function L9_2()
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
      L3_3.helpId = 29
      L3_3.previousScene = "Scenes.LeagueScene"
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
        L3_3.helpId = 30
        L3_3.previousScene = "Scenes.LeagueScene"
        L2_3.params = L3_3
        L0_3(L1_3, L2_3)
      else
        L0_3 = A0_2
        L0_3 = L0_3.bar
        L0_3 = L0_3.selectedTab
        if L0_3 == 3 then
          L0_3 = L0_1
          L0_3 = L0_3.gotoScene
          L1_3 = "Scenes.HelpScene"
          L2_3 = {}
          L3_3 = {}
          L3_3.helpId = 31
          L3_3.previousScene = "Scenes.LeagueScene"
          L2_3.params = L3_3
          L0_3(L1_3, L2_3)
        else
          L0_3 = L0_1
          L0_3 = L0_3.gotoScene
          L1_3 = "Scenes.HelpScene"
          L2_3 = {}
          L3_3 = {}
          L3_3.helpId = 29
          L3_3.previousScene = "Scenes.LeagueScene"
          L2_3.params = L3_3
          L0_3(L1_3, L2_3)
        end
      end
    end
  end
  
  L8_2.onRelease = L9_2
  L6_2 = L6_2(L7_2, L8_2)
  A0_2.helpButton = L6_2
  L7_2 = L2_2
  L6_2 = L2_2.insert
  L8_2 = A0_2.helpButton
  L8_2 = L8_2.view
  L6_2(L7_2, L8_2)
  L6_2 = A0_2.helpButton
  L7_2 = display
  L7_2 = L7_2.contentWidth
  L7_2 = L7_2 - 14
  L6_2.x = L7_2
  L6_2 = A0_2.helpButton
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L7_2 = L7_2 - 14
  L6_2.y = L7_2
  L6_2 = A0_2.helpButton
  L6_2.isVisible = false
end

L11_1.create = L14_1

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L4_1
  L2_2 = L2_2.logEvent
  L3_2 = "Rankings Scene Shown"
  L2_2(L3_2)
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = L10_1
    L4_2 = L4_2.checkForTutorial
    L5_2 = "Scenes.LeagueScene"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
    L4_2 = L6_1
    L4_2 = L4_2.newOnScene
    L5_2 = A0_2
    L4_2(L5_2)
    L4_2 = "Scenes.Home"
    _backAction = L4_2
    L4_2 = A1_2.params
    if L4_2 then
      L4_2 = A1_2.params
      L4_2 = L4_2.selectedTab
      if L4_2 then
        L4_2 = A0_2.bar
        L5_2 = L4_2
        L4_2 = L4_2.selectButtonWithId
        L6_2 = A1_2.params
        L6_2 = L6_2.selectedTab
        L4_2(L5_2, L6_2)
    end
    else
      L4_2 = A0_2.bar
      L5_2 = L4_2
      L4_2 = L4_2.selectButtonWithId
      L6_2 = A0_2.bar
      L6_2 = L6_2.selectedTab
      L4_2(L5_2, L6_2)
    end
    L4_2 = A0_2.helpButton
    L4_2.isVisible = true
  end
end

L11_1.show = L14_1

function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L12_1
  L4_2 = L3_2
  L3_2 = L3_2.setTutorialData
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

L11_1.callHighlight = L14_1

function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = mainPlayer
  L3_2 = L3_2.betterLeagueTutorial
  if L3_2 then
    L3_2 = require
    L4_2 = "Views.EffectsManager"
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.pointAtObjectInView
    L5_2 = L13_1
    L5_2 = L5_2.buttons
    L5_2 = L5_2[2]
    L5_2 = L5_2.view
    L6_2 = A0_2.view
    L7_2 = L13_1
    L7_2 = L7_2.buttons
    L7_2 = L7_2[2]
    L7_2 = L7_2.view
    L7_2 = L7_2.x
    L8_2 = L13_1
    L8_2 = L8_2.buttons
    L8_2 = L8_2[2]
    L8_2 = L8_2.view
    L8_2 = L8_2.width
    L8_2 = L8_2 / 2
    L7_2 = L7_2 + L8_2
    L8_2 = L13_1
    L8_2 = L8_2.buttons
    L8_2 = L8_2[2]
    L8_2 = L8_2.view
    L8_2 = L8_2.y
    L9_2 = L13_1
    L9_2 = L9_2.buttons
    L9_2 = L9_2[2]
    L9_2 = L9_2.view
    L9_2 = L9_2.height
    L9_2 = L9_2 / 2
    L8_2 = L8_2 + L9_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = L13_1
    L4_2 = L4_2.buttons
    L4_2 = L4_2[2]
    L4_2.tutorialCallback = A2_2
  end
end

L11_1.pointAtLeagues = L14_1

function L14_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
  end
end

L11_1.hide = L14_1

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.view
  L3_2 = A0_2.helpButton
  if L3_2 then
    L3_2 = A0_2.helpButton
    L4_2 = L3_2
    L3_2 = L3_2.removeSelf
    L3_2(L4_2)
    A0_2.helpButton = nil
  end
  L3_2 = L12_1
  L3_2 = L3_2.destroy
  L3_2()
  L3_2 = L6_1
  L3_2 = L3_2.removeFromScene
  L4_2 = L11_1
  L3_2(L4_2)
end

L11_1.destroy = L14_1
L15_1 = L11_1
L14_1 = L11_1.addEventListener
L16_1 = "create"
L17_1 = L11_1
L14_1(L15_1, L16_1, L17_1)
L15_1 = L11_1
L14_1 = L11_1.addEventListener
L16_1 = "show"
L17_1 = L11_1
L14_1(L15_1, L16_1, L17_1)
L15_1 = L11_1
L14_1 = L11_1.addEventListener
L16_1 = "hide"
L17_1 = L11_1
L14_1(L15_1, L16_1, L17_1)
L15_1 = L11_1
L14_1 = L11_1.addEventListener
L16_1 = "destroy"
L17_1 = L11_1
L14_1(L15_1, L16_1, L17_1)
return L11_1
