local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = require
L1_1 = "Utils.SceneCreator"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Views.CardView"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "composer"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Components.AudioManager"
L4_1 = L4_1(L5_1)
L5_1 = L0_1.newScene
L6_1 = "HeroEvolveScene"
L5_1 = L5_1(L6_1)
L6_1 = Constants
L6_1 = L6_1.Path_Assets
L7_1 = "Audio/FC-evolve.wav"
L6_1 = L6_1 .. L7_1
L7_1 = false
L8_1 = "EvolveAnime"

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = display
  L2_2 = L2_2.newRect
  L3_2 = A0_2.view
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L5_2 = display
  L5_2 = L5_2.contentCenterY
  L6_2 = 570
  L7_2 = 360
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.background = L2_2
  L2_2 = A0_2.background
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2.background
  L3_2 = L2_2
  L2_2 = L2_2.addEventListener
  L4_2 = "tap"
  L5_2 = gotoCardScene
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = display
  L2_2 = L2_2.newImageRect
  L3_2 = A0_2.view
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "General/FC-evolve-glow.png"
  L4_2 = L4_2 .. L5_2
  L5_2 = 300
  L6_2 = 300
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.glow = L2_2
  L2_2 = A0_2.glow
  L2_2.alpha = 0
  L2_2 = A0_2.glow
  L2_2.xScale = 0.1
  L2_2 = A0_2.glow
  L2_2.yScale = 0.1
  L2_2 = A0_2.glow
  L3_2 = display
  L3_2 = L3_2.contentCenterX
  L2_2.x = L3_2
  L2_2 = A0_2.glow
  L3_2 = display
  L3_2 = L3_2.contentCenterY
  L2_2.y = L3_2
  L2_2 = {}
  A0_2.bottles = L2_2
  L2_2 = 1
  L3_2 = 20
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = display
    L6_2 = L6_2.newImageRect
    L7_2 = A0_2.view
    L8_2 = Constants
    L8_2 = L8_2.Path_Assets
    L9_2 = "Potion/potionLogo.png"
    L8_2 = L8_2 .. L9_2
    L9_2 = 24
    L10_2 = 40
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2.alpha = 0
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.bottles
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = display
  L2_2 = L2_2.newText
  L3_2 = A0_2.view
  L4_2 = L2_1
  L4_2 = L4_2["Tap to continue"]
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L6_2 = display
  L6_2 = L6_2.contentCenterY
  L6_2 = L6_2 - 8
  L7_2 = Constants
  L7_2 = L7_2.fontForTitle
  L7_2 = L7_2()
  L8_2 = 12
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.continueLabel = L2_2
  L2_2 = A0_2.continueLabel
  L3_2 = display
  L3_2 = L3_2.contentWidth
  L3_2 = L3_2 - 10
  L4_2 = A0_2.continueLabel
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L3_2 = L3_2 - L4_2
  L2_2.x = L3_2
  L2_2 = A0_2.continueLabel
  L3_2 = display
  L3_2 = L3_2.contentHeight
  L3_2 = L3_2 - 20
  L2_2.y = L3_2
  L2_2 = A0_2.continueLabel
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = Constants
  L4_2 = L4_2.whiteColor
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = A0_2.continueLabel
  L2_2.alpha = 0
end

L5_1.create = L9_1

function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.glow
  L1_2.alpha = 0
  L1_2 = A0_2.glow
  L1_2.xScale = 0.1
  L1_2 = A0_2.glow
  L1_2.yScale = 0.1
  L1_2 = A0_2.glow
  L2_2 = L1_2
  L1_2 = L1_2.toFront
  L1_2(L2_2)
end

