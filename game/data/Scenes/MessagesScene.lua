local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1
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
L5_1 = "Views.MessageListView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "widget"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Utils.Analytics"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Components.TDButtonView"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Tutorial.TutorialManager2"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Views.EffectsManager"
L9_1 = L9_1(L10_1)
L10_1 = L1_1.newScene
L11_1 = "MessagesScene"
L10_1 = L10_1(L11_1)
L11_1 = nil
L12_1 = nil
L13_1 = nil

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = log3
  L3_2 = "create scene"
  L2_2(L3_2)
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
  L4_2 = L7_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Navbar/FC-navbar-help.png"
  L7_2 = L7_2 .. L8_2
  L6_2.defaultFile = L7_2
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Navbar/FC-navbar-help.png"
  L7_2 = L7_2 .. L8_2
  L6_2.default = L7_2
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Navbar/FC-navbar-help-pressed.png"
  L7_2 = L7_2 .. L8_2
  L6_2.overFile = L7_2
  L6_2.width = 34
  L6_2.height = 34
  
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L0_3 = L0_3.bar
    L0_3 = L0_3.selectedTab
    if L0_3 == 1 then
      L0_3 = mainPlayer
      L0_3 = L0_3.tribe
      if L0_3 then
        L0_3 = L0_1
        L0_3 = L0_3.gotoScene
        L1_3 = "Scenes.HelpScene"
        L2_3 = {}
        L3_3 = {}
        L3_3.helpId = 15
        L3_3.previousScene = "Scenes.MessagesScene"
        L2_3.params = L3_3
        L0_3(L1_3, L2_3)
      else
        L0_3 = L0_1
        L0_3 = L0_3.gotoScene
        L1_3 = "Scenes.HelpScene"
        L2_3 = {}
        L3_3 = {}
        L3_3.helpId = 14
        L3_3.previousScene = "Scenes.MessagesScene"
        L2_3.params = L3_3
        L0_3(L1_3, L2_3)
      end
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
        L3_3.helpId = 14
        L3_3.previousScene = "Scenes.MessagesScene"
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
          L3_3.helpId = 38
          L3_3.previousScene = "Scenes.MessagesScene"
          L2_3.params = L3_3
          L0_3(L1_3, L2_3)
        end
      end
    end
  end
  
  L6_2.onRelease = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.helpButton = L4_2
  L5_2 = L2_2
  L4_2 = L2_2.insert
  L6_2 = A0_2.helpButton
  L6_2 = L6_2.view
  L4_2(L5_2, L6_2)
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
end

