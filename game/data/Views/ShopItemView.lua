local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Language"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.Toolbox"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "composer"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Components.TDButtonView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.ShopMultiplierView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Components.TDMultilineButtonView"
L5_1 = L5_1(L6_1)

function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  if not A2_2 then
    L3_2 = {}
    A2_2 = L3_2
  end
  L3_2 = setmetatable
  L4_2 = A2_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  A0_2.__index = A0_2
  A2_2.shopItem = A1_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  A2_2.group = L3_2
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "Shop/FC-shop-card.png"
  L4_2 = L4_2 .. L5_2
  L5_2 = 128
  L6_2 = 185
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A2_2.box = L3_2
  L3_2 = A2_2.box
  L4_2 = A2_2.box
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L3_2.x = L4_2
  L3_2 = A2_2.box
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 * 0.37
  L3_2.y = L4_2
  L3_2 = A2_2.group
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A2_2.box
  L3_2(L4_2, L5_2)
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A2_2.group
  L5_2 = A1_2.name
  L6_2 = 40
  L7_2 = 0
  L8_2 = Constants
  L8_2 = L8_2.fontForTitle
  L8_2 = L8_2()
  L9_2 = 14
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A2_2.name = L3_2
  L3_2 = A2_2.name
  L3_2.x = 64
  L3_2 = A2_2.name
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 * 0.37
  L4_2 = L4_2 - 92.5
  L4_2 = L4_2 / 2
  L3_2.y = L4_2
  L3_2 = A2_2.name
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.darkBlueColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L3_2 = nil
  L4_2 = A1_2.itemType
  if L4_2 == 2 then
    L4_2 = A1_2.showData
    if L4_2 == false then
      L3_2 = A1_2.description
    else
      L4_2 = L1_1
      L4_2 = L4_2.shortenLongNumber
      L5_2 = ""
      L6_2 = A1_2.baseCurrencyAmount
      L5_2 = L5_2 .. L6_2
      L4_2 = L4_2(L5_2)
      L5_2 = L0_1
      L5_2 = L5_2.adjustNumber
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      L4_2 = L5_2
      L5_2 = L0_1
      L5_2 = L5_2["Gold coins"]
      L6_2 = A1_2.isNectar
      if L6_2 then
        L6_2 = L0_1
        L5_2 = L6_2.Nectar
      end
      L6_2 = L4_2
      L7_2 = " "
      L8_2 = L5_2
      L3_2 = L6_2 .. L7_2 .. L8_2
    end
  else
    L4_2 = A1_2.itemType
    if L4_2 == 1 then
      L3_2 = A1_2.description
    else
      L4_2 = A1_2.itemType
      if L4_2 == 3 then
        L3_2 = A1_2.description
      end
    end
  end
  L4_2 = {}
  L5_2 = A2_2.group
  L4_2.parent = L5_2
  L4_2.text = L3_2
  L4_2.x = 0
  L4_2.y = 0
  L4_2.width = 100
  L4_2.height = 80
  L5_2 = Constants
  L5_2 = L5_2.fontForSubtitle
  L5_2 = L5_2()
  L4_2.font = L5_2
  L4_2.fontSize = 11
  L4_2.align = "center"
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  A2_2.description = L5_2
  L5_2 = A2_2.description
  L5_2.x = 64
  L5_2 = A1_2.itemType
  if L5_2 == 3 then
    L5_2 = A2_2.description
    L6_2 = display
    L6_2 = L6_2.contentHeight
    L6_2 = L6_2 * 0.55
    L5_2.y = L6_2
  else
    L5_2 = A2_2.description
    L6_2 = display
    L6_2 = L6_2.contentHeight
    L6_2 = L6_2 * 0.59
    L5_2.y = L6_2
  end
  L5_2 = A2_2.description
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L5_2 = A1_2.itemType
  if L5_2 == 3 then
    L5_2 = display
    L5_2 = L5_2.newImageRect
    L6_2 = A1_2.image
    L7_2 = ".png"
    L6_2 = L6_2 .. L7_2
    L7_2 = A1_2.imageWidth
    L8_2 = A1_2.imageHeight
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    A2_2.image = L5_2
    L5_2 = A2_2.group
    L6_2 = L5_2
    L5_2 = L5_2.insert
    L7_2 = A2_2.image
    L5_2(L6_2, L7_2)
    L5_2 = A2_2.image
    L5_2.x = 64
    L5_2 = A2_2.image
    L6_2 = display
    L6_2 = L6_2.contentHeight
    L6_2 = L6_2 * 0.29
    L5_2.y = L6_2
    L5_2 = display
    L5_2 = L5_2.newText
    L6_2 = A1_2.multiplier
    L7_2 = "%"
    L6_2 = L6_2 .. L7_2
    L7_2 = 0
    L8_2 = 0
    L9_2 = Constants
    L9_2 = L9_2.fontForTitle
    L9_2 = L9_2()
    L10_2 = 18
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    A2_2.imageLabel = L5_2
    L5_2 = A2_2.imageLabel
    L6_2 = L5_2
    L5_2 = L5_2.setFillColor
    L7_2 = 0.5764705882352941
    L8_2 = 0.09803921568627451
    L9_2 = 0.08235294117647059
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = A2_2.imageLabel
    L6_2 = A2_2.image
    L6_2 = L6_2.x
    L5_2.x = L6_2
    L5_2 = A2_2.imageLabel
    L6_2 = A2_2.image
    L6_2 = L6_2.y
    L7_2 = A2_2.image
    L7_2 = L7_2.height
    L7_2 = L7_2 * 0.18
    L6_2 = L6_2 + L7_2
    L5_2.y = L6_2
    L5_2 = A2_2.group
    L6_2 = L5_2
    L5_2 = L5_2.insert
    L7_2 = A2_2.imageLabel
    L5_2(L6_2, L7_2)
  else
    L5_2 = display
    L5_2 = L5_2.newImageRect
    L6_2 = A1_2.image
    L7_2 = A1_2.imageWidth
    L8_2 = A1_2.imageHeight
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    A2_2.image = L5_2
    L5_2 = A2_2.group
    L6_2 = L5_2
    L5_2 = L5_2.insert
    L7_2 = A2_2.image
    L5_2(L6_2, L7_2)
    L5_2 = A2_2.image
    L5_2.x = 64
    L5_2 = A2_2.image
    L6_2 = display
    L6_2 = L6_2.contentHeight
    L6_2 = L6_2 * 0.29
    L5_2.y = L6_2
  end
  L5_2 = Constants
  L5_2 = L5_2.getShopMultiplier
  L5_2 = L5_2()
  L6_2 = A1_2.isNectar
  if L6_2 then
    L5_2 = 1
  end
  L6_2 = log2
  L7_2 = "multiplier:"
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A1_2.itemType
  if L6_2 == 2 then
    L6_2 = A1_2.showData
    if L6_2 ~= false then
      L6_2 = A1_2.isNectar
      if L6_2 ~= true and 1 < L5_2 then
        L6_2 = {}
        L6_2.text = L5_2
        L7_2 = mainPlayer
        L7_2 = L7_2.betterGoldPackMultiplier
        if L7_2 then
          L6_2.animated = true
        end
        L7_2 = L4_1
        L8_2 = L7_2
        L7_2 = L7_2.new
        L9_2 = L6_2
        L7_2 = L7_2(L8_2, L9_2)
        A2_2.multiplierBadge = L7_2
        L7_2 = A2_2.group
        L8_2 = L7_2
        L7_2 = L7_2.insert
        L9_2 = A2_2.multiplierBadge
        L9_2 = L9_2.view
        L7_2(L8_2, L9_2)
        L7_2 = A2_2.multiplierBadge
        L7_2 = L7_2.view
        L7_2.x = 120
        L7_2 = A2_2.multiplierBadge
        L7_2 = L7_2.view
        L7_2.y = 30
        L7_2 = display
        L7_2 = L7_2.newLine
        L8_2 = A2_2.description
        L8_2 = L8_2.x
        L8_2 = L8_2 - 50
        L9_2 = A2_2.description
        L9_2 = L9_2.y
        L10_2 = A2_2.description
        L10_2 = L10_2.height
        L10_2 = L10_2 / 2
        L9_2 = L9_2 - L10_2
        L9_2 = L9_2 + 9
        L10_2 = A2_2.description
        L10_2 = L10_2.x
        L10_2 = L10_2 + 50
        L11_2 = A2_2.description
        L11_2 = L11_2.y
        L12_2 = A2_2.description
        L12_2 = L12_2.height
        L12_2 = L12_2 / 2
        L11_2 = L11_2 - L12_2
        L11_2 = L11_2 + 9
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
        A2_2.redLine = L7_2
        L7_2 = A2_2.redLine
        L8_2 = L7_2
        L7_2 = L7_2.setStrokeColor
        L9_2 = 1
        L10_2 = 0.19607843
        L11_2 = 0.39211569
        L12_2 = 0.8
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
        L7_2 = A2_2.redLine
        L7_2.strokeWidth = 2
        L7_2 = A2_2.group
        L8_2 = L7_2
        L7_2 = L7_2.insert
        L9_2 = A2_2.redLine
        L7_2(L8_2, L9_2)
        L7_2 = nil
        L8_2 = L1_1
        L8_2 = L8_2.shortenLongNumber
        L9_2 = ""
        L10_2 = A1_2.baseCurrencyAmount
        L10_2 = L10_2 * L5_2
        L9_2 = L9_2 .. L10_2
        L8_2 = L8_2(L9_2)
        L9_2 = L0_1
        L9_2 = L9_2.adjustNumber
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        L8_2 = L9_2
        L9_2 = L8_2
        L10_2 = " "
        L11_2 = L0_1
        L11_2 = L11_2["Gold coins"]
        L7_2 = L9_2 .. L10_2 .. L11_2
        L9_2 = {}
        L10_2 = A2_2.group
        L9_2.parent = L10_2
        L9_2.text = L7_2
        L9_2.x = 0
        L9_2.y = 0
        L9_2.width = 100
        L9_2.height = 80
        L10_2 = Constants
        L10_2 = L10_2.fontForTitle
        L10_2 = L10_2()
        L9_2.font = L10_2
        L9_2.fontSize = 11
        L9_2.align = "center"
        L10_2 = display
        L10_2 = L10_2.newText
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        A2_2.newDescription = L10_2
        L10_2 = A2_2.newDescription
        L10_2.x = 64
        L10_2 = A2_2.newDescription
        L11_2 = display
        L11_2 = L11_2.contentHeight
        L11_2 = L11_2 * 0.63
        L10_2.y = L11_2
        L10_2 = A2_2.newDescription
        L11_2 = L10_2
        L10_2 = L10_2.setFillColor
        L12_2 = Constants
        L12_2 = L12_2.darkBlueColor
        L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L12_2()
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      end
      L6_2 = mainPlayer
      L6_2 = L6_2.betterGoldPackRatio
      if L6_2 == true then
        L6_2 = {}
        L7_2 = A2_2.group
        L6_2.parent = L7_2
        L7_2 = "+"
        L8_2 = L0_1
        L8_2 = L8_2.adjustNumber
        L9_2 = A1_2.currencyToPriceRatio
        L9_2 = L9_2 * 100
        L8_2 = L8_2(L9_2)
        L9_2 = "%"
        L7_2 = L7_2 .. L8_2 .. L9_2
        L6_2.text = L7_2
        L6_2.x = 0
        L6_2.y = 0
        L6_2.width = 100
        L6_2.height = 80
        L7_2 = Constants
        L7_2 = L7_2.fontForSubtitle
        L7_2 = L7_2()
        L6_2.font = L7_2
        L6_2.fontSize = 11
        L6_2.align = "center"
        L7_2 = display
        L7_2 = L7_2.newText
        L8_2 = L6_2
        L7_2 = L7_2(L8_2)
        A2_2.ratioPercent = L7_2
        L7_2 = A2_2.ratioPercent
        L8_2 = L7_2
        L7_2 = L7_2.setFillColor
        L9_2 = Constants
        L9_2 = L9_2.redColor
        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L9_2()
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L7_2 = A2_2.ratioPercent
        L7_2.x = 64
        L7_2 = A2_2.ratioPercent
        L8_2 = display
        L8_2 = L8_2.contentHeight
        L8_2 = L8_2 * 0.63
        L7_2.y = L8_2
        L7_2 = A1_2.currencyToPriceRatio
        if 0 < L7_2 then
          L7_2 = A2_2.ratioPercent
          L7_2.isVisible = true
        else
          L7_2 = A2_2.ratioPercent
          L7_2.isVisible = false
        end
        L7_2 = A2_2.newDescription
        if L7_2 then
          L7_2 = A2_2.newDescription
          L8_2 = A2_2.ratioPercent
          L8_2 = L8_2.y
          L8_2 = L8_2 + 11
          L7_2.y = L8_2
        end
      end
    end
  end
  L6_2 = setPopularityImage
  L7_2 = A1_2.popularityStatus
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = display
    L6_2 = L6_2.newImageRect
    L7_2 = A2_2.group
    L8_2 = setPopularityImage
    L9_2 = A1_2.popularityStatus
    L8_2 = L8_2(L9_2)
    L9_2 = 58
    L10_2 = 57
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    A2_2.popularityRibbon = L6_2
    L6_2 = A2_2.popularityRibbon
    L7_2 = A2_2.box
    L7_2 = L7_2.width
    L8_2 = A2_2.popularityRibbon
    L8_2 = L8_2.width
    L8_2 = L8_2 / 2
    L7_2 = L7_2 - L8_2
    L7_2 = L7_2 + 2
    L6_2.x = L7_2
    L6_2 = A2_2.popularityRibbon
    L7_2 = A2_2.box
    L7_2 = L7_2.y
    L8_2 = A2_2.box
    L8_2 = L8_2.height
    L8_2 = L8_2 / 2
    L7_2 = L7_2 - L8_2
    L8_2 = A2_2.popularityRibbon
    L8_2 = L8_2.height
    L8_2 = L8_2 / 2
    L7_2 = L7_2 + L8_2
    L7_2 = L7_2 - 3.25
    L6_2.y = L7_2
  end
  L6_2 = nil
  L7_2 = A1_2.itemType
  if L7_2 == 1 then
    L7_2 = mainPlayer
    L7_2 = L7_2.unifiedGoldIcon
    if L7_2 then
      L6_2 = A1_2.priceNumber
    else
      L7_2 = L0_1
      L7_2 = L7_2.adjustNumber
      L8_2 = A1_2.price
      L7_2 = L7_2(L8_2)
      L6_2 = L7_2
    end
  else
    L7_2 = A1_2.itemType
    if L7_2 == 2 then
      L7_2 = A1_2.localPrice
      L6_2 = L7_2 or L6_2
      if not L7_2 then
        L6_2 = A1_2.price
      end
    else
      L7_2 = A1_2.itemType
      if L7_2 == 3 then
        L7_2 = mainPlayer
        L7_2 = L7_2.unifiedGoldIcon
        if L7_2 then
          L7_2 = A1_2.localPrice
          L6_2 = L7_2 or L6_2
          if not L7_2 then
            L6_2 = A1_2.price
          end
        else
          L7_2 = L0_1
          L7_2 = L7_2.adjustNumber
          L8_2 = L1_1
          L8_2 = L8_2.addKForLargeNumber
          L9_2 = L1_1
          L9_2 = L9_2.stringThousandCommaSeperated
          L10_2 = A1_2.localPrice
          if not L10_2 then
            L10_2 = A1_2.price
          end
          L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L9_2(L10_2)
          L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
          L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
          L8_2 = "G"
          L6_2 = L7_2 .. L8_2
        end
      end
    end
  end
  L7_2 = A1_2.sale
  L8_2 = log3
  L9_2 = "sale is : "
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  if L7_2 then
    L9_2 = A1_2
    L8_2 = A1_2.checkForSale
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = tostring
      L9_2 = L7_2.percent
      L8_2 = L8_2(L9_2)
      L9_2 = isSaleRibbonAvailable
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L9_2 = display
        L9_2 = L9_2.newImageRect
        L10_2 = A2_2.group
        L11_2 = Constants
        L11_2 = L11_2.Path_Assets
        L12_2 = "Shop/ribbon "
        L13_2 = L8_2
        L14_2 = "%.png"
        L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2
        L12_2 = 57
        L13_2 = 58
        L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
        A2_2.saleRibbon = L9_2
        L9_2 = A2_2.saleRibbon
        L10_2 = A2_2.saleRibbon
        L10_2 = L10_2.width
        L10_2 = L10_2 / 2
        L10_2 = L10_2 - 3.05
        L9_2.x = L10_2
        L9_2 = A2_2.saleRibbon
        L10_2 = A2_2.box
        L10_2 = L10_2.y
        L11_2 = A2_2.box
        L11_2 = L11_2.height
        L11_2 = L11_2 / 2
        L10_2 = L10_2 - L11_2
        L11_2 = A2_2.saleRibbon
        L11_2 = L11_2.height
        L11_2 = L11_2 / 2
        L10_2 = L10_2 + L11_2
        L10_2 = L10_2 - 3.25
        L9_2.y = L10_2
      end
      L9_2 = {}
      L10_2 = A2_2.group
      L9_2.parent = L10_2
      L9_2.text = "timeString"
      L9_2.x = 64
      L9_2.y = 0
      L10_2 = Constants
      L10_2 = L10_2.fontForTitle
      L10_2 = L10_2()
      L9_2.font = L10_2
      L9_2.fontSize = 11
      L9_2.align = "center"
      L10_2 = display
      L10_2 = L10_2.newText
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      A2_2.saleTimeRemaining = L10_2
      L10_2 = A2_2.saleTimeRemaining
      L11_2 = L10_2
      L10_2 = L10_2.setFillColor
      L12_2 = Constants
      L12_2 = L12_2.darkBlueColor
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L12_2()
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L10_2 = A2_2.saleTimeRemaining
      L11_2 = display
      L11_2 = L11_2.contentHeight
      L11_2 = L11_2 * 0.545
      L10_2.y = L11_2
      L10_2 = A1_2.itemType
      if L10_2 == 2 then
        L10_2 = math
        L10_2 = L10_2.floor
        L11_2 = A1_2.baseCurrencyAmount
        L11_2 = L11_2 * L5_2
        L12_2 = L7_2.percent
        L12_2 = L12_2 / 100
        L11_2 = L11_2 * L12_2
        L10_2 = L10_2(L11_2)
        L11_2 = mainPlayer
        L11_2 = L11_2.betterGoldPackRatio
        if L11_2 == true then
          L11_2 = A1_2.baseCurrencyAmount
          L11_2 = L11_2 * L5_2
          L10_2 = L10_2 + L11_2
        end
        L11_2 = L1_1
        L11_2 = L11_2.stringThousandCommaSeperated
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        L10_2 = L11_2
        L11_2 = L1_1
        L11_2 = L11_2.addKForLargeNumber
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        L10_2 = L11_2
        L11_2 = L0_1
        L11_2 = L11_2.adjustNumber
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        L10_2 = L11_2
        L11_2 = {}
        L12_2 = A2_2.group
        L11_2.parent = L12_2
        L11_2.text = L10_2
        L11_2.x = 64
        L11_2.y = 0
        L12_2 = Constants
        L12_2 = L12_2.fontForTitle
        L12_2 = L12_2()
        L11_2.font = L12_2
        L11_2.fontSize = 11
        L11_2.align = "center"
        L9_2 = L11_2
        L11_2 = display
        L11_2 = L11_2.newText
        L12_2 = L9_2
        L11_2 = L11_2(L12_2)
        A2_2.extraGoldForSale = L11_2
        L11_2 = mainPlayer
        L11_2 = L11_2.betterGoldPackRatio
        if L11_2 == true then
          L11_2 = A2_2.newDescription
          if L11_2 then
            L11_2 = A2_2.newDescription
            L11_2.isVisible = false
          end
          L11_2 = A2_2.extraGoldForSale
          L12_2 = display
          L12_2 = L12_2.contentHeight
          L12_2 = L12_2 * 0.56
          L11_2.y = L12_2
          L11_2 = A2_2.saleTimeRemaining
          L12_2 = A2_2.extraGoldForSale
          L12_2 = L12_2.y
          L12_2 = L12_2 + 10
          L11_2.y = L12_2
          L11_2 = A2_2.extraGoldForSale
          L12_2 = L11_2
          L11_2 = L11_2.setFillColor
          L13_2 = 1
          L14_2 = 0
          L15_2 = 0
          L11_2(L12_2, L13_2, L14_2, L15_2)
        else
          L11_2 = A2_2.description
          L12_2 = display
          L12_2 = L12_2.contentHeight
          L12_2 = L12_2 * 0.54
          L11_2.y = L12_2
          L11_2 = A2_2.newDescription
          if L11_2 then
            L11_2 = A2_2.newDescription
            L12_2 = display
            L12_2 = L12_2.contentHeight
            L12_2 = L12_2 * 0.58
            L11_2.y = L12_2
            L11_2 = A2_2.redLine
            L12_2 = A2_2.redLine
            L12_2 = L12_2.y
            L13_2 = display
            L13_2 = L13_2.contentHeight
            L13_2 = L13_2 * 0.05
            L12_2 = L12_2 - L13_2
            L11_2.y = L12_2
            L11_2 = A2_2.saleTimeRemaining
            L12_2 = display
            L12_2 = L12_2.contentHeight
            L12_2 = L12_2 * 0.545
            L11_2.y = L12_2
            L11_2 = A2_2.extraGoldForSale
            L12_2 = display
            L12_2 = L12_2.contentHeight
            L12_2 = L12_2 * 0.58
            L11_2.y = L12_2
          else
            L11_2 = A2_2.extraGoldForSale
            L12_2 = display
            L12_2 = L12_2.contentHeight
            L12_2 = L12_2 * 0.58
            L11_2.y = L12_2
          end
          L11_2 = A2_2.extraGoldForSale
          L12_2 = "+"
          L13_2 = A2_2.extraGoldForSale
          L13_2 = L13_2.text
          L12_2 = L12_2 .. L13_2
          L11_2.text = L12_2
          L11_2 = A2_2.extraGoldForSale
          L12_2 = L11_2
          L11_2 = L11_2.setFillColor
          L13_2 = Constants
          L13_2 = L13_2.darkBlueColor
          L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L13_2()
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        end
      end
      L10_2 = click
      L11_2 = A2_2
      L10_2(L11_2)
      L10_2 = Runtime
      L11_2 = L10_2
      L10_2 = L10_2.addEventListener
      L12_2 = "click"
      L13_2 = A2_2
      L10_2(L11_2, L12_2, L13_2)
    end
  end
  L8_2 = A1_2.givesAvatar
  if L8_2 then
    L8_2 = display
    L8_2 = L8_2.newImageRect
    L9_2 = A2_2.group
    L10_2 = Constants
    L10_2 = L10_2.Path_Assets
    L11_2 = "Shop/Avatar Icon.png"
    L10_2 = L10_2 .. L11_2
    L11_2 = 35
    L12_2 = 30
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    A2_2.avatarBadge = L8_2
    L8_2 = A2_2.avatarBadge
    L9_2 = A2_2.box
    L9_2 = L9_2.width
    L10_2 = A2_2.avatarBadge
    L10_2 = L10_2.width
    L10_2 = L10_2 / 2
    L9_2 = L9_2 - L10_2
    L9_2 = L9_2 + 10
    L8_2.x = L9_2
    L8_2 = A2_2.avatarBadge
    L9_2 = A2_2.box
    L9_2 = L9_2.y
    L8_2.y = L9_2
  end
  L8_2 = mainPlayer
  L8_2 = L8_2.unifiedGoldIcon
  if L8_2 then
    L8_2 = A1_2.itemType
    if L8_2 ~= 2 then
      L8_2 = {}
      L8_2.iconYOffSet = -2
      L8_2.subImageWidth = 20
      L8_2.subImageHeight = 22
      L8_2.subTextFontSize = 13
      L8_2.fontSize = 13
      L9_2 = Constants
      L9_2 = L9_2.fontForTitle
      L9_2 = L9_2()
      L8_2.font = L9_2
      L9_2 = Constants
      L9_2 = L9_2.Path_Assets
      L10_2 = "BattleItems/next.png"
      L9_2 = L9_2 .. L10_2
      L8_2.defaultFile = L9_2
      L9_2 = Constants
      L9_2 = L9_2.Path_Assets
      L10_2 = "BattleItems/next.png"
      L9_2 = L9_2 .. L10_2
      L8_2.overFile = L9_2
      L8_2.width = 104
      L8_2.height = 33
      L9_2 = Constants
      L9_2 = L9_2.Path_Assets
      L10_2 = "Navbar/FC-navbar-gold.png"
      L9_2 = L9_2 .. L10_2
      L8_2.subImage = L9_2
      L9_2 = tonumber
      L10_2 = L6_2
      L9_2 = L9_2(L10_2)
      L8_2.subText = L9_2
      L8_2.emboss = false
      L8_2.labelYOffset = -12
      L8_2.id = "buy button"
      
      function L9_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
        L0_3 = A1_2
        L0_3 = L0_3.itemType
        if L0_3 ~= 1 then
          L0_3 = A1_2
          L0_3 = L0_3.itemType
          if L0_3 ~= 3 then
            goto lbl_57
          end
        end
        L0_3 = A1_2
        L1_3 = tonumber
        L2_3 = A1_2
        L2_3 = L2_3.priceNumber
        L1_3 = L1_3(L2_3)
        L0_3.priceNumber = L1_3
        L0_3 = A1_2
        L0_3 = L0_3.priceNumber
        L1_3 = nil
        L2_3 = A1_2
        L2_3 = L2_3.id
        if L2_3 == 32 then
          L1_3 = true
          L2_3 = mainPlayer
          L2_3 = L2_3.heroSet
          if L2_3 then
            L2_3 = Constants
            L2_3 = L2_3.CardPack_HeroBasePrice
            L3_3 = L1_1
            L3_3 = L3_3.lengthOfTable
            L4_3 = mainPlayer
            L4_3 = L4_3.heroSet
            L3_3 = L3_3(L4_3)
            L3_3 = L3_3 - 1
            L4_3 = Constants
            L4_3 = L4_3.CardPack_HeroPriceMultiplier
            L3_3 = L3_3 * L4_3
            L0_3 = L2_3 + L3_3
          else
            L2_3 = A1_2
            L0_3 = L2_3.priceNumber
          end
        end
        L2_3 = A1_2
        L2_3 = L2_3.itemType
        if L2_3 == 3 then
          L1_3 = true
        end
        L2_3 = mainPlayer
        L3_3 = L2_3
        L2_3 = L2_3.checkPlayerCurrency
        L4_3 = L0_3 or L4_3
        if not L0_3 then
          L4_3 = 0
        end
        L5_3 = L1_3
        L2_3 = L2_3(L3_3, L4_3, L5_3)
        if not L2_3 then
          return
        end
        ::lbl_57::
        L0_3 = A1_2
        L0_3 = L0_3.itemType
        if L0_3 == 1 then
          L0_3 = mainPlayer
          L1_3 = L0_3
          L0_3 = L0_3.numberOfCards
          L0_3 = L0_3(L1_3)
          L1_3 = A1_2
          L2_3 = L1_3
          L1_3 = L1_3.numberOfCardInCardPack
          L1_3 = L1_3(L2_3)
          L0_3 = L0_3 + L1_3
          if 200 < L0_3 then
            L0_3 = showSimpleDialog
            L1_3 = "Shop"
            L2_3 = "You have more than 200 cards and can't buy anymore!"
            L0_3(L1_3, L2_3)
            return
          end
        end
        L0_3 = A1_2
        L0_3 = L0_3.action
        L0_3()
      end
      
      L8_2.onRelease = L9_2
      L9_2 = A1_2.id
      if L9_2 ~= 32 then
        L9_2 = A1_2.itemType
        if L9_2 ~= 3 then
          goto lbl_799
        end
      end
      L9_2 = Theme
      L9_2 = L9_2.nectarIconImage
      L8_2.subImage = L9_2
      ::lbl_799::
      L9_2 = L5_1
      L10_2 = L9_2
      L9_2 = L9_2.new
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      A2_2.buyButton = L9_2
  end
  else
    L8_2 = L3_1
    L9_2 = L8_2
    L8_2 = L8_2.new
    L10_2 = {}
    L10_2.label = L6_2
    L10_2.fontSize = 13
    L10_2.width = 104
    L10_2.height = 33
    L11_2 = Constants
    L11_2 = L11_2.Path_Assets
    L12_2 = "BattleItems/next.png"
    L11_2 = L11_2 .. L12_2
    L10_2.defaultFile = L11_2
    L11_2 = Constants
    L11_2 = L11_2.Path_Assets
    L12_2 = "BattleItems/next-p.png"
    L11_2 = L11_2 .. L12_2
    L10_2.overFile = L11_2
    
    function L11_2()
      local L0_3, L1_3, L2_3
      L0_3 = A1_2
      L0_3 = L0_3.itemType
      if L0_3 ~= 1 then
        L0_3 = A1_2
        L0_3 = L0_3.itemType
        if L0_3 ~= 3 then
          goto lbl_26
        end
      end
      L0_3 = A1_2
      L1_3 = tonumber
      L2_3 = A1_2
      L2_3 = L2_3.priceNumber
      L1_3 = L1_3(L2_3)
      L0_3.priceNumber = L1_3
      L0_3 = mainPlayer
      L1_3 = L0_3
      L0_3 = L0_3.checkPlayerCurrency
      L2_3 = A1_2
      L2_3 = L2_3.priceNumber
      if not L2_3 then
        L2_3 = 0
      end
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        return
      end
      ::lbl_26::
      L0_3 = A1_2
      L0_3 = L0_3.itemType
      if L0_3 == 1 then
        L0_3 = mainPlayer
        L1_3 = L0_3
        L0_3 = L0_3.numberOfCards
        L0_3 = L0_3(L1_3)
        L1_3 = A1_2
        L2_3 = L1_3
        L1_3 = L1_3.numberOfCardInCardPack
        L1_3 = L1_3(L2_3)
        L0_3 = L0_3 + L1_3
        if 200 < L0_3 then
          L0_3 = showSimpleDialog
          L1_3 = "Shop"
          L2_3 = "You have more than 200 cards and can't buy anymore!"
          L0_3(L1_3, L2_3)
          return
        end
      end
      L0_3 = A1_2
      L0_3 = L0_3.action
      L0_3()
    end
    
    L10_2.onRelease = L11_2
    L10_2.emboss = false
    L8_2 = L8_2(L9_2, L10_2)
    A2_2.buyButton = L8_2
  end
  L8_2 = A2_2.group
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = A2_2.buyButton
  L10_2 = L10_2.view
  L8_2(L9_2, L10_2)
  L8_2 = A2_2.buyButton
  L8_2.x = 64
  L8_2 = A2_2.buyButton
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 * 0.73
  L8_2.y = L9_2
  L8_2 = A1_2.itemType
  if L8_2 == 2 then
    L8_2 = mainPlayer
    L8_2 = L8_2.betterGoldPackRatioOnPrice
    if L8_2 then
      L8_2 = A1_2.currencyToPriceRatio
      if 0 < L8_2 then
        L8_2 = A2_2.buyButton
        L9_2 = L8_2
        L8_2 = L8_2.setBadge
        L10_2 = "+"
        L11_2 = L0_1
        L11_2 = L11_2.adjustNumber
        L12_2 = A1_2.currencyToPriceRatio
        L12_2 = L12_2 * 100
        L11_2 = L11_2(L12_2)
        L12_2 = "%"
        L10_2 = L10_2 .. L11_2 .. L12_2
        L11_2 = true
        L12_2 = true
        L13_2 = 0
        L14_2 = 35
        L15_2 = Constants
        L15_2 = L15_2.Path_Assets
        L16_2 = "Shop/FC-BuyButtonBadge.png"
        L15_2 = L15_2 .. L16_2
        L16_2 = 35
        L17_2 = 35
        L18_2 = Constants
        L18_2 = L18_2.fontForTitle
        L18_2 = L18_2()
        L19_2 = 10
        L20_2 = -0.1
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      end
    end
  end
  L8_2 = A1_2.itemType
  if L8_2 == 1 then
    L8_2 = A1_2.id
    if L8_2 == 25 then
      L8_2 = display
      L8_2 = L8_2.newImageRect
      L9_2 = A2_2.group
      L10_2 = Constants
      L10_2 = L10_2.Path_Assets
      L11_2 = "General/InfoButton.png"
      L10_2 = L10_2 .. L11_2
      L11_2 = 20
      L12_2 = 20
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      A2_2.infoButton = L8_2
      L8_2 = A2_2.infoButton
      L9_2 = A2_2.box
      L9_2 = L9_2.x
      L10_2 = A2_2.box
      L10_2 = L10_2.width
      L10_2 = L10_2 / 2
      L9_2 = L9_2 + L10_2
      L10_2 = A2_2.infoButton
      L10_2 = L10_2.width
      L10_2 = L10_2 / 2
      L9_2 = L9_2 - L10_2
      L10_2 = A2_2.box
      L10_2 = L10_2.width
      L10_2 = L10_2 * 10
      L10_2 = L10_2 / 128
      L9_2 = L9_2 - L10_2
      L8_2.x = L9_2
      L8_2 = A2_2.infoButton
      L9_2 = A2_2.box
      L9_2 = L9_2.y
      L10_2 = A2_2.box
      L10_2 = L10_2.height
      L10_2 = L10_2 / 2
      L9_2 = L9_2 + L10_2
      L10_2 = A2_2.infoButton
      L10_2 = L10_2.height
      L10_2 = L10_2 / 2
      L9_2 = L9_2 - L10_2
      L10_2 = A2_2.box
      L10_2 = L10_2.height
      L10_2 = L10_2 * 10
      L10_2 = L10_2 / 185
      L9_2 = L9_2 - L10_2
      L9_2 = L9_2 - 0.5
      L8_2.y = L9_2
      L8_2 = A2_2.infoButton
      L9_2 = L8_2
      L8_2 = L8_2.addEventListener
      L10_2 = "tap"
      
      function L11_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
        L0_3 = L2_1
        L0_3 = L0_3.showOverlay
        L1_3 = "Scenes.WarningOverlay"
        L2_3 = {}
        L3_3 = {}
        L4_3 = L0_1
        L4_3 = L4_3["Crystal CardPack Warning"]
        L3_3.description = L4_3
        L4_3 = Constants
        L4_3 = L4_3.Path_Assets
        L5_3 = "Shop/12. Card Pack.png"
        L4_3 = L4_3 .. L5_3
        L3_3.image = L4_3
        L4_3 = L0_1
        L4_3 = L4_3["Crystal Pack"]
        L3_3.title = L4_3
        L3_3.imageWidth = 130
        L3_3.imageHeight = 130
        L2_3.params = L3_3
        L0_3(L1_3, L2_3)
        L0_3 = true
        return L0_3
      end
      
      L8_2(L9_2, L10_2, L11_2)
    end
  end
  return A2_2
