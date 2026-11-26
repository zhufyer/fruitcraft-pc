local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1, L65_1, L66_1, L67_1, L68_1, L69_1, L70_1, L71_1, L72_1, L73_1, L74_1, L75_1, L76_1, L77_1, L78_1, L79_1, L80_1, L81_1, L82_1, L83_1, L84_1, L85_1, L86_1, L87_1, L88_1, L89_1, L90_1, L91_1, L92_1, L93_1, L94_1, L95_1, L96_1, L97_1, L98_1, L99_1, L100_1, L101_1, L102_1, L103_1, L104_1, L105_1, L106_1, L107_1, L108_1, L109_1, L110_1, L111_1, L112_1, L113_1, L114_1, L115_1, L116_1, L117_1, L118_1, L119_1, L120_1, L121_1, L122_1, L123_1, L124_1, L125_1, L126_1, L127_1, L128_1, L129_1, L130_1, L131_1, L132_1, L133_1, L134_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.SceneCreator"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Views.CardView"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Language"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Constants"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "widget"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Utils.Toolbox"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Views.LiveBattlePowerView"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Views.LiveBattlePowerIndicatorView"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Models.LiveBattleManager"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Views.LiveBattleInfoView"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Views.ActivityIndicatorView"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Views.battleCardSlot"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Tutorial.TutorialManager"
L13_1 = L13_1(L14_1)
L14_1 = require
L15_1 = "Views.EffectsManager"
L14_1 = L14_1(L15_1)
L15_1 = require
L16_1 = "Models.UserCard"
L15_1 = L15_1(L16_1)
L16_1 = require
L17_1 = "Components.TDButtonView"
L16_1 = L16_1(L17_1)
L17_1 = require
L18_1 = "Components.TDDialogView"
L17_1 = L17_1(L18_1)
L18_1 = require
L19_1 = "Views.HeroView"
L18_1 = L18_1(L19_1)
L19_1 = L1_1.newScene
L20_1 = "LiveBattle"
L19_1 = L19_1(L20_1)
L19_1.battleManager = nil
L19_1.mainEnemyId = 0
L19_1.mainEnemyName = nil
L19_1.mainFriendName = nil
L20_1 = nil
L19_1.isPlayerDeployedHero = nil
L21_1 = nil
L22_1 = {}
L23_1 = nil
L24_1 = nil
L25_1 = nil
L26_1 = nil
L27_1 = 2
L28_1 = 5
L29_1 = 10
L30_1 = display
L30_1 = L30_1.contentWidth
L30_1 = L30_1 * 0.17
L31_1 = 133
L32_1 = display
L32_1 = L32_1.contentHeight
L32_1 = L32_1 - 90
L32_1 = L32_1 - L27_1
L32_1 = L32_1 - L28_1
L32_1 = L32_1 * 0.5
L33_1 = math
L33_1 = L33_1.floor
L34_1 = L32_1 / 1.343434
L33_1 = L33_1(L34_1)
L34_1 = L33_1 * 2
L35_1 = L30_1
L36_1 = 7
L37_1 = 25
L38_1 = 3
L39_1 = 30
L40_1 = nil
L41_1 = nil
L42_1 = nil
L43_1 = nil
L44_1 = nil
L45_1 = nil
L46_1 = nil
L47_1 = nil
L48_1 = nil
L49_1 = nil
L50_1 = nil
L19_1.friends = nil
L19_1.enemies = nil
L19_1.everyPlayerCards = nil
L51_1 = nil
L52_1 = nil
L53_1 = nil
L54_1 = nil
L55_1 = nil
L56_1 = nil
L57_1 = nil
L58_1 = nil
L59_1 = nil
L60_1 = nil
L61_1 = nil
L62_1 = nil
L63_1 = nil
L64_1 = nil
L65_1 = 0
L66_1 = 0
L67_1 = 0
L68_1 = 0
L69_1 = nil
L70_1 = nil
L71_1 = L4_1.LIVE_BATTLE_FIRST_ROUND_TIME
L72_1 = L4_1.LIVE_BATTLE_ROUND_TIME
L73_1 = L4_1.LIVE_BATTLE_HELP_TIMEOUT
L74_1 = -1
L75_1 = 1
L76_1 = 4
L77_1 = {}
L78_1 = 0
L79_1 = 0
L80_1 = 0
L81_1 = L76_1
L82_1 = nil
L19_1.ownerTeamId = 0
L19_1.battle_ID = 0
L83_1 = false
L84_1 = false
L85_1 = nil
L86_1 = {}
L87_1 = {}
L88_1 = nil
L89_1 = nil
L90_1 = nil
L91_1 = nil
L92_1 = nil
L93_1 = nil
L94_1 = nil
L95_1 = nil
L96_1 = nil
L97_1 = nil
L98_1 = nil
L99_1 = nil
L100_1 = nil
L101_1 = nil
L102_1 = nil
L103_1 = nil
L104_1 = nil
L105_1 = nil
L106_1 = nil
L107_1 = nil
L108_1 = nil
L109_1 = nil
L110_1 = {}
L111_1 = nil
L112_1 = nil
L113_1 = nil
L114_1 = false
L115_1 = nil
L116_1 = nil

function L117_1()
  local L0_2, L1_2
  L0_2 = {}
  L1_2 = L75_1
  L0_2.currentGameRound = L1_2
  L1_2 = L86_1
  L0_2.myBattleCardSlot = L1_2
  L1_2 = L73_1
  L0_2.helpTime = L1_2
  L1_2 = L99_1
  L0_2.helpTimeRect = L1_2
  L1_2 = L19_1
  L1_2 = L1_2.hideHelpBar
  L0_2.hideHelpBar = L1_2
  L1_2 = L19_1
  L0_2.scene = L1_2
  return L0_2
end

L19_1.liveBattleGetInfo = L117_1

function L117_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = pairs
  L4_2 = A0_2
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
        if A1_2 then
          L9_2 = L7_2
          L8_2 = L7_2.removeEnterFrameListener
          L10_2 = A2_2
          L8_2(L9_2, L10_2)
        else
          L9_2 = L7_2
          L8_2 = L7_2.addEnterFrameListener
          L8_2(L9_2)
        end
      end
    end
  end
end

function L118_1(A0_2)
  local L1_2
  L1_2 = A0_2.currentGameRound
  if not L1_2 then
    L1_2 = L75_1
  end
  L75_1 = L1_2
  L1_2 = A0_2.numberOfAvilableSlots
  if not L1_2 then
    L1_2 = L81_1
  end
  L81_1 = L1_2
end

L19_1.liveBattleSetIfno = L118_1

function L118_1()
  local L0_2, L1_2
  L0_2 = transition
  L0_2 = L0_2.pause
  L1_2 = "LiveBattle"
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.pause
  L1_2 = L99_1
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.pause
  L1_2 = L92_1
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.pause
  L1_2 = L94_1
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.pause
  L1_2 = L100_1
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.pause
  L1_2 = L101_1
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.pause
  L1_2 = L102_1
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.pause
  L1_2 = L103_1
  L0_2(L1_2)
end

function L119_1()
  local L0_2, L1_2
  L0_2 = transition
  L0_2 = L0_2.resume
  L1_2 = "LiveBattle"
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.resume
  L1_2 = L99_1
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.resume
  L1_2 = L92_1
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.resume
  L1_2 = L94_1
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.resume
  L1_2 = L100_1
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.resume
  L1_2 = L101_1
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.resume
  L1_2 = L102_1
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.resume
  L1_2 = L103_1
  L0_2(L1_2)
end

function L120_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L104_1
  if L0_2 ~= nil then
    L0_2 = timer
    L0_2 = L0_2.pause
    L1_2 = L104_1
    L0_2(L1_2)
  end
  L0_2 = L105_1
  if L0_2 ~= nil then
    L0_2 = timer
    L0_2 = L0_2.pause
    L1_2 = L105_1
    L0_2(L1_2)
  end
  L0_2 = L106_1
  if L0_2 ~= nil then
    L0_2 = timer
    L0_2 = L0_2.pause
    L1_2 = L106_1
    L0_2(L1_2)
  end
  L0_2 = L107_1
  if L0_2 ~= nil then
    L0_2 = timer
    L0_2 = L0_2.pause
    L1_2 = L107_1
    L0_2(L1_2)
  end
  L0_2 = 1
  L1_2 = 4
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L86_1
    L4_2 = L4_2[L3_2]
    if L4_2 ~= nil then
      L4_2 = L86_1
      L4_2 = L4_2[L3_2]
      L4_2 = L4_2.timer
      L4_2 = L4_2.state
      if L4_2 == 1 then
        L4_2 = L86_1
        L4_2 = L4_2[L3_2]
        L4_2 = L4_2.timer
        L5_2 = L4_2
        L4_2 = L4_2.pauseCoinTimer
        L4_2(L5_2)
      end
    end
  end
end

function L121_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L104_1
  if L0_2 ~= nil then
    L0_2 = timer
    L0_2 = L0_2.resume
    L1_2 = L104_1
    L0_2(L1_2)
  end
  L0_2 = L105_1
  if L0_2 ~= nil then
    L0_2 = timer
    L0_2 = L0_2.resume
    L1_2 = L105_1
    L0_2(L1_2)
  end
  L0_2 = L106_1
  if L0_2 ~= nil then
    L0_2 = timer
    L0_2 = L0_2.resume
    L1_2 = L106_1
    L0_2(L1_2)
  end
  L0_2 = L107_1
  if L0_2 ~= nil then
    L0_2 = timer
    L0_2 = L0_2.resume
    L1_2 = L107_1
    L0_2(L1_2)
  end
  L0_2 = 1
  L1_2 = 4
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L86_1
    L4_2 = L4_2[L3_2]
    if L4_2 ~= nil then
      L4_2 = L86_1
      L4_2 = L4_2[L3_2]
      L4_2 = L4_2.timer
      L4_2 = L4_2.state
      if L4_2 == -2 then
        L4_2 = L86_1
        L4_2 = L4_2[L3_2]
        L4_2 = L4_2.timer
        L5_2 = L4_2
        L4_2 = L4_2.resumeCoinTimer
        L4_2(L5_2)
      end
    end
  end
end

function L122_1()
  local L0_2, L1_2
  L0_2 = L118_1
  L0_2()
  L0_2 = L120_1
  L0_2()
end

L19_1.pauseGame = L122_1

function L122_1()
  local L0_2, L1_2
  L0_2 = L119_1
  L0_2()
  L0_2 = L121_1
  L0_2()
end

L19_1.resumeGame = L122_1

function L122_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = log3
  L3_2 = "scene.setCardsRejected_UIChange"
  L4_2 = "slotID: "
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  if A1_2 then
    L2_2 = transition
    L2_2 = L2_2.cancel
    L3_2 = "liveBattleHeroAnimation"
    L2_2(L3_2)
    L2_2 = L19_1
    L2_2 = L2_2.revealHeroTimer
    if L2_2 then
      L2_2 = timer
      L2_2 = L2_2.cancel
      L3_2 = L19_1
      L3_2 = L3_2.revealHeroTimer
      L2_2(L3_2)
      L2_2 = L19_1
      L2_2.revealHeroTimer = nil
    end
    L2_2 = L19_1
    L2_2 = L2_2.shiftSlotAndCardsTimer
    if L2_2 then
      L2_2 = timer
      L2_2 = L2_2.cancel
      L3_2 = L19_1
      L3_2 = L3_2.shiftSlotAndCardsTimer
      L2_2(L3_2)
      L2_2 = L19_1
      L2_2.shiftSlotAndCardsTimer = nil
    end
    L2_2 = L20_1
    L2_2.alpha = 0
    L2_2 = L20_1
    L3_2 = L2_2
    L2_2 = L2_2.removeHero
    L2_2(L3_2)
    L2_2 = display
    L2_2 = L2_2.remove
    L3_2 = L20_1
    L3_2 = L3_2.view
    L2_2(L3_2)
    L2_2 = nil
    L20_1 = L2_2
    L2_2 = L19_1
    L2_2 = L2_2.heroAbilities
    if L2_2 then
      L2_2 = L19_1
      L2_2 = L2_2.heroAbilities
      L2_2 = L2_2.view
      if L2_2 then
        L2_2 = L19_1
        L2_2 = L2_2.heroAbilities
        L2_2 = L2_2.view
        L2_2.alpha = 0
        L2_2 = display
        L2_2 = L2_2.remove
        L3_2 = L19_1
        L3_2 = L3_2.heroAbilities
        L3_2 = L3_2.view
        L2_2(L3_2)
        L2_2 = L19_1
        L2_2.heroAbilities = nil
      end
    end
    L2_2 = L19_1
    L2_2 = L2_2.showChooseBar
    L2_2()
    L2_2 = L67_1
    L3_2 = L47_1
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.card
    L3_2 = L3_2.power
    L2_2 = L2_2 - L3_2
    L67_1 = L2_2
    L2_2 = L62_1
    L3_2 = L2_2
    L2_2 = L2_2.setNumber
    L4_2 = L67_1
    L5_2 = L65_1
    L4_2 = L4_2 - L5_2
    L2_2(L3_2, L4_2)
    L2_2 = L19_1
    L2_2 = L2_2.updatePowerIndicatorView
    L2_2()
  else
    L2_2 = 1
    L3_2 = 4
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L82_1
      L6_2 = L6_2[L5_2]
      if L6_2 ~= nil then
        L6_2 = L82_1
        L6_2 = L6_2[L5_2]
        L6_2 = L6_2.card
        L6_2 = L6_2.id
        if L6_2 == A0_2 then
          L6_2 = L67_1
          L7_2 = L82_1
          L7_2 = L7_2[L5_2]
          L7_2 = L7_2.card
          L7_2 = L7_2.power
          L6_2 = L6_2 - L7_2
          L67_1 = L6_2
          L6_2 = L62_1
          L7_2 = L6_2
          L6_2 = L6_2.setNumber
          L8_2 = L67_1
          L9_2 = L65_1
          L8_2 = L8_2 - L9_2
          L6_2(L7_2, L8_2)
          L6_2 = L19_1
          L6_2 = L6_2.updatePowerIndicatorView
          L6_2()
          L6_2 = L82_1
          L6_2 = L6_2[L5_2]
          L6_2.isError = true
          L6_2 = L82_1
          L6_2 = L6_2[L5_2]
          L6_2 = L6_2.view
          L6_2.alpha = 0
          break
        end
      end
    end
  end
end

L19_1.setCardsRejected_UIChange = L122_1

function L122_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  
  function L0_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = math
    L1_3 = L1_3.abs
    L2_3 = L67_1
    L3_3 = L65_1
    L2_3 = L2_3 - L3_3
    L1_3 = L1_3(L2_3)
    L2_3 = math
    L2_3 = L2_3.abs
    L3_3 = L68_1
    L4_3 = L66_1
    L3_3 = L3_3 - L4_3
    L2_3 = L2_3(L3_3)
    if L1_3 > L2_3 then
      L1_3 = log3
      L2_3 = "change mode is increasing"
      L1_3(L2_3)
      L1_3 = math
      L1_3 = L1_3.abs
      L2_3 = L67_1
      L3_3 = L65_1
      L2_3 = L2_3 - L3_3
      L1_3 = L1_3(L2_3)
      L2_3 = math
      L2_3 = L2_3.abs
      L3_3 = L69_1
      L2_3 = L2_3(L3_3)
      L2_3 = 1 + L2_3
      L3_3 = math
      L3_3 = L3_3.abs
      L4_3 = L68_1
      L5_3 = L66_1
      L4_3 = L4_3 - L5_3
      L3_3 = L3_3(L4_3)
      L2_3 = L2_3 * L3_3
      L3_3 = math
      L3_3 = L3_3.abs
      L4_3 = L69_1
      L3_3 = L3_3(L4_3)
      L3_3 = 2 * L3_3
      L2_3 = L2_3 / L3_3
      if L1_3 < L2_3 then
        L1_3 = log3
        L2_3 = "new diff is smaller than old diff scale no needs any update"
        L1_3(L2_3)
        L1_3 = math
        L1_3 = L1_3.abs
        L2_3 = L69_1
        L1_3 = L1_3(L2_3)
        L2_3 = L67_1
        L3_3 = L65_1
        L2_3 = L2_3 - L3_3
        L3_3 = math
        L3_3 = L3_3.abs
        L4_3 = L68_1
        L5_3 = L66_1
        L4_3 = L4_3 - L5_3
        L3_3 = L3_3(L4_3)
        L2_3 = L2_3 / L3_3
        L1_3 = L1_3 * L2_3
        L69_1 = L1_3
        L1_3 = log3
        L2_3 = "new scale is : "
        L3_3 = L69_1
        L1_3(L2_3, L3_3)
        L1_3 = L63_1
        L2_3 = L1_3
        L1_3 = L1_3.setNumber
        L3_3 = L69_1
        L1_3(L2_3, L3_3)
      else
        L1_3 = log3
        L2_3 = L55_1
        L3_3 = L53_1
        L1_3(L2_3, L3_3)
        L1_3 = L55_1
        L2_3 = L53_1
        if L1_3 ~= L2_3 then
          L1_3 = L55_1
          if L1_3 ~= nil and A0_3 ~= "real game" then
            goto lbl_116
          end
        end
        L1_3 = log3
        L2_3 = "new diff is bigger than old diff scale needs to be update"
        L1_3(L2_3)
        L1_3 = log3
        L2_3 = "old scale : "
        L3_3 = L69_1
        L1_3(L2_3, L3_3)
        L1_3 = math
        L1_3 = L1_3.abs
        L2_3 = L69_1
        L1_3 = L1_3(L2_3)
        L1_3 = L1_3 + 1
        L1_3 = L1_3 * 0.5
        L69_1 = L1_3
        L1_3 = L67_1
        L2_3 = L65_1
        L1_3 = L1_3 - L2_3
        if L1_3 < 0 then
          L1_3 = L69_1
          L1_3 = -L1_3
          L69_1 = L1_3
        end
        L1_3 = log3
        L2_3 = "new scale : "
        L3_3 = L69_1
        L1_3(L2_3, L3_3)
        L1_3 = L63_1
        L2_3 = L1_3
        L1_3 = L1_3.setNumber
        L3_3 = L69_1
        L1_3(L2_3, L3_3)
        goto lbl_268
        ::lbl_116::
        L1_3 = log3
        L2_3 = "selected card changed"
        L1_3(L2_3)
      end
    else
      L1_3 = math
      L1_3 = L1_3.abs
      L2_3 = L67_1
      L3_3 = L65_1
      L2_3 = L2_3 - L3_3
      L1_3 = L1_3(L2_3)
      L2_3 = math
      L2_3 = L2_3.abs
      L3_3 = L68_1
      L4_3 = L66_1
      L3_3 = L3_3 - L4_3
      L2_3 = L2_3(L3_3)
      if L1_3 < L2_3 then
        L1_3 = log3
        L2_3 = "change mode is decreasing"
        L1_3(L2_3)
        L1_3 = math
        L1_3 = L1_3.abs
        L2_3 = L67_1
        L3_3 = L65_1
        L2_3 = L2_3 - L3_3
        L1_3 = L1_3(L2_3)
        L2_3 = math
        L2_3 = L2_3.abs
        L3_3 = L68_1
        L4_3 = L66_1
        L3_3 = L3_3 - L4_3
        L2_3 = L2_3(L3_3)
        L2_3 = L2_3 / 2
        if L1_3 > L2_3 then
          L1_3 = log3
          L2_3 = "new diff is smaller than old diff scale no needs any update"
          L1_3(L2_3)
          L1_3 = math
          L1_3 = L1_3.abs
          L2_3 = L69_1
          L1_3 = L1_3(L2_3)
          L2_3 = L67_1
          L3_3 = L65_1
          L2_3 = L2_3 - L3_3
          L3_3 = math
          L3_3 = L3_3.abs
          L4_3 = L68_1
          L5_3 = L66_1
          L4_3 = L4_3 - L5_3
          L3_3 = L3_3(L4_3)
          L2_3 = L2_3 / L3_3
          L1_3 = L1_3 * L2_3
          L69_1 = L1_3
          L1_3 = log3
          L2_3 = "new scale is : "
          L3_3 = L69_1
          L1_3(L2_3, L3_3)
          L1_3 = L63_1
          L2_3 = L1_3
          L1_3 = L1_3.setNumber
          L3_3 = L69_1
          L1_3(L2_3, L3_3)
        else
          L1_3 = log3
          L2_3 = L55_1
          L3_3 = L53_1
          L1_3(L2_3, L3_3)
          L1_3 = L55_1
          L2_3 = L53_1
          if L1_3 ~= L2_3 then
            L1_3 = L55_1
            if L1_3 ~= nil and A0_3 ~= "real game" then
              goto lbl_238
            end
          end
          L1_3 = L67_1
          L2_3 = L65_1
          L1_3 = L1_3 - L2_3
          if L1_3 ~= 0 then
            L1_3 = log3
            L2_3 = "new diff is bigger than old diff scale needs to be update"
            L1_3(L2_3)
            L1_3 = log3
            L2_3 = "old scale : "
            L3_3 = L69_1
            L1_3(L2_3, L3_3)
            L1_3 = math
            L1_3 = L1_3.abs
            L2_3 = L69_1
            L1_3 = L1_3(L2_3)
            L1_3 = L1_3 * 0.5
            L69_1 = L1_3
            L1_3 = L67_1
            L2_3 = L65_1
            L1_3 = L1_3 - L2_3
            if L1_3 < 0 then
              L1_3 = L69_1
              L1_3 = -L1_3
              L69_1 = L1_3
            end
            L1_3 = log3
            L2_3 = "new scale : "
            L3_3 = L69_1
            L1_3(L2_3, L3_3)
            L1_3 = L63_1
            L2_3 = L1_3
            L1_3 = L1_3.setNumber
            L3_3 = L69_1
            L1_3(L2_3, L3_3)
          else
            L1_3 = log3
            L2_3 = "no diff between friends and enemies"
            L1_3(L2_3)
            L1_3 = 0
            L69_1 = L1_3
            L1_3 = L63_1
            L2_3 = L1_3
            L1_3 = L1_3.setNumber
            L3_3 = 0
            L1_3(L2_3, L3_3)
            goto lbl_268
            ::lbl_238::
            L1_3 = log3
            L2_3 = "selected card changed"
            L1_3(L2_3)
          end
        end
      else
        L1_3 = L67_1
        L2_3 = L65_1
        L1_3 = L1_3 - L2_3
        L2_3 = L68_1
        L3_3 = L66_1
        L2_3 = L2_3 - L3_3
        if L1_3 == L2_3 then
          L1_3 = log3
          L2_3 = "no deff with old scale"
          L1_3(L2_3)
        else
          L1_3 = log3
          L2_3 = "no deff with old scale but sign is different"
          L1_3(L2_3)
          L1_3 = L69_1
          L1_3 = -L1_3
          L69_1 = L1_3
          L1_3 = log3
          L2_3 = "new scale : "
          L3_3 = L69_1
          L1_3(L2_3, L3_3)
          L1_3 = L63_1
          L2_3 = L1_3
          L1_3 = L1_3.setNumber
          L3_3 = L69_1
          L1_3(L2_3, L3_3)
        end
      end
    end
    ::lbl_268::
  end
  
  L1_2 = log3
  L2_2 = "number of selected cards : "
  L3_2 = L78_1
  L1_2(L2_2, L3_2)
  L1_2 = log3
  L2_2 = "number of selected cards temp : "
  L3_2 = L80_1
  L1_2(L2_2, L3_2)
  L1_2 = L113_1
  if L1_2 == true then
    L1_2 = log3
    L2_2 = "First PowerIndicator Update"
    L1_2(L2_2)
    L1_2 = L65_1
    L2_2 = L66_1
    if L1_2 == L2_2 then
      L1_2 = log3
      L2_2 = "powerIndicator update is for main player checking card power"
      L1_2(L2_2)
      L1_2 = 0
      L70_1 = L1_2
      L1_2 = log3
      L2_2 = "scaleTemp update to:"
      L3_2 = L70_1
      L1_2(L2_2, L3_2)
      L1_2 = 0.5
      L69_1 = L1_2
      L1_2 = L63_1
      L2_2 = L1_2
      L1_2 = L1_2.setNumber
      L3_2 = L69_1
      L1_2(L2_2, L3_2)
      L1_2 = log3
      L2_2 = L55_1
      L1_2(L2_2)
    else
      L1_2 = log3
      L2_2 = "enemy card changed power indicator"
      L1_2(L2_2)
      L1_2 = -0.5
      L70_1 = L1_2
      L1_2 = log3
      L2_2 = "scaleTemp update to:"
      L3_2 = L70_1
      L1_2(L2_2, L3_2)
      L1_2 = -0.5
      L69_1 = L1_2
      L1_2 = L63_1
      L2_2 = L1_2
      L1_2 = L1_2.setNumber
      L3_2 = L69_1
      L1_2(L2_2, L3_2)
      L1_2 = L65_1
      L66_1 = L1_2
    end
    L1_2 = false
    L113_1 = L1_2
    L1_2 = log3
    L2_2 = "scale : "
    L3_2 = L69_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = log3
    L2_2 = L65_1
    L3_2 = L66_1
    L1_2(L2_2, L3_2)
    L1_2 = L80_1
    L2_2 = L78_1
    if L1_2 == L2_2 then
      L1_2 = L65_1
      L2_2 = L66_1
      if L1_2 == L2_2 then
        L1_2 = log3
        L2_2 = "powerIndicator update is for main player checking card power"
        L1_2(L2_2)
        L1_2 = log3
        L2_2 = math
        L2_2 = L2_2.abs
        L3_2 = L67_1
        L4_2 = L65_1
        L3_2 = L3_2 - L4_2
        L2_2 = L2_2(L3_2)
        L3_2 = math
        L3_2 = L3_2.abs
        L4_2 = L68_1
        L5_2 = L66_1
        L4_2 = L4_2 - L5_2
        L3_2, L4_2, L5_2 = L3_2(L4_2)
        L1_2(L2_2, L3_2, L4_2, L5_2)
        L1_2 = log3
        L2_2 = "card is selected : "
        L3_2 = L53_1
        L1_2(L2_2, L3_2)
        L1_2 = L53_1
        if L1_2 ~= nil then
          L1_2 = log3
          L2_2 = "card picking"
          L1_2(L2_2)
          L1_2 = log3
          L2_2 = "card scale save : "
          L3_2 = L69_1
          L1_2(L2_2, L3_2)
          L1_2 = L0_2
          L1_2()
        else
          L1_2 = log3
          L2_2 = "card repicking"
          L1_2(L2_2)
          L1_2 = log3
          L2_2 = "old scale is : "
          L3_2 = L69_1
          L4_2 = L70_1
          L1_2(L2_2, L3_2, L4_2)
          L1_2 = log3
          L2_2 = "other players set card: "
          L3_2 = L114_1
          L1_2(L2_2, L3_2)
          L1_2 = L114_1
          if L1_2 == false then
            L1_2 = L70_1
            L69_1 = L1_2
          else
            L1_2 = log3
            L2_2 = "other players set card before"
            L1_2(L2_2)
            L1_2 = false
            L114_1 = L1_2
            L1_2 = L70_1
            L69_1 = L1_2
            L1_2 = L0_2
            L2_2 = "real game"
            L1_2(L2_2)
            L1_2 = L69_1
            L70_1 = L1_2
            L1_2 = log3
            L2_2 = "real game, scaleTemp update to:"
            L3_2 = L70_1
            L1_2(L2_2, L3_2)
            L1_2 = L67_1
            L2_2 = L65_1
            L66_1 = L2_2
            L68_1 = L1_2
          end
          L1_2 = L63_1
          L2_2 = L1_2
          L1_2 = L1_2.setNumber
          L3_2 = L69_1
          L1_2(L2_2, L3_2)
        end
    end
    else
      L1_2 = log3
      L2_2 = "game is really played"
      L1_2(L2_2)
      L1_2 = log3
      L2_2 = math
      L2_2 = L2_2.abs
      L3_2 = L67_1
      L4_2 = L65_1
      L3_2 = L3_2 - L4_2
      L2_2 = L2_2(L3_2)
      L3_2 = math
      L3_2 = L3_2.abs
      L4_2 = L68_1
      L5_2 = L66_1
      L4_2 = L4_2 - L5_2
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L1_2 = log3
      L2_2 = "old scale is : "
      L3_2 = L70_1
      L1_2(L2_2, L3_2)
      L1_2 = L70_1
      L69_1 = L1_2
      L1_2 = L63_1
      L2_2 = L1_2
      L1_2 = L1_2.setNumber
      L3_2 = L69_1
      L1_2(L2_2, L3_2)
      L1_2 = L78_1
      L80_1 = L1_2
      L1_2 = L0_2
      L2_2 = "real game"
      L1_2(L2_2)
      L1_2 = L69_1
      L70_1 = L1_2
      L1_2 = log3
      L2_2 = "real game, scaleTemp update to:"
      L3_2 = L70_1
      L1_2(L2_2, L3_2)
      L1_2 = L67_1
      L2_2 = L65_1
      L66_1 = L2_2
      L68_1 = L1_2
    end
  end
  L1_2 = L53_1
  L55_1 = L1_2
end

L19_1.updatePowerIndicatorView = L122_1

function L122_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L19_1
  L1_2 = L1_2.liveBattleTutorialIsActive
  if L1_2 == true then
    L1_2 = L19_1
    L1_2 = L1_2.liveBattleTutorialSequence
    if L1_2 == 1 then
      L1_2 = L19_1
      L1_2 = L1_2.liveBattleTutorialSequenceStep
      if L1_2 == 1 then
        L1_2 = L19_1
        L1_2.liveBattleTutorialSequenceStep = 2
        L1_2 = L19_1
        L1_2 = L1_2.weakEnemySteps
        L2_2 = L19_1
        L2_2 = L2_2.liveBattleTutorialSequenceStep
        L1_2(L2_2)
      end
    else
      L1_2 = L19_1
      L1_2 = L1_2.liveBattleTutorialSequence
      if L1_2 == 2 then
        L1_2 = L19_1
        L1_2 = L1_2.liveBattleTutorialSequenceStep
        if L1_2 == 1 then
          L1_2 = L19_1
          L1_2.liveBattleTutorialSequenceStep = 2
          L1_2 = L19_1
          L1_2 = L1_2.strongEnemySteps
          L2_2 = L19_1
          L2_2 = L2_2.liveBattleTutorialSequenceStep
          L1_2(L2_2)
        end
      else
        L1_2 = L19_1
        L1_2 = L1_2.liveBattleTutorialSequence
        if L1_2 == 3 then
          L1_2 = L19_1
          L1_2 = L1_2.liveBattleTutorialSequenceStep
          if L1_2 == 1 then
            L1_2 = L19_1
            L1_2.liveBattleTutorialSequenceStep = 2
            L1_2 = L19_1
            L1_2 = L1_2.heroAbilitySteps
            L2_2 = L19_1
            L2_2 = L2_2.liveBattleTutorialSequenceStep
            L1_2(L2_2)
          end
          L1_2 = L19_1
          L1_2 = L1_2.liveBattleTutorialSequenceStep
          if L1_2 == 5 then
            L1_2 = L19_1
            L1_2.liveBattleTutorialSequenceStep = 6
            L1_2 = L19_1
            L1_2 = L1_2.heroAbilitySteps
            L2_2 = L19_1
            L2_2 = L2_2.liveBattleTutorialSequenceStep
            L1_2(L2_2)
          end
        end
      end
    end
  end
  L1_2 = L53_1
  if L1_2 ~= nil then
    L1_2 = L53_1
    L1_2 = L1_2.selectedBG
    L1_2 = L1_2.isVisible
    if L1_2 ~= false then
      L1_2 = L78_1
      if L1_2 < 4 then
        L1_2 = L81_1
        if 0 < L1_2 then
          L1_2 = L67_1
          L2_2 = L53_1
          L2_2 = L2_2.card
          L2_2 = L2_2.power
          L1_2 = L1_2 - L2_2
          L67_1 = L1_2
        end
      end
    end
    L1_2 = L53_1
    L2_2 = L1_2
    L1_2 = L1_2.deselected
    L1_2(L2_2)
    L1_2 = nil
    L53_1 = L1_2
    L53_1 = A0_2
    L1_2 = L53_1
    L2_2 = L1_2
    L1_2 = L1_2.didSelect
    L1_2(L2_2)
    L1_2 = L78_1
    if L1_2 < 4 then
      L1_2 = L81_1
      if 0 < L1_2 then
        L1_2 = L67_1
        L2_2 = L53_1
        L2_2 = L2_2.card
        L2_2 = L2_2.power
        L1_2 = L1_2 + L2_2
        L67_1 = L1_2
        L1_2 = L62_1
        L2_2 = L1_2
        L1_2 = L1_2.setNumber
        L3_2 = L67_1
        L4_2 = L65_1
        L3_2 = L3_2 - L4_2
        L1_2(L2_2, L3_2)
        L1_2 = L19_1
        L1_2 = L1_2.updatePowerIndicatorView
        L1_2()
      end
    end
  else
    L1_2 = nil
    L53_1 = L1_2
    L53_1 = A0_2
    L1_2 = L53_1
    L2_2 = L1_2
    L1_2 = L1_2.didSelect
    L1_2(L2_2)
    L1_2 = L78_1
    if L1_2 < 4 then
      L1_2 = L81_1
      if 0 < L1_2 then
        goto lbl_130
      end
    end
    L1_2 = L19_1
    L1_2 = L1_2.isPlayerDeployedHero
    ::lbl_130::
    if L1_2 ~= true then
      L1_2 = L67_1
      L2_2 = L53_1
      L2_2 = L2_2.card
      L2_2 = L2_2.power
      L1_2 = L1_2 + L2_2
      L67_1 = L1_2
      L1_2 = L62_1
      L2_2 = L1_2
      L1_2 = L1_2.setNumber
      L3_2 = L67_1
      L4_2 = L65_1
      L3_2 = L3_2 - L4_2
      L1_2(L2_2, L3_2)
      L1_2 = L19_1
      L1_2 = L1_2.updatePowerIndicatorView
      L1_2()
    end
  end
  L1_2 = false
  L64_1 = L1_2
  L1_2 = L81_1
  if L1_2 == 0 then
    L1_2 = true
    L64_1 = L1_2
  end
