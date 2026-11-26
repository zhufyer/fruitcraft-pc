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
L2_1 = "Models.Player"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "widget"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Utils.Analytics"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Utils.Toolbox"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Components.TDButtonView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Components.AudioManager"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Utils.GoogleConnection"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Views.ActivityIndicatorView"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "json"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Core.ParentStandardBaseOverlayClass"
L11_1 = L11_1(L12_1)
L12_1 = setmetatable
L13_1 = _M
L14_1 = L11_1
L12_1(L13_1, L14_1)
L12_1 = _M
L13_1 = _M
L12_1.__index = L13_1
L12_1 = _M
L13_1 = nil
L14_1 = nil

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2
  L2_2 = L11_1
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
  L2_2.strokeWidth = 2
  L4_2 = L2_2
  L3_2 = L2_2.setStrokeColor
  L5_2 = Constants
  L5_2 = L5_2.greenColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L4_2 = L2_2
  L3_2 = L2_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.whiteColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L2_2.x = 0
  L2_2.y = 0
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A0_2.contentGroup
  L5_2 = L2_1
  L5_2 = L5_2.Settings
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
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
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
  L4_2 = L6_1
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
  L5_2 = L6_1
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
  L8_2 = Constants
  L8_2 = L8_2.Path_Assets
  L9_2 = "BattleItems/help-pressed.png"
  L8_2 = L8_2 .. L9_2
  L7_2.overFile = L8_2
  
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
    L3_3.helpId = 4
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
  L6_2 = L6_2 / 2
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
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L8_2 = L6_2
  L7_2 = L6_2.setStrokeColor
  L9_2 = Constants
  L9_2 = L9_2.blueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L6_2.strokeWidth = 1
  L7_2 = L2_2.x
  L6_2.x = L7_2
  L7_2 = L2_2.y
  L7_2 = L7_2 + 20
  L6_2.y = L7_2
  L7_2 = display
  L7_2 = L7_2.newGroup
  L7_2 = L7_2()
  A0_2.internalContentGroup = L7_2
  L7_2 = A0_2.contentGroup
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = A0_2.internalContentGroup
  L7_2(L8_2, L9_2)
  L7_2 = L3_1
  L7_2 = L7_2.newScrollView
  L8_2 = {}
  L9_2 = L2_2.width
  L9_2 = L9_2 - 20
  L8_2.width = L9_2
  L9_2 = L2_2.height
  L9_2 = L9_2 - 60
  L8_2.height = L9_2
  L8_2.hideScrollBar = true
  L8_2.verticalScrollDisabled = false
  L8_2.horizontalScrollDisabled = true
  L8_2.scrollWidth = 0
  L8_2.scrollHeight = 0
  L8_2.bottomPadding = 30
  L9_2 = {}
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L13_2 = 0
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L9_2[4] = L13_2
  L8_2.backgroundColor = L9_2
  L7_2 = L7_2(L8_2)
  A0_2.scroller = L7_2
  L7_2 = A0_2.scroller
  L8_2 = L6_2.x
  L7_2.x = L8_2
  L7_2 = A0_2.scroller
  L8_2 = L6_2.y
  L7_2.y = L8_2
  L7_2 = A0_2.internalContentGroup
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = A0_2.scroller
  L7_2(L8_2, L9_2)
  L7_2 = todNative
  L7_2 = L7_2.crispSDK
  L8_2 = {}
  L8_2.operation = "Init"
  L9_2 = Constants
  L9_2 = L9_2.Crisp_Website_Id
  L8_2.websiteId = L9_2
  L7_2(L8_2)
  L7_2 = L6_1
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L10_2 = L2_1
  L10_2 = L10_2["Send Feedback"]
  L9_2.label = L10_2
  L9_2.width = 100
  L9_2.height = 30
  L10_2 = Constants
  L10_2 = L10_2.Path_Assets
  L11_2 = "BattleItems/battle_outcome_button.png"
  L10_2 = L10_2 .. L11_2
  L9_2.defaultFile = L10_2
  
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = todNative
    L0_3 = L0_3.crispSDK
    L1_3 = {}
    L1_3.operation = "SetProperties"
    L2_3 = Constants
    L2_3 = L2_3.Crisp_Website_Id
    L1_3.websiteId = L2_3
    L2_3 = tostring
    L3_3 = math
    L3_3 = L3_3.floor
    L4_3 = mainPlayer
    L4_3 = L4_3.id
    L3_3, L4_3 = L3_3(L4_3)
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.playerId = L2_3
    L2_3 = mainPlayer
    L2_3 = L2_3.name
    L1_3.nickName = L2_3
    L2_3 = L5_1
    L2_3 = L2_3.getAppVersion
    L2_3 = L2_3()
    L1_3.appVersion = L2_3
    L2_3 = system
    L2_3 = L2_3.getInfo
    L3_3 = "platformName"
    L2_3 = L2_3(L3_3)
    L1_3.platform = L2_3
    L2_3 = system
    L2_3 = L2_3.getInfo
    L3_3 = "model"
    L2_3 = L2_3(L3_3)
    L1_3.deviceModel = L2_3
    L2_3 = _storeType
    L1_3.market = L2_3
    L2_3 = tostring
    L3_3 = math
    L3_3 = L3_3.floor
    L4_3 = mainPlayer
    L4_3 = L4_3.level
    L3_3, L4_3 = L3_3(L4_3)
    L2_3 = L2_3(L3_3, L4_3)
    L1_3.level = L2_3
    L2_3 = L2_1
    L2_3 = L2_3.lang
    L1_3.locale = L2_3
    L0_3(L1_3)
    L0_3 = todNative
    L0_3 = L0_3.crispSDK
    L1_3 = {}
    L1_3.operation = "OpenChatBox"
    L2_3 = L2_1
    L2_3 = L2_3.lang
    L1_3.locale = L2_3
    L0_3(L1_3)
  end
  
  L9_2.onRelease = L10_2
  L7_2 = L7_2(L8_2, L9_2)
  L7_2.delegate = A0_2
  L8_2 = A0_2.scroller
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L7_2.view
  L8_2(L9_2, L10_2)
  L8_2 = L7_2.width
  L8_2 = L8_2 / 2
  L8_2 = 10 + L8_2
  L7_2.x = L8_2
  L8_2 = L7_2.height
  L8_2 = L8_2 / 2
  L8_2 = 25 + L8_2
  L7_2.y = L8_2
  L8_2 = L6_1
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = {}
  L11_2 = L2_1
  L11_2 = L11_2.Credits
  L10_2.label = L11_2
  L10_2.width = 100
  L10_2.height = 30
  L11_2 = Constants
  L11_2 = L11_2.Path_Assets
  L12_2 = "BattleItems/battle_outcome_button.png"
  L11_2 = L11_2 .. L12_2
  L10_2.defaultFile = L11_2
  
  function L11_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Scenes.CreditsOverlay"
    L0_3(L1_3)
  end
  
  L10_2.onRelease = L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L8_2.delegate = A0_2
  L9_2 = A0_2.scroller
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L8_2.view
  L9_2(L10_2, L11_2)
  L9_2 = L2_2.width
  L9_2 = L9_2 - 20
  L9_2 = L9_2 - 10
  L10_2 = L8_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 - L10_2
  L8_2.x = L9_2
  L9_2 = L7_2.height
  L9_2 = L9_2 / 2
  L9_2 = 25 + L9_2
  L8_2.y = L9_2
  L9_2 = display
  L9_2 = L9_2.newLine
  L10_2 = 10
  L11_2 = L8_2.y
  L11_2 = L11_2 + 30
  L12_2 = L2_2.width
  L12_2 = L12_2 - 20
  L12_2 = L12_2 - 10
  L13_2 = L8_2.y
  L13_2 = L13_2 + 30
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  L11_2 = L9_2
  L10_2 = L9_2.setStrokeColor
  L12_2 = Constants
  L12_2 = L12_2.blueColor
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L9_2.strokeWidth = 1
  L10_2 = A0_2.scroller
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L10_2 = display
  L10_2 = L10_2.newText
  L11_2 = L2_1
  L11_2 = L11_2["Background Music"]
  L12_2 = ":"
  L11_2 = L11_2 .. L12_2
  L12_2 = 0
  L13_2 = 0
  L14_2 = Constants
  L14_2 = L14_2.fontForTitle
  L14_2 = L14_2()
  L15_2 = 13
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L12_2 = L10_2
  L11_2 = L10_2.setFillColor
  L13_2 = Constants
  L13_2 = L13_2.darkBlueColor
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L13_2()
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L11_2 = L2_1
  L11_2 = L11_2.lang
  if L11_2 ~= "fa" then
    L11_2 = L2_1
    L11_2 = L11_2.lang
    if L11_2 ~= "ar" then
      goto lbl_318
    end
  end
  L11_2 = L2_2.width
  L11_2 = L11_2 - 35
  L12_2 = L10_2.width
  L12_2 = L12_2 / 2
  L11_2 = L11_2 - L12_2
  L10_2.x = L11_2
  goto lbl_322
  ::lbl_318::
  L11_2 = L10_2.width
  L11_2 = L11_2 / 2
  L11_2 = 15 + L11_2
  L10_2.x = L11_2
  ::lbl_322::
  L11_2 = L10_2.height
  L11_2 = L11_2 / 2
  L11_2 = 85 + L11_2
  L10_2.y = L11_2
  L11_2 = A0_2.scroller
  L12_2 = L11_2
  L11_2 = L11_2.insert
  L13_2 = L10_2
  L11_2(L12_2, L13_2)
  L11_2 = true
  L12_2 = mainPlayer
  L12_2 = L12_2.settings
  L12_2 = L12_2.bgMusicEnabled
  if L12_2 == false then
    L11_2 = false
  end
  L12_2 = L3_1
  L12_2 = L12_2.newSwitch
  L13_2 = {}
  L14_2 = L10_2.x
  L14_2 = L14_2 + 100
  L13_2.left = L14_2
  L14_2 = L10_2.y
  L14_2 = L14_2 - 16
  L13_2.top = L14_2
  L13_2.initialSwitchState = L11_2
  
  function L14_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = mainPlayer
    L2_3 = L1_3
    L1_3 = L1_3.setSettingForKey
    L3_3 = "bgMusicEnabled"
    L4_3 = A0_3.target
    L4_3 = L4_3.isOn
    L4_3 = not L4_3
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = mainPlayer
    L2_3 = L1_3
    L1_3 = L1_3.saveSettings
    L1_3(L2_3)
    L1_3 = log
    L2_3 = "Music is Enabled : "
    L3_3 = tostring
    L4_3 = mainPlayer
    L4_3 = L4_3.settings
    L4_3 = L4_3.bgMusicEnabled
    L3_3 = L3_3(L4_3)
    L2_3 = L2_3 .. L3_3
    L1_3(L2_3)
    L1_3 = A0_3.target
    L1_3 = L1_3.isOn
    if L1_3 == true then
      L1_3 = log
      L2_3 = "Music Stopped"
      L1_3(L2_3)
      L1_3 = L7_1
      L1_3 = L1_3.stopMusic
      L2_3 = Constants
      L2_3 = L2_3.Path_Assets
      L3_3 = "FC-bg-music.mp3"
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
      L1_3 = L7_1
      L1_3.musicEnabled = false
    else
      L1_3 = log
      L2_3 = "Music Started"
      L1_3(L2_3)
      L1_3 = L7_1
      L1_3.musicEnabled = true
      L1_3 = L7_1
      L1_3 = L1_3.playMusic
      L2_3 = Constants
      L2_3 = L2_3.Path_Assets
      L3_3 = "FC-bg-music.mp3"
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
    end
  end
  
  L13_2.onPress = L14_2
  L12_2 = L12_2(L13_2)
  L13_2 = A0_2.scroller
  L14_2 = L13_2
  L13_2 = L13_2.insert
  L15_2 = L12_2
  L13_2(L14_2, L15_2)
  L13_2 = L2_1
  L13_2 = L13_2.lang
  if L13_2 ~= "fa" then
    L13_2 = L2_1
    L13_2 = L13_2.lang
    if L13_2 ~= "ar" then
      goto lbl_366
    end
  end
  L13_2 = L10_2.x
  L13_2 = L13_2 - 120
  L12_2.x = L13_2
  ::lbl_366::
  L13_2 = display
  L13_2 = L13_2.newLine
  L14_2 = 10
  L15_2 = L10_2.y
  L15_2 = L15_2 + 30
  L16_2 = L2_2.width
  L16_2 = L16_2 - 20
  L16_2 = L16_2 - 10
  L17_2 = L10_2.y
  L17_2 = L17_2 + 30
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L15_2 = L13_2
  L14_2 = L13_2.setStrokeColor
  L16_2 = Constants
  L16_2 = L16_2.blueColor
  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L16_2()
  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L13_2.strokeWidth = 1
  L14_2 = A0_2.scroller
  L15_2 = L14_2
  L14_2 = L14_2.insert
  L16_2 = L13_2
  L14_2(L15_2, L16_2)
  L14_2 = nil
  L15_2 = system
  L15_2 = L15_2.getInfo
  L16_2 = "build"
  L15_2 = L15_2(L16_2)
  if "2013.1137" < L15_2 then
    L15_2 = system
    L15_2 = L15_2.getInfo
    L16_2 = "platformName"
    L15_2 = L15_2(L16_2)
    if L15_2 ~= "Android" then
      L15_2 = L2_1
      L15_2 = L15_2.lang
      if L15_2 == "fa" then
        goto lbl_408
      end
    end
  end
  L15_2 = L2_1
  L15_2 = L15_2.lang
  if L15_2 == "ar" then
    ::lbl_408::
    L15_2 = {}
    L16_2 = L2_1
    L16_2 = L16_2["Settings link help"]
    L15_2.text = L16_2
    L15_2.x = 0
    L15_2.y = 0
    L16_2 = L6_2.width
    L16_2 = L16_2 - 20
    L15_2.width = L16_2
    L15_2.height = 120
    L16_2 = Constants
    L16_2 = L16_2.fontForSubtitle
    L16_2 = L16_2()
    L15_2.font = L16_2
    L15_2.fontSize = 13
    L15_2.align = "right"
    L16_2 = display
    L16_2 = L16_2.newText
    L17_2 = L15_2
    L16_2 = L16_2(L17_2)
    L14_2 = L16_2
  else
    L15_2 = display
    L15_2 = L15_2.newText
    L16_2 = L2_1
    L16_2 = L16_2["Settings link help"]
    L17_2 = 0
    L18_2 = 0
    L19_2 = L6_2.width
    L19_2 = L19_2 - 20
    L20_2 = 120
    L21_2 = Constants
    L21_2 = L21_2.fontForSubtitle
    L21_2 = L21_2()
    L22_2 = 13
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L14_2 = L15_2
  end
  L16_2 = L14_2
  L15_2 = L14_2.setFillColor
  L17_2 = Constants
  L17_2 = L17_2.darkBlueColor
  L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L17_2()
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L15_2 = L2_2.width
  L15_2 = L15_2 - 20
  L15_2 = L15_2 / 2
  L14_2.x = L15_2
  L15_2 = L10_2.y
  L15_2 = L15_2 + 34
  L16_2 = L14_2.height
  L16_2 = L16_2 / 2
  L15_2 = L15_2 + L16_2
  L14_2.y = L15_2
  L15_2 = A0_2.scroller
  L16_2 = L15_2
  L15_2 = L15_2.insert
  L17_2 = L14_2
  L15_2(L16_2, L17_2)
  L15_2 = display
  L15_2 = L15_2.newText
  L16_2 = L2_1
  L16_2 = L16_2["Your link code is:"]
  L17_2 = 0
  L18_2 = 0
  L19_2 = Constants
  L19_2 = L19_2.fontForTitle
  L19_2 = L19_2()
  L20_2 = 13
  L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
  L17_2 = L15_2
  L16_2 = L15_2.setFillColor
  L18_2 = Constants
  L18_2 = L18_2.darkBlueColor
  L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L18_2()
  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L16_2 = L2_1
  L16_2 = L16_2.lang
  if L16_2 ~= "fa" then
    L16_2 = L2_1
    L16_2 = L16_2.lang
    if L16_2 ~= "ar" then
      goto lbl_496
    end
  end
  L16_2 = L2_2.width
  L16_2 = L16_2 - 20
  L16_2 = L16_2 - 15
  L17_2 = L15_2.width
  L17_2 = L17_2 / 2
  L16_2 = L16_2 - L17_2
  L15_2.x = L16_2
  goto lbl_500
  ::lbl_496::
  L16_2 = L15_2.width
  L16_2 = L16_2 / 2
  L16_2 = 15 + L16_2
  L15_2.x = L16_2
  ::lbl_500::
  L16_2 = L14_2.y
  L16_2 = L16_2 + 25
  L15_2.y = L16_2
  L16_2 = A0_2.scroller
  L17_2 = L16_2
  L16_2 = L16_2.insert
  L18_2 = L15_2
  L16_2(L17_2, L18_2)
  L16_2 = display
  L16_2 = L16_2.newRoundedRect
  L17_2 = 0
  L18_2 = 0
  L19_2 = 200
  L20_2 = 30
  L21_2 = 3
  L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
  L18_2 = L16_2
  L17_2 = L16_2.setFillColor
  L19_2 = Constants
  L19_2 = L19_2.blueColor
  L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L19_2()
  L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L17_2 = L2_2.width
  L17_2 = L17_2 - 20
  L17_2 = L17_2 / 2
  L16_2.x = L17_2
  L17_2 = L15_2.y
  L17_2 = L17_2 + 30
  L16_2.y = L17_2
  L17_2 = A0_2.scroller
  L18_2 = L17_2
  L17_2 = L17_2.insert
  L19_2 = L16_2
  L17_2(L18_2, L19_2)
  L17_2 = mainPlayer
  L17_2 = L17_2.restoreKey
  if L17_2 == nil then
    L17_2 = mainPlayer
    L17_2.restoreKey = ""
  end
  L17_2 = display
  L17_2 = L17_2.newText
  L18_2 = mainPlayer
  L18_2 = L18_2.restoreKey
  L19_2 = 0
  L20_2 = 0
  L21_2 = Constants
  L21_2 = L21_2.fontForSubtitle
  L21_2 = L21_2()
  L22_2 = 15
  L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
  L19_2 = L17_2
  L18_2 = L17_2.setFillColor
  L20_2 = Constants
  L20_2 = L20_2.darkBlueColor
  L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L20_2()
  L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L18_2 = L2_2.width
  L18_2 = L18_2 - 20
  L18_2 = L18_2 / 2
  L17_2.x = L18_2
  L18_2 = L16_2.y
  L17_2.y = L18_2
  L18_2 = A0_2.scroller
  L19_2 = L18_2
  L18_2 = L18_2.insert
  L20_2 = L17_2
  L18_2(L19_2, L20_2)
  L18_2 = display
  L18_2 = L18_2.newLine
  L19_2 = 10
  L20_2 = L17_2.y
  L20_2 = L20_2 + 30
  L21_2 = L2_2.width
  L21_2 = L21_2 - 20
  L21_2 = L21_2 - 10
  L22_2 = L17_2.y
  L22_2 = L22_2 + 30
  L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2)
  L20_2 = L18_2
  L19_2 = L18_2.setStrokeColor
  L21_2 = Constants
  L21_2 = L21_2.blueColor
  L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L21_2()
  L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L18_2.strokeWidth = 1
  L19_2 = A0_2.scroller
  L20_2 = L19_2
  L19_2 = L19_2.insert
  L21_2 = L18_2
  L19_2(L20_2, L21_2)
  L19_2 = L6_1
  L20_2 = L19_2
  L19_2 = L19_2.new
  L21_2 = {}
  L22_2 = L2_1
  L22_2 = L22_2["Change account"]
  L21_2.label = L22_2
  L21_2.width = 100
  L21_2.height = 30
  L21_2.fontSize = 10
  L22_2 = Constants
  L22_2 = L22_2.Path_Assets
  L23_2 = "BattleItems/battle_outcome_button.png"
  L22_2 = L22_2 .. L23_2
  L21_2.defaultFile = L22_2
  
  function L22_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Scenes.RestoreGameOverlay"
    L2_3 = {}
    L2_3.isModal = true
    L3_3 = {}
    L3_3.previousOverlay = "Scenes.SettingsOverlay"
    L2_3.params = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L21_2.onRelease = L22_2
  L19_2 = L19_2(L20_2, L21_2)
  L19_2.delegate = A0_2
  L20_2 = A0_2.scroller
  L21_2 = L20_2
  L20_2 = L20_2.insert
  L22_2 = L19_2.view
  L20_2(L21_2, L22_2)
  L20_2 = L19_2.width
  L20_2 = L20_2 / 2
  L20_2 = 10 + L20_2
  L19_2.x = L20_2
  L20_2 = L17_2.y
  L21_2 = L19_2.height
  L21_2 = L21_2 / 2
  L20_2 = L20_2 + L21_2
  L20_2 = L20_2 + 40
  L19_2.y = L20_2
  L20_2 = display
  L20_2 = L20_2.newLine
  L21_2 = 10
  L22_2 = L19_2.y
  L22_2 = L22_2 + 30
  L23_2 = L2_2.width
  L23_2 = L23_2 - 20
  L23_2 = L23_2 - 10
  L24_2 = L19_2.y
  L24_2 = L24_2 + 30
  L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2)
  L22_2 = L20_2
  L21_2 = L20_2.setStrokeColor
  L23_2 = Constants
  L23_2 = L23_2.blueColor
  L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L23_2()
  L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L20_2.strokeWidth = 1
  L21_2 = A0_2.scroller
  L22_2 = L21_2
  L21_2 = L21_2.insert
  L23_2 = L20_2
  L21_2(L22_2, L23_2)
  L21_2 = nil
  L22_2 = system
  L22_2 = L22_2.getInfo
  L23_2 = "build"
  L22_2 = L22_2(L23_2)
  if "2013.1137" < L22_2 then
    L22_2 = system
    L22_2 = L22_2.getInfo
    L23_2 = "platformName"
    L22_2 = L22_2(L23_2)
    if L22_2 ~= "Android" then
      L22_2 = L2_1
      L22_2 = L22_2.lang
      if L22_2 == "fa" then
        goto lbl_659
      end
    end
  end
  L22_2 = L2_1
  L22_2 = L22_2.lang
  if L22_2 == "ar" then
    ::lbl_659::
    L22_2 = {}
    L23_2 = L2_1
    L23_2 = L23_2.localizedString
    L24_2 = "You can change your at level"
    L25_2 = {}
    L26_2 = Constants
    L26_2 = L26_2.MinPlayerLevelForChangingName
    L25_2.level = L26_2
    L26_2 = Constants
    L26_2 = L26_2.PlayerChangeNameCostNectar
    L25_2.price = L26_2
    L23_2 = L23_2(L24_2, L25_2)
    L22_2.text = L23_2
    L22_2.x = 0
    L22_2.y = 0
    L23_2 = L6_2.width
    L23_2 = L23_2 - 20
    L22_2.width = L23_2
    L22_2.height = 120
    L23_2 = Constants
    L23_2 = L23_2.fontForSubtitle
    L23_2 = L23_2()
    L22_2.font = L23_2
    L22_2.fontSize = 13
    L22_2.align = "right"
    L23_2 = display
    L23_2 = L23_2.newText
    L24_2 = L22_2
    L23_2 = L23_2(L24_2)
    L21_2 = L23_2
  else
    L22_2 = display
    L22_2 = L22_2.newText
    L23_2 = L2_1
    L23_2 = L23_2.localizedString
    L24_2 = "You can change your at level"
    L25_2 = {}
    L26_2 = Constants
    L26_2 = L26_2.MinPlayerLevelForChangingName
    L25_2.level = L26_2
    L26_2 = Constants
    L26_2 = L26_2.PlayerChangeNameCostNectar
    L25_2.price = L26_2
    L23_2 = L23_2(L24_2, L25_2)
    L24_2 = 0
    L25_2 = 0
    L26_2 = L6_2.width
    L26_2 = L26_2 - 20
    L27_2 = 120
    L28_2 = Constants
    L28_2 = L28_2.fontForSubtitle
    L28_2 = L28_2()
    L29_2 = 13
    L22_2 = L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
    L21_2 = L22_2
  end
  L23_2 = L21_2
  L22_2 = L21_2.setFillColor
  L24_2 = Constants
  L24_2 = L24_2.darkBlueColor
  L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L24_2()
  L22_2(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L22_2 = L2_2.width
  L22_2 = L22_2 - 20
  L22_2 = L22_2 / 2
  L21_2.x = L22_2
  L22_2 = L20_2.y
  L22_2 = L22_2 + 10
  L23_2 = L21_2.height
  L23_2 = L23_2 / 2
  L22_2 = L22_2 + L23_2
  L21_2.y = L22_2
  L22_2 = A0_2.scroller
  L23_2 = L22_2
  L22_2 = L22_2.insert
  L24_2 = L21_2
  L22_2(L23_2, L24_2)
  L22_2 = L6_1
  L23_2 = L22_2
  L22_2 = L22_2.new
  L24_2 = {}
  L25_2 = L2_1
  L25_2 = L25_2["Change Name"]
  L24_2.label = L25_2
  L24_2.width = 100
  L24_2.height = 30
  L24_2.fontSize = 10
  L25_2 = Constants
  L25_2 = L25_2.Path_Assets
  L26_2 = "BattleItems/battle_outcome_button.png"
  L25_2 = L25_2 .. L26_2
  L24_2.defaultFile = L25_2
  
  function L25_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = mainPlayer
    L1_3 = L0_3
    L0_3 = L0_3.checkPlayerCurrency
    L2_3 = Constants
    L2_3 = L2_3.PlayerChangeNameCostNectar
    L3_3 = true
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.showOverlay
      L1_3 = "Scenes.ChangeNameOverlay"
      L0_3(L1_3)
    end
  end
  
  L24_2.onRelease = L25_2
  L22_2 = L22_2(L23_2, L24_2)
  L14_1 = L22_2
  L22_2 = L14_1
  L22_2.delegate = A0_2
  L22_2 = mainPlayer
  L22_2 = L22_2.level
  L23_2 = Constants
  L23_2 = L23_2.MinPlayerLevelForChangingName
  if L22_2 < L23_2 then
    L22_2 = L14_1
    L23_2 = L22_2
    L22_2 = L22_2.setEnabled
    L24_2 = false
    L22_2(L23_2, L24_2)
    L22_2 = L14_1
    L22_2 = L22_2.view
    L22_2.alpha = 0.5
  end
  L22_2 = A0_2.scroller
  L23_2 = L22_2
  L22_2 = L22_2.insert
  L24_2 = L14_1
  L24_2 = L24_2.view
  L22_2(L23_2, L24_2)
  L22_2 = L14_1
  L23_2 = L19_2.x
  L22_2.x = L23_2
  L22_2 = L14_1
  L23_2 = L19_2.y
  L24_2 = L19_2.height
  L24_2 = L24_2 / 2
  L23_2 = L23_2 + L24_2
  L23_2 = L23_2 + 60
  L24_2 = L14_1
  L24_2 = L24_2.height
  L24_2 = L24_2 / 2
  L23_2 = L23_2 + L24_2
  L22_2.y = L23_2
  L22_2 = display
  L22_2 = L22_2.newLine
  L23_2 = 10
  L24_2 = L14_1
  L24_2 = L24_2.y
  L24_2 = L24_2 + 30
  L25_2 = L2_2.width
  L25_2 = L25_2 - 20
  L25_2 = L25_2 - 10
  L26_2 = L14_1
  L26_2 = L26_2.y
  L26_2 = L26_2 + 30
  L22_2 = L22_2(L23_2, L24_2, L25_2, L26_2)
  L24_2 = L22_2
  L23_2 = L22_2.setStrokeColor
  L25_2 = Constants
  L25_2 = L25_2.blueColor
  L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L25_2()
  L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L22_2.strokeWidth = 1
  L23_2 = A0_2.scroller
  L24_2 = L23_2
  L23_2 = L23_2.insert
  L25_2 = L22_2
  L23_2(L24_2, L25_2)
  L23_2 = _isMyCountry
  if L23_2 then
    L23_2 = display
    L23_2 = L23_2.newText
    L24_2 = L2_1
    L24_2 = L24_2["Prefered Language:"]
    L25_2 = 0
    L26_2 = 0
    L27_2 = Constants
    L27_2 = L27_2.fontForTitle
    L27_2 = L27_2()
    L28_2 = 13
    L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2, L28_2)
    L25_2 = L23_2
    L24_2 = L23_2.setFillColor
    L26_2 = Constants
    L26_2 = L26_2.darkBlueColor
    L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L26_2()
    L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
    L24_2 = L2_1
    L24_2 = L24_2.lang
    if L24_2 ~= "fa" then
      L24_2 = L2_1
      L24_2 = L24_2.lang
      if L24_2 ~= "ar" then
        goto lbl_844
      end
    end
    L24_2 = L2_2.width
    L24_2 = L24_2 - 20
    L24_2 = L24_2 - 15
    L25_2 = L23_2.width
    L25_2 = L25_2 / 2
    L24_2 = L24_2 - L25_2
    L23_2.x = L24_2
    goto lbl_848
    ::lbl_844::
    L24_2 = L23_2.width
    L24_2 = L24_2 / 2
    L24_2 = 15 + L24_2
    L23_2.x = L24_2
    ::lbl_848::
    L24_2 = L14_1
    L24_2 = L24_2.y
    L24_2 = L24_2 + 40
    L25_2 = L23_2.height
    L25_2 = L25_2 / 2
    L24_2 = L24_2 + L25_2
    L23_2.y = L24_2
    L24_2 = A0_2.scroller
    L25_2 = L24_2
    L24_2 = L24_2.insert
    L26_2 = L23_2
    L24_2(L25_2, L26_2)
    L24_2 = L6_1
    L25_2 = L24_2
    L24_2 = L24_2.new
    L26_2 = {}
    L26_2.width = 100
    L26_2.height = 50
    L27_2 = Constants
    L27_2 = L27_2.Path_Assets
    L28_2 = "General/Flag_of_Persia.png"
    L27_2 = L27_2 .. L28_2
    L26_2.defaultFile = L27_2
    L27_2 = Constants
    L27_2 = L27_2.Path_Assets
    L28_2 = "General/Flag_of_Persia-p.png"
    L27_2 = L27_2 .. L28_2
    L26_2.overFile = L27_2
    
    function L27_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = L2_1
      L0_3 = L0_3.setLanguagePrefrence
      L1_3 = "fa"
      L0_3(L1_3)
      L0_3 = showSimpleDialog
      L1_3 = "Language"
      L2_3 = L2_1
      L2_3 = L2_3["Language change text"]
      L3_3 = "Quit"
      
      function L4_3()
        local L0_4, L1_4
        L0_4 = os
        L0_4 = L0_4.exit
        L0_4()
      end
      
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    
    L26_2.onRelease = L27_2
    L24_2 = L24_2(L25_2, L26_2)
    L24_2.delegate = A0_2
    L25_2 = A0_2.scroller
    L26_2 = L25_2
    L25_2 = L25_2.insert
    L27_2 = L24_2.view
    L25_2(L26_2, L27_2)
    L25_2 = L24_2.width
    L25_2 = L25_2 / 2
    L25_2 = 10 + L25_2
    L24_2.x = L25_2
    L25_2 = L23_2.y
    L26_2 = L24_2.height
    L26_2 = L26_2 / 2
    L25_2 = L25_2 + L26_2
    L25_2 = L25_2 + 20
    L24_2.y = L25_2
    L25_2 = L6_1
    L26_2 = L25_2
    L25_2 = L25_2.new
    L27_2 = {}
    L27_2.width = 100
    L27_2.height = 50
    L28_2 = Constants
    L28_2 = L28_2.Path_Assets
    L29_2 = "General/british-flag.png"
    L28_2 = L28_2 .. L29_2
    L27_2.defaultFile = L28_2
    L28_2 = Constants
    L28_2 = L28_2.Path_Assets
    L29_2 = "General/british-flag-p.png"
    L28_2 = L28_2 .. L29_2
    L27_2.overFile = L28_2
    
    function L28_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = L2_1
      L0_3 = L0_3.defaultLang
      if L0_3 == "ar" then
        L0_3 = L2_1
        L0_3 = L0_3.setLanguagePrefrence
        L1_3 = "ar"
        L0_3(L1_3)
      else
        L0_3 = L2_1
        L0_3 = L0_3.setLanguagePrefrence
        L1_3 = "en"
        L0_3(L1_3)
      end
      L0_3 = showSimpleDialog
      L1_3 = "Language"
      L2_3 = L2_1
      L2_3 = L2_3["Language change text"]
      L3_3 = "Quit"
      
      function L4_3()
        local L0_4, L1_4
        L0_4 = os
        L0_4 = L0_4.exit
        L0_4()
      end
      
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    
    L27_2.onRelease = L28_2
    L25_2 = L25_2(L26_2, L27_2)
    L25_2.delegate = A0_2
    L26_2 = A0_2.scroller
    L27_2 = L26_2
    L26_2 = L26_2.insert
    L28_2 = L25_2.view
    L26_2(L27_2, L28_2)
    L26_2 = L2_2.width
    L26_2 = L26_2 - 20
    L26_2 = L26_2 - 10
    L27_2 = L25_2.width
    L27_2 = L27_2 / 2
    L26_2 = L26_2 - L27_2
    L25_2.x = L26_2
    L26_2 = L23_2.y
    L27_2 = L25_2.height
    L27_2 = L27_2 / 2
    L26_2 = L26_2 + L27_2
    L26_2 = L26_2 + 20
    L25_2.y = L26_2
    L26_2 = display
    L26_2 = L26_2.newLine
    L27_2 = 10
    L28_2 = L25_2.y
    L28_2 = L28_2 + 30
    L29_2 = L2_2.width
    L29_2 = L29_2 - 20
    L29_2 = L29_2 - 10
    L30_2 = L25_2.y
    L30_2 = L30_2 + 30
    L26_2 = L26_2(L27_2, L28_2, L29_2, L30_2)
    L28_2 = L26_2
    L27_2 = L26_2.setStrokeColor
    L29_2 = Constants
    L29_2 = L29_2.blueColor
    L29_2, L30_2, L31_2 = L29_2()
    L27_2(L28_2, L29_2, L30_2, L31_2)
    L26_2.strokeWidth = 1
    L27_2 = A0_2.scroller
    L28_2 = L27_2
    L27_2 = L27_2.insert
    L29_2 = L26_2
    L27_2(L28_2, L29_2)
    L27_2 = L6_1
    L28_2 = L27_2
    L27_2 = L27_2.new
    L29_2 = {}
    L30_2 = L2_1
    L30_2 = L30_2["Connect to Google"]
    L29_2.label = L30_2
    L29_2.width = 100
    L29_2.height = 30
    L29_2.fontSize = 10
    L30_2 = Constants
    L30_2 = L30_2.Path_Assets
    L31_2 = "BattleItems/battle_outcome_button.png"
    L30_2 = L30_2 .. L31_2
    L29_2.defaultFile = L30_2
    
    function L30_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = require
      L1_3 = "Utils.Toolbox"
      L0_3 = L0_3(L1_3)
      
      function L1_3()
        local L0_4, L1_4, L2_4
        L0_4 = L8_1
        L0_4 = L0_4.startConnection
        L1_4 = false
        L2_4 = "Scenes.SettingsOverlay"
        L0_4(L1_4, L2_4)
      end
      
      L2_3 = L0_3.checkContactsPermission
      L3_3 = L1_3
      L4_3 = "Scenes.SettingsOverlay"
      L2_3(L3_3, L4_3)
    end
    
    L29_2.onRelease = L30_2
    L27_2 = L27_2(L28_2, L29_2)
    L13_1 = L27_2
    L27_2 = L13_1
    L27_2.delegate = A0_2
    L27_2 = A0_2.scroller
    L28_2 = L27_2
    L27_2 = L27_2.insert
    L29_2 = L13_1
    L29_2 = L29_2.view
    L27_2(L28_2, L29_2)
    L27_2 = L13_1
    L28_2 = L2_2.width
    L28_2 = L28_2 - 30
    L29_2 = L13_1
    L29_2 = L29_2.width
    L29_2 = L29_2 / 2
    L28_2 = L28_2 - L29_2
    L27_2.x = L28_2
    L27_2 = L13_1
    L28_2 = L19_2.y
    L27_2.y = L28_2
    L27_2 = mainPlayer
    L27_2 = L27_2.hasVerifiedEmail
    if L27_2 == true then
      L27_2 = system
      L27_2 = L27_2.getInfo
      L28_2 = "platformName"
      L27_2 = L27_2(L28_2)
      if L27_2 == "iPhone OS" then
        L27_2 = L13_1
        L28_2 = L27_2
        L27_2 = L27_2.setLabel
        L29_2 = L2_1
        L29_2 = L29_2["Disconnect Google"]
        L27_2(L28_2, L29_2)
      else
        L27_2 = system
        L27_2 = L27_2.getInfo
        L28_2 = "platformName"
        L27_2 = L27_2(L28_2)
        if L27_2 == "Android" then
          L27_2 = L13_1
          L28_2 = L27_2
          L27_2 = L27_2.setEnabled
          L29_2 = false
          L27_2(L28_2, L29_2)
          L27_2 = L13_1
          L27_2.alpha = 0.5
        end
      end
    end
  end
end

create = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L11_1
  L2_2 = L2_2.show
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = phase
  if L2_2 == "did" then
    L2_2 = L4_1
    L2_2 = L2_2.logEvent
    L3_2 = "Settings Scene Shown"
    L2_2(L3_2)
    L2_2 = "hideOverlay"
    _backAction = L2_2
  end
end

show = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L11_1
  L2_2 = L2_2.hide
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = phase
  if L2_2 == "will" then
    L2_2 = "exit"
    _backAction = L2_2
  end
end

hide = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L11_1
  L2_2 = L2_2.destroy
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.scroller
  L3_2 = L2_2
  L2_2 = L2_2.removeSelf
  L2_2(L3_2)
  A0_2.scroller = nil
  L2_2 = A0_2.internalContentGroup
  L3_2 = L2_2
  L2_2 = L2_2.removeSelf
  L2_2(L3_2)
  A0_2.internalContentGroup = nil
end

destroy = L15_1
