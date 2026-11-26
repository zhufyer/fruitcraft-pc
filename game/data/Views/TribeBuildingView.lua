local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
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
L3_1 = "composer"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Language"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Utils.Analytics"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Components.AudioManager"
L5_1 = L5_1(L6_1)

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.view
  if L1_2 ~= nil then
    L1_2 = A0_2.timers
    L1_2 = #L1_2
    L2_2 = 1
    L3_2 = L1_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = timer
      L6_2 = L6_2.cancel
      L7_2 = A0_2.timers
      L7_2 = L7_2[L5_2]
      L6_2(L7_2)
      L6_2 = A0_2.timers
      L6_2[L5_2] = nil
    end
    L2_2 = A0_2.elements
    L2_2 = #L2_2
    L3_2 = 1
    L4_2 = L2_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2.elements
      L7_2 = L7_2[L6_2]
      L8_2 = L7_2
      L7_2 = L7_2.removeSelf
      L7_2(L8_2)
      L7_2 = A0_2.elements
      L7_2[L6_2] = nil
    end
    L3_2 = A0_2.view
    L4_2 = L3_2
    L3_2 = L3_2.removeSelf
    L3_2(L4_2)
    A0_2.view = nil
    A0_2.elements = nil
    A0_2.timers = nil
    A0_2 = nil
  end
end

remove = L6_1

function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.remove
  L1_2(L2_2)
end

removeSelf = L6_1
L6_1 = true

function L7_1(A0_2, A1_2)
  L6_1 = A1_2
end

