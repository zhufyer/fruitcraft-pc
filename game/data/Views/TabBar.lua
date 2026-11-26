local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "widget"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Views.TabBarButton"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Constants"
L2_1(L3_1)
L2_1 = require
L3_1 = "composer"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Utils.Toolbox"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Language"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.EffectsManager"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Components.TDButtonView"
L6_1 = L6_1(L7_1)
L7_1 = nil
L8_1 = nil
L9_1 = {}
L10_1 = nil
L11_1 = nil
L12_1 = nil
L13_1 = nil
L14_1 = 1
L15_1 = "Scenes.Home"
previousScene = L15_1

function L15_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  if not A2_2 then
    L4_2 = {}
    A2_2 = L4_2
  end
  L4_2 = setmetatable
  L5_2 = A2_2
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
  A0_2.__index = A0_2
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  A2_2.view = L4_2
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  A2_2.content = L4_2
  L4_2 = A2_2.view
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = A2_2.content
  L4_2(L5_2, L6_2)
  A2_2.selectedTab = 1
  A2_2.buttonsLabel = A1_2
  L4_2 = {}
  A2_2.buttons = L4_2
  L5_2 = A2_2
  L4_2 = A2_2.createTabBar
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
  return A2_2
end

new = L15_1

function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2.delegate
  L2_2 = L2_2.buttons
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.delegate
    L5_2 = L5_2.buttons
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.deselected
    L5_2(L6_2)
  end
  L1_2 = L2_1
  L1_2 = L1_2.gotoScene
  L2_2 = A0_2.delegate
  L2_2 = L2_2.previousScene
  L3_2 = {}
  L4_2 = {}
  L5_2 = A0_2.delegate
  L5_2 = L5_2.evolveCardObject
  L4_2.evolveCard = L5_2
  L5_2 = A0_2.delegate
  L5_2 = L5_2.chooseDeckMode
  L4_2.mode = L5_2
  L3_2.params = L4_2
  L1_2(L2_2, L3_2)
end

