local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Views.ActivityIndicatorView"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Models.Player"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Components.TDButtonView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Core.ParentStandardBaseOverlayClass"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Utils.Toolbox"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Utils.KeyboardAvoider"
L7_1 = L7_1(L8_1)
L8_1 = setmetatable
L9_1 = _M
L10_1 = L5_1
L8_1(L9_1, L10_1)
L8_1 = _M
L9_1 = _M
L8_1.__index = L9_1
L8_1 = _M
L9_1 = nil
L10_1 = nil
L11_1 = nil
L12_1 = nil

function L13_1(A0_2)
  local L1_2
  L1_2 = A0_2.phase
  if "submitted" == L1_2 then
    L1_2 = L7_1
    L1_2 = L1_2.dismiss
    L1_2()
  else
    L1_2 = A0_2.phase
    if "began" == L1_2 then
      L1_2 = L7_1
      L1_2 = L1_2.lift
      L1_2()
    else
      L1_2 = A0_2.phase
      if "ended" == L1_2 then
        L1_2 = L7_1
        L1_2 = L1_2.drop
        L1_2()
      end
    end
  end
end

function L14_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = mainPlayer
  L2_2.mobileNumberVerified = A1_2
  if A1_2 then
    L2_2 = mainPlayer
    L3_2 = L11_1
    L2_2.phone = L3_2
  end
  L2_2 = L12_1
  if L2_2 then
    L2_2 = L12_1
    L2_2.isVisible = true
  end
  L2_2 = L2_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = L8_1
  L2_2 = L2_2.hideWithAnimation
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = L10_1
  L2_2()
end

didGetVerificationNumberCallback = L14_1

function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "Verification"
  L3_2 = A0_2
  L4_2 = L1_1
  L4_2 = L4_2.OK
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Scenes.PhoneNumberVerificationOverlay"
    L0_3(L1_3)
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

failedToGetVerificationNumberCallback = L14_1

function L14_1()
  local L0_2, L1_2, L2_2
  L1_2 = system
  L1_2 = L1_2.getInfo
  L2_2 = "build"
  L1_2 = L1_2(L2_2)
  if "2013.1137" < L1_2 then
    L1_2 = system
    L1_2 = L1_2.getInfo
    L2_2 = "platformName"
    L1_2 = L1_2(L2_2)
    if L1_2 ~= "Android" then
      L1_2 = L1_1
      L1_2 = L1_2.lang
      if L1_2 == "fa" then
        goto lbl_21
      end
    end
  end
  L1_2 = L1_1
  L1_2 = L1_2.lang
  if L1_2 == "ar" then
    ::lbl_21::
    L0_2 = "right"
  else
    L0_2 = "left"
  end
  return L0_2