end

new = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = "5"
  L3_2 = "10"
  L4_2 = "15"
  L5_2 = "20"
  L6_2 = "25"
  L7_2 = "30"
  L8_2 = "50"
  L9_2 = "75"
  L10_2 = "90"
  L11_2 = "100"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  L1_2[9] = L10_2
  L1_2[10] = L11_2
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 == A0_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end

isSaleRibbonAvailable = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L1_1
  L2_2 = L2_2.remainTimeFromNow
  L3_2 = A0_2.shopItem
  L3_2 = L3_2.sale
  L3_2 = L3_2.endTime
  L4_2 = mainPlayer
  L4_2 = L4_2.timeDelta
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2)
  L6_2 = nil
  if L2_2 < 0 then
    L7_2 = A0_2.saleTimeRemaining
    if L7_2 then
      L7_2 = A0_2.saleTimeRemaining
      L8_2 = L7_2
      L7_2 = L7_2.removeSelf
      L7_2(L8_2)
    end
    L7_2 = A0_2.extraGoldForSale
    if L7_2 then
      L7_2 = A0_2.extraGoldForSale
      L8_2 = L7_2
      L7_2 = L7_2.removeSelf
      L7_2(L8_2)
    end
    L7_2 = A0_2.saleRibbon
    if L7_2 then
      L7_2 = A0_2.saleRibbon
      L8_2 = L7_2
      L7_2 = L7_2.removeSelf
      L7_2(L8_2)
    end
    L7_2 = A0_2.newDescription
    if L7_2 then
      L7_2 = mainPlayer
      L7_2 = L7_2.betterGoldPackRatio
      if L7_2 == true then
        L7_2 = A0_2.newDescription
        L7_2.isVisible = true
      end
    end
    L7_2 = Runtime
    L8_2 = L7_2
    L7_2 = L7_2.removeEventListener
    L9_2 = "click"
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
  end
  L7_2 = L0_1
  L7_2 = L7_2.adjustNumber
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  L3_2 = L7_2
  L7_2 = L0_1
  L7_2 = L7_2.adjustNumber
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  L5_2 = L7_2
  L7_2 = L0_1
  L7_2 = L7_2.adjustNumber
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  L4_2 = L7_2
  L7_2 = L3_2
  L8_2 = " : "
  L9_2 = L4_2
  L10_2 = " : "
  L11_2 = L5_2
  L6_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
  L7_2 = A0_2.saleTimeRemaining
  L7_2.text = L6_2
