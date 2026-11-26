local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.ParentStandardBaseOverlayClass"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "widget"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Components.TDButtonView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Data.BaseFruits"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "composer"
L5_1 = L5_1(L6_1)
L6_1 = setmetatable
L7_1 = _M
L8_1 = L0_1
L6_1(L7_1, L8_1)
L6_1 = _M
L7_1 = _M
L6_1.__index = L7_1
L6_1 = _M
L7_1 = {}
L8_1 = L1_1["Common Cards"]
L9_1 = L1_1["Christmas Cards"]
L10_1 = L1_1["Monster Cards"]
L7_1[1] = L8_1
L7_1[2] = L9_1
L7_1[3] = L10_1
L8_1 = 0
L9_1 = 1
L10_1 = "high"
L11_1 = nil
L12_1 = nil
L13_1 = {}
L14_1 = {}

function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L4_1
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.category
    if L8_2 == A0_2 then
      L1_2 = L7_2
      break
    end
  end
  if L1_2 then
    L3_2 = L1_2.minLevel
    L4_2 = L1_2.maxLevel
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L2_2[L6_2] = L6_2
    end
  end
  return L2_2
end

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = L0_1
  L2_2 = L2_2.create
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = display
  L2_2 = L2_2.newRect
  L3_2 = A0_2.contentGroup
  L4_2 = 0
  L5_2 = 0
  L6_2 = 570
  L7_2 = 360
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L4_2 = L2_2
  L3_2 = L2_2.setFillColor
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.isHitTestable = true
  L4_2 = L2_2
  L3_2 = L2_2.addEventListener
  L5_2 = "tap"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = L6_1
    L0_3 = L0_3.hideWithAnimation
    L1_3 = A0_2
    L0_3(L1_3)
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.addEventListener
  L5_2 = "touch"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = L6_1
    L0_3 = L0_3.hideWithAnimation
    L1_3 = A0_2
    L0_3(L1_3)
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = display
  L3_2 = L3_2.newRoundedRect
  L4_2 = A0_2.contentGroup
  L5_2 = 0
  L6_2 = 0
  L7_2 = 320
  L8_2 = 320
  L9_2 = 3
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2.strokeWidth = 2
  L5_2 = L3_2
  L4_2 = L3_2.setStrokeColor
  L6_2 = Constants
  L6_2 = L6_2.greenColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = Constants
  L6_2 = L6_2.whiteColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
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
  L4_2 = L4_2.newText
  L5_2 = A0_2.contentGroup
  L6_2 = L1_1
  L6_2 = L6_2["Select Card"]
  L7_2 = 0
  L8_2 = 0
  L9_2 = Constants
  L9_2 = L9_2.fontForTitle
  L9_2 = L9_2()
  L10_2 = 20
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L5_2 = L3_2.x
  L4_2.x = L5_2
  L5_2 = L3_2.height
  L5_2 = -L5_2
  L5_2 = L5_2 / 2
  L5_2 = L5_2 + 10
  L6_2 = L4_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L4_2.y = L5_2
  L5_2 = L3_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.width = 30
  L7_2.height = 30
  L8_2 = Constants
  L8_2 = L8_2.Path_Assets
  L9_2 = "BattleItems/close.png"
  L8_2 = L8_2 .. L9_2
  L7_2.imageName = L8_2
  
  function L8_2()
    local L0_3, L1_3
    L0_3 = L6_1
    L0_3 = L0_3.hideWithAnimation
    L1_3 = A0_2
    L0_3(L1_3)
  end
  
  L7_2.onRelease = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A0_2.contentGroup
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L5_2.view
  L6_2(L7_2, L8_2)
  L6_2 = L3_2.width
  L6_2 = -L6_2
  L6_2 = L6_2 / 2
  L6_2 = L6_2 + 10
  L7_2 = L5_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L5_2.x = L6_2
  L6_2 = L4_2.y
  L5_2.y = L6_2
  L6_2 = display
  L6_2 = L6_2.newGroup
  L6_2 = L6_2()
  A0_2.innerContentGroup = L6_2
  L6_2 = A0_2.contentGroup
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = A0_2.innerContentGroup
  L6_2(L7_2, L8_2)
  L6_2 = L2_1
  L6_2 = L6_2.newTableView
  L7_2 = {}
  L8_2 = L3_2.width
  L8_2 = L8_2 / 2
  L8_2 = L8_2 - 5
  L7_2.width = L8_2
  L8_2 = L3_2.height
  L8_2 = L8_2 - 125
  L7_2.height = L8_2
  L8_2 = cardTypesOnRowRender
  L7_2.onRowRender = L8_2
  L8_2 = cardTypesOnRowTouch
  L7_2.onRowTouch = L8_2
  L7_2.hideScrollBar = true
  L7_2.bottomPadding = 5
  L6_2 = L6_2(L7_2)
  L11_1 = L6_2
  L6_2 = L11_1
  L7_2 = L3_2.x
  L8_2 = L3_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 - L8_2
  L7_2 = L7_2 + 5
  L8_2 = L11_1
  L8_2 = L8_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L6_2.x = L7_2
  L6_2 = L11_1
  L6_2.y = 0
  L6_2 = A0_2.innerContentGroup
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L11_1
  L6_2(L7_2, L8_2)
  L6_2 = 1
  L7_2 = 3
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L11_1
    L11_2 = L10_2
    L10_2 = L10_2.insertRow
    L12_2 = {}
    L13_2 = L11_1
    L13_2 = L13_2.height
    L13_2 = L13_2 / 3
    L12_2.rowHeight = L13_2
    L12_2.id = L9_2
    L13_2 = {}
    L14_2 = {}
    L15_2 = 0.8901960784313725
    L16_2 = 0.9490196078431372
    L17_2 = 0.9803921568627451
    L14_2[1] = L15_2
    L14_2[2] = L16_2
    L14_2[3] = L17_2
    L13_2.default = L14_2
    L14_2 = {}
    L15_2 = 227
    L16_2 = 242
    L17_2 = 250
    L18_2 = 200
    L14_2[1] = L15_2
    L14_2[2] = L16_2
    L14_2[3] = L17_2
    L14_2[4] = L18_2
    L13_2.over = L14_2
    L12_2.rowColor = L13_2
    L10_2(L11_2, L12_2)
  end
  L6_2 = L2_1
  L6_2 = L6_2.newTableView
  L7_2 = {}
  L8_2 = L3_2.width
  L8_2 = L8_2 / 2
  L8_2 = L8_2 - 5
  L7_2.width = L8_2
  L8_2 = L3_2.height
  L8_2 = L8_2 - 125
  L7_2.height = L8_2
  L8_2 = levelsOnRowRender
  L7_2.onRowRender = L8_2
  L8_2 = levelsOnRowTouch
  L7_2.onRowTouch = L8_2
  L7_2.hideScrollBar = true
  L7_2.noLines = true
  L7_2.bottomPadding = 5
  L6_2 = L6_2(L7_2)
  L12_1 = L6_2
  L6_2 = L12_1
  L7_2 = L3_2.x
  L8_2 = L12_1
  L8_2 = L8_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L6_2.x = L7_2
  L6_2 = L12_1
  L7_2 = L11_1
  L7_2 = L7_2.y
  L6_2.y = L7_2
  L6_2 = A0_2.innerContentGroup
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L12_1
  L6_2(L7_2, L8_2)
  L6_2 = pairs
  L7_2 = L15_1
  L8_2 = 0
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L7_2(L8_2)
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = L12_1
    L12_2 = L11_2
    L11_2 = L11_2.insertRow
    L13_2 = {}
    L13_2.rowHeight = 42
    L13_2.id = L9_2
    L14_2 = {}
    L15_2 = {}
    L16_2 = 0.8901960784313725
    L17_2 = 0.9490196078431372
    L18_2 = 0.9803921568627451
    L15_2[1] = L16_2
    L15_2[2] = L17_2
    L15_2[3] = L18_2
    L14_2.default = L15_2
    L15_2 = {}
    L16_2 = 227
    L17_2 = 242
    L18_2 = 250
    L19_2 = 200
    L15_2[1] = L16_2
    L15_2[2] = L17_2
    L15_2[3] = L18_2
    L15_2[4] = L19_2
    L14_2.over = L15_2
    L13_2.rowColor = L14_2
    L11_2(L12_2, L13_2)
  end
  L6_2 = display
  L6_2 = L6_2.newRoundedRect
  L7_2 = A0_2.contentGroup
  L8_2 = 0
  L9_2 = 0
  L10_2 = 310
  L11_2 = L3_2.height
  L11_2 = L11_2 - 125
  L12_2 = 1
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = L12_1
  L7_2 = L7_2.y
  L6_2.y = L7_2
  L6_2.strokeWidth = 2
  L8_2 = L6_2
  L7_2 = L6_2.setStrokeColor
  L9_2 = Constants
  L9_2 = L9_2.darkBlueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L8_2 = L6_2
  L7_2 = L6_2.setFillColor
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2.x = 0
  L7_2 = L11_1
  L7_2 = L7_2.y
  L6_2.y = L7_2
  L7_2 = display
  L7_2 = L7_2.newLine
  L8_2 = A0_2.contentGroup
  L9_2 = 0
  L10_2 = L6_2.height
  L10_2 = -L10_2
  L10_2 = L10_2 / 2
  L10_2 = L10_2 + 2
  L11_2 = 0
  L12_2 = L6_2.height
  L12_2 = -L12_2
  L12_2 = L12_2 / 2
  L13_2 = L6_2.height
  L12_2 = L12_2 + L13_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L9_2 = L7_2
  L8_2 = L7_2.setStrokeColor
  L10_2 = Constants
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L7_2.strokeWidth = 2
  L8_2 = L6_2.y
  L9_2 = L7_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L8_2 = L8_2 + 2
  L7_2.y = L8_2
  
  function L8_2(A0_3)
    local L1_3
    L1_3 = A0_3.target
    if L1_3 then
      L1_3 = A0_3.target
      L1_3 = L1_3.id
      L10_1 = L1_3
    end
  end
  
  L9_2 = L2_1
  L9_2 = L9_2.newSwitch
  L10_2 = {}
  L10_2.style = "radio"
  L10_2.id = "high"
  L10_2.width = 16
  L10_2.height = 16
  L10_2.initialSwitchState = true
  L10_2.onPress = L8_2
  L9_2 = L9_2(L10_2)
  L10_2 = A0_2.contentGroup
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L10_2 = L3_2.width
  L10_2 = L10_2 / 2
  L10_2 = L10_2 - 20
  L11_2 = L9_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 - L11_2
  L9_2.x = L10_2
  L10_2 = L12_1
  L10_2 = L10_2.y
  L11_2 = L12_1
  L11_2 = L11_2.height
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L10_2 = L10_2 + 10
  L11_2 = L9_2.height
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L9_2.y = L10_2
  L10_2 = display
  L10_2 = L10_2.newText
  L11_2 = A0_2.contentGroup
  L12_2 = L1_1
  L12_2 = L12_2["Highest Price"]
  L13_2 = 0
  L14_2 = 0
  L15_2 = Constants
  L15_2 = L15_2.fontForTitle
  L15_2 = L15_2()
  L16_2 = 9
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L12_2 = L10_2
  L11_2 = L10_2.setFillColor
  L13_2 = Constants
  L13_2 = L13_2.darkBlueColor
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L13_2()
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L11_2 = L9_2.x
  L12_2 = L9_2.width
  L12_2 = L12_2 / 2
  L11_2 = L11_2 - L12_2
  L11_2 = L11_2 - 8
  L12_2 = L10_2.width
  L12_2 = L12_2 / 2
  L11_2 = L11_2 - L12_2
  L10_2.x = L11_2
  L11_2 = L9_2.y
  L10_2.y = L11_2
  L11_2 = L2_1
  L11_2 = L11_2.newSwitch
  L12_2 = {}
  L12_2.style = "radio"
  L12_2.id = "low"
  L12_2.width = 16
  L12_2.height = 16
  L12_2.initialSwitchState = false
  L12_2.onPress = L8_2
  L11_2 = L11_2(L12_2)
  L12_2 = A0_2.contentGroup
  L13_2 = L12_2
  L12_2 = L12_2.insert
  L14_2 = L11_2
  L12_2(L13_2, L14_2)
  L12_2 = L11_2.width
  L12_2 = L12_2 / 2
  L12_2 = -20 - L12_2
  L11_2.x = L12_2
  L12_2 = L9_2.y
  L11_2.y = L12_2
  L12_2 = display
  L12_2 = L12_2.newText
  L13_2 = A0_2.contentGroup
  L14_2 = L1_1
  L14_2 = L14_2["Lowest Price"]
  L15_2 = 0
  L16_2 = 0
  L17_2 = Constants
  L17_2 = L17_2.fontForTitle
  L17_2 = L17_2()
  L18_2 = 9
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L14_2 = L12_2
  L13_2 = L12_2.setFillColor
  L15_2 = Constants
  L15_2 = L15_2.darkBlueColor
  L15_2, L16_2, L17_2, L18_2, L19_2 = L15_2()
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L13_2 = L11_2.x
  L14_2 = L11_2.width
  L14_2 = L14_2 / 2
  L13_2 = L13_2 - L14_2
  L13_2 = L13_2 - 8
  L14_2 = L12_2.width
  L14_2 = L14_2 / 2
  L13_2 = L13_2 - L14_2
  L12_2.x = L13_2
  L13_2 = L11_2.y
  L12_2.y = L13_2
  L13_2 = L3_1
  L14_2 = L13_2
  L13_2 = L13_2.new
  L15_2 = {}
  L16_2 = L1_1
  L16_2 = L16_2["Select Card"]
  L15_2.label = L16_2
  L15_2.width = 123
  L15_2.height = 22
  L16_2 = Constants
  L16_2 = L16_2.Path_Assets
  L17_2 = "CardScene/button.png"
  L16_2 = L16_2 .. L17_2
  L15_2.imageName = L16_2
  
  function L16_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L8_1
    if not (L0_3 < 0) then
      L0_3 = L9_1
      if not (L0_3 < 1) then
        goto lbl_18
      end
    end
    L0_3 = showSimpleDialog
    L1_3 = L1_1
    L1_3 = L1_3["Card Selection"]
    L2_3 = L1_1
    L2_3 = L2_3["You need to select a fruit and the level of that fruit."]
    L3_3 = nil
    
    function L4_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
      L0_4 = {}
      L1_4 = A1_2
      L1_4 = L1_4.params
      if L1_4 then
        L1_4 = pairs
        L2_4 = A1_2
        L2_4 = L2_4.params
        L1_4, L2_4, L3_4 = L1_4(L2_4)
        for L4_4, L5_4 in L1_4, L2_4, L3_4 do
          L0_4[L4_4] = L5_4
        end
      end
      L1_4 = L5_1
      L1_4 = L1_4.showOverlay
      L2_4 = "Scenes.CardSelectOverlay"
      L3_4 = {}
      L3_4.params = L0_4
      L1_4(L2_4, L3_4)
    end
    
    L0_3(L1_3, L2_3, L3_3, L4_3)
    do return end
    ::lbl_18::
    L0_3 = L6_1
    L0_3 = L0_3.hideWithAnimation
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = A1_2
    L0_3 = L0_3.params
    if L0_3 then
      L0_3 = A1_2
      L0_3 = L0_3.params
      L0_3 = L0_3.onSelect
      if L0_3 then
        L0_3 = false
        L1_3 = L10_1
        if L1_3 == "high" then
          L0_3 = true
        end
        L1_3 = A1_2
        L1_3 = L1_3.params
        L1_3 = L1_3.onSelect
        L2_3 = L8_1
        L3_3 = L9_1
        L4_3 = L0_3
        L1_3(L2_3, L3_3, L4_3)
      end
    end
  end
  
  L15_2.onRelease = L16_2
  L13_2 = L13_2(L14_2, L15_2)
  L14_2 = A0_2.contentGroup
  L15_2 = L14_2
  L14_2 = L14_2.insert
  L16_2 = L13_2.view
  L14_2(L15_2, L16_2)
  L13_2.x = 0
  L14_2 = L3_2.y
  L15_2 = L3_2.height
  L15_2 = L15_2 / 2
  L14_2 = L14_2 + L15_2
  L14_2 = L14_2 - 4
  L15_2 = L13_2.height
  L15_2 = L15_2 / 2
  L14_2 = L14_2 - L15_2
  L13_2.y = L14_2
