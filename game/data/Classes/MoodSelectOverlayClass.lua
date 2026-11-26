local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Models.Card"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "widget"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Constants"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.CachedImageView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Models.ProfileManager"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Tutorial.VerticalOverlayView"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Models.ProfileManager"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Components.TDButtonView"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Core.ParentStandardBaseOverlayClass"
L10_1 = L10_1(L11_1)
L11_1 = setmetatable
L12_1 = _M
L13_1 = L10_1
L11_1(L12_1, L13_1)
L11_1 = _M
L12_1 = _M
L11_1.__index = L12_1
L11_1 = _M
L12_1 = 200
L13_1 = 250
L14_1 = {}
L15_1 = {}
L16_1 = -1
L17_1 = {}

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = scene
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 1570
  L7_2 = 1360
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2.darknessOverlay = L3_2
  L2_2 = scene
  L2_2 = L2_2.darknessOverlay
  L2_2.x = 0
  L2_2 = scene
  L2_2 = L2_2.darknessOverlay
  L2_2.y = 0
  L2_2 = scene
  L2_2 = L2_2.darknessOverlay
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0.7
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = scene
  L2_2 = L2_2.darknessOverlay
  L3_2 = L2_2
  L2_2 = L2_2.addEventListener
  L4_2 = "touch"
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = scene
  L2_2 = L2_2.darknessOverlay
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
  L4_2 = scene
  L4_2 = L4_2.darknessOverlay
  L2_2(L3_2, L4_2)
end

showBlackOverlay = L18_1

function L18_1()
  local L0_2, L1_2
  L0_2 = scene
  L0_2 = L0_2.darknessOverlay
  if L0_2 ~= nil then
    L0_2 = display
    L0_2 = L0_2.remove
    L1_2 = scene
    L1_2 = L1_2.darknessOverlay
    L0_2(L1_2)
    L0_2 = scene
    L0_2.darknessOverlay = nil
  end
end

