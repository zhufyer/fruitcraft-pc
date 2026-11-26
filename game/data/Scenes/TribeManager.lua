local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.SceneCreator"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "widget"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.TabBar"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.TribeUpgradeView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Language"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.CreateTribeView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Views.TribeMemberView"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Views.InviteView"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Views.ActivityIndicatorView"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Tutorial.HorizontalOverlayView"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Utils.Analytics"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Views.ChatButton"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Components.TDButtonView"
L13_1 = L13_1(L14_1)
L14_1 = L1_1.newScene
L15_1 = "TribeManager"
L14_1 = L14_1(L15_1)
L15_1 = nil
L16_1 = nil
L17_1 = nil

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
  L4_2 = L13_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Navbar/FC-navbar-help.png"
  L7_2 = L7_2 .. L8_2
  L6_2.defaultFile = L7_2
  L6_2.width = 34
  L6_2.height = 34
  
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L0_3 = L0_3.bar
    L0_3 = L0_3.selectedTab
    if L0_3 == 1 then
      L0_3 = L17_1
      L0_3 = L0_3.hideMoreView
      L0_3()
      L0_3 = L0_1
      L0_3 = L0_3.gotoScene
      L1_3 = "Scenes.HelpScene"
      L2_3 = {}
      L3_3 = {}
      L3_3.helpId = 5
      L3_3.previousScene = "Scenes.TribeManager"
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
        L3_3.helpId = 6
        L3_3.previousScene = "Scenes.TribeManager"
        L2_3.params = L3_3
        L0_3(L1_3, L2_3)
      else
        L0_3 = A0_2
        L0_3 = L0_3.bar
        L0_3 = L0_3.selectedTab
        if L0_3 == 3 then
          L0_3 = A0_2
          L0_3 = L0_3.bar
          L1_3 = L0_3
          L0_3 = L0_3.selectButtonWithId
          L2_3 = 2
          L0_3(L1_3, L2_3)
          L0_3 = L0_1
          L0_3 = L0_3.gotoScene
          L1_3 = "Scenes.HelpScene"
          L2_3 = {}
          L3_3 = {}
          L3_3.helpId = 7
          L3_3.previousScene = "Scenes.TribeManager"
          L2_3.params = L3_3
          L0_3(L1_3, L2_3)
        else
          L0_3 = A0_2
          L0_3 = L0_3.bar
          L0_3 = L0_3.selectedTab
          if L0_3 == 4 then
            L0_3 = L0_1
            L0_3 = L0_3.gotoScene
            L1_3 = "Scenes.HelpScene"
            L2_3 = {}
            L3_3 = {}
            L3_3.helpId = 5
            L3_3.previousScene = "Scenes.TribeManager"
            L2_3.params = L3_3
            L0_3(L1_3, L2_3)
          end
        end
      end
    end
  end
  
  L6_2.onRelease = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.helpButton = L4_2
  L4_2 = A0_2.view
  L5_2 = L4_2
  L4_2 = L4_2.insert
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

