local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Constants"
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
L4_1 = isShowing
if L4_1 == nil then
  L4_1 = false
  isShowing = L4_1
end
L4_1 = nil

function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L4_1
  if L1_2 ~= nil then
    L1_2 = L4_1
    L2_2 = L1_2
    L1_2 = L1_2.remove
    L1_2(L2_2)
    L1_2 = nil
    L4_1 = L1_2
  end
end

removeCurrentOverlay = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = false
  isShowing = L2_2
  if A1_2 then
    L2_2 = transition
    L2_2 = L2_2.to
    L3_2 = A0_2.view
    L4_2 = {}
    L4_2.time = 300
    L5_2 = display
    L5_2 = L5_2.contentHeight
    L4_2.y = L5_2
    
    function L5_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L0_3 = L0_3.view
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = A0_2
      L0_3 = L0_3.grayOverlay
      L1_3 = L0_3
      L0_3 = L0_3.removeSelf
      L0_3(L1_3)
      L0_3 = A0_2
      L0_3.grayOverlay = nil
      L0_3 = A0_2
      L0_3.view = nil
      L0_3 = nil
      A0_2 = L0_3
      L0_3 = nil
      L4_1 = L0_3
    end
    
    L4_2.onComplete = L5_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = display
    L2_2 = L2_2.remove
    L3_2 = A0_2.view
    L2_2(L3_2)
    A0_2.view = nil
    L2_2 = display
    L2_2 = L2_2.remove
    L3_2 = A0_2.grayOverlay
    L2_2(L3_2)
    A0_2.grayOverlay = nil
    A0_2 = nil
    L2_2 = nil
    L4_1 = L2_2
  end
end

