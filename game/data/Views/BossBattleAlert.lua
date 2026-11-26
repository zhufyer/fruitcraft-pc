local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Language"
L0_1 = L0_1(L1_1)
L1_1 = 200
L2_1 = 65
L3_1 = -10
L4_1 = Constants
L4_1 = L4_1.blueColor
L4_1, L5_1, L6_1 = L4_1()
L7_1 = nil
L8_1 = 150
L9_1 = 150

function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L7_2 = {}
  o = L7_2
  L7_2 = setmetatable
  L8_2 = o
  L9_2 = A0_2
  L7_2(L8_2, L9_2)
  A0_2.__index = A0_2
  L7_2 = o
  L8_2 = A1_2 or L8_2
  if not A1_2 then
    L8_2 = L8_1
  end
  L7_2.vsImageWidth = L8_2
  L7_2 = o
  L8_2 = A2_2 or L8_2
  if not A2_2 then
    L8_2 = L9_1
  end
  L7_2.vsImageHeight = L8_2
  L7_2 = o
  L8_2 = A3_2 or L8_2
  if not A3_2 then
    L8_2 = L1_1
  end
  L7_2.w = L8_2
  L7_2 = o
  L8_2 = A4_2 or L8_2
  if not A4_2 then
    L8_2 = L2_1
  end
  L7_2.h = L8_2
  L7_2 = o
  L8_2 = A5_2 or L8_2
  if not A5_2 then
    L8_2 = L3_1
  end
  L7_2.y = L8_2
  if not A6_2 then
    A6_2 = 18
  end
  L7_2 = o
  L8_2 = display
  L8_2 = L8_2.newGroup
  L8_2 = L8_2()
  L7_2.view = L8_2
  L7_2 = o
  L8_2 = display
  L8_2 = L8_2.newRoundedRect
  L9_2 = -300
  L10_2 = o
  L10_2 = L10_2.y
  L10_2 = -L10_2
  L11_2 = o
  L11_2 = L11_2.w
  L12_2 = o
  L12_2 = L12_2.h
  L13_2 = 5
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2.leftRect = L8_2
  L7_2 = o
  L7_2 = L7_2.leftRect
  L8_2 = L7_2
  L7_2 = L7_2.setFillColor
  L9_2 = L4_1
  L10_2 = L5_1
  L11_2 = L6_1
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = o
  L7_2 = L7_2.leftRect
  L7_2.strokeWidth = 2
  L7_2 = o
  L7_2 = L7_2.leftRect
  L8_2 = L7_2
  L7_2 = L7_2.setStrokeColor
  L9_2 = Constants
  L9_2 = L9_2.darkBlueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L7_2 = o
  L7_2 = L7_2.view
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = o
  L9_2 = L9_2.leftRect
  L7_2(L8_2, L9_2)
  L7_2 = {}
  L8_2 = mainPlayer
  L8_2 = L8_2.name
  L7_2.text = L8_2
  L7_2.x = 0
  L7_2.y = 0
  L8_2 = o
  L8_2 = L8_2.w
  L9_2 = o
  L9_2 = L9_2.vsImageWidth
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L7_2.width = L8_2
  L8_2 = A6_2 * 30
  L8_2 = L8_2 / 18
  L7_2.height = L8_2
  L8_2 = Constants
  L8_2 = L8_2.fontForSubtitle
  L8_2 = L8_2()
  L7_2.font = L8_2
  L7_2.fontSize = A6_2
  L7_2.align = "center"
  L8_2 = mainPlayer
  L8_2 = L8_2.isNameTemp
  if L8_2 then
    L8_2 = L0_1
    L8_2 = L8_2["My Cards"]
    L7_2.text = L8_2
  end
  L8_2 = o
  L9_2 = display
  L9_2 = L9_2.newText
  L10_2 = L7_2
  L9_2 = L9_2(L10_2)
  L8_2.leftText = L9_2
  L8_2 = o
  L8_2 = L8_2.leftText
  L9_2 = o
  L9_2 = L9_2.leftRect
  L9_2 = L9_2.x
  L8_2.x = L9_2
  L8_2 = o
  L8_2 = L8_2.leftText
  L9_2 = o
  L9_2 = L9_2.leftRect
  L9_2 = L9_2.y
  L8_2.y = L9_2
  L8_2 = system
  L8_2 = L8_2.getInfo
  L9_2 = "platformName"
  L8_2 = L8_2(L9_2)
  if L8_2 ~= "Android" then
    L8_2 = o
    L8_2 = L8_2.leftText
    L9_2 = o
    L9_2 = L9_2.leftText
    L9_2 = L9_2.y
    L9_2 = L9_2 + 3
    L8_2.y = L9_2
  end
  L8_2 = o
  L8_2 = L8_2.leftText
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = o
  L8_2 = L8_2.view
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = o
  L10_2 = L10_2.leftText
  L8_2(L9_2, L10_2)
  L8_2 = o
  L9_2 = display
  L9_2 = L9_2.newRoundedRect
  L10_2 = 300
  L11_2 = o
  L11_2 = L11_2.y
  L12_2 = o
  L12_2 = L12_2.w
  L13_2 = o
  L13_2 = L13_2.h
  L14_2 = 5
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L8_2.rightRect = L9_2
  L8_2 = o
  L8_2 = L8_2.rightRect
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = L4_1
  L11_2 = L5_1
  L12_2 = L6_1
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = o
  L8_2 = L8_2.rightRect
  L8_2.strokeWidth = 2
  L8_2 = o
  L8_2 = L8_2.rightRect
  L9_2 = L8_2
  L8_2 = L8_2.setStrokeColor
  L10_2 = Constants
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L8_2 = o
  L8_2 = L8_2.view
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = o
  L10_2 = L10_2.rightRect
  L8_2(L9_2, L10_2)
  L8_2 = math
  L8_2 = L8_2.random
  L9_2 = 4
  L8_2 = L8_2(L9_2)
  L9_2 = "Boss Name"
  L10_2 = L8_2
  L9_2 = L9_2 .. L10_2
  L10_2 = L0_1
  L10_2 = L10_2[L9_2]
  L7_2.text = L10_2
  L10_2 = o
  L11_2 = display
  L11_2 = L11_2.newText
  L12_2 = L7_2
  L11_2 = L11_2(L12_2)
  L10_2.rightText = L11_2
  L10_2 = o
  L10_2 = L10_2.rightText
  L11_2 = o
  L11_2 = L11_2.rightRect
  L11_2 = L11_2.x
  L10_2.x = L11_2
  L10_2 = o
  L10_2 = L10_2.rightText
  L11_2 = o
  L11_2 = L11_2.rightRect
  L11_2 = L11_2.y
  L10_2.y = L11_2
  L10_2 = system
  L10_2 = L10_2.getInfo
  L11_2 = "platformName"
  L10_2 = L10_2(L11_2)
  if L10_2 ~= "Android" then
    L10_2 = o
    L10_2 = L10_2.rightText
    L11_2 = o
    L11_2 = L11_2.rightText
    L11_2 = L11_2.y
    L11_2 = L11_2 + 3
    L10_2.y = L11_2
  end
  L10_2 = o
  L10_2 = L10_2.rightText
  L11_2 = L10_2
  L10_2 = L10_2.setFillColor
  L12_2 = 0
  L13_2 = 0
  L14_2 = 0
  L10_2(L11_2, L12_2, L13_2, L14_2)
  L10_2 = o
  L10_2 = L10_2.view
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = o
  L12_2 = L12_2.rightText
  L10_2(L11_2, L12_2)
  L10_2 = o
  L11_2 = display
  L11_2 = L11_2.newImageRect
  L12_2 = Constants
  L12_2 = L12_2.Path_Assets
  L13_2 = "BattleItems/FC-VS.png"
  L12_2 = L12_2 .. L13_2
  L13_2 = o
  L13_2 = L13_2.vsImageWidth
  L14_2 = o
  L14_2 = L14_2.vsImageHeight
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L10_2.circle = L11_2
  L10_2 = o
  L10_2 = L10_2.circle
  L10_2.x = 0
  L10_2 = o
  L10_2 = L10_2.circle
  L10_2.y = 0
  L10_2 = o
  L10_2 = L10_2.circle
  L10_2.alpha = 0
  L10_2 = o
  L10_2 = L10_2.view
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = o
  L12_2 = L12_2.circle
  L10_2(L11_2, L12_2)
  L10_2 = o
  L11_2 = display
  L11_2 = L11_2.newImageRect
  L12_2 = Constants
  L12_2 = L12_2.Path_Assets
  L13_2 = "General/FC-rankup-glow1.png"
  L12_2 = L12_2 .. L13_2
  L13_2 = 200
  L14_2 = 200
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L10_2.light = L11_2
  L10_2 = o
  L10_2 = L10_2.light
  L10_2.x = -10
  L10_2 = o
  L10_2 = L10_2.light
  L10_2.y = 0
  L10_2 = o
  L10_2 = L10_2.light
  L10_2.alpha = 0
  L10_2 = o
  L10_2 = L10_2.view
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = o
  L12_2 = L12_2.light
  L10_2(L11_2, L12_2)
  L10_2 = o
  return L10_2