setEnabled = L7_1
L7_1 = false
L8_1 = nil

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A1_2.phase
  if L2_2 == "began" then
    L2_2 = 1
    L3_2 = A0_2.elements
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2.elements
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2
      L6_2 = L6_2.setFillColor
      L8_2 = 0.3921568627451
      L9_2 = 0.3921568627451
      L10_2 = 0.3921568627451
      L11_2 = 1
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    end
    L2_2 = true
    L7_1 = L2_2
  else
    L2_2 = A1_2.phase
    if L2_2 == "ended" then
      L2_2 = 1
      L3_2 = A0_2.elements
      L3_2 = #L3_2
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = A0_2.elements
        L6_2 = L6_2[L5_2]
        L7_2 = L6_2
        L6_2 = L6_2.setFillColor
        L8_2 = L1_1
        L8_2 = L8_2.whiteColor
        L8_2, L9_2, L10_2, L11_2 = L8_2()
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      end
      L2_2 = L8_1
      if L2_2 ~= nil then
        L2_2 = timer
        L2_2 = L2_2.cancel
        L3_2 = L8_1
        L2_2(L3_2)
        L2_2 = nil
        L8_1 = L2_2
      end
    else
      L2_2 = A1_2.phase
      if L2_2 == "moved" then
        L2_2 = L8_1
        if L2_2 ~= nil then
          L2_2 = timer
          L2_2 = L2_2.cancel
          L3_2 = L8_1
          L2_2(L3_2)
          L2_2 = nil
          L8_1 = L2_2
        end
        L2_2 = timer
        L2_2 = L2_2.performWithDelay
        L3_2 = 500
        
        function L4_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
          L0_3 = 1
          L1_3 = A0_2
          L1_3 = L1_3.elements
          L1_3 = #L1_3
          L2_3 = 1
          for L3_3 = L0_3, L1_3, L2_3 do
            L4_3 = A0_2
            L4_3 = L4_3.elements
            L4_3 = L4_3[L3_3]
            L5_3 = L4_3
            L4_3 = L4_3.setFillColor
            L6_3 = L1_1
            L6_3 = L6_3.whiteColor
            L6_3 = L6_3()
            L4_3(L5_3, L6_3)
          end
          L0_3 = nil
          L8_1 = L0_3
        end
        
        L5_2 = 1
        L2_2 = L2_2(L3_2, L4_2, L5_2)
        L8_1 = L2_2
        L2_2 = A1_2.x
        L3_2 = A0_2.x
        L4_2 = A0_2.width
        L4_2 = L4_2 / 2
        L3_2 = L3_2 + L4_2
        L3_2 = L3_2 - 10
        if not (L2_2 > L3_2) then
          L2_2 = A1_2.x
          L3_2 = A0_2.x
          L4_2 = A0_2.width
          L4_2 = L4_2 / 2
          L3_2 = L3_2 - L4_2
          L3_2 = L3_2 + 10
          if not (L2_2 < L3_2) then
            L2_2 = A1_2.y
            L3_2 = A0_2.y
            L4_2 = A0_2.height
            L4_2 = L4_2 / 2
            L3_2 = L3_2 + L4_2
            L3_2 = L3_2 - 10
            if not (L2_2 > L3_2) then
              L2_2 = A1_2.y
              L3_2 = A0_2.y
              L4_2 = A0_2.height
              L4_2 = L4_2 / 2
              L3_2 = L3_2 - L4_2
              L3_2 = L3_2 + 10
              if not (L2_2 < L3_2) then
                goto lbl_123
              end
            end
          end
        end
        L2_2 = 1
        L3_2 = A0_2.elements
        L3_2 = #L3_2
        L4_2 = 1
        for L5_2 = L2_2, L3_2, L4_2 do
          L6_2 = A0_2.elements
          L6_2 = L6_2[L5_2]
          L7_2 = L6_2
          L6_2 = L6_2.setFillColor
          L8_2 = L1_1
          L8_2 = L8_2.whiteColor
          L8_2, L9_2, L10_2, L11_2 = L8_2()
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
        end
        L2_2 = L8_1
        if L2_2 ~= nil then
          L2_2 = timer
          L2_2 = L2_2.cancel
          L3_2 = L8_1
          L2_2(L3_2)
          L2_2 = nil
          L8_1 = L2_2
        end
      end
    end
  end
  ::lbl_123::
  L2_2 = A1_2.phase
  if L2_2 == "ended" then
    L2_2 = L7_1
    if L2_2 == true then
      L2_2 = false
      L7_1 = L2_2
      L2_2 = L6_1
      if L2_2 then
        L2_2 = A0_2.currentSetup
        if L2_2 == -1 then
          L2_2 = L5_1
          L2_2 = L2_2.playEffect
          L3_2 = Theme
          L3_2 = L3_2.buttonTouchSoundName
          L2_2(L3_2)
          L2_2 = require
          L3_2 = "Tutorial.TutorialManager2"
          L2_2 = L2_2(L3_2)
          L3_2 = {}
          L3_2.id = -1
          L3_2.type = "informative"
          L3_2.image = "Sarhang"
          L3_2.size = "semi"
          L3_2.dir = "left"
          L4_2 = {}
          L5_2 = L3_1
          L5_2 = L5_2.localizedString
          L6_2 = "Tribe building under construction description"
          L7_2 = {}
          L8_2 = L3_1
          L8_2 = L8_2.adjustNumber
          L9_2 = L1_1
          L9_2 = L9_2.UnlockLevel_Tribe
          L8_2 = L8_2(L9_2)
          L7_2.level = L8_2
          L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2)
          L4_2[1] = L5_2
          L4_2[2] = L6_2
          L4_2[3] = L7_2
          L4_2[4] = L8_2
          L4_2[5] = L9_2
          L4_2[6] = L10_2
          L4_2[7] = L11_2
          L3_2.text = L4_2
          L4_2 = L2_2.processInformativeTutorial
          L5_2 = L3_2
          
          function L6_2()
            local L0_3, L1_3
            L0_3 = L4_1
            L0_3 = L0_3.logEvent
            L1_3 = "Tribe under construction shown"
            L0_3(L1_3)
          end
          
          L4_2(L5_2, L6_2)
        else
          L2_2 = A0_2.currentSetup
          if -1 < L2_2 then
            L2_2 = L5_1
            L2_2 = L2_2.playEffect
            L3_2 = Theme
            L3_2 = L3_2.buttonTouchSoundName
            L2_2(L3_2)
            L2_2 = mainPlayer
            L2_2 = L2_2.tribe
            if L2_2 then
              L2_2 = mainPlayer
              L2_2 = L2_2.tribe
              L2_2 = L2_2.id
              if 0 < L2_2 then
                L2_2 = L2_1
                L2_2 = L2_2.gotoScene
                L3_2 = "Scenes.TribeManager"
                L2_2(L3_2)
              else
                L2_2 = L2_1
                L2_2 = L2_2.gotoScene
                L3_2 = "Scenes.TribeFinderScene"
                L2_2(L3_2)
              end
            else
              L2_2 = L2_1
              L2_2 = L2_2.gotoScene
              L3_2 = "Scenes.TribeFinderScene"
              L2_2(L3_2)
            end
          end
        end
      end
    end
  end
