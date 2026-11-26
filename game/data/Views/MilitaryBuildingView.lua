local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
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
L4_1 = "Views.TorchModel"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.FlagModelView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Language"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Utils.Analytics"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Components.AudioManager"
L7_1 = L7_1(L8_1)
L8_1 = ""
L9_1 = display
L9_1 = L9_1.pixelHeight
L10_1 = display
L10_1 = L10_1.contentWidth
L9_1 = L9_1 / L10_1
if 1.5 < L9_1 then
  L8_1 = "@2x"
end
if 3 < L9_1 then
  L10_1 = _imageQuality
  if L10_1 == "HD" then
    L8_1 = "@4x"
  end
end
L10_1 = require
L11_1 = L1_1.Path_AssetsName
L12_1 = ".Home.FC-Military-sheet"
L13_1 = L8_1
L11_1 = L11_1 .. L12_1 .. L13_1
L10_1 = L10_1(L11_1)
L11_1 = graphics
L11_1 = L11_1.newImageSheet
L12_1 = L1_1.Path_Assets
L13_1 = "Home/FC-Military-sheet.png"
L12_1 = L12_1 .. L13_1
L14_1 = L10_1
L13_1 = L10_1.getSheet
L13_1, L14_1, L15_1, L16_1 = L13_1(L14_1)
L11_1 = L11_1(L12_1, L13_1, L14_1, L15_1, L16_1)

function L12_1(A0_2)
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

remove = L12_1

function L12_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.remove
  L1_2(L2_2)
end

removeSelf = L12_1
L12_1 = true

function L13_1(A0_2, A1_2)
  L12_1 = A1_2
end

setEnabled = L13_1

function L13_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A0_2.setFillColor
  if L5_2 ~= nil then
    L6_2 = A0_2
    L5_2 = A0_2.setFillColor
    L7_2 = A1_2
    L8_2 = A2_2
    L9_2 = A3_2
    L10_2 = A4_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  end
end

