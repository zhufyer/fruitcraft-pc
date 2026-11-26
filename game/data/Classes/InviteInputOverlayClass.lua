local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Models.Player"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "widget"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Constants"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Utils.SKComponents"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.ActivityIndicatorView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Components.TDButtonView"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Tutorial.TutorialManager2"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Core.ParentStandardBaseOverlayClass"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Utils.KeyboardAvoider"
L10_1 = L10_1(L11_1)
L11_1 = setmetatable
L12_1 = _M
L13_1 = L9_1
L11_1(L12_1, L13_1)
L11_1 = _M
L12_1 = _M
L11_1.__index = L12_1
L11_1 = _M
L12_1 = nil

function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.phase
  if "submitted" == L1_2 then
    L1_2 = native
    L1_2 = L1_2.setKeyboardFocus
    L2_2 = nil
    L1_2(L2_2)
  end
end

function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = log
  L1_2 = "Finished loading called in invite overlay"
  L0_2(L1_2)
  L0_2 = L6_1
  L0_2 = L0_2.hide
  L0_2()
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "isInvited"
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.saveSettings
  L0_2(L1_2)
  L0_2 = showSimpleDialog
  L1_2 = "Invite Code"
  L2_2 = "You and the player that invited you have received a bonus. Have fun!"
  L3_2 = nil
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.gotoScene
    L1_3 = "Scenes.Home"
    L0_3(L1_3)
  end
  
  L0_2(L1_2, L2_2, L3_2, L4_2)
end

didFinishLoading = L14_1

function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L6_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = mainPlayer
  L2_2 = L1_2
  L1_2 = L1_2.setSettingForKey
  L3_2 = "isInvited"
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = mainPlayer
  L2_2 = L1_2
  L1_2 = L1_2.saveSettings
  L1_2(L2_2)
  L1_2 = showSimpleDialog
  L2_2 = "Invite Code"
  L3_2 = A0_2
  L4_2 = nil
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Scenes.InviteInputOverlay"
    L0_3(L1_3)
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

