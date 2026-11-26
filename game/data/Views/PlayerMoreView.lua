local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "widget"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Models.Tribe"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.ActivityIndicatorView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Constants"
L4_1(L5_1)
L4_1 = require
L5_1 = "composer"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.MoreViewBG"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.ProfileOverlay"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Components.TDButtonView"
L7_1 = L7_1(L8_1)
L8_1 = nil
L9_1 = nil
L10_1 = nil
L11_1 = nil
L12_1 = nil
L13_1 = nil
L14_1 = nil
L15_1 = 3

function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "Invite"
  L3_2 = "Invite success"
  L1_2(L2_2, L3_2)
end

successToInviteCallBack = L16_1

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L3_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = showSimpleDialog
  L3_2 = "Invite"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

failedToInviteCallback = L16_1

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
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
  L2_2 = log3
  L3_2 = " player position is : "
  L4_2 = mainPlayer
  L4_2 = L4_2.positionInTribe
  L2_2(L3_2, L4_2)
  L2_2 = mainPlayer
  L2_2 = L2_2.positionInTribe
  if L2_2 ~= 2 then
    L2_2 = mainPlayer
    L2_2 = L2_2.positionInTribe
    if L2_2 ~= 3 then
      goto lbl_154
    end
  end
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.width = 50
  L4_2.height = 22
  L5_2 = L1_1
  L5_2 = L5_2.Invite
  L4_2.label = L5_2
  L5_2 = {}
  L6_2 = Constants
  L6_2 = L6_2.whiteColor
  L6_2, L7_2 = L6_2()
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L4_2.labelColor = L5_2
  L4_2.fontSize = 10
  L4_2.emboss = false
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "Members/FC-memberlist-leave.png"
  L5_2 = L5_2 .. L6_2
  L4_2.defaultFile = L5_2
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "Members/FC-memberlist-leavepressed.png"
  L5_2 = L5_2 .. L6_2
  L4_2.overFile = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A1_2.inviteButton = L2_2
  L2_2 = A1_2.inviteButton
  
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L3_1
    L0_3 = L0_3.show
    L1_3 = L1_1
    L1_3 = L1_3["Inviting Player"]
    L0_3(L1_3)
    L0_3 = log3
    L1_3 = "invited player name is : "
    L2_3 = A1_2
    L2_3 = L2_3.playerInfo
    L2_3 = L2_3.name
    L0_3(L1_3, L2_3)
    L0_3 = mainPlayer
    L0_3 = L0_3.tribe
    L1_3 = L0_3
    L0_3 = L0_3.sendInviteRequest
    L2_3 = A1_2
    L2_3 = L2_3.playerInfo
    L2_3 = L2_3.name
    L3_3 = successToInviteCallBack
    L4_3 = failedToInviteCallback
    L5_3 = A1_2
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    L0_3 = A1_2
    L0_3 = L0_3.view
    L0_3.isVisible = false
  end
  
  L2_2.onRelease = L3_2
  L2_2 = 2
  L3_2 = L5_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = L2_2
  L6_2 = "left"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A1_2.BG = L3_2
  L3_2 = A1_2.BG
  L4_2 = L3_2
  L3_2 = L3_2.setPosition
  L5_2 = 0
  L6_2 = 0
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A1_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A1_2.BG
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A1_2.inviteButton
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.inviteButton
  L3_2.x = 37
  L3_2 = A1_2.inviteButton
  L4_2 = A1_2.BG
  L4_2 = L4_2.height
  L4_2 = L4_2 * 0.5
  L5_2 = A1_2.inviteButton
  L5_2 = L5_2.height
  L5_2 = L5_2 * 0.5
  L4_2 = L4_2 + L5_2
  L5_2 = L15_1
  L4_2 = L4_2 + L5_2
  L3_2.y = L4_2
  L3_2 = L7_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.width = 50
  L5_2.height = 22
  L6_2 = L1_1
  L6_2 = L6_2.Profile
  L5_2.label = L6_2
  L6_2 = {}
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2 = L7_2()
  L6_2[1] = L7_2
  L5_2.labelColor = L6_2
  L5_2.fontSize = 10
  L5_2.emboss = false
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "Members/FC-memberlist-blue.png"
  L6_2 = L6_2 .. L7_2
  L5_2.defaultFile = L6_2
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "Members/FC-memberlist-bluepressed.png"
  L6_2 = L6_2 .. L7_2
  L5_2.overFile = L6_2
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = log3
    L1_3 = "called profile from totale for player with tribe position:"
    L2_3 = A1_2
    L2_3 = L2_3.playerInfo
    L2_3 = L2_3.id
    L0_3(L1_3, L2_3)
    L0_3 = A1_2
    L0_3 = L0_3.view
    L0_3.alpha = 0
    L0_3 = L6_1
    L1_3 = L0_3
    L0_3 = L0_3.new
    L2_3 = A1_2
    L2_3 = L2_3.playerInfo
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = L4_1
    L1_3 = L1_3.getSceneName
    L2_3 = "current"
    L1_3 = L1_3(L2_3)
    if L1_3 == "Scenes.RankingsScene" or L1_3 == "Scenes.LeagueScene" then
      L2_3 = nil
      if L1_3 then
        L3_3 = L4_1
        L3_3 = L3_3.getScene
        L4_3 = L1_3
        L3_3 = L3_3(L4_3)
        L2_3 = L3_3.view
        L4_3 = L2_3
        L3_3 = L2_3.insert
        L5_3 = L0_3.view
        L3_3(L4_3, L5_3)
      end
    end
  end
  
  L5_2.onRelease = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  A1_2.profileButton = L3_2
  L3_2 = A1_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A1_2.profileButton
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.profileButton
  L3_2.x = 37
  L3_2 = A1_2.profileButton
  L4_2 = A1_2.BG
  L4_2 = L4_2.height
  L4_2 = L4_2 * 0.5
  L5_2 = A1_2.profileButton
  L5_2 = L5_2.height
  L5_2 = L5_2 * 0.5
  L4_2 = L4_2 - L5_2
  L5_2 = L15_1
  L4_2 = L4_2 - L5_2
  L3_2.y = L4_2
  L3_2 = A1_2.view
  L4_2 = A1_2.BG
  L4_2 = L4_2.height
  L4_2 = -L4_2
  L4_2 = L4_2 * 0.5
  L3_2.y = L4_2
  goto lbl_215
  ::lbl_154::
  L2_2 = L5_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = 1
  L5_2 = "left"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A1_2.BG = L2_2
  L2_2 = A1_2.BG
  L3_2 = L2_2
  L2_2 = L2_2.setPosition
  L4_2 = 0
  L5_2 = 0
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A1_2.view
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = A1_2.BG
  L4_2 = L4_2.view
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.width = 50
  L4_2.height = 22
  L5_2 = L1_1
  L5_2 = L5_2.Profile
  L4_2.label = L5_2
  L5_2 = {}
  L6_2 = Constants
  L6_2 = L6_2.darkBlueColor
  L6_2, L7_2 = L6_2()
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L4_2.labelColor = L5_2
  L4_2.fontSize = 10
  L4_2.emboss = false
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "Members/FC-memberlist-blue.png"
  L5_2 = L5_2 .. L6_2
  L4_2.defaultFile = L5_2
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "Members/FC-memberlist-bluepressed.png"
  L5_2 = L5_2 .. L6_2
  L4_2.overFile = L5_2
  
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = log3
    L1_3 = "called profile scene for player without tribe position:"
    L2_3 = A1_2
    L2_3 = L2_3.playerInfo
    L2_3 = L2_3.id
    L0_3(L1_3, L2_3)
    L0_3 = A1_2
    L0_3 = L0_3.view
    L0_3.alpha = 0
    L0_3 = L6_1
    L1_3 = L0_3
    L0_3 = L0_3.new
    L2_3 = A1_2
    L2_3 = L2_3.playerInfo
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = L4_1
    L1_3 = L1_3.getSceneName
    L2_3 = "current"
    L1_3 = L1_3(L2_3)
    if L1_3 == "Scenes.RankingsScene" or L1_3 == "Scenes.LeagueScene" then
      L2_3 = nil
      if L1_3 then
        L3_3 = L4_1
        L3_3 = L3_3.getScene
        L4_3 = L1_3
        L3_3 = L3_3(L4_3)
        L2_3 = L3_3.view
        L4_3 = L2_3
        L3_3 = L2_3.insert
        L5_3 = L0_3.view
        L3_3(L4_3, L5_3)
      end
    end
  end
  
  L4_2.onRelease = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A1_2.profileButton = L2_2
  L2_2 = A1_2.view
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = A1_2.profileButton
  L4_2 = L4_2.view
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.profileButton
  L2_2.x = 37
  L2_2 = A1_2.profileButton
  L3_2 = A1_2.BG
  L3_2 = L3_2.height
  L3_2 = L3_2 * 0.5
  L2_2.y = L3_2
  ::lbl_215::
  L2_2 = A1_2.BG
  if L2_2 == nil then
    L2_2 = 1
    L3_2 = L5_1
    L4_2 = L3_2
    L3_2 = L3_2.new
    L5_2 = L2_2
    L6_2 = "left"
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A1_2.BG = L3_2
    L3_2 = A1_2.BG
    L4_2 = L3_2
    L3_2 = L3_2.setPosition
    L5_2 = 0
    L6_2 = 0
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A1_2.view
    L4_2 = L3_2
    L3_2 = L3_2.insert
    L5_2 = A1_2.BG
    L5_2 = L5_2.view
    L3_2(L4_2, L5_2)
  end
  L2_2 = A1_2.view
  L2_2.isVisible = false
  return A1_2
