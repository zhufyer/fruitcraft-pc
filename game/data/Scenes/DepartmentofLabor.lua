local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1
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
L6_1 = "Views.MineView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.BankView"
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
L10_1 = require
L11_1 = "Views.PotionView"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Tutorial.TutorialManager2"
L11_1 = L11_1(L12_1)
L12_1 = L1_1.newScene
L13_1 = "DepartmentofLabor"
L12_1 = L12_1(L13_1)

function L13_1(A0_2)
  local L1_2
  L1_2 = A0_2.params
  if L1_2 then
    L1_2 = A0_2.params
    L1_2 = L1_2.previousScene
    if L1_2 then
      L1_2 = A0_2.params
      L1_2 = L1_2.previousScene
      return L1_2
  end
  else
    L1_2 = "Scenes.Home"
    return L1_2
  end
end

function L14_1(A0_2, A1_2)
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
  L7_2 = L7_2.Mine
  L8_2 = L2_1
  L8_2 = L8_2.Bank
  L9_2 = L2_1
  L9_2 = L9_2["Lab Building"]
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L7_2 = {}
  L8_2 = L13_1
  L9_2 = A1_2
  L8_2 = L8_2(L9_2)
  L7_2.previousScene = L8_2
  L7_2.showsPlayerGold = true
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2.bar = L4_2
  L4_2 = A0_2.bar
  L5_2 = L4_2
  L4_2 = L4_2.setPosition
  L6_2 = 0
  L7_2 = 0
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L5_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = nil
  L7_2 = L12_1
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2.mineView = L4_2
  L4_2 = L6_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = nil
  L7_2 = L12_1
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2.bankView = L4_2
  L4_2 = L10_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = nil
  L7_2 = L12_1
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2.potionView = L4_2
  L4_2 = A0_2.bar
  L5_2 = L4_2
  L4_2 = L4_2.setButtonsView
  L6_2 = {}
  L7_2 = A0_2.mineView
  L8_2 = A0_2.bankView
  L9_2 = A0_2.potionView
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L4_2(L5_2, L6_2)
  L5_2 = L2_2
  L4_2 = L2_2.insert
  L6_2 = A0_2.bar
  L6_2 = L6_2.view
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.bar
  A0_2.bar = L4_2
  L4_2 = L9_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L7_2 = L3_1
  L7_2 = L7_2.Path_Assets
  L8_2 = "Navbar/FC-navbar-help.png"
  L7_2 = L7_2 .. L8_2
  L6_2.imageName = L7_2
  L6_2.width = 34
  L6_2.height = 34
  
  function L7_2()
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
      L3_3.helpId = 20
      L3_3.previousScene = "Scenes.DepartmentofLabor"
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
        L3_3.helpId = 28
        L3_3.previousScene = "Scenes.DepartmentofLabor"
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
          L3_3.helpId = 37
          L3_3.previousScene = "Scenes.DepartmentofLabor"
          L2_3.params = L3_3
          L0_3(L1_3, L2_3)
        end
      end
    end
  end
  
  L6_2.onRelease = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.helpButton = L4_2
  L4_2 = A0_2.helpButton
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 - 14
  L4_2.x = L5_2
  L4_2 = A0_2.helpButton
  L5_2 = display
  L5_2 = L5_2.contentHeight
  L5_2 = L5_2 - 14
  L4_2.y = L5_2
  L4_2 = A0_2.helpButton
  L4_2.isVisible = false
end

L12_1.create = L14_1

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == "showcaseMine" then
    L2_2 = A0_2.bar
    L3_2 = L2_2
    L2_2 = L2_2.pointAtTab
    L4_2 = 1
    L2_2(L3_2, L4_2)
  elseif A1_2 == "showcaseBank" then
    L2_2 = A0_2.bar
    L3_2 = L2_2
    L2_2 = L2_2.pointAtTab
    L4_2 = 2
    L2_2(L3_2, L4_2)
  end
end

