local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1
L0_1 = require
L1_1 = "Utils.SceneCreator"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Models.Operation"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.CardView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Models.QuestCardGenerator"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Utils.Toolbox"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Components.AudioManager"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Views.BossBattleAlert"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Models.UserCard"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Tutorial.TutorialManager2"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Views.BattleOutComeView2"
L10_1 = L10_1(L11_1)
L11_1 = L0_1.newScene
L12_1 = "BattleAnimationScene"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Views.EffectsManager"
L12_1 = L12_1(L13_1)
L13_1 = nil
L14_1 = false
L15_1 = false
L16_1 = false
L17_1 = {}
L18_1 = {}
L19_1 = nil
L20_1 = false
L21_1 = nil
L22_1 = nil
L23_1 = {}
L24_1 = {}
L25_1 = nil

function L26_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.power
  L2_2.scaleIncreaseAmount = A1_2
end

function L27_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
  L5_2 = Theme
  L5_2 = L5_2.battleAnimationSceneBackgroundColor
  L5_2 = L5_2[1]
  L6_2 = Theme
  L6_2 = L6_2.battleAnimationSceneBackgroundColor
  L6_2 = L6_2[2]
  L7_2 = Theme
  L7_2 = L7_2.battleAnimationSceneBackgroundColor
  L7_2 = L7_2[3]
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = A0_2.view
  L5_2 = 0
  L6_2 = 0
  L7_2 = 570
  L8_2 = 360
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.comboBackground = L3_2
  L3_2 = A0_2.comboBackground
  L3_2.alpha = 0
  L3_2 = A0_2.comboBackground
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = 1
  L6_2 = 1
  L7_2 = 1
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = A0_2.view
  L5_2 = 0
  L6_2 = 0
  L7_2 = 570
  L8_2 = 360
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.heroBackground = L3_2
  L3_2 = A0_2.heroBackground
  L3_2.alpha = 0
  L3_2 = A0_2.heroBackground
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Theme
  L5_2 = L5_2.colorsSet
  L5_2 = L5_2.heroBattleAnimation
  L5_2 = L5_2[1]
  L6_2 = Theme
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.heroBattleAnimation
  L6_2 = L6_2[2]
  L7_2 = Theme
  L7_2 = L7_2.colorsSet
  L7_2 = L7_2.heroBattleAnimation
  L7_2 = L7_2[3]
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2.background
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L3_2 = A0_2.background
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L3_2 = A0_2.comboBackground
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L3_2 = A0_2.comboBackground
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L3_2 = A0_2.heroBackground
  L4_2 = A0_2.comboBackground
  L4_2 = L4_2.x
  L3_2.x = L4_2
  L3_2 = A0_2.heroBackground
  L4_2 = A0_2.comboBackground
  L4_2 = L4_2.y
  L3_2.y = L4_2
  L3_2 = A0_2.background
  L4_2 = L3_2
  L3_2 = L3_2.addEventListener
  L5_2 = "tap"
  L6_2 = gotoBattleOutcome
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = {}
  A0_2.defenderCards = L3_2
  L3_2 = {}
  A0_2.defenderCardViews = L3_2
  L3_2 = {}
  A0_2.attackerCards = L3_2
  L3_2 = {}
  A0_2.attackerCardViews = L3_2
  L3_2 = {}
  A0_2.attackerCombos = L3_2
  L3_2 = {}
  A0_2.defenderCombos = L3_2
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A0_2.view
  L5_2 = L1_1
  L5_2 = L5_2["Tap to continue"]
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L7_2 = display
  L7_2 = L7_2.contentCenterY
  L7_2 = L7_2 - 2
  L8_2 = Constants
  L8_2 = L8_2.fontForTitle
  L8_2 = L8_2()
  L9_2 = 11
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
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.whiteColor
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = A0_2.continueLabel
  L3_2.isVisible = false
end

L11_1.create = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L14_1
  if L1_2 == false then
    return
  end
  L1_2 = pairs
  L2_2 = L17_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = timer
    L6_2 = L6_2.cancel
    L7_2 = L5_2
    L6_2(L7_2)
  end
  L1_2 = {}
  L17_1 = L1_2
  L1_2 = transition
  L1_2 = L1_2.cancel
  L2_2 = "battleAnim"
  L1_2(L2_2)
  L1_2 = transition
  L1_2 = L1_2.cancel
  L2_2 = "comboFX"
  L1_2(L2_2)
  L1_2 = transition
  L1_2 = L1_2.cancel
  L2_2 = "floatTrans"
  L1_2(L2_2)
  L1_2 = transition
  L1_2 = L1_2.cancel
  L2_2 = "flashFX"
  L1_2(L2_2)
  L1_2 = transition
  L1_2 = L1_2.cancel
  L2_2 = "heroEffect"
  L1_2(L2_2)
  L1_2 = transition
  L1_2 = L1_2.cancel
  L2_2 = "clockAnimation"
  L1_2(L2_2)
  L1_2 = false
  L21_1 = L1_2
  L1_2 = false
  L22_1 = L1_2
  L1_2 = pairs
  L2_2 = L23_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.pause
    L6_2(L7_2)
  end
  L1_2 = pairs
  L2_2 = L18_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = display
    L6_2 = L6_2.remove
    L7_2 = L5_2
    L6_2(L7_2)
  end
  L1_2 = {}
  L18_1 = L1_2
  L1_2 = L10_1
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = L11_1
  L3_2 = L3_2.operation
  L3_2 = L3_2.operationType
  L4_2 = L11_1
  L4_2 = L4_2.operation
  L1_2(L2_2, L3_2, L4_2)
end

gotoBattleOutcome = L27_1

function L27_1(A0_2, A1_2, A2_2)
  local L3_2
  if A0_2 then
    L3_2 = #A0_2
    if 0 < L3_2 then
      goto lbl_11
    end
  end
  if A1_2 then
    L3_2 = #A1_2
    ::lbl_11::
    if 0 < L3_2 then
      L3_2 = L19_1
      L3_2 = L3_2 + A2_2
      L19_1 = L3_2
    end
  end
