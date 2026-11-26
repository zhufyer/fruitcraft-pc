local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "widget"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Views.ActivityIndicatorView"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Utils.Toolbox"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Constants"
L4_1(L5_1)
L4_1 = require
L5_1 = "Components.TDButtonView"
L4_1 = L4_1(L5_1)
L5_1 = nil
L6_1 = nil
L7_1 = nil
L8_1 = nil
L9_1 = nil
L10_1 = nil
L11_1 = nil

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L2_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = mainPlayer
  L2_2 = L2_2.tribe
  L2_2 = L2_2.buildings
  tribeBuildings = L2_2
  L2_2 = L3_1
  L2_2 = L2_2.shortenLongNumber
  L3_2 = mainPlayer
  L3_2 = L3_2.tribe
  L3_2 = L3_2.gold
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1
  L3_2 = L3_2.adjustNumber
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L2_2 = L3_2
  L3_2 = A0_2.delegate
  L3_2 = L3_2.tribeGold
  L3_2.text = L2_2
  L3_2 = A1_2.buildingType
  if L3_2 == "offensive" then
    L3_2 = tribeBuildings
    L3_2 = L3_2.offense
    L4_2 = L3_2
    L3_2 = L3_2.upgradeCost
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = A0_2.upgradeButton
      L4_2 = L3_2
      L3_2 = L3_2.setLabel
      L5_2 = L1_1
      L5_2 = L5_2["Upgrade to"]
      L6_2 = " "
      L7_2 = L1_1
      L7_2 = L7_2.adjustNumber
      L8_2 = tribeBuildings
      L8_2 = L8_2.offense
      L9_2 = L8_2
      L8_2 = L8_2.benefitFromNextLevel
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
      L8_2 = "%"
      L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
      L3_2(L4_2, L5_2)
      L3_2 = L3_1
      L3_2 = L3_2.shortenLongNumber
      L4_2 = ""
      L5_2 = tribeBuildings
      L5_2 = L5_2.offense
      L6_2 = L5_2
      L5_2 = L5_2.upgradeCost
      L5_2 = L5_2(L6_2)
      L4_2 = L4_2 .. L5_2
      L3_2 = L3_2(L4_2)
      L4_2 = L1_1
      L4_2 = L4_2.adjustNumber
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L3_2 = L4_2
      L4_2 = A0_2.costLabel
      L4_2.text = L3_2
    else
      L3_2 = A0_2.upgradeButton
      L3_2.isVisible = false
      L3_2 = A0_2.costLabel
      L3_2.isVisible = false
    end
    L3_2 = A0_2.bonusLabel
    L4_2 = L1_1
    L4_2 = L4_2["Current Bonus"]
    L5_2 = ": "
    L6_2 = L1_1
    L6_2 = L6_2.localizedString
    L7_2 = "Attack bonus desc"
    L8_2 = {}
    L9_2 = L1_1
    L9_2 = L9_2.adjustNumber
    L10_2 = tribeBuildings
    L10_2 = L10_2.offense
    L11_2 = L10_2
    L10_2 = L10_2.benefitFromLevelText
    L10_2, L11_2 = L10_2(L11_2)
    L9_2 = L9_2(L10_2, L11_2)
    L8_2.bonus = L9_2
    L6_2 = L6_2(L7_2, L8_2)
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2.text = L4_2
  else
    L3_2 = A1_2.buildingType
    if L3_2 == "defensive" then
      L3_2 = tribeBuildings
      L3_2 = L3_2.defense
      L4_2 = L3_2
      L3_2 = L3_2.upgradeCost
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = A0_2.upgradeButton
        L4_2 = L3_2
        L3_2 = L3_2.setLabel
        L5_2 = L1_1
        L5_2 = L5_2["Upgrade to"]
        L6_2 = " "
        L7_2 = L1_1
        L7_2 = L7_2.adjustNumber
        L8_2 = tribeBuildings
        L8_2 = L8_2.defense
        L9_2 = L8_2
        L8_2 = L8_2.benefitFromNextLevel
        L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
        L8_2 = "%"
        L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
        L3_2(L4_2, L5_2)
        L3_2 = L3_1
        L3_2 = L3_2.shortenLongNumber
        L4_2 = ""
        L5_2 = tribeBuildings
        L5_2 = L5_2.defense
        L6_2 = L5_2
        L5_2 = L5_2.upgradeCost
        L5_2 = L5_2(L6_2)
        L4_2 = L4_2 .. L5_2
        L3_2 = L3_2(L4_2)
        L4_2 = L1_1
        L4_2 = L4_2.adjustNumber
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        L3_2 = L4_2
        L4_2 = A0_2.costLabel
        L4_2.text = L3_2
      else
        L3_2 = A0_2.upgradeButton
        L3_2.isVisible = false
        L3_2 = A0_2.costLabel
        L3_2.isVisible = false
      end
      L3_2 = A0_2.bonusLabel
      L4_2 = L1_1
      L4_2 = L4_2["Current Bonus"]
      L5_2 = ": "
      L6_2 = L1_1
      L6_2 = L6_2.localizedString
      L7_2 = "Defense bonus desc"
      L8_2 = {}
      L9_2 = L1_1
      L9_2 = L9_2.adjustNumber
      L10_2 = tribeBuildings
      L10_2 = L10_2.defense
      L11_2 = L10_2
      L10_2 = L10_2.benefitFromLevelText
      L10_2, L11_2 = L10_2(L11_2)
      L9_2 = L9_2(L10_2, L11_2)
      L8_2.bonus = L9_2
      L6_2 = L6_2(L7_2, L8_2)
      L4_2 = L4_2 .. L5_2 .. L6_2
      L3_2.text = L4_2
    else
      L3_2 = A1_2.buildingType
      if L3_2 == "cooldown" then
        L3_2 = tribeBuildings
        L3_2 = L3_2.cooldown
        L4_2 = L3_2
        L3_2 = L3_2.upgradeCost
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L3_2 = A0_2.upgradeButton
          L4_2 = L3_2
          L3_2 = L3_2.setLabel
          L5_2 = L1_1
          L5_2 = L5_2["Upgrade to"]
          L6_2 = " "
          L7_2 = L1_1
          L7_2 = L7_2.adjustNumber
          L8_2 = tribeBuildings
          L8_2 = L8_2.cooldown
          L9_2 = L8_2
          L8_2 = L8_2.benefitFromNextLevel
          L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
          L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
          L8_2 = "%"
          L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
          L3_2(L4_2, L5_2)
          L3_2 = L3_1
          L3_2 = L3_2.shortenLongNumber
          L4_2 = ""
          L5_2 = tribeBuildings
          L5_2 = L5_2.cooldown
          L6_2 = L5_2
          L5_2 = L5_2.upgradeCost
          L5_2 = L5_2(L6_2)
          L4_2 = L4_2 .. L5_2
          L3_2 = L3_2(L4_2)
          L4_2 = L1_1
          L4_2 = L4_2.adjustNumber
          L5_2 = L3_2
          L4_2 = L4_2(L5_2)
          L3_2 = L4_2
          L4_2 = A0_2.costLabel
          L4_2.text = L3_2
        else
          L3_2 = A0_2.upgradeButton
          L3_2.isVisible = false
          L3_2 = A0_2.costLabel
          L3_2.isVisible = false
        end
        L3_2 = A0_2.bonusLabel
        L4_2 = L1_1
        L4_2 = L4_2["Current Bonus"]
        L5_2 = ": "
        L6_2 = L1_1
        L6_2 = L6_2.localizedString
        L7_2 = "Cooldown bonus desc"
        L8_2 = {}
        L9_2 = L1_1
        L9_2 = L9_2.adjustNumber
        L10_2 = tribeBuildings
        L10_2 = L10_2.cooldown
        L11_2 = L10_2
        L10_2 = L10_2.benefitFromLevelText
        L10_2, L11_2 = L10_2(L11_2)
        L9_2 = L9_2(L10_2, L11_2)
        L8_2.bonus = L9_2
        L6_2 = L6_2(L7_2, L8_2)
        L4_2 = L4_2 .. L5_2 .. L6_2
        L3_2.text = L4_2
      else
        L3_2 = A1_2.buildingType
        if L3_2 == "mainhall" then
          L3_2 = tribeBuildings
          L3_2 = L3_2.mainhall
          L4_2 = L3_2
          L3_2 = L3_2.upgradeCost
          L3_2 = L3_2(L4_2)
          if L3_2 then
            L3_2 = A0_2.upgradeButton
            L4_2 = L3_2
            L3_2 = L3_2.setLabel
            L5_2 = L1_1
            L5_2 = L5_2["Upgrade to"]
            L6_2 = " "
            L7_2 = L1_1
            L7_2 = L7_2.adjustNumber
            L8_2 = tribeBuildings
            L8_2 = L8_2.mainhall
            L9_2 = L8_2
            L8_2 = L8_2.benefitFromNextLevel
            L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
            L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
            L5_2 = L5_2 .. L6_2 .. L7_2
            L3_2(L4_2, L5_2)
            L3_2 = L3_1
            L3_2 = L3_2.shortenLongNumber
            L4_2 = ""
            L5_2 = tribeBuildings
            L5_2 = L5_2.mainhall
            L6_2 = L5_2
            L5_2 = L5_2.upgradeCost
            L5_2 = L5_2(L6_2)
            L4_2 = L4_2 .. L5_2
            L3_2 = L3_2(L4_2)
            L4_2 = L1_1
            L4_2 = L4_2.adjustNumber
            L5_2 = L3_2
            L4_2 = L4_2(L5_2)
            L3_2 = L4_2
            L4_2 = A0_2.costLabel
            L4_2.text = L3_2
          else
            L3_2 = A0_2.upgradeButton
            L3_2.isVisible = false
            L3_2 = A0_2.costLabel
            L3_2.isVisible = false
          end
          L3_2 = A0_2.bonusLabel
          L4_2 = L1_1
          L4_2 = L4_2["Current Bonus"]
          L5_2 = ": "
          L6_2 = L1_1
          L6_2 = L6_2.localizedString
          L7_2 = "Mainhall bonus desc"
          L8_2 = {}
          L9_2 = L1_1
          L9_2 = L9_2.adjustNumber
          L10_2 = tribeBuildings
          L10_2 = L10_2.mainhall
          L11_2 = L10_2
          L10_2 = L10_2.benefitFromLevelText
          L10_2, L11_2 = L10_2(L11_2)
          L9_2 = L9_2(L10_2, L11_2)
          L8_2.bonus = L9_2
          L6_2 = L6_2(L7_2, L8_2)
          L4_2 = L4_2 .. L5_2 .. L6_2
          L3_2.text = L4_2
        end
      end
    end
  end
  L3_2 = showSimpleDialog
  L4_2 = "Upgrade"
  L5_2 = "Succes message for upgarde"
  L3_2(L4_2, L5_2)
