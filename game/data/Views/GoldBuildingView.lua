local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
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
L5_1 = "Language"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Utils.Analytics"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Components.AudioManager"
L6_1 = L6_1(L7_1)
L7_1 = ""
L8_1 = display
L8_1 = L8_1.pixelHeight
L9_1 = display
L9_1 = L9_1.contentWidth
L8_1 = L8_1 / L9_1
if 1.5 < L8_1 then
  L7_1 = "@2x"
end
if 3 < L8_1 then
  L9_1 = _imageQuality
  if L9_1 == "HD" then
    L7_1 = "@4x"
  end
end
L9_1 = require
L10_1 = L1_1.Path_AssetsName
L11_1 = ".Home.FC-Mine-sheet"
L12_1 = L7_1
L10_1 = L10_1 .. L11_1 .. L12_1
L9_1 = L9_1(L10_1)
L10_1 = graphics
L10_1 = L10_1.newImageSheet
L11_1 = L1_1.Path_Assets
L12_1 = "Home/FC-Mine-sheet.png"
L11_1 = L11_1 .. L12_1
L13_1 = L9_1
L12_1 = L9_1.getSheet
L12_1, L13_1, L14_1 = L12_1(L13_1)
L10_1 = L10_1(L11_1, L12_1, L13_1, L14_1)

function L11_1(A0_2)
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

remove = L11_1

function L11_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.remove
  L1_2(L2_2)
end

removeSelf = L11_1
L11_1 = true

function L12_1(A0_2, A1_2)
  L11_1 = A1_2
end

setEnabled = L12_1
L12_1 = nil
L13_1 = false

function L14_1(A0_2, A1_2)
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
      if L6_2 then
        L6_2 = A0_2.elements
        L6_2 = L6_2[L5_2]
        L6_2 = L6_2.setFillColor
        if L6_2 then
          L6_2 = A0_2.elements
          L6_2 = L6_2[L5_2]
          L7_2 = L6_2
          L6_2 = L6_2.setFillColor
          L8_2 = 0.39215686
          L9_2 = 0.39215686
          L10_2 = 0.39215686
          L11_2 = 1
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
        end
      end
    end
    L2_2 = true
    L13_1 = L2_2
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
        if L6_2 then
          L6_2 = A0_2.elements
          L6_2 = L6_2[L5_2]
          L6_2 = L6_2.setFillColor
          if L6_2 then
            L6_2 = A0_2.elements
            L6_2 = L6_2[L5_2]
            L7_2 = L6_2
            L6_2 = L6_2.setFillColor
            L8_2 = 1
            L9_2 = 1
            L10_2 = 1
            L11_2 = 1
            L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
          end
        end
      end
      L2_2 = L12_1
      if L2_2 ~= nil then
        L2_2 = timer
        L2_2 = L2_2.cancel
        L3_2 = L12_1
        L2_2(L3_2)
        L2_2 = nil
        L12_1 = L2_2
      end
    else
      L2_2 = A1_2.phase
      if L2_2 == "moved" then
        L2_2 = L12_1
        if L2_2 ~= nil then
          L2_2 = timer
          L2_2 = L2_2.cancel
          L3_2 = L12_1
          L2_2(L3_2)
          L2_2 = nil
          L12_1 = L2_2
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
            if L4_3 then
              L4_3 = A0_2
              L4_3 = L4_3.elements
              L4_3 = L4_3[L3_3]
              L4_3 = L4_3.setFillColor
              if L4_3 then
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
            end
          end
          L0_3 = nil
          L12_1 = L0_3
        end
        
        L5_2 = 1
        L2_2 = L2_2(L3_2, L4_2, L5_2)
        L12_1 = L2_2
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
                goto lbl_151
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
          if L6_2 then
            L6_2 = A0_2.elements
            L6_2 = L6_2[L5_2]
            L6_2 = L6_2.setFillColor
            if L6_2 then
              L6_2 = A0_2.elements
              L6_2 = L6_2[L5_2]
              L7_2 = L6_2
              L6_2 = L6_2.setFillColor
              L8_2 = L1_1
              L8_2 = L8_2.whiteColor
              L8_2, L9_2, L10_2, L11_2 = L8_2()
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
            end
          end
        end
        L2_2 = L12_1
        if L2_2 ~= nil then
          L2_2 = timer
          L2_2 = L2_2.cancel
          L3_2 = L12_1
          L2_2(L3_2)
          L2_2 = nil
          L12_1 = L2_2
        end
      end
    end
  end
  ::lbl_151::
  L2_2 = A1_2.phase
  if L2_2 == "ended" then
    L2_2 = L13_1
    if L2_2 == true then
      L2_2 = false
      L13_1 = L2_2
      L2_2 = L11_1
      if L2_2 then
        L2_2 = A0_2.currentSetup
        if L2_2 == 0 then
          L2_2 = L6_1
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
          L5_2 = L4_1
          L5_2 = L5_2.localizedString
          L6_2 = "Gold building under construction description"
          L7_2 = {}
          L8_2 = L4_1
          L8_2 = L8_2.adjustNumber
          L9_2 = L1_1
          L9_2 = L9_2.UnlockLevel_Mine
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
            L0_3 = L5_1
            L0_3 = L0_3.logEvent
            L1_3 = "Gold mine under construction shown"
            L0_3(L1_3)
          end
          
          L4_2(L5_2, L6_2)
        else
          L2_2 = A0_2.currentSetup
          if 0 < L2_2 then
            L2_2 = L6_1
            L2_2 = L2_2.playEffect
            L3_2 = Theme
            L3_2 = L3_2.buttonTouchSoundName
            L2_2(L3_2)
            L2_2 = {}
            L3_2 = {}
            L4_2 = mainPlayer
            L4_2 = L4_2.goldBuilding
            L3_2.building = L4_2
            L2_2.params = L3_2
            option = L2_2
            L2_2 = L2_1
            L2_2 = L2_2.gotoScene
            L3_2 = "Scenes.DepartmentofLabor"
            L4_2 = option
            L2_2(L3_2, L4_2)
          end
        end
      end
    end
  end
