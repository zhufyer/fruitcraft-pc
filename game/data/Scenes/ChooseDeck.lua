local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1, L65_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.SceneCreator"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "widget"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.NavigationBar"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.CardView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Language"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Models.Operation"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Views.AdjustableProgressBar"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Views.ActivityIndicatorView"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Models.Card"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Tutorial.HorizontalOverlayView"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Tutorial.VerticalOverlayView"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Views.EffectsManager"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Models.Player"
L13_1 = L13_1(L14_1)
L14_1 = require
L15_1 = "Constants"
L14_1 = L14_1(L15_1)
L15_1 = require
L16_1 = "Views.ChatButton"
L15_1 = L15_1(L16_1)
L16_1 = require
L17_1 = "Utils.Toolbox"
L16_1 = L16_1(L17_1)
L17_1 = require
L18_1 = "Views.BossBattleAlert"
L17_1 = L17_1(L18_1)
L18_1 = require
L19_1 = "Components.TDButtonView"
L18_1 = L18_1(L19_1)
L19_1 = require
L20_1 = "Utils.CardUtils"
L19_1 = L19_1(L20_1)
L20_1 = require
L21_1 = "Tutorial.TutorialManager2"
L20_1 = L20_1(L21_1)
L21_1 = require
L22_1 = "Views.CachedImageView"
L21_1 = L21_1(L22_1)
L22_1 = require
L23_1 = "Components.TDButtonWithBadge"
L22_1 = L22_1(L23_1)
L23_1 = require
L24_1 = "Components.ParticleDesigner"
L23_1 = L23_1(L24_1)
L24_1 = require
L25_1 = "Components.AudioManager"
L24_1 = L24_1(L25_1)
L25_1 = require
L26_1 = "Utils.MyketGameHub"
L25_1 = L25_1(L26_1)
L26_1 = nil
L27_1 = nil
L28_1 = L1_1.newScene
L29_1 = "ChooseDeck"
L28_1 = L28_1(L29_1)
L29_1 = {}
L30_1 = {}
L31_1 = {}
L32_1 = {}
L33_1 = {}
L34_1 = 0
L35_1 = 0
L36_1 = {}
L37_1 = nil
L38_1 = nil
L39_1 = nil
L40_1 = 0
L41_1 = nil
L42_1 = nil
L43_1 = 2
L44_1 = 0
L45_1 = nil
L46_1 = nil
L47_1 = nil
L48_1 = nil
L49_1 = 0
L50_1 = nil
L28_1.operationModel = nil

function L51_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L8_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = showSimpleDialog
  L3_2 = "Operation"
  L4_2 = A1_2
  L5_2 = "Reload"
  
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.gotoScene
    L1_3 = "Scenes.Loading"
    L0_3(L1_3)
    L0_3 = L13_1
    L1_3 = L0_1
    L1_3 = L1_3.getScene
    L2_3 = "Scenes.Loading"
    L1_3 = L1_3(L2_3)
    L0_3.delegate = L1_3
    L0_3 = L13_1
    L0_3 = L0_3.loadPlayer
    L0_3()
  end
  
  L2_2(L3_2, L4_2, L5_2, L6_2)
end

function L52_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L8_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = pairs
  L2_2 = L30_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.deselected
    L6_2(L7_2)
  end
  L1_2 = 0
  L34_1 = L1_2
  L1_2 = {}
  L32_1 = L1_2
  L1_2 = L28_1
  L1_2 = L1_2.currentOpponent
  if L1_2 ~= nil then
    L1_2 = L28_1
    L1_2 = L1_2.currentOpponent
    L1_2 = L1_2.name
    A0_2.opponentName = L1_2
  end
  L1_2 = "Lost"
  L2_2 = 3
  L3_2 = A0_2.outcome
  if L3_2 == true then
    L1_2 = "Win"
    L3_2 = A0_2.operationType
    if L3_2 == "battle" then
      L2_2 = 5
    else
    end
  end
  L3_2 = timer
  L3_2 = L3_2.performWithDelay
  L4_2 = 3500
  
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = L25_1
    L0_3 = L0_3.isActive
    L0_3 = L0_3()
    if L0_3 then
      L0_3 = L25_1
      L0_3 = L0_3.postScore
      L1_3 = L2_2
      L2_3 = L1_2
      L0_3(L1_3, L2_3)
    end
  end
  
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.operationType
  if L3_2 == "battle" then
    L3_2 = A0_2.outcome
    if L3_2 == true then
      L3_2 = A0_2.setAttacksInTodayForOpponent
      L4_2 = L28_1
      L4_2 = L4_2.currentOpponent
      L4_2 = L4_2.id
      L3_2(L4_2)
    end
    L3_2 = L0_1
    L3_2 = L3_2.gotoScene
    L4_2 = "Scenes.BattleAnimationScene"
    L5_2 = {}
    L6_2 = {}
    L6_2.operation = A0_2
    L7_2 = L28_1
    L7_2 = L7_2.currentOpponent
    L7_2 = L7_2.name
    L6_2.opponentName = L7_2
    L5_2.params = L6_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = {}
    L4_2 = {}
    L5_2 = A0_2.operationType
    L4_2.operationType = L5_2
    L4_2.operation = A0_2
    L3_2.params = L4_2
    option = L3_2
    L3_2 = L0_1
    L3_2 = L3_2.getScene
    L4_2 = "Scenes.WorldMap"
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.questManager
    L3_2 = L3_2.isBoss
    if L3_2 == true then
      L3_2 = L47_1
      if L3_2 then
        L3_2 = option
        L3_2 = L3_2.params
        L4_2 = L47_1
        L4_2 = L4_2.realPower
        L3_2.realPower = L4_2
      else
        L3_2 = L6_1
        L3_2 = L3_2.getQuestPower
        L3_2 = L3_2()
        L4_2 = option
        L4_2 = L4_2.params
        L5_2 = L3_2.realPower
        L5_2 = 2 * L5_2
        L4_2.realPower = L5_2
      end
      L3_2 = option
      L3_2 = L3_2.params
      L4_2 = L48_1
      L3_2.opponentName = L4_2
      L3_2 = L0_1
      L3_2 = L3_2.gotoScene
      L4_2 = "Scenes.BattleAnimationScene"
      L5_2 = option
      L3_2(L4_2, L5_2)
    else
      L3_2 = mainPlayer
      L3_2 = L3_2.totalQuests
      if L3_2 < 30 then
        L3_2 = L41_1
        if L3_2 ~= "first quest" then
          L3_2 = L41_1
          if L3_2 ~= "second quest" then
            goto lbl_123
          end
        end
        L3_2 = option
        L3_2 = L3_2.params
        L4_2 = L41_1
        L3_2.isTutorial = L4_2
        ::lbl_123::
        L3_2 = L0_1
        L3_2 = L3_2.gotoScene
        L4_2 = "Scenes.BattleAnimationScene"
        L5_2 = option
        L3_2(L4_2, L5_2)
      else
        L3_2 = L0_1
        L3_2 = L3_2.gotoScene
        L4_2 = "Scenes.Home"
        L5_2 = option
        L3_2(L4_2, L5_2)
      end
    end
  end
end

function L53_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = L32_1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L1_2 = L1_2 + 1
  end
  if L1_2 < 1 then
    L2_2 = L37_1
    if L2_2 then
      L2_2 = showSimpleDialog
      L3_2 = "Select Cards"
      L4_2 = "No card selected with hero message"
      L2_2(L3_2, L4_2)
    else
      L2_2 = showSimpleDialog
      L3_2 = "Select Cards"
      L4_2 = "Not enough cards selected message"
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = L41_1
    if L2_2 == "first quest" then
      L2_2 = L28_1
      L3_2 = L2_2
      L2_2 = L2_2.finishShowAttackButtonAction
      L2_2(L3_2)
    end
    L2_2 = nil
    L3_2 = L6_1
    L4_2 = L3_2
    L3_2 = L3_2.new
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
    L3_2 = L28_1
    L3_2.operationModel = L2_2
    
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = L8_1
      L0_3 = L0_3.show
      L1_3 = L5_1
      L1_3 = L1_3.Attacking
      L0_3(L1_3)
      L0_3 = A0_2
      L0_3 = L0_3.delegate
      L0_3 = L0_3.mode
      if L0_3 == "quest" then
        L0_3 = L2_2
        L0_3.operationType = "quest"
      else
        L0_3 = L2_2
        L0_3.operationType = "battle"
        L0_3 = log3
        L1_3 = "Going to battle against:"
        L2_3 = L28_1
        L2_3 = L2_3.currentOpponent
        L2_3 = L2_3.name
        L3_3 = L28_1
        L3_3 = L3_3.currentOpponent
        L3_3 = L3_3.id
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = L2_2
        L1_3 = L28_1
        L1_3 = L1_3.currentOpponent
        L0_3.defender = L1_3
      end
      L0_3 = L37_1
      if L0_3 then
        L0_3 = L2_2
        L1_3 = L37_1
        L1_3 = L1_3.id
        L0_3.heroId = L1_3
      end
      L0_3 = L38_1
      if L0_3 then
        L0_3 = L38_1
        L0_3 = L0_3.card
        if L0_3 then
          L0_3 = L32_1
          L1_3 = L37_1
          L1_3 = L1_3.id
          L2_3 = L38_1
          L2_3 = L2_3.card
          L0_3[L1_3] = L2_3
        end
      end
      L0_3 = L45_1
      if L0_3 then
        L0_3 = L32_1
        L1_3 = L45_1
        L1_3 = L1_3.id
        L2_3 = L45_1
        L0_3[L1_3] = L2_3
        L0_3 = L2_2
        L1_3 = L45_1
        L1_3 = L1_3.id
        L0_3.heroId = L1_3
      end
      L0_3 = L2_2
      L1_3 = L32_1
      L0_3.attackingCards = L1_3
      L0_3 = L2_2
      L1_3 = L0_3
      L0_3 = L0_3.newOperation
      L2_3 = L52_1
      L3_3 = L51_1
      L0_3(L1_3, L2_3, L3_3)
    end
    
    L4_2 = mainPlayer
    L4_2 = L4_2.betterQuestTutorial
    if L4_2 then
      L4_2 = L41_1
      if L4_2 ~= "first quest" then
        L4_2 = L41_1
        if L4_2 ~= "second quest" then
          goto lbl_212
        end
      end
      L4_2 = display
      L4_2 = L4_2.newGroup
      L4_2 = L4_2()
      L5_2 = display
      L5_2 = L5_2.contentCenterX
      L4_2.x = L5_2
      L5_2 = display
      L5_2 = L5_2.contentCenterY
      L4_2.y = L5_2
      L5_2 = display
      L5_2 = L5_2.newRect
      L6_2 = L4_2
      L7_2 = 0
      L8_2 = 0
      L9_2 = 570
      L10_2 = 360
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
      L7_2 = L5_2
      L6_2 = L5_2.setFillColor
      L8_2 = 0
      L9_2 = 0
      L10_2 = 0
      L11_2 = 0.4
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      L7_2 = L5_2
      L6_2 = L5_2.addEventListener
      L8_2 = "touch"
      
      function L9_2()
        local L0_3, L1_3
        L0_3 = true
        return L0_3
      end
      
      L6_2(L7_2, L8_2, L9_2)
      L7_2 = L5_2
      L6_2 = L5_2.addEventListener
      L8_2 = "tap"
      
      function L9_2()
        local L0_3, L1_3
        L0_3 = true
        return L0_3
      end
      
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = display
      L6_2 = L6_2.newImageRect
      L7_2 = L4_2
      L8_2 = L14_1
      L8_2 = L8_2.Path_Assets
      L9_2 = "General/Lumber.png"
      L8_2 = L8_2 .. L9_2
      L9_2 = 280
      L10_2 = 60
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
      L7_2 = display
      L7_2 = L7_2.newText
      L8_2 = L4_2
      L9_2 = L5_1
      L9_2 = L9_2["Your Power"]
      L10_2 = 0
      L11_2 = 0
      L12_2 = L14_1
      L12_2 = L12_2.fontForTitle
      L12_2 = L12_2()
      L13_2 = 13
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L8_2 = display
      L8_2 = L8_2.newText
      L9_2 = L4_2
      L10_2 = L5_1
      L10_2 = L10_2["opponent Power"]
      L11_2 = 0
      L12_2 = 0
      L13_2 = L14_1
      L13_2 = L13_2.fontForTitle
      L13_2 = L13_2()
      L14_2 = 13
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L9_2 = display
      L9_2 = L9_2.newText
      L10_2 = L4_2
      L11_2 = L28_1
      L11_2 = L11_2.totalPowerLabel
      L11_2 = L11_2.text
      L12_2 = -140
      L13_2 = 0
      L14_2 = L14_1
      L14_2 = L14_2.fontForTitle
      L14_2 = L14_2()
      L15_2 = 20
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L10_2 = display
      L10_2 = L10_2.newText
      L11_2 = L4_2
      L12_2 = L5_1
      L12_2 = L12_2.adjustNumber
      L13_2 = L6_1
      L13_2 = L13_2.getQuestPower
      L13_2 = L13_2()
      L13_2 = L13_2.realPower
      L12_2 = L12_2(L13_2)
      L13_2 = 140
      L14_2 = 0
      L15_2 = L14_1
      L15_2 = L15_2.fontForTitle
      L15_2 = L15_2()
      L16_2 = 20
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L11_2 = display
      L11_2 = L11_2.newText
      L12_2 = L4_2
      L13_2 = ">"
      L14_2 = 0
      L15_2 = 0
      L16_2 = L14_1
      L16_2 = L16_2.fontForTitle
      L16_2 = L16_2()
      L17_2 = 20
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L12_2 = L7_2.width
      L12_2 = L12_2 / 2
      L12_2 = -10 - L12_2
      L7_2.x = L12_2
      L12_2 = L8_2.width
      L12_2 = L12_2 / 2
      L12_2 = 10 + L12_2
      L8_2.x = L12_2
      L12_2 = L7_2.height
      L12_2 = L12_2 / 2
      L12_2 = -5 - L12_2
      L7_2.y = L12_2
      L12_2 = L8_2.height
      L12_2 = L12_2 / 2
      L12_2 = -5 - L12_2
      L8_2.y = L12_2
      L12_2 = L10_2.height
      L12_2 = L12_2 / 2
      L12_2 = 2.5 + L12_2
      L10_2.y = L12_2
      L11_2.x = 0
      L12_2 = L10_2.y
      L11_2.y = L12_2
      L4_2.alpha = 0
      L9_2.alpha = 0
      L10_2.alpha = 0
      L11_2.alpha = 0
      
      function L12_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = transition
        L0_3 = L0_3.to
        L1_3 = L4_2
        L2_3 = {}
        L2_3.time = 1200
        L2_3.delay = 3500
        L2_3.alpha = 0
        
        function L3_3()
          local L0_4, L1_4
          L0_4 = L4_2
          L1_4 = L0_4
          L0_4 = L0_4.removeSelf
          L0_4(L1_4)
          L0_4 = nil
          L4_2 = L0_4
          L0_4 = L3_2
          L0_4()
        end
        
        L2_3.onComplete = L3_3
        L0_3(L1_3, L2_3)
      end
      
      L13_2 = transition
      L13_2 = L13_2.to
      L14_2 = L4_2
      L15_2 = {}
      L15_2.time = 1200
      L15_2.alpha = 1
      
      function L16_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = transition
        L0_3 = L0_3.to
        L1_3 = L9_2
        L2_3 = {}
        L2_3.time = 450
        L2_3.alpha = 1
        L3_3 = L7_2
        L3_3 = L3_3.x
        L2_3.x = L3_3
        L3_3 = L9_2
        L3_3 = L3_3.height
        L3_3 = L3_3 / 2
        L3_3 = 2.5 + L3_3
        L2_3.y = L3_3
        L3_3 = easing
        L3_3 = L3_3.inBounce
        L2_3.transition = L3_3
        
        function L3_3()
          local L0_4, L1_4, L2_4, L3_4
          L0_4 = transition
          L0_4 = L0_4.to
          L1_4 = L10_2
          L2_4 = {}
          L2_4.time = 450
          L2_4.alpha = 1
          L3_4 = L8_2
          L3_4 = L3_4.x
          L2_4.x = L3_4
          L3_4 = easing
          L3_4 = L3_4.inBounce
          L2_4.transition = L3_4
          
          function L3_4()
            local L0_5, L1_5, L2_5, L3_5
            L0_5 = transition
            L0_5 = L0_5.to
            L1_5 = L9_2
            L2_5 = {}
            L2_5.time = 750
            L2_5.xScale = 1.2
            L2_5.yScale = 1.2
            
            function L3_5()
              local L0_6, L1_6, L2_6, L3_6
              L0_6 = transition
              L0_6 = L0_6.to
              L1_6 = L9_2
              L2_6 = {}
              L2_6.time = 600
              L2_6.xScale = 1
              L2_6.yScale = 1
              
              function L3_6()
                local L0_7, L1_7, L2_7, L3_7
                L0_7 = transition
                L0_7 = L0_7.to
                L1_7 = L11_2
                L2_7 = {}
                L2_7.time = 300
                L2_7.alpha = 1
                
                function L3_7()
                  local L0_8, L1_8, L2_8, L3_8, L4_8
                  L0_8 = L9_2
                  L1_8 = L0_8
                  L0_8 = L0_8.setFillColor
                  L2_8 = 0
                  L3_8 = 1
                  L4_8 = 0
                  L0_8(L1_8, L2_8, L3_8, L4_8)
                  L0_8 = L12_2
                  L0_8()
                end
                
                L2_7.onComplete = L3_7
                L0_7(L1_7, L2_7)
              end
              
              L2_6.onComplete = L3_6
              L0_6(L1_6, L2_6)
            end
            
            L2_5.onComplete = L3_5
            L0_5(L1_5, L2_5)
          end
          
          L2_4.onComplete = L3_4
          L0_4(L1_4, L2_4)
        end
        
        L2_3.onComplete = L3_3
        L0_3(L1_3, L2_3)
      end
      
      L15_2.onComplete = L16_2
      L13_2(L14_2, L15_2)
    else
      ::lbl_212::
      L4_2 = L3_2
      L4_2()
    end
  end