end

create = L16_1

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  L2_2 = L2_2.show
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

show = L16_1

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  L2_2 = L2_2.hide
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

hide = L16_1

function L16_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = 1
  L5_2 = A0_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = display
    L8_2 = L8_2.newImageRect
    L9_2 = Constants
    L9_2 = L9_2.Path_Assets
    L10_2 = "General/FC-star.png"
    L9_2 = L9_2 .. L10_2
    L10_2 = 13
    L11_2 = 13
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L9_2 = L7_2 - 1
    L9_2 = L9_2 * 14
    L9_2 = A1_2 + L9_2
    L8_2.x = L9_2
    L8_2.y = A2_2
    L10_2 = A3_2
    L9_2 = A3_2.insert
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
end

setLevelStars = L16_1

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = L12_1
  L3_2 = L2_2
  L2_2 = L2_2.deleteAllRows
  L2_2(L3_2)
  L2_2 = -1
  L9_1 = L2_2
  if A0_2 and 0 < A0_2 then
    L9_1 = A0_2
  end
  L2_2 = pairs
  L3_2 = L15_1
  L4_2 = A1_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L3_2(L4_2)
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L12_1
    L8_2 = L7_2
    L7_2 = L7_2.insertRow
    L9_2 = {}
    L9_2.rowHeight = 42
    L9_2.id = L5_2
    L10_2 = {}
    L11_2 = {}
    L12_2 = 0.8901960784313725
    L13_2 = 0.9490196078431372
    L14_2 = 0.9803921568627451
    L11_2[1] = L12_2
    L11_2[2] = L13_2
    L11_2[3] = L14_2
    L10_2.default = L11_2
    L11_2 = {}
    L12_2 = 227
    L13_2 = 242
    L14_2 = 250
    L15_2 = 200
    L11_2[1] = L12_2
    L11_2[2] = L13_2
    L11_2[3] = L14_2
    L11_2[4] = L15_2
    L10_2.over = L11_2
    L9_2.rowColor = L10_2
    L7_2(L8_2, L9_2)
  end