L12_1.startTutorialSequence = L14_1

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L7_1
  L2_2 = L2_2.logEvent
  L3_2 = "DepartmentOfLabor Scene Shown"
  L2_2(L3_2)
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = A0_2.bar
    L5_2 = L13_1
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    L4_2.previousScene = L5_2
    L4_2 = L13_1
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    _backAction = L4_2
    L4_2 = L8_1
    L4_2 = L4_2.newOnScene
    L5_2 = A0_2
    L4_2(L5_2)
    L4_2 = A1_2.params
    if L4_2 ~= nil then
      L4_2 = A1_2.params
      L4_2 = L4_2.building
      if L4_2 ~= nil then
        L4_2 = A0_2.mineView
        L5_2 = A1_2.params
        L5_2 = L5_2.building
        L5_2 = L5_2.assignedCards
        L4_2.assignedCards = L5_2
        L4_2 = A0_2.mineView
        L5_2 = A1_2.params
        L5_2 = L5_2.building
        L4_2.building = L5_2
        L4_2 = A0_2.mineView
        L5_2 = L4_2
        L4_2 = L4_2.repaint
        L4_2(L5_2)
      end
      L4_2 = A1_2.params
      if L4_2 ~= nil then
        L4_2 = A0_2.bar
        if L4_2 ~= nil then
          L4_2 = A1_2.params
          L4_2 = L4_2.selectedTab
          if L4_2 ~= nil then
            L4_2 = log3
            L5_2 = " selectedTab is : "
            L6_2 = A1_2.params
            L6_2 = L6_2.selectedTab
            L4_2(L5_2, L6_2)
            L4_2 = A0_2.bar
            L5_2 = L4_2
            L4_2 = L4_2.selectButtonWithId
            L6_2 = A1_2.params
            L6_2 = L6_2.selectedTab
            L4_2(L5_2, L6_2)
          end
          L4_2 = A1_2.params
          L4_2 = L4_2.evolveCard
          if L4_2 then
            L4_2 = A0_2.bar
            L5_2 = A1_2.params
            L5_2 = L5_2.evolveCard
            L4_2.evolveCardObject = L5_2
          end
        end
      else
        L4_2 = A0_2.bar
        if L4_2 ~= nil then
          L4_2 = A0_2.bar
          L5_2 = L4_2
          L4_2 = L4_2.selectButtonWithId
          L6_2 = A0_2.bar
          L6_2 = L6_2.selectedTab
          L4_2(L5_2, L6_2)
        end
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
    L4_2 = A0_2.bar
    L5_2 = L4_2
    L4_2 = L4_2.setNectar
    L6_2 = mainPlayer
    L6_2 = L6_2.nectar
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.bar
    L5_2 = L4_2
    L4_2 = L4_2.updateGold
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = L11_1
    L4_2 = L4_2.checkForTutorial
    L5_2 = "Scenes.DepartmentofLabor"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
  end
end

L12_1.show = L14_1

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = A0_2.helpButton
    L4_2.isVisible = false
    L4_2 = L8_1
    L4_2 = L4_2.removeFromScene
    L5_2 = L12_1
    L4_2(L5_2)
  end
end

L12_1.hide = L14_1

function L14_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.view
end

L12_1.destroy = L14_1
L15_1 = L12_1
L14_1 = L12_1.addEventListener
L16_1 = "create"
L17_1 = L12_1
L14_1(L15_1, L16_1, L17_1)
L15_1 = L12_1
L14_1 = L12_1.addEventListener
L16_1 = "show"
L17_1 = L12_1
L14_1(L15_1, L16_1, L17_1)
L15_1 = L12_1
L14_1 = L12_1.addEventListener
L16_1 = "hide"
L17_1 = L12_1
L14_1(L15_1, L16_1, L17_1)
L15_1 = L12_1
L14_1 = L12_1.addEventListener
L16_1 = "destroy"
L17_1 = L12_1
L14_1(L15_1, L16_1, L17_1)
return L12_1
