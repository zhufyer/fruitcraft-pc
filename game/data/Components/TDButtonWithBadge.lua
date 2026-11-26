local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Components.TDButtonView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Components.TDDialogView"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.ChatButton"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Utils.Analytics"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Language"
L5_1 = L5_1(L6_1)
L6_1 = setmetatable
L7_1 = _M
L8_1 = {}
L8_1.__index = L0_1
L6_1(L7_1, L8_1)

function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = L0_1
  L3_2 = L3_2.new
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2
  L5_2 = A1_2.unlockLevel
  L3_2.unlockLevel = L5_2
  
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = mainPlayer
    L1_3 = L1_3.level
    L2_3 = L3_2
    L2_3 = L2_3.unlockLevel
    if L1_3 < L2_3 then
      L1_3 = A1_2
      L1_3 = L1_3.analyticsLog
      if L1_3 then
        L1_3 = L4_1
        L1_3 = L1_3.logEvent
        L2_3 = A1_2
        L2_3 = L2_3.analyticsLog
        L1_3(L2_3)
      end
    end
    
    function L1_3()
      local L0_4, L1_4
      L0_4 = L3_2
      L0_4 = L0_4.dimBackground
      L0_4.alpha = 0
      L0_4 = L3_1
      L0_4 = L0_4.newOnScene
      L1_4 = A0_3
      L0_4(L1_4)
    end
    
    L2_3 = mainPlayer
    L2_3 = L2_3.level
    L3_3 = L3_2
    L3_3 = L3_3.unlockLevel
    if L2_3 < L3_3 then
      L2_3 = L2_1
      L3_3 = L2_3
      L2_3 = L2_3.new
      L4_3 = {}
      L4_3.id = "Badge Button Dialog"
      L4_3.delay = 100
      L4_3.mode = "semi"
      L5_3 = A1_2
      L5_3 = L5_3.dialogText
      L4_3.texts = L5_3
      L4_3.textAlignment = "center"
      L4_3.mentorAlignment = "right"
      L5_3 = Constants
      L5_3 = L5_3.Path_Assets
      L6_3 = "Tutorial/FC-Olive.png"
      L5_3 = L5_3 .. L6_3
      L4_3.mentorImage = L5_3
      L4_3.mentorWidth = 111
      L4_3.mentorHeight = 115
      L4_3.callBackFunction = L1_3
      L2_3(L3_3, L4_3)
      L2_3 = L3_2
      L2_3 = L2_3.dimBackground
      L2_3.alpha = 0.8
      L2_3 = A1_2
      L2_3 = L2_3.scene
      L2_3 = L2_3.view
      L3_3 = L2_3
      L2_3 = L2_3.insert
      L4_3 = L3_2
      L4_3 = L4_3.dimBackground
      L2_3(L3_3, L4_3)
      L2_3 = L3_1
      L2_3 = L2_3.removeFromScene
      L3_3 = A0_3
      L2_3(L3_3)
    else
      L2_3 = A1_2
      L2_3 = L2_3.name
      if L2_3 then
        L2_3 = A1_2
        L2_3 = L2_3.name
        if L2_3 == "hero" then
          L2_3 = mainPlayer
          L2_3 = L2_3.activeHeroID
          if not L2_3 then
            L2_3 = showSimpleDialog
            L3_3 = L5_1
            L3_3 = L3_3.Heroes
            L4_3 = L5_1
            L4_3 = L4_3["There Is No Hero"]
            L2_3(L3_3, L4_3)
        end
      end
      else
        L2_3 = {}
        L3_3 = {}
        L4_3 = A1_2
        L4_3 = L4_3.sceneName
        L3_3.previousScene = L4_3
        L2_3.params = L3_3
        L3_3 = L1_1
        L3_3 = L3_3.gotoScene
        L4_3 = A1_2
        L4_3 = L4_3.sceneNameOnPressButton
        L5_3 = L2_3
        L3_3(L4_3, L5_3)
      end
    end
  end
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = L5_2
    L1_3 = A1_2
    L1_3 = L1_3.scene
    L0_3(L1_3)
  end
  
  L3_2.onRelease = L6_2
  L6_2 = display
  L6_2 = L6_2.newRect
  L7_2 = A1_2.scene
  L7_2 = L7_2.view
  L8_2 = 0
  L9_2 = 0
  L10_2 = 570
  L11_2 = 360
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2.dimBackground = L6_2
  L6_2 = L3_2.dimBackground
  L7_2 = L6_2
  L6_2 = L6_2.setFillColor
  L8_2 = Theme
  L8_2 = L8_2.dimBackgroundOfButtonWithBadgeColor
  L8_2 = L8_2[1]
  L9_2 = Theme
  L9_2 = L9_2.dimBackgroundOfButtonWithBadgeColor
  L9_2 = L9_2[2]
  L10_2 = Theme
  L10_2 = L10_2.dimBackgroundOfButtonWithBadgeColor
  L10_2 = L10_2[3]
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = L3_2.dimBackground
  L7_2 = display
  L7_2 = L7_2.contentCenterX
  L6_2.x = L7_2
  L6_2 = L3_2.dimBackground
  L7_2 = display
  L7_2 = L7_2.contentCenterY
  L6_2.y = L7_2
  L6_2 = L3_2.dimBackground
  L6_2.alpha = 0
  L6_2 = display
  L6_2 = L6_2.newRoundedRect
  L7_2 = L3_2.view
  L8_2 = 0
  L9_2 = 0
  L10_2 = 50
  L11_2 = 15
  L12_2 = 2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2.levelRect = L6_2
  L6_2 = L3_2.levelRect
  L6_2.strokeWidth = 2
  L6_2 = L3_2.levelRect
  L7_2 = L6_2
  L6_2 = L6_2.setStrokeColor
  L8_2 = Constants
  L8_2 = L8_2.greenColorSceneBorder
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = L3_2.levelRect
  L7_2 = L6_2
  L6_2 = L6_2.setFillColor
  L8_2 = 0.3803921568627451
  L9_2 = 0.3568627450980392
  L10_2 = 0.28627450980392155
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = L3_2.levelRect
  L6_2.alpha = 0
  L6_2 = L3_2.levelRect
  L6_2.rotation = -30
  L6_2 = display
  L6_2 = L6_2.newText
  L7_2 = L3_2.view
  L8_2 = ""
  L9_2 = 0
  L10_2 = 0
  L11_2 = Theme
  L11_2 = L11_2.textStyle
  L11_2 = L11_2[5]
  L11_2 = L11_2.font
  L12_2 = 9
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2.levelLabel = L6_2
  L6_2 = L3_2.levelLabel
  L7_2 = L4_2.badgeText
  L6_2.text = L7_2
  L6_2 = L3_2.levelLabel
  L6_2.alpha = 0
  L6_2 = L3_2.levelLabel
  L7_2 = L6_2
  L6_2 = L6_2.setFillColor
  L8_2 = 1
  L9_2 = 1
  L10_2 = 1
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = L3_2.levelLabel
  L6_2.rotation = -30
  return L3_2