end

L19_1.cardSelected = L122_1

function L122_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L19_1
  L1_2 = L1_2.liveBattleTutorialIsActive
  if L1_2 == true then
    L1_2 = L19_1
    L1_2 = L1_2.liveBattleTutorialSequence
    if L1_2 == 1 then
      L1_2 = L19_1
      L1_2 = L1_2.liveBattleTutorialSequenceStep
      if L1_2 == 2 then
        L1_2 = L19_1
        L1_2.liveBattleTutorialSequenceStep = 1
        L1_2 = L19_1
        L1_2 = L1_2.weakEnemySteps
        L2_2 = L19_1
        L2_2 = L2_2.liveBattleTutorialSequenceStep
        L1_2(L2_2)
      end
    else
      L1_2 = L19_1
      L1_2 = L1_2.liveBattleTutorialSequence
      if L1_2 == 2 then
        L1_2 = L19_1
        L1_2 = L1_2.liveBattleTutorialSequenceStep
        if L1_2 == 2 then
          L1_2 = L19_1
          L1_2.liveBattleTutorialSequenceStep = 1
          L1_2 = L19_1
          L1_2 = L1_2.strongEnemySteps
          L2_2 = L19_1
          L2_2 = L2_2.liveBattleTutorialSequenceStep
          L1_2(L2_2)
        end
      else
        L1_2 = L19_1
        L1_2 = L1_2.liveBattleTutorialSequence
        if L1_2 == 3 then
          L1_2 = L19_1
          L1_2 = L1_2.liveBattleTutorialSequenceStep
          if L1_2 == 2 then
            L1_2 = L19_1
            L1_2.liveBattleTutorialSequenceStep = 1
            L1_2 = L19_1
            L1_2 = L1_2.heroAbilitySteps
            L2_2 = L19_1
            L2_2 = L2_2.liveBattleTutorialSequenceStep
            L1_2(L2_2)
          end
          L1_2 = L19_1
          L1_2 = L1_2.liveBattleTutorialSequenceStep
          if L1_2 == 6 then
            L1_2 = L19_1
            L1_2.liveBattleTutorialSequenceStep = 5
            L1_2 = L19_1
            L1_2 = L1_2.heroAbilitySteps
            L2_2 = L19_1
            L2_2 = L2_2.liveBattleTutorialSequenceStep
            L1_2(L2_2)
          end
        end
      end
    end
  end
  L1_2 = L53_1
  if L1_2 ~= nil then
    L1_2 = L78_1
    if L1_2 < 4 then
      L1_2 = L64_1
      if L1_2 == false then
        goto lbl_76
      end
    end
    L1_2 = L19_1
    L1_2 = L1_2.isPlayerDeployedHero
    ::lbl_76::
    if L1_2 ~= true then
      L1_2 = L67_1
      L2_2 = L53_1
      L2_2 = L2_2.card
      L2_2 = L2_2.power
      L1_2 = L1_2 - L2_2
      L67_1 = L1_2
    end
    L1_2 = L53_1
    L2_2 = L1_2
    L1_2 = L1_2.deselected
    L1_2(L2_2)
    L1_2 = nil
    L53_1 = L1_2
    L1_2 = L78_1
    if L1_2 < 4 then
      L1_2 = L64_1
      if L1_2 == false then
        goto lbl_97
      end
    end
    L1_2 = L19_1
    L1_2 = L1_2.isPlayerDeployedHero
    ::lbl_97::
    if L1_2 ~= true then
      L1_2 = L62_1
      L2_2 = L1_2
      L1_2 = L1_2.setNumber
      L3_2 = L67_1
      L4_2 = L65_1
      L3_2 = L3_2 - L4_2
      L1_2(L2_2, L3_2)
      L1_2 = L19_1
      L1_2 = L1_2.updatePowerIndicatorView
      L1_2()
    end
  else
    L1_2 = nil
    L53_1 = L1_2
  end
end

L19_1.cardDeselected = L122_1