end

new = L16_1

function L16_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.view
  L2_2 = A0_2.view
  L2_2 = L2_2.isVisible
  L2_2 = not L2_2
  L1_2.isVisible = L2_2
end

changeVisibility = L16_1

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = transition
    L2_2 = L2_2.to
    L3_2 = A0_2.view
    L4_2 = {}
    L4_2.time = 3000
    L4_2.alpha = 0
    
    function L5_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L0_3 = L0_3.view
      L0_3.isVisible = false
    end
    
    L4_2.onComplete = L5_2
    L2_2 = L2_2(L3_2, L4_2)
    transitionRef = L2_2
  else
    L2_2 = A0_2.view
    L2_2.isVisible = false
  end
end

hide = L16_1

function L16_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2.playerInfo = A1_2
  L4_2 = mainPlayer
  L4_2 = L4_2.positionInTribe
  if L4_2 ~= 2 then
    L4_2 = mainPlayer
    L4_2 = L4_2.positionInTribe
    if L4_2 ~= 3 then
      goto lbl_30
    end
  end
  L4_2 = A0_2.playerInfo
  L4_2 = L4_2.level
  if 6 <= L4_2 then
    L4_2 = mainPlayer
    L4_2 = L4_2.tribe
    if L4_2 then
      L4_2 = A0_2.playerInfo
      L4_2 = L4_2.tribeId
      L5_2 = mainPlayer
      L5_2 = L5_2.tribe
      L5_2 = L5_2.id
      if L4_2 == L5_2 then
        L4_2 = A0_2.view
        L4_2.isVisible = false
      else
        L4_2 = A0_2.view
        L4_2.isVisible = true
      end
    end
  end
  ::lbl_30::
  L4_2 = A0_2.view
  L4_2.alpha = 1
  L4_2 = A0_2.view
  L4_2.isVisible = true
  L5_2 = A0_2
  L4_2 = A0_2.setPosition
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2(L5_2, L6_2, L7_2)
end

changeMoreViewPositionAndId = L16_1

function L16_1(A0_2)
  local L1_2
  L1_2 = A0_2.view
  L1_2.isVisible = false
end

hide = L16_1

function L16_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L16_1

function L16_1(A0_2, A1_2, A2_2)
end

setSize = L16_1
