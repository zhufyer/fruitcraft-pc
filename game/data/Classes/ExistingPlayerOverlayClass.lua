local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
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
L3_1 = "Components.TDButtonView"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Utils.GoogleConnection"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Tutorial.TutorialManager2"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Core.ParentStandardBaseOverlayClass"
L5_1 = L5_1(L6_1)
L6_1 = setmetatable
L7_1 = _M
L8_1 = L5_1
L6_1(L7_1, L8_1)
L6_1 = _M
L7_1 = _M
L6_1.__index = L7_1
L6_1 = _M
L7_1 = nil
L8_1 = nil
L9_1 = nil

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
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
  L2_2.strokeWidth = 2
  L4_2 = L2_2
  L3_2 = L2_2.setStrokeColor
  L5_2 = Constants
  L5_2 = L5_2.greenColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2 = L2_2
  L3_2 = L2_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.whiteColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L2_2.x = 0
  L2_2.y = 0
  L4_2 = L2_2
  L3_2 = L2_2.addEventListener
  L5_2 = "tap"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.addEventListener
  L5_2 = "touch"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A0_2.contentGroup
  L5_2 = L1_1
  L5_2 = L5_2.Fruitcraft
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
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
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
  L4_2 = display
  L4_2 = L4_2.newRoundedRect
  L5_2 = A0_2.contentGroup
  L6_2 = 0
  L7_2 = 0
  L8_2 = L2_2.width
  L8_2 = L8_2 - 20
  L9_2 = L2_2.height
  L9_2 = L9_2 - 60
  L10_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.lightBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = L4_2
  L5_2 = L4_2.setStrokeColor
  L7_2 = Constants
  L7_2 = L7_2.blueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2.strokeWidth = 1
  L5_2 = L2_2.x
  L4_2.x = L5_2
  L5_2 = L2_2.y
  L5_2 = L5_2 + 15
  L4_2.y = L5_2
  L5_2 = system
  L5_2 = L5_2.getInfo
  L6_2 = "build"
  L5_2 = L5_2(L6_2)
  if "2013.1137" < L5_2 then
    L5_2 = system
    L5_2 = L5_2.getInfo
    L6_2 = "platformName"
    L5_2 = L5_2(L6_2)
    if L5_2 ~= "Android" then
      L5_2 = L1_1
      L5_2 = L5_2.lang
      if L5_2 == "fa" then
        goto lbl_110
      end
    end
  end
  L5_2 = L1_1
  L5_2 = L5_2.lang
  if L5_2 == "ar" then
    ::lbl_110::
    L5_2 = {}
    L6_2 = A0_2.contentGroup
    L5_2.parent = L6_2
    L6_2 = L1_1
    L6_2 = L6_2["Existing Player Desc"]
    L5_2.text = L6_2
    L5_2.x = 0
    L5_2.y = 0
    L6_2 = L4_2.width
    L6_2 = L6_2 - 20
    L5_2.width = L6_2
    L5_2.height = 120
    L6_2 = Constants
    L6_2 = L6_2.fontForSubtitle
    L6_2 = L6_2()
    L5_2.font = L6_2
    L5_2.fontSize = 13
    L5_2.align = "right"
    L6_2 = display
    L6_2 = L6_2.newText
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L7_1 = L6_2
  else
    L5_2 = display
    L5_2 = L5_2.newText
    L6_2 = A0_2.contentGroup
    L7_2 = L1_1
    L7_2 = L7_2["Existing Player Desc"]
    L8_2 = 0
    L9_2 = 0
    L10_2 = L4_2.width
    L10_2 = L10_2 - 20
    L11_2 = 120
    L12_2 = Constants
    L12_2 = L12_2.fontForSubtitle
    L12_2 = L12_2()
    L13_2 = 13
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L7_1 = L5_2
  end
  L5_2 = L7_1
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = L7_1
  L5_2.x = 0
  L5_2 = L7_1
  L6_2 = L4_2.y
  L7_2 = L4_2.height
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 + 5
  L7_2 = L7_1
  L7_2 = L7_2.height
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L5_2.y = L6_2
  L5_2 = L2_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.width = 30
  L7_2.height = 30
  L8_2 = Constants
  L8_2 = L8_2.Path_Assets
  L9_2 = "BattleItems/close.png"
  L8_2 = L8_2 .. L9_2
  L7_2.defaultFile = L8_2
  
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = mainPlayer
    L1_3 = L0_3
    L0_3 = L0_3.setSettingForKey
    L2_3 = "showingRestoreButton"
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = mainPlayer
    L1_3 = L0_3
    L0_3 = L0_3.saveSettings
    L0_3(L1_3)
    L0_3 = L6_1
    L0_3 = L0_3.hideWithAnimation
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.getScene
    L1_3 = "Scenes.TutorialStartScene"
    L0_3 = L0_3(L1_3)
    L1_3 = L4_1
    L1_3 = L1_3.checkForTutorial
    L2_3 = "Scenes.TutorialStartScene"
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
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
  L6_2 = L6_2 + 10
  L7_2 = L5_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L5_2.x = L6_2
  L6_2 = L3_2.y
  L5_2.y = L6_2
  L6_2 = L2_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L9_2 = L1_1
  L9_2 = L9_2["Restore With RestorKey"]
  L8_2.label = L9_2
  L8_2.width = 100
  L8_2.height = 30
  L9_2 = Constants
  L9_2 = L9_2.Path_Assets
  L10_2 = "BattleItems/battle_outcome_button.png"
  L9_2 = L9_2 .. L10_2
  L8_2.defaultFile = L9_2
  
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Scenes.RestoreGameOverlay"
    L2_3 = {}
    L3_3 = {}
    L3_3.previousOverlay = "Scenes.ExistingPlayerOverlay"
    L2_3.params = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L8_2.onRelease = L9_2
  L6_2 = L6_2(L7_2, L8_2)
  L9_1 = L6_2
  L6_2 = L9_1
  L6_2.delegate = A0_2
  L6_2 = A0_2.contentGroup
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L9_1
  L8_2 = L8_2.view
  L6_2(L7_2, L8_2)
  L6_2 = L9_1
  L7_2 = L4_2.width
  L7_2 = -L7_2
  L7_2 = L7_2 / 2
  L8_2 = L9_1
  L8_2 = L8_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L7_2 = L7_2 + 20
  L6_2.x = L7_2
  L6_2 = L9_1
  L7_2 = L4_2.y
  L8_2 = L4_2.height
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L8_2 = L9_1
  L8_2 = L8_2.height
  L8_2 = L8_2 / 2
  L7_2 = L7_2 - L8_2
  L7_2 = L7_2 - 30
  L6_2.y = L7_2
  L6_2 = L2_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L9_2 = L1_1
  L9_2 = L9_2["Connect to Google"]
  L8_2.label = L9_2
  L8_2.width = 100
  L8_2.height = 30
  L9_2 = Constants
  L9_2 = L9_2.Path_Assets
  L10_2 = "BattleItems/battle_outcome_button.png"
  L9_2 = L9_2 .. L10_2
  L8_2.defaultFile = L9_2
  
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = require
    L1_3 = "Utils.Toolbox"
    L0_3 = L0_3(L1_3)
    
    function L1_3()
      local L0_4, L1_4, L2_4
      L0_4 = L3_1
      L0_4 = L0_4.startConnection
      L1_4 = true
      L2_4 = "Scenes.ExistingPlayerOverlay"
      L0_4(L1_4, L2_4)
    end
    
    L2_3 = L0_3.checkContactsPermission
    L3_3 = L1_3
    L4_3 = "Scenes.ExistingPlayerOverlay"
    L2_3 = L2_3(L3_3, L4_3)
    if L2_3 == -1 then
      L3_3 = showSimpleDialog
      L4_3 = "Not Supported"
      L5_3 = "Feature is not supported on your device"
      L6_3 = nil
      
      function L7_3()
        local L0_4, L1_4
        L0_4 = L0_1
        L0_4 = L0_4.showOverlay
        L1_4 = "Scenes.ExistingPlayerOverlay"
        L0_4(L1_4)
      end
      
      L3_3(L4_3, L5_3, L6_3, L7_3)
    end
  end
  
  L8_2.onRelease = L9_2
  L6_2 = L6_2(L7_2, L8_2)
  L8_1 = L6_2
  L6_2 = L8_1
  L6_2.delegate = A0_2
  L6_2 = A0_2.contentGroup
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L8_1
  L8_2 = L8_2.view
  L6_2(L7_2, L8_2)
  L6_2 = L8_1
  L7_2 = L4_2.width
  L7_2 = L7_2 / 2
  L8_2 = L8_1
  L8_2 = L8_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 - L8_2
  L7_2 = L7_2 - 20
  L6_2.x = L7_2
  L6_2 = L8_1
  L7_2 = L4_2.y
  L8_2 = L4_2.height
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L8_2 = L8_1
  L8_2 = L8_2.height
  L8_2 = L8_2 / 2
  L7_2 = L7_2 - L8_2
  L7_2 = L7_2 - 30
  L6_2.y = L7_2
