local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.SceneCreator"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Views.TabBar"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Language"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.RankingView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Utils.Analytics"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "widget"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Views.ChatButton"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Components.TDButtonView"
L8_1 = L8_1(L9_1)
L9_1 = L1_1.newScene
L10_1 = "RankingsScene"
L9_1 = L9_1(L10_1)

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
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
  L4_2 = nil
  L5_2 = L4_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = 1
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = _serverType
  if L6_2 ~= "mycountry" then
    L6_2 = _serverType
    if L6_2 ~= "local" then
      L6_2 = _serverType
      if L6_2 ~= "global" then
        goto lbl_88
      end
      L6_2 = Constants
      L6_2 = L6_2.Can_Open_Local_Ranking
      if L6_2 ~= false then
        goto lbl_88
      end
    end
  end
  L6_2 = mainPlayer
  L6_2 = L6_2.tribe
  if L6_2 then
    L6_2 = L2_1
    L7_2 = L6_2
    L6_2 = L6_2.new
    L8_2 = {}
    L9_2 = L3_1
    L9_2 = L9_2.Global
    L10_2 = L3_1
    L10_2 = L10_2["Tribes Based On XP"]
    L11_2 = L3_1
    L11_2 = L11_2["Tribes Based On Seed"]
    L8_2[1] = L9_2
    L8_2[2] = L10_2
    L8_2[3] = L11_2
    L9_2 = {}
    L9_2.previousScene = "Scenes.Home"
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L4_2 = L6_2
    L6_2 = L4_1
    L7_2 = L6_2
    L6_2 = L6_2.new
    L8_2 = 2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L4_1
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = 6
    L7_2 = L7_2(L8_2, L9_2)
    L9_2 = L4_2
    L8_2 = L4_2.setButtonsView
    L10_2 = {}
    L11_2 = L5_2
    L12_2 = L6_2
    L13_2 = L7_2
    L10_2[1] = L11_2
    L10_2[2] = L12_2
    L10_2[3] = L13_2
    L8_2(L9_2, L10_2)
  else
    L6_2 = L2_1
    L7_2 = L6_2
    L6_2 = L6_2.new
    L8_2 = {}
    L9_2 = L3_1
    L9_2 = L9_2.Global
    L8_2[1] = L9_2
    L9_2 = {}
    L9_2.previousScene = "Scenes.Home"
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L4_2 = L6_2
    L7_2 = L4_2
    L6_2 = L4_2.setButtonsView
    L8_2 = {}
    L9_2 = L5_2
    L8_2[1] = L9_2
    L6_2(L7_2, L8_2)
    goto lbl_140
    ::lbl_88::
    L6_2 = L4_1
    L7_2 = L6_2
    L6_2 = L6_2.new
    L8_2 = 4
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = mainPlayer
    L7_2 = L7_2.tribe
    if L7_2 then
      L7_2 = L2_1
      L8_2 = L7_2
      L7_2 = L7_2.new
      L9_2 = {}
      L10_2 = L3_1
      L10_2 = L10_2.Global
      L11_2 = L3_1
      L11_2 = L11_2.Tribes
      L12_2 = L3_1
      L12_2 = L12_2.Local
      L9_2[1] = L10_2
      L9_2[2] = L11_2
      L9_2[3] = L12_2
      L10_2 = {}
      L10_2.previousScene = "Scenes.Home"
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L4_2 = L7_2
      L7_2 = L4_1
      L8_2 = L7_2
      L7_2 = L7_2.new
      L9_2 = 2
      L7_2 = L7_2(L8_2, L9_2)
      L9_2 = L4_2
      L8_2 = L4_2.setButtonsView
      L10_2 = {}
      L11_2 = L5_2
      L12_2 = L7_2
      L13_2 = L6_2
      L10_2[1] = L11_2
      L10_2[2] = L12_2
      L10_2[3] = L13_2
      L8_2(L9_2, L10_2)
    else
      L7_2 = L2_1
      L8_2 = L7_2
      L7_2 = L7_2.new
      L9_2 = {}
      L10_2 = L3_1
      L10_2 = L10_2.Global
      L11_2 = L3_1
      L11_2 = L11_2.Local
      L9_2[1] = L10_2
      L9_2[2] = L11_2
      L10_2 = {}
      L10_2.previousScene = "Scenes.Home"
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L4_2 = L7_2
      L8_2 = L4_2
      L7_2 = L4_2.setButtonsView
      L9_2 = {}
      L10_2 = L5_2
      L11_2 = L6_2
      L9_2[1] = L10_2
      L9_2[2] = L11_2
      L7_2(L8_2, L9_2)
    end
  end
  ::lbl_140::
  L7_2 = L4_2
  L6_2 = L4_2.setPosition
  L8_2 = 0
  L9_2 = 0
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L2_2
  L6_2 = L2_2.insert
  L8_2 = L4_2.view
  L6_2(L7_2, L8_2)
  A0_2.bar = L4_2
  L6_2 = L8_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L9_2 = Constants
  L9_2 = L9_2.Path_Assets
  L10_2 = "Navbar/FC-navbar-help.png"
  L9_2 = L9_2 .. L10_2
  L8_2.defaultFile = L9_2
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
      L3_3.helpId = 10
      L3_3.previousScene = "Scenes.RankingsScene"
      L2_3.params = L3_3
      L0_3(L1_3, L2_3)
    else
      L0_3 = A0_2
      L0_3 = L0_3.bar
      L0_3 = L0_3.selectedTab
      if L0_3 == 2 then
        L0_3 = mainPlayer
        L0_3 = L0_3.tribe
        if L0_3 then
          L0_3 = L0_1
          L0_3 = L0_3.gotoScene
          L1_3 = "Scenes.HelpScene"
          L2_3 = {}
          L3_3 = {}
          L3_3.helpId = 13
          L3_3.previousScene = "Scenes.RankingsScene"
          L2_3.params = L3_3
          L0_3(L1_3, L2_3)
        else
          L0_3 = L0_1
          L0_3 = L0_3.gotoScene
          L1_3 = "Scenes.HelpScene"
          L2_3 = {}
          L3_3 = {}
          L3_3.helpId = 11
          L3_3.previousScene = "Scenes.RankingsScene"
          L2_3.params = L3_3
          L0_3(L1_3, L2_3)
        end
      else
        L0_3 = A0_2
        L0_3 = L0_3.bar
        L0_3 = L0_3.selectedTab
        if L0_3 == 3 then
          L0_3 = mainPlayer
          L0_3 = L0_3.tribe
          if L0_3 then
            L0_3 = L0_1
            L0_3 = L0_3.gotoScene
            L1_3 = "Scenes.HelpScene"
            L2_3 = {}
            L3_3 = {}
            L3_3.helpId = 11
            L3_3.previousScene = "Scenes.RankingsScene"
            L2_3.params = L3_3
            L0_3(L1_3, L2_3)
          else
            L0_3 = L0_1
            L0_3 = L0_3.gotoScene
            L1_3 = "Scenes.HelpScene"
            L2_3 = {}
            L3_3 = {}
            L3_3.helpId = 12
            L3_3.previousScene = "Scenes.RankingsScene"
            L2_3.params = L3_3
            L0_3(L1_3, L2_3)
          end
        else
          L0_3 = L0_1
          L0_3 = L0_3.gotoScene
          L1_3 = "Scenes.HelpScene"
          L2_3 = {}
          L3_3 = {}
          L3_3.helpId = 12
          L3_3.previousScene = "Scenes.RankingsScene"
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

