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
L2_1 = "Core.BaseView"
L1_1 = L1_1(L2_1)
L2_1 = _M
L3_1 = setmetatable
L4_1 = _M
L5_1 = {}
L5_1.__index = L1_1
L3_1(L4_1, L5_1)
L3_1 = nil
L4_1 = 1000
L5_1 = 900
L6_1 = 30

function L7_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = new
  L1_2 = L2_1
  L0_2 = L0_2(L1_2)
  L3_1 = L0_2
  L0_2 = isAndroid
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = mainPlayer
    L0_2 = L0_2.level
    if L0_2 == 10 then
      L0_2 = todNative
      L0_2 = L0_2.metrixSDK
      L1_2 = {}
      L1_2.operation = "NewEvent"
      L1_2.eventSlug = "bwjly"
      L0_2(L1_2)
    end
  end
  L0_2 = isAndroid
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = mainPlayer
    L0_2 = L0_2.level
    if L0_2 == 20 then
      L0_2 = todNative
      L0_2 = L0_2.metrixSDK
      L1_2 = {}
      L1_2.operation = "NewEvent"
      L1_2.eventSlug = "cazut"
      L0_2(L1_2)
    end
  end
  L0_2 = L3_1
  L0_2 = L0_2.contentGroup
  L0_2.alpha = 0.3
  L0_2 = L3_1
  L0_2 = L0_2.contentGroup
  L0_2.xScale = 1.5
  L0_2 = L3_1
  L0_2 = L0_2.contentGroup
  L0_2.yScale = 1.5
  L0_2 = L3_1
  L0_2 = L0_2.background
  L0_2.alpha = 0
  L0_2 = transition
  L0_2 = L0_2.to
  L1_2 = L3_1
  L1_2 = L1_2.background
  L2_2 = {}
  L2_2.time = 200
  L2_2.alpha = 1
  L0_2(L1_2, L2_2)
  L0_2 = transition
  L0_2 = L0_2.to
  L1_2 = L3_1
  L1_2 = L1_2.contentGroup
  L2_2 = {}
  L2_2.time = 200
  L2_2.alpha = 1
  L0_2(L1_2, L2_2)
  L0_2 = transition
  L0_2 = L0_2.to
  L1_2 = L3_1
  L1_2 = L1_2.contentGroup
  L2_2 = {}
  L2_2.time = 2400
  L2_2.xScale = 1
  L2_2.yScale = 1
  L3_2 = easing
  L3_2 = L3_2.outElastic
  L2_2.transition = L3_2
  L0_2(L1_2, L2_2)
  L0_2 = timer
  L0_2 = L0_2.performWithDelay
  L1_2 = 200
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = animateStars
    L0_3()
  end
  
  L3_2 = 1
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = transition
  L0_2 = L0_2.to
  L1_2 = L3_1
  L1_2 = L1_2.view
  L2_2 = {}
  L3_2 = L5_1
  L2_2.time = L3_2
  L3_2 = L4_1
  L3_2 = 900 + L3_2
  L2_2.delay = L3_2
  L2_2.alpha = 0
  
  function L3_2()
    local L0_3, L1_3
    L0_3 = remove
    L0_3()
  end
  
  L2_2.onComplete = L3_2
  L0_2(L1_2, L2_2)
end

show = L7_1

function L7_1()
  local L0_2, L1_2
  L0_2 = L3_1
  if L0_2 then
    L0_2 = L3_1
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = nil
    L3_1 = L0_2
  end
end

remove = L7_1

function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = 1
  L1_2 = L6_1
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = display
    L4_2 = L4_2.newImageRect
    L5_2 = Constants
    L5_2 = L5_2.Path_Assets
    L6_2 = "Shop/Star.png"
    L5_2 = L5_2 .. L6_2
    L6_2 = 20
    L7_2 = 20
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L4_2.x = 0
    L4_2.y = 0
    L5_2 = L3_1
    if L5_2 then
      L5_2 = L3_1
      L5_2 = L5_2.contentGroup
      L6_2 = L5_2
      L5_2 = L5_2.insert
      L7_2 = 1
      L8_2 = L4_2
      L5_2(L6_2, L7_2, L8_2)
    end
    L5_2 = math
    L5_2 = L5_2.random
    L6_2 = 0
    L7_2 = 360
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = 300
    L7_2 = math
    L7_2 = L7_2.cos
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2 * L6_2
    L8_2 = math
    L8_2 = L8_2.sin
    L9_2 = L5_2
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2 * L6_2
    L9_2 = math
    L9_2 = L9_2.random
    L10_2 = 0
    L11_2 = 600
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = transition
    L10_2 = L10_2.to
    L11_2 = L4_2
    L12_2 = {}
    L12_2.time = 1500
    L12_2.delay = L9_2
    L12_2.x = L7_2
    L12_2.y = L8_2
    L12_2.alpha = 0
    L13_2 = easing
    L13_2 = L13_2.outCubic
    L12_2.transition = L13_2
    L10_2(L11_2, L12_2)
  end
