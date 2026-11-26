local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Views.ActivityIndicatorView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Components.TDButtonView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Models.Player"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Core.ParentStandardBaseOverlayClass"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Utils.KeyboardAvoider"
L6_1 = L6_1(L7_1)
L7_1 = nil
L8_1 = nil
L9_1 = setmetatable
L10_1 = _M
L11_1 = L5_1
L9_1(L10_1, L11_1)
L9_1 = _M
L10_1 = _M
L9_1.__index = L10_1
L9_1 = _M

function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.phase
  if L1_2 == "submitted" then
    L1_2 = didPressWithdrawButton
    L1_2()
  else
    L1_2 = A0_2.phase
    if L1_2 == "ended" then
      L1_2 = native
      L1_2 = L1_2.setKeyboardFocus
      L2_2 = nil
      L1_2(L2_2)
    end
  end
end

textListener = L10_1

function L10_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  L0_2 = L0_2.hide
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.hideOverlay
  L0_2()
  L0_2 = L8_1
  if L0_2 then
    L0_2 = L8_1
    L1_2 = L0_2
    L0_2 = L0_2.repaint
    L2_2 = true
    L0_2(L1_2, L2_2)
  end
end

didWithdrawCallback = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = L2_1
  L2_2 = L2_2.Withdrawal
  L3_2 = A0_2
  L4_2 = L2_1
  L4_2 = L4_2.OK
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

failedToWithdrawCallback = L10_1

function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L7_1
  L0_2.isVisible = false
  L0_2 = native
  L0_2 = L0_2.setKeyboardFocus
  L1_2 = nil
  L0_2(L1_2)
  L0_2 = L7_1
  L0_2 = L0_2.text
  if L0_2 == "" then
    L0_2 = showSimpleDialog
    L1_2 = L2_1
    L1_2 = L1_2.Withdrawal
    L2_2 = L2_1
    L2_2 = L2_2["Withdraw Empty Text Field Error"]
    L3_2 = L2_1
    L3_2 = L3_2.OK
    
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = L1_1
      L0_3 = L0_3.showOverlay
      L1_3 = "Scenes.WithdrawOverlay"
      L2_3 = {}
      L3_3 = {}
      L4_3 = L8_1
      L3_3.objectOfBankView = L4_3
      L2_3.params = L3_3
      L0_3(L1_3, L2_3)
    end
    
    L0_2(L1_2, L2_2, L3_2, L4_2)
  else
    L0_2 = tonumber
    L1_2 = L7_1
    L1_2 = L1_2.text
    L0_2 = L0_2(L1_2)
    if L0_2 < 1 then
      L0_2 = showSimpleDialog
      L1_2 = L2_1
      L1_2 = L1_2.Withdrawal
      L2_2 = L2_1
      L2_2 = L2_2["Withdraw Minimum Amount Error"]
      L3_2 = L2_1
      L3_2 = L3_2.OK
      
      function L4_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3
        L0_3 = L1_1
        L0_3 = L0_3.showOverlay
        L1_3 = "Scenes.WithdrawOverlay"
        L2_3 = {}
        L3_3 = {}
        L4_3 = L8_1
        L3_3.objectOfBankView = L4_3
        L2_3.params = L3_3
        L0_3(L1_3, L2_3)
      end
      
      L0_2(L1_2, L2_2, L3_2, L4_2)
    else
      L0_2 = tonumber
      L1_2 = L7_1
      L1_2 = L1_2.text
      L0_2 = L0_2(L1_2)
      L1_2 = mainPlayer
      L1_2 = L1_2.bankBuilding
      L1_2 = L1_2.gold
      if L0_2 > L1_2 then
        L0_2 = showSimpleDialog
        L1_2 = L2_1
        L1_2 = L1_2.Withdrawal
        L2_2 = L2_1
        L2_2 = L2_2["Withdraw More Than Balance Error"]
        L3_2 = L2_1
        L3_2 = L3_2.OK
        
        function L4_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3
          L0_3 = L1_1
          L0_3 = L0_3.showOverlay
          L1_3 = "Scenes.WithdrawOverlay"
          L2_3 = {}
          L3_3 = {}
          L4_3 = L8_1
          L3_3.objectOfBankView = L4_3
          L2_3.params = L3_3
          L0_3(L1_3, L2_3)
        end
        
        L0_2(L1_2, L2_2, L3_2, L4_2)
      else
        L0_2 = L0_1
        L0_2 = L0_2.show
        L1_2 = L2_1
        L1_2 = L1_2.Withdrawal
        L0_2(L1_2)
        L0_2 = L4_1
        L0_2 = L0_2.withdrawFromBank
        L1_2 = tonumber
        L2_2 = L7_1
        L2_2 = L2_2.text
        L1_2 = L1_2(L2_2)
        L2_2 = didWithdrawCallback
        L3_2 = failedToWithdrawCallback
        L0_2(L1_2, L2_2, L3_2)
      end
    end
  end
