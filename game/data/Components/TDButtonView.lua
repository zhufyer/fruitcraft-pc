local L0_1, L1_1, L2_1, L3_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.BaseView"
L0_1 = L0_1(L1_1)
L1_1 = setmetatable
L2_1 = _M
L3_1 = {}
L3_1.__index = L0_1
L1_1(L2_1, L3_1)
L1_1 = require
L2_1 = "Theme"
L1_1(L2_1)
L1_1 = require
L2_1 = "Components.AudioManager"
L1_1 = L1_1(L2_1)
L2_1 = 0.1
scaleDecreaseAmount = L2_1
L2_1 = 0.1
intensityBrightnessAmount = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = L0_1
  L3_2 = L3_2.newWithParams
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L3_2.image = nil
  L4_2 = A1_2.imageDisplayObject
  if L4_2 then
    L4_2 = A1_2.imageDisplayObject
    L3_2.image = L4_2
    L4_2 = L3_2.view
    L5_2 = L4_2
    L4_2 = L4_2.insert
    L6_2 = L3_2.image
    L4_2(L5_2, L6_2)
  else
    L4_2 = A1_2.imageName
    if not L4_2 then
      L4_2 = A1_2.defaultFile
    end
    L5_2 = assert
    L6_2 = A1_2.width
    L6_2 = L6_2 ~= nil
    L7_2 = "width needs to be provided in the TDButton params"
    L5_2(L6_2, L7_2)
    L5_2 = assert
    L6_2 = A1_2.height
    L6_2 = L6_2 ~= nil
    L7_2 = "height needs to be provided in the TDButton params"
    L5_2(L6_2, L7_2)
    if L4_2 then
      L5_2 = display
      L5_2 = L5_2.newImageRect
      L6_2 = L3_2.view
      L7_2 = L4_2
      L8_2 = A1_2.width
      L9_2 = A1_2.height
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
      L3_2.image = L5_2
    else
      L5_2 = A1_2.imageSheet
      if L5_2 then
        L6_2 = A1_2.textMargin
        if not L6_2 then
          L6_2 = 10
        end
        L7_2 = assert
        L8_2 = A1_2.frameIndex
        L8_2 = L8_2 ~= nil
        L9_2 = "frameIndex needs to be provided when using an imageSheet in the TDButton params"
        L7_2(L8_2, L9_2)
        L7_2 = display
        L7_2 = L7_2.newImageRect
        L8_2 = L3_2.view
        L9_2 = L5_2
        L10_2 = A1_2.frameIndex
        L11_2 = A1_2.width
        L11_2 = L11_2 - 40
        L12_2 = A1_2.height
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
        L3_2.image = L7_2
      else
        L6_2 = assert
        L7_2 = false
        L8_2 = "imageName or imageSheet needs to be provided in the TDButton params"
        L6_2(L7_2, L8_2)
      end
    end
  end
  L4_2 = L3_2.image
  L5_2 = L3_2.id
  L4_2.id = L5_2
  L4_2 = A1_2.label
  L3_2.label = nil
  if L4_2 then
    L5_2 = A1_2.font
    if not L5_2 then
      L5_2 = Theme
      L5_2 = L5_2.buttonFont
    end
    L6_2 = A1_2.fontSize
    if not L6_2 then
      L6_2 = Theme
      L6_2 = L6_2.buttonFontSize
    end
    L7_2 = A1_2.labelXOffset
    if not L7_2 then
      L7_2 = 0
    end
    L8_2 = A1_2.labelYOffset
    if not L8_2 then
      L8_2 = 0
    end
    L9_2 = A1_2.isMultiLine
    if L9_2 == true then
      L9_2 = A1_2.textMargin
      if not L9_2 then
        L9_2 = 15
      end
      L10_2 = {}
      L11_2 = L3_2.view
      L10_2.parent = L11_2
      L10_2.text = L4_2
      L10_2.x = L7_2
      L10_2.y = L8_2
      L11_2 = L3_2.image
      L11_2 = L11_2.width
      L12_2 = L9_2 * 2
      L11_2 = L11_2 - L12_2
      L10_2.width = L11_2
      L11_2 = L3_2.image
      L11_2 = L11_2.height
      L10_2.height = L11_2
      L10_2.font = L5_2
      L10_2.fontSize = L6_2
      L10_2.align = "center"
      L11_2 = display
      L11_2 = L11_2.newText
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      L3_2.label = L11_2
    else
      L9_2 = display
      L9_2 = L9_2.newText
      L10_2 = L3_2.view
      L11_2 = L4_2
      L12_2 = L7_2
      L13_2 = L8_2
      L14_2 = L5_2
      L15_2 = L6_2
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L3_2.label = L9_2
    end
    L9_2 = A1_2.labelColor
    if not L9_2 then
      L9_2 = Theme
      L9_2 = L9_2.buttonFontColor
    end
    L10_2 = L3_2.label
    L11_2 = L10_2
    L10_2 = L10_2.setFillColor
    L12_2 = L9_2[1]
    L13_2 = L9_2[2]
    L14_2 = L9_2[3]
    L10_2(L11_2, L12_2, L13_2, L14_2)
  end
  L5_2 = onRelease
  L3_2.onRelease = L5_2
  L3_2.enabled = true
  L5_2 = A1_2.onRelease
  if L5_2 ~= nil then
    L5_2 = A1_2.onRelease
    L3_2.onRelease = L5_2
  end
  
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = A0_3.enabled
    if L2_3 ~= true then
      L2_3 = false
      return L2_3
    end
    L2_3 = A1_3.phase
    if L2_3 == "began" then
      L2_3 = display
      L2_3 = L2_3.getCurrentStage
      L2_3 = L2_3()
      L3_3 = L2_3
      L2_3 = L2_3.setFocus
      L4_3 = A0_3.image
      L2_3(L3_3, L4_3)
      A0_3.isFocus = true
      L3_3 = A0_3
      L2_3 = A0_3.checkForFilterSupport
      L2_3 = L2_3(L3_3)
      if L2_3 then
        L2_3 = A0_3.image
        L2_3 = L2_3.fill
        L2_3.effect = "filter.brightness"
        L2_3 = A0_3.image
        L2_3 = L2_3.fill
        L2_3 = L2_3.effect
        L3_3 = A0_3.intensityBrightnessAmount
        L2_3.intensity = L3_3
      end
      L2_3 = transition
      L2_3 = L2_3.to
      L3_3 = A0_3.view
      L4_3 = {}
      L4_3.time = 100
      L5_3 = A0_3.scaleDecreaseAmount
      L5_3 = 1 - L5_3
      L4_3.xScale = L5_3
      L5_3 = A0_3.scaleDecreaseAmount
      L5_3 = 1 - L5_3
      L4_3.yScale = L5_3
      
      function L5_3()
        local L0_4, L1_4
      end
      
      L4_3.onComplete = L5_3
      L2_3(L3_3, L4_3)
    else
      L2_3 = A0_3.isFocus
      if L2_3 then
        L2_3 = A1_3.phase
        if L2_3 == "moved" then
          L2_3 = L0_1
          L2_3 = L2_3.whitinArea
          L3_3 = A0_3.view
          L4_3 = A1_3
          L2_3 = L2_3(L3_3, L4_3)
          if L2_3 then
            L3_3 = A0_3.view
            L4_3 = A0_3.scaleDecreaseAmount
            L4_3 = 1 - L4_3
            L3_3.xScale = L4_3
            L3_3 = A0_3.view
            L4_3 = A0_3.scaleDecreaseAmount
            L4_3 = 1 - L4_3
            L3_3.yScale = L4_3
            L4_3 = A0_3
            L3_3 = A0_3.checkForFilterSupport
            L3_3 = L3_3(L4_3)
            if L3_3 then
              L3_3 = A0_3.image
              L3_3 = L3_3.fill
              L3_3.effect = "filter.brightness"
              L3_3 = A0_3.image
              L3_3 = L3_3.fill
              L3_3 = L3_3.effect
              L4_3 = A0_3.intensityBrightnessAmount
              L3_3.intensity = L4_3
            end
          else
            L3_3 = A0_3.view
            L3_3.xScale = 1
            L3_3 = A0_3.view
            L3_3.yScale = 1
            L4_3 = A0_3
            L3_3 = A0_3.checkForFilterSupport
            L3_3 = L3_3(L4_3)
            if L3_3 then
              L3_3 = A0_3.image
              L3_3 = L3_3.fill
              L3_3.effect = nil
            end
          end
        else
          L2_3 = A1_3.phase
          if L2_3 ~= "ended" then
            L2_3 = A1_3.phase
            if L2_3 ~= "cancelled" then
              goto lbl_158
            end
          end
          L2_3 = display
          L2_3 = L2_3.getCurrentStage
          L2_3 = L2_3()
          L3_3 = L2_3
          L2_3 = L2_3.setFocus
          L4_3 = nil
          L2_3(L3_3, L4_3)
          A0_3.isFocus = nil
          L3_3 = A0_3
          L2_3 = A0_3.checkForFilterSupport
          L2_3 = L2_3(L3_3)
          if L2_3 then
            L2_3 = A0_3.image
            L2_3 = L2_3.fill
            L2_3.effect = nil
          end
          L2_3 = L0_1
          L2_3 = L2_3.whitinArea
          L3_3 = A0_3.view
          L4_3 = A1_3
          L2_3 = L2_3(L3_3, L4_3)
          L3_3 = A1_3.phase
          if L3_3 == "cancelled" or L2_3 == false then
            L3_3 = transition
            L3_3 = L3_3.to
            L4_3 = A0_3.view
            L5_3 = {}
            L5_3.time = 100
            L5_3.xScale = 1
            L5_3.yScale = 1
            L3_3(L4_3, L5_3)
          else
            L3_3 = A1_3.phase
            if L3_3 == "ended" then
              L3_3 = A1_2
              L3_3 = L3_3.soundName
              if not L3_3 then
                L3_3 = Theme
                L3_3 = L3_3.buttonTouchSoundName
              end
              L4_3 = L1_1
              L4_3 = L4_3.playEffect
              L5_3 = L3_3
              L4_3(L5_3)
              L5_3 = A0_3
              L4_3 = A0_3.onRelease
              L4_3(L5_3)
              L4_3 = transition
              L4_3 = L4_3.to
              L5_3 = A0_3.view
              L6_3 = {}
              L6_3.time = 150
              L7_3 = A0_3.scaleDecreaseAmount
              L7_3 = 1 + L7_3
              L6_3.xScale = L7_3
              L7_3 = A0_3.scaleDecreaseAmount
              L7_3 = 1 + L7_3
              L6_3.yScale = L7_3
              
              function L7_3()
                local L0_4, L1_4, L2_4
                L0_4 = transition
                L0_4 = L0_4.to
                L1_4 = A0_3
                L1_4 = L1_4.view
                L2_4 = {}
                L2_4.time = 50
                L2_4.xScale = 1
                L2_4.yScale = 1
                L0_4(L1_4, L2_4)
              end
              
              L6_3.onComplete = L7_3
              L4_3(L5_3, L6_3)
            end
          end
        end
      end
    end
    ::lbl_158::
    L2_3 = true
    return L2_3
  end
  
  L3_2.touch = L5_2
  L5_2 = L3_2.image
  L6_2 = L5_2
  L5_2 = L5_2.addEventListener
  L7_2 = "touch"
  L8_2 = L3_2
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end

