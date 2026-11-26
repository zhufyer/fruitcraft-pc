local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.BaseView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Views.EffectsManager"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Components.TDGoldLabelView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Components.AudioManager"
L4_1 = L4_1(L5_1)
L5_1 = setmetatable
L6_1 = _M
L7_1 = {}
L7_1.__index = L0_1
L5_1(L6_1, L7_1)
L5_1 = {}
L5_1.type = "image"
L6_1 = Constants
L6_1 = L6_1.Path_Assets
L7_1 = "Rewards/FC-SignedOpenCheckBox.png"
L6_1 = L6_1 .. L7_1
L5_1.filename = L6_1
L6_1 = {}
L6_1.type = "image"
L7_1 = Constants
L7_1 = L7_1.Path_Assets
L8_1 = "Rewards/FC-UnsignedOpenCheckBox.png"
L7_1 = L7_1 .. L8_1
L6_1.filename = L7_1

function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = L0_1
  L3_2 = L3_2.newWithParams
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = {}
  L3_2.timers = L4_2
  L4_2 = A1_2.status
  L3_2.status = L4_2
  L4_2 = A1_2.itemHeight
  L4_2 = L4_2 * 4
  L4_2 = L4_2 / 5
  L5_2 = A1_2.itemHeight
  L5_2 = L5_2 - 5
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = L3_2.view
  L8_2 = Constants
  L8_2 = L8_2.Path_Assets
  L9_2 = "cell_background.png"
  L8_2 = L8_2 .. L9_2
  L9_2 = A1_2.itemWidth
  L10_2 = A1_2.itemHeight
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L3_2.background = L6_2
  L6_2 = display
  L6_2 = L6_2.newGroup
  L6_2 = L6_2()
  L3_2.detailsGroup = L6_2
  L6_2 = L3_2.detailsGroup
  L6_2.anchorX = 0
  L6_2 = L3_2.detailsGroup
  L6_2.anchorChildren = true
  L6_2 = L3_2.view
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L3_2.detailsGroup
  L6_2(L7_2, L8_2)
  L6_2 = nil
  L7_2 = A1_2.dayNumber
  L7_2 = L7_2 % 4
  if L7_2 == 0 then
    L6_2 = "Shop/FC-mysterious-box-closed.png"
  else
    L6_2 = "Shop/4. Gold Pack.png"
  end
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = L3_2.detailsGroup
  L9_2 = Constants
  L9_2 = L9_2.Path_Assets
  L10_2 = L6_2
  L9_2 = L9_2 .. L10_2
  L10_2 = L5_2
  L11_2 = L5_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L3_2.icon = L7_2
  L7_2 = L3_2.icon
  L7_2.x = 0
  L7_2 = L3_2.icon
  L7_2.y = 0
  L7_2 = {}
  L8_2 = Constants
  L8_2 = L8_2.Path_Assets
  L9_2 = "BattleItems/FC-Outcome-gold.png"
  L8_2 = L8_2 .. L9_2
  L7_2.image = L8_2
  L7_2.value = "0"
  L7_2.mode = "L"
  L7_2.widthIm = 18
  L7_2.heightIm = 18
  L7_2.x = 0
  L7_2.y = 0
  L8_2 = Constants
  L8_2 = L8_2.fontForTitle
  L8_2 = L8_2()
  L7_2.font = L8_2
  L7_2.fontSize = 12
  L7_2.gap = 20
  L8_2 = A1_2.dayNumber
  L8_2 = L8_2 % 4
  if L8_2 == 0 then
    L8_2 = {}
    L9_2 = 1
    L10_2 = 0
    L11_2 = 0
    L8_2[1] = L9_2
    L8_2[2] = L10_2
    L8_2[3] = L11_2
    L7_2.labelColor = L8_2
  end
  L8_2 = L3_1
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2)
  L3_2.description = L8_2
  L8_2 = L3_2.description
  L9_2 = L8_2
  L8_2 = L8_2.setValue
  L10_2 = A1_2.rewardAmount
  L11_2 = true
  L12_2 = true
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = L3_2.detailsGroup
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L3_2.description
  L10_2 = L10_2.view
  L8_2(L9_2, L10_2)
  L8_2 = L3_2.description
  L9_2 = L3_2.icon
  L9_2 = L9_2.x
  L10_2 = L3_2.icon
  L10_2 = L10_2.width
  L9_2 = L9_2 + L10_2
  L9_2 = L9_2 + 12
  L8_2.x = L9_2
  L8_2 = L3_2.description
  L8_2.y = 0
  L8_2 = display
  L8_2 = L8_2.newRect
  L9_2 = L3_2.detailsGroup
  L10_2 = 0
  L11_2 = 0
  L12_2 = L4_2
  L13_2 = L4_2
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L3_2.checkBox = L8_2
  L8_2 = L3_2.checkBox
  L9_2 = A1_2.itemWidth
  L9_2 = L9_2 - 15
  L10_2 = L3_2.checkBox
  L10_2 = L10_2.width
  L9_2 = L9_2 - L10_2
  L8_2.x = L9_2
  L8_2 = L3_2.checkBox
  L8_2.y = 0
  L8_2 = L3_2.checkBox
  L9_2 = L6_1
  L8_2.fill = L9_2
  L8_2 = {}
  L9_2 = L3_2.detailsGroup
  L8_2.parent = L9_2
  L9_2 = L2_1
  L9_2 = L9_2.adjustNumber
  L10_2 = A1_2.dayNumber
  L9_2 = L9_2(L10_2)
  L10_2 = " "
  L11_2 = L2_1
  L11_2 = L11_2["Reward Day"]
  L9_2 = L9_2 .. L10_2 .. L11_2
  L8_2.text = L9_2
  L8_2.x = 0
  L8_2.y = 0
  L9_2 = Constants
  L9_2 = L9_2.fontForSubtitle
  L9_2 = L9_2()
  L8_2.font = L9_2
  L8_2.fontSize = 10
  L9_2 = display
  L9_2 = L9_2.newText
  L10_2 = L8_2
  L9_2 = L9_2(L10_2)
  L3_2.dayLabel = L9_2
  L9_2 = L3_2.dayLabel
  L10_2 = L9_2
  L9_2 = L9_2.setFillColor
  L11_2 = Constants
  L11_2 = L11_2.darkBlueColor
  L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2()
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L9_2 = L3_2.dayLabel
  L10_2 = L3_2.checkBox
  L10_2 = L10_2.x
  L11_2 = L3_2.dayLabel
  L11_2 = L11_2.width
  L10_2 = L10_2 - L11_2
  L10_2 = L10_2 - 10
  L9_2.x = L10_2
  L9_2 = L3_2.detailsGroup
  L10_2 = A1_2.itemWidth
  L10_2 = -L10_2
  L10_2 = L10_2 / 2
  L10_2 = L10_2 + 10
  L9_2.x = L10_2
  L9_2 = display
  L9_2 = L9_2.newRect
  L10_2 = L3_2.view
  L11_2 = 0
  L12_2 = 0
  L13_2 = A1_2.itemWidth
  L14_2 = A1_2.itemHeight
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L11_2 = L9_2
  L10_2 = L9_2.setFillColor
  L12_2 = 0
  L13_2 = 0
  L14_2 = 0
  L15_2 = 0.1
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L9_2.alpha = 0
  L10_2 = L3_2.status
  if L10_2 ~= 1 then
    L9_2.alpha = 1
  end
  return L3_2
