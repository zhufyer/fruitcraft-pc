local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "widget"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Utils.Toolbox"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Models.Player"
L4_1(L5_1)
L4_1 = require
L5_1 = "Constants"
L4_1(L5_1)
L4_1 = require
L5_1 = "Views.EffectsManager"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Components.TDButtonView"
L5_1 = L5_1(L6_1)
L6_1 = nil
L7_1 = nil
L8_1 = nil
L9_1 = nil
L10_1 = nil
L11_1 = nil

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = setmetatable
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  L2_2 = A1_2.callbackFunction
  L11_1 = L2_2
  L2_2 = display
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  A1_2.view = L2_2
  L2_2 = A1_2.view
  L2_2.x = 0
  L2_2 = A1_2.view
  L2_2.y = 0
  L2_2 = L5_1
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
  A1_2.backButton = L2_2
  L2_2 = A1_2.backButton
  L2_2.delegate = A1_2
  L2_2 = A1_2.view
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = A1_2.backButton
  L4_2 = L4_2.view
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.backButton
  L3_2 = A1_2.backButton
  L3_2 = L3_2.width
  L3_2 = L3_2 / 2
  L3_2 = 5 + L3_2
  L2_2.x = L3_2
  L2_2 = A1_2.backButton
  L3_2 = A1_2.backButton
  L3_2 = L3_2.height
  L3_2 = L3_2 / 2
  L2_2.y = L3_2
  L2_2 = display
  L2_2 = L2_2.newText
  L3_2 = A1_2.view
  L4_2 = "Title"
  L5_2 = 0
  L6_2 = 0
  L7_2 = Constants
  L7_2 = L7_2.fontForTitle
  L7_2 = L7_2()
  L8_2 = 22
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A1_2.title = L2_2
  L2_2 = A1_2.title
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = Constants
  L4_2 = L4_2.whiteColor
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L2_2 = A1_2.title
  L3_2 = display
  L3_2 = L3_2.contentCenterX
  L2_2.x = L3_2
  L2_2 = A1_2.title
  L2_2.y = 19
  L2_2 = nil
  L3_2 = mainPlayer
  L3_2 = L3_2.rollingGold
  if L3_2 then
    L3_2 = require
    L4_2 = "Components.TDCurrencyHUDView"
    L3_2 = L3_2(L4_2)
    L4_2 = {}
    L5_2 = mainPlayer
    L5_2 = L5_2.gold
    L4_2.goldValue = L5_2
    L5_2 = mainPlayer
    L5_2 = L5_2.nectar
    L4_2.nectarValue = L5_2
    L5_2 = Theme
    L5_2 = L5_2.goldIconImage
    L4_2.mainCurrencyImageFile = L5_2
    L5_2 = Theme
    L5_2 = L5_2.nectarIconImage
    L4_2.secondCurrencyImageFile = L5_2
    L6_2 = L3_2
    L5_2 = L3_2.new
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    A1_2.hudGold = L5_2
    L5_2 = A1_2.view
    L6_2 = L5_2
    L5_2 = L5_2.insert
    L7_2 = A1_2.hudGold
    L7_2 = L7_2.view
    L5_2(L6_2, L7_2)
    L5_2 = A1_2.hudGold
    L5_2 = L5_2.view
    L6_2 = display
    L6_2 = L6_2.contentWidth
    L7_2 = A1_2.hudGold
    L7_2 = L7_2.width
    L7_2 = L7_2 / 2
    L6_2 = L6_2 - L7_2
    L6_2 = L6_2 - 5
    L5_2.x = L6_2
    L5_2 = A1_2.hudGold
    L5_2 = L5_2.view
    L5_2.y = 20
    L5_2 = display
    L5_2 = L5_2.contentWidth
    L5_2 = L5_2 - 5
    L6_2 = A1_2.hudGold
    L6_2 = L6_2.width
    L5_2 = L5_2 - L6_2
    L2_2 = L5_2 - 5
  else
    L3_2 = L3_1
    L3_2 = L3_2.stringThousandCommaSeperated
    L4_2 = ""
    L5_2 = mainPlayer
    L5_2 = L5_2.gold
    L4_2 = L4_2 .. L5_2
    L3_2 = L3_2(L4_2)
    L4_2 = L3_1
    L4_2 = L4_2.addKForLargeNumber
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
    L4_2 = L2_1
    L4_2 = L4_2.adjustNumber
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
    L4_2 = mainPlayer
    L4_2 = L4_2.gold
    A1_2.displayedGoldValue = L4_2
    L4_2 = math
    L4_2 = L4_2.floor
    L6_2 = L3_2
    L5_2 = L3_2.len
    L5_2 = L5_2(L6_2)
    L6_2 = L2_1
    L6_2 = L6_2.charWidth
    L5_2 = L5_2 / L6_2
    L5_2 = L5_2 * 7
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2 + 35
    L4_2 = L4_2 + 10
    L5_2 = display
    L5_2 = L5_2.newRoundedRect
    L6_2 = A1_2.view
    L7_2 = display
    L7_2 = L7_2.contentWidth
    L8_2 = L4_2 / 2
    L7_2 = L7_2 - L8_2
    L7_2 = L7_2 - 5
    L8_2 = 20
    L9_2 = L4_2
    L10_2 = 32
    L11_2 = 15
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    A1_2.gold = L5_2
    L5_2 = A1_2.gold
    L6_2 = L5_2
    L5_2 = L5_2.setFillColor
    L7_2 = Constants
    L7_2 = L7_2.greenColor
    L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2()
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L5_2 = display
    L5_2 = L5_2.newImageRect
    L6_2 = A1_2.view
    L7_2 = Constants
    L7_2 = L7_2.Path_Assets
    L8_2 = "Navbar/FC-navbar-gold.png"
    L7_2 = L7_2 .. L8_2
    L8_2 = 25
    L9_2 = 24
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    A1_2.goldImage = L5_2
    L5_2 = A1_2.goldImage
    L6_2 = display
    L6_2 = L6_2.contentWidth
    L6_2 = L6_2 - L4_2
    L7_2 = A1_2.goldImage
    L7_2 = L7_2.width
    L7_2 = L7_2 / 2
    L6_2 = L6_2 + L7_2
    L5_2.x = L6_2
    L5_2 = A1_2.goldImage
    L5_2.y = 19
    L5_2 = display
    L5_2 = L5_2.newText
    L6_2 = A1_2.view
    L7_2 = L3_2
    L8_2 = 0
    L9_2 = 0
    L10_2 = Constants
    L10_2 = L10_2.fontForTitle
    L10_2 = L10_2()
    L11_2 = 13
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    A1_2.goldLabel = L5_2
    L5_2 = A1_2.goldLabel
    L6_2 = display
    L6_2 = L6_2.contentWidth
    L6_2 = L6_2 - L4_2
    L6_2 = L6_2 + 29
    L7_2 = A1_2.goldLabel
    L7_2 = L7_2.width
    L7_2 = L7_2 / 2
    L6_2 = L6_2 + L7_2
    L5_2.x = L6_2
    L5_2 = A1_2.goldLabel
    L5_2.y = 20
    L5_2 = display
    L5_2 = L5_2.contentWidth
    L5_2 = L5_2 - L4_2
    L2_2 = L5_2 - 8
  end
  L3_2 = A1_2.helpNotIncluded
  if L3_2 ~= true then
    L3_2 = L5_1
    L4_2 = L3_2
    L3_2 = L3_2.new
    L5_2 = {}
    L6_2 = Constants
    L6_2 = L6_2.Path_Assets
    L7_2 = "Navbar/FC-navbar-help.png"
    L6_2 = L6_2 .. L7_2
    L5_2.defaultFile = L6_2
    L6_2 = Constants
    L6_2 = L6_2.Path_Assets
    L7_2 = "Navbar/FC-navbar-help.png"
    L6_2 = L6_2 .. L7_2
    L5_2.default = L6_2
    L6_2 = Constants
    L6_2 = L6_2.Path_Assets
    L7_2 = "Navbar/FC-navbar-help-pressed.png"
    L6_2 = L6_2 .. L7_2
    L5_2.overFile = L6_2
    L5_2.width = 34
    L5_2.height = 34
    L6_2 = goHelp
    L5_2.onRelease = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    A1_2.helpButton = L3_2
    L3_2 = A1_2.view
    L4_2 = L3_2
    L3_2 = L3_2.insert
    L5_2 = A1_2.helpButton
    L5_2 = L5_2.view
    L3_2(L4_2, L5_2)
    L3_2 = A1_2.helpButton
    L3_2.delegate = A1_2
    L3_2 = A1_2.helpButton
    L4_2 = A1_2.helpButton
    L4_2 = L4_2.width
    L4_2 = L4_2 / 2
    L4_2 = L2_2 - L4_2
    L3_2.x = L4_2
    L3_2 = A1_2.helpButton
    L4_2 = A1_2.helpButton
    L4_2 = L4_2.height
    L4_2 = L4_2 / 2
    L4_2 = 2 + L4_2
    L3_2.y = L4_2
  end
  return A1_2
