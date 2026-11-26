local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.BaseView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Utils.Toolbox"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Models.Player"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.ActivityIndicatorView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Components.TDProgressBarView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Components.TDMultilineButtonView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "composer"
L7_1 = L7_1(L8_1)
L8_1 = nil
L9_1 = nil
L10_1 = setmetatable
L11_1 = _M
L12_1 = {}
L12_1.__index = L0_1
L10_1(L11_1, L12_1)

function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L4_1
  L1_2 = L1_2.hide
  L1_2()
  L2_2 = A0_2
  L1_2 = A0_2.repaint
  L3_2 = true
  L1_2(L2_2, L3_2)
end

successCallback = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L4_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = L1_1
  L2_2 = L2_2["Fill Out Potion"]
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

failureCallback = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = mainPlayer
  L1_2 = L1_2.potionAmount
  L2_2 = Constants
  L2_2 = L2_2.Potion_Capacity
  if L1_2 >= L2_2 then
    L1_2 = A0_2.increasePotionByOne
    L2_2 = L1_2
    L1_2 = L1_2.setEnabled
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2.fillOutPotions
    L2_2 = L1_2
    L1_2 = L1_2.setEnabled
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2.increasePotionByOne
    L1_2 = L1_2.view
    L1_2.isVisible = false
    L1_2 = A0_2.fillOutPotions
    L1_2 = L1_2.view
    L1_2.isVisible = false
  else
    L1_2 = A0_2.increasePotionByOne
    L2_2 = L1_2
    L1_2 = L1_2.setEnabled
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2.fillOutPotions
    L2_2 = L1_2
    L1_2 = L1_2.setEnabled
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2.increasePotionByOne
    L1_2 = L1_2.view
    L1_2.isVisible = true
    L1_2 = A0_2.fillOutPotions
    L1_2 = L1_2.view
    L1_2.isVisible = true
  end
end

