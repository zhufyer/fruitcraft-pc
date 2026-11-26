local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "widget"
L2_1 = L2_1(L3_1)
L3_1 = L0_1.newScene
L3_1 = L3_1()
L4_1 = require
L5_1 = "Constants"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.ActivityIndicatorView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Models.Player"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Utils.Network"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Components.TDButtonView"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Utils.KeyboardAvoider"
L9_1 = L9_1(L10_1)
L3_1.sceneDestroyed = false

function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.phase
  if "submitted" == L1_2 then
    L1_2 = native
    L1_2 = L1_2.setKeyboardFocus
    L2_2 = nil
    L1_2(L2_2)
  end
end

function L11_1()
  local L0_2, L1_2, L2_2
  L0_2 = log
  L1_2 = "Finished captcha"
  L0_2(L1_2)
  L0_2 = log3
  L1_2 = "scene params is : "
  L2_2 = L3_1
  L2_2 = L2_2.params
  L0_2(L1_2, L2_2)
  L0_2 = L7_1
  L0_2 = L0_2.resumeRequest
  L1_2 = L3_1
  L1_2 = L1_2.params
  L0_2(L1_2)
  L0_2 = L0_1
  L0_2 = L0_2.hideOverlay
  L0_2()
end

L3_1.captchaSuccess = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L5_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = log3
  L2_2 = "Faield to load with error :"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = showSimpleDialog
  L2_2 = "Captcha"
  L3_2 = A0_2
  L4_2 = nil
  
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Scenes.CaptchaOverlay"
    L2_3 = {}
    L3_3 = L3_1
    L3_3 = L3_3.params
    L2_3.params = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

