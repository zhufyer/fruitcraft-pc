local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
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
L4_1 = "Views.ProfileView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Components.TDButtonView"
L4_1 = L4_1(L5_1)
L5_1 = {}
L6_1 = nil
L7_1 = nil

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = display
  L1_2 = L1_2.newRect
  L2_2 = 0
  L3_2 = 0
  L4_2 = 1570
  L5_2 = 1360
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L7_1 = L1_2
  L1_2 = L7_1
  L2_2 = display
  L2_2 = L2_2.contentCenterX
  L1_2.x = L2_2
  L1_2 = L7_1
  L2_2 = display
  L2_2 = L2_2.contentCenterY
  L1_2.y = L2_2
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.setFillColor
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0.7
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = "touch"
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L7_1
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = "tap"
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.toFront
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.insert
  L3_2 = L7_1
  L1_2(L2_2, L3_2)
end

showBlackOverlay = L8_1

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.fadeEffect
  L3_2 = 1
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = A0_2
    L1_3 = L1_3.view
    L0_3(L1_3)
    L0_3 = A0_2
    L0_3.view = nil
  end
  
  L1_2(L2_2, L3_2, L4_2)
end

destoryOverlay = L8_1

function L8_1()
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

removeBlackOverlay = L8_1

function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.view
  L3_2.alpha = A1_2
  L3_2 = transition
  L3_2 = L3_2.to
  L4_2 = A0_2.view
  L5_2 = {}
  L6_2 = 1 - A1_2
  L5_2.alpha = L6_2
  L5_2.time = 700
  L5_2.onComplete = A2_2
  L3_2(L4_2, L5_2)
end

