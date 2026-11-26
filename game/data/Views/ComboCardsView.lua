local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
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
L3_1 = require
L4_1 = "Views.CardView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Models.Card"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Components.TDGoldLabelView"
L5_1 = L5_1(L6_1)
L6_1 = setmetatable
L7_1 = _M
L8_1 = {}
L8_1.__index = L0_1
L6_1(L7_1, L8_1)

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = display
  L2_2 = L2_2.newImageRect
  L3_2 = A0_2
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "Combos/seal"
  L6_2 = A1_2
  L7_2 = ".png"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
  L5_2 = 30
  L6_2 = 30
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2.x = 40
  L2_2.y = 40
  L2_2.xScale = 2
  L2_2.yScale = 2
  L2_2.rotation = -45
  L2_2.alpha = 0
  L3_2 = transition
  L3_2 = L3_2.to
  L4_2 = L2_2
  L5_2 = {}
  L5_2.time = 300
  L5_2.alpha = 0.7
  L5_2.x = 15
  L5_2.y = 70
  L5_2.xScale = 0.8
  L5_2.yScale = 0.8
  L6_2 = easing
  L6_2 = L6_2.inBounce
  L5_2.transition = L6_2
  L5_2.tag = "comboListView"
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L2_2
    L2_3 = {}
    L2_3.time = 150
    L2_3.alpha = 1
    L2_3.xScale = 1
    L2_3.yScale = 1
    L2_3.alpha = 1
    L3_3 = easing
    L3_3 = L3_3.inSine
    L2_3.transition = L3_3
    L2_3.tag = "comboListView"
    L0_3(L1_3, L2_3)
  end
  
  L5_2.onComplete = L6_2
  L3_2(L4_2, L5_2)
