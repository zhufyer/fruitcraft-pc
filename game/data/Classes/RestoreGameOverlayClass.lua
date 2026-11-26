local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
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
L5_1 = "Views.ActivityIndicatorView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Utils.Analytics"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Components.TDButtonView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Core.ParentStandardBaseOverlayClass"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Utils.KeyboardAvoider"
L8_1 = L8_1(L9_1)
L9_1 = setmetatable
L10_1 = _M
L11_1 = L7_1
L9_1(L10_1, L11_1)
L9_1 = _M
L10_1 = _M
L9_1.__index = L10_1
L9_1 = _M
L10_1 = nil

function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.phase
  if "submitted" == L1_2 then
    L1_2 = native
    L1_2 = L1_2.setKeyboardFocus
    L2_2 = nil
    L1_2(L2_2)
  end
end

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = L5_1
  L2_2 = L2_2.logEvent
  L3_2 = "Restore Overlay Shown"
  L2_2(L3_2)
  L2_2 = L7_1
  L2_2 = L2_2.create
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = display
  L2_2 = L2_2.newRoundedRect
  L3_2 = A0_2.contentGroup
  L4_2 = 0
  L5_2 = 0
  L6_2 = 280
  L7_2 = 295
  L8_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.strokeWidth = 2
  L4_2 = L2_2
  L3_2 = L2_2.setStrokeColor
  L5_2 = Constants
  L5_2 = L5_2.greenColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L4_2 = L2_2
  L3_2 = L2_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.whiteColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L2_2.x = 0
  L2_2.y = 0
  L4_2 = L2_2
  L3_2 = L2_2.addEventListener
  L5_2 = "tap"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = L8_1
    L0_3 = L0_3.dismiss
    L0_3()
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.addEventListener
  L5_2 = "touch"
  
  function L6_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "began" then
      L1_3 = L8_1
      L1_3 = L1_3.dismiss
      L1_3()
    end
    L1_3 = true
    return L1_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A0_2.contentGroup
  L5_2 = L2_1
  L5_2 = L5_2["Restore Game"]
  L6_2 = 0
  L7_2 = 0
  L8_2 = Constants
  L8_2 = L8_2.fontForTitle
  L8_2 = L8_2()
  L9_2 = 20
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = Constants
  L6_2 = L6_2.darkBlueColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L4_2 = L2_2.x
  L3_2.x = L4_2
  L4_2 = L2_2.height
  L4_2 = -L4_2
  L4_2 = L4_2 / 2
  L4_2 = L4_2 + 10
  L5_2 = L3_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L3_2.y = L4_2
  L4_2 = display
  L4_2 = L4_2.newRoundedRect
  L5_2 = A0_2.contentGroup
  L6_2 = 0
  L7_2 = 0
  L8_2 = L2_2.width
  L8_2 = L8_2 - 20
  L9_2 = L2_2.height
  L9_2 = L9_2 - 60
  L10_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.lightBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L6_2 = L4_2
  L5_2 = L4_2.setStrokeColor
  L7_2 = Constants
  L7_2 = L7_2.blueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L4_2.strokeWidth = 1
  L5_2 = L2_2.x
  L4_2.x = L5_2
  L5_2 = L2_2.y
  L5_2 = L5_2 + 20
  L4_2.y = L5_2
  L5_2 = L6_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.width = 30
  L7_2.height = 30
  L8_2 = Constants
  L8_2 = L8_2.Path_Assets
  L9_2 = "BattleItems/close.png"
  L8_2 = L8_2 .. L9_2
  L7_2.defaultFile = L8_2
  
  function L8_2()
    local L0_3, L1_3
    L0_3 = A1_2
    L0_3 = L0_3.params
    if L0_3 then
      L0_3 = A1_2
      L0_3 = L0_3.params
      L0_3 = L0_3.previousScene
      if L0_3 then
        L0_3 = L0_1
        L0_3 = L0_3.gotoScene
        L1_3 = A1_2
        L1_3 = L1_3.params
        L1_3 = L1_3.previousScene
        L0_3(L1_3)
      else
        L0_3 = A1_2
        L0_3 = L0_3.params
        L0_3 = L0_3.previousOverlay
        if L0_3 then
          L0_3 = L0_1
          L0_3 = L0_3.showOverlay
          L1_3 = A1_2
          L1_3 = L1_3.params
          L1_3 = L1_3.previousOverlay
          L0_3(L1_3)
        else
          L0_3 = L0_1
          L0_3 = L0_3.showOverlay
          L1_3 = "Scenes.NewInstallOverlay"
          L0_3(L1_3)
        end
      end
    else
      L0_3 = L0_1
      L0_3 = L0_3.showOverlay
      L1_3 = "Scenes.NewInstallOverlay"
      L0_3(L1_3)
    end
  end
  
  L7_2.onRelease = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A0_2.contentGroup
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L5_2.view
  L6_2(L7_2, L8_2)
  L6_2 = L2_2.width
  L6_2 = -L6_2
  L6_2 = L6_2 / 2
  L6_2 = L6_2 + 10
  L7_2 = L5_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L5_2.x = L6_2
  L6_2 = L3_2.y
  L5_2.y = L6_2
  L6_2 = display
  L6_2 = L6_2.newText
  L7_2 = A0_2.contentGroup
  L8_2 = L2_1
  L8_2 = L8_2["Enter Restore Code"]
  L9_2 = ":"
  L8_2 = L8_2 .. L9_2
  L9_2 = 0
  L10_2 = 0
  L11_2 = Constants
  L11_2 = L11_2.fontForTitle
  L11_2 = L11_2()
  L12_2 = 14
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = L6_2
  L7_2 = L6_2.setFillColor
  L9_2 = Constants
  L9_2 = L9_2.darkBlueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L7_2 = L2_1
  L7_2 = L7_2.adjustX
  L8_2 = L4_2.width
  L8_2 = -L8_2
  L8_2 = L8_2 / 2
  L8_2 = L8_2 + 15
  L9_2 = L6_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L9_2 = display
  L9_2 = L9_2.contentWidth
  L9_2 = -L9_2
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.x = L7_2
  L7_2 = L4_2.y
  L8_2 = L4_2.height
  L8_2 = L8_2 / 2
  L7_2 = L7_2 - L8_2
  L7_2 = L7_2 + 5
  L8_2 = L6_2.height
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L6_2.y = L7_2
  L7_2 = display
  L7_2 = L7_2.newLine
  L8_2 = A0_2.contentGroup
  L9_2 = L4_2.width
  L9_2 = -L9_2
  L9_2 = L9_2 / 2
  L9_2 = L9_2 + 10
  L10_2 = L6_2.y
  L10_2 = L10_2 + 70
  L11_2 = L4_2.width
  L11_2 = L11_2 / 2
  L11_2 = L11_2 - 10
  L12_2 = L6_2.y
  L12_2 = L12_2 + 70
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L9_2 = L7_2
  L8_2 = L7_2.setStrokeColor
  L10_2 = Constants
  L10_2 = L10_2.blueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L7_2.strokeWidth = 1
  L8_2 = native
  L8_2 = L8_2.newTextField
  L9_2 = L2_1
  L9_2 = L9_2.adjustX
  L10_2 = L4_2.x
  L11_2 = L4_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 - L11_2
  L11_2 = L6_2.width
  L10_2 = L10_2 + L11_2
  L10_2 = L10_2 + 20
  L10_2 = L10_2 + 50
  L11_2 = display
  L11_2 = L11_2.contentWidth
  L11_2 = -L11_2
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = L6_2.y
  L11_2 = L6_2.height
  L11_2 = L11_2 / 2
  L10_2 = L10_2 - L11_2
  L10_2 = L10_2 - 1
  L10_2 = L10_2 + 15
  L11_2 = 100
  L12_2 = 30
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  A0_2.nameField = L8_2
  L8_2 = A0_2.nameField
  L9_2 = L11_1
  L8_2.userInput = L9_2
  L8_2 = A0_2.nameField
  L9_2 = L8_2
  L8_2 = L8_2.addEventListener
  L10_2 = "userInput"
  L11_2 = L11_1
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = A0_2.nameField
  L8_2.isVisible = false
  L8_2 = A0_2.nameField
  L9_2 = Constants
  L9_2 = L9_2.nativeFontForTextFields
  L9_2 = L9_2()
  L8_2.font = L9_2
  L8_2 = A0_2.nameField
  L9_2 = L8_2
  L8_2 = L8_2.setTextColor
  L10_2 = Constants
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L8_2 = A0_2.contentGroup
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = A0_2.nameField
  L8_2(L9_2, L10_2)
  L8_2 = L6_1
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = {}
  L11_2 = L2_1
  L11_2 = L11_2.Restore
  L10_2.label = L11_2
  L10_2.width = 100
  L10_2.height = 30
  L11_2 = Constants
  L11_2 = L11_2.Path_Assets
  L12_2 = "BattleItems/battle_outcome_button.png"
  L11_2 = L11_2 .. L12_2
  L10_2.defaultFile = L11_2
  
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = native
    L0_3 = L0_3.setKeyboardFocus
    L1_3 = nil
    L0_3(L1_3)
    L0_3 = A0_2
    L0_3 = L0_3.nameField
    L0_3.isVisible = false
    L0_3 = L4_1
    L0_3 = L0_3.show
    L1_3 = L2_1
    L1_3 = L1_3.Restoring
    L0_3(L1_3)
    L0_3 = L1_1
    L1_3 = A0_2
    L0_3.delegate = L1_3
    L0_3 = A0_2
    L0_3 = L0_3.nameField
    L0_3 = L0_3.text
    if L0_3 ~= nil then
      L0_3 = string
      L0_3 = L0_3.len
      L1_3 = A0_2
      L1_3 = L1_3.nameField
      L1_3 = L1_3.text
      L0_3 = L0_3(L1_3)
      if not (L0_3 < 1) then
        goto lbl_41
      end
    end
    L0_3 = L4_1
    L0_3 = L0_3.hide
    L0_3()
    L0_3 = showSimpleDialog
    L1_3 = "Restore"
    L2_3 = "Enter Restore Code"
    L3_3 = nil
    
    function L4_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = A1_2
      L0_4 = L0_4.params
      if L0_4 then
        L0_4 = A1_2
        L0_4 = L0_4.params
        L0_4 = L0_4.previousScene
        if L0_4 then
          L0_4 = L0_1
          L0_4 = L0_4.showOverlay
          L1_4 = "Scenes.RestoreGameOverlay"
          L2_4 = {}
          L3_4 = {}
          L4_4 = A1_2
          L4_4 = L4_4.params
          L4_4 = L4_4.previousScene
          L3_4.previousScene = L4_4
          L2_4.params = L3_4
          L0_4(L1_4, L2_4)
        else
          L0_4 = A1_2
          L0_4 = L0_4.params
          L0_4 = L0_4.previousOverlay
          if L0_4 then
            L0_4 = L0_1
            L0_4 = L0_4.showOverlay
            L1_4 = "Scenes.RestoreGameOverlay"
            L2_4 = {}
            L3_4 = {}
            L4_4 = A1_2
            L4_4 = L4_4.params
            L4_4 = L4_4.previousOverlay
            L3_4.previousOverlay = L4_4
            L2_4.params = L3_4
            L0_4(L1_4, L2_4)
          else
            L0_4 = L0_1
            L0_4 = L0_4.showOverlay
            L1_4 = "Scenes.RestoreGameOverlay"
            L2_4 = {}
            L3_4 = {}
            L3_4.previousScene = "Scenes.NewInstallOverlay"
            L2_4.params = L3_4
            L0_4(L1_4, L2_4)
          end
        end
      else
        L0_4 = L0_1
        L0_4 = L0_4.showOverlay
        L1_4 = "Scenes.RestoreGameOverlay"
        L2_4 = {}
        L3_4 = {}
        L3_4.previousScene = "Scenes.NewInstallOverlay"
        L2_4.params = L3_4
        L0_4(L1_4, L2_4)
      end
    end
    
    L0_3(L1_3, L2_3, L3_3, L4_3)
    do return end
    ::lbl_41::
    L0_3 = L1_1
    L0_3 = L0_3.restorePlayer
    L1_3 = A0_2
    L1_3 = L1_3.nameField
    L1_3 = L1_3.text
    L0_3(L1_3)
  end
  
  L10_2.onRelease = L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L8_2.delegate = A0_2
  L9_2 = A0_2.contentGroup
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L8_2.view
  L9_2(L10_2, L11_2)
  L9_2 = L4_2.x
  L8_2.x = L9_2
  L9_2 = A0_2.nameField
  L9_2 = L9_2.y
  L9_2 = L9_2 + 35
  L8_2.y = L9_2
  L9_2 = nil
  L10_2 = system
  L10_2 = L10_2.getInfo
  L11_2 = "build"
  L10_2 = L10_2(L11_2)
  if "2013.1137" < L10_2 then
    L10_2 = system
    L10_2 = L10_2.getInfo
    L11_2 = "platformName"
    L10_2 = L10_2(L11_2)
    if L10_2 ~= "Android" then
      L10_2 = L2_1
      L10_2 = L10_2.lang
      if L10_2 == "fa" then
        goto lbl_293
      end
    end
  end
  L10_2 = L2_1
  L10_2 = L10_2.lang
  if L10_2 == "ar" then
    ::lbl_293::
    L10_2 = {}
    L11_2 = A0_2.contentGroup
    L10_2.parent = L11_2
    L11_2 = L2_1
    L11_2 = L11_2["Restore help"]
    L10_2.text = L11_2
    L10_2.x = 0
    L10_2.y = 0
    L11_2 = L4_2.width
    L11_2 = L11_2 - 20
    L10_2.width = L11_2
    L10_2.height = 120
    L11_2 = Constants
    L11_2 = L11_2.fontForSubtitle
    L11_2 = L11_2()
    L10_2.font = L11_2
    L10_2.fontSize = 13
    L10_2.align = "right"
    L11_2 = display
    L11_2 = L11_2.newText
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    L9_2 = L11_2
  else
    L10_2 = display
    L10_2 = L10_2.newText
    L11_2 = A0_2.contentGroup
    L12_2 = L2_1
    L12_2 = L12_2["Restore help"]
    L13_2 = 0
    L14_2 = 0
    L15_2 = L4_2.width
    L15_2 = L15_2 - 20
    L16_2 = 120
    L17_2 = Constants
    L17_2 = L17_2.fontForSubtitle
    L17_2 = L17_2()
    L18_2 = 13
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L9_2 = L10_2
  end
  L11_2 = L9_2
  L10_2 = L9_2.setFillColor
  L12_2 = Constants
  L12_2 = L12_2.darkBlueColor
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L9_2.x = 0
  L10_2 = L6_2.y
  L10_2 = L10_2 + 90
  L11_2 = L9_2.height
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L9_2.y = L10_2
end

create = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L7_1
  L4_2 = L4_2.show
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "did" then
    L4_2 = A0_2.nameField
    L4_2.isVisible = true
    
    function L4_2()
      local L0_3, L1_3
      L0_3 = A1_2
      L0_3 = L0_3.params
      if L0_3 then
        L0_3 = A1_2
        L0_3 = L0_3.params
        L0_3 = L0_3.previousScene
        if L0_3 then
          L0_3 = L0_1
          L0_3 = L0_3.hideOverlay
          L0_3()
          L0_3 = L0_1
          L0_3 = L0_3.gotoScene
          L1_3 = A1_2
          L1_3 = L1_3.params
          L1_3 = L1_3.previousScene
          L0_3(L1_3)
        else
          L0_3 = A1_2
          L0_3 = L0_3.params
          L0_3 = L0_3.previousOverlay
          if L0_3 then
            L0_3 = L0_1
            L0_3 = L0_3.showOverlay
            L1_3 = A1_2
            L1_3 = L1_3.params
            L1_3 = L1_3.previousOverlay
            L0_3(L1_3)
          else
            L0_3 = L0_1
            L0_3 = L0_3.showOverlay
            L1_3 = "Scenes.NewInstallOverlay"
            L0_3(L1_3)
          end
        end
      else
        L0_3 = L0_1
        L0_3 = L0_3.showOverlay
        L1_3 = "Scenes.NewInstallOverlay"
        L0_3(L1_3)
      end
    end
    
    _backAction = L4_2
  end
end

show = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L7_1
  L4_2 = L4_2.hide
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "will" then
    L4_2 = A0_2.nameField
    L4_2.isVisible = false
    L4_2 = native
    L4_2 = L4_2.setKeyboardFocus
    L5_2 = nil
    L4_2(L5_2)
  end
end

hide = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = L7_1
  L3_2 = L3_2.destroy
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.nameField
  L4_2 = L3_2
  L3_2 = L3_2.removeSelf
  L3_2(L4_2)
  A0_2.nameField = nil
end

destroy = L12_1