end

setupLevelsSection = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2.row
  L2_2 = L1_2.id
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = L1_2
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "cell_background.png"
  L5_2 = L5_2 .. L6_2
  L6_2 = L1_2.width
  L7_2 = L1_2.height
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = L3_2.width
  L4_2 = L4_2 / 2
  L3_2.x = L4_2
  L4_2 = L3_2.height
  L4_2 = L4_2 / 2
  L3_2.y = L4_2
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = L1_2
  L6_2 = L7_1
  L6_2 = L6_2[L2_2]
  L7_2 = L1_2.width
  L7_2 = L7_2 / 2
  L8_2 = L1_2.height
  L8_2 = L8_2 / 2
  L9_2 = Constants
  L9_2 = L9_2.fontForTitle
  L9_2 = L9_2()
  L10_2 = 12
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = L1_2
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "General/FC-tick.png"
  L7_2 = L7_2 .. L8_2
  L8_2 = 25
  L9_2 = 25
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L3_2.x
  L7_2 = L3_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 + 5
  L7_2 = L5_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L5_2.x = L6_2
  L6_2 = L3_2.y
  L5_2.y = L6_2
  L5_2.isVisible = false
  L6_2 = L8_1
  L7_2 = L1_2.id
  L7_2 = L7_2 - 1
  if L6_2 == L7_2 then
    L5_2.isVisible = true
  end
  L6_2 = L14_1
  L7_2 = L1_2.id
  L6_2[L7_2] = L1_2
  L1_2.selectedView = L5_2