end

click = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = "click"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.box
  if L1_2 then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = A0_2.box
    L1_2(L2_2)
  end
  L1_2 = A0_2.name
  if L1_2 then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = A0_2.name
    L1_2(L2_2)
  end
  L1_2 = A0_2.description
  if L1_2 then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = A0_2.description
    L1_2(L2_2)
  end
  L1_2 = A0_2.image
  if L1_2 then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = A0_2.image
    L1_2(L2_2)
  end
  L1_2 = A0_2.imageLabel
  if L1_2 then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = A0_2.imageLabel
    L1_2(L2_2)
  end
  L1_2 = A0_2.multiplierBadge
  if L1_2 then
    L1_2 = mainPlayer
    L1_2 = L1_2.betterGoldPackMultiplier
    if L1_2 == true then
      L1_2 = A0_2.multiplierBadge
      L2_2 = L1_2
      L1_2 = L1_2.cancelAnimation
      L1_2(L2_2)
    end
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = A0_2.multiplierBadge
    L2_2 = L2_2.view
    L1_2(L2_2)
  end
  L1_2 = A0_2.redLine
  if L1_2 then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = A0_2.redLine
    L1_2(L2_2)
  end
  L1_2 = A0_2.newDescription
  if L1_2 then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = A0_2.newDescription
    L1_2(L2_2)
  end
  L1_2 = A0_2.saleTimeRemaining
  if L1_2 then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = A0_2.saleTimeRemaining
    L1_2(L2_2)
  end
  L1_2 = A0_2.extraGoldForSale
  if L1_2 then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = A0_2.extraGoldForSale
    L1_2(L2_2)
  end
  L1_2 = A0_2.saleRibbon
  if L1_2 then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = A0_2.saleRibbon
    L1_2(L2_2)
  end
  L1_2 = A0_2.popularityRibbon
  if L1_2 then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = A0_2.popularityRibbon
    L1_2(L2_2)
  end
  L1_2 = A0_2.avatarBadge
  if L1_2 then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = A0_2.avatarBadge
    L1_2(L2_2)
  end
  L1_2 = A0_2.ratioPercent
  if L1_2 then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = A0_2.ratioPercent
    L1_2(L2_2)
  end
  L1_2 = A0_2.infoButton
  if L1_2 then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = A0_2.infoButton
    L1_2(L2_2)
  end
  L1_2 = A0_2.multiplierImage
  if L1_2 then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = A0_2.multiplierImage
    L1_2(L2_2)
  end
  L1_2 = A0_2.buyButton
  if L1_2 then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = A0_2.buyButton
    L2_2 = L2_2.view
    L1_2(L2_2)
  end
  A0_2.box = nil
  A0_2.shopItem = nil
  A0_2.name = nil
  A0_2.description = nil
  A0_2.image = nil
  A0_2.imageLabel = nil
  A0_2.multiplierImage = nil
  A0_2.redLine = nil
  A0_2.newDescription = nil
  A0_2.saleTimeRemaining = nil
  A0_2.extraGoldForSale = nil
  A0_2.saleRibbon = nil
  A0_2.popularityRibbon = nil
  A0_2.avatarBadge = nil
  A0_2.ratioPercent = nil
  A0_2.infoButton = nil
  A0_2.buyButton = nil
  A0_2.multiplierBadge = nil
  A0_2.group = nil