removeBlackOverlay = L18_1

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L2_2 = L10_1
  L2_2 = L2_2.create
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = showBlackOverlay
  A0_2.showBlackOverlay = L2_2
  L2_2 = removeBlackOverlay
  A0_2.removeBlackOverlay = L2_2
  L2_2 = moodsRowRender
  A0_2.moodsRowRender = L2_2
  L2_2 = moodsRowTouch
  A0_2.moodsRowTouch = L2_2
  L2_2 = display
  L2_2 = L2_2.newRect
  L3_2 = A0_2.contentGroup
  L4_2 = 0
  L5_2 = 0
  L6_2 = 570
  L7_2 = 360
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2.x = 0
  L2_2.y = 0
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
    L0_3 = log3
    L1_3 = "hiding overlay"
    L0_3(L1_3)
    L0_3 = L11_1
    L0_3 = L0_3.hideWithAnimation
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.addEventListener
  L5_2 = "touch"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = display
  L3_2 = L3_2.newRoundedRect
  L4_2 = A0_2.contentGroup
  L5_2 = 0
  L6_2 = 0
  L7_2 = L12_1
  L8_2 = L13_1
  L9_2 = 3
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2.strokeWidth = 2
  L5_2 = L3_2
  L4_2 = L3_2.setStrokeColor
  L6_2 = L4_1
  L6_2 = L6_2.greenColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = L4_1
  L6_2 = L6_2.whiteColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L3_2.x = 0
  L3_2.y = 0
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
  L4_2 = L9_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.width = 30
  L6_2.height = 30
  L7_2 = L4_1
  L7_2 = L7_2.Path_Assets
  L8_2 = "BattleItems/close.png"
  L7_2 = L7_2 .. L8_2
  L6_2.defaultFile = L7_2
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = log3
    L1_3 = "hiding overlay from button"
    L0_3(L1_3)
    L0_3 = L11_1
    L0_3 = L0_3.hideWithAnimation
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = A1_2
    L0_3 = L0_3.params
    L0_3 = L0_3.onFailed
    if L0_3 then
      L0_3 = A1_2
      L0_3 = L0_3.params
      L0_3 = L0_3.onFailed
      L0_3()
    end
    L0_3 = true
    return L0_3
  end
  
  L6_2.onRelease = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2.contentGroup
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L4_2.view
  L5_2(L6_2, L7_2)
  L4_2.delegate = A0_2
  L5_2 = L3_2.width
  L5_2 = -L5_2
  L5_2 = L5_2 / 2
  L5_2 = L5_2 + 10
  L6_2 = L4_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L4_2.x = L5_2
  L5_2 = L3_2.height
  L5_2 = -L5_2
  L5_2 = L5_2 / 2
  L5_2 = L5_2 + 10
  L6_2 = L4_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L4_2.y = L5_2
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = A0_2.contentGroup
  L7_2 = L2_1
  L7_2 = L7_2.SelectMood
  L8_2 = 0
  L9_2 = 0
  L10_2 = L4_1
  L10_2 = L10_2.fontForTitle
  L10_2 = L10_2()
  L11_2 = L12_1
  L11_2 = 20 * L11_2
  L11_2 = L11_2 / 300
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = L5_2
  L6_2 = L5_2.setFillColor
  L8_2 = L4_1
  L8_2 = L8_2.darkBlueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L6_2 = L3_2.x
  L6_2 = L6_2 + 10
  L5_2.x = L6_2
  L6_2 = L4_2.y
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
  L6_2 = graphics
  L6_2 = L6_2.newMask
  L7_2 = L4_1
  L7_2 = L7_2.Path_Assets
  L8_2 = "Auction/FC-auction-mask-small"
  L9_2 = L4_1
  L9_2 = L9_2.deviceSpecificFilePostfix
  L9_2 = L9_2()
  L10_2 = ".png"
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
  L6_2 = L6_2(L7_2)
  L7_2 = A0_2.internalContentGroup
  L8_2 = L7_2
  L7_2 = L7_2.setMask
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.internalContentGroup
  L7_2.maskX = 0
  L7_2 = A0_2.internalContentGroup
  L7_2.maskY = 0
  L7_2 = A0_2.contentGroup
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = A0_2.internalContentGroup
  L7_2(L8_2, L9_2)
  L7_2 = display
  L7_2 = L7_2.newRoundedRect
  L8_2 = 0
  L9_2 = 0
  L10_2 = L3_2.width
  L10_2 = L10_2 - 15
  L11_2 = L3_2.height
  L11_2 = L11_2 - 95
  L12_2 = 0
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = L3_2.x
  L7_2.x = L8_2
  L8_2 = L3_2.height
  L8_2 = -L8_2
  L8_2 = L8_2 / 2
  L8_2 = L8_2 + 50
  L9_2 = L3_2.height
  L9_2 = L9_2 - 95
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L7_2.y = L8_2
  L9_2 = L7_2
  L8_2 = L7_2.setFillColor
  L10_2 = L4_1
  L10_2 = L10_2.lightBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L7_2.strokeWidth = 3
  L9_2 = L7_2
  L8_2 = L7_2.setStrokeColor
  L10_2 = L4_1
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L8_2 = A0_2.internalContentGroup
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = L3_1
  L8_2 = L8_2.newTableView
  L9_2 = {}
  L10_2 = L7_2.width
  L9_2.width = L10_2
  L10_2 = L7_2.height
  L9_2.height = L10_2
  L10_2 = moodsRowRender
  L9_2.onRowRender = L10_2
  L10_2 = moodsRowTouch
  L9_2.onRowTouch = L10_2
  L9_2.hideScrollBar = true
  L8_2 = L8_2(L9_2)
  L9_2 = L7_2.x
  L8_2.x = L9_2
  L9_2 = L7_2.y
  L8_2.y = L9_2
  L9_2 = A0_2.internalContentGroup
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = L8_1
  L9_2 = L9_2.getMoodList
  L9_2 = L9_2()
  L14_1 = L9_2
  L9_2 = pairs
  L10_2 = L14_1
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  for L12_2, L13_2 in L9_2, L10_2, L11_2 do
    L14_2 = L15_1
    L15_2 = {}
    L15_2.view = nil
    L15_2.isVisit = false
    L15_2.background = nil
    L15_2.inserted = false
    L15_2.isSelecte = false
    L14_2[L12_2] = L15_2
  end
  L9_2 = ipairs
  L10_2 = L14_1
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  for L12_2, L13_2 in L9_2, L10_2, L11_2 do
    L15_2 = L8_2
    L14_2 = L8_2.insertRow
    L16_2 = {}
    L16_2.rowHeight = 42
    L16_2.id = L12_2
    L17_2 = {}
    L18_2 = {}
    L19_2 = 255
    L20_2 = 255
    L21_2 = 255
    L22_2 = 255
    L18_2[1] = L19_2
    L18_2[2] = L20_2
    L18_2[3] = L21_2
    L18_2[4] = L22_2
    L17_2.default = L18_2
    L18_2 = {}
    L19_2 = 0
    L20_2 = 0
    L21_2 = 0
    L22_2 = 1
    L18_2[1] = L19_2
    L18_2[2] = L20_2
    L18_2[3] = L21_2
    L18_2[4] = L22_2
    L17_2.over = L18_2
    L16_2.rowColor = L17_2
    L14_2(L15_2, L16_2)
  end
  L9_2 = nil
  L10_2 = A1_2.params
  if L10_2 then
    L10_2 = A1_2.params
    L10_2 = L10_2.buttonText
    if L10_2 then
      L10_2 = A1_2.params
      L9_2 = L10_2.buttonText
  end
  else
    L10_2 = L2_1
    L9_2 = L10_2.Accept
  end
  L10_2 = L9_1
  L11_2 = L10_2
  L10_2 = L10_2.new
  L12_2 = {}
  L12_2.label = L9_2
  L12_2.fontSize = 11
  L13_2 = Theme
  L13_2 = L13_2.colorsSet
  L13_2 = L13_2.blackColor
  L12_2.labelColor = L13_2
  L12_2.width = 100
  L12_2.height = 22
  L13_2 = L4_1
  L13_2 = L13_2.Path_Assets
  L14_2 = "CardScene/button.png"
  L13_2 = L13_2 .. L14_2
  L12_2.defaultFile = L13_2
  
  function L13_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L16_1
    if L0_3 < 1 then
      L0_3 = showSimpleDialog
      L1_3 = L2_1
      L1_3 = L1_3.SelectMood
      L2_3 = L2_1
      L2_3 = L2_3["You need to select a mood."]
      L3_3 = nil
      
      function L4_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4
        L0_4 = A1_2
        L0_4 = L0_4.params
        if L0_4 then
          L0_4 = A1_2
          L0_4 = L0_4.params
          L0_4 = L0_4.onSelect
          if L0_4 then
            L0_4 = L0_1
            L0_4 = L0_4.showOverlay
            L1_4 = "Scenes.MoodSelectOverlay"
            L2_4 = {}
            L2_4.effect = "fade"
            L3_4 = {}
            L4_4 = A1_2
            L4_4 = L4_4.params
            L4_4 = L4_4.onSelect
            L3_4.onSelect = L4_4
            L2_4.params = L3_4
            L0_4(L1_4, L2_4)
          end
        end
      end
      
      L0_3(L1_3, L2_3, L3_3, L4_3)
      return
    end
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
    L0_3 = warningLog
    L1_3 = "Mood Selected id :"
    L2_3 = L16_1
    L0_3(L1_3, L2_3)
    L0_3 = A1_2
    L0_3 = L0_3.params
    if L0_3 then
      L0_3 = A1_2
      L0_3 = L0_3.params
      L0_3 = L0_3.onSelect
      if L0_3 then
        L0_3 = L8_1
        L0_3 = L0_3.setMood
        L1_3 = L16_1
        L2_3 = A1_2
        L2_3 = L2_3.params
        L2_3 = L2_3.onSelect
        L3_3 = A1_2
        L3_3 = L3_3.params
        L3_3 = L3_3.onFailed
        L0_3(L1_3, L2_3, L3_3)
      end
    end
  end
  
  L12_2.onRelease = L13_2
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = A0_2.contentGroup
  L12_2 = L11_2
  L11_2 = L11_2.insert
  L13_2 = L10_2.view
  L11_2(L12_2, L13_2)
  L10_2.x = 0
  L11_2 = L3_2.y
  L12_2 = L3_2.height
  L12_2 = L12_2 / 2
  L11_2 = L11_2 + L12_2
  L11_2 = L11_2 - 13
  L12_2 = L10_2.height
  L12_2 = L12_2 / 2
  L11_2 = L11_2 - L12_2
  L10_2.y = L11_2