end

new = L6_1

function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = mainPlayer
  L1_2 = L1_2.level
  L2_2 = A0_2.unlockLevel
  if L1_2 < L2_2 then
    A0_2.scaleDecreaseAmount = 0
    L1_2 = A0_2.levelLabel
    L1_2.alpha = 1
    L1_2 = A0_2.levelRect
    L1_2.alpha = 0.9
  else
    A0_2.scaleDecreaseAmount = 0.1
    L1_2 = A0_2.levelLabel
    L1_2.alpha = 0
    L1_2 = A0_2.levelRect
    L1_2.alpha = 0
  end
end

changeVisualProperty = L6_1

function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = display
  L1_2 = L1_2.remove
  L2_2 = A0_2.levelRect
  L1_2(L2_2)
  L1_2 = display
  L1_2 = L1_2.remove
  L2_2 = A0_2.levelLabel
  L1_2(L2_2)
  L1_2 = display
  L1_2 = L1_2.remove
  L2_2 = A0_2.dimBackground
  L1_2(L2_2)
  A0_2.levelLabel = nil
  A0_2.levelRect = nil
  A0_2.dimBackground = nil
  L1_2 = L0_1
  L1_2 = L1_2.removeSelf
  L2_2 = A0_2
  L1_2(L2_2)
end

removeSelf = L6_1