end

new = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.leftRect
  L2_2.x = -300
  L2_2 = A0_2.leftText
  L3_2 = A0_2.leftRect
  L3_2 = L3_2.x
  L2_2.x = L3_2
  L2_2 = A0_2.rightRect
  L2_2.x = 300
  L2_2 = A0_2.rightText
  L3_2 = A0_2.rightRect
  L3_2 = L3_2.x
  L2_2.x = L3_2
  L2_2 = transition
  L2_2 = L2_2.to
  L3_2 = A0_2.leftRect
  L4_2 = {}
  L4_2.tag = "quest_trans"
  L4_2.time = 500
  L5_2 = easing
  L5_2 = L5_2.outQuart
  L4_2.transition = L5_2
  L5_2 = A0_2.w
  L5_2 = -L5_2
  L5_2 = L5_2 / 2
  L4_2.x = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = transition
  L2_2 = L2_2.to
  L3_2 = A0_2.rightRect
  L4_2 = {}
  L4_2.tag = "quest_trans"
  L4_2.time = 500
  L5_2 = easing
  L5_2 = L5_2.outQuart
  L4_2.transition = L5_2
  L5_2 = A0_2.w
  L5_2 = L5_2 / 2
  L4_2.x = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = transition
  L2_2 = L2_2.to
  L3_2 = A0_2.leftText
  L4_2 = {}
  L4_2.tag = "quest_trans"
  L4_2.time = 500
  L5_2 = easing
  L5_2 = L5_2.outQuart
  L4_2.transition = L5_2
  L5_2 = A0_2.w
  L5_2 = -L5_2
  L5_2 = L5_2 / 2
  L6_2 = A0_2.leftText
  L6_2 = L6_2.width
  L7_2 = A0_2.leftRect
  L7_2 = L7_2.width
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L5_2 = L5_2 + 3
  L4_2.x = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = transition
  L2_2 = L2_2.to
  L3_2 = A0_2.rightText
  L4_2 = {}
  L4_2.tag = "quest_trans"
  L4_2.time = 500
  L5_2 = easing
  L5_2 = L5_2.outQuart
  L4_2.transition = L5_2
  L5_2 = A0_2.w
  L5_2 = L5_2 / 2
  L6_2 = A0_2.rightRect
  L6_2 = L6_2.width
  L7_2 = A0_2.rightText
  L7_2 = L7_2.width
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L5_2 = L5_2 - 3
  L4_2.x = L5_2
  L2_2(L3_2, L4_2)
  if A1_2 ~= false then
    L2_2 = transition
    L2_2 = L2_2.to
    L3_2 = A0_2.light
    L4_2 = {}
    L4_2.tag = "quest_trans"
    L4_2.delay = 75
    L4_2.time = 200
    L4_2.alpha = 1
    L2_2(L3_2, L4_2)
    L2_2 = transition
    L2_2 = L2_2.to
    L3_2 = A0_2.light
    L4_2 = {}
    L4_2.tag = "quest_trans"
    L4_2.delay = 75
    L4_2.time = 400
    L4_2.xScale = 10
    L4_2.yScale = 10
    
    function L5_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2
      L0_3 = L0_3.circle
      L0_3.alpha = 1
      L0_3 = transition
      L0_3 = L0_3.to
      L1_3 = A0_2
      L1_3 = L1_3.light
      L2_3 = {}
      L2_3.tag = "quest_trans"
      L2_3.time = 400
      L2_3.alpha = 0
      L2_3.xScale = 15
      L2_3.yScale = 15
      L0_3(L1_3, L2_3)
    end
    
    L4_2.onComplete = L5_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2.circle
    L2_2.alpha = 1
  end