end

create = L18_1

function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.row
  L2_2 = L1_2.id
  L3_2 = L1_2
  L4_2 = nil
  L5_2 = nil
  L6_2 = display
  L6_2 = L6_2.newText
  L7_2 = L14_1
  L7_2 = L7_2[L2_2]
  L7_2 = L7_2.text
  L8_2 = 0
  L9_2 = 0
  L10_2 = L4_1
  L10_2 = L10_2.fontForSubtitle
  L10_2 = L10_2()
  L11_2 = 13
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = L6_2
  L7_2 = L4_2
  L6_2 = L4_2.setFillColor
  L8_2 = L4_1
  L8_2 = L8_2.darkBlueColor
  L8_2, L9_2, L10_2, L11_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = L1_2.width
  L6_2 = L6_2 / 2
  L4_2.x = L6_2
  L6_2 = L1_2.height
  L6_2 = L6_2 * 0.5
  L4_2.y = L6_2
  L6_2 = log3
  L7_2 = "image path is : "
  L8_2 = L4_1
  L8_2 = L8_2.Path_Assets
  L9_2 = "Cards/"
  L10_2 = L14_1
  L10_2 = L10_2[L2_2]
  L10_2 = L10_2.image
  L8_2 = L8_2 .. L9_2 .. L10_2
  L6_2(L7_2, L8_2)
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = L4_1
  L7_2 = L7_2.Path_Assets
  L8_2 = "cell_background.png"
  L7_2 = L7_2 .. L8_2
  L8_2 = L1_2.contentWidth
  L9_2 = L1_2.contentHeight
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = L1_2.contentWidth
  L7_2 = L7_2 / 2
  L6_2.x = L7_2
  L7_2 = L1_2.contentHeight
  L7_2 = L7_2 / 2
  L6_2.y = L7_2
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = L4_1
  L8_2 = L8_2.Path_Assets
  L9_2 = "General/FC-tick.png"
  L8_2 = L8_2 .. L9_2
  L9_2 = 25
  L10_2 = 25
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L7_2.x = 30
  L8_2 = L1_2.height
  L8_2 = L8_2 * 0.5
  L7_2.y = L8_2
  L7_2.isVisible = false
  L8_2 = L15_1
  L8_2 = L8_2[L2_2]
  L8_2 = L8_2.isSelected
  if L8_2 then
    L7_2.isVisible = true
  end
  L8_2 = L15_1
  L8_2 = L8_2[L2_2]
  L8_2.selectedView = L7_2
  L9_2 = L3_2
  L8_2 = L3_2.insert
  L10_2 = L6_2
  L8_2(L9_2, L10_2)
  L9_2 = L3_2
  L8_2 = L3_2.insert
  L10_2 = L4_2
  L8_2(L9_2, L10_2)
  L9_2 = L3_2
  L8_2 = L3_2.insert
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
end

