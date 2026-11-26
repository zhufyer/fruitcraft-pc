local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.SceneCreator"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "widget"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.NavigationBar"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.CardView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Language"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Models.Building"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Views.ActivityIndicatorView"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Constants"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Theme"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Utils.Toolbox"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Components.TDButtonView"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Utils.CardUtils"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Views.EffectsManager"
L13_1 = L13_1(L14_1)
L14_1 = L1_1.newScene
L15_1 = "AssignCardScene"
L14_1 = L14_1(L15_1)
L15_1 = {}
L16_1 = {}
L17_1 = {}
L18_1 = {}
L19_1 = 0
L20_1 = nil
L21_1 = 0
L22_1 = nil

function L23_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = pairs
  L1_2 = L16_1
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    if L4_2 ~= nil then
      L5_2 = L4_2.smallCard
      if L5_2 ~= nil then
        L5_2 = L4_2.smallCard
        L5_2 = L5_2.removeEnterFrameListener
        if L5_2 then
          L5_2 = L4_2.smallCard
          L6_2 = L5_2
          L5_2 = L5_2.removeEnterFrameListener
          L5_2(L6_2)
        end
        L5_2 = display
        L5_2 = L5_2.remove
        L6_2 = L4_2.smallCard
        L6_2 = L6_2.view
        L5_2(L6_2)
        L5_2 = L4_2.smallCard
        L5_2.view = nil
        L4_2.smallCard = nil
        L5_2 = L16_1
        L5_2[L3_2] = nil
      end
    end
  end
end

clearSlots = L23_1

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.cardUsedForBuilding
    if L7_2 == true then
      L7_2 = L14_1
      L7_2 = L7_2.building
      L7_2 = L7_2.assignedCards
      if L7_2 ~= nil then
        L7_2 = L14_1
        L7_2 = L7_2.building
        L7_2 = L7_2.assignedCards
        L7_2 = L7_2[L5_2]
        if L7_2 then
          L7_2 = table
          L7_2 = L7_2.insert
          L8_2 = L1_2
          L9_2 = L5_2
          L7_2(L8_2, L9_2)
        end
      end
    else
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L1_2
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L2_3 = L2_3[A0_3]
    L3_3 = A0_2
    L3_3 = L3_3[A1_3]
    L4_3 = mainPlayer
    L4_3 = L4_3.heroSet
    if L4_3 then
      L4_3 = mainPlayer
      L4_3 = L4_3.heroSet
      L5_3 = L2_3.baseId
      L4_3 = L4_3[L5_3]
      if L4_3 then
        L4_3 = mainPlayer
        L4_3 = L4_3.heroSet
        L5_3 = L3_3.baseId
        L4_3 = L4_3[L5_3]
        if L4_3 then
          L4_3 = L2_3.power
          L5_3 = L3_3.power
          L4_3 = L4_3 > L5_3
          return L4_3
        else
          L4_3 = true
          return L4_3
        end
    end
    else
      L4_3 = mainPlayer
      L4_3 = L4_3.heroSet
      if L4_3 then
        L4_3 = mainPlayer
        L4_3 = L4_3.heroSet
        L5_3 = L3_3.baseId
        L4_3 = L4_3[L5_3]
        if L4_3 then
          L4_3 = false
          return L4_3
      end
      else
        L4_3 = L2_3.power
        L5_3 = L3_3.power
        L4_3 = L4_3 > L5_3
        return L4_3
      end
    end
  end
  
  L2_2(L3_2, L4_2)
  return L1_2
end

function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L7_1
  L0_2 = L0_2.hide
  L0_2()
  L0_2 = L0_1
  L0_2 = L0_2.gotoScene
  L1_2 = L0_1
  L1_2 = L1_2.getSceneName
  L2_2 = "previous"
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = {}
  L4_2 = L14_1
  L4_2 = L4_2.building
  L3_2.building = L4_2
  L2_2.params = L3_2
  L0_2(L1_2, L2_2)
end

function L25_1(A0_2)
  local L1_2, L2_2
  L1_2 = log3
  L2_2 = "assign did success"
  L1_2(L2_2)
  L1_2 = mainPlayer
  L1_2 = L1_2.collectGold
  L2_2 = L24_1
  L1_2(L2_2)
  L1_2 = mainPlayer
  L2_2 = os
  L2_2 = L2_2.time
  L2_2 = L2_2()
  L1_2.lastGoldCollectAt = L2_2
end

function L26_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L7_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "Assign Cards"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L22_1
  if L1_2 == "showcaseMine" then
    L1_2 = L21_1
    if L1_2 == 1 then
      L1_2 = L13_1
      L1_2 = L1_2.removePoint
      L1_2()
      L1_2 = 0
      L21_1 = L1_2
      L1_2 = nil
      L22_1 = L1_2
      L1_2 = mainPlayer
      L2_2 = L1_2
      L1_2 = L1_2.setSettingForKey
      L3_2 = "activeTutorialState"
      L4_2 = "workersAssigned"
      L1_2(L2_2, L3_2, L4_2)
    end
  end
  L1_2 = L7_1
  L1_2 = L1_2.show
  L2_2 = L5_1
  L2_2 = L2_2["Assigning Cards"]
  L1_2(L2_2)
  L1_2 = L14_1
  L1_2 = L1_2.building
  L2_2 = L1_2
  L1_2 = L1_2.assignCards
  L3_2 = L17_1
  L4_2 = L25_1
  L5_2 = L26_1
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