goBack = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = L6_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.width = 40
  L4_2.height = 40
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "Navbar/FC-navbar-close.png"
  L5_2 = L5_2 .. L6_2
  L4_2.default = L5_2
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "Navbar/FC-navbar-close.png"
  L5_2 = L5_2 .. L6_2
  L4_2.defaultFile = L5_2
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "Navbar/FC-navbar-close-pressed.png"
  L5_2 = L5_2 .. L6_2
  L4_2.overFile = L5_2
  L5_2 = goBack
  L4_2.onRelease = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.backButton = L2_2
  L2_2 = A0_2.backButton
  L2_2.delegate = A0_2
  L2_2 = A0_2.view
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = A0_2.backButton
  L4_2 = L4_2.view
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.backButton
  L3_2 = A0_2.backButton
  L3_2 = L3_2.width
  L3_2 = L3_2 / 2
  L3_2 = 12 + L3_2
  L2_2.x = L3_2
  L2_2 = A0_2.backButton
  L3_2 = A0_2.backButton
  L3_2 = L3_2.height
  L3_2 = L3_2 / 2
  L3_2 = 12 + L3_2
  L2_2.y = L3_2
  L2_2 = mainPlayer
  L2_2 = L2_2.rollingGold
  if L2_2 == true then
    L2_2 = A0_2.showsTribeGold
    if L2_2 ~= true then
      L2_2 = A0_2.showsPlayerGold
    end
    if L2_2 == true then
      L2_2 = require
      L3_2 = "Components.TDCurrencyHUDView"
      L2_2 = L2_2(L3_2)
      L3_2 = {}
      L4_2 = mainPlayer
      L4_2 = L4_2.gold
      L3_2.goldValue = L4_2
      L4_2 = mainPlayer
      L4_2 = L4_2.nectar
      L3_2.nectarValue = L4_2
      L4_2 = Theme
      L4_2 = L4_2.goldIconImage
      L3_2.mainCurrencyImageFile = L4_2
      L4_2 = Theme
      L4_2 = L4_2.nectarIconImage
      L3_2.secondCurrencyImageFile = L4_2
      L5_2 = L2_2
      L4_2 = L2_2.new
      L6_2 = L3_2
      L4_2 = L4_2(L5_2, L6_2)
      A0_2.hudGold = L4_2
      L4_2 = A0_2.view
      L5_2 = L4_2
      L4_2 = L4_2.insert
      L6_2 = A0_2.hudGold
      L6_2 = L6_2.view
      L4_2(L5_2, L6_2)
      L4_2 = A0_2.hudGold
      L4_2 = L4_2.view
      L5_2 = display
      L5_2 = L5_2.contentWidth
      L6_2 = A0_2.hudGold
      L6_2 = L6_2.width
      L6_2 = L6_2 / 2
      L5_2 = L5_2 - L6_2
      L5_2 = L5_2 - 5
      L4_2.x = L5_2
      L4_2 = A0_2.hudGold
      L4_2 = L4_2.view
      L4_2.y = 31
    end
  else
    L2_2 = A0_2.showsTribeGold
    if L2_2 ~= true then
      L2_2 = A0_2.showsPlayerGold
      if L2_2 ~= true then
        goto lbl_224
      end
    end
    L2_2 = ""
    L3_2 = ""
    L4_2 = 0
    L5_2 = 0
    L6_2 = A0_2.showsTribeGold
    if L6_2 == true then
      L6_2 = ""
      L7_2 = mainPlayer
      L7_2 = L7_2.tribe
      L7_2 = L7_2.gold
      L2_2 = L6_2 .. L7_2
      L6_2 = mainPlayer
      L6_2 = L6_2.tribe
      L6_2 = L6_2.gold
      A0_2.storedGoldNumber = L6_2
      L6_2 = Constants
      L6_2 = L6_2.Path_Assets
      L7_2 = "Tabbar/FC-tabbar-tribegold.png"
      L3_2 = L6_2 .. L7_2
      L4_2 = 15
      L5_2 = 30
    else
      L6_2 = ""
      L7_2 = mainPlayer
      L7_2 = L7_2.gold
      L2_2 = L6_2 .. L7_2
      L6_2 = mainPlayer
      L6_2 = L6_2.gold
      A0_2.storedGoldNumber = L6_2
      L6_2 = Constants
      L6_2 = L6_2.Path_Assets
      L7_2 = "Navbar/FC-navbar-gold.png"
      L3_2 = L6_2 .. L7_2
      L4_2 = 24
      L5_2 = 25
    end
    L6_2 = L3_1
    L6_2 = L6_2.stringThousandCommaSeperated
    L7_2 = L2_2
    L6_2 = L6_2(L7_2)
    L2_2 = L6_2
    L6_2 = L3_1
    L6_2 = L6_2.addKForLargeNumber
    L7_2 = L2_2
    L6_2 = L6_2(L7_2)
    L2_2 = L6_2
    L6_2 = L4_1
    L6_2 = L6_2.adjustNumber
    L7_2 = L2_2
    L6_2 = L6_2(L7_2)
    L2_2 = L6_2
    L6_2 = math
    L6_2 = L6_2.floor
    L8_2 = L2_2
    L7_2 = L2_2.len
    L7_2 = L7_2(L8_2)
    L8_2 = L4_1
    L8_2 = L8_2.charWidth
    L7_2 = L7_2 / L8_2
    L7_2 = L7_2 * 7
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2 + 35
    L6_2 = L6_2 + 10
    L7_2 = display
    L7_2 = L7_2.newRoundedRect
    L8_2 = A0_2.view
    L9_2 = display
    L9_2 = L9_2.contentWidth
    L10_2 = L6_2 / 2
    L9_2 = L9_2 - L10_2
    L9_2 = L9_2 - 5
    L10_2 = 31
    L11_2 = L6_2
    L12_2 = 32
    L13_2 = 15
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    A0_2.gold = L7_2
    L7_2 = A0_2.gold
    L8_2 = L7_2
    L7_2 = L7_2.setFillColor
    L9_2 = Constants
    L9_2 = L9_2.greenColor
    L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2()
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L7_2 = display
    L7_2 = L7_2.newImageRect
    L8_2 = A0_2.view
    L9_2 = L3_2
    L10_2 = L4_2
    L11_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    A0_2.goldImage = L7_2
    L7_2 = A0_2.goldImage
    L8_2 = display
    L8_2 = L8_2.contentWidth
    L8_2 = L8_2 - L6_2
    L9_2 = A0_2.goldImage
    L9_2 = L9_2.width
    L9_2 = L9_2 / 2
    L8_2 = L8_2 + L9_2
    L7_2.x = L8_2
    L7_2 = A0_2.goldImage
    L7_2.y = 30
    L7_2 = display
    L7_2 = L7_2.newText
    L8_2 = A0_2.view
    L9_2 = L2_2
    L10_2 = 0
    L11_2 = 0
    L12_2 = Constants
    L12_2 = L12_2.fontForTitle
    L12_2 = L12_2()
    L13_2 = 13
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    A0_2.goldLabel = L7_2
    L7_2 = A0_2.goldLabel
    L8_2 = display
    L8_2 = L8_2.contentWidth
    L8_2 = L8_2 - L6_2
    L8_2 = L8_2 + 29
    L9_2 = A0_2.goldLabel
    L9_2 = L9_2.width
    L9_2 = L9_2 / 2
    L8_2 = L8_2 + L9_2
    L7_2.x = L8_2
    L7_2 = A0_2.goldLabel
    L7_2.y = 30
  end
  ::lbl_224::
  L2_2 = 0
  L3_2 = 0
  L4_2 = A0_2.buttonsLabel
  L4_2 = #L4_2
  if 3 < L4_2 then
    L4_2 = display
    L4_2 = L4_2.contentWidth
    if L4_2 < 520 then
      goto lbl_244
    end
  end
  L4_2 = A0_2.showsTribeGold
  if L4_2 ~= true then
    L4_2 = A0_2.showsPlayerGold
    if L4_2 ~= true then
      goto lbl_246
    end
  end
  L4_2 = display
  L4_2 = L4_2.contentWidth
  ::lbl_244::
  if L4_2 < 520 then
    L2_2 = -6
    L3_2 = -19
  end
  ::lbl_246::
  L4_2 = 1
  L5_2 = A0_2.buttonsLabel
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L1_1
    L9_2 = L8_2
    L8_2 = L8_2.new
    L10_2 = L7_2
    L11_2 = nil
    L12_2 = A1_2
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2.delegate = A0_2
    L10_2 = L8_2
    L9_2 = L8_2.setLabel
    L11_2 = A0_2.buttonsLabel
    L11_2 = L11_2[L7_2]
    L9_2(L10_2, L11_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2.buttons
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = A0_2.view
    L10_2 = L9_2
    L9_2 = L9_2.insert
    L11_2 = L8_2.view
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.setPosition
    L11_2 = 50 + L2_2
    L12_2 = L7_2 - 1
    L13_2 = L8_2.button
    L13_2 = L13_2.width
    L13_2 = L13_2 + L3_2
    L12_2 = L12_2 * L13_2
    L11_2 = L11_2 + L12_2
    L12_2 = L8_2.button
    L12_2 = L12_2.width
    L12_2 = L12_2 / 2
    L11_2 = L11_2 + L12_2
    L12_2 = L8_2.button
    L12_2 = L12_2.height
    L12_2 = L12_2 / 2
    L12_2 = 10 + L12_2
    L9_2(L10_2, L11_2, L12_2)
  end
  L4_2 = display
  L4_2 = L4_2.newRoundedRect
  L5_2 = A0_2.view
  L6_2 = display
  L6_2 = L6_2.contentCenterX
  L7_2 = display
  L7_2 = L7_2.contentCenterY
  L7_2 = L7_2 + 25
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 - 10
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 - 60
  L10_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  A0_2.background = L4_2
  L4_2 = A0_2.background
  L5_2 = L4_2
  L4_2 = L4_2.setFillColor
  L6_2 = Constants
  L6_2 = L6_2.whiteColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2 = A0_2.background
  L4_2.strokeWidth = 3
  L4_2 = A0_2.background
  L5_2 = L4_2
  L4_2 = L4_2.setStrokeColor
  L6_2 = Constants
  L6_2 = L6_2.greenColorSceneBorder
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2 = display
  L4_2 = L4_2.newLine
  L5_2 = A0_2.view
  L6_2 = 20
  L7_2 = 56.5
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 - 30
  L9_2 = 56.5
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2.fixItLine = L4_2
  L4_2 = A0_2.fixItLine
  L5_2 = L4_2
  L4_2 = L4_2.setStrokeColor
  L6_2 = Constants
  L6_2 = L6_2.whiteColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2 = A0_2.fixItLine
  L4_2.strokeWidth = 1
  L4_2 = A0_2.content
  L5_2 = L4_2
  L4_2 = L4_2.toFront
  L4_2(L5_2)
  L4_2 = A0_2.noMask
  if L4_2 ~= true then
    L4_2 = graphics
    L4_2 = L4_2.newMask
    L5_2 = Constants
    L5_2 = L5_2.Path_Assets
    L6_2 = "Tabbar/FC-tabbar-mask"
    L7_2 = Constants
    L7_2 = L7_2.deviceSpecificFilePostfix
    L7_2 = L7_2()
    L8_2 = ".png"
    L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2.content
    L6_2 = L5_2
    L5_2 = L5_2.setMask
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2.content
    L6_2 = display
    L6_2 = L6_2.contentCenterX
    L5_2.maskX = L6_2
    L5_2 = A0_2.content
    L6_2 = display
    L6_2 = L6_2.contentCenterY
    L5_2.maskY = L6_2
  end
end

createTabBar = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.backButton
  L3_2 = L2_2
  L2_2 = L2_2.setEnabled
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = pairs
  L3_2 = A0_2.buttons
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.setEnabled
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end

setEnableButtons = L15_1

function L15_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.buttons
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2
  L2_2 = L2_2.didPressButton
  L2_2(L3_2)
  L2_2 = A0_2.content
  L3_2 = L2_2
  L2_2 = L2_2.toFront
  L2_2(L3_2)
  A0_2.selectedTab = A1_2
end

selectButtonWithId = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.buttons
  L2_2 = #L2_2
  if A1_2 > L2_2 then
    return
  end
  L2_2 = A0_2.selectedTab
  if L2_2 == A1_2 then
    return
  end
  L2_2 = L5_1
  L2_2 = L2_2.pointAt
  L3_2 = A0_2.view
  L4_2 = A0_2.buttons
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.view
  L4_2 = L4_2.x
  L4_2 = L4_2 + 50
  L5_2 = A0_2.buttons
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.view
  L5_2 = L5_2.y
  L5_2 = L5_2 + 20
  L2_2(L3_2, L4_2, L5_2)
end

pointAtTab = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2.selectedTab = A1_2
  L2_2 = 1
  L3_2 = A0_2.buttons
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.buttons
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.deselected
    L6_2(L7_2)
  end
  L2_2 = A0_2.fixItLine
  L3_2 = L2_2
  L2_2 = L2_2.toFront
  L2_2(L3_2)
  L2_2 = A0_2.content
  L3_2 = L2_2
  L2_2 = L2_2.toFront
  L2_2(L3_2)
  L2_2 = L5_1
  L2_2 = L2_2.bringPointToFront
  L2_2()
end

didPressTabBarButton = L15_1

function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.hudGold
  L4_2 = L3_2
  L3_2 = L3_2.setCurrency
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2)
end