end

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = log3
  L3_2 = "enter scene"
  L2_2(L3_2)
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = sceneChange
    if L4_2 ~= nil then
      L4_2 = sceneChange
      L4_2 = L4_2.refresh
      L4_2()
    end
    L4_2 = 2800
    L19_1 = L4_2
    L4_2 = true
    L21_1 = L4_2
    L4_2 = true
    L22_1 = L4_2
    L4_2 = true
    L14_1 = L4_2
    L4_2 = false
    L16_1 = L4_2
    L4_2 = false
    L15_1 = L4_2
    L4_2 = assert
    L5_2 = A1_2.params
    if L5_2 then
      L5_2 = A1_2.params
      L5_2 = L5_2.operation
    end
    L6_2 = "Event params which includes an operation needs to be provided for BattleAnimationScene."
    L4_2(L5_2, L6_2)
    L4_2 = A1_2.params
    if L4_2 then
      L4_2 = A1_2.params
      L4_2 = L4_2.isTutorial
      if L4_2 then
        L4_2 = false
        L14_1 = L4_2
        L4_2 = true
        L15_1 = L4_2
        L4_2 = true
        L16_1 = L4_2
      end
      L4_2 = A1_2.params
      L4_2 = L4_2.operation
      L4_2 = L4_2.defendingCards
      A0_2.defenderCards = L4_2
      L4_2 = A1_2.params
      L4_2 = L4_2.operation
      L4_2 = L4_2.attackingCards
      A0_2.attackerCards = L4_2
      L4_2 = A1_2.params
      L4_2 = L4_2.operation
      A0_2.operation = L4_2
      L4_2 = A1_2.params
      L4_2 = L4_2.operation
      L4_2 = L4_2.attackerComboCardData
      A0_2.attackerCombos = L4_2
      L4_2 = A1_2.params
      L4_2 = L4_2.operation
      L4_2 = L4_2.defenderComboCardData
      A0_2.defenderCombos = L4_2
      L4_2 = A1_2.params
      L4_2 = L4_2.operation
      L4_2 = L4_2.attackerHeroData
      L4_2 = L4_2.affectedCardsInfo
      A0_2.attackerHeroAffectedCard = L4_2
      L4_2 = A1_2.params
      L4_2 = L4_2.operation
      L4_2 = L4_2.defenderHeroData
      L4_2 = L4_2.affectedCardsInfo
      A0_2.defenderHeroAffectedCard = L4_2
      L4_2 = A1_2.params
      L4_2 = L4_2.operation
      L4_2 = L4_2.attackerHeroData
      L4_2 = L4_2.cooldownBenefit
      A0_2.attackerWisdomBenefitOfHero = L4_2
      L4_2 = A1_2.params
      L4_2 = L4_2.operation
      L4_2 = L4_2.defenderHeroData
      L4_2 = L4_2.cooldownBenefit
      A0_2.defenderWisdomBenefitOfHero = L4_2
      L4_2 = L27_1
      L5_2 = A0_2.attackerCombos
      L6_2 = A0_2.defenderCombos
      L7_2 = 4000
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = L27_1
      L5_2 = A0_2.attackerHeroAffectedCard
      L6_2 = A0_2.defenderHeroAffectedCard
      L7_2 = 2100
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = nil
      L5_2 = L4_1
      L6_2 = L5_2
      L5_2 = L5_2.new
      L5_2 = L5_2(L6_2)
      L6_2 = A1_2.params
      L6_2 = L6_2.operation
      L6_2 = L6_2.operationType
      if L6_2 == "quest" then
        L6_2 = log3
        L7_2 = "battle animation called for quest boss"
        L6_2(L7_2)
        L6_2 = A1_2.params
        L6_2 = L6_2.realPower
        if L6_2 then
          L7_2 = L5_2
          L6_2 = L5_2.generateCardSet
          L8_2 = A1_2.params
          L8_2 = L8_2.realPower
          L6_2 = L6_2(L7_2, L8_2)
          A0_2.defenderCards = L6_2
        else
          L6_2 = nil
          L7_2 = mainPlayer
          L7_2 = L7_2.heroTutorialAfterSecondQuest
          if L7_2 then
            L7_2 = mainPlayer
            L7_2 = L7_2.level
            if L7_2 < 2 then
              L7_2 = mainPlayer
              L7_2 = L7_2.totalQuests
              if L7_2 == 2 then
                L7_2 = A1_2.params
                L7_2 = L7_2.operation
                L7_2 = L7_2.outcome
                if L7_2 == false then
                  L6_2 = 5
                end
              end
            end
          end
          L7_2 = L2_1
          L7_2 = L7_2.getQuestPower
          L8_2 = L6_2
          L7_2 = L7_2(L8_2)
          L9_2 = L5_2
          L8_2 = L5_2.generateCardSet
          L10_2 = L7_2.realPower
          L8_2 = L8_2(L9_2, L10_2)
          A0_2.defenderCards = L8_2
        end
        L6_2 = A1_2.params
        L4_2 = L6_2.opponentName
      else
        L6_2 = A0_2.operation
        L6_2 = L6_2.defender
        L4_2 = L6_2.name
      end
      L7_2 = A0_2
      L6_2 = A0_2.addInTribeBonusPowers
      L8_2 = A0_2.operation
      L9_2 = L5_2
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = mainPlayer
      L6_2 = L6_2.newCards
      if L6_2 then
        L6_2 = mainPlayer
        L6_2 = L6_2.showNewCards
        if L6_2 then
          L7_2 = A0_2
          L6_2 = A0_2.createCards
          L8_2 = A0_2.defenderCards
          L9_2 = A0_2.defenderCardViews
          L10_2 = display
          L10_2 = L10_2.contentWidth
          L10_2 = L10_2 - 6
          L10_2 = L10_2 - 120
          L11_2 = -143
          L12_2 = A0_2.defenderCombos
          L13_2 = A0_2.defenderHeroAffectedCard
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      end
      else
        L7_2 = A0_2
        L6_2 = A0_2.createCards
        L8_2 = A0_2.defenderCards
        L9_2 = A0_2.defenderCardViews
        L10_2 = display
        L10_2 = L10_2.contentWidth
        L10_2 = L10_2 - 6
        L10_2 = L10_2 - 98
        L11_2 = -143
        L12_2 = A0_2.defenderCombos
        L13_2 = A0_2.defenderHeroAffectedCard
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      end
      L7_2 = A0_2
      L6_2 = A0_2.createCards
      L8_2 = A0_2.attackerCards
      L9_2 = A0_2.attackerCardViews
      L10_2 = 6
      L11_2 = display
      L11_2 = L11_2.contentHeight
      L11_2 = L11_2 + 10
      L11_2 = L11_2 + 133
      L12_2 = A0_2.attackerCombos
      L13_2 = A0_2.attackerHeroAffectedCard
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L6_2 = pairs
      L7_2 = A0_2.attackerCardViews
      L6_2, L7_2, L8_2 = L6_2(L7_2)
      for L9_2, L10_2 in L6_2, L7_2, L8_2 do
        L11_2 = mainPlayer
        L11_2 = L11_2.heroSet
        if L11_2 then
          L11_2 = mainPlayer
          L11_2 = L11_2.heroSet
          L12_2 = L10_2.card
          L12_2 = L12_2.baseId
          L11_2 = L11_2[L12_2]
          if L11_2 then
            L12_2 = L10_2
            L11_2 = L10_2.addEnterFrameListener
            L11_2(L12_2)
          end
        end
      end
      L6_2 = pairs
      L7_2 = A0_2.defenderCardViews
      L6_2, L7_2, L8_2 = L6_2(L7_2)
      for L9_2, L10_2 in L6_2, L7_2, L8_2 do
        L11_2 = L3_1
        L11_2 = L11_2.cardIsHero
        L12_2 = L10_2.card
        L12_2 = L12_2.baseId
        L11_2 = L11_2(L12_2)
        if L11_2 then
          L12_2 = L10_2
          L11_2 = L10_2.addEnterFrameListener
          L11_2(L12_2)
        end
      end
      L6_2 = A0_2.continueLabel
      L6_2.alpha = 0
      L6_2 = A0_2.continueLabel
      L6_2.isVisible = true
      L6_2 = nil
      _backAction = L6_2
      L6_2 = L6_1
      L6_2 = L6_2.playEffect
      L7_2 = Constants
      L7_2 = L7_2.Path_Assets
      L8_2 = "Audio/FC-battle-begin.wav"
      L7_2 = L7_2 .. L8_2
      L6_2(L7_2)
      L7_2 = A0_2
      L6_2 = A0_2.showPlayerNames
      L8_2 = L4_2
      L6_2(L7_2, L8_2)
      L7_2 = A0_2
      L6_2 = A0_2.bringCardsToScreen
      L8_2 = A0_2.attackerCardViews
      L9_2 = display
      L9_2 = L9_2.contentHeight
      L9_2 = L9_2 - 10
      L9_2 = L9_2 - 133
      L6_2(L7_2, L8_2, L9_2)
      L7_2 = A0_2
      L6_2 = A0_2.bringCardsToScreen
      L8_2 = A0_2.defenderCardViews
      L9_2 = 10
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = timer
      L6_2 = L6_2.performWithDelay
      L7_2 = 1500
      
      function L8_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.scatterCardsToRows
        L2_3 = A0_2
        L2_3 = L2_3.attackerCardViews
        L3_3 = "attacker"
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.scatterCardsToRows
        L2_3 = A0_2
        L2_3 = L2_3.defenderCardViews
        L3_3 = "defender"
        L0_3(L1_3, L2_3, L3_3)
      end
      
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = nil
      L8_2 = L20_1
      if L8_2 == true then
        L8_2 = timer
        L8_2 = L8_2.performWithDelay
        L9_2 = 6000
        
        function L10_2()
          local L0_3, L1_3, L2_3
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3.bringBackComboCardsToRow
          L2_3 = A0_2
          L2_3 = L2_3.attackerCardViews
          L0_3(L1_3, L2_3)
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3.bringBackComboCardsToRow
          L2_3 = A0_2
          L2_3 = L2_3.defenderCardViews
          L0_3(L1_3, L2_3)
        end
        
        L11_2 = 1
        L8_2 = L8_2(L9_2, L10_2, L11_2)
        L7_2 = L8_2
      end
      L8_2 = timer
      L8_2 = L8_2.performWithDelay
      L9_2 = L19_1
      
      function L10_2()
        local L0_3, L1_3
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.doRound
        L0_3(L1_3)
      end
      
      L11_2 = 1
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L9_2 = L17_1
      L9_2["146"] = L8_2
      L9_2 = L17_1
      L9_2.scatterTimer = L6_2
      L9_2 = L17_1
      L9_2.bringBackTimer = L7_2
    end
    L4_2 = L9_1
    L4_2 = L4_2.checkForTutorial
    L5_2 = "Scenes.BattleAnimationScene"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
  end