end

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = 75
  L3_2 = 101.25
  L4_2 = 1
  L5_2 = A1_2.count
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A1_2.discovered
    if L8_2 then
      L8_2 = L4_1
      L8_2 = L8_2.baseCardWithId
      L9_2 = A1_2.sample
      L9_2 = L9_2[L7_2]
      L9_2 = L9_2.base_card_id
      L8_2 = L8_2(L9_2)
      L9_2 = L4_1
      L10_2 = L9_2
      L9_2 = L9_2.new
      L11_2 = {}
      L12_2 = L8_2.fruitId
      L11_2.fruitId = L12_2
      L12_2 = L8_2.id
      L11_2.id = L12_2
      L12_2 = L8_2.name
      L11_2.name = L12_2
      L12_2 = A1_2.sample
      L12_2 = L12_2[L7_2]
      L12_2 = L12_2.power
      L11_2.power = L12_2
      L12_2 = L8_2.cooldown
      L11_2.cooldown = L12_2
      L12_2 = L8_2.image
      L11_2.image = L12_2
      L12_2 = L8_2.rarity
      L11_2.rarity = L12_2
      L12_2 = L8_2.powerLimit
      L11_2.powerLimit = L12_2
      L12_2 = L8_2.virtualRarity
      L11_2.virtualRarity = L12_2
      L12_2 = L8_2.veteran_level
      L11_2.veteran_level = L12_2
      L12_2 = L8_2.description
      L11_2.description = L12_2
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = A1_2.sample
      L10_2 = L10_2[L7_2]
      L10_2 = L10_2.base_card_id
      L9_2.baseId = L10_2
      L10_2 = A0_2.cardViewInstance
      L11_2 = L3_1
      L12_2 = L11_2
      L11_2 = L11_2.new
      L13_2 = "big"
      L14_2 = L9_2
      L15_2 = nil
      L16_2 = {}
      L16_2.cardWidth = L2_2
      L16_2.cardHeight = L3_2
      L16_2.fontSize = 8
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
      L10_2[L7_2] = L11_2
      L10_2 = A0_2.cardViewInstance
      L10_2 = L10_2[L7_2]
      L11_2 = L10_2
      L10_2 = L10_2.createCard
      L12_2 = L9_2
      L13_2 = nil
      L14_2 = true
      L10_2(L11_2, L12_2, L13_2, L14_2)
      L10_2 = 1
      L11_2 = A0_2.cardViewInstance
      L11_2 = L11_2[L7_2]
      L11_2 = L11_2.levelStars
      L11_2 = #L11_2
      L12_2 = 1
      for L13_2 = L10_2, L11_2, L12_2 do
        L14_2 = A0_2.cardViewInstance
        L14_2 = L14_2[L7_2]
        L14_2 = L14_2.levelStars
        L14_2 = L14_2[L13_2]
        L14_2.alpha = 0
      end
      L10_2 = A1_2.count
      if L7_2 == L10_2 then
        L10_2 = L6_1
        L11_2 = A0_2.cardViewInstance
        L11_2 = L11_2[L7_2]
        L11_2 = L11_2.view
        L12_2 = A1_2.benefit
        L10_2(L11_2, L12_2)
      end
    else
      L8_2 = A0_2.cardViewInstance
      L9_2 = L3_1
      L10_2 = L9_2
      L9_2 = L9_2.new
      L11_2 = "big"
      L12_2 = nil
      L13_2 = nil
      L14_2 = {}
      L14_2.cardWidth = L2_2
      L14_2.cardHeight = L3_2
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
      L8_2[L7_2] = L9_2
    end
    L8_2 = A0_2.cardViewInstance
    L8_2 = L8_2[L7_2]
    L8_2 = L8_2.view
    L8_2.anchorChildren = true
    L8_2 = A0_2.cardViewInstance
    L8_2 = L8_2[L7_2]
    L8_2 = L8_2.view
    L8_2.anchorX = 0.5
    L8_2 = A0_2.cardViewInstance
    L8_2 = L8_2[L7_2]
    L8_2 = L8_2.view
    L8_2.anchorY = 0.5
    L8_2 = A1_2.count
    L8_2 = L8_2 % 2
    if L8_2 == 0 then
      L8_2 = L7_2 % 2
      if L8_2 == 1 then
        L8_2 = A0_2.cardViewInstance
        L8_2 = L8_2[L7_2]
        L8_2 = L8_2.view
        L9_2 = A0_2.middleOfView
        L9_2 = L9_2 - 20
        L10_2 = L2_2 / 4
        L11_2 = L7_2 - 1
        L10_2 = L10_2 * L11_2
        L9_2 = L9_2 - L10_2
        L8_2.x = L9_2
        L8_2 = A0_2.cardViewInstance
        L8_2 = L8_2[L7_2]
        L8_2 = L8_2.view
        L9_2 = display
        L9_2 = L9_2.contentHeight
        L9_2 = L9_2 - 70
        L9_2 = L9_2 / 2
        L10_2 = L7_2 - 1
        L10_2 = 4 * L10_2
        L9_2 = L9_2 + L10_2
        L8_2.y = L9_2
        L8_2 = A0_2.cardViewInstance
        L8_2 = L8_2[L7_2]
        L8_2 = L8_2.view
        L9_2 = -5 * L7_2
        L8_2.rotation = L9_2
      else
        L8_2 = A0_2.cardViewInstance
        L8_2 = L8_2[L7_2]
        L8_2 = L8_2.view
        L9_2 = A0_2.middleOfView
        L9_2 = L9_2 + 20
        L10_2 = L2_2 / 4
        L11_2 = L7_2 - 2
        L10_2 = L10_2 * L11_2
        L9_2 = L9_2 + L10_2
        L8_2.x = L9_2
        L8_2 = A0_2.cardViewInstance
        L8_2 = L8_2[L7_2]
        L8_2 = L8_2.view
        L9_2 = display
        L9_2 = L9_2.contentHeight
        L9_2 = L9_2 - 70
        L9_2 = L9_2 / 2
        L10_2 = L7_2 - 2
        L10_2 = 4 * L10_2
        L9_2 = L9_2 + L10_2
        L8_2.y = L9_2
        L8_2 = A0_2.cardViewInstance
        L8_2 = L8_2[L7_2]
        L8_2 = L8_2.view
        L9_2 = L7_2 - 1
        L9_2 = 5 * L9_2
        L8_2.rotation = L9_2
      end
    else
      L8_2 = L7_2 % 2
      if L8_2 == 1 then
        L8_2 = 1
        if L7_2 == 1 then
          L8_2 = -1
        end
        L9_2 = A0_2.cardViewInstance
        L9_2 = L9_2[L7_2]
        L9_2 = L9_2.view
        L10_2 = 15 * L8_2
        L9_2.rotation = L10_2
        L9_2 = A0_2.cardViewInstance
        L9_2 = L9_2[L7_2]
        L9_2 = L9_2.view
        L10_2 = A0_2.middleOfView
        L11_2 = L2_2 / 2
        L11_2 = 20 + L11_2
        L11_2 = L11_2 - 5
        L11_2 = L8_2 * L11_2
        L10_2 = L10_2 + L11_2
        L9_2.x = L10_2
        L9_2 = A0_2.cardViewInstance
        L9_2 = L9_2[L7_2]
        L9_2 = L9_2.view
        L10_2 = display
        L10_2 = L10_2.contentHeight
        L10_2 = L10_2 - 70
        L10_2 = L10_2 / 2
        L10_2 = L10_2 + 8
        L9_2.y = L10_2
      else
        L8_2 = A0_2.cardViewInstance
        L8_2 = L8_2[L7_2]
        L8_2 = L8_2.view
        L9_2 = A0_2.middleOfView
        L8_2.x = L9_2
        L8_2 = A0_2.cardViewInstance
        L8_2 = L8_2[L7_2]
        L8_2 = L8_2.view
        L9_2 = display
        L9_2 = L9_2.contentHeight
        L9_2 = L9_2 - 70
        L9_2 = L9_2 / 2
        L8_2.y = L9_2
      end
    end
    L8_2 = A0_2.view
    L9_2 = L8_2
    L8_2 = L8_2.insert
    L10_2 = A0_2.cardViewInstance
    L10_2 = L10_2[L7_2]
    L10_2 = L10_2.view
    L8_2(L9_2, L10_2)
  end
  L4_2 = A1_2.count
  if L4_2 == 4 then
    L4_2 = A0_2.view
    L5_2 = L4_2
    L4_2 = L4_2.insert
    L6_2 = A0_2.cardViewInstance
    L6_2 = L6_2[3]
    L6_2 = L6_2.view
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.view
    L5_2 = L4_2
    L4_2 = L4_2.insert
    L6_2 = A0_2.cardViewInstance
    L6_2 = L6_2[1]
    L6_2 = L6_2.view
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.view
    L5_2 = L4_2
    L4_2 = L4_2.insert
    L6_2 = A0_2.cardViewInstance
    L6_2 = L6_2[2]
    L6_2 = L6_2.view
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.view
    L5_2 = L4_2
    L4_2 = L4_2.insert
    L6_2 = A0_2.cardViewInstance
    L6_2 = L6_2[4]
    L6_2 = L6_2.view
    L4_2(L5_2, L6_2)
  end