L10_1.create = L14_1

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = L6_1
  L2_2 = L2_2.logEvent
  L3_2 = "Messages Scene Shown"
  L2_2(L3_2)
  L2_2 = log3
  L3_2 = "enter scene"
  L2_2(L3_2)
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = L0_1
    L4_2 = L4_2.getSceneName
    L5_2 = "previous"
    L4_2 = L4_2(L5_2)
    if L4_2 ~= "Scenes.HelpScene" then
      A0_2.previous = L4_2
      _backAction = L4_2
    end
    L5_2 = false
    L6_2 = A1_2.params
    if L6_2 then
      L6_2 = A1_2.params
      L6_2 = L6_2.selectedTab
      L12_1 = L6_2
      L6_2 = A1_2.params
      L5_2 = L6_2.isNotification
    else
      L6_2 = 1
      L12_1 = L6_2
    end
    L6_2 = L4_1
    L7_2 = L6_2
    L6_2 = L6_2.new
    L8_2 = 1
    L9_2 = 2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L6_2.isNotification = L5_2
    L7_2 = log3
    L8_2 = "!!!isNotification!!!!"
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = mainPlayer
    L7_2 = L7_2.tribe
    if not L7_2 then
      L7_2 = mainPlayer
      L7_2 = L7_2.firstChatId
      if not L7_2 then
        goto lbl_130
      end
    end
    L7_2 = mainPlayer
    L7_2 = L7_2.coachTest
    if L7_2 then
      L7_2 = mainPlayer
      L7_2 = L7_2.level
      if 4 < L7_2 then
        L7_2 = L2_1
        L8_2 = L7_2
        L7_2 = L7_2.new
        L9_2 = {}
        L10_2 = L3_1
        L10_2 = L10_2["Tribe Chat"]
        L11_2 = L3_1
        L11_2 = L11_2.Notifications
        L12_2 = L3_1
        L12_2 = L12_2.School
        L9_2[1] = L10_2
        L9_2[2] = L11_2
        L9_2[3] = L12_2
        L10_2 = {}
        L11_2 = A0_2.previous
        L10_2.previousScene = L11_2
        L10_2.noMask = true
        L7_2 = L7_2(L8_2, L9_2, L10_2)
        L11_1 = L7_2
        L7_2 = L4_1
        L8_2 = L7_2
        L7_2 = L7_2.new
        L9_2 = 2
        L10_2 = 2
        L11_2 = true
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
        L13_1 = L7_2
        
        function L7_2()
          local L0_3, L1_3
          L0_3 = L13_1
          L1_3 = L0_3
          L0_3 = L0_3.show
          L0_3(L1_3)
        end
        
        A0_2.showSchoolView = L7_2
        L7_2 = L13_1
        L7_2 = L7_2.trainerStatusButton
        if L7_2 then
          L7_2 = L13_1
          L7_2 = L7_2.trainerStatusButton
          A0_2.trainerStatusButton = L7_2
        end
    end
    else
      L7_2 = L2_1
      L8_2 = L7_2
      L7_2 = L7_2.new
      L9_2 = {}
      L10_2 = L3_1
      L10_2 = L10_2["Tribe Chat"]
      L11_2 = L3_1
      L11_2 = L11_2.Notifications
      L12_2 = L3_1
      L12_2 = L12_2["Tribe Chief Message"]
      L9_2[1] = L10_2
      L9_2[2] = L11_2
      L9_2[3] = L12_2
      L10_2 = {}
      L11_2 = A0_2.previous
      L10_2.previousScene = L11_2
      L10_2.noMask = true
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L11_1 = L7_2
    end
    L7_2 = L4_1
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = 2
    L10_2 = 2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    tribeMessages = L7_2
    L7_2 = L4_1
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = 1
    L10_2 = 2
    L11_2 = true
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    A0_2.tribeChiefMessageView = L7_2
    L7_2 = L11_1
    L8_2 = L7_2
    L7_2 = L7_2.setButtonsView
    L9_2 = {}
    L10_2 = tribeMessages
    L11_2 = L6_2
    L12_2 = A0_2.tribeChiefMessageView
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L9_2[3] = L12_2
    L7_2(L8_2, L9_2)
    goto lbl_148
    ::lbl_130::
    L7_2 = L2_1
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = {}
    L10_2 = L3_1
    L10_2 = L10_2.Notifications
    L9_2[1] = L10_2
    L10_2 = {}
    L11_2 = A0_2.previous
    L10_2.previousScene = L11_2
    L10_2.noMask = true
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L11_1 = L7_2
    L7_2 = L11_1
    L8_2 = L7_2
    L7_2 = L7_2.setButtonsView
    L9_2 = {}
    L10_2 = L6_2
    L9_2[1] = L10_2
    L7_2(L8_2, L9_2)
    ::lbl_148::
    L7_2 = L11_1
    L8_2 = L7_2
    L7_2 = L7_2.setPosition
    L9_2 = 0
    L10_2 = 0
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = L2_2
    L7_2 = L2_2.insert
    L9_2 = L11_1
    L9_2 = L9_2.view
    L7_2(L8_2, L9_2)
    L7_2 = A1_2.params
    if L7_2 then
      L7_2 = A1_2.params
      L7_2 = L7_2.chooseDeckMode
      if L7_2 then
        L7_2 = L11_1
        L8_2 = A1_2.params
        L8_2 = L8_2.chooseDeckMode
        L7_2.chooseDeckMode = L8_2
      end
    end
    L7_2 = L11_1
    A0_2.bar = L7_2
    L7_2 = A0_2.bar
    L8_2 = L7_2
    L7_2 = L7_2.selectButtonWithId
    L9_2 = L12_1
    L7_2(L8_2, L9_2)
    L7_2 = A0_2.helpButton
    L7_2.isVisible = true
    L7_2 = A0_2.helpButton
    L8_2 = L7_2
    L7_2 = L7_2.toFront
    L7_2(L8_2)
    L7_2 = L8_1
    L7_2 = L7_2.checkForTutorial
    L8_2 = "Scenes.MessagesScene"
    L9_2 = A0_2
    L7_2(L8_2, L9_2)
  end
end

L10_1.show = L14_1

function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = mainPlayer
  L3_2 = L3_2.coachTest
  if L3_2 then
    L3_2 = mainPlayer
    L3_2 = L3_2.tribe
    if L3_2 then
      L3_2 = A0_2.bar
      L4_2 = L3_2
      L3_2 = L3_2.selectButtonWithId
      L5_2 = 3
      L3_2(L4_2, L5_2)
      if A2_2 then
        L3_2 = A2_2
        L3_2()
      end
    end
  end
end

L10_1.goToThirdTab = L14_1

function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2.isTutorial
  if L3_2 then
    L3_2 = A0_2.trainerStatusButton
    L4_2 = A1_2.isTutorial
    L3_2.isTutorial = L4_2
  end
  L3_2 = L9_1
  L3_2 = L3_2.pointAtObjectInView
  L4_2 = A0_2.trainerStatusButton
  L5_2 = L13_1
  L5_2 = L5_2.view
  L6_2 = A0_2.trainerStatusButton
  L6_2 = L6_2.view
  L6_2 = L6_2.x
  L7_2 = A0_2.trainerStatusButton
  L7_2 = L7_2.view
  L7_2 = L7_2.y
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A2_2
  L3_2()
end

L10_1.pointAtTrainerStatus = L14_1

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = A0_2.helpButton
    L4_2.isVisible = false
    L4_2 = A0_2.bar
    L5_2 = L4_2
    L4_2 = L4_2.destroyView
    L4_2(L5_2)
  end
end

L10_1.hide = L14_1

function L14_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.view
end

L10_1.destroy = L14_1
L15_1 = L10_1
L14_1 = L10_1.addEventListener
L16_1 = "create"
L17_1 = L10_1
L14_1(L15_1, L16_1, L17_1)
L15_1 = L10_1
L14_1 = L10_1.addEventListener
L16_1 = "show"
L17_1 = L10_1
L14_1(L15_1, L16_1, L17_1)
L15_1 = L10_1
L14_1 = L10_1.addEventListener
L16_1 = "hide"
L17_1 = L10_1
L14_1(L15_1, L16_1, L17_1)
L15_1 = L10_1
L14_1 = L10_1.addEventListener
L16_1 = "destroy"
L17_1 = L10_1
L14_1(L15_1, L16_1, L17_1)
return L10_1