checkButtonsAvailability = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = log3
  L3_2 = "\226\128\161\226\128\161\226\128\161\226\128\161\226\128\161\226\128\161 Potion View Repaint Called \226\128\161\226\128\161\226\128\161\226\128\161\226\128\161\226\128\161"
  L2_2(L3_2)
  L2_2 = mainPlayer
  L2_2 = L2_2.level
  L3_2 = Constants
  L3_2 = L3_2.UnlockLevel_Potions
  if L2_2 < L3_2 then
    L2_2 = L9_1
    L2_2.isVisible = false
    L2_2 = L8_1
    L2_2.isVisible = true
  else
    L2_2 = A0_2.parent
    L2_2 = L2_2.bar
    L3_2 = L2_2
    L2_2 = L2_2.updateGold
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = L9_1
    L2_2.isVisible = true
    L2_2 = L8_1
    L2_2.isVisible = false
    L3_2 = A0_2
    L2_2 = A0_2.checkButtonsAvailability
    L2_2(L3_2)
    L2_2 = A0_2.currentPotionValueLabel
    L3_2 = L1_1
    L3_2 = L3_2.adjustNumber
    L4_2 = L2_1
    L4_2 = L4_2.stringThousandCommaSeperated
    L5_2 = ""
    L6_2 = mainPlayer
    L6_2 = L6_2.potionAmount
    L5_2 = L5_2 .. L6_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L2_2.text = L3_2
    L2_2 = A0_2.currentPotionValueLabel
    L3_2 = L1_1
    L3_2 = L3_2.adjustX
    L4_2 = A0_2.currentPotionLabel
    L4_2 = L4_2.width
    L4_2 = 120 + L4_2
    L4_2 = L4_2 + 5
    L5_2 = A0_2.currentPotionValueLabel
    L5_2 = L5_2.width
    L5_2 = L5_2 / 2
    L4_2 = L4_2 + L5_2
    L3_2 = L3_2(L4_2)
    L2_2.x = L3_2
    L2_2 = A0_2.currentRatioValueLabel
    L3_2 = L1_1
    L3_2 = L3_2.localizedString
    L4_2 = "Potion Price Label"
    L5_2 = {}
    L6_2 = L1_1
    L6_2 = L6_2.adjustNumber
    L7_2 = mainPlayer
    L7_2 = L7_2.potionPrice
    L6_2 = L6_2(L7_2)
    L5_2.price = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2.text = L3_2
    L2_2 = A0_2.currentRatioValueLabel
    L3_2 = L1_1
    L3_2 = L3_2.adjustX
    L4_2 = A0_2.goldToPotionRatioLabel
    L4_2 = L4_2.width
    L4_2 = 120 + L4_2
    L4_2 = L4_2 + 5
    L5_2 = A0_2.currentRatioValueLabel
    L5_2 = L5_2.width
    L5_2 = L5_2 / 2
    L4_2 = L4_2 + L5_2
    L3_2 = L3_2(L4_2)
    L2_2.x = L3_2
    L2_2 = A0_2.potionBar
    L3_2 = L2_2
    L2_2 = L2_2.setValue
    L4_2 = mainPlayer
    L4_2 = L4_2.potionAmount
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2.potionBar
    L2_2 = L2_2.label
    L3_2 = L1_1
    L3_2 = L3_2.adjustNumber
    L4_2 = mainPlayer
    L4_2 = L4_2.potionAmount
    L3_2 = L3_2(L4_2)
    L4_2 = "/"
    L5_2 = L1_1
    L5_2 = L5_2.adjustNumber
    L6_2 = Constants
    L6_2 = L6_2.Potion_Capacity
    L5_2 = L5_2(L6_2)
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2.text = L3_2
    L2_2 = A0_2.fillOutPotions
    L3_2 = L2_2
    L2_2 = L2_2.setSubText
    L4_2 = Constants
    L4_2 = L4_2.Potion_Capacity
    L5_2 = mainPlayer
    L5_2 = L5_2.potionAmount
    L4_2 = L4_2 - L5_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
end

repaint = L10_1

