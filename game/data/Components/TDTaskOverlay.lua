local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.BaseView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Theme"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = setmetatable
L4_1 = _M
L5_1 = {}
L5_1.__index = L0_1
L3_1(L4_1, L5_1)
L3_1 = {}
L3_1.type = "image"
L4_1 = Constants
L4_1 = L4_1.Path_Assets
L5_1 = "Task/check_sign.png"
L4_1 = L4_1 .. L5_1
L3_1.filename = L4_1
L4_1 = {}
L4_1.type = "image"
L5_1 = Constants
L5_1 = L5_1.Path_Assets
L6_1 = "Task/check_sign_off.png"
L5_1 = L5_1 .. L6_1
L4_1.filename = L5_1
L5_1 = true
isAnimated = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L0_1
  L2_2 = L2_2.new
  L3_2 = L0_1
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  L2_2.taskGroup = L3_2
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = L2_2.view
  L5_2 = 0
  L6_2 = 0
  L7_2 = 570
  L8_2 = 46
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.backgroundRect = L3_2
  L3_2 = L2_2.backgroundRect
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0.5
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = nil
  L4_2 = system
  L4_2 = L4_2.getInfo
  L5_2 = "build"
  L4_2 = L4_2(L5_2)
  if "2013.1137" < L4_2 then
    L4_2 = system
    L4_2 = L4_2.getInfo
    L5_2 = "platformName"
    L4_2 = L4_2(L5_2)
    if L4_2 ~= "Android" then
      L4_2 = L2_1
      L4_2 = L4_2.lang
      if L4_2 == "fa" then
        goto lbl_47
      end
    end
  end
  L4_2 = L2_1
  L4_2 = L4_2.lang
  if L4_2 == "ar" then
    ::lbl_47::
    L3_2 = "right"
  else
    L3_2 = "left"
  end
  L4_2 = {}
  L5_2 = L2_2.taskGroup
  L4_2.parent = L5_2
  L4_2.text = ""
  L4_2.x = 0
  L4_2.y = 0
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 / 2
  L4_2.width = L5_2
  L5_2 = L1_1
  L5_2 = L5_2.textStyle
  L5_2 = L5_2[4]
  L5_2 = L5_2.font
  L4_2.font = L5_2
  L5_2 = L1_1
  L5_2 = L5_2.textStyle
  L5_2 = L5_2[4]
  L5_2 = L5_2.fontSize
  L4_2.fontSize = L5_2
  L4_2.align = L3_2
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L2_2.taskOverlayLabel = L5_2
  L5_2 = display
  L5_2 = L5_2.newRect
  L6_2 = L2_2.taskGroup
  L7_2 = 0
  L8_2 = 0
  L9_2 = 25
  L10_2 = 24
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2.checkBox = L5_2
  L5_2 = L2_2.checkBox
  L6_2 = L4_1
  L5_2.fill = L6_2
  L5_2 = L2_2.view
  L5_2.alpha = 0
  L5_2 = L2_2.view
  L6_2 = display
  L6_2 = L6_2.contentCenterX
  L5_2.x = L6_2
  L5_2 = L2_2.view
  L5_2.y = 20
  L5_2 = L2_2.view
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L2_2.taskGroup
  L5_2(L6_2, L7_2)
  L5_2 = L2_2.taskGroup
  L5_2.alpha = 0
  return L2_2
end

new = L5_1
L5_1 = _M
L5_1 = L5_1.new
L6_1 = _M
L7_1 = _M
L5_1(L6_1, L7_1)

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = L2_2
  L2_2 = L2_2.toFront
  L2_2(L3_2)
  L2_2 = A1_2.isAnimated
  if not L2_2 then
    L2_2 = A0_2.isAnimated
  end
  A0_2.isAnimated = L2_2
  L2_2 = A0_2.taskOverlayLabel
  L3_2 = A1_2.taskText
  if not L3_2 then
    L3_2 = A1_2.text
  end
  L2_2.text = L3_2
  L2_2 = setItemPosition
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = makeItemVisible
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = A1_2.hideAfterDelay
  if L2_2 ~= nil then
    L2_2 = A1_2.hideAfterDelay
    if 0 < L2_2 then
      L2_2 = timer
      L2_2 = L2_2.performWithDelay
      L3_2 = A1_2.hideAfterDelay
      
      function L4_2()
        local L0_3, L1_3
        L0_3 = hide
        L1_3 = A0_2
        L0_3(L1_3)
      end
      
      L5_2 = 1
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end