end

new = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.status
  if L1_2 == 0 then
    L2_2 = A0_2
    L1_2 = A0_2.updateCheckBox
    L3_2 = L6_1
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2.status
    if L1_2 == 1 then
      L1_2 = A0_2.timers
      L2_2 = timer
      L2_2 = L2_2.performWithDelay
      L3_2 = 2000
      
      function L4_2()
        local L0_3, L1_3
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.animateCurrentRewardView
        L0_3(L1_3)
      end
      
      L5_2 = 1
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      L1_2.animateView = L2_2
    else
      L1_2 = A0_2.status
      if L1_2 == 2 then
        L2_2 = A0_2
        L1_2 = A0_2.updateCheckBox
        L3_2 = L5_1
        L4_2 = false
        L1_2(L2_2, L3_2, L4_2)
      end
    end
  end
end

updateItemView = L7_1

function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A2_2 then
    L4_2 = A0_2.checkBox
    L4_2.y = -30
    L4_2 = A0_2.checkBox
    L4_2.alpha = 0
    L4_2 = A0_2.checkBox
    L4_2.xScale = 1.4
    L4_2 = A0_2.checkBox
    L4_2.yScale = 1.4
    L4_2 = A0_2.checkBox
    L4_2.fill = A1_2
    L4_2 = transition
    L4_2 = L4_2.to
    L5_2 = A0_2.checkBox
    L6_2 = {}
    L6_2.time = 1200
    L6_2.alpha = 1
    L7_2 = easing
    L7_2 = L7_2.outCubic
    L6_2.transition = L7_2
    L6_2.tag = "checkBoxAnimation"
    L4_2(L5_2, L6_2)
    L4_2 = transition
    L4_2 = L4_2.to
    L5_2 = A0_2.checkBox
    L6_2 = {}
    L6_2.time = 600
    L6_2.y = 0
    L6_2.xScale = 1
    L6_2.yScale = 1
    L7_2 = easing
    L7_2 = L7_2.inOutBack
    L6_2.transition = L7_2
    L6_2.tag = "checkBoxAnimation"
    
    function L7_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = L4_1
      L0_3 = L0_3.playEffect
      L1_3 = Theme
      L1_3 = L1_3.checkBoxSound
      L0_3(L1_3)
      L0_3 = transition
      L0_3 = L0_3.to
      L1_3 = A0_2
      L1_3 = L1_3.checkBox
      L2_3 = {}
      L2_3.time = 240
      L2_3.alpha = 0.6
      L2_3.tag = "checkBoxAnimation"
      
      function L3_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = transition
        L0_4 = L0_4.to
        L1_4 = A0_2
        L1_4 = L1_4.checkBox
        L2_4 = {}
        L2_4.time = 240
        L2_4.alpha = 1
        L2_4.tag = "checkBoxAnimation"
        
        function L3_4()
          local L0_5, L1_5
          L0_5 = A3_2
          if L0_5 then
            L0_5 = A3_2
            L0_5()
          end
        end
        
        L2_4.onComplete = L3_4
        L0_4(L1_4, L2_4)
      end
      
      L2_3.onComplete = L3_3
      L0_3(L1_3, L2_3)
    end
    
    L6_2.onComplete = L7_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2.checkBox
    L4_2.fill = A1_2
  end
