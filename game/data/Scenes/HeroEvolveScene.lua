local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Views.NavigationBar"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Components.TDButtonView"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.ActivityIndicatorView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.CardView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Language"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Utils.SceneCreator"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Components.TDProgressBarView"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Utils.Toolbox"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Components.TDGoldLabelView"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Models.Card"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Models.AchievementManager"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Models.UserCard"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Utils.Analytics"
L13_1 = L13_1(L14_1)
L14_1 = require
L15_1 = "Components.TDMultilineButtonView"
L14_1 = L14_1(L15_1)
L15_1 = L6_1.newScene
L16_1 = "HeroEvolveScene"
L15_1 = L15_1(L16_1)

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = assert
  L3_2 = A1_2.params
  L3_2 = L3_2.evolveCard
  L4_2 = "A card object needs to be provided in the params field."
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.params
  L2_2 = L2_2.evolveCard
  A0_2.evolveCard = L2_2
  L2_2 = display
  L2_2 = L2_2.newImageRect
  L3_2 = A0_2.view
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "FC-bg.png"
  L4_2 = L4_2 .. L5_2
  L5_2 = 570
  L6_2 = 360
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = display
  L3_2 = L3_2.contentCenterX
  L2_2.x = L3_2
  L3_2 = display
  L3_2 = L3_2.contentCenterY
  L2_2.y = L3_2
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.helpId = 39
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.navBar = L3_2
  L3_2 = A0_2.navBar
  L4_2 = L3_2
  L3_2 = L3_2.setTitle
  L5_2 = L5_1
  L5_2 = L5_2.Evolve
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.navBar
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L3_2 = display
  L3_2 = L3_2.newRoundedRect
  L4_2 = A0_2.view
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 / 2
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 - 45
  L6_2 = L6_2 / 2
  L6_2 = 40 + L6_2
  L7_2 = display
  L7_2 = L7_2.contentWidth
  L7_2 = L7_2 - 10
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 - 45
  L9_2 = 3
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2.boxBackground = L3_2
  L3_2 = A0_2.boxBackground
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.whiteColor
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = A0_2.boxBackground
  L3_2.strokeWidth = 3
  L3_2 = A0_2.boxBackground
  L4_2 = L3_2
  L3_2 = L3_2.setStrokeColor
  L5_2 = Theme
  L5_2 = L5_2.heroSceneBackgroundBoxColor
  L5_2 = L5_2[1]
  L6_2 = Theme
  L6_2 = L6_2.heroSceneBackgroundBoxColor
  L6_2 = L6_2[2]
  L7_2 = Theme
  L7_2 = L7_2.heroSceneBackgroundBoxColor
  L7_2 = L7_2[3]
  L3_2(L4_2, L5_2, L6_2, L7_2)
end

L15_1.create = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = mainPlayer
    L0_3 = L0_3.heroSet
    L1_3 = A0_2
    L1_3 = L1_3.evolveCard
    L1_3 = L1_3.baseId
    L0_3 = L0_3[L1_3]
    L0_3 = L0_3.potion
    L1_3 = L10_1
    L1_3 = L1_3.baseCards
    L2_3 = A0_2
    L2_3 = L2_3.evolveCard
    L2_3 = L2_3.baseId
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.potion_limit
    if L0_3 == L1_3 then
      function L0_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4
        
        L1_4 = transition
        L1_4 = L1_4.to
        L2_4 = A0_4
        L3_4 = {}
        L3_4.time = 450
        L3_4.alpha = 0
        L3_4.xScale = 0.1
        L3_4.yScale = 0.1
        
        function L4_4()
          local L0_5, L1_5
          L0_5 = A0_4
          L0_5.xScale = 1
          L0_5 = A0_4
          L0_5.yScale = 1
        end
        
        L3_4.onComplete = L4_4
        L1_4(L2_4, L3_4)
      end
      
      L1_3 = L0_3
      L2_3 = A0_2
      L2_3 = L2_3.addPotionButton
      L2_3 = L2_3.view
      L1_3(L2_3)
      L1_3 = L0_3
      L2_3 = A0_2
      L2_3 = L2_3.fillOutPotionButton
      L2_3 = L2_3.view
      L1_3(L2_3)
      L1_3 = A0_2
      L1_3 = L1_3.evolveButton
      L1_3 = L1_3.view
      L1_3.xScale = 1
      L1_3 = A0_2
      L1_3 = L1_3.evolveButton
      L1_3 = L1_3.view
      L1_3.yScale = 1
      L1_3 = transition
      L1_3 = L1_3.to
      L2_3 = A0_2
      L2_3 = L2_3.evolveButton
      L2_3 = L2_3.view
      L3_3 = {}
      L3_3.time = 240
      L3_3.delay = 460
      L3_3.alpha = 1
      L1_3(L2_3, L3_3)
    end
  end
  
  L2_2 = mainPlayer
  L2_2 = L2_2.heroSet
  L3_2 = A0_2.evolveCard
  L3_2 = L3_2.baseId
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.potion
  L3_2 = L10_1
  L3_2 = L3_2.baseCards
  L4_2 = A0_2.evolveCard
  L4_2 = L4_2.baseId
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.potion_limit
  if L2_2 == L3_2 then
    L2_2 = L13_1
    L2_2 = L2_2.logEvent
    L3_2 = "Added Potion To Hero Card With Nectar"
    L2_2(L3_2)
    L2_2 = A0_2.addPotionButton
    L3_2 = L2_2
    L2_2 = L2_2.setEnabled
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.fillOutPotionButton
    L3_2 = L2_2
    L2_2 = L2_2.setEnabled
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = L3_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = A0_2.levelProgressBar
  L2_2 = L2_2.label
  L3_2 = L5_1
  L3_2 = L3_2.adjustNumber
  L4_2 = mainPlayer
  L4_2 = L4_2.heroSet
  L5_2 = A0_2.evolveCard
  L5_2 = L5_2.baseId
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.potion
  L3_2 = L3_2(L4_2)
  L4_2 = "/"
  L5_2 = L5_1
  L5_2 = L5_2.adjustNumber
  L6_2 = L10_1
  L6_2 = L6_2.baseCards
  L7_2 = A0_2.evolveCard
  L7_2 = L7_2.baseId
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.potion_limit
  L5_2 = L5_2(L6_2)
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2.text = L3_2
  L2_2 = A0_2.levelProgressBar
  L3_2 = L2_2
  L2_2 = L2_2.setValue
  L4_2 = mainPlayer
  L4_2 = L4_2.heroSet
  L5_2 = A0_2.evolveCard
  L5_2 = L5_2.baseId
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.potion
  L5_2 = true
  L6_2 = nil
  L7_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2.navBar
  L3_2 = L2_2
  L2_2 = L2_2.setNectar
  L4_2 = mainPlayer
  L4_2 = L4_2.nectar
  L2_2(L3_2, L4_2)
