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
L2_1 = "Views.ItemView"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "composer"
L2_1 = L2_1(L3_1)

function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = L0_1
  L3_2 = L3_2.new
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2.width
  if not L4_2 then
    L4_2 = 100
  end
  L3_2.width = L4_2
  L4_2 = A1_2.height
  if not L4_2 then
    L4_2 = 115
  end
  L3_2.height = L4_2
  L4_2 = A1_2.iconSize
  if not L4_2 then
    L4_2 = 32
  end
  L3_2.iconSize = L4_2
  L4_2 = display
  L4_2 = L4_2.newRoundedRect
  L5_2 = L3_2.view
  L6_2 = 0
  L7_2 = 0
  L8_2 = L3_2.width
  L9_2 = L3_2.height
  L10_2 = 10
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0.2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2.strokeWidth = 1
  L6_2 = L4_2
  L5_2 = L4_2.setStrokeColor
  L7_2 = 0.5
  L8_2 = 0.5
  L9_2 = 0.5
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = {}
  L3_2.itemContainers = L5_2
  L5_2 = {}
  L3_2.equippedItems = L5_2
  L5_2 = 1
  L6_2 = 4
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L3_2.itemContainers
    L10_2 = display
    L10_2 = L10_2.newRect
    L11_2 = L3_2.view
    L12_2 = 0
    L13_2 = 0
    L14_2 = L3_2.iconSize
    L15_2 = L3_2.iconSize
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    L9_2[L8_2] = L10_2
    L9_2 = L3_2.itemContainers
    L9_2 = L9_2[L8_2]
    L10_2 = math
    L10_2 = L10_2.pow
    L11_2 = -1
    L12_2 = L8_2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = L3_2.itemContainers
    L11_2 = L11_2[L8_2]
    L11_2 = L11_2.width
    L11_2 = L11_2 / 2
    L11_2 = 8 + L11_2
    L10_2 = L10_2 * L11_2
    L9_2.x = L10_2
    L9_2 = 2
    if L8_2 < 3 then
      L9_2 = 1
    end
    L10_2 = L3_2.itemContainers
    L10_2 = L10_2[L8_2]
    L11_2 = math
    L11_2 = L11_2.pow
    L12_2 = -1
    L13_2 = L9_2
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = L3_2.itemContainers
    L12_2 = L12_2[L8_2]
    L12_2 = L12_2.height
    L12_2 = L12_2 / 2
    L12_2 = 8 + L12_2
    L11_2 = L11_2 * L12_2
    L10_2.y = L11_2
    L10_2 = L3_2.itemContainers
    L10_2 = L10_2[L8_2]
    L11_2 = L10_2
    L10_2 = L10_2.setFillColor
    L12_2 = 1
    L13_2 = 1
    L14_2 = 1
    L15_2 = 1
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    L10_2 = L3_2.itemContainers
    L10_2 = L10_2[L8_2]
    L10_2.strokeWidth = 2
    L10_2 = L3_2.itemContainers
    L10_2 = L10_2[L8_2]
    L11_2 = L10_2
    L10_2 = L10_2.setStrokeColor
    L12_2 = 0.5
    L13_2 = 0.5
    L14_2 = 0.5
    L10_2(L11_2, L12_2, L13_2, L14_2)
    L10_2 = L3_2.itemContainers
    L10_2 = L10_2[L8_2]
    L10_2.isEmpty = true
  end
  return L3_2
end

new = L3_1

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.getEquippedItemByItemID
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if 0 < L2_2 then
    L3_2 = A0_2.itemContainers
    L3_2 = L3_2[L2_2]
    L3_2.isEmpty = true
    L3_2 = A0_2.equippedItems
    L3_2 = L3_2[L2_2]
    L4_2 = L3_2
    L3_2 = L3_2.removeSelf
    L3_2(L4_2)
    L3_2 = A0_2.equippedItems
    L3_2[L2_2] = nil
  end
end

unequipItem = L3_1