function L122_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L47_1
  L2_2 = A0_2.id
  L1_2 = L1_2[L2_2]
  L3_2 = L1_2
  L2_2 = L1_2.stopAnimatingCooldown
  L2_2(L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.hideCooldownView
  L2_2(L3_2)
  L2_2 = timer
  L2_2 = L2_2.performWithDelay
  L3_2 = 20
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = L1_2
    L1_3 = L0_3
    L0_3 = L0_3.setAction
    L0_3(L1_3)
  end
  
  L2_2(L3_2, L4_2)
  L1_2.selectable = true
end

L19_1.didCooldownCallback = L122_1

function L122_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = log3
  L3_2 = "failed to cooloff card"
  L2_2(L3_2)
  if A0_2 ~= nil then
    L2_2 = L47_1
    L3_2 = A0_2.id
    L2_2 = L2_2[L3_2]
    L4_2 = L2_2
    L3_2 = L2_2.stopAnimatingCooldown
    L3_2(L4_2)
    L4_2 = L2_2
    L3_2 = L2_2.hideCooldownView
    L3_2(L4_2)
    L4_2 = L2_2
    L3_2 = L2_2.showCooldownView
    L3_2(L4_2)
  end
  if A1_2 == "Card is cool enough." then
    L2_2 = L19_1
    L2_2 = L2_2.didCooldownCallback
    L3_2 = A0_2
    L2_2(L3_2)
  else
    L2_2 = showSimpleDialog
    L3_2 = L3_1
    L3_2 = L3_2.Cooldown
    L4_2 = L3_1
    L4_2 = L4_2[A1_2]
    L2_2(L3_2, L4_2)
  end
end

L19_1.failedCooldownCallback = L122_1

function L122_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.card
  L2_2 = L1_2
  L1_2 = L1_2.cooldownCard
  L3_2 = L19_1
  L3_2 = L3_2.didCooldownCallback
  L4_2 = L19_1
  L4_2 = L4_2.failedCooldownCallback
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.animateCooldown
  L1_2(L2_2)
end

L19_1.didPressCooloffButton = L122_1

function L122_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.cardUsedForBuilding
    if L7_2 ~= true then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L1_2
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L2_3 = L2_3[A0_3]
    L3_3 = A0_2
    L3_3 = L3_3[A1_3]
    L4_3 = mainPlayer
    L4_3 = L4_3.heroSet
    if L4_3 then
      L4_3 = mainPlayer
      L4_3 = L4_3.heroSet
      L5_3 = L2_3.baseId
      L4_3 = L4_3[L5_3]
      if L4_3 then
        L4_3 = mainPlayer
        L4_3 = L4_3.heroSet
        L5_3 = L3_3.baseId
        L4_3 = L4_3[L5_3]
        if L4_3 then
          L4_3 = L2_3.power
          L5_3 = L3_3.power
          L4_3 = L4_3 > L5_3
          return L4_3
        else
          L4_3 = true
          return L4_3
        end
    end
    else
      L4_3 = mainPlayer
      L4_3 = L4_3.heroSet
      if L4_3 then
        L4_3 = mainPlayer
        L4_3 = L4_3.heroSet
        L5_3 = L3_3.baseId
        L4_3 = L4_3[L5_3]
        if L4_3 then
          L4_3 = false
          return L4_3
      end
      else
        L4_3 = L2_3.power
        L5_3 = L3_3.power
        L4_3 = L4_3 > L5_3
        return L4_3
      end
    end
  end
  
  L2_2(L3_2, L4_2)
  return L1_2
end

function L123_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.card
    L7_2 = L7_2.cardUsedForBuilding
    if L7_2 ~= true then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L1_2
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = L47_1
    L2_3 = L2_3[A0_3]
    L2_3 = L2_3.card
    L3_3 = L47_1
    L3_3 = L3_3[A1_3]
    L3_3 = L3_3.card
    L5_3 = L2_3
    L4_3 = L2_3.cooldownRemaining
    L4_3 = L4_3(L5_3)
    L6_3 = L3_3
    L5_3 = L3_3.cooldownRemaining
    L5_3 = L5_3(L6_3)
    if L4_3 < 10 then
      L4_3 = 0
    end
    if L5_3 < 10 then
      L5_3 = 0
    end
    if L4_3 == 0 and L5_3 == 0 then
      L6_3 = L2_3.power
      L7_3 = L3_3.power
      L6_3 = L6_3 > L7_3
      return L6_3
    elseif L4_3 == 0 and 0 < L5_3 then
      L6_3 = true
      return L6_3
    elseif 0 < L4_3 and L5_3 == 0 then
      L6_3 = false
      return L6_3
    else
      L6_3 = L2_3.power
      L7_3 = L3_3.power
      L6_3 = L6_3 > L7_3
      return L6_3
    end
  end
  
  L2_2(L3_2, L4_2)
  return L1_2
end

function L124_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 then
    L2_2 = pairs
    L3_2 = A0_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      if L6_2 then
        L7_2 = L6_2.view
        if L7_2 then
          L7_2 = L6_2.view
          L7_2 = L7_2.x
          L8_2 = A1_2[L5_2]
          L8_2 = L8_2.view
          L8_2 = L8_2.x
          if L7_2 ~= L8_2 then
            L7_2 = L6_2.view
            L8_2 = A1_2[L5_2]
            L8_2 = L8_2.view
            L8_2 = L8_2.x
            L7_2.x = L8_2
          end
        end
      end
    end
  end
end

finalizeCardsPositions = L124_1

function L124_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = L41_1
  L1_2 = L1_2.x
  L2_2 = L41_1
  L2_2 = L2_2.width
  L2_2 = L2_2 / 2
  L1_2 = L1_2 - L2_2
  L2_2 = A0_2.view
  L2_2 = L2_2.x
  L1_2 = L1_2 + L2_2
  L2_2 = A0_2.view
  L2_2 = L2_2.width
  L2_2 = L2_2 / 2
  L1_2 = L1_2 + L2_2
  L2_2 = L41_1
  L2_2 = L2_2.y
  L3_2 = A0_2.imageRect
  L3_2 = L3_2.view
  L3_2 = L3_2.width
  L4_2 = A0_2.imageRect
  L4_2 = L4_2.view
  L4_2 = L4_2.width
  L5_2 = {}
  L6_2 = A0_2.card
  L6_2 = L6_2.baseId
  L5_2.id = L6_2
  L5_2.widthOfView = 75
  L5_2.heightOfView = 75
  L5_2.spineCharacter = true
  L5_2.sceneName = "Livebattle"
  L6_2 = L18_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L20_1 = L6_2
  L6_2 = L20_1
  L7_2 = L6_2
  L6_2 = L6_2.addListenerToHero
  L6_2(L7_2)
  L6_2 = L19_1
  L6_2 = L6_2.view
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L20_1
  L8_2 = L8_2.view
  L6_2(L7_2, L8_2)
  L6_2 = L20_1
  L6_2 = L6_2.view
  L6_2.x = L1_2
  L6_2 = L20_1
  L6_2 = L6_2.view
  L6_2.y = L2_2
  L6_2 = L20_1
  L6_2 = L6_2.view
  L6_2.width = L3_2
  L6_2 = L20_1
  L6_2 = L6_2.view
  L6_2.height = L4_2
  L6_2 = L41_1
  L6_2 = L6_2.x
  L7_2 = L41_1
  L7_2 = L7_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = 1
    L1_3 = 4
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L86_1
      L4_3 = L4_3[L3_3]
      if L4_3 then
        L4_3 = L86_1
        L4_3 = L4_3[L3_3]
        L4_3 = L4_3.view
        L4_3 = L4_3.x
        L5_3 = L20_1
        L5_3 = L5_3.view
        L5_3 = L5_3.width
        L5_3 = L5_3 / 2
        L4_3 = L4_3 + L5_3
        L5_3 = transition
        L5_3 = L5_3.to
        L6_3 = L86_1
        L6_3 = L6_3[L3_3]
        L6_3 = L6_3.view
        L7_3 = {}
        L7_3.time = 450
        L7_3.x = L4_3
        L8_3 = easing
        L8_3 = L8_3.inQuad
        L7_3.transition = L8_3
        L5_3(L6_3, L7_3)
        L5_3 = L82_1
        L5_3 = L5_3[L3_3]
        if L5_3 then
          L5_3 = transition
          L5_3 = L5_3.to
          L6_3 = L82_1
          L6_3 = L6_3[L3_3]
          L6_3 = L6_3.view
          L7_3 = {}
          L7_3.time = 450
          L7_3.x = L4_3
          L8_3 = easing
          L8_3 = L8_3.inQuad
          L7_3.transition = L8_3
          L5_3(L6_3, L7_3)
        end
      end
    end
    L0_3 = L78_1
    if L0_3 ~= 4 then
      L0_3 = L81_1
      if L0_3 ~= 0 then
        goto lbl_56
      end
    end
    L0_3 = L19_1
    L0_3 = L0_3.hideChooseBar
    L0_3()
    ::lbl_56::
  end
  
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L20_1
    L1_3 = L1_3.view
    L2_3 = {}
    L2_3.tag = "liveBattleHeroAnimation"
    L2_3.time = 500
    L3_3 = L1_2
    L4_3 = A0_2
    L4_3 = L4_3.view
    L4_3 = L4_3.width
    L4_3 = L4_3 / 2
    L3_3 = L3_3 + L4_3
    L2_3.x = L3_3
    L3_3 = L2_2
    L4_3 = A0_2
    L4_3 = L4_3.view
    L4_3 = L4_3.width
    L4_3 = L4_3 * 2
    L3_3 = L3_3 + L4_3
    L2_3.y = L3_3
    L2_3.xScale = 1.3
    L2_3.yScale = 1.3
    L3_3 = easing
    L3_3 = L3_3.outQuad
    L2_3.transition = L3_3
    
    function L3_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = L20_1
      if L0_4 then
        L0_4 = L20_1
        L0_4 = L0_4.view
        if L0_4 then
          L0_4 = L20_1
          L0_4 = L0_4.view
          L0_4.alpha = 0
          L0_4 = L20_1
          L0_4 = L0_4.view
          L1_4 = display
          L1_4 = L1_4.contentCenterX
          L0_4.x = L1_4
          L0_4 = L20_1
          L0_4 = L0_4.view
          L1_4 = display
          L1_4 = L1_4.contentCenterY
          L0_4.y = L1_4
          L0_4 = L20_1
          L0_4 = L0_4.view
          L0_4.xScale = 3
          L0_4 = L20_1
          L0_4 = L0_4.view
          L0_4.yScale = 3
          L0_4 = L19_1
          L1_4 = timer
          L1_4 = L1_4.performWithDelay
          L2_4 = 550
          
          function L3_4()
            local L0_5, L1_5
            L0_5 = L20_1
            L0_5 = L0_5.view
            L0_5.alpha = 1
          end
          
          L4_4 = 1
          L1_4 = L1_4(L2_4, L3_4, L4_4)
          L0_4.revealHeroTimer = L1_4
          L0_4 = L19_1
          L1_4 = timer
          L1_4 = L1_4.performWithDelay
          L2_4 = 400
          
          function L3_4()
            local L0_5, L1_5
            L0_5 = L7_2
            L0_5()
          end
          
          L4_4 = 1
          L1_4 = L1_4(L2_4, L3_4, L4_4)
          L0_4.shiftSlotAndCardsTimer = L1_4
          L0_4 = transition
          L0_4 = L0_4.to
          L1_4 = L20_1
          L1_4 = L1_4.view
          L2_4 = {}
          L2_4.tag = "liveBattleHeroAnimation"
          L2_4.time = 500
          L2_4.delay = 500
          L3_4 = L6_2
          L3_4 = L3_4 + 12
          L4_4 = L20_1
          L4_4 = L4_4.view
          L4_4 = L4_4.width
          L4_4 = L4_4 / 2
          L3_4 = L3_4 + L4_4
          L2_4.x = L3_4
          L3_4 = L86_1
          L3_4 = L3_4[1]
          L3_4 = L3_4.view
          L3_4 = L3_4.y
          L4_4 = L86_1
          L4_4 = L4_4[1]
          L4_4 = L4_4.card_height
          L4_4 = L4_4 / 2
          L3_4 = L3_4 + L4_4
          L2_4.y = L3_4
          L2_4.xScale = 1
          L2_4.yScale = 1
          L3_4 = easing
          L3_4 = L3_4.outBack
          L2_4.transition = L3_4
          
          function L3_4()
            local L0_5, L1_5, L2_5, L3_5, L4_5, L5_5, L6_5, L7_5, L8_5
            
            function L0_5(A0_6, A1_6, A2_6, A3_6)
              local L4_6, L5_6, L6_6, L7_6, L8_6, L9_6, L10_6, L11_6, L12_6, L13_6, L14_6, L15_6
              if A3_6 then
                L4_6 = L19_1
                L4_6 = L4_6.heroAbilities
                if L4_6 then
                  L4_6 = L19_1
                  L4_6 = L4_6.heroAbilities
                  L5_6 = L4_6
                  L4_6 = L4_6.touchSuccessCallback
                  L6_6 = A2_6
                  L4_6(L5_6, L6_6)
                end
                if A2_6 == 1 then
                  L4_6 = require
                  L5_6 = "Models.Card"
                  L4_6 = L4_6(L5_6)
                  L5_6 = 0
                  L6_6 = L4_6.baseCards
                  L7_6 = mainPlayer
                  L7_6 = L7_6.activeHeroID
                  L6_6 = L6_6[L7_6]
                  L6_6 = L6_6.powerAttribute
                  L7_6 = pairs
                  L8_6 = L19_1
                  L8_6 = L8_6.addedCardsToBattle
                  L7_6, L8_6, L9_6 = L7_6(L8_6)
                  for L10_6, L11_6 in L7_6, L8_6, L9_6 do
                    L12_6 = L4_1
                    L12_6 = L12_6.Hero_FakePowerModifier
                    L12_6 = L6_6 * L12_6
                    L12_6 = L12_6 + 1
                    L13_6 = L11_6.power
                    L13_6 = L13_6.value
                    L12_6 = L12_6 * L13_6
                    L13_6 = L11_6.power
                    L13_6 = L13_6.value
                    L5_6 = L5_6 + L13_6
                    L13_6 = L11_6.power
                    L14_6 = L13_6
                    L13_6 = L13_6.setValue
                    L15_6 = L12_6
                    L13_6(L14_6, L15_6)
                  end
                  L7_6 = L4_1
                  L7_6 = L7_6.Hero_FakePowerModifier
                  L7_6 = L6_6 * L7_6
                  L7_6 = L7_6 * L5_6
                  L8_6 = L19_1
                  L8_6 = L8_6.applyPowerBenefit
                  L9_6 = L7_6
                  L8_6(L9_6)
                end
              else
                function L4_6(A0_7)
                  local L1_7, L2_7, L3_7
                  
                  L1_7 = showSimpleDialog
                  L2_7 = "Error"
                  L3_7 = A0_7
                  L1_7(L2_7, L3_7)
                end
                
                L5_6 = L9_1
                L5_6 = L5_6.triggerHeroAbility
                L6_6 = A0_6
                L7_6 = A1_6
                L8_6 = A2_6
                L9_6 = L4_6
                L5_6(L6_6, L7_6, L8_6, L9_6)
              end
            end
            
            L1_5 = finalizeCardsPositions
            L2_5 = L82_1
            L3_5 = L86_1
            L1_5(L2_5, L3_5)
            L1_5 = require
            L2_5 = "Components.TDHeroAbilityButtonView"
            L1_5 = L1_5(L2_5)
            L2_5 = {}
            L2_5.fontSize = 5
            L3_5 = {}
            L4_5 = {}
            L4_5.id = 1
            L5_5 = L3_1
            L5_5 = L5_5["Power Attribute"]
            L4_5.label = L5_5
            L4_5.size = 28
            L5_5 = L4_1
            L5_5 = L5_5.Path_Assets
            L6_5 = "General/RedProgressFill.png"
            L5_5 = L5_5 .. L6_5
            L4_5.fillImage = L5_5
            
            function L5_5()
              local L0_6, L1_6, L2_6, L3_6, L4_6
              L0_6 = L0_5
              L1_6 = L19_1
              L1_6 = L1_6.battle_ID
              L2_6 = A0_2
              L2_6 = L2_6.card
              L2_6 = L2_6.id
              L3_6 = 1
              L4_6 = L19_1
              L4_6 = L4_6.isTutorial
              L0_6(L1_6, L2_6, L3_6, L4_6)
            end
            
            L4_5.touchCallback = L5_5
            L5_5 = {}
            L5_5.id = 2
            L6_5 = L3_1
            L6_5 = L6_5["Wisdom Attribute"]
            L5_5.label = L6_5
            L5_5.size = 28
            L6_5 = L4_1
            L6_5 = L6_5.Path_Assets
            L7_5 = "General/ProgressFill.png"
            L6_5 = L6_5 .. L7_5
            L5_5.fillImage = L6_5
            
            function L6_5()
              local L0_6, L1_6, L2_6, L3_6, L4_6
              L0_6 = L0_5
              L1_6 = L19_1
              L1_6 = L1_6.battle_ID
              L2_6 = A0_2
              L2_6 = L2_6.card
              L2_6 = L2_6.id
              L3_6 = 2
              L4_6 = L19_1
              L4_6 = L4_6.isTutorial
              L0_6(L1_6, L2_6, L3_6, L4_6)
            end
            
            L5_5.touchCallback = L6_5
            L6_5 = {}
            L6_5.id = 3
            L7_5 = L3_1
            L7_5 = L7_5["Blessing Attribute"]
            L6_5.label = L7_5
            L6_5.size = 28
            L7_5 = L4_1
            L7_5 = L7_5.Path_Assets
            L8_5 = "General/GreenProgressFill.png"
            L7_5 = L7_5 .. L8_5
            L6_5.fillImage = L7_5
            
            function L7_5()
              local L0_6, L1_6, L2_6, L3_6, L4_6
              L0_6 = L0_5
              L1_6 = L19_1
              L1_6 = L1_6.battle_ID
              L2_6 = A0_2
              L2_6 = L2_6.card
              L2_6 = L2_6.id
              L3_6 = 3
              L4_6 = L19_1
              L4_6 = L4_6.isTutorial
              L0_6(L1_6, L2_6, L3_6, L4_6)
            end
            
            L6_5.touchCallback = L7_5
            L3_5[1] = L4_5
            L3_5[2] = L5_5
            L3_5[3] = L6_5
            L2_5.items = L3_5
            L3_5 = L19_1
            L5_5 = L1_5
            L4_5 = L1_5.new
            L6_5 = L2_5
            L4_5 = L4_5(L5_5, L6_5)
            L3_5.heroAbilities = L4_5
            L3_5 = L19_1
            L3_5 = L3_5.view
            L4_5 = L3_5
            L3_5 = L3_5.insert
            L5_5 = L19_1
            L5_5 = L5_5.heroAbilities
            L5_5 = L5_5.view
            L3_5(L4_5, L5_5)
            L3_5 = L19_1
            L3_5 = L3_5.heroAbilities
            L3_5 = L3_5.view
            L4_5 = L20_1
            L4_5 = L4_5.view
            L4_5 = L4_5.x
            L3_5.x = L4_5
            L3_5 = L19_1
            L3_5 = L3_5.heroAbilities
            L3_5 = L3_5.view
            L4_5 = L20_1
            L4_5 = L4_5.view
            L4_5 = L4_5.y
            L5_5 = L20_1
            L5_5 = L5_5.view
            L5_5 = L5_5.height
            L5_5 = L5_5 / 2
            L4_5 = L4_5 - L5_5
            L4_5 = L4_5 - 5
            L3_5.y = L4_5
          end
          
          L2_4.onComplete = L3_4
          L0_4(L1_4, L2_4)
        end
      end
    end
    
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L9_2 = L19_1
  L9_2 = L9_2.everyPlayerCards
  L10_2 = mainPlayer
  L10_2 = L10_2.id
  L9_2 = L9_2[L10_2]
  if L9_2 == nil then
    L9_2 = L19_1
    L9_2 = L9_2.everyPlayerCards
    L10_2 = mainPlayer
    L10_2 = L10_2.id
    L11_2 = {}
    L9_2[L10_2] = L11_2
  end
  L9_2 = L19_1
  L9_2 = L9_2.everyPlayerCards
  L10_2 = mainPlayer
  L10_2 = L10_2.id
  L9_2 = L9_2[L10_2]
  L9_2 = #L9_2
  L10_2 = L19_1
  L10_2 = L10_2.everyPlayerCards
  L11_2 = mainPlayer
  L11_2 = L11_2.id
  L10_2 = L10_2[L11_2]
  L11_2 = L9_2 + 1
  L12_2 = A0_2.card
  L10_2[L11_2] = L12_2
  L10_2 = L19_1
  L10_2 = L10_2.battle_ID
  if L10_2 ~= -1 then
    L10_2 = L19_1
    L10_2 = L10_2.battleManager
    L10_2 = L10_2.sendSelectedCardToBattle
    L11_2 = A0_2.card
    L11_2 = L11_2.id
    L12_2 = L19_1
    L12_2 = L12_2.battle_ID
    L13_2 = 5
    L14_2 = true
    L10_2(L11_2, L12_2, L13_2, L14_2)
  end
  L10_2 = L8_2
  L10_2()
  L11_2 = A0_2
  L10_2 = A0_2.disable
  L10_2(L11_2)
  L10_2 = mainPlayer
  L10_2 = L10_2.heroSet
  if L10_2 then
    L10_2 = mainPlayer
    L10_2 = L10_2.heroSet
    L11_2 = A0_2.card
    L11_2 = L11_2.baseId
    L10_2 = L10_2[L11_2]
    if L10_2 then
      L10_2 = pairs
      L11_2 = L47_1
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      for L13_2, L14_2 in L10_2, L11_2, L12_2 do
        L15_2 = mainPlayer
        L15_2 = L15_2.heroSet
        L16_2 = L14_2.card
        L16_2 = L16_2.baseId
        L15_2 = L15_2[L16_2]
        if L15_2 then
          L16_2 = L14_2
          L15_2 = L14_2.disable
          L15_2(L16_2)
          L16_2 = L14_2
          L15_2 = L14_2.hideCooldownView
          L15_2(L16_2)
        end
      end
    end
  end
  L10_2 = L67_1
  L11_2 = A0_2.card
  L11_2 = L11_2.power
  L10_2 = L10_2 + L11_2
  L67_1 = L10_2
  L10_2 = L62_1
  L11_2 = L10_2
  L10_2 = L10_2.setNumber
  L12_2 = L67_1
  L13_2 = L65_1
  L12_2 = L12_2 - L13_2
  L10_2(L11_2, L12_2)
  L10_2 = L19_1
  L10_2 = L10_2.updatePowerIndicatorView
  L10_2()
end

L19_1.addPlayerHeroToBattle = L124_1

function L124_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = L19_1
  L1_2 = L1_2.liveBattleTutorialIsActive
  if L1_2 == true then
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      
      L0_3 = {}
      L0_3.id = 2
      L0_3.base_card_id = 177
      L0_3.power = 10
      L0_3.last_used_at = 0
      L1_3 = L15_1
      L2_3 = L1_3
      L1_3 = L1_3.new
      L3_3 = L0_3
      L1_3 = L1_3(L2_3, L3_3)
      L1_3.userId = -1
      L2_3 = L19_1
      L2_3 = L2_3.addCardsToScrollers
      L3_3 = "enemies"
      L4_3 = L1_3
      L5_3 = 1
      L6_3 = "Enemy"
      L2_3(L3_3, L4_3, L5_3, L6_3)
      L2_3 = L19_1
      L2_3.liveBattleTutorialSequenceStep = 4
      L2_3 = L19_1
      L2_3 = L2_3.weakEnemySteps
      L3_3 = L19_1
      L3_3 = L3_3.liveBattleTutorialSequenceStep
      L2_3(L3_3)
    end
    
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      L0_3 = {}
      L0_3.id = 2
      L1_3 = A0_2
      L1_3 = L1_3.card
      L1_3 = L1_3.baseId
      L0_3.base_card_id = L1_3
      L1_3 = A0_2
      L1_3 = L1_3.card
      L1_3 = L1_3.power
      L1_3 = L1_3 * 4
      L1_3 = L1_3 + 1
      L0_3.power = L1_3
      L0_3.last_used_at = 0
      L1_3 = L0_3.power
      L23_1 = L1_3
      L1_3 = L15_1
      L2_3 = L1_3
      L1_3 = L1_3.new
      L3_3 = L0_3
      L1_3 = L1_3(L2_3, L3_3)
      L1_3.userId = -1
      L2_3 = L19_1
      L2_3 = L2_3.addCardsToScrollers
      L3_3 = "enemies"
      L4_3 = L1_3
      L5_3 = 1
      L6_3 = "Enemy"
      L2_3(L3_3, L4_3, L5_3, L6_3)
      L2_3 = L19_1
      L2_3.liveBattleTutorialSequenceStep = 4
      L2_3 = L19_1
      L2_3 = L2_3.strongEnemySteps
      L3_3 = L19_1
      L3_3 = L3_3.liveBattleTutorialSequenceStep
      L2_3(L3_3)
    end
    
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      L0_3 = {}
      L0_3.id = 2
      L1_3 = A0_2
      L1_3 = L1_3.card
      L1_3 = L1_3.baseId
      L0_3.base_card_id = L1_3
      L1_3 = A0_2
      L1_3 = L1_3.card
      L1_3 = L1_3.power
      L2_3 = A0_2
      L2_3 = L2_3.card
      L2_3 = L2_3.power
      L2_3 = 0.1 * L2_3
      L1_3 = L1_3 + L2_3
      L0_3.power = L1_3
      L0_3.last_used_at = 0
      L1_3 = L0_3.power
      L24_1 = L1_3
      L1_3 = L15_1
      L2_3 = L1_3
      L1_3 = L1_3.new
      L3_3 = L0_3
      L1_3 = L1_3(L2_3, L3_3)
      L1_3.userId = -1
      L2_3 = L19_1
      L2_3 = L2_3.addCardsToScrollers
      L3_3 = "enemies"
      L4_3 = L1_3
      L5_3 = 1
      L6_3 = "Enemy"
      L2_3(L3_3, L4_3, L5_3, L6_3)
      L2_3 = L19_1
      L2_3.liveBattleTutorialSequenceStep = 4
      L2_3 = L19_1
      L2_3 = L2_3.heroAbilitySteps
      L3_3 = L19_1
      L3_3 = L3_3.liveBattleTutorialSequenceStep
      L2_3(L3_3)
    end
    
    L4_2 = L19_1
    L4_2 = L4_2.liveBattleTutorialSequence
    if L4_2 == 1 then
      L4_2 = L19_1
      L4_2 = L4_2.liveBattleTutorialSequenceStep
      if L4_2 == 3 then
        L4_2 = L19_1
        L4_2 = L4_2.tutorialTimers
        L5_2 = L19_1
        L5_2 = L5_2.tutorialTimers
        L5_2 = #L5_2
        L5_2 = L5_2 + 1
        L6_2 = timer
        L6_2 = L6_2.performWithDelay
        L7_2 = 5000
        L8_2 = L1_2
        L6_2 = L6_2(L7_2, L8_2)
        L4_2[L5_2] = L6_2
      end
    else
      L4_2 = L19_1
      L4_2 = L4_2.liveBattleTutorialSequence
      if L4_2 == 2 then
        L4_2 = L19_1
        L4_2 = L4_2.liveBattleTutorialSequenceStep
        if L4_2 == 3 then
          L4_2 = L19_1
          L4_2 = L4_2.tutorialTimers
          L5_2 = L19_1
          L5_2 = L5_2.tutorialTimers
          L5_2 = #L5_2
          L5_2 = L5_2 + 1
          L6_2 = timer
          L6_2 = L6_2.performWithDelay
          L7_2 = 5000
          L8_2 = L2_2
          L6_2 = L6_2(L7_2, L8_2)
          L4_2[L5_2] = L6_2
        end
      else
        L4_2 = L19_1
        L4_2 = L4_2.liveBattleTutorialSequence
        if L4_2 == 3 then
          L4_2 = L19_1
          L4_2 = L4_2.liveBattleTutorialSequenceStep
          if L4_2 == 3 then
            L4_2 = L19_1
            L4_2 = L4_2.tutorialTimers
            L5_2 = L19_1
            L5_2 = L5_2.tutorialTimers
            L5_2 = #L5_2
            L5_2 = L5_2 + 1
            L6_2 = timer
            L6_2 = L6_2.performWithDelay
            L7_2 = 5000
            L8_2 = L3_2
            L6_2 = L6_2(L7_2, L8_2)
            L4_2[L5_2] = L6_2
          end
        end
      end
    end
  end
  if A0_2 == nil then
    L1_2 = log3
    L2_2 = "cardView is nil"
    L1_2(L2_2)
    return
  end
  L1_2 = L78_1
  L2_2 = L76_1
  if L1_2 <= L2_2 then
    L1_2 = L78_1
    L1_2 = L1_2 + 1
    L78_1 = L1_2
  end
  L1_2 = L78_1
  L2_2 = L76_1
  if not (L1_2 > L2_2) then
    L1_2 = L81_1
    if not (L1_2 <= 0) then
      goto lbl_104
    end
  end
  L1_2 = log3
  L2_2 = "first return"
  L1_2(L2_2)
  do return end
  ::lbl_104::
  L1_2 = L19_1
  L1_2 = L1_2.everyPlayerCards
  L2_2 = mainPlayer
  L2_2 = L2_2.id
  L1_2 = L1_2[L2_2]
  if L1_2 == nil then
    L1_2 = L19_1
    L1_2 = L1_2.everyPlayerCards
    L2_2 = mainPlayer
    L2_2 = L2_2.id
    L3_2 = {}
    L1_2[L2_2] = L3_2
  end
  L1_2 = L19_1
  L1_2 = L1_2.everyPlayerCards
  L2_2 = mainPlayer
  L2_2 = L2_2.id
  L1_2 = L1_2[L2_2]
  L1_2 = #L1_2
  L2_2 = L19_1
  L2_2 = L2_2.everyPlayerCards
  L3_2 = mainPlayer
  L3_2 = L3_2.id
  L2_2 = L2_2[L3_2]
  L3_2 = L1_2 + 1
  L4_2 = A0_2.card
  L2_2[L3_2] = L4_2
  L2_2 = L19_1
  L2_2 = L2_2.friends
  L3_2 = L19_1
  L3_2 = L3_2.friends
  L3_2 = #L3_2
  L3_2 = L3_2 + 1
  L4_2 = mainPlayer
  L4_2 = L4_2.id
  L2_2[L3_2] = L4_2
  L2_2 = L81_1
  L2_2 = 5 - L2_2
  if not (L2_2 < 1) and not (4 < L2_2) then
    L3_2 = L86_1
    L3_2 = L3_2[L2_2]
    if L3_2 ~= nil then
      goto lbl_154
    end
  end
  L3_2 = errorLog
  L4_2 = "card not "
  L3_2(L4_2)
  do return end
  ::lbl_154::
  if L2_2 then
    L3_2 = L86_1
    L3_2 = L3_2[L2_2]
    if L3_2 then
  end
  else
    return
  end
  L3_2 = L86_1
  L3_2 = L3_2[L2_2]
  L3_2.state = "full"
  L3_2 = L86_1
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2.card_width
  L4_2 = L86_1
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.card_height
  L5_2 = L86_1
  L5_2 = L5_2[L2_2]
  L5_2 = L5_2.view
  L5_2 = L5_2.x
  L6_2 = L86_1
  L6_2 = L6_2[L2_2]
  L6_2 = L6_2.view
  L6_2 = L6_2.y
  L7_2 = {}
  L8_2 = L31_1
  L7_2.cardHeight = L8_2
  L7_2.createObjectForLiveBattle = true
  L7_2.createObjectForPlayerCardSlots = true
  L8_2 = L82_1
  L9_2 = L2_1
  L10_2 = L9_2
  L9_2 = L9_2.new
  L11_2 = "big"
  L12_2 = A0_2.card
  L13_2 = nil
  L14_2 = L7_2
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L8_2[L2_2] = L9_2
  L8_2 = L82_1
  L8_2 = L8_2[L2_2]
  L8_2 = L8_2.view
  L8_2.alpha = 0
  L8_2 = L89_1
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L82_1
  L10_2 = L10_2[L2_2]
  L10_2 = L10_2.view
  L8_2(L9_2, L10_2)
  L8_2 = L19_1
  L8_2 = L8_2.addedCardsToBattle
  L9_2 = A0_2.card
  L9_2 = L9_2.id
  L10_2 = L82_1
  L10_2 = L10_2[L2_2]
  L8_2[L9_2] = L10_2
  L8_2 = L82_1
  L8_2 = L8_2[L2_2]
  L9_2 = L8_2
  L8_2 = L8_2.addEnterFrameListener
  L8_2(L9_2)
  L8_2 = L82_1
  L8_2 = L8_2[L2_2]
  L9_2 = L8_2
  L8_2 = L8_2.deselected
  L8_2(L9_2)
  L8_2 = L82_1
  L8_2 = L8_2[L2_2]
  L9_2 = L8_2
  L8_2 = L8_2.setPosition
  L10_2 = L3_2 / 2
  L10_2 = L5_2 - L10_2
  L10_2 = L10_2 + 5
  L11_2 = L41_1
  L11_2 = L11_2.y
  L12_2 = L82_1
  L12_2 = L12_2[L2_2]
  L12_2 = L12_2.cardHeight
  L12_2 = L12_2 / 2
  L11_2 = L11_2 - L12_2
  L8_2(L9_2, L10_2, L11_2)
  
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L89_1
    if L0_3 ~= nil then
      L0_3 = L89_1
      L0_3 = L0_3.toFront
      if L0_3 then
        L0_3 = L89_1
        L1_3 = L0_3
        L0_3 = L0_3.toFront
        L0_3(L1_3)
      end
    end
    L0_3 = display
    L0_3 = L0_3.newImageRect
    L1_3 = L4_1
    L1_3 = L1_3.Path_Assets
    L2_3 = "General/FC-rankup-glow1.png"
    L1_3 = L1_3 .. L2_3
    L2_3 = 66
    L3_3 = 66
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    L0_3.alpha = 0
    L1_3 = L5_2
    L2_3 = L3_2
    L2_3 = L2_3 / 2
    L1_3 = L1_3 + L2_3
    L0_3.x = L1_3
    L1_3 = L6_2
    L2_3 = L4_2
    L2_3 = L2_3 / 2
    L1_3 = L1_3 + L2_3
    L0_3.y = L1_3
    L1_3 = L82_1
    L2_3 = L2_2
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.isError
    if L1_3 ~= true then
      L1_3 = L82_1
      L2_3 = L2_2
      L1_3 = L1_3[L2_3]
      L1_3 = L1_3.view
      L1_3.alpha = 1
    end
    L1_3 = nil
    L2_3 = nil
    L3_3 = L2_2
    if L3_3 == 1 then
      L3_3 = -1
      L2_3 = -1
      L1_3 = L3_3
    else
      L3_3 = L2_2
      if L3_3 == 2 then
        L3_3 = 1
        L2_3 = -1
        L1_3 = L3_3
      else
        L3_3 = L2_2
        if L3_3 == 3 then
          L3_3 = -1
          L2_3 = 1
          L1_3 = L3_3
        else
          L3_3 = L2_2
          if L3_3 == 4 then
            L3_3 = 1
            L2_3 = 1
            L1_3 = L3_3
          end
        end
      end
    end
    L3_3 = L89_1
    L4_3 = L3_3
    L3_3 = L3_3.insert
    L5_3 = L0_3
    L3_3(L4_3, L5_3)
    L3_3 = L48_1
    L4_3 = A0_2
    L4_3 = L4_3.card
    L4_3 = L4_3.id
    L5_3 = L82_1
    L6_3 = L2_2
    L5_3 = L5_3[L6_3]
    L3_3[L4_3] = L5_3
    L3_3 = transition
    L3_3 = L3_3.to
    L4_3 = L82_1
    L5_3 = L2_2
    L4_3 = L4_3[L5_3]
    L4_3 = L4_3.view
    L5_3 = {}
    L6_3 = L82_1
    L7_3 = L2_2
    L6_3 = L6_3[L7_3]
    L6_3 = L6_3.view
    L6_3 = L6_3.y
    L6_3 = L6_3 - 10
    L5_3.y = L6_3
    L6_3 = L82_1
    L7_3 = L2_2
    L6_3 = L6_3[L7_3]
    L6_3 = L6_3.view
    L6_3 = L6_3.x
    L6_3 = L6_3 + 10
    L5_3.x = L6_3
    L5_3.xScale = 1.1
    L5_3.yScale = 1.1
    L5_3.time = 500
    L5_3.tag = "LiveBattle"
    
    function L6_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
      L0_4 = transition
      L0_4 = L0_4.to
      L1_4 = L82_1
      L2_4 = L2_2
      L1_4 = L1_4[L2_4]
      L1_4 = L1_4.view
      L2_4 = {}
      L3_4 = L6_2
      L4_4 = L2_3
      L5_4 = L86_1
      L6_4 = L2_2
      L5_4 = L5_4[L6_4]
      L5_4 = L5_4.card_height
      L5_4 = L5_4 / 2
      L5_4 = L5_4 - 10
      L4_4 = L4_4 * L5_4
      L3_4 = L3_4 + L4_4
      L2_4.y = L3_4
      L3_4 = L5_2
      L4_4 = L1_3
      L5_4 = L86_1
      L6_4 = L2_2
      L5_4 = L5_4[L6_4]
      L5_4 = L5_4.card_width
      L5_4 = L5_4 / 2
      L5_4 = L5_4 - 10
      L4_4 = L4_4 * L5_4
      L3_4 = L3_4 + L4_4
      L2_4.x = L3_4
      L3_4 = L4_2
      L4_4 = L82_1
      L5_4 = L2_2
      L4_4 = L4_4[L5_4]
      L4_4 = L4_4.cardHeight
      L3_4 = L3_4 / L4_4
      L3_4 = L3_4 + 0.05
      L2_4.xScale = L3_4
      L3_4 = L4_2
      L4_4 = L82_1
      L5_4 = L2_2
      L4_4 = L4_4[L5_4]
      L4_4 = L4_4.cardHeight
      L3_4 = L3_4 / L4_4
      L3_4 = L3_4 + 0.05
      L2_4.yScale = L3_4
      L3_4 = L2_2
      if L3_4 < 3 then
        L3_4 = 1000
        if L3_4 then
          goto lbl_53
        end
      end
      L3_4 = 800
      ::lbl_53::
      L2_4.time = L3_4
      L2_4.tag = "LiveBattle"
      
      function L3_4()
        local L0_5, L1_5, L2_5, L3_5, L4_5, L5_5
        L0_5 = L2_2
        if L0_5 == 4 then
          L0_5 = transition
          L0_5 = L0_5.to
          L1_5 = L82_1
          L2_5 = L2_2
          L1_5 = L1_5[L2_5]
          L1_5 = L1_5.view
          L2_5 = {}
          L2_5.alpha = 0.3
          L2_5.time = 800
          L0_5(L1_5, L2_5)
        end
        L0_5 = transition
        L0_5 = L0_5.to
        L1_5 = L0_3
        L2_5 = {}
        L2_5.xScale = 1.4
        L2_5.yScale = 1.4
        L2_5.alpha = 1
        L2_5.time = 500
        L2_5.tag = "LiveBattle"
        
        function L3_5()
          local L0_6, L1_6, L2_6
          L0_6 = transition
          L0_6 = L0_6.to
          L1_6 = L0_3
          L2_6 = {}
          L2_6.xScale = 1.6
          L2_6.yScale = 1.6
          L2_6.alpha = 0
          L2_6.time = 800
          L2_6.tag = "LiveBattle"
          L0_6(L1_6, L2_6)
        end
        
        L2_5.onComplete = L3_5
        L0_5(L1_5, L2_5)
        L0_5 = L5_2
        L1_5 = L86_1
        L2_5 = L2_2
        L1_5 = L1_5[L2_5]
        L1_5 = L1_5.view
        L1_5 = L1_5.x
        if L0_5 ~= L1_5 then
          L0_5 = L86_1
          L1_5 = L2_2
          L0_5 = L0_5[L1_5]
          L0_5 = L0_5.view
          L0_5 = L0_5.x
          L5_2 = L0_5
        end
        L0_5 = transition
        L0_5 = L0_5.to
        L1_5 = L82_1
        L2_5 = L2_2
        L1_5 = L1_5[L2_5]
        L1_5 = L1_5.view
        L2_5 = {}
        L3_5 = L6_2
        L2_5.y = L3_5
        L3_5 = L5_2
        L2_5.x = L3_5
        L3_5 = L4_2
        L4_5 = L82_1
        L5_5 = L2_2
        L4_5 = L4_5[L5_5]
        L4_5 = L4_5.cardHeight
        L3_5 = L3_5 / L4_5
        L2_5.xScale = L3_5
        L3_5 = L4_2
        L4_5 = L82_1
        L5_5 = L2_2
        L4_5 = L4_5[L5_5]
        L4_5 = L4_5.cardHeight
        L3_5 = L3_5 / L4_5
        L2_5.yScale = L3_5
        L2_5.time = 700
        L2_5.tag = "LiveBattle"
        
        function L3_5()
          local L0_6, L1_6, L2_6, L3_6, L4_6
          L0_6 = L86_1
          L1_6 = L2_2
          L0_6 = L0_6[L1_6]
          if L0_6 ~= nil then
            L0_6 = L86_1
            L1_6 = L2_2
            L1_6 = L1_6 + 1
            L0_6 = L0_6[L1_6]
            if L0_6 ~= nil then
              L0_6 = L86_1
              L1_6 = L2_2
              L1_6 = L1_6 + 1
              L0_6 = L0_6[L1_6]
              L0_6 = L0_6.timer
              L0_6 = L0_6.counter
              if L0_6 < 12 then
                L0_6 = L86_1
                L1_6 = L2_2
                L1_6 = L1_6 + 1
                L0_6 = L0_6[L1_6]
                L0_6 = L0_6.timer
                L1_6 = L86_1
                L2_6 = L2_2
                L2_6 = L2_6 + 1
                L1_6 = L1_6[L2_6]
                L1_6 = L1_6.timer
                L1_6 = L1_6.counter
                L2_6 = L86_1
                L3_6 = L2_2
                L2_6 = L2_6[L3_6]
                L2_6 = L2_6.timer
                L2_6 = L2_6.counter
                L1_6 = L1_6 + L2_6
                L0_6.counter = L1_6
              end
              L0_6 = L86_1
              L1_6 = L2_2
              L0_6 = L0_6[L1_6]
              L0_6 = L0_6.timer
              L0_6.counter = 0
            end
          end
          L0_6 = L82_1
          L1_6 = L2_2
          L0_6 = L0_6[L1_6]
          L0_6 = L0_6.view
          L0_6 = L0_6.x
          L1_6 = L86_1
          L2_6 = L2_2
          L1_6 = L1_6[L2_6]
          L1_6 = L1_6.view
          L1_6 = L1_6.x
          if L0_6 ~= L1_6 then
            L0_6 = transition
            L0_6 = L0_6.to
            L1_6 = L82_1
            L2_6 = L2_2
            L1_6 = L1_6[L2_6]
            L1_6 = L1_6.view
            L2_6 = {}
            L2_6.time = 240
            L3_6 = L86_1
            L4_6 = L2_2
            L3_6 = L3_6[L4_6]
            L3_6 = L3_6.view
            L3_6 = L3_6.x
            L2_6.x = L3_6
            L3_6 = easing
            L3_6 = L3_6.inQuad
            L2_6.transition = L3_6
            L2_6.tag = "LiveBattle"
            L0_6(L1_6, L2_6)
          end
          L0_6 = L75_1
          if L0_6 ~= 4 then
            L0_6 = L78_1
            if L0_6 ~= 4 then
              L0_6 = L81_1
              if L0_6 ~= 0 then
                goto lbl_90
              end
            end
          end
          L0_6 = L19_1
          L0_6 = L0_6.isPlayerDeployedHero
          if L0_6 then
            L0_6 = L19_1
            L0_6 = L0_6.hideChooseBar
            L0_6()
          end
          ::lbl_90::
        end
        
        L2_5.onComplete = L3_5
        L0_5(L1_5, L2_5)
      end
      
      L2_4.onComplete = L3_4
      L0_4(L1_4, L2_4)
    end
    
    L5_3.onComplete = L6_3
    L3_3(L4_3, L5_3)
  end
  
  L9_2 = L19_1
  L9_2 = L9_2.battle_ID
  if L9_2 ~= -1 then
    L9_2 = L19_1
    L9_2 = L9_2.battleManager
    L9_2 = L9_2.sendSelectedCardToBattle
    L10_2 = A0_2.card
    L10_2 = L10_2.id
    L11_2 = L19_1
    L11_2 = L11_2.battle_ID
    L12_2 = L75_1
    L9_2(L10_2, L11_2, L12_2)
  end
  L9_2 = L41_1
  L10_2 = L9_2
  L9_2 = L9_2.scrollToPosition
  L11_2 = {}
  L12_2 = A0_2.view
  L12_2 = L12_2.x
  L12_2 = -L12_2
  L13_2 = L3_2 / 2
  L13_2 = L5_2 - L13_2
  L14_2 = L98_1
  L13_2 = L13_2 - L14_2
  L12_2 = L12_2 + L13_2
  L11_2.x = L12_2
  L11_2.time = 800
  
  function L12_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.getSceneName
    L1_3 = "current"
    L0_3 = L0_3(L1_3)
    if L0_3 == "Scenes.LiveBattle" then
      L0_3 = L8_2
      L0_3()
    end
  end
  
  L11_2.onComplete = L12_2
  L9_2(L10_2, L11_2)
  L10_2 = A0_2
  L9_2 = A0_2.disable
  L9_2(L10_2)
  L9_2 = pairs
  L10_2 = L47_1
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  for L12_2, L13_2 in L9_2, L10_2, L11_2 do
    L14_2 = L13_2.card
    L14_2 = L14_2.id
    L15_2 = A0_2.card
    L15_2 = L15_2.id
    if L14_2 == L15_2 then
      L14_2 = L52_1
      L15_2 = L52_1
      L15_2 = #L15_2
      L15_2 = L15_2 + 1
      L16_2 = L13_2.card
      L16_2 = L16_2.id
      L14_2[L15_2] = L16_2
    end
  end
  L9_2 = nil
  L53_1 = L9_2
  L9_2 = L67_1
  L10_2 = A0_2.card
  L10_2 = L10_2.power
  L9_2 = L9_2 + L10_2
  L67_1 = L9_2
  L9_2 = L62_1
  L10_2 = L9_2
  L9_2 = L9_2.setNumber
  L11_2 = L67_1
  L12_2 = L65_1
  L11_2 = L11_2 - L12_2
  L9_2(L10_2, L11_2)
  L9_2 = L19_1
  L9_2 = L9_2.updatePowerIndicatorView
  L9_2()
  L9_2 = -1
  L10_2 = L75_1
  L11_2 = L76_1
  L12_2 = 1
  for L13_2 = L10_2, L11_2, L12_2 do
    L14_2 = L77_1
    L14_2 = L14_2[L13_2]
    if L14_2 ~= true then
      L9_2 = L13_2
      break
    end
  end
  L10_2 = log3
  L11_2 = "EmpySlot : "
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L10_2 = log3
  L11_2 = "hasPlayed Index : "
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L10_2 = L77_1
  L10_2[L9_2] = true
  L10_2 = log3
  L11_2 = "hasPlayedRound : "
  L12_2 = L77_1
  L12_2 = L12_2[L9_2]
  L10_2(L11_2, L12_2)
  L10_2 = L49_1
  L11_2 = A0_2.card
  L10_2[L9_2] = L11_2
  L10_2 = L81_1
  L10_2 = L10_2 - 1
  L81_1 = L10_2
end

L19_1.addCardsToSlots = L124_1

function L124_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = L0_1
  L4_2 = L4_2.getSceneName
  L5_2 = "current"
  L4_2 = L4_2(L5_2)
  if L4_2 ~= "Scenes.LiveBattle" then
    return
  end
  L4_2 = L51_1
  if L4_2 then
    L4_2 = L51_1
    L4_2 = L4_2[A0_2]
    if L4_2 then
      L4_2 = L51_1
      L4_2 = L4_2[A0_2]
      L5_2 = L4_2
      L4_2 = L4_2.applyHeroAbility
      L6_2 = A1_2
      L7_2 = A2_2
      L8_2 = 3
      L9_2 = A3_2
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    end
  end
end

L19_1.applyBenefitForOtherPlayers = L124_1

function L124_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = L21_1
  if L2_2 ~= nil then
    L2_2 = L21_1
    L2_2 = L2_2.view
    if L2_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = nil
  L3_2 = nil
  L4_2 = nil
  L5_2 = L21_1
  L5_2 = L5_2.view
  L2_2 = L5_2.x
  L5_2 = L21_1
  L5_2 = L5_2.view
  L3_2 = L5_2.y
  L5_2 = L21_1
  L5_2 = L5_2.view
  L4_2 = L5_2.height
  L5_2 = {}
  L6_2 = Theme
  L6_2 = L6_2.heroPowerAbilityFillBarColor
  L6_2 = L6_2[1]
  L7_2 = Theme
  L7_2 = L7_2.heroPowerAbilityFillBarColor
  L7_2 = L7_2[2]
  L8_2 = Theme
  L8_2 = L8_2.heroPowerAbilityFillBarColor
  L8_2 = L8_2[3]
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  if A0_2 == 2 then
    L6_2 = {}
    L7_2 = Theme
    L7_2 = L7_2.heroWisdomAbilityFillBarColor
    L7_2 = L7_2[1]
    L8_2 = Theme
    L8_2 = L8_2.heroWisdomAbilityFillBarColor
    L8_2 = L8_2[2]
    L9_2 = Theme
    L9_2 = L9_2.heroWisdomAbilityFillBarColor
    L9_2 = L9_2[3]
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L6_2[3] = L9_2
    L5_2 = L6_2
  elseif A0_2 == 3 then
    L6_2 = {}
    L7_2 = Theme
    L7_2 = L7_2.heroBlessingAbilityFillBarColor
    L7_2 = L7_2[1]
    L8_2 = Theme
    L8_2 = L8_2.heroBlessingAbilityFillBarColor
    L8_2 = L8_2[2]
    L9_2 = Theme
    L9_2 = L9_2.heroBlessingAbilityFillBarColor
    L9_2 = L9_2[3]
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L6_2[3] = L9_2
    L5_2 = L6_2
  end
  L6_2 = display
  L6_2 = L6_2.newText
  L7_2 = L19_1
  L7_2 = L7_2.view
  L8_2 = "+"
  L9_2 = L3_1
  L9_2 = L9_2.adjustNumber
  L10_2 = L6_1
  L10_2 = L10_2.shortenLongNumber
  L11_2 = tonumber
  L12_2 = A1_2
  L11_2, L12_2 = L11_2(L12_2)
  L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2 = L8_2 .. L9_2
  L9_2 = 0
  L10_2 = 0
  L11_2 = L4_1
  L11_2 = L11_2.fontForTitle
  L11_2 = L11_2()
  L12_2 = 12
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = L6_2
  L7_2 = L6_2.setFillColor
  L9_2 = L5_2[1]
  L10_2 = L5_2[2]
  L11_2 = L5_2[3]
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L6_2.x = L2_2
  L6_2.y = L3_2
  L6_2.alpha = 1
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = L6_2
    if L0_3 then
      L0_3 = L6_2
      L0_3.alpha = 0
      L0_3 = display
      L0_3 = L0_3.remove
      L1_3 = L6_2
      L0_3(L1_3)
      L0_3 = nil
      L6_2 = L0_3
    end
  end
  
  L8_2 = transition
  L8_2 = L8_2.to
  L9_2 = L6_2
  L10_2 = {}
  L10_2.time = 2000
  L10_2.alpha = 0
  L10_2.tag = "opponentHeroAbility"
  L8_2(L9_2, L10_2)
  L8_2 = transition
  L8_2 = L8_2.to
  L9_2 = L6_2
  L10_2 = {}
  L10_2.time = 2400
  L11_2 = L4_2 / 2
  L11_2 = L3_2 - L11_2
  L11_2 = L11_2 - 10
  L10_2.y = L11_2
  L10_2.tag = "opponentHeroAbility"
  
  function L11_2()
    local L0_3, L1_3
    L0_3 = L6_2
    L1_3 = L2_2
    L0_3.x = L1_3
    L0_3 = L6_2
    L1_3 = L3_2
    L0_3.y = L1_3
    L0_3 = L7_2
    L0_3()
  end
  
  L10_2.onComplete = L11_2
  L8_2(L9_2, L10_2)
end

L19_1.showUsedAbilityByMainEnemy = L124_1

function L124_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = L65_1
    L2_2 = L2_2 + A0_2
    L65_1 = L2_2
  else
    L2_2 = L67_1
    L2_2 = L2_2 + A0_2
    L67_1 = L2_2
  end
  L2_2 = L62_1
  L3_2 = L2_2
  L2_2 = L2_2.setNumber
  L4_2 = L67_1
  L5_2 = L65_1
  L4_2 = L4_2 - L5_2
  L2_2(L3_2, L4_2)
  L2_2 = L19_1
  L2_2 = L2_2.updatePowerIndicatorView
  L2_2()
end

L19_1.applyPowerBenefit = L124_1

function L124_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A3_2 then
    L4_2 = pairs
    L5_2 = L47_1
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = mainPlayer
      L9_2 = L9_2.heroSet
      L10_2 = L8_2.card
      L10_2 = L10_2.baseId
      L9_2 = L9_2[L10_2]
      if L9_2 then
        L10_2 = L8_2
        L9_2 = L8_2.enable
        L9_2(L10_2)
        L9_2 = L8_2.card
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
      end
    end
    if A2_2 == "CooldownError" then
      L4_2 = L47_1
      L4_2 = L4_2[A0_2]
      L5_2 = L4_2
      L4_2 = L4_2.setSelectable
      L6_2 = false
      L4_2(L5_2, L6_2)
      L4_2 = L47_1
      L4_2 = L4_2[A0_2]
      L5_2 = L4_2
      L4_2 = L4_2.setAction
      L4_2(L5_2)
      L4_2 = L47_1
      L4_2 = L4_2[A0_2]
      L5_2 = L4_2
      L4_2 = L4_2.showCooldownView
      L4_2(L5_2)
    else
      L4_2 = L47_1
      L4_2 = L4_2[A0_2]
      L5_2 = L4_2
      L4_2 = L4_2.setSelectable
      L6_2 = true
      L4_2(L5_2, L6_2)
      L4_2 = L47_1
      L4_2 = L4_2[A0_2]
      L5_2 = L4_2
      L4_2 = L4_2.setAction
      L4_2(L5_2)
      L4_2 = L47_1
      L4_2 = L4_2[A0_2]
      L5_2 = L4_2
      L4_2 = L4_2.hideCooldownView
      L4_2(L5_2)
    end
    L4_2 = L6_1
    L4_2 = L4_2.removeFromTable
    L5_2 = L19_1
    L5_2 = L5_2.everyPlayerCards
    L6_2 = L47_1
    L6_2 = L6_2[A0_2]
    L6_2 = L6_2.card
    L6_2 = L6_2.userId
    L5_2 = L5_2[L6_2]
    L6_2 = L47_1
    L6_2 = L6_2[A0_2]
    L4_2(L5_2, L6_2)
    L4_2 = nil
    L54_1 = L4_2
  else
    L4_2 = L47_1
    L4_2 = L4_2[A0_2]
    L5_2 = L4_2
    L4_2 = L4_2.enable
    L4_2(L5_2)
    if A2_2 == "CooldownError" then
      L4_2 = L47_1
      L4_2 = L4_2[A0_2]
      L5_2 = L4_2
      L4_2 = L4_2.setSelectable
      L6_2 = false
      L4_2(L5_2, L6_2)
      L4_2 = L47_1
      L4_2 = L4_2[A0_2]
      L5_2 = L4_2
      L4_2 = L4_2.setAction
      L4_2(L5_2)
      L4_2 = L47_1
      L4_2 = L4_2[A0_2]
      L5_2 = L4_2
      L4_2 = L4_2.showCooldownView
      L4_2(L5_2)
    else
      L4_2 = L47_1
      L4_2 = L4_2[A0_2]
      L5_2 = L4_2
      L4_2 = L4_2.setSelectable
      L6_2 = true
      L4_2(L5_2, L6_2)
      L4_2 = L47_1
      L4_2 = L4_2[A0_2]
      L5_2 = L4_2
      L4_2 = L4_2.setAction
      L4_2(L5_2)
      L4_2 = L47_1
      L4_2 = L4_2[A0_2]
      L5_2 = L4_2
      L4_2 = L4_2.hideCooldownView
      L4_2(L5_2)
    end
    L4_2 = L6_1
    L4_2 = L4_2.removeFromTable
    L5_2 = L19_1
    L5_2 = L5_2.everyPlayerCards
    L6_2 = L47_1
    L6_2 = L6_2[A0_2]
    L6_2 = L6_2.card
    L6_2 = L6_2.userId
    L5_2 = L5_2[L6_2]
    L6_2 = L47_1
    L6_2 = L6_2[A0_2]
    L4_2(L5_2, L6_2)
    L4_2 = L78_1
    if 0 < L4_2 then
      L4_2 = L78_1
      L4_2 = L4_2 - 1
      L78_1 = L4_2
    else
      L4_2 = 0
      L78_1 = L4_2
    end
    L4_2 = nil
    L54_1 = L4_2
  end
  L4_2 = L19_1
  L4_2 = L4_2.setCardsRejected_UIChange
  L5_2 = A0_2
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
end

L19_1.setcardError = L124_1

function L124_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if A1_3 ~= nil then
      L2_3 = pairs
      L3_3 = A1_3
      L2_3, L3_3, L4_3 = L2_3(L3_3)
      for L5_3, L6_3 in L2_3, L3_3, L4_3 do
        L7_3 = L6_3.id
        if L7_3 == A0_3 then
          L7_3 = true
          return L7_3
        end
      end
    end
    L2_3 = false
    return L2_3
  end
  
  L5_2 = false
  L6_2 = require
  L7_2 = "Models.Card"
  L6_2 = L6_2(L7_2)
  L7_2 = L6_2.baseCards
  if L7_2 then
    L7_2 = L6_2.baseCards
    L8_2 = A1_2.baseId
    L7_2 = L7_2[L8_2]
    if L7_2 then
      L7_2 = L6_2.baseCards
      L8_2 = A1_2.baseId
      L7_2 = L7_2[L8_2]
      L7_2 = L7_2.isHero
      if L7_2 then
        L5_2 = true
      end
    end
  end
  if A0_2 == "friends" then
    L7_2 = true
    L114_1 = L7_2
    L7_2 = L4_2
    L8_2 = A1_2.userId
    L9_2 = L49_1
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      return
    end
    L7_2 = L19_1
    L7_2 = L7_2.everyPlayerCards
    L8_2 = A1_2.userId
    L7_2 = L7_2[L8_2]
    if L7_2 == nil then
      L7_2 = L19_1
      L7_2 = L7_2.everyPlayerCards
      L8_2 = A1_2.userId
      L9_2 = {}
      L7_2[L8_2] = L9_2
    end
    L7_2 = L19_1
    L7_2 = L7_2.everyPlayerCards
    L8_2 = A1_2.userId
    L7_2 = L7_2[L8_2]
    L8_2 = L19_1
    L8_2 = L8_2.everyPlayerCards
    L9_2 = A1_2.userId
    L8_2 = L8_2[L9_2]
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L7_2[L8_2] = A1_2
    L7_2 = L19_1
    L7_2 = L7_2.friends
    L8_2 = L19_1
    L8_2 = L8_2.friends
    L8_2 = #L8_2
    L8_2 = L8_2 + 1
    L9_2 = A1_2.userId
    L7_2[L8_2] = L9_2
    L7_2 = L67_1
    L8_2 = A1_2.power
    L7_2 = L7_2 + L8_2
    L67_1 = L7_2
    L7_2 = L62_1
    L8_2 = L7_2
    L7_2 = L7_2.setNumber
    L9_2 = L67_1
    L10_2 = L65_1
    L9_2 = L9_2 - L10_2
    L7_2(L8_2, L9_2)
    L7_2 = L19_1
    L7_2 = L7_2.updatePowerIndicatorView
    L7_2()
    if L5_2 then
      A2_2 = 5
    end
    L7_2 = L51_1
    if L7_2 ~= nil then
      L7_2 = L51_1
      L8_2 = A1_2.userId
      L7_2 = L7_2[L8_2]
      if L7_2 ~= nil then
        L7_2 = L51_1
        L8_2 = A1_2.userId
        L7_2 = L7_2[L8_2]
        L8_2 = L7_2
        L7_2 = L7_2.setCard
        L9_2 = A2_2
        L10_2 = A1_2.power
        L7_2(L8_2, L9_2, L10_2)
      else
        L7_2 = L19_1
        L7_2 = L7_2.playerJoinedTheBattle
        L8_2 = A1_2.userId
        L9_2 = A3_2
        L10_2 = L19_1
        L10_2 = L10_2.ownerTeamId
        L7_2(L8_2, L9_2, L10_2)
        L7_2 = L51_1
        L8_2 = A1_2.userId
        L7_2 = L7_2[L8_2]
        L8_2 = L7_2
        L7_2 = L7_2.setCard
        L9_2 = A2_2
        L10_2 = A1_2.power
        L7_2(L8_2, L9_2, L10_2)
      end
    end
    L7_2 = L49_1
    if L7_2 ~= nil then
      L7_2 = L49_1
      L8_2 = L56_1
      L7_2[L8_2] = A1_2
      L7_2 = L56_1
      L7_2 = L7_2 + 1
      L56_1 = L7_2
    end
  elseif A0_2 == "enemies" then
    L7_2 = true
    L114_1 = L7_2
    L7_2 = L90_1
    if L7_2 ~= nil then
      L7_2 = L90_1
      L7_2 = L7_2.toFront
      if L7_2 then
        L7_2 = L90_1
        L8_2 = L7_2
        L7_2 = L7_2.toFront
        L7_2(L8_2)
      end
    end
    L7_2 = L4_2
    L8_2 = A1_2.userId
    L9_2 = L50_1
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = log3
      L8_2 = "card already added before"
      L7_2(L8_2)
      return
    end
    L7_2 = L19_1
    L7_2 = L7_2.everyPlayerCards
    L8_2 = A1_2.userId
    L7_2 = L7_2[L8_2]
    if L7_2 == nil then
      L7_2 = L19_1
      L7_2 = L7_2.everyPlayerCards
      L8_2 = A1_2.userId
      L9_2 = {}
      L7_2[L8_2] = L9_2
    end
    
    function L7_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = L19_1
      L0_3 = L0_3.everyPlayerCards
      L1_3 = A1_2
      L1_3 = L1_3.userId
      L0_3 = L0_3[L1_3]
      L1_3 = L19_1
      L1_3 = L1_3.everyPlayerCards
      L2_3 = A1_2
      L2_3 = L2_3.userId
      L1_3 = L1_3[L2_3]
      L1_3 = #L1_3
      L1_3 = L1_3 + 1
      L2_3 = A1_2
      L0_3[L1_3] = L2_3
      L0_3 = L19_1
      L0_3 = L0_3.enemies
      L1_3 = L19_1
      L1_3 = L1_3.enemies
      L1_3 = #L1_3
      L1_3 = L1_3 + 1
      L2_3 = A1_2
      L2_3 = L2_3.userId
      L0_3[L1_3] = L2_3
      L0_3 = L65_1
      L1_3 = A1_2
      L1_3 = L1_3.power
      L0_3 = L0_3 + L1_3
      L65_1 = L0_3
      L0_3 = L62_1
      L1_3 = L0_3
      L0_3 = L0_3.setNumber
      L2_3 = L67_1
      L3_3 = L65_1
      L2_3 = L2_3 - L3_3
      L0_3(L1_3, L2_3)
      L0_3 = L19_1
      L0_3 = L0_3.updatePowerIndicatorView
      L0_3()
    end
    
    L8_2 = A1_2.userId
    L9_2 = tonumber
    L10_2 = L19_1
    L10_2 = L10_2.mainEnemyId
    L9_2 = L9_2(L10_2)
    if L8_2 ~= L9_2 then
      L8_2 = L7_2
      L8_2()
      L8_2 = L51_1
      L9_2 = A1_2.userId
      L8_2 = L8_2[L9_2]
      if L8_2 ~= nil then
        L8_2 = log3
        L9_2 = "update enemies to every player card pack"
        L8_2(L9_2)
        if L5_2 then
          A2_2 = 5
        end
        L8_2 = L51_1
        L9_2 = A1_2.userId
        L8_2 = L8_2[L9_2]
        L9_2 = L8_2
        L8_2 = L8_2.setCard
        L10_2 = A2_2
        L11_2 = A1_2.power
        L8_2(L9_2, L10_2, L11_2)
      else
        if L5_2 then
          A2_2 = 5
        end
        L8_2 = L19_1
        L8_2 = L8_2.playerJoinedTheBattle
        L9_2 = A1_2.userId
        L10_2 = A3_2
        L11_2 = mainPlayer
        L11_2 = L11_2.id
        L11_2 = L11_2 + 1
        L8_2(L9_2, L10_2, L11_2)
        L8_2 = L19_1
        L8_2 = L8_2.playerJoinedTheBattle
        L9_2 = A1_2.userId
        L10_2 = A3_2
        L11_2 = L19_1
        L11_2 = L11_2.ownerTeamId
        L11_2 = L11_2 + 1
        L8_2(L9_2, L10_2, L11_2)
        L8_2 = log3
        L9_2 = "add enemies to every player card pack"
        L8_2(L9_2)
        L8_2 = L19_1
        L8_2 = L8_2.playerJoinedTheBattle
        L9_2 = A1_2.userId
        L10_2 = A3_2
        L11_2 = mainPlayer
        L11_2 = L11_2.id
        L11_2 = L11_2 + 1
        L8_2(L9_2, L10_2, L11_2)
        L8_2 = L51_1
        L9_2 = A1_2.userId
        L8_2 = L8_2[L9_2]
        L9_2 = L8_2
        L8_2 = L8_2.setCard
        L10_2 = A2_2
        L11_2 = A1_2.power
        L8_2(L9_2, L10_2, L11_2)
      end
    elseif L5_2 then
      L8_2 = L7_2
      L8_2()
      L8_2 = L41_1
      L8_2 = L8_2.x
      L9_2 = L41_1
      L9_2 = L9_2.width
      L9_2 = L9_2 / 2
      L8_2 = L8_2 + L9_2
      L8_2 = L8_2 - 12
      L9_2 = -60
      L10_2 = {}
      L11_2 = A1_2.baseId
      L10_2.id = L11_2
      L10_2.widthOfView = 75
      L10_2.heightOfView = 75
      L10_2.spineCharacter = true
      L11_2 = L18_1
      L12_2 = L11_2
      L11_2 = L11_2.new
      L13_2 = L10_2
      L11_2 = L11_2(L12_2, L13_2)
      L21_1 = L11_2
      L11_2 = L21_1
      L12_2 = L11_2
      L11_2 = L11_2.addListenerToHero
      L11_2(L12_2)
      L11_2 = L19_1
      L11_2 = L11_2.view
      L12_2 = L11_2
      L11_2 = L11_2.insert
      L13_2 = L21_1
      L13_2 = L13_2.view
      L11_2(L12_2, L13_2)
      L11_2 = L21_1
      L11_2 = L11_2.view
      L12_2 = L21_1
      L12_2 = L12_2.view
      L12_2 = L12_2.width
      L12_2 = L12_2 / 2
      L12_2 = L8_2 - L12_2
      L11_2.x = L12_2
      L11_2 = L21_1
      L11_2 = L11_2.view
      L12_2 = L21_1
      L12_2 = L12_2.view
      L12_2 = L12_2.height
      L12_2 = L12_2 / 2
      L12_2 = L9_2 - L12_2
      L11_2.y = L12_2
      L11_2 = 1
      L12_2 = 4
      L13_2 = 1
      for L14_2 = L11_2, L12_2, L13_2 do
        L15_2 = L87_1
        L15_2 = L15_2[L14_2]
        if L15_2 then
          L15_2 = transition
          L15_2 = L15_2.to
          L16_2 = L87_1
          L16_2 = L16_2[L14_2]
          L16_2 = L16_2.view
          L17_2 = {}
          L17_2.time = 450
          L18_2 = L87_1
          L18_2 = L18_2[L14_2]
          L18_2 = L18_2.view
          L18_2 = L18_2.x
          L19_2 = L21_1
          L19_2 = L19_2.view
          L19_2 = L19_2.height
          L19_2 = L19_2 / 2
          L18_2 = L18_2 - L19_2
          L17_2.x = L18_2
          L15_2(L16_2, L17_2)
          L15_2 = L22_1
          L15_2 = L15_2[L14_2]
          if L15_2 then
            L15_2 = transition
            L15_2 = L15_2.to
            L16_2 = L22_1
            L16_2 = L16_2[L14_2]
            L16_2 = L16_2.view
            L17_2 = {}
            L17_2.time = 450
            L18_2 = L22_1
            L18_2 = L18_2[L14_2]
            L18_2 = L18_2.view
            L18_2 = L18_2.x
            L19_2 = L21_1
            L19_2 = L19_2.view
            L19_2 = L19_2.height
            L19_2 = L19_2 / 2
            L18_2 = L18_2 - L19_2
            L17_2.x = L18_2
            L15_2(L16_2, L17_2)
          end
        end
      end
      L11_2 = transition
      L11_2 = L11_2.to
      L12_2 = L21_1
      L12_2 = L12_2.view
      L13_2 = {}
      L13_2.time = 750
      L14_2 = L21_1
      L14_2 = L14_2.view
      L14_2 = L14_2.height
      L14_2 = L14_2 / 2
      L14_2 = 15 + L14_2
      L13_2.y = L14_2
      
      function L14_2()
        local L0_3, L1_3, L2_3
        L0_3 = finalizeCardsPositions
        L1_3 = L22_1
        L2_3 = L87_1
        L0_3(L1_3, L2_3)
      end
      
      L13_2.onComplete = L14_2
      L11_2(L12_2, L13_2)
    else
      L8_2 = L57_1
      if L8_2 < 4 then
        L57_1 = A2_2
        L8_2 = L76_1
        if A2_2 > L8_2 then
          L8_2 = L76_1
          L57_1 = L8_2
        end
        L8_2 = L50_1
        L9_2 = L57_1
        L8_2 = L8_2[L9_2]
        if L8_2 then
          return
        end
        L8_2 = L7_2
        L8_2()
        L8_2 = L87_1
        L9_2 = L57_1
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2.card_width
        L9_2 = L87_1
        L10_2 = L57_1
        L9_2 = L9_2[L10_2]
        L9_2 = L9_2.card_height
        L10_2 = L87_1
        L11_2 = L57_1
        L10_2 = L10_2[L11_2]
        L10_2 = L10_2.view
        L10_2 = L10_2.x
        L11_2 = L87_1
        L12_2 = L57_1
        L11_2 = L11_2[L12_2]
        L11_2 = L11_2.view
        L11_2 = L11_2.y
        L12_2 = display
        L12_2 = L12_2.newImageRect
        L13_2 = L4_1
        L13_2 = L13_2.Path_Assets
        L14_2 = "General/FC-rankup-glow1.png"
        L13_2 = L13_2 .. L14_2
        L14_2 = 66
        L15_2 = 66
        L12_2 = L12_2(L13_2, L14_2, L15_2)
        L12_2.alpha = 1
        L13_2 = L8_2 / 2
        L13_2 = L10_2 + L13_2
        L12_2.x = L13_2
        L13_2 = L9_2 / 2
        L13_2 = L11_2 + L13_2
        L12_2.y = L13_2
        L13_2 = L90_1
        L14_2 = L13_2
        L13_2 = L13_2.insert
        L15_2 = L12_2
        L13_2(L14_2, L15_2)
        L13_2 = {}
        L14_2 = nil
        L15_2 = nil
        L16_2 = L57_1
        if L16_2 == 1 then
          L16_2 = -1
          L15_2 = -1
          L14_2 = L16_2
        else
          L16_2 = L57_1
          if L16_2 == 2 then
            L16_2 = 1
            L15_2 = -1
            L14_2 = L16_2
          else
            L16_2 = L57_1
            if L16_2 == 3 then
              L16_2 = -1
              L15_2 = 1
              L14_2 = L16_2
            else
              L16_2 = L57_1
              if L16_2 == 4 then
                L16_2 = 1
                L15_2 = 1
                L14_2 = L16_2
              end
            end
          end
        end
        L16_2 = L57_1
        if L16_2 < 5 then
          L16_2 = {}
          L17_2 = L87_1
          L17_2 = L17_2[1]
          L17_2 = L17_2.card_height
          L16_2.cardHeight = L17_2
          L16_2.createObjectForLiveBattle = true
          L17_2 = L57_1
          L18_2 = L2_1
          L19_2 = L18_2
          L18_2 = L18_2.new
          L20_2 = "big"
          L21_2 = A1_2
          L22_2 = L19_1
          L23_2 = L16_2
          L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2)
          L13_2[L17_2] = L18_2
          L17_2 = L57_1
          L17_2 = L13_2[L17_2]
          L18_2 = L17_2
          L17_2 = L17_2.deselected
          L17_2(L18_2)
          L17_2 = L57_1
          L17_2 = L13_2[L17_2]
          L18_2 = L17_2
          L17_2 = L17_2.setPosition
          L19_2 = L87_1
          L20_2 = L57_1
          L19_2 = L19_2[L20_2]
          L19_2 = L19_2.card_width
          L19_2 = L19_2 / 2
          L19_2 = L19_2 - 10
          L19_2 = L14_2 * L19_2
          L19_2 = L10_2 + L19_2
          L20_2 = L87_1
          L21_2 = L57_1
          L20_2 = L20_2[L21_2]
          L20_2 = L20_2.card_height
          L20_2 = L20_2 / 2
          L20_2 = L20_2 - 10
          L20_2 = L15_2 * L20_2
          L20_2 = L11_2 + L20_2
          L17_2(L18_2, L19_2, L20_2)
          L17_2 = L90_1
          L18_2 = L17_2
          L17_2 = L17_2.insert
          L19_2 = L57_1
          L19_2 = L13_2[L19_2]
          L19_2 = L19_2.view
          L17_2(L18_2, L19_2)
          L17_2 = L57_1
          L17_2 = L13_2[L17_2]
          L17_2 = L17_2.view
          L17_2.xScale = 1.1
          L17_2 = L57_1
          L17_2 = L13_2[L17_2]
          L17_2 = L17_2.view
          L17_2.yScale = 1.1
          L17_2 = L50_1
          L18_2 = L57_1
          L17_2[L18_2] = A1_2
          L17_2 = L22_1
          L18_2 = L57_1
          L19_2 = L57_1
          L19_2 = L13_2[L19_2]
          L17_2[L18_2] = L19_2
          L17_2 = L19_1
          L17_2 = L17_2.enemyAddedCardsToBattle
          L18_2 = A1_2.id
          L19_2 = L57_1
          L19_2 = L13_2[L19_2]
          L17_2[L18_2] = L19_2
          L17_2 = transition
          L17_2 = L17_2.to
          L18_2 = L12_2
          L19_2 = {}
          L19_2.xScale = 1.4
          L19_2.yScale = 1.4
          L19_2.alpha = 1
          L19_2.time = 500
          L19_2.tag = "LiveBattle"
          
          function L20_2()
            local L0_3, L1_3, L2_3
            L0_3 = transition
            L0_3 = L0_3.to
            L1_3 = L12_2
            L2_3 = {}
            L2_3.xScale = 1.6
            L2_3.yScale = 1.6
            L2_3.alpha = 0
            L2_3.time = 800
            L2_3.tag = "LiveBattle"
            L0_3(L1_3, L2_3)
          end
          
          L19_2.onComplete = L20_2
          L17_2(L18_2, L19_2)
          L17_2 = L87_1
          L18_2 = L57_1
          L17_2 = L17_2[L18_2]
          L17_2 = L17_2.view
          L17_2 = L17_2.x
          if L10_2 ~= L17_2 then
            L17_2 = L87_1
            L18_2 = L57_1
            L17_2 = L17_2[L18_2]
            L17_2 = L17_2.view
            L10_2 = L17_2.x
          end
          L17_2 = transition
          L17_2 = L17_2.to
          L18_2 = L57_1
          L18_2 = L13_2[L18_2]
          L18_2 = L18_2.view
          L19_2 = {}
          L19_2.x = L10_2
          L19_2.y = L11_2
          L19_2.xScale = 1
          L19_2.yScale = 1
          L19_2.time = 500
          L19_2.tag = "LiveBattle"
          
          function L20_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3
            L0_3 = L22_1
            L1_3 = L57_1
            L0_3 = L0_3[L1_3]
            L0_3 = L0_3.view
            L0_3 = L0_3.x
            L1_3 = L87_1
            L2_3 = L57_1
            L1_3 = L1_3[L2_3]
            L1_3 = L1_3.view
            L1_3 = L1_3.x
            if L0_3 ~= L1_3 then
              L0_3 = transition
              L0_3 = L0_3.to
              L1_3 = L22_1
              L2_3 = L57_1
              L1_3 = L1_3[L2_3]
              L1_3 = L1_3.view
              L2_3 = {}
              L2_3.time = 240
              L3_3 = L87_1
              L4_3 = L57_1
              L3_3 = L3_3[L4_3]
              L3_3 = L3_3.view
              L3_3 = L3_3.x
              L2_3.x = L3_3
              L2_3.tag = "LiveBattle"
              L3_3 = easing
              L3_3 = L3_3.inQuad
              L2_3.transition = L3_3
              L0_3(L1_3, L2_3)
            end
          end
          
          L19_2.onComplete = L20_2
          L17_2(L18_2, L19_2)
        end
      end
    end
  end