end

L15_1.addPotionSuccessCallback = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = L5_1
  L2_2 = L2_2.Potion
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

addPotionFailureCallback = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = mainPlayer
  L1_2 = L1_2.potionAmount
  L2_2 = Constants
  L2_2 = L2_2.Potion_Capacity
  if L1_2 < L2_2 then
    L1_2 = showSimpleDialog
    L2_2 = L5_1
    L2_2 = L2_2.Potion
    L3_2 = L5_1
    L3_2 = L3_2["Not Enough Potion"]
    L4_2 = L5_1
    L4_2 = L4_2.Yes
    
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = L0_1
      L0_3 = L0_3.gotoScene
      L1_3 = "Scenes.DepartmentofLabor"
      L2_3 = {}
      L3_3 = {}
      L3_3.selectedTab = 3
      L4_3 = A0_2
      L4_3 = L4_3.evolveCard
      L3_3.evolveCard = L4_3
      L3_3.previousScene = "Scenes.HeroEvolveScene"
      L2_3.params = L3_3
      L0_3(L1_3, L2_3)
    end
    
    L6_2 = L5_1
    L6_2 = L6_2.No
    L7_2 = nil
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L1_2 = L3_1
    L1_2 = L1_2.show
    L1_2()
    L1_2 = A0_2.evolveCard
    L2_2 = L1_2
    L1_2 = L1_2.addPotionToCard
    L3_2 = Constants
    L3_2 = L3_2.Potion_Capacity
    
    function L4_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.addPotionSuccessCallback
      L0_3(L1_3)
    end
    
    L5_2 = addPotionFailureCallback
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end

L15_1.didPressAddPotionButton = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L13_1
  L1_2 = L1_2.logEvent
  L2_2 = "Add Potion With Nectar Button Pressed"
  L1_2(L2_2)
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = 1
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = Constants
  L4_2 = L4_2.Hero_EvolveBaseNectar
  L5_2 = L10_1
  L5_2 = L5_2.baseCards
  L6_2 = A0_2.evolveCard
  L6_2 = L6_2.baseId
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.potion_limit
  L6_2 = mainPlayer
  L6_2 = L6_2.heroSet
  L7_2 = A0_2.evolveCard
  L7_2 = L7_2.baseId
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.potion
  L5_2 = L5_2 - L6_2
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = mainPlayer
  L3_2 = L2_2
  L2_2 = L2_2.checkPlayerCurrency
  L4_2 = L1_2
  L5_2 = true
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 then
    L2_2 = showSimpleDialog
    L3_2 = L5_1
    L3_2 = L3_2["Instant Filling Out"]
    L4_2 = L5_1
    L4_2 = L4_2.localizedString
    L5_2 = "Instant Filling Out Message"
    L6_2 = {}
    L6_2.nectar = L1_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L5_1
    L5_2 = L5_2.Yes
    
    function L6_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = L3_1
      L0_3 = L0_3.show
      L0_3()
      L0_3 = A0_2
      L0_3 = L0_3.evolveCard
      L1_3 = L0_3
      L0_3 = L0_3.addPotionToCard
      L2_3 = nil
      
      function L3_3()
        local L0_4, L1_4
        L0_4 = A0_2
        L1_4 = L0_4
        L0_4 = L0_4.addPotionSuccessCallback
        L0_4(L1_4)
      end
      
      L4_3 = addPotionFailureCallback
      L0_3(L1_3, L2_3, L3_3, L4_3)
    end
    
    L7_2 = L5_1
    L7_2 = L7_2.No
    L8_2 = nil
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  else
    return
  end
end

L15_1.didPressFillOutPotionButton = L16_1

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L3_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = L13_1
  L2_2 = L2_2.logEvent
  L3_2 = "Hero Card Evolved To Level "
  L4_2 = L10_1
  L4_2 = L4_2.baseCards
  L5_2 = A1_2.baseId
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.rarity
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = mainPlayer
  L2_2 = L2_2.isSeenCardWithId
  L3_2 = A1_2.baseId
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = mainPlayer
    L3_2 = L3_2.collection
    L4_2 = A1_2.baseId
    L2_2(L3_2, L4_2)
  end
  L2_2 = L11_1
  L2_2 = L2_2.checkColletionAchievements
  L2_2()
  L2_2 = L11_1
  L2_2 = L2_2.cardEvolved
  L2_2()
  L2_2 = L11_1
  L2_2 = L2_2.checkSecretAchievements
  L2_2()
  L2_2 = L0_1
  L2_2 = L2_2.gotoScene
  L3_2 = "Scenes.HeroEvolveAnimationScene"
  L4_2 = {}
  L5_2 = {}
  L6_2 = A0_2.evolveCard
  L5_2.evolveCard = L6_2
  L5_2.generatedCard = A1_2
  L4_2.params = L5_2
  L2_2(L3_2, L4_2)
end

L15_1.didEvolveCallback = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = L5_1
  L2_2 = L2_2.Evolve
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