L14_1.create = L18_1

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = L11_1
  L2_2 = L2_2.logEvent
  L3_2 = "TribeManager Scene Shown"
  L2_2(L3_2)
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = "Scenes.Home"
    _backAction = L4_2
    L4_2 = sceneChange
    if L4_2 ~= nil then
      L4_2 = sceneChange
      L4_2 = L4_2.refresh
      L4_2()
    end
    L4_2 = L7_1
    L5_2 = L4_2
    L4_2 = L4_2.createView
    L4_2 = L4_2(L5_2)
    L17_1 = L4_2
    L4_2 = log3
    L5_2 = "positionInTribe"
    L6_2 = mainPlayer
    L6_2 = L6_2.positionInTribe
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.bar
    if L4_2 ~= nil then
      L4_2 = display
      L4_2 = L4_2.remove
      L5_2 = A0_2.bar
      L5_2 = L5_2.view
      L4_2(L5_2)
      A0_2.bar = nil
    end
    L4_2 = mainPlayer
    L4_2 = L4_2.positionInTribe
    if L4_2 == 3 then
      L4_2 = L8_1
      L5_2 = L4_2
      L4_2 = L4_2.new
      L4_2 = L4_2(L5_2)
      Invite = L4_2
      L4_2 = L6_1
      L5_2 = L4_2
      L4_2 = L4_2.new
      L6_2 = "edit"
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = L4_1
      L6_2 = L5_2
      L5_2 = L5_2.new
      L5_2 = L5_2(L6_2)
      L6_2 = L3_1
      L7_2 = L6_2
      L6_2 = L6_2.new
      L8_2 = {}
      L9_2 = L5_1
      L9_2 = L9_2["Tribe Members"]
      L10_2 = L5_1
      L10_2 = L10_2["Tribe Upgrade"]
      L11_2 = L5_1
      L11_2 = L11_2["Edit Tribe"]
      L12_2 = L5_1
      L12_2 = L12_2["Invite Player"]
      L8_2[1] = L9_2
      L8_2[2] = L10_2
      L8_2[3] = L11_2
      L8_2[4] = L12_2
      L9_2 = {}
      L9_2.previousScene = "Scenes.Home"
      L9_2.showsTribeGold = false
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L16_1 = L6_2
      L6_2 = L16_1
      L7_2 = L6_2
      L6_2 = L6_2.setPosition
      L8_2 = 0
      L9_2 = 0
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = L16_1
      L7_2 = L6_2
      L6_2 = L6_2.setButtonsView
      L8_2 = {}
      L9_2 = L17_1
      L10_2 = L5_2
      L11_2 = L4_2
      L12_2 = Invite
      L8_2[1] = L9_2
      L8_2[2] = L10_2
      L8_2[3] = L11_2
      L8_2[4] = L12_2
      L6_2(L7_2, L8_2)
    else
      L4_2 = mainPlayer
      L4_2 = L4_2.positionInTribe
      if L4_2 == 2 then
        L4_2 = L8_1
        L5_2 = L4_2
        L4_2 = L4_2.new
        L4_2 = L4_2(L5_2)
        L5_2 = L4_1
        L6_2 = L5_2
        L5_2 = L5_2.new
        L5_2 = L5_2(L6_2)
        L6_2 = L3_1
        L7_2 = L6_2
        L6_2 = L6_2.new
        L8_2 = {}
        L9_2 = L5_1
        L9_2 = L9_2["Tribe Members"]
        L10_2 = L5_1
        L10_2 = L10_2["Tribe Upgrade"]
        L11_2 = L5_1
        L11_2 = L11_2["Invite Player"]
        L8_2[1] = L9_2
        L8_2[2] = L10_2
        L8_2[3] = L11_2
        L9_2 = {}
        L9_2.previousScene = "Scenes.Home"
        L9_2.showsTribeGold = false
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L16_1 = L6_2
        L6_2 = L16_1
        L7_2 = L6_2
        L6_2 = L6_2.setPosition
        L8_2 = 0
        L9_2 = 0
        L6_2(L7_2, L8_2, L9_2)
        L6_2 = L16_1
        L7_2 = L6_2
        L6_2 = L6_2.setButtonsView
        L8_2 = {}
        L9_2 = L17_1
        L10_2 = L5_2
        L11_2 = L4_2
        L8_2[1] = L9_2
        L8_2[2] = L10_2
        L8_2[3] = L11_2
        L6_2(L7_2, L8_2)
      else
        L4_2 = mainPlayer
        L4_2 = L4_2.positionInTribe
        if L4_2 == 1 then
          L4_2 = L4_1
          L5_2 = L4_2
          L4_2 = L4_2.new
          L4_2 = L4_2(L5_2)
          L5_2 = L3_1
          L6_2 = L5_2
          L5_2 = L5_2.new
          L7_2 = {}
          L8_2 = L5_1
          L8_2 = L8_2["Tribe Members"]
          L9_2 = L5_1
          L9_2 = L9_2["Tribe Upgrade"]
          L7_2[1] = L8_2
          L7_2[2] = L9_2
          L8_2 = {}
          L8_2.previousScene = "Scenes.Home"
          L8_2.showsTribeGold = false
          L5_2 = L5_2(L6_2, L7_2, L8_2)
          L16_1 = L5_2
          L5_2 = L16_1
          L6_2 = L5_2
          L5_2 = L5_2.setPosition
          L7_2 = 0
          L8_2 = 0
          L5_2(L6_2, L7_2, L8_2)
          L5_2 = L16_1
          L6_2 = L5_2
          L5_2 = L5_2.setButtonsView
          L7_2 = {}
          L8_2 = L17_1
          L9_2 = L4_2
          L7_2[1] = L8_2
          L7_2[2] = L9_2
          L5_2(L6_2, L7_2)
        end
      end
    end
    L4_2 = L16_1
    A0_2.bar = L4_2
    L5_2 = L2_2
    L4_2 = L2_2.insert
    L6_2 = A0_2.bar
    L6_2 = L6_2.view
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.bar
    L5_2 = L4_2
    L4_2 = L4_2.selectButtonWithId
    L6_2 = 1
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.helpButton
    L4_2.isVisible = true
    L4_2 = A0_2.helpButton
    L5_2 = L4_2
    L4_2 = L4_2.toFront
    L4_2(L5_2)
    L4_2 = L9_1
    L4_2 = L4_2.show
    L5_2 = L5_1
    L5_2 = L5_2["Fetch Tribe Members"]
    L4_2(L5_2)
    L4_2 = mainPlayer
    L4_2 = L4_2.tribe
    L5_2 = L4_2
    L4_2 = L4_2.getTribeMembers
    L6_2 = false
    L7_2 = L17_1
    L7_2 = L7_2.didGetTribeMemberCallback
    L8_2 = L17_1
    L8_2 = L8_2.failedToGetTribeMembersCallback
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = L12_1
    L4_2 = L4_2.newOnScene
    L5_2 = A0_2
    L4_2(L5_2)
  end
