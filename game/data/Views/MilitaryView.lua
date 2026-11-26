local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
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
L6_1 = nil
L7_1 = nil
L8_1 = nil
L9_1 = nil
L10_1 = nil
L11_1 = nil

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2.assignedCards
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2.totalPower
    L7_2 = L5_2.power
    L6_2 = L6_2 + L7_2
    A0_2.totalPower = L6_2
  end
end

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = A0_2.building
  L4_2 = L4_2.assignedCards
  L3_2.selectedCards = L4_2
  L4_2 = A0_2.building
  L3_2.building = L4_2
  L3_2.previousScene = "Scenes.Military"
  L2_2.params = L3_2
  option = L2_2
  L2_2 = L2_1
  L2_2 = L2_2.gotoScene
  L3_2 = "Scenes.AssignCardScene"
  L4_2 = option
  L2_2(L3_2, L4_2)
end

didPressCards = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = A0_2.building
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
      L6_2(L7_2)
      L6_2 = A0_2.cards
      L6_2 = L6_2[L5_2]
      L6_2.image = nil
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
  L3_2 = A0_2.building
  L3_2 = L3_2.assignedCards
  if L3_2 then
    L3_2 = pairs
    L4_2 = A0_2.building
    L4_2 = L4_2.assignedCards
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = A0_2.cards
      L8_2 = L8_2[L2_2]
      L8_2 = L8_2.image
      if L8_2 then
        L8_2 = A0_2.cards
        L8_2 = L8_2[L2_2]
        L8_2 = L8_2.image
        L9_2 = L8_2
        L8_2 = L8_2.removeSelf
        L8_2(L9_2)
      end
      L8_2 = A0_2.cards
      L8_2 = L8_2[L2_2]
      L8_2.image = nil
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
  L4_2 = L3_1
  L4_2 = L4_2.shortenLongNumber
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L3_1
  L5_2 = L5_2.stringThousandCommaSeperated
  L6_2 = ""
  L7_2 = L4_2
  L6_2 = L6_2 .. L7_2
  L5_2 = L5_2(L6_2)
  L4_2 = L5_2
  L5_2 = L1_1
  L5_2 = L5_2.adjustNumber
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L4_2 = L5_2
  L5_2 = A0_2.powerValueLabel
  L6_2 = L4_2
  L7_2 = " + "
  L8_2 = L1_1
  L8_2 = L8_2.adjustNumber
  L9_2 = L3_1
  L9_2 = L9_2.stringThousandCommaSeperated
  L10_2 = A0_2.building
  L11_2 = L10_2
  L10_2 = L10_2.benefitFromAssignedCards
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L10_2(L11_2)
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L6_2 = L6_2 .. L7_2 .. L8_2
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
  L5_2 = A0_2.statusValueLabel
  L6_2 = L1_1
  L6_2 = L6_2.Strong
  L5_2.text = L6_2
  L5_2 = A0_2.statusValueLabel
  L6_2 = L1_1
  L6_2 = L6_2.adjustX
  L7_2 = A0_2.statusLabel
  L7_2 = L7_2.width
  L7_2 = 120 + L7_2
  L7_2 = L7_2 + 5
  L8_2 = A0_2.statusValueLabel
  L8_2 = L8_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L6_2 = L6_2(L7_2)
  L5_2.x = L6_2
  L5_2 = A0_2.cardBenefitValue
  L6_2 = L1_1
  L6_2 = L6_2.adjustNumber
  L7_2 = L3_1
  L7_2 = L7_2.stringThousandCommaSeperated
  L8_2 = A0_2.building
  L9_2 = L8_2
  L8_2 = L8_2.benefitFromAssignedCards
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2)
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L5_2.text = L6_2
  L5_2 = A0_2.cardBenefitValue
  L6_2 = L1_1
  L6_2 = L6_2.adjustX
  L7_2 = A0_2.cardBenefitLabel
  L7_2 = L7_2.width
  L7_2 = 20 + L7_2
  L7_2 = L7_2 + 5
  L8_2 = A0_2.cardBenefitValue
  L8_2 = L8_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L6_2 = L6_2(L7_2)
  L5_2.x = L6_2
  L5_2 = A0_2.levelLabel
  L6_2 = L1_1
  L6_2 = L6_2.Level
  L7_2 = ": "
  L8_2 = L1_1
  L8_2 = L8_2.adjustNumber
  L9_2 = A0_2.building
  L9_2 = L9_2.level
  L8_2 = L8_2(L9_2)
  L6_2 = L6_2 .. L7_2 .. L8_2
  L5_2.text = L6_2