function L28_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = clearSlots
  L1_2()
  L1_2 = A0_2.building
  L2_2 = L1_2
  L1_2 = L1_2.avilableAssignCard
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = L23_1
  L4_2 = L17_1
  L3_2 = L3_2(L4_2)
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L16_1
    L10_2 = {}
    L10_2.smallCard = nil
    L9_2[L2_2] = L10_2
    L9_2 = L16_1
    L9_2 = L9_2[L2_2]
    L10_2 = L4_1
    L11_2 = L10_2
    L10_2 = L10_2.new
    L12_2 = "small"
    L13_2 = L17_1
    L13_2 = L13_2[L8_2]
    L14_2 = L14_1
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    L9_2.smallCard = L10_2
    L9_2 = L16_1
    L9_2 = L9_2[L2_2]
    L9_2 = L9_2.smallCard
    L10_2 = L9_2
    L9_2 = L9_2.setSelectable
    L11_2 = true
    L9_2(L10_2, L11_2)
    L9_2 = L16_1
    L9_2 = L9_2[L2_2]
    L9_2 = L9_2.smallCard
    L10_2 = L9_2
    L9_2 = L9_2.setAction
    L9_2(L10_2)
    L9_2 = L16_1
    L9_2 = L9_2[L2_2]
    L9_2 = L9_2.smallCard
    L10_2 = L9_2
    L9_2 = L9_2.didSelect
    L9_2(L10_2)
    L9_2 = A0_2.selectedGroup
    L10_2 = L9_2
    L9_2 = L9_2.insert
    L11_2 = L16_1
    L11_2 = L11_2[L2_2]
    L11_2 = L11_2.smallCard
    L11_2 = L11_2.view
    L9_2(L10_2, L11_2)
    L9_2 = L16_1
    L9_2 = L9_2[L2_2]
    L9_2 = L9_2.smallCard
    L10_2 = L9_2
    L9_2 = L9_2.setPosition
    L11_2 = math
    L11_2 = L11_2.abs
    L12_2 = L2_2 % 2
    L12_2 = L12_2 - 1
    L11_2 = L11_2(L12_2)
    L11_2 = L11_2 * 65
    L11_2 = 10 + L11_2
    L12_2 = display
    L12_2 = L12_2.contentHeight
    L12_2 = L12_2 * 0.13
    L13_2 = math
    L13_2 = L13_2.ceil
    L14_2 = L2_2 / 2
    L13_2 = L13_2(L14_2)
    L13_2 = L13_2 - 1
    L13_2 = L13_2 * 83
    L12_2 = L12_2 + L13_2
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = L16_1
    L9_2 = L9_2[L2_2]
    L9_2 = L9_2.smallCard
    L9_2 = L9_2.addEnterFrameListener
    if L9_2 then
      L9_2 = L16_1
      L9_2 = L9_2[L2_2]
      L9_2 = L9_2.smallCard
      L10_2 = L9_2
      L9_2 = L9_2.addEnterFrameListener
      L9_2(L10_2)
    end
    L2_2 = L2_2 + 1
  end
  L4_2 = L2_2
  L5_2 = 4
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = nil
    if L7_2 <= L1_2 then
      L9_2 = display
      L9_2 = L9_2.newImageRect
      L10_2 = A0_2.selectedGroup
      L11_2 = L8_1
      L11_2 = L11_2.Path_Assets
      L12_2 = "CardView/small-card-bg.png"
      L11_2 = L11_2 .. L12_2
      L12_2 = 60
      L13_2 = 80
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      L8_2 = L9_2
    else
      L9_2 = display
      L9_2 = L9_2.newImageRect
      L10_2 = A0_2.selectedGroup
      L11_2 = L8_1
      L11_2 = L11_2.Path_Assets
      L12_2 = "General/FC-lock.png"
      L11_2 = L11_2 .. L12_2
      L12_2 = 60
      L13_2 = 80
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      L8_2 = L9_2
    end
    L9_2 = L16_1
    L10_2 = {}
    L11_2 = {}
    L11_2.view = L8_2
    L10_2.smallCard = L11_2
    L9_2[L2_2] = L10_2
    L9_2 = math
    L9_2 = L9_2.abs
    L10_2 = L7_2 % 2
    L10_2 = L10_2 - 1
    L9_2 = L9_2(L10_2)
    L9_2 = L9_2 * 65
    L9_2 = 10 + L9_2
    L9_2 = L9_2 + 30
    L8_2.x = L9_2
    L9_2 = display
    L9_2 = L9_2.contentHeight
    L9_2 = L9_2 * 0.13
    L10_2 = math
    L10_2 = L10_2.ceil
    L11_2 = L7_2 / 2
    L10_2 = L10_2(L11_2)
    L10_2 = L10_2 - 1
    L10_2 = L10_2 * 83
    L9_2 = L9_2 + L10_2
    L9_2 = L9_2 + 40
    L8_2.y = L9_2
  end
  L4_2 = 0
  L5_2 = pairs
  L6_2 = L17_1
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L9_2.power
    L4_2 = L4_2 + L10_2
  end
  L5_2 = A0_2.totalPowerLabel
  L6_2 = L5_1
  L6_2 = L6_2.adjustNumber
  L7_2 = L10_1
  L7_2 = L7_2.stringThousandCommaSeperated
  L8_2 = L10_1
  L8_2 = L8_2.shortenLongNumber
  L9_2 = ""
  L10_2 = L4_2
  L9_2 = L9_2 .. L10_2
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2(L9_2)
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L5_2.text = L6_2
  L5_2 = L5_1
  L5_2 = L5_2.lang
  if L5_2 == "en" then
    L5_2 = A0_2.totalPowerLabel
    L6_2 = A0_2.totalPowerLabel
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L6_2 = 140 - L6_2
    L5_2.x = L6_2
  else
    L5_2 = A0_2.totalPowerLabel
    L6_2 = A0_2.totalPowerLabel
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L6_2 = 5 + L6_2
    L5_2.x = L6_2
  end
  L5_2 = A0_2.totalBenefitLabel
  L6_2 = L5_1
  L6_2 = L6_2.adjustNumber
  L7_2 = L10_1
  L7_2 = L7_2.stringThousandCommaSeperated
  L8_2 = L10_1
  L8_2 = L8_2.shortenLongNumber
  L9_2 = ""
  L10_2 = A0_2.building
  L11_2 = L10_2
  L10_2 = L10_2.benefitWithAssignedCards
  L12_2 = L17_1
  L10_2 = L10_2(L11_2, L12_2)
  L9_2 = L9_2 .. L10_2
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2(L9_2)
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L5_2.text = L6_2
  L5_2 = L5_1
  L5_2 = L5_2.lang
  if L5_2 == "en" then
    L5_2 = A0_2.totalBenefitLabel
    L6_2 = A0_2.totalBenefitLabel
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L6_2 = 140 - L6_2
    L5_2.x = L6_2
  else
    L5_2 = A0_2.totalBenefitLabel
    L6_2 = A0_2.totalBenefitLabel
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L6_2 = 5 + L6_2
    L5_2.x = L6_2
  end
