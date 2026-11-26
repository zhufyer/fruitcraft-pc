local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
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
L6_1 = "Components.TDButtonView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Core.ParentStandardBaseOverlayClass"
L6_1 = L6_1(L7_1)
L7_1 = setmetatable
L8_1 = _M
L9_1 = L6_1
L7_1(L8_1, L9_1)
L7_1 = _M
L8_1 = _M
L7_1.__index = L8_1
L7_1 = _M

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = L4_1
  L2_2 = L2_2.logEvent
  L3_2 = "New Install Overlay Shown"
  L2_2(L3_2)
  L2_2 = L6_1
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
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L4_2 = L2_2
  L3_2 = L2_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.whiteColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
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
  L5_2 = L2_1
  L5_2 = L5_2.Fruitcraft
  L6_2 = 0
  L7_2 = 0
  L8_2 = Constants
  L8_2 = L8_2.fontForTitle
  L8_2 = L8_2()
  L9_2 = 30
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = Constants
  L6_2 = L6_2.darkBlueColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L4_2 = L2_2.x
  L3_2.x = L4_2
  L4_2 = L2_2.height
  L4_2 = -L4_2
  L4_2 = L4_2 / 2
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
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2 = L4_2
  L5_2 = L4_2.setStrokeColor
  L7_2 = Constants
  L7_2 = L7_2.blueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L4_2.strokeWidth = 1
  L5_2 = L2_2.x
  L4_2.x = L5_2
  L5_2 = L2_2.y
  L5_2 = L5_2 + 15
  L4_2.y = L5_2
  L5_2 = nil
  L6_2 = L2_1
  L6_2 = L6_2.lang
  if L6_2 ~= "en" then
    L6_2 = system
    L6_2 = L6_2.getInfo
    L7_2 = "build"
    L6_2 = L6_2(L7_2)
    if L6_2 ~= "2013.1137" then
      goto lbl_118
    end
  end
  L6_2 = display
  L6_2 = L6_2.newText
  L7_2 = A0_2.contentGroup
  L8_2 = L2_1
  L8_2 = L8_2.welcome
  L9_2 = 0
  L10_2 = 0
  L11_2 = Constants
  L11_2 = L11_2.fontForTitle
  L11_2 = L11_2()
  L12_2 = 13
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = L6_2
  goto lbl_138
  ::lbl_118::
  L6_2 = {}
  L7_2 = A0_2.contentGroup
  L6_2.parent = L7_2
  L7_2 = L2_1
  L7_2 = L7_2.welcome
  L6_2.text = L7_2
  L6_2.x = 0
  L6_2.y = 0
  L7_2 = Constants
  L7_2 = L7_2.fontForTitle
  L7_2 = L7_2()
  L6_2.font = L7_2
  L6_2.fontSize = 13
  L6_2.align = "right"
  option = L6_2
  L6_2 = display
  L6_2 = L6_2.newText
  L7_2 = option
  L6_2 = L6_2(L7_2)
  L5_2 = L6_2
  ::lbl_138::
  L7_2 = L5_2
  L6_2 = L5_2.setFillColor
  L8_2 = Constants
  L8_2 = L8_2.darkBlueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2 = L2_1
  L6_2 = L6_2.adjustX
  L7_2 = L4_2.width
  L7_2 = -L7_2
  L7_2 = L7_2 / 2
  L7_2 = L7_2 + 15
  L8_2 = L5_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L6_2 = L6_2(L7_2)
  L5_2.x = L6_2
  L6_2 = L4_2.y
  L7_2 = L4_2.height
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 + 5
  L7_2 = L5_2.height
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L5_2.y = L6_2
  L6_2 = display
  L6_2 = L6_2.newLine
  L7_2 = A0_2.contentGroup
  L8_2 = L4_2.width
  L8_2 = -L8_2
  L8_2 = L8_2 / 2
  L8_2 = L8_2 + 10
  L9_2 = L5_2.y
  L9_2 = L9_2 + 20
  L10_2 = L4_2.width
  L10_2 = L10_2 / 2
  L10_2 = L10_2 - 10
  L11_2 = L5_2.y
  L11_2 = L11_2 + 20
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L8_2 = L6_2
  L7_2 = L6_2.setStrokeColor
  L9_2 = Constants
  L9_2 = L9_2.blueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2.strokeWidth = 1
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
        goto lbl_205
      end
    end
  end
  L8_2 = L2_1
  L8_2 = L8_2.lang
  if L8_2 == "ar" then
    ::lbl_205::
    L8_2 = {}
    L9_2 = A0_2.contentGroup
    L8_2.parent = L9_2
    L9_2 = L2_1
    L9_2 = L9_2["New install help"]
    L8_2.text = L9_2
    L8_2.x = 0
    L8_2.y = 0
    L9_2 = L4_2.width
    L9_2 = L9_2 - 20
    L8_2.width = L9_2
    L8_2.height = 120
    L9_2 = Constants
    L9_2 = L9_2.fontForSubtitle
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
    L8_2 = display
    L8_2 = L8_2.newText
    L9_2 = A0_2.contentGroup
    L10_2 = L2_1
    L10_2 = L10_2["New install help"]
    L11_2 = 0
    L12_2 = 0
    L13_2 = L4_2.width
    L13_2 = L13_2 - 20
    L14_2 = 120
    L15_2 = Constants
    L15_2 = L15_2.fontForSubtitle
    L15_2 = L15_2()
    L16_2 = 13
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L7_2 = L8_2
  end
  L9_2 = L7_2
  L8_2 = L7_2.setFillColor
  L10_2 = Constants
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L7_2.x = 0
  L8_2 = L5_2.y
  L8_2 = L8_2 + 40
  L9_2 = L7_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L7_2.y = L8_2
  L8_2 = L5_1
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = {}
  L11_2 = L2_1
  L11_2 = L11_2["New User"]
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
    L1_3 = "Scenes.NewProfileOverlay"
    L0_3(L1_3)
  end
  
  L10_2.onRelease = L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L8_2.delegate = A0_2
  L9_2 = A0_2.contentGroup
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L8_2.view
  L9_2(L10_2, L11_2)
  L9_2 = L4_2.width
  L9_2 = L9_2 / 2
  L10_2 = L8_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 - L10_2
  L9_2 = L9_2 - 20
  L8_2.x = L9_2
  L9_2 = L4_2.y
  L10_2 = L4_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L10_2 = L8_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 - L10_2
  L9_2 = L9_2 - 30
  L8_2.y = L9_2
  L9_2 = L5_1
  L10_2 = L9_2
  L9_2 = L9_2.new
  L11_2 = {}
  L12_2 = L2_1
  L12_2 = L12_2["Existing Player"]
  L11_2.label = L12_2
  L11_2.width = 100
  L11_2.height = 30
  L12_2 = Constants
  L12_2 = L12_2.Path_Assets
  L13_2 = "BattleItems/battle_outcome_button.png"
  L12_2 = L12_2 .. L13_2
  L11_2.defaultFile = L12_2
  
  function L12_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Scenes.RestoreGameOverlay"
    L0_3(L1_3)
  end
  
  L11_2.onRelease = L12_2
  L9_2 = L9_2(L10_2, L11_2)
  L9_2.delegate = A0_2
  L10_2 = A0_2.contentGroup
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = L9_2.view
  L10_2(L11_2, L12_2)
  L10_2 = L4_2.width
  L10_2 = -L10_2
  L10_2 = L10_2 / 2
  L11_2 = L9_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L10_2 = L10_2 + 20
  L9_2.x = L10_2
  L10_2 = L4_2.y
  L11_2 = L4_2.height
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L11_2 = L9_2.height
  L11_2 = L11_2 / 2
  L10_2 = L10_2 - L11_2
  L10_2 = L10_2 - 30
  L9_2.y = L10_2
end

create = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L6_1
  L4_2 = L4_2.show
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "did" then
    L4_2 = nil
    _backAction = L4_2
  end
end

show = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = L6_1
  L3_2 = L3_2.hide
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end

hide = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = L6_1
  L3_2 = L3_2.destroy
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end

destroy = L8_1
