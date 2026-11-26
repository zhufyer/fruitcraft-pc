local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.ParentStandardBaseOverlayClass"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Models.Player"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Language"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "widget"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.ActivityIndicatorView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Utils.Analytics"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Components.TDButtonView"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Components.TDMultilineButtonView"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Utils.Toolbox"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Theme"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Utils.KeyboardAvoider"
L11_1 = L11_1(L12_1)
L12_1 = nil
L13_1 = nil
L14_1 = nil
L15_1 = false
L16_1 = false
L17_1 = true
L18_1 = nil
L19_1 = setmetatable
L20_1 = _M
L21_1 = L0_1
L19_1(L20_1, L21_1)
L19_1 = _M
L20_1 = _M
L19_1.__index = L20_1
L19_1 = _M

function L20_1(A0_2)
  local L1_2
  L1_2 = A0_2.phase
  if "submitted" == L1_2 then
    L1_2 = L11_1
    L1_2 = L1_2.dismiss
    L1_2()
  else
    L1_2 = A0_2.phase
    if "began" == L1_2 then
      L1_2 = L11_1
      L1_2 = L1_2.lift
      L1_2()
    else
      L1_2 = A0_2.phase
      if "ended" == L1_2 then
        L1_2 = L11_1
        L1_2 = L1_2.drop
        L1_2()
      end
    end
  end
end

function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = showSimpleDialog
  L2_2 = "Select Player Name"
  L3_2 = A0_2
  L4_2 = L3_1
  L4_2 = L4_2.OK
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = L1_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Scenes.ChangeNameOverlay"
    L0_3(L1_3)
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L5_1
  L1_2 = L1_2.hide
  L1_2()
end

failedToGetOfferedNamesCallback = L21_1

function L21_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L5_1
  L3_2 = L3_2.hide
  L3_2()
  if A1_2 == true then
    L3_2 = L19_1
    L3_2 = L3_2.hideWithAnimation
    L4_2 = A0_2
    L3_2(L4_2)
    if A2_2 then
      L3_2 = mainPlayer
      L3_2.nectar = A2_2
    end
    L3_2 = mainPlayer
    L4_2 = L13_1
    L3_2.name = L4_2
    L3_2 = L14_1
    if L3_2 then
      L3_2 = L14_1
      L3_2()
      L3_2 = nil
      L14_1 = L3_2
    end
  else
    L3_2 = A0_2.nameField
    L3_2.isVisible = true
    L3_2 = A0_2.helpLabel
    L4_2 = L3_1
    L4_2 = L4_2["Somebody Chosen This Name Before You"]
    L3_2.text = L4_2
    L3_2 = A0_2.helpLabel
    L4_2 = L3_2
    L3_2 = L3_2.setFillColor
    L5_2 = L10_1
    L5_2 = L5_2.colorsSet
    L5_2 = L5_2.sharpRedColor
    L5_2 = L5_2[1]
    L6_2 = L10_1
    L6_2 = L6_2.colorsSet
    L6_2 = L6_2.sharpRedColor
    L6_2 = L6_2[2]
    L7_2 = L10_1
    L7_2 = L7_2.colorsSet
    L7_2 = L7_2.sharpRedColor
    L7_2 = L7_2[3]
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end

didGetOfferedNamesCallback = L21_1