end

didUpgrdeCallback = L12_1

function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L2_1
  L3_2 = L3_2.hide
  L3_2()
  L3_2 = showSimpleDialog
  L4_2 = "Upgrade"
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end

failedToUpgradeCallback = L12_1

function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = checkValidityAssert
  L4_2 = A2_2
  L5_2 = "new, base object needs to be provided for creating a new TUItemView"
  L6_2 = _NAME
  L7_2 = "table"
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = multiCheckValidityAssert
  L4_2 = A2_2
  L5_2 = "new, base object (3rd param) needs to have required parameter"
  L6_2 = _NAME
  L7_2 = {}
  L7_2.imageName = "string"
  L7_2.imageWidth = "number"
  L7_2.imageHeight = "number"
  L7_2.descriptionText = "string"
  L7_2.bonusText = "string"
  L7_2.upgradeText = "string"
  L7_2.buildingType = "string"
  L3_2(L4_2, L5_2, L6_2, L7_2)
  if not A2_2 then
    L3_2 = {}
    A2_2 = L3_2
  end
  L3_2 = setmetatable
  L4_2 = A2_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  A0_2.__index = A0_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  A2_2.view = L3_2
  A2_2.delegate = A1_2
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "TribeUpgrade/FC-TU-listbg.png"
  L4_2 = L4_2 .. L5_2
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 - 10
  L6_2 = 62
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A2_2.background = L3_2
  L3_2 = A2_2.background
  L4_2 = A2_2.background
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L3_2.x = L4_2
  L3_2 = A2_2.background
  L4_2 = A2_2.background
  L4_2 = L4_2.height
  L4_2 = L4_2 / 2
  L3_2.y = L4_2
  L3_2 = A2_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A2_2.background
  L3_2(L4_2, L5_2)
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "TribeUpgrade/FC-TU-listellipse.png"
  L4_2 = L4_2 .. L5_2
  L5_2 = 50
  L6_2 = 50
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A2_2.imageBG = L3_2
  L3_2 = A2_2.imageBG
  L4_2 = L1_1
  L4_2 = L4_2.adjustX
  L5_2 = A2_2.imageBG
  L5_2 = L5_2.width
  L5_2 = L5_2 / 2
  L5_2 = L5_2 + 10
  L6_2 = -5
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.x = L4_2
  L3_2 = A2_2.imageBG
  L4_2 = A2_2.imageBG
  L4_2 = L4_2.height
  L4_2 = L4_2 / 2
  L4_2 = L4_2 + 6
  L3_2.y = L4_2
  L3_2 = A2_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A2_2.imageBG
  L3_2(L4_2, L5_2)
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = A2_2.view
  L5_2 = A2_2.imageName
  L6_2 = A2_2.imageWidth
  L7_2 = A2_2.imageHeight
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  A2_2.image = L3_2
  L3_2 = A2_2.image
  L4_2 = L1_1
  L4_2 = L4_2.adjustX
  L5_2 = 35
  L6_2 = -5
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.x = L4_2
  L3_2 = A2_2.image
  L4_2 = A2_2.image
  L4_2 = L4_2.height
  L4_2 = L4_2 / 2
  L4_2 = 8 + L4_2
  L3_2.y = L4_2
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A2_2.descriptionText
  L5_2 = L4_2
  L4_2 = L4_2.len
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 * 7
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 - 180
  L4_2 = L4_2 / L5_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 + 1
  A2_2.numberOfLines = L3_2
  L3_2 = system
  L3_2 = L3_2.getInfo
  L4_2 = "build"
  L3_2 = L3_2(L4_2)
  if "2013.1137" < L3_2 then
    L3_2 = system
    L3_2 = L3_2.getInfo
    L4_2 = "platformName"
    L3_2 = L3_2(L4_2)
    if L3_2 ~= "Android" then
      L3_2 = L1_1
      L3_2 = L3_2.lang
      if L3_2 == "fa" then
        goto lbl_144
      end
    end
  end
  L3_2 = L1_1
  L3_2 = L3_2.lang
  if L3_2 == "ar" then
    ::lbl_144::
    L3_2 = {}
    L4_2 = A2_2.view
    L3_2.parent = L4_2
    L4_2 = A2_2.descriptionText
    L3_2.text = L4_2
    L3_2.x = 0
    L3_2.y = 0
    L4_2 = display
    L4_2 = L4_2.contentWidth
    L4_2 = L4_2 - 180
    L3_2.width = L4_2
    L3_2.height = 40
    L4_2 = Constants
    L4_2 = L4_2.fontForSubtitle
    L4_2 = L4_2()
    L3_2.font = L4_2
    L3_2.fontSize = 13
    L3_2.align = "right"
    L4_2 = display
    L4_2 = L4_2.newText
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    A2_2.description = L4_2
  else
    L3_2 = display
    L3_2 = L3_2.newText
    L4_2 = A2_2.view
    L5_2 = A2_2.descriptionText
    L6_2 = 0
    L7_2 = 0
    L8_2 = display
    L8_2 = L8_2.contentWidth
    L8_2 = L8_2 - 180
    L9_2 = 40
    L10_2 = Constants
    L10_2 = L10_2.fontForTitle
    L10_2 = L10_2()
    L11_2 = 13
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    A2_2.description = L3_2
  end
  L3_2 = A2_2.description
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.darkBlueColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = A2_2.description
  L4_2 = L1_1
  L4_2 = L4_2.adjustX
  L5_2 = A2_2.description
  L5_2 = L5_2.width
  L5_2 = L5_2 / 2
  L5_2 = 75 + L5_2
  L4_2 = L4_2(L5_2)
  L3_2.x = L4_2
  L3_2 = A2_2.numberOfLines
  if L3_2 == 1 then
    L3_2 = A2_2.description
    L4_2 = A2_2.description
    L4_2 = L4_2.height
    L4_2 = L4_2 / 2
    L4_2 = 13 + L4_2
    L3_2.y = L4_2
  else
    L3_2 = A2_2.description
    L4_2 = A2_2.description
    L4_2 = L4_2.height
    L4_2 = L4_2 / 2
    L4_2 = 2 + L4_2
    L3_2.y = L4_2
  end
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A2_2.view
  L5_2 = A2_2.bonusText
  L6_2 = 0
  L7_2 = 0
  L8_2 = Constants
  L8_2 = L8_2.fontForSubtitle
  L8_2 = L8_2()
  L9_2 = 10
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A2_2.bonusLabel = L3_2
  L3_2 = A2_2.bonusLabel
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.darkBlueColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = A2_2.bonusLabel
  L4_2 = L1_1
  L4_2 = L4_2.adjustX
  L5_2 = A2_2.bonusLabel
  L5_2 = L5_2.width
  L5_2 = L5_2 / 2
  L5_2 = 75 + L5_2
  L4_2 = L4_2(L5_2)
  L3_2.x = L4_2
  L3_2 = A2_2.bonusLabel
  L4_2 = A2_2.bonusLabel
  L4_2 = L4_2.height
  L4_2 = L4_2 / 2
  L4_2 = 36 + L4_2
  L3_2.y = L4_2
  L3_2 = A2_2.upgradeText
  buttonText = L3_2
  
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L2_1
    L0_3 = L0_3.show
    L1_3 = L1_1
    L1_3 = L1_3.Upgrade
    L0_3(L1_3)
    L0_3 = A2_2
    L0_3 = L0_3.buildingType
    if L0_3 == "offensive" then
      L0_3 = mainPlayer
      L0_3 = L0_3.tribe
      L0_3 = L0_3.buildings
      L0_3 = L0_3.offense
      L1_3 = L0_3
      L0_3 = L0_3.upgrade
      L2_3 = didUpgrdeCallback
      L3_3 = failedToUpgradeCallback
      L4_3 = A2_2
      L0_3(L1_3, L2_3, L3_3, L4_3)
    else
      L0_3 = A2_2
      L0_3 = L0_3.buildingType
      if L0_3 == "defensive" then
        L0_3 = mainPlayer
        L0_3 = L0_3.tribe
        L0_3 = L0_3.buildings
        L0_3 = L0_3.defense
        L1_3 = L0_3
        L0_3 = L0_3.upgrade
        L2_3 = didUpgrdeCallback
        L3_3 = failedToUpgradeCallback
        L4_3 = A2_2
        L0_3(L1_3, L2_3, L3_3, L4_3)
      else
        L0_3 = A2_2
        L0_3 = L0_3.buildingType
        if L0_3 == "cooldown" then
          L0_3 = mainPlayer
          L0_3 = L0_3.tribe
          L0_3 = L0_3.buildings
          L0_3 = L0_3.cooldown
          L1_3 = L0_3
          L0_3 = L0_3.upgrade
          L2_3 = didUpgrdeCallback
          L3_3 = failedToUpgradeCallback
          L4_3 = A2_2
          L0_3(L1_3, L2_3, L3_3, L4_3)
        else
          L0_3 = A2_2
          L0_3 = L0_3.buildingType
          if L0_3 == "mainhall" then
            L0_3 = mainPlayer
            L0_3 = L0_3.tribe
            L0_3 = L0_3.buildings
            L0_3 = L0_3.mainhall
            L1_3 = L0_3
            L0_3 = L0_3.upgrade
            L2_3 = didUpgrdeCallback
            L3_3 = failedToUpgradeCallback
            L4_3 = A2_2
            L0_3(L1_3, L2_3, L3_3, L4_3)
          end
        end
      end
    end
  end
  
  L11_1 = L3_2
  L3_2 = L4_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.width = 71
  L5_2.height = 42
  L6_2 = buttonText
  L5_2.label = L6_2
  L5_2.fontSize = 8
  L5_2.labelYOffset = -10
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "TribeUpgrade/FC-TU-upgrade.png"
  L6_2 = L6_2 .. L7_2
  L5_2.defaultFile = L6_2
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "TribeUpgrade/FC-TU-upgradepressed.png"
  L6_2 = L6_2 .. L7_2
  L5_2.overFile = L6_2
  L5_2.emboss = false
  L6_2 = L11_1
  L5_2.onRelease = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  A2_2.upgradeButton = L3_2
  L3_2 = A2_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A2_2.upgradeButton
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L3_2 = A2_2.upgradeButton
  L4_2 = L1_1
  L4_2 = L4_2.adjustX
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L6_2 = A2_2.upgradeButton
  L6_2 = L6_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 - 20
  L4_2 = L4_2(L5_2)
  L3_2.x = L4_2
  L3_2 = A2_2.upgradeButton
  L3_2.y = 31
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A2_2.view
  L5_2 = ""
  L6_2 = 0
  L7_2 = 0
  L8_2 = Constants
  L8_2 = L8_2.fontForTitle
  L8_2 = L8_2()
  L9_2 = 9
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A2_2.costLabel = L3_2
  L3_2 = A2_2.costLabel
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.darkGreenColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = A2_2.costLabel
  L4_2 = L1_1
  L4_2 = L4_2.adjustX
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L6_2 = A2_2.upgradeButton
  L6_2 = L6_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 - 10
  L6_2 = 15
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.x = L4_2
  L3_2 = A2_2.costLabel
  L3_2.y = 36
  L3_2 = A2_2.costText
  if L3_2 ~= nil then
    L3_2 = A2_2.costText
    if L3_2 ~= "" then
      L3_2 = A2_2.costLabel
      L4_2 = A2_2.costText
      L3_2.text = L4_2
  end
  else
    L3_2 = log3
    L4_2 = "!!!!!!!!!!????!!!!!!"
    L3_2(L4_2)
    L3_2 = A2_2.costLabel
    L3_2.isVisible = false
    L3_2 = A2_2.upgradeButton
    L3_2.isVisible = false
  end
  return A2_2
end

new = L12_1

function L12_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.description
  L2_2.text = A1_2
  L2_2 = A0_2.description
  L3_2 = adjustX
  L4_2 = A0_2.description
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L4_2 = 75 + L4_2
  L3_2 = L3_2(L4_2)
  L2_2.x = L3_2
  L2_2 = A0_2.description
  L3_2 = A0_2.description
  L3_2 = L3_2.height
  L3_2 = L3_2 / 2
  L3_2 = 10 + L3_2
  L2_2.y = L3_2
end

setDescription = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.currentBonus
  L2_2.text = A1_2
  L2_2 = A0_2.currentBonus
  L3_2 = adjustX
  L4_2 = A0_2.currentBonus
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L4_2 = 200 + L4_2
  L3_2 = L3_2(L4_2)
  L2_2.x = L3_2
  L2_2 = A0_2.currentBonus
  L3_2 = A0_2.currentBonus
  L3_2 = L3_2.height
  L3_2 = L3_2 / 2
  L3_2 = 30 + L3_2
  L2_2.y = L3_2
end

setCurrentBonus = L12_1