end

function L29_1()
  local L0_2, L1_2
  L0_2 = L23_1
  L1_2 = L17_1
  L0_2 = L0_2(L1_2)
  L1_2 = #L0_2
  L1_2 = L0_2[L1_2]
  return L1_2
end

function L30_1(A0_2)
  local L1_2, L2_2
  L1_2 = L19_1
  L1_2 = L1_2 - 1
  L19_1 = L1_2
  L1_2 = L18_1
  L2_2 = A0_2.card
  L2_2 = L2_2.id
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.deselected
  L1_2(L2_2)
  L1_2 = L17_1
  L2_2 = A0_2.card
  L2_2 = L2_2.id
  L1_2[L2_2] = nil
  L1_2 = L18_1
  L2_2 = A0_2.card
  L2_2 = L2_2.id
  L1_2[L2_2] = nil
  L1_2 = L28_1
  L2_2 = L14_1
  L1_2(L2_2)
end

L14_1.cardDeselected = L30_1

function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L22_1
  if L1_2 == "showcaseMine" then
    L1_2 = L21_1
    if L1_2 == 1 then
      L1_2 = L13_1
      L1_2 = L1_2.pointAtObjectInView
      L2_2 = L20_1
      L3_2 = L14_1
      L3_2 = L3_2.selectedGroup
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = L14_1
  L1_2 = L1_2.building
  L2_2 = L1_2
  L1_2 = L1_2.avilableAssignCard
  L1_2 = L1_2(L2_2)
  L2_2 = L19_1
  L2_2 = L2_2 + 1
  L19_1 = L2_2
  L2_2 = L19_1
  if L1_2 >= L2_2 then
    L2_2 = L17_1
    L3_2 = A0_2.card
    L3_2 = L3_2.id
    L4_2 = A0_2.card
    L2_2[L3_2] = L4_2
    L2_2 = L18_1
    L3_2 = A0_2.card
    L3_2 = L3_2.id
    L2_2[L3_2] = A0_2
    L2_2 = L28_1
    L3_2 = L14_1
    L2_2(L3_2)
  else
    L19_1 = L1_2
    L2_2 = L29_1
    L2_2 = L2_2()
    L3_2 = L18_1
    L3_2 = L3_2[L2_2]
    L4_2 = L3_2
    L3_2 = L3_2.deselected
    L3_2(L4_2)
    L3_2 = L18_1
    L3_2[L2_2] = nil
    L3_2 = L17_1
    L3_2[L2_2] = nil
    L3_2 = L18_1
    L4_2 = A0_2.card
    L4_2 = L4_2.id
    L3_2[L4_2] = A0_2
    L3_2 = L17_1
    L4_2 = A0_2.card
    L4_2 = L4_2.id
    L5_2 = A0_2.card
    L3_2[L4_2] = L5_2
    L3_2 = L28_1
    L4_2 = L14_1
    L3_2(L4_2)
  end
end

L14_1.cardSelected = L30_1

function L30_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = mainPlayer
    L7_2 = L7_2.heroSet
    if L7_2 then
      L7_2 = mainPlayer
      L7_2 = L7_2.heroSet
      L8_2 = L6_2.card
      L8_2 = L8_2.baseId
      L7_2 = L7_2[L8_2]
      if L7_2 then
        if A1_2 then
          L7_2 = print
          L8_2 = "Tried to remove the animation"
          L7_2(L8_2)
          L8_2 = L6_2
          L7_2 = L6_2.removeEnterFrameListener
          L7_2(L8_2)
        else
          L8_2 = L6_2
          L7_2 = L6_2.addEnterFrameListener
          L7_2(L8_2)
        end
      end
    end
  end
