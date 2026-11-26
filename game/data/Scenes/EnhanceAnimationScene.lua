local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.SceneCreator"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.CardView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Utils.Toolbox"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Components.AudioManager"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Models.UserCard"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Tutorial.TutorialManager2"
L7_1 = L7_1(L8_1)
L8_1 = L1_1.newScene
L9_1 = "EnhanceAnimationScene"
L8_1 = L8_1(L9_1)
L9_1 = false
L10_1 = Constants
L10_1 = L10_1.Path_Assets
L11_1 = "Audio/FC-evolve.wav"
L10_1 = L10_1 .. L11_1
L8_1.enhancedCard = nil
L11_1 = {}
L8_1.sacrificeCards = L11_1
L11_1 = 20

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = log3
  L3_2 = "create scene"
  L2_2(L3_2)
  L2_2 = A0_2.view
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = A0_2.view
  L5_2 = 0
  L6_2 = 0
  L7_2 = 570
  L8_2 = 360
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.background = L3_2
  L3_2 = A0_2.background
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 255
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2.background
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L3_2 = A0_2.background
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L3_2 = A0_2.background
  L4_2 = L3_2
  L3_2 = L3_2.addEventListener
  L5_2 = "tap"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.gotoNextScene
    L0_3(L1_3)
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = {}
  A0_2.junks = L3_2
  L3_2 = 1
  L4_2 = L11_1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = 1
    L9_2 = 4
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = display
    L8_2 = L8_2.newImageRect
    L9_2 = A0_2.view
    L10_2 = Constants
    L10_2 = L10_2.Path_Assets
    L11_2 = "General/FC-junk"
    L12_2 = L7_2
    L13_2 = ".png"
    L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2
    L11_2 = 50
    L12_2 = 50
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2.alpha = 0
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2.junks
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A0_2.view
  L5_2 = L2_1
  L5_2 = L5_2["Tap to continue"]
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L7_2 = display
  L7_2 = L7_2.contentCenterY
  L7_2 = L7_2 - 8
  L8_2 = Constants
  L8_2 = L8_2.fontForTitle
  L8_2 = L8_2()
  L9_2 = 12
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2.continueLabel = L3_2
  L3_2 = A0_2.continueLabel
  L4_2 = display
  L4_2 = L4_2.contentWidth
  L4_2 = L4_2 - 10
  L5_2 = A0_2.continueLabel
  L5_2 = L5_2.width
  L5_2 = L5_2 / 2
  L4_2 = L4_2 - L5_2
  L3_2.x = L4_2
  L3_2 = A0_2.continueLabel
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 - 20
  L3_2.y = L4_2
  L3_2 = A0_2.continueLabel
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.whiteColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L3_2 = A0_2.continueLabel
  L3_2.isVisible = false
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  A0_2.enhanceGroup = L3_2
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.enhanceGroup
  L3_2(L4_2, L5_2)
end

L8_1.create = L12_1

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2.nectarTable = L1_2
  L1_2 = Theme
  L1_2 = L1_2.nectarIconImage
  L2_2 = 1
  L3_2 = 20
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.nectarTable
    L7_2 = display
    L7_2 = L7_2.newImageRect
    L8_2 = A0_2.view
    L9_2 = L1_2
    L10_2 = 24
    L11_2 = 40
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L6_2[L5_2] = L7_2
    L6_2 = A0_2.nectarTable
    L6_2 = L6_2[L5_2]
    L6_2.alpha = 0
  end
end

