local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
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
L6_1 = "Views.ProfileOverlay"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Components.TDButtonView"
L6_1 = L6_1(L7_1)
L7_1 = nil
L8_1 = nil
L9_1 = nil
L10_1 = nil
L11_1 = nil
L12_1 = nil
L13_1 = nil

function L14_1()
  local L0_2, L1_2, L2_2
  L0_2 = L3_1
  L0_2 = L0_2.hide
  L0_2()
  L0_2 = showSimpleDialog
  L1_2 = "Poke"
  L2_2 = "Poke success"
  L0_2(L1_2, L2_2)
end

successToPokeCallBack = L14_1

function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "Poke"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

failedToPokeCallback = L14_1

function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = A0_2.delegate
  L1_2 = L1_2.members
  L2_2 = A0_2.memberId
  L1_2 = L1_2[L2_2]
  L1_2.positionInTribe = 2
  L1_2 = A0_2.promoteButton
  L2_2 = L1_2
  L1_2 = L1_2.setLabel
  L3_2 = L1_1
  L3_2 = L3_2["demote button"]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.demoteAction
  A0_2.buttonAction = L1_2
  L1_2 = A0_2.delegate
  L2_2 = L1_2
  L1_2 = L1_2.reloadTabelWithNewContent
  L3_2 = A0_2.delegate
  L3_2 = L3_2.members
  L1_2(L2_2, L3_2)
  L1_2 = showSimpleDialog
  L2_2 = "Promote"
  L3_2 = "Promote success"
  L1_2(L2_2, L3_2)
end

successToPromoteCallBack = L14_1

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L3_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = showSimpleDialog
  L3_2 = "Promote"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

failedToPromoteCallback = L14_1

function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = A0_2.delegate
  L1_2 = L1_2.members
  L2_2 = A0_2.memberId
  L1_2 = L1_2[L2_2]
  L1_2.positionInTribe = 1
  L1_2 = A0_2.promoteButton
  L2_2 = L1_2
  L1_2 = L1_2.setLabel
  L3_2 = L1_1
  L3_2 = L3_2["promote button"]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.promoteAction
  A0_2.buttonAction = L1_2
  L1_2 = A0_2.delegate
  L2_2 = L1_2
  L1_2 = L1_2.reloadTabelWithNewContent
  L3_2 = A0_2.delegate
  L3_2 = L3_2.members
  L1_2(L2_2, L3_2)
  L1_2 = showSimpleDialog
  L2_2 = "Demote"
  L3_2 = "Demote success"
  L1_2(L2_2, L3_2)
end

successToDemoteCallBack = L14_1

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L3_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = showSimpleDialog
  L3_2 = "Demote"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

failedToDemoteCallback = L14_1

function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = A0_2.delegate
  L1_2 = L1_2.members
  L2_2 = A0_2.memberId
  L1_2[L2_2] = nil
  L1_2 = A0_2.delegate
  L2_2 = L1_2
  L1_2 = L1_2.reloadTabelWithNewContent
  L3_2 = A0_2.delegate
  L3_2 = L3_2.members
  L1_2(L2_2, L3_2)
  L1_2 = showSimpleDialog
  L2_2 = "Kick"
  L3_2 = "Kick success"
  L1_2(L2_2, L3_2)
end

successTokickCallBack = L14_1

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L3_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = showSimpleDialog
  L3_2 = "Kick"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

failedToKickCallback = L14_1