L5_1.prepareGlow = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = "medium"
  L4_2 = A0_2.evolveCard
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.evolveCardView = L1_2
  L1_2 = A0_2.evolveCardView
  L2_2 = L1_2
  L1_2 = L1_2.setSelectable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.evolveCardView
  L2_2 = L1_2
  L1_2 = L1_2.deselected
  L1_2(L2_2)
  L1_2 = A0_2.evolveCardView
  L2_2 = L1_2
  L1_2 = L1_2.setId
  L3_2 = A0_2.evolveCard
  L3_2 = L3_2.id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.view
  L2_2 = L1_2
  L1_2 = L1_2.insert
  L3_2 = A0_2.evolveCardView
  L3_2 = L3_2.view
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.evolveCardView
  L2_2 = L1_2
  L1_2 = L1_2.setPosition
  L3_2 = display
  L3_2 = L3_2.contentCenterX
  L4_2 = A0_2.evolveCardView
  L4_2 = L4_2.cardWidth
  L4_2 = L4_2 / 2
  L3_2 = L3_2 - L4_2
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L5_2 = A0_2.evolveCardView
  L5_2 = L5_2.cardHeight
  L5_2 = L5_2 / 2
  L4_2 = L4_2 - L5_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.evolveCardView
  L1_2 = L1_2.view
  L1_2.alpha = 1
  L1_2 = A0_2.evolveCardView
  L2_2 = L1_2
  L1_2 = L1_2.addEnterFrameListener
  L1_2(L2_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = "medium"
  L4_2 = A0_2.generatedCard
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.generatedCardView = L1_2
  L1_2 = A0_2.generatedCardView
  L2_2 = L1_2
  L1_2 = L1_2.setSelectable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.generatedCardView
  L2_2 = L1_2
  L1_2 = L1_2.deselected
  L1_2(L2_2)
  L1_2 = A0_2.generatedCardView
  L2_2 = L1_2
  L1_2 = L1_2.setId
  L3_2 = A0_2.generatedCard
  L3_2 = L3_2.id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.view
  L2_2 = L1_2
  L1_2 = L1_2.insert
  L3_2 = A0_2.generatedCardView
  L3_2 = L3_2.view
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.generatedCardView
  L2_2 = L1_2
  L1_2 = L1_2.setPosition
  L3_2 = display
  L3_2 = L3_2.contentCenterX
  L4_2 = A0_2.generatedCardView
  L4_2 = L4_2.cardWidth
  L4_2 = L4_2 / 2
  L3_2 = L3_2 - L4_2
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L5_2 = A0_2.generatedCardView
  L5_2 = L5_2.cardHeight
  L5_2 = L5_2 / 2
  L4_2 = L4_2 - L5_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.generatedCardView
  L1_2 = L1_2.view
  L1_2.alpha = 0
  L1_2 = A0_2.generatedCardView
  L2_2 = L1_2
  L1_2 = L1_2.addEnterFrameListener
  L1_2(L2_2)
end

L5_1.setupCardViews = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = true
  L7_1 = L1_2
  L1_2 = A0_2.continueLabel
  L2_2 = L1_2
  L1_2 = L1_2.toFront
  L1_2(L2_2)
  L1_2 = transition
  L1_2 = L1_2.to
  L2_2 = A0_2.continueLabel
  L3_2 = {}
  L3_2.time = 400
  L3_2.alpha = 1
  L4_2 = L8_1
  L3_2.tag = L4_2
  L1_2(L2_2, L3_2)
end

L5_1.revealContinueLabel = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L4_1
  L1_2 = L1_2.playEffect
  L2_2 = L6_1
  L1_2(L2_2)
  L1_2 = transition
  L1_2 = L1_2.to
  L2_2 = A0_2.glow
  L3_2 = {}
  L3_2.time = 450
  L3_2.alpha = 1
  L3_2.xScale = 4
  L3_2.yScale = 4
  L4_2 = L8_1
  L3_2.tag = L4_2
  
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L0_3 = L0_3.evolveCardView
    L0_3 = L0_3.view
    L0_3.alpha = 0
    L0_3 = A0_2
    L0_3 = L0_3.generatedCardView
    L0_3 = L0_3.view
    L0_3.alpha = 1
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = A0_2
    L1_3 = L1_3.glow
    L2_3 = {}
    L2_3.time = 600
    L2_3.alpha = 0
    L3_3 = L8_1
    L2_3.tag = L3_3
    
    function L3_3()
      local L0_4, L1_4
      L0_4 = A0_2
      L1_4 = L0_4
      L0_4 = L0_4.revealContinueLabel
      L0_4(L1_4)
    end
    
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L3_2.onComplete = L4_2
  L1_2(L2_2, L3_2)
end

L5_1.animateGlow = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = pairs
  L2_2 = A0_2.bottles
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
    L12_2 = L8_1
    L11_2.tag = L12_2
    
    function L12_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = L5_2
      L0_3.alpha = 0
      L0_3 = A0_2
      L0_3 = L0_3.evolveCardView
      L1_3 = L0_3
      L0_3 = L0_3.shakeCard
      L2_3 = 1
      L3_3 = 4
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = A0_2
      L0_3 = L0_3.bottles
      L1_3 = L4_2
      L1_3 = L1_3 + 1
      L0_3 = L0_3[L1_3]
      if L0_3 == nil then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.animateGlow
        L0_3(L1_3)
      end
    end
    
    L11_2.onComplete = L12_2
    L9_2(L10_2, L11_2)
  end
end

L5_1.animateBottles = L9_1

function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = L7_1
  if L1_2 then
    L1_2 = L3_1
    L1_2 = L1_2.gotoScene
    L2_2 = "Scenes.Cards"
    L1_2(L2_2)
  end
end

gotoCardScene = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    L2_2 = A0_2.continueLabel
    L2_2.alpha = 0
    L2_2 = A1_2.params
    if L2_2 then
      L2_2 = A1_2.params
      L2_2 = L2_2.evolveCard
      A0_2.evolveCard = L2_2
      A0_2.evolveCardView = nil
      L2_2 = A1_2.params
      L2_2 = L2_2.generatedCard
      A0_2.generatedCard = L2_2
      A0_2.generatedCardView = nil
      L3_2 = A0_2
      L2_2 = A0_2.setupCardViews
      L2_2(L3_2)
      L3_2 = A0_2
      L2_2 = A0_2.prepareGlow
      L2_2(L3_2)
      L3_2 = A0_2
      L2_2 = A0_2.animateBottles
      L2_2(L3_2)
    end
  end
end

L5_1.show = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    L2_2 = A0_2.evolveCardView
    L3_2 = L2_2
    L2_2 = L2_2.removeEnterFrameListener
    L2_2(L3_2)
    L2_2 = A0_2.generatedCardView
    L3_2 = L2_2
    L2_2 = L2_2.removeEnterFrameListener
    L2_2(L3_2)
    L2_2 = A0_2.evolveCardView
    L3_2 = L2_2
    L2_2 = L2_2.removeSelf
    L2_2(L3_2)
    A0_2.evolveCardView = nil
    L2_2 = A0_2.generatedCardView
    L3_2 = L2_2
    L2_2 = L2_2.removeSelf
    L2_2(L3_2)
    A0_2.generatedCardView = nil
    A0_2.evolveCard = nil
    A0_2.generatedCard = nil
    L2_2 = A0_2.continueLabel
    L2_2.alpha = 0
    L2_2 = false
    L7_1 = L2_2
  end
end

L5_1.hide = L9_1

function L9_1(A0_2, A1_2)
end

L5_1.destroy = L9_1
L10_1 = L5_1
L9_1 = L5_1.addEventListener
L11_1 = "create"
L12_1 = L5_1
L9_1(L10_1, L11_1, L12_1)
L10_1 = L5_1
L9_1 = L5_1.addEventListener
L11_1 = "show"
L12_1 = L5_1
L9_1(L10_1, L11_1, L12_1)
L10_1 = L5_1
L9_1 = L5_1.addEventListener
L11_1 = "hide"
L12_1 = L5_1
L9_1(L10_1, L11_1, L12_1)
L10_1 = L5_1
L9_1 = L5_1.addEventListener
L11_1 = "destroy"
L12_1 = L5_1
L9_1(L10_1, L11_1, L12_1)
return L5_1