end

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = L0_1
  L2_2 = L2_2.new
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = display
  L3_2 = L3_2.contentWidth
  L3_2 = L3_2 - 171
  L3_2 = L3_2 / 2
  L3_2 = L3_2 + 171
  L3_2 = L3_2 - 4
  L2_2.middleOfView = L3_2
  L3_2 = {}
  L4_2 = L2_2.view
  L3_2.parent = L4_2
  L3_2.text = ""
  L4_2 = display
  L4_2 = L4_2.contentWidth
  L4_2 = L4_2 / 2
  L3_2.width = L4_2
  L3_2.height = 0
  L4_2 = L1_1
  L4_2 = L4_2.textStyle
  L4_2 = L4_2[5]
  L4_2 = L4_2.font
  L3_2.font = L4_2
  L4_2 = L1_1
  L4_2 = L4_2.textStyle
  L4_2 = L4_2[5]
  L4_2 = L4_2.fontSize
  L3_2.fontSize = L4_2
  L3_2.align = "center"
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L2_2.comboExplanationLabel = L4_2
  L4_2 = L2_2.comboExplanationLabel
  L5_2 = L4_2
  L4_2 = L4_2.setFillColor
  L6_2 = L1_1
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.lightBlueColor
  L6_2 = L6_2[1]
  L7_2 = L1_1
  L7_2 = L7_2.colorsSet
  L7_2 = L7_2.lightBlueColor
  L7_2 = L7_2[2]
  L8_2 = L1_1
  L8_2 = L8_2.colorsSet
  L8_2 = L8_2.lightBlueColor
  L8_2 = L8_2[3]
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = L2_2.comboExplanationLabel
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 - 171
  L5_2 = L5_2 - 8
  L5_2 = L5_2 / 2
  L5_2 = L5_2 + 171
  L4_2.x = L5_2
  L4_2 = L2_2.comboExplanationLabel
  L5_2 = display
  L5_2 = L5_2.contentHeight
  L6_2 = L2_2.comboExplanationLabel
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 - 35
  L4_2.y = L5_2
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = L2_2.view
  L6_2 = ""
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = L1_1
  L11_2 = L11_2.textStyle
  L11_2 = L11_2[5]
  L11_2 = L11_2.font
  L12_2 = 12
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L2_2.detailsDataLabel = L4_2
  L4_2 = L2_2.detailsDataLabel
  L5_2 = L4_2
  L4_2 = L4_2.setFillColor
  L6_2 = L1_1
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.darkBlueColor
  L6_2 = L6_2[1]
  L7_2 = L1_1
  L7_2 = L7_2.colorsSet
  L7_2 = L7_2.darkBlueColor
  L7_2 = L7_2[2]
  L8_2 = L1_1
  L8_2 = L8_2.colorsSet
  L8_2 = L8_2.darkBlueColor
  L8_2 = L8_2[3]
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = L2_2.detailsDataLabel
  L5_2 = L2_2.comboExplanationLabel
  L5_2 = L5_2.x
  L4_2.x = L5_2
  L4_2 = L2_2.detailsDataLabel
  L5_2 = L2_2.comboExplanationLabel
  L5_2 = L5_2.y
  L6_2 = L2_2.detailsDataLabel
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 - 35
  L4_2.y = L5_2
  L4_2 = nil
  L5_2 = L2_1
  L5_2 = L5_2.lang
  if L5_2 ~= "fa" then
    L5_2 = L2_1
    L5_2 = L5_2.lang
    if L5_2 ~= "ar" then
      goto lbl_124
    end
  end
  L4_2 = "R"
  goto lbl_125
  ::lbl_124::
  L4_2 = "L"
  ::lbl_125::
  L5_2 = {}
  L5_2.value = 0
  L6_2 = {}
  L7_2 = L1_1
  L7_2 = L7_2.colorsSet
  L7_2 = L7_2.darkBlueColor
  L7_2 = L7_2[1]
  L8_2 = L1_1
  L8_2 = L8_2.colorsSet
  L8_2 = L8_2.darkBlueColor
  L8_2 = L8_2[2]
  L9_2 = L1_1
  L9_2 = L9_2.colorsSet
  L9_2 = L9_2.darkBlueColor
  L9_2 = L9_2[3]
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L5_2.labelColor = L6_2
  L6_2 = {}
  L7_2 = L1_1
  L7_2 = L7_2.colorsSet
  L7_2 = L7_2.darkBlueColor
  L7_2 = L7_2[1]
  L8_2 = L1_1
  L8_2 = L8_2.colorsSet
  L8_2 = L8_2.darkBlueColor
  L8_2 = L8_2[2]
  L9_2 = L1_1
  L9_2 = L9_2.colorsSet
  L9_2 = L9_2.darkBlueColor
  L9_2 = L9_2[3]
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L5_2.labelAnimationColor = L6_2
  L6_2 = Constants
  L6_2 = L6_2.fontForTitle
  L6_2 = L6_2()
  L5_2.font = L6_2
  L5_2.fontSize = 13
  L5_2.mode = L4_2
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "BattleItems/potion.png"
  L6_2 = L6_2 .. L7_2
  L5_2.image = L6_2
  L5_2.widthIm = 14
  L5_2.heightIm = 23
  L6_2 = L5_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L2_2.potionCostLabel = L6_2
  L6_2 = L2_2.potionCostLabel
  L7_2 = L2_2.comboExplanationLabel
  L7_2 = L7_2.x
  L6_2.x = L7_2
  L6_2 = L2_2.potionCostLabel
  L7_2 = L2_2.detailsDataLabel
  L7_2 = L7_2.y
  L8_2 = L2_2.potionCostLabel
  L8_2 = L8_2.height
  L8_2 = L8_2 / 2
  L7_2 = L7_2 - L8_2
  L7_2 = L7_2 - 25
  L6_2.y = L7_2
  L6_2 = L2_2.potionCostLabel
  L6_2.alpha = 0
  L6_2 = L2_2.view
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L2_2.potionCostLabel
  L8_2 = L8_2.view
  L6_2(L7_2, L8_2)
  L6_2 = {}
  L2_2.cardViewInstance = L6_2
  return L2_2
