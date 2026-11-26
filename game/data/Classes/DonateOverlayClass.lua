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
L9_1 = "Components.TDButtonView"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Core.ParentStandardBaseOverlayClass"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Utils.KeyboardAvoider"
L10_1 = L10_1(L11_1)
L11_1 = setmetatable
L12_1 = _M
L13_1 = L9_1
L11_1(L12_1, L13_1)
L11_1 = _M
L12_1 = _M
L11_1.__index = L12_1
L11_1 = _M
L12_1 = nil

function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = donateField
  L0_2.isVisible = false
  L0_2 = native
  L0_2 = L0_2.setKeyboardFocus
  L1_2 = nil
  L0_2(L1_2)
  L0_2 = L5_1
  L0_2 = L0_2.show
  L1_2 = L2_1
  L1_2 = L1_2.Donate
  L0_2(L1_2)
  L0_2 = mainPlayer
  L0_2 = L0_2.tribe
  L1_2 = L0_2
  L0_2 = L0_2.donate
  L2_2 = donateField
  L2_2 = L2_2.text
  L3_2 = didDonateCallback
  L4_2 = failedDonateCallback
  L0_2(L1_2, L2_2, L3_2, L4_2)
end

didPressDonate = L13_1

function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.phase
  if "submitted" == L1_2 then
    L1_2 = didPressDonate
    L1_2()
  else
    L1_2 = A0_2.phase
    if "ended" == L1_2 then
      L1_2 = native
      L1_2 = L1_2.setKeyboardFocus
      L2_2 = nil
      L1_2(L2_2)
    end
  end
end

textListener = L13_1

function L13_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = log3
  L1_2 = "DONATE AMOUNT"
  L2_2 = donateField
  L2_2 = L2_2.text
  L0_2(L1_2, L2_2)
  L0_2 = L7_1
  L0_2 = L0_2.goldCollectedForTribe
  L1_2 = donateField
  L1_2 = L1_2.text
  L0_2(L1_2)
  L0_2 = L4_1
  L0_2 = L0_2.shortenLongNumber
  L1_2 = mainPlayer
  L1_2 = L1_2.tribe
  L1_2 = L1_2.gold
  L0_2 = L0_2(L1_2)
  L1_2 = L12_1
  L1_2 = L1_2.tribeGold
  L2_2 = L2_1
  L2_2 = L2_2.adjustNumber
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L1_2.text = L2_2
  L1_2 = L5_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "Donate"
  L3_2 = "Donate was successfull"
  L1_2(L2_2, L3_2)
end

didDonateCallback = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = print
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = L5_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = L12_1
  L2_2 = showSimpleDialog
  L3_2 = "Donate"
  L4_2 = A0_2
  L5_2 = nil
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Scenes.DonateOverlay"
    L2_3 = {}
    L3_3 = {}
    L4_3 = L1_2
    L3_3.delegate = L4_3
    L2_3.params = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L2_2(L3_2, L4_2, L5_2, L6_2)
end