show = L5_1

function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.isAnimated
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.showBackground
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.showTaskGroup
    L1_2(L2_2)
  else
    L1_2 = A0_2.view
    L1_2.alpha = 1
    L1_2 = A0_2.taskGroup
    L1_2.alpha = 1
    A0_2.visible = true
  end
end

makeItemVisible = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.visible
  if L1_2 then
    return
  end
  L1_2 = A0_2.view
  L2_2 = L1_2
  L1_2 = L1_2.toFront
  L1_2(L2_2)
  L1_2 = A0_2.view
  L1_2.alpha = 0
  L1_2 = transition
  L1_2 = L1_2.to
  L2_2 = A0_2.view
  L3_2 = {}
  L3_2.time = 1200
  L3_2.alpha = 1
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L0_3.visible = true
  end
  
  L3_2.onComplete = L4_2
  L1_2(L2_2, L3_2)
end

showBackground = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.taskGroup
  L2_2.y = -5
  L2_2 = A0_2.taskGroup
  L2_2.alpha = 0
  L2_2 = A0_2.checkBox
  L3_2 = L4_1
  L2_2.fill = L3_2
  L2_2 = transition
  L2_2 = L2_2.to
  L3_2 = A0_2.taskGroup
  L4_2 = {}
  L4_2.time = 1200
  L4_2.delay = 600
  L4_2.alpha = 1
  L5_2 = easing
  L5_2 = L5_2.outCubic
  L4_2.transition = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = transition
  L2_2 = L2_2.to
  L3_2 = A0_2.taskGroup
  L4_2 = {}
  L4_2.time = 900
  L4_2.delay = 600
  L4_2.y = -2
  L5_2 = easing
  L5_2 = L5_2.outCubic
  L4_2.transition = L5_2
  L2_2(L3_2, L4_2)
end

showTaskGroup = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.taskOverlayLabel
  L1_2 = L1_2.width
  L2_2 = A0_2.checkBox
  L2_2 = L2_2.width
  L1_2 = L1_2 + L2_2
  L1_2 = L1_2 + 10
  A0_2.lenghOfContent = L1_2
  L1_2 = L2_1
  L1_2 = L1_2.isLanguageRightToLeft
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2.checkBox
    L2_2 = A0_2.lenghOfContent
    L2_2 = L2_2 / 2
    L3_2 = A0_2.checkBox
    L3_2 = L3_2.width
    L3_2 = L3_2 / 2
    L2_2 = L2_2 - L3_2
    L1_2.x = L2_2
    L1_2 = A0_2.taskOverlayLabel
    L2_2 = A0_2.lenghOfContent
    L2_2 = -L2_2
    L2_2 = L2_2 / 2
    L3_2 = A0_2.taskOverlayLabel
    L3_2 = L3_2.width
    L3_2 = L3_2 / 2
    L2_2 = L2_2 + L3_2
    L1_2.x = L2_2
  else
    L1_2 = A0_2.checkBox
    L2_2 = A0_2.lenghOfContent
    L2_2 = -L2_2
    L2_2 = L2_2 / 2
    L3_2 = A0_2.checkBox
    L3_2 = L3_2.width
    L3_2 = L3_2 / 2
    L2_2 = L2_2 + L3_2
    L1_2.x = L2_2
    L1_2 = A0_2.taskOverlayLabel
    L2_2 = A0_2.lenghOfContent
    L2_2 = L2_2 / 2
    L3_2 = A0_2.taskOverlayLabel
    L3_2 = L3_2.width
    L3_2 = L3_2 / 2
    L2_2 = L2_2 - L3_2
    L1_2.x = L2_2
  end
  L1_2 = A0_2.taskGroup
  L1_2.y = 0
end

