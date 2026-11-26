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
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
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
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L4_2 = L2_2
  L3_2 = L2_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.whiteColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L2_2.x = 0
  L2_2.y = 0
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A0_2.contentGroup
  L5_2 = L2_1
  L5_2 = L5_2.Credits
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
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
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
  L4_2 = L5_1
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
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Scenes.SettingsOverlay"
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
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L7_2 = L5_2
  L6_2 = L5_2.setStrokeColor
  L8_2 = Constants
  L8_2 = L8_2.blueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L5_2.strokeWidth = 1
  L6_2 = L2_2.x
  L5_2.x = L6_2
  L6_2 = L2_2.y
  L6_2 = L6_2 + 20
  L5_2.y = L6_2
  L6_2 = display
  L6_2 = L6_2.newGroup
  L6_2 = L6_2()
  A0_2.internalContentGroup = L6_2
  L6_2 = A0_2.contentGroup
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = A0_2.internalContentGroup
  L6_2(L7_2, L8_2)
  L6_2 = L3_1
  L6_2 = L6_2.newScrollView
  L7_2 = {}
  L8_2 = L2_2.width
  L8_2 = L8_2 - 20
  L7_2.width = L8_2
  L8_2 = L2_2.height
  L8_2 = L8_2 - 60
  L7_2.height = L8_2
  L7_2.hideScrollBar = true
  L7_2.verticalScrollDisabled = false
  L7_2.horizontalScrollDisabled = true
  L7_2.scrollWidth = 0
  L7_2.scrollHeight = 0
  L7_2.topPadding = 50
  L7_2.bottomPadding = 160
  L8_2 = {}
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L7_2.backgroundColor = L8_2
  L6_2 = L6_2(L7_2)
  A0_2.scroller = L6_2
  L6_2 = A0_2.scroller
  L7_2 = L5_2.width
  L7_2 = -L7_2
  L7_2 = L7_2 / 2
  L8_2 = L2_2.width
  L8_2 = L8_2 - 20
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L6_2.x = L7_2
  L6_2 = A0_2.scroller
  L7_2 = L5_2.height
  L7_2 = -L7_2
  L7_2 = L7_2 / 2
  L7_2 = L7_2 + 20
  L8_2 = L2_2.height
  L8_2 = L8_2 - 60
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L6_2.y = L7_2
  L6_2 = A0_2.internalContentGroup
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = A0_2.scroller
  L6_2(L7_2, L8_2)
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "General/YellowTOD.png"
  L7_2 = L7_2 .. L8_2
  L8_2 = 130
  L9_2 = 92
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2.scroller
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L6_2.x = 140
  L7_2 = A0_2.scroller
  L7_2 = L7_2.y
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
        goto lbl_204
      end
    end
  end
  L8_2 = L2_1
  L8_2 = L8_2.lang
  if L8_2 == "ar" then
    ::lbl_204::
    L8_2 = {}
    L9_2 = L2_1
    L9_2 = L9_2["Credits description"]
    L8_2.text = L9_2
    L8_2.x = 0
    L8_2.y = 0
    L9_2 = L5_2.width
    L9_2 = L9_2 - 20
    L8_2.width = L9_2
    L9_2 = 480
    L10_2 = Constants
    L10_2 = L10_2.fontForSubtitle
    L10_2 = L10_2()
    L8_2.font = L10_2
    L8_2.fontSize = 11
    L8_2.align = "right"
    L8_2[1] = L9_2
    L9_2 = display
    L9_2 = L9_2.newText
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L7_2 = L9_2
  else
    L8_2 = display
    L8_2 = L8_2.newText
    L9_2 = L2_1
    L9_2 = L9_2["Credits description"]
    L10_2 = 0
    L11_2 = 0
    L12_2 = L5_2.width
    L12_2 = L12_2 - 20
    L13_2 = 480
    L14_2 = Constants
    L14_2 = L14_2.fontForSubtitle
    L14_2 = L14_2()
    L15_2 = 11
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L7_2 = L8_2
  end
  L9_2 = L7_2
  L8_2 = L7_2.setFillColor
  L10_2 = Constants
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L8_2 = A0_2.scroller
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = L7_2.width
  L8_2 = L8_2 / 2
  L8_2 = L8_2 + 10
  L7_2.x = L8_2
  L8_2 = L6_2.y
  L9_2 = L7_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L8_2 = L8_2 + 40
  L7_2.y = L8_2
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
    function L4_2()
      local L0_3, L1_3
      
      L0_3 = L0_1
      L0_3 = L0_3.showOverlay
      L1_3 = "Scenes.SettingsOverlay"
      L0_3(L1_3)
    end
    
    _backAction = L4_2
    L4_2 = L4_1
    L4_2 = L4_2.logEvent
    L5_2 = "Credits Shown"
    L4_2(L5_2)
  end
end

show = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L6_1
  L4_2 = L4_2.hide
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "will" then
    L4_2 = "hideOverlay"
    _backAction = L4_2
  end
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
  L3_2 = display
  L3_2 = L3_2.remove
  L4_2 = A0_2.scroller
  L3_2(L4_2)
  A0_2.scroller = nil
  L3_2 = display
  L3_2 = L3_2.remove
  L4_2 = A0_2.internalContentGroup
  L3_2(L4_2)
  A0_2.internalContentGroup = nil
end

destroy = L8_1
