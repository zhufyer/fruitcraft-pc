local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Constants"
L0_1(L1_1)
L0_1 = nil
L1_1 = nil
L2_1 = nil
L3_1 = nil
L4_1 = nil
L5_1 = nil
L6_1 = nil
L7_1 = nil
L8_1 = nil
L9_1 = nil

function L10_1(A0_2, A1_2)
  A0_2.buttonView = A1_2
end

setButtonView = L10_1

function L10_1(A0_2, A1_2)
  A0_2.selectable = A1_2
end

setEnabled = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.tutorialCallback
  if L1_2 then
    L1_2 = A0_2.tutorialCallback
    L1_2()
    A0_2.tutorialCallback = nil
    L1_2 = require
    L2_2 = "Views.EffectsManager"
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2.removePoint
    L2_2()
  end
  L1_2 = A0_2.selectable
  if L1_2 then
    L1_2 = A0_2.buttonView
    L1_2 = L1_2.show
    if L1_2 ~= nil then
      L1_2 = A0_2.buttonView
      L2_2 = L1_2
      L1_2 = L1_2.show
      L1_2(L2_2)
    end
    L1_2 = A0_2.isSelected
    if L1_2 == false then
      L1_2 = A0_2.buttonView
      L1_2 = L1_2.view
      L2_2 = L1_2
      L1_2 = L1_2.toFront
      L1_2(L2_2)
      L1_2 = A0_2.buttonView
      L1_2 = L1_2.view
      L1_2.isVisible = true
      L1_2 = A0_2.view
      L2_2 = L1_2
      L1_2 = L1_2.toFront
      L1_2(L2_2)
      L1_2 = A0_2.delegate
      L2_2 = L1_2
      L1_2 = L1_2.didPressTabBarButton
      L3_2 = A0_2.buttonIndex
      L1_2(L2_2, L3_2)
      L1_2 = A0_2.button
      L2_2 = L1_2
      L1_2 = L1_2.removeSelf
      L1_2(L2_2)
      L1_2 = display
      L1_2 = L1_2.newImageRect
      L2_2 = Constants
      L2_2 = L2_2.Path_Assets
      L3_2 = "Tabbar/FC-tab-on.png"
      L2_2 = L2_2 .. L3_2
      L3_2 = A0_2.buttonW
      L4_2 = 50
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      A0_2.button = L1_2
      L1_2 = A0_2.button
      L2_2 = A0_2.button
      L2_2 = L2_2.width
      L2_2 = L2_2 / 2
      L1_2.x = L2_2
      L1_2 = A0_2.button
      L2_2 = A0_2.button
      L2_2 = L2_2.height
      L2_2 = L2_2 / 2
      L2_2 = L2_2 - 0.5
      L1_2.y = L2_2
      L1_2 = A0_2.view
      L2_2 = L1_2
      L1_2 = L1_2.insert
      L3_2 = 1
      L4_2 = A0_2.button
      L1_2(L2_2, L3_2, L4_2)
      
      function L1_2(A0_3)
        local L1_3, L2_3
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3.didPressButton
        L1_3(L2_3)
      end
      
      selected = L1_2
      L1_2 = A0_2.button
      L2_2 = L1_2
      L1_2 = L1_2.addEventListener
      L3_2 = "tap"
      L4_2 = selected
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = A0_2.label
      L2_2 = L1_2
      L1_2 = L1_2.setFillColor
      L3_2 = 0
      L4_2 = 0.32156863
      L5_2 = 0.43137255
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = A0_2.label2
      L2_2 = L1_2
      L1_2 = L1_2.setFillColor
      L3_2 = 0
      L4_2 = 0.32156863
      L5_2 = 0.43137255
      L1_2(L2_2, L3_2, L4_2, L5_2)
      A0_2.isSelected = true
    end
  end
end

didPressButton = L10_1

function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A2_2 then
    L4_2 = {}
    A2_2 = L4_2
  end
  L4_2 = setmetatable
  L5_2 = A2_2
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
  A0_2.__index = A0_2
  A0_2.selectable = true
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  A2_2.view = L4_2
  A2_2.buttonIndex = A1_2
  if A3_2 == "shop" then
    A2_2.buttonW = 95
  else
    A2_2.buttonW = 119
  end
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "Tabbar/FC-tab-off.png"
  L5_2 = L5_2 .. L6_2
  L6_2 = A2_2.buttonW
  L7_2 = 50
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A2_2.button = L4_2
  L4_2 = A2_2.button
  L5_2 = A2_2.button
  L5_2 = L5_2.width
  L5_2 = L5_2 / 2
  L4_2.x = L5_2
  L4_2 = A2_2.button
  L5_2 = A2_2.button
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2.y = L5_2
  L4_2 = A2_2.view
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = A2_2.button
  L4_2(L5_2, L6_2)
  A2_2.isSelected = false
  A2_2.buttonView = nil
  
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A2_2
    L1_3 = L1_3.isSelected
    if L1_3 == false then
      L1_3 = A2_2
      L2_3 = L1_3
      L1_3 = L1_3.didPressButton
      L1_3(L2_3)
    end
  end
  
  selected = L4_2
  L4_2 = A2_2.button
  L5_2 = L4_2
  L4_2 = L4_2.addEventListener
  L6_2 = "tap"
  L7_2 = selected
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = A2_2.view
  L6_2 = "xxxxxxxxx"
  L7_2 = 0
  L8_2 = 0
  L9_2 = Constants
  L9_2 = L9_2.fontForTitle
  L9_2 = L9_2()
  L10_2 = 11
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  A2_2.label = L4_2
  L4_2 = A2_2.label
  L5_2 = L4_2
  L4_2 = L4_2.setFillColor
  L6_2 = Constants
  L6_2 = L6_2.whiteColor
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = A2_2.label
  L5_2 = A2_2.button
  L5_2 = L5_2.width
  L5_2 = L5_2 / 2
  L4_2.x = L5_2
  L4_2 = A2_2.label
  L5_2 = A2_2.button
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L5_2 = L5_2 - 4
  L4_2.y = L5_2
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = A2_2.view
  L6_2 = "xxxxxxxxx"
  L7_2 = 0
  L8_2 = 0
  L9_2 = Constants
  L9_2 = L9_2.fontForTitle
  L9_2 = L9_2()
  L10_2 = 11
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  A2_2.label2 = L4_2
  L4_2 = A2_2.label2
  L5_2 = L4_2
  L4_2 = L4_2.setFillColor
  L6_2 = Constants
  L6_2 = L6_2.whiteColor
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = A2_2.label2
  L5_2 = A2_2.button
  L5_2 = L5_2.width
  L5_2 = L5_2 / 2
  L4_2.x = L5_2
  L4_2 = A2_2.label2
  L5_2 = A2_2.button
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L5_2 = L5_2 + 7
  L4_2.y = L5_2
  return A2_2
