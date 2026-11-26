local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1
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
L8_1 = "Utils.Toolbox"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Theme"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Core.ParentStandardBaseOverlayClass"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Utils.KeyboardAvoider"
L10_1 = L10_1(L11_1)
L11_1 = false
L12_1 = nil
L13_1 = {}
L14_1 = nil
L15_1 = nil
L16_1 = nil
L17_1 = nil
L18_1 = setmetatable
L19_1 = _M
L20_1 = L9_1
L18_1(L19_1, L20_1)
L18_1 = _M
L19_1 = _M
L18_1.__index = L19_1
L18_1 = _M

function L19_1(A0_2)
  local L1_2
  L1_2 = A0_2.phase
  if "submitted" == L1_2 then
    L1_2 = L10_1
    L1_2 = L1_2.dismiss
    L1_2()
  else
    L1_2 = A0_2.phase
    if "began" == L1_2 then
      L1_2 = L10_1
      L1_2 = L1_2.lift
      L1_2()
    else
      L1_2 = A0_2.phase
      if "ended" == L1_2 then
        L1_2 = L10_1
        L1_2 = L1_2.drop
        L1_2()
      end
    end
  end
end

function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = showSimpleDialog
  L2_2 = "Select Player Name"
  L3_2 = A0_2
  L4_2 = L2_1
  L4_2 = L4_2.OK
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Scenes.NewProfileOverlay"
    L0_3(L1_3)
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L4_1
  L1_2 = L1_2.hide
  L1_2()
end

failedToGetOfferedNamesCallback = L20_1

function L20_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = L4_1
  L3_2 = L3_2.hide
  L3_2()
  if A2_2 == true then
    L3_2 = L18_1
    L3_2 = L3_2.hideWithAnimation
    L4_2 = A0_2
    L3_2(L4_2)
    L3_2 = mainPlayer
    L4_2 = L16_1
    L3_2.name = L4_2
    L3_2 = L17_1
    if L3_2 then
      L3_2 = L17_1
      L3_2()
      L3_2 = nil
      L17_1 = L3_2
    end
  else
    L3_2 = true
    L11_1 = L3_2
    L13_1 = A1_2
    L3_2 = L13_1
    L3_2 = #L3_2
    if L3_2 < 4 then
      L3_2 = L13_1
      L3_2 = #L3_2
      L15_1 = L3_2
    else
      L3_2 = 4
      L15_1 = L3_2
    end
    L3_2 = L0_1
    L3_2 = L3_2.showOverlay
    L4_2 = "Scenes.NewProfileOverlay"
    L3_2(L4_2)
  end
end

didGetOfferedNamesCallback = L20_1

