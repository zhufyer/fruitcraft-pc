local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.BaseView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Views.ChanceBoxView"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Components.TDButtonView"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.EffectsManager"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Language"
L4_1 = L4_1(L5_1)
L5_1 = nil
L6_1 = nil
L7_1 = nil
L8_1 = nil
L9_1 = nil
L10_1 = nil
L11_1 = nil
L12_1 = setmetatable
L13_1 = _M
L14_1 = {}
L14_1.__index = L0_1
L12_1(L13_1, L14_1)

function L12_1()
  local L0_2, L1_2
  L0_2 = L5_1
  L1_2 = L0_2
  L0_2 = L0_2.setToNormalPos
  L0_2(L1_2)
  L0_2 = L6_1
  L1_2 = L0_2
  L0_2 = L0_2.setToNormalPos
  L0_2(L1_2)
  L0_2 = L7_1
  L1_2 = L0_2
  L0_2 = L0_2.setToNormalPos
  L0_2(L1_2)
end

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L1_2.width = 100
  L1_2.height = 30
  L2_2 = Constants
  L2_2 = L2_2.Path_Assets
  L3_2 = "BattleItems/battle_outcome_button.png"
  L2_2 = L2_2 .. L3_2
  L1_2.defaultFile = L2_2
  L2_2 = L4_1
  L2_2 = L2_2.GetReward
  L1_2.label = L2_2
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L0_3 = L0_3.claimButtonCallback
    if L0_3 then
      L0_3 = A0_2
      L0_3 = L0_3.claimButtonCallback
      L0_3()
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.remove
    L0_3(L1_3)
  end
  
  L1_2.onRelease = L2_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.getRewardButton = L2_2
  L2_2 = A0_2.view
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = A0_2.getRewardButton
  L4_2 = L4_2.view
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.getRewardButton
  L3_2 = display
  L3_2 = L3_2.contentHeight
  L3_2 = L3_2 / 2
  L4_2 = A0_2.getRewardButton
  L4_2 = L4_2.height
  L4_2 = L4_2 / 2
  L3_2 = L3_2 - L4_2
  L3_2 = L3_2 - 20
  L2_2.y = L3_2
end

createClaimButton = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.isTouchable
  if L2_2 then
    L2_2 = 500
    L3_2 = A0_2.phase
    if L3_2 == "ended" then
      A1_2.isTouchable = false
      L4_2 = L8_1
      L4_2.alpha = 0
      L4_2 = transition
      L4_2 = L4_2.cancel
      L5_2 = "boxAnimation"
      L4_2(L5_2)
      L4_2 = L12_1
      L4_2()
      L4_2 = transition
      L4_2 = L4_2.to
      L5_2 = L5_1
      L6_2 = {}
      L7_2 = L2_2 * 0.75
      L6_2.time = L7_2
      L7_2 = L6_1
      L7_2 = L7_2.y
      L6_2.y = L7_2
      L7_2 = easing
      L7_2 = L7_2.inOutSine
      L6_2.transition = L7_2
      L6_2.tag = "getRewardAnimation"
      L4_2(L5_2, L6_2)
      L4_2 = transition
      L4_2 = L4_2.to
      L5_2 = L5_1
      L6_2 = {}
      L6_2.time = L2_2
      L7_2 = L6_1
      L7_2 = L7_2.x
      L6_2.x = L7_2
      L7_2 = easing
      L7_2 = L7_2.inSine
      L6_2.transition = L7_2
      L6_2.tag = "getRewardAnimation"
      L4_2(L5_2, L6_2)
      L4_2 = transition
      L4_2 = L4_2.to
      L5_2 = L6_1
      L6_2 = {}
      L6_2.time = L2_2
      L7_2 = L7_1
      L7_2 = L7_2.y
      L6_2.y = L7_2
      L6_2.xScale = 0.75
      L6_2.yScale = 0.75
      L7_2 = easing
      L7_2 = L7_2.inOutSine
      L6_2.transition = L7_2
      L6_2.tag = "getRewardAnimation"
      L4_2(L5_2, L6_2)
      L4_2 = transition
      L4_2 = L4_2.to
      L5_2 = L6_1
      L6_2 = {}
      L7_2 = L2_2 * 0.75
      L6_2.time = L7_2
      L7_2 = L7_1
      L7_2 = L7_2.x
      L6_2.x = L7_2
      L7_2 = easing
      L7_2 = L7_2.inSine
      L6_2.transition = L7_2
      L6_2.tag = "getRewardAnimation"
      L4_2(L5_2, L6_2)
      L4_2 = transition
      L4_2 = L4_2.to
      L5_2 = L7_1
      L6_2 = {}
      L6_2.time = L2_2
      L7_2 = L5_1
      L7_2 = L7_2.y
      L6_2.y = L7_2
      L6_2.xScale = 0.75
      L6_2.yScale = 0.75
      L7_2 = easing
      L7_2 = L7_2.inOutSine
      L6_2.transition = L7_2
      L6_2.tag = "getRewardAnimation"
      
      function L7_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = L7_1
        L1_3 = L0_3
        L0_3 = L0_3.showSignAndText
        L2_3 = 2
        L3_3 = L9_1
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = L6_1
        L1_3 = L0_3
        L0_3 = L0_3.showSignAndText
        L2_3 = 2
        L3_3 = L10_1
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = L5_1
        L1_3 = L0_3
        L0_3 = L0_3.openBox
        L2_3 = L11_1
        L0_3(L1_3, L2_3)
        L0_3 = L3_1
        L0_3 = L0_3.showFireworkEffect
        L1_3 = display
        L1_3 = L1_3.contentCenterX
        L2_3 = display
        L2_3 = L2_3.contentCenterY
        L0_3(L1_3, L2_3)
        L0_3 = A1_2
        L1_3 = L0_3
        L0_3 = L0_3.createClaimButton
        L0_3(L1_3)
      end
      
      L6_2.onComplete = L7_2
      L4_2(L5_2, L6_2)
      L4_2 = transition
      L4_2 = L4_2.to
      L5_2 = L7_1
      L6_2 = {}
      L7_2 = L2_2 * 0.75
      L6_2.time = L7_2
      L7_2 = L5_1
      L7_2 = L7_2.x
      L6_2.x = L7_2
      L7_2 = easing
      L7_2 = L7_2.inSine
      L6_2.transition = L7_2
      L6_2.tag = "getRewardAnimation"
      L4_2(L5_2, L6_2)
    end
  end
