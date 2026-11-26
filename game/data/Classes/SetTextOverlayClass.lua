local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1
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
L5_1 = "Utils.Toolbox"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.ActivityIndicatorView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Utils.Analytics"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Models.AchievementManager"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Utils.Toolbox"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Components.TDButtonView"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Core.ParentStandardBaseOverlayClass"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Utils.KeyboardAvoider"
L11_1 = L11_1(L12_1)
L12_1 = setmetatable
L13_1 = _M
L14_1 = L10_1
L12_1(L13_1, L14_1)
L12_1 = _M
L13_1 = _M
L12_1.__index = L13_1
L12_1 = _M
L13_1 = nil
L14_1 = nil
L15_1 = nil
L16_1 = nil
L17_1 = nil
L18_1 = nil
L19_1 = nil
L20_1 = nil
L21_1 = nil
L22_1 = nil
L23_1 = nil
L24_1 = nil

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = 0
    if A0_3 == "Real Name" then
      L1_3 = 20
    elseif A0_3 == "Phone" then
      L1_3 = 12
    elseif A0_3 == "Address" then
      L1_3 = 37
    elseif A0_3 == "Birth Year" then
      L1_3 = 4
    end
    L2_3 = L24_1
    if L2_3 then
      L2_3 = L8_1
      L2_3 = L2_3.stringUTFLength
      L3_3 = L24_1
      L2_3 = L2_3(L3_3)
      if L1_3 < L2_3 then
        L2_3 = showSimpleDialog
        L3_3 = "wrong data"
        L4_3 = L2_1
        L4_3 = L4_3.localizedString
        L5_3 = "You cannot use more than charNum charachters for titletext"
        L6_3 = {}
        L6_3.charNum = L1_3
        L7_3 = L2_1
        L7_3 = L7_3[A0_3]
        L6_3.titleText = L7_3
        L4_3 = L4_3(L5_3, L6_3)
        L5_3 = L2_1
        L5_3 = L5_3.ok
        
        function L6_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4
          L0_4 = "Scenes.SetTextOverlay"
          L1_4 = L14_1
          L2_4 = L24_1
          L1_4.defualtText = L2_4
          L1_4 = L0_1
          L1_4 = L1_4.showOverlay
          L2_4 = L0_4
          L3_4 = {}
          L3_4.effect = "fade"
          L4_4 = L14_1
          L3_4.params = L4_4
          L1_4(L2_4, L3_4)
        end
        
        L2_3(L3_3, L4_3, L5_3, L6_3)
        L2_3 = true
        return L2_3
      else
        L2_3 = false
        return L2_3
      end
    else
      L2_3 = false
      return L2_3
    end
  end
  
  L3_2 = L13_1
  L3_2.isVisible = false
  L3_2 = L12_1
  L3_2 = L3_2.hideWithAnimation
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = log3
  L4_2 = "###"
  L5_2 = L18_1
  L6_2 = L13_1
  L6_2 = L6_2.text
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L2_2
  L4_2 = L18_1
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = L15_1
    L4_2 = L18_1
    L5_2 = L24_1
    L3_2(L4_2, L5_2)
    L3_2 = native
    L3_2 = L3_2.setKeyboardFocus
    L4_2 = nil
    L3_2(L4_2)
  end
end

didPressButton = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.phase
  if "submitted" == L2_2 then
    L2_2 = didPressButton
    L3_2 = A0_2
    L2_2(L3_2)
  else
    L2_2 = A1_2.phase
    if "ended" == L2_2 then
      L2_2 = native
      L2_2 = L2_2.setKeyboardFocus
      L3_2 = nil
      L2_2(L3_2)
    else
      L2_2 = A1_2.phase
      if L2_2 == "editing" then
        L2_2 = A1_2.text
        L24_1 = L2_2
      end
    end
  end
end