function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L6_1
  L2_2 = L2_2.logEvent
  L3_2 = "Change username shown"
  L2_2(L3_2)
  L2_2 = L0_1
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
      L14_1 = L2_2
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
  L4_2 = L10_1
  L4_2 = L4_2.overlayStrokeColor
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = A0_2.backgroundBox
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = L10_1
  L4_2 = L4_2.colorsSet
  L4_2 = L4_2.whiteColor
  L4_2 = L4_2[1]
  L5_2 = L10_1
  L5_2 = L5_2.colorsSet
  L5_2 = L5_2.whiteColor
  L5_2 = L5_2[2]
  L6_2 = L10_1
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
    L0_3 = L11_1
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
      L1_3 = L11_1
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
  L4_2 = L3_1
  L4_2 = L4_2["Select Player Name"]
  L5_2 = 0
  L6_2 = 0
  L7_2 = L10_1
  L7_2 = L7_2.overlayFont
  L8_2 = L10_1
  L8_2 = L8_2.overlayFontTitleSize
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.titleLabel = L2_2
  L2_2 = A0_2.titleLabel
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = L10_1
  L4_2 = L4_2.colorsSet
  L4_2 = L4_2.darkBlueColor
  L4_2 = L4_2[1]
  L5_2 = L10_1
  L5_2 = L5_2.colorsSet
  L5_2 = L5_2.darkBlueColor
  L5_2 = L5_2[2]
  L6_2 = L10_1
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
  L4_2 = L10_1
  L4_2 = L4_2.overlayContentBG
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = A0_2.contentBG
  L3_2 = L2_2
  L2_2 = L2_2.setStrokeColor
  L4_2 = L10_1
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
  L5_2 = L20_1
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
  L4_2 = L10_1
  L4_2 = L4_2.colorsSet
  L4_2 = L4_2.darkBlueColor
  L4_2 = L4_2[1]
  L5_2 = L10_1
  L5_2 = L5_2.colorsSet
  L5_2 = L5_2.darkBlueColor
  L5_2 = L5_2[2]
  L6_2 = L10_1
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.darkBlueColor
  L6_2 = L6_2[3]
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2.contentGroup
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = A0_2.nameField
  L2_2(L3_2, L4_2)
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
  L3_2 = L10_1
  L3_2 = L3_2.overlayFont
  L2_2.font = L3_2
  L3_2 = L10_1
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
  L3_2 = L7_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.width = 30
  L5_2.height = 30
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "BattleItems/close.png"
  L6_2 = L6_2 .. L7_2
  L5_2.defaultFile = L6_2
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "BattleItems/close-pressed.png"
  L6_2 = L6_2 .. L7_2
  L5_2.overFile = L6_2
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = L19_1
    L0_3 = L0_3.hideWithAnimation
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = false
    L17_1 = L0_3
  end
  
  L5_2.onRelease = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L18_1 = L3_2
  L3_2 = A0_2.contentGroup
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = L18_1
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L3_2 = L18_1
  L3_2.delegate = A0_2
  L3_2 = L18_1
  L4_2 = A0_2.backgroundBox
  L4_2 = L4_2.width
  L4_2 = -L4_2
  L4_2 = L4_2 / 2
  L4_2 = L4_2 + 10
  L5_2 = L18_1
  L5_2 = L5_2.width
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L3_2.x = L4_2
  L3_2 = L18_1
  L4_2 = A0_2.titleLabel
  L4_2 = L4_2.y
  L3_2.y = L4_2
  L3_2 = {}
  L3_2.iconYOffSet = -2
  L3_2.subImageWidth = 20
  L3_2.subImageHeight = 22
  L3_2.subTextFontSize = 13
  L3_2.fontSize = 13
  L4_2 = Constants
  L4_2 = L4_2.fontForTitle
  L4_2 = L4_2()
  L3_2.font = L4_2
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "BattleItems/next.png"
  L4_2 = L4_2 .. L5_2
  L3_2.defaultFile = L4_2
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "BattleItems/next.png"
  L4_2 = L4_2 .. L5_2
  L3_2.overFile = L4_2
  L3_2.width = 104
  L3_2.height = 33
  L4_2 = L10_1
  L4_2 = L4_2.nectarIconImage
  L3_2.subImage = L4_2
  L4_2 = tonumber
  L5_2 = Constants
  L5_2 = L5_2.PlayerChangeNameCostNectar
  L4_2 = L4_2(L5_2)
  L3_2.subText = L4_2
  L3_2.emboss = false
  L3_2.labelYOffset = -12
  L3_2.id = "change name"
  
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2
    L0_3 = L0_3.nameField
    L0_3 = L0_3.text
    L13_1 = L0_3
    L0_3 = string
    L0_3 = L0_3.len
    L1_3 = L13_1
    L0_3 = L0_3(L1_3)
    if L0_3 < 1 then
      L0_3 = A0_2
      L0_3 = L0_3.helpLabel
      L1_3 = L3_1
      L1_3 = L1_3["The name you choose must be at least one character"]
      L0_3.text = L1_3
      L0_3 = A0_2
      L0_3 = L0_3.helpLabel
      L1_3 = L0_3
      L0_3 = L0_3.setFillColor
      L2_3 = L10_1
      L2_3 = L2_3.colorsSet
      L2_3 = L2_3.sharpRedColor
      L2_3 = L2_3[1]
      L3_3 = L10_1
      L3_3 = L3_3.colorsSet
      L3_3 = L3_3.sharpRedColor
      L3_3 = L3_3[2]
      L4_3 = L10_1
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
      L0_3 = L9_1
      L0_3 = L0_3.stringUTFLength
      L1_3 = L13_1
      L0_3 = L0_3(L1_3)
      L1_3 = Constants
      L1_3 = L1_3.Player_MaxPlayerNameLength
      if L0_3 > L1_3 then
        L0_3 = A0_2
        L0_3 = L0_3.helpLabel
        L1_3 = L3_1
        L1_3 = L1_3["Player name is too long. You can enter names up to 16 characters"]
        L0_3.text = L1_3
        L0_3 = A0_2
        L0_3 = L0_3.helpLabel
        L1_3 = L0_3
        L0_3 = L0_3.setFillColor
        L2_3 = L10_1
        L2_3 = L2_3.colorsSet
        L2_3 = L2_3.sharpRedColor
        L2_3 = L2_3[1]
        L3_3 = L10_1
        L3_3 = L3_3.colorsSet
        L3_3 = L3_3.sharpRedColor
        L3_3 = L3_3[2]
        L4_3 = L10_1
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
        L0_3 = L13_1
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
    L0_3 = L5_1
    L0_3 = L0_3.show
    L1_3 = ""
    L0_3(L1_3)
    L0_3 = L2_1
    L0_3 = L0_3.sendUserNameToServer
    L1_3 = L12_1
    
    function L2_3(A0_4, A1_4, A2_4)
      local L3_4, L4_4, L5_4, L6_4
      L3_4 = didGetOfferedNamesCallback
      L4_4 = A0_2
      L5_4 = A1_4
      L6_4 = A2_4
      L3_4(L4_4, L5_4, L6_4)
    end
    
    L3_3 = failedToGetOfferedNamesCallback
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L3_2.onRelease = L4_2
  L4_2 = L8_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.createAccountButton = L4_2
  L4_2 = A0_2.contentGroup
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = A0_2.createAccountButton
  L6_2 = L6_2.view
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.createAccountButton
  L5_2 = A0_2.contentBG
  L5_2 = L5_2.x
  L4_2.x = L5_2
  L4_2 = A0_2.createAccountButton
  L5_2 = A0_2.nameField
  L5_2 = L5_2.y
  L5_2 = L5_2 + 60
  L4_2.y = L5_2
  L4_2 = L11_1
  L4_2 = L4_2.track
  L5_2 = A0_2.contentGroup
  L6_2 = A0_2.backgroundBox
  L6_2 = L6_2.height
  L7_2 = A0_2.createAccountButton
  L4_2(L5_2, L6_2, L7_2)
end

create = L21_1

function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L0_1
  L4_2 = L4_2.show
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "did" then
    L4_2 = A0_2.nameField
    L4_2.isVisible = true
    L4_2 = nil
    _backAction = L4_2
  end
end

show = L21_1

function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L0_1
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
    L4_2 = L11_1
    L4_2 = L4_2.cancel
    L4_2()
  end
end

hide = L21_1

function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = L0_1
  L3_2 = L3_2.destroy
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = display
  L3_2 = L3_2.remove
  L4_2 = A0_2.nameField
  L3_2(L4_2)
  L3_2 = A0_2.titleLabel
  L4_2 = L3_2
  L3_2 = L3_2.removeSelf
  L3_2(L4_2)
  A0_2.titleLabel = nil
end

destroy = L21_1