setNectar = L15_1

function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = mainPlayer
  L3_2 = L3_2.rollingGold
  if L3_2 then
    L3_2 = A0_2.showsPlayerGold
    if L3_2 then
      L3_2 = A0_2.hudGold
      L4_2 = L3_2
      L3_2 = L3_2.setCurrency
      L5_2 = A1_2
      L6_2 = A2_2
      L3_2(L4_2, L5_2, L6_2)
    end
  else
    L3_2 = A0_2.showsPlayerGold
    if L3_2 then
      L3_2 = ""
      L4_2 = A1_2
      L3_2 = L3_2 .. L4_2
      L4_2 = L3_1
      L4_2 = L4_2.stringThousandCommaSeperated
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L3_2 = L4_2
      L4_2 = L3_1
      L4_2 = L4_2.addKForLargeNumber
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L3_2 = L4_2
      L4_2 = L4_1
      L4_2 = L4_2.adjustNumber
      L5_2 = L3_1
      L5_2 = L5_2.stringThousandCommaSeperated
      L6_2 = L3_2
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2)
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      L3_2 = L4_2
      A0_2.storedGoldNumber = A1_2
      L4_2 = math
      L4_2 = L4_2.floor
      L6_2 = L3_2
      L5_2 = L3_2.len
      L5_2 = L5_2(L6_2)
      L6_2 = L4_1
      L6_2 = L6_2.charWidth
      L5_2 = L5_2 / L6_2
      L5_2 = L5_2 * 7
      L4_2 = L4_2(L5_2)
      L4_2 = L4_2 + 35
      L4_2 = L4_2 + 10
      L5_2 = A0_2.gold
      L6_2 = L5_2
      L5_2 = L5_2.removeSelf
      L5_2(L6_2)
      A0_2.gold = nil
      L5_2 = display
      L5_2 = L5_2.newRoundedRect
      L6_2 = A0_2.view
      L7_2 = display
      L7_2 = L7_2.contentWidth
      L8_2 = L4_2 / 2
      L7_2 = L7_2 - L8_2
      L7_2 = L7_2 - 5
      L8_2 = 31
      L9_2 = L4_2
      L10_2 = 32
      L11_2 = 15
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      A0_2.gold = L5_2
      L5_2 = A0_2.gold
      L6_2 = L5_2
      L5_2 = L5_2.setFillColor
      L7_2 = Constants
      L7_2 = L7_2.greenColor
      L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2()
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      L5_2 = A0_2.goldImage
      L6_2 = display
      L6_2 = L6_2.contentWidth
      L6_2 = L6_2 - L4_2
      L7_2 = A0_2.goldImage
      L7_2 = L7_2.width
      L7_2 = L7_2 / 2
      L6_2 = L6_2 + L7_2
      L5_2.x = L6_2
      L5_2 = A0_2.goldImage
      L5_2.y = 30
      L5_2 = A0_2.goldImage
      L6_2 = L5_2
      L5_2 = L5_2.toFront
      L5_2(L6_2)
      L5_2 = A0_2.goldLabel
      L5_2.text = L3_2
      L5_2 = A0_2.goldLabel
      L6_2 = display
      L6_2 = L6_2.contentWidth
      L6_2 = L6_2 - L4_2
      L6_2 = L6_2 + 29
      L7_2 = A0_2.goldLabel
      L7_2 = L7_2.width
      L7_2 = L7_2 / 2
      L6_2 = L6_2 + L7_2
      L5_2.x = L6_2
      L5_2 = A0_2.goldLabel
      L5_2.y = 30
      L5_2 = A0_2.goldLabel
      L6_2 = L5_2
      L5_2 = L5_2.toFront
      L5_2(L6_2)
      if A2_2 == true then
        L5_2 = L5_1
        L5_2 = L5_2.sparkle
        L6_2 = A0_2.view
        L7_2 = 1000
        L8_2 = A0_2.goldLabel
        L8_2 = L8_2.x
        L9_2 = A0_2.goldLabel
        L9_2 = L9_2.width
        L9_2 = L9_2 / 2
        L8_2 = L8_2 - L9_2
        L9_2 = A0_2.goldLabel
        L9_2 = L9_2.y
        L10_2 = A0_2.goldLabel
        L10_2 = L10_2.height
        L10_2 = L10_2 / 2
        L9_2 = L9_2 - L10_2
        L10_2 = A0_2.goldLabel
        L10_2 = L10_2.x
        L11_2 = A0_2.goldLabel
        L11_2 = L11_2.width
        L11_2 = L11_2 / 2
        L10_2 = L10_2 + L11_2
        L11_2 = A0_2.goldLabel
        L11_2 = L11_2.y
        L12_2 = A0_2.goldLabel
        L12_2 = L12_2.height
        L12_2 = L12_2 / 2
        L11_2 = L11_2 + L12_2
        L12_2 = 20
        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      end
    end
  end
