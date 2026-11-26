local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Language"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "widget"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Utils.Analytics"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Components.TDButtonView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Core.ParentStandardBaseOverlayClass"
L4_1 = L4_1(L5_1)
L5_1 = setmetatable
L6_1 = _M
L7_1 = L4_1
L5_1(L6_1, L7_1)
L5_1 = _M
L6_1 = _M
L5_1.__index = L6_1
L5_1 = _M

function L6_1()
  local L0_2, L1_2, L2_2
  L1_2 = system
  L1_2 = L1_2.getInfo
  L2_2 = "build"
  L1_2 = L1_2(L2_2)
  if "2013.1137" < L1_2 then
    L1_2 = system
    L1_2 = L1_2.getInfo
    L2_2 = "platformName"
    L1_2 = L1_2(L2_2)
    if L1_2 ~= "Android" then
      L1_2 = L0_1
      L1_2 = L1_2.lang
      if L1_2 == "fa" then
        goto lbl_21
      end
    end
  end
  L1_2 = L0_1
  L1_2 = L1_2.lang
  if L1_2 == "ar" then
    ::lbl_21::
    L0_2 = "right"
  else
    L0_2 = "left"
  end
  return L0_2
end

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = L4_1
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
  L7_2 = 238
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
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A0_2.contentGroup
  L5_2 = "\217\134\216\181\216\168 \217\136\219\140\216\170\216\177\219\140\217\134 \216\179\219\140\216\168\218\134\217\135"
  L6_2 = 0
  L7_2 = 0
  L8_2 = Theme
  L8_2 = L8_2.overlayFontTitleFont
  L9_2 = Theme
  L9_2 = L9_2.overlayFontTitleSize
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
  L4_2 = L4_2 + 15
  L5_2 = L3_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L3_2.y = L4_2
  L4_2 = L3_1
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
    L0_3 = L5_1
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
  L8_2 = Theme
  L8_2 = L8_2.overlayContentBG
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L7_2 = L5_2
  L6_2 = L5_2.setStrokeColor
  L8_2 = Theme
  L8_2 = L8_2.overlayStrokeContentBG
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2.strokeWidth = 1
  L6_2 = L2_2.x
  L5_2.x = L6_2
  L6_2 = L2_2.y
  L6_2 = L6_2 + 20
  L5_2.y = L6_2
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = A0_2.contentGroup
  L8_2 = Constants
  L8_2 = L8_2.Path_Assets
  L9_2 = "General/vitrin.png"
  L8_2 = L8_2 .. L9_2
  L9_2 = 46
  L10_2 = 46
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L5_2.width
  L7_2 = L7_2 / 2
  L8_2 = L6_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 - L8_2
  L7_2 = L7_2 - 10
  L6_2.x = L7_2
  L7_2 = L2_2.height
  L7_2 = -L7_2
  L7_2 = L7_2 / 2
  L8_2 = L6_2.height
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L7_2 = L7_2 + 20
  L7_2 = L7_2 + 40
  L6_2.y = L7_2
  L7_2 = {}
  L8_2 = A0_2.contentGroup
  L7_2.parent = L8_2
  L7_2.text = "\216\168\216\177\216\167\219\140 \216\174\216\177\219\140\216\175 \216\177\219\140\216\167\217\132\219\140\216\140 \216\168\216\167\219\140\216\175 \217\136\219\140\216\170\216\177\219\140\217\134 \216\179\219\140\216\168\218\134\217\135 \216\177\216\167 \217\134\216\181\216\168 \218\169\217\134\219\140\216\175."
  L7_2.x = 0
  L8_2 = L6_2.y
  L7_2.y = L8_2
  L8_2 = L5_2.width
  L8_2 = L8_2 - 20
  L9_2 = L6_2.width
  L8_2 = L8_2 - L9_2
  L8_2 = L8_2 - 5
  L7_2.width = L8_2
  L8_2 = Theme
  L8_2 = L8_2.overlayFont
  L7_2.font = L8_2
  L8_2 = Theme
  L8_2 = L8_2.overlayFontContentSize
  L7_2.fontSize = L8_2
  L7_2.align = "right"
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  L9_2 = L6_2.x
  L10_2 = L6_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 - L10_2
  L9_2 = L9_2 - 10
  L10_2 = L8_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 - L10_2
  L8_2.x = L9_2
  L10_2 = L8_2
  L9_2 = L8_2.setFillColor
  L11_2 = Constants
  L11_2 = L11_2.darkBlueColor
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L11_2()
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L9_2 = display
  L9_2 = L9_2.newGroup
  L9_2 = L9_2()
  A0_2.internalContentGroup = L9_2
  L9_2 = A0_2.contentGroup
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = A0_2.internalContentGroup
  L9_2(L10_2, L11_2)
  L9_2 = {}
  L10_2 = L5_2.width
  L10_2 = L10_2 - 20
  L9_2.width = L10_2
  L10_2 = L2_2.height
  L10_2 = L10_2 / 4
  L9_2.height = L10_2
  L9_2.verticalScrollDisabled = false
  L9_2.horizontalScrollDisabled = true
  L9_2.scrollWidth = 0
  L9_2.scrollHeight = 0
  L9_2.topPadding = 75
  L9_2.bottomPadding = 0
  L10_2 = {}
  L11_2 = 0
  L12_2 = 0
  L13_2 = 0
  L14_2 = 0
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L10_2[4] = L14_2
  L9_2.backgroundColor = L10_2
  L9_2.hideScrollBar = false
  L10_2 = L1_1
  L10_2 = L10_2.newScrollView
  L11_2 = L9_2
  L10_2 = L10_2(L11_2)
  A0_2.scroller = L10_2
  L10_2 = A0_2.scroller
  L11_2 = L5_2.width
  L11_2 = -L11_2
  L11_2 = L11_2 / 2
  L12_2 = L2_2.width
  L12_2 = L12_2 - 20
  L12_2 = L12_2 / 2
  L11_2 = L11_2 + L12_2
  L10_2.x = L11_2
  L10_2 = A0_2.scroller
  L11_2 = L6_2.y
  L12_2 = L6_2.height
  L12_2 = L12_2 / 2
  L11_2 = L11_2 + L12_2
  L12_2 = A0_2.scroller
  L12_2 = L12_2.height
  L12_2 = L12_2 / 2
  L11_2 = L11_2 + L12_2
  L11_2 = L11_2 + 13
  L10_2.y = L11_2
  L10_2 = A0_2.internalContentGroup
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = A0_2.scroller
  L10_2(L11_2, L12_2)
  L10_2 = display
  L10_2 = L10_2.newRoundedRect
  L11_2 = A0_2.internalContentGroup
  L12_2 = 0
  L13_2 = 0
  L14_2 = A0_2.scroller
  L14_2 = L14_2.width
  L15_2 = A0_2.scroller
  L15_2 = L15_2.height
  L16_2 = 3
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L12_2 = L10_2
  L11_2 = L10_2.setStrokeColor
  L13_2 = Theme
  L13_2 = L13_2.overlayStrokeContentBG
  L13_2, L14_2, L15_2, L16_2 = L13_2()
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2.strokeWidth = 1
  L11_2 = A0_2.scroller
  L11_2 = L11_2.x
  L10_2.x = L11_2
  L11_2 = A0_2.scroller
  L11_2 = L11_2.y
  L10_2.y = L11_2
  L11_2 = A0_2.internalContentGroup
  L12_2 = L11_2
  L11_2 = L11_2.insert
  L13_2 = A0_2.scroller
  L11_2(L12_2, L13_2)
  L11_2 = {}
  L11_2.text = "\217\136\219\140\216\170\216\177\219\140\217\134\216\140 \216\167\217\133\218\169\216\167\217\134 \216\179\217\129\216\167\216\177\216\180 \216\170\217\133\216\167\217\133\219\140 \216\168\216\177\217\134\216\167\217\133\217\135 \217\135\216\167\219\140 \216\167\217\190 \216\167\216\179\216\170\217\136\216\177 \217\136 \216\174\216\177\219\140\216\175 \216\162\217\134\217\135\216\167 \216\168\217\135 \216\181\217\136\216\177\216\170 \216\177\219\140\216\167\217\132\219\140 \216\177\216\167 \217\129\216\177\216\167\217\135\217\133 \217\133\219\140\218\169\217\134\216\175. \217\135\217\133\218\134\217\134\219\140\217\134 \216\175\216\177 \217\136\219\140\216\170\216\177\219\140\217\134 \217\133\219\140\216\170\217\136\216\167\217\134\219\140\216\175 \216\167\216\174\216\168\216\167\216\177 \217\133\216\177\216\168\217\136\216\183 \216\168\217\135 \216\170\218\169\217\134\217\136\217\132\217\136\218\152\219\140 \217\136 \216\167\217\190\217\132 \216\177\216\167 \216\175\217\134\216\168\216\167\217\132 \218\169\217\134\219\140\216\175 \217\136 \216\167\216\178 \216\168\217\135\216\170\216\177\219\140\217\134 \216\167\217\190 \217\135\216\167\219\140 \217\129\216\167\216\177\216\179\219\140 \217\133\216\183\217\132\216\185 \216\180\217\136\219\140\216\175.\n\n\216\167\217\133\218\169\216\167\217\134\216\167\216\170 \217\136\219\140\216\170\216\177\219\140\217\134:\n- \216\167\217\133\218\169\216\167\217\134 \216\174\216\177\219\140\216\175 \216\170\217\133\216\167\217\133\219\140 \216\167\217\190 \217\135\216\167\219\140 \217\133\217\136\216\172\217\136\216\175 \216\175\216\177 \216\167\217\190 \216\167\216\179\216\170\217\136\216\177\n- \217\190\216\177\216\175\216\167\216\174\216\170 \216\168\217\135 \216\181\217\136\216\177\216\170 \216\177\219\140\216\167\217\132\219\140\n-  \216\167\217\133\218\169\216\167\217\134 \216\170\217\135\219\140\217\135 \217\134\217\133\217\136\216\175\217\134 \218\175\219\140\217\129\216\170 \218\169\216\167\216\177\216\170 \216\162\219\140\216\170\217\136\217\134\216\178\n- \216\170\216\173\217\136\219\140\217\132 \216\170\217\133\216\167\217\133\219\140 \216\179\217\129\216\167\216\177\216\180\216\167\216\170 \216\174\216\177\219\140\216\175 \216\167\217\190 \216\168\217\135 \216\181\217\136\216\177\216\170 \216\162\217\134\219\140\n- \216\167\216\177\216\179\216\167\217\132 \216\177\216\179\219\140\216\175 \216\174\216\177\219\140\216\175 \216\168\217\135 \216\167\219\140\217\133\219\140\217\132 \216\180\217\133\216\167"
  L12_2 = L5_2.width
  L12_2 = L12_2 - 40
  L11_2.width = L12_2
  L12_2 = Theme
  L12_2 = L12_2.overlayFont
  L11_2.font = L12_2
  L12_2 = Theme
  L12_2 = L12_2.overlayWarningFontSize
  L11_2.fontSize = L12_2
  L11_2.align = "right"
  L7_2 = L11_2
  L11_2 = display
  L11_2 = L11_2.newText
  L12_2 = L7_2
  L11_2 = L11_2(L12_2)
  L13_2 = L11_2
  L12_2 = L11_2.setFillColor
  L14_2 = Constants
  L14_2 = L14_2.darkBlueColor
  L14_2, L15_2, L16_2 = L14_2()
  L12_2(L13_2, L14_2, L15_2, L16_2)
  L12_2 = L11_2.width
  L12_2 = L12_2 / 2
  L12_2 = L12_2 + 10
  L11_2.x = L12_2
  L11_2.y = 0
  L12_2 = A0_2.scroller
  L13_2 = L12_2
  L12_2 = L12_2.insert
  L14_2 = L11_2
  L12_2(L13_2, L14_2)
  L12_2 = L3_1
  L13_2 = L12_2
  L12_2 = L12_2.new
  L14_2 = {}
  L14_2.width = 85
  L14_2.height = 25
  L14_2.label = "\217\134\216\181\216\168"
  L15_2 = Constants
  L15_2 = L15_2.Path_Assets
  L16_2 = "Buttons/FC-Select-Deck6.png"
  L15_2 = L15_2 .. L16_2
  L14_2.defaultFile = L15_2
  L15_2 = Constants
  L15_2 = L15_2.Path_Assets
  L16_2 = "Buttons/FC-gui-select.png"
  L15_2 = L15_2 .. L16_2
  L14_2.overFile = L15_2
  
  function L15_2()
    local L0_3, L1_3
    L0_3 = L2_1
    L0_3 = L0_3.logEvent
    L1_3 = "Pressed the Vitrin promotion install button"
    L0_3(L1_3)
    L0_3 = system
    L0_3 = L0_3.openURL
    L1_3 = "https://itunes.apple.com/us/app/wytryn/id910946787?mt=8&uo=6&at=1000l3qd&ct=fruit"
    L0_3(L1_3)
    L0_3 = L5_1
    L0_3 = L0_3.hideWithAnimation
    L1_3 = A0_2
    L0_3(L1_3)
  end
  
  L14_2.onRelease = L15_2
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = A0_2.contentGroup
  L14_2 = L13_2
  L13_2 = L13_2.insert
  L15_2 = L12_2.view
  L13_2(L14_2, L15_2)
  L13_2 = L2_2.x
  L12_2.x = L13_2
  L13_2 = A0_2.scroller
  L13_2 = L13_2.y
  L14_2 = A0_2.scroller
  L14_2 = L14_2.height
  L14_2 = L14_2 / 2
  L13_2 = L13_2 + L14_2
  L14_2 = L12_2.height
  L14_2 = L14_2 / 2
  L13_2 = L13_2 + L14_2
  L13_2 = L13_2 + 13
  L12_2.y = L13_2
end

create = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L4_1
  L4_2 = L4_2.show
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "did" then
    L4_2 = "hideOverlay"
    _backActition = L4_2
    L4_2 = L2_1
    L4_2 = L4_2.logEvent
    L5_2 = "Vitrin Promotion Shown"
    L4_2(L5_2)
  end
end

show = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.phase
  L3_2 = L4_1
  L3_2 = L3_2.hide
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end

hide = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L4_1
  L3_2 = L2_2
  L2_2 = L2_2.destroy
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = display
  L2_2 = L2_2.remove
  L3_2 = A0_2.scroller
  L2_2(L3_2)
  A0_2.scroller = nil
  L2_2 = display
  L3_2 = L2_2
  L2_2 = L2_2.remove
  L4_2 = A0_2.internalContentGroup
  L2_2(L3_2, L4_2)
  A0_2.internalContentGroup = nil
end

destroy = L7_1