failedToEvolveCallback = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = mainPlayer
  L1_2 = L1_2.heroSet
  L2_2 = A0_2.evolveCard
  L2_2 = L2_2.baseId
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.potion
  L2_2 = L10_1
  L2_2 = L2_2.baseCards
  L3_2 = A0_2.evolveCard
  L3_2 = L3_2.baseId
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.potion_limit
  if L1_2 == L2_2 then
    L1_2 = L3_1
    L1_2 = L1_2.show
    L2_2 = L5_1
    L2_2 = L2_2.Evolve
    L1_2(L2_2)
    L1_2 = L13_1
    L1_2 = L1_2.logEvent
    L2_2 = "Hero Evolve Button Pressed"
    L1_2(L2_2)
    L1_2 = A0_2.evolveCard
    L2_2 = L1_2
    L1_2 = L1_2.evolveHeroCard
    
    function L3_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.didEvolveCallback
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    
    L4_2 = failedToEvolveCallback
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = showSimpleDialog
    L2_2 = L5_1
    L2_2 = L2_2.Evolve
    L3_2 = L5_1
    L3_2 = L3_2["Not Enough Potion For Evolve"]
    L1_2(L2_2, L3_2)
  end
end

L15_1.didPressEvolveButton = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L1_2.id = "Hero Evolve Button"
  L1_2.width = 100
  L1_2.height = 30
  L2_2 = L5_1
  L2_2 = L2_2.Evolve
  L1_2.label = L2_2
  L2_2 = Constants
  L2_2 = L2_2.Path_Assets
  L3_2 = "BattleItems/battle_outcome_button.png"
  L2_2 = L2_2 .. L3_2
  L1_2.defaultFile = L2_2
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.didPressEvolveButton
    L0_3(L1_3)
  end
  
  L1_2.onRelease = L2_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.evolveButton = L2_2
  L2_2 = A0_2.view
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = A0_2.evolveButton
  L4_2 = L4_2.view
  L2_2(L3_2, L4_2)
end

L15_1.setupEvolveButton = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L1_2.id = "Add Potion Button"
  L2_2 = L5_1
  L2_2 = L2_2["Fill Out"]
  L1_2.label = L2_2
  L2_2 = A0_2.boxBackground
  L2_2 = L2_2.width
  L3_2 = A0_2.levelProgressBar
  L3_2 = L3_2.x
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2.levelProgressBar
  L3_2 = L3_2.width
  L3_2 = L3_2 / 2
  L2_2 = L2_2 - L3_2
  L2_2 = L2_2 / 2
  L2_2 = L2_2 - 20
  L1_2.width = L2_2
  L1_2.height = 30
  L2_2 = Constants
  L2_2 = L2_2.Path_Assets
  L3_2 = "BattleItems/battle_outcome_button.png"
  L2_2 = L2_2 .. L3_2
  L1_2.defaultFile = L2_2
  L2_2 = Constants
  L2_2 = L2_2.Path_Assets
  L3_2 = "Potion/potionLogo.png"
  L2_2 = L2_2 .. L3_2
  L1_2.iconFileName = L2_2
  L1_2.iconWidth = 12
  L1_2.iconHeight = 20
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.didPressFillOutPotionButton
    L0_3(L1_3)
  end
  
  L1_2.onRelease = L2_2
  L2_2 = {}
  L2_2.iconYOffSet = -2
  L2_2.subImageWidth = 12
  L2_2.subImageHeight = 20
  L2_2.subTextFontSize = 13
  L2_2.fontSize = 11
  L3_2 = Constants
  L3_2 = L3_2.fontForTitle
  L3_2 = L3_2()
  L2_2.font = L3_2
  L3_2 = Constants
  L3_2 = L3_2.Path_Assets
  L4_2 = "BattleItems/battle_outcome_button.png"
  L3_2 = L3_2 .. L4_2
  L2_2.defaultFile = L3_2
  L3_2 = Constants
  L3_2 = L3_2.Path_Assets
  L4_2 = "BattleItems/battle_outcome_button.png"
  L3_2 = L3_2 .. L4_2
  L2_2.overFile = L3_2
  L3_2 = A0_2.boxBackground
  L3_2 = L3_2.width
  L4_2 = A0_2.levelProgressBar
  L4_2 = L4_2.x
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2.levelProgressBar
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L3_2 = L3_2 - L4_2
  L3_2 = L3_2 / 2
  L3_2 = L3_2 - 20
  L2_2.width = L3_2
  L2_2.height = 30
  L3_2 = Constants
  L3_2 = L3_2.Path_Assets
  L4_2 = "Potion/potionLogo.png"
  L3_2 = L3_2 .. L4_2
  L2_2.subImage = L3_2
  L2_2.subText = 50
  L2_2.emboss = false
  L2_2.labelYOffset = -8
  
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.didPressAddPotionButton
    L0_3(L1_3)
  end
  
  L2_2.onRelease = L3_2
  L3_2 = L14_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.addPotionButton = L3_2
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.addPotionButton
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.fillOutPotionButton = L3_2
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.fillOutPotionButton
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
end

L15_1.setupPotionButtons = L16_1