fadeEffect = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = {}
  L3_2 = setmetatable
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  A0_2.__index = A0_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  L2_2.view = L3_2
  L3_2 = showBlackOverlay
  L4_2 = L2_2.view
  L3_2(L4_2)
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = L2_2.view
  L5_2 = 0
  L6_2 = 0
  L7_2 = 570
  L8_2 = 360
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = L3_2.width
  L4_2 = L4_2 / 2
  L3_2.x = L4_2
  L4_2 = L3_2.height
  L4_2 = L4_2 / 2
  L3_2.y = L4_2
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2.isHitTestable = true
  L5_2 = L3_2
  L4_2 = L3_2.addEventListener
  L6_2 = "tap"
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.destoryOverlay
    L0_3(L1_3)
    L0_3 = true
    return L0_3
  end
  
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = L3_2
  L4_2 = L3_2.addEventListener
  L6_2 = "touch"
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L3_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = A1_2.id
  L7_2 = true
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2.profileView = L4_2
  L2_2.profileViewScale = 0.9
  L4_2 = display
  L4_2 = L4_2.newRoundedRect
  L5_2 = L2_2.view
  L6_2 = 0
  L7_2 = 0
  L8_2 = L2_2.profileView
  L8_2 = L8_2.bg
  L8_2 = L8_2.width
  L9_2 = L2_2.profileViewScale
  L8_2 = L8_2 * L9_2
  L8_2 = L8_2 + 40
  L9_2 = L2_2.profileView
  L9_2 = L9_2.bg
  L9_2 = L9_2.height
  L10_2 = L2_2.profileViewScale
  L9_2 = L9_2 * L10_2
  L9_2 = L9_2 + 86
  L10_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2.strokeWidth = 2
  L6_2 = L4_2
  L5_2 = L4_2.setStrokeColor
  L7_2 = Constants
  L7_2 = L7_2.greenColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.whiteColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L5_2 = L4_2.width
  L5_2 = L5_2 / 2
  L4_2.x = L5_2
  L5_2 = L4_2.height
  L5_2 = L5_2 / 2
  L4_2.y = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.addEventListener
  L7_2 = "touch"
  
  function L8_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.addEventListener
  L7_2 = "tap"
  
  function L8_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L2_2.view
  L6_2 = display
  L6_2 = L6_2.contentCenterX
  L7_2 = L4_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L5_2.x = L6_2
  L5_2 = L2_2.view
  L6_2 = display
  L6_2 = L6_2.contentCenterY
  L7_2 = L4_2.height
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L5_2.y = L6_2
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L2_2.view
  L7_2 = A1_2.name
  L8_2 = 0
  L9_2 = 0
  L10_2 = Constants
  L10_2 = L10_2.fontForTitle
  L10_2 = L10_2()
  L11_2 = 20
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = L5_2
  L6_2 = L5_2.setFillColor
  L8_2 = Constants
  L8_2 = L8_2.darkBlueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L6_2 = L4_2.x
  L5_2.x = L6_2
  L6_2 = L4_2.y
  L7_2 = L4_2.height
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 + 10
  L7_2 = L5_2.height
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L5_2.y = L6_2
  L6_2 = L4_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L8_2.width = 30
  L8_2.height = 30
  L9_2 = Constants
  L9_2 = L9_2.Path_Assets
  L10_2 = "BattleItems/close.png"
  L9_2 = L9_2 .. L10_2
  L8_2.defaultFile = L9_2
  L9_2 = Constants
  L9_2 = L9_2.Path_Assets
  L10_2 = "BattleItems/close-pressed.png"
  L9_2 = L9_2 .. L10_2
  L8_2.overFile = L9_2
  L6_2 = L6_2(L7_2, L8_2)
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = log3
    L1_3 = "hiding overlay from button"
    L0_3(L1_3)
    L0_3 = L2_2
    L1_3 = L0_3
    L0_3 = L0_3.destoryOverlay
    L0_3(L1_3)
  end
  
  L6_2.onRelease = L7_2
  L7_2 = L2_2.view
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = L6_2.view
  L7_2(L8_2, L9_2)
  L6_2.delegate = A0_2
  L7_2 = L4_2.x
  L8_2 = L4_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 - L8_2
  L7_2 = L7_2 + 10
  L8_2 = L6_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L6_2.x = L7_2
  L7_2 = L5_2.y
  L6_2.y = L7_2
  L7_2 = display
  L7_2 = L7_2.newGroup
  L8_2 = L2_2.view
  L7_2 = L7_2(L8_2)
  L2_2.contentGroup = L7_2
  L7_2 = graphics
  L7_2 = L7_2.newMask
  L8_2 = Constants
  L8_2 = L8_2.Path_Assets
  L9_2 = "Auction/FC-auction-mask-small"
  L10_2 = Constants
  L10_2 = L10_2.deviceSpecificFilePostfix
  L10_2 = L10_2()
  L11_2 = ".png"
  L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
  L7_2 = L7_2(L8_2)
  L8_2 = L2_2.contentGroup
  L9_2 = L8_2
  L8_2 = L8_2.setMask
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = L2_2.contentGroup
  L9_2 = display
  L9_2 = L9_2.contentCenterX
  L8_2.maskX = L9_2
  L8_2 = L2_2.contentGroup
  L9_2 = display
  L9_2 = L9_2.contentCenterY
  L8_2.maskY = L9_2
  L8_2 = L2_2.view
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L2_2.contentGroup
  L8_2(L9_2, L10_2)
  L8_2 = display
  L8_2 = L8_2.newRoundedRect
  L9_2 = L2_2.view
  L10_2 = 0
  L11_2 = 0
  L12_2 = L4_2.width
  L12_2 = L12_2 - 16
  L13_2 = L4_2.height
  L13_2 = L13_2 - 55
  L14_2 = 1
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L6_1 = L8_2
  L8_2 = L6_1
  L8_2.strokeWidth = 2
  L8_2 = L6_1
  L9_2 = L8_2
  L8_2 = L8_2.setStrokeColor
  L10_2 = Constants
  L10_2 = L10_2.greenColor
  L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L8_2 = L6_1
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L13_2 = 0
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = L6_1
  L9_2 = L4_2.x
  L8_2.x = L9_2
  L8_2 = L6_1
  L9_2 = L4_2.y
  L10_2 = L4_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L10_2 = L6_1
  L10_2 = L10_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 - L10_2
  L9_2 = L9_2 - 8
  L8_2.y = L9_2
  L8_2 = L2_2.profileView
  L8_2 = L8_2.view
  L9_2 = L8_2
  L8_2 = L8_2.scale
  L10_2 = L2_2.profileViewScale
  L11_2 = L2_2.profileViewScale
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = L2_2.profileView
  L9_2 = L8_2
  L8_2 = L8_2.setPosition
  L10_2 = L6_1
  L10_2 = L10_2.x
  L11_2 = L2_2.profileView
  L11_2 = L11_2.bg
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L12_2 = L2_2.profileViewScale
  L11_2 = L11_2 * L12_2
  L10_2 = L10_2 - L11_2
  L11_2 = L6_1
  L11_2 = L11_2.y
  L12_2 = L2_2.profileView
  L12_2 = L12_2.bg
  L12_2 = L12_2.height
  L12_2 = L12_2 / 2
  L13_2 = L2_2.profileViewScale
  L12_2 = L12_2 * L13_2
  L11_2 = L11_2 - L12_2
  L11_2 = L11_2 + 4
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = L2_2.view
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L2_2.profileView
  L10_2 = L10_2.view
  L8_2(L9_2, L10_2)
  L9_2 = L2_2
  L8_2 = L2_2.fadeEffect
  L10_2 = 0
  L8_2(L9_2, L10_2)
  return L2_2
end

new = L8_1