failedDonateCallback = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L2_2 = L9_1
  L2_2 = L2_2.create
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.params
  if L2_2 ~= nil then
    L2_2 = A1_2.params
    L2_2 = L2_2.delegate
    L12_1 = L2_2
  end
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
      L1_3 = L10_1
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
    L0_3 = L10_1
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
  L6_2 = 280
  L7_2 = 295
  L8_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.strokeWidth = 2
  L4_2 = L2_2
  L3_2 = L2_2.setStrokeColor
  L5_2 = Constants
  L5_2 = L5_2.greenColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L4_2 = L2_2
  L3_2 = L2_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.whiteColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L2_2.x = 0
  L2_2.y = 0
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A0_2.contentGroup
  L5_2 = L2_1
  L5_2 = L5_2.Donate
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
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
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
  L4_2 = L8_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.width = 30
  L6_2.height = 30
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "BattleItems/close.png"
  L7_2 = L7_2 .. L8_2
  L6_2.imageName = L7_2
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = L11_1
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
  L5_2 = L8_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.width = 30
  L7_2.height = 30
  L8_2 = Constants
  L8_2 = L8_2.Path_Assets
  L9_2 = "BattleItems/help.png"
  L8_2 = L8_2 .. L9_2
  L7_2.imageName = L8_2
  
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
    L0_3 = L0_1
    L0_3 = L0_3.gotoScene
    L1_3 = "Scenes.HelpScene"
    L2_3 = {}
    L3_3 = {}
    L3_3.helpId = 27
    L3_3.previousScene = "Scenes.Home"
    L2_3.params = L3_3
    L0_3(L1_3, L2_3)
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
  L7_2 = L2_2.width
  L6_2 = L6_2 + L7_2
  L6_2 = L6_2 - 10
  L7_2 = L5_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L5_2.x = L6_2
  L6_2 = L3_2.y
  L5_2.y = L6_2
  L6_2 = display
  L6_2 = L6_2.newRoundedRect
  L7_2 = A0_2.contentGroup
  L8_2 = 0
  L9_2 = 0
  L10_2 = L2_2.width
  L10_2 = L10_2 - 20
  L11_2 = L2_2.height
  L11_2 = L11_2 - 60
  L12_2 = 3
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = L6_2
  L7_2 = L6_2.setFillColor
  L9_2 = Constants
  L9_2 = L9_2.lightBlueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L8_2 = L6_2
  L7_2 = L6_2.setStrokeColor
  L9_2 = Constants
  L9_2 = L9_2.blueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L6_2.strokeWidth = 1
  L7_2 = L2_2.x
  L6_2.x = L7_2
  L7_2 = L2_2.y
  L7_2 = L7_2 + 20
  L6_2.y = L7_2
  L7_2 = nil
  L8_2 = system
  L8_2 = L8_2.getInfo
  L9_2 = "build"
  L8_2 = L8_2(L9_2)
  if "2013.1137" < L8_2 then
    L8_2 = system
    L8_2 = L8_2.getInfo
    L9_2 = "platformName"
    L8_2 = L8_2(L9_2)
    if L8_2 ~= "Android" then
      L8_2 = L2_1
      L8_2 = L8_2.lang
      if L8_2 == "fa" then
        goto lbl_200
      end
    end
  end
  L8_2 = L2_1
  L8_2 = L8_2.lang
  if L8_2 == "ar" then
    ::lbl_200::
    L8_2 = {}
    L9_2 = A0_2.contentGroup
    L8_2.parent = L9_2
    L9_2 = L6_2.width
    L9_2 = L9_2 - 40
    L8_2.width = L9_2
    L9_2 = L2_1
    L9_2 = L9_2.Amount
    L10_2 = ":"
    L9_2 = L9_2 .. L10_2
    L8_2.text = L9_2
    L8_2.x = 0
    L8_2.y = 0
    L9_2 = Constants
    L9_2 = L9_2.fontForTitle
    L9_2 = L9_2()
    L8_2.font = L9_2
    L8_2.fontSize = 13
    L8_2.align = "right"
    L9_2 = display
    L9_2 = L9_2.newText
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L7_2 = L9_2
  else
    L8_2 = L2_1
    L8_2 = L8_2.lang
    if L8_2 ~= "fa" then
      L8_2 = L2_1
      L8_2 = L8_2.lang
      if L8_2 ~= "ar" then
        L8_2 = {}
        L9_2 = A0_2.contentGroup
        L8_2.parent = L9_2
        L9_2 = L6_2.width
        L9_2 = L9_2 - 40
        L8_2.width = L9_2
        L9_2 = L2_1
        L9_2 = L9_2.Amount
        L10_2 = ":"
        L9_2 = L9_2 .. L10_2
        L8_2.text = L9_2
        L8_2.x = 0
        L8_2.y = 0
        L9_2 = Constants
        L9_2 = L9_2.fontForTitle
        L9_2 = L9_2()
        L8_2.font = L9_2
        L8_2.fontSize = 13
        L8_2.align = "left"
        L9_2 = display
        L9_2 = L9_2.newText
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        L7_2 = L9_2
    end
    else
      L8_2 = display
      L8_2 = L8_2.newText
      L9_2 = A0_2.contentGroup
      L10_2 = L2_1
      L10_2 = L10_2.Amount
      L11_2 = ":"
      L10_2 = L10_2 .. L11_2
      L11_2 = 0
      L12_2 = 0
      L13_2 = Constants
      L13_2 = L13_2.fontForTitle
      L13_2 = L13_2()
      L14_2 = 13
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L7_2 = L8_2
    end
  end
  L9_2 = L7_2
  L8_2 = L7_2.setFillColor
  L10_2 = Constants
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L8_2 = L6_2.x
  L7_2.x = L8_2
  L8_2 = L6_2.y
  L9_2 = L6_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L8_2 = L8_2 + 5
  L9_2 = L7_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L7_2.y = L8_2
  L8_2 = display
  L8_2 = L8_2.newRoundedRect
  L9_2 = A0_2.contentGroup
  L10_2 = 0
  L11_2 = 0
  L12_2 = 200
  L13_2 = 40
  L14_2 = 10
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L10_2 = L8_2
  L9_2 = L8_2.setFillColor
  L11_2 = Constants
  L11_2 = L11_2.blueColor
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L11_2()
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L9_2 = L6_2.x
  L8_2.x = L9_2
  L9_2 = L7_2.y
  L9_2 = L9_2 + 35
  L8_2.y = L9_2
  L9_2 = native
  L9_2 = L9_2.newTextField
  L10_2 = L8_2.x
  L11_2 = L8_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 - L11_2
  L10_2 = L10_2 + 10
  L10_2 = L10_2 + 90
  L11_2 = L8_2.y
  L11_2 = L11_2 - 15
  L11_2 = L11_2 + 15
  L12_2 = 180
  L13_2 = 30
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  donateField = L9_2
  L9_2 = donateField
  L10_2 = textListener
  L9_2.userInput = L10_2
  L9_2 = donateField
  L10_2 = L9_2
  L9_2 = L9_2.addEventListener
  L11_2 = "userInput"
  L12_2 = textListener
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = donateField
  L9_2.inputType = "number"
  L9_2 = donateField
  L10_2 = Constants
  L10_2 = L10_2.Player_MinimumDonationAmount
  L9_2.text = L10_2
  L9_2 = donateField
  L9_2.isEditable = true
  L9_2 = A0_2.contentGroup
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = donateField
  L9_2(L10_2, L11_2)
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
        goto lbl_364
      end
    end
  end
  L10_2 = L2_1
  L10_2 = L10_2.lang
  if L10_2 == "ar" then
    ::lbl_364::
    L10_2 = {}
    L11_2 = A0_2.contentGroup
    L10_2.parent = L11_2
    L11_2 = L2_1
    L11_2 = L11_2["Donate description"]
    L10_2.text = L11_2
    L10_2.x = 0
    L10_2.y = 0
    L11_2 = L6_2.width
    L11_2 = L11_2 - 20
    L10_2.width = L11_2
    L10_2.height = 120
    L11_2 = Constants
    L11_2 = L11_2.fontForSubtitle
    L11_2 = L11_2()
    L10_2.font = L11_2
    L10_2.fontSize = 12
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
    L12_2 = L12_2["Donate description"]
    L13_2 = 0
    L14_2 = 0
    L15_2 = L6_2.width
    L15_2 = L15_2 - 20
    L16_2 = 120
    L17_2 = Constants
    L17_2 = L17_2.fontForSubtitle
    L17_2 = L17_2()
    L18_2 = 12
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L9_2 = L10_2
  end
  L11_2 = L9_2
  L10_2 = L9_2.setFillColor
  L12_2 = Constants
  L12_2 = L12_2.darkBlueColor
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L9_2.x = 0
  L10_2 = L8_2.y
  L10_2 = L10_2 + 115
  L9_2.y = L10_2
  L10_2 = L4_1
  L10_2 = L10_2.stringThousandCommaSeperated
  L11_2 = mainPlayer
  L11_2 = L11_2.tribe
  L11_2 = L11_2.gold
  L10_2 = L10_2(L11_2)
  L11_2 = L4_1
  L11_2 = L11_2.addKForLargeNumber
  L12_2 = L10_2
  L11_2 = L11_2(L12_2)
  L10_2 = L11_2
  L11_2 = L2_1
  L11_2 = L11_2.adjustNumber
  L12_2 = L10_2
  L11_2 = L11_2(L12_2)
  L10_2 = L11_2
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
        goto lbl_450
      end
    end
  end
  L12_2 = L2_1
  L12_2 = L12_2.lang
  if L12_2 == "ar" then
    ::lbl_450::
    L12_2 = {}
    L13_2 = A0_2.contentGroup
    L12_2.parent = L13_2
    L13_2 = L2_1
    L13_2 = L13_2["Tribe Gold"]
    L14_2 = " : "
    L15_2 = L10_2
    L13_2 = L13_2 .. L14_2 .. L15_2
    L12_2.text = L13_2
    L12_2.x = 0
    L12_2.y = 0
    L13_2 = L6_2.width
    L13_2 = L13_2 - 20
    L12_2.width = L13_2
    L12_2.height = 120
    L13_2 = Constants
    L13_2 = L13_2.fontForSubtitle
    L13_2 = L13_2()
    L12_2.font = L13_2
    L12_2.fontSize = 14
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
    L14_2 = L14_2["Tribe Gold"]
    L15_2 = " : "
    L16_2 = L10_2
    L14_2 = L14_2 .. L15_2 .. L16_2
    L15_2 = 0
    L16_2 = 0
    L17_2 = L6_2.width
    L17_2 = L17_2 - 20
    L18_2 = 120
    L19_2 = Constants
    L19_2 = L19_2.fontForSubtitle
    L19_2 = L19_2()
    L20_2 = 14
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L11_2 = L12_2
  end
  L13_2 = L11_2
  L12_2 = L11_2.setFillColor
  L14_2 = Constants
  L14_2 = L14_2.darkBlueColor
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L14_2()
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L12_2 = L2_1
  L12_2 = L12_2.adjustX
  L13_2 = L7_2.x
  L13_2 = L13_2 + 90
  L14_2 = -5
  L12_2 = L12_2(L13_2, L14_2)
  L11_2.x = L12_2
  L12_2 = L9_2.y
  L12_2 = L12_2 + 75
  L11_2.y = L12_2
  L12_2 = L4_1
  L12_2 = L12_2.stringThousandCommaSeperated
  L13_2 = mainPlayer
  L13_2 = L13_2.gold
  L12_2 = L12_2(L13_2)
  L13_2 = L4_1
  L13_2 = L13_2.addKForLargeNumber
  L14_2 = L12_2
  L13_2 = L13_2(L14_2)
  L12_2 = L13_2
  L13_2 = L2_1
  L13_2 = L13_2.adjustNumber
  L14_2 = L12_2
  L13_2 = L13_2(L14_2)
  L12_2 = L13_2
  L13_2 = nil
  L14_2 = system
  L14_2 = L14_2.getInfo
  L15_2 = "build"
  L14_2 = L14_2(L15_2)
  if "2013.1137" < L14_2 then
    L14_2 = system
    L14_2 = L14_2.getInfo
    L15_2 = "platformName"
    L14_2 = L14_2(L15_2)
    if L14_2 ~= "Android" then
      L14_2 = L2_1
      L14_2 = L14_2.lang
      if L14_2 == "fa" then
        goto lbl_547
      end
    end
  end
  L14_2 = L2_1
  L14_2 = L14_2.lang
  if L14_2 == "ar" then
    ::lbl_547::
    L14_2 = {}
    L15_2 = A0_2.contentGroup
    L14_2.parent = L15_2
    L15_2 = L2_1
    L15_2 = L15_2["Player Gold"]
    L16_2 = " : "
    L17_2 = L12_2
    L15_2 = L15_2 .. L16_2 .. L17_2
    L14_2.text = L15_2
    L14_2.x = 0
    L14_2.y = 0
    L15_2 = L6_2.width
    L15_2 = L15_2 - 20
    L14_2.width = L15_2
    L14_2.height = 120
    L15_2 = Constants
    L15_2 = L15_2.fontForSubtitle
    L15_2 = L15_2()
    L14_2.font = L15_2
    L14_2.fontSize = 14
    L14_2.align = "right"
    L15_2 = display
    L15_2 = L15_2.newText
    L16_2 = L14_2
    L15_2 = L15_2(L16_2)
    L13_2 = L15_2
  else
    L14_2 = display
    L14_2 = L14_2.newText
    L15_2 = A0_2.contentGroup
    L16_2 = L2_1
    L16_2 = L16_2["Player Gold"]
    L17_2 = " : "
    L18_2 = L12_2
    L16_2 = L16_2 .. L17_2 .. L18_2
    L17_2 = 0
    L18_2 = 0
    L19_2 = L6_2.width
    L19_2 = L19_2 - 20
    L20_2 = 120
    L21_2 = Constants
    L21_2 = L21_2.fontForSubtitle
    L21_2 = L21_2()
    L22_2 = 14
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L13_2 = L14_2
  end
  L15_2 = L13_2
  L14_2 = L13_2.setFillColor
  L16_2 = Constants
  L16_2 = L16_2.darkBlueColor
  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L16_2()
  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L14_2 = L2_1
  L14_2 = L14_2.adjustX
  L15_2 = L7_2.x
  L15_2 = L15_2 + 90
  L16_2 = -5
  L14_2 = L14_2(L15_2, L16_2)
  L13_2.x = L14_2
  L14_2 = L9_2.y
  L14_2 = L14_2 + 105
  L13_2.y = L14_2
  L14_2 = L8_1
  L15_2 = L14_2
  L14_2 = L14_2.new
  L16_2 = {}
  L17_2 = L2_1
  L17_2 = L17_2.Donate
  L16_2.label = L17_2
  L16_2.width = 100
  L16_2.height = 30
  L17_2 = Constants
  L17_2 = L17_2.Path_Assets
  L18_2 = "BattleItems/battle_outcome_button.png"
  L17_2 = L17_2 .. L18_2
  L16_2.imageName = L17_2
  L17_2 = didPressDonate
  L16_2.onRelease = L17_2
  L14_2 = L14_2(L15_2, L16_2)
  L15_2 = A0_2.contentGroup
  L16_2 = L15_2
  L15_2 = L15_2.insert
  L17_2 = L14_2.view
  L15_2(L16_2, L17_2)
  L14_2.x = 0
  L15_2 = L8_2.y
  L15_2 = L15_2 + 40
  L14_2.y = L15_2
end

create = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L9_1
  L4_2 = L4_2.show
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "did" then
    L4_2 = L6_1
    L4_2 = L4_2.logEvent
    L5_2 = "Donate Shown"
    L4_2(L5_2)
    L4_2 = donateField
    L4_2.isVisible = true
    L4_2 = "hideOverlay"
    _backAction = L4_2
  end
end

show = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L9_1
  L4_2 = L4_2.hide
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "will" then
    L4_2 = donateField
    L4_2.isVisible = false
    L4_2 = native
    L4_2 = L4_2.setKeyboardFocus
    L5_2 = nil
    L4_2(L5_2)
  end
end

hide = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = L9_1
  L4_2 = L3_2
  L3_2 = L3_2.destroy
  L5_2 = A0_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
end

destroy = L13_1