L14_1 = false
L15_1 = nil

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A1_2.phase
  if L2_2 == "began" then
    L2_2 = 1
    L3_2 = A0_2.elements
    L3_2 = #L3_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L13_1
      L7_2 = A0_2.elements
      L7_2 = L7_2[L5_2]
      L8_2 = 0.39215686
      L9_2 = 0.39215686
      L10_2 = 0.39215686
      L11_2 = 1
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    end
    L2_2 = true
    L14_1 = L2_2
  else
    L2_2 = A1_2.phase
    if L2_2 == "ended" then
      L2_2 = 1
      L3_2 = A0_2.elements
      L3_2 = #L3_2
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = L13_1
        L7_2 = A0_2.elements
        L7_2 = L7_2[L5_2]
        L8_2 = 1
        L9_2 = 1
        L10_2 = 1
        L11_2 = 1
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      end
      L2_2 = L15_1
      if L2_2 ~= nil then
        L2_2 = timer
        L2_2 = L2_2.cancel
        L3_2 = L15_1
        L2_2(L3_2)
        L2_2 = nil
        L15_1 = L2_2
      end
    else
      L2_2 = A1_2.phase
      if L2_2 == "moved" then
        L2_2 = L15_1
        if L2_2 ~= nil then
          L2_2 = timer
          L2_2 = L2_2.cancel
          L3_2 = L15_1
          L2_2(L3_2)
          L2_2 = nil
          L15_1 = L2_2
        end
        L2_2 = timer
        L2_2 = L2_2.performWithDelay
        L3_2 = 500
        
        function L4_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
          L0_3 = 1
          L1_3 = A0_2
          L1_3 = L1_3.elements
          L1_3 = #L1_3
          L2_3 = 1
          for L3_3 = L0_3, L1_3, L2_3 do
            L4_3 = L13_1
            L5_3 = A0_2
            L5_3 = L5_3.elements
            L5_3 = L5_3[L3_3]
            L6_3 = 1
            L7_3 = 1
            L8_3 = 1
            L9_3 = 1
            L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
          end
          L0_3 = nil
          L15_1 = L0_3
        end
        
        L5_2 = 1
        L2_2 = L2_2(L3_2, L4_2, L5_2)
        L15_1 = L2_2
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
                goto lbl_125
              end
            end
          end
        end
        L2_2 = 1
        L3_2 = A0_2.elements
        L3_2 = #L3_2
        L4_2 = 1
        for L5_2 = L2_2, L3_2, L4_2 do
          L6_2 = L13_1
          L7_2 = A0_2.elements
          L7_2 = L7_2[L5_2]
          L8_2 = 1
          L9_2 = 1
          L10_2 = 1
          L11_2 = 1
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
        end
        L2_2 = L15_1
        if L2_2 ~= nil then
          L2_2 = timer
          L2_2 = L2_2.cancel
          L3_2 = L15_1
          L2_2(L3_2)
          L2_2 = nil
          L15_1 = L2_2
        end
      end
    end
  end
  ::lbl_125::
  L2_2 = A1_2.phase
  if L2_2 == "ended" then
    L2_2 = L14_1
    if L2_2 == true then
      L2_2 = false
      L14_1 = L2_2
      L2_2 = L12_1
      if L2_2 then
        L2_2 = A0_2.currentSetup
        if L2_2 == 0 then
          L2_2 = nil
          L3_2 = mainPlayer
          L3_2 = L3_2.level
          if 7 < L3_2 then
            L3_2 = L5_1
            L2_2 = L3_2["Military building under construction description 2"]
          else
            L3_2 = L5_1
            L2_2 = L3_2["Military building under construction description"]
          end
          L3_2 = L7_1
          L3_2 = L3_2.playEffect
          L4_2 = Theme
          L4_2 = L4_2.buttonTouchSoundName
          L3_2(L4_2)
          L3_2 = require
          L4_2 = "Tutorial.TutorialManager2"
          L3_2 = L3_2(L4_2)
          L4_2 = {}
          L4_2.id = -1
          L4_2.type = "informative"
          L4_2.image = "Sarhang"
          L4_2.size = "semi"
          L4_2.dir = "left"
          L5_2 = {}
          L6_2 = L2_2
          L5_2[1] = L6_2
          L4_2.text = L5_2
          L5_2 = L3_2.processInformativeTutorial
          L6_2 = L4_2
          
          function L7_2()
            local L0_3, L1_3
            L0_3 = L6_1
            L0_3 = L0_3.logEvent
            L1_3 = "Military under construction shown"
            L0_3(L1_3)
          end
          
          L5_2(L6_2, L7_2)
        else
          L2_2 = A0_2.currentSetup
          if 0 < L2_2 then
            L2_2 = L7_1
            L2_2 = L2_2.playEffect
            L3_2 = Theme
            L3_2 = L3_2.buttonTouchSoundName
            L2_2(L3_2)
            L2_2 = {}
            L3_2 = {}
            L4_2 = mainPlayer
            L4_2 = L4_2.tribe
            L4_2 = L4_2.buildings
            L4_2 = L4_2.defense
            L3_2.defenseBuilding = L4_2
            L4_2 = mainPlayer
            L4_2 = L4_2.tribe
            L4_2 = L4_2.buildings
            L4_2 = L4_2.offense
            L3_2.offenseBuilding = L4_2
            L2_2.params = L3_2
            option = L2_2
            L2_2 = L2_1
            L2_2 = L2_2.gotoScene
            L3_2 = "Scenes.Military"
            L4_2 = option
            L2_2(L3_2, L4_2)
          end
        end
      end
    end
  end
end

