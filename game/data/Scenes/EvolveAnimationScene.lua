local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
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
L4_1 = "Constants"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.CardView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Components.AudioManager"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Tutorial.TutorialManager2"
L6_1 = L6_1(L7_1)
L7_1 = L1_1.newScene
L8_1 = "EvolveAnimationScene"
L7_1 = L7_1(L8_1)
L7_1.receivedItems = nil
L8_1 = false

function L9_1(A0_2, A1_2)
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
  L6_2 = gotoReceivedView
  L3_2(L4_2, L5_2, L6_2)
  A0_2.evolveCard = nil
  A0_2.firstCard = nil
  A0_2.secondCard = nil
  A0_2.evolveCardView = nil
  A0_2.firstCardView = nil
  A0_2.secondCardView = nil
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = A0_2.view
  L5_2 = L3_1
  L5_2 = L5_2.Path_Assets
  L6_2 = "General/FC-evolve-glow.png"
  L5_2 = L5_2 .. L6_2
  L6_2 = 300
  L7_2 = 300
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  A0_2.glow = L3_2
  L3_2 = A0_2.glow
  L3_2.alpha = 0
  L3_2 = A0_2.glow
  L3_2.xScale = 0.1
  L3_2 = A0_2.glow
  L3_2.yScale = 0.1
  L3_2 = A0_2.glow
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L3_2 = A0_2.glow
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L3_2 = {}
  A0_2.junks = L3_2
  L3_2 = 1
  L4_2 = 20
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
    L10_2 = L3_1
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
  L8_2 = L3_1
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
  L5_2 = L3_1
  L5_2 = L5_2.whiteColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L3_2 = A0_2.continueLabel
  L3_2.isVisible = false
end

L7_1.create = L9_1

function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = L8_1
  if L1_2 then
    L1_2 = log3
    L1_2()
    L1_2 = L0_1
    L1_2 = L1_2.gotoScene
    L2_2 = "Scenes.Cards"
    L1_2(L2_2)
  end
end