end

function L54_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.id
  L2_2 = L35_1
  if L1_2 == L2_2 then
    L1_2 = L36_1
    if L1_2 then
      L1_2 = L36_1
      L2_2 = L1_2
      L1_2 = L1_2.stopAnimatingCooldown
      L1_2(L2_2)
      L1_2 = L36_1
      L2_2 = L1_2
      L1_2 = L1_2.setSelectable
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = L28_1
      L1_2 = L1_2.navBar
      L2_2 = L1_2
      L1_2 = L1_2.updateGold
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
  else
    L1_2 = L30_1
    L2_2 = A0_2.id
    L1_2 = L1_2[L2_2]
    L2_2 = mainPlayer
    L2_2 = L2_2.settings
    L2_2 = L2_2.newTutorial
    if L2_2 then
      L2_2 = L41_1
      if L2_2 == "second quest" then
        L2_2 = L44_1
        if L2_2 ~= 0 then
          L2_2 = L44_1
          if L2_2 ~= 1 then
            goto lbl_46
          end
        end
        L2_2 = log3
        L3_2 = "tutorialCooldownCount"
        L4_2 = L44_1
        L2_2(L3_2, L4_2)
        L2_2 = L4_1
        L3_2 = L2_2
        L2_2 = L2_2.setRemoveCooldownWithDelay
        L4_2 = true
        L2_2(L3_2, L4_2)
      end
    end
    ::lbl_46::
    if L1_2 then
      L3_2 = L1_2
      L2_2 = L1_2.stopAnimatingCooldown
      L2_2(L3_2)
    end
    L2_2 = L41_1
    if L2_2 == "second quest" then
      L2_2 = L28_1
      L3_2 = L2_2
      L2_2 = L2_2.cooldown
      L4_2 = A0_2.id
      L2_2(L3_2, L4_2)
    else
      L2_2 = L28_1
      L2_2 = L2_2.navBar
      L3_2 = L2_2
      L2_2 = L2_2.updateGold
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  end
end

L28_1.didCooldownCallback = L54_1

function L54_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = showSimpleDialog
  L4_2 = L5_1
  L4_2 = L4_2.Cooldown
  L5_2 = L5_1
  L5_2 = L5_2[A1_2]
  L3_2(L4_2, L5_2)
  L3_2 = L30_1
  L4_2 = A0_2.id
  L3_2 = L3_2[L4_2]
  if L3_2 then
    L5_2 = L3_2
    L4_2 = L3_2.stopAnimatingCooldown
    L4_2(L5_2)
  end
end

L28_1.failedCooldownCallback = L54_1

function L54_1(A0_2)
  local L1_2
  L1_2 = L49_1
  L1_2 = L1_2 - A0_2
  L49_1 = L1_2
end

L28_1.setFakeGoldAmount = L54_1

function L54_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.animateCooldown
  L1_2(L2_2)
  L1_2 = A0_2.card
  L2_2 = L1_2
  L1_2 = L1_2.cooldownCard
  L3_2 = L28_1
  L3_2 = L3_2.didCooldownCallback
  L4_2 = L28_1
  L4_2 = L4_2.failedCooldownCallback
  L1_2(L2_2, L3_2, L4_2)
end

L28_1.didPressCooloffButton = L54_1

function L54_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A0_2
  L1_2 = A0_2.clearCurrentSelectedCardsSidebar
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = L19_1
  L2_2 = L2_2.sortCardsWithPower
  L3_2 = L32_1
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L31_1
    L9_2 = {}
    L9_2.smallCard = nil
    L8_2[L1_2] = L9_2
    L8_2 = L31_1
    L8_2 = L8_2[L1_2]
    L9_2 = L4_1
    L10_2 = L9_2
    L9_2 = L9_2.new
    L11_2 = "small"
    L12_2 = L32_1
    L12_2 = L12_2[L7_2]
    L13_2 = L28_1
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    L8_2.smallCard = L9_2
    L8_2 = L31_1
    L8_2 = L8_2[L1_2]
    L8_2 = L8_2.smallCard
    L9_2 = L8_2
    L8_2 = L8_2.setSelectable
    L10_2 = true
    L8_2(L9_2, L10_2)
    L8_2 = L31_1
    L8_2 = L8_2[L1_2]
    L8_2 = L8_2.smallCard
    L9_2 = L8_2
    L8_2 = L8_2.setAction
    L8_2(L9_2)
    L8_2 = L31_1
    L8_2 = L8_2[L1_2]
    L8_2 = L8_2.smallCard
    L9_2 = L8_2
    L8_2 = L8_2.didSelect
    L8_2(L9_2)
    L8_2 = A0_2.selectedGroup
    L9_2 = L8_2
    L8_2 = L8_2.insert
    L10_2 = L31_1
    L10_2 = L10_2[L1_2]
    L10_2 = L10_2.smallCard
    L10_2 = L10_2.view
    L8_2(L9_2, L10_2)
    L8_2 = L31_1
    L8_2 = L8_2[L1_2]
    L8_2 = L8_2.smallCard
    L9_2 = L8_2
    L8_2 = L8_2.setPosition
    L10_2 = math
    L10_2 = L10_2.abs
    L11_2 = L1_2 % 2
    L11_2 = L11_2 - 1
    L10_2 = L10_2(L11_2)
    L10_2 = L10_2 * 65
    L10_2 = 10 + L10_2
    L11_2 = display
    L11_2 = L11_2.contentHeight
    L11_2 = L11_2 * 0.22
    L12_2 = math
    L12_2 = L12_2.ceil
    L13_2 = L1_2 / 2
    L12_2 = L12_2(L13_2)
    L12_2 = L12_2 - 1
    L12_2 = L12_2 * 83
    L11_2 = L11_2 + L12_2
    L8_2(L9_2, L10_2, L11_2)
    L1_2 = L1_2 + 1
  end
  L3_2 = L1_2
  L4_2 = 4
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = display
    L7_2 = L7_2.newImageRect
    L8_2 = A0_2.selectedGroup
    L9_2 = L14_1
    L9_2 = L9_2.Path_Assets
    L10_2 = "CardView/small-card-bg.png"
    L9_2 = L9_2 .. L10_2
    L10_2 = 60
    L11_2 = 80
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L8_2 = L31_1
    L9_2 = {}
    L10_2 = {}
    L10_2.view = L7_2
    L9_2.smallCard = L10_2
    L8_2[L1_2] = L9_2
    L8_2 = math
    L8_2 = L8_2.abs
    L9_2 = L6_2 % 2
    L9_2 = L9_2 - 1
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2 * 65
    L8_2 = 10 + L8_2
    L8_2 = L8_2 + 30
    L7_2.x = L8_2
    L8_2 = display
    L8_2 = L8_2.contentHeight
    L8_2 = L8_2 * 0.22
    L9_2 = math
    L9_2 = L9_2.ceil
    L10_2 = L6_2 / 2
    L9_2 = L9_2(L10_2)
    L9_2 = L9_2 - 1
    L9_2 = L9_2 * 83
    L8_2 = L8_2 + L9_2
    L8_2 = L8_2 + 40
    L7_2.y = L8_2
  end
  L3_2 = mainPlayer
  L3_2 = L3_2.activeHeroID
  if L3_2 then
    L3_2 = L37_1
    if L3_2 then
      L3_2 = L36_1
      L4_2 = L4_1
      L5_2 = L4_2
      L4_2 = L4_2.new
      L6_2 = "small"
      L7_2 = L37_1
      L8_2 = L28_1
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      L3_2.smallCard = L4_2
      L3_2 = L36_1
      L3_2 = L3_2.smallCard
      L4_2 = L3_2
      L3_2 = L3_2.setSelectable
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = L36_1
      L3_2 = L3_2.smallCard
      L4_2 = L3_2
      L3_2 = L3_2.setAction
      L3_2(L4_2)
      L3_2 = L36_1
      L3_2 = L3_2.smallCard
      L4_2 = L3_2
      L3_2 = L3_2.didSelect
      L3_2(L4_2)
      L3_2 = L36_1
      L3_2 = L3_2.smallCard
      L4_2 = L3_2
      L3_2 = L3_2.addEnterFrameListener
      L3_2(L4_2)
      L3_2 = A0_2.selectedGroup
      L4_2 = L3_2
      L3_2 = L3_2.insert
      L5_2 = L36_1
      L5_2 = L5_2.smallCard
      L5_2 = L5_2.view
      L3_2(L4_2, L5_2)
      L3_2 = L36_1
      L3_2 = L3_2.smallCard
      L4_2 = L3_2
      L3_2 = L3_2.setPosition
      L5_2 = 42.5
      L6_2 = display
      L6_2 = L6_2.contentHeight
      L6_2 = L6_2 * 0.2
      L6_2 = L6_2 + 40
      L3_2(L4_2, L5_2, L6_2)
    end
  end
  L3_2 = mainPlayer
  L3_2 = L3_2.activeHeroID
  if L3_2 then
    L3_2 = mainPlayer
    L3_2 = L3_2.heroTutorialAtFirstAndSelected
    if not L3_2 then
      L3_2 = mainPlayer
      L3_2 = L3_2.heroTutorialAtFirstAndSelectedWithAnimation
      if not L3_2 then
        goto lbl_227
      end
    end
    L3_2 = mainPlayer
    L3_2 = L3_2.level
    L4_2 = L14_1
    L4_2 = L4_2.UnlockLevel_Hero
    if L3_2 < L4_2 then
      L3_2 = nil
      L4_2 = pairs
      L5_2 = mainPlayer
      L5_2 = L5_2.cards
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L9_2 = L8_2.baseId
        L10_2 = mainPlayer
        L10_2 = L10_2.activeHeroID
        if L9_2 == L10_2 then
          L3_2 = L8_2
        end
      end
      L4_2 = L36_1
      L5_2 = L4_1
      L6_2 = L5_2
      L5_2 = L5_2.new
      L7_2 = "small"
      L8_2 = L3_2
      L9_2 = L28_1
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
      L4_2.smallCard = L5_2
      L4_2 = L36_1
      L4_2 = L4_2.smallCard
      L5_2 = L4_2
      L4_2 = L4_2.setSelectable
      L6_2 = false
      L4_2(L5_2, L6_2)
      L4_2 = L36_1
      L4_2 = L4_2.smallCard
      L5_2 = L4_2
      L4_2 = L4_2.addEnterFrameListener
      L4_2(L5_2)
      L4_2 = A0_2.selectedGroup
      L5_2 = L4_2
      L4_2 = L4_2.insert
      L6_2 = L36_1
      L6_2 = L6_2.smallCard
      L6_2 = L6_2.view
      L4_2(L5_2, L6_2)
      L4_2 = L36_1
      L4_2 = L4_2.smallCard
      L5_2 = L4_2
      L4_2 = L4_2.setPosition
      L6_2 = 42.5
      L7_2 = display
      L7_2 = L7_2.contentHeight
      L7_2 = L7_2 * 0.2
      L7_2 = L7_2 + 40
      L4_2(L5_2, L6_2, L7_2)
    end
  end
  ::lbl_227::
  L3_2 = L14_1
  L3_2 = L3_2.UnlockLevel_Hero
  L4_2 = mainPlayer
  L4_2 = L4_2.heroTutorialAfterSecondQuest
  if L4_2 then
    L3_2 = 1
  end
  L4_2 = mainPlayer
  L4_2 = L4_2.activeHeroID
  if L4_2 then
    L4_2 = L37_1
    if L4_2 == nil then
      L4_2 = mainPlayer
      L4_2 = L4_2.level
      if L3_2 <= L4_2 then
        L4_2 = display
        L4_2 = L4_2.newRect
        L5_2 = A0_2.selectedGroup
        L6_2 = 0
        L7_2 = 0
        L8_2 = 0
        L9_2 = 0
        L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
        L6_2 = L4_2
        L5_2 = L4_2.setFillColor
        L7_2 = L14_1
        L7_2 = L7_2.lightBlueColor
        L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2()
        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        L6_2 = L4_2
        L5_2 = L4_2.addEventListener
        L7_2 = "touch"
        
        function L8_2()
          local L0_3, L1_3
          L0_3 = true
          return L0_3
        end
        
        L5_2(L6_2, L7_2, L8_2)
        L6_2 = L4_2
        L5_2 = L4_2.addEventListener
        L7_2 = "tap"
        
        function L8_2()
          local L0_3, L1_3
          L0_3 = true
          return L0_3
        end
        
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = display
        L5_2 = L5_2.newImageRect
        L6_2 = A0_2.selectedGroup
        L7_2 = L14_1
        L7_2 = L7_2.Path_Assets
        L8_2 = "CardView/small-card-bg.png"
        L7_2 = L7_2 .. L8_2
        L8_2 = 60
        L9_2 = 80
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
        L5_2.x = 72.5
        L6_2 = display
        L6_2 = L6_2.contentHeight
        L6_2 = L6_2 * 0.2
        L6_2 = L6_2 + 40
        L6_2 = L6_2 + 40
        L5_2.y = L6_2
        L6_2 = {}
        L7_2 = {}
        L7_2.view = L5_2
        L6_2.smallCard = L7_2
        L36_1 = L6_2
        L6_2 = L5_2.width
        L4_2.width = L6_2
        L6_2 = L5_2.height
        L4_2.height = L6_2
        L6_2 = L5_2.x
        L4_2.x = L6_2
        L6_2 = L5_2.y
        L4_2.y = L6_2
      end
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2.updateSelectedCardsPowerLabel
  L4_2(L5_2)