end

new = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.backButton
  L3_2 = L2_2
  L2_2 = L2_2.setEnabled
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

setEnableButtons = L12_1

function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.delegate
  L1_2 = L1_2.backButtonAction
  if L1_2 then
    L1_2 = A0_2.delegate
    L1_2 = L1_2.backButtonAction
    L1_2()
  else
    L1_2 = A0_2.delegate
    L1_2 = L1_2.previousScene
    if L1_2 ~= nil then
      L1_2 = log3
      L2_2 = "Going back to scene:"
      L3_2 = A0_2.delegate
      L3_2 = L3_2.previousScene
      L1_2(L2_2, L3_2)
      L1_2 = L0_1
      L1_2 = L1_2.gotoScene
      L2_2 = A0_2.delegate
      L2_2 = L2_2.previousScene
      L1_2(L2_2)
      L1_2 = A0_2.delegate
      L1_2 = L1_2.purgeOnFinish
      if L1_2 == true then
        L1_2 = A0_2.delegate
        L1_2 = L1_2.currentScene
        if L1_2 then
          L1_2 = L0_1
          L1_2 = L1_2.removeScene
          L2_2 = A0_2.delegate
          L2_2 = L2_2.currentScene
          L1_2(L2_2)
        end
      end
    end
  end
  L1_2 = L11_1
  if L1_2 then
    L1_2 = L11_1
    L1_2()
    L1_2 = nil
    L11_1 = L1_2
  end