end

L11_1.show = L28_1

function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = log3
  L4_2 = "Attack bonus:"
  L5_2 = A1_2.attackBonusPower
  L3_2(L4_2, L5_2)
  L3_2 = log3
  L4_2 = "Defence bonus"
  L5_2 = A1_2.defenceBonusPower
  L3_2(L4_2, L5_2)
  
  function L3_2()
    local L0_3, L1_3
    L0_3 = {}
    L0_3.id = -1
    L0_3.base_card_id = 103
    L1_3 = L1_1
    L1_3 = L1_3["Tribe Bonus"]
    L0_3.name = L1_3
    L0_3.image = "TribeHelp"
    L0_3.cooldown = 0
    return L0_3
  end
  
  L4_2 = A1_2.attackBonusPower
  if 0 < L4_2 then
    L4_2 = L3_2
    L4_2 = L4_2()
    L5_2 = A1_2.attackBonusPower
    L4_2.power = L5_2
    L5_2 = A0_2.attackerCards
    L6_2 = L8_1
    L7_2 = L6_2
    L6_2 = L6_2.new
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2[-1] = L6_2
  end
  L4_2 = A1_2.defenceBonusPower
  if 0 < L4_2 then
    L4_2 = L3_2
    L4_2 = L4_2()
    L4_2.id = -2
    L5_2 = A1_2.defenceBonusPower
    L4_2.power = L5_2
    L5_2 = A0_2.defenderCards
    L6_2 = L8_1
    L7_2 = L6_2
    L6_2 = L6_2.new
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2[-1] = L6_2
  end
end

L11_1.addInTribeBonusPowers = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = log3
  L3_2 = "Opponent name:"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = nil
  L5_2 = nil
  L6_2 = 400
  L7_2 = nil
  L8_2 = nil
  L9_2 = 32
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = L2_2.view
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L3_2 = L2_2.view
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L4_2 = L2_2
  L3_2 = L2_2.animationEffect
  L3_2(L4_2)
  L3_2 = L2_2.view
  L13_1 = L3_2
  if A1_2 ~= nil then
    L3_2 = L2_2.rightText
    L3_2.text = A1_2
  end
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = L13_1
  L3_2(L4_2, L5_2)
  L3_2 = transition
  L3_2 = L3_2.to
  L4_2 = L13_1
  L5_2 = {}
  L5_2.time = 300
  L5_2.xScale = 0.3
  L5_2.yScale = 0.3
  L5_2.tag = "battleAnim"
  L3_2(L4_2, L5_2)
end

L11_1.showPlayerNames = L28_1