end

destroy = L6_1

function L6_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.group
  L3_2.x = A1_2
  L3_2 = A0_2.group
  L3_2.y = A2_2
end

setPosition = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.shopItem
  L1_2 = L1_2.itemType
  if L1_2 == 1 then
    L1_2 = mainPlayer
    L1_2 = L1_2.unifiedGoldIcon
    if L1_2 then
      L1_2 = A0_2.shopItem
      L1_2 = L1_2.id
      if L1_2 ~= 32 then
        goto lbl_122
      end
      L1_2 = nil
      L2_2 = mainPlayer
      L2_2 = L2_2.heroSet
      if L2_2 ~= nil then
        L2_2 = mainPlayer
        L2_2 = L2_2.heroSet
        if not L2_2 then
          goto lbl_35
        end
        L2_2 = L1_1
        L2_2 = L2_2.lengthOfTable
        L3_2 = mainPlayer
        L3_2 = L3_2.heroSet
        L2_2 = L2_2(L3_2)
        if L2_2 ~= 0 then
          goto lbl_35
        end
      end
      L2_2 = tonumber
      L3_2 = A0_2.shopItem
      L3_2 = L3_2.priceNumber
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
      goto lbl_47
      ::lbl_35::
      L2_2 = Constants
      L2_2 = L2_2.CardPack_HeroBasePrice
      L3_2 = L1_1
      L3_2 = L3_2.lengthOfTable
      L4_2 = mainPlayer
      L4_2 = L4_2.heroSet
      L3_2 = L3_2(L4_2)
      L3_2 = L3_2 - 1
      L4_2 = Constants
      L4_2 = L4_2.CardPack_HeroPriceMultiplier
      L3_2 = L3_2 * L4_2
      L1_2 = L2_2 + L3_2
      ::lbl_47::
      L2_2 = A0_2.buyButton
      L3_2 = L2_2
      L2_2 = L2_2.setSubText
      L4_2 = L1_2
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
    else
      L1_2 = A0_2.buyButton
      L2_2 = L0_1
      L2_2 = L2_2.adjustNumber
      L3_2 = ""
      L4_2 = A0_2.shopItem
      L4_2 = L4_2.price
      L3_2 = L3_2 .. L4_2
      L2_2 = L2_2(L3_2)
      L1_2.label = L2_2
    end
  else
    L1_2 = A0_2.shopItem
    L1_2 = L1_2.itemType
    if L1_2 == 2 then
      L1_2 = A0_2.shopItem
      L1_2 = L1_2.localPrice
      if not L1_2 then
        L1_2 = A0_2.shopItem
        L1_2 = L1_2.price
      end
      L2_2 = A0_2.buyButton
      L3_2 = L2_2
      L2_2 = L2_2.setLabel
      L4_2 = L0_1
      L4_2 = L4_2.adjustNumber
      L5_2 = ""
      L6_2 = L1_2
      L5_2 = L5_2 .. L6_2
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    else
      L1_2 = A0_2.shopItem
      L1_2 = L1_2.itemType
      if L1_2 == 3 then
        L1_2 = A0_2.shopItem
        L1_2 = L1_2.localPrice
        if not L1_2 then
          L1_2 = A0_2.shopItem
          L1_2 = L1_2.price
        end
        L2_2 = log3
        L3_2 = "New item price:"
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
        L2_2 = mainPlayer
        L2_2 = L2_2.unifiedGoldIcon
        if L2_2 then
          L2_2 = A0_2.buyButton
          L3_2 = L2_2
          L2_2 = L2_2.setSubText
          L4_2 = L1_2
          L5_2 = true
          L2_2(L3_2, L4_2, L5_2)
        else
          L2_2 = A0_2.buyButton
          L3_2 = L2_2
          L2_2 = L2_2.setLabel
          L4_2 = L0_1
          L4_2 = L4_2.adjustNumber
          L5_2 = L1_1
          L5_2 = L5_2.stringThousandCommaSeperated
          L6_2 = L1_1
          L6_2 = L6_2.shortenLongNumber
          L7_2 = L1_2
          L6_2, L7_2 = L6_2(L7_2)
          L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
          L4_2 = L4_2(L5_2, L6_2, L7_2)
          L5_2 = "G"
          L4_2 = L4_2 .. L5_2
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
  ::lbl_122::