end

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.isTouchable
  if L2_2 then
    L2_2 = 500
    L3_2 = A0_2.phase
    if L3_2 == "ended" then
      A1_2.isTouchable = false
      L4_2 = L8_1
      L4_2.alpha = 0
      L4_2 = transition
      L4_2 = L4_2.cancel
      L5_2 = "boxAnimation"
      L4_2(L5_2)
      L4_2 = L12_1
      L4_2()
      L4_2 = transition
      L4_2 = L4_2.to
      L5_2 = L7_1
      L6_2 = {}
      L7_2 = L2_2 * 0.75
      L6_2.time = L7_2
      L7_2 = L6_1
      L7_2 = L7_2.y
      L6_2.y = L7_2
      L7_2 = easing
      L7_2 = L7_2.inOutSine
      L6_2.transition = L7_2
      L6_2.tag = "getRewardAnimation"
      L4_2(L5_2, L6_2)
      L4_2 = transition
      L4_2 = L4_2.to
      L5_2 = L7_1
      L6_2 = {}
      L6_2.time = L2_2
      L7_2 = L6_1
      L7_2 = L7_2.x
      L6_2.x = L7_2
      L7_2 = easing
      L7_2 = L7_2.inSine
      L6_2.transition = L7_2
      L6_2.tag = "getRewardAnimation"
      L4_2(L5_2, L6_2)
      L4_2 = transition
      L4_2 = L4_2.to
      L5_2 = L6_1
      L6_2 = {}
      L6_2.time = L2_2
      L7_2 = L5_1
      L7_2 = L7_2.y
      L6_2.y = L7_2
      L6_2.xScale = 0.75
      L6_2.yScale = 0.75
      L7_2 = easing
      L7_2 = L7_2.inOutSine
      L6_2.transition = L7_2
      L6_2.tag = "getRewardAnimation"
      L4_2(L5_2, L6_2)
      L4_2 = transition
      L4_2 = L4_2.to
      L5_2 = L6_1
      L6_2 = {}
      L7_2 = L2_2 * 0.75
      L6_2.time = L7_2
      L7_2 = L5_1
      L7_2 = L7_2.x
      L6_2.x = L7_2
      L7_2 = easing
      L7_2 = L7_2.inSine
      L6_2.transition = L7_2
      L6_2.tag = "getRewardAnimation"
      L4_2(L5_2, L6_2)
      L4_2 = transition
      L4_2 = L4_2.to
      L5_2 = L5_1
      L6_2 = {}
      L6_2.time = L2_2
      L7_2 = L7_1
      L7_2 = L7_2.y
      L6_2.y = L7_2
      L6_2.xScale = 0.75
      L6_2.yScale = 0.75
      L7_2 = easing
      L7_2 = L7_2.inOutSine
      L6_2.transition = L7_2
      L6_2.tag = "getRewardAnimation"
      
      function L7_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = L5_1
        L1_3 = L0_3
        L0_3 = L0_3.showSignAndText
        L2_3 = 2
        L3_3 = L9_1
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = L6_1
        L1_3 = L0_3
        L0_3 = L0_3.showSignAndText
        L2_3 = 2
        L3_3 = L10_1
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = L7_1
        L1_3 = L0_3
        L0_3 = L0_3.openBox
        L2_3 = L11_1
        L0_3(L1_3, L2_3)
        L0_3 = L3_1
        L0_3 = L0_3.showFireworkEffect
        L1_3 = display
        L1_3 = L1_3.contentCenterX
        L2_3 = display
        L2_3 = L2_3.contentCenterY
        L0_3(L1_3, L2_3)
        L0_3 = A1_2
        L1_3 = L0_3
        L0_3 = L0_3.createClaimButton
        L0_3(L1_3)
      end
      
      L6_2.onComplete = L7_2
      L4_2(L5_2, L6_2)
      L4_2 = transition
      L4_2 = L4_2.to
      L5_2 = L5_1
      L6_2 = {}
      L7_2 = L2_2 * 0.75
      L6_2.time = L7_2
      L7_2 = L7_1
      L7_2 = L7_2.x
      L6_2.x = L7_2
      L7_2 = easing
      L7_2 = L7_2.inSine
      L6_2.transition = L7_2
      L6_2.tag = "getRewardAnimation"
      L4_2(L5_2, L6_2)
    end
  end
