local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
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
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.ActivityIndicatorView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Components.TDButtonView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Utils.Toolbox"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Utils.KeyboardAvoider"
L6_1 = L6_1(L7_1)
L7_1 = setmetatable
L8_1 = _M
L9_1 = L0_1
L7_1(L8_1, L9_1)
L7_1 = _M
L8_1 = _M
L7_1.__index = L8_1
L7_1 = nil
L8_1 = nil
L9_1 = _M

function L10_1(A0_2)
  local L1_2
  L1_2 = A0_2.phase
  if "submitted" == L1_2 then
    L1_2 = L6_1
    L1_2 = L1_2.dismiss
    L1_2()
  else
    L1_2 = A0_2.phase
    if "began" == L1_2 then
      L1_2 = L6_1
      L1_2 = L1_2.lift
      L1_2()
    else
      L1_2 = A0_2.phase
      if "ended" == L1_2 then
        L1_2 = L6_1
        L1_2 = L1_2.drop
        L1_2()
      end
    end
  end
end

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = L0_1
  L2_2 = L2_2.create
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A1_2.params
    if L2_2 then
      L2_2 = A1_2.params
      L2_2 = L2_2.id
      if L2_2 then
        L2_2 = A1_2.params
        L2_2 = L2_2.id
        L7_1 = L2_2
        L2_2 = print
        L3_2 = "GetPhone packid"
        L4_2 = L7_1
        L3_2 = L3_2 .. L4_2
        L2_2(L3_2)
      end
      L2_2 = A1_2.params
      L2_2 = L2_2.bundleId
      if L2_2 then
        L2_2 = A1_2.params
        L2_2 = L2_2.bundleId
        L8_1 = L2_2
        L2_2 = print
        L3_2 = "GetPhone sku"
        L4_2 = L8_1
        L3_2 = L3_2 .. L4_2
        L2_2(L3_2)
      end
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
  L2_2.strokeWidth = 2
  L4_2 = L2_2
  L3_2 = L2_2.setStrokeColor
  L5_2 = Theme
  L5_2 = L5_2.overlayStrokeColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = L2_2
  L3_2 = L2_2.setFillColor
  L5_2 = Theme
  L5_2 = L5_2.colorsSet
  L5_2 = L5_2.whiteColor
  L5_2 = L5_2[1]
  L6_2 = Theme
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.whiteColor
  L6_2 = L6_2[2]
  L7_2 = Theme
  L7_2 = L7_2.colorsSet
  L7_2 = L7_2.whiteColor
  L7_2 = L7_2[3]
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2.x = 0
  L2_2.y = 0
  L4_2 = L2_2
  L3_2 = L2_2.addEventListener
  L5_2 = "tap"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = L6_1
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
      L1_3 = L6_1
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
  L5_2 = L5_2["Mobile Number"]
  L6_2 = 0
  L7_2 = 0
  L8_2 = Theme
  L8_2 = L8_2.overlayFont
  L9_2 = Theme
  L9_2 = L9_2.overlayFontTitleSize
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
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
  L5_2 = L3_2
  L4_2 = L3_2.addEventListener
  L6_2 = "touch"
  
  function L7_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "began" then
      L1_3 = L6_1
      L1_3 = L1_3.dismiss
      L1_3()
    end
    L1_3 = true
    return L1_3
  end
  
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L4_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.width = 30
  L6_2.height = 30
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "BattleItems/close.png"
  L7_2 = L7_2 .. L8_2
  L6_2.defaultFile = L7_2
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "BattleItems/close-pressed.png"
  L7_2 = L7_2 .. L8_2
  L6_2.overFile = L7_2
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = L9_1
    L0_3 = L0_3.hideWithAnimation
    L1_3 = A0_2
    L0_3(L1_3)
  end
  
  L6_2.onRelease = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2.contentGroup
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L4_2.view
  L5_2(L6_2, L7_2)
  L5_2 = L2_2.width
  L5_2 = -L5_2
  L5_2 = L5_2 / 2
  L5_2 = L5_2 + 10
  L6_2 = L4_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L4_2.x = L5_2
  L5_2 = L3_2.y
  L4_2.y = L5_2
  L5_2 = display
  L5_2 = L5_2.newRoundedRect
  L6_2 = A0_2.contentGroup
  L7_2 = 0
  L8_2 = 0
  L9_2 = L2_2.width
  L9_2 = L9_2 - 20
  L10_2 = L2_2.height
  L10_2 = L10_2 - 60
  L11_2 = 3
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = L5_2
  L6_2 = L5_2.setFillColor
  L8_2 = Theme
  L8_2 = L8_2.overlayContentBG
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = L5_2
  L6_2 = L5_2.setStrokeColor
  L8_2 = Theme
  L8_2 = L8_2.overlayStrokeContentBG
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2.strokeWidth = 1
  L6_2 = L2_2.x
  L5_2.x = L6_2
  L6_2 = L2_2.y
  L6_2 = L6_2 + 20
  L5_2.y = L6_2
  L7_2 = L5_2
  L6_2 = L5_2.addEventListener
  L8_2 = "touch"
  
  function L9_2(A0_3)
    local L1_3
    L1_3 = A0_3.phase
    if L1_3 == "began" then
      L1_3 = L6_1
      L1_3 = L1_3.dismiss
      L1_3()
    end
    L1_3 = true
    return L1_3
  end
  
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = display
  L6_2 = L6_2.newText
  L7_2 = A0_2.contentGroup
  L8_2 = L2_1
  L8_2 = L8_2["Enter Mobile Number"]
  L9_2 = 0
  L10_2 = 0
  L11_2 = Theme
  L11_2 = L11_2.overlayFont
  L12_2 = Theme
  L12_2 = L12_2.overlayFontContentSize
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = L6_2
  L7_2 = L6_2.setFillColor
  L9_2 = Theme
  L9_2 = L9_2.colorsSet
  L9_2 = L9_2.darkBlueColor
  L9_2 = L9_2[1]
  L10_2 = Theme
  L10_2 = L10_2.colorsSet
  L10_2 = L10_2.darkBlueColor
  L10_2 = L10_2[2]
  L11_2 = Theme
  L11_2 = L11_2.colorsSet
  L11_2 = L11_2.darkBlueColor
  L11_2 = L11_2[3]
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = L5_2.x
  L6_2.x = L7_2
  L7_2 = L5_2.y
  L8_2 = L5_2.height
  L8_2 = L8_2 / 2
  L7_2 = L7_2 - L8_2
  L8_2 = L6_2.height
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L7_2 = L7_2 + 10
  L6_2.y = L7_2
  L7_2 = native
  L7_2 = L7_2.newTextField
  L8_2 = 0
  L9_2 = 0
  L10_2 = 100
  L11_2 = 30
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  A0_2.mobileField = L7_2
  L7_2 = A0_2.mobileField
  L8_2 = L5_2.x
  L7_2.x = L8_2
  L7_2 = A0_2.mobileField
  L8_2 = L6_2.y
  L9_2 = L6_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L9_2 = A0_2.mobileField
  L9_2 = L9_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L8_2 = L8_2 + 10
  L7_2.y = L8_2
  L7_2 = A0_2.mobileField
  L8_2 = L7_2
  L7_2 = L7_2.addEventListener
  L9_2 = "userInput"
  L10_2 = L10_1
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = A0_2.mobileField
  L7_2.isEditable = true
  L7_2 = A0_2.mobileField
  L7_2.inputType = "number"
  L7_2 = A0_2.mobileField
  L8_2 = Constants
  L8_2 = L8_2.nativeFontForTextFields
  L8_2 = L8_2()
  L7_2.font = L8_2
  L7_2 = A0_2.mobileField
  L8_2 = L7_2
  L7_2 = L7_2.setTextColor
  L9_2 = Theme
  L9_2 = L9_2.colorsSet
  L9_2 = L9_2.darkBlueColor
  L9_2 = L9_2[1]
  L10_2 = Theme
  L10_2 = L10_2.colorsSet
  L10_2 = L10_2.darkBlueColor
  L10_2 = L10_2[2]
  L11_2 = Theme
  L11_2 = L11_2.colorsSet
  L11_2 = L11_2.darkBlueColor
  L11_2 = L11_2[3]
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = A0_2.contentGroup
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = A0_2.mobileField
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.mobileField
  L8_2 = mainPlayer
  L8_2 = L8_2.settings
  L8_2 = L8_2.purchaseMobileNumber
  if not L8_2 then
    L8_2 = ""
  end
  L7_2.text = L8_2
  L7_2 = {}
  L8_2 = L2_1
  L8_2 = L8_2.Continue
  L7_2.label = L8_2
  L7_2.width = 100
  L7_2.height = 30
  L8_2 = Constants
  L8_2 = L8_2.Path_Assets
  L9_2 = "BattleItems/battle_outcome_button.png"
  L8_2 = L8_2 .. L9_2
  L7_2.defaultFile = L8_2
  
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = A0_2
    L0_3 = L0_3.mobileField
    L0_3 = L0_3.text
    L1_3 = A0_2
    L1_3 = L1_3.mobileField
    L1_3.isVisible = false
    L1_3 = native
    L1_3 = L1_3.setKeyboardFocus
    L2_3 = nil
    L1_3(L2_3)
    
    function L1_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = L1_1
      L0_4 = L0_4.showOverlay
      L1_4 = "Scenes.PaymentGetPhoneNumberOverlay"
      L2_4 = {}
      L3_4 = {}
      L4_4 = L7_1
      L3_4.id = L4_4
      L4_4 = L8_1
      L3_4.bundleId = L4_4
      L2_4.params = L3_4
      L0_4(L1_4, L2_4)
    end
    
    L2_3 = L5_1
    L2_3 = L2_3.stringUTFLength
    L3_3 = L0_3
    L2_3 = L2_3(L3_3)
    if L2_3 < 10 then
      L2_3 = showSimpleDialog
      L3_3 = L2_1
      L3_3 = L3_3["Mobile Number"]
      L4_3 = L2_1
      L4_3 = L4_3["The phone number must be at least 10 digit"]
      L5_3 = nil
      L6_3 = L1_3
      L2_3(L3_3, L4_3, L5_3, L6_3)
    else
      L2_3 = L5_1
      L2_3 = L2_3.stringUTFLength
      L3_3 = L0_3
      L2_3 = L2_3(L3_3)
      if 11 < L2_3 then
        L2_3 = showSimpleDialog
        L3_3 = L2_1
        L3_3 = L3_3["Mobile Number"]
        L4_3 = L2_1
        L4_3 = L4_3["The phone number is too long. You can enter a number up to 11 digit"]
        L5_3 = nil
        L6_3 = L1_3
        L2_3(L3_3, L4_3, L5_3, L6_3)
      else
        L2_3 = mainPlayer
        L3_3 = L2_3
        L2_3 = L2_3.setSettingForKey
        L4_3 = "purchaseMobileNumber"
        L5_3 = L0_3
        L2_3(L3_3, L4_3, L5_3)
        L2_3 = mainPlayer
        L3_3 = L2_3
        L2_3 = L2_3.saveSettings
        L2_3(L3_3)
        L2_3 = L1_1
        L2_3 = L2_3.hideOverlay
        L2_3()
        L2_3 = showSimpleDialog
        L3_3 = "\216\167\216\175\216\167\217\133\217\135 \217\129\216\177\216\162\219\140\217\134\216\175 \217\190\216\177\216\175\216\167\216\174\216\170"
        L4_3 = "\217\129\216\177\216\162\219\140\217\134\216\175 \217\190\216\177\216\175\216\167\216\174\216\170 \216\167\219\140\217\134 \216\168\216\179\216\170\217\135 \216\175\216\177 \217\133\216\177\217\136\216\177\218\175\216\177 \216\167\216\175\216\167\217\133\217\135 \217\190\219\140\216\175\216\167 \216\174\217\136\216\167\217\135\216\175 \218\169\216\177\216\175 \217\136 \216\179\217\190\216\179 \216\168\217\135 \216\168\216\167\216\178\219\140 \216\168\216\167\216\178\216\174\217\136\216\167\217\135\219\140\216\175 \218\175\216\180\216\170."
        L5_3 = nil
        
        function L6_3()
          local L0_4, L1_4, L2_4, L3_4
          L0_4 = SKComponent
          L0_4 = L0_4.startWebPayment
          L1_4 = L7_1
          L2_4 = L8_1
          L3_4 = L0_3
          L0_4(L1_4, L2_4, L3_4)
        end
        
        L2_3(L3_3, L4_3, L5_3, L6_3)
      end
    end
  end
  
  L7_2.onRelease = L8_2
  L8_2 = L4_1
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = A0_2.contentGroup
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L8_2.view
  L9_2(L10_2, L11_2)
  L9_2 = L5_2.x
  L8_2.x = L9_2
  L9_2 = L5_2.y
  L10_2 = L5_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L10_2 = L8_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 - L10_2
  L9_2 = L9_2 - 10
  L8_2.y = L9_2
  L9_2 = L6_1
  L9_2 = L9_2.track
  L10_2 = A0_2.contentGroup
  L11_2 = L2_2.height
  L12_2 = L8_2
  L9_2(L10_2, L11_2, L12_2)
end

create = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  L2_2 = L2_2.show
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

show = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  L2_2 = L2_2.hide
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    L2_2 = A0_2.mobileField
    L2_2.isVisible = false
    L2_2 = native
    L2_2 = L2_2.setKeyboardFocus
    L3_2 = nil
    L2_2(L3_2)
    L2_2 = L6_1
    L2_2 = L2_2.cancel
    L2_2()
  end
end

hide = L11_1