end

new = L10_1

function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2.view
  L4_2 = A0_2.button
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L4_2 = A1_2 - L4_2
  L3_2.x = L4_2
  L3_2 = A0_2.view
  L4_2 = A0_2.button
  L4_2 = L4_2.height
  L4_2 = L4_2 / 2
  L4_2 = A2_2 - L4_2
  L3_2.y = L4_2
end

setPosition = L10_1

function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2.button
  L3_2.width = A1_2
  L3_2 = A0_2.button
  L3_2.height = A2_2
  L3_2 = A0_2.button
  L4_2 = A0_2.button
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L4_2 = 0 + L4_2
  L3_2.x = L4_2
  L3_2 = A0_2.button
  L4_2 = A0_2.button
  L4_2 = L4_2.height
  L4_2 = L4_2 / 2
  L4_2 = 0 + L4_2
  L3_2.y = L4_2
end

setSize = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2
  L2_2 = A1_2.find
  L4_2 = " "
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L4_2 = A1_2
    L3_2 = A1_2.sub
    L5_2 = 1
    L6_2 = L2_2 - 1
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2.label
    L4_2.text = L3_2
    L4_2 = A0_2.label
    L5_2 = A0_2.label
    L5_2 = L5_2.y
    L5_2 = L5_2 - 5
    L4_2.y = L5_2
    L5_2 = A1_2
    L4_2 = A1_2.sub
    L6_2 = L2_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = A0_2.label2
    L5_2.text = L4_2
    L5_2 = A0_2.label2
    L6_2 = A0_2.label2
    L6_2 = L6_2.y
    L6_2 = L6_2 - 4
    L5_2.y = L6_2
  else
    L3_2 = A0_2.label
    L3_2.text = A1_2
    L3_2 = A0_2.label2
    L3_2.text = ""
  end
end

setLabel = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.isSelected
  if L1_2 then
    L1_2 = A0_2.view
    L2_2 = L1_2
    L1_2 = L1_2.toBack
    L1_2(L2_2)
    L1_2 = A0_2.button
    L2_2 = L1_2
    L1_2 = L1_2.removeSelf
    L1_2(L2_2)
    L1_2 = display
    L1_2 = L1_2.newImageRect
    L2_2 = Constants
    L2_2 = L2_2.Path_Assets
    L3_2 = "Tabbar/FC-tab-off.png"
    L2_2 = L2_2 .. L3_2
    L3_2 = A0_2.buttonW
    L4_2 = 50
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2.button = L1_2
    L1_2 = A0_2.button
    L2_2 = A0_2.button
    L2_2 = L2_2.width
    L2_2 = L2_2 / 2
    L1_2.x = L2_2
    L1_2 = A0_2.button
    L2_2 = A0_2.button
    L2_2 = L2_2.height
    L2_2 = L2_2 / 2
    L1_2.y = L2_2
    L1_2 = A0_2.view
    L2_2 = L1_2
    L1_2 = L1_2.insert
    L3_2 = 1
    L4_2 = A0_2.button
    L1_2(L2_2, L3_2, L4_2)
    
    function L1_2(A0_3)
      local L1_3, L2_3
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.didPressButton
      L1_3(L2_3)
    end
    
    selected = L1_2
    L1_2 = A0_2.button
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = "tap"
    L4_2 = selected
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2.label
    L2_2 = L1_2
    L1_2 = L1_2.setFillColor
    L3_2 = Constants
    L3_2 = L3_2.whiteColor
    L3_2, L4_2 = L3_2()
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2.label2
    L2_2 = L1_2
    L1_2 = L1_2.setFillColor
    L3_2 = Constants
    L3_2 = L3_2.whiteColor
    L3_2, L4_2 = L3_2()
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2.buttonView
    L1_2 = L1_2.view
    L1_2.isVisible = false
    L1_2 = A0_2.buttonView
    L1_2 = L1_2.hide
    if L1_2 ~= nil then
      L1_2 = A0_2.buttonView
      L2_2 = L1_2
      L1_2 = L1_2.hide
      L1_2(L2_2)
    end
    A0_2.isSelected = false
  end
end

deselected = L10_1