function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  A0_2.informationGroup = L3_2
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.informationGroup
  L3_2(L4_2, L5_2)
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = A0_2.informationGroup
  L5_2 = 0
  L6_2 = 0
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = Constants
  L6_2 = L6_2.blackColor
  L6_2 = L6_2()
  L7_2 = 0.2
  L4_2(L5_2, L6_2, L7_2)
  L3_2.strokeWidth = 1
  L5_2 = L3_2
  L4_2 = L3_2.setStrokeColor
  L6_2 = Theme
  L6_2 = L6_2.heroSceneBackgroundBoxColor
  L6_2 = L6_2[1]
  L7_2 = Theme
  L7_2 = L7_2.heroSceneBackgroundBoxColor
  L7_2 = L7_2[2]
  L8_2 = Theme
  L8_2 = L8_2.heroSceneBackgroundBoxColor
  L8_2 = L8_2[3]
  L4_2(L5_2, L6_2, L7_2, L8_2)
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L8_1
    L1_3 = L1_3.stringThousandCommaSeperated
    L2_3 = ""
    L3_3 = A0_3
    L2_3 = L2_3 .. L3_3
    L1_3 = L1_3(L2_3)
    L2_3 = L8_1
    L2_3 = L2_3.addKForLargeNumber
    L3_3 = L1_3
    L2_3 = L2_3(L3_3)
    L1_3 = L2_3
    L2_3 = L5_1
    L2_3 = L2_3.adjustNumber
    L3_3 = L1_3
    L2_3 = L2_3(L3_3)
    L1_3 = L2_3
    return L1_3
  end
  
  L5_2 = mainPlayer
  L5_2 = L5_2.cards
  L6_2 = A0_2.evolveCard
  L6_2 = L6_2.id
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.power
  L6_2 = A0_2.evolveCard
  L7_2 = L6_2
  L6_2 = L6_2.evolutionPowerWithCard
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2 - L5_2
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = A0_2.informationGroup
  L9_2 = L5_1
  L9_2 = L9_2.Power
  L10_2 = " : "
  L9_2 = L9_2 .. L10_2
  L10_2 = 0
  L11_2 = 0
  L12_2 = Constants
  L12_2 = L12_2.fontForTitle
  L12_2 = L12_2()
  L13_2 = 11
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L9_2 = L7_2
  L8_2 = L7_2.setFillColor
  L10_2 = Constants
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  L8_2 = L5_1
  L8_2 = L8_2.mirrorX
  L9_2 = -A1_2
  L9_2 = L9_2 / 2
  L9_2 = L9_2 + 5
  L10_2 = L7_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L8_2 = L8_2(L9_2)
  L7_2.x = L8_2
  L8_2 = -A2_2
  L8_2 = L8_2 / 2
  L8_2 = L8_2 + 10
  L9_2 = L7_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L7_2.y = L8_2
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = A0_2.informationGroup
  L10_2 = L4_2
  L11_2 = L5_2
  L10_2 = L10_2(L11_2)
  L11_2 = 0
  L12_2 = L7_2.y
  L13_2 = Constants
  L13_2 = L13_2.fontForTitle
  L13_2 = L13_2()
  L14_2 = 11
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L10_2 = L8_2
  L9_2 = L8_2.setFillColor
  L11_2 = Constants
  L11_2 = L11_2.darkBlueColor
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L11_2()
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  L9_2 = L5_1
  L9_2 = L9_2.mirrorX
  L10_2 = -A1_2
  L10_2 = L10_2 / 2
  L10_2 = L10_2 + 5
  L11_2 = L7_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L11_2 = L7_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L11_2 = L8_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L9_2 = L9_2(L10_2)
  L8_2.x = L9_2
  L9_2 = display
  L9_2 = L9_2.newText
  L10_2 = A0_2.informationGroup
  L11_2 = " +"
  L12_2 = L4_2
  L13_2 = L6_2
  L12_2 = L12_2(L13_2)
  L11_2 = L11_2 .. L12_2
  L12_2 = 0
  L13_2 = L7_2.y
  L14_2 = Constants
  L14_2 = L14_2.fontForTitle
  L14_2 = L14_2()
  L15_2 = 11
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L11_2 = L9_2
  L10_2 = L9_2.setFillColor
  L12_2 = Theme
  L12_2 = L12_2.gainedAttributeColor
  L12_2 = L12_2[1]
  L13_2 = Theme
  L13_2 = L13_2.gainedAttributeColor
  L13_2 = L13_2[2]
  L14_2 = Theme
  L14_2 = L14_2.gainedAttributeColor
  L14_2 = L14_2[3]
  L10_2(L11_2, L12_2, L13_2, L14_2)
  L10_2 = L5_1
  L10_2 = L10_2.mirrorX
  L11_2 = -A1_2
  L11_2 = L11_2 / 2
  L11_2 = L11_2 + 5
  L12_2 = L7_2.width
  L11_2 = L11_2 + L12_2
  L12_2 = L8_2.width
  L11_2 = L11_2 + L12_2
  L12_2 = L9_2.width
  L12_2 = L12_2 / 2
  L11_2 = L11_2 + L12_2
  L10_2 = L10_2(L11_2)
  L9_2.x = L10_2
  L10_2 = L5_1
  L10_2 = L10_2.lang
  if L10_2 ~= "fa" then
    L10_2 = L5_1
    L10_2 = L10_2.lang
    if L10_2 ~= "ar" then
      goto lbl_182
    end
  end
  L10_2 = L7_2.x
  L11_2 = L7_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 - L11_2
  L11_2 = L9_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 - L11_2
  L9_2.x = L10_2
  L10_2 = L9_2.x
  L11_2 = L9_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 - L11_2
  L11_2 = L8_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 - L11_2
  L8_2.x = L10_2
  ::lbl_182::
  L10_2 = display
  L10_2 = L10_2.newText
  L11_2 = A0_2.informationGroup
  L12_2 = L5_1
  L12_2 = L12_2["Heroes Attributes"]
  L13_2 = " : "
  L12_2 = L12_2 .. L13_2
  L13_2 = 0
  L14_2 = 0
  L15_2 = Constants
  L15_2 = L15_2.fontForTitle
  L15_2 = L15_2()
  L16_2 = 11
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L12_2 = L10_2
  L11_2 = L10_2.setFillColor
  L13_2 = Constants
  L13_2 = L13_2.darkBlueColor
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L13_2()
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  L11_2 = L5_1
  L11_2 = L11_2.mirrorX
  L12_2 = -A1_2
  L12_2 = L12_2 / 2
  L12_2 = L12_2 + 5
  L13_2 = L10_2.width
  L13_2 = L13_2 / 2
  L12_2 = L12_2 + L13_2
  L11_2 = L11_2(L12_2)
  L10_2.x = L11_2
  L11_2 = L7_2.y
  L12_2 = L7_2.height
  L12_2 = L12_2 / 2
  L11_2 = L11_2 + L12_2
  L11_2 = L11_2 + 5
  L12_2 = L10_2.height
  L12_2 = L12_2 / 2
  L11_2 = L11_2 + L12_2
  L10_2.y = L11_2
  L11_2 = {}
  L11_2.id = "Power Attribute"
  L12_2 = L10_1
  L12_2 = L12_2.baseCards
  L13_2 = A0_2.evolveCard
  L13_2 = L13_2.baseId
  L12_2 = L12_2[L13_2]
  L12_2 = L12_2.powerAttribute
  L11_2.value = L12_2
  L12_2 = Constants
  L12_2 = L12_2.Path_Assets
  L13_2 = "Heroes/powerIcon-Small.png"
  L12_2 = L12_2 .. L13_2
  L11_2.image = L12_2
  L11_2.widthIm = 20
  L11_2.heightIm = 20
  L11_2.mode = "L"
  L11_2.gap = 15
  L12_2 = "+"
  L13_2 = L12_1
  L13_2 = L13_2.getNextCardForbaseId
  L14_2 = A0_2.evolveCard
  L14_2 = L14_2.baseId
  L13_2 = L13_2(L14_2)
  L13_2 = L13_2.powerAttribute
  L14_2 = L10_1
  L14_2 = L14_2.baseCards
  L15_2 = A0_2.evolveCard
  L15_2 = L15_2.baseId
  L14_2 = L14_2[L15_2]
  L14_2 = L14_2.powerAttribute
  L13_2 = L13_2 - L14_2
  L12_2 = L12_2 .. L13_2
  L11_2.additionalText = L12_2
  L12_2 = L9_1
  L13_2 = L12_2
  L12_2 = L12_2.new
  L14_2 = L11_2
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = A0_2.informationGroup
  L14_2 = L13_2
  L13_2 = L13_2.insert
  L15_2 = L12_2.view
  L13_2(L14_2, L15_2)
  L13_2 = L12_2.view
  L14_2 = -A1_2
  L14_2 = L14_2 / 2
  L14_2 = L14_2 + 10
  L15_2 = L12_2.view
  L15_2 = L15_2.width
  L15_2 = L15_2 / 2
  L14_2 = L14_2 + L15_2
  L13_2.x = L14_2
  L11_2.id = "Wisdom Attribute"
  L13_2 = L10_1
  L13_2 = L13_2.baseCards
  L14_2 = A0_2.evolveCard
  L14_2 = L14_2.baseId
  L13_2 = L13_2[L14_2]
  L13_2 = L13_2.wisdomAttribute
  L11_2.value = L13_2
  L13_2 = Constants
  L13_2 = L13_2.Path_Assets
  L14_2 = "Heroes/wisdomIcon-Small.png"
  L13_2 = L13_2 .. L14_2
  L11_2.image = L13_2
  L13_2 = "+"
  L14_2 = L12_1
  L14_2 = L14_2.getNextCardForbaseId
  L15_2 = A0_2.evolveCard
  L15_2 = L15_2.baseId
  L14_2 = L14_2(L15_2)
  L14_2 = L14_2.wisdomAttribute
  L15_2 = L10_1
  L15_2 = L15_2.baseCards
  L16_2 = A0_2.evolveCard
  L16_2 = L16_2.baseId
  L15_2 = L15_2[L16_2]
  L15_2 = L15_2.wisdomAttribute
  L14_2 = L14_2 - L15_2
  L13_2 = L13_2 .. L14_2
  L11_2.additionalText = L13_2
  L13_2 = L9_1
  L14_2 = L13_2
  L13_2 = L13_2.new
  L15_2 = L11_2
  L13_2 = L13_2(L14_2, L15_2)
  L14_2 = A0_2.informationGroup
  L15_2 = L14_2
  L14_2 = L14_2.insert
  L16_2 = L13_2.view
  L14_2(L15_2, L16_2)
  L11_2.id = "Blessing Attribute"
  L14_2 = L10_1
  L14_2 = L14_2.baseCards
  L15_2 = A0_2.evolveCard
  L15_2 = L15_2.baseId
  L14_2 = L14_2[L15_2]
  L14_2 = L14_2.blessingAttribute
  L11_2.value = L14_2
  L14_2 = Constants
  L14_2 = L14_2.Path_Assets
  L15_2 = "Heroes/blessingIcon-Small.png"
  L14_2 = L14_2 .. L15_2
  L11_2.image = L14_2
  L14_2 = "+"
  L15_2 = L12_1
  L15_2 = L15_2.getNextCardForbaseId
  L16_2 = A0_2.evolveCard
  L16_2 = L16_2.baseId
  L15_2 = L15_2(L16_2)
  L15_2 = L15_2.blessingAttribute
  L16_2 = L10_1
  L16_2 = L16_2.baseCards
  L17_2 = A0_2.evolveCard
  L17_2 = L17_2.baseId
  L16_2 = L16_2[L17_2]
  L16_2 = L16_2.blessingAttribute
  L15_2 = L15_2 - L16_2
  L14_2 = L14_2 .. L15_2
  L11_2.additionalText = L14_2
  L14_2 = L9_1
  L15_2 = L14_2
  L14_2 = L14_2.new
  L16_2 = L11_2
  L14_2 = L14_2(L15_2, L16_2)
  L15_2 = A0_2.informationGroup
  L16_2 = L15_2
  L15_2 = L15_2.insert
  L17_2 = L14_2.view
  L15_2(L16_2, L17_2)
  L15_2 = L14_2.view
  L16_2 = A1_2 / 2
  L16_2 = L16_2 - 10
  L17_2 = L14_2.view
  L17_2 = L17_2.width
  L17_2 = L17_2 / 2
  L16_2 = L16_2 - L17_2
  L15_2.x = L16_2
  L15_2 = nil
  L16_2 = system
  L16_2 = L16_2.getInfo
  L17_2 = "build"
  L16_2 = L16_2(L17_2)
  if "2013.1137" < L16_2 then
    L16_2 = system
    L16_2 = L16_2.getInfo
    L17_2 = "platformName"
    L16_2 = L16_2(L17_2)
    if L16_2 ~= "Android" then
      L16_2 = L5_1
      L16_2 = L16_2.lang
      if L16_2 == "fa" then
        goto lbl_374
      end
    end
  end
  L16_2 = L5_1
  L16_2 = L16_2.lang
  if L16_2 == "ar" then
    ::lbl_374::
    L16_2 = {}
    L17_2 = A0_2.informationGroup
    L16_2.parent = L17_2
    L17_2 = L5_1
    L17_2 = L17_2["Hero Evolve Additional Desc"]
    L16_2.text = L17_2
    L16_2.x = 0
    L16_2.y = 0
    L17_2 = A1_2 - 20
    L16_2.width = L17_2
    L16_2.height = 60
    L17_2 = Constants
    L17_2 = L17_2.fontForSubtitle
    L17_2 = L17_2()
    L16_2.font = L17_2
    L16_2.fontSize = 9
    L16_2.align = "right"
    L17_2 = display
    L17_2 = L17_2.newText
    L18_2 = L16_2
    L17_2 = L17_2(L18_2)
    L15_2 = L17_2
  else
    L16_2 = display
    L16_2 = L16_2.newText
    L17_2 = A0_2.informationGroup
    L18_2 = L5_1
    L18_2 = L18_2["Hero Evolve Additional Desc"]
    L19_2 = 0
    L20_2 = 0
    L21_2 = A1_2 - 20
    L22_2 = 60
    L23_2 = Constants
    L23_2 = L23_2.fontForSubtitle
    L23_2 = L23_2()
    L24_2 = 9
    L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    L15_2 = L16_2
  end
  L17_2 = L15_2
  L16_2 = L15_2.setFillColor
  L18_2 = Constants
  L18_2 = L18_2.darkBlueColor
  L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L18_2()
  L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
  L16_2 = L5_1
  L16_2 = L16_2.mirrorX
  L17_2 = -A1_2
  L17_2 = L17_2 / 2
  L17_2 = L17_2 + 5
  L18_2 = L15_2.width
  L18_2 = L18_2 / 2
  L17_2 = L17_2 + L18_2
  L16_2 = L16_2(L17_2)
  L15_2.x = L16_2
  L16_2 = L14_2.view
  L16_2 = L16_2.y
  L17_2 = L14_2.view
  L17_2 = L17_2.height
  L17_2 = L17_2 / 2
  L16_2 = L16_2 + L17_2
  L16_2 = L16_2 + 10
  L17_2 = L15_2.height
  L17_2 = L17_2 / 2
  L16_2 = L16_2 + L17_2
  L15_2.y = L16_2