end

updatePrice = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = require
  L2_2 = "Views.EffectsManager"
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.pointAtObjectInView
  L3_2 = A0_2.buyButton
  L4_2 = A0_2.group
  L2_2(L3_2, L4_2)
end

pointAtBuyButton = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.buyButton
  L2_2 = L1_2
  L1_2 = L1_2.setFillColor
  L3_2 = 0.5
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.buyButton
  L2_2 = L1_2
  L1_2 = L1_2.setEnabled
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = mainPlayer
  L1_2 = L1_2.unifiedGoldIcon
  if L1_2 then
    L1_2 = A0_2.buyButton
    L1_2 = L1_2.subLabel
    L1_2 = L1_2.icon
    L2_2 = L1_2
    L1_2 = L1_2.setFillColor
    L3_2 = 0.5
    L1_2(L2_2, L3_2)
  end
end

disableItem = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.buyButton
  L2_2 = L1_2
  L1_2 = L1_2.setFillColor
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.buyButton
  L2_2 = L1_2
  L1_2 = L1_2.setEnabled
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = mainPlayer
  L1_2 = L1_2.unifiedGoldIcon
  if L1_2 then
    L1_2 = A0_2.buyButton
    L1_2 = L1_2.subLabel
    L1_2 = L1_2.icon
    L2_2 = L1_2
    L1_2 = L1_2.setFillColor
    L3_2 = 1
    L1_2(L2_2, L3_2)
  end
end

enableItem = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L1_2 = nil
    L2_2 = Constants
    L2_2 = L2_2.shopPacks_PopularityStatus
    L2_2 = L2_2.REGULAR
    if A0_2 == L2_2 then
      L1_2 = nil
    else
      L2_2 = Constants
      L2_2 = L2_2.shopPacks_PopularityStatus
      L2_2 = L2_2.MOST_POPULAR
      if A0_2 == L2_2 then
        L2_2 = Constants
        L2_2 = L2_2.Path_Assets
        L3_2 = "Shop/FC-MostPopularRibbon-"
        L4_2 = L0_1
        L4_2 = L4_2.lang
        L5_2 = ".png"
        L1_2 = L2_2 .. L3_2 .. L4_2 .. L5_2
      elseif A0_2 == 2 then
      end
    end
    return L1_2
  end
end

setPopularityImage = L6_1
