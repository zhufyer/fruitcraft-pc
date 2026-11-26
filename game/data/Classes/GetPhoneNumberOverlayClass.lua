local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
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

function L12_1(A0_2)
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

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = {}
  L2_2 = {}
  L2_2.mobileNumber = A0_2
  L3_2 = L10_1
  L2_2.completionCallback = L3_2
  L3_2 = L11_1
  L2_2.textFieldObject = L3_2
  L1_2.params = L2_2
  L2_2 = L0_1
  L2_2 = L2_2.showOverlay
  L3_2 = "Scenes.PhoneNumberVerificationOverlay"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end

didGetMobileNumberCallback = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = L1_1
  L2_2 = L2_2["Mobile Number"]
  L3_2 = A0_2
  L4_2 = L1_1
  L4_2 = L4_2.OK
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Scenes.GetPhoneNumberOverlay"
    L0_3(L1_3)
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

failedToGetMobileNumberCallback = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
    L2_2 = L2_2.textFieldObject
    if L2_2 then
      L2_2 = A1_2.params
      L2_2 = L2_2.textFieldObject
      L11_1 = L2_2
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
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
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
  L4_2 = L4_2["Mobile Number"]
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
    L0_3 = L11_1
    if L0_3 then
      L0_3 = L11_1
      L0_3.isVisible = true
    end
    L0_3 = L8_1
    L0_3 = L0_3.hideWithAnimation
    L1_3 = A0_2
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
  L3_2 = display
  L3_2 = L3_2.newRoundedRect
  L4_2 = A0_2.contentGroup
  L5_2 = 0
  L6_2 = 0
  L7_2 = A0_2.backgroundBox
  L7_2 = L7_2.width
  L7_2 = L7_2 - 20
  L8_2 = A0_2.backgroundBox
  L8_2 = L8_2.height
  L8_2 = L8_2 - 60
  L9_2 = 3
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2.contentBG = L3_2
  L3_2 = A0_2.contentBG
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Theme
  L5_2 = L5_2.overlayContentBG
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = A0_2.contentBG
  L4_2 = L3_2
  L3_2 = L3_2.setStrokeColor
  L5_2 = Theme
  L5_2 = L5_2.overlayStrokeContentBG
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = A0_2.contentBG
  L3_2.strokeWidth = 1
  L3_2 = A0_2.contentBG
  L4_2 = A0_2.backgroundBox
  L4_2 = L4_2.x
  L3_2.x = L4_2
  L3_2 = A0_2.contentBG
  L4_2 = A0_2.backgroundBox
  L4_2 = L4_2.y
  L4_2 = L4_2 + 20
  L3_2.y = L4_2
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A0_2.contentGroup
  L5_2 = L1_1
  L5_2 = L5_2["Enter Mobile Number"]
  L6_2 = 0
  L7_2 = 0
  L8_2 = Theme
  L8_2 = L8_2.overlayFont
  L9_2 = Theme
  L9_2 = L9_2.overlayFontContentSize
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2.textLable = L3_2
  L3_2 = A0_2.textLable
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Theme
  L5_2 = L5_2.colorsSet
  L5_2 = L5_2.darkBlueColor
  L5_2 = L5_2[1]
  L6_2 = Theme
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.darkBlueColor
  L6_2 = L6_2[2]
  L7_2 = Theme
  L7_2 = L7_2.colorsSet
  L7_2 = L7_2.darkBlueColor
  L7_2 = L7_2[3]
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2.textLable
  L4_2 = A0_2.contentBG
  L4_2 = L4_2.x
  L3_2.x = L4_2
  L3_2 = A0_2.textLable
  L4_2 = A0_2.contentBG
  L4_2 = L4_2.y
  L5_2 = A0_2.contentBG
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 - L5_2
  L5_2 = A0_2.textLable
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L4_2 = L4_2 + 10
  L3_2.y = L4_2
  L3_2 = native
  L3_2 = L3_2.newTextField
  L4_2 = 0
  L5_2 = 0
  L6_2 = 100
  L7_2 = 30
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  A0_2.mobileField = L3_2
  L3_2 = A0_2.mobileField
  L4_2 = A0_2.contentBG
  L4_2 = L4_2.x
  L3_2.x = L4_2
  L3_2 = A0_2.mobileField
  L4_2 = A0_2.textLable
  L4_2 = L4_2.y
  L5_2 = A0_2.textLable
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L5_2 = A0_2.mobileField
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L4_2 = L4_2 + 10
  L3_2.y = L4_2
  L3_2 = A0_2.mobileField
  L4_2 = L3_2
  L3_2 = L3_2.addEventListener
  L5_2 = "userInput"
  L6_2 = L12_1
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.mobileField
  L3_2.isEditable = true
  L3_2 = A0_2.mobileField
  L3_2.inputType = "number"
  L3_2 = A0_2.mobileField
  L4_2 = Constants
  L4_2 = L4_2.nativeFontForTextFields
  L4_2 = L4_2()
  L3_2.font = L4_2
  L3_2 = A0_2.mobileField
  L4_2 = L3_2
  L3_2 = L3_2.setTextColor
  L5_2 = Theme
  L5_2 = L5_2.colorsSet
  L5_2 = L5_2.darkBlueColor
  L5_2 = L5_2[1]
  L6_2 = Theme
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.darkBlueColor
  L6_2 = L6_2[2]
  L7_2 = Theme
  L7_2 = L7_2.colorsSet
  L7_2 = L7_2.darkBlueColor
  L7_2 = L7_2[3]
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2.contentGroup
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.mobileField
  L3_2(L4_2, L5_2)
  L3_2 = L4_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L6_2 = L1_1
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
    L0_3 = L0_3.mobileField
    L0_3 = L0_3.text
    L9_1 = L0_3
    L0_3 = L6_1
    L0_3 = L0_3.stringUTFLength
    L1_3 = L9_1
    L0_3 = L0_3(L1_3)
    if L0_3 < 10 then
      L0_3 = showSimpleDialog
      L1_3 = L1_1
      L1_3 = L1_3["Mobile Number"]
      L2_3 = L1_1
      L2_3 = L2_3["The phone number must be at least 10 digit"]
      L3_3 = nil
      
      function L4_3()
        local L0_4, L1_4
        L0_4 = L0_1
        L0_4 = L0_4.showOverlay
        L1_4 = "Scenes.GetPhoneNumberOverlay"
        L0_4(L1_4)
      end
      
      L0_3(L1_3, L2_3, L3_3, L4_3)
    else
      L0_3 = L6_1
      L0_3 = L0_3.stringUTFLength
      L1_3 = L9_1
      L0_3 = L0_3(L1_3)
      if 11 < L0_3 then
        L0_3 = showSimpleDialog
        L1_3 = L1_1
        L1_3 = L1_3["Mobile Number"]
        L2_3 = L1_1
        L2_3 = L2_3["The phone number is too long. You can enter a number up to 11 digit"]
        L3_3 = nil
        
        function L4_3()
          local L0_4, L1_4
          L0_4 = L0_1
          L0_4 = L0_4.showOverlay
          L1_4 = "Scenes.GetPhoneNumberOverlay"
          L0_4(L1_4)
        end
        
        L0_3(L1_3, L2_3, L3_3, L4_3)
      else
        L0_3 = L2_1
        L0_3 = L0_3.show
        L0_3()
        L0_3 = L3_1
        L0_3 = L0_3.sendMobileNumberToServer
        L1_3 = L9_1
        L2_3 = didGetMobileNumberCallback
        L3_3 = failedToGetMobileNumberCallback
        L0_3(L1_3, L2_3, L3_3)
      end
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
  
  L5_2.onRelease = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.confirmButton = L3_2
  L3_2 = A0_2.contentGroup
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.confirmButton
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.confirmButton
  L4_2 = A0_2.contentBG
  L4_2 = L4_2.x
  L3_2.x = L4_2
  L3_2 = A0_2.confirmButton
  L4_2 = A0_2.contentBG
  L4_2 = L4_2.y
  L5_2 = A0_2.contentBG
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L5_2 = A0_2.confirmButton
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 - L5_2
  L4_2 = L4_2 - 10
  L3_2.y = L4_2
  L3_2 = L7_1
  L3_2 = L3_2.track
  L4_2 = A0_2.contentGroup
  L5_2 = A0_2.backgroundBox
  L5_2 = L5_2.height
  L6_2 = A0_2.confirmButton
  L3_2(L4_2, L5_2, L6_2)
end

create = L13_1

function L13_1(A0_2, A1_2)
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

show = L13_1

function L13_1(A0_2, A1_2)
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

hide = L13_1