end

touch = L9_1
L9_1 = {}
L10_1 = {}
L10_1.name = "Home/FC-under-construction.png"
L10_1.width = 60
L10_1.height = 47
L10_1.offsetX = 0
L10_1.offsetY = 0
L9_1[-1] = L10_1
L10_1 = {}
L10_1.name = "Home/Greenhouse0.png"
L10_1.width = 56
L10_1.height = 62
L10_1.offsetX = 0
L10_1.offsetY = 0
L9_1[0] = L10_1
L10_1 = {}
L10_1.name = "Home/Greenhouse1.png"
L10_1.width = 63
L10_1.height = 73
L10_1.offsetX = 0
L10_1.offsetY = 0
L9_1[1] = L10_1
L10_1 = {}
L10_1.name = "Home/Greenhouse2.png"
L10_1.width = 63
L10_1.height = 73
L10_1.offsetX = 0
L10_1.offsetY = 0
L9_1[2] = L10_1
L10_1 = {}
L10_1.name = "Home/Greenhouse3.png"
L10_1.width = 63
L10_1.height = 73
L10_1.offsetX = 0
L10_1.offsetY = 0
L9_1[3] = L10_1
L10_1 = {}
L10_1.name = "Home/Greenhouse4.png"
L10_1.width = 75
L10_1.height = 80
L10_1.offsetX = 0
L10_1.offsetY = 0
L9_1[4] = L10_1
L10_1 = {}
L10_1.name = "Home/Greenhouse5.png"
L10_1.width = 87
L10_1.height = 80
L10_1.offsetX = 0
L10_1.offsetY = 0
L9_1[5] = L10_1
L10_1 = {}
L10_1.name = "Home/Greenhouse6.png"
L10_1.width = 101
L10_1.height = 80
L10_1.offsetX = 0
L10_1.offsetY = 0
L9_1[6] = L10_1
L10_1 = {}
L10_1.name = "Home/Greenhouse7.png"
L10_1.width = 101
L10_1.height = 80
L10_1.offsetX = 0
L10_1.offsetY = 0
L9_1[7] = L10_1
L10_1 = {}
L10_1.name = "Home/Greenhouse8.png"
L10_1.width = 101
L10_1.height = 80
L10_1.offsetX = 0
L10_1.offsetY = 0
L9_1[8] = L10_1
L10_1 = {}
L10_1.name = "Home/Greenhouse9.png"
L10_1.width = 103
L10_1.height = 80
L10_1.offsetX = 0
L10_1.offsetY = 0
L9_1[9] = L10_1
L10_1 = {}
L10_1.name = "Home/Greenhouse10.png"
L10_1.width = 106
L10_1.height = 85
L10_1.offsetX = 0
L10_1.offsetY = 0
L9_1[10] = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 ~= nil then
    A0_2.building = A1_2
  end
  L2_2 = -1
  L3_2 = A0_2.building
  if L3_2 ~= nil then
    L3_2 = A0_2.building
    if L3_2 ~= false then
      L3_2 = A0_2.building
      L2_2 = L3_2.level
  end
  else
    L3_2 = mainPlayer
    L3_2 = L3_2.level
    L4_2 = L1_1
    L4_2 = L4_2.Player_TribeJoinLevelLimit
    if L3_2 >= L4_2 then
      L2_2 = 0
    end
  end
  L3_2 = A0_2.currentSetup
  if L3_2 ~= L2_2 then
    L3_2 = A0_2.elements
    L3_2 = #L3_2
    L4_2 = 1
    L5_2 = L3_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = A0_2.elements
      L8_2 = L8_2[L7_2]
      L9_2 = L8_2
      L8_2 = L8_2.removeSelf
      L8_2(L9_2)
      L8_2 = A0_2.elements
      L8_2[L7_2] = nil
    end
    L4_2 = display
    L4_2 = L4_2.newImageRect
    L5_2 = A0_2.view
    L6_2 = L1_1
    L6_2 = L6_2.Path_Assets
    L7_2 = L9_1
    L7_2 = L7_2[L2_2]
    L7_2 = L7_2.name
    L6_2 = L6_2 .. L7_2
    L7_2 = L9_1
    L7_2 = L7_2[L2_2]
    L7_2 = L7_2.width
    L8_2 = L9_1
    L8_2 = L8_2[L2_2]
    L8_2 = L8_2.height
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L5_2 = A0_2.elements
    L5_2[1] = L4_2
    L5_2 = L9_1
    L5_2 = L5_2[L2_2]
    L5_2 = L5_2.offsetX
    L4_2.x = L5_2
    L5_2 = L9_1
    L5_2 = L5_2[L2_2]
    L5_2 = L5_2.offsetY
    L4_2.y = L5_2
    L5_2 = A0_2.touchRect
    L6_2 = L9_1
    L6_2 = L6_2[L2_2]
    L6_2 = L6_2.width
    L6_2 = L6_2 + 5
    L5_2.width = L6_2
    L5_2 = A0_2.touchRect
    L6_2 = L9_1
    L6_2 = L6_2[L2_2]
    L6_2 = L6_2.height
    L6_2 = L6_2 + 5
    L5_2.height = L6_2
    L5_2 = A0_2.touchRect
    L5_2.x = 0
    L5_2 = A0_2.touchRect
    L5_2.y = 0
    A0_2.currentSetup = L2_2
  end