function L28_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = L17_1
  L1_2["346"] = nil
  L2_2 = A0_2
  L1_2 = A0_2.prepareCardsForRound
  L3_2 = A0_2.attackerCardViews
  L4_2 = L15_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.prepareCardsForRound
  L4_2 = A0_2.defenderCardViews
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = #L1_2
  if not (L3_2 < 1) then
    L3_2 = #L2_2
    if not (L3_2 < 1) then
      goto lbl_45
    end
  end
  L3_2 = true
  L14_1 = L3_2
  L3_2 = transition
  L3_2 = L3_2.to
  L4_2 = A0_2.continueLabel
  L5_2 = {}
  L5_2.time = 600
  L5_2.alpha = 1
  L5_2.tag = "battleAnim"
  L3_2(L4_2, L5_2)
  L3_2 = #L2_2
  if L3_2 < 1 then
    L3_2 = L6_1
    L3_2 = L3_2.playEffect
    L4_2 = Constants
    L4_2 = L4_2.Path_Assets
    L5_2 = "Audio/FC-win.wav"
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
  else
    L3_2 = L6_1
    L3_2 = L3_2.playEffect
    L4_2 = Constants
    L4_2 = L4_2.Path_Assets
    L5_2 = "Audio/FC-lose.wav"
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
  end
  do return end
  ::lbl_45::
  L3_2 = ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2.availableCard
    L10_2 = L2_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 == nil then
      break
    end
    L8_2._baMarked = true
    L9_2 = L8_2._baAttackerIndex
    if L9_2 == 0 then
      L8_2._baAttackerIndex = L6_2
    end
    L10_2 = A0_2
    L9_2 = A0_2.subtractCardHPs
    L11_2 = L7_2
    L12_2 = L8_2
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = L7_2.view
    L9_2 = L9_2.x
    L10_2 = L7_2.view
    L10_2 = L10_2.y
    L11_2 = L8_2.view
    L11_2 = L11_2.x
    L12_2 = L7_2.view
    L12_2 = L12_2.x
    L11_2 = L11_2 - L12_2
    L11_2 = L11_2 / 10
    L12_2 = L7_2.view
    L12_2 = L12_2.x
    L11_2 = L11_2 + L12_2
    L12_2 = transition
    L12_2 = L12_2.to
    L13_2 = L7_2.view
    L14_2 = {}
    L15_2 = L6_2 * 60
    L14_2.delay = L15_2
    L14_2.tag = "battleAnim"
    L14_2.time = 300
    L15_2 = L10_2 - 30
    L14_2.y = L15_2
    L14_2.x = L11_2
    L15_2 = easing
    L15_2 = L15_2.inQuart
    L14_2.transition = L15_2
    
    function L15_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = transition
      L0_3 = L0_3.to
      L1_3 = L7_2
      L1_3 = L1_3.view
      L2_3 = {}
      L2_3.time = 300
      L2_3.tag = "battleAnim"
      L3_3 = L10_2
      L2_3.y = L3_3
      L3_3 = L9_2
      L2_3.x = L3_3
      L3_3 = easing
      L3_3 = L3_3.outQuart
      L2_3.transition = L3_3
      
      function L3_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = L7_2
        L0_4 = L0_4.power
        L1_4 = L0_4
        L0_4 = L0_4.setValue
        L2_4 = L7_2
        L2_4 = L2_4._baHP
        L0_4(L1_4, L2_4)
        L0_4 = timer
        L0_4 = L0_4.performWithDelay
        L1_4 = 1400
        
        function L2_4()
          local L0_5, L1_5, L2_5
          L0_5 = L17_1
          L0_5["307"] = nil
          L0_5 = A0_2
          L1_5 = L0_5
          L0_5 = L0_5.checkForCardDeath
          L2_5 = L7_2
          L0_5(L1_5, L2_5)
        end
        
        L3_4 = 1
        L0_4 = L0_4(L1_4, L2_4, L3_4)
        L1_4 = L17_1
        L1_4["307"] = L0_4
      end
      
      L2_3.onComplete = L3_3
      L0_3(L1_3, L2_3)
    end
    
    L14_2.onComplete = L15_2
    L12_2(L13_2, L14_2)
  end
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2._baMarked
    if L8_2 then
      L8_2 = timer
      L8_2 = L8_2.performWithDelay
      L9_2 = L7_2._baAttackerIndex
      L9_2 = L9_2 * 60
      L9_2 = L9_2 + 300
      
      function L10_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = L17_1
        L0_3["323"] = nil
        L0_3 = L7_2
        L1_3 = L0_3
        L0_3 = L0_3.shakeCard
        L2_3 = 1
        L3_3 = 5
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.applyHitEffect
        L2_3 = L7_2
        L0_3(L1_3, L2_3)
        L0_3 = L7_2
        L0_3 = L0_3.power
        L1_3 = L0_3
        L0_3 = L0_3.setValue
        L2_3 = L7_2
        L2_3 = L2_3._baHP
        L0_3(L1_3, L2_3)
        L0_3 = timer
        L0_3 = L0_3.performWithDelay
        L1_3 = 1400
        
        function L2_3()
          local L0_4, L1_4, L2_4
          L0_4 = L17_1
          L0_4["331"] = nil
          L0_4 = A0_2
          L1_4 = L0_4
          L0_4 = L0_4.checkForCardDeath
          L2_4 = L7_2
          L0_4(L1_4, L2_4)
        end
        
        L3_3 = 1
        L0_3 = L0_3(L1_3, L2_3, L3_3)
        L1_3 = L17_1
        L1_3["331"] = L0_3
      end
      
      L11_2 = 1
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L9_2 = L17_1
      L9_2["323"] = L8_2
    end
  end
  L3_2 = timer
  L3_2 = L3_2.performWithDelay
  L4_2 = 2500
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.doRound
    L0_3(L1_3)
  end
  
  L6_2 = 1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L17_1
  L4_2["346"] = L3_2
end

L11_1.doRound = L28_1

function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = {}
  L4_2 = ipairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L8_2._baMarked = false
    L9_2 = L8_2.power
    L9_2 = L9_2.value
    L8_2._baHP = L9_2
    L8_2._baAttackerIndex = 0
    L9_2 = L8_2.power
    L9_2 = L9_2.value
    if 0 < L9_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L3_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
      if A2_2 then
        return L3_2
      end
    end
  end
  return L3_2
end

L11_1.prepareCardsForRound = L28_1

function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2._baHP
  L4_2 = A2_2._baHP
  if L3_2 > L4_2 then
    A2_2._baHP = 0
    L3_2 = L3_2 - L4_2
    A1_2._baHP = L3_2
  else
    A1_2._baHP = 0
    L4_2 = L4_2 - L3_2
    A2_2._baHP = L4_2
  end
end

L11_1.subtractCardHPs = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = display
  L2_2 = L2_2.newContainer
  L3_2 = A1_2.view
  L4_2 = 150
  L5_2 = 0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A1_2.view
  L3_2 = L3_2.width
  L3_2 = L3_2 / 2
  L3_2 = L3_2 - 30
  L2_2.x = L3_2
  L3_2 = A1_2.view
  L3_2 = L3_2.height
  L3_2 = L3_2 / 2
  L3_2 = L3_2 - 30
  L2_2.y = L3_2
  L3_2 = L18_1
  L4_2 = A1_2.card
  L4_2 = L4_2.id
  L3_2[L4_2] = L2_2
  L3_2 = math
  L3_2 = L3_2.random
  L4_2 = 1
  L5_2 = 2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 34
  if L3_2 == 2 then
    L4_2 = 75
  end
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = L2_2
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "BattleItems/Scar"
  L9_2 = L3_2
  L10_2 = ".png"
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
  L8_2 = L4_2
  L9_2 = 75
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2.x = 0
  L5_2.y = 25
  L6_2 = transition
  L6_2 = L6_2.to
  L7_2 = L2_2
  L8_2 = {}
  L8_2.time = 150
  L8_2.tag = "battleAnim"
  L8_2.height = 300
  
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L2_2
    L2_3 = {}
    L2_3.time = 300
    L2_3.tag = "battleAnim"
    L2_3.delay = 1000
    L2_3.alpha = 0
    
    function L3_3()
      local L0_4, L1_4
      L0_4 = display
      L0_4 = L0_4.remove
      L1_4 = L2_2
      L0_4(L1_4)
      L0_4 = L18_1
      L1_4 = A1_2
      L1_4 = L1_4.card
      L1_4 = L1_4.id
      L0_4[L1_4] = nil
    end
    
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L8_2.onComplete = L9_2
  L6_2(L7_2, L8_2)
  L6_2 = L6_1
  L6_2 = L6_2.playEffect
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Audio/FC-hit"
  L9_2 = L3_2
  L10_2 = ".wav"
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
  L6_2(L7_2)
end

L11_1.applyHitEffect = L28_1

function L28_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A2_2 = A2_2 + 1
  if A3_2 <= A2_2 then
    return
  end
  L4_2 = math
  L4_2 = L4_2.random
  L5_2 = -5
  L6_2 = 5
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = math
  L5_2 = L5_2.random
  L6_2 = -7
  L7_2 = 2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A1_2.view
  L6_2 = L6_2.x
  L7_2 = A1_2.view
  L7_2 = L7_2.y
  L8_2 = transition
  L8_2 = L8_2.to
  L9_2 = A1_2.view
  L10_2 = {}
  L10_2.time = 60
  L10_2.tag = "battleAnim"
  L11_2 = L6_2 + L4_2
  L10_2.x = L11_2
  L11_2 = L7_2 + L5_2
  L10_2.y = L11_2
  
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = A1_2
    L1_3 = L1_3.view
    L2_3 = {}
    L2_3.time = 60
    L2_3.tag = "battleAnim"
    L3_3 = L6_2
    L2_3.x = L3_3
    L3_3 = L7_2
    L2_3.y = L3_3
    
    function L3_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = A0_2
      L1_4 = L0_4
      L0_4 = L0_4.shakeCard
      L2_4 = A1_2
      L3_4 = A2_2
      L4_4 = A3_2
      L0_4(L1_4, L2_4, L3_4, L4_4)
    end
    
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L10_2.onComplete = L11_2
  L8_2(L9_2, L10_2)
end

L11_1.shakeCard = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2._baMarked
    if L7_2 == false then
      return L6_2
    end
  end
  L2_2 = ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2._baHP
    if 0 < L7_2 then
      return L6_2
    end
  end
  L2_2 = nil
  return L2_2