end

L19_1.addCardsToScrollers = L124_1

function L124_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = pairs
  L2_2 = L52_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2.id
    if L5_2 == L6_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = false
  return L1_2
end

function L125_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.id
    L8_2 = A0_2.id
    if L7_2 == L8_2 then
      L7_2 = log3
      L8_2 = "found card in table"
      L7_2(L8_2)
      return L6_2
    end
  end
  L2_2 = log3
  L3_2 = "didn't find card"
  L2_2(L3_2)
  L2_2 = nil
  return L2_2
end

function L126_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = L123_1
  L1_2 = L47_1
  L0_2 = L0_2(L1_2)
  L1_2 = pairs
  L2_2 = L0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L124_1
    L7_2 = L47_1
    L7_2 = L7_2[L5_2]
    L6_2 = L6_2(L7_2)
    if L6_2 then
    else
      L6_2 = {}
      L7_2 = L32_1
      L6_2.cardHeight = L7_2
      L6_2.createObjectForLiveBattle = true
      L7_2 = L2_1
      L8_2 = L7_2
      L7_2 = L7_2.new
      L9_2 = "big"
      L10_2 = L47_1
      L10_2 = L10_2[L5_2]
      L10_2 = L10_2.card
      L11_2 = L19_1
      L12_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
      L9_2 = L7_2
      L8_2 = L7_2.deselected
      L8_2(L9_2)
      L8_2 = L19_1
      L9_2 = L8_2
      L8_2 = L8_2.addCardsToScrollers
      L10_2 = "friends"
      L11_2 = L7_2
      L8_2(L9_2, L10_2, L11_2)
      L8_2 = L78_1
      L8_2 = L8_2 + 1
      L78_1 = L8_2
      L8_2 = L125_1
      L9_2 = L47_1
      L9_2 = L9_2[L5_2]
      L10_2 = L47_1
      L8_2 = L8_2(L9_2, L10_2)
      L10_2 = L8_2
      L9_2 = L8_2.disable
      L9_2(L10_2)
      L9_2 = L52_1
      L10_2 = L52_1
      L10_2 = #L10_2
      L10_2 = L10_2 + 1
      L11_2 = L8_2.id
      L9_2[L10_2] = L11_2
      break
    end
  end
end

function L127_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = display
  L1_2 = L1_2.newRoundedRect
  L2_2 = A0_2.view
  L3_2 = A0_2.view
  L3_2 = L3_2.x
  L4_2 = A0_2.cardWidth
  L4_2 = L4_2 / 2
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2.view
  L4_2 = L4_2.y
  L5_2 = A0_2.cardHeight
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L5_2 = A0_2.cardWidth
  L6_2 = A0_2.cardHeight
  L7_2 = 1
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = L1_2
  L2_2 = L1_2.setFillColor
  L4_2 = 1
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0.5
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end

L19_1.disableSlot = L127_1

function L127_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L75_1
  L2_2 = L76_1
  if L1_2 >= L2_2 then
    L1_2 = log3
    L2_2 = "finish : "
    L3_2 = L76_1
    L4_2 = L75_1
    L1_2(L2_2, L3_2, L4_2)
    
    function L1_2()
      local L0_3, L1_3
      L0_3 = L11_1
      L0_3 = L0_3.show
      L1_3 = L3_1
      L1_3 = L1_3["Wait For Server To Finish Battle"]
      L0_3(L1_3)
    end
    
    L2_2 = timer
    L2_2 = L2_2.performWithDelay
    L3_2 = 3000
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    L106_1 = L2_2
    
    function L2_2()
      local L0_3, L1_3
      L0_3 = L19_1
      L0_3 = L0_3.battleManager
      L0_3 = L0_3.removeBattles
      L1_3 = L19_1
      L1_3 = L1_3.battle_ID
      L0_3(L1_3)
    end
    
    L3_2 = timer
    L3_2 = L3_2.performWithDelay
    L4_2 = 30000
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L107_1 = L3_2
    L3_2 = L78_1
    L4_2 = L79_1
    if L3_2 == L4_2 then
      L3_2 = L6_1
      L3_2 = L3_2.checkUpperTableIndexNil
      L4_2 = L86_1
      L5_2 = {}
      L6_2 = L75_1
      L7_2 = "card"
      L8_2 = "view"
      L9_2 = "toFront"
      L5_2[1] = L6_2
      L5_2[2] = L7_2
      L5_2[3] = L8_2
      L5_2[4] = L9_2
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        L3_2 = L86_1
        L4_2 = L75_1
        L3_2 = L3_2[L4_2]
        L3_2 = L3_2.card
        L3_2 = L3_2.view
        L4_2 = L3_2
        L3_2 = L3_2.toFront
        L3_2(L4_2)
      end
      L3_2 = L78_1
      if L3_2 < 4 then
        L3_2 = L19_1
        L3_2 = L3_2.disableSlot
        L4_2 = L86_1
        L5_2 = L75_1
        L4_2 = L4_2[L5_2]
        L4_2 = L4_2.card
        L3_2(L4_2)
      end
      L3_2 = L19_1
      L3_2 = L3_2.hideChooseBar
      L3_2()
    else
      L3_2 = L78_1
      L79_1 = L3_2
      L3_2 = L6_1
      L3_2 = L3_2.checkUpperTableIndexNil
      L4_2 = L86_1
      L5_2 = {}
      L6_2 = L75_1
      L7_2 = "card"
      L8_2 = "view"
      L9_2 = "toFront"
      L5_2[1] = L6_2
      L5_2[2] = L7_2
      L5_2[3] = L8_2
      L5_2[4] = L9_2
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        L3_2 = L86_1
        L4_2 = L75_1
        L3_2 = L3_2[L4_2]
        L3_2 = L3_2.card
        L3_2 = L3_2.view
        L4_2 = L3_2
        L3_2 = L3_2.toFront
        L3_2(L4_2)
      end
    end
    L3_2 = L81_1
    L3_2 = L3_2 - 1
    L81_1 = L3_2
    L3_2 = L77_1
    L4_2 = L75_1
    L3_2 = L3_2[L4_2]
    if L3_2 == false then
      L3_2 = L75_1
      if 1 <= L3_2 then
        L3_2 = L78_1
        L4_2 = L76_1
        if L3_2 < L4_2 then
          L3_2 = L83_1
          if L3_2 then
            L3_2 = L126_1
            L3_2()
          end
        end
      end
    end
    return
  end
  if A0_2 == true then
    L1_2 = L74_1
    if L1_2 ~= -1 then
      L1_2 = -1
      L74_1 = L1_2
    end
    L1_2 = L77_1
    L2_2 = L75_1
    L1_2[L2_2] = false
  else
    L1_2 = log3
    L2_2 = "hasPlayedRound[currentGameRound] : "
    L3_2 = L77_1
    L4_2 = L75_1
    L3_2 = L3_2[L4_2]
    L1_2(L2_2, L3_2)
    L1_2 = log3
    L2_2 = "hasplayedIndex"
    L3_2 = L75_1
    L1_2(L2_2, L3_2)
    L1_2 = L77_1
    L2_2 = L75_1
    L1_2 = L1_2[L2_2]
    if L1_2 == false then
      L1_2 = L75_1
      if 1 <= L1_2 then
        L1_2 = L78_1
        L2_2 = L76_1
        if L1_2 < L2_2 then
          L1_2 = L83_1
          if L1_2 then
            L1_2 = L126_1
            L1_2()
          end
          L1_2 = L77_1
          L2_2 = L75_1
          L1_2[L2_2] = false
          L1_2 = L81_1
          L1_2 = L1_2 - 1
          L81_1 = L1_2
        end
      end
    end
    L1_2 = L78_1
    L2_2 = L79_1
    if L1_2 == L2_2 then
      L1_2 = L6_1
      L1_2 = L1_2.checkUpperTableIndexNil
      L2_2 = L86_1
      L3_2 = {}
      L4_2 = L75_1
      L5_2 = "card"
      L6_2 = "view"
      L7_2 = "toFront"
      L3_2[1] = L4_2
      L3_2[2] = L5_2
      L3_2[3] = L6_2
      L3_2[4] = L7_2
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        L1_2 = L86_1
        L2_2 = L75_1
        L1_2 = L1_2[L2_2]
        L1_2 = L1_2.card
        L1_2 = L1_2.view
        L2_2 = L1_2
        L1_2 = L1_2.toFront
        L1_2(L2_2)
      end
      L1_2 = L19_1
      L1_2 = L1_2.disableSlot
      L2_2 = L86_1
      L3_2 = L75_1
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.card
      L1_2(L2_2)
    else
      L1_2 = L78_1
      L79_1 = L1_2
      L1_2 = L6_1
      L1_2 = L1_2.checkUpperTableIndexNil
      L2_2 = L86_1
      L3_2 = {}
      L4_2 = L75_1
      L5_2 = "card"
      L6_2 = "view"
      L7_2 = "toFront"
      L3_2[1] = L4_2
      L3_2[2] = L5_2
      L3_2[3] = L6_2
      L3_2[4] = L7_2
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        L1_2 = L86_1
        L2_2 = L75_1
        L1_2 = L1_2[L2_2]
        L1_2 = L1_2.card
        L1_2 = L1_2.view
        L2_2 = L1_2
        L1_2 = L1_2.toFront
        L1_2(L2_2)
      end
    end
    L1_2 = L75_1
    L1_2 = L1_2 + 1
    L75_1 = L1_2
    L1_2 = L86_1
    L2_2 = L75_1
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.timer
    L2_2 = L1_2
    L1_2 = L1_2.startCoinTimer
    L1_2(L2_2)
    L1_2 = L74_1
    if L1_2 ~= -1 then
      L1_2 = -1
      L74_1 = L1_2
    else
    end
    L1_2 = L77_1
    L2_2 = L75_1
    L1_2 = L1_2[L2_2]
    if L1_2 ~= true then
      L1_2 = L77_1
      L2_2 = L75_1
      L1_2[L2_2] = false
    end
    L1_2 = log3
    L2_2 = "numberOfAvilableSlots : "
    L3_2 = L81_1
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
    L1_2 = log3
    L2_2 = "numberOfSelectedCards : "
    L3_2 = L78_1
    L1_2(L2_2, L3_2)
    L1_2 = log3
    L2_2 = "NextRoundBegins"
    L1_2(L2_2)
    L1_2 = log3
    L2_2 = "CurrentgameRound : "
    L3_2 = L75_1
    L1_2(L2_2, L3_2)
  end
end

function L128_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = log3
  L4_2 = "player joined the battle in live battle : "
  L5_2 = A1_2
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L51_1
  L3_2 = L3_2[A0_2]
  if L3_2 ~= nil then
    L3_2 = log3
    L4_2 = "error : player already joined and added to scrollers"
    L3_2(L4_2)
    return
  end
  L3_2 = L19_1
  L3_2 = L3_2.ownerTeamId
  if A2_2 == L3_2 then
    L3_2 = L51_1
    L4_2 = L10_1
    L5_2 = L4_2
    L4_2 = L4_2.new
    L6_2 = nil
    L7_2 = L43_1
    L7_2 = L7_2.width
    L7_2 = L7_2 - 6
    L8_2 = L39_1
    L9_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L3_2[A0_2] = L4_2
    L3_2 = L61_1
    L4_2 = L59_1
    L5_2 = L39_1
    L6_2 = L36_1
    L5_2 = L5_2 + L6_2
    L4_2 = L4_2 * L5_2
    L3_2[A0_2] = L4_2
    L3_2 = L51_1
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.group
    L4_2 = L61_1
    L4_2 = L4_2[A0_2]
    L5_2 = L88_1
    L5_2 = L5_2.y
    L4_2 = L4_2 + L5_2
    L5_2 = L88_1
    L5_2 = L5_2.height
    L5_2 = L5_2 * 0.5
    L4_2 = L4_2 - L5_2
    L4_2 = L4_2 - 4
    L3_2.y = L4_2
    L3_2 = L59_1
    L3_2 = L3_2 + 1
    L59_1 = L3_2
    L3_2 = L19_1
    L3_2 = L3_2.friends
    L4_2 = L19_1
    L4_2 = L4_2.friends
    L4_2 = #L4_2
    L4_2 = L4_2 + 1
    L3_2[L4_2] = A0_2
    L3_2 = warningLog
    L4_2 = "player with id :"
    L5_2 = A0_2
    L6_2 = " joined the battle (friends)"
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = L51_1
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.group
    L3_2.x = 3
    L3_2 = L51_1
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.group
    L3_2.alpha = 0
    L3_2 = L111_1
    if L3_2 == true then
      L3_2 = L43_1
      L4_2 = L3_2
      L3_2 = L3_2.insert
      L5_2 = L51_1
      L5_2 = L5_2[A0_2]
      L5_2 = L5_2.group
      L3_2(L4_2, L5_2)
      L3_2 = transition
      L3_2 = L3_2.to
      L4_2 = L51_1
      L4_2 = L4_2[A0_2]
      L4_2 = L4_2.group
      L5_2 = {}
      L5_2.alpha = 1
      L5_2.time = 800
      L3_2(L4_2, L5_2)
    else
      L3_2 = L19_1
      L3_2 = L3_2.friendsScrollerAnimation
      L4_2 = A0_2
      L3_2(L4_2)
    end
  else
    L3_2 = L51_1
    L4_2 = L10_1
    L5_2 = L4_2
    L4_2 = L4_2.new
    L6_2 = nil
    L7_2 = L45_1
    L7_2 = L7_2.width
    L7_2 = L7_2 - 6
    L8_2 = L39_1
    L9_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L3_2[A0_2] = L4_2
    L3_2 = L60_1
    L4_2 = L58_1
    L5_2 = L39_1
    L6_2 = L36_1
    L5_2 = L5_2 + L6_2
    L4_2 = L4_2 * L5_2
    L3_2[A0_2] = L4_2
    L3_2 = L51_1
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.group
    L4_2 = L60_1
    L4_2 = L4_2[A0_2]
    L5_2 = L88_1
    L5_2 = L5_2.y
    L4_2 = L4_2 + L5_2
    L5_2 = L88_1
    L5_2 = L5_2.height
    L5_2 = L5_2 * 0.5
    L4_2 = L4_2 - L5_2
    L4_2 = L4_2 - 4
    L3_2.y = L4_2
    L3_2 = L58_1
    L3_2 = L3_2 + 1
    L58_1 = L3_2
    L3_2 = L19_1
    L3_2 = L3_2.enemies
    L4_2 = L19_1
    L4_2 = L4_2.enemies
    L4_2 = #L4_2
    L4_2 = L4_2 + 1
    L3_2[L4_2] = A0_2
    L3_2 = warningLog
    L4_2 = "player with id :"
    L5_2 = A0_2
    L6_2 = " joined the battle (enemies)"
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = L51_1
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.group
    L3_2.x = 3
    L3_2 = L51_1
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.group
    L3_2.alpha = 0
    L3_2 = L112_1
    if L3_2 == true then
      L3_2 = L45_1
      L4_2 = L3_2
      L3_2 = L3_2.insert
      L5_2 = L51_1
      L5_2 = L5_2[A0_2]
      L5_2 = L5_2.group
      L3_2(L4_2, L5_2)
      L3_2 = transition
      L3_2 = L3_2.to
      L4_2 = L51_1
      L4_2 = L4_2[A0_2]
      L4_2 = L4_2.group
      L5_2 = {}
      L5_2.alpha = 1
      L5_2.time = 800
      L3_2(L4_2, L5_2)
    else
      L3_2 = log3
      L4_2 = "playerId"
      L5_2 = A0_2
      L3_2(L4_2, L5_2)
      L3_2 = L19_1
      L3_2 = L3_2.enemiesScrollerAnimation
      L4_2 = A0_2
      L3_2(L4_2)
    end
  end
end

L19_1.playerJoinedTheBattle = L128_1

function L128_1()
  local L0_2, L1_2, L2_2
  L0_2 = log3
  L1_2 = "scene.requestHelpRecieved"
  L0_2(L1_2)
  L0_2 = L19_1
  L0_2 = L0_2.ownerTeamId
  L1_2 = L19_1
  L1_2 = L1_2.help_owner_id
  if L0_2 ~= L1_2 then
    L0_2 = L78_1
    L0_2 = L0_2 + 1
    L1_2 = L86_1
    L1_2 = L1_2[L0_2]
    if L1_2 ~= nil then
      if L0_2 == 1 then
        L1_2 = L86_1
        L1_2 = L1_2[L0_2]
        L1_2 = L1_2.timer
        L1_2.counter = 31
      elseif L0_2 == 2 then
        L1_2 = L86_1
        L1_2 = L1_2[L0_2]
        L1_2 = L1_2.timer
        L1_2.counter = 41
      elseif L0_2 == 3 then
        L1_2 = L86_1
        L1_2 = L1_2[L0_2]
        L1_2 = L1_2.timer
        L1_2.counter = 51
      elseif L0_2 == 4 then
        L1_2 = L86_1
        L1_2 = L1_2[L0_2]
        L1_2 = L1_2.timer
        L1_2.counter = 61
      elseif L0_2 == 5 then
        L1_2 = L86_1
        L2_2 = L0_2 - 1
        L1_2 = L1_2[L2_2]
        L1_2 = L1_2.timer
        L1_2.counter = 61
      end
    end
    L1_2 = L19_1
    L1_2 = L1_2.enemiesScrollerAnimation
    L2_2 = nil
    L1_2(L2_2)
  end
end

L19_1.requestHelpRecieved = L128_1

function L128_1()
  local L0_2, L1_2
  L0_2 = L19_1
  L0_2 = L0_2.battle_ID
  if L0_2 ~= -1 then
    L0_2 = L19_1
    L0_2 = L0_2.battleManager
    L0_2 = L0_2.requestHelp
    L1_2 = L19_1
    L1_2 = L1_2.battle_ID
    L0_2(L1_2)
  end
  L0_2 = _debugMode
  if L0_2 then
    function L0_2()
      local L0_3, L1_3
      
      L0_3 = L19_1
      L0_3 = L0_3.requestHelpRecieved
      L0_3()
    end
  end
end

L19_1.sendHelpRequest = L128_1

function L128_1()
  local L0_2, L1_2, L2_2
  L0_2 = transition
  L0_2 = L0_2.cancel
  L1_2 = L99_1
  L0_2(L1_2)
  L0_2 = L99_1
  L0_2.alpha = 0
  L0_2 = L19_1
  L0_2 = L0_2.requestHelpButton
  L1_2 = L0_2
  L0_2 = L0_2.setEnabled
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = L19_1
  L0_2 = L0_2.requestHelpButton
  L1_2 = L0_2
  L0_2 = L0_2.setFillColor
  L2_2 = L4_1
  L2_2 = L2_2.darkGreyColor
  L2_2 = L2_2()
  L0_2(L1_2, L2_2)
  L0_2 = L19_1
  L0_2 = L0_2.requestHelpButton
  L0_2.alpha = 0.5
  L0_2 = L19_1
  L0_2 = L0_2.helpCostLabel
  L1_2 = L0_2
  L0_2 = L0_2.setEnabled
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = L19_1
  L0_2 = L0_2.helpCostLabel
  L1_2 = L0_2
  L0_2 = L0_2.setFillColor
  L2_2 = L4_1
  L2_2 = L2_2.darkGreyColor
  L2_2 = L2_2()
  L0_2(L1_2, L2_2)
  L0_2 = L19_1
  L0_2 = L0_2.helpCostLabel
  L0_2.alpha = 0.5
end

L19_1.hideHelpBar = L128_1

function L128_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L19_1
  L0_2 = L0_2.chooseButton
  if L0_2 ~= nil then
    L0_2 = L19_1
    L0_2 = L0_2.chooseButton
    L1_2 = L0_2
    L0_2 = L0_2.setEnabled
    L2_2 = true
    L0_2(L1_2, L2_2)
    L0_2 = L19_1
    L0_2 = L0_2.chooseButton
    L1_2 = L0_2
    L0_2 = L0_2.setFillColor
    L2_2 = 1
    L3_2 = 1
    L4_2 = 1
    L0_2(L1_2, L2_2, L3_2, L4_2)
    L0_2 = L19_1
    L0_2 = L0_2.chooseButton
    L0_2.alpha = 1
  end
end

L19_1.showChooseBar = L128_1