moodsRowRender = L18_1

function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.target
  L1_2 = L1_2.id
  L2_2 = A0_2.row
  L3_2 = A0_2.view
  L4_2 = A0_2.table
  L5_2 = A0_2.phase
  if L5_2 == "release" then
  else
    L5_2 = L16_1
    if L5_2 == L1_2 then
      return
    end
    L5_2 = L16_1
    if 0 < L5_2 then
      L5_2 = L15_1
      L6_2 = L16_1
      L5_2 = L5_2[L6_2]
      L5_2.isSelected = false
      L5_2 = L15_1
      L6_2 = L16_1
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.selectedView
      if L5_2 ~= nil then
        L5_2 = L15_1
        L6_2 = L16_1
        L5_2 = L5_2[L6_2]
        L5_2 = L5_2.selectedView
        L5_2.isVisible = false
      end
    end
    L16_1 = L1_2
    L5_2 = L15_1
    L6_2 = L16_1
    L5_2 = L5_2[L6_2]
    L5_2.isSelected = true
    L5_2 = L15_1
    L6_2 = L16_1
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.selectedView
    L5_2.isVisible = true
  end
end

moodsRowTouch = L18_1

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L10_1
  L4_2 = L4_2.show
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "did" then
    L4_2 = "hideOverlay"
    _backAction = L4_2
  end
end

show = L18_1

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L10_1
  L4_2 = L4_2.hide
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "will" then
    L4_2 = "Scenes.Home"
    _backAction = L4_2
  end
end

hide = L18_1

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = L10_1
  L3_2 = L3_2.destroy
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end

destroy = L18_1
