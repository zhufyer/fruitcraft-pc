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
L9_1 = "Core.ParentStandardBaseOverlayClass"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Utils.KeyboardAvoider"
L9_1 = L9_1(L10_1)
L10_1 = setmetatable
L11_1 = _M
L12_1 = L8_1
L10_1(L11_1, L12_1)
L10_1 = _M
L11_1 = _M
L10_1.__index = L11_1
L10_1 = _M

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

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L6_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = L2_1
  L2_2 = L2_2["Capture Email"]
  L3_2 = A0_2
  L4_2 = nil
  
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Scenes.CaptureEmailOverlay"
    L2_3 = {}
    L3_3 = {}
    L4_3 = scene
    L4_3 = L4_3.codeField
    L4_3 = L4_3.text
    L3_3.text = L4_3
    L2_3.params = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

failedToSetEmail = L12_1

function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L6_1
  L0_2 = L0_2.hide
  L0_2()
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "showCaptureEmailOverlay"
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.saveSettings
  L0_2(L1_2)
  L0_2 = showSimpleDialog
  L1_2 = L2_1
  L1_2 = L1_2["Capture Email"]
  L2_2 = "Check your email and select the confirmation email"
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

didSetEmail = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = L8_1
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
      L1_3 = L9_1
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
    L0_3 = L9_1
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
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = L4_1
  L6_2 = L6_2.whiteColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L3_2.x = 0
  L3_2.y = 0
  L5_2 = L3_2
  L4_2 = L3_2.addEventListener
  L6_2 = "tap"
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = L9_1
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
      L1_3 = L9_1
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
  L6_2 = L6_2.Email
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
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
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
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L7_2 = L5_2
  L6_2 = L5_2.setStrokeColor
  L8_2 = L4_1
  L8_2 = L8_2.blueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
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
  L8_2.imageName = L9_2
  
  function L9_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.gotoScene
    L1_3 = "Scenes.Home"
    L0_3(L1_3)
  end
  
  L8_2.onRelease = L9_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A0_2.contentGroup
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = L6_2.view
  L7_2(L8_2, L9_2)
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
  L9_2 = L9_2["Enter email"]
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
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
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
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L11_2()
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L8_2.strokeWidth = 1
  L9_2 = log3
  L10_2 = "Creating text field"
  L9_2(L10_2)
  L9_2 = ""
  L10_2 = A1_2.params
  if L10_2 then
    L10_2 = A1_2.params
    L10_2 = L10_2.text
    if L10_2 then
      L10_2 = A1_2.params
      L9_2 = L10_2.text
    end
  end
  L10_2 = native
  L10_2 = L10_2.newTextField
  L11_2 = L2_1
  L11_2 = L11_2.adjustX
  L12_2 = L5_2.x
  L13_2 = L5_2.width
  L13_2 = L13_2 / 2
  L12_2 = L12_2 - L13_2
  L13_2 = L7_2.width
  L12_2 = L12_2 + L13_2
  L12_2 = L12_2 + 20
  L12_2 = L12_2 + 75
  L13_2 = display
  L13_2 = L13_2.contentWidth
  L13_2 = -L13_2
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = L7_2.y
  L13_2 = L7_2.height
  L13_2 = L13_2 / 2
  L12_2 = L12_2 - L13_2
  L12_2 = L12_2 - 1
  L12_2 = L12_2 + 15
  L13_2 = 150
  L14_2 = 30
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  A0_2.codeField = L10_2
  L10_2 = A0_2.codeField
  L11_2 = L11_1
  L10_2.userInput = L11_2
  L10_2 = A0_2.codeField
  L11_2 = L10_2
  L10_2 = L10_2.addEventListener
  L12_2 = "userInput"
  L13_2 = L11_1
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = A0_2.codeField
  L10_2.isVisible = false
  L10_2 = A0_2.codeField
  L11_2 = L4_1
  L11_2 = L11_2.nativeFontForTextFields
  L11_2 = L11_2()
  L10_2.font = L11_2
  L10_2 = A0_2.codeField
  L11_2 = L10_2
  L10_2 = L10_2.setTextColor
  L12_2 = L4_1
  L12_2 = L12_2.darkBlueColor
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L10_2 = A0_2.codeField
  L10_2.text = L9_2
  L10_2 = A0_2.contentGroup
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = A0_2.codeField
  L10_2(L11_2, L12_2)
  L10_2 = L7_1
  L11_2 = L10_2
  L10_2 = L10_2.new
  L12_2 = {}
  L13_2 = L2_1
  L13_2 = L13_2.Validate
  L12_2.label = L13_2
  L12_2.width = 100
  L12_2.height = 30
  L13_2 = L4_1
  L13_2 = L13_2.Path_Assets
  L14_2 = "BattleItems/battle_outcome_button.png"
  L13_2 = L13_2 .. L14_2
  L12_2.imageName = L13_2
  
  function L13_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = log3
    L1_3 = "Submitted email code"
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
    L1_3 = L1_3["Checking email"]
    L0_3(L1_3)
    L0_3 = A0_2
    L0_3 = L0_3.codeField
    L0_3 = L0_3.text
    L1_3 = L1_1
    L1_3 = L1_3.captureUserEmail
    L2_3 = L0_3
    L3_3 = didSetEmail
    
    function L4_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      L1_4 = L6_1
      L1_4 = L1_4.hide
      L1_4()
      L1_4 = showSimpleDialog
      L2_4 = L2_1
      L2_4 = L2_4["Capture Email"]
      L3_4 = A0_4
      L4_4 = nil
      
      function L5_4()
        local L0_5, L1_5, L2_5, L3_5, L4_5
        L0_5 = L0_1
        L0_5 = L0_5.showOverlay
        L1_5 = "Scenes.CaptureEmailOverlay"
        L2_5 = {}
        L3_5 = {}
        L4_5 = L0_3
        L3_5.text = L4_5
        L2_5.params = L3_5
        L0_5(L1_5, L2_5)
      end
      
      L1_4(L2_4, L3_4, L4_4, L5_4)
    end
    
    L1_3(L2_3, L3_3, L4_3)
  end
  
  L12_2.onRelease = L13_2
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = A0_2.contentGroup
  L12_2 = L11_2
  L11_2 = L11_2.insert
  L13_2 = L10_2.view
  L11_2(L12_2, L13_2)
  L11_2 = L5_2.x
  L10_2.x = L11_2
  L11_2 = A0_2.codeField
  L11_2 = L11_2.y
  L11_2 = L11_2 + 35
  L10_2.y = L11_2
  L11_2 = nil
  L12_2 = system
  L12_2 = L12_2.getInfo
  L13_2 = "build"
  L12_2 = L12_2(L13_2)
  if "2013.1137" < L12_2 then
    L12_2 = system
    L12_2 = L12_2.getInfo
    L13_2 = "platformName"
    L12_2 = L12_2(L13_2)
    if L12_2 ~= "Android" then
      L12_2 = L2_1
      L12_2 = L12_2.lang
      if L12_2 == "fa" then
        goto lbl_327
      end
    end
  end
  L12_2 = L2_1
  L12_2 = L12_2.lang
  if L12_2 == "ar" then
    ::lbl_327::
    L12_2 = {}
    L13_2 = A0_2.contentGroup
    L12_2.parent = L13_2
    L13_2 = L2_1
    L13_2 = L13_2["Email input help"]
    L12_2.text = L13_2
    L12_2.x = 0
    L12_2.y = 0
    L13_2 = L5_2.width
    L13_2 = L13_2 - 20
    L12_2.width = L13_2
    L12_2.height = 160
    L13_2 = L4_1
    L13_2 = L13_2.fontForSubtitle
    L13_2 = L13_2()
    L12_2.font = L13_2
    L12_2.fontSize = 11
    L12_2.align = "right"
    L13_2 = display
    L13_2 = L13_2.newText
    L14_2 = L12_2
    L13_2 = L13_2(L14_2)
    L11_2 = L13_2
  else
    L12_2 = display
    L12_2 = L12_2.newText
    L13_2 = A0_2.contentGroup
    L14_2 = L2_1
    L14_2 = L14_2["Email input help"]
    L15_2 = 0
    L16_2 = 0
    L17_2 = L5_2.width
    L17_2 = L17_2 - 20
    L18_2 = 160
    L19_2 = L4_1
    L19_2 = L19_2.fontForSubtitle
    L19_2 = L19_2()
    L20_2 = 11
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L11_2 = L12_2
  end
  L13_2 = L11_2
  L12_2 = L11_2.setFillColor
  L14_2 = L4_1
  L14_2 = L14_2.darkBlueColor
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L14_2()
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L11_2.x = 0
  L12_2 = L7_2.y
  L12_2 = L12_2 + 75
  L13_2 = L11_2.height
  L13_2 = L13_2 / 2
  L12_2 = L12_2 + L13_2
  L11_2.y = L12_2
end

create = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L8_1
  L4_2 = L4_2.show
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "did" then
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

show = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = L8_1
  L3_2 = L3_2.hide
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = phase
  if L3_2 == "will" then
    L3_2 = A0_2.codeField
    L3_2.isVisible = false
    L3_2 = native
    L3_2 = L3_2.setKeyboardFocus
    L4_2 = nil
    L3_2(L4_2)
  end
end

hide = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = L8_1
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

destroy = L12_1