failedToLoad = L14_1

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = L9_1
  L2_2 = L2_2.create
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.params
  if L2_2 then
    L2_2 = A1_2.params
    L2_2 = L2_2.completionCallback
    if L2_2 then
      L2_2 = A1_2.params
      L2_2 = L2_2.completionCallback
      L12_1 = L2_2
    end
  end
  L2_2 = didFinishLoading
  A0_2.didFinishLoading = L2_2
  L2_2 = failedToLoad
  A0_2.failedToLoad = L2_2
  L2_2 = display
  L2_2 = L2_2.newRect
  L3_2 = A0_2.contentGroup
  L4_2 = 0
  L5_2 = 0
  L6_2 = 570
  L7_2 = 360
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2.x = 0
  L2_2.y = 0
  L4_2 = L2_2
  L3_2 = L2_2.setFillColor
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = L2_2
  L3_2 = L2_2.addEventListener
  L5_2 = "touch"
  
  function L6_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "began" then
      L1_3 = L10_1
      L1_3 = L1_3.dismiss
      L1_3()
    end
    L1_3 = true
    return L1_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.addEventListener
  L5_2 = "tap"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = L10_1
    L0_3 = L0_3.dismiss
    L0_3()
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = display
  L3_2 = L3_2.newRoundedRect
  L4_2 = A0_2.contentGroup
  L5_2 = 0
  L6_2 = 0
  L7_2 = 280
  L8_2 = 295
  L9_2 = 3
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2.strokeWidth = 2
  L5_2 = L3_2
  L4_2 = L3_2.setStrokeColor
  L6_2 = L4_1
  L6_2 = L6_2.greenColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = 1
  L7_2 = 1
  L8_2 = 1
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L3_2.x = 0
  L3_2.y = 0
  L5_2 = L3_2
  L4_2 = L3_2.addEventListener
  L6_2 = "tap"
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = L10_1
    L0_3 = L0_3.dismiss
    L0_3()
    L0_3 = true
    return L0_3
  end
  
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = L3_2
  L4_2 = L3_2.addEventListener
  L6_2 = "touch"
  
  function L7_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "began" then
      L1_3 = L10_1
      L1_3 = L1_3.dismiss
      L1_3()
    end
    L1_3 = true
    return L1_3
  end
  
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = A0_2.contentGroup
  L6_2 = L2_1
  L6_2 = L6_2["Invite Code"]
  L7_2 = 0
  L8_2 = 0
  L9_2 = L4_1
  L9_2 = L9_2.fontForTitle
  L9_2 = L9_2()
  L10_2 = 20
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = L4_1
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L5_2 = L3_2.x
  L4_2.x = L5_2
  L5_2 = L3_2.height
  L5_2 = -L5_2
  L5_2 = L5_2 / 2
  L5_2 = L5_2 + 10
  L6_2 = L4_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L4_2.y = L5_2
  L5_2 = display
  L5_2 = L5_2.newRoundedRect
  L6_2 = A0_2.contentGroup
  L7_2 = 0
  L8_2 = 0
  L9_2 = L3_2.width
  L9_2 = L9_2 - 20
  L10_2 = L3_2.height
  L10_2 = L10_2 - 60
  L11_2 = 3
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = L5_2
  L6_2 = L5_2.setFillColor
  L8_2 = L4_1
  L8_2 = L8_2.lightBlueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L7_2 = L5_2
  L6_2 = L5_2.setStrokeColor
  L8_2 = L4_1
  L8_2 = L8_2.blueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L5_2.strokeWidth = 1
  L6_2 = L3_2.x
  L5_2.x = L6_2
  L6_2 = L3_2.y
  L6_2 = L6_2 + 20
  L5_2.y = L6_2
  L6_2 = L7_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.width = 30
  L8_2.height = 30
  L9_2 = L4_1
  L9_2 = L9_2.Path_Assets
  L10_2 = "BattleItems/close.png"
  L9_2 = L9_2 .. L10_2
  L8_2.defaultFile = L9_2
  L9_2 = L4_1
  L9_2 = L9_2.Path_Assets
  L10_2 = "BattleItems/close-pressed.png"
  L9_2 = L9_2 .. L10_2
  L8_2.overFile = L9_2
  
  function L9_2()
    local L0_3, L1_3
    L0_3 = L11_1
    L0_3 = L0_3.hideWithAnimation
    L1_3 = A0_2
    L0_3(L1_3)
  end
  
  L8_2.onRelease = L9_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A0_2.contentGroup
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = L6_2.view
  L7_2(L8_2, L9_2)
  L6_2.delegate = A0_2
  L7_2 = L3_2.width
  L7_2 = -L7_2
  L7_2 = L7_2 / 2
  L7_2 = L7_2 + 10
  L8_2 = L6_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L6_2.x = L7_2
  L7_2 = L4_2.y
  L6_2.y = L7_2
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = A0_2.contentGroup
  L9_2 = L2_1
  L9_2 = L9_2["Enter Invite Code"]
  L10_2 = ":"
  L9_2 = L9_2 .. L10_2
  L10_2 = 0
  L11_2 = 0
  L12_2 = L4_1
  L12_2 = L12_2.fontForTitle
  L12_2 = L12_2()
  L13_2 = 14
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L9_2 = L7_2
  L8_2 = L7_2.setFillColor
  L10_2 = L4_1
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L8_2 = L2_1
  L8_2 = L8_2.adjustX
  L9_2 = L5_2.width
  L9_2 = -L9_2
  L9_2 = L9_2 / 2
  L9_2 = L9_2 + 15
  L10_2 = L7_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L10_2 = display
  L10_2 = L10_2.contentWidth
  L10_2 = -L10_2
  L8_2 = L8_2(L9_2, L10_2)
  L7_2.x = L8_2
  L8_2 = L5_2.y
  L9_2 = L5_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L8_2 = L8_2 + 5
  L9_2 = L7_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L7_2.y = L8_2
  L8_2 = display
  L8_2 = L8_2.newLine
  L9_2 = A0_2.contentGroup
  L10_2 = L5_2.width
  L10_2 = -L10_2
  L10_2 = L10_2 / 2
  L10_2 = L10_2 + 10
  L11_2 = L7_2.y
  L11_2 = L11_2 + 70
  L12_2 = L5_2.width
  L12_2 = L12_2 / 2
  L12_2 = L12_2 - 10
  L13_2 = L7_2.y
  L13_2 = L13_2 + 70
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L10_2 = L8_2
  L9_2 = L8_2.setStrokeColor
  L11_2 = L4_1
  L11_2 = L11_2.blueColor
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L11_2()
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L8_2.strokeWidth = 1
  L9_2 = native
  L9_2 = L9_2.newTextField
  L10_2 = L2_1
  L10_2 = L10_2.adjustX
  L11_2 = L5_2.x
  L12_2 = L5_2.width
  L12_2 = L12_2 / 2
  L11_2 = L11_2 - L12_2
  L12_2 = L7_2.width
  L11_2 = L11_2 + L12_2
  L11_2 = L11_2 + 20
  L11_2 = L11_2 + 50
  L12_2 = display
  L12_2 = L12_2.contentWidth
  L12_2 = -L12_2
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = L7_2.y
  L12_2 = L7_2.height
  L12_2 = L12_2 / 2
  L11_2 = L11_2 - L12_2
  L11_2 = L11_2 - 1
  L11_2 = L11_2 + 15
  L12_2 = 100
  L13_2 = 30
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  A0_2.codeField = L9_2
  L9_2 = A0_2.codeField
  L10_2 = L13_1
  L9_2.userInput = L10_2
  L9_2 = A0_2.codeField
  L10_2 = L9_2
  L9_2 = L9_2.addEventListener
  L11_2 = "userInput"
  L12_2 = L13_1
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = A0_2.codeField
  L9_2.isVisible = false
  L9_2 = A0_2.codeField
  L10_2 = L4_1
  L10_2 = L10_2.nativeFontForTextFields
  L10_2 = L10_2()
  L9_2.font = L10_2
  L9_2 = A0_2.codeField
  L10_2 = L9_2
  L9_2 = L9_2.setTextColor
  L11_2 = L4_1
  L11_2 = L11_2.darkBlueColor
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L11_2()
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L9_2 = A0_2.contentGroup
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = A0_2.codeField
  L9_2(L10_2, L11_2)
  L9_2 = L7_1
  L10_2 = L9_2
  L9_2 = L9_2.new
  L11_2 = {}
  L12_2 = L2_1
  L12_2 = L12_2.Validate
  L11_2.label = L12_2
  L11_2.width = 100
  L11_2.height = 30
  L12_2 = L4_1
  L12_2 = L12_2.Path_Assets
  L13_2 = "BattleItems/battle_outcome_button.png"
  L12_2 = L12_2 .. L13_2
  L11_2.defaultFile = L12_2
  L12_2 = L4_1
  L12_2 = L12_2.Path_Assets
  L13_2 = "BattleItems/battle_outcome_button-pressed.png"
  L12_2 = L12_2 .. L13_2
  L11_2.overFile = L12_2
  
  function L12_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = log3
    L1_3 = "codeField text"
    L2_3 = A0_2
    L2_3 = L2_3.codeField
    L2_3 = L2_3.text
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L0_3 = L0_3.codeField
    L0_3 = L0_3.text
    if L0_3 ~= "" then
      L0_3 = A0_2
      L0_3 = L0_3.codeField
      L0_3 = L0_3.text
      if L0_3 ~= nil then
        L0_3 = log3
        L1_3 = "Submitted invite code"
        L0_3(L1_3)
        L0_3 = A0_2
        L0_3 = L0_3.codeField
        L0_3.isVisible = false
        L0_3 = native
        L0_3 = L0_3.setKeyboardFocus
        L1_3 = nil
        L0_3(L1_3)
        L0_3 = L6_1
        L0_3 = L0_3.show
        L1_3 = L2_1
        L1_3 = L1_3["Checking Code"]
        L0_3(L1_3)
        L0_3 = L1_1
        L1_3 = A0_2
        L0_3.delegate = L1_3
        L0_3 = L1_1
        L0_3 = L0_3.validateInviteToken
        L1_3 = A0_2
        L1_3 = L1_3.codeField
        L1_3 = L1_3.text
        L0_3(L1_3)
    end
    else
      L0_3 = showSimpleDialog
      L1_3 = "Invite Code"
      L2_3 = "Please insert your invite key"
      L3_3 = nil
      
      function L4_3()
        local L0_4, L1_4
        L0_4 = L0_1
        L0_4 = L0_4.showOverlay
        L1_4 = "Scenes.InviteInputOverlay"
        L0_4(L1_4)
      end
      
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
  end
  
  L11_2.onRelease = L12_2
  L9_2 = L9_2(L10_2, L11_2)
  L9_2.delegate = A0_2
  L10_2 = A0_2.contentGroup
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = L9_2.view
  L10_2(L11_2, L12_2)
  L10_2 = L5_2.x
  L9_2.x = L10_2
  L10_2 = A0_2.codeField
  L10_2 = L10_2.y
  L10_2 = L10_2 + 35
  L9_2.y = L10_2
  L10_2 = nil
  L11_2 = system
  L11_2 = L11_2.getInfo
  L12_2 = "build"
  L11_2 = L11_2(L12_2)
  if "2013.1137" < L11_2 then
    L11_2 = system
    L11_2 = L11_2.getInfo
    L12_2 = "platformName"
    L11_2 = L11_2(L12_2)
    if L11_2 ~= "Android" then
      L11_2 = L2_1
      L11_2 = L11_2.lang
      if L11_2 == "fa" then
        goto lbl_339
      end
    end
  end
  L11_2 = L2_1
  L11_2 = L11_2.lang
  if L11_2 == "ar" then
    ::lbl_339::
    L11_2 = {}
    L12_2 = A0_2.contentGroup
    L11_2.parent = L12_2
    L12_2 = L2_1
    L12_2 = L12_2["Invite input help"]
    L11_2.text = L12_2
    L11_2.x = 0
    L11_2.y = 0
    L12_2 = L5_2.width
    L12_2 = L12_2 - 20
    L11_2.width = L12_2
    L11_2.height = 120
    L12_2 = L4_1
    L12_2 = L12_2.fontForSubtitle
    L12_2 = L12_2()
    L11_2.font = L12_2
    L11_2.fontSize = 13
    L11_2.align = "right"
    L12_2 = display
    L12_2 = L12_2.newText
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    L10_2 = L12_2
  else
    L11_2 = display
    L11_2 = L11_2.newText
    L12_2 = A0_2.contentGroup
    L13_2 = L2_1
    L13_2 = L13_2["Invite input help"]
    L14_2 = 0
    L15_2 = 0
    L16_2 = L5_2.width
    L16_2 = L16_2 - 20
    L17_2 = 120
    L18_2 = L4_1
    L18_2 = L18_2.fontForSubtitle
    L18_2 = L18_2()
    L19_2 = 13
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L10_2 = L11_2
  end
  L12_2 = L10_2
  L11_2 = L10_2.setFillColor
  L13_2 = L4_1
  L13_2 = L13_2.darkBlueColor
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L13_2()
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L10_2.x = 0
  L11_2 = L7_2.y
  L11_2 = L11_2 + 90
  L12_2 = L10_2.height
  L12_2 = L12_2 / 2
  L11_2 = L11_2 + L12_2
  L10_2.y = L11_2
end

create = L14_1

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L9_1
  L4_2 = L4_2.show
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "did" then
    L4_2 = L12_1
    if L4_2 then
      L4_2 = L12_1
      L4_2()
      L4_2 = nil
      L12_1 = L4_2
    end
    L4_2 = A0_2.codeField
    L4_2.isVisible = true
    
    function L4_2()
      local L0_3, L1_3
      L0_3 = L0_1
      L0_3 = L0_3.hideOverlay
      L0_3()
    end
    
    _backAction = L4_2
  end
end

show = L14_1

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L9_1
  L4_2 = L4_2.hide
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "will" then
    L4_2 = A0_2.codeField
    L4_2.isVisible = false
    L4_2 = native
    L4_2 = L4_2.setKeyboardFocus
    L5_2 = nil
    L4_2(L5_2)
  end
end

hide = L14_1

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = L9_1
  L3_2 = L3_2.destroy
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.codeField
  L4_2 = L3_2
  L3_2 = L3_2.removeSelf
  L3_2(L4_2)
  A0_2.codeField = nil
end

destroy = L14_1
