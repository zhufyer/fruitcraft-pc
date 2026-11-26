local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Language"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Constants"
L1_1(L2_1)
L1_1 = require
L2_1 = "widget"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Models.Tribe"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "composer"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.ActivityIndicatorView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Components.TDButtonView"
L5_1 = L5_1(L6_1)
L6_1 = nil
L7_1 = nil
L8_1 = nil
L9_1 = nil
L10_1 = nil
L11_1 = nil

function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.nameField
  L1_2.isVisible = false
  L1_2 = native
  L1_2 = L1_2.setKeyboardFocus
  L2_2 = nil
  L1_2(L2_2)
end

hide = L12_1

function L12_1(A0_2)
  local L1_2
  L1_2 = A0_2.nameField
  L1_2.isVisible = true
end

show = L12_1

function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.nameField
  L2_2 = L1_2
  L1_2 = L1_2.removeSelf
  L1_2(L2_2)
end

remove = L12_1

function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.phase
  if "submitted" == L1_2 then
    L1_2 = native
    L1_2 = L1_2.setKeyboardFocus
    L2_2 = nil
    L1_2(L2_2)
  end
end

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L4_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "Invite"
  L3_2 = "Invite success"
  L4_2 = nil
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L0_3 = L0_3.nameField
    L0_3.isVisible = true
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

successToInviteCallBack = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L4_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = showSimpleDialog
  L3_2 = "Invite"
  L4_2 = A1_2
  L5_2 = nil
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L0_3 = L0_3.nameField
    L0_3.isVisible = true
  end
  
  L2_2(L3_2, L4_2, L5_2, L6_2)
end

failedToInviteCallback = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.delegate
  L1_2 = L1_2.nameField
  L1_2.isVisible = false
  L1_2 = A0_2.delegate
  L1_2 = L1_2.nameField
  L1_2 = L1_2.text
  L2_2 = native
  L2_2 = L2_2.setKeyboardFocus
  L3_2 = nil
  L2_2(L3_2)
  if L1_2 ~= nil and L1_2 ~= "" then
    L3_2 = L1_2
    L2_2 = L1_2.len
    L2_2 = L2_2(L3_2)
    if 0 < L2_2 then
      L2_2 = mainPlayer
      L2_2 = L2_2.tribe
      L3_2 = L2_2
      L2_2 = L2_2.sendInviteRequest
      L4_2 = L1_2
      L5_2 = successToInviteCallBack
      
      function L6_2(A0_3)
        local L1_3, L2_3, L3_3
        L1_3 = failedToInviteCallback
        L2_3 = A0_2
        L2_3 = L2_3.delegate
        L3_3 = A0_3
        L1_3(L2_3, L3_3)
      end
      
      L7_2 = A0_2.delegate
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
      L2_2 = L4_1
      L2_2 = L2_2.show
      L3_2 = L0_1
      L3_2 = L3_2["Inviting Player"]
      L2_2(L3_2)
  end
  else
    L2_2 = log
    L3_2 = "The invitee name shouldn't be empty"
    L2_2(L3_2)
    L2_2 = showSimpleDialog
    L3_2 = "Invite"
    L4_2 = "You need to enter someone's name, otherwise who would we invite???"
    L5_2 = nil
    
    function L6_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L0_3 = L0_3.delegate
      L0_3 = L0_3.nameField
      L0_3.isVisible = true
    end
    
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end