end

goBack = L12_1

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.delegate
  L1_2 = L1_2.helpId
  if L1_2 ~= nil then
    L1_2 = A0_2.delegate
    L1_2 = L1_2.currentScene
    if not L1_2 then
      L1_2 = L0_1
      L1_2 = L1_2.getSceneName
      L2_2 = "current"
      L1_2 = L1_2(L2_2)
    end
    L2_2 = L0_1
    L2_2 = L2_2.gotoScene
    L3_2 = "Scenes.HelpScene"
    L4_2 = {}
    L5_2 = {}
    L6_2 = A0_2.delegate
    L6_2 = L6_2.helpId
    L5_2.helpId = L6_2
    L5_2.previousScene = L1_2
    L4_2.params = L5_2
    L2_2(L3_2, L4_2)
  end
end

goHelp = L12_1

function L12_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.left = A1_2
  L3_2 = A0_2.view
  L3_2.top = A2_2
end

setPosition = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = log3
  L3_2 = "Update gold called in nav bar, animated:"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.setGold
  L4_2 = mainPlayer
  L4_2 = L4_2.gold
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2.chatButton
  if L2_2 then
    L2_2 = A0_2.chatButton
    L3_2 = L2_2
    L2_2 = L2_2.updateText
    L2_2(L3_2)
  end