end

L15_1.setupInformationSection = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L1_2.id = "Hero Level Progression"
  L2_2 = display
  L2_2 = L2_2.contentWidth
  L2_2 = L2_2 * 0.3
  L1_2.width = L2_2
  L1_2.height = 30
  L2_2 = mainPlayer
  L2_2 = L2_2.heroSet
  L3_2 = A0_2.evolveCard
  L3_2 = L3_2.baseId
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.potion
  L1_2.initialValue = L2_2
  L2_2 = L10_1
  L2_2 = L2_2.baseCards
  L3_2 = A0_2.evolveCard
  L3_2 = L3_2.baseId
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.potion_limit
  L1_2.maxValue = L2_2
  L1_2.alpha = 1
  L2_2 = L5_1
  L2_2 = L2_2.adjustNumber
  L3_2 = mainPlayer
  L3_2 = L3_2.heroSet
  L4_2 = A0_2.evolveCard
  L4_2 = L4_2.baseId
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.potion
  L2_2 = L2_2(L3_2)
  L3_2 = "/"
  L4_2 = L5_1
  L4_2 = L4_2.adjustNumber
  L5_2 = L10_1
  L5_2 = L5_2.baseCards
  L6_2 = A0_2.evolveCard
  L6_2 = L6_2.baseId
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.potion_limit
  L4_2 = L4_2(L5_2)
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2.label = L2_2
  L2_2 = {}
  L3_2 = Theme
  L3_2 = L3_2.potionBarColor
  L3_2 = L3_2[1]
  L4_2 = Theme
  L4_2 = L4_2.potionBarColor
  L4_2 = L4_2[2]
  L5_2 = Theme
  L5_2 = L5_2.potionBarColor
  L5_2 = L5_2[3]
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L1_2.initialBarColor = L2_2
  L2_2 = {}
  L3_2 = Theme
  L3_2 = L3_2.potionBarBorderColor
  L3_2 = L3_2[1]
  L4_2 = Theme
  L4_2 = L4_2.potionBarBorderColor
  L4_2 = L4_2[2]
  L5_2 = Theme
  L5_2 = L5_2.potionBarBorderColor
  L5_2 = L5_2[3]
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L1_2.borderColor = L2_2
  L2_2 = {}
  L3_2 = Theme
  L3_2 = L3_2.potionBarLabelColor
  L3_2 = L3_2[1]
  L4_2 = Theme
  L4_2 = L4_2.potionBarLabelColor
  L4_2 = L4_2[2]
  L5_2 = Theme
  L5_2 = L5_2.potionBarLabelColor
  L5_2 = L5_2[3]
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L1_2.labelColor = L2_2
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.levelProgressBar = L2_2
  L2_2 = A0_2.view
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = A0_2.levelProgressBar
  L4_2 = L4_2.view
  L2_2(L3_2, L4_2)