didPressInviteTribe = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
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
  L2_2 = system
  L2_2 = L2_2.getInfo
  L3_2 = "build"
  L2_2 = L2_2(L3_2)
  if "2013.1137" < L2_2 then
    L2_2 = system
    L2_2 = L2_2.getInfo
    L3_2 = "platformName"
    L2_2 = L2_2(L3_2)
    if L2_2 ~= "Android" then
      L2_2 = L0_1
      L2_2 = L2_2.lang
      if L2_2 == "fa" then
        goto lbl_34
      end
    end
  end
  L2_2 = L0_1
  L2_2 = L2_2.lang
  if L2_2 == "ar" then
    ::lbl_34::
    L2_2 = {}
    L3_2 = A1_2.view
    L2_2.parent = L3_2
    L2_2.text = "Forming a tribe is ..."
    L2_2.x = 0
    L2_2.y = 0
    L3_2 = display
    L3_2 = L3_2.contentWidth
    L3_2 = L3_2 - 40
    L2_2.width = L3_2
    L2_2.height = 200
    L3_2 = Constants
    L3_2 = L3_2.fontForSubtitle
    L3_2 = L3_2()
    L2_2.font = L3_2
    L2_2.fontSize = 14
    L2_2.align = "right"
    L3_2 = display
    L3_2 = L3_2.newText
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    A1_2.descriptionText = L3_2
  else
    L2_2 = display
    L2_2 = L2_2.newText
    L3_2 = A1_2.view
    L4_2 = "Forming a tribe is ..."
    L5_2 = 0
    L6_2 = 0
    L7_2 = display
    L7_2 = L7_2.contentWidth
    L7_2 = L7_2 - 40
    L8_2 = 200
    L9_2 = Constants
    L9_2 = L9_2.fontForSubtitle
    L9_2 = L9_2()
    L10_2 = 14
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    A1_2.descriptionText = L2_2
  end
  L2_2 = A1_2.descriptionText
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = Constants
  L4_2 = L4_2.darkBlueColor
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = A1_2.descriptionText
  L3_2 = L0_1
  L3_2 = L3_2["Invite description"]
  L2_2.text = L3_2
  L2_2 = A1_2.descriptionText
  L3_2 = L0_1
  L3_2 = L3_2.adjustX
  L4_2 = A1_2.descriptionText
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L4_2 = 20 + L4_2
  L5_2 = -15
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.x = L3_2
  L2_2 = A1_2.descriptionText
  L3_2 = A1_2.descriptionText
  L3_2 = L3_2.height
  L3_2 = L3_2 / 2
  L3_2 = 140 + L3_2
  L2_2.y = L3_2
  L2_2 = display
  L2_2 = L2_2.newText
  L3_2 = A1_2.view
  L4_2 = L0_1
  L4_2 = L4_2["Player name"]
  L5_2 = ":"
  L4_2 = L4_2 .. L5_2
  L5_2 = 0
  L6_2 = 0
  L7_2 = Constants
  L7_2 = L7_2.fontForTitle
  L7_2 = L7_2()
  L8_2 = 14
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = L2_2
  L3_2 = L2_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.darkBlueColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = L0_1
  L3_2 = L3_2.adjustX
  L4_2 = L2_2.width
  L4_2 = L4_2 / 2
  L4_2 = 10 + L4_2
  L5_2 = -25
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.x = L3_2
  L3_2 = L2_2.height
  L3_2 = L3_2 / 2
  L3_2 = 25 + L3_2
  L2_2.y = L3_2
  L3_2 = system
  L3_2 = L3_2.getInfo
  L4_2 = "platformName"
  L3_2 = L3_2(L4_2)
  if L3_2 == "iPhone OS" then
    L3_2 = L2_2.height
    L3_2 = L3_2 / 2
    L3_2 = 30 + L3_2
    L2_2.y = L3_2
  end
  L3_2 = native
  L3_2 = L3_2.newTextField
  L4_2 = L0_1
  L4_2 = L4_2.adjustX
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 - 180
  L5_2 = L5_2 / 2
  L5_2 = 110 + L5_2
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L2_2.y
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 - 180
  L7_2 = 30
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  A1_2.nameField = L3_2
  L3_2 = A1_2.nameField
  L4_2 = L12_1
  L3_2.userInput = L4_2
  L3_2 = A1_2.nameField
  L4_2 = L3_2
  L3_2 = L3_2.addEventListener
  L5_2 = "userInput"
  L6_2 = L12_1
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A1_2.nameField
  L3_2.isVisible = false
  L3_2 = A1_2.nameField
  L4_2 = Constants
  L4_2 = L4_2.nativeFontForTextFields
  L4_2 = L4_2()
  L3_2.font = L4_2
  L3_2 = A1_2.nameField
  L4_2 = L3_2
  L3_2 = L3_2.setTextColor
  L5_2 = Constants
  L5_2 = L5_2.darkBlueColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = A1_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A1_2.nameField
  L3_2(L4_2, L5_2)
  L3_2 = nil
  L4_2 = nil
  L5_2 = L0_1
  L3_2 = L5_2.Invite
  L5_2 = L5_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.label = L3_2
  L7_2.width = 104
  L7_2.height = 33
  L8_2 = Constants
  L8_2 = L8_2.Path_Assets
  L9_2 = "BattleItems/next.png"
  L8_2 = L8_2 .. L9_2
  L7_2.defaultFile = L8_2
  L8_2 = Constants
  L8_2 = L8_2.Path_Assets
  L9_2 = "BattleItems/next-p.png"
  L8_2 = L8_2 .. L9_2
  L7_2.overFile = L8_2
  L8_2 = didPressInviteTribe
  L7_2.onRelease = L8_2
  L7_2.labelXOffset = 1
  L7_2.emboss = false
  L5_2 = L5_2(L6_2, L7_2)
  L5_2.delegate = A1_2
  L6_2 = A1_2.view
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L5_2.view
  L6_2(L7_2, L8_2)
  L6_2 = L0_1
  L6_2 = L6_2.adjustX
  L7_2 = display
  L7_2 = L7_2.contentWidth
  L7_2 = L7_2 / 2
  L6_2 = L6_2(L7_2)
  L5_2.x = L6_2
  L5_2.y = 90
  return A1_2
end

new = L13_1

function L13_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L13_1