end

cardTypesOnRowRender = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.phase
  if L1_2 ~= "release" then
    L1_2 = L8_1
    if -1 < L1_2 then
      L1_2 = L14_1
      L2_2 = L8_1
      L2_2 = L2_2 + 1
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.selectedView
      L1_2.isVisible = false
    end
    L1_2 = A0_2.row
    L1_2 = L1_2.id
    L1_2 = L1_2 - 1
    L8_1 = L1_2
    L1_2 = A0_2.target
    L1_2 = L1_2.selectedView
    if L1_2 then
      L1_2 = A0_2.target
      L1_2 = L1_2.selectedView
      L1_2 = L1_2.isVisible
      if L1_2 ~= true then
        L1_2 = A0_2.target
        L1_2 = L1_2.selectedView
        L1_2.isVisible = true
      end
    end
    L1_2 = 1
    L2_2 = L8_1
    if L2_2 == 1 then
      L1_2 = 4
    end
    L2_2 = setupLevelsSection
    L3_2 = L1_2
    L4_2 = L8_1
    L2_2(L3_2, L4_2)
  end
end

cardTypesOnRowTouch = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.row
  L2_2 = display
  L2_2 = L2_2.newImageRect
  L3_2 = L1_2
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "cell_background.png"
  L4_2 = L4_2 .. L5_2
  L5_2 = L1_2.width
  L6_2 = L1_2.height
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = L2_2.width
  L3_2 = L3_2 / 2
  L2_2.x = L3_2
  L3_2 = L2_2.height
  L3_2 = L3_2 / 2
  L2_2.y = L3_2
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = L1_2
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "General/FC-tick.png"
  L5_2 = L5_2 .. L6_2
  L6_2 = 25
  L7_2 = 25
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = L2_2.x
  L5_2 = L2_2.width
  L5_2 = L5_2 / 2
  L4_2 = L4_2 - L5_2
  L4_2 = L4_2 + 5
  L5_2 = L3_2.width
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L3_2.x = L4_2
  L4_2 = L2_2.y
  L3_2.y = L4_2
  L3_2.isVisible = false
  L4_2 = L9_1
  L5_2 = L1_2.id
  if L4_2 == L5_2 then
    L3_2.isVisible = true
  end
  L4_2 = L13_1
  L5_2 = L1_2.id
  L4_2[L5_2] = L1_2
  L1_2.selectedView = L3_2
  L4_2 = setLevelStars
  L5_2 = L1_2.id
  L6_2 = L3_2.x
  L7_2 = L3_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L6_2 = L6_2 + 20
  L7_2 = L1_2.height
  L7_2 = L7_2 / 2
  L8_2 = L1_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end

levelsOnRowRender = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.target
  L1_2 = L1_2.id
  L2_2 = A0_2.phase
  if L2_2 ~= "release" then
    L2_2 = L9_1
    if L2_2 == L1_2 then
      return
    end
    L2_2 = L9_1
    if 0 < L2_2 then
      L2_2 = L13_1
      L3_2 = L9_1
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.selectedView
      L2_2.isVisible = false
    end
    L9_1 = L1_2
    L2_2 = A0_2.target
    L2_2 = L2_2.selectedView
    if L2_2 then
      L2_2 = A0_2.target
      L2_2 = L2_2.selectedView
      L2_2 = L2_2.isVisible
      if L2_2 ~= true then
        L2_2 = A0_2.target
        L2_2 = L2_2.selectedView
        L2_2.isVisible = true
      end
    end
  end
end

levelsOnRowTouch = L16_1

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  L2_2 = L2_2.destroy
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

destroy = L16_1