end

heroAnimationHandler = L30_1

function L30_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L15_1
  L2_2 = A0_2.id
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.stopAnimatingCooldown
    L2_2(L3_2)
  end
end

L14_1.didCooldownCallback = L30_1

function L30_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = showSimpleDialog
  L4_2 = L5_1
  L4_2 = L4_2.Cooldown
  L5_2 = L5_1
  L5_2 = L5_2[A1_2]
  L3_2(L4_2, L5_2)
  L3_2 = L15_1
  L4_2 = A0_2.id
  L3_2 = L3_2[L4_2]
  if L3_2 then
    L5_2 = L3_2
    L4_2 = L3_2.stopAnimatingCooldown
    L4_2(L5_2)
  end
end

L14_1.failedCooldownCallback = L30_1

function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.animateCooldown
  L1_2(L2_2)
  L1_2 = A0_2.card
  L2_2 = L1_2
  L1_2 = L1_2.cooldownCard
  L3_2 = L14_1
  L3_2 = L3_2.didCooldownCallback
  L4_2 = L14_1
  L4_2 = L4_2.failedCooldownCallback
  L1_2(L2_2, L3_2, L4_2)
end

L14_1.didPressCooloffButton = L30_1

function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = pairs
  L2_2 = L15_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.removeSelf
    L6_2(L7_2)
    L6_2 = L5_2.timer1
    if L6_2 then
      L6_2 = timer
      L6_2 = L6_2.cancel
      L7_2 = L5_2.timer1
      L6_2(L7_2)
    end
    L6_2 = L15_1
    L6_2[L4_2] = nil
  end
  L1_2 = mainPlayer
  L1_2 = L1_2.recentlyUsedEnhance
  if L1_2 then
    L1_2 = mainPlayer
    L1_2 = L1_2.recentlyUsedEnhance
    L1_2 = L1_2[3]
    if L1_2 then
      L1_2 = log3
      L2_2 = "remaking scroller"
      L1_2(L2_2)
      L1_2 = display
      L1_2 = L1_2.remove
      L2_2 = A0_2.scroller1
      L1_2(L2_2)
      A0_2.scroller1 = nil
      L1_2 = L2_1
      L1_2 = L1_2.newScrollView
      L2_2 = {}
      L3_2 = display
      L3_2 = L3_2.contentWidth
      L3_2 = L3_2 - 5
      L3_2 = L3_2 - 145
      L2_2.width = L3_2
      L3_2 = display
      L3_2 = L3_2.contentHeight
      L3_2 = L3_2 - 46
      L2_2.height = L3_2
      L2_2.hideScrollBar = true
      L2_2.verticalScrollDisabled = true
      L2_2.scrollWidth = 0
      L2_2.scrollHeight = 0
      L2_2.rightPadding = 20
      L3_2 = {}
      L4_2 = 0
      L5_2 = 0
      L6_2 = 0
      L7_2 = 0
      L3_2[1] = L4_2
      L3_2[2] = L5_2
      L3_2[3] = L6_2
      L3_2[4] = L7_2
      L2_2.backgroundColor = L3_2
      L1_2 = L1_2(L2_2)
      A0_2.scroller1 = L1_2
      L1_2 = A0_2.scroller1
      L2_2 = display
      L2_2 = L2_2.contentWidth
      L2_2 = L2_2 - 5
      L2_2 = L2_2 - 145
      L2_2 = L2_2 / 2
      L2_2 = 5 + L2_2
      L1_2.x = L2_2
      L1_2 = A0_2.scroller1
      L2_2 = display
      L2_2 = L2_2.contentHeight
      L2_2 = L2_2 - 46
      L2_2 = L2_2 / 2
      L2_2 = 44 + L2_2
      L1_2.y = L2_2
      L1_2 = A0_2.maskGroup
      L2_2 = L1_2
      L1_2 = L1_2.insert
      L3_2 = 1
      L4_2 = A0_2.scroller1
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = mainPlayer
      L1_2 = L1_2.recentlyUsedEnhance
      L1_2[3] = false
    end
  end
  L1_2 = clearSlots
  L1_2()
  L1_2 = L23_1
  L2_2 = mainPlayer
  L2_2 = L2_2.cards
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = math
    L8_2 = L8_2.ceil
    L9_2 = #L1_2
    L9_2 = L9_2 / 2
    L8_2 = L8_2(L9_2)
    if L6_2 <= L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L1_2[L6_2]
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = L12_1
  L3_2 = L3_2.reverseSortCardKeysWithCooldown
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L2_2 = L3_2
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L4_1
    L9_2 = L8_2
    L8_2 = L8_2.new
    L10_2 = "medium"
    L11_2 = mainPlayer
    L11_2 = L11_2.cards
    L11_2 = L11_2[L7_2]
    L12_2 = L14_1
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L10_2 = L8_2
    L9_2 = L8_2.deselected
    L9_2(L10_2)
    L10_2 = L8_2
    L9_2 = L8_2.setSelectable
    L11_2 = true
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.setAction
    L9_2(L10_2)
    L10_2 = L8_2
    L9_2 = L8_2.setId
    L11_2 = L6_2
    L9_2(L10_2, L11_2)
    L9_2 = mainPlayer
    L9_2 = L9_2.cards
    L9_2 = L9_2[L7_2]
    L10_2 = L9_2
    L9_2 = L9_2.cooldownRemaining
    L9_2 = L9_2(L10_2)
    if 0 < L9_2 then
      L10_2 = L8_2
      L9_2 = L8_2.showCooldownView
      L9_2(L10_2)
    else
      L10_2 = L8_2
      L9_2 = L8_2.hideCooldownView
      L9_2(L10_2)
    end
    L9_2 = A0_2.scroller1
    L10_2 = L9_2
    L9_2 = L9_2.insert
    L11_2 = L8_2.view
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.setPosition
    L11_2 = L6_2 - 1
    L11_2 = L11_2 * 105
    L11_2 = 5 + L11_2
    L12_2 = display
    L12_2 = L12_2.contentHeight
    L12_2 = L12_2 - 50
    L12_2 = L12_2 / 4
    L12_2 = L12_2 - 70
    L12_2 = L12_2 + 3
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = L15_1
    L9_2[L7_2] = L8_2
  end
  L3_2 = {}
  L4_2 = #L1_2
  L5_2 = math
  L5_2 = L5_2.ceil
  L6_2 = #L1_2
  L6_2 = L6_2 / 2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 + 1
  L6_2 = -1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L3_2
    L10_2 = L1_2[L7_2]
    L8_2(L9_2, L10_2)
  end
  L4_2 = L12_1
  L4_2 = L4_2.reverseSortCardKeysWithCooldown
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L3_2 = L4_2
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L4_1
    L10_2 = L9_2
    L9_2 = L9_2.new
    L11_2 = "medium"
    L12_2 = mainPlayer
    L12_2 = L12_2.cards
    L12_2 = L12_2[L8_2]
    L13_2 = L14_1
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    L11_2 = L9_2
    L10_2 = L9_2.deselected
    L10_2(L11_2)
    L11_2 = L9_2
    L10_2 = L9_2.setSelectable
    L12_2 = true
    L10_2(L11_2, L12_2)
    L11_2 = L9_2
    L10_2 = L9_2.setAction
    L10_2(L11_2)
    L11_2 = L9_2
    L10_2 = L9_2.setId
    L12_2 = L7_2
    L10_2(L11_2, L12_2)
    L10_2 = mainPlayer
    L10_2 = L10_2.cards
    L10_2 = L10_2[L8_2]
    L11_2 = L10_2
    L10_2 = L10_2.cooldownRemaining
    L10_2 = L10_2(L11_2)
    if 0 < L10_2 then
      L11_2 = L9_2
      L10_2 = L9_2.showCooldownView
      L10_2(L11_2)
    else
      L11_2 = L9_2
      L10_2 = L9_2.hideCooldownView
      L10_2(L11_2)
    end
    L10_2 = A0_2.scroller1
    L11_2 = L10_2
    L10_2 = L10_2.insert
    L12_2 = L9_2.view
    L10_2(L11_2, L12_2)
    L11_2 = L9_2
    L10_2 = L9_2.setPosition
    L12_2 = L7_2 - 1
    L12_2 = L12_2 * 105
    L12_2 = 5 + L12_2
    L13_2 = display
    L13_2 = L13_2.contentHeight
    L13_2 = L13_2 - 50
    L13_2 = L13_2 / 4
    L13_2 = L13_2 * 3
    L13_2 = L13_2 - 70
    L13_2 = L13_2 + 2
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = L15_1
    L10_2[L8_2] = L9_2
  end
  L4_2 = A0_2.scroller1
  L5_2 = L4_2
  L4_2 = L4_2.scrollToPosition
  L6_2 = {}
  L6_2.x = 0
  L4_2(L5_2, L6_2)
  L4_2 = {}
  L17_1 = L4_2
  L4_2 = A0_2.building
  L4_2 = L4_2.assignedCards
  if L4_2 then
    L4_2 = pairs
    L5_2 = A0_2.building
    L5_2 = L5_2.assignedCards
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = L17_1
      L9_2[L7_2] = L8_2
    end
  end
  L4_2 = {}
  L18_1 = L4_2
  L4_2 = 0
  L5_2 = pairs
  L6_2 = L17_1
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L4_2 = L4_2 + 1
    L10_2 = log3
    L11_2 = "!!!!!k!!!!!"
    L12_2 = L8_2
    L13_2 = "!!!!v!!!!!"
    L14_2 = L9_2
    L10_2(L11_2, L12_2, L13_2, L14_2)
    L10_2 = L18_1
    L11_2 = L15_1
    L11_2 = L11_2[L8_2]
    L10_2[L8_2] = L11_2
    L10_2 = L18_1
    L10_2 = L10_2[L8_2]
    L11_2 = L10_2
    L10_2 = L10_2.didSelect
    L10_2(L11_2)
  end
  L19_1 = L4_2
  L5_2 = heroAnimationHandler
  L6_2 = L15_1
  L5_2(L6_2)