function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L5_1
  L2_2 = L2_2.logEvent
  L3_2 = "Enter username shown"
  L2_2(L3_2)
  L2_2 = L9_1
  L2_2 = L2_2.create
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.mask
  L2_2.alpha = 0.8
  L2_2 = A1_2.params
  if L2_2 then
    L2_2 = A1_2.params
    L2_2 = L2_2.completionCallback
    if L2_2 then
      L2_2 = A1_2.params
      L2_2 = L2_2.completionCallback
      L17_1 = L2_2
    end
  end
  L2_2 = display
  L2_2 = L2_2.newRoundedRect
  L3_2 = A0_2.contentGroup
  L4_2 = 0
  L5_2 = 0
  L6_2 = 280
  L7_2 = 180
  L8_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.backgroundBox = L2_2
  L2_2 = A0_2.backgroundBox
  L2_2.strokeWidth = 2
  L2_2 = A0_2.backgroundBox
  L3_2 = L2_2
  L2_2 = L2_2.setStrokeColor
  L4_2 = L8_1
  L4_2 = L4_2.overlayStrokeColor
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = A0_2.backgroundBox
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = L8_1
  L4_2 = L4_2.colorsSet
  L4_2 = L4_2.whiteColor
  L4_2 = L4_2[1]
  L5_2 = L8_1
  L5_2 = L5_2.colorsSet
  L5_2 = L5_2.whiteColor
  L5_2 = L5_2[2]
  L6_2 = L8_1
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.whiteColor
  L6_2 = L6_2[3]
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2.backgroundBox
  L2_2.x = 0
  L2_2 = A0_2.backgroundBox
  L2_2.y = 0
  L2_2 = A0_2.backgroundBox
  L3_2 = L2_2
  L2_2 = L2_2.addEventListener
  L4_2 = "tap"
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = L10_1
    L0_3 = L0_3.dismiss
    L0_3()
    L0_3 = true
    return L0_3
  end
  
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2.backgroundBox
  L3_2 = L2_2
  L2_2 = L2_2.addEventListener
  L4_2 = "touch"
  
  function L5_2(A0_3)
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
  
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = display
  L2_2 = L2_2.newText
  L3_2 = A0_2.contentGroup
  L4_2 = L2_1
  L4_2 = L4_2["Select Player Name"]
  L5_2 = 0
  L6_2 = 0
  L7_2 = L8_1
  L7_2 = L7_2.overlayFont
  L8_2 = L8_1
  L8_2 = L8_2.overlayFontTitleSize
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.titleLabel = L2_2
  L2_2 = A0_2.titleLabel
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = L8_1
  L4_2 = L4_2.colorsSet
  L4_2 = L4_2.darkBlueColor
  L4_2 = L4_2[1]
  L5_2 = L8_1
  L5_2 = L5_2.colorsSet
  L5_2 = L5_2.darkBlueColor
  L5_2 = L5_2[2]
  L6_2 = L8_1
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.darkBlueColor
  L6_2 = L6_2[3]
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2.titleLabel
  L3_2 = A0_2.backgroundBox
  L3_2 = L3_2.x
  L2_2.x = L3_2
  L2_2 = A0_2.titleLabel
  L3_2 = A0_2.backgroundBox
  L3_2 = L3_2.height
  L3_2 = -L3_2
  L3_2 = L3_2 / 2
  L3_2 = L3_2 + 10
  L4_2 = A0_2.titleLabel
  L4_2 = L4_2.height
  L4_2 = L4_2 / 2
  L3_2 = L3_2 + L4_2
  L2_2.y = L3_2
  L2_2 = display
  L2_2 = L2_2.newRoundedRect
  L3_2 = A0_2.contentGroup
  L4_2 = 0
  L5_2 = 0
  L6_2 = A0_2.backgroundBox
  L6_2 = L6_2.width
  L6_2 = L6_2 - 20
  L7_2 = A0_2.backgroundBox
  L7_2 = L7_2.height
  L7_2 = L7_2 - 60
  L8_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.contentBG = L2_2
  L2_2 = A0_2.contentBG
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = L8_1
  L4_2 = L4_2.overlayContentBG
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = A0_2.contentBG
  L3_2 = L2_2
  L2_2 = L2_2.setStrokeColor
  L4_2 = L8_1
  L4_2 = L4_2.overlayStrokeContentBG
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = A0_2.contentBG
  L2_2.strokeWidth = 1
  L2_2 = A0_2.contentBG
  L3_2 = A0_2.backgroundBox
  L3_2 = L3_2.x
  L2_2.x = L3_2
  L2_2 = A0_2.contentBG
  L3_2 = A0_2.backgroundBox
  L3_2 = L3_2.y
  L3_2 = L3_2 + 20
  L2_2.y = L3_2
  L2_2 = native
  L2_2 = L2_2.newTextField
  L3_2 = 0
  L4_2 = 0
  L5_2 = 100
  L6_2 = 30
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.nameField = L2_2
  L2_2 = A0_2.nameField
  L2_2.isVisible = false
  L2_2 = A0_2.nameField
  L3_2 = A0_2.contentBG
  L3_2 = L3_2.x
  L2_2.x = L3_2
  L2_2 = A0_2.nameField
  L3_2 = A0_2.contentBG
  L3_2 = L3_2.y
  L4_2 = A0_2.contentBG
  L4_2 = L4_2.height
  L4_2 = L4_2 / 2
  L3_2 = L3_2 - L4_2
  L3_2 = L3_2 + 5
  L4_2 = A0_2.nameField
  L4_2 = L4_2.height
  L4_2 = L4_2 / 2
  L3_2 = L3_2 + L4_2
  L3_2 = L3_2 + 10
  L2_2.y = L3_2
  L2_2 = A0_2.nameField
  L3_2 = L2_2
  L2_2 = L2_2.addEventListener
  L4_2 = "userInput"
  L5_2 = L19_1
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2.nameField
  L2_2.isEditable = true
  L2_2 = A0_2.nameField
  L3_2 = Constants
  L3_2 = L3_2.nativeFontForTextFields
  L3_2 = L3_2()
  L2_2.font = L3_2
  L2_2 = A0_2.nameField
  L3_2 = L2_2
  L2_2 = L2_2.setTextColor
  L4_2 = L8_1
  L4_2 = L4_2.colorsSet
  L4_2 = L4_2.darkBlueColor
  L4_2 = L4_2[1]
  L5_2 = L8_1
  L5_2 = L5_2.colorsSet
  L5_2 = L5_2.darkBlueColor
  L5_2 = L5_2[2]
  L6_2 = L8_1
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.darkBlueColor
  L6_2 = L6_2[3]
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2.contentGroup
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = A0_2.nameField
  L2_2(L3_2, L4_2)
  L2_2 = display
  L2_2 = L2_2.newLine
  L3_2 = A0_2.contentGroup
  L4_2 = A0_2.contentBG
  L4_2 = L4_2.width
  L4_2 = -L4_2
  L4_2 = L4_2 / 2
  L4_2 = L4_2 + 10
  L5_2 = A0_2.nameField
  L5_2 = L5_2.y
  L5_2 = L5_2 + 70
  L6_2 = A0_2.contentBG
  L6_2 = L6_2.width
  L6_2 = L6_2 / 2
  L6_2 = L6_2 - 10
  L7_2 = A0_2.nameField
  L7_2 = L7_2.y
  L7_2 = L7_2 + 70
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.seperator1 = L2_2
  L2_2 = A0_2.seperator1
  L3_2 = L2_2
  L2_2 = L2_2.setStrokeColor
  L4_2 = L8_1
  L4_2 = L4_2.overlayStrokeContentBG
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = A0_2.seperator1
  L2_2.strokeWidth = 1
  L2_2 = A0_2.seperator1
  L2_2.alpha = 0
  L2_2 = {}
  L3_2 = A0_2.contentGroup
  L2_2.parent = L3_2
  L2_2.text = ""
  L2_2.x = 0
  L2_2.y = 0
  L3_2 = A0_2.contentBG
  L3_2 = L3_2.width
  L3_2 = L3_2 - 20
  L2_2.width = L3_2
  L3_2 = L8_1
  L3_2 = L3_2.overlayFont
  L2_2.font = L3_2
  L3_2 = L8_1
  L3_2 = L3_2.overlayFontContentSize
  L2_2.fontSize = L3_2
  L2_2.align = "center"
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  A0_2.helpLabel = L3_2
  L3_2 = A0_2.helpLabel
  L4_2 = A0_2.nameField
  L4_2 = L4_2.y
  L5_2 = A0_2.nameField
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L5_2 = A0_2.helpLabel
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L4_2 = L4_2 + 2
  L3_2.y = L4_2
  L3_2 = A0_2.helpLabel
  L3_2.x = 0
  L3_2 = L6_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L6_2 = L2_1
  L6_2 = L6_2.OK
  L5_2.label = L6_2
  L5_2.width = 100
  L5_2.height = 30
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "BattleItems/battle_outcome_button.png"
  L6_2 = L6_2 .. L7_2
  L5_2.defaultFile = L6_2
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2
    L0_3 = L0_3.nameField
    L0_3 = L0_3.text
    L16_1 = L0_3
    L0_3 = string
    L0_3 = L0_3.len
    L1_3 = L16_1
    L0_3 = L0_3(L1_3)
    if L0_3 < 1 then
      L0_3 = A0_2
      L0_3 = L0_3.helpLabel
      L1_3 = L2_1
      L1_3 = L1_3["The name you choose must be at least one character"]
      L0_3.text = L1_3
      L0_3 = A0_2
      L0_3 = L0_3.helpLabel
      L1_3 = L0_3
      L0_3 = L0_3.setFillColor
      L2_3 = L8_1
      L2_3 = L2_3.colorsSet
      L2_3 = L2_3.sharpRedColor
      L2_3 = L2_3[1]
      L3_3 = L8_1
      L3_3 = L3_3.colorsSet
      L3_3 = L3_3.sharpRedColor
      L3_3 = L3_3[2]
      L4_3 = L8_1
      L4_3 = L4_3.colorsSet
      L4_3 = L4_3.sharpRedColor
      L4_3 = L4_3[3]
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = transition
      L0_3 = L0_3.to
      L1_3 = A0_2
      L1_3 = L1_3.helpLabel
      L2_3 = {}
      L2_3.time = 100
      L2_3.alpha = 1
      L0_3(L1_3, L2_3)
      return
    else
      L0_3 = L7_1
      L0_3 = L0_3.stringUTFLength
      L1_3 = L16_1
      L0_3 = L0_3(L1_3)
      L1_3 = Constants
      L1_3 = L1_3.Player_MaxPlayerNameLength
      if L0_3 > L1_3 then
        L0_3 = A0_2
        L0_3 = L0_3.helpLabel
        L1_3 = L2_1
        L1_3 = L1_3["Player name is too long. You can enter names up to 16 characters"]
        L0_3.text = L1_3
        L0_3 = A0_2
        L0_3 = L0_3.helpLabel
        L1_3 = L0_3
        L0_3 = L0_3.setFillColor
        L2_3 = L8_1
        L2_3 = L2_3.colorsSet
        L2_3 = L2_3.sharpRedColor
        L2_3 = L2_3[1]
        L3_3 = L8_1
        L3_3 = L3_3.colorsSet
        L3_3 = L3_3.sharpRedColor
        L3_3 = L3_3[2]
        L4_3 = L8_1
        L4_3 = L4_3.colorsSet
        L4_3 = L4_3.sharpRedColor
        L4_3 = L4_3[3]
        L0_3(L1_3, L2_3, L3_3, L4_3)
        L0_3 = transition
        L0_3 = L0_3.to
        L1_3 = A0_2
        L1_3 = L1_3.helpLabel
        L2_3 = {}
        L2_3.time = 100
        L2_3.alpha = 1
        L0_3(L1_3, L2_3)
        return
      else
        L0_3 = L16_1
        L12_1 = L0_3
      end
    end
    L0_3 = A0_2
    L0_3 = L0_3.nameField
    L0_3.isVisible = false
    L0_3 = native
    L0_3 = L0_3.setKeyboardFocus
    L1_3 = nil
    L0_3(L1_3)
    L0_3 = L4_1
    L0_3 = L0_3.show
    L1_3 = ""
    L0_3(L1_3)
    L0_3 = L1_1
    L0_3 = L0_3.sendUserNameToServer
    L1_3 = L12_1
    
    function L2_3(A0_4, A1_4)
      local L2_4, L3_4, L4_4, L5_4
      L2_4 = didGetOfferedNamesCallback
      L3_4 = A0_2
      L4_4 = A0_4
      L5_4 = A1_4
      L2_4(L3_4, L4_4, L5_4)
    end
    
    L3_3 = failedToGetOfferedNamesCallback
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L5_2.onRelease = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.createAccountButton = L3_2
  L3_2 = A0_2.contentGroup
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.createAccountButton
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.createAccountButton
  L4_2 = A0_2.contentBG
  L4_2 = L4_2.x
  L3_2.x = L4_2
  L3_2 = A0_2.createAccountButton
  L4_2 = A0_2.nameField
  L4_2 = L4_2.y
  L4_2 = L4_2 + 60
  L3_2.y = L4_2
  L3_2 = L10_1
  L3_2 = L3_2.track
  L4_2 = A0_2.contentGroup
  L5_2 = A0_2.backgroundBox
  L5_2 = L5_2.height
  L6_2 = A0_2.createAccountButton
  L3_2(L4_2, L5_2, L6_2)