end

L11_1.availableCard = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2._baHP
  if L2_2 <= 0 then
    L2_2 = L3_1
    L2_2 = L2_2.cardIsHero
    L3_2 = A1_2.card
    L3_2 = L3_2.baseId
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A1_2
      L2_2 = A1_2.removeEnterFrameListener
      L2_2(L3_2)
    end
    L2_2 = transition
    L2_2 = L2_2.to
    L3_2 = A1_2.view
    L4_2 = {}
    L4_2.time = 300
    L4_2.alpha = 0
    L4_2.tag = "battleAnim"
    L2_2(L3_2, L4_2)
  end
end

L11_1.checkForCardDeath = L28_1

function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = 1
    L9_2 = #A2_2
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = L7_2.id
      L13_2 = A2_2[L11_2]
      L13_2 = L13_2.id
      if L12_2 == L13_2 then
        L12_2 = L26_1
        L13_2 = L7_2
        L14_2 = 0.3
        L12_2(L13_2, L14_2)
        L12_2 = L12_1
        L12_2 = L12_2.sparkle
        L13_2 = L7_2.power
        L13_2 = L13_2.view
        L14_2 = 100
        L15_2 = L7_2.power
        L15_2 = L15_2.view
        L15_2 = L15_2.width
        L15_2 = -L15_2
        L15_2 = L15_2 / 2
        L16_2 = L7_2.power
        L16_2 = L16_2.view
        L16_2 = L16_2.height
        L16_2 = -L16_2
        L16_2 = L16_2 / 2
        L17_2 = L7_2.power
        L17_2 = L17_2.view
        L17_2 = L17_2.width
        L17_2 = L17_2 / 2
        L18_2 = L7_2.power
        L18_2 = L18_2.view
        L18_2 = L18_2.height
        L18_2 = L18_2 / 2
        L19_2 = 2
        L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        L13_2 = A0_2
        L12_2 = A0_2.flashScreen
        L14_2 = A0_2.heroBackground
        L15_2 = 0.8
        L16_2 = 0.4
        L12_2(L13_2, L14_2, L15_2, L16_2)
        L12_2 = L7_2.power
        L13_2 = L12_2
        L12_2 = L12_2.setValue
        L14_2 = L7_2.afterUseHeroPower
        L12_2(L13_2, L14_2)
        L12_2 = L26_1
        L13_2 = L7_2
        L14_2 = 0
        L12_2(L13_2, L14_2)
      end
    end
  end
end

L11_1.animatePower = L28_1

function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = mainPlayer
    L8_2 = L8_2.heroSet
    if L8_2 then
      L8_2 = mainPlayer
      L8_2 = L8_2.heroSet
      L9_2 = L7_2.card
      L9_2 = L9_2.baseId
      L8_2 = L8_2[L9_2]
      if L8_2 then
        goto lbl_51
      end
    end
    L8_2 = L7_2.card
    L8_2 = L8_2.id
    if L8_2 ~= -1 then
      L8_2 = display
      L8_2 = L8_2.newImageRect
      L9_2 = L7_2.view
      L10_2 = A2_2
      L11_2 = 20
      L12_2 = 20
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      L9_2 = L7_2.cooldown
      L9_2 = L9_2.x
      L8_2.x = L9_2
      L9_2 = L7_2.cooldown
      L9_2 = L9_2.y
      L8_2.y = L9_2
      L8_2.alpha = 0
      L9_2 = transition
      L9_2 = L9_2.to
      L10_2 = L8_2
      L11_2 = {}
      L11_2.time = 1000
      L11_2.x = 44
      L11_2.y = 60
      L11_2.alpha = 1
      L11_2.tag = "clockAnimation"
      L12_2 = easing
      L12_2 = L12_2.outExpo
      L11_2.transition = L12_2
      
      function L12_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = transition
        L0_3 = L0_3.to
        L1_3 = L8_2
        L2_3 = {}
        L2_3.xScale = 3
        L2_3.yScale = 3
        L2_3.time = 1000
        L2_3.alpha = 0
        L2_3.tag = "clockAnimation"
        L3_3 = easing
        L3_3 = L3_3.inQuad
        L2_3.transition = L3_3
        L0_3(L1_3, L2_3)
      end
      
      L11_2.onComplete = L12_2
      L9_2(L10_2, L11_2)
    end
    ::lbl_51::
  end
end

L11_1.animateClocks = L28_1

function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 then
    L3_2 = A1_2.view
    if L3_2 then
      L3_2 = A1_2.view
      L3_2 = L3_2.height
      L3_2 = L3_2 * 0.3
      L4_2 = 1
      if A2_2 == "attacker" then
        L4_2 = -1
      end
      L5_2 = L22_1
      if L5_2 == true then
        L5_2 = transition
        L5_2 = L5_2.to
        L6_2 = A1_2.view
        L7_2 = {}
        L7_2.time = 300
        L7_2.xScale = 1.2
        L7_2.yScale = 1.2
        L8_2 = A1_2.baseY
        L9_2 = L4_2 * L3_2
        L8_2 = L8_2 + L9_2
        L7_2.y = L8_2
        L8_2 = easing
        L8_2 = L8_2.outBounce
        L7_2.transition = L8_2
        L7_2.tag = "heroEffect"
        
        function L8_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3
          L0_3 = A0_2
          L0_3 = L0_3.attackerHeroAffectedCard
          if L0_3 then
            L0_3 = A0_2
            L0_3 = L0_3.attackerHeroAffectedCard
            L0_3 = #L0_3
            if 0 < L0_3 then
              L0_3 = A0_2
              L1_3 = L0_3
              L0_3 = L0_3.animatePower
              L2_3 = A0_2
              L2_3 = L2_3.attackerCardViews
              L3_3 = A0_2
              L3_3 = L3_3.attackerHeroAffectedCard
              L0_3(L1_3, L2_3, L3_3)
            end
          end
          L0_3 = A0_2
          L0_3 = L0_3.attackerWisdomBenefitOfHero
          if L0_3 then
            L0_3 = A0_2
            L1_3 = L0_3
            L0_3 = L0_3.animateClocks
            L2_3 = A0_2
            L2_3 = L2_3.attackerCardViews
            L3_3 = Constants
            L3_3 = L3_3.Path_Assets
            L4_3 = "Heroes/FC-Time.png"
            L3_3 = L3_3 .. L4_3
            L0_3(L1_3, L2_3, L3_3)
          end
          L0_3 = A0_2
          L0_3 = L0_3.defenderHeroAffectedCard
          if L0_3 then
            L0_3 = A0_2
            L0_3 = L0_3.defenderHeroAffectedCard
            L0_3 = #L0_3
            if 0 < L0_3 then
              L0_3 = A0_2
              L1_3 = L0_3
              L0_3 = L0_3.animatePower
              L2_3 = A0_2
              L2_3 = L2_3.defenderCardViews
              L3_3 = A0_2
              L3_3 = L3_3.defenderHeroAffectedCard
              L0_3(L1_3, L2_3, L3_3)
            end
          end
        end
        
        L7_2.onComplete = L8_2
        L5_2(L6_2, L7_2)
        L5_2 = transition
        L5_2 = L5_2.to
        L6_2 = A1_2.view
        L7_2 = {}
        L7_2.delay = 310
        L7_2.time = 200
        L7_2.xScale = 1
        L7_2.yScale = 1
        L8_2 = A1_2.baseY
        L7_2.y = L8_2
        L8_2 = easing
        L8_2 = L8_2.outBounce
        L7_2.transition = L8_2
        L7_2.tag = "heroEffect"
        L5_2(L6_2, L7_2)
      end
    end
  end