end

L14_1.setupCardScrollers = L30_1

function L30_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = A0_2.view
  L3_2 = {}
  L15_1 = L3_2
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = L8_1
  L4_2 = L4_2.Path_Assets
  L5_2 = "FC-bg.png"
  L4_2 = L4_2 .. L5_2
  L5_2 = 570
  L6_2 = 360
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L5_2 = L2_2
  L4_2 = L2_2.insert
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = L3_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.helpId = 21
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.navBar = L4_2
  L5_2 = L2_2
  L4_2 = L2_2.insert
  L6_2 = A0_2.navBar
  L6_2 = L6_2.view
  L4_2(L5_2, L6_2)
  L4_2 = display
  L4_2 = L4_2.newRoundedRect
  L5_2 = L2_2
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 / 2
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L7_2 = L7_2 - 45
  L7_2 = L7_2 / 2
  L7_2 = 40 + L7_2
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 - 10
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 - 45
  L10_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = L8_1
  L7_2 = L7_2.whiteColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L4_2.strokeWidth = 3
  L6_2 = L4_2
  L5_2 = L4_2.setStrokeColor
  L7_2 = 0.30588235
  L8_2 = 0.5254902
  L9_2 = 0.10980392
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  A0_2.maskGroup = L5_2
  L5_2 = mainPlayer
  L5_2 = L5_2.recentlyUsedEnhance
  if L5_2 then
    L5_2 = mainPlayer
    L5_2 = L5_2.recentlyUsedEnhance
    L5_2[3] = false
  end
  L5_2 = L2_1
  L5_2 = L5_2.newScrollView
  L6_2 = {}
  L7_2 = display
  L7_2 = L7_2.contentWidth
  L7_2 = L7_2 - 5
  L7_2 = L7_2 - 145
  L6_2.width = L7_2
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L7_2 = L7_2 - 46
  L6_2.height = L7_2
  L6_2.hideScrollBar = true
  L6_2.verticalScrollDisabled = true
  L6_2.scrollWidth = 0
  L6_2.scrollHeight = 0
  L6_2.rightPadding = 20
  L7_2 = {}
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L6_2.backgroundColor = L7_2
  L5_2 = L5_2(L6_2)
  A0_2.scroller1 = L5_2
  L5_2 = A0_2.scroller1
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 - 5
  L6_2 = L6_2 - 145
  L6_2 = L6_2 / 2
  L6_2 = 5 + L6_2
  L5_2.x = L6_2
  L5_2 = A0_2.scroller1
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 - 46
  L6_2 = L6_2 / 2
  L6_2 = 44 + L6_2
  L5_2.y = L6_2
  L5_2 = A0_2.maskGroup
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = A0_2.scroller1
  L5_2(L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  A0_2.selectedGroup = L5_2
  L5_2 = display
  L5_2 = L5_2.newRect
  L6_2 = A0_2.selectedGroup
  L7_2 = 72.5
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 - 47
  L8_2 = L8_2 / 2
  L8_2 = 11 + L8_2
  L9_2 = 145
  L10_2 = display
  L10_2 = L10_2.contentHeight
  L10_2 = L10_2 - 47
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L7_2 = L5_2
  L6_2 = L5_2.setFillColor
  L8_2 = L8_1
  L8_2 = L8_2.lightBlueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L7_2 = L5_2
  L6_2 = L5_2.addEventListener
  L8_2 = "touch"
  
  function L9_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L5_2
  L6_2 = L5_2.addEventListener
  L8_2 = "tap"
  
  function L9_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = display
  L6_2 = L6_2.newText
  L7_2 = A0_2.selectedGroup
  L8_2 = L5_1
  L8_2 = L8_2["Building card select title"]
  L9_2 = 0
  L10_2 = 0
  L11_2 = L8_1
  L11_2 = L11_2.fontForTitle
  L11_2 = L11_2()
  L12_2 = 12
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  A0_2.descLabel = L6_2
  L6_2 = A0_2.descLabel
  L7_2 = L6_2
  L6_2 = L6_2.setFillColor
  L8_2 = L8_1
  L8_2 = L8_2.darkBlueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L6_2 = A0_2.descLabel
  L6_2.x = 72.5
  L6_2 = A0_2.descLabel
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L7_2 = L7_2 * 0.08
  L6_2.y = L7_2
  L6_2 = A0_2.selectedGroup
  L7_2 = display
  L7_2 = L7_2.contentWidth
  L7_2 = L7_2 - 150
  L6_2.x = L7_2
  L6_2 = A0_2.selectedGroup
  L6_2.y = 30
  L6_2 = display
  L6_2 = L6_2.newText
  L7_2 = A0_2.selectedGroup
  L8_2 = L5_1
  L8_2 = L8_2["Selected Power"]
  L9_2 = ":"
  L8_2 = L8_2 .. L9_2
  L9_2 = 0
  L10_2 = 0
  L11_2 = L8_1
  L11_2 = L11_2.fontForTitle
  L11_2 = L11_2()
  L12_2 = 11
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = L6_2
  L7_2 = L6_2.setFillColor
  L9_2 = L8_1
  L9_2 = L9_2.darkBlueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L7_2 = L5_1
  L7_2 = L7_2.lang
  if L7_2 == "en" then
    L7_2 = L6_2.width
    L7_2 = L7_2 / 2
    L7_2 = 5 + L7_2
    L6_2.x = L7_2
  else
    L7_2 = L6_2.width
    L7_2 = L7_2 / 2
    L7_2 = 140 - L7_2
    L6_2.x = L7_2
  end
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L7_2 = L7_2 * 0.67
  L6_2.y = L7_2
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = A0_2.selectedGroup
  L9_2 = "0"
  L10_2 = 0
  L11_2 = 0
  L12_2 = L8_1
  L12_2 = L12_2.fontForTitle
  L12_2 = L12_2()
  L13_2 = 11
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  A0_2.totalPowerLabel = L7_2
  L7_2 = A0_2.totalPowerLabel
  L8_2 = L7_2
  L7_2 = L7_2.setFillColor
  L9_2 = L8_1
  L9_2 = L9_2.darkBlueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L7_2 = L5_1
  L7_2 = L7_2.lang
  if L7_2 == "en" then
    L7_2 = A0_2.totalPowerLabel
    L8_2 = A0_2.totalPowerLabel
    L8_2 = L8_2.width
    L8_2 = L8_2 / 2
    L8_2 = 140 - L8_2
    L7_2.x = L8_2
  else
    L7_2 = A0_2.totalPowerLabel
    L8_2 = A0_2.totalPowerLabel
    L8_2 = L8_2.width
    L8_2 = L8_2 / 2
    L8_2 = 5 + L8_2
    L7_2.x = L8_2
  end
  L7_2 = A0_2.totalPowerLabel
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 * 0.67
  L7_2.y = L8_2
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = A0_2.selectedGroup
  L9_2 = L5_1
  L9_2 = L9_2["Card Benefit"]
  L10_2 = ":"
  L9_2 = L9_2 .. L10_2
  L10_2 = 0
  L11_2 = 0
  L12_2 = L8_1
  L12_2 = L12_2.fontForTitle
  L12_2 = L12_2()
  L13_2 = 11
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L9_2 = L7_2
  L8_2 = L7_2.setFillColor
  L10_2 = L8_1
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L8_2 = L5_1
  L8_2 = L8_2.lang
  if L8_2 == "en" then
    L8_2 = L7_2.width
    L8_2 = L8_2 / 2
    L8_2 = 5 + L8_2
    L7_2.x = L8_2
  else
    L8_2 = L7_2.width
    L8_2 = L8_2 / 2
    L8_2 = 140 - L8_2
    L7_2.x = L8_2
  end
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 * 0.72
  L7_2.y = L8_2
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = A0_2.selectedGroup
  L10_2 = "0"
  L11_2 = 0
  L12_2 = 0
  L13_2 = L8_1
  L13_2 = L13_2.fontForTitle
  L13_2 = L13_2()
  L14_2 = 11
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  A0_2.totalBenefitLabel = L8_2
  L8_2 = A0_2.totalBenefitLabel
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = L8_1
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L8_2 = L5_1
  L8_2 = L8_2.lang
  if L8_2 == "en" then
    L8_2 = A0_2.totalBenefitLabel
    L9_2 = A0_2.totalBenefitLabel
    L9_2 = L9_2.width
    L9_2 = L9_2 / 2
    L9_2 = 140 - L9_2
    L8_2.x = L9_2
  else
    L8_2 = A0_2.totalBenefitLabel
    L9_2 = A0_2.totalBenefitLabel
    L9_2 = L9_2.width
    L9_2 = L9_2 / 2
    L9_2 = 5 + L9_2
    L8_2.x = L9_2
  end
  L8_2 = A0_2.totalBenefitLabel
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 * 0.72
  L8_2.y = L9_2
  L8_2 = {}
  L9_2 = L8_1
  L9_2 = L9_2.Path_Assets
  L10_2 = "BattleItems/next.png"
  L9_2 = L9_2 .. L10_2
  L8_2.imageName = L9_2
  L8_2.width = 100
  L8_2.height = 30
  L8_2.id = "Accept Button"
  L9_2 = L5_1
  L9_2 = L9_2.Accept
  L8_2.label = L9_2
  L9_2 = L9_1
  L9_2 = L9_2.colorsSet
  L9_2 = L9_2.whiteColor
  L8_2.labelColor = L9_2
  L9_2 = L27_1
  L8_2.onRelease = L9_2
  L9_2 = L11_1
  L10_2 = L9_2
  L9_2 = L9_2.new
  L11_2 = L8_2
  L9_2 = L9_2(L10_2, L11_2)
  L20_1 = L9_2
  L9_2 = A0_2.selectedGroup
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L20_1
  L11_2 = L11_2.view
  L9_2(L10_2, L11_2)
  L9_2 = L20_1
  L9_2.x = 72.5
  L9_2 = L20_1
  L10_2 = display
  L10_2 = L10_2.contentHeight
  L10_2 = L10_2 * 0.82
  L9_2.y = L10_2
  L9_2 = A0_2.maskGroup
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = A0_2.selectedGroup
  L9_2(L10_2, L11_2)
  L10_2 = L2_2
  L9_2 = L2_2.insert
  L11_2 = A0_2.maskGroup
  L9_2(L10_2, L11_2)
  L9_2 = graphics
  L9_2 = L9_2.newMask
  L10_2 = L8_1
  L10_2 = L10_2.Path_Assets
  L11_2 = "General/FC-navIncluded"
  L12_2 = L8_1
  L12_2 = L12_2.deviceSpecificFilePostfix
  L12_2 = L12_2()
  L13_2 = "mask.png"
  L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2
  L9_2 = L9_2(L10_2)
  L10_2 = A0_2.maskGroup
  L11_2 = L10_2
  L10_2 = L10_2.setMask
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L10_2 = A0_2.maskGroup
  L11_2 = display
  L11_2 = L11_2.contentCenterX
  L11_2 = L11_2 + 0.5
  L10_2.maskX = L11_2
  L10_2 = A0_2.maskGroup
  L11_2 = display
  L11_2 = L11_2.contentCenterY
  L10_2.maskY = L11_2
end

L14_1.create = L30_1

function L30_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L22_1 = A1_2
  if A1_2 == "showcaseMine" then
    L2_2 = 1
    L21_1 = L2_2
    L2_2 = L13_1
    L2_2 = L2_2.pointAt
    L3_2 = A0_2.scroller1
    L4_2 = 55
    L5_2 = display
    L5_2 = L5_2.contentHeight
    L5_2 = L5_2 - 50
    L5_2 = L5_2 / 4
    L5_2 = L5_2 + 70
    L5_2 = L5_2 + 70
    L2_2(L3_2, L4_2, L5_2)
  end
end

L14_1.startTutorialSequence = L30_1

function L30_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = "Scenes.Home"
    _backAction = L4_2
    L4_2 = assert
    L5_2 = A1_2.params
    L6_2 = "Assign scene called without params from "
    L7_2 = L0_1
    L7_2 = L7_2.getSceneName
    L8_2 = "previous"
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 .. L7_2
    L4_2(L5_2, L6_2)
    L4_2 = assert
    L5_2 = A1_2.params
    L5_2 = L5_2.building
    L6_2 = "The scene must be called with the building as part of it's parameters"
    L4_2(L5_2, L6_2)
    L4_2 = A1_2.params
    L4_2 = L4_2.building
    A0_2.building = L4_2
    L4_2 = A0_2.navBar
    L5_2 = L4_2
    L4_2 = L4_2.setTitle
    L6_2 = A0_2.building
    L6_2 = L6_2.name
    L4_2(L5_2, L6_2)
    L4_2 = A1_2.params
    L4_2 = L4_2.previousScene
    if L4_2 then
      L4_2 = A0_2.navBar
      L5_2 = A1_2.params
      L5_2 = L5_2.previousScene
      L4_2.previousScene = L5_2
      L4_2 = A1_2.params
      L4_2 = L4_2.previousScene
      _backAction = L4_2
    else
      L4_2 = A0_2.navBar
      L5_2 = L0_1
      L5_2 = L5_2.getSceneName
      L6_2 = "previous"
      L5_2 = L5_2(L6_2)
      L4_2.previousScene = L5_2
      L4_2 = L0_1
      L4_2 = L4_2.getSceneName
      L5_2 = "previous"
      L4_2 = L4_2(L5_2)
      _backAction = L4_2
    end
    L4_2 = A0_2.totalPowerLabel
    L5_2 = L5_1
    L5_2 = L5_2.adjustNumber
    L6_2 = "0"
    L5_2 = L5_2(L6_2)
    L4_2.text = L5_2
    L4_2 = A0_2.totalBenefitLabel
    L5_2 = L5_1
    L5_2 = L5_2.adjustNumber
    L6_2 = "0"
    L5_2 = L5_2(L6_2)
    L4_2.text = L5_2
    L5_2 = A0_2
    L4_2 = A0_2.setupCardScrollers
    L4_2(L5_2)
    L4_2 = A0_2.navBar
    L5_2 = A0_2.navBar
    L5_2 = L5_2.previousScene
    L4_2.currentScene = L5_2
    L4_2 = A0_2.navBar
    L5_2 = L4_2
    L4_2 = L4_2.setNectar
    L6_2 = mainPlayer
    L6_2 = L6_2.nectar
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.navBar
    L5_2 = L4_2
    L4_2 = L4_2.updateGold
    L4_2(L5_2)
    L4_2 = L28_1
    L5_2 = A0_2
    L4_2(L5_2)
  end
end

L14_1.show = L30_1

function L30_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = heroAnimationHandler
    L5_2 = L15_1
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = pairs
    L5_2 = L15_1
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L10_2 = L8_2
      L9_2 = L8_2.removeSelf
      L9_2(L10_2)
      L9_2 = L15_1
      L9_2[L7_2] = nil
    end
    L4_2 = clearSlots
    L4_2()
  end
end

L14_1.hide = L30_1

function L30_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.view
end

L14_1.destroy = L30_1
L31_1 = L14_1
L30_1 = L14_1.addEventListener
L32_1 = "create"
L33_1 = L14_1
L30_1(L31_1, L32_1, L33_1)
L31_1 = L14_1
L30_1 = L14_1.addEventListener
L32_1 = "show"
L33_1 = L14_1
L30_1(L31_1, L32_1, L33_1)
L31_1 = L14_1
L30_1 = L14_1.addEventListener
L32_1 = "hide"
L33_1 = L14_1
L30_1(L31_1, L32_1, L33_1)
L31_1 = L14_1
L30_1 = L14_1.addEventListener
L32_1 = "destroy"
L33_1 = L14_1
L30_1(L31_1, L32_1, L33_1)
return L14_1
