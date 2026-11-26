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
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "widget"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Constants"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Utils.Toolbox"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Components.TDButtonView"
L5_1 = L5_1(L6_1)
L6_1 = true
L7_1 = nil
L8_1 = false
L9_1 = require
L10_1 = "Core.ParentStandardBaseOverlayClass"
L9_1 = L9_1(L10_1)
L10_1 = setmetatable
L11_1 = _M
L12_1 = L9_1
L10_1(L11_1, L12_1)
L10_1 = _M
L11_1 = _M
L10_1.__index = L11_1
L10_1 = _M

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = L9_1
  L2_2 = L2_2.create
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.params
  L2_2 = L2_2.description
  if not L2_2 then
    L2_2 = "desc not provided"
  end
  A0_2.description = L2_2
  L2_2 = A1_2.params
  L2_2 = L2_2.image
  if not L2_2 then
    L2_2 = L3_1
    L2_2 = L2_2.Path_MissingImage
  end
  A0_2.image = L2_2
  L2_2 = A1_2.params
  L2_2 = L2_2.imageWidth
  if not L2_2 then
    L2_2 = 178
  end
  A0_2.imageWidth = L2_2
  L2_2 = A1_2.params
  L2_2 = L2_2.imageHeight
  if not L2_2 then
    L2_2 = 250
  end
  A0_2.imageHeight = L2_2
  L2_2 = A1_2.params
  L2_2 = L2_2.title
  if not L2_2 then
    L2_2 = L1_1
    L2_2 = L2_2.warning
  end
  A0_2.title = L2_2
  L2_2 = A1_2.params
  L2_2 = L2_2.goldAmount
  if L2_2 then
    L2_2 = A1_2.params
    L2_2 = L2_2.goldAmount
    A0_2.goldAmount = L2_2
  end
  L2_2 = A1_2.params
  L2_2 = L2_2.textFieldObject
  if L2_2 then
    L2_2 = A1_2.params
    L2_2 = L2_2.textFieldObject
    A0_2.textFieldObject = L2_2
  end
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
  L2_2.isHitTestable = true
  L4_2 = L2_2
  L3_2 = L2_2.addEventListener
  L5_2 = "tap"
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L6_1
    if L0_3 then
      L0_3 = L8_1
      if L0_3 == true then
        L0_3 = log3
        L1_3 = "hiding overlay"
        L0_3(L1_3)
        L0_3 = L10_1
        L0_3 = L0_3.hideWithAnimation
        L1_3 = A0_2
        L0_3(L1_3)
        L0_3 = A1_2
        L0_3 = L0_3.params
        L0_3 = L0_3.preScene
        if L0_3 then
          L0_3 = L0_1
          L0_3 = L0_3.getScene
          L1_3 = "Scenes."
          L2_3 = A1_2
          L2_3 = L2_3.params
          L2_3 = L2_3.preScene
          L1_3 = L1_3 .. L2_3
          L0_3 = L0_3(L1_3)
          L2_3 = L0_3
          L1_3 = L0_3.show
          L3_3 = {}
          L3_3.phase = "did"
          L1_3(L2_3, L3_3)
        end
      end
    end
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
  L3_2 = L3_2.newRoundedRect
  L4_2 = A0_2.contentGroup
  L5_2 = 0
  L6_2 = 0
  L7_2 = 320
  L8_2 = 295
  L9_2 = 3
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2.strokeWidth = 2
  L5_2 = L3_2
  L4_2 = L3_2.setStrokeColor
  L6_2 = L3_1
  L6_2 = L6_2.greenColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = L3_1
  L6_2 = L6_2.whiteColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L3_2.x = 0
  L3_2.y = 0
  L5_2 = L3_2
  L4_2 = L3_2.addEventListener
  L6_2 = "touch"
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = L3_2
  L4_2 = L3_2.addEventListener
  L6_2 = "tap"
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = A0_2.contentGroup
  L6_2 = A0_2.title
  L7_2 = 0
  L8_2 = 0
  L9_2 = L3_1
  L9_2 = L9_2.fontForTitle
  L9_2 = L9_2()
  L10_2 = 20
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = L3_1
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
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
  L5_2 = L5_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.width = 30
  L7_2.height = 30
  L8_2 = L3_1
  L8_2 = L8_2.Path_Assets
  L9_2 = "BattleItems/close.png"
  L8_2 = L8_2 .. L9_2
  L7_2.defaultFile = L8_2
  L8_2 = L3_1
  L8_2 = L8_2.Path_Assets
  L9_2 = "BattleItems/close-pressed.png"
  L8_2 = L8_2 .. L9_2
  L7_2.overFile = L8_2
  
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L6_1
    if L0_3 then
      L0_3 = L8_1
      if L0_3 == true then
        L0_3 = log3
        L1_3 = "hiding overlay from button"
        L0_3(L1_3)
        L0_3 = L10_1
        L0_3 = L0_3.hideWithAnimation
        L1_3 = A0_2
        L0_3(L1_3)
        L0_3 = A1_2
        L0_3 = L0_3.params
        L0_3 = L0_3.preScene
        if L0_3 then
          L0_3 = L0_1
          L0_3 = L0_3.getScene
          L1_3 = "Scenes."
          L2_3 = A1_2
          L2_3 = L2_3.params
          L2_3 = L2_3.preScene
          L1_3 = L1_3 .. L2_3
          L0_3 = L0_3(L1_3)
          L2_3 = L0_3
          L1_3 = L0_3.show
          L3_3 = {}
          L3_3.phase = "did"
          L1_3(L2_3, L3_3)
        end
      end
    end
    L0_3 = true
    return L0_3
  end
  
  L7_2.onRelease = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L7_1 = L5_2
  L5_2 = display
  L5_2 = L5_2.newRoundedRect
  L6_2 = 0
  L7_2 = 0
  L8_2 = L3_2.width
  L8_2 = L8_2 - 15
  L9_2 = L3_2.height
  L9_2 = L9_2 - 95
  L10_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L3_2.x
  L5_2.x = L6_2
  L6_2 = L3_2.height
  L6_2 = -L6_2
  L6_2 = L6_2 / 2
  L6_2 = L6_2 + 50
  L7_2 = L3_2.height
  L7_2 = L7_2 - 95
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L5_2.y = L6_2
  L7_2 = L5_2
  L6_2 = L5_2.setFillColor
  L8_2 = L3_1
  L8_2 = L8_2.lightBlueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L5_2.strokeWidth = 3
  L7_2 = L5_2
  L6_2 = L5_2.setStrokeColor
  L8_2 = L3_1
  L8_2 = L8_2.darkBlueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L6_2 = A0_2.contentGroup
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2.contentGroup
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L7_1
  L8_2 = L8_2.view
  L6_2(L7_2, L8_2)
  L6_2 = L7_1
  L6_2.delegate = A0_2
  L6_2 = L7_1
  L7_2 = L3_2.width
  L7_2 = -L7_2
  L7_2 = L7_2 / 2
  L7_2 = L7_2 + 10
  L8_2 = L7_1
  L8_2 = L8_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L6_2.x = L7_2
  L6_2 = L7_1
  L7_2 = L4_2.y
  L6_2.y = L7_2
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = A0_2.contentGroup
  L8_2 = A0_2.image
  L9_2 = A0_2.imageWidth
  L10_2 = A0_2.imageHeight
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L3_2.x
  L8_2 = L3_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 - L8_2
  L7_2 = L7_2 + 20
  L8_2 = L6_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L6_2.x = L7_2
  L7_2 = L3_2.y
  L6_2.y = L7_2
  L7_2 = L5_1
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L10_2 = L1_1
  L10_2 = L10_2.OK
  L9_2.label = L10_2
  L10_2 = Theme
  L10_2 = L10_2.colorsSet
  L10_2 = L10_2.blackColor
  L9_2.labelColor = L10_2
  L9_2.width = 123
  L9_2.height = 23
  L10_2 = L3_1
  L10_2 = L10_2.Path_Assets
  L11_2 = "CardScene/button.png"
  L10_2 = L10_2 .. L11_2
  L9_2.defaultFile = L10_2
  
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L8_1
    if L0_3 == true then
      L0_3 = log3
      L1_3 = "hiding overlay from button"
      L0_3(L1_3)
      L0_3 = L10_1
      L0_3 = L0_3.hideWithAnimation
      L1_3 = A0_2
      L0_3(L1_3)
    end
    L0_3 = A1_2
    L0_3 = L0_3.params
    L0_3 = L0_3.preScene
    if L0_3 then
      L0_3 = L0_1
      L0_3 = L0_3.getScene
      L1_3 = "Scenes."
      L2_3 = A1_2
      L2_3 = L2_3.params
      L2_3 = L2_3.preScene
      L1_3 = L1_3 .. L2_3
      L0_3 = L0_3(L1_3)
      L2_3 = L0_3
      L1_3 = L0_3.show
      L3_3 = {}
      L3_3.phase = "did"
      L1_3(L2_3, L3_3)
    end
  end
  
  L9_2.onRelease = L10_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = A0_2.contentGroup
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L7_2.view
  L8_2(L9_2, L10_2)
  L8_2 = L3_2.x
  L7_2.x = L8_2
  L8_2 = L3_2.y
  L9_2 = L3_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L8_2 = L8_2 - 34
  L9_2 = L7_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L8_2 = L8_2 + 5
  L9_2 = L7_2.height
  L8_2 = L8_2 + L9_2
  L7_2.y = L8_2
  L8_2 = nil
  L9_2 = math
  L9_2 = L9_2.ceil
  L10_2 = L4_1
  L10_2 = L10_2.stringUTFLength
  L11_2 = A0_2.description
  L10_2 = L10_2(L11_2)
  L10_2 = L10_2 * 6.5
  L10_2 = L10_2 / 123
  L9_2 = L9_2(L10_2)
  L8_2 = L9_2 * 20
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
      L10_2 = L1_1
      L10_2 = L10_2.lang
      if L10_2 == "fa" then
        goto lbl_313
      end
    end
  end
  L10_2 = L1_1
  L10_2 = L10_2.lang
  if L10_2 == "ar" then
    ::lbl_313::
    L10_2 = {}
    L11_2 = A0_2.contentGroup
    L10_2.parent = L11_2
    L11_2 = A0_2.description
    L10_2.text = L11_2
    L10_2.x = 0
    L10_2.y = 0
    L10_2.width = 123
    L10_2.height = 250
    L11_2 = L3_1
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
    L12_2 = A0_2.description
    L13_2 = 0
    L14_2 = 0
    L15_2 = 123
    L16_2 = 250
    L17_2 = L3_1
    L17_2 = L17_2.fontForSubtitle
    L17_2 = L17_2()
    L18_2 = 12
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L9_2 = L10_2
  end
  L11_2 = L9_2
  L10_2 = L9_2.setFillColor
  L12_2 = L3_1
  L12_2 = L12_2.darkBlueColor
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L10_2 = L1_1
  L10_2 = L10_2.lang
  if L10_2 ~= "fa" then
    L10_2 = L1_1
    L10_2 = L10_2.lang
    if L10_2 ~= "ar" then
      goto lbl_365
    end
  end
  L10_2 = L3_2.y
  L10_2 = L10_2 - 8
  L9_2.y = L10_2
  goto lbl_368
  ::lbl_365::
  L10_2 = L3_2.y
  L10_2 = L10_2 - 4
  L9_2.y = L10_2
  ::lbl_368::
  L10_2 = L3_2.x
  L11_2 = L3_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L10_2 = L10_2 - 61.5
  L10_2 = L10_2 - 15
  L9_2.x = L10_2
  L10_2 = L6_2.y
  L10_2 = L10_2 + 125
  L11_2 = L6_2.height
  L11_2 = L11_2 / 2
  L10_2 = L10_2 - L11_2
  L9_2.y = L10_2
  L10_2 = A0_2.goldAmount
  if L10_2 then
    L10_2 = display
    L10_2 = L10_2.newText
    L11_2 = A0_2.contentGroup
    L12_2 = "+ "
    L13_2 = L1_1
    L13_2 = L13_2.adjustNumber
    L14_2 = L4_1
    L14_2 = L14_2.stringThousandCommaSeperated
    L15_2 = A0_2.goldAmount
    L14_2, L15_2, L16_2, L17_2, L18_2 = L14_2(L15_2)
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
    L12_2 = L12_2 .. L13_2
    L13_2 = 0
    L14_2 = 0
    L15_2 = L3_1
    L15_2 = L15_2.fontForTitle
    L15_2 = L15_2()
    L16_2 = 15
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L12_2 = L10_2
    L11_2 = L10_2.setFillColor
    L13_2 = L3_1
    L13_2 = L13_2.darkBlueColor
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L13_2()
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L11_2 = display
    L11_2 = L11_2.newImageRect
    L12_2 = A0_2.contentGroup
    L13_2 = Theme
    L13_2 = L13_2.goldIconImage
    L14_2 = 25
    L15_2 = 24
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
    L12_2 = L9_2.x
    L13_2 = L9_2.width
    L13_2 = L13_2 / 2
    L12_2 = L12_2 - L13_2
    L13_2 = L11_2.width
    L13_2 = L13_2 / 2
    L12_2 = L12_2 + L13_2
    L12_2 = L12_2 + 10
    L11_2.x = L12_2
    L12_2 = L6_2.y
    L13_2 = L6_2.height
    L13_2 = L13_2 / 2
    L12_2 = L12_2 + L13_2
    L12_2 = L12_2 - 10
    L13_2 = L11_2.height
    L13_2 = L13_2 / 2
    L12_2 = L12_2 - L13_2
    L11_2.y = L12_2
    L12_2 = L11_2.x
    L13_2 = L11_2.width
    L13_2 = L13_2 / 2
    L12_2 = L12_2 + L13_2
    L12_2 = L12_2 + 10
    L13_2 = L10_2.width
    L13_2 = L13_2 / 2
    L12_2 = L12_2 + L13_2
    L10_2.x = L12_2
    L12_2 = L11_2.y
    L10_2.y = L12_2
  end
end

create = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L9_1
  L4_2 = L4_2.show
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "did" then
    L4_2 = "hideOverlay"
    _backAction = L4_2
    L4_2 = false
    L8_1 = L4_2
    L4_2 = timer
    L4_2 = L4_2.performWithDelay
    L5_2 = 0.5
    
    function L6_2()
      local L0_3, L1_3
      L0_3 = true
      L8_1 = L0_3
    end
    
    L4_2(L5_2, L6_2)
  end
end

show = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L9_1
  L4_2 = L4_2.hide
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "will" then
    L4_2 = "Scenes.Shop"
    _backAction = L4_2
  end
  if L3_2 == "did" then
    L4_2 = A0_2.textFieldObject
    if L4_2 then
      L4_2 = A0_2.textFieldObject
      L4_2.isVisible = true
    end
  end
end

hide = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = L9_1
  L3_2 = L3_2.destroy
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end

destroy = L11_1