function L128_1()
  local L0_2, L1_2, L2_2
  L0_2 = L19_1
  L0_2 = L0_2.chooseButton
  if L0_2 ~= nil then
    L0_2 = L19_1
    L0_2 = L0_2.chooseButton
    L1_2 = L0_2
    L0_2 = L0_2.setEnabled
    L2_2 = false
    L0_2(L1_2, L2_2)
    L0_2 = L19_1
    L0_2 = L0_2.chooseButton
    L1_2 = L0_2
    L0_2 = L0_2.setFillColor
    L2_2 = L4_1
    L2_2 = L2_2.darkGreyColor
    L2_2 = L2_2()
    L0_2(L1_2, L2_2)
    L0_2 = L19_1
    L0_2 = L0_2.chooseButton
    L0_2.alpha = 0.5
  end
end

L19_1.hideChooseBar = L128_1

function L128_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = transition
  L2_2 = L2_2.cancel
  L3_2 = L97_1
  L2_2(L3_2)
  L2_2 = transition
  L2_2 = L2_2.cancel
  L3_2 = L19_1
  L3_2 = L3_2.requestHelpButton
  L2_2(L3_2)
  L2_2 = transition
  L2_2 = L2_2.cancel
  L3_2 = L99_1
  L2_2(L3_2)
  L2_2 = true
  L108_1 = L2_2
  L2_2 = L104_1
  if L2_2 ~= nil then
    L2_2 = timer
    L2_2 = L2_2.cancel
    L3_2 = L104_1
    L2_2(L3_2)
    L2_2 = nil
    L104_1 = L2_2
  end
  L2_2 = L105_1
  if L2_2 ~= nil then
    L2_2 = timer
    L2_2 = L2_2.cancel
    L3_2 = L105_1
    L2_2(L3_2)
    L2_2 = nil
    L105_1 = L2_2
  end
  L2_2 = L19_1
  L2_2 = L2_2.requestHelpButton
  L3_2 = L2_2
  L2_2 = L2_2.setEnabled
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = L19_1
  L2_2 = L2_2.requestHelpButton
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = 1
  L5_2 = 1
  L6_2 = 1
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = L19_1
  L2_2 = L2_2.requestHelpButton
  L2_2.alpha = 1
  L2_2 = L19_1
  L2_2 = L2_2.requestHelpButton
  L3_2 = L96_1
  L3_2 = L3_2.x
  L2_2.x = L3_2
  L2_2 = L19_1
  L2_2 = L2_2.requestHelpButton
  L3_2 = L96_1
  L3_2 = L3_2.y
  L4_2 = L19_1
  L4_2 = L4_2.requestHelpButton
  L4_2 = L4_2.view
  L4_2 = L4_2.height
  L4_2 = L4_2 / 2
  L3_2 = L3_2 - L4_2
  L2_2.y = L3_2
  L2_2 = L19_1
  L2_2 = L2_2.requestHelpButton
  L2_2.rotation = 0
  L2_2 = L19_1
  L2_2 = L2_2.helpCostLabel
  L3_2 = L2_2
  L2_2 = L2_2.setEnabled
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = L19_1
  L2_2 = L2_2.helpCostLabel
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = 1
  L5_2 = 1
  L6_2 = 1
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = L19_1
  L2_2 = L2_2.helpCostLabel
  L2_2.alpha = 1
  L2_2 = L30_1
  L98_1 = L2_2
  L2_2 = L99_1
  L2_2.alpha = 1
  L2_2 = L99_1
  L2_2.yScale = 1
  L2_2 = L100_1
  L2_2.alpha = 0
  L2_2 = L101_1
  L2_2.width = 0
  L2_2 = L102_1
  L2_2.alpha = 0
  L2_2 = L103_1
  L2_2.width = 0
  if A0_2 == true then
    L2_2 = L99_1
    L2_2.alpha = 0
  elseif A1_2 ~= 0 then
    L2_2 = L99_1
    L3_2 = L73_1
    L3_2 = A1_2 / L3_2
    L2_2.yScale = L3_2
    L2_2 = transition
    L2_2 = L2_2.to
    L3_2 = L99_1
    L4_2 = {}
    L4_2.yScale = 0
    L5_2 = A1_2 * 1000
    L4_2.time = L5_2
    L4_2.tag = "LiveBattle"
    
    function L5_2()
      local L0_3, L1_3
      L0_3 = L99_1
      L0_3.alpha = 0
      L0_3 = L19_1
      L0_3 = L0_3.hideHelpBar
      L0_3()
    end
    
    L4_2.onComplete = L5_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = L99_1
    L2_2.alpha = 0
    L2_2 = L19_1
    L2_2 = L2_2.hideHelpBar
    L2_2()
  end
  L2_2 = L97_1
  L3_2 = display
  L3_2 = L3_2.contentCenterX
  L4_2 = L88_1
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L3_2 = L3_2 - L4_2
  L2_2.x = L3_2
  L2_2 = L97_1
  L2_2.alpha = 1
  L2_2 = L97_1
  L3_2 = L2_2
  L2_2 = L2_2.toFront
  L2_2(L3_2)
end

L19_1.showHelpBar = L128_1

