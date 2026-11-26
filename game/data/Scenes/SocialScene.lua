local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1
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
L5_1 = "Views.RewardsView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.AchievementsView"
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
L10_1 = "Views.ProfileView"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Views.EffectsManager"
L10_1 = L10_1(L11_1)
L11_1 = L1_1.newScene
L12_1 = "SocialScene"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Tutorial.VerticalOverlayView"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Tutorial.HorizontalOverlayView"
L13_1 = L13_1(L14_1)
L14_1 = require
L15_1 = "Components.TDButtonView"
L14_1 = L14_1(L15_1)
L15_1 = 1
L16_1 = nil
L17_1 = nil

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
  L4_2 = L2_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L7_2 = L3_1
  L7_2 = L7_2.Profile
  L8_2 = L3_1
  L8_2 = L8_2.Rewards
  L9_2 = L3_1
  L9_2 = L9_2.Achievements
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L7_2 = {}
  L7_2.previousScene = "Scenes.Home"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L16_1 = L4_2
  L4_2 = L16_1
  L5_2 = L4_2
  L4_2 = L4_2.setPosition
  L6_2 = 0
  L7_2 = 0
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L11_1
  L5_2 = L9_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = mainPlayer
  L7_2 = L7_2.id
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.profileView = L5_2
  L4_2 = L4_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L4_2 = L4_2(L5_2)
  L17_1 = L4_2
  L4_2 = L5_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L4_2 = L4_2(L5_2)
  A0_2.achievementsView = L4_2
  L4_2 = L16_1
  L5_2 = L4_2
  L4_2 = L4_2.setButtonsView
  L6_2 = {}
  L7_2 = L11_1
  L7_2 = L7_2.profileView
  L8_2 = L17_1
  L9_2 = A0_2.achievementsView
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L4_2(L5_2, L6_2)
  L4_2 = L11_1
  L4_2 = L4_2.profileView
  L5_2 = L4_2
  L4_2 = L4_2.setPosition
  L6_2 = L16_1
  L6_2 = L6_2.background
  L6_2 = L6_2.x
  L7_2 = L11_1
  L7_2 = L7_2.profileView
  L7_2 = L7_2.bg
  L7_2 = L7_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 - 15
  L7_2 = L16_1
  L7_2 = L7_2.background
  L7_2 = L7_2.y
  L8_2 = L11_1
  L8_2 = L8_2.profileView
  L8_2 = L8_2.bg
  L8_2 = L8_2.height
  L8_2 = L8_2 / 2
  L7_2 = L7_2 - L8_2
  L7_2 = L7_2 + 5
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = L2_2
  L4_2 = L2_2.insert
  L6_2 = L16_1
  L6_2 = L6_2.view
  L4_2(L5_2, L6_2)
  L4_2 = L16_1
  A0_2.bar = L4_2
  L4_2 = L14_1
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
      L0_3 = L0_1
      L0_3 = L0_3.gotoScene
      L1_3 = "Scenes.HelpScene"
      L2_3 = {}
      L3_3 = {}
      L3_3.helpId = 34
      L3_3.previousScene = "Scenes.SocialScene"
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
        L3_3.helpId = 2
        L3_3.previousScene = "Scenes.SocialScene"
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
          L3_3.helpId = 3
          L3_3.previousScene = "Scenes.SocialScene"
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

L11_1.create = L18_1

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = "Scenes.Home"
    _backAction = L4_2
    L4_2 = L7_1
    L4_2 = L4_2.logEvent
    L5_2 = "Social Scene Shown"
    L4_2(L5_2)
    L4_2 = L11_1
    L4_2 = L4_2.profileView
    L5_2 = L4_2
    L4_2 = L4_2.checkForUpdate
    L4_2(L5_2)
    L4_2 = L11_1
    L4_2 = L4_2.profileView
    L4_2 = L4_2.enablePrivateTableTap
    L5_2 = 0
    L4_2(L5_2)
    L4_2 = L8_1
    L4_2 = L4_2.newOnScene
    L5_2 = A0_2
    L4_2(L5_2)
    L4_2 = L17_1
    L4_2 = L4_2.repaint
    L4_2()
    L4_2 = A0_2.bar
    L4_2.selectedTab = 1
    L4_2 = A0_2.achievementsView
    L4_2 = L4_2.repaint
    L4_2()
    L4_2 = A1_2.params
    if L4_2 ~= nil then
      L4_2 = A1_2.params
      L4_2 = L4_2.selectedTab
      if L4_2 ~= nil then
        L4_2 = log3
        L5_2 = "SELECTED TAB"
        L6_2 = A1_2.params
        L6_2 = L6_2.selectedTab
        L4_2(L5_2, L6_2)
        L4_2 = A0_2.bar
        L5_2 = A1_2.params
        L5_2 = L5_2.selectedTab
        L4_2.selectedTab = L5_2
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

L11_1.show = L18_1

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == "showProfile" then
    L2_2 = A0_2.bar
    L3_2 = L2_2
    L2_2 = L2_2.selectButtonWithId
    L4_2 = 1
    L2_2(L3_2, L4_2)
    L2_2 = L11_1
    L2_2 = L2_2.profileView
    L3_2 = L2_2
    L2_2 = L2_2.profileTutorialSteps
    L2_2(L3_2)
    L2_2 = L10_1
    L2_2 = L2_2.sparkle
    L3_2 = A0_2.view
    L4_2 = 2000
    L5_2 = display
    L5_2 = L5_2.contentCenterX
    L5_2 = L5_2 - 200
    L6_2 = display
    L6_2 = L6_2.contentCenterY
    L6_2 = L6_2 - 200
    L7_2 = display
    L7_2 = L7_2.contentCenterX
    L7_2 = L7_2 + 200
    L8_2 = display
    L8_2 = L8_2.contentCenterY
    L8_2 = L8_2 + 200
    L9_2 = 200
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end

L11_1.startTutorialSequence = L18_1

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = A0_2.helpButton
    L4_2.isVisible = false
    L4_2 = L11_1
    L4_2 = L4_2.profileView
    L4_2 = L4_2.sendPrivateInfoToServer
    L4_2()
  end
end

L11_1.hide = L18_1

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.view
  L3_2 = L16_1
  L4_2 = L3_2
  L3_2 = L3_2.destroyView
  L3_2(L4_2)
  L3_2 = L8_1
  L3_2 = L3_2.removeFromScene
  L4_2 = L11_1
  L3_2(L4_2)
end

L11_1.destroy = L18_1
L19_1 = L11_1
L18_1 = L11_1.addEventListener
L20_1 = "create"
L21_1 = L11_1
L18_1(L19_1, L20_1, L21_1)
L19_1 = L11_1
L18_1 = L11_1.addEventListener
L20_1 = "show"
L21_1 = L11_1
L18_1(L19_1, L20_1, L21_1)
L19_1 = L11_1
L18_1 = L11_1.addEventListener
L20_1 = "hide"
L21_1 = L11_1
L18_1(L19_1, L20_1, L21_1)
L19_1 = L11_1
L18_1 = L11_1.addEventListener
L20_1 = "destroy"
L21_1 = L11_1
L18_1(L19_1, L20_1, L21_1)
return L11_1
