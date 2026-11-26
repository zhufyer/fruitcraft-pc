local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1
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
L4_1 = "Tutorial.VerticalOverlayView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Tutorial.HorizontalOverlayView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.CachedImageView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Components.TDButtonView"
L6_1 = L6_1(L7_1)
L7_1 = nil
L8_1 = nil
L9_1 = nil
L10_1 = nil
L11_1 = false
L12_1 = nil
L13_1 = nil
L14_1 = {}
L14_1.first = 0
L14_1.last = -1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = log3
  L3_2 = "PUSH LAST"
  L2_2(L3_2)
  L2_2 = A0_2.last
  L2_2 = L2_2 + 1
  A0_2.last = L2_2
  A0_2[L2_2] = A1_2
  L3_2 = log3
  L4_2 = "PUSH DATA IS : "
  L5_2 = A0_2[L2_2]
  L3_2(L4_2, L5_2)
end

pushlast = L15_1

function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = log3
  L2_2 = "POP FIRST"
  L1_2(L2_2)
  L1_2 = A0_2.first
  L2_2 = log3
  L3_2 = "FIRST IS"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.last
  if L1_2 > L2_2 then
    L2_2 = log3
    L3_2 = "list is empty"
    L2_2(L3_2)
    L2_2 = false
    L11_1 = L2_2
  else
    L2_2 = A0_2[L1_2]
    L3_2 = log3
    L4_2 = "POP DATA IS : "
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = showNotification
    L4_2 = L2_2
    L3_2(L4_2)
    A0_2[L1_2] = nil
    L3_2 = L1_2 + 1
    A0_2.first = L3_2
  end
end

popfirst = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2.remove
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    A0_2 = nil
  end
end

removeNotification = L15_1

function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L13_1
  if L1_2 ~= nil then
    L1_2 = L13_1
    L2_2 = L1_2
    L1_2 = L1_2.remove
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
    L1_2 = nil
    L13_1 = L1_2
  end
end

removeCurrentNotification = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = log3
  L3_2 = "REMOVE"
  L2_2(L3_2)
  L2_2 = log3
  L3_2 = "remove notification description is : "
  L4_2 = A0_2.description
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.isRemove
  if L2_2 ~= true then
    A0_2.isRemove = true
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
        L0_3 = display
        L0_3 = L0_3.remove
        L1_3 = A0_2
        L1_3 = L1_3.view
        L0_3(L1_3)
        L0_3 = A0_2
        L0_3.view = nil
        L0_3 = nil
        A0_2 = L0_3
        L0_3 = false
        L11_1 = L0_3
        L0_3 = nil
        L13_1 = L0_3
        L0_3 = showNotifications
        L0_3()
      end
      
      L4_2.onComplete = L5_2
      
      function L5_2()
        local L0_3, L1_3
        L0_3 = display
        L0_3 = L0_3.remove
        L1_3 = A0_2
        L1_3 = L1_3.view
        L0_3(L1_3)
        L0_3 = A0_2
        L0_3.view = nil
        L0_3 = nil
        A0_2 = L0_3
        L0_3 = nil
        L13_1 = L0_3
        L0_3 = false
        L11_1 = L0_3
        L0_3 = showNotifications
        L0_3()
      end
      
      L4_2.onCancel = L5_2
      
      function L5_2()
        local L0_3, L1_3
        L0_3 = transition
        L0_3 = L0_3.resume
        L1_3 = A0_2
        L1_3 = L1_3.view
        L0_3(L1_3)
      end
      
      L4_2.onPause = L5_2
      L2_2(L3_2, L4_2)
    else
      L2_2 = display
      L2_2 = L2_2.remove
      L3_2 = A0_2.view
      L2_2(L3_2)
      A0_2.view = nil
      A0_2 = nil
      L2_2 = nil
      L13_1 = L2_2
      L2_2 = false
      L11_1 = L2_2
      L2_2 = showNotifications
      L2_2()
    end
  end
end

remove = L15_1
L15_1 = audio
L15_1 = L15_1.loadSound
L16_1 = L1_1.Path_Assets
L17_1 = "Audio/FC-notification.wav"
L16_1 = L16_1 .. L17_1
L15_1 = L15_1(L16_1)