end

function L55_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = L31_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 ~= nil then
      L6_2 = L5_2.smallCard
      if L6_2 ~= nil then
        L6_2 = display
        L6_2 = L6_2.remove
        L7_2 = L5_2.smallCard
        L7_2 = L7_2.view
        L6_2(L7_2)
        L6_2 = L5_2.smallCard
        L6_2.view = nil
        L5_2.smallCard = nil
        L6_2 = L31_1
        L6_2[L4_2] = nil
      end
    end
  end
  L1_2 = clearHeroSlot
  L1_2()
end

L28_1.clearCurrentSelectedCardsSidebar = L55_1

function L55_1()
  local L0_2, L1_2
  L0_2 = L36_1
  L0_2 = L0_2.smallCard
  if L0_2 then
    L0_2 = L36_1
    L0_2 = L0_2.smallCard
    L0_2 = L0_2.removeEnterFrameListener
    if L0_2 then
      L0_2 = L36_1
      L0_2 = L0_2.smallCard
      L1_2 = L0_2
      L0_2 = L0_2.removeEnterFrameListener
      L0_2(L1_2)
    end
    L0_2 = display
    L0_2 = L0_2.remove
    L1_2 = L36_1
    L1_2 = L1_2.smallCard
    L1_2 = L1_2.view
    L0_2(L1_2)
    L0_2 = L36_1
    L0_2 = L0_2.smallCard
    L0_2.view = nil
    L0_2 = L36_1
    L0_2.smallCard = nil
  end
end

clearHeroSlot = L55_1

function L55_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = L32_1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = L37_1
  if L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = L37_1
    L2_2(L3_2, L4_2)
  end
  L2_2 = L9_1
  L2_2 = L2_2.offensivePowerOfCardsOfPlayer
  L3_2 = mainPlayer
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2.totalPowerLabel
  L4_2 = L5_1
  L4_2 = L4_2.adjustNumber
  L5_2 = L16_1
  L5_2 = L5_2.shortenLongNumber
  L6_2 = L2_2
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2.text = L4_2
  L3_2 = L5_1
  L3_2 = L3_2.isLanguageLeftToRight
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = A0_2.totalPowerLabel
    L4_2 = A0_2.totalPowerLabel
    L4_2 = L4_2.width
    L4_2 = L4_2 / 2
    L4_2 = 140 - L4_2
    L3_2.x = L4_2
  else
    L3_2 = A0_2.totalPowerLabel
    L4_2 = A0_2.totalPowerLabel
    L4_2 = L4_2.width
    L4_2 = L4_2 / 2
    L4_2 = 5 + L4_2
    L3_2.x = L4_2
  end
end

L28_1.updateSelectedCardsPowerLabel = L55_1

function L55_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = mainPlayer
  L1_2 = L1_2.heroSet
  if L1_2 then
    L1_2 = mainPlayer
    L1_2 = L1_2.heroSet
    L2_2 = A0_2.card
    L2_2 = L2_2.baseId
    L1_2 = L1_2[L2_2]
    if L1_2 then
      L1_2 = L38_1
      L2_2 = L1_2
      L1_2 = L1_2.deselected
      L1_2(L2_2)
      L1_2 = nil
      L37_1 = L1_2
      L1_2 = nil
      L38_1 = L1_2
      L1_2 = L54_1
      L2_2 = L28_1
      L1_2(L2_2)
  end
  else
    L1_2 = transition
    L1_2 = L1_2.cancel
    L2_2 = "cardSelectTransition"
    L1_2(L2_2)
    L1_2 = L34_1
    L1_2 = L1_2 - 1
    L34_1 = L1_2
    L1_2 = log3
    L2_2 = "Selected Number"
    L3_2 = L34_1
    L1_2(L2_2, L3_2)
    L1_2 = L33_1
    L2_2 = A0_2.card
    L2_2 = L2_2.id
    L1_2 = L1_2[L2_2]
    L2_2 = L1_2
    L1_2 = L1_2.deselected
    L1_2(L2_2)
    L1_2 = L32_1
    L2_2 = A0_2.card
    L2_2 = L2_2.id
    L1_2[L2_2] = nil
    L1_2 = L33_1
    L2_2 = A0_2.card
    L2_2 = L2_2.id
    L1_2[L2_2] = nil
    L1_2 = L54_1
    L2_2 = L28_1
    L1_2(L2_2)
    L1_2 = L41_1
    if L1_2 then
      L1_2 = L12_1
      L1_2 = L1_2.sparkle
      L2_2 = L28_1
      L2_2 = L2_2.selectedGroup
      L3_2 = 1000
      L4_2 = L28_1
      L4_2 = L4_2.opStat
      L4_2 = L4_2.x
      L5_2 = L28_1
      L5_2 = L5_2.opStat
      L5_2 = L5_2.width
      L5_2 = L5_2 / 2
      L4_2 = L4_2 - L5_2
      L5_2 = L28_1
      L5_2 = L5_2.opStat
      L5_2 = L5_2.y
      L6_2 = L28_1
      L6_2 = L6_2.opStat
      L6_2 = L6_2.height
      L6_2 = L6_2 / 2
      L5_2 = L5_2 - L6_2
      L6_2 = L28_1
      L6_2 = L6_2.opStat
      L6_2 = L6_2.x
      L7_2 = L28_1
      L7_2 = L7_2.opStat
      L7_2 = L7_2.width
      L7_2 = L7_2 / 2
      L6_2 = L6_2 + L7_2
      L7_2 = L28_1
      L7_2 = L7_2.totalPowerLabel
      L7_2 = L7_2.y
      L8_2 = L28_1
      L8_2 = L8_2.totalPowerLabel
      L8_2 = L8_2.height
      L8_2 = L8_2 / 2
      L7_2 = L7_2 + L8_2
      L8_2 = 20
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    end
  end
end

L28_1.cardDeselected = L55_1

function L55_1()
  local L0_2, L1_2
  L0_2 = L19_1
  L0_2 = L0_2.sortCardsWithPower
  L1_2 = L32_1
  L0_2 = L0_2(L1_2)
  L1_2 = #L0_2
  L1_2 = L0_2[L1_2]
  return L1_2
end

function L56_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = mainPlayer
  L1_2 = L1_2.heroSet
  if L1_2 then
    L1_2 = mainPlayer
    L1_2 = L1_2.heroSet
    L2_2 = A0_2.card
    L2_2 = L2_2.baseId
    L1_2 = L1_2[L2_2]
    if L1_2 then
      L1_2 = L38_1
      if L1_2 then
        L1_2 = L38_1
        L2_2 = L1_2
        L1_2 = L1_2.deselected
        L1_2(L2_2)
      end
      L38_1 = A0_2
      L1_2 = L14_1
      L1_2 = L1_2.UnlockLevel_Hero
      L2_2 = mainPlayer
      L2_2 = L2_2.heroTutorialAfterSecondQuest
      if L2_2 then
        L1_2 = 1
      end
      L2_2 = mainPlayer
      L2_2 = L2_2.level
      if L1_2 <= L2_2 then
        L2_2 = A0_2.card
        L37_1 = L2_2
      end
      L2_2 = L54_1
      L3_2 = L28_1
      L2_2(L3_2)
      L2_2 = L42_1
      if L2_2 then
        L2_2 = L42_1
        L2_2()
        L2_2 = nil
        L42_1 = L2_2
        L2_2 = L12_1
        L2_2 = L2_2.removePoint
        L2_2()
        L2_2 = L36_1
        if L2_2 then
          L2_2 = L36_1
          L2_2 = L2_2.smallCard
          if L2_2 then
            L2_2 = L36_1
            L2_2 = L2_2.smallCard
            L3_2 = L2_2
            L2_2 = L2_2.setSelectable
            L4_2 = false
            L2_2(L3_2, L4_2)
          end
        end
        L3_2 = A0_2
        L2_2 = A0_2.setSelectable
        L4_2 = false
        L2_2(L3_2, L4_2)
      end
  end
  else
    L1_2 = L34_1
    L1_2 = L1_2 + 1
    L34_1 = L1_2
    L1_2 = log3
    L2_2 = "Selected Number"
    L3_2 = L34_1
    L1_2(L2_2, L3_2)
    L1_2 = L34_1
    if 4 < L1_2 then
      L1_2 = 4
      L34_1 = L1_2
      L1_2 = L55_1
      L1_2 = L1_2()
      L2_2 = L33_1
      L2_2 = L2_2[L1_2]
      L3_2 = L2_2
      L2_2 = L2_2.deselected
      L2_2(L3_2)
      L2_2 = L33_1
      L2_2[L1_2] = nil
      L2_2 = L32_1
      L2_2[L1_2] = nil
    end
    L1_2 = L33_1
    L2_2 = A0_2.card
    L2_2 = L2_2.id
    L1_2[L2_2] = A0_2
    L1_2 = L32_1
    L2_2 = A0_2.card
    L2_2 = L2_2.id
    L3_2 = A0_2.card
    L1_2[L2_2] = L3_2
    L1_2 = L41_1
    if L1_2 == "first quest" then
      L1_2 = L50_1
      if L1_2 then
        L1_2 = mainPlayer
        L1_2 = L1_2.settings
        L1_2 = L1_2.newTutorial
        if L1_2 then
          L1_2 = L50_1
          L1_2()
          L1_2 = nil
          L50_1 = L1_2
          L1_2 = L12_1
          L1_2 = L1_2.removePoint
          L1_2()
        end
      end
      L2_2 = A0_2
      L1_2 = A0_2.setSelectable
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = L28_1
      L2_2 = L1_2
      L1_2 = L1_2.animateCardToSelectedCardRegion
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
      L1_2 = L34_1
      L2_2 = L43_1
      if L1_2 >= L2_2 then
        L1_2 = L42_1
        if L1_2 then
          L1_2 = L42_1
          L1_2()
        end
      end
    else
      L1_2 = L41_1
      if L1_2 == "third quest" then
        L1_2 = L34_1
        L2_2 = L43_1
        if L1_2 >= L2_2 then
          L1_2 = L39_1
          L1_2.isVisible = true
        end
      end
      L1_2 = L54_1
      L2_2 = L28_1
      L1_2(L2_2)
    end
    L1_2 = L41_1
    if L1_2 then
      L1_2 = L12_1
      L1_2 = L1_2.sparkle
      L2_2 = L28_1
      L2_2 = L2_2.selectedGroup
      L3_2 = 3000
      L4_2 = L28_1
      L4_2 = L4_2.opStat
      L4_2 = L4_2.x
      L5_2 = L28_1
      L5_2 = L5_2.opStat
      L5_2 = L5_2.width
      L5_2 = L5_2 / 2
      L4_2 = L4_2 - L5_2
      L5_2 = L28_1
      L5_2 = L5_2.opStat
      L5_2 = L5_2.y
      L6_2 = L28_1
      L6_2 = L6_2.opStat
      L6_2 = L6_2.height
      L6_2 = L6_2 / 2
      L5_2 = L5_2 - L6_2
      L6_2 = L28_1
      L6_2 = L6_2.opStat
      L6_2 = L6_2.x
      L7_2 = L28_1
      L7_2 = L7_2.opStat
      L7_2 = L7_2.width
      L7_2 = L7_2 / 2
      L6_2 = L6_2 + L7_2
      L7_2 = L28_1
      L7_2 = L7_2.totalPowerLabel
      L7_2 = L7_2.y
      L8_2 = L28_1
      L8_2 = L8_2.totalPowerLabel
      L8_2 = L8_2.height
      L8_2 = L8_2 / 2
      L7_2 = L7_2 + L8_2
      L8_2 = 70
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    end
  end
end

L28_1.cardSelected = L56_1