userInput = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = A1_2.params
  L14_1 = L2_2
  L2_2 = L14_1
  if L2_2 ~= nil then
    L2_2 = L14_1
    L2_2 = L2_2.onSelect
    L15_1 = L2_2
    L2_2 = L14_1
    L2_2 = L2_2.checkValidate
    L16_1 = L2_2
    L2_2 = L14_1
    L2_2 = L2_2.onExit
    L17_1 = L2_2
    L2_2 = L14_1
    L2_2 = L2_2.titleText
    if not L2_2 then
      L2_2 = "Input"
    end
    L18_1 = L2_2
    L2_2 = L14_1
    L2_2 = L2_2.buttonText
    if not L2_2 then
      L2_2 = "Register"
    end
    L19_1 = L2_2
    L2_2 = L14_1
    L2_2 = L2_2.descriptionText
    if not L2_2 then
      L2_2 = L2_1
      L2_2 = L2_2.textFieldDescription
    end
    L20_1 = L2_2
    L2_2 = L14_1
    L2_2 = L2_2.textType
    L21_1 = L2_2
    L2_2 = L14_1
    L2_2 = L2_2.helpId
    if not L2_2 then
      L2_2 = -1
    end
    L22_1 = L2_2
    L2_2 = L14_1
    L2_2 = L2_2.defualtText
    L23_1 = L2_2
    L2_2 = L23_1
    L24_1 = L2_2
  else
    L2_2 = "Input"
    L18_1 = L2_2
    L2_2 = "Register"
    L19_1 = L2_2
    L2_2 = "textFieldDescription"
    L20_1 = L2_2
    L2_2 = -1
    L22_1 = L2_2
  end
  L2_2 = L10_1
  L2_2 = L2_2.create
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = display
  L2_2 = L2_2.newRect
  L3_2 = A0_2.contentGroup
  L4_2 = 0
  L5_2 = 0
  L6_2 = 570
  L7_2 = 360
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  grayOverlay = L2_2
  L2_2 = grayOverlay
  L2_2.x = 0
  L2_2 = grayOverlay
  L2_2.y = 0
  L2_2 = grayOverlay
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0.58823529
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = grayOverlay
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
  L2_2 = grayOverlay
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
  L2_2 = display
  L2_2 = L2_2.newRoundedRect
  L3_2 = A0_2.contentGroup
  L4_2 = 0
  L5_2 = 0
  L6_2 = 320
  L7_2 = 255
  L8_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.strokeWidth = 2
  L4_2 = L2_2
  L3_2 = L2_2.setStrokeColor
  L5_2 = Constants
  L5_2 = L5_2.greenColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L4_2 = L2_2
  L3_2 = L2_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.whiteColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L2_2.x = 0
  L2_2.y = 0
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A0_2.contentGroup
  L5_2 = L2_1
  L6_2 = L18_1
  L5_2 = L5_2[L6_2]
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
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
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
  L4_2 = L9_1
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
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = L12_1
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
  L4_2.delegate = A0_2
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
  L5_2 = L22_1
  if L5_2 ~= -1 then
    L5_2 = L9_1
    L6_2 = L5_2
    L5_2 = L5_2.new
    L7_2 = {}
    L7_2.width = 30
    L7_2.height = 30
    L8_2 = Constants
    L8_2 = L8_2.Path_Assets
    L9_2 = "BattleItems/help.png"
    L8_2 = L8_2 .. L9_2
    L7_2.defaultFile = L8_2
    
    function L8_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = L0_1
      L0_3 = L0_3.hideOverlay
      L0_3()
      L0_3 = L0_1
      L0_3 = L0_3.gotoScene
      L1_3 = "Scenes.HelpScene"
      L2_3 = {}
      L3_3 = {}
      L4_3 = L22_1
      L3_3.helpId = L4_3
      L3_3.previousScene = "Scenes.Home"
      L2_3.params = L3_3
      L0_3(L1_3, L2_3)
    end
    
    L7_2.onRelease = L8_2
    L5_2 = L5_2(L6_2, L7_2)
    L5_2.delegate = A0_2
    L6_2 = A0_2.contentGroup
    L7_2 = L6_2
    L6_2 = L6_2.insert
    L8_2 = L5_2.view
    L6_2(L7_2, L8_2)
    L6_2 = L2_2.width
    L6_2 = -L6_2
    L6_2 = L6_2 / 2
    L7_2 = L2_2.width
    L6_2 = L6_2 + L7_2
    L6_2 = L6_2 - 10
    L7_2 = L5_2.width
    L7_2 = L7_2 / 2
    L6_2 = L6_2 - L7_2
    L5_2.x = L6_2
    L6_2 = L3_2.y
    L5_2.y = L6_2
  end
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
  L8_2 = Constants
  L8_2 = L8_2.lightBlueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L7_2 = L5_2
  L6_2 = L5_2.setStrokeColor
  L8_2 = Constants
  L8_2 = L8_2.blueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L5_2.strokeWidth = 1
  L6_2 = L2_2.x
  L5_2.x = L6_2
  L6_2 = L2_2.y
  L6_2 = L6_2 + 20
  L5_2.y = L6_2
  L6_2 = display
  L6_2 = L6_2.newRoundedRect
  L7_2 = A0_2.contentGroup
  L8_2 = 0
  L9_2 = 0
  L10_2 = 240
  L11_2 = 40
  L12_2 = 10
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = L6_2
  L7_2 = L6_2.setFillColor
  L9_2 = Constants
  L9_2 = L9_2.blueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L7_2 = L5_2.x
  L6_2.x = L7_2
  L7_2 = L5_2.y
  L8_2 = L5_2.height
  L8_2 = L8_2 / 2
  L7_2 = L7_2 - L8_2
  L7_2 = L7_2 + 35
  L6_2.y = L7_2
  L7_2 = native
  L7_2 = L7_2.newTextField
  L8_2 = L6_2.x
  L9_2 = L6_2.y
  L10_2 = L6_2.width
  L10_2 = L10_2 - 20
  L11_2 = 30
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L13_1 = L7_2
  L7_2 = L13_1
  
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = userInput
    L2_3 = A0_2
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  
  L7_2.userInput = L8_2
  L7_2 = L13_1
  L8_2 = L7_2
  L7_2 = L7_2.addEventListener
  L9_2 = "userInput"
  
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = userInput
    L2_3 = A0_2
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = L21_1
  if L7_2 then
  end
  L7_2 = L13_1
  L8_2 = L23_1
  if not L8_2 then
    L8_2 = ""
  end
  L7_2.text = L8_2
  L7_2 = L13_1
  L7_2.isEditable = true
  L7_2 = L13_1
  L8_2 = Constants
  L8_2 = L8_2.nativeFontForTextFields
  L8_2 = L8_2()
  L7_2.font = L8_2
  L7_2 = L13_1
  L8_2 = L7_2
  L7_2 = L7_2.setTextColor
  L9_2 = Constants
  L9_2 = L9_2.darkBlueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L7_2 = A0_2.contentGroup
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = L13_1
  L7_2(L8_2, L9_2)
  L7_2 = L9_1
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L10_2 = L2_1
  L11_2 = L19_1
  L10_2 = L10_2[L11_2]
  L9_2.label = L10_2
  L9_2.width = 100
  L9_2.height = 30
  L10_2 = Constants
  L10_2 = L10_2.Path_Assets
  L11_2 = "BattleItems/battle_outcome_button.png"
  L10_2 = L10_2 .. L11_2
  L9_2.defaultFile = L10_2
  
  function L10_2()
    local L0_3, L1_3
    L0_3 = didPressButton
    L1_3 = A0_2
    L0_3(L1_3)
  end
  
  L9_2.onRelease = L10_2
  L7_2 = L7_2(L8_2, L9_2)
  L7_2.delegate = A0_2
  L8_2 = A0_2.contentGroup
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L7_2.view
  L8_2(L9_2, L10_2)
  L7_2.x = 0
  L8_2 = L6_2.y
  L8_2 = L8_2 + 50
  L7_2.y = L8_2
  L8_2 = nil
  L9_2 = system
  L9_2 = L9_2.getInfo
  L10_2 = "build"
  L9_2 = L9_2(L10_2)
  if "2013.1137" < L9_2 then
    L9_2 = system
    L9_2 = L9_2.getInfo
    L10_2 = "platformName"
    L9_2 = L9_2(L10_2)
    if L9_2 ~= "Android" then
      L9_2 = L2_1
      L9_2 = L9_2.lang
      if L9_2 == "fa" then
        goto lbl_351
      end
    end
  end
  L9_2 = L2_1
  L9_2 = L9_2.lang
  if L9_2 == "ar" then
    ::lbl_351::
    L9_2 = {}
    L10_2 = A0_2.contentGroup
    L9_2.parent = L10_2
    L10_2 = L20_1
    L9_2.text = L10_2
    L9_2.x = 0
    L9_2.y = 0
    L10_2 = L5_2.width
    L10_2 = L10_2 - 20
    L9_2.width = L10_2
    L10_2 = L2_2.height
    L10_2 = L10_2 / 2
    L10_2 = L10_2 - 5
    L9_2.height = L10_2
    L10_2 = Constants
    L10_2 = L10_2.fontForSubtitle
    L10_2 = L10_2()
    L9_2.font = L10_2
    L9_2.fontSize = 12
    L9_2.align = "right"
    L10_2 = display
    L10_2 = L10_2.newText
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    L8_2 = L10_2
  else
    L9_2 = display
    L9_2 = L9_2.newText
    L10_2 = A0_2.contentGroup
    L11_2 = L20_1
    L12_2 = 0
    L13_2 = 0
    L14_2 = L5_2.width
    L14_2 = L14_2 - 20
    L15_2 = L2_2.height
    L15_2 = L15_2 / 2
    L15_2 = L15_2 - 5
    L16_2 = Constants
    L16_2 = L16_2.fontForSubtitle
    L16_2 = L16_2()
    L17_2 = 12
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L8_2 = L9_2
  end
  L10_2 = L8_2
  L9_2 = L8_2.setFillColor
  L11_2 = Constants
  L11_2 = L11_2.darkBlueColor
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2()
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L8_2.x = 0
  L9_2 = L7_2.y
  L10_2 = L7_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L9_2 = L9_2 + 75
  L8_2.y = L9_2
end

create = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L10_1
  L4_2 = L4_2.show
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "did" then
    L4_2 = L6_1
    L4_2 = L4_2.logEvent
    L5_2 = "Donate Shown"
    L4_2(L5_2)
    L4_2 = L13_1
    L4_2.isVisible = true
    L4_2 = "hideOverlay"
    _backAction = L4_2
  end
end

show = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L10_1
  L4_2 = L4_2.hide
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "will" then
    L4_2 = L17_1
    if L4_2 then
      L4_2 = L17_1
      L5_2 = 100
      L4_2(L5_2)
    end
    L4_2 = L13_1
    L4_2.isVisible = false
    L4_2 = native
    L4_2 = L4_2.setKeyboardFocus
    L5_2 = nil
    L4_2(L5_2)
  end
end

hide = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = L10_1
  L3_2 = L3_2.destroy
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = L17_1
  if L3_2 then
    L3_2 = L17_1
    L4_2 = 100
    L3_2(L4_2)
  end
end

destroy = L25_1