end

touch = L14_1

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
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
    L3_2 = A0_2.currentSetup
    if L2_2 < L3_2 then
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
        L9_2 = display
        L10_2 = L9_2
        L9_2 = L9_2.remove
        L11_2 = A0_2.elements
        L11_2 = L11_2[L8_2]
        L9_2(L10_2, L11_2)
        L9_2 = A0_2.elements
        L9_2[L8_2] = nil
      end
    end
    if L2_2 == 0 then
      L3_2 = display
      L3_2 = L3_2.newImageRect
      L4_2 = A0_2.view
      L5_2 = L1_1
      L5_2 = L5_2.Path_Assets
      L6_2 = "Home/FC-under-construction.png"
      L5_2 = L5_2 .. L6_2
      L6_2 = 60
      L7_2 = 47
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
      L4_2 = A0_2.elements
      L4_2[1] = L3_2
      A0_2.currentSetup = L2_2
      return
    end
    if 0 < L2_2 then
      L3_2 = A0_2.elements
      L3_2 = L3_2[1]
      if L3_2 ~= nil then
        L3_2 = display
        L3_2 = L3_2.remove
        L4_2 = A0_2.elements
        L4_2 = L4_2[1]
        L3_2(L4_2)
        L3_2 = A0_2.elements
        L3_2[1] = nil
      end
      L3_2 = ""
      L4_2 = 73
      L5_2 = 75
      L6_2 = 0
      if 1 < L2_2 and L2_2 < 4 then
        L3_2 = 2
        L4_2 = 73
        L5_2 = 80
        L6_2 = 2
      elseif L2_2 == 4 then
        L3_2 = 3
        L4_2 = 73
        L5_2 = 87
        L6_2 = -1
      end
      L7_2 = display
      L7_2 = L7_2.newImageRect
      L8_2 = A0_2.view
      L9_2 = L1_1
      L9_2 = L9_2.Path_Assets
      L10_2 = "Home/FC-home-mine"
      L11_2 = L3_2
      L12_2 = ".png"
      L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
      L10_2 = L4_2
      L11_2 = L5_2
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
      L8_2 = A0_2.elements
      L8_2[1] = L7_2
      L7_2.y = L6_2
      L9_2 = L7_2
      L8_2 = L7_2.toBack
      L8_2(L9_2)
      L8_2 = A0_2.elements
      L8_2 = L8_2[2]
      if L8_2 == nil then
        L8_2 = L3_1
        L9_2 = L8_2
        L8_2 = L8_2.new
        L8_2 = L8_2(L9_2)
        L9_2 = A0_2.view
        L10_2 = L9_2
        L9_2 = L9_2.insert
        L11_2 = L8_2.view
        L9_2(L10_2, L11_2)
        L10_2 = L8_2
        L9_2 = L8_2.setPosition
        L11_2 = 15
        L12_2 = 10
        L9_2(L10_2, L11_2, L12_2)
        L10_2 = L8_2
        L9_2 = L8_2.play
        L9_2(L10_2)
        L9_2 = A0_2.elements
        L9_2[2] = L8_2
        L9_2 = L3_1
        L10_2 = L9_2
        L9_2 = L9_2.new
        L9_2 = L9_2(L10_2)
        L10_2 = A0_2.view
        L11_2 = L10_2
        L10_2 = L10_2.insert
        L12_2 = L9_2.view
        L10_2(L11_2, L12_2)
        L11_2 = L9_2
        L10_2 = L9_2.setPosition
        L12_2 = -10
        L13_2 = 10
        L10_2(L11_2, L12_2, L13_2)
        L11_2 = L9_2
        L10_2 = L9_2.play
        L10_2(L11_2)
        L10_2 = A0_2.elements
        L10_2[3] = L9_2
      end
    end
    if 1 < L2_2 then
      L3_2 = A0_2.currentSetup
      if L3_2 < 2 then
        L3_2 = display
        L3_2 = L3_2.newImageRect
        L4_2 = A0_2.view
        L5_2 = L10_1
        L6_2 = L9_1
        L7_2 = L6_2
        L6_2 = L6_2.getFrameIndex
        L8_2 = "FC-wagon"
        L6_2 = L6_2(L7_2, L8_2)
        L7_2 = 12
        L8_2 = 14
        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        L4_2 = A0_2.elements
        L4_2[4] = L3_2
        L3_2.x = 0.5
        L3_2.y = 40
        L4_2 = display
        L4_2 = L4_2.newImageRect
        L5_2 = A0_2.view
        L6_2 = L10_1
        L7_2 = L9_1
        L8_2 = L7_2
        L7_2 = L7_2.getFrameIndex
        L9_2 = "Empty Wagon"
        L7_2 = L7_2(L8_2, L9_2)
        L8_2 = 12
        L9_2 = 14
        L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
        L5_2 = A0_2.elements
        L5_2[5] = L4_2
        L4_2.x = 0.5
        L4_2.y = 35
        L4_2.alpha = 0
        L3_2.y = 20
        L3_2.xScale = 0.5
        L3_2.yScale = 0.5
        L3_2.alpha = 0
        L5_2 = transition
        L5_2 = L5_2.to
        L6_2 = L3_2
        L7_2 = {}
        L7_2.time = 900
        L7_2.y = 27
        L7_2.xScale = 1
        L7_2.yScale = 1
        L7_2.alpha = 1
        L7_2.delay = 400
        
        function L8_2()
          local L0_3, L1_3, L2_3
          L0_3 = transition
          L0_3 = L0_3.to
          L1_3 = L3_2
          L2_3 = {}
          L2_3.time = 500
          L2_3.y = 35
          L0_3(L1_3, L2_3)
        end
        
        L7_2.onComplete = L8_2
        L5_2(L6_2, L7_2)
        L5_2 = timer
        L5_2 = L5_2.performWithDelay
        L6_2 = 5000
        
        function L7_2()
          local L0_3, L1_3, L2_3, L3_3
          L0_3 = L3_2
          L0_3.alpha = 0
          L0_3 = L3_2
          L0_3.y = 20
          L0_3 = L3_2
          L0_3.xScale = 0.5
          L0_3 = L3_2
          L0_3.yScale = 0.5
          L0_3 = L4_2
          L0_3.alpha = 1
          L0_3 = L4_2
          L0_3.y = 35
          L0_3 = L4_2
          L0_3.xScale = 1
          L0_3 = L4_2
          L0_3.yScale = 1
          L0_3 = transition
          L0_3 = L0_3.to
          L1_3 = L4_2
          L2_3 = {}
          L2_3.time = 500
          L2_3.y = 27
          
          function L3_3()
            local L0_4, L1_4, L2_4, L3_4
            L0_4 = transition
            L0_4 = L0_4.to
            L1_4 = L4_2
            L2_4 = {}
            L2_4.time = 900
            L2_4.y = 20
            L2_4.xScale = 0.5
            L2_4.yScale = 0.5
            L2_4.alpha = 0
            
            function L3_4()
              local L0_5, L1_5, L2_5, L3_5
              L0_5 = transition
              L0_5 = L0_5.to
              L1_5 = L3_2
              L2_5 = {}
              L2_5.time = 900
              L2_5.y = 27
              L2_5.xScale = 1
              L2_5.yScale = 1
              L2_5.alpha = 1
              L2_5.delay = 1000
              
              function L3_5()
                local L0_6, L1_6, L2_6
                L0_6 = transition
                L0_6 = L0_6.to
                L1_6 = L3_2
                L2_6 = {}
                L2_6.time = 500
                L2_6.y = 35
                L0_6(L1_6, L2_6)
              end
              
              L2_5.onComplete = L3_5
              L0_5(L1_5, L2_5)
            end
            
            L2_4.onComplete = L3_4
            L0_4(L1_4, L2_4)
          end
          
          L2_3.onComplete = L3_3
          L0_3(L1_3, L2_3)
        end
        
        L8_2 = 0
        L5_2 = L5_2(L6_2, L7_2, L8_2)
        L6_2 = table
        L6_2 = L6_2.insert
        L7_2 = A0_2.timers
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
      end
    end
    L3_2 = 1
    L4_2 = display
    L4_2 = L4_2.pixelHeight
    L5_2 = display
    L5_2 = L5_2.contentWidth
    L4_2 = L4_2 / L5_2
    if 1.5 < L4_2 then
      L3_2 = 2
    end
    if 3 < L4_2 then
      L5_2 = _imageQuality
      if L5_2 == "HD" then
        L3_2 = 4
      end
    end
    if 2 < L2_2 then
      L5_2 = A0_2.currentSetup
      if L5_2 < 3 then
        L5_2 = display
        L5_2 = L5_2.newImageRect
        L6_2 = A0_2.view
        L7_2 = L10_1
        L8_2 = L9_1
        L9_2 = L8_2
        L8_2 = L8_2.getFrameIndex
        L10_2 = "Chimney1"
        L8_2 = L8_2(L9_2, L10_2)
        L9_2 = 43
        L10_2 = 23
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
        L6_2 = display
        L6_2 = L6_2.newImageRect
        L7_2 = A0_2.view
        L8_2 = L10_1
        L9_2 = L9_1
        L10_2 = L9_2
        L9_2 = L9_2.getFrameIndex
        L11_2 = "Chimney2"
        L9_2 = L9_2(L10_2, L11_2)
        L10_2 = 42
        L11_2 = 27
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
        L6_2.xScale = 0.75
        L6_2.yScale = 0.75
        L5_2.xScale = 0.75
        L5_2.yScale = 0.75
        L7_2 = A0_2.elements
        L7_2[6] = L6_2
        L7_2 = A0_2.elements
        L7_2[7] = L5_2
        L6_2.x = -35
        L6_2.y = -30
        L5_2.x = -27
        L5_2.y = -8
        L7_2 = -10
        L8_2 = -8
        if L3_2 == 4 then
          L6_2.x = -45
          L6_2.y = -50
          L5_2.x = -21.5
          L5_2.y = 8
          L7_2 = -2
          L8_2 = 8
        end
        if L3_2 == 1 then
          L6_2.x = -32
          L6_2.y = -25
          L5_2.x = -32.5
          L5_2.y = -24
          L7_2 = -22
          L8_2 = -24
        end
        
        function L9_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
          L0_3 = display
          L0_3 = L0_3.newImageRect
          L1_3 = A0_2
          L1_3 = L1_3.view
          L2_3 = L10_1
          L3_3 = L9_1
          L4_3 = L3_3
          L3_3 = L3_3.getFrameIndex
          L5_3 = "Cloud"
          L3_3 = L3_3(L4_3, L5_3)
          L4_3 = 15
          L5_3 = 11
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
          if L0_3 == nil then
            return
          end
          L0_3.x = -35
          L0_3.y = -30
          L0_3.alpha = 0
          L0_3.xScale = 0.1
          L0_3.yScale = 0.1
          L1_3 = math
          L1_3 = L1_3.random
          L2_3 = 40
          L3_3 = 180
          L1_3 = L1_3(L2_3, L3_3)
          L1_3 = L1_3 / 100
          L0_3.finalScale = L1_3
          L1_3 = math
          L1_3 = L1_3.random
          L2_3 = -30
          L3_3 = 30
          L1_3 = L1_3(L2_3, L3_3)
          L0_3.xOffset = L1_3
          L1_3 = math
          L1_3 = L1_3.random
          L2_3 = 40
          L3_3 = 180
          L1_3 = L1_3(L2_3, L3_3)
          L1_3 = L1_3 / 100
          L2_3 = math
          L2_3 = L2_3.random
          L3_3 = -30
          L4_3 = 30
          L2_3 = L2_3(L3_3, L4_3)
          L3_3 = transition
          L3_3 = L3_3.to
          L4_3 = L0_3
          L5_3 = {}
          L5_3.time = 300
          L5_3.delay = 50
          L5_3.xScale = L1_3
          L5_3.yScale = L1_3
          L5_3.alpha = 1
          L5_3.y = -45
          L6_3 = -35 + L2_3
          L5_3.x = L6_3
          
          function L6_3()
            local L0_4, L1_4, L2_4, L3_4
            L0_4 = transition
            L0_4 = L0_4.to
            L1_4 = L0_3
            L2_4 = {}
            L2_4.time = 4000
            L2_4.y = -140
            L2_4.alpha = 0
            
            function L3_4()
              local L0_5, L1_5
              L0_5 = display
              L0_5 = L0_5.remove
              L1_5 = L0_3
              L0_5(L1_5)
            end
            
            L2_4.onComplete = L3_4
            
            function L3_4()
              local L0_5, L1_5
              L0_5 = L0_3
              L1_5 = L0_5
              L0_5 = L0_5.removeSelf
              L0_5(L1_5)
            end
            
            L2_4.onCancel = L3_4
            
            function L3_4()
              local L0_5, L1_5
              L0_5 = transition
              L0_5 = L0_5.cancel
              L1_5 = L0_3
              L0_5(L1_5)
              L0_5 = L0_3
              L1_5 = L0_5
              L0_5 = L0_5.removeSelf
              L0_5(L1_5)
            end
            
            L2_4.onPause = L3_4
            L0_4(L1_4, L2_4)
          end
          
          L5_3.onComplete = L6_3
          
          function L6_3()
            local L0_4, L1_4
            L0_4 = L0_3
            L1_4 = L0_4
            L0_4 = L0_4.removeSelf
            L0_4(L1_4)
          end
          
          L5_3.onCancel = L6_3
          
          function L6_3()
            local L0_4, L1_4
            L0_4 = transition
            L0_4 = L0_4.cancel
            L1_4 = L0_3
            L0_4(L1_4)
            L0_4 = L0_3
            L1_4 = L0_4
            L0_4 = L0_4.removeSelf
            L0_4(L1_4)
          end
          
          L5_3.onPause = L6_3
          L3_3(L4_3, L5_3)
        end
        
        function L10_2()
          local L0_3, L1_3, L2_3, L3_3
          L0_3 = transition
          L0_3 = L0_3.to
          L1_3 = L5_2
          L2_3 = {}
          L2_3.time = 400
          L2_3.yScale = 0.5
          L3_3 = L7_2
          L2_3.y = L3_3
          
          function L3_3()
            local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
            L0_4 = transition
            L0_4 = L0_4.to
            L1_4 = L5_2
            L2_4 = {}
            L2_4.time = 400
            L2_4.yScale = 0.75
            L3_4 = L8_2
            L2_4.y = L3_4
            L0_4(L1_4, L2_4)
            L0_4 = math
            L0_4 = L0_4.random
            L1_4 = 1
            L2_4 = 3
            L0_4 = L0_4(L1_4, L2_4)
            L1_4 = 1
            L2_4 = L0_4
            L3_4 = 1
            for L4_4 = L1_4, L2_4, L3_4 do
              L5_4 = L9_2
              L5_4()
            end
          end
          
          L2_3.onComplete = L3_3
          L0_3(L1_3, L2_3)
        end
        
        L11_2 = L10_2
        L11_2()
        L11_2 = timer
        L11_2 = L11_2.performWithDelay
        L12_2 = 3800
        L13_2 = L10_2
        L14_2 = 0
        L11_2 = L11_2(L12_2, L13_2, L14_2)
        L12_2 = display
        L12_2 = L12_2.newImageRect
        L13_2 = A0_2.view
        L14_2 = L10_1
        L15_2 = L9_1
        L16_2 = L15_2
        L15_2 = L15_2.getFrameIndex
        L17_2 = "Chimney1"
        L15_2 = L15_2(L16_2, L17_2)
        L16_2 = 43
        L17_2 = 23
        L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
        L13_2 = display
        L13_2 = L13_2.newImageRect
        L14_2 = A0_2.view
        L15_2 = L10_1
        L16_2 = L9_1
        L17_2 = L16_2
        L16_2 = L16_2.getFrameIndex
        L18_2 = "Chimney2"
        L16_2 = L16_2(L17_2, L18_2)
        L17_2 = 42
        L18_2 = 27
        L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
        L13_2.xScale = -0.5
        L13_2.yScale = 0.5
        L12_2.xScale = -0.5
        L12_2.yScale = 0.5
        L14_2 = A0_2.elements
        L14_2[8] = L13_2
        L14_2 = A0_2.elements
        L14_2[9] = L12_2
        L13_2.x = 30
        L13_2.y = -40
        L12_2.x = 24.5
        L12_2.y = -26
        L14_2 = -28
        L15_2 = -26
        if L3_2 == 4 then
          L13_2.x = 35
          L13_2.y = -50
          L12_2.x = 19.5
          L12_2.y = -12
          L14_2 = -20
          L15_2 = -12
        end
        if L3_2 == 1 then
          L13_2.x = 28
          L13_2.y = -30
          L12_2.x = 28
          L12_2.y = -29
          L14_2 = -30
          L15_2 = -29
        end
        
        function L16_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
          L0_3 = display
          L0_3 = L0_3.newImageRect
          L1_3 = A0_2
          L1_3 = L1_3.view
          L2_3 = L10_1
          L3_3 = L9_1
          L4_3 = L3_3
          L3_3 = L3_3.getFrameIndex
          L5_3 = "Cloud"
          L3_3 = L3_3(L4_3, L5_3)
          L4_3 = 15
          L5_3 = 11
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
          if L0_3 == nil then
            return
          end
          L0_3.x = 30
          L0_3.y = -40
          L0_3.alpha = 0
          L0_3.xScale = 0.1
          L0_3.yScale = 0.1
          L1_3 = math
          L1_3 = L1_3.random
          L2_3 = 40
          L3_3 = 120
          L1_3 = L1_3(L2_3, L3_3)
          L1_3 = L1_3 / 100
          L2_3 = math
          L2_3 = L2_3.random
          L3_3 = -20
          L4_3 = 20
          L2_3 = L2_3(L3_3, L4_3)
          L3_3 = transition
          L3_3 = L3_3.to
          L4_3 = L0_3
          L5_3 = {}
          L5_3.time = 200
          L5_3.delay = 50
          L5_3.xScale = L1_3
          L5_3.yScale = L1_3
          L5_3.alpha = 1
          L5_3.y = -46
          L6_3 = 30 + L2_3
          L5_3.x = L6_3
          
          function L6_3()
            local L0_4, L1_4, L2_4, L3_4
            L0_4 = transition
            L0_4 = L0_4.to
            L1_4 = L0_3
            L2_4 = {}
            L2_4.time = 3000
            L2_4.y = -100
            L2_4.alpha = 0
            
            function L3_4()
              local L0_5, L1_5
              L0_5 = display
              L0_5 = L0_5.remove
              L1_5 = L0_3
              L0_5(L1_5)
            end
            
            L2_4.onComplete = L3_4
            
            function L3_4()
              local L0_5, L1_5
              L0_5 = display
              L0_5 = L0_5.remove
              L1_5 = L0_3
              L0_5(L1_5)
            end
            
            L2_4.onCancel = L3_4
            
            function L3_4()
              local L0_5, L1_5
              L0_5 = transition
              L0_5 = L0_5.cancel
              L1_5 = L0_3
              L0_5(L1_5)
              L0_5 = display
              L0_5 = L0_5.remove
              L1_5 = L0_3
              L0_5(L1_5)
            end
            
            L2_4.onPause = L3_4
            L0_4(L1_4, L2_4)
          end
          
          L5_3.onComplete = L6_3
          
          function L6_3()
            local L0_4, L1_4
            L0_4 = display
            L0_4 = L0_4.remove
            L1_4 = L0_3
            L0_4(L1_4)
          end
          
          L5_3.onCancel = L6_3
          
          function L6_3()
            local L0_4, L1_4
            L0_4 = transition
            L0_4 = L0_4.cancel
            L1_4 = L0_3
            L0_4(L1_4)
            L0_4 = display
            L0_4 = L0_4.remove
            L1_4 = L0_3
            L0_4(L1_4)
          end
          
          L5_3.onPause = L6_3
          L3_3(L4_3, L5_3)
        end
        
        function L17_2()
          local L0_3, L1_3, L2_3, L3_3
          L0_3 = transition
          L0_3 = L0_3.to
          L1_3 = L12_2
          L2_3 = {}
          L2_3.time = 400
          L2_3.yScale = 0.3
          L3_3 = L14_2
          L2_3.y = L3_3
          
          function L3_3()
            local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
            L0_4 = transition
            L0_4 = L0_4.to
            L1_4 = L12_2
            L2_4 = {}
            L2_4.time = 400
            L2_4.yScale = 0.5
            L3_4 = L15_2
            L2_4.y = L3_4
            L0_4(L1_4, L2_4)
            L0_4 = math
            L0_4 = L0_4.random
            L1_4 = 1
            L2_4 = 3
            L0_4 = L0_4(L1_4, L2_4)
            L1_4 = 1
            L2_4 = L0_4
            L3_4 = 1
            for L4_4 = L1_4, L2_4, L3_4 do
              L5_4 = L16_2
              L5_4()
            end
          end
          
          L2_3.onComplete = L3_3
          L0_3(L1_3, L2_3)
        end
        
        L18_2 = timer
        L18_2 = L18_2.performWithDelay
        L19_2 = 3451
        L20_2 = L17_2
        L21_2 = 0
        L18_2 = L18_2(L19_2, L20_2, L21_2)
        L19_2 = table
        L19_2 = L19_2.insert
        L20_2 = A0_2.timers
        L21_2 = L11_2
        L19_2(L20_2, L21_2)
        L19_2 = table
        L19_2 = L19_2.insert
        L20_2 = A0_2.timers
        L21_2 = L18_2
        L19_2(L20_2, L21_2)
      end
    end
    if 3 < L2_2 then
      L5_2 = A0_2.currentSetup
      if L5_2 < 4 then
        L5_2 = display
        L5_2 = L5_2.newImageRect
        L6_2 = A0_2.view
        L7_2 = L10_1
        L8_2 = L9_1
        L9_2 = L8_2
        L8_2 = L8_2.getFrameIndex
        L10_2 = "Ring"
        L8_2 = L8_2(L9_2, L10_2)
        L9_2 = 33
        L10_2 = 33
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
        L6_2 = A0_2.elements
        L6_2[10] = L5_2
        L7_2 = L5_2
        L6_2 = L5_2.toBack
        L6_2(L7_2)
        if L3_2 == 4 then
          L5_2.xScale = 0.975
          L5_2.yScale = 0.975
        end
        L5_2.x = 0
        L5_2.y = -42
        L6_2 = transition
        L6_2 = L6_2.to
        L7_2 = L5_2
        L8_2 = {}
        L8_2.time = 4999
        L8_2.rotation = 360
        
        function L9_2()
          local L0_3, L1_3
          L0_3 = L5_2
          L0_3.rotation = 0
        end
        
        L8_2.onComplete = L9_2
        L6_2(L7_2, L8_2)
        L6_2 = timer
        L6_2 = L6_2.performWithDelay
        L7_2 = 5000
        
        function L8_2()
          local L0_3, L1_3, L2_3
          L0_3 = L5_2
          L0_3.rotation = 0
          L0_3 = transition
          L0_3 = L0_3.to
          L1_3 = L5_2
          L2_3 = {}
          L2_3.time = 5000
          L2_3.rotation = 360
          L0_3(L1_3, L2_3)
        end
        
        L9_2 = 0
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = A0_2.timers
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
    A0_2.currentSetup = L2_2
  end
end

refresh = L14_1

function L14_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2.x = A1_2
  A0_2.y = A2_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L14_1

function L14_1(A0_2, A1_2)
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
  L7_2 = 74
  L8_2 = 88
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

new = L14_1