L3_1.captchaFailure = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = A0_2.view
  L3_2 = L3_1
  L3_2.sceneDestroyed = false
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = A0_2.view
  L5_2 = 0
  L6_2 = 0
  L7_2 = 570
  L8_2 = 360
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0.2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2.isHitTestable = true
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
  L4_2 = display
  L4_2 = L4_2.newRoundedRect
  L5_2 = A0_2.view
  L6_2 = 0
  L7_2 = 0
  L8_2 = 280
  L9_2 = 295
  L10_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2.strokeWidth = 2
  L6_2 = L4_2
  L5_2 = L4_2.setStrokeColor
  L7_2 = L4_1
  L7_2 = L7_2.greenColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = 1
  L8_2 = 1
  L9_2 = 1
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 / 2
  L4_2.x = L5_2
  L5_2 = display
  L5_2 = L5_2.contentHeight
  L5_2 = L5_2 / 2
  L4_2.y = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.addEventListener
  L7_2 = "tap"
  
  function L8_2()
    local L0_3, L1_3
    L0_3 = L9_1
    L0_3 = L0_3.dismiss
    L0_3()
    L0_3 = true
    return L0_3
  end
  
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.addEventListener
  L7_2 = "touch"
  
  function L8_2(A0_3)
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
  
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = A0_2.view
  L7_2 = L1_1
  L7_2 = L7_2.Captcha
  L8_2 = 0
  L9_2 = 0
  L10_2 = L4_1
  L10_2 = L10_2.fontForTitle
  L10_2 = L10_2()
  L11_2 = 20
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = L5_2
  L6_2 = L5_2.setFillColor
  L8_2 = L4_1
  L8_2 = L8_2.darkBlueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L6_2 = L4_2.x
  L5_2.x = L6_2
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L7_2 = L4_2.height
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 / 2
  L6_2 = L6_2 + 10
  L7_2 = L5_2.height
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L5_2.y = L6_2
  L6_2 = display
  L6_2 = L6_2.newRoundedRect
  L7_2 = A0_2.view
  L8_2 = 0
  L9_2 = 0
  L10_2 = L4_2.width
  L10_2 = L10_2 - 20
  L11_2 = L4_2.height
  L11_2 = L11_2 - 60
  L12_2 = 3
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = L6_2
  L7_2 = L6_2.setFillColor
  L9_2 = L4_1
  L9_2 = L9_2.lightBlueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L8_2 = L6_2
  L7_2 = L6_2.setStrokeColor
  L9_2 = L4_1
  L9_2 = L9_2.blueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L6_2.strokeWidth = 1
  L7_2 = L4_2.x
  L6_2.x = L7_2
  L7_2 = L4_2.y
  L7_2 = L7_2 + 20
  L6_2.y = L7_2
  L7_2 = L3_1
  L8_2 = A1_2.params
  L7_2.params = L8_2
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = A0_2.view
  L9_2 = L1_1
  L9_2 = L9_2["Loading Challenge ..."]
  L10_2 = 0
  L11_2 = 0
  L12_2 = L4_1
  L12_2 = L12_2.fontForSubtitle
  L12_2 = L12_2()
  L13_2 = 9
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L9_2 = L7_2
  L8_2 = L7_2.setFillColor
  L10_2 = L4_1
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L8_2 = L6_2.x
  L9_2 = L7_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L7_2.x = L8_2
  L8_2 = L6_2.y
  L9_2 = L6_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L8_2 = L8_2 + 5
  L8_2 = L8_2 + 45
  L8_2 = L8_2 - 45
  L8_2 = L8_2 - 1
  L8_2 = L8_2 + 15
  L7_2.y = L8_2
  L8_2 = nil
  L9_2 = log3
  L10_2 = "load captcha image..."
  L9_2(L10_2)
  L9_2 = {}
  L10_2 = network
  L10_2 = L10_2.getDefaultHeader
  L10_2 = L10_2()
  L9_2.headers = L10_2
  L10_2 = display
  L10_2 = L10_2.loadRemoteImage
  L11_2 = L4_1
  L11_2 = L11_2.API_Path
  L12_2 = L4_1
  L12_2 = L12_2.API_Captcha
  L11_2 = L11_2 .. L12_2
  L12_2 = "GET"
  
  function L13_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.isError
    if L1_3 then
      L1_3 = print
      L2_3 = "Network error - download failed"
      L1_3(L2_3)
    else
      L1_3 = L8_2
      if L1_3 == nil then
        L1_3 = L3_1
        L1_3 = L1_3.sceneDestroyed
        if L1_3 then
          L1_3 = A0_3.target
          L2_3 = L1_3
          L1_3 = L1_3.removeSelf
          L1_3(L2_3)
          return
        end
        L1_3 = A0_3.target
        L8_2 = L1_3
        L1_3 = L8_2
        L1_3.alpha = 0
        L1_3 = transition
        L1_3 = L1_3.to
        L2_3 = L8_2
        L3_3 = {}
        L3_3.alpha = 1
        L1_3(L2_3, L3_3)
        L1_3 = L8_2
        L1_3.width = 100
        L1_3 = L8_2
        L1_3.height = 30
        L1_3 = L8_2
        L2_3 = L6_2
        L2_3 = L2_3.x
        L3_3 = A0_3.target
        L3_3 = L3_3.width
        L3_3 = L3_3 / 2
        L2_3 = L2_3 - L3_3
        L1_3.x = L2_3
        L1_3 = L8_2
        L2_3 = L6_2
        L2_3 = L2_3.y
        L3_3 = L6_2
        L3_3 = L3_3.height
        L3_3 = L3_3 / 2
        L2_3 = L2_3 - L3_3
        L2_3 = L2_3 + 5
        L2_3 = L2_3 + 45
        L2_3 = L2_3 - 45
        L2_3 = L2_3 - 1
        L2_3 = L2_3 + 15
        L1_3.y = L2_3
        L1_3 = A0_2
        L1_3 = L1_3.view
        L2_3 = L1_3
        L1_3 = L1_3.insert
        L3_3 = L8_2
        L1_3(L2_3, L3_3)
      end
    end
  end
  
  L14_2 = L9_2
  L15_2 = "captcha.jpg"
  L16_2 = system
  L16_2 = L16_2.TemporaryDirectory
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  if L8_2 then
    L10_2 = L6_2.x
    L11_2 = A1_2.target
    L11_2 = L11_2.width
    L11_2 = L11_2 / 2
    L10_2 = L10_2 - L11_2
    L8_2.x = L10_2
    L10_2 = L6_2.y
    L11_2 = L6_2.height
    L11_2 = L11_2 / 2
    L10_2 = L10_2 - L11_2
    L10_2 = L10_2 + 5
    L10_2 = L10_2 + 45
    L10_2 = L10_2 - 45
    L10_2 = L10_2 - 1
    L10_2 = L10_2 + 15
    L8_2.y = L10_2
  end
  L10_2 = display
  L10_2 = L10_2.newLine
  L11_2 = A0_2.view
  L12_2 = display
  L12_2 = L12_2.contentWidth
  L12_2 = L12_2 / 2
  L13_2 = L6_2.width
  L13_2 = L13_2 / 2
  L12_2 = L12_2 - L13_2
  L12_2 = L12_2 + 10
  L13_2 = L6_2.y
  L14_2 = L6_2.height
  L14_2 = L14_2 / 2
  L13_2 = L13_2 - L14_2
  L13_2 = L13_2 + 5
  L13_2 = L13_2 + 45
  L13_2 = L13_2 + 70
  L14_2 = display
  L14_2 = L14_2.contentWidth
  L14_2 = L14_2 / 2
  L15_2 = L6_2.width
  L15_2 = L15_2 / 2
  L14_2 = L14_2 + L15_2
  L14_2 = L14_2 - 10
  L15_2 = L6_2.y
  L16_2 = L6_2.height
  L16_2 = L16_2 / 2
  L15_2 = L15_2 - L16_2
  L15_2 = L15_2 + 5
  L15_2 = L15_2 + 45
  L15_2 = L15_2 + 70
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L12_2 = L10_2
  L11_2 = L10_2.setStrokeColor
  L13_2 = L4_1
  L13_2 = L13_2.blueColor
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L13_2()
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L10_2.strokeWidth = 1
  L11_2 = native
  L11_2 = L11_2.newTextField
  L12_2 = L6_2.x
  L13_2 = L6_2.width
  L13_2 = L13_2 / 2
  L12_2 = L12_2 - L13_2
  L12_2 = L12_2 + 120
  L12_2 = L12_2 + 20
  L12_2 = L12_2 + 50
  L13_2 = L6_2.y
  L14_2 = L6_2.height
  L14_2 = L14_2 / 2
  L13_2 = L13_2 - L14_2
  L13_2 = L13_2 + 5
  L13_2 = L13_2 + 45
  L13_2 = L13_2 - 45
  L13_2 = L13_2 - 1
  L13_2 = L13_2 + 15
  L14_2 = 100
  L15_2 = 30
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  A0_2.codeField = L11_2
  L11_2 = A0_2.codeField
  L12_2 = L10_1
  L11_2.userInput = L12_2
  L11_2 = A0_2.codeField
  L12_2 = L11_2
  L11_2 = L11_2.addEventListener
  L13_2 = "userInput"
  L14_2 = L10_1
  L11_2(L12_2, L13_2, L14_2)
  L11_2 = A0_2.codeField
  L11_2.isVisible = false
  L11_2 = A0_2.codeField
  L12_2 = L4_1
  L12_2 = L12_2.nativeFontForTextFields
  L12_2 = L12_2()
  L11_2.font = L12_2
  L11_2 = A0_2.codeField
  L12_2 = L11_2
  L11_2 = L11_2.setTextColor
  L13_2 = L4_1
  L13_2 = L13_2.darkBlueColor
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L13_2()
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L11_2 = L8_1
  L12_2 = L11_2
  L11_2 = L11_2.new
  L13_2 = {}
  L14_2 = L1_1
  L14_2 = L14_2.Continue
  L13_2.label = L14_2
  L13_2.width = 100
  L13_2.height = 30
  L14_2 = L4_1
  L14_2 = L14_2.Path_Assets
  L15_2 = "BattleItems/battle_outcome_button.png"
  L14_2 = L14_2 .. L15_2
  L13_2.imageName = L14_2
  
  function L14_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = log3
    L1_3 = "captcha text"
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
        L1_3 = "submitting captcha code"
        L0_3(L1_3)
        L0_3 = A0_2
        L0_3 = L0_3.codeField
        L0_3.isVisible = false
        L0_3 = native
        L0_3 = L0_3.setKeyboardFocus
        L1_3 = nil
        L0_3(L1_3)
        L0_3 = L5_1
        L0_3 = L0_3.show
        L1_3 = L1_1
        L1_3 = L1_3["Checking..."]
        L0_3(L1_3)
        L0_3 = L6_1
        L0_3 = L0_3.submitCaptchaResult
        L1_3 = A0_2
        L1_3 = L1_3.codeField
        L1_3 = L1_3.text
        L2_3 = L3_1
        L2_3 = L2_3.captchaSuccess
        L3_3 = L3_1
        L3_3 = L3_3.captchaFailure
        L0_3(L1_3, L2_3, L3_3)
    end
    else
      L0_3 = showSimpleDialog
      L1_3 = "Captcha"
      L2_3 = "Please answer the question before proceeding"
      L3_3 = nil
      
      function L4_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = L0_1
        L0_4 = L0_4.showOverlay
        L1_4 = "Scenes.CaptchaOverlay"
        L2_4 = {}
        L3_4 = A1_2
        L3_4 = L3_4.params
        L2_4.params = L3_4
        L0_4(L1_4, L2_4)
      end
      
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
  end
  
  L13_2.onRelease = L14_2
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = A0_2.view
  L13_2 = L12_2
  L12_2 = L12_2.insert
  L14_2 = L11_2.view
  L12_2(L13_2, L14_2)
  L12_2 = L6_2.x
  L11_2.x = L12_2
  L12_2 = A0_2.codeField
  L12_2 = L12_2.y
  L12_2 = L12_2 + 35
  L11_2.y = L12_2
  L12_2 = nil
  L13_2 = system
  L13_2 = L13_2.getInfo
  L14_2 = "build"
  L13_2 = L13_2(L14_2)
  if "2013.1137" < L13_2 then
    L13_2 = system
    L13_2 = L13_2.getInfo
    L14_2 = "platformName"
    L13_2 = L13_2(L14_2)
    if L13_2 ~= "Android" then
      L13_2 = L1_1
      L13_2 = L13_2.lang
      if L13_2 == "fa" then
        goto lbl_344
      end
    end
  end
  L13_2 = L1_1
  L13_2 = L13_2.lang
  if L13_2 == "ar" then
    ::lbl_344::
    L13_2 = {}
    L14_2 = A0_2.view
    L13_2.parent = L14_2
    L14_2 = L1_1
    L14_2 = L14_2["Captcha input help"]
    L13_2.text = L14_2
    L13_2.x = 0
    L13_2.y = 0
    L14_2 = L6_2.width
    L14_2 = L14_2 - 20
    L13_2.width = L14_2
    L13_2.height = 120
    L14_2 = L4_1
    L14_2 = L14_2.fontForSubtitle
    L14_2 = L14_2()
    L13_2.font = L14_2
    L13_2.fontSize = 13
    L13_2.align = "right"
    L14_2 = display
    L14_2 = L14_2.newText
    L15_2 = L13_2
    L14_2 = L14_2(L15_2)
    L12_2 = L14_2
  else
    L13_2 = display
    L13_2 = L13_2.newText
    L14_2 = A0_2.view
    L15_2 = L1_1
    L15_2 = L15_2["Captcha input help"]
    L16_2 = 0
    L17_2 = 0
    L18_2 = L6_2.width
    L18_2 = L18_2 - 20
    L19_2 = 120
    L20_2 = L4_1
    L20_2 = L20_2.fontForSubtitle
    L20_2 = L20_2()
    L21_2 = 13
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L12_2 = L13_2
  end
  L14_2 = L12_2
  L13_2 = L12_2.setFillColor
  L15_2 = L4_1
  L15_2 = L15_2.darkBlueColor
  L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L15_2()
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L13_2 = display
  L13_2 = L13_2.contentWidth
  L13_2 = L13_2 / 2
  L12_2.x = L13_2
  L13_2 = L6_2.y
  L14_2 = L6_2.height
  L14_2 = L14_2 / 2
  L13_2 = L13_2 - L14_2
  L13_2 = L13_2 + 5
  L13_2 = L13_2 + 45
  L13_2 = L13_2 + 90
  L14_2 = L12_2.height
  L14_2 = L14_2 / 2
  L13_2 = L13_2 + L14_2
  L12_2.y = L13_2