function L128_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L122_1
  L2_2 = L46_1
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L2_1
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = "big"
    L10_2 = L46_1
    L10_2 = L10_2[L6_2]
    L11_2 = L19_1
    L12_2 = {}
    L12_2.cardHeight = 85
    L12_2.hasCooldownView = true
    L12_2.fontSize = 8
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L8_2 = L46_1
    L8_2 = L8_2[L6_2]
    L9_2 = L8_2
    L8_2 = L8_2.cooldownRemaining
    L8_2 = L8_2(L9_2)
    if 0 < L8_2 then
      L9_2 = L7_2
      L8_2 = L7_2.setSelectable
      L10_2 = false
      L8_2(L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.setAction
      L8_2(L9_2)
      L9_2 = L7_2
      L8_2 = L7_2.showCooldownView
      L8_2(L9_2)
    else
      L9_2 = L7_2
      L8_2 = L7_2.setSelectable
      L10_2 = true
      L8_2(L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.setAction
      L8_2(L9_2)
      L9_2 = L7_2
      L8_2 = L7_2.hideCooldownView
      L8_2(L9_2)
    end
    L9_2 = L7_2
    L8_2 = L7_2.deselected
    L8_2(L9_2)
    L9_2 = L7_2
    L8_2 = L7_2.setId
    L10_2 = L5_2
    L8_2(L9_2, L10_2)
    L8_2 = L41_1
    L9_2 = L8_2
    L8_2 = L8_2.insert
    L10_2 = L7_2.view
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.setPosition
    L10_2 = L5_2 - 1
    L11_2 = L7_2.cardWidth
    L11_2 = L11_2 + 1
    L10_2 = L10_2 * L11_2
    L11_2 = 0
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = L47_1
    L9_2 = L46_1
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.id
    L8_2[L9_2] = L7_2
  end
  L2_2 = L117_1
  L3_2 = L47_1
  L2_2(L3_2)
end

L19_1.setupMainPlayerCardScrollers = L128_1

function L128_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L5_1
  L1_2 = L1_2.newScrollView
  L2_2 = {}
  L3_2 = display
  L3_2 = L3_2.contentWidth
  L4_2 = L29_1
  L3_2 = L3_2 - L4_2
  L4_2 = L30_1
  L4_2 = L4_2 * 2
  L3_2 = L3_2 - L4_2
  L3_2 = L3_2 + 4
  L2_2.width = L3_2
  L2_2.height = 85
  L2_2.hideScrollBar = true
  L2_2.verticalScrollDisabled = true
  L2_2.scrollWidth = 100
  L2_2.rightPadding = 0
  L2_2.leftPadding = 0
  L3_2 = {}
  L4_2 = 1
  L5_2 = 1
  L6_2 = 1
  L7_2 = 0
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L2_2.backgroundColor = L3_2
  L1_2 = L1_2(L2_2)
  L41_1 = L1_2
  L1_2 = L41_1
  L2_2 = L88_1
  L2_2 = L2_2.x
  L1_2.x = L2_2
  L1_2 = L41_1
  L2_2 = display
  L2_2 = L2_2.contentCenterY
  L3_2 = L88_1
  L3_2 = L3_2.height
  L3_2 = L3_2 / 2
  L2_2 = L2_2 + L3_2
  L2_2 = L2_2 - 45
  L1_2.y = L2_2
  L1_2 = A0_2.maskGroup
  L2_2 = L1_2
  L1_2 = L1_2.insert
  L3_2 = L41_1
  L1_2(L2_2, L3_2)
  L1_2 = graphics
  L1_2 = L1_2.newMask
  L2_2 = L4_1
  L2_2 = L2_2.Path_Assets
  L3_2 = "General/FC-navIncluded"
  L4_2 = L4_1
  L4_2 = L4_2.deviceSpecificFilePostfix
  L4_2 = L4_2()
  L5_2 = "mask.png"
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.maskGroup
  L3_2 = L2_2
  L2_2 = L2_2.setMask
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.maskGroup
  L3_2 = display
  L3_2 = L3_2.contentCenterX
  L2_2.maskX = L3_2
  L2_2 = A0_2.maskGroup
  L3_2 = display
  L3_2 = L3_2.contentCenterY
  L2_2.maskY = L3_2
  L2_2 = A0_2.maskGroup
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = L41_1
  L2_2(L3_2, L4_2)
  L2_2 = L19_1
  L2_2 = L2_2.group
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = A0_2.maskGroup
  L2_2(L3_2, L4_2)
  L2_2 = L85_1
  if L2_2 ~= nil then
    L2_2 = L85_1
    L3_2 = L2_2
    L2_2 = L2_2.toFront
    L2_2(L3_2)
  end
  L2_2 = L88_1
  L2_2 = L2_2.height
  L2_2 = L2_2 - 90
  L32_1 = L2_2
  L2_2 = display
  L2_2 = L2_2.newRect
  L3_2 = 0
  L4_2 = 0
  L5_2 = L35_1
  L6_2 = L32_1
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L42_1 = L2_2
  L2_2 = L42_1
  L3_2 = L88_1
  L3_2 = L3_2.x
  L4_2 = L88_1
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L3_2 = L3_2 - L4_2
  L4_2 = L42_1
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L3_2 = L3_2 + L4_2
  L2_2.x = L3_2
  L2_2 = L42_1
  L3_2 = L88_1
  L3_2 = L3_2.y
  L4_2 = L88_1
  L4_2 = L4_2.height
  L4_2 = L4_2 / 2
  L3_2 = L3_2 - L4_2
  L4_2 = L88_1
  L4_2 = L4_2.height
  L4_2 = L4_2 - 85
  L4_2 = L4_2 / 2
  L3_2 = L3_2 + L4_2
  L2_2.y = L3_2
  L2_2 = L42_1
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = 0.9137254901960784
  L5_2 = 0.8705882352941177
  L6_2 = 0.8156862745098039
  L7_2 = 0.4
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2.scrollersGroup
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = L42_1
  L2_2(L3_2, L4_2)
  L2_2 = L5_1
  L2_2 = L2_2.newScrollView
  L3_2 = {}
  L4_2 = L35_1
  L3_2.width = L4_2
  L4_2 = L32_1
  L4_2 = L4_2 - 36
  L3_2.height = L4_2
  L3_2.hideScrollBar = true
  L3_2.horizontalScrollDisabled = true
  L3_2.verticalScrollDisabled = false
  L3_2.scrollWidth = 0
  L3_2.scrollHeight = 0
  L3_2.rightPadding = 0
  L3_2.leftPadding = 0
  L4_2 = {}
  L5_2 = 0
  L6_2 = 1
  L7_2 = 0
  L8_2 = 0
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  L3_2.backgroundColor = L4_2
  L2_2 = L2_2(L3_2)
  L43_1 = L2_2
  L2_2 = L43_1
  L3_2 = L42_1
  L3_2 = L3_2.x
  L2_2.x = L3_2
  L2_2 = L43_1
  L3_2 = L42_1
  L3_2 = L3_2.y
  L3_2 = L3_2 + 18
  L2_2.y = L3_2
  L2_2 = A0_2.scrollersGroup
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = L43_1
  L2_2(L3_2, L4_2)
  L2_2 = display
  L2_2 = L2_2.newRect
  L3_2 = 0
  L4_2 = 0
  L5_2 = L35_1
  L6_2 = L32_1
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L44_1 = L2_2
  L2_2 = L44_1
  L3_2 = L88_1
  L3_2 = L3_2.x
  L4_2 = L88_1
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L3_2 = L3_2 + L4_2
  L4_2 = L44_1
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L3_2 = L3_2 - L4_2
  L2_2.x = L3_2
  L2_2 = L44_1
  L3_2 = L88_1
  L3_2 = L3_2.y
  L4_2 = L88_1
  L4_2 = L4_2.height
  L4_2 = L4_2 / 2
  L3_2 = L3_2 - L4_2
  L4_2 = L88_1
  L4_2 = L4_2.height
  L4_2 = L4_2 - 85
  L4_2 = L4_2 / 2
  L3_2 = L3_2 + L4_2
  L2_2.y = L3_2
  L2_2 = L44_1
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = 0.9137254901960784
  L5_2 = 0.8705882352941177
  L6_2 = 0.8156862745098039
  L7_2 = 0.4
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2.scrollersGroup
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = L44_1
  L2_2(L3_2, L4_2)
  L2_2 = L5_1
  L2_2 = L2_2.newScrollView
  L3_2 = {}
  L4_2 = L35_1
  L3_2.width = L4_2
  L4_2 = L32_1
  L4_2 = L4_2 - 36
  L3_2.height = L4_2
  L3_2.hideScrollBar = true
  L3_2.horizontalScrollDisabled = true
  L3_2.verticalScrollDisabled = false
  L3_2.scrollWidth = 0
  L3_2.scrollHeight = 0
  L3_2.rightPadding = 0
  L3_2.leftPadding = 0
  L4_2 = {}
  L5_2 = 0
  L6_2 = 1
  L7_2 = 0
  L8_2 = 0
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  L3_2.backgroundColor = L4_2
  L2_2 = L2_2(L3_2)
  L45_1 = L2_2
  L2_2 = L45_1
  L3_2 = L44_1
  L3_2 = L3_2.x
  L2_2.x = L3_2
  L2_2 = L45_1
  L3_2 = L44_1
  L3_2 = L3_2.y
  L3_2 = L3_2 + 18
  L2_2.y = L3_2
  L2_2 = A0_2.scrollersGroup
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = L45_1
  L2_2(L3_2, L4_2)
end

L19_1.createScrollers = L128_1

function L128_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = true
  L111_1 = L1_2
  L1_2 = L88_1
  L1_2 = L1_2.x
  L2_2 = L88_1
  L2_2 = L2_2.width
  L2_2 = L2_2 / 2
  L1_2 = L1_2 - L2_2
  L2_2 = L92_1
  L2_2 = L2_2.width
  L2_2 = L2_2 / 2
  L3_2 = L40_1
  L2_2 = L2_2 * L3_2
  L1_2 = L1_2 + L2_2
  L1_2 = L1_2 + 7
  L2_2 = L88_1
  L2_2 = L2_2.y
  L3_2 = L88_1
  L3_2 = L3_2.height
  L3_2 = L3_2 / 2
  L2_2 = L2_2 - L3_2
  L3_2 = L92_1
  L3_2 = L3_2.height
  L3_2 = L3_2 / 2
  L4_2 = L40_1
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  L2_2 = L2_2 + 7
  L3_2 = transition
  L3_2 = L3_2.to
  L4_2 = L92_1
  L5_2 = {}
  L6_2 = L40_1
  L5_2.xScale = L6_2
  L6_2 = L40_1
  L5_2.yScale = L6_2
  L5_2.time = 600
  L5_2.tag = "LiveBattle"
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L92_1
    L2_3 = {}
    L3_3 = L2_2
    L2_3.y = L3_3
    L2_3.time = 1000
    L2_3.tag = "LiveBattle"
    
    function L3_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = transition
      L0_4 = L0_4.to
      L1_4 = L92_1
      L2_4 = {}
      L3_4 = L1_2
      L2_4.x = L3_4
      L2_4.time = 600
      L2_4.tag = "LiveBattle"
      
      function L3_4()
        local L0_5, L1_5, L2_5, L3_5
        L0_5 = L101_1
        L0_5.alpha = 1
        L0_5 = L101_1
        L1_5 = L92_1
        L1_5 = L1_5.x
        L2_5 = L92_1
        L2_5 = L2_5.width
        L2_5 = L2_5 / 2
        L3_5 = L40_1
        L2_5 = L2_5 * L3_5
        L1_5 = L1_5 - L2_5
        L1_5 = L1_5 - 2
        L0_5.x = L1_5
        L0_5 = L101_1
        L1_5 = L92_1
        L1_5 = L1_5.y
        L0_5.y = L1_5
        L0_5 = transition
        L0_5 = L0_5.to
        L1_5 = L101_1
        L2_5 = {}
        L3_5 = L30_1
        L3_5 = L3_5 - 10
        L2_5.width = L3_5
        L2_5.time = 1000
        L2_5.tag = "LiveBattle"
        
        function L3_5()
          local L0_6, L1_6, L2_6, L3_6, L4_6
          L0_6 = L100_1
          L1_6 = L92_1
          L1_6 = L1_6.x
          L2_6 = L92_1
          L2_6 = L2_6.width
          L2_6 = L2_6 / 2
          L3_6 = L40_1
          L2_6 = L2_6 * L3_6
          L1_6 = L1_6 + L2_6
          L2_6 = L101_1
          L2_6 = L2_6.width
          L3_6 = L92_1
          L3_6 = L3_6.width
          L4_6 = L40_1
          L3_6 = L3_6 * L4_6
          L2_6 = L2_6 - L3_6
          L2_6 = L2_6 - 2
          L2_6 = L2_6 / 2
          L1_6 = L1_6 + L2_6
          L0_6.x = L1_6
          L0_6 = L100_1
          L1_6 = L92_1
          L1_6 = L1_6.y
          L0_6.y = L1_6
          L0_6 = transition
          L0_6 = L0_6.to
          L1_6 = L100_1
          L2_6 = {}
          L2_6.alpha = 1
          L2_6.time = 500
          L2_6.tag = "LiveBattle"
          
          function L3_6()
            local L0_7, L1_7, L2_7, L3_7
            L0_7 = A0_2
            if L0_7 ~= nil then
              L0_7 = L43_1
              L1_7 = L0_7
              L0_7 = L0_7.insert
              L2_7 = L51_1
              L3_7 = A0_2
              L2_7 = L2_7[L3_7]
              L2_7 = L2_7.group
              L0_7(L1_7, L2_7)
              L0_7 = transition
              L0_7 = L0_7.to
              L1_7 = L51_1
              L2_7 = A0_2
              L1_7 = L1_7[L2_7]
              L1_7 = L1_7.group
              L2_7 = {}
              L2_7.alpha = 1
              L2_7.time = 800
              L0_7(L1_7, L2_7)
            end
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
  
  L5_2.onComplete = L6_2
  L3_2(L4_2, L5_2)
end

L19_1.friendsScrollerAnimation = L128_1

function L128_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = true
  L112_1 = L1_2
  L1_2 = L88_1
  L1_2 = L1_2.x
  L2_2 = L88_1
  L2_2 = L2_2.width
  L2_2 = L2_2 / 2
  L1_2 = L1_2 + L2_2
  L2_2 = L94_1
  L2_2 = L2_2.width
  L2_2 = L2_2 / 2
  L3_2 = L40_1
  L2_2 = L2_2 * L3_2
  L1_2 = L1_2 - L2_2
  L1_2 = L1_2 - 7
  L2_2 = L88_1
  L2_2 = L2_2.y
  L3_2 = L88_1
  L3_2 = L3_2.height
  L3_2 = L3_2 / 2
  L2_2 = L2_2 - L3_2
  L3_2 = L94_1
  L3_2 = L3_2.height
  L3_2 = L3_2 / 2
  L4_2 = L40_1
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  L2_2 = L2_2 + 7
  L3_2 = transition
  L3_2 = L3_2.to
  L4_2 = L94_1
  L5_2 = {}
  L6_2 = L40_1
  L5_2.xScale = L6_2
  L6_2 = L40_1
  L5_2.yScale = L6_2
  L5_2.time = 600
  L5_2.tag = "LiveBattle"
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L94_1
    L2_3 = {}
    L3_3 = L2_2
    L2_3.y = L3_3
    L2_3.time = 1000
    
    function L3_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = transition
      L0_4 = L0_4.to
      L1_4 = L94_1
      L2_4 = {}
      L3_4 = L1_2
      L2_4.x = L3_4
      L2_4.time = 600
      L2_4.tag = "LiveBattle"
      
      function L3_4()
        local L0_5, L1_5, L2_5, L3_5
        L0_5 = L103_1
        L0_5.alpha = 1
        L0_5 = L103_1
        L1_5 = L94_1
        L1_5 = L1_5.x
        L2_5 = L94_1
        L2_5 = L2_5.width
        L2_5 = L2_5 / 2
        L3_5 = L40_1
        L2_5 = L2_5 * L3_5
        L1_5 = L1_5 + L2_5
        L1_5 = L1_5 + 2
        L0_5.x = L1_5
        L0_5 = L103_1
        L1_5 = L94_1
        L1_5 = L1_5.y
        L0_5.y = L1_5
        L0_5 = transition
        L0_5 = L0_5.to
        L1_5 = L103_1
        L2_5 = {}
        L3_5 = L30_1
        L3_5 = L3_5 - 10
        L2_5.width = L3_5
        L2_5.time = 1000
        L2_5.tag = "LiveBattle"
        
        function L3_5()
          local L0_6, L1_6, L2_6, L3_6, L4_6
          L0_6 = L102_1
          L1_6 = L94_1
          L1_6 = L1_6.x
          L2_6 = L94_1
          L2_6 = L2_6.width
          L2_6 = L2_6 / 2
          L3_6 = L40_1
          L2_6 = L2_6 * L3_6
          L1_6 = L1_6 - L2_6
          L2_6 = L103_1
          L2_6 = L2_6.width
          L3_6 = L94_1
          L3_6 = L3_6.width
          L4_6 = L40_1
          L3_6 = L3_6 * L4_6
          L2_6 = L2_6 - L3_6
          L2_6 = L2_6 - 2
          L2_6 = L2_6 / 2
          L1_6 = L1_6 - L2_6
          L0_6.x = L1_6
          L0_6 = L102_1
          L1_6 = L94_1
          L1_6 = L1_6.y
          L0_6.y = L1_6
          L0_6 = transition
          L0_6 = L0_6.to
          L1_6 = L102_1
          L2_6 = {}
          L2_6.alpha = 1
          L2_6.time = 500
          L2_6.tag = "LiveBattle"
          
          function L3_6()
            local L0_7, L1_7, L2_7, L3_7
            L0_7 = A0_2
            if L0_7 ~= nil then
              L0_7 = log3
              L1_7 = "playerId"
              L2_7 = A0_2
              L0_7(L1_7, L2_7)
              L0_7 = L45_1
              L1_7 = L0_7
              L0_7 = L0_7.insert
              L2_7 = L51_1
              L3_7 = A0_2
              L2_7 = L2_7[L3_7]
              L2_7 = L2_7.group
              L0_7(L1_7, L2_7)
              L0_7 = transition
              L0_7 = L0_7.to
              L1_7 = L51_1
              L2_7 = A0_2
              L1_7 = L1_7[L2_7]
              L1_7 = L1_7.group
              L2_7 = {}
              L2_7.alpha = 1
              L2_7.time = 800
              L0_7(L1_7, L2_7)
            end
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
  
  L5_2.onComplete = L6_2
  L3_2(L4_2, L5_2)
end

L19_1.enemiesScrollerAnimation = L128_1

function L128_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L78_1
  L0_2 = L0_2 + 1
  L1_2 = log3
  L2_2 = "i : "
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
  if L0_2 == 1 then
    L1_2 = L86_1
    L1_2 = L1_2[L0_2]
    L1_2 = L1_2.timer
    L2_2 = L71_1
    L2_2 = L2_2 + 1
    L1_2.counter = L2_2
  elseif L0_2 == 2 then
    L1_2 = L86_1
    L1_2 = L1_2[L0_2]
    L1_2 = L1_2.timer
    L2_2 = L71_1
    L2_2 = L2_2 + 1
    L3_2 = L72_1
    L2_2 = L2_2 + L3_2
    L1_2.counter = L2_2
  elseif L0_2 == 3 then
    L1_2 = L86_1
    L1_2 = L1_2[L0_2]
    L1_2 = L1_2.timer
    L2_2 = L71_1
    L2_2 = L2_2 + 1
    L3_2 = L72_1
    L3_2 = 2 * L3_2
    L2_2 = L2_2 + L3_2
    L1_2.counter = L2_2
  elseif L0_2 == 4 then
    L1_2 = L86_1
    L1_2 = L1_2[L0_2]
    L1_2 = L1_2.timer
    L2_2 = L71_1
    L2_2 = L2_2 + 1
    L3_2 = L72_1
    L3_2 = 3 * L3_2
    L2_2 = L2_2 + L3_2
    L1_2.counter = L2_2
  elseif L0_2 == 5 then
    L1_2 = L86_1
    L2_2 = L0_2 - 1
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.timer
    L2_2 = L71_1
    L2_2 = L2_2 + 1
    L3_2 = L72_1
    L3_2 = 3 * L3_2
    L2_2 = L2_2 + L3_2
    L1_2.counter = L2_2
  end
end

L19_1.resetGameTime = L128_1

function L128_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L19_1
  L2_2 = L2_2.liveBattleTutorialIsActive
  if L2_2 == true then
    L2_2 = L19_1
    L2_2 = L2_2.liveBattleTutorialSequence
    if L2_2 == 2 then
      L2_2 = L19_1
      L2_2 = L2_2.liveBattleTutorialSequenceStep
      if L2_2 < 4 then
        return
      end
      L2_2 = L19_1
      L2_2 = L2_2.liveBattleTutorialSequenceStep
      if L2_2 == 4 then
        L2_2 = L19_1
        L2_2.liveBattleTutorialSequenceStep = 5
        L2_2 = L19_1
        L2_2 = L2_2.strongEnemySteps
        L3_2 = L19_1
        L3_2 = L3_2.liveBattleTutorialSequenceStep
        L2_2(L3_2)
      end
    end
  end
  L2_2 = log3
  L3_2 = "scene.requestHelpButtonPressed called"
  L2_2(L3_2)
  L2_2 = L108_1
  if L2_2 == true then
    L2_2 = L19_1
    L2_2 = L2_2.helpCostLabel
    L3_2 = L2_2
    L2_2 = L2_2.setEnabled
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = false
    L108_1 = L2_2
    if A1_2 == true then
      L2_2 = L19_1
      L2_2 = L2_2.hideHelpBar
      L2_2()
    else
      L2_2 = transition
      L2_2 = L2_2.to
      L3_2 = L19_1
      L3_2 = L3_2.requestHelpButton
      L4_2 = {}
      L4_2.xScale = 1.1
      L4_2.yScale = 1.1
      L4_2.time = 400
      L4_2.tag = "LiveBattle"
      L2_2(L3_2, L4_2)
      L2_2 = transition
      L2_2 = L2_2.to
      L3_2 = L19_1
      L3_2 = L3_2.requestHelpButton
      L4_2 = {}
      L4_2.rotation = 10
      L4_2.time = 400
      L4_2.tag = "LiveBattle"
      L2_2(L3_2, L4_2)
      L2_2 = timer
      L2_2 = L2_2.performWithDelay
      L3_2 = 400
      
      function L4_2()
        local L0_3, L1_3
        L0_3 = audio
        L0_3 = L0_3.play
        L1_3 = L109_1
        L0_3(L1_3)
      end
      
      L2_2 = L2_2(L3_2, L4_2)
      L104_1 = L2_2
      L2_2 = timer
      L2_2 = L2_2.performWithDelay
      L3_2 = 2000
      
      function L4_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = transition
        L0_3 = L0_3.to
        L1_3 = L19_1
        L1_3 = L1_3.requestHelpButton
        L2_3 = {}
        L2_3.xScale = 1
        L2_3.yScale = 1
        L2_3.time = 400
        L2_3.tag = "LiveBattle"
        L0_3(L1_3, L2_3)
        L0_3 = transition
        L0_3 = L0_3.to
        L1_3 = L19_1
        L1_3 = L1_3.requestHelpButton
        L2_3 = {}
        L2_3.rotation = 0
        L2_3.time = 400
        L2_3.tag = "LiveBattle"
        L3_3 = L19_1
        L3_3 = L3_3.hideHelpBar
        L2_3.onComplete = L3_3
        L0_3(L1_3, L2_3)
      end
      
      L2_2 = L2_2(L3_2, L4_2)
      L105_1 = L2_2
    end
    if A1_2 == true then
    else
      L2_2 = L19_1
      L2_2 = L2_2.sendHelpRequest
      L2_2()
    end
  end
end

L19_1.requestHelpButtonPressed = L128_1

function L128_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = L19_1
  L3_2 = A0_2.view
  L2_2.group = L3_2
  L2_2 = display
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  A0_2.maskGroup = L2_2
  L2_2 = display
  L2_2 = L2_2.newImageRect
  L3_2 = L4_1
  L3_2 = L3_2.Path_Assets
  L4_2 = "FC-bg.png"
  L3_2 = L3_2 .. L4_2
  L4_2 = 570
  L5_2 = 360
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = display
  L3_2 = L3_2.contentCenterX
  L2_2.x = L3_2
  L3_2 = display
  L3_2 = L3_2.contentCenterY
  L2_2.y = L3_2
  L3_2 = L19_1
  L3_2 = L3_2.group
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = _debugMode
  if L3_2 == true then
    L3_2 = L16_1
    L4_2 = L3_2
    L3_2 = L3_2.new
    L5_2 = {}
    L5_2.width = 30
    L5_2.height = 30
    L6_2 = L4_1
    L6_2 = L6_2.Path_Assets
    L7_2 = "BattleItems/close.png"
    L6_2 = L6_2 .. L7_2
    L5_2.defaultFile = L6_2
    L6_2 = L4_1
    L6_2 = L6_2.Path_Assets
    L7_2 = "BattleItems/close-pressed.png"
    L6_2 = L6_2 .. L7_2
    L5_2.overFile = L6_2
    
    function L6_2()
      local L0_3, L1_3
      L0_3 = L0_1
      L0_3 = L0_3.gotoScene
      L1_3 = "Scenes.Home"
      L0_3(L1_3)
    end
    
    L5_2.onRelease = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L19_1
    L4_2 = L4_2.group
    L5_2 = L4_2
    L4_2 = L4_2.insert
    L6_2 = L3_2.view
    L4_2(L5_2, L6_2)
    L3_2.delegate = A0_2
    L3_2.x = 0
    L3_2.y = 0
  end
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = L19_1
  L4_2 = L4_2.group
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 / 2
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 / 2
  L7_2 = display
  L7_2 = L7_2.contentWidth
  L7_2 = L7_2 - 10
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 - 15
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = L4_1
  L6_2 = L6_2.whiteColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L4_2 = display
  L4_2 = L4_2.newRoundedRect
  L5_2 = L19_1
  L5_2 = L5_2.group
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 / 2
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L7_2 = L7_2 / 2
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 - 10
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 - 15
  L10_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L88_1 = L4_2
  L4_2 = L88_1
  L5_2 = L4_2
  L4_2 = L4_2.setFillColor
  L6_2 = L4_1
  L6_2 = L6_2.whiteColor
  L6_2 = L6_2()
  L7_2 = 0
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L88_1
  L4_2.strokeWidth = 3
  L4_2 = L88_1
  L5_2 = L4_2
  L4_2 = L4_2.setStrokeColor
  L6_2 = 0.30588235
  L7_2 = 0.5254902
  L8_2 = 0.10980392
  L9_2 = 1
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  A0_2.scrollersGroup = L4_2
  L5_2 = A0_2
  L4_2 = A0_2.createScrollers
  L4_2(L5_2)
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 - 87
  L4_2 = L4_2 - 6.5
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L6_2 = L29_1
  L5_2 = L5_2 - L6_2
  L6_2 = L30_1
  L6_2 = L6_2 * 2
  L5_2 = L5_2 - L6_2
  L6_2 = display
  L6_2 = L6_2.newLine
  L7_2 = L19_1
  L7_2 = L7_2.group
  L8_2 = L88_1
  L8_2 = L8_2.x
  L9_2 = L88_1
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L8_2 = L8_2 + 3
  L9_2 = L4_2
  L10_2 = L88_1
  L10_2 = L10_2.x
  L11_2 = L88_1
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L10_2 = L10_2 - 3
  L11_2 = L4_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L85_1 = L6_2
  L6_2 = L85_1
  L6_2.strokeWidth = 2
  L6_2 = L85_1
  L7_2 = L6_2
  L6_2 = L6_2.setStrokeColor
  L8_2 = L4_1
  L8_2 = L8_2.darkBlueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2 = display
  L6_2 = L6_2.newGroup
  L6_2 = L6_2()
  A0_2.buttonBarGroup = L6_2
  L6_2 = {}
  L54_1 = L6_2
  L6_2 = true
  L7_2 = A0_2.buttonBarGroup
  L8_2 = display
  L8_2 = L8_2.contentCenterX
  L9_2 = L88_1
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L9_2 = L30_1
  L8_2 = L8_2 - L9_2
  L7_2.x = L8_2
  L7_2 = A0_2.buttonBarGroup
  L8_2 = L88_1
  L8_2 = L8_2.y
  L9_2 = L88_1
  L9_2 = L9_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L8_2 = L8_2 - 85
  L7_2.y = L8_2
  L7_2 = display
  L7_2 = L7_2.newRect
  L8_2 = L30_1
  L8_2 = L8_2 / 2
  L9_2 = 39.5
  L10_2 = L30_1
  L11_2 = 85
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L95_1 = L7_2
  L7_2 = L95_1
  L8_2 = L7_2
  L7_2 = L7_2.setFillColor
  L9_2 = 0.9098039215686274
  L10_2 = 0.8549019607843137
  L11_2 = 0.7254901960784313
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = A0_2.buttonBarGroup
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = L95_1
  L7_2(L8_2, L9_2)
  L7_2 = display
  L7_2 = L7_2.newGroup
  L7_2 = L7_2()
  L97_1 = L7_2
  L7_2 = L97_1
  L8_2 = display
  L8_2 = L8_2.contentCenterX
  L9_2 = L88_1
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L7_2.x = L8_2
  L7_2 = L97_1
  L8_2 = L88_1
  L8_2 = L8_2.y
  L9_2 = L88_1
  L9_2 = L9_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L8_2 = L8_2 - 85
  L7_2.y = L8_2
  L7_2 = display
  L7_2 = L7_2.newRect
  L8_2 = L30_1
  L8_2 = L8_2 / 2
  L9_2 = 39.5
  L10_2 = L30_1
  L11_2 = 85
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L96_1 = L7_2
  L7_2 = L96_1
  L8_2 = L7_2
  L7_2 = L7_2.setFillColor
  L9_2 = 0.9098039215686274
  L10_2 = 0.8549019607843137
  L11_2 = 0.7254901960784313
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = L97_1
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = L96_1
  L7_2(L8_2, L9_2)
  L7_2 = display
  L7_2 = L7_2.newRoundedRect
  L8_2 = 0
  L9_2 = 0
  L10_2 = 5
  L11_2 = L96_1
  L11_2 = L11_2.height
  L12_2 = 0
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L99_1 = L7_2
  L7_2 = L99_1
  L7_2.anchorX = 0.5
  L7_2 = L99_1
  L7_2.anchorY = 1
  L7_2 = L99_1
  L8_2 = L96_1
  L8_2 = L8_2.x
  L9_2 = L96_1
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L9_2 = L99_1
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L7_2.x = L8_2
  L7_2 = L99_1
  L8_2 = L96_1
  L8_2 = L8_2.y
  L9_2 = L96_1
  L9_2 = L9_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L7_2.y = L8_2
  L7_2 = L99_1
  L8_2 = L7_2
  L7_2 = L7_2.setFillColor
  L9_2 = 1
  L10_2 = 0
  L11_2 = 0
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = L97_1
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = L99_1
  L7_2(L8_2, L9_2)
  
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L53_1
    if L1_3 then
      L1_3 = L2_1
      L1_3 = L1_3.cardIsHero
      L2_3 = L53_1
      L2_3 = L2_3.card
      L2_3 = L2_3.baseId
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = L117_1
        L2_3 = L47_1
        L3_3 = true
        L4_3 = true
        L1_3(L2_3, L3_3, L4_3)
      end
    end
    L1_3 = L19_1
    L1_3 = L1_3.liveBattleTutorialIsActive
    if L1_3 == true then
      L1_3 = L19_1
      L1_3 = L1_3.liveBattleTutorialSequence
      if L1_3 == 1 then
        L1_3 = L19_1
        L1_3 = L1_3.liveBattleTutorialSequenceStep
        if 2 < L1_3 then
          return
        end
        L1_3 = L19_1
        L1_3 = L1_3.liveBattleTutorialSequenceStep
        if L1_3 == 2 then
          L1_3 = L19_1
          L1_3.liveBattleTutorialSequenceStep = 3
          L1_3 = L19_1
          L1_3 = L1_3.weakEnemySteps
          L2_3 = L19_1
          L2_3 = L2_3.liveBattleTutorialSequenceStep
          L1_3(L2_3)
        end
      else
        L1_3 = L19_1
        L1_3 = L1_3.liveBattleTutorialSequence
        if L1_3 == 2 then
          L1_3 = L19_1
          L1_3 = L1_3.liveBattleTutorialSequenceStep
          if 2 < L1_3 then
            return
          end
          L1_3 = L19_1
          L1_3 = L1_3.liveBattleTutorialSequenceStep
          if L1_3 == 2 then
            L1_3 = L19_1
            L1_3.liveBattleTutorialSequenceStep = 3
            L1_3 = L19_1
            L1_3 = L1_3.strongEnemySteps
            L2_3 = L19_1
            L2_3 = L2_3.liveBattleTutorialSequenceStep
            L1_3(L2_3)
          end
        else
          L1_3 = L19_1
          L1_3 = L1_3.liveBattleTutorialSequence
          if L1_3 == 3 then
            L1_3 = L19_1
            L1_3 = L1_3.liveBattleTutorialSequenceStep
            if L1_3 == 2 then
              L1_3 = L19_1
              L1_3.liveBattleTutorialSequenceStep = 3
              L1_3 = L19_1
              L1_3 = L1_3.heroAbilitySteps
              L2_3 = L19_1
              L2_3 = L2_3.liveBattleTutorialSequenceStep
              L1_3(L2_3)
            end
            L1_3 = L19_1
            L1_3 = L1_3.liveBattleTutorialSequenceStep
            if L1_3 == 6 then
              L1_3 = L19_1
              L1_3.liveBattleTutorialSequenceStep = 7
              L1_3 = L19_1
              L1_3 = L1_3.heroAbilitySteps
              L2_3 = L19_1
              L2_3 = L2_3.liveBattleTutorialSequenceStep
              L1_3(L2_3)
            end
          end
        end
      end
    end
    L1_3 = L53_1
    if L1_3 ~= nil then
      L1_3 = L75_1
      if L1_3 < 5 then
        L1_3 = L78_1
        if L1_3 < 4 then
          L1_3 = L81_1
          if 0 < L1_3 then
            L1_3 = L6_2
            if L1_3 == true then
              goto lbl_108
            end
          end
        end
      end
      L1_3 = L19_1
      L1_3 = L1_3.isPlayerDeployedHero
      ::lbl_108::
      if L1_3 ~= true then
        L1_3 = L53_1
        L2_3 = L54_1
        if L1_3 ~= L2_3 then
          L1_3 = true
          L6_2 = L1_3
          L1_3 = L53_1
          L54_1 = L1_3
          L1_3 = L53_1
          if L1_3 ~= nil then
            L2_3 = L67_1
            L3_3 = L53_1
            L3_3 = L3_3.card
            L3_3 = L3_3.power
            L2_3 = L2_3 - L3_3
            L67_1 = L2_3
            L2_3 = mainPlayer
            L2_3 = L2_3.heroSet
            if L2_3 then
              L2_3 = mainPlayer
              L2_3 = L2_3.heroSet
              L3_3 = L53_1
              L3_3 = L3_3.card
              L3_3 = L3_3.baseId
              L2_3 = L2_3[L3_3]
              if L2_3 then
                L2_3 = L19_1
                L2_3 = L2_3.addPlayerHeroToBattle
                L3_3 = L53_1
                L2_3(L3_3)
            end
            else
              L2_3 = L19_1
              L2_3 = L2_3.addCardsToSlots
              L3_3 = L1_3
              L2_3(L3_3)
            end
          end
        end
        L1_3 = L75_1
        if L1_3 ~= 4 then
          L1_3 = L78_1
          if L1_3 ~= 4 then
            L1_3 = L81_1
            if L1_3 ~= 0 then
              goto lbl_162
            end
          end
        end
        L1_3 = L19_1
        L1_3 = L1_3.isPlayerDeployedHero
        if L1_3 then
          L1_3 = L19_1
          L1_3 = L1_3.hideChooseBar
          L1_3()
        end
      end
    end
    ::lbl_162::
  end
  
  L8_2 = true
  L108_1 = L8_2
  L8_2 = L19_1
  L9_2 = L16_1
  L10_2 = L9_2
  L9_2 = L9_2.new
  L11_2 = {}
  L11_2.fontSize = 15
  L12_2 = L4_1
  L12_2 = L12_2.fontForTitle
  L12_2 = L12_2()
  L11_2.font = L12_2
  L12_2 = L30_1
  L12_2 = L12_2 - 20
  L12_2 = L12_2 * 0.75
  L11_2.width = L12_2
  L12_2 = L30_1
  L12_2 = L12_2 - 20
  L12_2 = L12_2 * 0.75
  L11_2.height = L12_2
  L11_2.emboss = false
  L12_2 = {}
  L13_2 = {}
  L14_2 = 255
  L15_2 = 255
  L16_2 = 255
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L12_2.default = L13_2
  L11_2.labelColor = L12_2
  L12_2 = L4_1
  L12_2 = L12_2.Path_Assets
  L13_2 = "LiveBattle/ChooseB.png"
  L12_2 = L12_2 .. L13_2
  L11_2.defaultFile = L12_2
  L12_2 = L4_1
  L12_2 = L12_2.Path_Assets
  L13_2 = "LiveBattle/ChooseB-press.png"
  L12_2 = L12_2 .. L13_2
  L11_2.overFile = L12_2
  L11_2.onRelease = L7_2
  L9_2 = L9_2(L10_2, L11_2)
  L8_2.chooseButton = L9_2
  L8_2 = L19_1
  L8_2 = L8_2.chooseButton
  L9_2 = L19_1
  L9_2 = L9_2.chooseButton
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L10_2 = L30_1
  L11_2 = L19_1
  L11_2 = L11_2.chooseButton
  L11_2 = L11_2.width
  L10_2 = L10_2 - L11_2
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L9_2 = L9_2 - 1
  L8_2.x = L9_2
  L8_2 = L19_1
  L8_2 = L8_2.chooseButton
  L9_2 = L95_1
  L9_2 = L9_2.y
  L8_2.y = L9_2
  L8_2 = A0_2.buttonBarGroup
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L19_1
  L10_2 = L10_2.chooseButton
  L10_2 = L10_2.view
  L8_2(L9_2, L10_2)
  L8_2 = L19_1
  L9_2 = L16_1
  L10_2 = L9_2
  L9_2 = L9_2.new
  L11_2 = {}
  L11_2.fontSize = 12
  L12_2 = L4_1
  L12_2 = L12_2.fontForTitle
  L12_2 = L12_2()
  L11_2.font = L12_2
  L11_2.width = 37.5
  L11_2.height = 29.875
  L11_2.emboss = false
  L12_2 = {}
  L13_2 = {}
  L14_2 = 255
  L15_2 = 255
  L16_2 = 255
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L12_2.default = L13_2
  L11_2.labelColor = L12_2
  L12_2 = L4_1
  L12_2 = L12_2.Path_Assets
  L13_2 = "LiveBattle/HelpB.png"
  L12_2 = L12_2 .. L13_2
  L11_2.defaultFile = L12_2
  L12_2 = L19_1
  L12_2 = L12_2.requestHelpButtonPressed
  L11_2.onRelease = L12_2
  L9_2 = L9_2(L10_2, L11_2)
  L8_2.requestHelpButton = L9_2
  L8_2 = L19_1
  L8_2 = L8_2.requestHelpButton
  L9_2 = L96_1
  L9_2 = L9_2.x
  L8_2.x = L9_2
  L8_2 = L19_1
  L8_2 = L8_2.requestHelpButton
  L9_2 = L96_1
  L9_2 = L9_2.y
  L10_2 = L19_1
  L10_2 = L10_2.requestHelpButton
  L10_2 = L10_2.view
  L10_2 = L10_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 - L10_2
  L8_2.y = L9_2
  L8_2 = L97_1
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L19_1
  L10_2 = L10_2.requestHelpButton
  L10_2 = L10_2.view
  L8_2(L9_2, L10_2)
  L8_2 = L19_1
  L9_2 = L16_1
  L10_2 = L9_2
  L9_2 = L9_2.new
  L11_2 = {}
  L11_2.width = 71
  L11_2.height = 22
  L12_2 = L3_1
  L12_2 = L12_2["Help Cost"]
  L11_2.label = L12_2
  L11_2.fontSize = 8
  L12_2 = {}
  L13_2 = {}
  L14_2 = L4_1
  L14_2 = L14_2.darkGreenColor
  L14_2, L15_2, L16_2 = L14_2()
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L12_2.default = L13_2
  L11_2.labelColor = L12_2
  L12_2 = L4_1
  L12_2 = L12_2.fontForTitle
  L12_2 = L12_2()
  L11_2.font = L12_2
  L12_2 = L4_1
  L12_2 = L12_2.Path_Assets
  L13_2 = "BattleItems/FC-LiveBattleHelpButton.png"
  L12_2 = L12_2 .. L13_2
  L11_2.defaultFile = L12_2
  L12_2 = L4_1
  L12_2 = L12_2.Path_Assets
  L13_2 = "BattleItems/FC-LiveBattleHelpButton-pressed.png"
  L12_2 = L12_2 .. L13_2
  L11_2.overFile = L12_2
  L11_2.emboss = false
  L12_2 = L19_1
  L12_2 = L12_2.requestHelpButtonPressed
  L11_2.onRelease = L12_2
  L9_2 = L9_2(L10_2, L11_2)
  L8_2.helpCostLabel = L9_2
  L8_2 = L19_1
  L8_2 = L8_2.helpCostLabel
  L9_2 = L96_1
  L9_2 = L9_2.x
  L8_2.x = L9_2
  L8_2 = L19_1
  L8_2 = L8_2.helpCostLabel
  L9_2 = L96_1
  L9_2 = L9_2.y
  L9_2 = L9_2 + 5
  L10_2 = L19_1
  L10_2 = L10_2.helpCostLabel
  L10_2 = L10_2.view
  L10_2 = L10_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L8_2.y = L9_2
  L8_2 = L97_1
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L19_1
  L10_2 = L10_2.helpCostLabel
  L10_2 = L10_2.view
  L8_2(L9_2, L10_2)
  L8_2 = {}
  L8_2.text = "0"
  L8_2.x = 0
  L8_2.y = 0
  L9_2 = L4_1
  L9_2 = L9_2.fontForTitle
  L9_2 = L9_2()
  L8_2.font = L9_2
  L8_2.fontSize = 18
  L8_2.align = "left"
  L9_2 = L8_1
  L10_2 = L9_2
  L9_2 = L9_2.new
  L11_2 = {}
  L12_2 = L3_1
  L12_2 = L12_2.Opponent
  L11_2.greenSideName = L12_2
  L12_2 = L3_1
  L12_2 = L12_2.Own
  L11_2.redSideName = L12_2
  L12_2 = L37_1
  L13_2 = L88_1
  L13_2 = L13_2.height
  L14_2 = L31_1
  L13_2 = L13_2 - L14_2
  L13_2 = L13_2 - 22
  L14_2 = 14
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L63_1 = L9_2
  L9_2 = L63_1
  L9_2 = L9_2.group
  L10_2 = display
  L10_2 = L10_2.contentCenterX
  L9_2.x = L10_2
  L9_2 = L63_1
  L9_2 = L9_2.group
  L10_2 = L88_1
  L10_2 = L10_2.y
  L11_2 = L88_1
  L11_2 = L11_2.height
  L11_2 = L11_2 / 2
  L10_2 = L10_2 - L11_2
  L11_2 = L88_1
  L11_2 = L11_2.height
  L11_2 = L11_2 - 85
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L10_2 = L10_2 + 0.5
  L9_2.y = L10_2
  L9_2 = A0_2.scrollersGroup
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L63_1
  L11_2 = L11_2.group
  L9_2(L10_2, L11_2)
  L9_2 = L63_1
  L9_2 = L9_2.group
  L9_2.rotation = -90
  L9_2 = L7_1
  L10_2 = L9_2
  L9_2 = L9_2.new
  L11_2 = nil
  L12_2 = 45
  L13_2 = 45
  L14_2 = "0"
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L62_1 = L9_2
  L9_2 = L62_1
  L9_2 = L9_2.group
  L10_2 = L63_1
  L10_2 = L10_2.group
  L10_2 = L10_2.x
  L9_2.x = L10_2
  L9_2 = L62_1
  L9_2 = L9_2.group
  L10_2 = L63_1
  L10_2 = L10_2.group
  L10_2 = L10_2.y
  L9_2.y = L10_2
  L9_2 = A0_2.scrollersGroup
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L62_1
  L11_2 = L11_2.group
  L9_2(L10_2, L11_2)
  L9_2 = L19_1
  L9_2 = L9_2.group
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = A0_2.buttonBarGroup
  L9_2(L10_2, L11_2)
  L9_2 = L19_1
  L9_2 = L9_2.group
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = A0_2.scrollersGroup
  L9_2(L10_2, L11_2)
  L9_2 = A0_2.maskGroup
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L97_1
  L9_2(L10_2, L11_2)
  L9_2 = L19_1
  L10_2 = L9_1
  L11_2 = L10_2
  L10_2 = L10_2.new
  L12_2 = nil
  L10_2 = L10_2(L11_2, L12_2)
  L9_2.battleManager = L10_2
  L9_2 = L63_1
  L9_2 = L9_2.group
  L9_2 = L9_2.x
  L10_2 = L63_1
  L10_2 = L10_2.w
  L10_2 = L10_2 / 2
  L9_2 = L9_2 - L10_2
  L10_2 = L43_1
  L10_2 = L10_2.x
  L11_2 = L43_1
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L9_2 = L9_2 - L10_2
  L10_2 = L41_1
  L10_2 = L10_2.y
  L11_2 = L41_1
  L11_2 = L11_2.height
  L11_2 = L11_2 / 2
  L10_2 = L10_2 - L11_2
  L11_2 = L88_1
  L11_2 = L11_2.y
  L12_2 = L88_1
  L12_2 = L12_2.height
  L12_2 = L12_2 / 2
  L11_2 = L11_2 - L12_2
  L10_2 = L10_2 - L11_2
  L11_2 = display
  L11_2 = L11_2.newRect
  L12_2 = 0
  L13_2 = 0
  L14_2 = L9_2
  L15_2 = L10_2
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  L91_1 = L11_2
  L11_2 = L91_1
  L11_2.alpha = 0
  L11_2 = L91_1
  L12_2 = L43_1
  L12_2 = L12_2.x
  L13_2 = L43_1
  L13_2 = L13_2.width
  L13_2 = L13_2 / 2
  L12_2 = L12_2 + L13_2
  L13_2 = L9_2 / 2
  L12_2 = L12_2 + L13_2
  L11_2.x = L12_2
  L11_2 = L91_1
  L12_2 = L88_1
  L12_2 = L12_2.y
  L13_2 = L88_1
  L13_2 = L13_2.height
  L13_2 = L13_2 / 2
  L12_2 = L12_2 - L13_2
  L13_2 = L10_2 / 2
  L12_2 = L12_2 + L13_2
  L11_2.y = L12_2
  L11_2 = L19_1
  L11_2 = L11_2.group
  L12_2 = L11_2
  L11_2 = L11_2.insert
  L13_2 = L91_1
  L11_2(L12_2, L13_2)
  L11_2 = display
  L11_2 = L11_2.newRect
  L12_2 = 0
  L13_2 = 0
  L14_2 = L9_2
  L15_2 = L10_2
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  L93_1 = L11_2
  L11_2 = L93_1
  L11_2.alpha = 0
  L11_2 = L93_1
  L12_2 = L63_1
  L12_2 = L12_2.group
  L12_2 = L12_2.x
  L13_2 = L63_1
  L13_2 = L13_2.w
  L13_2 = L13_2 / 2
  L12_2 = L12_2 + L13_2
  L13_2 = L9_2 / 2
  L12_2 = L12_2 + L13_2
  L11_2.x = L12_2
  L11_2 = L93_1
  L12_2 = L88_1
  L12_2 = L12_2.y
  L13_2 = L88_1
  L13_2 = L13_2.height
  L13_2 = L13_2 / 2
  L12_2 = L12_2 - L13_2
  L13_2 = L10_2 / 2
  L12_2 = L12_2 + L13_2
  L11_2.y = L12_2
  L11_2 = L19_1
  L11_2 = L11_2.group
  L12_2 = L11_2
  L11_2 = L11_2.insert
  L13_2 = L93_1
  L11_2(L12_2, L13_2)
  L11_2 = L4_1
  L11_2 = L11_2.leagueInfoWithId
  L12_2 = mainPlayer
  L12_2 = L12_2.leagueId
  L11_2 = L11_2(L12_2)
  L115_1 = L11_2
  L11_2 = nil
  L92_1 = L11_2
  L11_2 = L115_1
  if L11_2 ~= nil then
    L11_2 = log3
    L12_2 = "league image set"
    L13_2 = mainPlayer
    L13_2 = L13_2.leagueId
    L14_2 = L4_1
    L14_2 = L14_2.Path_Assets
    L15_2 = "League/"
    L16_2 = L115_1
    L16_2 = L16_2.League_Image
    L14_2 = L14_2 .. L15_2 .. L16_2
    L11_2(L12_2, L13_2, L14_2)
    L11_2 = display
    L11_2 = L11_2.newImageRect
    L12_2 = L4_1
    L12_2 = L12_2.Path_Assets
    L13_2 = "League/"
    L14_2 = L115_1
    L14_2 = L14_2.League_Image
    L12_2 = L12_2 .. L13_2 .. L14_2
    L13_2 = L115_1
    L13_2 = L13_2.League_logoWidth
    L14_2 = L115_1
    L14_2 = L14_2.League_logoHeight
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L92_1 = L11_2
  else
    L11_2 = log3
    L12_2 = "no image set for this league"
    L11_2(L12_2)
    L11_2 = display
    L11_2 = L11_2.newImageRect
    L12_2 = L4_1
    L12_2 = L12_2.Path_Assets
    L13_2 = "League/League1.png"
    L12_2 = L12_2 .. L13_2
    L13_2 = 76
    L14_2 = 80
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L92_1 = L11_2
  end
  L11_2 = L92_1
  L12_2 = L43_1
  L12_2 = L12_2.x
  L11_2.x = L12_2
  L11_2 = L92_1
  L12_2 = L43_1
  L12_2 = L12_2.y
  L11_2.y = L12_2
  L11_2 = display
  L11_2 = L11_2.newRect
  L12_2 = 0
  L13_2 = 0
  L14_2 = 0
  L15_2 = 25
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  L101_1 = L11_2
  L11_2 = L101_1
  L12_2 = L11_2
  L11_2 = L11_2.setFillColor
  L13_2 = 1
  L14_2 = 1
  L15_2 = 1
  L11_2(L12_2, L13_2, L14_2, L15_2)
  L11_2 = L101_1
  L12_2 = L101_1
  L13_2 = 0
  L12_2.anchorY = 0.5
  L11_2.anchorX = L13_2
  L11_2 = L101_1
  L11_2.alpha = 0
  L11_2 = display
  L11_2 = L11_2.newText
  L12_2 = L3_1
  L12_2 = L12_2.Friends
  L13_2 = 0
  L14_2 = 0
  L15_2 = L4_1
  L15_2 = L15_2.fontForSubtitle
  L15_2 = L15_2()
  L16_2 = 10
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L100_1 = L11_2
  L11_2 = L100_1
  L12_2 = L11_2
  L11_2 = L11_2.setTextColor
  L13_2 = L4_1
  L13_2 = L13_2.darkBlueColor
  L13_2, L14_2, L15_2, L16_2 = L13_2()
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L11_2 = L100_1
  L11_2.alpha = 0
  L11_2 = L19_1
  L11_2 = L11_2.group
  L12_2 = L11_2
  L11_2 = L11_2.insert
  L13_2 = L101_1
  L11_2(L12_2, L13_2)
  L11_2 = L19_1
  L11_2 = L11_2.group
  L12_2 = L11_2
  L11_2 = L11_2.insert
  L13_2 = L100_1
  L11_2(L12_2, L13_2)
  L11_2 = L19_1
  L11_2 = L11_2.group
  L12_2 = L11_2
  L11_2 = L11_2.insert
  L13_2 = L92_1
  L11_2(L12_2, L13_2)
  L11_2 = nil
  L94_1 = L11_2
  L11_2 = L115_1
  if L11_2 ~= nil then
    L11_2 = display
    L11_2 = L11_2.newImageRect
    L12_2 = L4_1
    L12_2 = L12_2.Path_Assets
    L13_2 = "League/"
    L14_2 = L115_1
    L14_2 = L14_2.League_Image
    L12_2 = L12_2 .. L13_2 .. L14_2
    L13_2 = L115_1
    L13_2 = L13_2.League_logoWidth
    L14_2 = L115_1
    L14_2 = L14_2.League_logoHeight
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L94_1 = L11_2
  else
    L11_2 = display
    L11_2 = L11_2.newImageRect
    L12_2 = L4_1
    L12_2 = L12_2.Path_Assets
    L13_2 = "League/League1.png"
    L12_2 = L12_2 .. L13_2
    L13_2 = 76
    L14_2 = 80
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L94_1 = L11_2
  end
  L11_2 = L94_1
  L12_2 = L45_1
  L12_2 = L12_2.x
  L11_2.x = L12_2
  L11_2 = L94_1
  L12_2 = L45_1
  L12_2 = L12_2.y
  L11_2.y = L12_2
  L11_2 = display
  L11_2 = L11_2.newRect
  L12_2 = 0
  L13_2 = 0
  L14_2 = 0
  L15_2 = 25
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  L103_1 = L11_2
  L11_2 = L103_1
  L12_2 = L11_2
  L11_2 = L11_2.setFillColor
  L13_2 = 1
  L14_2 = 1
  L15_2 = 1
  L11_2(L12_2, L13_2, L14_2, L15_2)
  L11_2 = L103_1
  L12_2 = L103_1
  L13_2 = 1
  L12_2.anchorY = 0.5
  L11_2.anchorX = L13_2
  L11_2 = L103_1
  L11_2.alpha = 0
  L11_2 = display
  L11_2 = L11_2.newText
  L12_2 = L3_1
  L12_2 = L12_2.Enemies
  L13_2 = 0
  L14_2 = 0
  L15_2 = L4_1
  L15_2 = L15_2.fontForSubtitle
  L15_2 = L15_2()
  L16_2 = 10
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L102_1 = L11_2
  L11_2 = L102_1
  L12_2 = L11_2
  L11_2 = L11_2.setTextColor
  L13_2 = L4_1
  L13_2 = L13_2.darkBlueColor
  L13_2, L14_2, L15_2, L16_2 = L13_2()
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L11_2 = L102_1
  L11_2.alpha = 0
  L11_2 = L19_1
  L11_2 = L11_2.group
  L12_2 = L11_2
  L11_2 = L11_2.insert
  L13_2 = L103_1
  L11_2(L12_2, L13_2)
  L11_2 = L19_1
  L11_2 = L11_2.group
  L12_2 = L11_2
  L11_2 = L11_2.insert
  L13_2 = L102_1
  L11_2(L12_2, L13_2)
  L11_2 = L19_1
  L11_2 = L11_2.group
  L12_2 = L11_2
  L11_2 = L11_2.insert
  L13_2 = L94_1
  L11_2(L12_2, L13_2)
  L11_2 = L88_1
  L12_2 = L11_2
  L11_2 = L11_2.toFront
  L11_2(L12_2)
end

L19_1.create = L128_1

function L128_1()
  local L0_2, L1_2
  L0_2 = transition
  L0_2 = L0_2.cancel
  L1_2 = "opponentHeroAbility"
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.cancel
  L1_2 = "LiveBattle"
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.cancel
  L1_2 = L92_1
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.cancel
  L1_2 = L94_1
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.cancel
  L1_2 = L100_1
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.cancel
  L1_2 = L101_1
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.cancel
  L1_2 = L102_1
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.cancel
  L1_2 = L103_1
  L0_2(L1_2)
end

function L129_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = 1
  L2_2 = {}
  L3_2 = L71_1
  L2_2[1] = L3_2
  if A0_2 ~= nil then
    L3_2 = L71_1
    if A0_2 < L3_2 then
      L1_2 = 1
      L3_2 = L71_1
      L3_2 = L3_2 - A0_2
      L2_2[1] = L3_2
      L3_2 = L2_2[1]
      if L3_2 < 1 then
        L2_2[1] = 1
      end
    else
      L3_2 = L71_1
      L4_2 = L72_1
      L3_2 = L3_2 + L4_2
      if A0_2 < L3_2 then
        L1_2 = 2
        L3_2 = L72_1
        L4_2 = L71_1
        L4_2 = A0_2 - L4_2
        L3_2 = L3_2 - L4_2
        L2_2[2] = L3_2
        L3_2 = L2_2[2]
        if L3_2 < 1 then
          L2_2[2] = 1
        end
      else
        L3_2 = L71_1
        L4_2 = L72_1
        L4_2 = 2 * L4_2
        L3_2 = L3_2 + L4_2
        if A0_2 < L3_2 then
          L1_2 = 3
          L3_2 = L72_1
          L4_2 = L71_1
          L4_2 = A0_2 - L4_2
          L5_2 = L72_1
          L4_2 = L4_2 - L5_2
          L3_2 = L3_2 - L4_2
          L2_2[3] = L3_2
          L3_2 = L2_2[3]
          if L3_2 < 1 then
            L2_2[3] = 1
          end
        else
          L3_2 = L71_1
          L4_2 = L72_1
          L4_2 = 3 * L4_2
          L3_2 = L3_2 + L4_2
          if A0_2 < L3_2 then
            L1_2 = 4
            L3_2 = L72_1
            L4_2 = L71_1
            L4_2 = A0_2 - L4_2
            L5_2 = L72_1
            L5_2 = 2 * L5_2
            L4_2 = L4_2 - L5_2
            L3_2 = L3_2 - L4_2
            L2_2[4] = L3_2
            L3_2 = L2_2[4]
            if L3_2 < 1 then
              L2_2[4] = 1
            end
          else
            L1_2 = 0
          end
        end
      end
    end
  end
  L3_2 = L2_2
  L4_2 = L1_2
  return L3_2, L4_2
end

function L130_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = L129_1
  L2_2 = A0_2
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = nil
  L4_2 = nil
  L5_2 = 5
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L6_2 = L6_2 / L7_2
  if 1.4 < L6_2 then
    L6_2 = display
    L6_2 = L6_2.contentWidth
    L6_2 = 5 * L6_2
    L7_2 = display
    L7_2 = L7_2.contentHeight
    L6_2 = L6_2 / L7_2
    L3_2 = 5 + L6_2
    L6_2 = display
    L6_2 = L6_2.contentWidth
    L6_2 = 5 * L6_2
    L7_2 = display
    L7_2 = L7_2.contentHeight
    L6_2 = L6_2 / L7_2
    L4_2 = 23 + L6_2
  else
    L3_2 = 5
    L4_2 = 30
  end
  L6_2 = L88_1
  L6_2 = L6_2.width
  L7_2 = L35_1
  L7_2 = 2 * L7_2
  L6_2 = L6_2 - L7_2
  L7_2 = L6_2 / 6
  L8_2 = 1
  L9_2 = 4
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = L72_1
    if L11_2 == 1 then
      L12_2 = L71_1
    end
    L13_2 = L86_1
    L14_2 = L12_1
    L15_2 = L14_2
    L14_2 = L14_2.new
    L16_2 = {}
    L17_2 = L1_2[L11_2]
    if not L17_2 then
      L17_2 = L12_2
    end
    L16_2._time = L17_2
    L16_2.card_height = L7_2
    L17_2 = L127_1
    L14_2 = L14_2(L15_2, L16_2, L17_2)
    L13_2[L11_2] = L14_2
    L13_2 = L86_1
    L13_2 = L13_2[L11_2]
    L13_2 = L13_2.view
    L14_2 = L88_1
    L14_2 = L14_2.y
    L15_2 = L88_1
    L15_2 = L15_2.height
    L15_2 = L15_2 / 2
    L14_2 = L14_2 + L15_2
    L14_2 = L14_2 - 85
    L14_2 = L14_2 - 10
    L15_2 = L86_1
    L15_2 = L15_2[L11_2]
    L15_2 = L15_2.card_height
    L14_2 = L14_2 - L15_2
    L13_2.y = L14_2
    L13_2 = L86_1
    L13_2 = L13_2[L11_2]
    L13_2 = L13_2.card_width
    L13_2 = 4 * L13_2
    L13_2 = L6_2 - L13_2
    L13_2 = L13_2 - 24
    L13_2 = L13_2 * 0.5
    L14_2 = L86_1
    L14_2 = L14_2[L11_2]
    L14_2 = L14_2.view
    L15_2 = L88_1
    L15_2 = L15_2.x
    L16_2 = L6_2 / 2
    L15_2 = L15_2 + L16_2
    L15_2 = L15_2 - L13_2
    L16_2 = 5 - L11_2
    L17_2 = L86_1
    L17_2 = L17_2[L11_2]
    L17_2 = L17_2.card_width
    L16_2 = L16_2 * L17_2
    L15_2 = L15_2 - L16_2
    L16_2 = 4 - L11_2
    L16_2 = L16_2 * 8
    L15_2 = L15_2 - L16_2
    L14_2.x = L15_2
    L14_2 = L19_1
    L14_2 = L14_2.group
    L15_2 = L14_2
    L14_2 = L14_2.insert
    L16_2 = L86_1
    L16_2 = L16_2[L11_2]
    L16_2 = L16_2.view
    L14_2(L15_2, L16_2)
  end
  L8_2 = 1
  L9_2 = 4
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = L87_1
    L13_2 = L12_1
    L14_2 = L13_2
    L13_2 = L13_2.new
    L15_2 = {}
    L15_2.card_height = L7_2
    L16_2 = L127_1
    L13_2 = L13_2(L14_2, L15_2, L16_2)
    L12_2[L11_2] = L13_2
    L12_2 = L87_1
    L12_2 = L12_2[L11_2]
    L12_2 = L12_2.view
    L12_2.y = 15
    L12_2 = L87_1
    L12_2 = L12_2[L11_2]
    L12_2 = L12_2.card_width
    L12_2 = 4 * L12_2
    L12_2 = L6_2 - L12_2
    L12_2 = L12_2 - 24
    L12_2 = L12_2 * 0.5
    L13_2 = L87_1
    L13_2 = L13_2[L11_2]
    L13_2 = L13_2.view
    L14_2 = L88_1
    L14_2 = L14_2.x
    L15_2 = L6_2 / 2
    L14_2 = L14_2 - L15_2
    L14_2 = L14_2 + L12_2
    L15_2 = L11_2 - 1
    L16_2 = L87_1
    L16_2 = L16_2[L11_2]
    L16_2 = L16_2.card_width
    L16_2 = L16_2 + 8
    L15_2 = L15_2 * L16_2
    L14_2 = L14_2 + L15_2
    L13_2.x = L14_2
    L13_2 = L19_1
    L13_2 = L13_2.group
    L14_2 = L13_2
    L13_2 = L13_2.insert
    L15_2 = L87_1
    L15_2 = L15_2[L11_2]
    L15_2 = L15_2.view
    L13_2(L14_2, L15_2)
  end
  if L2_2 == 2 then
    L8_2 = L19_1
    L8_2 = L8_2.disableSlot
    L9_2 = L86_1
    L9_2 = L9_2[1]
    L9_2 = L9_2.card
    L8_2(L9_2)
    L8_2 = 2
    L75_1 = L8_2
    L8_2 = 3
    L81_1 = L8_2
  elseif L2_2 == 3 then
    L8_2 = L19_1
    L8_2 = L8_2.disableSlot
    L9_2 = L86_1
    L9_2 = L9_2[1]
    L9_2 = L9_2.card
    L8_2(L9_2)
    L8_2 = L19_1
    L8_2 = L8_2.disableSlot
    L9_2 = L86_1
    L9_2 = L9_2[2]
    L9_2 = L9_2.card
    L8_2(L9_2)
    L8_2 = 3
    L75_1 = L8_2
    L8_2 = 2
    L81_1 = L8_2
  elseif L2_2 == 4 then
    L8_2 = L19_1
    L8_2 = L8_2.disableSlot
    L9_2 = L86_1
    L9_2 = L9_2[1]
    L9_2 = L9_2.card
    L8_2(L9_2)
    L8_2 = L19_1
    L8_2 = L8_2.disableSlot
    L9_2 = L86_1
    L9_2 = L9_2[2]
    L9_2 = L9_2.card
    L8_2(L9_2)
    L8_2 = L19_1
    L8_2 = L8_2.disableSlot
    L9_2 = L86_1
    L9_2 = L9_2[3]
    L9_2 = L9_2.card
    L8_2(L9_2)
    L8_2 = 4
    L75_1 = L8_2
    L8_2 = 1
    L81_1 = L8_2
  end
  if L2_2 == 0 then
    L8_2 = L19_1
    L8_2 = L8_2.disableSlot
    L9_2 = L86_1
    L9_2 = L9_2[1]
    L9_2 = L9_2.card
    L8_2(L9_2)
    L8_2 = L19_1
    L8_2 = L8_2.disableSlot
    L9_2 = L86_1
    L9_2 = L9_2[2]
    L9_2 = L9_2.card
    L8_2(L9_2)
    L8_2 = L19_1
    L8_2 = L8_2.disableSlot
    L9_2 = L86_1
    L9_2 = L9_2[3]
    L9_2 = L9_2.card
    L8_2(L9_2)
    L8_2 = 4
    L75_1 = L8_2
    L8_2 = 0
    L81_1 = L8_2
    L8_2 = L86_1
    L8_2 = L8_2[4]
    L8_2 = L8_2.timer
    L9_2 = L8_2
    L8_2 = L8_2.stopCoinTimer
    L10_2 = true
    L8_2(L9_2, L10_2)
  else
    L8_2 = L86_1
    L8_2 = L8_2[L2_2]
    L8_2 = L8_2.timer
    L9_2 = L8_2
    L8_2 = L8_2.startCoinTimer
    L8_2(L9_2)
  end
end

function L131_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    L3_2 = system
    L3_2 = L3_2.setIdleTimer
    L4_2 = false
    L3_2(L4_2)
    L3_2 = nil
    _backAction = L3_2
    L3_2 = sceneChange
    if L3_2 ~= nil then
      L3_2 = sceneChange
      L3_2 = L3_2.refresh
      L3_2()
    end
    L3_2 = mainPlayer
    L3_2 = L3_2.cards
    L46_1 = L3_2
    L3_2 = 0.3
    L40_1 = L3_2
    L3_2 = false
    L112_1 = L3_2
    L3_2 = false
    L111_1 = L3_2
    L3_2 = true
    L113_1 = L3_2
    L3_2 = audio
    L3_2 = L3_2.loadSound
    L4_2 = L4_1
    L4_2 = L4_2.Path_Assets
    L5_2 = "Audio/FC-battle.wav"
    L4_2 = L4_2 .. L5_2
    L3_2 = L3_2(L4_2)
    L109_1 = L3_2
    L3_2 = display
    L3_2 = L3_2.newGroup
    L3_2 = L3_2()
    L89_1 = L3_2
    L3_2 = L19_1
    L3_2 = L3_2.group
    L4_2 = L3_2
    L3_2 = L3_2.insert
    L5_2 = L89_1
    L3_2(L4_2, L5_2)
    L3_2 = A1_2.params
    L4_2 = log3
    L5_2 = "live battle ID  : "
    L6_2 = L3_2.battle_ID
    L4_2(L5_2, L6_2)
    L4_2 = {}
    L82_1 = L4_2
    L4_2 = L19_1
    L5_2 = {}
    L4_2.addedCardsToBattle = L5_2
    L4_2 = L19_1
    L5_2 = {}
    L4_2.enemyAddedCardsToBattle = L5_2
    L4_2 = L19_1
    L5_2 = L3_2.battle_ID
    L4_2.battle_ID = L5_2
    L4_2 = L19_1
    L5_2 = L3_2.ownerTeamId
    L4_2.ownerTeamId = L5_2
    L4_2 = L19_1
    L5_2 = L3_2.help_owner_id
    L4_2.help_owner_id = L5_2
    L4_2 = mainPlayer
    L4_2 = L4_2.tribe
    if L4_2 ~= nil then
      L4_2 = L19_1
      L5_2 = L3_2.help_owner_tribe_id
      L4_2.help_owner_tribe_id = L5_2
    end
    L4_2 = L19_1
    L5_2 = L3_2.mainEnemy
    L4_2.mainEnemyId = L5_2
    L4_2 = log3
    L5_2 = "recived mainEnemy id is :"
    L6_2 = L3_2.mainEnemy
    L4_2(L5_2, L6_2)
    L4_2 = false
    L84_1 = L4_2
    L4_2 = {}
    L47_1 = L4_2
    L5_2 = A0_2
    L4_2 = A0_2.createScrollers
    L4_2(L5_2)
    L5_2 = A0_2
    L4_2 = A0_2.setupMainPlayerCardScrollers
    L4_2(L5_2)
    L4_2 = L63_1
    L4_2 = L4_2.group
    L5_2 = L4_2
    L4_2 = L4_2.toFront
    L4_2(L5_2)
    L4_2 = L4_1
    L4_2 = L4_2.leagueInfoWithId
    L5_2 = mainPlayer
    L5_2 = L5_2.leagueId
    L4_2 = L4_2(L5_2)
    L115_1 = L4_2
    L4_2 = log3
    L5_2 = "player league image change"
    L4_2(L5_2)
    L4_2 = L92_1
    if L4_2 ~= nil then
      L4_2 = display
      L4_2 = L4_2.remove
      L5_2 = L92_1
      L4_2(L5_2)
      L4_2 = nil
      L92_1 = L4_2
    end
    L4_2 = L94_1
    if L4_2 ~= nil then
      L4_2 = display
      L4_2 = L4_2.remove
      L5_2 = L94_1
      L4_2(L5_2)
      L4_2 = nil
      L94_1 = L4_2
    end
    L4_2 = L115_1
    if L4_2 ~= nil then
      L4_2 = log3
      L5_2 = "league image set"
      L4_2(L5_2)
      L4_2 = display
      L4_2 = L4_2.newImageRect
      L5_2 = L4_1
      L5_2 = L5_2.Path_Assets
      L6_2 = "League/"
      L7_2 = L115_1
      L7_2 = L7_2.League_Image
      L5_2 = L5_2 .. L6_2 .. L7_2
      L6_2 = L115_1
      L6_2 = L6_2.League_logoWidth
      L7_2 = L115_1
      L7_2 = L7_2.League_logoHeight
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L92_1 = L4_2
      L4_2 = display
      L4_2 = L4_2.newImageRect
      L5_2 = L4_1
      L5_2 = L5_2.Path_Assets
      L6_2 = "League/"
      L7_2 = L115_1
      L7_2 = L7_2.League_Image
      L5_2 = L5_2 .. L6_2 .. L7_2
      L6_2 = L115_1
      L6_2 = L6_2.League_logoWidth
      L7_2 = L115_1
      L7_2 = L7_2.League_logoHeight
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L94_1 = L4_2
    else
      L4_2 = log3
      L5_2 = "no image set for this league"
      L4_2(L5_2)
      L4_2 = display
      L4_2 = L4_2.newImageRect
      L5_2 = L4_1
      L5_2 = L5_2.Path_Assets
      L6_2 = "League/League1.png"
      L5_2 = L5_2 .. L6_2
      L6_2 = 76
      L7_2 = 80
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L92_1 = L4_2
      L4_2 = display
      L4_2 = L4_2.newImageRect
      L5_2 = L4_1
      L5_2 = L5_2.Path_Assets
      L6_2 = "League/League1.png"
      L5_2 = L5_2 .. L6_2
      L6_2 = 76
      L7_2 = 80
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L94_1 = L4_2
    end
    L4_2 = L92_1
    L5_2 = L42_1
    L5_2 = L5_2.x
    L4_2.x = L5_2
    L4_2 = L92_1
    L5_2 = L42_1
    L5_2 = L5_2.y
    L4_2.y = L5_2
    L4_2 = L92_1
    L4_2.xScale = 1
    L4_2 = L92_1
    L4_2.yScale = 1
    L4_2 = L19_1
    L4_2 = L4_2.group
    L5_2 = L4_2
    L4_2 = L4_2.insert
    L6_2 = L92_1
    L4_2(L5_2, L6_2)
    L4_2 = L94_1
    L5_2 = L44_1
    L5_2 = L5_2.x
    L4_2.x = L5_2
    L4_2 = L94_1
    L5_2 = L44_1
    L5_2 = L5_2.y
    L4_2.y = L5_2
    L4_2 = L94_1
    L4_2.xScale = 1
    L4_2 = L94_1
    L4_2.yScale = 1
    L4_2 = L19_1
    L4_2 = L4_2.group
    L5_2 = L4_2
    L4_2 = L4_2.insert
    L6_2 = L94_1
    L4_2(L5_2, L6_2)
    L4_2 = L3_2.round
    if L4_2 then
      L4_2 = L3_2.joiningInTheMiddleOfRound
      if L4_2 then
        L4_2 = L3_2.joiningInTheMiddleOfRound
        L74_1 = L4_2
      end
      L4_2 = L3_2.round
      L75_1 = L4_2
      L4_2 = 0
      L78_1 = L4_2
      L4_2 = L76_1
      L5_2 = L75_1
      L4_2 = L4_2 - L5_2
      L4_2 = L4_2 + 1
      L81_1 = L4_2
    else
      L4_2 = 1
      L75_1 = L4_2
      L4_2 = L76_1
      L81_1 = L4_2
    end
    L4_2 = {}
    L77_1 = L4_2
    L4_2 = 0
    L78_1 = L4_2
    L4_2 = 0
    L79_1 = L4_2
    L4_2 = 0
    L80_1 = L4_2
    L4_2 = L19_1
    L5_2 = {}
    L4_2.everyPlayerCards = L5_2
    L4_2 = 0
    L56_1 = L4_2
    L4_2 = 0
    L57_1 = L4_2
    L4_2 = 0
    L58_1 = L4_2
    L4_2 = 0
    L59_1 = L4_2
    L4_2 = 0
    L65_1 = L4_2
    L4_2 = 0
    L66_1 = L4_2
    L4_2 = 0
    L67_1 = L4_2
    L4_2 = 0
    L68_1 = L4_2
    L4_2 = {}
    L49_1 = L4_2
    L4_2 = {}
    L50_1 = L4_2
    L4_2 = {}
    L52_1 = L4_2
    L4_2 = {}
    L60_1 = L4_2
    L4_2 = {}
    L61_1 = L4_2
    L4_2 = {}
    L51_1 = L4_2
    L4_2 = {}
    A0_2.everyPlayerCards = L4_2
    L4_2 = {}
    L52_1 = L4_2
    L4_2 = display
    L4_2 = L4_2.newGroup
    L4_2 = L4_2()
    L90_1 = L4_2
    L4_2 = L19_1
    L4_2 = L4_2.group
    L5_2 = L4_2
    L4_2 = L4_2.insert
    L6_2 = L90_1
    L4_2(L5_2, L6_2)
    L4_2 = {}
    A0_2.friends = L4_2
    L4_2 = {}
    A0_2.enemies = L4_2
    L4_2 = {}
    L48_1 = L4_2
    L4_2 = {}
    L22_1 = L4_2
    L4_2 = L19_1
    L4_2.isPlayerDeployedHero = nil
    L4_2 = A0_2.friends
    L5_2 = L19_1
    L5_2 = L5_2.friends
    L5_2 = #L5_2
    L5_2 = L5_2 + 1
    L6_2 = mainPlayer
    L6_2 = L6_2.id
    L4_2[L5_2] = L6_2
    L4_2 = L62_1
    L4_2 = L4_2.group
    L5_2 = L4_2
    L4_2 = L4_2.toFront
    L4_2(L5_2)
    L4_2 = nil
    L53_1 = L4_2
    L4_2 = {}
    L54_1 = L4_2
    L4_2 = {}
    L55_1 = L4_2
    L4_2 = L62_1
    L5_2 = L4_2
    L4_2 = L4_2.setNumber
    L6_2 = 0
    L4_2(L5_2, L6_2)
    L4_2 = L63_1
    L5_2 = L4_2
    L4_2 = L4_2.resetPowerView
    L4_2(L5_2)
    L4_2 = L63_1
    L5_2 = L4_2
    L4_2 = L4_2.setNumber
    L6_2 = 0
    L4_2(L5_2, L6_2)
    L4_2 = L19_1
    L4_2 = L4_2.mainEnemyName
    if L4_2 ~= nil then
      L4_2 = L63_1
      L5_2 = L4_2
      L4_2 = L4_2.updateGreenSideText
      L6_2 = L19_1
      L6_2 = L6_2.mainEnemyName
      L4_2(L5_2, L6_2)
    end
    L4_2 = L19_1
    L4_2 = L4_2.mainFriendName
    if L4_2 ~= nil then
      L4_2 = L63_1
      L5_2 = L4_2
      L4_2 = L4_2.updateRedSideText
      L6_2 = L19_1
      L6_2 = L6_2.mainFriendName
      L4_2(L5_2, L6_2)
    end
    L4_2 = L127_1
    L5_2 = true
    L4_2(L5_2)
    L4_2 = L130_1
    L5_2 = L3_2._time
    L4_2(L5_2)
    L4_2 = L91_1
    L5_2 = L4_2
    L4_2 = L4_2.toFront
    L4_2(L5_2)
    L4_2 = L93_1
    L5_2 = L4_2
    L4_2 = L4_2.toFront
    L4_2(L5_2)
    L4_2 = L92_1
    L5_2 = L4_2
    L4_2 = L4_2.toFront
    L4_2(L5_2)
    L4_2 = L94_1
    L5_2 = L4_2
    L4_2 = L4_2.toFront
    L4_2(L5_2)
    L4_2 = L19_1
    L4_2 = L4_2.showChooseBar
    L4_2()
    L4_2 = L19_1
    L4_2 = L4_2.showHelpBar
    L5_2 = true
    L4_2(L5_2)
    L4_2 = L19_1
    L4_2.isTutorial = nil
    L4_2 = L3_2.cameForHelp
    if L4_2 == true then
      L4_2 = L19_1
      L4_2 = L4_2.showHelpBar
      L5_2 = true
      L4_2(L5_2)
      L4_2 = log3
      L5_2 = "Came For Help == true in live battle"
      L4_2(L5_2)
      L4_2 = L19_1
      L4_2 = L4_2.friendsScrollerAnimation
      L5_2 = nil
      L4_2(L5_2)
      L4_2 = L19_1
      L4_2 = L4_2.requestHelpButtonPressed
      L5_2 = nil
      L6_2 = true
      L4_2(L5_2, L6_2)
      L4_2 = true
      L84_1 = L4_2
      L4_2 = L19_1
      L4_2 = L4_2.helpCostLabel
      if L4_2 ~= nil then
        L4_2 = L19_1
        L4_2 = L4_2.helpCostLabel
        L5_2 = L4_2
        L4_2 = L4_2.setLabel
        L6_2 = ""
        L4_2(L5_2, L6_2)
      end
    else
      L4_2 = nil
      L5_2 = L3_2._time
      if L5_2 ~= nil then
        L5_2 = L73_1
        L6_2 = L3_2._time
        L4_2 = L5_2 - L6_2
        if L4_2 < 0 then
          L4_2 = 0
        end
      else
        L4_2 = L73_1
      end
      L5_2 = L19_1
      L5_2 = L5_2.showHelpBar
      L6_2 = false
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
      if L3_2 ~= nil then
        L5_2 = L3_2.helpCost
        L116_1 = L5_2
      end
      L5_2 = L116_1
      if L5_2 ~= nil then
        L5_2 = L19_1
        L5_2 = L5_2.helpCostLabel
        if L5_2 ~= nil then
          L5_2 = L19_1
          L5_2 = L5_2.helpCostLabel
          L6_2 = L5_2
          L5_2 = L5_2.setLabel
          L7_2 = L3_1
          L7_2 = L7_2.adjustNumber
          L8_2 = L6_1
          L8_2 = L8_2.shortenLongNumber
          L9_2 = L116_1
          L8_2, L9_2 = L8_2(L9_2)
          L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
          L5_2(L6_2, L7_2, L8_2, L9_2)
        end
      end
    end
    L4_2 = L3_2.enemyhasSentHelpRequest
    if L4_2 == true then
      L4_2 = log3
      L5_2 = "enemy has Sent Help Request"
      L4_2(L5_2)
      L4_2 = L19_1
      L4_2 = L4_2.enemiesScrollerAnimation
      L5_2 = nil
      L4_2(L5_2)
    end
    L4_2 = L13_1
    L4_2 = L4_2.checkForTutorial
    L5_2 = "LiveBattle"
    L4_2(L5_2)
    L4_2 = L19_1
    L4_2 = L4_2.liveBattleTutorialIsActive
    if L4_2 == true then
      L4_2 = L19_1
      L4_2.darknessOverlay = nil
      L4_2 = L19_1
      L4_2 = L4_2.helpCostLabel
      L5_2 = L4_2
      L4_2 = L4_2.setLabel
      L6_2 = L3_1
      L6_2 = L6_2.adjustNumber
      L7_2 = L6_1
      L7_2 = L7_2.shortenLongNumber
      L8_2 = 5000
      L7_2, L8_2, L9_2 = L7_2(L8_2)
      L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      L4_2 = L19_1
      L5_2 = {}
      L4_2.tutorialTimers = L5_2
    end
    L4_2 = mainPlayer
    L4_2 = L4_2.tribe
    if L4_2 == nil then
      L4_2 = log3
      L5_2 = " mainPlayer tribe is nil"
      L4_2(L5_2)
      L4_2 = L19_1
      L4_2 = L4_2.liveBattleTutorialIsActive
      if L4_2 ~= true then
        L4_2 = L19_1
        L4_2 = L4_2.hideHelpBar
        L4_2()
      end
    end
    L4_2 = L90_1
    if L4_2 then
      L4_2 = L90_1
      L4_2 = L4_2.toFront
      if L4_2 then
        L4_2 = L90_1
        L5_2 = L4_2
        L4_2 = L4_2.toFront
        L4_2(L5_2)
      end
    end
    L4_2 = L89_1
    if L4_2 then
      L4_2 = L89_1
      L4_2 = L4_2.toFront
      if L4_2 then
        L4_2 = L89_1
        L5_2 = L4_2
        L4_2 = L4_2.toFront
        L4_2(L5_2)
      end
    end
    L4_2 = L19_1
    L4_2 = L4_2.battleManager
    L4_2 = L4_2.fetchBattleCards
    L5_2 = L19_1
    L5_2 = L5_2.battle_ID
    L4_2(L5_2)
    L4_2 = L19_1
    L4_2 = L4_2.battleManager
    L4_2 = L4_2.fetchBattlePlayers
    L5_2 = L19_1
    L5_2 = L5_2.battle_ID
    L4_2(L5_2)
    L4_2 = L19_1
    L4_2 = L4_2.battleManager
    L4_2 = L4_2.fetchHeroesPowerBenefit
    L5_2 = L19_1
    L5_2 = L5_2.battle_ID
    L4_2(L5_2)
  end
end

L19_1.show = L131_1

function L131_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    L3_2 = L128_1
    L3_2()
    L3_2 = system
    L3_2 = L3_2.setIdleTimer
    L4_2 = true
    L3_2(L4_2)
    L3_2 = L19_1
    L3_2 = L3_2.liveBattleTutorialIsActive
    if L3_2 == true then
      L3_2 = pairs
      L4_2 = L19_1
      L4_2 = L4_2.tutorialTimers
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = timer
        L8_2 = L8_2.cancel
        L9_2 = L7_2
        L8_2(L9_2)
      end
      L4_2 = A0_2
      L3_2 = A0_2.removeBlackOverlay
      L3_2(L4_2)
    end
    L3_2 = pairs
    L4_2 = L82_1
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L9_2 = L7_2
      L8_2 = L7_2.removeEnterFrameListener
      L8_2(L9_2)
    end
    L3_2 = L89_1
    if L3_2 ~= nil then
      L3_2 = display
      L3_2 = L3_2.remove
      L4_2 = L89_1
      L3_2(L4_2)
      L3_2 = nil
      L89_1 = L3_2
    end
    L3_2 = L90_1
    if L3_2 ~= nil then
      L3_2 = display
      L3_2 = L3_2.remove
      L4_2 = L90_1
      L3_2(L4_2)
      L3_2 = nil
      L90_1 = L3_2
    end
    L3_2 = L106_1
    if L3_2 ~= nil then
      L3_2 = timer
      L3_2 = L3_2.cancel
      L4_2 = L106_1
      L3_2(L4_2)
    end
    L3_2 = L107_1
    if L3_2 ~= nil then
      L3_2 = timer
      L3_2 = L3_2.cancel
      L4_2 = L107_1
      L3_2(L4_2)
    end
    
    function L3_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
      L1_3 = 1
      L2_3 = 4
      L3_3 = 1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = A0_3[L4_3]
        if L5_3 ~= nil then
          L5_3 = A0_3[L4_3]
          L5_3 = L5_3.timer
          if L5_3 then
            L5_3 = A0_3[L4_3]
            L5_3 = L5_3.timer
            L6_3 = L5_3
            L5_3 = L5_3.stopCoinTimer
            L7_3 = false
            L5_3(L6_3, L7_3)
          end
          L5_3 = display
          L5_3 = L5_3.remove
          L6_3 = A0_3[L4_3]
          L6_3 = L6_3.view
          L5_3(L6_3)
          A0_3[L4_3] = nil
        end
      end
    end
    
    L4_2 = L3_2
    L5_2 = L86_1
    L4_2(L5_2)
    L4_2 = L3_2
    L5_2 = L87_1
    L4_2(L5_2)
    L4_2 = L11_1
    L4_2 = L4_2.hide
    L4_2()
    L4_2 = display
    L4_2 = L4_2.remove
    L5_2 = L42_1
    L4_2(L5_2)
    L4_2 = display
    L4_2 = L4_2.remove
    L5_2 = L43_1
    L4_2(L5_2)
    L4_2 = display
    L4_2 = L4_2.remove
    L5_2 = L45_1
    L4_2(L5_2)
    L4_2 = display
    L4_2 = L4_2.remove
    L5_2 = L44_1
    L4_2(L5_2)
    L4_2 = L117_1
    L5_2 = L47_1
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = pairs
    L5_2 = L47_1
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      if L8_2 ~= nil then
        L10_2 = L8_2
        L9_2 = L8_2.hideCooldownView
        L9_2(L10_2)
        L9_2 = display
        L9_2 = L9_2.remove
        L10_2 = L8_2
        L9_2(L10_2)
        L8_2 = nil
      end
      L9_2 = L47_1
      L9_2[L7_2] = nil
    end
    L4_2 = nil
    L49_1 = L4_2
    L4_2 = nil
    L50_1 = L4_2
    L4_2 = nil
    L52_1 = L4_2
    L4_2 = log2
    L5_2 = "main Player Cards"
    L6_2 = L41_1
    L6_2 = L6_2.numChildren
    L4_2(L5_2, L6_2)
    L4_2 = log2
    L5_2 = "friends Player Cards"
    L6_2 = L43_1
    L6_2 = L6_2.numChildren
    L4_2(L5_2, L6_2)
    L4_2 = log2
    L5_2 = "enemies Player Cards"
    L6_2 = L45_1
    L6_2 = L6_2.numChildren
    L4_2(L5_2, L6_2)
    L4_2 = nil
    L41_1 = L4_2
    L4_2 = nil
    L42_1 = L4_2
    L4_2 = nil
    L43_1 = L4_2
    L4_2 = nil
    L44_1 = L4_2
    L4_2 = nil
    L45_1 = L4_2
    L4_2 = nil
    L52_1 = L4_2
    L4_2 = nil
    L60_1 = L4_2
    L4_2 = nil
    L61_1 = L4_2
    L4_2 = nil
    L48_1 = L4_2
    L4_2 = L19_1
    L4_2.liveBattleTutorialIsActive = nil
    L4_2 = L19_1
    L4_2.isPlayerDeployedHero = nil
    L4_2 = L19_1
    L4_2 = L4_2.isTutorial
    if L4_2 then
      L4_2 = L19_1
      L4_2.isTutorial = nil
    end
    L4_2 = pairs
    L5_2 = L19_1
    L5_2 = L5_2.addedCardsToBattle
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L10_2 = L8_2
      L9_2 = L8_2.removeSelf
      L9_2(L10_2)
      L8_2 = nil
    end
    L4_2 = L19_1
    L5_2 = {}
    L4_2.addedCardsToBattle = L5_2
    L4_2 = pairs
    L5_2 = L19_1
    L5_2 = L5_2.enemyAddedCardsToBattle
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L10_2 = L8_2
      L9_2 = L8_2.removeSelf
      L9_2(L10_2)
      L8_2 = nil
    end
    L4_2 = L19_1
    L5_2 = {}
    L4_2.enemyAddedCardsToBattle = L5_2
    L4_2 = L20_1
    if L4_2 then
      L4_2 = L20_1
      L4_2 = L4_2.view
      if L4_2 then
        L4_2 = L20_1
        L5_2 = L4_2
        L4_2 = L4_2.removeHero
        L4_2(L5_2)
        L4_2 = display
        L4_2 = L4_2.remove
        L5_2 = L20_1
        L5_2 = L5_2.view
        L4_2(L5_2)
        L4_2 = nil
        L20_1 = L4_2
        L4_2 = L19_1
        L4_2 = L4_2.heroAbilities
        if L4_2 then
          L4_2 = display
          L4_2 = L4_2.remove
          L5_2 = L19_1
          L5_2 = L5_2.heroAbilities
          L5_2 = L5_2.view
          L4_2(L5_2)
          L4_2 = L19_1
          L4_2.heroAbilities = nil
        end
      end
    end
    L4_2 = L21_1
    if L4_2 then
      L4_2 = L21_1
      L4_2 = L4_2.view
      if L4_2 then
        L4_2 = L21_1
        L5_2 = L4_2
        L4_2 = L4_2.removeHero
        L4_2(L5_2)
        L4_2 = display
        L4_2 = L4_2.remove
        L5_2 = L21_1
        L5_2 = L5_2.view
        L4_2(L5_2)
        L4_2 = nil
        L21_1 = L4_2
      end
    end
    L4_2 = L19_1
    L4_2 = L4_2.battleManager
    L4_2 = L4_2.removeBattleUpdateMessages
    L5_2 = L19_1
    L5_2 = L5_2.battle_ID
    L4_2(L5_2)
    L4_2 = L19_1
    L4_2 = L4_2.battleManager
    L4_2 = L4_2.removeBattleHeroAbilityMessages
    L5_2 = L19_1
    L5_2 = L5_2.battle_ID
    L4_2(L5_2)
    L4_2 = L19_1
    L4_2 = L4_2.battleManager
    L4_2 = L4_2.removeTempRound
    L4_2()
    L4_2 = pairs
    L5_2 = L51_1
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2 in L4_2, L5_2, L6_2 do
      L8_2 = L51_1
      if L8_2 ~= nil then
        L8_2 = L51_1
        L8_2 = L8_2[L7_2]
        if L8_2 ~= nil then
          L8_2 = display
          L8_2 = L8_2.remove
          L9_2 = L51_1
          L9_2 = L9_2[L7_2]
          L9_2 = L9_2.group
          L8_2(L9_2)
        end
      end
    end
    L4_2 = nil
    L51_1 = L4_2
  end
end

L19_1.hide = L131_1

function L131_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.view
end

L19_1.destroy = L131_1
L132_1 = L19_1
L131_1 = L19_1.addEventListener
L133_1 = "create"
L134_1 = L19_1
L131_1(L132_1, L133_1, L134_1)
L132_1 = L19_1
L131_1 = L19_1.addEventListener
L133_1 = "show"
L134_1 = L19_1
L131_1(L132_1, L133_1, L134_1)
L132_1 = L19_1
L131_1 = L19_1.addEventListener
L133_1 = "hide"
L134_1 = L19_1
L131_1(L132_1, L133_1, L134_1)
L132_1 = L19_1
L131_1 = L19_1.addEventListener
L133_1 = "destroy"
L134_1 = L19_1
L131_1(L132_1, L133_1, L134_1)

function L131_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L19_1
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 1570
  L7_2 = 1360
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2.darknessOverlay = L3_2
  L2_2 = L19_1
  L2_2 = L2_2.darknessOverlay
  L3_2 = display
  L3_2 = L3_2.contentCenterX
  L2_2.x = L3_2
  L2_2 = L19_1
  L2_2 = L2_2.darknessOverlay
  L3_2 = display
  L3_2 = L3_2.contentCenterY
  L2_2.y = L3_2
  L2_2 = L19_1
  L2_2 = L2_2.darknessOverlay
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0.7
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = L19_1
  L2_2 = L2_2.darknessOverlay
  L3_2 = L2_2
  L2_2 = L2_2.addEventListener
  L4_2 = "touch"
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L19_1
  L2_2 = L2_2.darknessOverlay
  L3_2 = L2_2
  L2_2 = L2_2.addEventListener
  L4_2 = "tap"
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A1_2
  L2_2 = A1_2.toFront
  L2_2(L3_2)
  L3_2 = A1_2
  L2_2 = A1_2.insert
  L4_2 = L19_1
  L4_2 = L4_2.darknessOverlay
  L2_2(L3_2, L4_2)
end

L19_1.showBlackOverlay = L131_1

function L131_1(A0_2)
  local L1_2, L2_2
  L1_2 = L19_1
  L1_2 = L1_2.darknessOverlay
  if L1_2 ~= nil then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = L19_1
    L2_2 = L2_2.darknessOverlay
    L1_2(L2_2)
    L1_2 = L19_1
    L1_2.darknessOverlay = nil
  end
end

L19_1.removeBlackOverlay = L131_1

function L131_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = mainPlayer
    L6_2 = L6_2.heroSet
    if not L6_2 then
      break
    end
    L6_2 = mainPlayer
    L6_2 = L6_2.heroSet
    L7_2 = mainPlayer
    L7_2 = L7_2.cards
    L8_2 = A0_2[L5_2]
    L7_2 = L7_2[L8_2]
    L7_2 = L7_2.baseId
    L6_2 = L6_2[L7_2]
    if L6_2 then
      L1_2 = L1_2 + 1
    else
      break
    end
  end
  return L1_2
end

getIndexOfRegularCard = L131_1

function L131_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L125_1
    L9_2 = L47_1
    L9_2 = L9_2[L7_2]
    L10_2 = L47_1
    L8_2 = L8_2(L9_2, L10_2)
    if L6_2 == A0_2 then
      L10_2 = L8_2
      L9_2 = L8_2.setSelectable
      L11_2 = true
      L9_2(L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.setAction
      L9_2(L10_2)
      if A2_2 then
        L10_2 = L8_2
        L9_2 = L8_2.enable
        L9_2(L10_2)
      end
      L10_2 = L8_2
      L9_2 = L8_2.hideCooldownView
      L9_2(L10_2)
      L9_2 = L6_2 - 1
      L10_2 = L8_2.cardWidth
      L9_2 = L9_2 * L10_2
      L10_2 = L8_2.cardWidth
      L10_2 = L10_2 * 0.5
      L9_2 = L9_2 + L10_2
      L10_2 = L8_2.cardHeight
      L10_2 = L10_2 * 0.4
      L11_2 = L14_1
      L11_2 = L11_2.pointAt
      L12_2 = L41_1
      L13_2 = L9_2
      L14_2 = L10_2
      L11_2(L12_2, L13_2, L14_2)
    else
      L10_2 = L8_2
      L9_2 = L8_2.disable
      L9_2(L10_2)
    end
  end
end

highlightCard = L131_1

function L131_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 == 1 then
    L1_2 = log3
    L2_2 = "step 1"
    L1_2(L2_2)
    L1_2 = L14_1
    L1_2 = L1_2.removePoint
    L1_2()
    L1_2 = L19_1
    L1_2 = L1_2.hideHelpBar
    L1_2()
    L1_2 = L19_1
    L1_2 = L1_2.pauseGame
    L1_2()
    L1_2 = L122_1
    L2_2 = L46_1
    L1_2 = L1_2(L2_2)
    L2_2 = getIndexOfRegularCard
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = highlightCard
    L4_2 = L2_2
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  elseif A0_2 == 2 then
    L1_2 = log3
    L2_2 = "Tut step 2"
    L1_2(L2_2)
    L1_2 = L14_1
    L1_2 = L1_2.removePoint
    L1_2()
    L1_2 = L14_1
    L1_2 = L1_2.pointAt
    L2_2 = L19_1
    L2_2 = L2_2.view
    L3_2 = L19_1
    L3_2 = L3_2.buttonBarGroup
    L3_2 = L3_2.x
    L4_2 = L19_1
    L4_2 = L4_2.buttonBarGroup
    L4_2 = L4_2.width
    L4_2 = L4_2 / 2
    L3_2 = L3_2 + L4_2
    L4_2 = L19_1
    L4_2 = L4_2.buttonBarGroup
    L4_2 = L4_2.y
    L5_2 = L19_1
    L5_2 = L5_2.buttonBarGroup
    L5_2 = L5_2.height
    L5_2 = L5_2 / 2
    L4_2 = L4_2 + L5_2
    L1_2(L2_2, L3_2, L4_2)
  elseif A0_2 == 3 then
    L1_2 = log3
    L2_2 = "Tut step 3"
    L1_2(L2_2)
    L1_2 = L14_1
    L1_2 = L1_2.removePoint
    L1_2()
    L1_2 = L19_1
    L1_2 = L1_2.resumeGame
    L1_2()
  elseif A0_2 == 4 then
    L1_2 = log3
    L2_2 = "Tut step 4"
    L1_2(L2_2)
    L1_2 = L14_1
    L1_2 = L1_2.removePoint
    L1_2()
    
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = L19_1
      L0_3 = L0_3.pauseGame
      L0_3()
      L0_3 = L19_1
      L1_3 = L0_3
      L0_3 = L0_3.showBlackOverlay
      L2_3 = L89_1
      L0_3(L1_3, L2_3)
      L0_3 = L17_1
      L1_3 = L0_3
      L0_3 = L0_3.new
      L2_3 = {}
      L2_3.id = "Tutorial Dialog "
      L3_3 = {}
      L4_3 = L3_1
      L4_3 = L4_3.LiveBattleTutState1Step4Part1
      L5_3 = L3_1
      L5_3 = L5_3.LiveBattleTutState1Step4Part2
      L3_3[1] = L4_3
      L3_3[2] = L5_3
      L2_3.texts = L3_3
      L2_3.mentorAlignment = "right"
      L2_3.mode = "semi"
      L3_3 = L4_1
      L3_3 = L3_3.Path_Assets
      L4_3 = "Tutorial/FC-Sarhang.png"
      L3_3 = L3_3 .. L4_3
      L2_3.mentorImage = L3_3
      L2_3.mentorWidth = 111
      L2_3.mentorHeight = 115
      
      function L3_3()
        local L0_4, L1_4
        L0_4 = L19_1
        L0_4.liveBattleTutorialSequenceStep = 5
        L0_4 = L19_1
        L0_4 = L0_4.weakEnemySteps
        L1_4 = L19_1
        L1_4 = L1_4.liveBattleTutorialSequenceStep
        L0_4(L1_4)
        L0_4 = L19_1
        L1_4 = L0_4
        L0_4 = L0_4.removeBlackOverlay
        L0_4(L1_4)
      end
      
      L2_3.callBackFunction = L3_3
      L0_3(L1_3, L2_3)
      L0_3 = L63_1
      L0_3 = L0_3.group
      L1_3 = L0_3
      L0_3 = L0_3.toFront
      L0_3(L1_3)
      L0_3 = L62_1
      L0_3 = L0_3.group
      L1_3 = L0_3
      L0_3 = L0_3.toFront
      L0_3(L1_3)
    end
    
    L2_2 = L19_1
    L2_2 = L2_2.tutorialTimers
    L3_2 = L19_1
    L3_2 = L3_2.tutorialTimers
    L3_2 = #L3_2
    L3_2 = L3_2 + 1
    L4_2 = timer
    L4_2 = L4_2.performWithDelay
    L5_2 = 4000
    L6_2 = L1_2
    L4_2 = L4_2(L5_2, L6_2)
    L2_2[L3_2] = L4_2
  elseif A0_2 == 5 then
    L1_2 = log3
    L2_2 = "Tut step 5"
    L1_2(L2_2)
    L1_2 = L19_1
    L1_2 = L1_2.resumeGame
    L1_2()
    L1_2 = L14_1
    L1_2 = L1_2.removePoint
    L1_2()
    
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = L19_1
      L0_3 = L0_3.pauseGame
      L0_3()
      L0_3 = L19_1
      L1_3 = L0_3
      L0_3 = L0_3.showBlackOverlay
      L2_3 = L89_1
      L0_3(L1_3, L2_3)
      L0_3 = L17_1
      L1_3 = L0_3
      L0_3 = L0_3.new
      L2_3 = {}
      L2_3.id = "Tutorial Dialog "
      L3_3 = {}
      L4_3 = L3_1
      L4_3 = L4_3.LiveBattleTutState1Step5Part1
      L5_3 = L3_1
      L5_3 = L5_3.LiveBattleTutState1Step5Part2
      L3_3[1] = L4_3
      L3_3[2] = L5_3
      L2_3.texts = L3_3
      L2_3.mentorAlignment = "right"
      L2_3.mode = "semi"
      L3_3 = L4_1
      L3_3 = L3_3.Path_Assets
      L4_3 = "Tutorial/FC-Sarhang.png"
      L3_3 = L3_3 .. L4_3
      L2_3.mentorImage = L3_3
      L2_3.mentorWidth = 111
      L2_3.mentorHeight = 115
      
      function L3_3()
        local L0_4, L1_4
        L0_4 = L19_1
        L0_4.liveBattleTutorialSequenceStep = 6
        L0_4 = L19_1
        L0_4 = L0_4.weakEnemySteps
        L1_4 = L19_1
        L1_4 = L1_4.liveBattleTutorialSequenceStep
        L0_4(L1_4)
        L0_4 = L89_1
        if L0_4 then
          L0_4 = L89_1
          L0_4 = L0_4.toFront
          if L0_4 then
            L0_4 = L89_1
            L1_4 = L0_4
            L0_4 = L0_4.toFront
            L0_4(L1_4)
          end
        end
        L0_4 = L19_1
        L1_4 = L0_4
        L0_4 = L0_4.removeBlackOverlay
        L0_4(L1_4)
      end
      
      L2_3.callBackFunction = L3_3
      L0_3(L1_3, L2_3)
      L0_3 = L86_1
      L0_3 = L0_3[2]
      L0_3 = L0_3.view
      L1_3 = L0_3
      L0_3 = L0_3.toFront
      L0_3(L1_3)
    end
    
    L2_2 = L19_1
    L2_2 = L2_2.tutorialTimers
    L3_2 = L19_1
    L3_2 = L3_2.tutorialTimers
    L3_2 = #L3_2
    L3_2 = L3_2 + 1
    L4_2 = timer
    L4_2 = L4_2.performWithDelay
    L5_2 = 4000
    L6_2 = L1_2
    L4_2 = L4_2(L5_2, L6_2)
    L2_2[L3_2] = L4_2
  elseif A0_2 == 6 then
    L1_2 = log3
    L2_2 = "Tut step 6"
    L1_2(L2_2)
    L1_2 = L19_1
    L1_2 = L1_2.resumeGame
    L1_2()
    L1_2 = L86_1
    L1_2 = L1_2[2]
    L1_2 = L1_2.timer
    L1_2.counter = 3
    
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = L19_1
      L0_3 = L0_3.pauseGame
      L0_3()
      L0_3 = L19_1
      L1_3 = L0_3
      L0_3 = L0_3.showBlackOverlay
      L2_3 = L89_1
      L0_3(L1_3, L2_3)
      L0_3 = L17_1
      L1_3 = L0_3
      L0_3 = L0_3.new
      L2_3 = {}
      L2_3.id = "Tutorial Dialog "
      L3_3 = {}
      L4_3 = L3_1
      L4_3 = L4_3.LiveBattleTutState1Step6
      L3_3[1] = L4_3
      L2_3.texts = L3_3
      L2_3.mentorAlignment = "right"
      L2_3.mode = "semi"
      L3_3 = L4_1
      L3_3 = L3_3.Path_Assets
      L4_3 = "Tutorial/FC-Sarhang.png"
      L3_3 = L3_3 .. L4_3
      L2_3.mentorImage = L3_3
      L2_3.mentorWidth = 111
      L2_3.mentorHeight = 115
      
      function L3_3()
        local L0_4, L1_4
        L0_4 = L19_1
        L0_4.liveBattleTutorialSequenceStep = 7
        L0_4 = L19_1
        L0_4 = L0_4.weakEnemySteps
        L1_4 = L19_1
        L1_4 = L1_4.liveBattleTutorialSequenceStep
        L0_4(L1_4)
        L0_4 = L89_1
        if L0_4 then
          L0_4 = L89_1
          L0_4 = L0_4.toFront
          if L0_4 then
            L0_4 = L89_1
            L1_4 = L0_4
            L0_4 = L0_4.toFront
            L0_4(L1_4)
          end
        end
        L0_4 = L19_1
        L1_4 = L0_4
        L0_4 = L0_4.removeBlackOverlay
        L0_4(L1_4)
      end
      
      L2_3.callBackFunction = L3_3
      L0_3(L1_3, L2_3)
      L0_3 = L86_1
      L0_3 = L0_3[2]
      L0_3 = L0_3.view
      L1_3 = L0_3
      L0_3 = L0_3.toFront
      L0_3(L1_3)
    end
    
    L2_2 = L19_1
    L2_2 = L2_2.tutorialTimers
    L3_2 = L19_1
    L3_2 = L3_2.tutorialTimers
    L3_2 = #L3_2
    L3_2 = L3_2 + 1
    L4_2 = timer
    L4_2 = L4_2.performWithDelay
    L5_2 = 4000
    L6_2 = L1_2
    L4_2 = L4_2(L5_2, L6_2)
    L2_2[L3_2] = L4_2
  elseif A0_2 == 7 then
    L1_2 = L17_1
    L2_2 = L1_2
    L1_2 = L1_2.new
    L3_2 = {}
    L3_2.id = "Tutorial Dialog "
    L4_2 = {}
    L5_2 = L3_1
    L5_2 = L5_2.LiveBattleTutState1Step7
    L4_2[1] = L5_2
    L3_2.texts = L4_2
    L3_2.mentorAlignment = "right"
    L3_2.mode = "semi"
    L4_2 = L4_1
    L4_2 = L4_2.Path_Assets
    L5_2 = "Tutorial/FC-Sarhang.png"
    L4_2 = L4_2 .. L5_2
    L3_2.mentorImage = L4_2
    L3_2.mentorWidth = 111
    L3_2.mentorHeight = 115
    
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = mainPlayer
      L1_3 = L0_3
      L0_3 = L0_3.setSettingForKey
      L2_3 = "activeTutorialState"
      L3_3 = "liveBattleState2"
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = mainPlayer
      L1_3 = L0_3
      L0_3 = L0_3.saveSettings
      L0_3(L1_3)
      L0_3 = L0_1
      L0_3 = L0_3.gotoScene
      L1_3 = "Scenes.Battle"
      L0_3(L1_3)
    end
    
    L3_2.callBackFunction = L4_2
    L1_2(L2_2, L3_2)
    L1_2 = warningLog
    L2_2 = "finished weak enemy"
    L1_2(L2_2)
  else
    L1_2 = errorLog
    L2_2 = "Tutorial Error ,Weak Enemy Step not defined"
    L1_2(L2_2)
  end
end

L19_1.weakEnemySteps = L131_1

function L131_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 == 1 then
    L1_2 = log3
    L2_2 = "step 1"
    L1_2(L2_2)
    L1_2 = L14_1
    L1_2 = L1_2.removePoint
    L1_2()
    L1_2 = L19_1
    L1_2 = L1_2.hideHelpBar
    L1_2()
    L1_2 = L19_1
    L1_2 = L1_2.pauseGame
    L1_2()
    L1_2 = L122_1
    L2_2 = L46_1
    L1_2 = L1_2(L2_2)
    L2_2 = getIndexOfRegularCard
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = highlightCard
    L4_2 = L2_2
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  elseif A0_2 == 2 then
    L1_2 = log3
    L2_2 = "Tut step 2"
    L1_2(L2_2)
    L1_2 = L14_1
    L1_2 = L1_2.removePoint
    L1_2()
    L1_2 = L14_1
    L1_2 = L1_2.pointAt
    L2_2 = L19_1
    L2_2 = L2_2.view
    L3_2 = L19_1
    L3_2 = L3_2.buttonBarGroup
    L3_2 = L3_2.x
    L4_2 = L19_1
    L4_2 = L4_2.buttonBarGroup
    L4_2 = L4_2.width
    L4_2 = L4_2 / 2
    L3_2 = L3_2 + L4_2
    L4_2 = L19_1
    L4_2 = L4_2.buttonBarGroup
    L4_2 = L4_2.y
    L5_2 = L19_1
    L5_2 = L5_2.buttonBarGroup
    L5_2 = L5_2.height
    L5_2 = L5_2 / 2
    L4_2 = L4_2 + L5_2
    L1_2(L2_2, L3_2, L4_2)
  elseif A0_2 == 3 then
    L1_2 = log3
    L2_2 = "Tut step 3"
    L1_2(L2_2)
    L1_2 = L14_1
    L1_2 = L1_2.removePoint
    L1_2()
    L1_2 = L19_1
    L1_2 = L1_2.resumeGame
    L1_2()
  elseif A0_2 == 4 then
    L1_2 = log3
    L2_2 = "Tut step 4"
    L1_2(L2_2)
    L1_2 = L14_1
    L1_2 = L1_2.removePoint
    L1_2()
    
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      L0_3 = L19_1
      L0_3 = L0_3.showHelpBar
      L1_3 = false
      L2_3 = 4
      L0_3(L1_3, L2_3)
      L0_3 = L19_1
      L0_3 = L0_3.pauseGame
      L0_3()
      L0_3 = L14_1
      L0_3 = L0_3.pointAt
      L1_3 = L97_1
      L2_3 = L19_1
      L2_3 = L2_3.requestHelpButton
      L2_3 = L2_3.x
      L3_3 = L19_1
      L3_3 = L3_3.requestHelpButton
      L3_3 = L3_3.y
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L19_1
      L1_3 = L17_1
      L2_3 = L1_3
      L1_3 = L1_3.new
      L3_3 = {}
      L3_3.id = "Tutorial Dialog "
      L4_3 = {}
      L5_3 = L3_1
      L5_3 = L5_3.LiveBattleTutState2Step4Part1
      L6_3 = L3_1
      L6_3 = L6_3.LiveBattleTutState2Step4Part2
      L4_3[1] = L5_3
      L4_3[2] = L6_3
      L3_3.texts = L4_3
      L3_3.mentorAlignment = "right"
      L3_3.mode = "semi"
      L4_3 = L4_1
      L4_3 = L4_3.Path_Assets
      L5_3 = "Tutorial/FC-Sarhang.png"
      L4_3 = L4_3 .. L5_3
      L3_3.mentorImage = L4_3
      L3_3.mentorWidth = 111
      L3_3.mentorHeight = 115
      
      function L4_3()
        local L0_4, L1_4
        L0_4 = true
        return L0_4
      end
      
      L3_3.callBackFunction = L4_3
      L1_3 = L1_3(L2_3, L3_3)
      L0_3.verticalOverlay = L1_3
      L0_3 = L19_1
      L0_3 = L0_3.requestHelpButton
      L1_3 = L0_3
      L0_3 = L0_3.toFront
      L0_3(L1_3)
    end
    
    L2_2 = L19_1
    L2_2 = L2_2.tutorialTimers
    L3_2 = L19_1
    L3_2 = L3_2.tutorialTimers
    L3_2 = #L3_2
    L3_2 = L3_2 + 1
    L4_2 = timer
    L4_2 = L4_2.performWithDelay
    L5_2 = 2000
    L6_2 = L1_2
    L4_2 = L4_2(L5_2, L6_2)
    L2_2[L3_2] = L4_2
  elseif A0_2 == 5 then
    L1_2 = log3
    L2_2 = "Tut step 5"
    L1_2(L2_2)
    L1_2 = L14_1
    L1_2 = L1_2.removePoint
    L1_2()
    L1_2 = L19_1
    L1_2 = L1_2.resumeGame
    L1_2()
    
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = L19_1
      L0_3 = L0_3.playerJoinedTheBattle
      L1_3 = 2
      L2_3 = L3_1
      L2_3 = L2_3.Friend
      L3_3 = mainPlayer
      L3_3 = L3_3.id
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = L17_1
      L1_3 = L0_3
      L0_3 = L0_3.new
      L2_3 = {}
      L2_3.id = "Tutorial Dialog "
      L3_3 = {}
      L4_3 = L3_1
      L4_3 = L4_3.LiveBattleTutState2Step5
      L3_3[1] = L4_3
      L2_3.texts = L3_3
      L2_3.mentorAlignment = "right"
      L2_3.mode = "semi"
      L3_3 = L4_1
      L3_3 = L3_3.Path_Assets
      L4_3 = "Tutorial/FC-Sarhang.png"
      L3_3 = L3_3 .. L4_3
      L2_3.mentorImage = L3_3
      L2_3.mentorWidth = 111
      L2_3.mentorHeight = 115
      
      function L3_3()
        local L0_4, L1_4
        L0_4 = L19_1
        L0_4.liveBattleTutorialSequenceStep = 6
        L0_4 = L19_1
        L0_4 = L0_4.strongEnemySteps
        L1_4 = L19_1
        L1_4 = L1_4.liveBattleTutorialSequenceStep
        L0_4(L1_4)
      end
      
      L2_3.callBackFunction = L3_3
      L0_3(L1_3, L2_3)
    end
    
    function L2_2()
      local L0_3, L1_3
      L0_3 = L19_1
      L0_3 = L0_3.pauseGame
      L0_3()
    end
    
    L3_2 = L19_1
    L3_2 = L3_2.tutorialTimers
    L4_2 = L19_1
    L4_2 = L4_2.tutorialTimers
    L4_2 = #L4_2
    L4_2 = L4_2 + 1
    L5_2 = timer
    L5_2 = L5_2.performWithDelay
    L6_2 = 2000
    L7_2 = L1_2
    L5_2 = L5_2(L6_2, L7_2)
    L3_2[L4_2] = L5_2
    L3_2 = L19_1
    L3_2 = L3_2.tutorialTimers
    L4_2 = L19_1
    L4_2 = L4_2.tutorialTimers
    L4_2 = #L4_2
    L4_2 = L4_2 + 1
    L5_2 = timer
    L5_2 = L5_2.performWithDelay
    L6_2 = 8000
    L7_2 = L2_2
    L5_2 = L5_2(L6_2, L7_2)
    L3_2[L4_2] = L5_2
  elseif A0_2 == 6 then
    L1_2 = log3
    L2_2 = "Tut step 6"
    L1_2(L2_2)
    
    function L1_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      L0_3 = L19_1
      L0_3 = L0_3.pauseGame
      L0_3()
      L0_3 = {}
      L0_3.id = 2
      L0_3.base_card_id = 30
      L1_3 = L23_1
      L1_3 = L1_3 * 2
      L0_3.power = L1_3
      L0_3.last_used_at = 0
      L1_3 = L15_1
      L2_3 = L1_3
      L1_3 = L1_3.new
      L3_3 = L0_3
      L1_3 = L1_3(L2_3, L3_3)
      L1_3.userId = 2
      L2_3 = L19_1
      L2_3 = L2_3.addCardsToScrollers
      L3_3 = "friends"
      L4_3 = L1_3
      L5_3 = 2
      L6_3 = "Friend"
      L2_3(L3_3, L4_3, L5_3, L6_3)
      L2_3 = L17_1
      L3_3 = L2_3
      L2_3 = L2_3.new
      L4_3 = {}
      L4_3.id = "Tutorial Dialog "
      L5_3 = {}
      L6_3 = L3_1
      L6_3 = L6_3.LiveBattleTutState2Step6
      L5_3[1] = L6_3
      L4_3.texts = L5_3
      L4_3.mentorAlignment = "right"
      L4_3.mode = "semi"
      L5_3 = L4_1
      L5_3 = L5_3.Path_Assets
      L6_3 = "Tutorial/FC-Sarhang.png"
      L5_3 = L5_3 .. L6_3
      L4_3.mentorImage = L5_3
      L4_3.mentorWidth = 111
      L4_3.mentorHeight = 115
      
      function L5_3()
        local L0_4, L1_4
        L0_4 = L19_1
        L0_4.liveBattleTutorialSequenceStep = 7
        L0_4 = L19_1
        L0_4 = L0_4.strongEnemySteps
        L1_4 = L19_1
        L1_4 = L1_4.liveBattleTutorialSequenceStep
        L0_4(L1_4)
      end
      
      L4_3.callBackFunction = L5_3
      L2_3(L3_3, L4_3)
    end
    
    L2_2 = L19_1
    L2_2 = L2_2.tutorialTimers
    L3_2 = L19_1
    L3_2 = L3_2.tutorialTimers
    L3_2 = #L3_2
    L3_2 = L3_2 + 1
    L4_2 = timer
    L4_2 = L4_2.performWithDelay
    L5_2 = 6000
    L6_2 = L1_2
    L4_2 = L4_2(L5_2, L6_2)
    L2_2[L3_2] = L4_2
  elseif A0_2 == 7 then
    L1_2 = L17_1
    L2_2 = L1_2
    L1_2 = L1_2.new
    L3_2 = {}
    L3_2.id = "Tutorial Dialog "
    L4_2 = {}
    L5_2 = L3_1
    L5_2 = L5_2.LiveBattleTutState2Step7
    L4_2[1] = L5_2
    L3_2.texts = L4_2
    L3_2.mentorAlignment = "right"
    L3_2.mode = "semi"
    L4_2 = L4_1
    L4_2 = L4_2.Path_Assets
    L5_2 = "Tutorial/FC-Sarhang.png"
    L4_2 = L4_2 .. L5_2
    L3_2.mentorImage = L4_2
    L3_2.mentorWidth = 111
    L3_2.mentorHeight = 115
    
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = mainPlayer
      L0_3 = L0_3.heroSet
      if L0_3 then
        L0_3 = mainPlayer
        L1_3 = L0_3
        L0_3 = L0_3.setSettingForKey
        L2_3 = "activeTutorialState"
        L3_3 = "liveBattleHero"
        L0_3(L1_3, L2_3, L3_3)
      else
        L0_3 = mainPlayer
        L1_3 = L0_3
        L0_3 = L0_3.setSettingForKey
        L2_3 = "activeTutorialState"
        L3_3 = "liveBattleState3"
        L0_3(L1_3, L2_3, L3_3)
      end
      L0_3 = mainPlayer
      L1_3 = L0_3
      L0_3 = L0_3.saveSettings
      L0_3(L1_3)
      L0_3 = L0_1
      L0_3 = L0_3.gotoScene
      L1_3 = "Scenes.Battle"
      L0_3(L1_3)
    end
    
    L3_2.callBackFunction = L4_2
    L1_2(L2_2, L3_2)
    L1_2 = warningLog
    L2_2 = "finished Strong enemy"
    L1_2(L2_2)
  else
    L1_2 = errorLog
    L2_2 = "Tutorial Error ,Strong Enemy Step not defined"
    L1_2(L2_2)
  end
end

L19_1.strongEnemySteps = L131_1

function L131_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 == 1 then
    L1_2 = L14_1
    L1_2 = L1_2.removePoint
    L1_2()
    L1_2 = L19_1
    L1_2 = L1_2.hideHelpBar
    L1_2()
    L1_2 = L19_1
    L1_2 = L1_2.pauseGame
    L1_2()
    L1_2 = L122_1
    L2_2 = L46_1
    L1_2 = L1_2(L2_2)
    L2_2 = getIndexOfRegularCard
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = highlightCard
    L4_2 = L2_2
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  elseif A0_2 == 2 then
    L1_2 = L14_1
    L1_2 = L1_2.removePoint
    L1_2()
    L1_2 = L14_1
    L1_2 = L1_2.pointAt
    L2_2 = L19_1
    L2_2 = L2_2.view
    L3_2 = L19_1
    L3_2 = L3_2.buttonBarGroup
    L3_2 = L3_2.x
    L4_2 = L19_1
    L4_2 = L4_2.buttonBarGroup
    L4_2 = L4_2.width
    L4_2 = L4_2 / 2
    L3_2 = L3_2 + L4_2
    L4_2 = L19_1
    L4_2 = L4_2.buttonBarGroup
    L4_2 = L4_2.y
    L5_2 = L19_1
    L5_2 = L5_2.buttonBarGroup
    L5_2 = L5_2.height
    L5_2 = L5_2 / 2
    L4_2 = L4_2 + L5_2
    L1_2(L2_2, L3_2, L4_2)
  elseif A0_2 == 3 then
    L1_2 = L14_1
    L1_2 = L1_2.removePoint
    L1_2()
    L1_2 = L19_1
    L1_2 = L1_2.resumeGame
    L1_2()
  elseif A0_2 == 4 then
    L1_2 = L14_1
    L1_2 = L1_2.removePoint
    L1_2()
    
    function L1_2()
      local L0_3, L1_3
      L0_3 = L19_1
      L0_3 = L0_3.pauseGame
      L0_3()
    end
    
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = L19_1
      L1_3 = L17_1
      L2_3 = L1_3
      L1_3 = L1_3.new
      L3_3 = {}
      L3_3.id = "Tutorial Dialog "
      L4_3 = {}
      L5_3 = L3_1
      L5_3 = L5_3.LiveBattleTutStateHeroStep4
      L4_3[1] = L5_3
      L3_3.texts = L4_3
      L3_3.mentorAlignment = "right"
      L3_3.mode = "semi"
      L4_3 = L4_1
      L4_3 = L4_3.Path_Assets
      L5_3 = "Tutorial/FC-Sarhang.png"
      L4_3 = L4_3 .. L5_3
      L3_3.mentorImage = L4_3
      L3_3.mentorWidth = 111
      L3_3.mentorHeight = 115
      
      function L4_3()
        local L0_4, L1_4
        L0_4 = L19_1
        L0_4.liveBattleTutorialSequenceStep = 5
        L0_4 = L19_1
        L0_4 = L0_4.heroAbilitySteps
        L1_4 = L19_1
        L1_4 = L1_4.liveBattleTutorialSequenceStep
        L0_4(L1_4)
      end
      
      L3_3.callBackFunction = L4_3
      L1_3 = L1_3(L2_3, L3_3)
      L0_3.verticalOverlay = L1_3
    end
    
    L3_2 = L19_1
    L3_2 = L3_2.tutorialTimers
    L4_2 = L19_1
    L4_2 = L4_2.tutorialTimers
    L4_2 = #L4_2
    L4_2 = L4_2 + 1
    L5_2 = timer
    L5_2 = L5_2.performWithDelay
    L6_2 = 4000
    L7_2 = L2_2
    L5_2 = L5_2(L6_2, L7_2)
    L3_2[L4_2] = L5_2
    L3_2 = L19_1
    L3_2 = L3_2.tutorialTimers
    L4_2 = L19_1
    L4_2 = L4_2.tutorialTimers
    L4_2 = #L4_2
    L4_2 = L4_2 + 1
    L5_2 = timer
    L5_2 = L5_2.performWithDelay
    L6_2 = 2000
    L7_2 = L1_2
    L5_2 = L5_2(L6_2, L7_2)
    L3_2[L4_2] = L5_2
  elseif A0_2 == 5 then
    L1_2 = L14_1
    L1_2 = L1_2.removePoint
    L1_2()
    L1_2 = L19_1
    L1_2 = L1_2.pauseGame
    L1_2()
    L1_2 = L122_1
    L2_2 = L46_1
    L1_2 = L1_2(L2_2)
    L2_2 = highlightCard
    L3_2 = 1
    L4_2 = L1_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  elseif A0_2 == 6 then
    L1_2 = L14_1
    L1_2 = L1_2.removePoint
    L1_2()
    L1_2 = L14_1
    L1_2 = L1_2.pointAt
    L2_2 = L19_1
    L2_2 = L2_2.view
    L3_2 = L19_1
    L3_2 = L3_2.buttonBarGroup
    L3_2 = L3_2.x
    L4_2 = L19_1
    L4_2 = L4_2.buttonBarGroup
    L4_2 = L4_2.width
    L4_2 = L4_2 / 2
    L3_2 = L3_2 + L4_2
    L4_2 = L19_1
    L4_2 = L4_2.buttonBarGroup
    L4_2 = L4_2.y
    L5_2 = L19_1
    L5_2 = L5_2.buttonBarGroup
    L5_2 = L5_2.height
    L5_2 = L5_2 / 2
    L4_2 = L4_2 + L5_2
    L1_2(L2_2, L3_2, L4_2)
  elseif A0_2 == 7 then
    L1_2 = L19_1
    L1_2.isTutorial = true
    L1_2 = nil
    L2_2 = L14_1
    L2_2 = L2_2.removePoint
    L2_2()
    
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = display
      L0_3 = L0_3.newRect
      L1_3 = L19_1
      L1_3 = L1_3.view
      L2_3 = L19_1
      L2_3 = L2_3.heroAbilities
      L2_3 = L2_3.view
      L2_3 = L2_3.x
      L3_3 = L19_1
      L3_3 = L3_3.heroAbilities
      L3_3 = L3_3.view
      L3_3 = L3_3.y
      L4_3 = L19_1
      L4_3 = L4_3.heroAbilities
      L4_3 = L4_3.view
      L4_3 = L4_3.width
      L4_3 = L4_3 + 10
      L5_3 = L19_1
      L5_3 = L5_3.heroAbilities
      L5_3 = L5_3.view
      L5_3 = L5_3.height
      L5_3 = L5_3 + 5
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
      L1_2 = L0_3
      L0_3 = L1_2
      L1_3 = L0_3
      L0_3 = L0_3.setFillColor
      L2_3 = 1
      L3_3 = 1
      L4_3 = 1
      L5_3 = 0
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
      L0_3 = L1_2
      L0_3.strokeWidth = 1
      L0_3 = L1_2
      L1_3 = L0_3
      L0_3 = L0_3.setStrokeColor
      L2_3 = 1
      L3_3 = 0
      L4_3 = 0
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = transition
      L0_3 = L0_3.blink
      L1_3 = L1_2
      L2_3 = {}
      L2_3.time = 3000
      L0_3(L1_3, L2_3)
    end
    
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = transition
      L0_3 = L0_3.cancel
      L1_3 = L1_2
      L0_3(L1_3)
      L0_3 = display
      L0_3 = L0_3.remove
      L1_3 = L1_2
      L0_3(L1_3)
      L0_3 = nil
      L1_2 = L0_3
      L0_3 = L19_1
      L1_3 = L17_1
      L2_3 = L1_3
      L1_3 = L1_3.new
      L3_3 = {}
      L3_3.id = "Tutorial Dialog "
      L4_3 = {}
      L5_3 = L3_1
      L5_3 = L5_3.LiveBattleTutStateHeroStep7
      L4_3[1] = L5_3
      L3_3.texts = L4_3
      L3_3.mentorAlignment = "right"
      L3_3.mode = "semi"
      L4_3 = L4_1
      L4_3 = L4_3.Path_Assets
      L5_3 = "Tutorial/FC-Sarhang.png"
      L4_3 = L4_3 .. L5_3
      L3_3.mentorImage = L4_3
      L3_3.mentorWidth = 111
      L3_3.mentorHeight = 115
      
      function L4_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = mainPlayer
        L1_4 = L0_4
        L0_4 = L0_4.setSettingForKey
        L2_4 = "activeTutorialState"
        L3_4 = "liveBattleState3"
        L0_4(L1_4, L2_4, L3_4)
        L0_4 = mainPlayer
        L1_4 = L0_4
        L0_4 = L0_4.saveSettings
        L0_4(L1_4)
        L0_4 = L0_1
        L0_4 = L0_4.gotoScene
        L1_4 = "Scenes.Battle"
        L0_4(L1_4)
      end
      
      L3_3.callBackFunction = L4_3
      L1_3 = L1_3(L2_3, L3_3)
      L0_3.verticalOverlay = L1_3
    end
    
    L4_2 = L19_1
    L4_2 = L4_2.tutorialTimers
    L5_2 = L19_1
    L5_2 = L5_2.tutorialTimers
    L5_2 = #L5_2
    L5_2 = L5_2 + 1
    L6_2 = timer
    L6_2 = L6_2.performWithDelay
    L7_2 = 4000
    L8_2 = L2_2
    L6_2 = L6_2(L7_2, L8_2)
    L4_2[L5_2] = L6_2
    L4_2 = L19_1
    L4_2 = L4_2.tutorialTimers
    L5_2 = L19_1
    L5_2 = L5_2.tutorialTimers
    L5_2 = #L5_2
    L5_2 = L5_2 + 1
    L6_2 = timer
    L6_2 = L6_2.performWithDelay
    L7_2 = 7000
    L8_2 = L3_2
    L6_2 = L6_2(L7_2, L8_2)
    L4_2[L5_2] = L6_2
  end
end

L19_1.heroAbilitySteps = L131_1

function L131_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L19_1
  L2_2.liveBattleTutorialIsActive = true
  if A1_2 == "liveBattleState1" then
    L2_2 = log3
    L3_2 = "Tutorial Weak Enemy"
    L2_2(L3_2)
    L2_2 = L19_1
    L2_2.liveBattleTutorialSequence = 1
    L2_2 = L19_1
    L2_2.liveBattleTutorialSequenceStep = 1
    L2_2 = L19_1
    L2_2 = L2_2.weakEnemySteps
    L3_2 = L19_1
    L3_2 = L3_2.liveBattleTutorialSequenceStep
    L2_2(L3_2)
  elseif A1_2 == "liveBattleState2" then
    L2_2 = log3
    L3_2 = "Tutorial Strong Enemy"
    L2_2(L3_2)
    L2_2 = L19_1
    L2_2.liveBattleTutorialSequence = 2
    L2_2 = L19_1
    L2_2.liveBattleTutorialSequenceStep = 1
    L2_2 = L19_1
    L2_2 = L2_2.strongEnemySteps
    L3_2 = L19_1
    L3_2 = L3_2.liveBattleTutorialSequenceStep
    L2_2(L3_2)
  elseif A1_2 == "liveBattleHero" then
    L2_2 = L19_1
    L2_2.liveBattleTutorialSequence = 3
    L2_2 = L19_1
    L2_2.liveBattleTutorialSequenceStep = 1
    L2_2 = L19_1
    L2_2 = L2_2.heroAbilitySteps
    L3_2 = L19_1
    L3_2 = L3_2.liveBattleTutorialSequenceStep
    L2_2(L3_2)
  elseif A1_2 == "liveBattleFinished" then
    L2_2 = L19_1
    L2_2.liveBattleTutorialSequence = -1
    L2_2 = L19_1
    L2_2.liveBattleTutorialSequenceStep = -1
    L2_2 = L19_1
    L2_2.liveBattleTutorialIsActive = false
  end
end

L19_1.startTutorialSequence = L131_1
return L19_1