new = L2_1

function L2_1(A0_2)
  local L1_2
end

onRelease = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = math
  L2_2 = L2_2.sin
  L3_2 = A1_2.time
  L3_2 = L3_2 / 500
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 * 0.1
  L2_2 = L2_2 + 1
  L3_2 = A0_2.view
  L3_2.xScale = L2_2
  L3_2 = A0_2.view
  L3_2.yScale = L2_2
end

enterFrame = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = "enterFrame"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end

startPulsating = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = "enterFrame"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.view
  L1_2.xScale = 1
  L1_2 = A0_2.view
  L1_2.yScale = 1
end

stopPulsating = L2_1

function L2_1(A0_2)
  local L1_2
  L1_2 = _isFillterSupport
  if L1_2 then
    L1_2 = A0_2.image
    L1_2 = L1_2.fill
    if L1_2 ~= nil then
      L1_2 = true
      return L1_2
    end
  end
  L1_2 = false
  return L1_2
end

checkForFilterSupport = L2_1

function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2, A9_2, A10_2, A11_2)
  local L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2
  if A1_2 == nil then
    L13_2 = A0_2.badge
    if L13_2 ~= nil then
      L13_2 = display
      L13_2 = L13_2.remove
      L14_2 = A0_2.badge
      L13_2(L14_2)
      L13_2 = A0_2.badge
      L13_2.isVisible = false
    end
  end
  L13_2 = nil
  L14_2 = A0_2.badge
  if L14_2 == nil then
    if not A4_2 then
      A4_2 = 0
    end
    if not A5_2 then
      A5_2 = 0
    end
    L14_2 = A0_2.image
    L14_2 = L14_2.width
    L14_2 = L14_2 / 2
    L14_2 = L14_2 + A4_2
    L15_2 = A0_2.image
    L15_2 = L15_2.width
    L15_2 = -L15_2
    L15_2 = L15_2 / 2
    L15_2 = L15_2 + A5_2
    L16_2 = A6_2 or L16_2
    if not A6_2 then
      L16_2 = Theme
      L16_2 = L16_2.buttonBadgeImage
    end
    L17_2 = A7_2 or L17_2
    if not A7_2 then
      L17_2 = Theme
      L17_2 = L17_2.buttonBadgeRadius
      L17_2 = L17_2 * 2
    end
    L18_2 = A8_2 or L18_2
    if not A8_2 then
      L18_2 = Theme
      L18_2 = L18_2.buttonBadgeRadius
      L18_2 = L18_2 * 2
    end
    L19_2 = A10_2 or L19_2
    if not A10_2 then
      L19_2 = Theme
      L19_2 = L19_2.buttonBadgeFontSize
    end
    L20_2 = A9_2 or L20_2
    if not A9_2 then
      L20_2 = Theme
      L20_2 = L20_2.buttonBadgeFont
    end
    L13_2 = A11_2 or L13_2
    if not A11_2 then
      L13_2 = 0.2
    end
    L21_2 = display
    L21_2 = L21_2.newGroup
    L21_2 = L21_2()
    L22_2 = display
    L22_2 = L22_2.newImageRect
    L23_2 = L21_2
    L24_2 = L16_2
    L25_2 = L17_2
    L26_2 = L18_2
    L22_2 = L22_2(L23_2, L24_2, L25_2, L26_2)
    L23_2 = display
    L23_2 = L23_2.newText
    L24_2 = L21_2
    L25_2 = A1_2
    L26_2 = 0
    L27_2 = 0
    L28_2 = 0
    L29_2 = 0
    L30_2 = L20_2
    L31_2 = L19_2
    L23_2 = L23_2(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
    L25_2 = L23_2
    L24_2 = L23_2.setFillColor
    L26_2 = Theme
    L26_2 = L26_2.buttonBadgeFontColor
    L26_2 = L26_2[1]
    L27_2 = Theme
    L27_2 = L27_2.buttonBadgeFontColor
    L27_2 = L27_2[2]
    L28_2 = Theme
    L28_2 = L28_2.buttonBadgeFontColor
    L28_2 = L28_2[3]
    L24_2(L25_2, L26_2, L27_2, L28_2)
    L21_2.label = L23_2
    L21_2.image = L22_2
    L24_2 = A0_2.view
    L25_2 = L24_2
    L24_2 = L24_2.insert
    L26_2 = L21_2
    L24_2(L25_2, L26_2)
    L21_2.x = L14_2
    L21_2.y = L15_2
    A0_2.badge = L21_2
  end
  L14_2 = A0_2.badge
  L14_2.isVisible = true
  L14_2 = A0_2.badge
  L14_2.alpah = 1
  if A2_2 then
    L14_2 = A0_2.badge
    L14_2.xScale = 0.5
    L14_2 = A0_2.badge
    L14_2.yScale = 0.5
    if A3_2 then
      L12_2 = 0
    else
      L12_2 = 1
    end
    
    function L14_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = transition
      L0_3 = L0_3.to
      L1_3 = A0_2
      L1_3 = L1_3.badge
      L2_3 = {}
      L2_3.time = 500
      L2_3.xScale = 1
      L2_3.yScale = 1
      L3_3 = easing
      L3_3 = L3_3.linear
      L2_3.transition = L3_3
      L0_3(L1_3, L2_3)
    end
    
    L15_2 = timer
    L15_2 = L15_2.performWithDelay
    L16_2 = 1010
    
    function L17_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = transition
      L0_3 = L0_3.to
      L1_3 = A0_2
      L1_3 = L1_3.badge
      L2_3 = {}
      L2_3.time = 500
      L3_3 = L13_2
      L3_3 = 1 + L3_3
      L2_3.xScale = L3_3
      L3_3 = L13_2
      L3_3 = 1 + L3_3
      L2_3.yScale = L3_3
      L3_3 = easing
      L3_3 = L3_3.linear
      L2_3.transition = L3_3
      L3_3 = L14_2
      L2_3.onComplete = L3_3
      L0_3(L1_3, L2_3)
    end
    
    L18_2 = L12_2
    L15_2 = L15_2(L16_2, L17_2, L18_2)
    A0_2.loopBadgeAnimate = L15_2
  else
    L14_2 = A0_2.badge
    L14_2 = L14_2.label
    L14_2.text = A1_2
  end
end

setBadge = L2_1

function L2_1(A0_2, A1_2)
  A0_2.enabled = A1_2
end

setEnabled = L2_1

function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.label
  if L2_2 ~= nil then
    L2_2 = A0_2.label
    L2_2.text = A1_2
  end
end

setLabel = L2_1

function L2_1(A0_2, ...)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.image
  if L2_2 then
    L2_2 = A0_2.image
    L3_2 = L2_2
    L2_2 = L2_2.setFillColor
    L4_2 = ...
    L2_2(L3_2, L4_2)
  end
end

setFillColor = L2_1

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.loopBadgeAnimate
  if L1_2 ~= nil then
    L1_2 = timer
    L1_2 = L1_2.cancel
    L2_2 = A0_2.loopBadgeAnimate
    L1_2(L2_2)
    A0_2.loopBadgeAnimate = nil
  end
end

cancelAnimation = L2_1