end

L3_1.create = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = A0_2.codeField
    if L4_2 then
      L4_2 = A0_2.codeField
      L4_2.isVisible = true
    end
    L4_2 = L5_1
    L4_2 = L4_2.hide
    L4_2()
    L4_2 = nil
    _backAction = L4_2
  end
end

L3_1.show = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = A0_2.codeField
    L4_2.isVisible = false
    L4_2 = native
    L4_2 = L4_2.setKeyboardFocus
    L5_2 = nil
    L4_2(L5_2)
  end
end

L3_1.hide = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.view
  L3_2 = A0_2.codeField
  L4_2 = L3_2
  L3_2 = L3_2.removeSelf
  L3_2(L4_2)
  A0_2.codeField = nil
  L3_2 = L3_1
  L3_2.sceneDestroyed = true
end

L3_1.destroy = L11_1
L12_1 = L3_1
L11_1 = L3_1.addEventListener
L13_1 = "create"
L14_1 = L3_1
L11_1(L12_1, L13_1, L14_1)
L12_1 = L3_1
L11_1 = L3_1.addEventListener
L13_1 = "show"
L14_1 = L3_1
L11_1(L12_1, L13_1, L14_1)
L12_1 = L3_1
L11_1 = L3_1.addEventListener
L13_1 = "hide"
L14_1 = L3_1
L11_1(L12_1, L13_1, L14_1)
L12_1 = L3_1
L11_1 = L3_1.addEventListener
L13_1 = "destroy"
L14_1 = L3_1
L11_1(L12_1, L13_1, L14_1)
return L3_1