end

setGold = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.storedGoldNumber
  L3_2 = mainPlayer
  L3_2 = L3_2.gold
  if L2_2 ~= L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setGold
    L4_2 = mainPlayer
    L4_2 = L4_2.gold
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end

updateGold = L15_1

function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = pairs
  L4_2 = A0_2.buttons
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.view
    L8_2.isVisible = A1_2
  end
  L3_2 = mainPlayer
  L3_2 = L3_2.rollingGold
  if L3_2 then
    L3_2 = A0_2.hudGold
    L3_2 = L3_2.view
    L3_2.isVisible = A2_2
  else
    L3_2 = A0_2.goldImage
    L3_2.isVisible = A2_2
    L3_2 = A0_2.gold
    L3_2.isVisible = A2_2
    L3_2 = A0_2.goldLabel
    L3_2.isVisible = A2_2
  end
  L3_2 = A0_2.backButton
  L3_2.isVisible = A1_2
end

setBarButtonsVisibility = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2.content
    L8_2 = L7_2
    L7_2 = L7_2.insert
    L9_2 = L6_2.view
    L7_2(L8_2, L9_2)
    L7_2 = L6_2.view
    L7_2.isVisible = false
    L7_2 = A0_2.buttons
    L7_2 = L7_2[L5_2]
    L8_2 = L7_2
    L7_2 = L7_2.setButtonView
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.setPosition
    L9_2 = 6
    L10_2 = 60
    L7_2(L8_2, L9_2, L10_2)
  end
end

setButtonsView = L15_1

function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.buttons
  if L1_2 then
    L1_2 = pairs
    L2_2 = A0_2.buttons
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L5_2.buttonView
      L6_2 = L6_2.destroyView
      if L6_2 then
        L6_2 = L5_2.buttonView
        L7_2 = L6_2
        L6_2 = L6_2.destroyView
        L6_2(L7_2)
      end
    end
  end
  L1_2 = A0_2.content
  L2_2 = L1_2
  L1_2 = L1_2.removeSelf
  L1_2(L2_2)
  A0_2.content = nil
  L1_2 = A0_2.view
  L2_2 = L1_2
  L1_2 = L1_2.removeSelf
  L1_2(L2_2)
  A0_2.view = nil
  A0_2.selectedTab = nil
  A0_2.buttonsLabel = nil
  A0_2.buttons = nil
  A0_2 = nil
end

destroyView = L15_1