L8_1.createNectarForAnimation = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = log3
  L3_2 = "enter scene"
  L2_2(L3_2)
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = assert
    L5_2 = A1_2.params
    if L5_2 then
      L5_2 = A1_2.params
      L5_2 = L5_2.enhancedCard
      if L5_2 then
        L5_2 = A1_2.params
        L5_2 = L5_2.originalPower
      end
    end
    L6_2 = "Event params which includes items needs to be provided for EnhanceAnimationScene."
    L4_2(L5_2, L6_2)
    L4_2 = A1_2.params
    if L4_2 then
      L4_2 = false
      L9_1 = L4_2
      L4_2 = A1_2.params
      L4_2 = L4_2.enhancedCard
      A0_2.enhancedCard = L4_2
      L4_2 = A1_2.params
      L4_2 = L4_2.sacrifices
      if L4_2 then
        L4_2 = A1_2.params
        L4_2 = L4_2.sacrifices
        A0_2.sacrificeCards = L4_2
        A0_2.hasSacrificedCard = true
      else
        L5_2 = A0_2
        L4_2 = A0_2.createNectarForAnimation
        L4_2(L5_2)
      end
      L4_2 = A1_2.params
      L4_2 = L4_2.originalPower
      A0_2.originalPower = L4_2
      L4_2 = A0_2.enhancedCard
      L4_2 = L4_2.power
      A0_2.finalPower = L4_2
      L5_2 = A0_2
      L4_2 = A0_2.setupCardViews
      L4_2(L5_2)
      L4_2 = A0_2.continueLabel
      L4_2.alpha = 0
      L4_2 = A0_2.continueLabel
      L4_2.isVisible = true
      
      function L4_2()
        local L0_3, L1_3
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.gotoNextScene
        L0_3(L1_3)
      end
      
      _backAction = L4_2
      L5_2 = A0_2
      L4_2 = A0_2.setupCardPositions
      L4_2(L5_2)
      L4_2 = A0_2.hasSacrificedCard
      if L4_2 then
        L5_2 = A0_2
        L4_2 = A0_2.animateSacrificeCards
        L4_2(L5_2)
      else
        L5_2 = A0_2
        L4_2 = A0_2.animateNectarToCard
        L4_2(L5_2)
      end
    end
    L4_2 = L7_1
    L4_2 = L4_2.checkForTutorial
    L5_2 = "Scenes.EnhanceAnimationScene"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
  end
end

L8_1.show = L12_1

function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = L9_1
  if L1_2 then
    L1_2 = log3
    L1_2()
    L1_2 = L0_1
    L1_2 = L1_2.gotoScene
    L2_2 = "Scenes.Cards"
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.skipAnimations
    L1_2(L2_2)
  end
end

L8_1.gotoNextScene = L12_1

function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = log3
  L1_2()
  L1_2 = transition
  L1_2 = L1_2.cancel
  L2_2 = "EnhanceAnimationScene"
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.removeSacrificeCards
  L1_2(L2_2)
  L1_2 = A0_2.enhancedCardView
  L1_2 = L1_2.power
  L2_2 = L1_2
  L1_2 = L1_2.cancelAndFinishAnimation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.hideJunk
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.showContinueButton
  L3_2 = false
  L1_2(L2_2, L3_2)
end

L8_1.skipAnimations = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = ipairs
  L3_2 = A0_2.junks
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = display
    L7_2 = L7_2.contentCenterX
    L6_2.x = L7_2
    L7_2 = display
    L7_2 = L7_2.contentCenterY
    L6_2.y = L7_2
    L6_2.alpha = 0
    L8_2 = L6_2
    L7_2 = L6_2.toFront
    L7_2(L8_2)
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = 0
    L9_2 = 360
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = display
    L8_2 = L8_2.contentWidth
    L9_2 = math
    L9_2 = L9_2.cos
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    L9_2 = L9_2 * L8_2
    L10_2 = display
    L10_2 = L10_2.contentCenterX
    L9_2 = L9_2 + L10_2
    L6_2.positionX = L9_2
    L9_2 = math
    L9_2 = L9_2.sin
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    L9_2 = L9_2 * L8_2
    L10_2 = display
    L10_2 = L10_2.contentCenterY
    L9_2 = L9_2 + L10_2
    L6_2.positionY = L9_2
    L9_2 = math
    L9_2 = L9_2.random
    L10_2 = 80
    L11_2 = A1_2 - 300
    L9_2 = L9_2(L10_2, L11_2)
    L6_2.delayTime = L9_2
    L9_2 = transition
    L9_2 = L9_2.to
    L10_2 = L6_2
    L11_2 = {}
    L11_2.time = 1200
    L12_2 = L6_2.delayTime
    L11_2.delay = L12_2
    L12_2 = L6_2.positionX
    L11_2.x = L12_2
    L12_2 = L6_2.positionY
    L11_2.y = L12_2
    L11_2.alpha = 1
    L11_2.tag = "EnhanceAnimationScene"
    L9_2(L10_2, L11_2)
  end
end