end

create = L20_1

function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = A0_2.contentGroup
  L1_2.parent = L2_2
  L1_2.text = ""
  L1_2.x = 0
  L2_2 = L8_1
  L2_2 = L2_2.overlayFont
  L1_2.font = L2_2
  L2_2 = L8_1
  L2_2 = L2_2.overlayFontContentSize
  L1_2.fontSize = L2_2
  L1_2.align = "center"
  
  function L2_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3.phase
    if L1_3 == "began" then
      L1_3 = false
      L11_1 = L1_3
    else
      L1_3 = A0_3.phase
      if L1_3 == "ended" then
        L1_3 = A0_2
        L1_3 = L1_3.nameField
        L2_3 = A0_3.target
        L2_3 = L2_3.text
        L1_3.text = L2_3
      end
    end
  end
  
  setText = L2_2
  L2_2 = 1
  L3_2 = L15_1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.offeredName
    L7_2 = display
    L7_2 = L7_2.newText
    L8_2 = L1_2
    L7_2 = L7_2(L8_2)
    L6_2[L5_2] = L7_2
    L6_2 = A0_2.offeredName
    L6_2 = L6_2[L5_2]
    L7_2 = L13_1
    L7_2 = L7_2[L5_2]
    L6_2.text = L7_2
    L6_2 = A0_2.offeredName
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.addEventListener
    L8_2 = "touch"
    L9_2 = setText
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2.offeredName
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.setFillColor
    L8_2 = L8_1
    L8_2 = L8_2.colorsSet
    L8_2 = L8_2.darkBlueColor
    L8_2 = L8_2[1]
    L9_2 = L8_1
    L9_2 = L9_2.colorsSet
    L9_2 = L9_2.darkBlueColor
    L9_2 = L9_2[2]
    L10_2 = L8_1
    L10_2 = L10_2.colorsSet
    L10_2 = L10_2.darkBlueColor
    L10_2 = L10_2[3]
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = A0_2.offeredName
    L6_2 = L6_2[L5_2]
    L7_2 = A0_2.helpLabel
    L7_2 = L7_2.y
    L7_2 = L7_2 + 10
    L8_2 = 22 * L5_2
    L7_2 = L7_2 + L8_2
    L6_2.y = L7_2
  end