end

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.isTouchable
  if L2_2 then
    L2_2 = A0_2.phase
    if L2_2 == "ended" then
      A1_2.isTouchable = false
      L2_2 = L8_1
      L2_2.alpha = 0
      L2_2 = transition
      L2_2 = L2_2.cancel
      L3_2 = "boxAnimation"
      L2_2(L3_2)
      L2_2 = L12_1
      L2_2()
      L2_2 = L5_1
      L2_2 = L2_2.view
      L3_2 = L2_2
      L2_2 = L2_2.scale
      L4_2 = 0.75
      L5_2 = 0.75
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = L7_1
      L2_2 = L2_2.view
      L3_2 = L2_2
      L2_2 = L2_2.scale
      L4_2 = 0.75
      L5_2 = 0.75
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = L3_1
      L2_2 = L2_2.showFireworkEffect
      L3_2 = display
      L3_2 = L3_2.contentCenterX
      L4_2 = display
      L4_2 = L4_2.contentCenterY
      L2_2(L3_2, L4_2)
      L2_2 = L7_1
      L3_2 = L2_2
      L2_2 = L2_2.showSignAndText
      L4_2 = 2
      L5_2 = L9_1
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = L5_1
      L3_2 = L2_2
      L2_2 = L2_2.showSignAndText
      L4_2 = 2
      L5_2 = L10_1
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = L6_1
      L3_2 = L2_2
      L2_2 = L2_2.openBox
      L4_2 = L11_1
      L2_2(L3_2, L4_2)
      L3_2 = A1_2
      L2_2 = A1_2.createClaimButton
      L2_2(L3_2)
    end
  end
end

function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = transition
  L3_2 = L3_2.to
  L4_2 = A0_2
  L5_2 = {}
  L5_2.delay = 100
  L5_2.time = 500
  L5_2.x = A1_2
  L5_2.y = A2_2
  L3_2(L4_2, L5_2)
end