touch = L16_1

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if A1_2 ~= nil then
    A0_2.building = A1_2
  end
  L2_2 = 0
  L3_2 = A0_2.building
  if L3_2 ~= nil then
    L3_2 = A0_2.building
    if L3_2 ~= false then
      L3_2 = A0_2.building
      L2_2 = L3_2.level
    end
  end
  L3_2 = A0_2.currentSetup
  if L3_2 ~= L2_2 then
    L3_2 = A0_2.timers
    L3_2 = #L3_2
    L4_2 = 1
    L5_2 = L3_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = timer
      L8_2 = L8_2.cancel
      L9_2 = A0_2.timers
      L9_2 = L9_2[L7_2]
      L8_2(L9_2)
      L8_2 = A0_2.timers
      L8_2[L7_2] = nil
    end
    L4_2 = A0_2.elements
    L4_2 = #L4_2
    L5_2 = 1
    L6_2 = L4_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = A0_2.elements
      L9_2 = L9_2[L8_2]
      L10_2 = L9_2
      L9_2 = L9_2.removeSelf
      L9_2(L10_2)
      L9_2 = A0_2.elements
      L9_2[L8_2] = nil
    end
    if L2_2 == 0 then
      L5_2 = display
      L5_2 = L5_2.newImageRect
      L6_2 = A0_2.view
      L7_2 = L1_1
      L7_2 = L7_2.Path_Assets
      L8_2 = "Home/FC-under-construction.png"
      L7_2 = L7_2 .. L8_2
      L8_2 = 60
      L9_2 = 47
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
      L6_2 = A0_2.elements
      L6_2[1] = L5_2
      A0_2.currentSetup = L2_2
      return
    end
    if 0 < L2_2 then
      L5_2 = A0_2.elements
      L5_2 = L5_2[1]
      if L5_2 ~= nil then
        L5_2 = A0_2.elements
        L5_2 = L5_2[1]
        L6_2 = L5_2
        L5_2 = L5_2.removeSelf
        L5_2(L6_2)
        L5_2 = A0_2.elements
        L5_2[1] = nil
      end
      L5_2 = 1
      L6_2 = 68
      L7_2 = 59
      L8_2 = 8
      if 3 < L2_2 and L2_2 < 6 then
        L5_2 = 2
      elseif 5 < L2_2 and L2_2 < 8 then
        L5_2 = 3
      elseif 7 < L2_2 and L2_2 < 11 then
        L5_2 = 4
      elseif 10 < L2_2 and L2_2 < 13 then
        L5_2 = 5
        L7_2 = 77
        L8_2 = -1
      elseif 12 < L2_2 and L2_2 < 14 then
        L5_2 = 6
        L7_2 = 77
        L8_2 = -1
      elseif 13 < L2_2 and L2_2 < 15 then
        L5_2 = 7
        L7_2 = 88
        L8_2 = -7
      elseif 14 < L2_2 and L2_2 < 31 then
        L5_2 = 8
        L7_2 = 108
        L8_2 = -17
      elseif 30 < L2_2 then
        L5_2 = 9
        L7_2 = 108
        L8_2 = -17
      end
      L9_2 = display
      L9_2 = L9_2.newImageRect
      L10_2 = A0_2.view
      L11_2 = L1_1
      L11_2 = L11_2.Path_Assets
      L12_2 = "Home/FC-Military"
      L13_2 = L5_2
      L14_2 = ".png"
      L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2
      L12_2 = L6_2
      L13_2 = L7_2
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      L10_2 = A0_2.elements
      L10_2[1] = L9_2
      L9_2.y = L8_2
      L11_2 = L9_2
      L10_2 = L9_2.toBack
      L10_2(L11_2)
      L10_2 = nil
      L11_2 = A0_2.elements
      L11_2 = L11_2[2]
      if L11_2 == nil then
        L11_2 = L4_1
        L12_2 = L11_2
        L11_2 = L11_2.new
        L11_2 = L11_2(L12_2)
        L10_2 = L11_2
        L11_2 = A0_2.view
        L12_2 = L11_2
        L11_2 = L11_2.insert
        L13_2 = L10_2.view
        L11_2(L12_2, L13_2)
        L12_2 = L10_2
        L11_2 = L10_2.setPosition
        L13_2 = 8
        L14_2 = -25
        L11_2(L12_2, L13_2, L14_2)
        L12_2 = L10_2
        L11_2 = L10_2.setScale
        L13_2 = L10_2.scale
        L13_2 = L13_2 * 1.1
        L11_2(L12_2, L13_2)
        L12_2 = L10_2
        L11_2 = L10_2.play
        L11_2(L12_2)
        L11_2 = A0_2.elements
        L11_2[2] = L10_2
      end
      if 10 < L2_2 and L2_2 < 14 then
        L12_2 = L10_2
        L11_2 = L10_2.setPosition
        L13_2 = 8
        L14_2 = -45
        L11_2(L12_2, L13_2, L14_2)
      elseif 12 < L2_2 then
        L12_2 = L10_2
        L11_2 = L10_2.setPosition
        L13_2 = 8
        L14_2 = -58
        L11_2(L12_2, L13_2, L14_2)
      end
    end
    if 1 < L2_2 then
      L5_2 = A0_2.elements
      L5_2 = L5_2[3]
      if L5_2 == nil then
        L5_2 = L3_1
        L6_2 = L5_2
        L5_2 = L5_2.new
        L5_2 = L5_2(L6_2)
        L6_2 = A0_2.view
        L7_2 = L6_2
        L6_2 = L6_2.insert
        L8_2 = L5_2.view
        L6_2(L7_2, L8_2)
        L7_2 = L5_2
        L6_2 = L5_2.setPosition
        L8_2 = 15
        L9_2 = 22
        L6_2(L7_2, L8_2, L9_2)
        L7_2 = L5_2
        L6_2 = L5_2.play
        L6_2(L7_2)
        L6_2 = A0_2.elements
        L6_2[3] = L5_2
        L6_2 = L3_1
        L7_2 = L6_2
        L6_2 = L6_2.new
        L6_2 = L6_2(L7_2)
        L7_2 = A0_2.view
        L8_2 = L7_2
        L7_2 = L7_2.insert
        L9_2 = L6_2.view
        L7_2(L8_2, L9_2)
        L8_2 = L6_2
        L7_2 = L6_2.setPosition
        L9_2 = -10
        L10_2 = 22
        L7_2(L8_2, L9_2, L10_2)
        L8_2 = L6_2
        L7_2 = L6_2.play
        L7_2(L8_2)
        L7_2 = A0_2.elements
        L7_2[4] = L6_2
      end
    end
    
    function L5_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3
      
      function L1_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = transition
        L0_4 = L0_4.to
        L1_4 = A0_3
        L2_4 = {}
        L2_4.time = 800
        L2_4.y = 0
        L3_4 = easing
        L3_4 = L3_4.outExpo
        L2_4.transition = L3_4
        
        function L3_4()
          local L0_5, L1_5, L2_5, L3_5
          L0_5 = transition
          L0_5 = L0_5.to
          L1_5 = A0_3
          L2_5 = {}
          L2_5.time = 800
          L2_5.delay = 1500
          L2_5.y = 40
          L3_5 = easing
          L3_5 = L3_5.inExpo
          L2_5.transition = L3_5
          L0_5(L1_5, L2_5)
        end
        
        L2_4.onComplete = L3_4
        L0_4(L1_4, L2_4)
      end
      
      L2_3 = L1_3
      L2_3()
      L2_3 = timer
      L2_3 = L2_3.performWithDelay
      L3_3 = 4600
      
      function L4_3()
        local L0_4, L1_4
        L0_4 = L1_3
        L0_4()
      end
      
      L5_3 = 0
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L3_3 = A0_2
      L3_3 = L3_3.timers
      L3_3[1] = L2_3
    end
    
    if 2 < L2_2 then
      L6_2 = A0_2.elements
      L6_2 = L6_2[6]
      if L6_2 == nil then
        L6_2 = display
        L6_2 = L6_2.newImageRect
        L7_2 = A0_2.view
        L8_2 = L11_1
        L9_2 = L10_1
        L10_2 = L9_2
        L9_2 = L9_2.getFrameIndex
        L11_2 = "Hole1"
        L9_2 = L9_2(L10_2, L11_2)
        L10_2 = 74
        L11_2 = 11
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
        L6_2.x = 0
        L6_2.y = 37
        L7_2 = A0_2.elements
        L7_2[5] = L6_2
        L7_2 = display
        L7_2 = L7_2.newGroup
        L7_2 = L7_2()
        L8_2 = A0_2.view
        L9_2 = L8_2
        L8_2 = L8_2.insert
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
        L8_2 = A0_2.elements
        L8_2[7] = L7_2
        L7_2.x = 0
        L7_2.y = 27
        L8_2 = graphics
        L8_2 = L8_2.newMask
        L9_2 = L1_1
        L9_2 = L9_2.Path_Assets
        L10_2 = "Home/FC-home-military-mask2.png"
        L9_2 = L9_2 .. L10_2
        L8_2 = L8_2(L9_2)
        L10_2 = L7_2
        L9_2 = L7_2.setMask
        L11_2 = L8_2
        L9_2(L10_2, L11_2)
        L7_2.maskX = 4
        L7_2.maskY = 0
        if L2_2 < 5 then
          L9_2 = display
          L9_2 = L9_2.newImageRect
          L10_2 = L7_2
          L11_2 = L11_1
          L12_2 = L10_1
          L13_2 = L12_2
          L12_2 = L12_2.getFrameIndex
          L14_2 = "Spear1"
          L12_2 = L12_2(L13_2, L14_2)
          L13_2 = 71
          L14_2 = 25
          L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
          L9_2.x = 0
          L9_2.y = 40
          L10_2 = A0_2.elements
          L10_2[6] = L9_2
          L10_2 = L5_2
          L11_2 = L9_2
          L10_2(L11_2)
        end
      end
    end
    if 4 < L2_2 then
      L6_2 = A0_2.elements
      L6_2 = L6_2[5]
      if L6_2 ~= nil then
        L6_2 = A0_2.elements
        L6_2 = L6_2[5]
        L7_2 = L6_2
        L6_2 = L6_2.removeSelf
        L6_2(L7_2)
        L6_2 = A0_2.elements
        L6_2[5] = nil
      end
      L6_2 = display
      L6_2 = L6_2.newImageRect
      L7_2 = A0_2.view
      L8_2 = L11_1
      L9_2 = L10_1
      L10_2 = L9_2
      L9_2 = L9_2.getFrameIndex
      L11_2 = "Hole2"
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = 88
      L11_2 = 15
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      L6_2.x = 0
      L6_2.y = 33
      L7_2 = A0_2.elements
      L7_2[5] = L6_2
      L7_2 = A0_2.elements
      L7_2 = L7_2[6]
      if L7_2 ~= nil then
        L7_2 = A0_2.elements
        L7_2 = L7_2[6]
        L8_2 = L7_2
        L7_2 = L7_2.removeSelf
        L7_2(L8_2)
        L7_2 = timer
        L7_2 = L7_2.cancel
        L8_2 = A0_2.timers
        L8_2 = L8_2[1]
        L7_2(L8_2)
        L7_2 = A0_2.timers
        L7_2[1] = nil
        L7_2 = A0_2.elements
        L7_2[6] = nil
      end
      L7_2 = 2
      if 6 < L2_2 and L2_2 < 9 then
        L7_2 = 3
      elseif 8 < L2_2 then
        L7_2 = 4
      end
      L8_2 = display
      L8_2 = L8_2.newImageRect
      L9_2 = A0_2.elements
      L9_2 = L9_2[7]
      L10_2 = L11_1
      L11_2 = L10_1
      L12_2 = L11_2
      L11_2 = L11_2.getFrameIndex
      L13_2 = "Spear"
      L14_2 = L7_2
      L13_2 = L13_2 .. L14_2
      L11_2 = L11_2(L12_2, L13_2)
      L12_2 = 87
      L13_2 = 32
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
      L8_2.x = 0
      L8_2.y = 40
      L9_2 = A0_2.elements
      L9_2[6] = L8_2
      L9_2 = L5_2
      L10_2 = L8_2
      L9_2(L10_2)
    end
    if 9 < L2_2 then
      L6_2 = display
      L6_2 = L6_2.newImageRect
      L7_2 = A0_2.view
      L8_2 = L11_1
      L9_2 = L10_1
      L10_2 = L9_2
      L9_2 = L9_2.getFrameIndex
      L11_2 = "Blade"
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = 38
      L11_2 = 37
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      L7_2 = A0_2.elements
      L7_2[8] = L6_2
      L8_2 = L6_2
      L7_2 = L6_2.toBack
      L7_2(L8_2)
      L6_2.x = -20
      L6_2.y = -16
      L7_2 = display
      L7_2 = L7_2.newImageRect
      L8_2 = A0_2.view
      L9_2 = L11_1
      L10_2 = L10_1
      L11_2 = L10_2
      L10_2 = L10_2.getFrameIndex
      L12_2 = "Blade"
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = 38
      L12_2 = 37
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
      L7_2.xScale = -1
      L8_2 = A0_2.elements
      L8_2[9] = L7_2
      L9_2 = L7_2
      L8_2 = L7_2.toBack
      L8_2(L9_2)
      L7_2.x = 20
      L7_2.y = -16
      L8_2 = transition
      L8_2 = L8_2.to
      L9_2 = L6_2
      L10_2 = {}
      L10_2.time = 4999
      L10_2.rotation = 360
      
      function L11_2()
        local L0_3, L1_3
        L0_3 = L6_2
        L0_3.rotation = 0
      end
      
      L10_2.onComplete = L11_2
      L8_2(L9_2, L10_2)
      L8_2 = transition
      L8_2 = L8_2.to
      L9_2 = L7_2
      L10_2 = {}
      L10_2.time = 4999
      L10_2.rotation = -360
      
      function L11_2()
        local L0_3, L1_3
        L0_3 = L7_2
        L0_3.rotation = 0
      end
      
      L10_2.onComplete = L11_2
      L8_2(L9_2, L10_2)
      L8_2 = timer
      L8_2 = L8_2.performWithDelay
      L9_2 = 5000
      
      function L10_2()
        local L0_3, L1_3, L2_3
        L0_3 = L6_2
        L0_3.rotation = 0
        L0_3 = L7_2
        L0_3.rotation = 0
        L0_3 = transition
        L0_3 = L0_3.to
        L1_3 = L6_2
        L2_3 = {}
        L2_3.time = 4000
        L2_3.rotation = 360
        L0_3(L1_3, L2_3)
        L0_3 = transition
        L0_3 = L0_3.to
        L1_3 = L7_2
        L2_3 = {}
        L2_3.time = 4000
        L2_3.rotation = -360
        L0_3(L1_3, L2_3)
      end
      
      L11_2 = 0
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2.timers
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
    if 10 < L2_2 then
      L6_2 = A0_2.elements
      L6_2 = L6_2[10]
      if L6_2 == nil then
        L6_2 = L3_1
        L7_2 = L6_2
        L6_2 = L6_2.new
        L6_2 = L6_2(L7_2)
        L7_2 = A0_2.view
        L8_2 = L7_2
        L7_2 = L7_2.insert
        L9_2 = L6_2.view
        L7_2(L8_2, L9_2)
        L8_2 = L6_2
        L7_2 = L6_2.setPosition
        L9_2 = 10
        L10_2 = -18
        L7_2(L8_2, L9_2, L10_2)
        L8_2 = L6_2
        L7_2 = L6_2.setScale
        L9_2 = L6_2.scale
        L9_2 = L9_2 * 0.8
        L7_2(L8_2, L9_2)
        L8_2 = L6_2
        L7_2 = L6_2.play
        L7_2(L8_2)
        L7_2 = A0_2.elements
        L7_2[10] = L6_2
        L7_2 = L3_1
        L8_2 = L7_2
        L7_2 = L7_2.new
        L7_2 = L7_2(L8_2)
        L8_2 = A0_2.view
        L9_2 = L8_2
        L8_2 = L8_2.insert
        L10_2 = L7_2.view
        L8_2(L9_2, L10_2)
        L9_2 = L7_2
        L8_2 = L7_2.setPosition
        L10_2 = -5
        L11_2 = -18
        L8_2(L9_2, L10_2, L11_2)
        L9_2 = L7_2
        L8_2 = L7_2.setScale
        L10_2 = L7_2.scale
        L10_2 = L10_2 * 0.8
        L8_2(L9_2, L10_2)
        L9_2 = L7_2
        L8_2 = L7_2.play
        L8_2(L9_2)
        L8_2 = A0_2.elements
        L8_2[11] = L7_2
      end
    end
    A0_2.currentSetup = L2_2
  end
end

refresh = L16_1

function L16_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2.x = A1_2
  A0_2.y = A2_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L16_1

function L16_1(A0_2, A1_2)
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
  L2_2.currentSetup = -1
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
  L7_2 = 68
  L8_2 = 76
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

new = L16_1