L9_1.create = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L5_1
  L2_2 = L2_2.logEvent
  L3_2 = "Rankings Scene Shown"
  L2_2(L3_2)
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = L7_1
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

L9_1.show = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = A0_2.helpButton
    L4_2.isVisible = false
  end
end

L9_1.hide = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.view
  L3_2 = display
  L3_2 = L3_2.remove
  L4_2 = A0_2.helpButton
  L3_2(L4_2)
  A0_2.helpButton = nil
  L3_2 = L7_1
  L3_2 = L3_2.removeFromScene
  L4_2 = L9_1
  L3_2(L4_2)
end

L9_1.destroy = L10_1
L11_1 = L9_1
L10_1 = L9_1.addEventListener
L12_1 = "create"
L13_1 = L9_1
L10_1(L11_1, L12_1, L13_1)
L11_1 = L9_1
L10_1 = L9_1.addEventListener
L12_1 = "show"
L13_1 = L9_1
L10_1(L11_1, L12_1, L13_1)
L11_1 = L9_1
L10_1 = L9_1.addEventListener
L12_1 = "hide"
L13_1 = L9_1
L10_1(L11_1, L12_1, L13_1)
L11_1 = L9_1
L10_1 = L9_1.addEventListener
L12_1 = "destroy"
L13_1 = L9_1
L10_1(L11_1, L12_1, L13_1)
return L9_1