gotoReceivedView = L9_1
L9_1 = L3_1.Path_Assets
L10_1 = "Audio/FC-evolve.wav"
L9_1 = L9_1 .. L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
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
      L5_2 = L5_2.card1
      if L5_2 then
        L5_2 = A1_2.params
        L5_2 = L5_2.card2
        if L5_2 then
          L5_2 = A1_2.params
          L5_2 = L5_2.result
        end
      end
    end
    L6_2 = "Event params which includes items needs to be provided for EvolveAnimationScene."
    L4_2(L5_2, L6_2)
    L4_2 = A1_2.params
    if L4_2 then
      L4_2 = false
      L8_1 = L4_2
      L4_2 = A1_2.params
      L4_2 = L4_2.card1
      A0_2.firstCard = L4_2
      L4_2 = A1_2.params
      L4_2 = L4_2.card2
      A0_2.secondCard = L4_2
      L4_2 = A1_2.params
      L4_2 = L4_2.result
      A0_2.evolveCard = L4_2
      L4_2 = math
      L4_2 = L4_2.floor
      L5_2 = 223.30832776303114
      L4_2 = L4_2(L5_2)
      L5_2 = 300
      L6_2 = L4_1
      L7_2 = L6_2
      L6_2 = L6_2.new
      L8_2 = "big"
      L9_2 = A0_2.evolveCard
      L10_2 = L7_1
      L11_2 = {}
      L11_2.cardHeight = 300
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      A0_2.evolveCardView = L6_2
      L6_2 = A0_2.evolveCardView
      L7_2 = L6_2
      L6_2 = L6_2.setSelectable
      L8_2 = false
      L6_2(L7_2, L8_2)
      L6_2 = A0_2.evolveCardView
      L7_2 = L6_2
      L6_2 = L6_2.deselected
      L6_2(L7_2)
      L6_2 = A0_2.evolveCardView
      L7_2 = L6_2
      L6_2 = L6_2.setId
      L8_2 = A0_2.evolveCard
      L8_2 = L8_2.id
      L6_2(L7_2, L8_2)
      L6_2 = A0_2.view
      L7_2 = L6_2
      L6_2 = L6_2.insert
      L8_2 = A0_2.evolveCardView
      L8_2 = L8_2.view
      L6_2(L7_2, L8_2)
      L6_2 = A0_2.evolveCardView
      L7_2 = L6_2
      L6_2 = L6_2.setPosition
      L8_2 = display
      L8_2 = L8_2.contentCenterX
      L9_2 = L4_2 / 2
      L8_2 = L8_2 - L9_2
      L9_2 = display
      L9_2 = L9_2.contentCenterY
      L10_2 = L5_2 / 2
      L9_2 = L9_2 - L10_2
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = A0_2.evolveCardView
      L6_2 = L6_2.view
      L6_2.alpha = 0
      L6_2 = L4_1
      L7_2 = L6_2
      L6_2 = L6_2.new
      L8_2 = "big"
      L9_2 = A0_2.firstCard
      L10_2 = L7_1
      L11_2 = {}
      L11_2.cardHeight = 300
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      A0_2.firstCardView = L6_2
      L6_2 = A0_2.firstCardView
      L7_2 = L6_2
      L6_2 = L6_2.setSelectable
      L8_2 = false
      L6_2(L7_2, L8_2)
      L6_2 = A0_2.firstCardView
      L7_2 = L6_2
      L6_2 = L6_2.deselected
      L6_2(L7_2)
      L6_2 = A0_2.firstCardView
      L7_2 = L6_2
      L6_2 = L6_2.setId
      L8_2 = A0_2.firstCard
      L8_2 = L8_2.id
      L6_2(L7_2, L8_2)
      L6_2 = A0_2.view
      L7_2 = L6_2
      L6_2 = L6_2.insert
      L8_2 = A0_2.firstCardView
      L8_2 = L8_2.view
      L6_2(L7_2, L8_2)
      L6_2 = A0_2.firstCardView
      L7_2 = L6_2
      L6_2 = L6_2.setPosition
      L8_2 = -L4_2
      L9_2 = display
      L9_2 = L9_2.contentCenterY
      L10_2 = L5_2 / 2
      L9_2 = L9_2 - L10_2
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = L4_1
      L7_2 = L6_2
      L6_2 = L6_2.new
      L8_2 = "big"
      L9_2 = A0_2.secondCard
      L10_2 = L7_1
      L11_2 = {}
      L11_2.cardHeight = 300
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      A0_2.secondCardView = L6_2
      L6_2 = A0_2.secondCardView
      L7_2 = L6_2
      L6_2 = L6_2.setSelectable
      L8_2 = false
      L6_2(L7_2, L8_2)
      L6_2 = A0_2.secondCardView
      L7_2 = L6_2
      L6_2 = L6_2.deselected
      L6_2(L7_2)
      L6_2 = A0_2.secondCardView
      L7_2 = L6_2
      L6_2 = L6_2.setId
      L8_2 = A0_2.secondCard
      L8_2 = L8_2.id
      L6_2(L7_2, L8_2)
      L6_2 = A0_2.view
      L7_2 = L6_2
      L6_2 = L6_2.insert
      L8_2 = A0_2.secondCardView
      L8_2 = L8_2.view
      L6_2(L7_2, L8_2)
      L6_2 = A0_2.secondCardView
      L7_2 = L6_2
      L6_2 = L6_2.setPosition
      L8_2 = display
      L8_2 = L8_2.contentWidth
      L9_2 = display
      L9_2 = L9_2.contentCenterY
      L10_2 = L5_2 / 2
      L9_2 = L9_2 - L10_2
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = A0_2.glow
      L6_2.alpha = 0
      L6_2 = A0_2.glow
      L6_2.xScale = 0.1
      L6_2 = A0_2.glow
      L6_2.yScale = 0.1
      L6_2 = A0_2.glow
      L7_2 = L6_2
      L6_2 = L6_2.toFront
      L6_2(L7_2)
      L6_2 = A0_2.continueLabel
      L6_2.alpha = 0
      L6_2 = A0_2.continueLabel
      L6_2.isVisible = true
      
      function L6_2()
        local L0_3, L1_3
        L0_3 = gotoReceivedView
        L0_3()
      end
      
      _backAction = L6_2
      L6_2 = transition
      L6_2 = L6_2.to
      L7_2 = A0_2.firstCardView
      L7_2 = L7_2.view
      L8_2 = {}
      L8_2.time = 700
      L9_2 = easing
      L9_2 = L9_2.outExpo
      L8_2.transition = L9_2
      L9_2 = display
      L9_2 = L9_2.contentCenterX
      L10_2 = L4_2 / 2
      L9_2 = L9_2 - L10_2
      L8_2.x = L9_2
      L6_2(L7_2, L8_2)
      L6_2 = transition
      L6_2 = L6_2.to
      L7_2 = A0_2.secondCardView
      L7_2 = L7_2.view
      L8_2 = {}
      L8_2.time = 700
      L9_2 = easing
      L9_2 = L9_2.outExpo
      L8_2.transition = L9_2
      L9_2 = display
      L9_2 = L9_2.contentCenterX
      L10_2 = L4_2 / 2
      L9_2 = L9_2 - L10_2
      L8_2.x = L9_2
      L6_2(L7_2, L8_2)
      L6_2 = timer
      L6_2 = L6_2.performWithDelay
      L7_2 = 300
      
      function L8_2()
        local L0_3, L1_3
        L0_3 = L5_1
        L0_3 = L0_3.playEffect
        L1_3 = L9_1
        L0_3(L1_3)
      end
      
      L6_2(L7_2, L8_2)
      L6_2 = transition
      L6_2 = L6_2.to
      L7_2 = A0_2.glow
      L8_2 = {}
      L8_2.time = 400
      L8_2.delay = 200
      L8_2.alpha = 1
      L8_2.xScale = 4
      L8_2.yScale = 4
      
      function L9_2()
        local L0_3, L1_3, L2_3
        L0_3 = A0_2
        L0_3.currentTransition = nil
        L0_3 = A0_2
        L0_3 = L0_3.evolveCardView
        if L0_3 ~= nil then
          L0_3 = A0_2
          L0_3 = L0_3.evolveCardView
          L0_3 = L0_3.view
          L0_3.alpha = 1
          L0_3 = A0_2
          L0_3 = L0_3.firstCardView
          L0_3 = L0_3.view
          L0_3.alpha = 0
          L0_3 = A0_2
          L0_3 = L0_3.secondCardView
          L0_3 = L0_3.view
          L0_3.alpha = 0
          L0_3 = transition
          L0_3 = L0_3.to
          L1_3 = A0_2
          L1_3 = L1_3.glow
          L2_3 = {}
          L2_3.time = 900
          L2_3.alpha = 0
          L0_3(L1_3, L2_3)
          L0_3 = timer
          L0_3 = L0_3.performWithDelay
          L1_3 = 400
          
          function L2_3()
            local L0_4, L1_4, L2_4
            L0_4 = true
            L8_1 = L0_4
            L0_4 = A0_2
            L0_4 = L0_4.continueLabel
            L1_4 = L0_4
            L0_4 = L0_4.toFront
            L0_4(L1_4)
            L0_4 = transition
            L0_4 = L0_4.to
            L1_4 = A0_2
            L1_4 = L1_4.continueLabel
            L2_4 = {}
            L2_4.time = 500
            L2_4.alpha = 1
            L0_4(L1_4, L2_4)
          end
          
          L0_3(L1_3, L2_3)
        end
      end
      
      L8_2.onComplete = L9_2
      L6_2 = L6_2(L7_2, L8_2)
      A0_2.currentTransition = L6_2
      L6_2 = ipairs
      L7_2 = A0_2.junks
      L6_2, L7_2, L8_2 = L6_2(L7_2)
      for L9_2, L10_2 in L6_2, L7_2, L8_2 do
        L11_2 = display
        L11_2 = L11_2.contentCenterX
        L10_2.x = L11_2
        L11_2 = display
        L11_2 = L11_2.contentCenterY
        L10_2.y = L11_2
        L10_2.alpha = 0
        L12_2 = L10_2
        L11_2 = L10_2.toFront
        L11_2(L12_2)
        L11_2 = math
        L11_2 = L11_2.random
        L12_2 = 0
        L13_2 = 360
        L11_2 = L11_2(L12_2, L13_2)
        L12_2 = display
        L12_2 = L12_2.contentWidth
        L13_2 = math
        L13_2 = L13_2.cos
        L14_2 = L11_2
        L13_2 = L13_2(L14_2)
        L13_2 = L13_2 * L12_2
        L14_2 = display
        L14_2 = L14_2.contentCenterX
        L13_2 = L13_2 + L14_2
        L10_2.positionX = L13_2
        L13_2 = math
        L13_2 = L13_2.sin
        L14_2 = L11_2
        L13_2 = L13_2(L14_2)
        L13_2 = L13_2 * L12_2
        L14_2 = display
        L14_2 = L14_2.contentCenterY
        L13_2 = L13_2 + L14_2
        L10_2.positionY = L13_2
        L13_2 = math
        L13_2 = L13_2.random
        L14_2 = 100
        L15_2 = 500
        L13_2 = L13_2(L14_2, L15_2)
        L10_2.delayTime = L13_2
        L13_2 = transition
        L13_2 = L13_2.to
        L14_2 = L10_2
        L15_2 = {}
        L15_2.time = 800
        L16_2 = L10_2.delayTime
        L15_2.delay = L16_2
        L16_2 = L10_2.positionX
        L15_2.x = L16_2
        L16_2 = L10_2.positionY
        L15_2.y = L16_2
        L15_2.alpha = 1
        L13_2(L14_2, L15_2)
      end
    end
    L4_2 = L6_1
    L4_2 = L4_2.checkForTutorial
    L5_2 = "Scenes.EvolveAnimationScene"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
  end