end

refresh = L10_1

function L10_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2.x = A1_2
  A0_2.y = A2_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = obj
  if not L2_2 then
    L2_2 = {}
  end
  obj = L2_2
  L2_2 = setmetatable
  L3_2 = obj
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  L2_2 = obj
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  L2_2.view = L3_2
  L2_2 = obj
  L2_2.building = A1_2
  L2_2 = obj
  L2_2.currentSetup = -2
  L2_2 = obj
  L3_2 = {}
  L2_2.elements = L3_2
  L2_2 = obj
  L3_2 = {}
  L2_2.timers = L3_2
  L2_2 = obj
  L2_2.width = 74
  L2_2 = obj
  L2_2.height = 88
  L2_2 = obj
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = obj
  L4_2 = L4_2.view
  L5_2 = 0
  L6_2 = 0
  L7_2 = 100
  L8_2 = 80
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.touchRect = L3_2
  L2_2 = obj
  L2_2 = L2_2.touchRect
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = obj
  L2_2 = L2_2.touchRect
  L2_2.isHitTestable = true
  L2_2 = obj
  L2_2 = L2_2.touchRect
  L3_2 = L2_2
  L2_2 = L2_2.addEventListener
  L4_2 = "touch"
  
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = touch
    L2_3 = obj
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
    L1_3 = true
    return L1_3
  end
  
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = obj
  return L2_2
end

new = L10_1