end

new = L8_1

function L8_1(A0_2)
  local L1_2, L2_2
  if A0_2 == 0 then
    L2_2 = L2_1
    L1_2 = L2_2["No Matter"]
  elseif A0_2 == 1 then
    L2_2 = L2_1
    L1_2 = L2_2.Same
  elseif A0_2 == 2 then
    L2_2 = L2_1
    L1_2 = L2_2.Different
  elseif A0_2 == 3 then
    L2_2 = L2_1
    L1_2 = L2_2.Max
  elseif A0_2 == 4 then
    L2_2 = L2_1
    L1_2 = L2_2.Sequential
  end
  return L1_2
end

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = 1
  L3_2 = A0_2.cardViewInstance
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.cardViewInstance
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.view
    L7_2 = L6_2
    L6_2 = L6_2.removeSelf
    L6_2(L7_2)
    L6_2 = A0_2.cardViewInstance
    L6_2[L5_2] = nil
  end
  L2_2 = A1_2.discovered
  if L2_2 then
    L2_2 = A0_2.comboExplanationLabel
    L3_2 = A1_2.description
    L2_2.text = L3_2
    L2_2 = A0_2.detailsDataLabel
    L3_2 = L2_1
    L3_2 = L3_2.localizedString
    L4_2 = "Description For Details"
    L5_2 = {}
    L6_2 = L8_1
    L7_2 = A1_2.level
    L6_2 = L6_2(L7_2)
    L5_2.level = L6_2
    L6_2 = L8_1
    L7_2 = A1_2.fruit
    L6_2 = L6_2(L7_2)
    L5_2.fruit = L6_2
    L6_2 = L8_1
    L7_2 = A1_2.power
    L6_2 = L6_2(L7_2)
    L5_2.power = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2.text = L3_2
    L2_2 = A1_2.cost
    L3_2 = Constants
    L3_2 = L3_2.Combo_Cost_Modifier
    L2_2 = L2_2 * L3_2
    L3_2 = A0_2.potionCostLabel
    L4_2 = L3_2
    L3_2 = L3_2.setValue
    L5_2 = L2_2
    L6_2 = true
    L7_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = A0_2.potionCostLabel
    L3_2.alpha = 1
  else
    L2_2 = A0_2.comboExplanationLabel
    L3_2 = A1_2.description
    L2_2.text = L3_2
    L2_2 = A0_2.detailsDataLabel
    L2_2.text = ""
    L2_2 = A0_2.potionCostLabel
    L2_2.alpha = 0
  end
  L2_2 = L7_1
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

setValue = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = 1
  L3_2 = A1_2.count
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.cardViewInstance
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.removeSelf
    L6_2(L7_2)
    L6_2 = A0_2.cardViewInstance
    L6_2[L5_2] = nil
  end
end

removeCards = L9_1