end

updateGold = L12_1

function L12_1(A0_2)
  local L1_2
  L1_2 = A0_2.helpButton
  L1_2.isVisible = false
  L1_2 = A0_2.backButton
  L1_2.isVisible = false
  L1_2 = A0_2.title
  L1_2.isVisible = false
  L1_2 = mainPlayer
  L1_2 = L1_2.rollingGold
  if L1_2 then
    L1_2 = A0_2.hudGold
    L1_2 = L1_2.view
    L1_2.isVisible = false
  else
    L1_2 = A0_2.gold
    L1_2.isVisible = false
    L1_2 = A0_2.goldImage
    L1_2.isVisible = false
    L1_2 = A0_2.goldLabel
    L1_2.isVisible = false
  end
end

hideItems = L12_1

function L12_1(A0_2)
  local L1_2
  L1_2 = A0_2.helpButton
  L1_2.isVisible = true
  L1_2 = A0_2.backButton
  L1_2.isVisible = true
  L1_2 = A0_2.title
  L1_2.isVisible = true
  L1_2 = mainPlayer
  L1_2 = L1_2.rollingGold
  if L1_2 then
    L1_2 = A0_2.hudGold
    L1_2 = L1_2.view
    L1_2.isVisible = true
  else
    L1_2 = A0_2.gold
    L1_2.isVisible = true
    L1_2 = A0_2.goldImage
    L1_2.isVisible = true
    L1_2 = A0_2.goldLabel
    L1_2.isVisible = true
  end
end

makeItemsVisible = L12_1

function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.hudGold
  L4_2 = L3_2
  L3_2 = L3_2.setCurrency
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2)
end

setNectar = L12_1

function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = mainPlayer
  L3_2 = L3_2.rollingGold
  if L3_2 then
    L3_2 = A0_2.hudGold
    L4_2 = L3_2
    L3_2 = L3_2.setCurrency
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = A0_2.displayedGoldValue
    if L3_2 ~= A1_2 then
      L3_2 = L3_1
      L3_2 = L3_2.stringThousandCommaSeperated
      L4_2 = ""
      L5_2 = A1_2
      L4_2 = L4_2 .. L5_2
      L3_2 = L3_2(L4_2)
      L4_2 = L3_1
      L4_2 = L4_2.addKForLargeNumber
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L3_2 = L4_2
      L4_2 = L2_1
      L4_2 = L4_2.adjustNumber
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L3_2 = L4_2
      L4_2 = A0_2.goldLabel
      L4_2.text = L3_2
      A0_2.displayedGoldValue = A1_2
      L4_2 = math
      L4_2 = L4_2.floor
      L5_2 = A0_2.goldLabel
      L5_2 = L5_2.text
      L6_2 = L5_2
      L5_2 = L5_2.len
      L5_2 = L5_2(L6_2)
      L6_2 = L2_1
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
      L8_2 = 20
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
      L6_2 = L5_2
      L5_2 = L5_2.toFront
      L5_2(L6_2)
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
      L6_2 = L5_2
      L5_2 = L5_2.toFront
      L5_2(L6_2)
      L5_2 = A0_2.helpButton
      L6_2 = display
      L6_2 = L6_2.contentWidth
      L6_2 = L6_2 - L4_2
      L6_2 = L6_2 - 8
      L7_2 = A0_2.helpButton
      L7_2 = L7_2.width
      L7_2 = L7_2 / 2
      L6_2 = L6_2 - L7_2
      L5_2.x = L6_2
      if A2_2 then
        L5_2 = L4_1
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

setGold = L12_1

function L12_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.title
  L2_2.text = A1_2
end

setTitle = L12_1