end

L15_1.setupLevelProgressBar = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L4_1
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = "big"
  L4_2 = A0_2.evolveCard
  L5_2 = L15_1
  L6_2 = {}
  L6_2.cardWidth = 178
  L6_2.cardHeight = 250
  L7_2 = nil
  L8_2 = nil
  L9_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2.evolveCardView = L1_2
  L1_2 = A0_2.evolveCardView
  L2_2 = L1_2
  L1_2 = L1_2.setSelectable
  L3_2 = false
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
  L3_2 = 20
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L5_2 = A0_2.evolveCardView
  L5_2 = L5_2.view
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 - L5_2
  L4_2 = L4_2 + 20
  L1_2(L2_2, L3_2, L4_2)
end

L15_1.setupTargetCardView = L16_1

function L16_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L3_2 = A1_2
    L2_2 = A1_2.removeSelf
    L2_2(L3_2)
    A1_2 = nil
  end
end

L15_1.clearDisplayObject = L16_1

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    L2_2 = A0_2.navBar
    L3_2 = L2_2
    L2_2 = L2_2.updateGold
    L2_2(L3_2)
    L2_2 = A0_2.navBar
    L3_2 = L2_2
    L2_2 = L2_2.setNectar
    L4_2 = mainPlayer
    L4_2 = L4_2.nectar
    L2_2(L3_2, L4_2)
    L2_2 = L0_1
    L2_2 = L2_2.getSceneName
    L3_2 = "previous"
    L2_2 = L2_2(L3_2)
    if L2_2 ~= "Scenes.HelpScene" then
      L2_2 = A1_2.params
      L2_2 = L2_2.evolveCard
      A0_2.evolveCard = L2_2
      L2_2 = A1_2.params
      if L2_2 then
        L2_2 = A1_2.params
        L2_2 = L2_2.previousScene
        if L2_2 then
          L2_2 = A0_2.navBar
          L3_2 = A1_2.params
          L3_2 = L3_2.previousScene
          L2_2.previousScene = L3_2
        else
          L2_2 = A0_2.navBar
          L2_2.previousScene = "Scenes.Cards"
        end
      end
    end
    L3_2 = A0_2
    L2_2 = A0_2.setupTargetCardView
    L2_2(L3_2)
    L2_2 = L13_1
    L2_2 = L2_2.logEvent
    L3_2 = "Hero Evolve Scene Shown"
    L4_2 = {}
    L5_2 = L10_1
    L5_2 = L5_2.baseCards
    L6_2 = A0_2.evolveCard
    L6_2 = L6_2.baseId
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.heroType
    L4_2.heroType = L5_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.evolveCardView
    L3_2 = L2_2
    L2_2 = L2_2.addEnterFrameListener
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.setupLevelProgressBar
    L2_2(L3_2)
    L2_2 = A0_2.levelProgressBar
    L2_2 = L2_2.view
    L3_2 = A0_2.evolveCardView
    L3_2 = L3_2.view
    L3_2 = L3_2.x
    L4_2 = A0_2.evolveCardView
    L4_2 = L4_2.view
    L4_2 = L4_2.width
    L3_2 = L3_2 + L4_2
    L3_2 = L3_2 + 10
    L4_2 = A0_2.levelProgressBar
    L4_2 = L4_2.view
    L4_2 = L4_2.width
    L4_2 = L4_2 / 2
    L3_2 = L3_2 + L4_2
    L2_2.x = L3_2
    L3_2 = A0_2
    L2_2 = A0_2.setupPotionButtons
    L2_2(L3_2)
    L2_2 = A0_2.addPotionButton
    L2_2 = L2_2.view
    L3_2 = A0_2.levelProgressBar
    L3_2 = L3_2.view
    L3_2 = L3_2.x
    L4_2 = A0_2.levelProgressBar
    L4_2 = L4_2.view
    L4_2 = L4_2.width
    L4_2 = L4_2 / 2
    L3_2 = L3_2 + L4_2
    L3_2 = L3_2 + 20
    L4_2 = A0_2.addPotionButton
    L4_2 = L4_2.view
    L4_2 = L4_2.width
    L4_2 = L4_2 / 2
    L3_2 = L3_2 + L4_2
    L2_2.x = L3_2
    L2_2 = A0_2.fillOutPotionButton
    L2_2 = L2_2.view
    L3_2 = A0_2.addPotionButton
    L3_2 = L3_2.view
    L3_2 = L3_2.x
    L4_2 = A0_2.addPotionButton
    L4_2 = L4_2.view
    L4_2 = L4_2.width
    L4_2 = L4_2 / 2
    L3_2 = L3_2 + L4_2
    L3_2 = L3_2 + 5
    L4_2 = A0_2.fillOutPotionButton
    L4_2 = L4_2.view
    L4_2 = L4_2.width
    L4_2 = L4_2 / 2
    L3_2 = L3_2 + L4_2
    L2_2.x = L3_2
    L3_2 = A0_2
    L2_2 = A0_2.setupInformationSection
    L4_2 = A0_2.levelProgressBar
    L4_2 = L4_2.view
    L4_2 = L4_2.width
    L4_2 = L4_2 + 20
    L5_2 = A0_2.addPotionButton
    L5_2 = L5_2.view
    L5_2 = L5_2.width
    L4_2 = L4_2 + L5_2
    L4_2 = L4_2 + 5
    L5_2 = A0_2.fillOutPotionButton
    L5_2 = L5_2.view
    L5_2 = L5_2.width
    L4_2 = L4_2 + L5_2
    L5_2 = 130
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2.informationGroup
    L3_2 = A0_2.evolveCardView
    L3_2 = L3_2.view
    L3_2 = L3_2.x
    L4_2 = A0_2.evolveCardView
    L4_2 = L4_2.view
    L4_2 = L4_2.width
    L3_2 = L3_2 + L4_2
    L3_2 = L3_2 + 10
    L4_2 = A0_2.informationGroup
    L4_2 = L4_2.width
    L4_2 = L4_2 / 2
    L3_2 = L3_2 + L4_2
    L2_2.x = L3_2
    L2_2 = A0_2.informationGroup
    L3_2 = A0_2.evolveCardView
    L3_2 = L3_2.view
    L3_2 = L3_2.y
    L4_2 = A0_2.evolveCardView
    L4_2 = L4_2.view
    L4_2 = L4_2.height
    L4_2 = L4_2 * 0.1
    L3_2 = L3_2 + L4_2
    L4_2 = A0_2.informationGroup
    L4_2 = L4_2.height
    L4_2 = L4_2 / 2
    L3_2 = L3_2 + L4_2
    L2_2.y = L3_2
    L3_2 = A0_2
    L2_2 = A0_2.setupEvolveButton
    L2_2(L3_2)
    L2_2 = A0_2.evolveButton
    L2_2 = L2_2.view
    L3_2 = A0_2.informationGroup
    L3_2 = L3_2.width
    L4_2 = A0_2.levelProgressBar
    L4_2 = L4_2.view
    L4_2 = L4_2.width
    L3_2 = L3_2 - L4_2
    L3_2 = L3_2 * 0.75
    L2_2.width = L3_2
    L2_2 = A0_2.evolveButton
    L2_2 = L2_2.view
    L2_2.xScale = 1
    L2_2 = A0_2.informationGroup
    L2_2 = L2_2.width
    L3_2 = A0_2.levelProgressBar
    L3_2 = L3_2.width
    L2_2 = L2_2 - L3_2
    L3_2 = A0_2.evolveButton
    L3_2 = L3_2.width
    L2_2 = L2_2 - L3_2
    L2_2 = L2_2 / 2
    L3_2 = A0_2.evolveButton
    L3_2 = L3_2.view
    L4_2 = A0_2.levelProgressBar
    L4_2 = L4_2.view
    L4_2 = L4_2.x
    L5_2 = A0_2.levelProgressBar
    L5_2 = L5_2.view
    L5_2 = L5_2.width
    L5_2 = L5_2 / 2
    L4_2 = L4_2 + L5_2
    L4_2 = L4_2 + L2_2
    L5_2 = A0_2.evolveButton
    L5_2 = L5_2.view
    L5_2 = L5_2.width
    L5_2 = L5_2 / 2
    L4_2 = L4_2 + L5_2
    L3_2.x = L4_2
    L3_2 = A0_2.evolveButton
    L3_2 = L3_2.view
    L4_2 = A0_2.informationGroup
    L4_2 = L4_2.y
    L5_2 = A0_2.informationGroup
    L5_2 = L5_2.height
    L5_2 = L5_2 / 2
    L4_2 = L4_2 + L5_2
    L4_2 = L4_2 + 10
    L5_2 = A0_2.evolveButton
    L5_2 = L5_2.view
    L5_2 = L5_2.height
    L5_2 = L5_2 / 2
    L4_2 = L4_2 + L5_2
    L3_2.y = L4_2
    L3_2 = A0_2.levelProgressBar
    L3_2 = L3_2.view
    L4_2 = A0_2.evolveButton
    L4_2 = L4_2.view
    L4_2 = L4_2.y
    L3_2.y = L4_2
    L3_2 = A0_2.addPotionButton
    L3_2 = L3_2.view
    L4_2 = A0_2.levelProgressBar
    L4_2 = L4_2.view
    L4_2 = L4_2.y
    L3_2.y = L4_2
    L3_2 = A0_2.fillOutPotionButton
    L3_2 = L3_2.view
    L4_2 = A0_2.addPotionButton
    L4_2 = L4_2.view
    L4_2 = L4_2.y
    L3_2.y = L4_2
    L3_2 = mainPlayer
    L3_2 = L3_2.heroSet
    L4_2 = A0_2.evolveCard
    L4_2 = L4_2.baseId
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.potion
    L4_2 = L10_1
    L4_2 = L4_2.baseCards
    L5_2 = A0_2.evolveCard
    L5_2 = L5_2.baseId
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.potion_limit
    if L3_2 == L4_2 then
      L3_2 = A0_2.addPotionButton
      L3_2 = L3_2.view
      L3_2.alpha = 0
      L3_2 = A0_2.fillOutPotionButton
      L3_2 = L3_2.view
      L3_2.alpha = 0
    else
      L3_2 = A0_2.evolveButton
      L3_2 = L3_2.view
      L3_2.alpha = 0
    end
    L3_2 = A0_2.evolveCardView
    L3_2 = L3_2.view
    L4_2 = L3_2
    L3_2 = L3_2.toFront
    L3_2(L4_2)
  end