end

repaint = L13_1

function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  if not A2_2 then
    L3_2 = {}
    A2_2 = L3_2
  end
  L3_2 = setmetatable
  L4_2 = A2_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  A0_2.__index = A0_2
  A2_2.type = A1_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  A2_2.view = L3_2
  L3_2 = nil
  L4_2 = nil
  L5_2 = A2_2.type
  if L5_2 == "defense" then
    L5_2 = mainPlayer
    L5_2 = L5_2.tribe
    L5_2 = L5_2.buildings
    L5_2 = L5_2.defense
    A2_2.building = L5_2
    L5_2 = L1_1
    L5_2 = L5_2["current defense"]
    L6_2 = " :"
    L3_2 = L5_2 .. L6_2
    L5_2 = L1_1
    L4_2 = L5_2["defence description"]
    L5_2 = A2_2.building
    L5_2 = L5_2.assignedCards
    A2_2.assignedCards = L5_2
  else
    L5_2 = A2_2.type
    if L5_2 == "attack" then
      L5_2 = mainPlayer
      L5_2 = L5_2.tribe
      L5_2 = L5_2.buildings
      L5_2 = L5_2.offense
      A2_2.building = L5_2
      L5_2 = L1_1
      L5_2 = L5_2["current attack"]
      L6_2 = " :"
      L3_2 = L5_2 .. L6_2
      L5_2 = L1_1
      L4_2 = L5_2["attack description"]
      L5_2 = A2_2.building
      L5_2 = L5_2.assignedCards
      A2_2.assignedCards = L5_2
    end
  end
  L5_2 = A2_2.building
  L5_2 = L5_2.assignedCards
  A2_2.assignedCards = L5_2
  L5_2 = A2_2.building
  L6_2 = L5_2
  L5_2 = L5_2.benefitFromLevel
  L5_2 = L5_2(L6_2)
  L6_2 = A2_2.building
  L7_2 = L6_2
  L6_2 = L6_2.benefitFromAssignedCards
  L6_2 = L6_2(L7_2)
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = A2_2.view
  L9_2 = L3_2
  L10_2 = 0
  L11_2 = 0
  L12_2 = L0_1
  L12_2 = L12_2.fontForSubtitle
  L12_2 = L12_2()
  L13_2 = 12
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  A2_2.currentPower = L7_2
  L7_2 = A2_2.currentPower
  L8_2 = L7_2
  L7_2 = L7_2.setFillColor
  L9_2 = L0_1
  L9_2 = L9_2.darkBlueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L7_2 = A2_2.currentPower
  L8_2 = L1_1
  L8_2 = L8_2.adjustX
  L9_2 = A2_2.currentPower
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L9_2 = 120 + L9_2
  L8_2 = L8_2(L9_2)
  L7_2.x = L8_2
  L7_2 = A2_2.currentPower
  L8_2 = A2_2.currentPower
  L8_2 = L8_2.height
  L8_2 = L8_2 / 2
  L8_2 = 25 + L8_2
  L7_2.y = L8_2
  L7_2 = system
  L7_2 = L7_2.getInfo
  L8_2 = "platformName"
  L7_2 = L7_2(L8_2)
  if L7_2 == "iPhone OS" then
    L7_2 = A2_2.currentPower
    L8_2 = A2_2.currentPower
    L8_2 = L8_2.x
    L8_2 = L8_2 - 1
    L7_2.x = L8_2
  end
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = A2_2.view
  L9_2 = L1_1
  L9_2 = L9_2.adjustNumber
  L10_2 = L3_1
  L10_2 = L10_2.stringThousandCommaSeperated
  L11_2 = " "
  L12_2 = L6_2
  L11_2 = L11_2 .. L12_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2(L11_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2 = 0
  L11_2 = 0
  L12_2 = L0_1
  L12_2 = L12_2.fontForTitle
  L12_2 = L12_2()
  L13_2 = 12
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  A2_2.powerValueLabel = L7_2
  L7_2 = A2_2.powerValueLabel
  L8_2 = L7_2
  L7_2 = L7_2.setFillColor
  L9_2 = L0_1
  L9_2 = L9_2.darkBlueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L7_2 = A2_2.powerValueLabel
  L8_2 = L1_1
  L8_2 = L8_2.adjustX
  L9_2 = A2_2.currentPower
  L9_2 = L9_2.x
  L10_2 = A2_2.currentPower
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L9_2 = L9_2 + 5
  L10_2 = A2_2.powerValueLabel
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L8_2 = L8_2(L9_2)
  L7_2.x = L8_2
  L7_2 = A2_2.powerValueLabel
  L8_2 = A2_2.currentPower
  L8_2 = L8_2.y
  L7_2.y = L8_2
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = A2_2.view
  L9_2 = L1_1
  L9_2 = L9_2.status
  L10_2 = " :"
  L9_2 = L9_2 .. L10_2
  L10_2 = 0
  L11_2 = 0
  L12_2 = L0_1
  L12_2 = L12_2.fontForSubtitle
  L12_2 = L12_2()
  L13_2 = 12
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  A2_2.statusLabel = L7_2
  L7_2 = A2_2.statusLabel
  L8_2 = L7_2
  L7_2 = L7_2.setFillColor
  L9_2 = L0_1
  L9_2 = L9_2.darkBlueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L7_2 = A2_2.statusLabel
  L8_2 = L1_1
  L8_2 = L8_2.adjustX
  L9_2 = A2_2.statusLabel
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L9_2 = 120 + L9_2
  L8_2 = L8_2(L9_2)
  L7_2.x = L8_2
  L7_2 = A2_2.statusLabel
  L8_2 = A2_2.statusLabel
  L8_2 = L8_2.height
  L8_2 = L8_2 / 2
  L8_2 = 45 + L8_2
  L7_2.y = L8_2
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = A2_2.view
  L9_2 = L1_1
  L9_2 = L9_2.Strong
  L10_2 = 0
  L11_2 = 0
  L12_2 = L0_1
  L12_2 = L12_2.fontForTitle
  L12_2 = L12_2()
  L13_2 = 12
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  A2_2.statusValueLabel = L7_2
  L7_2 = A2_2.statusValueLabel
  L8_2 = L7_2
  L7_2 = L7_2.setFillColor
  L9_2 = L0_1
  L9_2 = L9_2.darkBlueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L7_2 = A2_2.statusValueLabel
  L8_2 = L1_1
  L8_2 = L8_2.adjustX
  L9_2 = A2_2.statusLabel
  L9_2 = L9_2.x
  L10_2 = A2_2.statusLabel
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L9_2 = L9_2 + 5
  L10_2 = A2_2.statusValueLabel
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L8_2 = L8_2(L9_2)
  L7_2.x = L8_2
  L7_2 = A2_2.statusValueLabel
  L8_2 = A2_2.statusLabel
  L8_2 = L8_2.y
  L7_2.y = L8_2
  L7_2 = system
  L7_2 = L7_2.getInfo
  L8_2 = "build"
  L7_2 = L7_2(L8_2)
  if "2013.1137" < L7_2 then
    L7_2 = system
    L7_2 = L7_2.getInfo
    L8_2 = "platformName"
    L7_2 = L7_2(L8_2)
    if L7_2 ~= "Android" then
      L7_2 = L1_1
      L7_2 = L7_2.lang
      if L7_2 == "fa" then
        goto lbl_245
      end
    end
  end
  L7_2 = L1_1
  L7_2 = L7_2.lang
  if L7_2 == "ar" then
    ::lbl_245::
    L7_2 = {}
    L8_2 = A2_2.view
    L7_2.parent = L8_2
    L7_2.text = L4_2
    L7_2.x = 0
    L7_2.y = 0
    L7_2.width = 330
    L7_2.height = 60
    L8_2 = L0_1
    L8_2 = L8_2.fontForSubtitle
    L8_2 = L8_2()
    L7_2.font = L8_2
    L7_2.fontSize = 10
    L7_2.align = "right"
    L8_2 = display
    L8_2 = L8_2.newText
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    A2_2.description = L8_2
  else
    L7_2 = display
    L7_2 = L7_2.newText
    L8_2 = A2_2.view
    L9_2 = L4_2
    L10_2 = 0
    L11_2 = 0
    L12_2 = 330
    L13_2 = 60
    L14_2 = L0_1
    L14_2 = L14_2.fontForSubtitle
    L14_2 = L14_2()
    L15_2 = 10
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    A2_2.description = L7_2
  end
  L7_2 = A2_2.description
  L8_2 = L7_2
  L7_2 = L7_2.setFillColor
  L9_2 = L0_1
  L9_2 = L9_2.darkBlueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L7_2 = A2_2.description
  L8_2 = L1_1
  L8_2 = L8_2.adjustX
  L9_2 = A2_2.description
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L9_2 = 120 + L9_2
  L8_2 = L8_2(L9_2)
  L7_2.x = L8_2
  L7_2 = A2_2.description
  L8_2 = A2_2.description
  L8_2 = L8_2.height
  L8_2 = L8_2 / 2
  L8_2 = 65 + L8_2
  L7_2.y = L8_2
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = A2_2.view
  L9_2 = L0_1
  L9_2 = L9_2.Path_Assets
  L10_2 = "Buildings/FC-listellipse-views.png"
  L9_2 = L9_2 .. L10_2
  L10_2 = 90
  L11_2 = 90
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L8_2 = L1_1
  L8_2 = L8_2.adjustX
  L9_2 = L7_2.width
  L9_2 = L9_2 / 2
  L9_2 = 20 + L9_2
  L8_2 = L8_2(L9_2)
  L7_2.x = L8_2
  L8_2 = L7_2.height
  L8_2 = L8_2 / 2
  L8_2 = 15 + L8_2
  L7_2.y = L8_2
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = A2_2.view
  L10_2 = L1_1
  L10_2 = L10_2.Level
  L11_2 = ": "
  L12_2 = L1_1
  L12_2 = L12_2.adjustNumber
  L13_2 = A2_2.building
  L13_2 = L13_2.level
  L12_2 = L12_2(L13_2)
  L10_2 = L10_2 .. L11_2 .. L12_2
  L11_2 = 0
  L12_2 = 0
  L13_2 = L0_1
  L13_2 = L13_2.fontForTitle
  L13_2 = L13_2()
  L14_2 = 12
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  A2_2.levelLabel = L8_2
  L8_2 = A2_2.levelLabel
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = L0_1
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = A2_2.levelLabel
  L9_2 = L1_1
  L9_2 = L9_2.adjustX
  L10_2 = L7_2.width
  L10_2 = L10_2 / 2
  L10_2 = 20 + L10_2
  L9_2 = L9_2(L10_2)
  L8_2.x = L9_2
  L8_2 = A2_2.levelLabel
  L9_2 = L7_2.y
  L10_2 = L7_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L9_2 = L9_2 + 10
  L8_2.y = L9_2
  L8_2 = nil
  L9_2 = A2_2.type
  if L9_2 == "defense" then
    L9_2 = display
    L9_2 = L9_2.newImageRect
    L10_2 = A2_2.view
    L11_2 = L0_1
    L11_2 = L11_2.Path_Assets
    L12_2 = "Buildings/FC-Defence.png"
    L11_2 = L11_2 .. L12_2
    L12_2 = 80
    L13_2 = 90
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    L8_2 = L9_2
  else
    L9_2 = A2_2.type
    if L9_2 == "attack" then
      L9_2 = display
      L9_2 = L9_2.newImageRect
      L10_2 = A2_2.view
      L11_2 = L0_1
      L11_2 = L11_2.Path_Assets
      L12_2 = "Buildings/FC-Attack.png"
      L11_2 = L11_2 .. L12_2
      L12_2 = 66
      L13_2 = 90
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      L8_2 = L9_2
    end
  end
  L9_2 = L1_1
  L9_2 = L9_2.adjustX
  L10_2 = L7_2.width
  L10_2 = L10_2 / 2
  L10_2 = 20 + L10_2
  L9_2 = L9_2(L10_2)
  L8_2.x = L9_2
  L9_2 = L7_2.y
  L8_2.y = L9_2
  L9_2 = display
  L9_2 = L9_2.newRect
  L10_2 = A2_2.view
  L11_2 = 0
  L12_2 = display
  L12_2 = L12_2.contentHeight
  L12_2 = L12_2 / 2
  L12_2 = L12_2 - 30
  L13_2 = display
  L13_2 = L13_2.contentWidth
  L13_2 = L13_2 - 30
  L14_2 = 1.5
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L10_2 = display
  L10_2 = L10_2.contentWidth
  L10_2 = L10_2 / 2
  L9_2.x = L10_2
  L11_2 = L9_2
  L10_2 = L9_2.setFillColor
  L12_2 = L0_1
  L12_2 = L12_2.blueColor
  L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2 = display
  L10_2 = L10_2.newText
  L11_2 = A2_2.view
  L12_2 = L1_1
  L12_2 = L12_2["Card Benefit"]
  L13_2 = " :"
  L12_2 = L12_2 .. L13_2
  L13_2 = 0
  L14_2 = 0
  L15_2 = L0_1
  L15_2 = L15_2.fontForSubtitle
  L15_2 = L15_2()
  L16_2 = 12
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  A2_2.cardBenefitLabel = L10_2
  L10_2 = A2_2.cardBenefitLabel
  L11_2 = L10_2
  L10_2 = L10_2.setFillColor
  L12_2 = L0_1
  L12_2 = L12_2.darkBlueColor
  L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2 = A2_2.cardBenefitLabel
  L11_2 = L1_1
  L11_2 = L11_2.adjustX
  L12_2 = A2_2.cardBenefitLabel
  L12_2 = L12_2.width
  L12_2 = L12_2 / 2
  L12_2 = 20 + L12_2
  L11_2 = L11_2(L12_2)
  L10_2.x = L11_2
  L10_2 = A2_2.cardBenefitLabel
  L11_2 = L9_2.y
  L11_2 = L11_2 + 5
  L12_2 = A2_2.cardBenefitLabel
  L12_2 = L12_2.height
  L12_2 = L12_2 / 2
  L11_2 = L11_2 + L12_2
  L10_2.y = L11_2
  L10_2 = display
  L10_2 = L10_2.newText
  L11_2 = A2_2.view
  L12_2 = L1_1
  L12_2 = L12_2.adjustNumber
  L13_2 = "200"
  L12_2 = L12_2(L13_2)
  L13_2 = 0
  L14_2 = 0
  L15_2 = L0_1
  L15_2 = L15_2.fontForTitle
  L15_2 = L15_2()
  L16_2 = 12
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  A2_2.cardBenefitValue = L10_2
  L10_2 = A2_2.cardBenefitValue
  L11_2 = L10_2
  L10_2 = L10_2.setFillColor
  L12_2 = L0_1
  L12_2 = L12_2.darkBlueColor
  L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2 = A2_2.cardBenefitValue
  L11_2 = L1_1
  L11_2 = L11_2.adjustX
  L12_2 = A2_2.cardBenefitLabel
  L12_2 = L12_2.x
  L13_2 = A2_2.cardBenefitLabel
  L13_2 = L13_2.width
  L13_2 = L13_2 / 2
  L12_2 = L12_2 + L13_2
  L12_2 = L12_2 + 5
  L13_2 = A2_2.cardBenefitValue
  L13_2 = L13_2.width
  L13_2 = L13_2 / 2
  L12_2 = L12_2 + L13_2
  L11_2 = L11_2(L12_2)
  L10_2.x = L11_2
  L10_2 = A2_2.cardBenefitValue
  L11_2 = A2_2.cardBenefitLabel
  L11_2 = L11_2.y
  L10_2.y = L11_2
  L10_2 = {}
  L11_2 = {}
  L12_2 = {}
  L13_2 = {}
  L14_2 = {}
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L10_2[4] = L14_2
  A2_2.cards = L10_2
  return A2_2
end

new = L13_1

function L13_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = print
  L2_2 = "SHOW CALLED FOR MILITARY VIEW !!!!!!!!!!!!!!"
  L3_2 = A0_2.type
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.repaint
  L1_2(L2_2)
end

show = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = string
  L1_2 = L1_2.find
  L2_2 = L4_1
  L2_2 = L2_2.baseCards
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.image
  L3_2 = "lvl"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = string
  L2_2 = L2_2.sub
  L3_2 = L4_1
  L3_2 = L3_2.baseCards
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.image
  L4_2 = 1
  L5_2 = L1_2 - 2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  return L2_2
end

findTheFolderName = L13_1

function L13_1(A0_2)
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

getHeroImagePath = L13_1