end

updateCheckBox = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = transition
  L1_2 = L1_2.to
  L2_2 = A0_2.view
  L3_2 = {}
  L3_2.time = 600
  L3_2.xScale = 1.02
  L3_2.yScale = 1.02
  L4_2 = easing
  L4_2 = L4_2.inQuad
  L3_2.transition = L4_2
  L3_2.tag = "rewardViewAnimation"
  
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = A0_2
    L1_3 = L1_3.view
    L2_3 = {}
    L2_3.time = 600
    L2_3.xScale = 0.99
    L2_3.yScale = 0.99
    L2_3.alpha = 0.8
    L3_3 = easing
    L3_3 = L3_3.inExpo
    L2_3.transition = L3_3
    L2_3.tag = "rewardViewAnimation"
    
    function L3_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = transition
      L0_4 = L0_4.to
      L1_4 = A0_2
      L1_4 = L1_4.view
      L2_4 = {}
      L2_4.time = 120
      L2_4.xScale = 1
      L2_4.yScale = 1
      L2_4.alpha = 1
      L2_4.tag = "rewardViewAnimation"
      
      function L3_4()
        local L0_5, L1_5, L2_5, L3_5, L4_5
        L0_5 = L1_1
        L0_5 = L0_5.rewardEffect
        L1_5 = A0_2
        L1_5 = L1_5.view
        L1_5 = L1_5.width
        L1_5 = -L1_5
        L1_5 = L1_5 / 2
        L2_5 = 0
        L3_5 = A0_2
        L3_5 = L3_5.view
        L0_5(L1_5, L2_5, L3_5)
        L0_5 = A0_2
        L0_5 = L0_5.timers
        L1_5 = timer
        L1_5 = L1_5.performWithDelay
        L2_5 = 2100
        
        function L3_5()
          local L0_6, L1_6, L2_6, L3_6
          L0_6 = A0_2
          L1_6 = L0_6
          L0_6 = L0_6.updateCheckBox
          L2_6 = L5_1
          L3_6 = true
          L0_6(L1_6, L2_6, L3_6)
        end
        
        L4_5 = 1
        L1_5 = L1_5(L2_5, L3_5, L4_5)
        L0_5.updateCheckbox = L1_5
      end
      
      L2_4.onComplete = L3_4
      L0_4(L1_4, L2_4)
    end
    
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L3_2.onComplete = L4_2
  L1_2(L2_2, L3_2)
end

animateCurrentRewardView = L7_1