function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = log3
  L2_2 = "show Notification : "
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.view
  if L1_2 then
    L1_2 = A0_2.view
    L2_2 = L1_2
    L1_2 = L1_2.toFront
    L1_2(L2_2)
    L1_2 = mainPlayer
    L1_2 = L1_2.settings
    L1_2 = L1_2.bgMusicEnabled
    if L1_2 ~= nil then
      L1_2 = mainPlayer
      L1_2 = L1_2.settings
      L1_2 = L1_2.bgMusicEnabled
      if L1_2 ~= true then
        goto lbl_28
      end
    end
    L1_2 = A0_2.mode
    if L1_2 == 1 then
      L1_2 = audio
      L1_2 = L1_2.play
      L2_2 = L15_1
      L1_2(L2_2)
    end
    ::lbl_28::
    L1_2 = transition
    L1_2 = L1_2.to
    L2_2 = A0_2.view
    L3_2 = {}
    L3_2.time = 300
    L4_2 = display
    L4_2 = L4_2.contentHeight
    L4_2 = L4_2 - 50
    L3_2.y = L4_2
    
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = A0_2
      L0_3 = L0_3.displayTime
      if not L0_3 then
        L0_3 = 4000
      end
      L1_3 = timer
      L1_3 = L1_3.performWithDelay
      L2_3 = L0_3
      
      function L3_3()
        local L0_4, L1_4, L2_4
        L0_4 = A0_2
        L1_4 = L0_4
        L0_4 = L0_4.remove
        L2_4 = true
        L0_4(L1_4, L2_4)
      end
      
      L1_3(L2_3, L3_3)
    end
    
    L3_2.onComplete = L4_2
    L1_2(L2_2, L3_2)
  end
end

showNotification = L16_1

function L16_1()
  local L0_2, L1_2, L2_2
  L0_2 = log3
  L1_2 = "SHOW NOTIFICATIONS"
  L0_2(L1_2)
  L0_2 = log3
  L1_2 = "showing is : "
  L2_2 = L11_1
  L0_2(L1_2, L2_2)
  L0_2 = L11_1
  if L0_2 == false then
    L0_2 = mainPlayer
    L0_2 = L0_2.settings
    L0_2 = L0_2.isShowingTutorial
    if L0_2 ~= true then
      L0_2 = true
      L11_1 = L0_2
      L0_2 = popfirst
      L1_2 = L14_1
      L0_2(L1_2)
    end
  end
end

showNotifications = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = L14_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 then
      L6_2 = L14_1
      L6_2 = L6_2[L5_2]
      if L6_2 then
        L6_2 = log3
        L7_2 = "notifications[v].playerId is : "
        L8_2 = L14_1
        L8_2 = L8_2[L5_2]
        L8_2 = L8_2.playerId
        L6_2(L7_2, L8_2)
        L6_2 = L14_1
        L6_2 = L6_2[L5_2]
        L6_2 = L6_2.playerId
        if L6_2 then
          L6_2 = L14_1
          L6_2 = L6_2[L5_2]
          L6_2 = L6_2.playerId
          if L6_2 == A0_2 then
            L6_2 = true
            return L6_2
          end
        end
      end
    end
  end
  L1_2 = false
  return L1_2
end

checkExist = L16_1