function L56_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = 0.6413043478260869
  L3_2 = 0.6413043478260869
  L4_2 = 92
  L5_2 = 92
  L6_2 = A1_2.showNewSeriesOfCards
  L6_2 = L6_2()
  if L6_2 then
    L4_2 = 120
    L5_2 = 133
    L2_2 = 0.39849624060150374
    L3_2 = 0.44360902255639095
  end
  L6_2 = L21_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = A0_2.view
  L9_2 = A1_2.cardImage
  L10_2 = L4_2
  L11_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = A1_2.view
  L7_2 = L7_2.x
  L7_2 = L7_2 + 5
  L8_2 = A1_2.imageRect
  L8_2 = L8_2.x
  L7_2 = L7_2 + L8_2
  L6_2.x = L7_2
  L7_2 = A1_2.view
  L7_2 = L7_2.y
  L7_2 = L7_2 + 44
  L8_2 = A1_2.imageRect
  L8_2 = L8_2.y
  L7_2 = L7_2 + L8_2
  L6_2.y = L7_2
  L7_2 = L34_1
  L8_2 = math
  L8_2 = L8_2.abs
  L9_2 = L34_1
  L9_2 = L9_2 % 2
  L9_2 = L9_2 - 1
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2 * 65
  L8_2 = 10 + L8_2
  L9_2 = A0_2.selectedGroup
  L9_2 = L9_2.x
  L8_2 = L8_2 + L9_2
  L8_2 = L8_2 + 30
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 * 0.22
  L10_2 = math
  L10_2 = L10_2.ceil
  L11_2 = L34_1
  L11_2 = L11_2 / 2
  L10_2 = L10_2(L11_2)
  L10_2 = L10_2 - 1
  L10_2 = L10_2 * 83
  L9_2 = L9_2 + L10_2
  L10_2 = A0_2.selectedGroup
  L10_2 = L10_2.y
  L9_2 = L9_2 + L10_2
  L9_2 = L9_2 + 40
  L9_2 = L9_2 - 6.5
  
  function L10_2()
    local L0_3, L1_3
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L6_2
    L0_3(L1_3)
    L0_3 = nil
    L6_2 = L0_3
  end
  
  L12_2 = A1_2
  L11_2 = A1_2.setSelectable
  L13_2 = false
  L11_2(L12_2, L13_2)
  L11_2 = transition
  L11_2 = L11_2.to
  L12_2 = L6_2
  L13_2 = {}
  L13_2.time = 2100
  L13_2.x = L8_2
  L13_2.y = L9_2
  L13_2.xScale = L2_2
  L13_2.yScale = L3_2
  L14_2 = easing
  L14_2 = L14_2.inOutQuart
  L13_2.transition = L14_2
  
  function L14_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = A1_2
    L1_3 = L0_3
    L0_3 = L0_3.setSelectable
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L31_1
    L2_3 = L7_2
    L1_3 = L1_3[L2_3]
    L0_3(L1_3)
    L0_3 = L31_1
    L1_3 = L7_2
    L2_3 = {}
    L2_3.smallCard = nil
    L0_3[L1_3] = L2_3
    L0_3 = L31_1
    L1_3 = L7_2
    L0_3 = L0_3[L1_3]
    L1_3 = L4_1
    L2_3 = L1_3
    L1_3 = L1_3.new
    L3_3 = "small"
    L4_3 = A1_2
    L4_3 = L4_3.card
    L5_3 = L28_1
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
    L0_3.smallCard = L1_3
    L0_3 = L31_1
    L1_3 = L7_2
    L0_3 = L0_3[L1_3]
    L0_3 = L0_3.smallCard
    L1_3 = L0_3
    L0_3 = L0_3.setSelectable
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = L41_1
    if L0_3 ~= "first quest" then
      L0_3 = L31_1
      L1_3 = L7_2
      L0_3 = L0_3[L1_3]
      L0_3 = L0_3.smallCard
      L1_3 = L0_3
      L0_3 = L0_3.setAction
      L0_3(L1_3)
      L0_3 = L31_1
      L1_3 = L7_2
      L0_3 = L0_3[L1_3]
      L0_3 = L0_3.smallCard
      L1_3 = L0_3
      L0_3 = L0_3.didSelect
      L0_3(L1_3)
    end
    L0_3 = A0_2
    L0_3 = L0_3.selectedGroup
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L31_1
    L3_3 = L7_2
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3.smallCard
    L2_3 = L2_3.view
    L0_3(L1_3, L2_3)
    L0_3 = L31_1
    L1_3 = L7_2
    L0_3 = L0_3[L1_3]
    L0_3 = L0_3.smallCard
    L1_3 = L0_3
    L0_3 = L0_3.setPosition
    L2_3 = math
    L2_3 = L2_3.abs
    L3_3 = L7_2
    L3_3 = L3_3 % 2
    L3_3 = L3_3 - 1
    L2_3 = L2_3(L3_3)
    L2_3 = L2_3 * 65
    L2_3 = 10 + L2_3
    L3_3 = display
    L3_3 = L3_3.contentHeight
    L3_3 = L3_3 * 0.22
    L4_3 = math
    L4_3 = L4_3.ceil
    L5_3 = L7_2
    L5_3 = L5_3 / 2
    L4_3 = L4_3(L5_3)
    L4_3 = L4_3 - 1
    L4_3 = L4_3 * 83
    L3_3 = L3_3 + L4_3
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = L36_1
    if L0_3 then
      L0_3 = L36_1
      L0_3 = L0_3.smallCard
      if L0_3 then
        L0_3 = L36_1
        L0_3 = L0_3.smallCard
        L0_3 = L0_3.view
        L1_3 = L0_3
        L0_3 = L0_3.toFront
        L0_3(L1_3)
      end
    end
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L6_2
    L2_3 = {}
    L2_3.time = 600
    L2_3.alpha = 0
    L3_3 = L10_2
    L2_3.onComplete = L3_3
    L3_3 = L10_2
    L2_3.onCancel = L3_3
    L2_3.tag = "cardSelectTransition"
    L0_3(L1_3, L2_3)
    L0_3 = L31_1
    L1_3 = L7_2
    L0_3 = L0_3[L1_3]
    L0_3 = L0_3.smallCard
    L0_3 = L0_3.view
    L0_3.alpha = 0
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L31_1
    L2_3 = L7_2
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.smallCard
    L1_3 = L1_3.view
    L2_3 = {}
    L2_3.time = 600
    L2_3.alpha = 1
    L2_3.tag = "cardSelectTransition"
    L0_3(L1_3, L2_3)
  end
  
  L13_2.onComplete = L14_2
  L13_2.onCancel = L10_2
  L13_2.tag = "cardSelectTransition"
  L11_2(L12_2, L13_2)
  L12_2 = A0_2
  L11_2 = A0_2.updateSelectedCardsPowerLabel
  L11_2(L12_2)
end

L28_1.animateCardToSelectedCardRegion = L56_1

function L56_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = mainPlayer
  L2_2 = L2_2.cards
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L0_2[L4_2] = L5_2
  end
  L1_2 = mainPlayer
  L1_2 = L1_2.heroSet
  if L1_2 then
    L1_2 = pairs
    L2_2 = L0_2
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = pairs
      L7_2 = mainPlayer
      L7_2 = L7_2.heroSet
      L6_2, L7_2, L8_2 = L6_2(L7_2)
      for L9_2, L10_2 in L6_2, L7_2, L8_2 do
        L11_2 = L10_2.id
        L12_2 = L5_2.baseId
        if L11_2 == L12_2 then
          L0_2[L4_2] = nil
        end
      end
    end
  end
  return L0_2
end