remove = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2)
  local L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2
  L11_2 = ""
  L12_2 = A2_2
  L13_2 = A3_2
  L14_2 = A4_2
  L15_2 = A5_2
  L16_2 = A6_2
  L17_2 = A7_2
  L18_2 = A8_2
  L19_2 = A9_2
  L20_2 = A10_2
  L21_2 = false
  L22_2 = type
  L23_2 = A1_2
  L22_2 = L22_2(L23_2)
  if L22_2 == "string" then
    L11_2 = A1_2
  else
    L21_2 = A1_2.touchEnabled
    L11_2 = A1_2.title
    L12_2 = A1_2.text
    L13_2 = A1_2.position
    L14_2 = A1_2.bgAlpha
    L15_2 = A1_2.imageName
    L16_2 = A1_2.button1Text
    L17_2 = A1_2.button1Action
    L18_2 = A1_2.button2Text
    L19_2 = A1_2.button2Action
    L20_2 = A1_2.obj
  end
  if not L20_2 then
    L22_2 = {}
    L20_2 = L22_2
  end
  L22_2 = setmetatable
  L23_2 = L20_2
  L24_2 = A0_2
  L22_2(L23_2, L24_2)
  A0_2.__index = A0_2
  L4_1 = L20_2
  L22_2 = true
  isShowing = L22_2
  L22_2 = display
  L22_2 = L22_2.newRect
  L23_2 = 0
  L24_2 = 0
  L25_2 = 570
  L26_2 = 360
  L22_2 = L22_2(L23_2, L24_2, L25_2, L26_2)
  L20_2.grayOverlay = L22_2
  L22_2 = L20_2.grayOverlay
  L23_2 = display
  L23_2 = L23_2.contentCenterX
  L22_2.x = L23_2
  L22_2 = L20_2.grayOverlay
  L23_2 = display
  L23_2 = L23_2.contentCenterY
  L22_2.y = L23_2
  L22_2 = L20_2.grayOverlay
  L23_2 = L22_2
  L22_2 = L22_2.setFillColor
  L24_2 = 0
  L25_2 = 0
  L26_2 = 0
  L27_2 = L14_2
  L22_2(L23_2, L24_2, L25_2, L26_2, L27_2)
  if L21_2 ~= true then
    L22_2 = L20_2.grayOverlay
    L23_2 = L22_2
    L22_2 = L22_2.addEventListener
    L24_2 = "touch"
    
    function L25_2()
      local L0_3, L1_3
      L0_3 = true
      return L0_3
    end
    
    L22_2(L23_2, L24_2, L25_2)
    L22_2 = L20_2.grayOverlay
    L23_2 = L22_2
    L22_2 = L22_2.addEventListener
    L24_2 = "tap"
    
    function L25_2()
      local L0_3, L1_3
      L0_3 = true
      return L0_3
    end
    
    L22_2(L23_2, L24_2, L25_2)
  end
  L22_2 = display
  L22_2 = L22_2.newGroup
  L22_2 = L22_2()
  L20_2.view = L22_2
  L22_2 = 280
  if L15_2 then
    L22_2 = 280
  else
    L22_2 = 160
  end
  L23_2 = display
  L23_2 = L23_2.newRoundedRect
  L24_2 = L20_2.view
  L25_2 = 0
  L26_2 = 0
  L27_2 = L22_2
  L28_2 = 295
  L29_2 = 3
  L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  L23_2.strokeWidth = 2
  L25_2 = L23_2
  L24_2 = L23_2.setStrokeColor
  L26_2 = L0_1
  L26_2 = L26_2.whiteColor
  L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2 = L26_2()
  L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
  L25_2 = L23_2
  L24_2 = L23_2.setFillColor
  L26_2 = 0
  L27_2 = 0
  L28_2 = 0
  L29_2 = 0.78431373
  L24_2(L25_2, L26_2, L27_2, L28_2, L29_2)
  L24_2 = display
  L24_2 = L24_2.contentWidth
  L24_2 = L24_2 / 2
  L23_2.x = L24_2
  L24_2 = display
  L24_2 = L24_2.contentHeight
  L24_2 = L24_2 / 2
  L23_2.y = L24_2
  L25_2 = L23_2
  L24_2 = L23_2.addEventListener
  L26_2 = "touch"
  
  function L27_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L24_2(L25_2, L26_2, L27_2)
  L25_2 = L23_2
  L24_2 = L23_2.addEventListener
  L26_2 = "tap"
  
  function L27_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L24_2(L25_2, L26_2, L27_2)
  L24_2 = display
  L24_2 = L24_2.newText
  L25_2 = L20_2.view
  L26_2 = L11_2
  L27_2 = 0
  L28_2 = 0
  L29_2 = L0_1
  L29_2 = L29_2.fontForTitle
  L29_2 = L29_2()
  L30_2 = 20
  L24_2 = L24_2(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
  L26_2 = L24_2
  L25_2 = L24_2.setFillColor
  L27_2 = L0_1
  L27_2 = L27_2.whiteColor
  L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2 = L27_2()
  L25_2(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
  L25_2 = L23_2.x
  L24_2.x = L25_2
  L25_2 = display
  L25_2 = L25_2.contentHeight
  L26_2 = L23_2.height
  L25_2 = L25_2 - L26_2
  L25_2 = L25_2 / 2
  L25_2 = L25_2 + 10
  L26_2 = L24_2.height
  L26_2 = L26_2 / 2
  L25_2 = L25_2 + L26_2
  L24_2.y = L25_2
  L25_2 = display
  L25_2 = L25_2.newLine
  L26_2 = L20_2.view
  L27_2 = display
  L27_2 = L27_2.contentWidth
  L27_2 = L27_2 / 2
  L28_2 = L23_2.width
  L28_2 = L28_2 / 2
  L27_2 = L27_2 - L28_2
  L27_2 = L27_2 + 10
  L28_2 = L24_2.y
  L28_2 = L28_2 + 20
  L29_2 = display
  L29_2 = L29_2.contentWidth
  L29_2 = L29_2 / 2
  L30_2 = L23_2.width
  L30_2 = L30_2 / 2
  L29_2 = L29_2 + L30_2
  L29_2 = L29_2 - 10
  L30_2 = L24_2.y
  L30_2 = L30_2 + 20
  L25_2 = L25_2(L26_2, L27_2, L28_2, L29_2, L30_2)
  L27_2 = L25_2
  L26_2 = L25_2.setStrokeColor
  L28_2 = L0_1
  L28_2 = L28_2.lightBlueColor
  L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2 = L28_2()
  L26_2(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
  L25_2.strokeWidth = 1
  L26_2 = math
  L26_2 = L26_2.ceil
  L27_2 = string
  L27_2 = L27_2.len
  L28_2 = L12_2
  L27_2 = L27_2(L28_2)
  L28_2 = L1_1
  L28_2 = L28_2.charWidth
  L27_2 = L27_2 / L28_2
  L27_2 = L27_2 * 6.5
  L27_2 = L27_2 / 140
  L26_2 = L26_2(L27_2)
  L26_2 = L26_2 * 20
  L26_2 = L26_2 + 10
  L27_2 = string
  L27_2 = L27_2.gsub
  L28_2 = L12_2
  L29_2 = "\n"
  L30_2 = "\n"
  L27_2, L28_2 = L27_2(L28_2, L29_2, L30_2)
  L29_2 = 20 * L28_2
  L26_2 = L26_2 + L29_2
  L29_2 = nil
  L30_2 = system
  L30_2 = L30_2.getInfo
  L31_2 = "build"
  L30_2 = L30_2(L31_2)
  if "2013.1137" < L30_2 then
    L30_2 = system
    L30_2 = L30_2.getInfo
    L31_2 = "platformName"
    L30_2 = L30_2(L31_2)
    if L30_2 ~= "Android" then
      L30_2 = L1_1
      L30_2 = L30_2.lang
      if L30_2 == "fa" then
        goto lbl_223
      end
    end
  end
  L30_2 = L1_1
  L30_2 = L30_2.lang
  if L30_2 == "ar" then
    ::lbl_223::
    L30_2 = {}
    L31_2 = L20_2.view
    L30_2.parent = L31_2
    L30_2.text = L12_2
    L30_2.x = 0
    L30_2.y = 0
    L30_2.width = 140
    L30_2.height = 0
    L31_2 = L0_1
    L31_2 = L31_2.fontForSubtitle
    L31_2 = L31_2()
    L30_2.font = L31_2
    L30_2.fontSize = 12
    L30_2.align = "right"
    L31_2 = display
    L31_2 = L31_2.newText
    L32_2 = L30_2
    L31_2 = L31_2(L32_2)
    L29_2 = L31_2
    L31_2 = L25_2.y
    L31_2 = L31_2 + 5
    L32_2 = L29_2.height
    L32_2 = L32_2 * 0.5
    L31_2 = L31_2 + L32_2
    L29_2.y = L31_2
  else
    L30_2 = display
    L30_2 = L30_2.newText
    L31_2 = L20_2.view
    L32_2 = L12_2
    L33_2 = 0
    L34_2 = 0
    L35_2 = 140
    L36_2 = L26_2
    L37_2 = L0_1
    L37_2 = L37_2.fontForSubtitle
    L37_2 = L37_2()
    L38_2 = 12
    L30_2 = L30_2(L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
    L29_2 = L30_2
    L30_2 = L25_2.y
    L30_2 = L30_2 + 5
    L31_2 = L29_2.height
    L31_2 = L31_2 * 0.5
    L30_2 = L30_2 + L31_2
    L29_2.y = L30_2
  end
  L31_2 = L29_2
  L30_2 = L29_2.setFillColor
  L32_2 = L0_1
  L32_2 = L32_2.whiteColor
  L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2 = L32_2()
  L30_2(L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2)
  if L15_2 then
    L30_2 = L23_2.x
    L31_2 = L23_2.width
    L31_2 = L31_2 / 2
    L30_2 = L30_2 + L31_2
    L30_2 = L30_2 - 8
    L30_2 = L30_2 - 75
    L29_2.x = L30_2
  elseif L13_2 == "left" then
    L30_2 = L23_2.x
    L31_2 = L23_2.width
    L31_2 = L31_2 / 2
    L30_2 = L30_2 + L31_2
    L30_2 = L30_2 - 75
    L30_2 = L30_2 - 3
    L29_2.x = L30_2
  elseif L13_2 == "right" then
    L30_2 = L23_2.x
    L31_2 = L23_2.width
    L31_2 = L31_2 / 2
    L30_2 = L30_2 + L31_2
    L30_2 = L30_2 - 75
    L30_2 = L30_2 - 9
    L29_2.x = L30_2
  else
    L30_2 = L23_2.x
    L31_2 = L23_2.width
    L31_2 = L31_2 / 2
    L30_2 = L30_2 + L31_2
    L30_2 = L30_2 - 75
    L30_2 = L30_2 - 2
    L29_2.x = L30_2
  end
  if L15_2 then
    L30_2 = display
    L30_2 = L30_2.newImageRect
    L31_2 = L20_2.view
    L32_2 = L15_2
    L33_2 = 100
    L34_2 = 200
    L30_2 = L30_2(L31_2, L32_2, L33_2, L34_2)
    L31_2 = L23_2.x
    L31_2 = L31_2 - 80
    L30_2.x = L31_2
    L31_2 = L23_2.y
    L30_2.y = L31_2
  end
  if L16_2 then
    L30_2 = L3_1
    L31_2 = L30_2
    L30_2 = L30_2.new
    L32_2 = {}
    L32_2.label = L16_2
    L32_2.width = 100
    L32_2.height = 30
    L33_2 = L0_1
    L33_2 = L33_2.Path_Assets
    L34_2 = "BattleItems/battle_outcome_button.png"
    L33_2 = L33_2 .. L34_2
    L32_2.defaultFile = L33_2
    
    function L33_2()
      local L0_3, L1_3, L2_3
      L0_3 = L20_2
      L1_3 = L0_3
      L0_3 = L0_3.remove
      L2_3 = false
      L0_3(L1_3, L2_3)
      L0_3 = L17_2
      if L0_3 then
        L0_3 = L17_2
        L1_3 = L20_2
        L0_3(L1_3)
      end
    end
    
    L32_2.onRelease = L33_2
    L30_2 = L30_2(L31_2, L32_2)
    L31_2 = L20_2.view
    L32_2 = L31_2
    L31_2 = L31_2.insert
    L33_2 = L30_2.view
    L31_2(L32_2, L33_2)
    if L15_2 then
      L31_2 = L23_2.x
      L31_2 = L31_2 + 20
      L32_2 = L30_2.width
      L32_2 = L32_2 / 2
      L31_2 = L31_2 + L32_2
      L30_2.x = L31_2
    else
      L31_2 = L23_2.x
      L30_2.x = L31_2
    end
    L31_2 = L23_2.y
    L31_2 = L31_2 + 110
    L32_2 = L30_2.height
    L32_2 = L32_2 / 2
    L31_2 = L31_2 + L32_2
    L30_2.y = L31_2
    if L18_2 then
      L31_2 = L3_1
      L32_2 = L31_2
      L31_2 = L31_2.new
      L33_2 = {}
      L33_2.label = L18_2
      L33_2.width = 100
      L33_2.height = 30
      L34_2 = L0_1
      L34_2 = L34_2.Path_Assets
      L35_2 = "BattleItems/battle_outcome_button.png"
      L34_2 = L34_2 .. L35_2
      L33_2.defaultFile = L34_2
      
      function L34_2()
        local L0_3, L1_3, L2_3
        L0_3 = L20_2
        L1_3 = L0_3
        L0_3 = L0_3.remove
        L2_3 = false
        L0_3(L1_3, L2_3)
        L0_3 = L19_2
        L1_3 = L20_2
        L0_3(L1_3)
      end
      
      L33_2.onRelease = L34_2
      L31_2 = L31_2(L32_2, L33_2)
      L32_2 = L20_2.view
      L33_2 = L32_2
      L32_2 = L32_2.insert
      L34_2 = L31_2.view
      L32_2(L33_2, L34_2)
      L32_2 = L23_2.x
      L32_2 = L32_2 - 20
      L33_2 = L30_2.width
      L33_2 = L33_2 / 2
      L32_2 = L32_2 - L33_2
      L31_2.x = L32_2
      L32_2 = L23_2.y
      L32_2 = L32_2 + 110
      L33_2 = L30_2.height
      L33_2 = L33_2 / 2
      L32_2 = L32_2 + L33_2
      L31_2.y = L32_2
    end
  end
  if L13_2 == "left" then
    if L15_2 then
      L30_2 = L20_2.view
      L31_2 = L23_2.width
      L31_2 = L31_2 / 2
      L31_2 = 5 + L31_2
      L32_2 = display
      L32_2 = L32_2.contentCenterX
      L31_2 = L31_2 - L32_2
      L30_2.x = L31_2
    else
      L30_2 = L20_2.view
      L31_2 = L23_2.width
      L31_2 = L31_2 / 2
      L32_2 = display
      L32_2 = L32_2.contentCenterX
      L31_2 = L31_2 - L32_2
      L31_2 = L31_2 - 10
      L30_2.x = L31_2
    end
  elseif L13_2 == "right" then
    if L15_2 then
      L30_2 = L20_2.view
      L31_2 = display
      L31_2 = L31_2.contentWidth
      L31_2 = L31_2 / 2
      L31_2 = L31_2 - 5
      L32_2 = L23_2.width
      L32_2 = L32_2 / 2
      L31_2 = L31_2 - L32_2
      L30_2.x = L31_2
    else
      L30_2 = L20_2.view
      L31_2 = display
      L31_2 = L31_2.contentWidth
      L31_2 = L31_2 / 2
      L31_2 = L31_2 + 10
      L32_2 = L23_2.width
      L32_2 = L32_2 / 2
      L31_2 = L31_2 - L32_2
      L30_2.x = L31_2
    end
  end
  return L20_2
end

new = L5_1