function L16_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  if not A8_2 then
    L9_2 = {}
    A8_2 = L9_2
  end
  L9_2 = setmetatable
  L10_2 = A8_2
  L11_2 = A0_2
  L9_2(L10_2, L11_2)
  A0_2.__index = A0_2
  L9_2 = log3
  L10_2 = "Tutorial state:"
  L11_2 = mainPlayer
  L11_2 = L11_2.settings
  L11_2 = L11_2.isShowingTutorial
  L12_2 = "showing?"
  L13_2 = L11_1
  L9_2(L10_2, L11_2, L12_2, L13_2)
  A8_2.playerId = A7_2
  A8_2.mode = A6_2
  if A6_2 == nil then
    A8_2.mode = 1
    A6_2 = 1
  end
  if A5_2 then
    if A5_2 == 1 then
      A8_2.displayTime = 2000
    elseif A5_2 == 2 then
      A8_2.displayTime = 6000
    elseif A5_2 == 3 then
      A8_2.displayTime = 3000
    else
      A8_2.displayTime = 4000
    end
  else
    A8_2.displayTime = 4000
  end
  L13_1 = A8_2
  L9_2 = display
  L9_2 = L9_2.newGroup
  L9_2 = L9_2()
  A8_2.view = L9_2
  A8_2.isRemove = false
  L9_2 = nil
  L10_2 = nil
  L11_2 = nil
  L12_2 = nil
  L13_2 = nil
  L14_2 = nil
  L15_2 = 0
  if A3_2 then
    L15_2 = -120
  end
  L16_2 = system
  L16_2 = L16_2.getInfo
  L17_2 = "build"
  L16_2 = L16_2(L17_2)
  if "2013.1137" < L16_2 then
    L16_2 = system
    L16_2 = L16_2.getInfo
    L17_2 = "platformName"
    L16_2 = L16_2(L17_2)
    if L16_2 ~= "Android" then
      L16_2 = L2_1
      L16_2 = L16_2.lang
      if L16_2 == "fa" then
        goto lbl_72
      end
    end
  end
  L16_2 = L2_1
  L16_2 = L16_2.lang
  if L16_2 == "ar" then
    ::lbl_72::
    L16_2 = display
    L16_2 = L16_2.contentWidth
    L16_2 = L16_2 - 60
    L13_2 = L16_2 + L15_2
  else
    L16_2 = system
    L16_2 = L16_2.getInfo
    L17_2 = "platformName"
    L16_2 = L16_2(L17_2)
    if L16_2 == "Android" then
      L16_2 = display
      L16_2 = L16_2.contentWidth
      L16_2 = L16_2 - 60
      L13_2 = L16_2 + L15_2
    else
      L16_2 = display
      L16_2 = L16_2.contentWidth
      L16_2 = L16_2 - 40
      L13_2 = L16_2 + L15_2
    end
  end
  if A6_2 == 1 then
    L16_2 = display
    L16_2 = L16_2.contentWidth
    L9_2 = L16_2 - 10
    L16_2 = display
    L16_2 = L16_2.contentWidth
    L10_2 = L16_2 / 2
    L12_2 = 30
    L16_2 = 30
    notifMessageHeight = L16_2
    L16_2 = display
    L16_2 = L16_2.contentCenterX
    L14_2 = L16_2 - 30
    if A4_2 == nil and A3_2 == nil then
      L16_2 = display
      L16_2 = L16_2.contentWidth
      L16_2 = L16_2 - 20
      L17_2 = L13_2 / 2
      L14_2 = L16_2 - L17_2
    end
    L16_2 = 5
    notifMessageY = L16_2
    L16_2 = 12
    notifMessageFont = L16_2
    L16_2 = "right"
    messageAlign = L16_2
  else
    L16_2 = log3
    L17_2 = "mode isnt 1"
    L16_2(L17_2)
    L16_2 = display
    L16_2 = L16_2.contentWidth
    L16_2 = L16_2 - 10
    L9_2 = L16_2 / 4
    L16_2 = display
    L16_2 = L16_2.contentWidth
    L10_2 = L16_2 / 8
    L12_2 = 20
    L13_2 = L9_2 - 43
    L16_2 = 15
    notifMessageHeight = L16_2
    L16_2 = L13_2 / 2
    L14_2 = 39 + L16_2
    L16_2 = 12
    notifMessageY = L16_2
    L16_2 = 10
    notifMessageFont = L16_2
  end
  L16_2 = display
  L16_2 = L16_2.newRoundedRect
  L17_2 = A8_2.view
  L18_2 = 0
  L19_2 = 0
  L20_2 = L9_2
  L21_2 = 40
  L22_2 = 3
  L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  backgroundBox = L16_2
  L16_2 = backgroundBox
  L16_2.strokeWidth = 2
  L16_2 = backgroundBox
  L17_2 = L16_2
  L16_2 = L16_2.setStrokeColor
  L18_2 = L1_1
  L18_2 = L18_2.whiteColor
  L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L18_2()
  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  L16_2 = backgroundBox
  L17_2 = L16_2
  L16_2 = L16_2.setFillColor
  L18_2 = 0
  L19_2 = 0
  L20_2 = 0
  L21_2 = 0.78431373
  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
  L16_2 = backgroundBox
  L16_2.x = L10_2
  L16_2 = backgroundBox
  L17_2 = backgroundBox
  L17_2 = L17_2.height
  L17_2 = L17_2 / 2
  L16_2.y = L17_2
  L16_2 = backgroundBox
  L17_2 = L16_2
  L16_2 = L16_2.addEventListener
  L18_2 = "touch"
  
  function L19_2()
    local L0_3, L1_3, L2_3
    L0_3 = A8_2
    L1_3 = L0_3
    L0_3 = L0_3.remove
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = true
    return L0_3
  end
  
  L16_2(L17_2, L18_2, L19_2)
  L16_2 = backgroundBox
  L17_2 = L16_2
  L16_2 = L16_2.addEventListener
  L18_2 = "tap"
  
  function L19_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L16_2(L17_2, L18_2, L19_2)
  if A2_2 then
    L16_2 = L5_1
    L17_2 = L16_2
    L16_2 = L16_2.new
    L18_2 = A8_2.view
    L19_2 = A2_2
    L20_2 = 30
    L21_2 = 30
    L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
    L16_2.x = L12_2
    L17_2 = backgroundBox
    L17_2 = L17_2.y
    L16_2.y = L17_2
  end
  if A1_2 then
    L16_2 = nil
    L17_2 = system
    L17_2 = L17_2.getInfo
    L18_2 = "build"
    L17_2 = L17_2(L18_2)
    if "2013.1137" < L17_2 then
      L17_2 = system
      L17_2 = L17_2.getInfo
      L18_2 = "platformName"
      L17_2 = L17_2(L18_2)
      if L17_2 ~= "Android" then
        L17_2 = L2_1
        L17_2 = L17_2.lang
        if L17_2 == "fa" then
          goto lbl_221
        end
      end
    end
    L17_2 = L2_1
    L17_2 = L17_2.lang
    if L17_2 == "ar" then
      ::lbl_221::
      L17_2 = {}
      L18_2 = A8_2.view
      L17_2.parent = L18_2
      L17_2.text = A1_2
      L17_2.x = 0
      L17_2.y = 0
      L17_2.width = L13_2
      L18_2 = notifMessageHeight
      L17_2.height = L18_2
      L18_2 = L1_1
      L18_2 = L18_2.fontForSubtitle
      L18_2 = L18_2()
      L17_2.font = L18_2
      L18_2 = notifMessageFont
      L17_2.fontSize = L18_2
      L17_2.align = "right"
      L18_2 = display
      L18_2 = L18_2.newText
      L19_2 = L17_2
      L18_2 = L18_2(L19_2)
      L16_2 = L18_2
    else
      L17_2 = system
      L17_2 = L17_2.getInfo
      L18_2 = "platformName"
      L17_2 = L17_2(L18_2)
      if L17_2 == "Android" then
        L17_2 = {}
        L18_2 = A8_2.view
        L17_2.parent = L18_2
        L17_2.text = A1_2
        L17_2.x = 0
        L17_2.y = 0
        L17_2.width = L13_2
        L18_2 = notifMessageHeight
        L17_2.height = L18_2
        L18_2 = L1_1
        L18_2 = L18_2.fontForSubtitle
        L18_2 = L18_2()
        L17_2.font = L18_2
        L18_2 = notifMessageFont
        L17_2.fontSize = L18_2
        L18_2 = display
        L18_2 = L18_2.newText
        L19_2 = L17_2
        L18_2 = L18_2(L19_2)
        L16_2 = L18_2
      else
        L17_2 = display
        L17_2 = L17_2.newText
        L18_2 = A8_2.view
        L19_2 = A1_2
        L20_2 = 0
        L21_2 = 0
        L22_2 = L13_2
        L23_2 = notifMessageHeight
        L24_2 = L1_1
        L24_2 = L24_2.fontForSubtitle
        L24_2 = L24_2()
        L25_2 = notifMessageFont
        L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
        L16_2 = L17_2
      end
    end
    L18_2 = L16_2
    L17_2 = L16_2.setFillColor
    L19_2 = L1_1
    L19_2 = L19_2.whiteColor
    L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L19_2()
    L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L16_2.x = L14_2
    L17_2 = notifMessageY
    L18_2 = L16_2.height
    L18_2 = L18_2 / 2
    L17_2 = L17_2 + L18_2
    L16_2.y = L17_2
    L17_2 = system
    L17_2 = L17_2.getInfo
    L18_2 = "platformName"
    L17_2 = L17_2(L18_2)
    if L17_2 == "Android" then
      L17_2 = L2_1
      L17_2 = L17_2.lang
      if L17_2 == "fa" then
        goto lbl_309
      end
    end
    L17_2 = L2_1
    L17_2 = L17_2.lang
    ::lbl_309::
    if L17_2 == "ar" then
      L17_2 = L16_2.y
      L17_2 = L17_2 + 2
      L16_2.y = L17_2
    end
    if A3_2 == nil and A4_2 == nil then
      L16_2.x = L14_2
    end
  end
  if A3_2 and A4_2 then
    L16_2 = L6_1
    L17_2 = L16_2
    L16_2 = L16_2.new
    L18_2 = {}
    L18_2.label = A3_2
    L18_2.width = 100
    L18_2.height = 30
    L19_2 = L1_1
    L19_2 = L19_2.Path_Assets
    L20_2 = "BattleItems/battle_outcome_button.png"
    L19_2 = L19_2 .. L20_2
    L18_2.defaultFile = L19_2
    L19_2 = L1_1
    L19_2 = L19_2.Path_Assets
    L20_2 = "BattleItems/battle_outcome_button-pressed.png"
    L19_2 = L19_2 .. L20_2
    L18_2.overFile = L19_2
    
    function L19_2()
      local L0_3, L1_3, L2_3
      L0_3 = A8_2
      L1_3 = L0_3
      L0_3 = L0_3.remove
      L2_3 = false
      L0_3(L1_3, L2_3)
      L0_3 = A4_2
      L1_3 = A8_2
      L0_3(L1_3)
    end
    
    L18_2.onRelease = L19_2
    L16_2 = L16_2(L17_2, L18_2)
    L17_2 = A8_2.view
    L18_2 = L17_2
    L17_2 = L17_2.insert
    L19_2 = L16_2.view
    L17_2(L18_2, L19_2)
    L17_2 = display
    L17_2 = L17_2.contentWidth
    L17_2 = L17_2 - 15
    L18_2 = L16_2.width
    L18_2 = L18_2 / 2
    L17_2 = L17_2 - L18_2
    L16_2.x = L17_2
    L17_2 = L16_2.height
    L17_2 = L17_2 / 2
    L17_2 = 5 + L17_2
    L16_2.y = L17_2
  end
  L16_2 = A8_2.view
  L16_2.x = 0
  L16_2 = A8_2.view
  L17_2 = display
  L17_2 = L17_2.contentHeight
  L16_2.y = L17_2
  L16_2 = A8_2.mode
  if L16_2 == 1 then
    L16_2 = pushlast
    L17_2 = L14_1
    L18_2 = A8_2
    L16_2(L17_2, L18_2)
  else
    L16_2 = A8_2.mode
    if L16_2 == 2 then
      L16_2 = checkExist
      L17_2 = A7_2
      L16_2 = L16_2(L17_2)
      if not L16_2 then
        L16_2 = L12_1
        if L16_2 then
          L16_2 = lastTime
          if L16_2 then
            L16_2 = L12_1
            if L16_2 == A7_2 then
              L16_2 = os
              L16_2 = L16_2.time
              L16_2 = L16_2()
              L17_2 = lastTime
              L16_2 = L16_2 - L17_2
              if L16_2 < 10 then
                L16_2 = nil
                return L16_2
              end
            end
          end
        end
        L12_1 = A7_2
        L16_2 = os
        L16_2 = L16_2.time
        L16_2 = L16_2()
        lastTime = L16_2
        L16_2 = pushlast
        L17_2 = L14_1
        L18_2 = A8_2
        L16_2(L17_2, L18_2)
      end
    end
  end
  return A8_2
end

new = L16_1
