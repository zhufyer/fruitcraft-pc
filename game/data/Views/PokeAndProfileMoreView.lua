local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
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
L3_1 = "Views.ActivityIndicatorView"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Constants"
L3_1(L4_1)
L3_1 = require
L4_1 = "composer"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.ProfileOverlay"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Components.TDButtonView"
L5_1 = L5_1(L6_1)
L6_1 = nil
L7_1 = nil
L8_1 = nil

function L9_1()
  local L0_2, L1_2, L2_2
  L0_2 = L2_1
  L0_2 = L0_2.hide
  L0_2()
  L0_2 = showSimpleDialog
  L1_2 = "Poke"
  L2_2 = "Poke success"
  L0_2(L1_2, L2_2)
end

successToPokeCallBack = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "Poke"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

failedToPokeCallback = L9_1

function L9_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
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
  L7_2 = 65
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
  L4_2 = L5_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.width = 50
  L6_2.height = 22
  L7_2 = L1_1
  L7_2 = L7_2["poke button"]
  L6_2.label = L7_2
  L7_2 = {}
  L8_2 = Constants
  L8_2 = L8_2.darkBlueColor
  L8_2 = L8_2()
  L7_2[1] = L8_2
  L6_2.labelColor = L7_2
  L6_2.fontSize = 10
  L6_2.emboss = false
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Members/FC-memberlist-blue.png"
  L7_2 = L7_2 .. L8_2
  L6_2.defaultFile = L7_2
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Members/FC-memberlist-bluepressed.png"
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
    L0_3 = L2_1
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
  
  L6_2.onRelease = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  A3_2.pokeButton = L4_2
  L4_2 = A3_2.view
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = A3_2.pokeButton
  L6_2 = L6_2.view
  L4_2(L5_2, L6_2)
  L4_2 = A3_2.pokeButton
  L4_2.x = 36
  L4_2 = A3_2.pokeButton
  L4_2.y = 17
  L4_2 = L5_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.width = 50
  L6_2.height = 22
  L7_2 = L1_1
  L7_2 = L7_2.Profile
  L6_2.label = L7_2
  L7_2 = {}
  L8_2 = Constants
  L8_2 = L8_2.darkBlueColor
  L8_2 = L8_2()
  L7_2[1] = L8_2
  L6_2.labelColor = L7_2
  L7_2 = Constants
  L7_2 = L7_2.fontForTitle
  L7_2 = L7_2()
  L6_2.font = L7_2
  L6_2.fontSize = 10
  L6_2.emboss = false
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Members/FC-memberlist-blue.png"
  L7_2 = L7_2 .. L8_2
  L6_2.defaultFile = L7_2
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Members/FC-memberlist-bluepressed.png"
  L7_2 = L7_2 .. L8_2
  L6_2.overFile = L7_2
  
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = errorLog
    L1_3 = "called profile2"
    L0_3(L1_3)
    L0_3 = A3_2
    L0_3 = L0_3.view
    L0_3.alpha = 0
    L0_3 = nil
    subject = L0_3
    L0_3 = false
    animating = L0_3
    L0_3 = log3
    L1_3 = "called profile from tribe:"
    L2_3 = A3_2
    L2_3 = L2_3.selectedUser
    L0_3(L1_3, L2_3)
    L0_3 = L4_1
    L1_3 = L0_3
    L0_3 = L0_3.new
    L2_3 = A3_2
    L2_3 = L2_3.selectedUser
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = L3_1
    L1_3 = L1_3.getSceneName
    L2_3 = "current"
    L1_3 = L1_3(L2_3)
    if L1_3 == "Scenes.TribeManager" then
      L2_3 = nil
      L3_3 = nil
      if L1_3 then
        L4_3 = L3_1
        L4_3 = L4_3.getScene
        L5_3 = L1_3
        L4_3 = L4_3(L5_3)
        L3_3 = L4_3
        L4_3 = L3_1
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
  
  L6_2.onRelease = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  A3_2.profileButton = L4_2
  L4_2 = A3_2.view
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = A3_2.profileButton
  L6_2 = L6_2.view
  L4_2(L5_2, L6_2)
  L4_2 = A3_2.profileButton
  L4_2.x = 36
  L4_2 = A3_2.profileButton
  L4_2.y = 43
  return A3_2
end

new = L9_1

function L9_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L9_1

function L9_1(A0_2, A1_2)
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

hide = L9_1