end

didPressWithdrawButton = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = L5_1
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
  A0_2.backgroundBox = L2_2
  L2_2 = A0_2.backgroundBox
  L2_2.strokeWidth = 2
  L2_2 = A0_2.backgroundBox
  L3_2 = L2_2
  L2_2 = L2_2.setStrokeColor
  L4_2 = Theme
  L4_2 = L4_2.overlayStrokeColor
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
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
    L0_3 = L6_1
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
      L1_3 = L6_1
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
  L4_2 = L4_2["Withdraw Title"]
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
  L2_2 = L3_1
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
    L0_3 = L9_1
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
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = A0_2.contentBG
  L4_2 = L3_2
  L3_2 = L3_2.setStrokeColor
  L5_2 = Theme
  L5_2 = L5_2.overlayStrokeContentBG
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
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
  L3_2 = native
  L3_2 = L3_2.newTextField
  L4_2 = 0
  L5_2 = 0
  L6_2 = 100
  L7_2 = 30
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L7_1 = L3_2
  L3_2 = L7_1
  L3_2.isVisible = false
  L3_2 = L7_1
  L4_2 = A0_2.contentBG
  L4_2 = L4_2.x
  L3_2.x = L4_2
  L3_2 = L7_1
  L4_2 = A0_2.contentBG
  L4_2 = L4_2.y
  L5_2 = A0_2.contentBG
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 - L5_2
  L4_2 = L4_2 + 5
  L5_2 = L7_1
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L4_2 = L4_2 + 10
  L3_2.y = L4_2
  L3_2 = L7_1
  L4_2 = textListener
  L3_2.userInput = L4_2
  L3_2 = L7_1
  L3_2.inputType = "number"
  L3_2 = L7_1
  L4_2 = L3_2
  L3_2 = L3_2.addEventListener
  L5_2 = "userInput"
  L6_2 = textListener
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L7_1
  L4_2 = mainPlayer
  L4_2 = L4_2.bankBuilding
  L4_2 = L4_2.gold
  L3_2.text = L4_2
  L3_2 = L7_1
  L3_2.isEditable = true
  L3_2 = L7_1
  L4_2 = Constants
  L4_2 = L4_2.nativeFontForTextFields
  L4_2 = L4_2()
  L3_2.font = L4_2
  L3_2 = L7_1
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
  L5_2 = L7_1
  L3_2(L4_2, L5_2)
  L3_2 = L3_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L6_2 = L2_1
  L6_2 = L6_2.Withdrawal
  L5_2.label = L6_2
  L5_2.width = 100
  L5_2.height = 30
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "BattleItems/battle_outcome_button.png"
  L6_2 = L6_2 .. L7_2
  L5_2.defaultFile = L6_2
  L6_2 = didPressWithdrawButton
  L5_2.onRelease = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.withdrawButton = L3_2
  L3_2 = A0_2.contentGroup
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.withdrawButton
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.withdrawButton
  L4_2 = A0_2.contentBG
  L4_2 = L4_2.x
  L3_2.x = L4_2
  L3_2 = A0_2.withdrawButton
  L4_2 = L7_1
  L4_2 = L4_2.y
  L5_2 = L7_1
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L4_2 = L4_2 + 15
  L5_2 = A0_2.withdrawButton
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L3_2.y = L4_2
  L3_2 = nil
  L4_2 = system
  L4_2 = L4_2.getInfo
  L5_2 = "build"
  L4_2 = L4_2(L5_2)
  if "2013.1137" < L4_2 then
    L4_2 = system
    L4_2 = L4_2.getInfo
    L5_2 = "platformName"
    L4_2 = L4_2(L5_2)
    if L4_2 ~= "Android" then
      L4_2 = L2_1
      L4_2 = L4_2.lang
      if L4_2 == "fa" then
        goto lbl_295
      end
    end
  end
  L4_2 = L2_1
  L4_2 = L4_2.lang
  if L4_2 == "ar" then
    ::lbl_295::
    L4_2 = {}
    L5_2 = A0_2.contentGroup
    L4_2.parent = L5_2
    L5_2 = L2_1
    L5_2 = L5_2["Withdraw Overlay Desc"]
    L4_2.text = L5_2
    L4_2.x = 0
    L4_2.y = 0
    L5_2 = A0_2.contentBG
    L5_2 = L5_2.width
    L5_2 = L5_2 - 20
    L4_2.width = L5_2
    L4_2.height = 120
    L5_2 = Constants
    L5_2 = L5_2.fontForSubtitle
    L5_2 = L5_2()
    L4_2.font = L5_2
    L4_2.fontSize = 12
    L4_2.align = "right"
    L5_2 = display
    L5_2 = L5_2.newText
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L3_2 = L5_2
  else
    L4_2 = display
    L4_2 = L4_2.newText
    L5_2 = A0_2.contentGroup
    L6_2 = L2_1
    L6_2 = L6_2["Withdraw Overlay Desc"]
    L7_2 = 0
    L8_2 = 0
    L9_2 = A0_2.contentBG
    L9_2 = L9_2.width
    L9_2 = L9_2 - 20
    L10_2 = 120
    L11_2 = Constants
    L11_2 = L11_2.fontForSubtitle
    L11_2 = L11_2()
    L12_2 = 12
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L3_2 = L4_2
  end
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = Constants
  L6_2 = L6_2.darkBlueColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2.x = 0
  L4_2 = A0_2.withdrawButton
  L4_2 = L4_2.y
  L5_2 = A0_2.withdrawButton
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L4_2 = L4_2 + 15
  L5_2 = L3_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L3_2.y = L4_2
end

create = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.phase
  L3_2 = L5_1
  L3_2 = L3_2.show
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if L2_2 == "will" then
  elseif L2_2 == "did" then
    L3_2 = A1_2.params
    if L3_2 then
      L3_2 = A1_2.params
      L3_2 = L3_2.objectOfBankView
      if L3_2 then
        L3_2 = A1_2.params
        L3_2 = L3_2.objectOfBankView
        L8_1 = L3_2
      end
    end
    L3_2 = L7_1
    L3_2.isVisible = true
    L3_2 = nil
    _backAction = L3_2
  end
end

show = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.phase
  L3_2 = L5_1
  L3_2 = L3_2.hide
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if L2_2 == "will" then
    L3_2 = L7_1
    L3_2.isVisible = false
    L3_2 = native
    L3_2 = L3_2.setKeyboardFocus
    L4_2 = nil
    L3_2(L4_2)
  end
end

hide = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L5_1
  L2_2 = L2_2.destroy
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = display
  L2_2 = L2_2.remove
  L3_2 = L7_1
  L2_2(L3_2)
  L2_2 = nil
  L7_1 = L2_2
end

destroy = L10_1