function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = L2_1
    L1_3 = L1_3.getScene
    L2_3 = "Scenes.HeroScene"
    L1_3 = L1_3(L2_3)
    L2_3 = L1_3.allItems
    L2_3 = L2_3[A0_3]
    L3_3 = L2_3
    L2_3 = L2_3.setStatusOfItem
    L4_3 = 2
    L2_3(L3_3, L4_3)
    L2_3 = mainPlayer
    L2_3 = L2_3.heroItems
    L2_3 = L2_3[A0_3]
    L2_3.assignedHeroID = 0
    L3_3 = L1_3
    L2_3 = L1_3.removeItemFromHeroTable
    L4_3 = mainPlayer
    L4_3 = L4_3.activeHeroID
    L5_3 = A0_3
    L2_3(L3_3, L4_3, L5_3)
    L3_3 = L1_3
    L2_3 = L1_3.updateHeroAttributesView
    L4_3 = mainPlayer
    L4_3 = L4_3.activeHeroID
    L2_3(L3_3, L4_3)
  end
  
  L5_2 = {}
  L5_2.id = A1_2
  L5_2.widthOfView = 30
  L5_2.heightOfView = 30
  L5_2.isTouchEnable = true
  
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = transition
    L0_3 = L0_3.cancel
    L1_3 = "equipAnime"
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.unequipItem
    L2_3 = A1_2
    L0_3(L1_3, L2_3)
    L0_3 = L4_2
    L1_3 = A1_2
    L0_3(L1_3)
  end
  
  L5_2.touchCallBack = L6_2
  
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = 0
    L2_3 = pairs
    L3_3 = A0_2
    L3_3 = L3_3.equippedItems
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = L6_3.category
      L8_3 = mainPlayer
      L8_3 = L8_3.heroItems
      L8_3 = L8_3[A0_3]
      L8_3 = L8_3.category
      if L7_3 == L8_3 then
        L1_3 = L1_3 + 1
      end
    end
    return L1_3
  end
  
  L7_2 = nil
  L8_2 = L6_2
  L9_2 = A1_2
  L8_2 = L8_2(L9_2)
  if L8_2 == 2 then
    L8_2 = pairs
    L9_2 = A0_2.equippedItems
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    for L11_2, L12_2 in L8_2, L9_2, L10_2 do
      L13_2 = L12_2.category
      L14_2 = mainPlayer
      L14_2 = L14_2.heroItems
      L14_2 = L14_2[A1_2]
      L14_2 = L14_2.category
      if L13_2 == L14_2 then
        L7_2 = L11_2
        L13_2 = L4_2
        L14_2 = L12_2.id
        L13_2(L14_2)
        break
      end
    end
  end
  L8_2 = L7_2 or L8_2
  if not L7_2 then
    L9_2 = A0_2
    L8_2 = A0_2.getFirstAvailableContainer
    L8_2 = L8_2(L9_2)
  end
  if L8_2 == 0 then
    L8_2 = 1
  end
  L9_2 = A0_2.itemContainers
  L9_2 = L9_2[L8_2]
  L9_2 = L9_2.isEmpty
  if L9_2 == false then
    L9_2 = transition
    L9_2 = L9_2.cancel
    L10_2 = "equipAnime"
    L9_2(L10_2)
    L10_2 = A0_2
    L9_2 = A0_2.unequipItem
    L11_2 = A0_2.equippedItems
    L11_2 = L11_2[L8_2]
    L11_2 = L11_2.id
    L9_2(L10_2, L11_2)
  end
  L9_2 = A0_2.itemContainers
  L9_2 = L9_2[L8_2]
  L9_2.isEmpty = false
  L9_2 = A0_2.equippedItems
  L10_2 = L1_1
  L11_2 = L10_2
  L10_2 = L10_2.new
  L12_2 = L5_2
  L10_2 = L10_2(L11_2, L12_2)
  L9_2[L8_2] = L10_2
  L9_2 = A0_2.view
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = A0_2.equippedItems
  L11_2 = L11_2[L8_2]
  L11_2 = L11_2.view
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.equippedItems
  L9_2 = L9_2[L8_2]
  L10_2 = L5_2.id
  L9_2.id = L10_2
  L9_2 = A0_2.equippedItems
  L9_2 = L9_2[L8_2]
  L10_2 = mainPlayer
  L10_2 = L10_2.heroItems
  L11_2 = L5_2.id
  L10_2 = L10_2[L11_2]
  L10_2 = L10_2.category
  L9_2.category = L10_2
  L9_2 = A0_2.equippedItems
  L9_2 = L9_2[L8_2]
  L9_2 = L9_2.view
  L10_2 = A0_2.itemContainers
  L10_2 = L10_2[L8_2]
  L10_2 = L10_2.x
  L9_2.x = L10_2
  L9_2 = A0_2.equippedItems
  L9_2 = L9_2[L8_2]
  L9_2 = L9_2.view
  L10_2 = A0_2.itemContainers
  L10_2 = L10_2[L8_2]
  L10_2 = L10_2.y
  L9_2.y = L10_2
  L9_2 = A0_2.equippedItems
  L9_2 = L9_2[L8_2]
  L9_2 = L9_2.view
  L9_2.alpha = 0
  L9_2 = A0_2.equippedItems
  L9_2 = L9_2[L8_2]
  L10_2 = L9_2
  L9_2 = L9_2.setStatusOfItem
  L11_2 = 2
  L9_2(L10_2, L11_2)
  if A2_2 then
    L9_2 = transition
    L9_2 = L9_2.to
    L10_2 = A0_2.equippedItems
    L10_2 = L10_2[L8_2]
    L10_2 = L10_2.view
    L11_2 = {}
    L11_2.time = 300
    L11_2.xScale = 1.01
    L11_2.yScale = 1.01
    L11_2.alpha = 1
    L11_2.tag = "equipAnime"
    
    function L12_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = transition
      L0_3 = L0_3.to
      L1_3 = A0_2
      L1_3 = L1_3.equippedItems
      L2_3 = L8_2
      L1_3 = L1_3[L2_3]
      L1_3 = L1_3.view
      L2_3 = {}
      L2_3.time = 300
      L2_3.xScale = 1
      L2_3.yScale = 1
      L2_3.alpha = 0.8
      L2_3.tag = "equipAnime"
      
      function L3_3()
        local L0_4, L1_4, L2_4
        L0_4 = transition
        L0_4 = L0_4.to
        L1_4 = A0_2
        L1_4 = L1_4.equippedItems
        L2_4 = L8_2
        L1_4 = L1_4[L2_4]
        L1_4 = L1_4.view
        L2_4 = {}
        L2_4.time = 300
        L2_4.alpha = 1
        L2_4.tag = "equipAnime"
        L0_4(L1_4, L2_4)
      end
      
      L2_3.onComplete = L3_3
      L0_3(L1_3, L2_3)
    end
    
    L11_2.onComplete = L12_2
    L9_2(L10_2, L11_2)
  else
    L9_2 = A0_2.equippedItems
    L9_2 = L9_2[L8_2]
    L9_2 = L9_2.view
    L9_2.alpha = 1
  end
end

setItem = L3_1

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A0_2.equippedItems
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.id
    if L7_2 == A1_2 then
      return L5_2
    end
  end
  L2_2 = 0
  return L2_2
end

getEquippedItemByItemID = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 1
  L3_2 = A0_2.itemContainers
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.itemContainers
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.isEmpty
    if L6_2 == true then
      L1_2 = L5_2
      return L1_2
    end
  end
  L2_2 = 0
  return L2_2
end

getFirstAvailableContainer = L3_1

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = 4
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.equippedItems
    L6_2 = L6_2[L5_2]
    if L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2.unequipItem
      L8_2 = A0_2.equippedItems
      L8_2 = L8_2[L5_2]
      L8_2 = L8_2.id
      L6_2(L7_2, L8_2)
    else
      L6_2 = A0_2.itemContainers
      L6_2 = L6_2[L5_2]
      L6_2.isEmpty = true
    end
  end
  L2_2 = 1
  L3_2 = #A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2.setItem
    L8_2 = A1_2[L5_2]
    L6_2(L7_2, L8_2)
  end
end

updateView = L3_1