end

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L5_1
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
      L10_1 = L2_2
    end
  end
  L2_2 = A1_2.params
  if L2_2 then
    L2_2 = A1_2.params
    L2_2 = L2_2.mobileNumber
    if L2_2 then
      L2_2 = A1_2.params
      L2_2 = L2_2.mobileNumber
      L11_1 = L2_2
    end
  end
  L2_2 = A1_2.params
  if L2_2 then
    L2_2 = A1_2.params
    L2_2 = L2_2.textFieldObject
    if L2_2 then
      L2_2 = A1_2.params
      L2_2 = L2_2.textFieldObject
      L12_1 = L2_2
    end
  end
  L2_2 = display
  L2_2 = L2_2.newRoundedRect
  L3_2 = A0_2.contentGroup
  L4_2 = 0
  L5_2 = 0
  L6_2 = 280
  L7_2 = 200
  L8_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.backgroundBox = L2_2
  L2_2 = A0_2.backgroundBox
  L2_2.strokeWidth = 2
  L2_2 = A0_2.backgroundBox
  L3_2 = L2_2
  L2_2 = L2_2.setStrokeColor
  L4_2 = Theme
  L4_2 = L4_2.overlayStrokeColor
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = A0_2.backgroundBox
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = Theme
  L4_2 = L4_2.colorsSet
  L4_2 = L4_2.whiteColor
  L4_2 = L4_2[1]
  L5_2 = Theme
  L5_2 = L5_2.colorsSet
  L5_2 = L5_2.whiteColor
  L5_2 = L5_2[2]
  L6_2 = Theme
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
    L0_3 = L7_1
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
      L1_3 = L7_1
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
  L4_2 = L1_1
  L4_2 = L4_2.Verification
  L5_2 = 0
  L6_2 = 0
  L7_2 = Theme
  L7_2 = L7_2.overlayFont
  L8_2 = Theme
  L8_2 = L8_2.overlayFontTitleSize
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.titleLabel = L2_2
  L2_2 = A0_2.titleLabel
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = Theme
  L4_2 = L4_2.colorsSet
  L4_2 = L4_2.darkBlueColor
  L4_2 = L4_2[1]
  L5_2 = Theme
  L5_2 = L5_2.colorsSet
  L5_2 = L5_2.darkBlueColor
  L5_2 = L5_2[2]
  L6_2 = Theme
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
  L4_2 = Theme
  L4_2 = L4_2.overlayContentBG
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = A0_2.contentBG
  L3_2 = L2_2
  L2_2 = L2_2.setStrokeColor
  L4_2 = Theme
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
  L2_2 = L4_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.width = 30
  L4_2.height = 30
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "BattleItems/close.png"
  L5_2 = L5_2 .. L6_2
  L4_2.imageName = L5_2
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Scenes.GetPhoneNumberOverlay"
    L0_3(L1_3)
  end
  
  L4_2.onRelease = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2.contentGroup
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = L2_2.view
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.backgroundBox
  L3_2 = L3_2.width
  L3_2 = -L3_2
  L3_2 = L3_2 / 2
  L3_2 = L3_2 + 10
  L4_2 = L2_2.width
  L4_2 = L4_2 / 2
  L3_2 = L3_2 + L4_2
  L2_2.x = L3_2
  L3_2 = A0_2.titleLabel
  L3_2 = L3_2.y
  L2_2.y = L3_2
  L3_2 = {}
  L4_2 = A0_2.contentGroup
  L3_2.parent = L4_2
  L4_2 = L1_1
  L4_2 = L4_2.localizedString
  L5_2 = "Enter The Verification Code We Sent To Your Phone"
  L6_2 = {}
  L7_2 = L11_1
  L6_2.phoneNumber = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.text = L4_2
  L4_2 = Theme
  L4_2 = L4_2.overlayFontContentSize
  L3_2.fontSize = L4_2
  L4_2 = Theme
  L4_2 = L4_2.overlayFont
  L3_2.font = L4_2
  L4_2 = A0_2.contentBG
  L4_2 = L4_2.width
  L4_2 = L4_2 - 20
  L3_2.width = L4_2
  L3_2.height = 0
  L4_2 = L14_1
  L4_2 = L4_2()
  L3_2.align = L4_2
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  A0_2.textLable = L4_2
  L4_2 = A0_2.textLable
  L5_2 = L4_2
  L4_2 = L4_2.setFillColor
  L6_2 = Theme
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.darkBlueColor
  L6_2 = L6_2[1]
  L7_2 = Theme
  L7_2 = L7_2.colorsSet
  L7_2 = L7_2.darkBlueColor
  L7_2 = L7_2[2]
  L8_2 = Theme
  L8_2 = L8_2.colorsSet
  L8_2 = L8_2.darkBlueColor
  L8_2 = L8_2[3]
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2.textLable
  L5_2 = A0_2.contentBG
  L5_2 = L5_2.x
  L4_2.x = L5_2
  L4_2 = A0_2.textLable
  L5_2 = A0_2.contentBG
  L5_2 = L5_2.y
  L6_2 = A0_2.contentBG
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 - L6_2
  L6_2 = A0_2.textLable
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L5_2 = L5_2 + 10
  L4_2.y = L5_2
  L4_2 = native
  L4_2 = L4_2.newTextField
  L5_2 = 0
  L6_2 = 0
  L7_2 = 100
  L8_2 = 30
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  A0_2.mobileField = L4_2
  L4_2 = A0_2.mobileField
  L5_2 = A0_2.contentBG
  L5_2 = L5_2.x
  L4_2.x = L5_2
  L4_2 = A0_2.mobileField
  L5_2 = A0_2.textLable
  L5_2 = L5_2.y
  L6_2 = A0_2.textLable
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L6_2 = A0_2.mobileField
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L5_2 = L5_2 + 10
  L4_2.y = L5_2
  L4_2 = A0_2.mobileField
  L5_2 = L4_2
  L4_2 = L4_2.addEventListener
  L6_2 = "userInput"
  L7_2 = L13_1
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2.mobileField
  L4_2.isEditable = true
  L4_2 = A0_2.mobileField
  L4_2.inputType = "number"
  L4_2 = A0_2.mobileField
  L5_2 = Constants
  L5_2 = L5_2.nativeFontForTextFields
  L5_2 = L5_2()
  L4_2.font = L5_2
  L4_2 = A0_2.mobileField
  L5_2 = L4_2
  L4_2 = L4_2.setTextColor
  L6_2 = Theme
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.darkBlueColor
  L6_2 = L6_2[1]
  L7_2 = Theme
  L7_2 = L7_2.colorsSet
  L7_2 = L7_2.darkBlueColor
  L7_2 = L7_2[2]
  L8_2 = Theme
  L8_2 = L8_2.colorsSet
  L8_2 = L8_2.darkBlueColor
  L8_2 = L8_2[3]
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2.contentGroup
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = A0_2.mobileField
  L4_2(L5_2, L6_2)
  L4_2 = L4_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L7_2 = L1_1
  L7_2 = L7_2.OK
  L6_2.label = L7_2
  L6_2.width = 100
  L6_2.height = 30
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "BattleItems/battle_outcome_button.png"
  L7_2 = L7_2 .. L8_2
  L6_2.defaultFile = L7_2
  
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2
    L0_3 = L0_3.mobileField
    L0_3 = L0_3.text
    L9_1 = L0_3
    L0_3 = L6_1
    L0_3 = L0_3.stringUTFLength
    L1_3 = L9_1
    L0_3 = L0_3(L1_3)
    if L0_3 < 1 then
      L0_3 = showSimpleDialog
      L1_3 = L1_1
      L1_3 = L1_3.Verification
      L2_3 = L1_1
      L2_3 = L2_3["The Verification number must be at least one digit"]
      L3_3 = nil
      
      function L4_3()
        local L0_4, L1_4
        L0_4 = L0_1
        L0_4 = L0_4.showOverlay
        L1_4 = "Scenes.PhoneNumberVerificationOverlay"
        L0_4(L1_4)
      end
      
      L0_3(L1_3, L2_3, L3_3, L4_3)
    else
      L0_3 = L2_1
      L0_3 = L0_3.show
      L0_3()
      L0_3 = L3_1
      L0_3 = L0_3.sendVerificationCodeToServer
      L1_3 = L9_1
      
      function L2_3(A0_4)
        local L1_4, L2_4, L3_4
        L1_4 = didGetVerificationNumberCallback
        L2_4 = A0_2
        L3_4 = A0_4
        L1_4(L2_4, L3_4)
      end
      
      L3_3 = failedToGetVerificationNumberCallback
      L0_3(L1_3, L2_3, L3_3)
    end
    L0_3 = A0_2
    L0_3 = L0_3.mobileField
    L0_3.isVisible = false
    L0_3 = native
    L0_3 = L0_3.setKeyboardFocus
    L1_3 = nil
    L0_3(L1_3)
    L0_3 = L7_1
    L0_3 = L0_3.drop
    L0_3()
  end
  
  L6_2.onRelease = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.confirmButton = L4_2
  L4_2 = A0_2.contentGroup
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = A0_2.confirmButton
  L6_2 = L6_2.view
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.confirmButton
  L5_2 = A0_2.contentBG
  L5_2 = L5_2.x
  L4_2.x = L5_2
  L4_2 = A0_2.confirmButton
  L5_2 = A0_2.contentBG
  L5_2 = L5_2.y
  L6_2 = A0_2.contentBG
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L6_2 = A0_2.confirmButton
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 - 10
  L4_2.y = L5_2
  L4_2 = L7_1
  L4_2 = L4_2.track
  L5_2 = A0_2.contentGroup
  L6_2 = A0_2.backgroundBox
  L6_2 = L6_2.height
  L7_2 = A0_2.confirmButton
  L4_2(L5_2, L6_2, L7_2)
end

create = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L5_1
  L4_2 = L4_2.show
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "did" then
    L4_2 = A0_2.mobileField
    L4_2.isVisible = true
  end
end

show = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.phase
  L3_2 = L5_1
  L3_2 = L3_2.hide
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if L2_2 == "will" then
    L3_2 = L2_1
    L3_2 = L3_2.hide
    L3_2()
    L3_2 = A0_2.mobileField
    L3_2.isVisible = false
    L3_2 = native
    L3_2 = L3_2.setKeyboardFocus
    L4_2 = nil
    L3_2(L4_2)
    L3_2 = L7_1
    L3_2 = L3_2.cancel
    L3_2()
  end
end

hide = L15_1