end

animateStars = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L1_1
  L2_2 = L2_2.new
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = L2_2.view
  L5_2 = 0
  L6_2 = 0
  L7_2 = 570
  L8_2 = 360
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.background = L3_2
  L3_2 = _isFillterSupport
  if L3_2 then
    L3_2 = L2_2.background
    L3_2 = L3_2.fill
    L3_2.effect = "generator.radialGradient"
    L3_2 = L2_2.background
    L3_2 = L3_2.fill
    L3_2 = L3_2.effect
    L4_2 = {}
    L5_2 = 0
    L6_2 = 0
    L7_2 = 0
    L8_2 = 0.7
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L4_2[4] = L8_2
    L3_2.color1 = L4_2
    L3_2 = L2_2.background
    L3_2 = L3_2.fill
    L3_2 = L3_2.effect
    L4_2 = {}
    L5_2 = 0
    L6_2 = 0
    L7_2 = 0
    L8_2 = 0
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L4_2[4] = L8_2
    L3_2.color2 = L4_2
    L3_2 = L2_2.background
    L3_2 = L3_2.fill
    L3_2 = L3_2.effect
    L4_2 = {}
    L5_2 = 0.5
    L6_2 = 0.5
    L7_2 = 0.125
    L8_2 = 0.5
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L4_2[4] = L8_2
    L3_2.center_and_radiuses = L4_2
  else
    L3_2 = L2_2.background
    L4_2 = L3_2
    L3_2 = L3_2.setFillColor
    L5_2 = 0
    L6_2 = 0
    L7_2 = 0
    L8_2 = 0.5
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
  L3_2 = L2_2.background
  L4_2 = L3_2
  L3_2 = L3_2.addEventListener
  L5_2 = "touch"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L2_2.view
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L3_2 = L2_2.view
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  L2_2.contentGroup = L3_2
  L3_2 = L2_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = L2_2.contentGroup
  L3_2(L4_2, L5_2)
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = L2_2.contentGroup
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "General/LevelUp.png"
  L5_2 = L5_2 .. L6_2
  L6_2 = 199
  L7_2 = 159
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2.mainImage = L3_2
  L3_2 = L2_2.mainImage
  L3_2.x = 0
  L3_2 = L2_2.mainImage
  L3_2.y = 0
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = L2_2.contentGroup
  L5_2 = L0_1
  L5_2 = L5_2["Level up"]
  L6_2 = 0
  L7_2 = 34
  L8_2 = Theme
  L8_2 = L8_2.textStyle
  L8_2 = L8_2[3]
  L8_2 = L8_2.font
  L9_2 = 12
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2.levelUpLabel = L3_2
  L3_2 = L2_2.levelUpLabel
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Theme
  L5_2 = L5_2.colorsSet
  L5_2 = L5_2.blackColor
  L5_2 = L5_2[1]
  L6_2 = Theme
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.blackColor
  L6_2 = L6_2[2]
  L7_2 = Theme
  L7_2 = L7_2.colorsSet
  L7_2 = L7_2.blackColor
  L7_2 = L7_2[3]
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = L2_2.contentGroup
  L5_2 = L0_1
  L5_2 = L5_2.adjustNumber
  L6_2 = mainPlayer
  L6_2 = L6_2.level
  L5_2 = L5_2(L6_2)
  L6_2 = 0
  L7_2 = -17
  L8_2 = Theme
  L8_2 = L8_2.textStyle
  L8_2 = L8_2[3]
  L8_2 = L8_2.font
  L9_2 = 60
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2.levelLabel = L3_2
  L3_2 = L2_2.levelLabel
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = 1
  L3_2(L4_2, L5_2)
  return L2_2
end

new = L7_1