function L57_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = pairs
  L2_2 = L30_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 ~= nil then
      L7_2 = L5_2
      L6_2 = L5_2.removeSelf
      L6_2(L7_2)
      L6_2 = L5_2.timer1
      if L6_2 then
        L6_2 = timer
        L6_2 = L6_2.cancel
        L7_2 = L5_2.timer1
        L6_2(L7_2)
      end
      L6_2 = L30_1
      L6_2[L4_2] = nil
    end
  end
  L1_2 = pairs
  L2_2 = L31_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 ~= nil then
      L6_2 = L5_2.smallCard
      if L6_2 ~= nil then
        L6_2 = L5_2.smallCard
        L6_2 = L6_2.view
        if L6_2 ~= nil then
          L6_2 = L5_2.smallCard
          L6_2 = L6_2.view
          L6_2 = L6_2.removeSelf
          if L6_2 ~= nil then
            L6_2 = L5_2.smallCard
            L6_2 = L6_2.view
            L7_2 = L6_2
            L6_2 = L6_2.removeSelf
            L6_2(L7_2)
            L6_2 = L5_2.smallCard
            L6_2.view = nil
          end
        end
        L5_2.smallCard = nil
        L6_2 = L31_1
        L6_2[L4_2] = nil
      end
    end
  end
  L1_2 = {}
  L32_1 = L1_2
  L1_2 = 0
  L34_1 = L1_2
  L1_2 = {}
  L33_1 = L1_2
  L1_2 = clearHeroSlot
  L1_2()
  L1_2 = nil
  L37_1 = L1_2
  L1_2 = nil
  L38_1 = L1_2
  L1_2 = nil
  L45_1 = L1_2
  L1_2 = L19_1
  L1_2 = L1_2.sortCardsWithPower
  L2_2 = mainPlayer
  L2_2 = L2_2.cards
  L1_2 = L1_2(L2_2)
  L2_2 = mainPlayer
  L2_2 = L2_2.settings
  L2_2 = L2_2.newTutorial
  if L2_2 then
    L2_2 = pairs
    L3_2 = L1_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L29_1
      L8_2 = {}
      L7_2[L5_2] = L8_2
      L7_2 = L29_1
      L7_2 = L7_2[L5_2]
      L7_2.id = L6_2
      L7_2 = L29_1
      L7_2 = L7_2[L5_2]
      L7_2.isCooledDown = false
    end
  end
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = math
    L8_2 = L8_2.ceil
    L9_2 = #L1_2
    L9_2 = L9_2 / 2
    L8_2 = L8_2(L9_2)
    if L6_2 <= L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = L19_1
  L3_2 = L3_2.sortCardKeysWithCooldown
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L2_2 = L3_2
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L4_1
    L9_2 = L8_2
    L8_2 = L8_2.new
    L10_2 = "medium"
    L11_2 = mainPlayer
    L11_2 = L11_2.cards
    L11_2 = L11_2[L7_2]
    L12_2 = L28_1
    L13_2 = nil
    L14_2 = true
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L9_2 = mainPlayer
    L9_2 = L9_2.cards
    L9_2 = L9_2[L7_2]
    L10_2 = L9_2
    L9_2 = L9_2.cooldownRemaining
    L9_2 = L9_2(L10_2)
    if 0 < L9_2 then
      L10_2 = L8_2
      L9_2 = L8_2.setSelectable
      L11_2 = false
      L9_2(L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.setAction
      L9_2(L10_2)
      L10_2 = L8_2
      L9_2 = L8_2.showCooldownView
      L9_2(L10_2)
    else
      L10_2 = L8_2
      L9_2 = L8_2.setSelectable
      L11_2 = true
      L9_2(L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.setAction
      L9_2(L10_2)
      L10_2 = L8_2
      L9_2 = L8_2.hideCooldownView
      L9_2(L10_2)
    end
    L10_2 = L8_2
    L9_2 = L8_2.deselected
    L9_2(L10_2)
    L10_2 = L8_2
    L9_2 = L8_2.setId
    L11_2 = L6_2
    L9_2(L10_2, L11_2)
    L9_2 = A0_2.scroller1
    L10_2 = L9_2
    L9_2 = L9_2.insert
    L11_2 = L8_2.view
    L9_2(L10_2, L11_2)
    L9_2 = L8_2.showNewSeriesOfCards
    L9_2 = L9_2()
    if L9_2 then
      L10_2 = L8_2
      L9_2 = L8_2.setPosition
      L11_2 = L6_2 - 1
      L11_2 = L11_2 * 126
      L11_2 = 5 + L11_2
      L12_2 = display
      L12_2 = L12_2.contentHeight
      L12_2 = L12_2 - 50
      L12_2 = L12_2 / 4
      L12_2 = L12_2 - 70
      L12_2 = L12_2 + 3
      L9_2(L10_2, L11_2, L12_2)
    else
      L10_2 = L8_2
      L9_2 = L8_2.setPosition
      L11_2 = L6_2 - 1
      L11_2 = L11_2 * 105
      L11_2 = 5 + L11_2
      L12_2 = display
      L12_2 = L12_2.contentHeight
      L12_2 = L12_2 - 50
      L12_2 = L12_2 / 4
      L12_2 = L12_2 - 70
      L12_2 = L12_2 + 3
      L9_2(L10_2, L11_2, L12_2)
    end
    L9_2 = L30_1
    L9_2[L7_2] = L8_2
  end
  L3_2 = {}
  L4_2 = #L1_2
  L5_2 = math
  L5_2 = L5_2.ceil
  L6_2 = #L1_2
  L6_2 = L6_2 / 2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 + 1
  L6_2 = -1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L3_2
    L10_2 = L1_2[L7_2]
    L8_2(L9_2, L10_2)
  end
  L4_2 = L19_1
  L4_2 = L4_2.reverseSortCardKeysWithCooldown
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L3_2 = L4_2
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L4_1
    L10_2 = L9_2
    L9_2 = L9_2.new
    L11_2 = "medium"
    L12_2 = mainPlayer
    L12_2 = L12_2.cards
    L12_2 = L12_2[L8_2]
    L13_2 = L28_1
    L14_2 = nil
    L15_2 = true
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L10_2 = mainPlayer
    L10_2 = L10_2.cards
    L10_2 = L10_2[L8_2]
    L11_2 = L10_2
    L10_2 = L10_2.cooldownRemaining
    L10_2 = L10_2(L11_2)
    if 0 < L10_2 then
      L11_2 = L9_2
      L10_2 = L9_2.setSelectable
      L12_2 = false
      L10_2(L11_2, L12_2)
      L11_2 = L9_2
      L10_2 = L9_2.setAction
      L10_2(L11_2)
      L11_2 = L9_2
      L10_2 = L9_2.showCooldownView
      L10_2(L11_2)
    else
      L11_2 = L9_2
      L10_2 = L9_2.setSelectable
      L12_2 = true
      L10_2(L11_2, L12_2)
      L11_2 = L9_2
      L10_2 = L9_2.setAction
      L10_2(L11_2)
      L11_2 = L9_2
      L10_2 = L9_2.hideCooldownView
      L10_2(L11_2)
    end
    L11_2 = L9_2
    L10_2 = L9_2.deselected
    L10_2(L11_2)
    L11_2 = L9_2
    L10_2 = L9_2.setId
    L12_2 = L7_2
    L10_2(L11_2, L12_2)
    L10_2 = A0_2.scroller1
    L11_2 = L10_2
    L10_2 = L10_2.insert
    L12_2 = L9_2.view
    L10_2(L11_2, L12_2)
    L10_2 = L9_2.showNewSeriesOfCards
    L10_2 = L10_2()
    if L10_2 then
      L11_2 = L9_2
      L10_2 = L9_2.setPosition
      L12_2 = L7_2 - 1
      L12_2 = L12_2 * 126
      L12_2 = 5 + L12_2
      L13_2 = display
      L13_2 = L13_2.contentHeight
      L13_2 = L13_2 - 50
      L13_2 = L13_2 / 4
      L13_2 = L13_2 * 3
      L13_2 = L13_2 - 70
      L13_2 = L13_2 + 2
      L10_2(L11_2, L12_2, L13_2)
    else
      L11_2 = L9_2
      L10_2 = L9_2.setPosition
      L12_2 = L7_2 - 1
      L12_2 = L12_2 * 105
      L12_2 = 5 + L12_2
      L13_2 = display
      L13_2 = L13_2.contentHeight
      L13_2 = L13_2 - 50
      L13_2 = L13_2 / 4
      L13_2 = L13_2 * 3
      L13_2 = L13_2 - 70
      L13_2 = L13_2 + 2
      L10_2(L11_2, L12_2, L13_2)
    end
    L10_2 = L30_1
    L10_2[L8_2] = L9_2
  end
  L4_2 = heroAnimationHandler
  L5_2 = L30_1
  L4_2(L5_2)
  L4_2 = A0_2.scroller1
  L5_2 = L4_2
  L4_2 = L4_2.scrollToPosition
  L6_2 = {}
  L6_2.x = 0
  L4_2(L5_2, L6_2)
end

L28_1.setupCardScrollers = L57_1

function L57_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = log3
  L3_2 = "create scene"
  L2_2(L3_2)
  L2_2 = A0_2.view
  L3_2 = {}
  L30_1 = L3_2
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = L14_1
  L4_2 = L4_2.Path_Assets
  L5_2 = "FC-bg.png"
  L4_2 = L4_2 .. L5_2
  L5_2 = 570
  L6_2 = 360
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L5_2 = L2_2
  L4_2 = L2_2.insert
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = L3_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L4_2 = L4_2(L5_2)
  A0_2.navBar = L4_2
  L4_2 = A0_2.navBar
  L5_2 = L4_2
  L4_2 = L4_2.setTitle
  L6_2 = L5_1
  L6_2 = L6_2["Choose Deck"]
  L4_2(L5_2, L6_2)
  L5_2 = L2_2
  L4_2 = L2_2.insert
  L6_2 = A0_2.navBar
  L6_2 = L6_2.view
  L4_2(L5_2, L6_2)
  L4_2 = nil
  L5_2 = mainPlayer
  L5_2 = L5_2.settings
  L5_2 = L5_2.newTutorial
  if L5_2 == true then
    L5_2 = mainPlayer
    L5_2 = L5_2.level
    if L5_2 < 3 then
      L5_2 = display
      L5_2 = L5_2.newImageRect
      L6_2 = L2_2
      L7_2 = L14_1
      L7_2 = L7_2.Path_Assets
      L8_2 = "Quest/FC-ChooseDeck-TestBackground.png"
      L7_2 = L7_2 .. L8_2
      L8_2 = display
      L8_2 = L8_2.contentWidth
      L8_2 = L8_2 - 10
      L9_2 = display
      L9_2 = L9_2.contentHeight
      L9_2 = L9_2 - 45
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
      L4_2 = L5_2
      L5_2 = display
      L5_2 = L5_2.contentWidth
      L5_2 = L5_2 / 2
      L4_2.x = L5_2
      L5_2 = display
      L5_2 = L5_2.contentHeight
      L5_2 = L5_2 - 45
      L5_2 = L5_2 / 2
      L5_2 = 40 + L5_2
      L4_2.y = L5_2
      L5_2 = display
      L5_2 = L5_2.newContainer
      L6_2 = L2_2
      L7_2 = display
      L7_2 = L7_2.contentWidth
      L7_2 = L7_2 - 40
      L8_2 = display
      L8_2 = L8_2.contentHeight
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      A0_2.container = L5_2
      L5_2 = A0_2.container
      L6_2 = display
      L6_2 = L6_2.contentCenterX
      L6_2 = L6_2 + 40
      L5_2.x = L6_2
      L5_2 = A0_2.container
      L6_2 = display
      L6_2 = L6_2.contentCenterY
      L5_2.y = L6_2
  end
  else
    L5_2 = display
    L5_2 = L5_2.newRoundedRect
    L6_2 = L2_2
    L7_2 = display
    L7_2 = L7_2.contentWidth
    L7_2 = L7_2 / 2
    L8_2 = display
    L8_2 = L8_2.contentHeight
    L8_2 = L8_2 - 45
    L8_2 = L8_2 / 2
    L8_2 = 40 + L8_2
    L9_2 = display
    L9_2 = L9_2.contentWidth
    L9_2 = L9_2 - 10
    L10_2 = display
    L10_2 = L10_2.contentHeight
    L10_2 = L10_2 - 45
    L11_2 = 3
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L4_2 = L5_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = L14_1
  L7_2 = L7_2.whiteColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2.strokeWidth = 3
  L6_2 = L4_2
  L5_2 = L4_2.setStrokeColor
  L7_2 = L14_1
  L7_2 = L7_2.greenColorSceneBorder
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  A0_2.maskGroup = L5_2
  L5_2 = mainPlayer
  L5_2 = L5_2.recentlyUsedEnhance
  if L5_2 then
    L5_2 = mainPlayer
    L5_2 = L5_2.recentlyUsedEnhance
    L5_2[1] = false
  end
  L5_2 = L2_1
  L5_2 = L5_2.newScrollView
  L6_2 = {}
  L7_2 = display
  L7_2 = L7_2.contentWidth
  L7_2 = L7_2 - 5
  L7_2 = L7_2 - 145
  L6_2.width = L7_2
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L7_2 = L7_2 - 46
  L6_2.height = L7_2
  L6_2.hideScrollBar = true
  L6_2.verticalScrollDisabled = true
  L6_2.scrollWidth = 0
  L6_2.scrollHeight = 0
  L6_2.rightPadding = 20
  L7_2 = {}
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L6_2.backgroundColor = L7_2
  L5_2 = L5_2(L6_2)
  A0_2.scroller1 = L5_2
  L5_2 = A0_2.scroller1
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 - 5
  L6_2 = L6_2 - 145
  L6_2 = L6_2 / 2
  L6_2 = 5 + L6_2
  L5_2.x = L6_2
  L5_2 = A0_2.scroller1
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 - 46
  L6_2 = L6_2 / 2
  L6_2 = 44 + L6_2
  L5_2.y = L6_2
  L5_2 = A0_2.maskGroup
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = A0_2.scroller1
  L5_2(L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  A0_2.selectedGroup = L5_2
  L5_2 = display
  L5_2 = L5_2.newRect
  L6_2 = A0_2.selectedGroup
  L7_2 = 72.5
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 - 47
  L8_2 = L8_2 / 2
  L8_2 = 11 + L8_2
  L9_2 = 145
  L10_2 = display
  L10_2 = L10_2.contentHeight
  L10_2 = L10_2 - 47
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  A0_2.selectedGroupBackground = L5_2
  L5_2 = A0_2.selectedGroupBackground
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = L14_1
  L7_2 = L7_2.lightBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = A0_2.selectedGroupBackground
  L6_2 = L5_2
  L5_2 = L5_2.addEventListener
  L7_2 = "touch"
  
  function L8_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2.selectedGroupBackground
  L6_2 = L5_2
  L5_2 = L5_2.addEventListener
  L7_2 = "tap"
  
  function L8_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = A0_2.selectedGroup
  L7_2 = L5_1
  L7_2 = L7_2["Battle card select title"]
  L8_2 = 0
  L9_2 = 0
  L10_2 = L14_1
  L10_2 = L10_2.fontForTitle
  L10_2 = L10_2()
  L11_2 = 11
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  A0_2.descLabel = L5_2
  L5_2 = A0_2.descLabel
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = L14_1
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = A0_2.descLabel
  L5_2.x = 72.5
  L5_2 = A0_2.descLabel
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 * 0.19
  L5_2.y = L6_2
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = A0_2.selectedGroup
  L7_2 = "Opponent Label"
  L8_2 = 0
  L9_2 = 0
  L10_2 = L14_1
  L10_2 = L10_2.fontForTitle
  L10_2 = L10_2()
  L11_2 = 11
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  A0_2.opponentLabel = L5_2
  L5_2 = A0_2.opponentLabel
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = L14_1
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = L5_1
  L5_2 = L5_2.lang
  if L5_2 ~= "en" then
    L5_2 = L5_1
    L5_2 = L5_2.lang
    if L5_2 ~= "fr" then
      goto lbl_274
    end
  end
  L5_2 = A0_2.opponentLabel
  L6_2 = A0_2.opponentLabel
  L6_2 = L6_2.width
  L6_2 = L6_2 / 2
  L6_2 = 5 + L6_2
  L5_2.x = L6_2
  goto lbl_280
  ::lbl_274::
  L5_2 = A0_2.opponentLabel
  L6_2 = A0_2.opponentLabel
  L6_2 = L6_2.width
  L6_2 = L6_2 / 2
  L6_2 = 140 - L6_2
  L5_2.x = L6_2
  ::lbl_280::
  L5_2 = A0_2.opponentLabel
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 * 0.08
  L5_2.y = L6_2
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = A0_2.selectedGroup
  L7_2 = "100~200"
  L8_2 = 0
  L9_2 = 0
  L10_2 = L14_1
  L10_2 = L10_2.fontForTitle
  L10_2 = L10_2()
  L11_2 = 11
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  A0_2.opStat = L5_2
  L5_2 = A0_2.opStat
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = L14_1
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = L5_1
  L5_2 = L5_2.lang
  if L5_2 ~= "en" then
    L5_2 = L5_1
    L5_2 = L5_2.lang
    if L5_2 ~= "fr" then
      goto lbl_318
    end
  end
  L5_2 = A0_2.opStat
  L6_2 = A0_2.opStat
  L6_2 = L6_2.width
  L6_2 = L6_2 / 2
  L6_2 = 140 - L6_2
  L5_2.x = L6_2
  goto lbl_324
  ::lbl_318::
  L5_2 = A0_2.opStat
  L6_2 = A0_2.opStat
  L6_2 = L6_2.width
  L6_2 = L6_2 / 2
  L6_2 = 5 + L6_2
  L5_2.x = L6_2
  ::lbl_324::
  L5_2 = A0_2.opStat
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 * 0.08
  L5_2.y = L6_2
  L5_2 = A0_2.selectedGroup
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 - 150
  L5_2.x = L6_2
  L5_2 = A0_2.selectedGroup
  L5_2.y = 30
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = A0_2.selectedGroup
  L7_2 = L5_1
  L7_2 = L7_2["Selected Power"]
  L8_2 = ":"
  L7_2 = L7_2 .. L8_2
  L8_2 = 0
  L9_2 = 0
  L10_2 = L14_1
  L10_2 = L10_2.fontForTitle
  L10_2 = L10_2()
  L11_2 = 11
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = L5_2
  L6_2 = L5_2.setFillColor
  L8_2 = L14_1
  L8_2 = L8_2.darkBlueColor
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = L5_1
  L6_2 = L6_2.lang
  if L6_2 ~= "en" then
    L6_2 = L5_1
    L6_2 = L6_2.lang
    if L6_2 ~= "fr" then
      goto lbl_368
    end
  end
  L6_2 = L5_2.width
  L6_2 = L6_2 / 2
  L6_2 = 5 + L6_2
  L5_2.x = L6_2
  goto lbl_372
  ::lbl_368::
  L6_2 = L5_2.width
  L6_2 = L6_2 / 2
  L6_2 = 140 - L6_2
  L5_2.x = L6_2
  ::lbl_372::
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 * 0.13
  L5_2.y = L6_2
  L6_2 = display
  L6_2 = L6_2.newText
  L7_2 = A0_2.selectedGroup
  L8_2 = "0"
  L9_2 = 0
  L10_2 = 0
  L11_2 = L14_1
  L11_2 = L11_2.fontForTitle
  L11_2 = L11_2()
  L12_2 = 11
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  A0_2.totalPowerLabel = L6_2
  L6_2 = A0_2.totalPowerLabel
  L7_2 = L6_2
  L6_2 = L6_2.setFillColor
  L8_2 = L14_1
  L8_2 = L8_2.darkBlueColor
  L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = L5_1
  L6_2 = L6_2.lang
  if L6_2 ~= "en" then
    L6_2 = L5_1
    L6_2 = L6_2.lang
    if L6_2 ~= "fr" then
      goto lbl_409
    end
  end
  L6_2 = A0_2.totalPowerLabel
  L7_2 = A0_2.totalPowerLabel
  L7_2 = L7_2.width
  L7_2 = L7_2 / 2
  L7_2 = 140 - L7_2
  L6_2.x = L7_2
  goto lbl_415
  ::lbl_409::
  L6_2 = A0_2.totalPowerLabel
  L7_2 = A0_2.totalPowerLabel
  L7_2 = L7_2.width
  L7_2 = L7_2 / 2
  L7_2 = 5 + L7_2
  L6_2.x = L7_2
  ::lbl_415::
  L6_2 = A0_2.totalPowerLabel
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L7_2 = L7_2 * 0.13
  L6_2.y = L7_2
  L6_2 = L18_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = {}
  L9_2 = L5_1
  L9_2 = L9_2.attack
  L8_2.label = L9_2
  L9_2 = Theme
  L9_2 = L9_2.colorsSet
  L9_2 = L9_2.whiteColor
  L8_2.labelColor = L9_2
  L9_2 = L14_1
  L9_2 = L9_2.Path_Assets
  L10_2 = "Buttons/FC-gui.png"
  L9_2 = L9_2 .. L10_2
  L8_2.imageName = L9_2
  L8_2.width = 100
  L8_2.height = 30
  L9_2 = L53_1
  L8_2.onRelease = L9_2
  L6_2 = L6_2(L7_2, L8_2)
  L39_1 = L6_2
  L6_2 = L39_1
  L6_2.delegate = A0_2
  L6_2 = A0_2.selectedGroup
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L39_1
  L8_2 = L8_2.view
  L6_2(L7_2, L8_2)
  L6_2 = L39_1
  L6_2.x = 72.5
  L6_2 = L39_1
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L7_2 = L7_2 * 0.82
  L6_2.y = L7_2
  L6_2 = A0_2.maskGroup
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = A0_2.selectedGroup
  L6_2(L7_2, L8_2)
  L7_2 = L2_2
  L6_2 = L2_2.insert
  L8_2 = A0_2.maskGroup
  L6_2(L7_2, L8_2)
  L6_2 = graphics
  L6_2 = L6_2.newMask
  L7_2 = L14_1
  L7_2 = L7_2.Path_Assets
  L8_2 = "General/FC-navIncluded"
  L9_2 = L14_1
  L9_2 = L9_2.deviceSpecificFilePostfix
  L9_2 = L9_2()
  L10_2 = "mask.png"
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
  L6_2 = L6_2(L7_2)
  L7_2 = A0_2.maskGroup
  L8_2 = L7_2
  L7_2 = L7_2.setMask
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.maskGroup
  L8_2 = display
  L8_2 = L8_2.contentCenterX
  L8_2 = L8_2 + 0.5
  L7_2.maskX = L8_2
  L7_2 = A0_2.maskGroup
  L8_2 = display
  L8_2 = L8_2.contentCenterY
  L7_2.maskY = L8_2
  L7_2 = {}
  L7_2.width = 35
  L7_2.height = 35
  L8_2 = L14_1
  L8_2 = L8_2.Path_Assets
  L9_2 = "CardScene/FC-combo-botton.png"
  L8_2 = L8_2 .. L9_2
  L7_2.imageName = L8_2
  L7_2.scene = A0_2
  L7_2.sceneName = "Scenes.ChooseDeck"
  L8_2 = {}
  L9_2 = L5_1
  L9_2 = L9_2.localizedString
  L10_2 = "Mentor Dialog About Level"
  L11_2 = {}
  L12_2 = L14_1
  L12_2 = L12_2.UnlockLevel_Combos
  L11_2.level = L12_2
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2)
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L7_2.dialogText = L8_2
  L8_2 = L5_1
  L8_2 = L8_2.localizedString
  L9_2 = "Combos List Open At Level"
  L10_2 = {}
  L11_2 = L14_1
  L11_2 = L11_2.UnlockLevel_Combos
  L10_2.level = L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L7_2.badgeText = L8_2
  L7_2.analyticsLog = "ComboButton Pressed under Level 15th"
  L8_2 = L14_1
  L8_2 = L8_2.UnlockLevel_Combos
  L7_2.unlockLevel = L8_2
  L7_2.sceneNameOnPressButton = "Scenes.ComboListScene"
  L8_2 = L22_1
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2)
  L27_1 = L8_2
  L8_2 = L27_1
  L8_2.isVisible = true
  L8_2 = A0_2.view
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L27_1
  L10_2 = L10_2.view
  L8_2(L9_2, L10_2)
  L8_2 = L27_1
  L9_2 = L27_1
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L9_2 = 35 + L9_2
  L8_2.x = L9_2
  L8_2 = L27_1
  L8_2.y = 20
end

L28_1.create = L57_1

function L57_1(A0_2)
  local L1_2
  if A0_2 == 4 then
    L1_2 = L5_1
    L1_2 = L1_2["Very Strong"]
    return L1_2
  elseif A0_2 == 3 then
    L1_2 = L5_1
    L1_2 = L1_2.Strong
    return L1_2
  elseif A0_2 == 2 then
    L1_2 = L5_1
    L1_2 = L1_2.Average
    return L1_2
  elseif A0_2 == 1 then
    L1_2 = L5_1
    L1_2 = L1_2.Weak
    return L1_2
  else
    L1_2 = L5_1
    L1_2 = L1_2.Average
    return L1_2
  end
end

function L58_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = pairs
  L4_2 = L30_1
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = mainPlayer
    L8_2 = L8_2.activeHeroID
    if L8_2 then
      L8_2 = mainPlayer
      L8_2 = L8_2.activeHeroID
      L9_2 = L7_2.card
      L9_2 = L9_2.baseId
      if L8_2 ~= L9_2 then
        L9_2 = L7_2
        L8_2 = L7_2.animateCardPowerLabel
        L10_2 = true
        L8_2(L9_2, L10_2)
      end
    else
      L9_2 = L7_2
      L8_2 = L7_2.animateCardPowerLabel
      L10_2 = true
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = L20_1
  L3_2 = L3_2.processInformativeTutorial
  L4_2 = A1_2
  
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = pairs
    L1_3 = L30_1
    L0_3, L1_3, L2_3 = L0_3(L1_3)
    for L3_3, L4_3 in L0_3, L1_3, L2_3 do
      L6_3 = L4_3
      L5_3 = L4_3.animateCardPowerLabel
      L7_3 = false
      L5_3(L6_3, L7_3)
    end
    L0_3 = A2_2
    L0_3()
  end
  
  L3_2(L4_2, L5_2)
end

L28_1.animateCardPower = L58_1

function L58_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2.opponentLabel
  L3_2.isVisible = true
  L3_2 = A0_2.opStat
  L3_2.isVisible = true
  L3_2 = display
  L3_2 = L3_2.newRoundedRect
  L4_2 = A0_2.selectedGroup
  L5_2 = A0_2.selectedGroupBackground
  L5_2 = L5_2.x
  L6_2 = A0_2.opponentLabel
  L6_2 = L6_2.y
  L7_2 = A0_2.selectedGroupBackground
  L7_2 = L7_2.width
  L7_2 = L7_2 - 4
  L8_2 = A0_2.opStat
  L8_2 = L8_2.height
  L9_2 = 8
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = 1
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2.strokeWidth = 2
  L5_2 = L3_2
  L4_2 = L3_2.setStrokeColor
  L6_2 = 1
  L7_2 = 0
  L8_2 = 0
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = transition
  L4_2 = L4_2.blink
  L5_2 = L3_2
  L6_2 = {}
  L6_2.time = 3000
  L4_2(L5_2, L6_2)
  L4_2 = L20_1
  L4_2 = L4_2.processInformativeTutorial
  L5_2 = A1_2
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = mainPlayer
    L0_3 = L0_3.betterQuestTutorial
    if L0_3 then
      L0_3 = display
      L0_3 = L0_3.newGroup
      L0_3 = L0_3()
      L1_3 = display
      L1_3 = L1_3.contentCenterX
      L0_3.x = L1_3
      L1_3 = display
      L1_3 = L1_3.contentCenterY
      L0_3.y = L1_3
      L1_3 = display
      L1_3 = L1_3.newImageRect
      L2_3 = L0_3
      L3_3 = L14_1
      L3_3 = L3_3.Path_Assets
      L4_3 = "General/Lumber.png"
      L3_3 = L3_3 .. L4_3
      L4_3 = 280
      L5_3 = 60
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
      L2_3 = L5_1
      L2_3 = L2_3.localizedString
      L3_3 = "Quest Power Range Text"
      L4_3 = {}
      L5_3 = L47_1
      L5_3 = L5_3.minPower
      L4_3.minpower = L5_3
      L5_3 = L47_1
      L5_3 = L5_3.maxPower
      L4_3.maxpower = L5_3
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = display
      L3_3 = L3_3.newText
      L4_3 = L0_3
      L5_3 = L2_3
      L6_3 = 0
      L7_3 = 0
      L8_3 = L14_1
      L8_3 = L8_3.fontForTitle
      L8_3 = L8_3()
      L9_3 = 13
      L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
      L0_3.xScale = 0.2
      L0_3.yScale = 0.2
      L0_3.alpha = 0
      L4_3 = display
      L4_3 = L4_3.newRect
      L5_3 = display
      L5_3 = L5_3.contentCenterX
      L6_3 = display
      L6_3 = L6_3.contentCenterY
      L7_3 = display
      L7_3 = L7_3.contentWidth
      L8_3 = display
      L8_3 = L8_3.contentHeight
      L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3.alpha = 0
      L4_3.isHitTestable = true
      L6_3 = L4_3
      L5_3 = L4_3.addEventListener
      L7_3 = "touch"
      
      function L8_3()
        local L0_4, L1_4
        L0_4 = true
        return L0_4
      end
      
      L5_3(L6_3, L7_3, L8_3)
      L6_3 = L4_3
      L5_3 = L4_3.addEventListener
      L7_3 = "tap"
      
      function L8_3()
        local L0_4, L1_4
        L0_4 = true
        return L0_4
      end
      
      L5_3(L6_3, L7_3, L8_3)
      L5_3 = transition
      L5_3 = L5_3.to
      L6_3 = L0_3
      L7_3 = {}
      L7_3.time = 1200
      L7_3.xScale = 1
      L7_3.yScale = 1
      L7_3.alpha = 1
      
      function L8_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = transition
        L0_4 = L0_4.to
        L1_4 = L0_3
        L2_4 = {}
        L2_4.time = 1200
        L2_4.alpha = 0
        L2_4.delay = 2000
        
        function L3_4()
          local L0_5, L1_5
          L0_5 = L0_3
          L1_5 = L0_5
          L0_5 = L0_5.removeSelf
          L0_5(L1_5)
          L0_5 = nil
          L0_3 = L0_5
          L0_5 = L4_3
          L1_5 = L0_5
          L0_5 = L0_5.removeSelf
          L0_5(L1_5)
          L0_5 = nil
          L4_3 = L0_5
          L0_5 = transition
          L0_5 = L0_5.cancel
          L1_5 = L3_2
          L0_5(L1_5)
          L0_5 = display
          L0_5 = L0_5.remove
          L1_5 = L3_2
          L0_5(L1_5)
          L0_5 = nil
          L3_2 = L0_5
          L0_5 = A2_2
          L0_5()
        end
        
        L2_4.onComplete = L3_4
        L0_4(L1_4, L2_4)
      end
      
      L7_3.onComplete = L8_3
      L5_3(L6_3, L7_3)
    else
      L0_3 = transition
      L0_3 = L0_3.cancel
      L1_3 = L3_2
      L0_3(L1_3)
      L0_3 = display
      L0_3 = L0_3.remove
      L1_3 = L3_2
      L0_3(L1_3)
      L0_3 = nil
      L3_2 = L0_3
      L0_3 = A2_2
      L0_3()
    end
  end
  
  L4_2(L5_2, L6_2)
end

L28_1.showOpponentPower = L58_1

function L58_1(A0_2)
  local L1_2, L2_2
  L1_2 = L26_1
  if L1_2 then
    L1_2 = L26_1
    L2_2 = L1_2
    L1_2 = L1_2.hideWithAnimation
    L1_2(L2_2)
  end
end

L28_1.hideIt = L58_1

function L58_1(A0_2, A1_2, A2_2)
  local L3_2
  L42_1 = A2_2
  L3_2 = A1_2.count
  if not L3_2 then
    L3_2 = 2
  end
  L43_1 = L3_2
end

L28_1.cardSelectCallback = L58_1

function L58_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = A0_2.view
  L5_2 = A0_2.scroller1
  L5_2 = L5_2.x
  L6_2 = A0_2.scroller1
  L6_2 = L6_2.y
  L7_2 = A0_2.scroller1
  L7_2 = L7_2.width
  L8_2 = A0_2.scroller1
  L8_2 = L8_2.height
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.tutorialScrollerTouchMask = L3_2
  L3_2 = A0_2.tutorialScrollerTouchMask
  L3_2.isHitTestable = true
  L3_2 = A0_2.tutorialScrollerTouchMask
  L3_2.alpha = 0
  L3_2 = A0_2.tutorialScrollerTouchMask
  L4_2 = L3_2
  L3_2 = L3_2.addEventListener
  L5_2 = "touch"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.tutorialScrollerTouchMask
  L4_2 = L3_2
  L3_2 = L3_2.addEventListener
  L5_2 = "tap"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L42_1 = A2_2
  L4_2 = A0_2
  L3_2 = A0_2.fadeInAttackButton
  L5_2 = true
  L3_2(L4_2, L5_2)
end

L28_1.showAttackButton = L58_1

function L58_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L39_1
  L2_2.isVisible = true
  L2_2 = L39_1
  L2_2.alpha = 0
  L2_2 = transition
  L2_2 = L2_2.fadeIn
  L3_2 = L39_1
  L4_2 = {}
  L4_2.time = 600
  
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = A1_2
    if L0_3 then
      L0_3 = mainPlayer
      L0_3 = L0_3.settings
      L0_3 = L0_3.newTutorial
      if not L0_3 then
        L0_3 = L12_1
        L0_3 = L0_3.pointAtObjectInView
        L1_3 = L39_1
        L2_3 = A0_2
        L2_3 = L2_3.selectedGroup
        L0_3(L1_3, L2_3)
      end
    end
  end
  
  L4_2.onComplete = L5_2
  L2_2(L3_2, L4_2)
end

L28_1.fadeInAttackButton = L58_1

function L58_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L12_1
  L3_2 = L3_2.pointAtObjectInView
  L4_2 = L39_1
  L5_2 = A0_2.selectedGroup
  L3_2(L4_2, L5_2)
  L42_1 = A2_2
end

L28_1.pointAtAttackButton = L58_1

function L58_1(A0_2)
  local L1_2, L2_2
  L1_2 = L12_1
  L1_2 = L1_2.removePoint
  L1_2()
  L1_2 = display
  L1_2 = L1_2.remove
  L2_2 = A0_2.tutorialScrollerTouchMask
  L1_2(L2_2)
  A0_2.tutorialScrollerTouchMask = nil
  L1_2 = L42_1
  if L1_2 then
    L1_2 = L42_1
    L1_2()
  end
end

L28_1.finishShowAttackButtonAction = L58_1

function L58_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L42_1 = A2_2
  L3_2 = nil
  L4_2 = pairs
  L5_2 = L30_1
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.card
    L9_2 = L9_2.baseId
    L10_2 = mainPlayer
    L10_2 = L10_2.activeHeroID
    if L9_2 == L10_2 then
      L3_2 = L8_2
      break
    end
  end
  L4_2 = L12_1
  L4_2 = L4_2.pointAtObjectInView
  L5_2 = L3_2.imageRect
  L6_2 = L3_2.view
  L4_2(L5_2, L6_2)
end

L28_1.pointAtHeroCard = L58_1

function L58_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = mainPlayer
  L3_2 = L3_2.activeHeroID
  if L3_2 then
    L3_2 = pairs
    L4_2 = L30_1
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L9_2 = L7_2
      L8_2 = L7_2.animateCooldownLabel
      L10_2 = false
      L8_2(L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.setCoolDownCostForTutorial
      L10_2 = true
      L8_2(L9_2, L10_2)
      L8_2 = L7_2.card
      L8_2 = L8_2.baseId
      L9_2 = mainPlayer
      L9_2 = L9_2.activeHeroID
      if L8_2 ~= L9_2 then
        L9_2 = L7_2
        L8_2 = L7_2.showFakeCooldownGroup
        L10_2 = true
        L11_2 = true
        L8_2(L9_2, L10_2, L11_2)
      else
        L8_2 = mainPlayer
        L8_2 = L8_2.heroTutorialAtFirstAndSelected
        if not L8_2 then
          L8_2 = mainPlayer
          L8_2 = L8_2.heroTutorialAtFirstAndSelectedWithAnimation
          if not L8_2 then
            goto lbl_41
          end
        end
        L9_2 = L7_2
        L8_2 = L7_2.hideCooldownView
        L8_2(L9_2)
        L9_2 = L7_2
        L8_2 = L7_2.didSelect
        L8_2(L9_2)
        L9_2 = L7_2
        L8_2 = L7_2.setSelectable
        L10_2 = false
        L8_2(L9_2, L10_2)
      end
      ::lbl_41::
    end
  else
    L3_2 = pairs
    L4_2 = L30_1
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L9_2 = L7_2
      L8_2 = L7_2.showFakeCooldownGroup
      L10_2 = true
      L11_2 = true
      L8_2(L9_2, L10_2, L11_2)
    end
  end
  L42_1 = A2_2
  L3_2 = 0
  L44_1 = L3_2
  L3_2 = Runtime
  L4_2 = L3_2
  L3_2 = L3_2.addEventListener
  L5_2 = "cooldown"
  L6_2 = L28_1
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L19_1
  L3_2 = L3_2.sortCardsWithPower
  L4_2 = mainPlayer
  L4_2 = L4_2.cards
  L3_2 = L3_2(L4_2)
  L4_2 = L19_1
  L4_2 = L4_2.sortCardKeysWithCooldown
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L3_2 = L4_2
  L4_2 = L3_2[1]
  L5_2 = mainPlayer
  L5_2 = L5_2.cards
  L6_2 = L3_2[1]
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.baseId
  L6_2 = mainPlayer
  L6_2 = L6_2.activeHeroID
  if L5_2 == L6_2 then
    L4_2 = L3_2[2]
  end
  L5_2 = L30_1
  L5_2 = L5_2[L4_2]
  L7_2 = L5_2
  L6_2 = L5_2.pointAtCooldownButton
  L6_2(L7_2)
end

L28_1.pointAtCooldown = L58_1

function L58_1()
  local L0_2, L1_2, L2_2
  L0_2 = L16_1
  L0_2 = L0_2.stringThousandCommaSeperated
  L1_2 = ""
  L2_2 = L49_1
  L1_2 = L1_2 .. L2_2
  L0_2 = L0_2(L1_2)
  L1_2 = L5_1
  L1_2 = L1_2.adjustNumber
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L0_2 = L1_2
  return L0_2
end

function L59_1()
  local L0_2, L1_2, L2_2
  L0_2 = timer
  L0_2 = L0_2.performWithDelay
  L1_2 = 3000
  
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = L24_1
    L0_3 = L0_3.playEffect
    L1_3 = L14_1
    L1_3 = L1_3.Path_Assets
    L2_3 = "Audio/FC-laughing.wav"
    L1_3 = L1_3 .. L2_3
    L0_3(L1_3)
  end
  
  L0_2(L1_2, L2_2)
end

function L60_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = mainPlayer
  L2_2 = L2_2.settings
  L2_2 = L2_2.newTutorial
  if L2_2 then
    L2_2 = A0_2.container
    L3_2 = L2_2
    L2_2 = L2_2.toFront
    L2_2(L3_2)
    L2_2 = L29_1
    L2_2 = L2_2[2]
    L2_2 = L2_2.id
    if A1_2 == L2_2 then
      L2_2 = L29_1
      L2_2 = L2_2[2]
      L2_2 = L2_2.isCooledDown
      if not L2_2 then
        L2_2 = L59_1
        L2_2()
        L2_2 = mainPlayer
        L2_2 = L2_2.rollingGold
        if L2_2 then
          L2_2 = A0_2.navBar
          L2_2 = L2_2.hudGold
          L3_2 = L2_2
          L2_2 = L2_2.setGold
          L4_2 = L49_1
          L5_2 = true
          L2_2(L3_2, L4_2, L5_2)
        else
          L2_2 = A0_2.navBar
          L2_2 = L2_2.goldLabel
          L3_2 = L58_1
          L3_2 = L3_2()
          L2_2.text = L3_2
        end
        L2_2 = nil
        L3_2 = L23_1
        L3_2 = L3_2.emitterParams
        if L3_2 == nil then
          L3_2 = L23_1
          L3_2 = L3_2.loadParams
          L4_2 = L14_1
          L4_2 = L4_2.Path_Assets
          L5_2 = "Effects/sendCoinsToCard.json"
          L4_2 = L4_2 .. L5_2
          L5_2 = nil
          L6_2 = nil
          L3_2 = L3_2(L4_2, L5_2, L6_2)
          L2_2 = L3_2
        else
          L3_2 = L23_1
          L2_2 = L3_2.emitterParams
        end
        L2_2.gravityy = 100
        L2_2.gravityx = -180
        L4_2 = A0_2
        L3_2 = A0_2.showCoinsSpreadEffect
        L5_2 = nil
        L6_2 = nil
        L7_2 = L2_2
        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
        L4_2 = A0_2.container
        L5_2 = L4_2
        L4_2 = L4_2.insert
        L6_2 = L3_2
        L4_2(L5_2, L6_2)
        L4_2 = L29_1
        L4_2 = L4_2[2]
        L4_2.isCooledDown = true
        L4_2 = L44_1
        L4_2 = L4_2 + 1
        L44_1 = L4_2
      end
    end
  else
    L2_2 = L44_1
    L2_2 = L2_2 + 1
    L44_1 = L2_2
  end
  L2_2 = L44_1
  if 2 <= L2_2 then
    L2_2 = Runtime
    L3_2 = L2_2
    L2_2 = L2_2.removeEventListener
    L4_2 = "cooldown"
    L5_2 = L28_1
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2.fadeInAttackButton
    L2_2(L3_2)
    L2_2 = L42_1
    if L2_2 then
      L2_2 = L42_1
      L2_2()
      L2_2 = nil
      L42_1 = L2_2
    end
    L2_2 = 0
    L44_1 = L2_2
  end
end

L28_1.cooldown = L60_1

function L60_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.descLabel
  L1_2.isVisible = true
  L1_2 = A0_2.opponentLabel
  L1_2.isVisible = true
  L1_2 = A0_2.opStat
  L1_2.isVisible = true
  L1_2 = L39_1
  L1_2.isVisible = true
  L1_2 = A0_2.navBar
  L1_2 = L1_2.view
  L1_2.isVisible = true
  L1_2 = mainPlayer
  L1_2 = L1_2.settings
  L1_2 = L1_2.newTutorial
  if L1_2 == true then
    L1_2 = A0_2.navBar
    L1_2 = L1_2.helpButton
    L1_2 = L1_2.isVisible
    if not L1_2 then
      L1_2 = A0_2.navBar
      L2_2 = L1_2
      L1_2 = L1_2.makeItemsVisible
      L1_2(L2_2)
    end
  end
  L1_2 = L27_1
  L1_2.isVisible = true
  L1_2 = pairs
  L2_2 = L30_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.setCooldownTimeVisibility
    L8_2 = true
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.animateCardPowerLabel
    L8_2 = false
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.animateCooldownLabel
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
  L1_2 = nil
  L41_1 = L1_2
  L1_2 = nil
  L42_1 = L1_2
end

L28_1.cleanUpAfterTutorial = L60_1

function L60_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = mainPlayer
  L0_2 = L0_2.level
  L1_2 = L14_1
  L1_2 = L1_2.UnlockLevel_Hero
  if L0_2 < L1_2 then
    function L0_2()
      local L0_3, L1_3
      
      L0_3 = log3
      L1_3 = "Show mentor on hero card"
      L0_3(L1_3)
    end
    
    L1_2 = require
    L2_2 = "Components.TDDialogView"
    L1_2 = L1_2(L2_2)
    L2_2 = {}
    L3_2 = L5_1
    L3_2 = L3_2.localizedString
    L4_2 = "You can send hero to the battle on second level"
    L5_2 = {}
    L6_2 = L5_1
    L6_2 = L6_2.adjustNumber
    L7_2 = L14_1
    L7_2 = L7_2.UnlockLevel_Hero
    L6_2 = L6_2(L7_2)
    L5_2.level = L6_2
    L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2)
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L2_2[3] = L5_2
    L2_2[4] = L6_2
    L2_2[5] = L7_2
    L4_2 = L1_2
    L3_2 = L1_2.new
    L5_2 = {}
    L5_2.id = "Hero Dialog"
    L5_2.delay = 100
    L5_2.mode = "semi"
    L5_2.texts = L2_2
    L5_2.textAlignment = "center"
    L5_2.mentorAlignment = "right"
    L6_2 = L14_1
    L6_2 = L6_2.Path_Assets
    L7_2 = "Tutorial/FC-Olive.png"
    L6_2 = L6_2 .. L7_2
    L5_2.mentorImage = L6_2
    L5_2.mentorWidth = 111
    L5_2.mentorHeight = 115
    L5_2.callBackFunction = L0_2
    L3_2 = L3_2(L4_2, L5_2)
    L26_1 = L3_2
  end
end

function L61_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = display
  L1_2 = L1_2.newRoundedRect
  L2_2 = A0_2.view
  L3_2 = 0
  L4_2 = 0
  L5_2 = A0_2.background
  L5_2 = L5_2.width
  L6_2 = A0_2.background
  L6_2 = L6_2.height
  L7_2 = 2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.dimRect = L1_2
  L1_2 = A0_2.dimRect
  L2_2 = A0_2.background
  L2_2 = L2_2.x
  L1_2.x = L2_2
  L1_2 = A0_2.dimRect
  L2_2 = A0_2.background
  L2_2 = L2_2.y
  L1_2.y = L2_2
  L1_2 = A0_2.dimRect
  L2_2 = L1_2
  L1_2 = L1_2.setFillColor
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0.6
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2.selectedView
  L1_2.alpha = 0
  L1_2 = A0_2.selectedBG
  L1_2.alpha = 0
end

function L62_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L41_1 = A1_2
  L2_2 = 1
  L40_1 = L2_2
  L2_2 = nil
  _backAction = L2_2
  L2_2 = L15_1
  L2_2 = L2_2.removeFromScene
  L3_2 = L28_1
  L2_2(L3_2)
  L2_2 = mainPlayer
  L2_2 = L2_2.settings
  L2_2 = L2_2.newTutorial
  if L2_2 == true then
    L2_2 = mainPlayer
    L2_2 = L2_2.level
    if L2_2 < 3 then
      L2_2 = A0_2.navBar
      L2_2 = L2_2.view
      L2_2.isVisible = true
      L2_2 = A0_2.navBar
      L3_2 = L2_2
      L2_2 = L2_2.hideItems
      L2_2(L3_2)
      L2_2 = L41_1
      if L2_2 == "second quest" then
        L2_2 = mainPlayer
        L2_2 = L2_2.gold
        L2_2 = L2_2 + 16
        L49_1 = L2_2
        L2_2 = mainPlayer
        L2_2 = L2_2.rollingGold
        if L2_2 then
          L2_2 = A0_2.navBar
          L2_2 = L2_2.hudGold
          L2_2 = L2_2.view
          L2_2.isVisible = true
          L2_2 = A0_2.navBar
          L2_2 = L2_2.hudGold
          L3_2 = L2_2
          L2_2 = L2_2.setGold
          L4_2 = L49_1
          L5_2 = false
          L2_2(L3_2, L4_2, L5_2)
        else
          L2_2 = A0_2.navBar
          L2_2 = L2_2.gold
          L2_2.isVisible = true
          L2_2 = A0_2.navBar
          L2_2 = L2_2.goldLabel
          L3_2 = L58_1
          L3_2 = L3_2()
          L2_2.text = L3_2
          L2_2 = A0_2.navBar
          L2_2 = L2_2.goldImage
          L2_2.isVisible = true
          L2_2 = A0_2.navBar
          L2_2 = L2_2.goldLabel
          L2_2.isVisible = true
        end
      end
  end
  else
    L2_2 = A0_2.navBar
    L2_2 = L2_2.view
    L2_2.isVisible = false
  end
  L2_2 = L27_1
  L2_2.isVisible = false
  if A1_2 == "first quest" then
    L2_2 = A0_2.descLabel
    L2_2.isVisible = false
    L2_2 = mainPlayer
    L2_2 = L2_2.settings
    L2_2 = L2_2.newTutorial
    if L2_2 then
      L2_2 = A0_2.opponentLabel
      L2_2.isVisible = true
      L2_2 = A0_2.opStat
      L2_2.isVisible = true
    else
      L2_2 = A0_2.opponentLabel
      L2_2.isVisible = false
      L2_2 = A0_2.opStat
      L2_2.isVisible = false
    end
    L2_2 = L39_1
    L2_2.isVisible = false
    L2_2 = mainPlayer
    L2_2 = L2_2.activeHeroID
    if L2_2 then
      L2_2 = pairs
      L3_2 = L30_1
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L8_2 = L6_2
        L7_2 = L6_2.setCooldownTimeVisibility
        L9_2 = false
        L7_2(L8_2, L9_2)
        L7_2 = L6_2.card
        L7_2 = L7_2.baseId
        L8_2 = mainPlayer
        L8_2 = L8_2.activeHeroID
        if L7_2 == L8_2 then
          L7_2 = mainPlayer
          L7_2 = L7_2.heroTutorialAtFirst
          if L7_2 then
            L7_2 = L61_1
            L8_2 = L6_2
            L7_2(L8_2)
            L7_2 = L6_2.view
            L8_2 = L7_2
            L7_2 = L7_2.addEventListener
            L9_2 = "touch"
            L10_2 = L60_1
            L7_2(L8_2, L9_2, L10_2)
          else
            L7_2 = mainPlayer
            L7_2 = L7_2.heroTutorialAtFirstAndSelected
            if not L7_2 then
              L7_2 = mainPlayer
              L7_2 = L7_2.heroTutorialAtFirstAndSelectedWithAnimation
              if not L7_2 then
                goto lbl_132
              end
            end
            L7_2 = L6_2.card
            L45_1 = L7_2
            L8_2 = L6_2
            L7_2 = L6_2.didSelect
            L7_2(L8_2)
            L8_2 = L6_2
            L7_2 = L6_2.setSelectable
            L9_2 = false
            L7_2(L8_2, L9_2)
          end
        end
        ::lbl_132::
      end
    else
      L2_2 = pairs
      L3_2 = L30_1
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L8_2 = L6_2
        L7_2 = L6_2.setCooldownTimeVisibility
        L9_2 = false
        L7_2(L8_2, L9_2)
      end
    end
  elseif A1_2 == "second quest" then
    L2_2 = L39_1
    L2_2.isVisible = false
    L2_2 = mainPlayer
    L2_2 = L2_2.activeHeroID
    if L2_2 then
      L2_2 = pairs
      L3_2 = L30_1
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = L6_2.card
        L7_2 = L7_2.baseId
        L8_2 = mainPlayer
        L8_2 = L8_2.activeHeroID
        if L7_2 ~= L8_2 then
          L7_2 = mainPlayer
          L7_2 = L7_2.settings
          L7_2 = L7_2.newTutorial
          if not L7_2 then
            L8_2 = L6_2
            L7_2 = L6_2.animateCooldownLabel
            L9_2 = true
            L7_2(L8_2, L9_2)
          end
          L8_2 = L6_2
          L7_2 = L6_2.showFakeCooldownGroup
          L9_2 = true
          L7_2(L8_2, L9_2)
        else
          L7_2 = mainPlayer
          L7_2 = L7_2.heroTutorialAtFirst
          if L7_2 then
            L7_2 = L61_1
            L8_2 = L6_2
            L7_2(L8_2)
            L7_2 = L6_2.view
            L8_2 = L7_2
            L7_2 = L7_2.addEventListener
            L9_2 = "touch"
            L10_2 = L60_1
            L7_2(L8_2, L9_2, L10_2)
          else
            L7_2 = mainPlayer
            L7_2 = L7_2.heroTutorialAtFirstAndSelected
            if not L7_2 then
              L7_2 = mainPlayer
              L7_2 = L7_2.heroTutorialAtFirstAndSelectedWithAnimation
              if not L7_2 then
                goto lbl_205
              end
            end
            L7_2 = L6_2.card
            L45_1 = L7_2
            L8_2 = L6_2
            L7_2 = L6_2.hideCooldownView
            L7_2(L8_2)
            L8_2 = L6_2
            L7_2 = L6_2.didSelect
            L7_2(L8_2)
            L8_2 = L6_2
            L7_2 = L6_2.setSelectable
            L9_2 = false
            L7_2(L8_2, L9_2)
          end
        end
        ::lbl_205::
      end
    else
      L2_2 = pairs
      L3_2 = L30_1
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = mainPlayer
        L7_2 = L7_2.settings
        L7_2 = L7_2.newTutorial
        if not L7_2 then
          L8_2 = L6_2
          L7_2 = L6_2.animateCooldownLabel
          L9_2 = true
          L7_2(L8_2, L9_2)
        end
        L8_2 = L6_2
        L7_2 = L6_2.showFakeCooldownGroup
        L9_2 = true
        L7_2(L8_2, L9_2)
      end
    end
  elseif A1_2 == "third quest" then
    L2_2 = L39_1
    L2_2.isVisible = false
  end
end

L28_1.setupForTutorialMode = L62_1

function L62_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = _isFillterSupport
  if L4_2 == false then
    return
  end
  L4_2 = nil
  L5_2 = L23_1
  L5_2 = L5_2.newEmitter
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L5_2 = A0_2.container
  L5_2 = L5_2.width
  L5_2 = L5_2 / 2
  L5_2 = L5_2 - 50
  L4_2.x = L5_2
  L5_2 = A0_2.container
  L5_2 = L5_2.height
  L5_2 = -L5_2
  L5_2 = L5_2 / 2
  L5_2 = L5_2 + 23
  L4_2.y = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.start
  L5_2(L6_2)
  if L4_2 then
    return L4_2
  end
end

L28_1.showCoinsSpreadEffect = L62_1

function L62_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = log3
  L3_2 = "enter scene"
  L2_2(L3_2)
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    L4_2 = A0_2
    L3_2 = A0_2.setupScene
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.params
    if L3_2 then
      L3_2 = A0_2.params
      L3_2 = L3_2.tutorial
      if L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2.setupForTutorialMode
        L5_2 = A0_2.params
        L5_2 = L5_2.tutorial
        L3_2(L4_2, L5_2)
    end
    else
      L3_2 = L41_1
      if L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2.cleanUpAfterTutorial
        L3_2(L4_2)
      end
    end
    L3_2 = L20_1
    L3_2 = L3_2.checkForTutorial
    L4_2 = "Scenes.ChooseDeck"
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
    L3_2 = L27_1
    L3_2 = L3_2.isVisible
    if L3_2 == true then
      L3_2 = L27_1
      L4_2 = L3_2
      L3_2 = L3_2.changeVisualProperty
      L3_2(L4_2)
    end
    L3_2 = mainPlayer
    L3_2 = L3_2.coachTest
    if L3_2 then
      L3_2 = mainPlayer
      L3_2 = L3_2.level
      if 1 < L3_2 then
        L3_2 = mainPlayer
        L3_2 = L3_2.level
        if L3_2 < 7 then
          L3_2 = A0_2.chatButton
          if L3_2 then
            L3_2 = timer
            L3_2 = L3_2.performWithDelay
            L4_2 = 6000
            
            function L5_2()
              local L0_3, L1_3, L2_3
              L0_3 = A0_2
              L0_3 = L0_3.chatButton
              L0_3.continueAnimation = true
              L0_3 = L15_1
              L1_3 = L0_3
              L0_3 = L0_3.animateChatButton
              L2_3 = A0_2
              L0_3(L1_3, L2_3)
            end
            
            L6_2 = 1
            L3_2 = L3_2(L4_2, L5_2, L6_2)
            A0_2.chatButtonTimer = L3_2
          end
        end
      end
    end
  end
end

L28_1.show = L62_1

function L62_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.view
  L3_2 = A0_2.descLabel
  L4_2 = L5_1
  L4_2 = L4_2["Quest card select title"]
  L3_2.text = L4_2
  A0_2.mode = "quest"
  L3_2 = L6_1
  L3_2 = L3_2.getQuestPower
  L3_2 = L3_2()
  L47_1 = L3_2
  L3_2 = A0_2.opponentLabel
  L4_2 = L5_1
  L4_2 = L4_2["Quest power range"]
  L5_2 = ":"
  L4_2 = L4_2 .. L5_2
  L3_2.text = L4_2
  L3_2 = L5_1
  L3_2 = L3_2.lang
  if L3_2 ~= "en" then
    L3_2 = L5_1
    L3_2 = L3_2.lang
    if L3_2 ~= "fr" then
      goto lbl_32
    end
  end
  L3_2 = A0_2.opponentLabel
  L4_2 = A0_2.opponentLabel
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L4_2 = 5 + L4_2
  L3_2.x = L4_2
  goto lbl_38
  ::lbl_32::
  L3_2 = A0_2.opponentLabel
  L4_2 = A0_2.opponentLabel
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L4_2 = 140 - L4_2
  L3_2.x = L4_2
  ::lbl_38::
  L3_2 = L47_1
  L3_2 = L3_2.minPower
  if 1000 < L3_2 then
    L3_2 = A0_2.opStat
    L4_2 = "~"
    L5_2 = L5_1
    L5_2 = L5_2.adjustNumber
    L6_2 = L16_1
    L6_2 = L6_2.shortenLongNumber
    L7_2 = L47_1
    L7_2 = L7_2.maxPower
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L4_2 .. L5_2
    L3_2.text = L4_2
  else
    L3_2 = mainPlayer
    L3_2 = L3_2.betterChooseDeck
    if L3_2 == true then
      L3_2 = mainPlayer
      L3_2 = L3_2.level
      if L3_2 < 3 then
        L3_2 = A0_2.opStat
        L4_2 = "~"
        L5_2 = L5_1
        L5_2 = L5_2.adjustNumber
        L6_2 = math
        L6_2 = L6_2.floor
        L7_2 = L47_1
        L7_2 = L7_2.minPower
        L8_2 = L47_1
        L8_2 = L8_2.maxPower
        L7_2 = L7_2 + L8_2
        L7_2 = L7_2 / 2
        L6_2, L7_2, L8_2 = L6_2(L7_2)
        L5_2 = L5_2(L6_2, L7_2, L8_2)
        L4_2 = L4_2 .. L5_2
        L3_2.text = L4_2
    end
    else
      L3_2 = A0_2.opStat
      L4_2 = L5_1
      L4_2 = L4_2.adjustNumber
      L5_2 = L47_1
      L5_2 = L5_2.minPower
      L4_2 = L4_2(L5_2)
      L5_2 = "~"
      L6_2 = L5_1
      L6_2 = L6_2.adjustNumber
      L7_2 = L47_1
      L7_2 = L7_2.maxPower
      L6_2 = L6_2(L7_2)
      L4_2 = L4_2 .. L5_2 .. L6_2
      L3_2.text = L4_2
    end
  end
  L3_2 = L5_1
  L3_2 = L3_2.lang
  if L3_2 ~= "en" then
    L3_2 = L5_1
    L3_2 = L3_2.lang
    if L3_2 ~= "fr" then
      goto lbl_109
    end
  end
  L3_2 = A0_2.opStat
  L4_2 = A0_2.opStat
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L4_2 = 140 - L4_2
  L3_2.x = L4_2
  goto lbl_115
  ::lbl_109::
  L3_2 = A0_2.opStat
  L4_2 = A0_2.opStat
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L4_2 = 5 + L4_2
  L3_2.x = L4_2
  ::lbl_115::
  L3_2 = A0_2.navBar
  L3_2.helpId = 17
  L3_2 = A0_2.opStat
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = L14_1
  L5_2 = L5_2.darkBlueColor
  L5_2, L6_2, L7_2, L8_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = L6_1
  L3_2 = L3_2.isBossQuest
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = A0_2.opStat
    L4_2 = L3_2
    L3_2 = L3_2.setFillColor
    L5_2 = L14_1
    L5_2 = L5_2.redColor
    L5_2, L6_2, L7_2, L8_2 = L5_2()
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = L0_1
    L3_2 = L3_2.getScene
    L4_2 = "Scenes.WorldMap"
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.questManager
    L3_2.isBoss = true
    L3_2 = L17_1
    L4_2 = L3_2
    L3_2 = L3_2.new
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.view
    L5_2 = display
    L5_2 = L5_2.contentCenterX
    L4_2.x = L5_2
    L4_2 = L3_2.view
    L5_2 = display
    L5_2 = L5_2.contentCenterY
    L4_2.y = L5_2
    L5_2 = L3_2
    L4_2 = L3_2.showBlackOverlay
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
    L5_2 = L3_2
    L4_2 = L3_2.animationEffect
    L4_2(L5_2)
    L4_2 = L3_2.view
    L46_1 = L4_2
    L4_2 = L3_2.rightText
    L4_2 = L4_2.text
    L48_1 = L4_2
    L5_2 = L2_2
    L4_2 = L2_2.insert
    L6_2 = L46_1
    L4_2(L5_2, L6_2)
  else
    L3_2 = L0_1
    L3_2 = L3_2.getScene
    L4_2 = "Scenes.WorldMap"
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.questManager
    L3_2.isBoss = false
  end
end

L28_1.setupSceneForQuest = L62_1

function L62_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  A0_2.mode = "battle"
  L3_2 = A0_2.navBar
  L3_2.helpId = 16
  L3_2 = A0_2.opStat
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = L14_1
  L5_2 = L5_2.darkBlueColor
  L5_2, L6_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A1_2.params
  if L3_2 then
    L3_2 = A1_2.params
    L3_2 = L3_2.opponent
    if L3_2 ~= nil then
      L3_2 = A1_2.params
      L3_2 = L3_2.opponent
      A0_2.currentOpponent = L3_2
      L3_2 = log2
      L4_2 = "Opponent Name & id:"
      L5_2 = A0_2.currentOpponent
      L5_2 = L5_2.name
      L6_2 = A0_2.currentOpponent
      L6_2 = L6_2.id
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = A0_2.currentOpponent
      L3_2 = L3_2.powerRating
      if L3_2 == 4 then
        L3_2 = A0_2.opStat
        L4_2 = L3_2
        L3_2 = L3_2.setFillColor
        L5_2 = L14_1
        L5_2 = L5_2.redColor
        L5_2, L6_2 = L5_2()
        L3_2(L4_2, L5_2, L6_2)
      end
      L3_2 = A0_2.currentOpponent
      L3_2 = L3_2.powerRating
      if L3_2 == 1 then
        L3_2 = A0_2.opStat
        L4_2 = L3_2
        L3_2 = L3_2.setFillColor
        L5_2 = L14_1
        L5_2 = L5_2.greenColor
        L5_2, L6_2 = L5_2()
        L3_2(L4_2, L5_2, L6_2)
      end
    end
  end
  L3_2 = A0_2.descLabel
  L4_2 = L5_1
  L4_2 = L4_2["Battle card select title"]
  L3_2.text = L4_2
  L3_2 = A0_2.opponentLabel
  L4_2 = L5_1
  L4_2 = L4_2["Your opponent's power rating is"]
  L5_2 = ":"
  L4_2 = L4_2 .. L5_2
  L3_2.text = L4_2
  L3_2 = L5_1
  L3_2 = L3_2.lang
  if L3_2 ~= "en" then
    L3_2 = L5_1
    L3_2 = L3_2.lang
    if L3_2 ~= "fr" then
      goto lbl_73
    end
  end
  L3_2 = A0_2.opponentLabel
  L4_2 = A0_2.opponentLabel
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L4_2 = 5 + L4_2
  L3_2.x = L4_2
  goto lbl_79
  ::lbl_73::
  L3_2 = A0_2.opponentLabel
  L4_2 = A0_2.opponentLabel
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L4_2 = 140 - L4_2
  L3_2.x = L4_2
  ::lbl_79::
  L3_2 = A0_2.opStat
  L4_2 = L57_1
  L5_2 = A0_2.currentOpponent
  L5_2 = L5_2.powerRating
  L4_2 = L4_2(L5_2)
  L3_2.text = L4_2
  L3_2 = L5_1
  L3_2 = L3_2.lang
  if L3_2 ~= "en" then
    L3_2 = L5_1
    L3_2 = L3_2.lang
    if L3_2 ~= "fr" then
      goto lbl_100
    end
  end
  L3_2 = A0_2.opStat
  L4_2 = A0_2.opStat
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L4_2 = 144 - L4_2
  L3_2.x = L4_2
  goto lbl_106
  ::lbl_100::
  L3_2 = A0_2.opStat
  L4_2 = A0_2.opStat
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L4_2 = 5 + L4_2
  L3_2.x = L4_2
  ::lbl_106::
  L3_2 = A0_2.navBar
  L3_2.previousScene = "Scenes.Battle"
  L3_2 = "Scenes.Battle"
  _backAction = L3_2
end

L28_1.setupSceneForBattle = L62_1

function L62_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = "Scenes.Home"
  _backAction = L3_2
  L3_2 = L15_1
  L3_2 = L3_2.newOnScene
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = A1_2.params
  A0_2.params = L3_2
  L3_2 = A0_2.totalPowerLabel
  L4_2 = L5_1
  L4_2 = L4_2.adjustNumber
  L5_2 = "0"
  L4_2 = L4_2(L5_2)
  L3_2.text = L4_2
  L4_2 = A0_2
  L3_2 = A0_2.setupCardScrollers
  L3_2(L4_2)
  L3_2 = A0_2.navBar
  L3_2.currentScene = "Scenes.ChooseDeck"
  L3_2 = A0_2.navBar
  L4_2 = L3_2
  L3_2 = L3_2.setNectar
  L5_2 = mainPlayer
  L5_2 = L5_2.nectar
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.navBar
  L4_2 = L3_2
  L3_2 = L3_2.updateGold
  L3_2(L4_2)
  L3_2 = A0_2.navBar
  L4_2 = L3_2
  L3_2 = L3_2.setEnableButtons
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = L54_1
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = transition
  L3_2 = L3_2.cancel
  L4_2 = "quest_trans"
  L3_2(L4_2)
  L3_2 = display
  L3_2 = L3_2.remove
  L4_2 = L46_1
  L3_2(L4_2)
  L3_2 = A1_2.params
  if L3_2 then
    L3_2 = A1_2.params
    L3_2 = L3_2.previousScene
    if L3_2 then
      L3_2 = A0_2.navBar
      L4_2 = A1_2.params
      L4_2 = L4_2.previousScene
      L3_2.previousScene = L4_2
      L3_2 = A1_2.params
      L3_2 = L3_2.previousScene
      _backAction = L3_2
    end
    L3_2 = A0_2.chatButton
    if L3_2 then
      L3_2 = A1_2.params
      L3_2 = L3_2.mode
      A0_2.chooseDeckMode = L3_2
      L3_2 = L15_1
      L4_2 = L3_2
      L3_2 = L3_2.setChooseDeckMode
      L5_2 = A0_2
      L3_2(L4_2, L5_2)
    end
    L3_2 = A1_2.params
    L3_2 = L3_2.mode
    if L3_2 == "quest" then
      L4_2 = A0_2
      L3_2 = A0_2.setupSceneForQuest
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    else
      L4_2 = A0_2
      L3_2 = A0_2.setupSceneForBattle
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
end

L28_1.setupScene = L62_1

function L62_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L30_1
  L4_2 = L29_1
  L4_2 = L4_2[1]
  L4_2 = L4_2.id
  L3_2 = L3_2[L4_2]
  L4_2 = L12_1
  L4_2 = L4_2.pointAtObjectInView
  L5_2 = L3_2.imageRect
  L6_2 = L3_2.view
  L4_2(L5_2, L6_2)
  L50_1 = A2_2
end

L28_1.pointAtFirstCard = L62_1

function L62_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = mainPlayer
    L7_2 = L7_2.heroSet
    if L7_2 then
      L7_2 = mainPlayer
      L7_2 = L7_2.heroSet
      L8_2 = L6_2.card
      L8_2 = L8_2.baseId
      L7_2 = L7_2[L8_2]
      if L7_2 then
        if A1_2 then
          L8_2 = L6_2
          L7_2 = L6_2.removeEnterFrameListener
          L7_2(L8_2)
        else
          L8_2 = L6_2
          L7_2 = L6_2.addEnterFrameListener
          L7_2(L8_2)
        end
      end
    end
  end
end

heroAnimationHandler = L62_1

function L62_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = log3
    L5_2 = L0_1
    L5_2 = L5_2.getSceneName
    L6_2 = "current"
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L5_2(L6_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L4_2 = A0_2.chatButtonTimer
    if L4_2 then
      L4_2 = A0_2.chatButton
      if L4_2 then
        L4_2 = transition
        L4_2 = L4_2.cancel
        L5_2 = "chatButtonAnime"
        L4_2(L5_2)
        L4_2 = A0_2.chatButton
        L4_2.continueAnimation = false
        L4_2 = A0_2.chatButton
        L4_2 = L4_2.view
        L4_2.xScale = 1
        L4_2 = A0_2.chatButton
        L4_2 = L4_2.view
        L4_2.yScale = 1
        L4_2 = timer
        L4_2 = L4_2.cancel
        L5_2 = A0_2.chatButtonTimer
        L4_2(L5_2)
      end
    end
    L4_2 = heroAnimationHandler
    L5_2 = L30_1
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = pairs
    L5_2 = L30_1
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = mainPlayer
      L9_2 = L9_2.heroSet
      if L9_2 then
        L9_2 = pairs
        L10_2 = mainPlayer
        L10_2 = L10_2.heroSet
        L9_2, L10_2, L11_2 = L9_2(L10_2)
        for L12_2, L13_2 in L9_2, L10_2, L11_2 do
          L14_2 = L13_2.id
          L15_2 = L8_2.card
          L15_2 = L15_2.baseId
          if L14_2 == L15_2 then
            L14_2 = L8_2.dimRect
            if L14_2 then
              L14_2 = L8_2.view
              L15_2 = L14_2
              L14_2 = L14_2.removeEventListener
              L16_2 = "touch"
              L17_2 = L60_1
              L14_2(L15_2, L16_2, L17_2)
              L14_2 = L8_2.selectedView
              L14_2.alpha = 1
              L14_2 = L8_2.selectedBG
              L14_2.alpha = 1
              L14_2 = L8_2.dimRect
              L15_2 = L14_2
              L14_2 = L14_2.removeSelf
              L14_2(L15_2)
              L8_2.dimRect = nil
            end
          end
        end
      end
      L10_2 = L8_2
      L9_2 = L8_2.removeSelf
      L9_2(L10_2)
      L9_2 = L30_1
      L9_2[L7_2] = nil
    end
    L4_2 = clearHeroSlot
    L4_2()
  end
end

L28_1.hide = L62_1

function L62_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.view
  L3_2 = L15_1
  L3_2 = L3_2.removeFromScene
  L4_2 = L28_1
  L3_2(L4_2)
  L3_2 = L27_1
  if L3_2 then
    L3_2 = log3
    L4_2 = "removeSelf for comboButton is called"
    L3_2(L4_2)
    L3_2 = L27_1
    L4_2 = L3_2
    L3_2 = L3_2.removeSelf
    L3_2(L4_2)
  end
end

L28_1.destroy = L62_1
L63_1 = L28_1
L62_1 = L28_1.addEventListener
L64_1 = "create"
L65_1 = L28_1
L62_1(L63_1, L64_1, L65_1)
L63_1 = L28_1
L62_1 = L28_1.addEventListener
L64_1 = "show"
L65_1 = L28_1
L62_1(L63_1, L64_1, L65_1)
L63_1 = L28_1
L62_1 = L28_1.addEventListener
L64_1 = "hide"
L65_1 = L28_1
L62_1(L63_1, L64_1, L65_1)
L63_1 = L28_1
L62_1 = L28_1.addEventListener
L64_1 = "destroy"
L65_1 = L28_1
L62_1(L63_1, L64_1, L65_1)
return L28_1