end

L14_1.show = L18_1

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = A0_2.bar
    L4_2 = L4_2.buttons
    L4_2 = L4_2[3]
    if L4_2 ~= nil then
      L4_2 = A0_2.bar
      L4_2 = L4_2.buttons
      L4_2 = L4_2[3]
      L4_2 = L4_2.buttonView
      L5_2 = L4_2
      L4_2 = L4_2.hide
      L4_2(L5_2)
    end
    L4_2 = A0_2.bar
    L4_2 = L4_2.buttons
    L4_2 = L4_2[4]
    if L4_2 ~= nil then
      L4_2 = A0_2.bar
      L4_2 = L4_2.buttons
      L4_2 = L4_2[4]
      L4_2 = L4_2.buttonView
      L5_2 = L4_2
      L4_2 = L4_2.hide
      L4_2(L5_2)
    end
    L4_2 = A0_2.bar
    L4_2 = L4_2.selectedTab
    if L4_2 == 1 then
      L4_2 = L17_1
      L4_2 = L4_2.hideMoreView
      L4_2()
    end
    L4_2 = A0_2.helpButton
    L4_2.isVisible = false
  end
  if L3_2 == "did" and A0_2 then
    L4_2 = A0_2.profileViewOverlay
    if L4_2 then
      L4_2 = A0_2.profileViewOverlay
      L5_2 = L4_2
      L4_2 = L4_2.removeSelf
      L4_2(L5_2)
      A0_2.profileViewOverlay = nil
    end
  end
end

L14_1.hide = L18_1

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.view
  L3_2 = L12_1
  L3_2 = L3_2.removeFromScene
  L4_2 = L14_1
  L3_2(L4_2)
end

L14_1.destroy = L18_1
L19_1 = L14_1
L18_1 = L14_1.addEventListener
L20_1 = "create"
L21_1 = L14_1
L18_1(L19_1, L20_1, L21_1)
L19_1 = L14_1
L18_1 = L14_1.addEventListener
L20_1 = "show"
L21_1 = L14_1
L18_1(L19_1, L20_1, L21_1)
L19_1 = L14_1
L18_1 = L14_1.addEventListener
L20_1 = "hide"
L21_1 = L14_1
L18_1(L19_1, L20_1, L21_1)
L19_1 = L14_1
L18_1 = L14_1.addEventListener
L20_1 = "destroy"
L21_1 = L14_1
L18_1(L19_1, L20_1, L21_1)
return L14_1