end

animationEffect = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = display
  L2_2 = L2_2.newRect
  L3_2 = 0
  L4_2 = 0
  L5_2 = 1570
  L6_2 = 1360
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L7_1 = L2_2
  L2_2 = L7_1
  L3_2 = display
  L3_2 = L3_2.contentCenterX
  L2_2.x = L3_2
  L2_2 = L7_1
  L3_2 = display
  L3_2 = L3_2.contentCenterY
  L2_2.y = L3_2
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0.7
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.addEventListener
  L4_2 = "touch"
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.addEventListener
  L4_2 = "tap"
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A1_2
  L2_2 = A1_2.toFront
  L2_2(L3_2)
  L3_2 = A1_2
  L2_2 = A1_2.insert
  L4_2 = L7_1
  L2_2(L3_2, L4_2)
  L2_2 = transition
  L2_2 = L2_2.to
  L3_2 = L7_1
  L4_2 = {}
  L4_2.tag = "quest_trans"
  L4_2.delay = 1250
  L4_2.time = 700
  L4_2.alpha = 0
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = removeBlackOverlay
    L0_3()
  end
  
  L4_2.onComplete = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = transition
  L2_2 = L2_2.to
  L3_2 = A0_2.view
  L4_2 = {}
  L4_2.tag = "quest_trans"
  L4_2.delay = 1250
  L4_2.time = 700
  L5_2 = easing
  L5_2 = L5_2.outExpo
  L4_2.transition = L5_2
  L4_2.xScale = 0.22
  L4_2.yScale = 0.22
  L4_2.x = 132
  L4_2.y = 20
  L2_2(L3_2, L4_2)
end

showBlackOverlay = L10_1

function L10_1()
  local L0_2, L1_2
  L0_2 = L7_1
  if L0_2 ~= nil then
    L0_2 = display
    L0_2 = L0_2.remove
    L1_2 = L7_1
    L0_2(L1_2)
    L0_2 = nil
    L7_1 = L0_2
  end
end

removeBlackOverlay = L10_1