setItemPosition = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = L2_2
  L2_2 = L2_2.toFront
  L2_2(L3_2)
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    
    function L0_3()
      local L0_4, L1_4, L2_4
      L0_4 = A0_2
      L0_4 = L0_4.isAnimated
      if L0_4 then
        L0_4 = A1_2
        L0_4 = L0_4.taskText
        if not L0_4 then
          L0_4 = A1_2
          L0_4 = L0_4.text
          if not L0_4 then
            goto lbl_18
          end
        end
        L0_4 = show
        L1_4 = A0_2
        L2_4 = A1_2
        L0_4(L1_4, L2_4)
        goto lbl_45
        ::lbl_18::
        L0_4 = hide
        L1_4 = A0_2
        L0_4(L1_4)
      else
        L0_4 = A0_2
        L0_4 = L0_4.taskGroup
        L0_4.alpha = 0
        L0_4 = A1_2
        L0_4 = L0_4.taskText
        if not L0_4 then
          L0_4 = A1_2
          L0_4 = L0_4.text
          if not L0_4 then
            goto lbl_42
          end
        end
        L0_4 = A0_2
        L0_4 = L0_4.checkBox
        L1_4 = L4_1
        L0_4.fill = L1_4
        L0_4 = show
        L1_4 = A0_2
        L2_4 = A1_2
        L0_4(L1_4, L2_4)
        goto lbl_45
        ::lbl_42::
        L0_4 = hide
        L1_4 = A0_2
        L0_4(L1_4)
      end
      ::lbl_45::
    end
    
    L1_3 = A0_2
    L1_3 = L1_3.taskOverlayLabel
    L1_3 = L1_3.text
    if L1_3 == "" then
      L1_3 = L0_3
      L1_3()
    else
      L1_3 = A0_2
      L1_3 = L1_3.isAnimated
      if L1_3 then
        L1_3 = animatedChecked
        L2_3 = A0_2
        L1_3(L2_3)
        L1_3 = transition
        L1_3 = L1_3.to
        L2_3 = A0_2
        L2_3 = L2_3.taskGroup
        L3_3 = {}
        L3_3.time = 600
        L3_3.delay = 1000
        L3_3.alpha = 0
        L3_3.y = 5
        L4_3 = easing
        L4_3 = L4_3.inSine
        L3_3.transition = L4_3
        
        function L4_3()
          local L0_4, L1_4
          L0_4 = L0_3
          L0_4()
        end
        
        L3_3.onComplete = L4_3
        L1_3(L2_3, L3_3)
      else
        L1_3 = checked
        L2_3 = A0_2
        L1_3(L2_3)
        L1_3 = timer
        L1_3 = L1_3.performWithDelay
        L2_3 = 1000
        
        function L3_3()
          local L0_4, L1_4
          L0_4 = L0_3
          L0_4()
        end
        
        L1_3(L2_3, L3_3)
      end
    end
  end
  
  L3_2 = A0_2.visible
  if L3_2 ~= true then
    L3_2 = A0_2.taskGroup
    L3_2.alpha = 1
    L4_2 = A0_2
    L3_2 = A0_2.showBackground
    L3_2(L4_2)
    A0_2.visible = true
    L3_2 = A0_2.animated
    if L3_2 then
      L3_2 = timer
      L3_2 = L3_2.performWithDelay
      L4_2 = 1900
      L5_2 = L2_2
      L6_2 = 1
      L3_2(L4_2, L5_2, L6_2)
    else
      L3_2 = L2_2
      L3_2()
    end
  else
    L3_2 = L2_2
    L3_2()
  end
end

completeTask = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.checkBox
  L2_2 = L3_1
  L1_2.fill = L2_2
  L1_2 = A0_2.checkBox
  L1_2.xScale = 1.5
  L1_2 = A0_2.checkBox
  L1_2.yScale = 1.5
  L1_2 = transition
  L1_2 = L1_2.to
  L2_2 = A0_2.checkBox
  L3_2 = {}
  L3_2.time = 150
  L3_2.xScale = 1
  L3_2.yScale = 1
  L1_2(L2_2, L3_2)
end

animatedChecked = L5_1

function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.checkBox
  L2_2 = L3_1
  L1_2.fill = L2_2
end

checked = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil then
    L2_2 = A1_2
  else
    L2_2 = A0_2.isAnimated
  end
  if L2_2 then
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = A0_2.view
    L5_2 = {}
    L5_2.time = 900
    L6_2 = easing
    L6_2 = L6_2.inSince
    L5_2.transition = L6_2
    L5_2.alpha = 0
    
    function L6_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L0_3.visible = false
    end
    
    L5_2.onComplete = L6_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2.view
    L3_2.alpha = 0
    A0_2.visible = false
  end
end

hide = L5_1