end

L15_1.show = L16_1

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    L2_2 = A0_2.evolveCardView
    L3_2 = L2_2
    L2_2 = L2_2.removeEnterFrameListener
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.clearDisplayObject
    L4_2 = A0_2.evolveCardView
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.clearDisplayObject
    L4_2 = A0_2.levelProgressBar
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.clearDisplayObject
    L4_2 = A0_2.addPotionButton
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.clearDisplayObject
    L4_2 = A0_2.fillOutPotionButton
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.clearDisplayObject
    L4_2 = A0_2.evolveButton
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.clearDisplayObject
    L4_2 = A0_2.informationGroup
    L2_2(L3_2, L4_2)
  end
end

L15_1.hide = L16_1

function L16_1(A0_2, A1_2)
end

L15_1.destroy = L16_1
L17_1 = L15_1
L16_1 = L15_1.addEventListener
L18_1 = "create"
L19_1 = L15_1
L16_1(L17_1, L18_1, L19_1)
L17_1 = L15_1
L16_1 = L15_1.addEventListener
L18_1 = "show"
L19_1 = L15_1
L16_1(L17_1, L18_1, L19_1)
L17_1 = L15_1
L16_1 = L15_1.addEventListener
L18_1 = "hide"
L19_1 = L15_1
L16_1(L17_1, L18_1, L19_1)
L17_1 = L15_1
L16_1 = L15_1.addEventListener
L18_1 = "destroy"
L19_1 = L15_1
L16_1(L17_1, L18_1, L19_1)
return L15_1