function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = L0_1
  L3_2 = L3_2.new
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  A1_2 = L3_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  L9_1 = L3_2
  L3_2 = A1_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = L9_1
  L3_2(L4_2, L5_2)
  A1_2.parent = A2_2
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A1_2.view
  L5_2 = L1_1
  L5_2 = L5_2.localizedString
  L6_2 = "Lab Is Not Available"
  L7_2 = {}
  L8_2 = L1_1
  L8_2 = L8_2.adjustNumber
  L9_2 = Constants
  L9_2 = L9_2.UnlockLevel_Potions
  L8_2 = L8_2(L9_2)
  L7_2.level = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = 0
  L7_2 = 0
  L8_2 = Constants
  L8_2 = L8_2.fontForTitle
  L8_2 = L8_2()
  L9_2 = 16
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L8_1 = L3_2
  L3_2 = L8_1
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.darkBlueColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L3_2 = L8_1
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L3_2 = L8_1
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L4_2 = L4_2 - 50
  L3_2.y = L4_2
  L3_2 = nil
  L4_2 = nil
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = L9_1
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Buildings/FC-listellipse-views.png"
  L7_2 = L7_2 .. L8_2
  L8_2 = 90
  L9_2 = 90
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L3_2 = L5_2
  L5_2 = L1_1
  L5_2 = L5_2.adjustX
  L6_2 = L3_2.width
  L6_2 = L6_2 / 2
  L6_2 = 20 + L6_2
  L5_2 = L5_2(L6_2)
  L3_2.x = L5_2
  L5_2 = L3_2.height
  L5_2 = L5_2 / 2
  L5_2 = 15 + L5_2
  L3_2.y = L5_2
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = L9_1
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Potion/potionLogo.png"
  L7_2 = L7_2 .. L8_2
  L8_2 = 60
  L9_2 = 100
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L4_2 = L5_2
  L5_2 = L3_2.x
  L4_2.x = L5_2
  L5_2 = L3_2.y
  L4_2.y = L5_2
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L9_1
  L7_2 = L1_1
  L7_2 = L7_2["Current Potion Amount"]
  L8_2 = 0
  L9_2 = 0
  L10_2 = Constants
  L10_2 = L10_2.fontForSubtitle
  L10_2 = L10_2()
  L11_2 = 12
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  A1_2.currentPotionLabel = L5_2
  L5_2 = A1_2.currentPotionLabel
  L6_2 = L1_1
  L6_2 = L6_2.adjustX
  L7_2 = A1_2.currentPotionLabel
  L7_2 = L7_2.width
  L7_2 = L7_2 / 2
  L7_2 = 120 + L7_2
  L6_2 = L6_2(L7_2)
  L5_2.x = L6_2
  L5_2 = A1_2.currentPotionLabel
  L6_2 = A1_2.currentPotionLabel
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L6_2 = 25 + L6_2
  L5_2.y = L6_2
  L5_2 = A1_2.currentPotionLabel
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L9_1
  L7_2 = L1_1
  L7_2 = L7_2["Cost of One Potion"]
  L8_2 = 0
  L9_2 = 0
  L10_2 = Constants
  L10_2 = L10_2.fontForSubtitle
  L10_2 = L10_2()
  L11_2 = 12
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  A1_2.goldToPotionRatioLabel = L5_2
  L5_2 = A1_2.goldToPotionRatioLabel
  L6_2 = L1_1
  L6_2 = L6_2.adjustX
  L7_2 = A1_2.goldToPotionRatioLabel
  L7_2 = L7_2.width
  L7_2 = L7_2 / 2
  L7_2 = 120 + L7_2
  L6_2 = L6_2(L7_2)
  L5_2.x = L6_2
  L5_2 = A1_2.goldToPotionRatioLabel
  L6_2 = A1_2.goldToPotionRatioLabel
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L6_2 = 45 + L6_2
  L5_2.y = L6_2
  L5_2 = A1_2.goldToPotionRatioLabel
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L9_1
  L7_2 = ""
  L8_2 = 0
  L9_2 = 0
  L10_2 = Constants
  L10_2 = L10_2.fontForTitle
  L10_2 = L10_2()
  L11_2 = 12
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  A1_2.currentPotionValueLabel = L5_2
  L5_2 = A1_2.currentPotionValueLabel
  L6_2 = L1_1
  L6_2 = L6_2.adjustX
  L7_2 = A1_2.currentPotionLabel
  L7_2 = L7_2.width
  L7_2 = 120 + L7_2
  L7_2 = L7_2 + 5
  L8_2 = A1_2.currentPotionValueLabel
  L8_2 = L8_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L6_2 = L6_2(L7_2)
  L5_2.x = L6_2
  L5_2 = A1_2.currentPotionValueLabel
  L6_2 = A1_2.currentPotionLabel
  L6_2 = L6_2.y
  L5_2.y = L6_2
  L5_2 = A1_2.currentPotionValueLabel
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L9_1
  L7_2 = L1_1
  L7_2 = L7_2.adjustNumber
  L8_2 = 0
  L7_2 = L7_2(L8_2)
  L8_2 = 0
  L9_2 = 0
  L10_2 = Constants
  L10_2 = L10_2.fontForTitle
  L10_2 = L10_2()
  L11_2 = 12
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  A1_2.currentRatioValueLabel = L5_2
  L5_2 = A1_2.currentRatioValueLabel
  L6_2 = L1_1
  L6_2 = L6_2.adjustX
  L7_2 = A1_2.goldToPotionRatioLabel
  L7_2 = L7_2.width
  L7_2 = 120 + L7_2
  L7_2 = L7_2 + 5
  L8_2 = A1_2.currentRatioValueLabel
  L8_2 = L8_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L6_2 = L6_2(L7_2)
  L5_2.x = L6_2
  L5_2 = A1_2.currentRatioValueLabel
  L6_2 = A1_2.goldToPotionRatioLabel
  L6_2 = L6_2.y
  L5_2.y = L6_2
  L5_2 = A1_2.currentRatioValueLabel
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = system
  L5_2 = L5_2.getInfo
  L6_2 = "build"
  L5_2 = L5_2(L6_2)
  if "2013.1137" < L5_2 then
    L5_2 = system
    L5_2 = L5_2.getInfo
    L6_2 = "platformName"
    L5_2 = L5_2(L6_2)
    if L5_2 ~= "Android" then
      L5_2 = L1_1
      L5_2 = L5_2.lang
      if L5_2 == "fa" then
        goto lbl_252
      end
    end
  end
  L5_2 = L1_1
  L5_2 = L5_2.lang
  if L5_2 == "ar" then
    ::lbl_252::
    L5_2 = {}
    L6_2 = L9_1
    L5_2.parent = L6_2
    L6_2 = L1_1
    L6_2 = L6_2["Potion Lab Desc"]
    L5_2.text = L6_2
    L5_2.x = 0
    L5_2.y = 0
    L5_2.width = 330
    L5_2.height = 60
    L6_2 = Constants
    L6_2 = L6_2.fontForSubtitle
    L6_2 = L6_2()
    L5_2.font = L6_2
    L5_2.fontSize = 10
    L5_2.align = "right"
    L6_2 = display
    L6_2 = L6_2.newText
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    A1_2.potionViewDesc = L6_2
  else
    L5_2 = display
    L5_2 = L5_2.newText
    L6_2 = L9_1
    L7_2 = L1_1
    L7_2 = L7_2["Potion Lab Desc"]
    L8_2 = 0
    L9_2 = 0
    L10_2 = 330
    L11_2 = 60
    L12_2 = Constants
    L12_2 = L12_2.fontForSubtitle
    L12_2 = L12_2()
    L13_2 = 10
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    A1_2.potionViewDesc = L5_2
  end
  L5_2 = A1_2.potionViewDesc
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = A1_2.potionViewDesc
  L6_2 = L1_1
  L6_2 = L6_2.adjustX
  L7_2 = A1_2.potionViewDesc
  L7_2 = L7_2.width
  L7_2 = L7_2 / 2
  L7_2 = 120 + L7_2
  L6_2 = L6_2(L7_2)
  L5_2.x = L6_2
  L5_2 = A1_2.potionViewDesc
  L6_2 = A1_2.potionViewDesc
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L6_2 = 65 + L6_2
  L5_2.y = L6_2
  L5_2 = display
  L5_2 = L5_2.newRect
  L6_2 = L9_1
  L7_2 = display
  L7_2 = L7_2.contentWidth
  L7_2 = L7_2 / 2
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 / 2
  L8_2 = L8_2 - 30
  L9_2 = display
  L9_2 = L9_2.contentWidth
  L9_2 = L9_2 - 30
  L10_2 = 1.5
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  A1_2.horizontalDivider = L5_2
  L5_2 = A1_2.horizontalDivider
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.blueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = mainPlayer
    L0_3 = L0_3.gold
    L1_3 = mainPlayer
    L1_3 = L1_3.potionPrice
    if L0_3 >= L1_3 then
      L0_3 = L4_1
      L0_3 = L0_3.show
      L1_3 = L1_1
      L1_3 = L1_3["Increase the Potion"]
      L0_3(L1_3)
      L0_3 = L3_1
      L0_3 = L0_3.fillPotion
      L1_3 = 1
      
      function L2_3()
        local L0_4, L1_4
        L0_4 = A1_2
        L1_4 = L0_4
        L0_4 = L0_4.successCallback
        L0_4(L1_4)
      end
      
      L3_3 = failureCallback
      L0_3(L1_3, L2_3, L3_3)
    else
      L0_3 = mainPlayer
      L0_3 = L0_3.potionPrice
      L1_3 = mainPlayer
      L1_3 = L1_3.gold
      L0_3 = L0_3 - L1_3
      L1_3 = L1_1
      L1_3 = L1_3.localizedString
      L2_3 = "You need more money"
      L3_3 = {}
      L4_3 = L1_1
      L4_3 = L4_3.adjustNumber
      L5_3 = L2_1
      L5_3 = L5_3.stringThousandCommaSeperated
      L6_3 = ""
      L7_3 = L0_3
      L6_3 = L6_3 .. L7_3
      L5_3, L6_3, L7_3 = L5_3(L6_3)
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      L3_3.money = L4_3
      L1_3 = L1_3(L2_3, L3_3)
      alertText = L1_3
      L1_3 = showSimpleDialog
      L2_3 = L1_1
      L2_3 = L2_3["Fill Out Potion"]
      L3_3 = alertText
      L4_3 = "Cancel"
      L5_3 = nil
      L6_3 = "Get Gold"
      
      function L7_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = L7_1
        L0_4 = L0_4.gotoScene
        L1_4 = "Scenes.Shop"
        L2_4 = {}
        L3_4 = {}
        L3_4.selectedTab = 1
        L2_4.params = L3_4
        L0_4(L1_4, L2_4)
      end
      
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    end
  end
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = Constants
    L0_3 = L0_3.Potion_Capacity
    L1_3 = mainPlayer
    L1_3 = L1_3.potionAmount
    L0_3 = L0_3 - L1_3
    L1_3 = mainPlayer
    L1_3 = L1_3.potionPrice
    L0_3 = L0_3 * L1_3
    L1_3 = nil
    L2_3 = mainPlayer
    L2_3 = L2_3.gold
    if L0_3 <= L2_3 then
      L2_3 = L1_1
      L2_3 = L2_3.localizedString
      L3_3 = "Fill Out Confirmation"
      L4_3 = {}
      L5_3 = L1_1
      L5_3 = L5_3.adjustNumber
      L6_3 = L2_1
      L6_3 = L6_3.stringThousandCommaSeperated
      L7_3 = ""
      L8_3 = L0_3
      L7_3 = L7_3 .. L8_3
      L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
      L4_3.cost = L5_3
      L2_3 = L2_3(L3_3, L4_3)
      L1_3 = L2_3
      L2_3 = showSimpleDialog
      L3_3 = L1_1
      L3_3 = L3_3["Fill Out Potion"]
      L4_3 = L1_3
      L5_3 = L1_1
      L5_3 = L5_3["Fill Out Confirmed"]
      
      function L6_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = L4_1
        L0_4 = L0_4.show
        L1_4 = L1_1
        L1_4 = L1_4["Fill Out Potion"]
        L0_4(L1_4)
        L0_4 = L3_1
        L0_4 = L0_4.fillPotion
        L1_4 = nil
        
        function L2_4()
          local L0_5, L1_5
          L0_5 = A1_2
          L1_5 = L0_5
          L0_5 = L0_5.successCallback
          L0_5(L1_5)
        end
        
        L3_4 = failureCallback
        L0_4(L1_4, L2_4, L3_4)
      end
      
      L7_3 = L1_1
      L7_3 = L7_3["Fill Out Cancelled"]
      
      function L8_3()
        local L0_4, L1_4
        L0_4 = true
        return L0_4
      end
      
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    else
      L2_3 = mainPlayer
      L2_3 = L2_3.gold
      L2_3 = L0_3 - L2_3
      L3_3 = L1_1
      L3_3 = L3_3.localizedString
      L4_3 = "You need more money"
      L5_3 = {}
      L6_3 = L1_1
      L6_3 = L6_3.adjustNumber
      L7_3 = L2_1
      L7_3 = L7_3.stringThousandCommaSeperated
      L8_3 = ""
      L9_3 = L2_3
      L8_3 = L8_3 .. L9_3
      L7_3, L8_3, L9_3 = L7_3(L8_3)
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      L5_3.money = L6_3
      L3_3 = L3_3(L4_3, L5_3)
      L1_3 = L3_3
      L3_3 = showSimpleDialog
      L4_3 = L1_1
      L4_3 = L4_3["Fill Out Potion"]
      L5_3 = L1_3
      L6_3 = "Cancel"
      L7_3 = nil
      L8_3 = "Get Gold"
      
      function L9_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = L7_1
        L0_4 = L0_4.gotoScene
        L1_4 = "Scenes.Shop"
        L2_4 = {}
        L3_4 = {}
        L3_4.selectedTab = 1
        L2_4.params = L3_4
        L0_4(L1_4, L2_4)
      end
      
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    end
  end
  
  L7_2 = L6_1
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L10_2 = L1_1
  L10_2 = L10_2["Add One Potion  Label"]
  L9_2.label = L10_2
  L9_2.fontSize = 8
  L10_2 = Constants
  L10_2 = L10_2.fontForTitle
  L10_2 = L10_2()
  L9_2.font = L10_2
  L10_2 = Constants
  L10_2 = L10_2.Path_Assets
  L11_2 = "Potion/FC-PotionButton.png"
  L10_2 = L10_2 .. L11_2
  L9_2.defaultFile = L10_2
  L10_2 = Constants
  L10_2 = L10_2.Path_Assets
  L11_2 = "Potion/FC-PotionButton-Pressed.png"
  L10_2 = L10_2 .. L11_2
  L9_2.overFile = L10_2
  L9_2.width = 71
  L9_2.height = 42
  L10_2 = Constants
  L10_2 = L10_2.Path_Assets
  L11_2 = "Potion/potionLogo.png"
  L10_2 = L10_2 .. L11_2
  L9_2.subImage = L10_2
  L9_2.subText = 1
  L9_2.emboss = false
  L9_2.labelYOffset = -12
  L9_2.id = "Increase potion by one"
  L9_2.onRelease = L5_2
  L7_2 = L7_2(L8_2, L9_2)
  A1_2.increasePotionByOne = L7_2
  L7_2 = L9_1
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = A1_2.increasePotionByOne
  L9_2 = L9_2.view
  L7_2(L8_2, L9_2)
  L7_2 = A1_2.increasePotionByOne
  L8_2 = A1_2.horizontalDivider
  L8_2 = L8_2.y
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 / 2
  L9_2 = L9_2 - 30
  L9_2 = L9_2 * 3
  L9_2 = L9_2 / 4
  L8_2 = L8_2 + L9_2
  L8_2 = L8_2 - 10
  L7_2.y = L8_2
  L7_2 = L6_1
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L10_2 = L1_1
  L10_2 = L10_2["Filling Out Potion Label"]
  L9_2.label = L10_2
  L9_2.fontSize = 8
  L10_2 = Constants
  L10_2 = L10_2.fontForTitle
  L10_2 = L10_2()
  L9_2.font = L10_2
  L10_2 = Constants
  L10_2 = L10_2.Path_Assets
  L11_2 = "Potion/FC-PotionButton.png"
  L10_2 = L10_2 .. L11_2
  L9_2.defaultFile = L10_2
  L10_2 = Constants
  L10_2 = L10_2.Path_Assets
  L11_2 = "Potion/FC-PotionButton-Pressed.png"
  L10_2 = L10_2 .. L11_2
  L9_2.overFile = L10_2
  L9_2.width = 71
  L9_2.height = 42
  L10_2 = Constants
  L10_2 = L10_2.Path_Assets
  L11_2 = "Potion/potionLogo.png"
  L10_2 = L10_2 .. L11_2
  L9_2.subImage = L10_2
  L10_2 = Constants
  L10_2 = L10_2.Potion_Capacity
  L11_2 = mainPlayer
  L11_2 = L11_2.potionAmount
  L10_2 = L10_2 - L11_2
  L9_2.subText = L10_2
  L9_2.labelYOffset = -12
  L9_2.id = "Fill out potion"
  L9_2.onRelease = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  A1_2.fillOutPotions = L7_2
  L7_2 = L9_1
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = A1_2.fillOutPotions
  L9_2 = L9_2.view
  L7_2(L8_2, L9_2)
  L7_2 = A1_2.fillOutPotions
  L8_2 = A1_2.horizontalDivider
  L8_2 = L8_2.y
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 / 2
  L9_2 = L9_2 - 30
  L9_2 = L9_2 * 3
  L9_2 = L9_2 / 4
  L8_2 = L8_2 + L9_2
  L8_2 = L8_2 - 10
  L7_2.y = L8_2
  L7_2 = {}
  L7_2.id = "potion bar"
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 * 5
  L8_2 = L8_2 / 8
  L7_2.width = L8_2
  L7_2.height = 30
  L8_2 = mainPlayer
  L8_2 = L8_2.potionAmount
  L7_2.initialValue = L8_2
  L8_2 = Constants
  L8_2 = L8_2.Potion_Capacity
  L7_2.maxValue = L8_2
  L7_2.alpha = 0.7
  L8_2 = Theme
  L8_2 = L8_2.potionBarColor
  L7_2.initialBarColor = L8_2
  L8_2 = Theme
  L8_2 = L8_2.potionBarBorderColor
  L7_2.borderColor = L8_2
  L8_2 = L1_1
  L8_2 = L8_2.adjustNumber
  L9_2 = mainPlayer
  L9_2 = L9_2.potionAmount
  L8_2 = L8_2(L9_2)
  L9_2 = "/"
  L10_2 = L1_1
  L10_2 = L10_2.adjustNumber
  L11_2 = Constants
  L11_2 = L11_2.Potion_Capacity
  L10_2 = L10_2(L11_2)
  L8_2 = L8_2 .. L9_2 .. L10_2
  L7_2.label = L8_2
  L8_2 = Theme
  L8_2 = L8_2.potionBarLabelColor
  L7_2.labelColor = L8_2
  L8_2 = L5_1
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2)
  A1_2.potionBar = L8_2
  L8_2 = L9_1
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = A1_2.potionBar
  L10_2 = L10_2.view
  L8_2(L9_2, L10_2)
  L8_2 = A1_2.potionBar
  L8_2 = L8_2.view
  L9_2 = L1_1
  L9_2 = L9_2.adjustX
  L10_2 = A1_2.potionBar
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L10_2 = 120 + L10_2
  L9_2 = L9_2(L10_2)
  L8_2.x = L9_2
  L8_2 = A1_2.potionBar
  L8_2 = L8_2.view
  L9_2 = A1_2.horizontalDivider
  L9_2 = L9_2.y
  L9_2 = L9_2 + 15
  L10_2 = A1_2.potionBar
  L10_2 = L10_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L8_2.y = L9_2
  L8_2 = A1_2.fillOutPotions
  L9_2 = A1_2.potionBar
  L9_2 = L9_2.x
  L9_2 = L9_2 + 20
  L10_2 = A1_2.fillOutPotions
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L8_2.x = L9_2
  L8_2 = A1_2.increasePotionByOne
  L9_2 = A1_2.potionBar
  L9_2 = L9_2.x
  L9_2 = L9_2 - 20
  L10_2 = A1_2.increasePotionByOne
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 - L10_2
  L8_2.x = L9_2
  return A1_2
end

new = L10_1

function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.repaint
  L1_2(L2_2)
end

show = L10_1