function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = L0_1
  L3_2 = L3_2.newWithParams
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2.claimButtonCallback
  L3_2.claimButtonCallback = L4_2
  L3_2.isTouchable = true
  L4_2 = display
  L4_2 = L4_2.newRect
  L5_2 = L3_2.view
  L6_2 = 0
  L7_2 = 0
  L8_2 = 570
  L9_2 = 360
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2.dimBackground = L4_2
  L4_2 = L3_2.dimBackground
  L5_2 = L4_2
  L4_2 = L4_2.setFillColor
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0.8
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = L3_2.dimBackground
  L5_2 = L4_2
  L4_2 = L4_2.addEventListener
  L6_2 = "touch"
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = L3_2.view
  L6_2 = L4_1
  L6_2 = L6_2.WheelOfFortuneTitle
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = Constants
  L11_2 = L11_2.fontForTitle
  L11_2 = L11_2()
  L12_2 = 12
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_1 = L4_2
  L4_2 = L8_1
  L5_2 = display
  L5_2 = L5_2.contentHeight
  L5_2 = -L5_2
  L5_2 = L5_2 / 2
  L6_2 = L8_1
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L5_2 = L5_2 + 20
  L4_2.y = L5_2
  L4_2 = A1_2.firstBoxText
  L9_1 = L4_2
  L4_2 = A1_2.secondBoxText
  L10_1 = L4_2
  L4_2 = A1_2.winnerBoxText
  L11_1 = L4_2
  L4_2 = {}
  L4_2.imageNameClose = "redBox.png"
  L4_2.imageNameOpen = "redOpenBox.png"
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L7_1 = L5_2
  L4_2.imageNameClose = "yellowBox.png"
  L4_2.imageNameOpen = "yellowOpenBox.png"
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_1 = L5_2
  L4_2.imageNameClose = "blueBox.png"
  L4_2.imageNameOpen = "blueOpenBox.png"
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L5_1 = L5_2
  L5_2 = L3_2.view
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L7_1
  L7_2 = L7_2.view
  L5_2(L6_2, L7_2)
  L5_2 = L3_2.view
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L6_1
  L7_2 = L7_2.view
  L5_2(L6_2, L7_2)
  L5_2 = L3_2.view
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L5_1
  L7_2 = L7_2.view
  L5_2(L6_2, L7_2)
  L5_2 = L16_1
  L6_2 = L7_1
  L7_2 = L3_2.dimBackground
  L7_2 = L7_2.width
  L7_2 = -L7_2
  L7_2 = L7_2 / 5
  L8_2 = L7_1
  L8_2 = L8_2.height
  L8_2 = -L8_2
  L8_2 = L8_2 / 3
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L16_1
  L6_2 = L6_1
  L7_2 = 0
  L8_2 = L6_1
  L8_2 = L8_2.height
  L8_2 = L8_2 / 3
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L16_1
  L6_2 = L5_1
  L7_2 = L3_2.dimBackground
  L7_2 = L7_2.width
  L7_2 = L7_2 / 5
  L8_2 = L5_1
  L8_2 = L8_2.height
  L8_2 = -L8_2
  L8_2 = L8_2 / 3
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L7_1
  L6_2 = L5_2
  L5_2 = L5_2.animateBox
  L5_2(L6_2)
  L5_2 = L6_1
  L6_2 = L5_2
  L5_2 = L5_2.animateBox
  L5_2(L6_2)
  L5_2 = L5_1
  L6_2 = L5_2
  L5_2 = L5_2.animateBox
  L5_2(L6_2)
  L5_2 = L7_1
  L5_2 = L5_2.view
  L6_2 = L5_2
  L5_2 = L5_2.addEventListener
  L7_2 = "touch"
  
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L14_1
    L2_3 = A0_3
    L3_3 = L3_2
    L1_3(L2_3, L3_3)
  end
  
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L6_1
  L5_2 = L5_2.view
  L6_2 = L5_2
  L5_2 = L5_2.addEventListener
  L7_2 = "touch"
  
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L15_1
    L2_3 = A0_3
    L3_3 = L3_2
    L1_3(L2_3, L3_3)
  end
  
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L5_1
  L5_2 = L5_2.view
  L6_2 = L5_2
  L5_2 = L5_2.addEventListener
  L7_2 = "touch"
  
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L13_1
    L2_3 = A0_3
    L3_3 = L3_2
    L1_3(L2_3, L3_3)
  end
  
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end

new = L17_1

function L17_1(A0_2)
  local L1_2, L2_2
  L1_2 = transition
  L1_2 = L1_2.cancel
  L2_2 = "boxAnimation"
  L1_2(L2_2)
  L1_2 = transition
  L1_2 = L1_2.cancel
  L2_2 = "getRewardAnimation"
  L1_2(L2_2)
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.removeSelf
  L1_2(L2_2)
  L1_2 = nil
  L7_1 = L1_2
  L1_2 = L5_1
  L2_2 = L1_2
  L1_2 = L1_2.removeSelf
  L1_2(L2_2)
  L1_2 = nil
  L5_1 = L1_2
  L1_2 = L6_1
  L2_2 = L1_2
  L1_2 = L1_2.removeSelf
  L1_2(L2_2)
  L1_2 = nil
  L6_1 = L1_2
  L1_2 = L8_1
  L2_2 = L1_2
  L1_2 = L1_2.removeSelf
  L1_2(L2_2)
  L1_2 = nil
  L8_1 = L1_2
  L1_2 = A0_2.dimBackground
  L2_2 = L1_2
  L1_2 = L1_2.removeSelf
  L1_2(L2_2)
  A0_2.dimBackground = nil
  L1_2 = A0_2.getRewardButton
  L2_2 = L1_2
  L1_2 = L1_2.removeSelf
  L1_2(L2_2)
  A0_2.getRewardButton = nil
  L1_2 = L0_1
  L1_2 = L1_2.removeSelf
  L2_2 = A0_2
  L1_2(L2_2)
end

remove = L17_1
