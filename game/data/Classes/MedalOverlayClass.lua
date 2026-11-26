local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1
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
L3_1 = "Models.Card"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.CardView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Language"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "widget"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Models.Card"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Views.ActivityIndicatorView"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Models.AuctionItem"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Constants"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Utils.Toolbox"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Views.EffectsManager"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Components.TDButtonView"
L12_1 = L12_1(L13_1)
L13_1 = true
L14_1 = nil
L15_1 = nil
L16_1 = nil
L17_1 = nil
L18_1 = require
L19_1 = "Core.ParentStandardBaseOverlayClass"
L18_1 = L18_1(L19_1)
L19_1 = setmetatable
L20_1 = _M
L21_1 = L18_1
L19_1(L20_1, L21_1)
L19_1 = _M
L20_1 = _M
L19_1.__index = L20_1
L19_1 = _M

function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = L18_1
  L2_2 = L2_2.create
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.params
  if L2_2 then
    L2_2 = A1_2.params
    L2_2 = L2_2.medal
    L17_1 = L2_2
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
  L8_2 = 0.58823529
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.isHitTestable = true
  L4_2 = L2_2
  L3_2 = L2_2.addEventListener
  L5_2 = "tap"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = L13_1
    if L0_3 then
      L0_3 = log3
      L1_3 = "hiding overlay"
      L0_3(L1_3)
      L0_3 = L19_1
      L0_3 = L0_3.hideWithAnimation
      L1_3 = A0_2
      L0_3(L1_3)
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
  L8_2 = 270
  L9_2 = 3
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2.strokeWidth = 2
  L5_2 = L3_2
  L4_2 = L3_2.setStrokeColor
  L6_2 = L9_1
  L6_2 = L6_2.greenColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = L9_1
  L6_2 = L6_2.whiteColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
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
  L4_2 = L4_2.newRoundedRect
  L5_2 = A0_2.contentGroup
  L6_2 = 0
  L7_2 = 0
  L8_2 = L3_2.width
  L8_2 = L8_2 - 16
  L9_2 = L3_2.height
  L9_2 = L9_2 - 58
  L10_2 = 1
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2.strokeWidth = 2
  L6_2 = L4_2
  L5_2 = L4_2.setStrokeColor
  L7_2 = L9_1
  L7_2 = L7_2.greenColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = L3_2.x
  L4_2.x = L5_2
  L5_2 = L3_2.y
  L6_2 = L3_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L6_2 = L4_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 - 8
  L4_2.y = L5_2
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = A0_2.contentGroup
  L7_2 = L4_1
  L7_2 = L7_2["Medal Details"]
  L8_2 = 0
  L9_2 = 0
  L10_2 = L9_1
  L10_2 = L10_2.fontForTitle
  L10_2 = L10_2()
  L11_2 = 20
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = L5_2
  L6_2 = L5_2.setFillColor
  L8_2 = L9_1
  L8_2 = L8_2.darkBlueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2 = L3_2.x
  L5_2.x = L6_2
  L6_2 = L3_2.height
  L6_2 = -L6_2
  L6_2 = L6_2 / 2
  L6_2 = L6_2 + 10
  L7_2 = L5_2.height
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L5_2.y = L6_2
  L6_2 = L12_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.width = 30
  L8_2.height = 30
  L9_2 = L9_1
  L9_2 = L9_2.Path_Assets
  L10_2 = "BattleItems/close.png"
  L9_2 = L9_2 .. L10_2
  L8_2.defaultFile = L9_2
  
  function L9_2()
    local L0_3, L1_3
    L0_3 = L13_1
    if L0_3 then
      L0_3 = log3
      L1_3 = "hiding overlay from button"
      L0_3(L1_3)
      L0_3 = L19_1
      L0_3 = L0_3.hideWithAnimation
      L1_3 = A0_2
      L0_3(L1_3)
      L0_3 = A1_2
      L0_3 = L0_3.params
      L0_3 = L0_3.onCancel
      if L0_3 then
        L0_3 = A1_2
        L0_3 = L0_3.params
        L0_3 = L0_3.onCancel
        L0_3()
      end
    end
    L0_3 = true
    return L0_3
  end
  
  L8_2.onRelease = L9_2
  L6_2 = L6_2(L7_2, L8_2)
  L14_1 = L6_2
  L6_2 = A0_2.contentGroup
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L14_1
  L8_2 = L8_2.view
  L6_2(L7_2, L8_2)
  L6_2 = L14_1
  L6_2.delegate = A0_2
  L6_2 = L14_1
  L7_2 = L3_2.width
  L7_2 = -L7_2
  L7_2 = L7_2 / 2
  L7_2 = L7_2 + 10
  L8_2 = L14_1
  L8_2 = L8_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L6_2.x = L7_2
  L6_2 = L14_1
  L7_2 = L5_2.y
  L6_2.y = L7_2
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = A0_2.contentGroup
  L8_2 = L17_1
  L8_2 = L8_2.image
  L9_2 = ".png"
  L8_2 = L8_2 .. L9_2
  L9_2 = 105
  L10_2 = 200
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L4_2.x
  L8_2 = L6_2.width
  L9_2 = L4_2.width
  L8_2 = L8_2 - L9_2
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L7_2 = L7_2 + 15
  L6_2.x = L7_2
  L7_2 = L4_2.y
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
      L8_2 = L4_1
      L8_2 = L8_2.lang
      if L8_2 == "fa" then
        goto lbl_210
      end
    end
  end
  L8_2 = L4_1
  L8_2 = L8_2.lang
  if L8_2 == "ar" then
    ::lbl_210::
    L8_2 = {}
    L9_2 = A0_2.contentGroup
    L8_2.parent = L9_2
    L9_2 = L17_1
    L9_2 = L9_2.description
    L8_2.text = L9_2
    L8_2.x = 0
    L8_2.y = 0
    L8_2.width = 170
    L9_2 = L4_2.height
    L9_2 = L9_2 - 5
    L8_2.height = L9_2
    L9_2 = L9_1
    L9_2 = L9_2.fontForSubtitle
    L9_2 = L9_2()
    L8_2.font = L9_2
    L8_2.fontSize = 12
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
    L10_2 = L17_1
    L10_2 = L10_2.description
    L11_2 = 0
    L12_2 = 0
    L13_2 = 170
    L14_2 = L4_2.height
    L14_2 = L14_2 - 5
    L15_2 = L9_1
    L15_2 = L15_2.fontForSubtitle
    L15_2 = L15_2()
    L16_2 = 12
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L7_2 = L8_2
  end
  L9_2 = L7_2
  L8_2 = L7_2.setFillColor
  L10_2 = L9_1
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = L4_1
  L8_2 = L8_2.lang
  if L8_2 ~= "fa" then
    L8_2 = L4_1
    L8_2 = L8_2.lang
    if L8_2 ~= "ar" then
      goto lbl_267
    end
  end
  L8_2 = L3_2.y
  L8_2 = L8_2 - 8
  L7_2.y = L8_2
  goto lbl_270
  ::lbl_267::
  L8_2 = L3_2.y
  L8_2 = L8_2 - 4
  L7_2.y = L8_2
  ::lbl_270::
  L8_2 = L3_2.x
  L9_2 = L3_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L9_2 = L7_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L8_2 = L8_2 - 15
  L7_2.x = L8_2
  L8_2 = L3_2.y
  L9_2 = L3_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L9_2 = L7_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L8_2 = L8_2 + 60
  L7_2.y = L8_2
end

create = L20_1

function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L18_1
  L4_2 = L4_2.show
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "did" then
    L4_2 = "hideOverlay"
    _backAction = L4_2
  end
end

show = L20_1

function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L18_1
  L4_2 = L4_2.hide
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "will" then
    L4_2 = "Scenes.Home"
    _backAction = L4_2
    L4_2 = L11_1
    L4_2 = L4_2.removePoint
    L4_2()
  end
end

hide = L20_1

function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = L18_1
  L3_2 = L3_2.destroy
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end

destroy = L20_1