end

L11_1.runHeroAnimation = L28_1

function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A1_2.view
  L3_2 = L3_2.height
  L3_2 = L3_2 * 0.1
  L4_2 = 1
  if A2_2 == "attacker" then
    L4_2 = -1
  end
  L5_2 = L21_1
  if L5_2 == true then
    L5_2 = transition
    L5_2 = L5_2.to
    L6_2 = A1_2.view
    L7_2 = {}
    L7_2.time = 300
    L8_2 = A1_2.baseY
    L9_2 = L4_2 * L3_2
    L8_2 = L8_2 + L9_2
    L7_2.y = L8_2
    L8_2 = easing
    L8_2 = L8_2.outBounce
    L7_2.transition = L8_2
    L7_2.tag = "comboFX"
    
    function L8_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.createComboGlowSheet
      L2_3 = A1_2
      L0_3(L1_3, L2_3)
      L0_3 = L26_1
      L1_3 = A1_2
      L2_3 = 0.3
      L0_3(L1_3, L2_3)
      L0_3 = A1_2
      L0_3 = L0_3.power
      L1_3 = L0_3
      L0_3 = L0_3.setValue
      L2_3 = A1_2
      L2_3 = L2_3.afterComboPower
      L0_3(L1_3, L2_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.addComboSeal
      L2_3 = A1_2
      L0_3(L1_3, L2_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.floatComboCard
      L2_3 = A1_2
      L3_3 = A1_2
      L3_3 = L3_3.view
      L3_3 = L3_3.x
      L4_3 = A1_2
      L4_3 = L4_3.view
      L4_3 = L4_3.y
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = L26_1
      L1_3 = A1_2
      L2_3 = 0
      L0_3(L1_3, L2_3)
    end
    
    L7_2.onComplete = L8_2
    L5_2(L6_2, L7_2)
  end
end

L11_1.comboEffects = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = graphics
  L2_2 = L2_2.newImageSheet
  L3_2 = Constants
  L3_2 = L3_2.Path_Assets
  L4_2 = "Combos/comboGlowEffect.png"
  L3_2 = L3_2 .. L4_2
  L4_2 = {}
  L4_2.width = 140
  L4_2.height = 170
  L4_2.numFrames = 3
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L23_1
  L4_2 = A1_2.id
  L5_2 = display
  L5_2 = L5_2.newSprite
  L6_2 = A1_2.view
  L7_2 = L2_2
  L8_2 = {}
  L8_2.start = 1
  L8_2.count = 3
  L8_2.time = 300
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L3_2[L4_2] = L5_2
  L3_2 = L23_1
  L4_2 = A1_2.id
  L3_2 = L3_2[L4_2]
  L3_2.x = 44
  L3_2 = L23_1
  L4_2 = A1_2.id
  L3_2 = L3_2[L4_2]
  L3_2.y = 60
  L3_2 = L23_1
  L4_2 = A1_2.id
  L3_2 = L3_2[L4_2]
  L3_2.alpha = 0
  L3_2 = L23_1
  L4_2 = A1_2.id
  L3_2 = L3_2[L4_2]
  L4_2 = L3_2
  L3_2 = L3_2.scale
  L5_2 = 0.8
  L6_2 = 0.9
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = transition
  L3_2 = L3_2.to
  L4_2 = L23_1
  L5_2 = A1_2.id
  L4_2 = L4_2[L5_2]
  L5_2 = {}
  L5_2.time = 600
  L5_2.alpha = 1
  L5_2.tag = "comboFX"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = L23_1
    L1_3 = A1_2
    L1_3 = L1_3.id
    L0_3 = L0_3[L1_3]
    L1_3 = L0_3
    L0_3 = L0_3.play
    L0_3(L1_3)
  end
  
  L5_2.onComplete = L6_2
  L3_2(L4_2, L5_2)
end

L11_1.createComboGlowSheet = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.view
    L8_2 = L7_2
    L7_2 = L7_2.toFront
    L7_2(L8_2)
  end
end

L11_1.bringCardsToFront = L28_1

function L28_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = math
  L4_2 = L4_2.random
  L5_2 = -1
  L6_2 = 1
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = math
  L5_2 = L5_2.random
  L6_2 = -3
  L7_2 = 3
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = transition
  L6_2 = L6_2.to
  L7_2 = A1_2.view
  L8_2 = {}
  L8_2.time = 600
  L9_2 = A2_2 + L4_2
  L8_2.x = L9_2
  L9_2 = A3_2 + L5_2
  L8_2.y = L9_2
  L8_2.tag = "floatTrans"
  
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.floatComboCard
    L2_3 = A1_2
    L3_3 = A2_2
    L4_3 = A3_2
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  
  L8_2.onComplete = L9_2
  L6_2(L7_2, L8_2)
end

L11_1.floatComboCard = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = transition
  L2_2 = L2_2.cancel
  L3_2 = "floatTrans"
  L2_2(L3_2)
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.isCombo
    if L7_2 == true then
      L7_2 = transition
      L7_2 = L7_2.to
      L8_2 = L6_2.view
      L9_2 = {}
      L9_2.time = 300
      L10_2 = L6_2.baseX
      L9_2.x = L10_2
      L10_2 = L6_2.baseY
      L9_2.y = L10_2
      L9_2.tag = "comboFX"
      L10_2 = easing
      L10_2 = L10_2.outElastic
      L9_2.transition = L10_2
      L7_2(L8_2, L9_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.flashScreen
  L4_2 = A0_2.comboBackground
  L5_2 = 0.8
  L6_2 = 0.4
  L2_2(L3_2, L4_2, L5_2, L6_2)
end

L11_1.bringBackComboCardsToRow = L28_1

function L28_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = transition
  L4_2 = L4_2.to
  L5_2 = A1_2
  L6_2 = {}
  L6_2.time = 75
  L6_2.alpha = 1
  L6_2.tag = "flashFX"
  
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = A1_2
    L2_3 = {}
    L2_3.time = 75
    L3_3 = A2_2
    L2_3.alpha = L3_3
    L2_3.tag = "flashFX"
    
    function L3_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = A1_2
      L0_4 = L0_4.alpha
      if L0_4 ~= 0 then
        L0_4 = A0_2
        L1_4 = L0_4
        L0_4 = L0_4.flashScreen
        L2_4 = A1_2
        L3_4 = A2_2
        L4_4 = A3_2
        L3_4 = L3_4 - L4_4
        L4_4 = A3_2
        L0_4(L1_4, L2_4, L3_4, L4_4)
      end
    end
    
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L6_2.onComplete = L7_2
  L4_2(L5_2, L6_2)
end

L11_1.flashScreen = L28_1

function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 then
    L3_2 = #A1_2
    if 0 < L3_2 then
      L3_2 = 1
      L4_2 = #A1_2
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = A2_2.id
        L8_2 = A1_2[L6_2]
        L8_2 = L8_2.id
        if L7_2 == L8_2 then
          L7_2 = A1_2[L6_2]
          L7_2 = L7_2.power
          A2_2.afterUseHeroPower = L7_2
        end
      end
    end
  end
end

L11_1.checkForHeroBenefit = L28_1

function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A1_2 ~= nil then
    L3_2 = #A1_2
    if 0 < L3_2 then
      L3_2 = true
      L20_1 = L3_2
      L3_2 = log3
      L4_2 = " Number of combos :: "
      L5_2 = #A1_2
      L3_2(L4_2, L5_2)
      L3_2 = 1
      L4_2 = #A1_2
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = 1
        L8_2 = A1_2[L6_2]
        L8_2 = L8_2.cards
        L8_2 = #L8_2
        L9_2 = 1
        for L10_2 = L7_2, L8_2, L9_2 do
          L11_2 = A2_2.id
          L12_2 = A1_2[L6_2]
          L12_2 = L12_2.cards
          L12_2 = L12_2[L10_2]
          L12_2 = L12_2.id
          if L11_2 == L12_2 then
            A2_2.isCombo = true
            L11_2 = A1_2[L6_2]
            L11_2 = L11_2.cards
            L11_2 = L11_2[L10_2]
            L11_2 = L11_2.power
            A2_2.afterComboPower = L11_2
            L11_2 = A1_2[L6_2]
            L11_2 = L11_2.benefit
            A2_2.comboBenefit = L11_2
          end
        end
      end
    end
  end
end

L11_1.checkForCombos = L28_1

function L28_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L8_2 = pairs
  L9_2 = A1_2
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = {}
    L14_2 = {}
    L14_2.cardHeight = 120
    L14_2.cardWidth = 88
    L14_2.battleAnimationCard = true
    L15_2 = L3_1
    L16_2 = L15_2
    L15_2 = L15_2.new
    L17_2 = "big"
    L18_2 = L12_2
    L19_2 = L11_1
    L20_2 = L14_2
    L21_2 = nil
    L22_2 = true
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L7_2 = L15_2
    L17_2 = L15_2
    L16_2 = L15_2.setSelectable
    L18_2 = false
    L16_2(L17_2, L18_2)
    L17_2 = L15_2
    L16_2 = L15_2.hideCooldownView
    L16_2(L17_2)
    L17_2 = L15_2
    L16_2 = L15_2.deselected
    L16_2(L17_2)
    L17_2 = L15_2
    L16_2 = L15_2.setId
    L18_2 = L11_2
    L16_2(L17_2, L18_2)
    L16_2 = table
    L16_2 = L16_2.insert
    L17_2 = A2_2
    L18_2 = L15_2
    L16_2(L17_2, L18_2)
    L16_2 = A0_2.view
    L17_2 = L16_2
    L16_2 = L16_2.insert
    L18_2 = L15_2.view
    L16_2(L17_2, L18_2)
    L17_2 = A0_2
    L16_2 = A0_2.checkForCombos
    L18_2 = A5_2
    L19_2 = L15_2
    L16_2(L17_2, L18_2, L19_2)
    L17_2 = A0_2
    L16_2 = A0_2.checkForHeroBenefit
    L18_2 = A6_2
    L19_2 = L15_2
    L16_2(L17_2, L18_2, L19_2)
    L17_2 = L15_2
    L16_2 = L15_2.setPosition
    L18_2 = A3_2
    L19_2 = A4_2
    L16_2(L17_2, L18_2, L19_2)
    L16_2 = L16_1
    if L16_2 then
      L17_2 = L15_2
      L16_2 = L15_2.setCooldownTimeVisibility
      L18_2 = false
      L16_2(L17_2, L18_2)
      L17_2 = L15_2
      L16_2 = L15_2.animateCardPowerLabel
      L18_2 = true
      L16_2(L17_2, L18_2)
    end
  end
  L8_2 = L7_2.showNewSeriesOfCards
  L9_2 = true
  L8_2 = L8_2(L9_2)
  if L8_2 then
    L8_2 = 120
    L25_1 = L8_2
  else
    L8_2 = 98
    L25_1 = L8_2
  end
end

L11_1.createCards = L28_1

function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = 1
  L4_2 = #A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = transition
    L7_2 = L7_2.to
    L8_2 = A1_2[L6_2]
    L8_2 = L8_2.view
    L9_2 = {}
    L9_2.time = 750
    L9_2.y = A2_2
    L9_2.tag = "battleAnim"
    L10_2 = easing
    L10_2 = L10_2.outElastic
    L9_2.transition = L10_2
    L7_2(L8_2, L9_2)
  end
end

L11_1.bringCardsToScreen = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L24_1
  L3_2 = A1_2.id
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = A1_2.view
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "Combos/seal"
  L8_2 = A1_2.comboBenefit
  L9_2 = ".png"
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
  L7_2 = 40
  L8_2 = 40
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L2_2[L3_2] = L4_2
  L2_2 = L24_1
  L3_2 = A1_2.id
  L2_2 = L2_2[L3_2]
  L2_2.x = 50
  L2_2 = L24_1
  L3_2 = A1_2.id
  L2_2 = L2_2[L3_2]
  L2_2.y = 50
  L2_2 = L24_1
  L3_2 = A1_2.id
  L2_2 = L2_2[L3_2]
  L2_2.xScale = 4
  L2_2 = L24_1
  L3_2 = A1_2.id
  L2_2 = L2_2[L3_2]
  L2_2.yScale = 4
  L2_2 = L24_1
  L3_2 = A1_2.id
  L2_2 = L2_2[L3_2]
  L2_2.rotation = -45
  L2_2 = L24_1
  L3_2 = A1_2.id
  L2_2 = L2_2[L3_2]
  L2_2.alpha = 0
  L2_2 = transition
  L2_2 = L2_2.to
  L3_2 = L24_1
  L4_2 = A1_2.id
  L3_2 = L3_2[L4_2]
  L4_2 = {}
  L4_2.time = 300
  L4_2.alpha = 0.7
  L4_2.x = 20
  L4_2.y = 90
  L4_2.xScale = 0.8
  L4_2.yScale = 0.8
  L5_2 = L24_1
  L6_2 = A1_2.id
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.rotation
  L5_2 = L5_2 + 2
  L4_2.rotation = L5_2
  L5_2 = easing
  L5_2 = L5_2.inBounce
  L4_2.transition = L5_2
  L4_2.tag = "comboFX"
  
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L24_1
    L2_3 = A1_2
    L2_3 = L2_3.id
    L1_3 = L1_3[L2_3]
    L2_3 = {}
    L2_3.time = 150
    L2_3.alpha = 1
    L2_3.xScale = 1
    L2_3.yScale = 1
    L2_3.alpha = 1
    L3_3 = L24_1
    L4_3 = A1_2
    L4_3 = L4_3.id
    L3_3 = L3_3[L4_3]
    L3_3 = L3_3.rotation
    L3_3 = L3_3 - 2
    L2_3.rotation = L3_3
    L3_3 = easing
    L3_3 = L3_3.inSine
    L2_3.transition = L3_3
    L2_3.tag = "comboFX"
    
    function L3_3()
      local L0_4, L1_4, L2_4
      L0_4 = transition
      L0_4 = L0_4.to
      L1_4 = L24_1
      L2_4 = A1_2
      L2_4 = L2_4.id
      L1_4 = L1_4[L2_4]
      L2_4 = {}
      L2_4.time = 1500
      L2_4.delay = 750
      L2_4.alpha = 0
      L2_4.tag = "comboFX"
      L0_4(L1_4, L2_4)
    end
    
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L4_2.onComplete = L5_2
  L2_2(L3_2, L4_2)
end

L11_1.addComboSeal = L28_1

function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = L25_1
  L4_2 = 6
  L5_2 = L5_1
  L5_2 = L5_2.lengthOfTable
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L6_2 = L3_2 * L5_2
  L7_2 = L5_2 - 1
  L7_2 = L4_2 * L7_2
  L6_2 = L6_2 + L7_2
  L7_2 = display
  L7_2 = L7_2.contentWidth
  if L6_2 > L7_2 then
    L7_2 = L3_2 * L5_2
    L8_2 = display
    L8_2 = L8_2.contentWidth
    L8_2 = L8_2 - L7_2
    L9_2 = L5_2 - 1
    L4_2 = L8_2 / L9_2
    L9_2 = L3_2 * L5_2
    L10_2 = L5_2 - 1
    L10_2 = L4_2 * L10_2
    L6_2 = L9_2 + L10_2
  end
  L7_2 = 0
  L8_2 = pairs
  L9_2 = A1_2
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = nil
    L14_2 = nil
    if A2_2 == "attacker" then
      L15_2 = display
      L15_2 = L15_2.contentCenterX
      L16_2 = L6_2 / 2
      L13_2 = L15_2 - L16_2
      L15_2 = L3_2 + L4_2
      L15_2 = L15_2 * L7_2
      L14_2 = L13_2 + L15_2
    else
      L15_2 = display
      L15_2 = L15_2.contentWidth
      L16_2 = display
      L16_2 = L16_2.contentCenterX
      L17_2 = L6_2 / 2
      L16_2 = L16_2 - L17_2
      L13_2 = L15_2 - L16_2
      L15_2 = L3_2 + L4_2
      L16_2 = L7_2 + 1
      L15_2 = L15_2 * L16_2
      L14_2 = L13_2 - L15_2
    end
    L15_2 = transition
    L15_2 = L15_2.to
    L16_2 = L12_2.view
    L17_2 = {}
    L17_2.time = 450
    L17_2.x = L14_2
    L18_2 = easing
    L18_2 = L18_2.inSine
    L17_2.transition = L18_2
    L17_2.tag = "battleAnim"
    L15_2(L16_2, L17_2)
    L12_2.baseX = L14_2
    L15_2 = L12_2.view
    L15_2 = L15_2.y
    L12_2.baseY = L15_2
    L15_2 = L12_2.isCombo
    if L15_2 == true then
      L15_2 = L17_1
      L16_2 = timer
      L16_2 = L16_2.performWithDelay
      L17_2 = 1500
      
      function L18_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.comboEffects
        L2_3 = L12_2
        L3_3 = A2_2
        L0_3(L1_3, L2_3, L3_3)
      end
      
      L19_2 = 1
      L16_2 = L16_2(L17_2, L18_2, L19_2)
      L15_2.comboFXTimer = L16_2
    end
    L15_2 = L3_1
    L15_2 = L15_2.cardIsHero
    L16_2 = L12_2.card
    L16_2 = L16_2.baseId
    L15_2 = L15_2(L16_2)
    if L15_2 then
      L15_2 = A0_2.defenderHeroAffectedCard
      if not L15_2 then
        L15_2 = A0_2.attackerHeroAffectedCard
        if not L15_2 then
          goto lbl_131
        end
      end
      L15_2 = A0_2.attackerCombos
      if L15_2 then
        L15_2 = A0_2.attackerCombos
        L15_2 = #L15_2
        if 0 < L15_2 then
          goto lbl_108
        end
      end
      L15_2 = A0_2.defenderCombos
      if L15_2 then
        L15_2 = A0_2.defenderCombos
        L15_2 = #L15_2
        if 0 < L15_2 then
          ::lbl_108::
          L15_2 = L17_1
          L16_2 = timer
          L16_2 = L16_2.performWithDelay
          L17_2 = 5510
          
          function L18_2()
            local L0_3, L1_3, L2_3, L3_3
            L0_3 = A0_2
            L1_3 = L0_3
            L0_3 = L0_3.runHeroAnimation
            L2_3 = L12_2
            L3_3 = A2_2
            L0_3(L1_3, L2_3, L3_3)
          end
          
          L19_2 = 1
          L16_2 = L16_2(L17_2, L18_2, L19_2)
          L15_2.heroAnimation = L16_2
      end
      else
        L15_2 = L17_1
        L16_2 = timer
        L16_2 = L16_2.performWithDelay
        L17_2 = 1500
        
        function L18_2()
          local L0_3, L1_3, L2_3, L3_3
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3.runHeroAnimation
          L2_3 = L12_2
          L3_3 = A2_2
          L0_3(L1_3, L2_3, L3_3)
        end
        
        L19_2 = 1
        L16_2 = L16_2(L17_2, L18_2, L19_2)
        L15_2.heroAnimation = L16_2
      end
    end
    ::lbl_131::
    L16_2 = A0_2
    L15_2 = A0_2.bringCardsToFront
    L17_2 = A1_2
    L15_2(L16_2, L17_2)
    L7_2 = L7_2 + 1
  end
end

L11_1.scatterCardsToRows = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.isCombo
    if L7_2 then
      L6_2.isCombo = false
    end
    L8_2 = L6_2
    L7_2 = L6_2.removeSelf
    L7_2(L8_2)
    A1_2[L5_2] = nil
  end
end

L11_1.cleanUpTables = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 then
    L2_2 = pairs
    L3_2 = A1_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L3_1
      L7_2 = L7_2.cardIsHero
      L8_2 = L6_2.card
      L8_2 = L8_2.baseId
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L8_2 = L6_2
        L7_2 = L6_2.removeEnterFrameListener
        L7_2(L8_2)
      end
    end
  end
end

L11_1.removeEnterFrameFromHeroCards = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L5_2 = A0_2
    L4_2 = A0_2.removeEnterFrameFromHeroCards
    L6_2 = A0_2.defenderCardViews
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2.removeEnterFrameFromHeroCards
    L6_2 = A0_2.attackerCardViews
    L4_2(L5_2, L6_2)
    A0_2.defenderCards = nil
    A0_2.attackerCards = nil
    A0_2.operation = nil
    A0_2.attackerCombos = nil
    A0_2.defenderCombos = nil
    L5_2 = A0_2
    L4_2 = A0_2.cleanUpTables
    L6_2 = L23_1
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2.cleanUpTables
    L6_2 = L24_1
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2.cleanUpTables
    L6_2 = A0_2.attackerCardViews
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2.cleanUpTables
    L6_2 = A0_2.defenderCardViews
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.continueLabel
    L4_2.isVisible = false
    L4_2 = A0_2.comboBackground
    L4_2.alpha = 0
    L4_2 = A0_2.heroBackground
    L4_2.alpha = 0
    L4_2 = false
    L20_1 = L4_2
    L4_2 = display
    L4_2 = L4_2.remove
    L5_2 = L13_1
    L4_2(L5_2)
    L4_2 = nil
    L13_1 = L4_2
    L4_2 = mainPlayer
    L4_2 = L4_2.level
    if L4_2 == 4 then
      L4_2 = mainPlayer
      L4_2.showNewCards = false
    end
  end
end

L11_1.hide = L28_1
L29_1 = L11_1
L28_1 = L11_1.addEventListener
L30_1 = "create"
L31_1 = L11_1
L28_1(L29_1, L30_1, L31_1)
L29_1 = L11_1
L28_1 = L11_1.addEventListener
L30_1 = "show"
L31_1 = L11_1
L28_1(L29_1, L30_1, L31_1)
L29_1 = L11_1
L28_1 = L11_1.addEventListener
L30_1 = "hide"
L31_1 = L11_1
L28_1(L29_1, L30_1, L31_1)
return L11_1