end

create = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L5_1
  L2_2 = L2_2.show
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    L2_2 = _storeType
    if L2_2 == "appstore" then
      L2_2 = mainPlayer
      L2_2 = L2_2.canUseVitrin
      if L2_2 ~= true then
        L2_2 = L7_1
        L3_2 = L1_1
        L3_2 = L3_2["Existing Player Desc 3"]
        L2_2.text = L3_2
        L2_2 = L8_1
        L3_2 = L2_2
        L2_2 = L2_2.setEnabled
        L4_2 = false
        L2_2(L3_2, L4_2)
        L2_2 = L8_1
        L2_2.alpha = 0
        L2_2 = L9_1
        L2_2.x = 0
    end
    else
      L2_2 = A1_2.params
      if L2_2 then
        L2_2 = A1_2.params
        L2_2 = L2_2.mode
        if L2_2 == "failure" then
          L2_2 = L7_1
          L3_2 = L1_1
          L3_2 = L3_2["Existing Player Desc 2"]
          L2_2.text = L3_2
          L2_2 = L8_1
          L3_2 = L2_2
          L2_2 = L2_2.setEnabled
          L4_2 = false
          L2_2(L3_2, L4_2)
          L2_2 = L8_1
          L2_2.alpha = 0.5
      end
      else
        L2_2 = L7_1
        L3_2 = L1_1
        L3_2 = L3_2["Existing Player Desc"]
        L2_2.text = L3_2
        L2_2 = L8_1
        L3_2 = L2_2
        L2_2 = L2_2.setEnabled
        L4_2 = true
        L2_2(L3_2, L4_2)
      end
    end
    L2_2 = nil
    _backAction = L2_2
  end
end

show = L10_1