end

L7_1.show = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = A0_2.continueLabel
    L4_2.isVisible = false
    L4_2 = A0_2.firstCardView
    L5_2 = L4_2
    L4_2 = L4_2.removeSelf
    L4_2(L5_2)
    L4_2 = A0_2.evolveCardView
    L5_2 = L4_2
    L4_2 = L4_2.removeSelf
    L4_2(L5_2)
    L4_2 = A0_2.secondCardView
    L5_2 = L4_2
    L4_2 = L4_2.removeSelf
    L4_2(L5_2)
    A0_2.firstCardView = nil
    A0_2.evolveCardView = nil
    A0_2.secondCardView = nil
    L4_2 = A0_2.glow
    L4_2.alpha = 0
    L4_2 = A0_2.glow
    L4_2.xScale = 0.1
    L4_2 = A0_2.glow
    L4_2.yScale = 0.1
    L4_2 = ipairs
    L5_2 = A0_2.junks
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L8_2.alpha = 0
    end
    L4_2 = currentTransition
    if L4_2 ~= nil then
      L4_2 = transition
      L4_2 = L4_2.cancel
      L5_2 = A0_2.currentTransition
      L4_2(L5_2)
    end
  end
end

L7_1.hide = L10_1

function L10_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.view
end

L7_1.destroy = L10_1
L11_1 = L7_1
L10_1 = L7_1.addEventListener
L12_1 = "create"
L13_1 = L7_1
L10_1(L11_1, L12_1, L13_1)
L11_1 = L7_1
L10_1 = L7_1.addEventListener
L12_1 = "show"
L13_1 = L7_1
L10_1(L11_1, L12_1, L13_1)
L11_1 = L7_1
L10_1 = L7_1.addEventListener
L12_1 = "hide"
L13_1 = L7_1
L10_1(L11_1, L12_1, L13_1)
L11_1 = L7_1
L10_1 = L7_1.addEventListener
L12_1 = "destroy"
L13_1 = L7_1
L10_1(L11_1, L12_1, L13_1)
return L7_1