end

createOfferedNames = L20_1

function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 0
  L3_2 = A0_2.offeredName
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.y
  if L3_2 then
    L3_2 = A0_2.offeredName
    L3_2 = L3_2[A1_2]
    L2_2 = L3_2.y
  end
  L3_2 = transition
  L3_2 = L3_2.to
  L4_2 = A0_2.offeredName
  L4_2 = L4_2[A1_2]
  L5_2 = {}
  L5_2.time = 200
  L5_2.xScale = 0.75
  L5_2.yScale = 0.5
  L6_2 = L2_2 + 5
  L5_2.y = L6_2
  L5_2.tag = "animateOfferedNames"
  L3_2(L4_2, L5_2)
  L3_2 = transition
  L3_2 = L3_2.to
  L4_2 = A0_2.offeredName
  L4_2 = L4_2[A1_2]
  L5_2 = {}
  L5_2.delay = 100
  L5_2.time = 200
  L5_2.xScale = 1
  L5_2.yScale = 1
  L5_2.y = L2_2
  L5_2.tag = "animateOfferedNames"
  L3_2(L4_2, L5_2)
end

animateOfferedName = L20_1

function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L9_1
  L4_2 = L4_2.show
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "will" then
    L4_2 = string
    L4_2 = L4_2.find
    L5_2 = mainPlayer
    L5_2 = L5_2.name
    L6_2 = "NEWBIE"
    L4_2 = L4_2(L5_2, L6_2)
    if not L4_2 then
      L4_2 = L18_1
      L4_2 = L4_2.hideWithAnimation
      L5_2 = A0_2
      L4_2(L5_2)
    end
  elseif L3_2 == "did" then
    L4_2 = A0_2.nameField
    L4_2.isVisible = true
    L4_2 = L11_1
    if L4_2 then
      L4_2 = A0_2.nameField
      L5_2 = L12_1
      L4_2.text = L5_2
      L4_2 = 12
      L5_2 = A0_2.backgroundBox
      L5_2.height = 295
      L5_2 = A0_2.titleLabel
      L6_2 = A0_2.backgroundBox
      L6_2 = L6_2.height
      L6_2 = -L6_2
      L6_2 = L6_2 / 2
      L6_2 = L6_2 + 10
      L7_2 = A0_2.titleLabel
      L7_2 = L7_2.height
      L7_2 = L7_2 / 2
      L6_2 = L6_2 + L7_2
      L5_2.y = L6_2
      L5_2 = A0_2.contentBG
      L6_2 = A0_2.backgroundBox
      L6_2 = L6_2.height
      L6_2 = L6_2 - 60
      L5_2.height = L6_2
      L5_2 = A0_2.nameField
      L6_2 = A0_2.contentBG
      L6_2 = L6_2.y
      L7_2 = A0_2.contentBG
      L7_2 = L7_2.height
      L7_2 = L7_2 / 2
      L6_2 = L6_2 - L7_2
      L7_2 = A0_2.nameField
      L7_2 = L7_2.height
      L7_2 = L7_2 / 2
      L6_2 = L6_2 + L7_2
      L6_2 = L6_2 + L4_2
      L5_2.y = L6_2
      L5_2 = A0_2.createAccountButton
      L6_2 = A0_2.nameField
      L6_2 = L6_2.y
      L7_2 = A0_2.createAccountButton
      L7_2 = L7_2.height
      L7_2 = L7_2 / 2
      L6_2 = L6_2 + L7_2
      L7_2 = A0_2.nameField
      L7_2 = L7_2.height
      L7_2 = L7_2 / 2
      L6_2 = L6_2 + L7_2
      L6_2 = L6_2 + L4_2
      L5_2.y = L6_2
      L5_2 = L10_1
      L5_2 = L5_2.track
      L6_2 = A0_2.contentGroup
      L7_2 = A0_2.backgroundBox
      L7_2 = L7_2.height
      L8_2 = A0_2.createAccountButton
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = A0_2.seperator1
      L6_2 = A0_2.createAccountButton
      L6_2 = L6_2.y
      L7_2 = A0_2.createAccountButton
      L7_2 = L7_2.height
      L7_2 = L7_2 / 2
      L6_2 = L6_2 + L7_2
      L6_2 = L6_2 + L4_2
      L5_2.y = L6_2
      L5_2 = A0_2.seperator1
      L5_2.alpha = 1
      L5_2 = A0_2.helpLabel
      L6_2 = A0_2.seperator1
      L6_2 = L6_2.y
      L7_2 = A0_2.helpLabel
      L7_2 = L7_2.height
      L7_2 = L7_2 / 4
      L6_2 = L6_2 + L7_2
      L6_2 = L6_2 + L4_2
      L6_2 = L6_2 + 5
      L5_2.y = L6_2
      L5_2 = A0_2.helpLabel
      L6_2 = L2_1
      L6_2 = L6_2["Select Another Name"]
      L5_2.text = L6_2
      L5_2 = A0_2.helpLabel
      L6_2 = L5_2
      L5_2 = L5_2.setFillColor
      L7_2 = L8_1
      L7_2 = L7_2.colorsSet
      L7_2 = L7_2.darkBlueColor
      L7_2 = L7_2[1]
      L8_2 = L8_1
      L8_2 = L8_2.colorsSet
      L8_2 = L8_2.darkBlueColor
      L8_2 = L8_2[2]
      L9_2 = L8_1
      L9_2 = L9_2.colorsSet
      L9_2 = L9_2.darkBlueColor
      L9_2 = L9_2[3]
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = {}
      A0_2.offeredName = L5_2
      L5_2 = createOfferedNames
      L6_2 = A0_2
      L5_2(L6_2)
      L5_2 = 1
      L6_2 = L15_1
      L7_2 = 1
      for L8_2 = L5_2, L6_2, L7_2 do
        L9_2 = timer
        L9_2 = L9_2.performWithDelay
        L10_2 = 3000 * L8_2
        
        function L11_2()
          local L0_3, L1_3, L2_3
          L0_3 = animateOfferedName
          L1_3 = A0_2
          L2_3 = L8_2
          L0_3(L1_3, L2_3)
        end
        
        L9_2 = L9_2(L10_2, L11_2)
        L14_1 = L9_2
      end
    end
    L4_2 = nil
    _backAction = L4_2
  end
end

show = L20_1

function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L9_1
  L4_2 = L4_2.hide
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "will" then
    L4_2 = L14_1
    if L4_2 then
      L4_2 = timer
      L4_2 = L4_2.cancel
      L5_2 = L14_1
      L4_2(L5_2)
    end
    L4_2 = transition
    L4_2 = L4_2.cancel
    L5_2 = "animateOfferedNames"
    L4_2(L5_2)
    L4_2 = A0_2.nameField
    L4_2.isVisible = false
    L4_2 = native
    L4_2 = L4_2.setKeyboardFocus
    L5_2 = nil
    L4_2(L5_2)
    L4_2 = L10_1
    L4_2 = L4_2.cancel
    L4_2()
  end
end

hide = L20_1

function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = L9_1
  L3_2 = L3_2.destroy
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = display
  L3_2 = L3_2.remove
  L4_2 = A0_2.nameField
  L3_2(L4_2)
  A0_2.nameField = nil
end

destroy = L20_1
