local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.ParentStandardBaseOverlayClass"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Components.TDButtonView"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "composer"
L3_1 = L3_1(L4_1)
L4_1 = setmetatable
L5_1 = _M
L6_1 = L0_1
L4_1(L5_1, L6_1)
L4_1 = _M
L5_1 = _M
L4_1.__index = L5_1
L4_1 = _M

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L0_1
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
  L7_2 = 275
  L8_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.backgroundBox = L2_2
  L2_2 = A0_2.backgroundBox
  L2_2.strokeWidth = 2
  L2_2 = A0_2.backgroundBox
  L3_2 = L2_2
  L2_2 = L2_2.setStrokeColor
  L4_2 = Theme
  L4_2 = L4_2.overlayStrokeColor
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = A0_2.backgroundBox
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = Theme
  L4_2 = L4_2.colorsSet
  L4_2 = L4_2.whiteColor
  L4_2 = L4_2[1]
  L5_2 = Theme
  L5_2 = L5_2.colorsSet
  L5_2 = L5_2.whiteColor
  L5_2 = L5_2[2]
  L6_2 = Theme
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.whiteColor
  L6_2 = L6_2[3]
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2.backgroundBox
  L2_2.x = 0
  L2_2 = A0_2.backgroundBox
  L2_2.y = 0
  L2_2 = A0_2.backgroundBox
  L3_2 = L2_2
  L2_2 = L2_2.addEventListener
  L4_2 = "tap"
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2.backgroundBox
  L3_2 = L2_2
  L2_2 = L2_2.addEventListener
  L4_2 = "touch"
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = display
  L2_2 = L2_2.newText
  L3_2 = A0_2.contentGroup
  L4_2 = L2_1
  L4_2 = L4_2["Charkhone Agreement Overlay Title"]
  L5_2 = 0
  L6_2 = 0
  L7_2 = Theme
  L7_2 = L7_2.overlayFont
  L8_2 = Theme
  L8_2 = L8_2.overlayFontTitleSize
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.titleLabel = L2_2
  L2_2 = A0_2.titleLabel
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = Theme
  L4_2 = L4_2.colorsSet
  L4_2 = L4_2.darkBlueColor
  L4_2 = L4_2[1]
  L5_2 = Theme
  L5_2 = L5_2.colorsSet
  L5_2 = L5_2.darkBlueColor
  L5_2 = L5_2[2]
  L6_2 = Theme
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.darkBlueColor
  L6_2 = L6_2[3]
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2.titleLabel
  L3_2 = A0_2.backgroundBox
  L3_2 = L3_2.x
  L2_2.x = L3_2
  L2_2 = A0_2.titleLabel
  L3_2 = A0_2.backgroundBox
  L3_2 = L3_2.height
  L3_2 = -L3_2
  L3_2 = L3_2 / 2
  L3_2 = L3_2 + 10
  L4_2 = A0_2.titleLabel
  L4_2 = L4_2.height
  L4_2 = L4_2 / 2
  L3_2 = L3_2 + L4_2
  L2_2.y = L3_2
  L2_2 = display
  L2_2 = L2_2.newRoundedRect
  L3_2 = A0_2.contentGroup
  L4_2 = 0
  L5_2 = 0
  L6_2 = A0_2.backgroundBox
  L6_2 = L6_2.width
  L6_2 = L6_2 - 20
  L7_2 = A0_2.backgroundBox
  L7_2 = L7_2.height
  L7_2 = L7_2 - 60
  L8_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.contentBG = L2_2
  L2_2 = A0_2.contentBG
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = Theme
  L4_2 = L4_2.overlayContentBG
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = A0_2.contentBG
  L3_2 = L2_2
  L2_2 = L2_2.setStrokeColor
  L4_2 = Theme
  L4_2 = L4_2.overlayStrokeContentBG
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = A0_2.contentBG
  L2_2.strokeWidth = 1
  L2_2 = A0_2.contentBG
  L3_2 = A0_2.backgroundBox
  L3_2 = L3_2.x
  L2_2.x = L3_2
  L2_2 = A0_2.contentBG
  L3_2 = A0_2.backgroundBox
  L3_2 = L3_2.y
  L3_2 = L3_2 + 20
  L2_2.y = L3_2
  L2_2 = {}
  L3_2 = A0_2.contentGroup
  L2_2.parent = L3_2
  L3_2 = L2_1
  L3_2 = L3_2["Charkhone Agreement Desc1"]
  L2_2.text = L3_2
  L2_2.x = 0
  L2_2.y = 0
  L3_2 = A0_2.contentBG
  L3_2 = L3_2.width
  L3_2 = L3_2 * 6
  L3_2 = L3_2 / 7
  L2_2.width = L3_2
  L3_2 = Constants
  L3_2 = L3_2.fontForSubtitle
  L3_2 = L3_2()
  L2_2.font = L3_2
  L2_2.fontSize = 13
  L2_2.align = "center"
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  A0_2.description = L3_2
  L3_2 = A0_2.description
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Theme
  L5_2 = L5_2.colorsSet
  L5_2 = L5_2.darkBlueColor
  L5_2 = L5_2[1]
  L6_2 = Theme
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.darkBlueColor
  L6_2 = L6_2[2]
  L7_2 = Theme
  L7_2 = L7_2.colorsSet
  L7_2 = L7_2.darkBlueColor
  L7_2 = L7_2[3]
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2.description
  L4_2 = A0_2.contentBG
  L4_2 = L4_2.y
  L5_2 = A0_2.contentBG
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 - L5_2
  L5_2 = A0_2.description
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L4_2 = L4_2 + 5
  L3_2.y = L4_2
  L3_2 = {}
  L4_2 = L2_1
  L4_2 = L4_2["Charkhone Next Button Label"]
  L3_2.label = L4_2
  L3_2.width = 100
  L3_2.height = 30
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "BattleItems/battle_outcome_button.png"
  L4_2 = L4_2 .. L5_2
  L3_2.imageName = L4_2
  
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L0_3 = L0_3.description
    L1_3 = L2_1
    L1_3 = L1_3["Charkhone Agreement Desc2"]
    L0_3.text = L1_3
    L0_3 = A0_2
    L0_3 = L0_3.description
    L1_3 = A0_2
    L1_3 = L1_3.contentBG
    L1_3 = L1_3.y
    L2_3 = A0_2
    L2_3 = L2_3.contentBG
    L2_3 = L2_3.height
    L2_3 = L2_3 / 2
    L1_3 = L1_3 - L2_3
    L2_3 = A0_2
    L2_3 = L2_3.description
    L2_3 = L2_3.height
    L2_3 = L2_3 / 2
    L1_3 = L1_3 + L2_3
    L1_3 = L1_3 + 5
    L0_3.y = L1_3
    L0_3 = A0_2
    L0_3 = L0_3.nextButton
    L0_3 = L0_3.view
    L0_3.isVisible = false
    L0_3 = A0_2
    L0_3 = L0_3.agreementButton
    L0_3 = L0_3.view
    L0_3.isVisible = true
    L0_3 = A0_2
    L0_3 = L0_3.subscriptionButton
    L0_3 = L0_3.view
    L0_3.isVisible = true
  end
  
  L3_2.onRelease = L4_2
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.nextButton = L4_2
  L4_2 = A0_2.contentGroup
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = A0_2.nextButton
  L6_2 = L6_2.view
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.nextButton
  L5_2 = A0_2.contentBG
  L5_2 = L5_2.width
  L5_2 = L5_2 / 2
  L5_2 = L5_2 - 25
  L6_2 = A0_2.nextButton
  L6_2 = L6_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 - L6_2
  L4_2.x = L5_2
  L4_2 = A0_2.nextButton
  L5_2 = A0_2.backgroundBox
  L5_2 = L5_2.y
  L6_2 = A0_2.backgroundBox
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L5_2 = L5_2 - 25
  L6_2 = A0_2.nextButton
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 - L6_2
  L4_2.y = L5_2
  L4_2 = A0_2.nextButton
  L4_2 = L4_2.view
  L4_2.isVisible = true
  L4_2 = L2_1
  L4_2 = L4_2["Charkhone Agreement Button Label"]
  L3_2.label = L4_2
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = L3_1
    L0_3 = L0_3.hideOverlay
    L0_3()
    L0_3 = A1_2
    L0_3 = L0_3.params
    if L0_3 then
      L0_3 = A1_2
      L0_3 = L0_3.params
      L0_3 = L0_3.confirmationCallback
      if L0_3 then
        L0_3 = A1_2
        L0_3 = L0_3.params
        L0_3 = L0_3.confirmationCallback
        L0_3()
      end
    end
  end
  
  L3_2.onRelease = L4_2
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.subscriptionButton = L4_2
  L4_2 = A0_2.contentGroup
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = A0_2.subscriptionButton
  L6_2 = L6_2.view
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.subscriptionButton
  L5_2 = A0_2.nextButton
  L5_2 = L5_2.x
  L6_2 = A0_2.nextButton
  L6_2 = L6_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 - 25
  L6_2 = A0_2.subscriptionButton
  L6_2 = L6_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 - L6_2
  L4_2.x = L5_2
  L4_2 = A0_2.subscriptionButton
  L5_2 = A0_2.nextButton
  L5_2 = L5_2.y
  L4_2.y = L5_2
  L4_2 = A0_2.subscriptionButton
  L4_2 = L4_2.view
  L4_2.isVisible = false
  L4_2 = L2_1
  L4_2 = L4_2["Charkhone Subs Button Label"]
  L3_2.label = L4_2
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = L3_1
    L0_3 = L0_3.hideOverlay
    L0_3()
    L0_3 = A1_2
    L0_3 = L0_3.params
    if L0_3 then
      L0_3 = A1_2
      L0_3 = L0_3.params
      L0_3 = L0_3.subscriptionCallback
      if L0_3 then
        L0_3 = A1_2
        L0_3 = L0_3.params
        L0_3 = L0_3.subscriptionCallback
        L0_3()
      end
    end
  end
  
  L3_2.onRelease = L4_2
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.agreementButton = L4_2
  L4_2 = A0_2.contentGroup
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = A0_2.agreementButton
  L6_2 = L6_2.view
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.agreementButton
  L5_2 = A0_2.nextButton
  L5_2 = L5_2.x
  L4_2.x = L5_2
  L4_2 = A0_2.agreementButton
  L5_2 = A0_2.subscriptionButton
  L5_2 = L5_2.y
  L4_2.y = L5_2
  L4_2 = A0_2.agreementButton
  L4_2 = L4_2.view
  L4_2.isVisible = false
end

create = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  L2_2 = L2_2.show
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

show = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  L2_2 = L2_2.hide
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

hide = L5_1