L8_1.animateJunk = L12_1

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = pairs
  L2_2 = A0_2.nectarTable
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 0
    L8_2 = 360
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = display
    L7_2 = L7_2.contentWidth
    L8_2 = math
    L8_2 = L8_2.cos
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2 * L7_2
    L9_2 = display
    L9_2 = L9_2.contentCenterX
    L8_2 = L8_2 + L9_2
    L5_2.x = L8_2
    L8_2 = math
    L8_2 = L8_2.sin
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2 * L7_2
    L9_2 = display
    L9_2 = L9_2.contentCenterY
    L8_2 = L8_2 + L9_2
    L5_2.y = L8_2
    L8_2 = display
    L8_2 = L8_2.contentCenterX
    L5_2.xPosition = L8_2
    L8_2 = display
    L8_2 = L8_2.contentCenterY
    L5_2.yPosition = L8_2
    L8_2 = math
    L8_2 = L8_2.random
    L9_2 = 300
    L10_2 = 1400
    L8_2 = L8_2(L9_2, L10_2)
    if L4_2 == 1 then
      L8_2 = 250
    end
    L9_2 = transition
    L9_2 = L9_2.to
    L10_2 = L5_2
    L11_2 = {}
    L11_2.time = 600
    L11_2.delay = L8_2
    L12_2 = L5_2.xPosition
    L11_2.x = L12_2
    L12_2 = L5_2.yPosition
    L11_2.y = L12_2
    L11_2.alpha = 1
    L11_2.tag = "EnhanceAnimationScene"
    
    function L12_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = L5_2
      L0_3.alpha = 0
      L0_3 = A0_2
      L0_3 = L0_3.enhancedCardView
      L1_3 = L0_3
      L0_3 = L0_3.shakeCard
      L2_3 = 1
      L3_3 = 4
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = A0_2
      L0_3 = L0_3.enhancedCardView
      L0_3 = L0_3.power
      L1_3 = L0_3
      L0_3 = L0_3.setValue
      L2_3 = A0_2
      L2_3 = L2_3.finalPower
      L0_3(L1_3, L2_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.showContinueButton
      L0_3(L1_3)
    end
    
    L11_2.onComplete = L12_2
    L9_2(L10_2, L11_2)
  end
end

L8_1.animateNectarToCard = L12_1

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2.sacrificeCardViews = L1_2
  L1_2 = A0_2.hasSacrificedCard
  if L1_2 then
    L1_2 = pairs
    L2_2 = A0_2.sacrificeCards
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L3_1
      L7_2 = L6_2
      L6_2 = L6_2.new
      L8_2 = "medium"
      L9_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L8_2 = L6_2
      L7_2 = L6_2.setSelectable
      L9_2 = false
      L7_2(L8_2, L9_2)
      L8_2 = L6_2
      L7_2 = L6_2.hideCooldownView
      L7_2(L8_2)
      L8_2 = L6_2
      L7_2 = L6_2.deselected
      L7_2(L8_2)
      L8_2 = L6_2
      L7_2 = L6_2.setId
      L9_2 = L4_2
      L7_2(L8_2, L9_2)
      L7_2 = A0_2.view
      L8_2 = L7_2
      L7_2 = L7_2.insert
      L9_2 = L6_2.view
      L7_2(L8_2, L9_2)
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2.sacrificeCardViews
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = "medium"
  L4_2 = A0_2.enhancedCard
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.enhancedCardView = L1_2
  L1_2 = A0_2.enhancedCardView
  L2_2 = L1_2
  L1_2 = L1_2.setSelectable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.enhancedCardView
  L2_2 = L1_2
  L1_2 = L1_2.hideCooldownView
  L1_2(L2_2)
  L1_2 = A0_2.enhancedCardView
  L2_2 = L1_2
  L1_2 = L1_2.deselected
  L1_2(L2_2)
  L1_2 = A0_2.enhancedCardView
  L2_2 = L1_2
  L1_2 = L1_2.setId
  L3_2 = A0_2.enhancedCard
  L3_2 = L3_2.id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.enhanceGroup
  L2_2 = L1_2
  L1_2 = L1_2.insert
  L3_2 = A0_2.enhancedCardView
  L3_2 = L3_2.view
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.enhancedCardView
  L2_2 = L1_2
  L1_2 = L1_2.addEnterFrameListener
  L1_2(L2_2)
  L1_2 = A0_2.hasSacrificedCard
  if L1_2 then
    L1_2 = A0_2.enhancedCardView
    L1_2 = L1_2.power
    L2_2 = A0_2.sacrificeCardViews
    L2_2 = #L2_2
    L2_2 = L2_2 * 300
    L1_2.numberUpdateAnimationLength = L2_2
  else
    L1_2 = A0_2.enhancedCardView
    L1_2 = L1_2.power
    L1_2.numberUpdateAnimationLength = 600
  end
  L1_2 = A0_2.enhancedCardView
  L1_2 = L1_2.power
  L2_2 = A0_2.originalPower
  L1_2.text = L2_2
end

L8_1.setupCardViews = L12_1

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.enhancedCardView
  L2_2 = L1_2
  L1_2 = L1_2.setPosition
  L3_2 = A0_2.enhancedCardView
  L3_2 = L3_2.cardWidth
  L3_2 = -L3_2
  L3_2 = L3_2 / 2
  L4_2 = A0_2.enhancedCardView
  L4_2 = L4_2.cardHeight
  L4_2 = -L4_2
  L4_2 = L4_2 / 2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.enhanceGroup
  L2_2 = display
  L2_2 = L2_2.contentCenterX
  L1_2.x = L2_2
  L1_2 = A0_2.enhanceGroup
  L2_2 = display
  L2_2 = L2_2.contentCenterY
  L1_2.y = L2_2
  L1_2 = A0_2.enhanceGroup
  L2_2 = L1_2
  L1_2 = L1_2.toFront
  L1_2(L2_2)
  L1_2 = A0_2.hasSacrificedCard
  if L1_2 then
    L1_2 = ipairs
    L2_2 = A0_2.sacrificeCardViews
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L7_2 = L5_2
      L6_2 = L5_2.setPosition
      L8_2 = L4_2 % 2
      L9_2 = display
      L9_2 = L9_2.contentWidth
      L8_2 = L8_2 * L9_2
      L9_2 = L4_2 + 1
      L9_2 = L9_2 % 2
      L10_2 = L5_2.cardWidth
      L9_2 = L9_2 * L10_2
      L8_2 = L8_2 - L9_2
      L9_2 = math
      L9_2 = L9_2.pow
      L10_2 = -1
      L11_2 = L4_2 + 1
      L9_2 = L9_2(L10_2, L11_2)
      L9_2 = L9_2 * 50
      L8_2 = L8_2 + L9_2
      L9_2 = display
      L9_2 = L9_2.contentCenterY
      L10_2 = L5_2.cardHeight
      L10_2 = L10_2 / 2
      L9_2 = L9_2 - L10_2
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end

L8_1.setupCardPositions = L12_1

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = log3
  L1_2()
  L1_2 = ipairs
  L2_2 = A0_2.sacrificeCardViews
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = transition
    L6_2 = L6_2.to
    L7_2 = L5_2.view
    L8_2 = {}
    L8_2.time = 360
    L8_2.tag = "EnhanceAnimationScene"
    L9_2 = L4_2 - 1
    L9_2 = L9_2 * 300
    L8_2.delay = L9_2
    L9_2 = display
    L9_2 = L9_2.contentCenterX
    L10_2 = L5_2.cardWidth
    L10_2 = L10_2 / 2
    L9_2 = L9_2 - L10_2
    L8_2.x = L9_2
    
    function L9_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = A0_2
      L0_3 = L0_3.enhancedCardView
      L1_3 = L0_3
      L0_3 = L0_3.shakeCard
      L2_3 = 1
      L3_3 = 4
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L5_2
      L0_3 = L0_3.view
      L0_3.isVisible = false
      L0_3 = L4_2
      L1_3 = A0_2
      L1_3 = L1_3.sacrificeCardViews
      L1_3 = #L1_3
      if L0_3 == L1_3 then
        L0_3 = transition
        L0_3 = L0_3.to
        L1_3 = A0_2
        L1_3 = L1_3.enhanceGroup
        L2_3 = {}
        L2_3.time = 90
        L2_3.tag = "EnhanceAnimationScene"
        L2_3.xScale = 1.2
        L2_3.yScale = 1.2
        
        function L3_3()
          local L0_4, L1_4, L2_4, L3_4
          L0_4 = transition
          L0_4 = L0_4.to
          L1_4 = A0_2
          L1_4 = L1_4.enhanceGroup
          L2_4 = {}
          L2_4.time = 900
          L2_4.tag = "EnhanceAnimationScene"
          L2_4.xScale = 1
          L2_4.yScale = 1
          L3_4 = easing
          L3_4 = L3_4.outElastic
          L2_4.transition = L3_4
          
          function L3_4()
            local L0_5, L1_5
            L0_5 = A0_2
            L1_5 = L0_5
            L0_5 = L0_5.showContinueButton
            L0_5(L1_5)
          end
          
          L2_4.onComplete = L3_4
          L0_4(L1_4, L2_4)
        end
        
        L2_3.onComplete = L3_3
        L0_3(L1_3, L2_3)
      end
    end
    
    L8_2.onComplete = L9_2
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.animateJunk
  L3_2 = A0_2.sacrificeCardViews
  L3_2 = #L3_2
  L3_2 = L3_2 * 400
  L1_2(L2_2, L3_2)
  L1_2 = log3
  L2_2 = "Initial power:"
  L3_2 = A0_2.originalPower
  L4_2 = "final power:"
  L5_2 = A0_2.finalPower
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.enhancedCardView
  L1_2 = L1_2.power
  L2_2 = L1_2
  L1_2 = L1_2.setValue
  L3_2 = A0_2.finalPower
  L1_2(L2_2, L3_2)
end

L8_1.animateSacrificeCards = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = true
  L9_1 = L2_2
  if A1_2 then
    L2_2 = timer
    L2_2 = L2_2.performWithDelay
    L3_2 = 400
    
    function L4_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2
      L0_3 = L0_3.continueLabel
      L1_3 = L0_3
      L0_3 = L0_3.toFront
      L0_3(L1_3)
      L0_3 = transition
      L0_3 = L0_3.to
      L1_3 = A0_2
      L1_3 = L1_3.continueLabel
      L2_3 = {}
      L2_3.time = 500
      L2_3.tag = "EnhanceAnimationScene"
      L2_3.alpha = 1
      L0_3(L1_3, L2_3)
    end
    
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2.continueLabel
    L3_2 = L2_2
    L2_2 = L2_2.toFront
    L2_2(L3_2)
    L2_2 = A0_2.continueLabel
    L2_2.alpha = 1
  end
end

L8_1.showContinueButton = L12_1

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ipairs
  L2_2 = A0_2.junks
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L5_2.alpha = 0
  end
end

L8_1.hideJunk = L12_1

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2.sacrificeCardViews
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.removeSelf
    L6_2(L7_2)
  end
  L1_2 = {}
  A0_2.sacrificeCardViews = L1_2
end

L8_1.removeSacrificeCards = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = A0_2.enhancedCardView
    if L4_2 then
      L4_2 = A0_2.enhancedCardView
      L5_2 = L4_2
      L4_2 = L4_2.removeEnterFrameListener
      L4_2(L5_2)
    end
    L4_2 = A0_2.enhancedCardView
    L5_2 = L4_2
    L4_2 = L4_2.removeSelf
    L4_2(L5_2)
    A0_2.enhancedCardView = nil
    L4_2 = A0_2.nectarTable
    if L4_2 then
      L4_2 = pairs
      L5_2 = A0_2.nectarTable
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L9_2 = display
        L9_2 = L9_2.remove
        L10_2 = L8_2
        L9_2(L10_2)
        L8_2 = nil
      end
      L4_2 = {}
      A0_2.nectarTable = L4_2
    end
    L4_2 = transition
    L4_2 = L4_2.cancel
    L5_2 = "EnhanceAnimationScene"
    L4_2(L5_2)
    L5_2 = A0_2
    L4_2 = A0_2.removeSacrificeCards
    L4_2(L5_2)
    L5_2 = A0_2
    L4_2 = A0_2.hideJunk
    L4_2(L5_2)
    A0_2.hasSacrificedCard = false
  end
end

L8_1.hide = L12_1
L13_1 = L8_1
L12_1 = L8_1.addEventListener
L14_1 = "create"
L15_1 = L8_1
L12_1(L13_1, L14_1, L15_1)
L13_1 = L8_1
L12_1 = L8_1.addEventListener
L14_1 = "show"
L15_1 = L8_1
L12_1(L13_1, L14_1, L15_1)
L13_1 = L8_1
L12_1 = L8_1.addEventListener
L14_1 = "hide"
L15_1 = L8_1
L12_1(L13_1, L14_1, L15_1)
return L8_1
