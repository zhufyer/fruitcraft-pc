local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "widget"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Constants"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Components.TDButtonView"
L3_1 = L3_1(L4_1)
L4_1 = nil
L5_1 = nil
L6_1 = nil
L7_1 = nil
L8_1 = isShowing
if L8_1 == nil then
  L8_1 = false
  isShowing = L8_1
end
L8_1 = nil

function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = L8_1
  if L1_2 ~= nil then
    L1_2 = L8_1
    L2_2 = L1_2
    L1_2 = L1_2.remove
    L1_2(L2_2)
    L1_2 = nil
    L8_1 = L1_2
  end
end

removeCurrentOverlay = L9_1

function L9_1(A0_2, A1_2)
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
      L8_1 = L0_3
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
    L8_1 = L2_2
  end
end

remove = L9_1

function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A5_2
  L13_2 = A6_2
  L14_2 = A7_2
  L15_2 = false
  L16_2 = type
  L17_2 = A1_2
  L16_2 = L16_2(L17_2)
  if L16_2 == "string" then
    L8_2 = A1_2
  else
    L8_2 = A1_2.message
    L9_2 = A1_2.position
    L10_2 = A1_2.bgAlpha
    L11_2 = A1_2.imageName
    L12_2 = A1_2.buttonText
    L13_2 = A1_2.buttonAction
    L14_2 = A1_2.obj
    L15_2 = A1_2.touchEnabled
  end
  if not L14_2 then
    L16_2 = {}
    L14_2 = L16_2
  end
  L16_2 = setmetatable
  L17_2 = L14_2
  L18_2 = A0_2
  L16_2(L17_2, L18_2)
  A0_2.__index = A0_2
  L8_1 = L14_2
  L16_2 = true
  isShowing = L16_2
  L16_2 = display
  L16_2 = L16_2.newRect
  L17_2 = 0
  L18_2 = 0
  L19_2 = 570
  L20_2 = 360
  L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
  L14_2.grayOverlay = L16_2
  L16_2 = L14_2.grayOverlay
  L17_2 = display
  L17_2 = L17_2.contentCenterX
  L16_2.x = L17_2
  L16_2 = L14_2.grayOverlay
  L17_2 = display
  L17_2 = L17_2.contentCenterY
  L16_2.y = L17_2
  L16_2 = L14_2.grayOverlay
  L17_2 = L16_2
  L16_2 = L16_2.setFillColor
  L18_2 = 0
  L19_2 = 0
  L20_2 = 0
  L21_2 = L10_2
  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
  if L15_2 ~= true then
    L16_2 = L14_2.grayOverlay
    L17_2 = L16_2
    L16_2 = L16_2.addEventListener
    L18_2 = "touch"
    
    function L19_2()
      local L0_3, L1_3
      L0_3 = true
      return L0_3
    end
    
    L16_2(L17_2, L18_2, L19_2)
    L16_2 = L14_2.grayOverlay
    L17_2 = L16_2
    L16_2 = L16_2.addEventListener
    L18_2 = "tap"
    
    function L19_2()
      local L0_3, L1_3
      L0_3 = true
      return L0_3
    end
    
    L16_2(L17_2, L18_2, L19_2)
  end
  L16_2 = display
  L16_2 = L16_2.newGroup
  L16_2 = L16_2()
  L14_2.view = L16_2
  L16_2 = display
  L16_2 = L16_2.newRoundedRect
  L17_2 = L14_2.view
  L18_2 = 0
  L19_2 = 0
  L20_2 = display
  L20_2 = L20_2.contentWidth
  L20_2 = L20_2 - 40
  L21_2 = 80
  L22_2 = 3
  L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L16_2.strokeWidth = 2
  L18_2 = L16_2
  L17_2 = L16_2.setStrokeColor
  L19_2 = L1_1
  L19_2 = L19_2.whiteColor
  L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L19_2()
  L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L18_2 = L16_2
  L17_2 = L16_2.setFillColor
  L19_2 = 0
  L20_2 = 0
  L21_2 = 0
  L22_2 = 200
  L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
  L17_2 = display
  L17_2 = L17_2.contentWidth
  L17_2 = L17_2 / 2
  L16_2.x = L17_2
  L17_2 = L16_2.height
  L17_2 = L17_2 / 2
  L16_2.y = L17_2
  L18_2 = L16_2
  L17_2 = L16_2.addEventListener
  L19_2 = "touch"
  
  function L20_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L17_2(L18_2, L19_2, L20_2)
  L18_2 = L16_2
  L17_2 = L16_2.addEventListener
  L19_2 = "tap"
  
  function L20_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L17_2(L18_2, L19_2, L20_2)
  if L11_2 then
    L17_2 = display
    L17_2 = L17_2.newImageRect
    L18_2 = L14_2.view
    L19_2 = L11_2
    L20_2 = 70
    L21_2 = 70
    L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2)
    L18_2 = L17_2.width
    L18_2 = L18_2 / 2
    L18_2 = 30 + L18_2
    L17_2.x = L18_2
    L18_2 = L17_2.height
    L18_2 = L18_2 / 2
    L18_2 = 6 + L18_2
    L17_2.y = L18_2
  end
  if L8_2 then
    L17_2 = display
    L17_2 = L17_2.contentWidth
    L17_2 = L17_2 - 250
    L18_2 = -15
    if L11_2 then
      L19_2 = display
      L19_2 = L19_2.contentWidth
      L17_2 = L19_2 - 250
    else
      L19_2 = display
      L19_2 = L19_2.contentWidth
      L17_2 = L19_2 - 170
      L18_2 = -55
    end
    L19_2 = nil
    L20_2 = system
    L20_2 = L20_2.getInfo
    L21_2 = "build"
    L20_2 = L20_2(L21_2)
    if "2013.1137" < L20_2 then
      L20_2 = system
      L20_2 = L20_2.getInfo
      L21_2 = "platformName"
      L20_2 = L20_2(L21_2)
      if L20_2 ~= "Android" then
        L20_2 = L2_1
        L20_2 = L20_2.lang
        if L20_2 == "fa" then
          goto lbl_166
        end
      end
    end
    L20_2 = L2_1
    L20_2 = L20_2.lang
    if L20_2 == "ar" then
      ::lbl_166::
      L20_2 = {}
      L21_2 = L14_2.view
      L20_2.parent = L21_2
      L20_2.text = L8_2
      L20_2.x = 0
      L20_2.y = 0
      L20_2.width = L17_2
      L20_2.height = 75
      L21_2 = L1_1
      L21_2 = L21_2.fontForSubtitle
      L21_2 = L21_2()
      L20_2.font = L21_2
      L20_2.fontSize = 12
      L20_2.align = "right"
      L21_2 = display
      L21_2 = L21_2.newText
      L22_2 = L20_2
      L21_2 = L21_2(L22_2)
      L19_2 = L21_2
    else
      L20_2 = display
      L20_2 = L20_2.newText
      L21_2 = L14_2.view
      L22_2 = L8_2
      L23_2 = 0
      L24_2 = 0
      L25_2 = L17_2
      L26_2 = 75
      L27_2 = L1_1
      L27_2 = L27_2.fontForSubtitle
      L27_2 = L27_2()
      L28_2 = 12
      L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
      L19_2 = L20_2
    end
    L21_2 = L19_2
    L20_2 = L19_2.setFillColor
    L22_2 = L1_1
    L22_2 = L22_2.whiteColor
    L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L22_2()
    L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
    L20_2 = display
    L20_2 = L20_2.contentCenterX
    L20_2 = L20_2 + L18_2
    L19_2.x = L20_2
    L20_2 = L19_2.height
    L20_2 = L20_2 / 2
    L20_2 = 5 + L20_2
    L19_2.y = L20_2
  end
  if L12_2 and L13_2 then
    L17_2 = L3_1
    L18_2 = L17_2
    L17_2 = L17_2.new
    L19_2 = {}
    L19_2.label = L12_2
    L19_2.width = 100
    L19_2.height = 30
    L20_2 = L1_1
    L20_2 = L20_2.Path_Assets
    L21_2 = "BattleItems/battle_outcome_button.png"
    L20_2 = L20_2 .. L21_2
    L19_2.defaultFile = L20_2
    
    function L20_2()
      local L0_3, L1_3, L2_3
      L0_3 = L14_2
      L1_3 = L0_3
      L0_3 = L0_3.remove
      L2_3 = false
      L0_3(L1_3, L2_3)
      L0_3 = L13_2
      L1_3 = L14_2
      L0_3(L1_3)
    end
    
    L19_2.onRelease = L20_2
    L17_2 = L17_2(L18_2, L19_2)
    L18_2 = L14_2.view
    L19_2 = L18_2
    L18_2 = L18_2.insert
    L20_2 = L17_2.view
    L18_2(L19_2, L20_2)
    L18_2 = display
    L18_2 = L18_2.contentWidth
    L18_2 = L18_2 - 30
    L19_2 = L17_2.width
    L19_2 = L19_2 / 2
    L18_2 = L18_2 - L19_2
    L17_2.x = L18_2
    L18_2 = L17_2.height
    L18_2 = L18_2 / 2
    L18_2 = 25 + L18_2
    L17_2.y = L18_2
  end
  if L9_2 == "bottom" then
    L17_2 = L14_2.view
    L18_2 = display
    L18_2 = L18_2.contentHeight
    L18_2 = L18_2 - 85
    L17_2.y = L18_2
  elseif L9_2 == "top" then
    L17_2 = L14_2.view
    L17_2.y = 5
  else
    L17_2 = L14_2.view
    L18_2 = display
    L18_2 = L18_2.contentHeight
    L18_2 = L18_2 / 2
    L19_2 = L16_2.height
    L19_2 = L19_2 / 2
    L18_2 = L18_2 - L19_2
    L17_2.y = L18_2
  end
  return L14_2
end

new = L9_1
