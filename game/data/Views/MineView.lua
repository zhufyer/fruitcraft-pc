local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Constants"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "composer"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Utils.Toolbox"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Models.Card"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.CachedImageView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.ActivityIndicatorView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Components.TDButtonView"
L7_1 = L7_1(L8_1)

function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = mainPlayer
  L3_2 = L3_2.goldBuilding
  L3_2 = L3_2.assignedCards
  L2_2.selectedCards = L3_2
  L3_2 = mainPlayer
  L3_2 = L3_2.goldBuilding
  L2_2.building = L3_2
  L2_2.previousScene = "Scenes.DepartmentofLabor"
  L1_2.params = L2_2
  option = L1_2
  L1_2 = L2_1
  L1_2 = L1_2.gotoScene
  L2_2 = "Scenes.AssignCardScene"
  L3_2 = option
  L1_2(L2_2, L3_2)
end

didPressCards = L8_1

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = A0_2.parent
  L1_2 = L1_2.bar
  L2_2 = L1_2
  L1_2 = L1_2.updateGold
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = click
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = "click"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = mainPlayer
  L1_2 = L1_2.goldBuilding
  L2_2 = L1_2
  L1_2 = L1_2.avilableAssignCard
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = 4
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.cards
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.image
    if L6_2 then
      L6_2 = A0_2.cards
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.image
      L7_2 = L6_2
      L6_2 = L6_2.removeSelf
      L6_2 = L6_2(L7_2)
      if L6_2 ~= nil then
        L6_2 = A0_2.cards
        L6_2 = L6_2[L5_2]
        L6_2 = L6_2.image
        L7_2 = L6_2
        L6_2 = L6_2.removeSelf
        L6_2(L7_2)
        L6_2 = A0_2.cards
        L6_2 = L6_2[L5_2]
        L6_2.image = nil
      end
    end
    if L5_2 <= L1_2 then
      L6_2 = A0_2.cards
      L6_2 = L6_2[L5_2]
      L7_2 = display
      L7_2 = L7_2.newImageRect
      L8_2 = A0_2.view
      L9_2 = L0_1
      L9_2 = L9_2.Path_Assets
      L10_2 = "General/missing.png"
      L9_2 = L9_2 .. L10_2
      L10_2 = 75
      L11_2 = 75
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
      L6_2.image = L7_2
      L6_2 = A0_2.cards
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.image
      L7_2 = L6_2
      L6_2 = L6_2.addEventListener
      L8_2 = "tap"
      
      function L9_2(A0_3)
        local L1_3, L2_3, L3_3
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3.didPressCards
        L3_3 = A0_3
        L1_3(L2_3, L3_3)
      end
      
      L6_2(L7_2, L8_2, L9_2)
    else
      L6_2 = A0_2.cards
      L6_2 = L6_2[L5_2]
      L7_2 = display
      L7_2 = L7_2.newImageRect
      L8_2 = A0_2.view
      L9_2 = L0_1
      L9_2 = L9_2.Path_Assets
      L10_2 = "General/FC-lock.png"
      L9_2 = L9_2 .. L10_2
      L10_2 = 75
      L11_2 = 75
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
      L6_2.image = L7_2
    end
    L6_2 = A0_2.cards
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.image
    L6_2.strokeWidth = 4
    L6_2 = A0_2.cards
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.image
    L7_2 = L6_2
    L6_2 = L6_2.setStrokeColor
    L8_2 = L0_1
    L8_2 = L8_2.blueColor
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2()
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L6_2 = A0_2.cards
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.image
    L7_2 = display
    L7_2 = L7_2.contentWidth
    L7_2 = L7_2 - 10
    L7_2 = L7_2 - 300
    L7_2 = L7_2 / 2
    L8_2 = L5_2 - 1
    L8_2 = L8_2 * 75
    L7_2 = L7_2 + L8_2
    L8_2 = A0_2.cards
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.image
    L8_2 = L8_2.width
    L8_2 = L8_2 / 2
    L7_2 = L7_2 + L8_2
    L6_2.x = L7_2
    L6_2 = A0_2.cards
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.image
    L7_2 = display
    L7_2 = L7_2.contentHeight
    L7_2 = L7_2 - 80
    L8_2 = A0_2.cards
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.image
    L8_2 = L8_2.height
    L8_2 = L8_2 / 2
    L7_2 = L7_2 - L8_2
    L6_2.y = L7_2
  end
  L2_2 = 1
  L3_2 = mainPlayer
  L3_2 = L3_2.goldBuilding
  L3_2 = L3_2.assignedCards
  if L3_2 then
    L3_2 = pairs
    L4_2 = mainPlayer
    L4_2 = L4_2.goldBuilding
    L4_2 = L4_2.assignedCards
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      if 4 < L2_2 then
        return
      end
      L8_2 = A0_2.cards
      L8_2 = L8_2[L2_2]
      if L8_2 then
        L8_2 = A0_2.cards
        L8_2 = L8_2[L2_2]
        L8_2 = L8_2.image
        if L8_2 then
          L8_2 = display
          L8_2 = L8_2.remove
          L9_2 = A0_2.cards
          L9_2 = L9_2[L2_2]
          L9_2 = L9_2.image
          L8_2(L9_2)
          L8_2 = A0_2.cards
          L8_2 = L8_2[L2_2]
          L8_2.image = nil
        end
      end
      L8_2 = nil
      L9_2 = _imageQuality
      if L9_2 == "HD" then
        L9_2 = L0_1
        L9_2 = L9_2.Path_Assets
        L10_2 = "Cards/"
        L11_2 = L7_2.image
        L12_2 = "-m.jpg"
        L8_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
      else
        L9_2 = L7_2.baseId
        if L9_2 then
          L9_2 = mainPlayer
          L9_2 = L9_2.heroSet
          if L9_2 then
            L9_2 = mainPlayer
            L9_2 = L9_2.heroSet
            L10_2 = L7_2.baseId
            L9_2 = L9_2[L10_2]
            if L9_2 then
              L9_2 = L0_1
              L9_2 = L9_2.Path_Assets
              L10_2 = getHeroImagePath
              L11_2 = L7_2.baseId
              L10_2 = L10_2(L11_2)
              L8_2 = L9_2 .. L10_2
          end
        end
        else
          L9_2 = L0_1
          L9_2 = L9_2.Path_Assets
          L10_2 = "Cards/"
          L11_2 = L7_2.image
          L12_2 = ".jpg"
          L8_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
        end
      end
      L9_2 = A0_2.cards
      L10_2 = {}
      L9_2[L2_2] = L10_2
      L9_2 = A0_2.cards
      L9_2 = L9_2[L2_2]
      L10_2 = L5_1
      L11_2 = L10_2
      L10_2 = L10_2.new
      L12_2 = A0_2.view
      L13_2 = L8_2
      L14_2 = 75
      L15_2 = 75
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
      L9_2.image = L10_2
      L9_2 = A0_2.cards
      L9_2 = L9_2[L2_2]
      L9_2 = L9_2.image
      L9_2 = L9_2._view
      L9_2.strokeWidth = 4
      L9_2 = A0_2.cards
      L9_2 = L9_2[L2_2]
      L9_2 = L9_2.image
      L9_2 = L9_2._view
      L10_2 = L9_2
      L9_2 = L9_2.setStrokeColor
      L11_2 = L0_1
      L11_2 = L11_2.blueColor
      L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2()
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L9_2 = A0_2.cards
      L9_2 = L9_2[L2_2]
      L9_2 = L9_2.image
      L10_2 = display
      L10_2 = L10_2.contentWidth
      L10_2 = L10_2 - 10
      L10_2 = L10_2 - 300
      L10_2 = L10_2 / 2
      L11_2 = L2_2 - 1
      L11_2 = L11_2 * 75
      L10_2 = L10_2 + L11_2
      L11_2 = A0_2.cards
      L11_2 = L11_2[L2_2]
      L11_2 = L11_2.image
      L11_2 = L11_2.width
      L11_2 = L11_2 / 2
      L10_2 = L10_2 + L11_2
      L9_2.x = L10_2
      L9_2 = A0_2.cards
      L9_2 = L9_2[L2_2]
      L9_2 = L9_2.image
      L10_2 = display
      L10_2 = L10_2.contentHeight
      L10_2 = L10_2 - 80
      L11_2 = A0_2.cards
      L11_2 = L11_2[L2_2]
      L11_2 = L11_2.image
      L11_2 = L11_2.height
      L11_2 = L11_2 / 2
      L10_2 = L10_2 - L11_2
      L9_2.y = L10_2
      L9_2 = A0_2.cards
      L9_2 = L9_2[L2_2]
      L9_2 = L9_2.image
      L9_2 = L9_2._view
      L10_2 = L9_2
      L9_2 = L9_2.addEventListener
      L11_2 = "tap"
      
      function L12_2(A0_3)
        local L1_3, L2_3, L3_3
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3.didPressCards
        L3_3 = A0_3
        L1_3(L2_3, L3_3)
      end
      
      L9_2(L10_2, L11_2, L12_2)
      L2_2 = L2_2 + 1
    end
  end
  L3_2 = 0
  L4_2 = L4_1
  L4_2 = L4_2.maxAttackPowerOfPlayer
  L5_2 = mainPlayer
  L4_2 = L4_2(L5_2)
  L3_2 = L4_2
  L4_2 = mainPlayer
  L4_2 = L4_2.goldBuilding
  L5_2 = L4_2
  L4_2 = L4_2.benefitFromAssignedCards
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2.powerValueLabel
  L6_2 = L1_1
  L6_2 = L6_2.adjustNumber
  L7_2 = L3_1
  L7_2 = L7_2.stringThousandCommaSeperated
  L8_2 = ""
  L9_2 = L4_2
  L8_2 = L8_2 .. L9_2
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L7_2(L8_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L5_2.text = L6_2
  L5_2 = A0_2.powerValueLabel
  L6_2 = L1_1
  L6_2 = L6_2.adjustX
  L7_2 = A0_2.currentPower
  L7_2 = L7_2.width
  L7_2 = 120 + L7_2
  L7_2 = L7_2 + 5
  L8_2 = A0_2.powerValueLabel
  L8_2 = L8_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L6_2 = L6_2(L7_2)
  L5_2.x = L6_2
  L5_2 = mainPlayer
  L5_2 = L5_2.goldBuilding
  L6_2 = L5_2
  L5_2 = L5_2.benefitFromLevel
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2.statusValueLabel
  L7_2 = L1_1
  L7_2 = L7_2.adjustNumber
  L8_2 = L3_1
  L8_2 = L8_2.stringThousandCommaSeperated
  L9_2 = ""
  L10_2 = L5_2
  L9_2 = L9_2 .. L10_2
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L6_2.text = L7_2
  L6_2 = A0_2.statusValueLabel
  L7_2 = L1_1
  L7_2 = L7_2.adjustX
  L8_2 = A0_2.statusLabel
  L8_2 = L8_2.width
  L8_2 = 120 + L8_2
  L8_2 = L8_2 + 5
  L9_2 = A0_2.statusValueLabel
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L7_2 = L7_2(L8_2)
  L6_2.x = L7_2
  L6_2 = A0_2.goldExtractionValue
  L7_2 = L1_1
  L7_2 = L7_2.localizedString
  L8_2 = "Gold Extraction Percentage"
  L9_2 = {}
  L10_2 = L1_1
  L10_2 = L10_2.adjustNumber
  L11_2 = mainPlayer
  L11_2 = L11_2.goldCollectionExtraction
  L10_2 = L10_2(L11_2)
  L9_2.percent = L10_2
  L7_2 = L7_2(L8_2, L9_2)
  L6_2.text = L7_2
  L6_2 = A0_2.goldExtractionValue
  L7_2 = L1_1
  L7_2 = L7_2.adjustX
  L8_2 = A0_2.goldExtractionLabel
  L8_2 = L8_2.width
  L8_2 = 20 + L8_2
  L8_2 = L8_2 + 5
  L9_2 = A0_2.goldExtractionValue
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L7_2 = L7_2(L8_2)
  L6_2.x = L7_2
  L6_2 = A0_2.levelLabel
  L7_2 = L1_1
  L7_2 = L7_2.Level
  L8_2 = ": "
  L9_2 = L1_1
  L9_2 = L9_2.adjustNumber
  L10_2 = mainPlayer
  L10_2 = L10_2.goldBuilding
  L10_2 = L10_2.level
  L9_2 = L9_2(L10_2)
  L7_2 = L7_2 .. L8_2 .. L9_2
  L6_2.text = L7_2
  L6_2 = A0_2.mineTimerValue
  L7_2 = L1_1
  L7_2 = L7_2.adjustX
  L8_2 = A0_2.mineTimerLabel
  L8_2 = L8_2.width
  L8_2 = 20 + L8_2
  L8_2 = L8_2 + 5
  L9_2 = A0_2.mineTimerValue
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L7_2 = L7_2(L8_2)
  L6_2.x = L7_2
  L7_2 = A0_2
  L6_2 = A0_2.visibilityHandler
  L6_2(L7_2)
  L6_2 = mainPlayer
  L6_2 = L6_2.canShowMineExtractionDetails
  if L6_2 ~= true then
    L7_2 = A0_2
    L6_2 = A0_2.hideGoldExtractionDetails
    L6_2(L7_2)
  end
end

repaint = L8_1

function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  if not A1_2 then
    L3_2 = {}
    A1_2 = L3_2
  end
  L3_2 = setmetatable
  L4_2 = A1_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  A0_2.__index = A0_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  A1_2.view = L3_2
  A1_2.parent = A2_2
  L3_2 = A1_2.parent
  L3_2 = L3_2.bar
  L4_2 = L3_2
  L3_2 = L3_2.updateGold
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = nil
  L4_2 = nil
  L5_2 = nil
  L6_2 = nil
  L7_2 = display
  L7_2 = L7_2.newRect
  L8_2 = A1_2.view
  L9_2 = 0
  L10_2 = display
  L10_2 = L10_2.contentHeight
  L10_2 = L10_2 / 2
  L10_2 = L10_2 - 30
  L11_2 = display
  L11_2 = L11_2.contentWidth
  L11_2 = L11_2 - 30
  L12_2 = 1.5
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 / 2
  L7_2.x = L8_2
  L9_2 = L7_2
  L8_2 = L7_2.setFillColor
  L10_2 = L0_1
  L10_2 = L10_2.blueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L8_2 = L1_1
  L8_2 = L8_2["Gold per Hour"]
  L9_2 = " :"
  L3_2 = L8_2 .. L9_2
  L8_2 = L1_1
  L4_2 = L8_2["gold building description"]
  L8_2 = mainPlayer
  L8_2 = L8_2.goldBuilding
  L9_2 = L8_2
  L8_2 = L8_2.benefitFromAssignedCards
  L8_2 = L8_2(L9_2)
  L5_2 = L8_2
  L8_2 = mainPlayer
  L8_2 = L8_2.goldBuilding
  L9_2 = L8_2
  L8_2 = L8_2.benefitFromLevel
  L8_2 = L8_2(L9_2)
  L6_2 = L8_2
  L8_2 = mainPlayer
  L8_2 = L8_2.goldBuilding
  L8_2 = L8_2.assignedCards
  A1_2.assignedCards = L8_2
  L8_2 = mainPlayer
  L8_2 = L8_2.goldBuilding
  L9_2 = L8_2
  L8_2 = L8_2.benefitFromLevel
  L8_2 = L8_2(L9_2)
  A1_2.maxStorage = L8_2
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = A1_2.view
  L10_2 = L1_1
  L10_2 = L10_2.adjustNumber
  L11_2 = L3_1
  L11_2 = L11_2.stringThousandCommaSeperated
  L12_2 = ""
  L13_2 = L5_2
  L12_2 = L12_2 .. L13_2
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2(L12_2)
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L11_2 = 0
  L12_2 = 0
  L13_2 = L0_1
  L13_2 = L13_2.fontForTitle
  L13_2 = L13_2()
  L14_2 = 12
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  A1_2.powerValueLabel = L8_2
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = A1_2.view
  L10_2 = L1_1
  L10_2 = L10_2["Gold Extraction Label"]
  L11_2 = " :"
  L10_2 = L10_2 .. L11_2
  L11_2 = 0
  L12_2 = 0
  L13_2 = L0_1
  L13_2 = L13_2.fontForSubtitle
  L13_2 = L13_2()
  L14_2 = 12
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  A1_2.goldExtractionLabel = L8_2
  L8_2 = A1_2.goldExtractionLabel
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = Theme
  L10_2 = L10_2.colorsSet
  L10_2 = L10_2.darkBlueColor
  L10_2 = L10_2[1]
  L11_2 = Theme
  L11_2 = L11_2.colorsSet
  L11_2 = L11_2.darkBlueColor
  L11_2 = L11_2[2]
  L12_2 = Theme
  L12_2 = L12_2.colorsSet
  L12_2 = L12_2.darkBlueColor
  L12_2 = L12_2[3]
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = A1_2.goldExtractionLabel
  L9_2 = L1_1
  L9_2 = L9_2.adjustX
  L10_2 = A1_2.goldExtractionLabel
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L10_2 = 20 + L10_2
  L9_2 = L9_2(L10_2)
  L8_2.x = L9_2
  L8_2 = A1_2.goldExtractionLabel
  L9_2 = L7_2.y
  L9_2 = L9_2 + 5
  L10_2 = A1_2.goldExtractionLabel
  L10_2 = L10_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L8_2.y = L9_2
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = A1_2.view
  L10_2 = L1_1
  L10_2 = L10_2.localizedString
  L11_2 = "Gold Extraction Percentage"
  L12_2 = {}
  L13_2 = L1_1
  L13_2 = L13_2.adjustNumber
  L14_2 = mainPlayer
  L14_2 = L14_2.goldCollectionExtraction
  L13_2 = L13_2(L14_2)
  L12_2.percent = L13_2
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = 0
  L12_2 = 0
  L13_2 = L0_1
  L13_2 = L13_2.fontForTitle
  L13_2 = L13_2()
  L14_2 = 12
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  A1_2.goldExtractionValue = L8_2
  L8_2 = A1_2.goldExtractionValue
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = Theme
  L10_2 = L10_2.colorsSet
  L10_2 = L10_2.darkBlueColor
  L10_2 = L10_2[1]
  L11_2 = Theme
  L11_2 = L11_2.colorsSet
  L11_2 = L11_2.darkBlueColor
  L11_2 = L11_2[2]
  L12_2 = Theme
  L12_2 = L12_2.colorsSet
  L12_2 = L12_2.darkBlueColor
  L12_2 = L12_2[3]
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = A1_2.goldExtractionValue
  L9_2 = L1_1
  L9_2 = L9_2.adjustX
  L10_2 = A1_2.goldExtractionLabel
  L10_2 = L10_2.x
  L11_2 = A1_2.goldExtractionLabel
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L10_2 = L10_2 + 5
  L11_2 = A1_2.goldExtractionValue
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L9_2 = L9_2(L10_2)
  L8_2.x = L9_2
  L8_2 = A1_2.goldExtractionValue
  L9_2 = A1_2.goldExtractionLabel
  L9_2 = L9_2.y
  L8_2.y = L9_2
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = A1_2.view
  L10_2 = L1_1
  L10_2 = L10_2["Mine Timer Label"]
  L11_2 = " :"
  L10_2 = L10_2 .. L11_2
  L11_2 = 0
  L12_2 = 0
  L13_2 = L0_1
  L13_2 = L13_2.fontForTitle
  L13_2 = L13_2()
  L14_2 = 12
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  A1_2.mineTimerLabel = L8_2
  L8_2 = A1_2.mineTimerLabel
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = Theme
  L10_2 = L10_2.colorsSet
  L10_2 = L10_2.regularRedColor
  L10_2 = L10_2[1]
  L11_2 = Theme
  L11_2 = L11_2.colorsSet
  L11_2 = L11_2.regularRedColor
  L11_2 = L11_2[2]
  L12_2 = Theme
  L12_2 = L12_2.colorsSet
  L12_2 = L12_2.regularRedColor
  L12_2 = L12_2[3]
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = A1_2.mineTimerLabel
  L9_2 = L1_1
  L9_2 = L9_2.adjustX
  L10_2 = A1_2.mineTimerLabel
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L10_2 = 20 + L10_2
  L9_2 = L9_2(L10_2)
  L8_2.x = L9_2
  L8_2 = A1_2.mineTimerLabel
  L9_2 = A1_2.goldExtractionLabel
  L9_2 = L9_2.y
  L8_2.y = L9_2
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = A1_2.view
  L10_2 = " "
  L11_2 = 0
  L12_2 = 0
  L13_2 = L0_1
  L13_2 = L13_2.fontForTitle
  L13_2 = L13_2()
  L14_2 = 12
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  A1_2.mineTimerValue = L8_2
  L8_2 = A1_2.mineTimerValue
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = Theme
  L10_2 = L10_2.colorsSet
  L10_2 = L10_2.regularRedColor
  L10_2 = L10_2[1]
  L11_2 = Theme
  L11_2 = L11_2.colorsSet
  L11_2 = L11_2.regularRedColor
  L11_2 = L11_2[2]
  L12_2 = Theme
  L12_2 = L12_2.colorsSet
  L12_2 = L12_2.regularRedColor
  L12_2 = L12_2[3]
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = A1_2.mineTimerValue
  L9_2 = L1_1
  L9_2 = L9_2.adjustX
  L10_2 = A1_2.mineTimerLabel
  L10_2 = L10_2.width
  L10_2 = 20 + L10_2
  L10_2 = L10_2 + 5
  L11_2 = A1_2.mineTimerValue
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L9_2 = L9_2(L10_2)
  L8_2.x = L9_2
  L8_2 = A1_2.mineTimerValue
  L9_2 = A1_2.mineTimerLabel
  L9_2 = L9_2.y
  L8_2.y = L9_2
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = A1_2.view
  L10_2 = L3_2
  L11_2 = 0
  L12_2 = 0
  L13_2 = L0_1
  L13_2 = L13_2.fontForSubtitle
  L13_2 = L13_2()
  L14_2 = 12
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  A1_2.currentPower = L8_2
  L8_2 = A1_2.currentPower
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = L0_1
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L8_2 = A1_2.currentPower
  L9_2 = L1_1
  L9_2 = L9_2.adjustX
  L10_2 = A1_2.currentPower
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L10_2 = 120 + L10_2
  L9_2 = L9_2(L10_2)
  L8_2.x = L9_2
  L8_2 = A1_2.currentPower
  L9_2 = A1_2.currentPower
  L9_2 = L9_2.height
  L9_2 = L9_2 / 2
  L9_2 = 25 + L9_2
  L8_2.y = L9_2
  L8_2 = system
  L8_2 = L8_2.getInfo
  L9_2 = "platformName"
  L8_2 = L8_2(L9_2)
  if L8_2 == "iPhone OS" then
    L8_2 = A1_2.currentPower
    L9_2 = A1_2.currentPower
    L9_2 = L9_2.x
    L9_2 = L9_2 - 1
    L8_2.x = L9_2
  end
  L8_2 = A1_2.powerValueLabel
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = L0_1
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L8_2 = A1_2.powerValueLabel
  L9_2 = L1_1
  L9_2 = L9_2.adjustX
  L10_2 = A1_2.currentPower
  L10_2 = L10_2.x
  L11_2 = A1_2.currentPower
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L10_2 = L10_2 + 5
  L11_2 = A1_2.powerValueLabel
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L9_2 = L9_2(L10_2)
  L8_2.x = L9_2
  L8_2 = A1_2.powerValueLabel
  L9_2 = A1_2.currentPower
  L9_2 = L9_2.y
  L8_2.y = L9_2
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = A1_2.view
  L10_2 = L1_1
  L10_2 = L10_2["Storage Limit"]
  L11_2 = " :"
  L10_2 = L10_2 .. L11_2
  L11_2 = 0
  L12_2 = 0
  L13_2 = L0_1
  L13_2 = L13_2.fontForSubtitle
  L13_2 = L13_2()
  L14_2 = 12
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  A1_2.statusLabel = L8_2
  L8_2 = A1_2.statusLabel
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = L0_1
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L8_2 = A1_2.statusLabel
  L9_2 = L1_1
  L9_2 = L9_2.adjustX
  L10_2 = A1_2.statusLabel
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L10_2 = 120 + L10_2
  L9_2 = L9_2(L10_2)
  L8_2.x = L9_2
  L8_2 = A1_2.statusLabel
  L9_2 = A1_2.statusLabel
  L9_2 = L9_2.height
  L9_2 = L9_2 / 2
  L9_2 = 45 + L9_2
  L8_2.y = L9_2
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = A1_2.view
  L10_2 = L1_1
  L10_2 = L10_2.adjustNumber
  L11_2 = L3_1
  L11_2 = L11_2.stringThousandCommaSeperated
  L12_2 = ""
  L13_2 = L6_2
  L12_2 = L12_2 .. L13_2
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2(L12_2)
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L11_2 = 0
  L12_2 = 0
  L13_2 = L0_1
  L13_2 = L13_2.fontForTitle
  L13_2 = L13_2()
  L14_2 = 12
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  A1_2.statusValueLabel = L8_2
  L8_2 = A1_2.statusValueLabel
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = L0_1
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L8_2 = A1_2.statusValueLabel
  L9_2 = L1_1
  L9_2 = L9_2.adjustX
  L10_2 = A1_2.statusLabel
  L10_2 = L10_2.x
  L11_2 = A1_2.statusLabel
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L10_2 = L10_2 + 5
  L11_2 = A1_2.statusValueLabel
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L9_2 = L9_2(L10_2)
  L8_2.x = L9_2
  L8_2 = A1_2.statusValueLabel
  L9_2 = A1_2.statusLabel
  L9_2 = L9_2.y
  L8_2.y = L9_2
  L8_2 = system
  L8_2 = L8_2.getInfo
  L9_2 = "build"
  L8_2 = L8_2(L9_2)
  if "2013.1137" < L8_2 then
    L8_2 = system
    L8_2 = L8_2.getInfo
    L9_2 = "platformName"
    L8_2 = L8_2(L9_2)
    if L8_2 ~= "Android" then
      L8_2 = L1_1
      L8_2 = L8_2.lang
      if L8_2 == "fa" then
        goto lbl_451
      end
    end
  end
  L8_2 = L1_1
  L8_2 = L8_2.lang
  if L8_2 == "ar" then
    ::lbl_451::
    L8_2 = {}
    L9_2 = A1_2.view
    L8_2.parent = L9_2
    L8_2.text = L4_2
    L8_2.x = 0
    L8_2.y = 0
    L8_2.width = 330
    L8_2.height = 60
    L9_2 = L0_1
    L9_2 = L9_2.fontForSubtitle
    L9_2 = L9_2()
    L8_2.font = L9_2
    L8_2.fontSize = 10
    L8_2.align = "right"
    L9_2 = display
    L9_2 = L9_2.newText
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    A1_2.description = L9_2
  else
    L8_2 = display
    L8_2 = L8_2.newText
    L9_2 = A1_2.view
    L10_2 = L4_2
    L11_2 = 0
    L12_2 = 0
    L13_2 = 330
    L14_2 = 60
    L15_2 = L0_1
    L15_2 = L15_2.fontForSubtitle
    L15_2 = L15_2()
    L16_2 = 10
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    A1_2.description = L8_2
  end
  L8_2 = A1_2.description
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = L0_1
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L8_2 = A1_2.description
  L9_2 = L1_1
  L9_2 = L9_2.adjustX
  L10_2 = A1_2.description
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L10_2 = 120 + L10_2
  L9_2 = L9_2(L10_2)
  L8_2.x = L9_2
  L8_2 = A1_2.description
  L9_2 = A1_2.description
  L9_2 = L9_2.height
  L9_2 = L9_2 / 2
  L9_2 = 65 + L9_2
  L8_2.y = L9_2
  L8_2 = display
  L8_2 = L8_2.newImageRect
  L9_2 = A1_2.view
  L10_2 = L0_1
  L10_2 = L10_2.Path_Assets
  L11_2 = "Buildings/FC-listellipse-views.png"
  L10_2 = L10_2 .. L11_2
  L11_2 = 90
  L12_2 = 90
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L9_2 = L1_1
  L9_2 = L9_2.adjustX
  L10_2 = L8_2.width
  L10_2 = L10_2 / 2
  L10_2 = 20 + L10_2
  L9_2 = L9_2(L10_2)
  L8_2.x = L9_2
  L9_2 = L8_2.height
  L9_2 = L9_2 / 2
  L9_2 = 15 + L9_2
  L8_2.y = L9_2
  L9_2 = display
  L9_2 = L9_2.newText
  L10_2 = A1_2.view
  L11_2 = L1_1
  L11_2 = L11_2.Level
  L12_2 = ": "
  L13_2 = L1_1
  L13_2 = L13_2.adjustNumber
  L14_2 = mainPlayer
  L14_2 = L14_2.goldBuilding
  L14_2 = L14_2.level
  L13_2 = L13_2(L14_2)
  L11_2 = L11_2 .. L12_2 .. L13_2
  L12_2 = 0
  L13_2 = 0
  L14_2 = L0_1
  L14_2 = L14_2.fontForTitle
  L14_2 = L14_2()
  L15_2 = 12
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  A1_2.levelLabel = L9_2
  L9_2 = A1_2.levelLabel
  L10_2 = L9_2
  L9_2 = L9_2.setFillColor
  L11_2 = L0_1
  L11_2 = L11_2.darkBlueColor
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2()
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L9_2 = A1_2.levelLabel
  L10_2 = L1_1
  L10_2 = L10_2.adjustX
  L11_2 = L8_2.width
  L11_2 = L11_2 / 2
  L11_2 = 20 + L11_2
  L10_2 = L10_2(L11_2)
  L9_2.x = L10_2
  L9_2 = A1_2.levelLabel
  L10_2 = L8_2.y
  L11_2 = L8_2.height
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L10_2 = L10_2 + 10
  L9_2.y = L10_2
  
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L6_1
    L1_3 = L1_3.hide
    L1_3()
    L1_3 = showSimpleDialog
    L2_3 = "Upgrade"
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L6_1
    L0_3 = L0_3.hide
    L0_3()
    L0_3 = showSimpleDialog
    L1_3 = "Upgrade"
    L2_3 = "Succes message for upgarde"
    L0_3(L1_3, L2_3)
    L0_3 = mainPlayer
    L0_3 = L0_3.goldBuilding
    L0_3 = L0_3.level
    L1_3 = L0_1
    L1_3 = L1_3.Mine_Building_Max_Upgrade_level
    if L0_3 == L1_3 then
      L0_3 = A1_2
      L0_3 = L0_3.costLabel
      L0_3.isVisible = false
      L0_3 = A1_2
      L0_3 = L0_3.upgradeButton
      L0_3.isVisible = false
    else
      L0_3 = A1_2
      L0_3 = L0_3.costLabel
      L1_3 = L1_1
      L1_3 = L1_3.adjustNumber
      L2_3 = L3_1
      L2_3 = L2_3.stringThousandCommaSeperated
      L3_3 = mainPlayer
      L3_3 = L3_3.goldBuilding
      L4_3 = L3_3
      L3_3 = L3_3.upgradeCost
      L3_3, L4_3 = L3_3(L4_3)
      L2_3, L3_3, L4_3 = L2_3(L3_3, L4_3)
      L1_3 = L1_3(L2_3, L3_3, L4_3)
      L0_3.text = L1_3
    end
    L0_3 = A1_2
    L1_3 = L0_3
    L0_3 = L0_3.repaint
    L0_3(L1_3)
  end
  
  L11_2 = L7_1
  L12_2 = L11_2
  L11_2 = L11_2.new
  L13_2 = {}
  L13_2.width = 71
  L13_2.height = 42
  L14_2 = L1_1
  L14_2 = L14_2.Upgrade
  L13_2.label = L14_2
  L13_2.fontSize = 8
  L13_2.labelYOffset = -10
  L14_2 = L0_1
  L14_2 = L14_2.Path_Assets
  L15_2 = "TribeUpgrade/FC-TU-upgrade.png"
  L14_2 = L14_2 .. L15_2
  L13_2.defaultFile = L14_2
  
  function L14_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = mainPlayer
    L1_3 = L0_3
    L0_3 = L0_3.checkPlayerCurrency
    L2_3 = mainPlayer
    L2_3 = L2_3.goldBuilding
    L3_3 = L2_3
    L2_3 = L2_3.upgradeCost
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
    if L0_3 then
      L0_3 = L6_1
      L0_3 = L0_3.show
      L1_3 = L1_1
      L1_3 = L1_3.Upgrade
      L0_3(L1_3)
      L0_3 = mainPlayer
      L0_3 = L0_3.goldBuilding
      L1_3 = L0_3
      L0_3 = L0_3.upgrade
      L2_3 = L10_2
      L3_3 = L9_2
      L4_3 = A1_2
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
  end
  
  L13_2.onRelease = L14_2
  L11_2 = L11_2(L12_2, L13_2)
  A1_2.upgradeButton = L11_2
  L11_2 = A1_2.view
  L12_2 = L11_2
  L11_2 = L11_2.insert
  L13_2 = A1_2.upgradeButton
  L13_2 = L13_2.view
  L11_2(L12_2, L13_2)
  L11_2 = A1_2.upgradeButton
  L12_2 = L1_1
  L12_2 = L12_2.adjustX
  L13_2 = display
  L13_2 = L13_2.contentWidth
  L14_2 = A1_2.upgradeButton
  L14_2 = L14_2.width
  L14_2 = L14_2 / 2
  L13_2 = L13_2 - L14_2
  L13_2 = L13_2 - 30
  L12_2 = L12_2(L13_2)
  L11_2.x = L12_2
  L11_2 = A1_2.upgradeButton
  L11_2.y = 42
  L11_2 = display
  L11_2 = L11_2.newText
  L12_2 = A1_2.view
  L13_2 = L1_1
  L13_2 = L13_2.adjustNumber
  L14_2 = L3_1
  L14_2 = L14_2.stringThousandCommaSeperated
  L15_2 = mainPlayer
  L15_2 = L15_2.goldBuilding
  L16_2 = L15_2
  L15_2 = L15_2.upgradeCost
  L15_2, L16_2, L17_2 = L15_2(L16_2)
  L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2, L16_2, L17_2)
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L14_2 = 0
  L15_2 = 0
  L16_2 = L0_1
  L16_2 = L16_2.fontForTitle
  L16_2 = L16_2()
  L17_2 = 9
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  A1_2.costLabel = L11_2
  L11_2 = A1_2.costLabel
  L12_2 = L11_2
  L11_2 = L11_2.setFillColor
  L13_2 = L0_1
  L13_2 = L13_2.darkGreenColor
  L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2()
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L11_2 = A1_2.costLabel
  L12_2 = L1_1
  L12_2 = L12_2.adjustX
  L13_2 = display
  L13_2 = L13_2.contentWidth
  L14_2 = A1_2.upgradeButton
  L14_2 = L14_2.width
  L14_2 = L14_2 / 2
  L13_2 = L13_2 - L14_2
  L13_2 = L13_2 - 20
  L14_2 = 15
  L12_2 = L12_2(L13_2, L14_2)
  L11_2.x = L12_2
  L11_2 = A1_2.costLabel
  L11_2.y = 48
  L11_2 = mainPlayer
  L11_2 = L11_2.goldBuilding
  L11_2 = L11_2.level
  L12_2 = L0_1
  L12_2 = L12_2.Mine_Building_Max_Upgrade_level
  if L11_2 == L12_2 then
    L11_2 = A1_2.upgradeButton
    L11_2.isVisible = false
    L11_2 = A1_2.costLabel
    L11_2.isVisible = false
  end
  L11_2 = nil
  L12_2 = display
  L12_2 = L12_2.newImageRect
  L13_2 = A1_2.view
  L14_2 = L0_1
  L14_2 = L14_2.Path_Assets
  L15_2 = "Buildings/FC-mine-in-view.png"
  L14_2 = L14_2 .. L15_2
  L15_2 = 80
  L16_2 = 90
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
  L11_2 = L12_2
  L12_2 = L8_2.x
  L12_2 = L12_2 - 2
  L11_2.x = L12_2
  L12_2 = L8_2.y
  L11_2.y = L12_2
  L12_2 = {}
  L13_2 = {}
  L14_2 = {}
  L15_2 = {}
  L16_2 = {}
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L12_2[4] = L16_2
  A1_2.cards = L12_2
  L13_2 = A1_2
  L12_2 = A1_2.visibilityHandler
  L12_2(L13_2)
  return A1_2
