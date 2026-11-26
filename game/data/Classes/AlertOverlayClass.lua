local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
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
L4_1 = "Constants"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "widget"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Components.TDButtonView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.EffectsManager"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Utils.Toolbox"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Core.ParentStandardBaseOverlayClass"
L8_1 = L8_1(L9_1)
L9_1 = setmetatable
L10_1 = _M
L11_1 = L8_1
L9_1(L10_1, L11_1)
L9_1 = _M
L10_1 = _M
L9_1.__index = L10_1
L9_1 = _M

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = L8_1
  L2_2 = L2_2.create
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = assert
  L3_2 = A1_2.params
  if L3_2 then
    L3_2 = A1_2.params
    L3_2 = L3_2.text
    if L3_2 then
      L3_2 = A1_2.params
      L3_2 = L3_2.title
    end
  end
  L4_2 = "Params needs to supplied, it should include title, text, (optional) buttonText"
  L2_2(L3_2, L4_2)
  L2_2 = display
  L2_2 = L2_2.newRect
  L3_2 = A0_2.contentGroup
  L4_2 = 0
  L5_2 = 0
  L6_2 = 570
  L7_2 = 360
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L4_2 = L2_2
  L3_2 = L2_2.setFillColor
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0.47058823529412
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
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
  L3_2 = A1_2.params
  L3_2 = L3_2.bgWidth
  if not L3_2 then
    L3_2 = 260
  end
  L4_2 = A1_2.params
  L4_2 = L4_2.bgHeight
  if not L4_2 then
    L4_2 = 180
  end
  L5_2 = display
  L5_2 = L5_2.newRoundedRect
  L6_2 = A0_2.contentGroup
  L7_2 = 0
  L8_2 = 0
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = 3
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = L5_2
  L6_2 = L5_2.setFillColor
  L8_2 = L3_1
  L8_2 = L8_2.lightBlueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L7_2 = L5_2
  L6_2 = L5_2.setStrokeColor
  L8_2 = L3_1
  L8_2 = L8_2.blueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L5_2.strokeWidth = 2
  L5_2.x = 0
  L5_2.y = 0
  L6_2 = display
  L6_2 = L6_2.newText
  L7_2 = A0_2.contentGroup
  L8_2 = L2_1
  L9_2 = A1_2.params
  L9_2 = L9_2.title
  L8_2 = L8_2[L9_2]
  L9_2 = 0
  L10_2 = 0
  L11_2 = L3_1
  L11_2 = L11_2.fontForTitle
  L11_2 = L11_2()
  L12_2 = 13
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = L6_2
  L7_2 = L6_2.setFillColor
  L9_2 = L3_1
  L9_2 = L9_2.darkBlueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L7_2 = L5_2.x
  L6_2.x = L7_2
  L7_2 = L5_2.y
  L8_2 = L5_2.height
  L8_2 = L8_2 / 2
  L7_2 = L7_2 - L8_2
  L7_2 = L7_2 + 8
  L8_2 = L6_2.height
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L6_2.y = L7_2
  L7_2 = display
  L7_2 = L7_2.newLine
  L8_2 = A0_2.contentGroup
  L9_2 = L5_2.width
  L9_2 = -L9_2
  L9_2 = L9_2 / 2
  L9_2 = L9_2 + 10
  L10_2 = L6_2.y
  L10_2 = L10_2 + 20
  L11_2 = L5_2.width
  L11_2 = L11_2 / 2
  L11_2 = L11_2 - 10
  L12_2 = L6_2.y
  L12_2 = L12_2 + 20
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L9_2 = L7_2
  L8_2 = L7_2.setStrokeColor
  L10_2 = L3_1
  L10_2 = L10_2.blueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L7_2.strokeWidth = 1
  L8_2 = A1_2.params
  L8_2 = L8_2.imageName
  if L8_2 then
    L8_2 = display
    L8_2 = L8_2.newImage
    L9_2 = A0_2.contentGroup
    L10_2 = L3_1
    L10_2 = L10_2.Path_Assets
    L11_2 = A1_2.params
    L11_2 = L11_2.imageName
    L10_2 = L10_2 .. L11_2
    L8_2 = L8_2(L9_2, L10_2)
    dialogImage = L8_2
    L8_2 = dialogImage
    L8_2.y = -5
    L8_2 = L7_1
    L8_2 = L8_2.fitImage
    L9_2 = dialogImage
    L10_2 = L5_2.width
    L10_2 = L10_2 - 20
    L11_2 = L5_2.height
    L11_2 = L11_2 - 100
    L12_2 = false
    L8_2(L9_2, L10_2, L11_2, L12_2)
  else
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
          goto lbl_170
        end
      end
    end
    L9_2 = L2_1
    L9_2 = L9_2.lang
    if L9_2 == "ar" then
      ::lbl_170::
      L9_2 = {}
      L10_2 = A0_2.contentGroup
      L9_2.parent = L10_2
      L10_2 = L2_1
      L11_2 = A1_2.params
      L11_2 = L11_2.text
      L10_2 = L10_2[L11_2]
      L9_2.text = L10_2
      L9_2.x = 0
      L9_2.y = 0
      L10_2 = L5_2.width
      L10_2 = L10_2 - 20
      L9_2.width = L10_2
      L9_2.height = 120
      L10_2 = L3_1
      L10_2 = L10_2.fontForSubtitle
      L10_2 = L10_2()
      L9_2.font = L10_2
      L9_2.fontSize = 13
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
      L11_2 = L2_1
      L12_2 = A1_2.params
      L12_2 = L12_2.text
      L11_2 = L11_2[L12_2]
      L12_2 = 0
      L13_2 = 0
      L14_2 = L5_2.width
      L14_2 = L14_2 - 20
      L15_2 = 120
      L16_2 = L3_1
      L16_2 = L16_2.fontForSubtitle
      L16_2 = L16_2()
      L17_2 = 13
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L8_2 = L9_2
    end
    L10_2 = L8_2
    L9_2 = L8_2.setFillColor
    L11_2 = L3_1
    L11_2 = L11_2.darkBlueColor
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2()
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L9_2 = L5_2.x
    L8_2.x = L9_2
    L9_2 = L6_2.y
    L9_2 = L9_2 + 20
    L10_2 = L8_2.height
    L10_2 = L10_2 / 2
    L9_2 = L9_2 + L10_2
    L9_2 = L9_2 + 3
    L8_2.y = L9_2
  end
  L8_2 = A1_2.params
  L8_2 = L8_2.buttonText
  if not L8_2 then
    L8_2 = "OK"
  end
  L9_2 = L2_1
  L8_2 = L9_2[L8_2]
  L9_2 = nil
  L10_2 = nil
  L11_2 = A1_2.params
  L11_2 = L11_2.buttonText2
  if L11_2 ~= nil then
    L11_2 = L2_1
    L12_2 = A1_2.params
    L12_2 = L12_2.buttonText2
    L9_2 = L11_2[L12_2]
    L11_2 = A1_2.params
    L10_2 = L11_2.action2
  end
  L11_2 = {}
  L12_2 = L3_1
  L12_2 = L12_2.Path_Assets
  L13_2 = "BattleItems/battle_outcome_button.png"
  L12_2 = L12_2 .. L13_2
  L11_2.imageName = L12_2
  L11_2.width = 100
  L11_2.height = 30
  L11_2.id = "Done Button"
  L11_2.label = L8_2
  L12_2 = L5_1
  L13_2 = L12_2
  L12_2 = L12_2.new
  L14_2 = L11_2
  L12_2 = L12_2(L13_2, L14_2)
  
  function L13_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = goBack
    L2_3 = A0_2
    L3_3 = A1_2
    L3_3 = L3_3.params
    L3_3 = L3_3.action
    L1_3(L2_3, L3_3)
  end
  
  L12_2.onRelease = L13_2
  L13_2 = A0_2.contentGroup
  L14_2 = L13_2
  L13_2 = L13_2.insert
  L15_2 = L12_2.view
  L13_2(L14_2, L15_2)
  L13_2 = A1_2.params
  L13_2 = L13_2.action
  A0_2.action = L13_2
  if L9_2 then
    L13_2 = {}
    L14_2 = L3_1
    L14_2 = L14_2.Path_Assets
    L15_2 = "BattleItems/battle_outcome_button.png"
    L14_2 = L14_2 .. L15_2
    L13_2.imageName = L14_2
    L13_2.width = 100
    L13_2.height = 30
    L13_2.id = "Other Button"
    L13_2.label = L9_2
    L14_2 = L5_1
    L15_2 = L14_2
    L14_2 = L14_2.new
    L16_2 = L13_2
    L14_2 = L14_2(L15_2, L16_2)
    
    function L15_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = goBack
      L2_3 = A0_2
      L3_3 = L10_2
      L1_3(L2_3, L3_3)
    end
    
    L14_2.onRelease = L15_2
    L15_2 = A0_2.contentGroup
    L16_2 = L15_2
    L15_2 = L15_2.insert
    L17_2 = L14_2.view
    L15_2(L16_2, L17_2)
    L15_2 = L14_2.width
    L15_2 = -L15_2
    L15_2 = L15_2 / 2
    L15_2 = L15_2 - 10
    L14_2.x = L15_2
    L15_2 = L5_2.y
    L16_2 = L5_2.height
    L16_2 = L16_2 / 2
    L15_2 = L15_2 + L16_2
    L16_2 = L12_2.height
    L16_2 = L16_2 / 2
    L15_2 = L15_2 - L16_2
    L15_2 = L15_2 - 15
    L14_2.y = L15_2
    L15_2 = L12_2.width
    L15_2 = L15_2 / 2
    L15_2 = L15_2 + 10
    L12_2.x = L15_2
    L15_2 = L5_2.y
    L16_2 = L5_2.height
    L16_2 = L16_2 / 2
    L15_2 = L15_2 + L16_2
    L16_2 = L12_2.height
    L16_2 = L16_2 / 2
    L15_2 = L15_2 - L16_2
    L15_2 = L15_2 - 15
    L12_2.y = L15_2
    L15_2 = A1_2.params
    L15_2 = L15_2.isTutorial
    if L15_2 then
      L16_2 = L14_2
      L15_2 = L14_2.setEnabled
      L17_2 = false
      L15_2(L16_2, L17_2)
      L15_2 = L14_2.view
      L15_2.alpha = 0.5
    end
  else
    L12_2.x = 0
    L13_2 = L5_2.y
    L14_2 = L5_2.height
    L14_2 = L14_2 / 2
    L13_2 = L13_2 + L14_2
    L14_2 = L12_2.height
    L14_2 = L14_2 / 2
    L13_2 = L13_2 - L14_2
    L13_2 = L13_2 - 15
    L12_2.y = L13_2
  end
  L13_2 = A1_2.params
  L13_2 = L13_2.isTutorial
  if L13_2 then
    L13_2 = L6_1
    L13_2 = L13_2.pointAtObjectInView
    L14_2 = L12_2.view
    L15_2 = A0_2.contentGroup
    L16_2 = L12_2.view
    L16_2 = L16_2.x
    L17_2 = L12_2.view
    L17_2 = L17_2.y
    L13_2(L14_2, L15_2, L16_2, L17_2)
  end
  L13_2 = "hideOverlay"
  _backAction = L13_2
end

create = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L2_2 = L9_1
    L2_2 = L2_2.hideWithAnimation
    L3_2 = A0_2
    L2_2(L3_2)
    L2_2 = A1_2
    L2_2()
  else
    L2_2 = L9_1
    L2_2 = L2_2.hideWithAnimation
    L3_2 = A0_2
    L2_2(L3_2)
  end
end

goBack = L10_1