function L14_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A3_2 then
    L4_2 = {}
    A3_2 = L4_2
  end
  L4_2 = setmetatable
  L5_2 = A3_2
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
  A0_2.__index = A0_2
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  A3_2.view = L4_2
  A3_2.memberId = A1_2
  L4_2 = A2_2.members
  L4_2 = L4_2[A1_2]
  A3_2.selectedUser = L4_2
  A3_2.delegate = A2_2
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "Members/FC-memberlist-popup.png"
  L5_2 = L5_2 .. L6_2
  L6_2 = 75
  L7_2 = 122
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A3_2.BG = L4_2
  L4_2 = A3_2.BG
  L5_2 = A3_2.BG
  L5_2 = L5_2.width
  L5_2 = L5_2 / 2
  L4_2.x = L5_2
  L4_2 = A3_2.BG
  L5_2 = A3_2.BG
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2.y = L5_2
  L4_2 = A3_2.view
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = A3_2.BG
  L4_2(L5_2, L6_2)
  L4_2 = L6_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.width = 50
  L6_2.height = 22
  L7_2 = L1_1
  L7_2 = L7_2["kick button"]
  L6_2.label = L7_2
  L7_2 = {}
  L8_2 = Constants
  L8_2 = L8_2.whiteColor
  L8_2, L9_2, L10_2 = L8_2()
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L6_2.labelColor = L7_2
  L6_2.fontSize = 10
  L6_2.emboss = false
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Members/FC-memberlist-leave.png"
  L7_2 = L7_2 .. L8_2
  L6_2.defaultFile = L7_2
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Members/FC-memberlist-leavepressed.png"
  L7_2 = L7_2 .. L8_2
  L6_2.overFile = L7_2
  
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = A3_2
    L1_3 = L1_3.view
    L2_3 = {}
    L2_3.time = 300
    L2_3.alpha = 0
    
    function L3_3()
      local L0_4, L1_4
      subject = L0_4
      L0_4 = false
      animating = L0_4
    end
    
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
    L0_3 = L4_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Scenes.AlertOverlay"
    L2_3 = {}
    L3_3 = {}
    L4_3 = L1_1
    L4_3 = L4_3.Kick
    L3_3.title = L4_3
    L4_3 = L1_1
    L4_3 = L4_3["kick player message"]
    L3_3.text = L4_3
    
    function L4_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
      L0_4 = L3_1
      L0_4 = L0_4.show
      L1_4 = L1_1
      L1_4 = L1_4.Kicking
      L0_4(L1_4)
      L0_4 = mainPlayer
      L0_4 = L0_4.tribe
      L1_4 = L0_4
      L0_4 = L0_4.kickUser
      L2_4 = A3_2
      L2_4 = L2_4.selectedUser
      L3_4 = successTokickCallBack
      L4_4 = failedToKickCallback
      L5_4 = A3_2
      L0_4(L1_4, L2_4, L3_4, L4_4, L5_4)
    end
    
    L3_3.action = L4_3
    L4_3 = L1_1
    L4_3 = L4_3.Continue
    L3_3.buttonText = L4_3
    L4_3 = L1_1
    L4_3 = L4_3.Cancel
    L3_3.buttonText2 = L4_3
    L2_3.params = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L6_2.onRelease = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  A3_2.kickButton = L4_2
  L4_2 = A3_2.view
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = A3_2.kickButton
  L6_2 = L6_2.view
  L4_2(L5_2, L6_2)
  L4_2 = A3_2.kickButton
  L4_2.x = 36
  L4_2 = A3_2.kickButton
  L4_2.y = 17
  L4_2 = nil
  L5_2 = nil
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = A3_2
    L1_3 = L1_3.view
    L2_3 = {}
    L2_3.time = 300
    L2_3.alpha = 0
    
    function L3_3()
      local L0_4, L1_4
      subject = L0_4
      L0_4 = false
      animating = L0_4
    end
    
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
    L0_3 = L3_1
    L0_3 = L0_3.show
    L1_3 = L1_1
    L1_3 = L1_3.Demoting
    L0_3(L1_3)
    L0_3 = mainPlayer
    L0_3 = L0_3.tribe
    L1_3 = L0_3
    L0_3 = L0_3.demoteUser
    L2_3 = A3_2
    L2_3 = L2_3.selectedUser
    L3_3 = successToDemoteCallBack
    L4_3 = failedToDemoteCallback
    L5_3 = A3_2
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
  end
  
  A3_2.demoteAction = L6_2
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = A3_2
    L1_3 = L1_3.view
    L2_3 = {}
    L2_3.time = 300
    L2_3.alpha = 0
    
    function L3_3()
      local L0_4, L1_4
      subject = L0_4
      L0_4 = false
      animating = L0_4
    end
    
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
    L0_3 = L3_1
    L0_3 = L0_3.show
    L1_3 = L1_1
    L1_3 = L1_3.Promoting
    L0_3(L1_3)
    L0_3 = mainPlayer
    L0_3 = L0_3.tribe
    L1_3 = L0_3
    L0_3 = L0_3.promoteUser
    L2_3 = A3_2
    L2_3 = L2_3.selectedUser
    L3_3 = successToPromoteCallBack
    L4_3 = failedToPromoteCallback
    L5_3 = A3_2
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
  end
  
  A3_2.promoteAction = L6_2
  L6_2 = A3_2.selectedUser
  L6_2 = L6_2.positionInTribe
  if L6_2 == 2 then
    L6_2 = L1_1
    L4_2 = L6_2["demote button"]
    L6_2 = A3_2.demoteAction
    A3_2.buttonAction = L6_2
  else
    L6_2 = A3_2.selectedUser
    L6_2 = L6_2.positionInTribe
    if L6_2 == 1 then
      L6_2 = L1_1
      L4_2 = L6_2["promote button"]
      L6_2 = A3_2.promoteAction
      A3_2.buttonAction = L6_2
    end
  end
  L6_2 = L6_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.width = 50
  L8_2.height = 22
  L8_2.label = L4_2
  L9_2 = {}
  L10_2 = Constants
  L10_2 = L10_2.darkBlueColor
  L10_2 = L10_2()
  L9_2[1] = L10_2
  L8_2.labelColor = L9_2
  L8_2.fontSize = 10
  L8_2.emboss = false
  L9_2 = Constants
  L9_2 = L9_2.Path_Assets
  L10_2 = "Members/FC-memberlist-blue.png"
  L9_2 = L9_2 .. L10_2
  L8_2.defaultFile = L9_2
  L9_2 = Constants
  L9_2 = L9_2.Path_Assets
  L10_2 = "Members/FC-memberlist-bluepressed.png"
  L9_2 = L9_2 .. L10_2
  L8_2.overFile = L9_2
  
  function L9_2()
    local L0_3, L1_3
    L0_3 = A3_2
    L0_3 = L0_3.buttonAction
    L0_3()
  end
  
  L8_2.onRelease = L9_2
  L6_2 = L6_2(L7_2, L8_2)
  A3_2.promoteButton = L6_2
  L6_2 = A3_2.view
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = A3_2.promoteButton
  L8_2 = L8_2.view
  L6_2(L7_2, L8_2)
  L6_2 = A3_2.promoteButton
  L6_2.x = 36
  L6_2 = A3_2.promoteButton
  L6_2.y = 44
  L6_2 = L6_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.width = 50
  L8_2.height = 22
  L9_2 = L1_1
  L9_2 = L9_2["poke button"]
  L8_2.label = L9_2
  L9_2 = {}
  L10_2 = Constants
  L10_2 = L10_2.darkBlueColor
  L10_2 = L10_2()
  L9_2[1] = L10_2
  L8_2.labelColor = L9_2
  L9_2 = Constants
  L9_2 = L9_2.fontForTitle
  L9_2 = L9_2()
  L8_2.font = L9_2
  L8_2.fontSize = 10
  L8_2.emboss = false
  L9_2 = Constants
  L9_2 = L9_2.Path_Assets
  L10_2 = "Members/FC-memberlist-blue.png"
  L9_2 = L9_2 .. L10_2
  L8_2.defaultFile = L9_2
  L9_2 = Constants
  L9_2 = L9_2.Path_Assets
  L10_2 = "Members/FC-memberlist-bluepressed.png"
  L9_2 = L9_2 .. L10_2
  L8_2.overFile = L9_2
  
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = A3_2
    L1_3 = L1_3.view
    L2_3 = {}
    L2_3.time = 300
    L2_3.alpha = 0
    
    function L3_3()
      local L0_4, L1_4
      subject = L0_4
      L0_4 = false
      animating = L0_4
    end
    
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
    L0_3 = L3_1
    L0_3 = L0_3.show
    L1_3 = L1_1
    L1_3 = L1_3.Poking
    L0_3(L1_3)
    L0_3 = mainPlayer
    L0_3 = L0_3.tribe
    L1_3 = L0_3
    L0_3 = L0_3.pokeUser
    L2_3 = A3_2
    L2_3 = L2_3.selectedUser
    L3_3 = successToPokeCallBack
    L4_3 = failedToPokeCallback
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  
  L8_2.onRelease = L9_2
  L6_2 = L6_2(L7_2, L8_2)
  A3_2.pokeButton = L6_2
  L6_2 = A3_2.view
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = A3_2.pokeButton
  L8_2 = L8_2.view
  L6_2(L7_2, L8_2)
  L6_2 = A3_2.pokeButton
  L6_2.x = 36
  L6_2 = A3_2.pokeButton
  L6_2.y = 71
  L6_2 = L6_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.width = 50
  L8_2.height = 22
  L9_2 = L1_1
  L9_2 = L9_2.Profile
  L8_2.label = L9_2
  L9_2 = {}
  L10_2 = Constants
  L10_2 = L10_2.darkBlueColor
  L10_2 = L10_2()
  L9_2[1] = L10_2
  L8_2.labelColor = L9_2
  L9_2 = Constants
  L9_2 = L9_2.fontForTitle
  L9_2 = L9_2()
  L8_2.font = L9_2
  L8_2.fontSize = 10
  L8_2.emboss = false
  L9_2 = Constants
  L9_2 = L9_2.Path_Assets
  L10_2 = "Members/FC-memberlist-blue.png"
  L9_2 = L9_2 .. L10_2
  L8_2.defaultFile = L9_2
  L9_2 = Constants
  L9_2 = L9_2.Path_Assets
  L10_2 = "Members/FC-memberlist-bluepressed.png"
  L9_2 = L9_2 .. L10_2
  L8_2.overFile = L9_2
  
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = errorLog
    L1_3 = "called profile"
    L0_3(L1_3)
    L0_3 = A3_2
    L0_3 = L0_3.view
    L0_3.alpha = 0
    L0_3 = A3_2
    L1_3 = {}
    L2_3 = A1_2
    L1_3.id = L2_3
    L2_3 = A2_2
    L2_3 = L2_3.members
    L3_3 = A1_2
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3.name
    L1_3.name = L2_3
    L0_3.playerInfo = L1_3
    L0_3 = L5_1
    L1_3 = L0_3
    L0_3 = L0_3.new
    L2_3 = A3_2
    L2_3 = L2_3.playerInfo
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = L4_1
    L1_3 = L1_3.getSceneName
    L2_3 = "current"
    L1_3 = L1_3(L2_3)
    if L1_3 == "Scenes.RankingsScene" or L1_3 == "Scenes.LeagueScene" or L1_3 == "Scenes.TribeManager" then
      L2_3 = nil
      L3_3 = nil
      if L1_3 then
        L4_3 = L4_1
        L4_3 = L4_3.getScene
        L5_3 = L1_3
        L4_3 = L4_3(L5_3)
        L3_3 = L4_3
        L4_3 = L4_1
        L4_3 = L4_3.getScene
        L5_3 = L1_3
        L4_3 = L4_3(L5_3)
        L2_3 = L4_3.view
        L4_3 = L0_3.view
        L3_3.profileViewOverlay = L4_3
        L5_3 = L2_3
        L4_3 = L2_3.insert
        L6_3 = L0_3.view
        L4_3(L5_3, L6_3)
      end
    end
  end
  
  L8_2.onRelease = L9_2
  L6_2 = L6_2(L7_2, L8_2)
  A3_2.profileButton = L6_2
  L6_2 = A3_2.view
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = A3_2.profileButton
  L8_2 = L8_2.view
  L6_2(L7_2, L8_2)
  L6_2 = A3_2.profileButton
  L6_2.x = 36
  L6_2 = A3_2.profileButton
  L6_2.y = 98
  return A3_2
end

new = L14_1

function L14_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L14_1

function L14_1(A0_2, A1_2, A2_2)
end

setSize = L14_1