end

new = L8_1

function L8_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L8_1

function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.repaint
  L1_2(L2_2)
end

show = L8_1

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L4_1
  L1_2 = L1_2.baseCards
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.image
  L2_2 = string
  L2_2 = L2_2.find
  L3_2 = L1_2
  L4_2 = "lvl"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = string
  L3_2 = L3_2.sub
  L4_2 = L1_2
  L5_2 = 1
  L6_2 = L2_2 - 2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  return L3_2
end

findTheFolderName = L8_1

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = "Cards"
  L2_2 = "/"
  L3_2 = findTheFolderName
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = ".jpg"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L3_2 = L1_2
  L4_2 = L2_2
  L3_2 = L3_2 .. L4_2
  return L3_2
end

getHeroImagePath = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L3_1
  L2_2 = L2_2.remainTimeFromNow
  L3_2 = tonumber
  L4_2 = mainPlayer
  L4_2 = L4_2.goldCollectionAllowedAt
  L3_2 = L3_2(L4_2)
  L4_2 = mainPlayer
  L4_2 = L4_2.timeDelta
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2)
  if L2_2 < 0 then
    L3_2 = "00"
    L4_2 = "00"
    L5_2 = "00"
    L6_2 = Runtime
    L7_2 = L6_2
    L6_2 = L6_2.removeEventListener
    L8_2 = "click"
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = A0_2
    L6_2 = A0_2.setMineTimerVisibility
    L8_2 = false
    L6_2(L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2.setGoldExtractionVisibility
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = mainPlayer
    L6_2 = L6_2.goldCollectionAllowed
    if L6_2 ~= true then
      L6_2 = mainPlayer
      L6_2.goldCollectionAllowed = true
      L6_2 = mainPlayer
      L6_2.goldCollectionExtraction = 0
      L6_2 = A0_2.goldExtractionValue
      L7_2 = L1_1
      L7_2 = L7_2.localizedString
      L8_2 = "Gold Extraction Percentage"
      L9_2 = {}
      L10_2 = L1_1
      L10_2 = L10_2.adjustNumber
      L11_2 = "0"
      L10_2 = L10_2(L11_2)
      L9_2.percent = L10_2
      L7_2 = L7_2(L8_2, L9_2)
      L6_2.text = L7_2
    end
  end
  L6_2 = L1_1
  L6_2 = L6_2.adjustNumber
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L3_2 = L6_2
  L6_2 = L1_1
  L6_2 = L6_2.adjustNumber
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L5_2 = L6_2
  L6_2 = L1_1
  L6_2 = L6_2.adjustNumber
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L4_2 = L6_2
  L6_2 = L3_2
  L7_2 = " : "
  L8_2 = L4_2
  L9_2 = " : "
  L10_2 = L5_2
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
  L7_2 = A0_2.mineTimerValue
  L7_2.text = L6_2
  L7_2 = A0_2.mineTimerValue
  L8_2 = L1_1
  L8_2 = L8_2.adjustX
  L9_2 = A0_2.mineTimerLabel
  L9_2 = L9_2.width
  L9_2 = 20 + L9_2
  L9_2 = L9_2 + 5
  L10_2 = A0_2.mineTimerValue
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L8_2 = L8_2(L9_2)
  L7_2.x = L8_2
end

click = L8_1

function L8_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.mineTimerLabel
  L2_2.isVisible = A1_2
  L2_2 = A0_2.mineTimerValue
  L2_2.isVisible = A1_2
end

setMineTimerVisibility = L8_1

function L8_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.goldExtractionLabel
  L2_2.isVisible = A1_2
  L2_2 = A0_2.goldExtractionValue
  L2_2.isVisible = A1_2
end

setGoldExtractionVisibility = L8_1

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = false
  L2_2 = true
  L3_2 = mainPlayer
  L3_2 = L3_2.goldCollectionAllowed
  if L3_2 ~= true then
    L1_2 = true
    L2_2 = false
  end
  L4_2 = A0_2
  L3_2 = A0_2.setMineTimerVisibility
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.setGoldExtractionVisibility
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end

visibilityHandler = L8_1

function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setMineTimerVisibility
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setGoldExtractionVisibility
  L3_2 = false
  L1_2(L2_2, L3_2)
end

hideGoldExtractionDetails = L8_1
