local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1, L65_1, L66_1, L67_1, L68_1, L69_1, L70_1, L71_1, L72_1, L73_1, L74_1, L75_1, L76_1, L77_1
L0_1 = require
L1_1 = "widget"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Utils.SceneCreator"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.NavigationBar"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Language"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Models.Operation"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "widget"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Constants"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Views.ActivityIndicatorView"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Models.Player"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Models.Card"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Tutorial.TutorialManager2"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Tutorial.TutorialManager"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Utils.Toolbox"
L13_1 = L13_1(L14_1)
L14_1 = require
L15_1 = "Views.ChatButton"
L14_1 = L14_1(L15_1)
L15_1 = require
L16_1 = "Views.EffectsManager"
L15_1 = L15_1(L16_1)
L16_1 = require
L17_1 = "Views.CachedImageView"
L16_1 = L16_1(L17_1)
L17_1 = require
L18_1 = "Components.TDButtonView"
L17_1 = L17_1(L18_1)
L18_1 = require
L19_1 = "Components.TDMultilineButtonView"
L18_1 = L18_1(L19_1)
L19_1 = require
L20_1 = "Theme"
L19_1 = L19_1(L20_1)
L20_1 = require
L21_1 = "json"
L20_1 = L20_1(L21_1)
L21_1 = require
L22_1 = "Components.TDDialogView"
L21_1 = L21_1(L22_1)
L22_1 = nil
L23_1 = L2_1.newScene
L24_1 = "Battle"
L23_1 = L23_1(L24_1)
L24_1 = 1
L25_1 = nil
L26_1 = 1
L27_1 = nil
L28_1 = nil
L29_1 = nil
L30_1 = nil
L31_1 = nil
L32_1 = nil
L33_1 = nil
L34_1 = nil
L35_1 = nil
L36_1 = nil
L37_1 = nil
L38_1 = nil
L39_1 = nil
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
L51_1 = nil
L52_1 = nil
L53_1 = nil
L54_1 = false
L55_1 = nil
L56_1 = nil
L57_1 = nil
L58_1 = nil
L59_1 = nil
L60_1 = nil
L61_1 = false
L62_1 = nil
L63_1 = nil
L64_1 = nil
L65_1 = nil
L66_1 = nil
L67_1 = log3
L68_1 = "loading battle file"
L67_1(L68_1)

function L67_1()
  local L0_2, L1_2
  L0_2 = L1_1
  L0_2 = L0_2.gotoScene
  L1_2 = "Scenes.Home"
  L0_2(L1_2)
end

function L68_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = {}
  L1_2 = {}
  L2_2 = L27_1
  L1_2.opponent = L2_2
  L1_2.mode = "battle"
  L1_2.previousScene = "Scenes.Battle"
  L0_2.params = L1_2
  option = L0_2
  L0_2 = L61_1
  if L0_2 then
    L0_2 = option
    L0_2 = L0_2.params
    L0_2.tutorial = "battle"
  end
  L0_2 = mainPlayer
  L0_2 = L0_2.settings
  L0_2 = L0_2.liveBattleIsOn
  if L0_2 ~= true then
    L0_2 = L58_1
    if L0_2 ~= true then
      L0_2 = L27_1
      L0_2.status = nil
    end
  end
  L0_2 = L27_1
  L0_2 = L0_2.status
  if L0_2 == nil then
    L0_2 = L27_1
    L0_2.status = "offline"
  end
  L0_2 = L27_1
  L0_2 = L0_2.status
  if L0_2 == "offline" then
    L0_2 = log3
    L1_2 = "opponent is "
    L2_2 = L27_1
    L2_2 = L2_2.status
    L0_2(L1_2, L2_2)
    L0_2 = L1_1
    L0_2 = L0_2.gotoScene
    L1_2 = "Scenes.ChooseDeck"
    L2_2 = option
    L0_2(L1_2, L2_2)
  else
    L0_2 = L27_1
    L0_2 = L0_2.status
    if L0_2 == "online" then
      L0_2 = log3
      L1_2 = "opponent is online"
      L2_2 = L27_1
      L2_2 = L2_2.status
      L0_2(L1_2, L2_2)
      L0_2 = L58_1
      if L0_2 ~= true then
        L0_2 = L1_1
        L0_2 = L0_2.getScene
        L1_2 = "Scenes.LiveBattle"
        L0_2 = L0_2(L1_2)
        L1_2 = L0_2.battleManager
        L2_2 = L1_2.attackTo
        L3_2 = L27_1
        L3_2 = L3_2.id
        L4_2 = L27_1
        L4_2 = L4_2.name
        L5_2 = L49_1
        L2_2(L3_2, L4_2, L5_2)
      else
        L0_2 = L15_1
        L0_2 = L0_2.removePoint
        L0_2()
        L0_2 = L56_1
        if L0_2 ~= 1 then
          L0_2 = L56_1
          if L0_2 ~= 2 then
            L0_2 = L56_1
          end
        end
        if L0_2 == "hero" then
          L0_2 = {}
          L1_2 = {}
          L1_2.battle_ID = -1
          L2_2 = mainPlayer
          L2_2 = L2_2.id
          L1_2.ownerTeamId = L2_2
          L1_2.mainEnemy = -1
          L2_2 = L5_1
          L2_2 = L2_2.tempAvatar
          L1_2._mainEnemyAvatar = L2_2
          L0_2.params = L1_2
          L1_2 = L1_1
          L1_2 = L1_2.gotoScene
          L2_2 = "Scenes.LiveBattle"
          L3_2 = L0_2
          L1_2(L2_2, L3_2)
        end
      end
    else
      L0_2 = L27_1
      L0_2 = L0_2.status
      if L0_2 == "shield" then
        L0_2 = showSimpleDialog
        L1_2 = L4_1
        L1_2 = L1_2.Shield
        L2_2 = L4_1
        L2_2 = L2_2["opponent is in shield"]
        L3_2 = L4_1
        L3_2 = L3_2.OK
        L4_2 = nil
        L5_2 = nil
        L6_2 = nil
        L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
      else
        L0_2 = showSimpleDialog
        L1_2 = L4_1
        L1_2 = L1_2.Busy
        L2_2 = L4_1
        L2_2 = L2_2["opponent is busy!"]
        L3_2 = L4_1
        L3_2 = L3_2.OK
        L4_2 = nil
        L5_2 = nil
        L6_2 = nil
        L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
      end
    end
  end
  L0_2 = L66_1
  if L0_2 then
    L0_2 = mainPlayer
    L0_2 = L0_2.settings
    L0_2 = L0_2.newTutorial
    if L0_2 then
      L0_2 = L15_1
      L0_2 = L0_2.removePoint
      L0_2()
      L0_2 = L66_1
      L0_2()
      L0_2 = nil
      L66_1 = L0_2
    end
  end
end

function L69_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = L25_1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L6_2.id
    L7_2 = L7_2(L8_2)
    L8_2 = tonumber
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if L7_2 == L8_2 then
      L7_2 = log3
      L8_2 = "player status has changed"
      L7_2(L8_2)
      if A1_2 == 1 then
        L6_2.status = "online"
      elseif A1_2 == 2 then
        L6_2.status = "busy"
      elseif A1_2 == 4 then
        L6_2.status = "shield"
      else
        L6_2.status = "offline"
      end
      L7_2 = L23_1
      L7_2 = L7_2.adjustUIForSelectionChange
      L8_2 = 0
      L7_2(L8_2)
    end
  end
end

L23_1.changeStatus = L69_1

function L69_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = L58_1
  if L1_2 == true then
    L1_2 = {}
    L25_1 = L1_2
    L1_2 = {}
    L57_1 = L1_2
    L1_2 = L57_1
    L2_2 = L5_1
    L2_2 = L2_2.tempAvatar
    L1_2.avatar = L2_2
    L1_2 = L25_1
    L2_2 = L25_1
    L2_2 = #L2_2
    L2_2 = L2_2 + 1
    L3_2 = L57_1
    L1_2[L2_2] = L3_2
    L1_2 = 1
    L26_1 = L1_2
    L1_2 = L57_1
    L1_2.attacksInToday = 1
    L1_2 = L57_1
    L1_2.gold = 10001
    L1_2 = L57_1
    L2_2 = L4_1
    L2_2 = L2_2.TestOpponent
    L1_2.name = L2_2
    L1_2 = L57_1
    L1_2.id = -1
    L1_2 = L57_1
    L1_2.weather = 2
    L1_2 = L57_1
    L2_2 = mainPlayer
    L2_2 = L2_2.level
    L1_2.level = L2_2
    L1_2 = L57_1
    L1_2.tribeName = ""
    L1_2 = L57_1
    L2_2 = mainPlayer
    L2_2 = L2_2.rank
    L2_2 = L2_2 + 1
    L1_2.rank = L2_2
    L1_2 = L57_1
    L1_2.isPowerVisit = true
    L1_2 = L56_1
    if L1_2 == 1 then
      L1_2 = L57_1
      L1_2.status = "online"
      L1_2 = L57_1
      L1_2.powerRating = 1
      L1_2 = L57_1
      L1_2.defPower = 100
    else
      L1_2 = L56_1
      if L1_2 == 2 then
        L1_2 = L57_1
        L1_2.status = "online"
        L1_2 = L57_1
        L1_2.powerRating = 4
        L1_2 = L57_1
        L2_2 = mainPlayer
        L2_2 = L2_2.power
        L2_2 = L2_2 * 1.5
        L1_2.defPower = L2_2
      else
        L1_2 = L56_1
        if L1_2 == "hero" then
          L1_2 = L57_1
          L1_2.status = "online"
          L1_2 = L57_1
          L1_2.powerRating = 4
          L1_2 = L57_1
          L2_2 = mainPlayer
          L2_2 = L2_2.power
          L2_2 = L2_2 * 1.5
          L1_2.defPower = L2_2
        else
          L1_2 = L56_1
          if L1_2 == 3 then
            L1_2 = L59_1
            if L1_2 == 1 then
              L1_2 = L57_1
              L1_2.status = "online"
              L1_2 = L57_1
              L1_2.powerRating = 4
              L1_2 = L57_1
              L2_2 = mainPlayer
              L2_2 = L2_2.power
              L2_2 = L2_2 * 1.5
              L1_2.defPower = L2_2
            else
              L1_2 = L59_1
              if L1_2 == 2 then
                L1_2 = L57_1
                L1_2.status = "busy"
                L1_2 = L57_1
                L1_2.powerRating = 4
                L1_2 = L57_1
                L2_2 = mainPlayer
                L2_2 = L2_2.power
                L2_2 = L2_2 * 1.5
                L1_2.defPower = L2_2
              else
                L1_2 = L59_1
                if L1_2 == 3 then
                  L1_2 = L57_1
                  L1_2.status = "offline"
                  L1_2 = L57_1
                  L1_2.powerRating = 4
                  L1_2 = L57_1
                  L2_2 = mainPlayer
                  L2_2 = L2_2.power
                  L2_2 = L2_2 * 1.5
                  L1_2.defPower = L2_2
                end
              end
            end
          else
            L1_2 = L56_1
            if L1_2 == 4 then
              L1_2 = L57_1
              L1_2.status = "offline"
              L1_2 = L57_1
              L1_2.powerRating = 4
              L1_2 = L57_1
              L2_2 = mainPlayer
              L2_2 = L2_2.power
              L2_2 = L2_2 * 1.5
              L1_2.defPower = L2_2
            end
          end
        end
      end
    end
    L1_2 = L25_1
    L2_2 = L26_1
    L3_2 = L57_1
    L1_2[L2_2] = L3_2
  else
    L1_2 = L26_1
    L1_2 = L1_2 + A0_2
    L26_1 = L1_2
    L1_2 = L26_1
    L2_2 = L25_1
    L2_2 = #L2_2
    if L1_2 > L2_2 then
      L1_2 = 1
      L26_1 = L1_2
    end
    L1_2 = L26_1
    if L1_2 <= 0 then
      L1_2 = L25_1
      L1_2 = #L1_2
      L26_1 = L1_2
    end
  end
  L1_2 = opponentView
  if L1_2 then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = opponentView
    L1_2(L2_2)
  end
  L1_2 = mainPlayer
  L1_2 = L1_2.settings
  L1_2 = L1_2.liveBattleIsOn
  if L1_2 ~= true then
    L1_2 = L58_1
    if L1_2 ~= true then
      L1_2 = L25_1
      L2_2 = L26_1
      L1_2 = L1_2[L2_2]
      L1_2.status = "offline"
    end
  end
  L1_2 = L25_1
  L2_2 = L26_1
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.status
  if L1_2 == "online" then
    L1_2 = L41_1
    L2_2 = L1_2
    L1_2 = L1_2.setFillColor
    L3_2 = 0.5607843137254902
    L4_2 = 0.9725490196078431
    L5_2 = 0.592156862745098
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = log3
    L2_2 = "opp is online"
    L1_2(L2_2)
  else
    L1_2 = L25_1
    L2_2 = L26_1
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.status
    if L1_2 == "offline" then
      L1_2 = L41_1
      L2_2 = L1_2
      L1_2 = L1_2.setFillColor
      L3_2 = L7_1
      L3_2 = L3_2.blueColor
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L3_2()
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L1_2 = log3
      L2_2 = "opp is offline"
      L1_2(L2_2)
    else
      L1_2 = L25_1
      L2_2 = L26_1
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.status
      if L1_2 == "shield" then
        L1_2 = L41_1
        L2_2 = L1_2
        L1_2 = L1_2.setFillColor
        L3_2 = L19_1
        L3_2 = L3_2.playerShieldedStatusColor
        L3_2 = L3_2[1]
        L4_2 = L19_1
        L4_2 = L4_2.playerShieldedStatusColor
        L4_2 = L4_2[2]
        L5_2 = L19_1
        L5_2 = L5_2.playerShieldedStatusColor
        L5_2 = L5_2[3]
        L1_2(L2_2, L3_2, L4_2, L5_2)
        L1_2 = log3
        L2_2 = "opp is shielded"
        L1_2(L2_2)
      else
        L1_2 = L25_1
        L2_2 = L26_1
        L1_2 = L1_2[L2_2]
        L1_2 = L1_2.status
        if L1_2 == "busy" then
          L1_2 = L41_1
          L2_2 = L1_2
          L1_2 = L1_2.setFillColor
          L3_2 = 1
          L4_2 = 0.5764705882352941
          L5_2 = 0.8
          L1_2(L2_2, L3_2, L4_2, L5_2)
          L1_2 = log3
          L2_2 = "opp is busy"
          L1_2(L2_2)
        end
      end
    end
  end
  L1_2 = log3
  L2_2 = "OP Power"
  L3_2 = L25_1
  L4_2 = L26_1
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.defPower
  L1_2(L2_2, L3_2)
  L1_2 = L25_1
  L2_2 = L26_1
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.attacksInToday
  L2_2 = L25_1
  L3_2 = L26_1
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.attacksInToday
  if L2_2 < 1 then
    L1_2 = 1
  end
  L2_2 = L25_1
  L3_2 = L26_1
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.gold
  L2_2 = L2_2 / L1_2
  L3_2 = log3
  L4_2 = "Opponent Gold:"
  L5_2 = L25_1
  L6_2 = L26_1
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.gold
  L6_2 = "max:"
  L7_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = mainPlayer
  L3_2 = L3_2.level
  L3_2 = 100 * L3_2
  if L2_2 < L3_2 then
    L3_2 = 1
    goldPower = L3_2
  else
    L3_2 = mainPlayer
    L3_2 = L3_2.level
    L3_2 = 500 * L3_2
    if L2_2 < L3_2 then
      L3_2 = 2
      goldPower = L3_2
    else
      L3_2 = mainPlayer
      L3_2 = L3_2.level
      L3_2 = 1000 * L3_2
      if L2_2 < L3_2 then
        L3_2 = 3
        goldPower = L3_2
      else
        L3_2 = 4
        goldPower = L3_2
      end
    end
  end
  L3_2 = log3
  L4_2 = "Gold Power:"
  L5_2 = goldPower
  L3_2(L4_2, L5_2)
  L3_2 = L25_1
  L4_2 = L26_1
  L3_2 = L3_2[L4_2]
  L27_1 = L3_2
  L3_2 = log3
  L4_2 = "Displayed Opponent name & id:"
  L5_2 = L27_1
  L5_2 = L5_2.name
  L6_2 = L27_1
  L6_2 = L6_2.id
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  opponentView = L3_2
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = L7_1
  L4_2 = L4_2.Path_Assets
  L5_2 = "BattleItems/OpponentImages/Weather/weather-"
  L6_2 = L25_1
  L7_2 = L26_1
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.weather
  L7_2 = ".png"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
  L5_2 = 373
  L6_2 = 240
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  weatherImage = L3_2
  L3_2 = opponentView
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = weatherImage
  L3_2(L4_2, L5_2)
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = L7_1
  L4_2 = L4_2.Path_Assets
  L5_2 = "BattleItems/OpponentImages/Money/money-"
  L6_2 = goldPower
  L7_2 = ".png"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
  L5_2 = 373
  L6_2 = 240
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  moneyImage = L3_2
  L3_2 = opponentView
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = moneyImage
  L3_2(L4_2, L5_2)
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = L7_1
  L4_2 = L4_2.Path_Assets
  L5_2 = "BattleItems/OpponentImages/Building/building-"
  L6_2 = L25_1
  L7_2 = L26_1
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.powerRating
  L7_2 = ".png"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
  L5_2 = 373
  L6_2 = 240
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  buildingImage = L3_2
  L3_2 = opponentView
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = buildingImage
  L3_2(L4_2, L5_2)
  L3_2 = L28_1
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = opponentView
  L3_2(L4_2, L5_2)
  L3_2 = opponentView
  L4_2 = display
  L4_2 = L4_2.contentWidth
  L4_2 = L4_2 - 180
  L4_2 = L4_2 - 10
  L4_2 = L4_2 - 5
  L4_2 = L4_2 / 2
  L4_2 = 10 + L4_2
  L3_2.x = L4_2
  L3_2 = opponentView
  L4_2 = buildingImage
  L4_2 = L4_2.height
  L4_2 = L4_2 / 2
  L3_2.y = L4_2
  L3_2 = graphics
  L3_2 = L3_2.newMask
  L4_2 = L7_1
  L4_2 = L4_2.Path_Assets
  L5_2 = "BattleItems/BattleMasks/mask"
  L6_2 = L7_1
  L6_2 = L6_2.deviceSpecificFilePostfix
  L6_2 = L6_2()
  L7_2 = ".png"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
  L3_2 = L3_2(L4_2)
  L4_2 = opponentView
  L5_2 = L4_2
  L4_2 = L4_2.setMask
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = opponentView
  L5_2 = display
  L5_2 = L5_2.contentCenterX
  L6_2 = opponentView
  L6_2 = L6_2.x
  L5_2 = L5_2 - L6_2
  L4_2.maskX = L5_2
  L4_2 = opponentView
  L5_2 = display
  L5_2 = L5_2.contentCenterY
  L6_2 = opponentView
  L6_2 = L6_2.y
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 - 40
  L4_2.maskY = L5_2
  L4_2 = nil
  L5_2 = mainPlayer
  L5_2 = L5_2.bonusRemainingTime
  if L5_2 then
    L5_2 = math
    L5_2 = L5_2.floor
    L6_2 = L7_1
    L6_2 = L6_2.BONUS_XP_MULTIPLIER
    L7_2 = L7_1
    L7_2 = L7_2.Battle_XPRewardMultiplier
    L6_2 = L6_2 * L7_2
    L7_2 = L25_1
    L8_2 = L26_1
    L7_2 = L7_2[L8_2]
    L7_2 = L7_2.level
    L6_2 = L6_2 * L7_2
    L7_2 = math
    L7_2 = L7_2.max
    L8_2 = 1
    L9_2 = math
    L9_2 = L9_2.log10
    L10_2 = L7_1
    L10_2 = L10_2.Battle_XPDividerOffset
    L10_2 = L1_2 + L10_2
    L9_2 = L9_2(L10_2)
    L10_2 = math
    L10_2 = L10_2.log10
    L11_2 = L7_1
    L11_2 = L11_2.Battle_XPDividerLogBase
    L10_2 = L10_2(L11_2)
    L9_2 = L9_2 / L10_2
    L7_2 = L7_2(L8_2, L9_2)
    L6_2 = L6_2 / L7_2
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
  else
    L5_2 = math
    L5_2 = L5_2.floor
    L6_2 = L7_1
    L6_2 = L6_2.Battle_XPRewardMultiplier
    L7_2 = L25_1
    L8_2 = L26_1
    L7_2 = L7_2[L8_2]
    L7_2 = L7_2.level
    L6_2 = L6_2 * L7_2
    L7_2 = math
    L7_2 = L7_2.max
    L8_2 = 1
    L9_2 = math
    L9_2 = L9_2.log10
    L10_2 = L7_1
    L10_2 = L10_2.Battle_XPDividerOffset
    L10_2 = L1_2 + L10_2
    L9_2 = L9_2(L10_2)
    L10_2 = math
    L10_2 = L10_2.log10
    L11_2 = L7_1
    L11_2 = L11_2.Battle_XPDividerLogBase
    L10_2 = L10_2(L11_2)
    L9_2 = L9_2 / L10_2
    L7_2 = L7_2(L8_2, L9_2)
    L6_2 = L6_2 / L7_2
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
  end
  L5_2 = L37_1
  L6_2 = L4_1
  L6_2 = L6_2.XP
  L7_2 = " : "
  L8_2 = L4_1
  L8_2 = L8_2.adjustNumber
  L9_2 = L4_2
  L8_2 = L8_2(L9_2)
  L6_2 = L6_2 .. L7_2 .. L8_2
  L5_2.text = L6_2
  L5_2 = L13_1
  L5_2 = L5_2.utf8sub
  L6_2 = L25_1
  L7_2 = L26_1
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.name
  L7_2 = 1
  L8_2 = L41_1
  L8_2 = L8_2.width
  L8_2 = L8_2 / 10
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = L40_1
  L6_2.text = L5_2
  L6_2 = L13_1
  L6_2 = L6_2.fixedTextSize
  L7_2 = L40_1
  L8_2 = L41_1
  L8_2 = L8_2.width
  L8_2 = L8_2 / 10
  L9_2 = {}
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L10_2 = L47_1
  L11_2 = L41_1
  L11_2 = L11_2.width
  L12_2 = L7_1
  L12_2 = L12_2.fontForTitle
  L12_2, L13_2 = L12_2()
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L40_1 = L6_2
  L6_2 = L40_1
  L7_2 = L6_2
  L6_2 = L6_2.setFillColor
  L8_2 = L7_1
  L8_2 = L8_2.darkBlueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = L40_1
  L7_2 = L6_2
  L6_2 = L6_2.toFront
  L6_2(L7_2)
  L6_2 = L33_1
  L7_2 = L6_2
  L6_2 = L6_2.toFront
  L6_2(L7_2)
  L6_2 = L25_1
  L7_2 = L26_1
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.tribeName
  if L6_2 then
    L6_2 = L13_1
    L6_2 = L6_2.utf8sub
    L7_2 = L25_1
    L8_2 = L26_1
    L7_2 = L7_2[L8_2]
    L7_2 = L7_2.tribeName
    L8_2 = 1
    L9_2 = L41_1
    L9_2 = L9_2.width
    L9_2 = L9_2 / 10
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = L32_1
    L7_2.text = L6_2
    L7_2 = L13_1
    L7_2 = L7_2.fixedTextSize
    L8_2 = L32_1
    L9_2 = L41_1
    L9_2 = L9_2.width
    L9_2 = L9_2 / 10
    L10_2 = {}
    L11_2 = 0
    L12_2 = 0
    L13_2 = 0
    L10_2[1] = L11_2
    L10_2[2] = L12_2
    L10_2[3] = L13_2
    L11_2 = L47_1
    L12_2 = L41_1
    L12_2 = L12_2.width
    L13_2 = L7_1
    L13_2 = L13_2.fontForTitle
    L13_2 = L13_2()
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L32_1 = L7_2
    L7_2 = L32_1
    L8_2 = L7_2
    L7_2 = L7_2.setFillColor
    L9_2 = L7_1
    L9_2 = L9_2.darkBlueColor
    L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2()
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L7_2 = L32_1
    L8_2 = L7_2
    L7_2 = L7_2.toFront
    L7_2(L8_2)
  else
    L6_2 = L32_1
    L6_2.text = ""
  end
  L6_2 = L25_1
  L7_2 = L26_1
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.leagueRank
  if L6_2 then
    L6_2 = mainPlayer
    L6_2 = L6_2.leagueId
    if L6_2 ~= nil then
      L6_2 = mainPlayer
      L6_2 = L6_2.leagueId
      if L6_2 ~= 0 then
        L6_2 = L7_1
        L6_2 = L6_2.Get_League_Rank_Icon_Image
        L7_2 = mainPlayer
        L7_2 = L7_2.leagueId
        L6_2 = L6_2(L7_2)
        L7_2 = display
        L7_2 = L7_2.remove
        L8_2 = rankImg
        L7_2(L8_2)
        L7_2 = display
        L7_2 = L7_2.newImageRect
        L8_2 = L33_1
        L9_2 = L7_1
        L9_2 = L9_2.Path_Assets
        L10_2 = "League/"
        L11_2 = L6_2
        L9_2 = L9_2 .. L10_2 .. L11_2
        L10_2 = 21
        L11_2 = 23
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
        rankImg = L7_2
        L7_2 = rankImg
        L8_2 = L48_1
        L8_2 = L8_2.x
        L9_2 = rankImg
        L9_2 = L9_2.width
        L9_2 = L9_2 / 2
        L8_2 = L8_2 + L9_2
        L8_2 = L8_2 + 4
        L7_2.x = L8_2
        L7_2 = rankImg
        L8_2 = L48_1
        L8_2 = L8_2.y
        L8_2 = L8_2 - 1
        L7_2.y = L8_2
        L7_2 = L25_1
        L8_2 = L26_1
        L7_2 = L7_2[L8_2]
        L8_2 = L25_1
        L9_2 = L26_1
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2.leagueRank
        L7_2.rank = L8_2
        L7_2 = L33_1
        L8_2 = L7_2
        L7_2 = L7_2.toFront
        L7_2(L8_2)
        L7_2 = L42_1
        L8_2 = L7_2
        L7_2 = L7_2.toFront
        L7_2(L8_2)
    end
  end
  else
    L6_2 = display
    L6_2 = L6_2.remove
    L7_2 = rankImg
    L6_2(L7_2)
    L6_2 = display
    L6_2 = L6_2.newImageRect
    L7_2 = L33_1
    L8_2 = L7_1
    L8_2 = L8_2.Path_Assets
    L9_2 = "BattleItems/rank.png"
    L8_2 = L8_2 .. L9_2
    L9_2 = 18
    L10_2 = 21
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    rankImg = L6_2
    L6_2 = rankImg
    L7_2 = L48_1
    L7_2 = L7_2.x
    L8_2 = rankImg
    L8_2 = L8_2.width
    L8_2 = L8_2 / 2
    L7_2 = L7_2 + L8_2
    L7_2 = L7_2 + 4
    L6_2.x = L7_2
    L6_2 = rankImg
    L7_2 = L43_1
    L7_2 = L7_2.y
    L7_2 = L7_2 + 1
    L6_2.y = L7_2
    L6_2 = L33_1
    L7_2 = L6_2
    L6_2 = L6_2.toFront
    L6_2(L7_2)
    L6_2 = L42_1
    L7_2 = L6_2
    L6_2 = L6_2.toFront
    L6_2(L7_2)
  end
  L6_2 = L43_1
  L7_2 = L4_1
  L7_2 = L7_2.adjustNumber
  L8_2 = L25_1
  L9_2 = L26_1
  L8_2 = L8_2[L9_2]
  L8_2 = L8_2.rank
  L7_2 = L7_2(L8_2)
  L6_2.text = L7_2
  L6_2 = L42_1
  L7_2 = ""
  L8_2 = L4_1
  L8_2 = L8_2.adjustNumber
  L9_2 = L25_1
  L10_2 = L26_1
  L9_2 = L9_2[L10_2]
  L9_2 = L9_2.level
  L8_2 = L8_2(L9_2)
  L7_2 = L7_2 .. L8_2
  L6_2.text = L7_2
  L6_2 = L38_1
  L7_2 = L6_2
  L6_2 = L6_2.toFront
  L6_2(L7_2)
  L6_2 = L13_1
  L6_2 = L6_2.stringThousandCommaSeperated
  L7_2 = ""
  L8_2 = L25_1
  L9_2 = L26_1
  L8_2 = L8_2[L9_2]
  L8_2 = L8_2.defPower
  L7_2 = L7_2 .. L8_2
  L6_2 = L6_2(L7_2)
  L7_2 = L13_1
  L7_2 = L7_2.addKForLargeNumber
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  L6_2 = L7_2
  L7_2 = L4_1
  L7_2 = L7_2.adjustNumber
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  L6_2 = L7_2
  L7_2 = L53_1
  L7_2.text = L6_2
  L7_2 = L25_1
  L8_2 = L26_1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.isPowerVisit
  if L7_2 then
    L7_2 = L54_1
    if not L7_2 then
      L7_2 = L38_1
      L7_2.isVisible = false
      L7_2 = L52_1
      L7_2.isVisible = true
      L7_2 = L53_1
      L7_2.isVisible = true
  end
  else
    L7_2 = L38_1
    L7_2.isVisible = true
    L7_2 = L52_1
    L7_2.isVisible = false
    L7_2 = L53_1
    L7_2.isVisible = false
  end
  L7_2 = L54_1
  if L7_2 then
    L7_2 = false
    L54_1 = L7_2
  end
  L7_2 = L50_1
  if L7_2 then
    L7_2 = L50_1
    L8_2 = L7_2
    L7_2 = L7_2.removeSelf
    L7_2(L8_2)
  end
  L7_2 = L27_1
  L7_2 = L7_2.avatar
  L49_1 = L7_2
  L7_2 = L16_1
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = L47_1
  L10_2 = L27_1
  L10_2 = L10_2.avatar
  L10_2 = L10_2.image
  L11_2 = L30_1
  L11_2 = L11_2.height
  L11_2 = L11_2 * 0.27
  L12_2 = L30_1
  L12_2 = L12_2.height
  L12_2 = L12_2 * 0.27
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L50_1 = L7_2
  L7_2 = L50_1
  L8_2 = L51_1
  L8_2 = L8_2.x
  L7_2.x = L8_2
  L7_2 = L50_1
  L8_2 = L51_1
  L8_2 = L8_2.y
  L7_2.y = L8_2
end

L23_1.adjustUIForSelectionChange = L69_1

function L69_1()
  local L0_2, L1_2
  L0_2 = L23_1
  L0_2 = L0_2.adjustUIForSelectionChange
  L1_2 = -1
  L0_2(L1_2)
end

function L70_1()
  local L0_2, L1_2
  L0_2 = L23_1
  L0_2 = L0_2.adjustUIForSelectionChange
  L1_2 = 1
  L0_2(L1_2)
end

function L71_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L8_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = mainPlayer
  L2_2 = mainPlayer
  L2_2 = L2_2.gold
  L3_2 = L44_1
  L2_2 = L2_2 - L3_2
  L1_2.gold = L2_2
  L1_2 = L22_1
  L2_2 = L1_2
  L1_2 = L1_2.updateGold
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = L25_1
  L2_2 = L26_1
  L1_2 = L1_2[L2_2]
  L1_2.isPowerVisit = true
  L1_2 = L38_1
  L1_2.isVisible = false
  L1_2 = L52_1
  L1_2.isVisible = true
  L1_2 = L53_1
  L1_2.isVisible = true
  L1_2 = L66_1
  if L1_2 then
    L1_2 = mainPlayer
    L1_2 = L1_2.settings
    L1_2 = L1_2.newTutorial
    if L1_2 then
      L1_2 = L66_1
      L1_2()
      L1_2 = nil
      L66_1 = L1_2
    end
  end
end

didSuccessScout = L71_1

function L71_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L8_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "Scout"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

failedToScout = L71_1

function L71_1()
  local L0_2, L1_2, L2_2
  L0_2 = L15_1
  L0_2 = L0_2.removePoint
  L0_2()
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.checkPlayerCurrency
  L2_2 = L44_1
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = L8_1
    L0_2 = L0_2.show
    L1_2 = L4_1
    L1_2 = L1_2.Scout
    L0_2(L1_2)
    L0_2 = L5_1
    L0_2 = L0_2.scout
    L1_2 = didSuccessScout
    L2_2 = failedToScout
    L0_2(L1_2, L2_2)
  end
end

function L72_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A2_2 then
    L3_2 = 1
    L26_1 = L3_2
  end
  L25_1 = A0_2
  L44_1 = A1_2
  L3_2 = L38_1
  L4_2 = L3_2
  L3_2 = L3_2.setSubText
  L5_2 = L44_1
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L5_1
  L3_2 = L3_2.opponentArrayAttackInToday
  L4_2 = L25_1
  L3_2(L4_2)
  L3_2 = #A0_2
  if 0 < L3_2 then
    L3_2 = L23_1
    L3_2 = L3_2.adjustUIForSelectionChange
    L4_2 = 0
    L3_2(L4_2)
  else
    L3_2 = showSimpleDialog
    L4_2 = "Fetch Opponents"
    L5_2 = "No opponents for battle"
    L6_2 = nil
    
    function L7_2()
      local L0_3, L1_3
      L0_3 = L1_1
      L0_3 = L0_3.gotoScene
      L1_3 = "Scenes.Home"
      L0_3(L1_3)
    end
    
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = L8_1
  L3_2 = L3_2.hide
  L3_2()
end

function L73_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L8_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "Fetch Opponents"
  L3_2 = A0_2
  L4_2 = "Go Back"
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = L1_1
    L0_3 = L0_3.gotoScene
    L1_3 = "Scenes.Home"
    L0_3(L1_3)
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

function L74_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = L15_1
  L3_2 = L3_2.sparkle
  L4_2 = A0_2.lowerInfoGroup
  L5_2 = 1000
  L6_2 = L64_1
  L6_2 = L6_2.x
  L7_2 = L64_1
  L7_2 = L7_2.width
  L7_2 = L7_2 / 4
  L6_2 = L6_2 - L7_2
  L7_2 = L64_1
  L7_2 = L7_2.y
  L8_2 = L64_1
  L8_2 = L8_2.height
  L8_2 = L8_2 / 4
  L7_2 = L7_2 - L8_2
  L8_2 = L64_1
  L8_2 = L8_2.x
  L9_2 = L64_1
  L9_2 = L9_2.width
  L9_2 = L9_2 / 4
  L8_2 = L8_2 + L9_2
  L9_2 = L64_1
  L9_2 = L9_2.y
  L10_2 = L64_1
  L10_2 = L10_2.height
  L10_2 = L10_2 / 4
  L9_2 = L9_2 + L10_2
  L10_2 = 50
  L11_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = L15_1
  L3_2 = L3_2.sparkle
  L4_2 = A0_2.lowerInfoGroup
  L5_2 = 1000
  L6_2 = L65_1
  L6_2 = L6_2.x
  L7_2 = L65_1
  L7_2 = L7_2.width
  L7_2 = L7_2 / 4
  L6_2 = L6_2 - L7_2
  L7_2 = L65_1
  L7_2 = L7_2.y
  L8_2 = L65_1
  L8_2 = L8_2.height
  L8_2 = L8_2 / 4
  L7_2 = L7_2 - L8_2
  L8_2 = L65_1
  L8_2 = L8_2.x
  L9_2 = L65_1
  L9_2 = L9_2.width
  L9_2 = L9_2 / 4
  L8_2 = L8_2 + L9_2
  L9_2 = L65_1
  L9_2 = L9_2.y
  L10_2 = L65_1
  L10_2 = L10_2.height
  L10_2 = L10_2 / 4
  L9_2 = L9_2 + L10_2
  L10_2 = 50
  L11_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = A2_2
  L3_2()
end

L23_1.sparklePowersBackGround = L74_1

function L74_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = log3
  L3_2 = "Creating battle scene"
  L2_2(L3_2)
  L2_2 = A0_2.view
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = L7_1
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
  L6_2 = {}
  L6_2.previousScene = "Scenes.Home"
  L6_2.currentScene = "Scenes.Battle"
  L6_2.helpId = 16
  L4_2 = L4_2(L5_2, L6_2)
  L22_1 = L4_2
  L4_2 = L22_1
  L5_2 = L4_2
  L4_2 = L4_2.setTitle
  L6_2 = L4_1
  L6_2 = L6_2["Choose Opponent"]
  L4_2(L5_2, L6_2)
  L5_2 = L2_2
  L4_2 = L2_2.insert
  L6_2 = L22_1
  L6_2 = L6_2.view
  L4_2(L5_2, L6_2)
  L4_2 = L22_1
  A0_2.navBar = L4_2
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  L28_1 = L4_2
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  A0_2.lowerInfoGroup = L4_2
  L4_2 = display
  L4_2 = L4_2.newRoundedRect
  L5_2 = L2_2
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 / 2
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L7_2 = L7_2 - 45
  L7_2 = L7_2 / 2
  L7_2 = 40 + L7_2
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 - 10
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 - 45
  L10_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = L7_1
  L7_2 = L7_2.whiteColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L4_2.strokeWidth = 3
  L6_2 = L4_2
  L5_2 = L4_2.setStrokeColor
  L7_2 = L7_1
  L7_2 = L7_2.greenColorSceneBorder
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  L47_1 = L5_2
  L5_2 = L47_1
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 - 181
  L5_2.x = L6_2
  L5_2 = L47_1
  L5_2.y = 50
  L5_2 = display
  L5_2 = L5_2.newRect
  L6_2 = L47_1
  L7_2 = 85
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 - 65
  L8_2 = L8_2 / 2
  L9_2 = 170
  L10_2 = display
  L10_2 = L10_2.contentHeight
  L10_2 = L10_2 - 65
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L30_1 = L5_2
  L5_2 = L30_1
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = L7_1
  L7_2 = L7_2.lightBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  L33_1 = L5_2
  L6_2 = L2_2
  L5_2 = L2_2.insert
  L7_2 = L33_1
  L5_2(L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.newRect
  L6_2 = L33_1
  L7_2 = 0
  L8_2 = 0
  L9_2 = display
  L9_2 = L9_2.contentWidth
  L9_2 = L9_2 - 195
  L9_2 = L9_2 / 2
  L9_2 = L9_2 - 5
  L10_2 = display
  L10_2 = L10_2.contentHeight
  L10_2 = L10_2 * 0.08
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L48_1 = L5_2
  L5_2 = L48_1
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 - 195
  L6_2 = L6_2 / 2
  L7_2 = L48_1
  L7_2 = L7_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 + 5
  L5_2.x = L6_2
  L5_2 = L48_1
  L6_2 = L48_1
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L6_2 = 49 + L6_2
  L5_2.y = L6_2
  L5_2 = L48_1
  L5_2.strokeWidth = 2
  L5_2 = L48_1
  L6_2 = L5_2
  L5_2 = L5_2.setStrokeColor
  L7_2 = L7_1
  L7_2 = L7_2.whiteColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L5_2 = L48_1
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = 0.85490196
  L8_2 = 0.92941176
  L9_2 = 0.9254902
  L10_2 = 0.70588235
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = display
  L5_2 = L5_2.newLine
  L6_2 = L33_1
  L7_2 = L48_1
  L7_2 = L7_2.x
  L8_2 = L48_1
  L8_2 = L8_2.y
  L9_2 = L48_1
  L9_2 = L9_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L9_2 = L48_1
  L9_2 = L9_2.x
  L10_2 = L48_1
  L10_2 = L10_2.y
  L11_2 = L48_1
  L11_2 = L11_2.height
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L7_2 = L5_2
  L6_2 = L5_2.setStrokeColor
  L8_2 = 1
  L9_2 = 1
  L10_2 = 1
  L11_2 = 0.70588235
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2.strokeWidth = 2
  L6_2 = display
  L6_2 = L6_2.newText
  L7_2 = L33_1
  L8_2 = ""
  L9_2 = 0
  L10_2 = 0
  L11_2 = L7_1
  L11_2 = L11_2.fontForSubtitle
  L11_2 = L11_2()
  L12_2 = 12
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L43_1 = L6_2
  L6_2 = L43_1
  L7_2 = L6_2
  L6_2 = L6_2.setFillColor
  L8_2 = L7_1
  L8_2 = L8_2.darkBlueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L6_2 = L43_1
  L7_2 = L48_1
  L7_2 = L7_2.x
  L8_2 = L48_1
  L8_2 = L8_2.width
  L8_2 = L8_2 / 4
  L7_2 = L7_2 + L8_2
  L7_2 = L7_2 + 10
  L6_2.x = L7_2
  L6_2 = L43_1
  L7_2 = L48_1
  L7_2 = L7_2.y
  L6_2.y = L7_2
  L6_2 = L7_1
  L6_2 = L6_2.Get_League_Rank_Icon_Image
  L7_2 = mainPlayer
  L7_2 = L7_2.leagueId
  L6_2 = L6_2(L7_2)
  if L6_2 ~= nil then
    L7_2 = log3
    L8_2 = "league image set"
    L9_2 = mainPlayer
    L9_2 = L9_2.leagueId
    L10_2 = L7_1
    L10_2 = L10_2.Path_Assets
    L11_2 = "League/"
    L12_2 = L6_2
    L10_2 = L10_2 .. L11_2 .. L12_2
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = display
    L7_2 = L7_2.newImageRect
    L8_2 = L33_1
    L9_2 = L7_1
    L9_2 = L9_2.Path_Assets
    L10_2 = "League/"
    L11_2 = L6_2
    L9_2 = L9_2 .. L10_2 .. L11_2
    L10_2 = 21
    L11_2 = 23
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    rankImg = L7_2
    L7_2 = rankImg
    L8_2 = L48_1
    L8_2 = L8_2.x
    L9_2 = rankImg
    L9_2 = L9_2.width
    L9_2 = L9_2 / 2
    L8_2 = L8_2 + L9_2
    L8_2 = L8_2 + 4
    L7_2.x = L8_2
    L7_2 = rankImg
    L8_2 = L48_1
    L8_2 = L8_2.y
    L8_2 = L8_2 - 1
    L7_2.y = L8_2
  else
    L7_2 = log3
    L8_2 = "no image set for this league"
    L7_2(L8_2)
    L7_2 = display
    L7_2 = L7_2.newImageRect
    L8_2 = L33_1
    L9_2 = L7_1
    L9_2 = L9_2.Path_Assets
    L10_2 = "BattleItems/rank.png"
    L9_2 = L9_2 .. L10_2
    L10_2 = 18
    L11_2 = 21
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    rankImg = L7_2
    L7_2 = rankImg
    L8_2 = L48_1
    L8_2 = L8_2.x
    L8_2 = L8_2 + 12
    L7_2.x = L8_2
    L7_2 = rankImg
    L8_2 = L43_1
    L8_2 = L8_2.y
    L8_2 = L8_2 + 1
    L7_2.y = L8_2
  end
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = L33_1
  L9_2 = L7_1
  L9_2 = L9_2.Path_Assets
  L10_2 = "BattleItems/lvl.png"
  L9_2 = L9_2 .. L10_2
  L10_2 = 19
  L11_2 = 20
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  levelImg = L7_2
  L7_2 = levelImg
  L8_2 = L48_1
  L8_2 = L8_2.x
  L9_2 = L48_1
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L8_2 = L8_2 + 14
  L7_2.x = L8_2
  L7_2 = levelImg
  L8_2 = L48_1
  L8_2 = L8_2.y
  L7_2.y = L8_2
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = L33_1
  L9_2 = " "
  L10_2 = 0
  L11_2 = 0
  L12_2 = L7_1
  L12_2 = L12_2.fontForSubtitle
  L12_2 = L12_2()
  L13_2 = 12
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L42_1 = L7_2
  L7_2 = L42_1
  L8_2 = L7_2
  L7_2 = L7_2.setFillColor
  L9_2 = L7_1
  L9_2 = L9_2.darkBlueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L7_2 = L42_1
  L8_2 = L48_1
  L8_2 = L8_2.x
  L9_2 = levelImg
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L9_2 = L48_1
  L9_2 = L9_2.width
  L9_2 = L9_2 / 4
  L8_2 = L8_2 - L9_2
  L9_2 = L42_1
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L7_2.x = L8_2
  L7_2 = L42_1
  L8_2 = L48_1
  L8_2 = L8_2.y
  L7_2.y = L8_2
  L7_2 = display
  L7_2 = L7_2.newRect
  L8_2 = L47_1
  L9_2 = 0
  L10_2 = 0
  L11_2 = L30_1
  L11_2 = L11_2.width
  L11_2 = L11_2 - 10
  L12_2 = display
  L12_2 = L12_2.contentHeight
  L12_2 = L12_2 * 0.16
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L41_1 = L7_2
  L7_2 = L41_1
  L8_2 = L30_1
  L8_2 = L8_2.x
  L7_2.x = L8_2
  L7_2 = L41_1
  L8_2 = L30_1
  L8_2 = L8_2.y
  L8_2 = L8_2 * 0.75
  L9_2 = L41_1
  L9_2 = L9_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L8_2 = L8_2 + 15
  L7_2.y = L8_2
  L7_2 = L41_1
  L8_2 = L7_2
  L7_2 = L7_2.setFillColor
  L9_2 = L7_1
  L9_2 = L9_2.blueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L7_2 = display
  L7_2 = L7_2.newLine
  L8_2 = L47_1
  L9_2 = L41_1
  L9_2 = L9_2.x
  L10_2 = L41_1
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 - L10_2
  L10_2 = L41_1
  L10_2 = L10_2.y
  L11_2 = L41_1
  L11_2 = L11_2.x
  L12_2 = L41_1
  L12_2 = L12_2.width
  L12_2 = L12_2 / 2
  L11_2 = L11_2 + L12_2
  L12_2 = L41_1
  L12_2 = L12_2.y
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L9_2 = L7_2
  L8_2 = L7_2.setStrokeColor
  L10_2 = L7_1
  L10_2 = L10_2.lightBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L7_2.strokeWidth = 2
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = L47_1
  L10_2 = L4_1
  L10_2 = L10_2["Opponent Name"]
  L11_2 = 0
  L12_2 = 0
  L13_2 = L7_1
  L13_2 = L13_2.fontForTitle
  L13_2 = L13_2()
  L14_2 = 14
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L40_1 = L8_2
  L8_2 = L40_1
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = L7_1
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L8_2 = L40_1
  L9_2 = L41_1
  L9_2 = L9_2.x
  L8_2.x = L9_2
  L8_2 = L40_1
  L9_2 = L41_1
  L9_2 = L9_2.y
  L10_2 = L41_1
  L10_2 = L10_2.height
  L10_2 = L10_2 / 4
  L9_2 = L9_2 - L10_2
  L8_2.y = L9_2
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = L47_1
  L10_2 = " "
  L11_2 = 0
  L12_2 = 0
  L13_2 = L7_1
  L13_2 = L13_2.fontForTitle
  L13_2 = L13_2()
  L14_2 = 14
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L32_1 = L8_2
  L8_2 = L32_1
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = L7_1
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L8_2 = L32_1
  L9_2 = L41_1
  L9_2 = L9_2.x
  L8_2.x = L9_2
  L8_2 = L32_1
  L9_2 = L41_1
  L9_2 = L9_2.y
  L10_2 = L41_1
  L10_2 = L10_2.height
  L10_2 = L10_2 / 4
  L9_2 = L9_2 + L10_2
  L8_2.y = L9_2
  L8_2 = display
  L8_2 = L8_2.newImageRect
  L9_2 = L47_1
  L10_2 = L7_1
  L10_2 = L10_2.Path_Assets
  L11_2 = "LiveBattle/white circle.png"
  L10_2 = L10_2 .. L11_2
  L11_2 = L30_1
  L11_2 = L11_2.height
  L11_2 = L11_2 * 0.35
  L12_2 = L30_1
  L12_2 = L12_2.height
  L12_2 = L12_2 * 0.35
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L51_1 = L8_2
  L8_2 = L51_1
  L9_2 = L30_1
  L9_2 = L9_2.x
  L8_2.x = L9_2
  L8_2 = L51_1
  L9_2 = L41_1
  L9_2 = L9_2.y
  L10_2 = L41_1
  L10_2 = L10_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 - L10_2
  L10_2 = L51_1
  L10_2 = L10_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 - L10_2
  L9_2 = L9_2 - 15
  L8_2.y = L9_2
  L8_2 = display
  L8_2 = L8_2.newRect
  L9_2 = A0_2.lowerInfoGroup
  L10_2 = 0
  L11_2 = 0
  L12_2 = display
  L12_2 = L12_2.contentWidth
  L12_2 = L12_2 - 195
  L12_2 = L12_2 / 2
  L13_2 = display
  L13_2 = L13_2.contentHeight
  L13_2 = L13_2 * 0.16
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L65_1 = L8_2
  L8_2 = L65_1
  L9_2 = display
  L9_2 = L9_2.contentWidth
  L9_2 = L9_2 - 195
  L9_2 = L9_2 / 2
  L10_2 = L65_1
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L9_2 = L9_2 + 10
  L8_2.x = L9_2
  L8_2 = L65_1
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 - 45
  L10_2 = L65_1
  L10_2 = L10_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 - L10_2
  L8_2.y = L9_2
  L8_2 = L65_1
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = L7_1
  L10_2 = L10_2.blueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = A0_2.lowerInfoGroup
  L10_2 = L4_1
  L10_2 = L10_2["Opponent Power"]
  L11_2 = " :"
  L10_2 = L10_2 .. L11_2
  L11_2 = 0
  L12_2 = 0
  L13_2 = L7_1
  L13_2 = L13_2.fontForSubtitle
  L13_2 = L13_2()
  L14_2 = 10
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L52_1 = L8_2
  L8_2 = L52_1
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = L7_1
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L8_2 = L52_1
  L9_2 = L65_1
  L9_2 = L9_2.x
  L8_2.x = L9_2
  L8_2 = L52_1
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 - 45
  L10_2 = display
  L10_2 = L10_2.contentHeight
  L10_2 = L10_2 * 0.16
  L10_2 = L10_2 / 2
  L9_2 = L9_2 - L10_2
  L9_2 = L9_2 - 10
  L8_2.y = L9_2
  L8_2 = L52_1
  L8_2.isVisible = false
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = A0_2.lowerInfoGroup
  L10_2 = " "
  L11_2 = 0
  L12_2 = 0
  L13_2 = L7_1
  L13_2 = L13_2.fontForSubtitle
  L13_2 = L13_2()
  L14_2 = 10
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L53_1 = L8_2
  L8_2 = L53_1
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = L7_1
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L8_2 = L53_1
  L9_2 = L65_1
  L9_2 = L9_2.x
  L8_2.x = L9_2
  L8_2 = L53_1
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 - 45
  L10_2 = display
  L10_2 = L10_2.contentHeight
  L10_2 = L10_2 * 0.16
  L10_2 = L10_2 / 2
  L9_2 = L9_2 - L10_2
  L9_2 = L9_2 + 10
  L8_2.y = L9_2
  L8_2 = L53_1
  L8_2.isVisible = false
  L8_2 = L18_1
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = {}
  L11_2 = L4_1
  L11_2 = L11_2.Scout
  L10_2.label = L11_2
  L10_2.fontSize = 8
  L11_2 = L7_1
  L11_2 = L11_2.fontForTitle
  L11_2 = L11_2()
  L10_2.font = L11_2
  L11_2 = L7_1
  L11_2 = L11_2.Path_Assets
  L12_2 = "BattleItems/next.png"
  L11_2 = L11_2 .. L12_2
  L10_2.defaultFile = L11_2
  L11_2 = L7_1
  L11_2 = L11_2.Path_Assets
  L12_2 = "BattleItems/next.png"
  L11_2 = L11_2 .. L12_2
  L10_2.overFile = L11_2
  L10_2.width = 71
  L10_2.height = 42
  L11_2 = L7_1
  L11_2 = L11_2.Path_Assets
  L12_2 = "Navbar/FC-navbar-gold.png"
  L11_2 = L11_2 .. L12_2
  L10_2.subImage = L11_2
  L10_2.subText = 200
  L10_2.labelYOffset = -12
  L10_2.subImageWidth = 20
  L10_2.subImageHeight = 19
  L10_2.id = "Scout"
  L11_2 = L71_1
  L10_2.onRelease = L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L38_1 = L8_2
  L8_2 = A0_2.lowerInfoGroup
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L38_1
  L10_2 = L10_2.view
  L8_2(L9_2, L10_2)
  L8_2 = L38_1
  L9_2 = L65_1
  L9_2 = L9_2.x
  L8_2.x = L9_2
  L8_2 = L38_1
  L9_2 = L65_1
  L9_2 = L9_2.y
  L8_2.y = L9_2
  L8_2 = display
  L8_2 = L8_2.newGroup
  L8_2 = L8_2()
  L29_1 = L8_2
  L8_2 = L29_1
  L8_2.alpha = 0
  L8_2 = L28_1
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L29_1
  L8_2(L9_2, L10_2)
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 - 195
  L8_2 = L8_2 / 2
  L8_2 = L8_2 - 5
  L9_2 = display
  L9_2 = L9_2.newText
  L10_2 = L29_1
  L11_2 = L4_1
  L11_2 = L11_2["Battle Rewards"]
  L12_2 = 0
  L13_2 = 0
  L14_2 = L7_1
  L14_2 = L14_2.fontForSubtitle
  L14_2 = L14_2()
  L15_2 = 15
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L11_2 = L9_2
  L10_2 = L9_2.setFillColor
  L12_2 = L7_1
  L12_2 = L12_2.darkBlueColor
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L10_2 = L30_1
  L10_2 = L10_2.width
  L10_2 = L10_2 / 2
  L9_2.x = L10_2
  L10_2 = display
  L10_2 = L10_2.contentHeight
  L10_2 = L10_2 * 0.05
  L9_2.y = L10_2
  L9_2.alpha = 0
  L10_2 = display
  L10_2 = L10_2.newRect
  L11_2 = L29_1
  L12_2 = 0
  L13_2 = display
  L13_2 = L13_2.contentHeight
  L13_2 = L13_2 * 0.1
  L13_2 = L13_2 + 15
  L14_2 = 150
  L15_2 = 30
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  xpBG = L10_2
  L10_2 = xpBG
  L11_2 = L30_1
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L10_2.x = L11_2
  L10_2 = xpBG
  L10_2.strokeWidth = 2
  L10_2 = xpBG
  L11_2 = L10_2
  L10_2 = L10_2.setStrokeColor
  L12_2 = 0.70196078
  L13_2 = 0.85882353
  L14_2 = 0.9254902
  L10_2(L11_2, L12_2, L13_2, L14_2)
  L10_2 = xpBG
  L11_2 = L10_2
  L10_2 = L10_2.setFillColor
  L12_2 = L7_1
  L12_2 = L12_2.blueColor
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L10_2 = xpBG
  L10_2.alpha = 0
  L10_2 = display
  L10_2 = L10_2.newText
  L11_2 = L29_1
  L12_2 = L4_1
  L12_2 = L12_2.XP
  L13_2 = 0
  L14_2 = 0
  L15_2 = L7_1
  L15_2 = L15_2.fontForSubtitle
  L15_2 = L15_2()
  L16_2 = 12
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L37_1 = L10_2
  L10_2 = L37_1
  L11_2 = L10_2
  L10_2 = L10_2.setFillColor
  L12_2 = L7_1
  L12_2 = L12_2.darkBlueColor
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L10_2 = L37_1
  L11_2 = L30_1
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L10_2.x = L11_2
  L10_2 = L37_1
  L11_2 = xpBG
  L11_2 = L11_2.y
  L10_2.y = L11_2
  L10_2 = L37_1
  L10_2.alpha = 0
  L10_2 = display
  L10_2 = L10_2.newRect
  L11_2 = L29_1
  L12_2 = 0
  L13_2 = xpBG
  L13_2 = L13_2.y
  L14_2 = xpBG
  L14_2 = L14_2.height
  L14_2 = L14_2 / 2
  L13_2 = L13_2 + L14_2
  L13_2 = L13_2 + 15
  L14_2 = L8_2
  L15_2 = 30
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L11_2 = L30_1
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L10_2.x = L11_2
  L10_2.strokeWidth = 2
  L12_2 = L10_2
  L11_2 = L10_2.setStrokeColor
  L13_2 = 0.67843137
  L14_2 = 0.85882353
  L15_2 = 0.9254902
  L11_2(L12_2, L13_2, L14_2, L15_2)
  L12_2 = L10_2
  L11_2 = L10_2.setFillColor
  L13_2 = 1
  L14_2 = 1
  L15_2 = 1
  L11_2(L12_2, L13_2, L14_2, L15_2)
  L10_2.alpha = 0
  L11_2 = display
  L11_2 = L11_2.newText
  L12_2 = L29_1
  L13_2 = L4_1
  L13_2 = L13_2["possibillity to rank up"]
  L14_2 = 0
  L15_2 = 0
  L16_2 = L7_1
  L16_2 = L16_2.fontForSubtitle
  L16_2 = L16_2()
  L17_2 = 12
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  rankUP = L11_2
  L11_2 = rankUP
  L12_2 = L11_2
  L11_2 = L11_2.setFillColor
  L13_2 = L7_1
  L13_2 = L13_2.darkBlueColor
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L13_2()
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L11_2 = rankUP
  L12_2 = L30_1
  L12_2 = L12_2.width
  L12_2 = L12_2 / 2
  L11_2.x = L12_2
  L11_2 = rankUP
  L12_2 = L10_2.y
  L11_2.y = L12_2
  L11_2 = rankUP
  L11_2.alpha = 0
  L11_2 = display
  L11_2 = L11_2.newRect
  L12_2 = A0_2.lowerInfoGroup
  L13_2 = 0
  L14_2 = 0
  L15_2 = display
  L15_2 = L15_2.contentWidth
  L15_2 = L15_2 - 195
  L15_2 = L15_2 / 2
  L15_2 = L15_2 - 5
  L16_2 = display
  L16_2 = L16_2.contentHeight
  L16_2 = L16_2 * 0.16
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L64_1 = L11_2
  L11_2 = L64_1
  L12_2 = display
  L12_2 = L12_2.contentWidth
  L12_2 = L12_2 - 195
  L12_2 = L12_2 / 2
  L13_2 = L64_1
  L13_2 = L13_2.width
  L13_2 = L13_2 / 2
  L12_2 = L12_2 - L13_2
  L12_2 = L12_2 + 5
  L11_2.x = L12_2
  L11_2 = L64_1
  L12_2 = display
  L12_2 = L12_2.contentHeight
  L12_2 = L12_2 - 45
  L13_2 = display
  L13_2 = L13_2.contentHeight
  L13_2 = L13_2 * 0.16
  L13_2 = L13_2 / 2
  L12_2 = L12_2 - L13_2
  L11_2.y = L12_2
  L11_2 = L64_1
  L12_2 = L11_2
  L11_2 = L11_2.setFillColor
  L13_2 = L7_1
  L13_2 = L13_2.lightBlueColor
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L13_2()
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L11_2 = display
  L11_2 = L11_2.newRect
  L12_2 = L29_1
  L13_2 = 0
  L14_2 = L10_2.y
  L15_2 = L10_2.height
  L15_2 = L15_2 / 2
  L14_2 = L14_2 + L15_2
  L14_2 = L14_2 + 15
  L15_2 = L8_2
  L16_2 = 30
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L12_2 = L30_1
  L12_2 = L12_2.width
  L12_2 = L12_2 / 2
  L11_2.x = L12_2
  L11_2.strokeWidth = 2
  L13_2 = L11_2
  L12_2 = L11_2.setStrokeColor
  L14_2 = 0.67843137
  L15_2 = 0.85882353
  L16_2 = 0.9254902
  L12_2(L13_2, L14_2, L15_2, L16_2)
  L13_2 = L11_2
  L12_2 = L11_2.setFillColor
  L14_2 = 1
  L15_2 = 1
  L16_2 = 1
  L12_2(L13_2, L14_2, L15_2, L16_2)
  L12_2 = display
  L12_2 = L12_2.newText
  L13_2 = A0_2.lowerInfoGroup
  L14_2 = L4_1
  L14_2 = L14_2["Max Power"]
  L15_2 = " :"
  L14_2 = L14_2 .. L15_2
  L15_2 = 0
  L16_2 = 0
  L17_2 = L7_1
  L17_2 = L17_2.fontForSubtitle
  L17_2 = L17_2()
  L18_2 = 10
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  maxPower = L12_2
  L12_2 = maxPower
  L13_2 = L12_2
  L12_2 = L12_2.setFillColor
  L14_2 = L7_1
  L14_2 = L14_2.darkBlueColor
  L14_2, L15_2, L16_2, L17_2, L18_2 = L14_2()
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L12_2 = maxPower
  L13_2 = L64_1
  L13_2 = L13_2.x
  L12_2.x = L13_2
  L12_2 = maxPower
  L13_2 = L52_1
  L13_2 = L13_2.y
  L12_2.y = L13_2
  L12_2 = display
  L12_2 = L12_2.newRect
  L13_2 = L47_1
  L14_2 = 0
  L15_2 = L11_2.y
  L16_2 = L11_2.height
  L16_2 = L16_2 / 2
  L15_2 = L15_2 + L16_2
  L15_2 = L15_2 + 15
  L16_2 = 150
  L17_2 = 30
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
  L63_1 = L12_2
  L12_2 = L63_1
  L13_2 = L30_1
  L13_2 = L13_2.width
  L13_2 = L13_2 / 2
  L12_2.x = L13_2
  L12_2 = L63_1
  L12_2.strokeWidth = 2
  L12_2 = L63_1
  L13_2 = L12_2
  L12_2 = L12_2.setStrokeColor
  L14_2 = 0.67843137
  L15_2 = 0.85882353
  L16_2 = 0.9254902
  L12_2(L13_2, L14_2, L15_2, L16_2)
  L12_2 = L63_1
  L13_2 = L12_2
  L12_2 = L12_2.setFillColor
  L14_2 = L7_1
  L14_2 = L14_2.blueColor
  L14_2, L15_2, L16_2, L17_2, L18_2 = L14_2()
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L12_2 = L63_1
  L12_2.alpha = 0
  L12_2 = display
  L12_2 = L12_2.newText
  L13_2 = A0_2.lowerInfoGroup
  L14_2 = L4_1
  L14_2 = L14_2.adjustNumber
  L15_2 = L10_1
  L15_2 = L15_2.maxAttackPowerOfPlayer
  L16_2 = mainPlayer
  L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
  L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
  L15_2 = 0
  L16_2 = 0
  L17_2 = L7_1
  L17_2 = L17_2.fontForSubtitle
  L17_2 = L17_2()
  L18_2 = 10
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L62_1 = L12_2
  L12_2 = L62_1
  L13_2 = L12_2
  L12_2 = L12_2.setFillColor
  L14_2 = L7_1
  L14_2 = L14_2.darkBlueColor
  L14_2, L15_2, L16_2, L17_2, L18_2 = L14_2()
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L12_2 = L62_1
  L13_2 = L64_1
  L13_2 = L13_2.x
  L12_2.x = L13_2
  L12_2 = L62_1
  L13_2 = L53_1
  L13_2 = L13_2.y
  L12_2.y = L13_2
  L12_2 = L17_1
  L13_2 = L12_2
  L12_2 = L12_2.new
  L14_2 = {}
  L15_2 = L7_1
  L15_2 = L15_2.Path_Assets
  L16_2 = "BattleItems/Arrows/next.png"
  L15_2 = L15_2 .. L16_2
  L14_2.imageName = L15_2
  L14_2.width = 43
  L14_2.height = 33
  L14_2.id = "Next Button"
  L15_2 = L70_1
  L14_2.onRelease = L15_2
  L12_2 = L12_2(L13_2, L14_2)
  L45_1 = L12_2
  L12_2 = L47_1
  L13_2 = L12_2
  L12_2 = L12_2.insert
  L14_2 = L45_1
  L14_2 = L14_2.view
  L12_2(L13_2, L14_2)
  L12_2 = L45_1
  L13_2 = L30_1
  L13_2 = L13_2.width
  L13_2 = L13_2 / 2
  L13_2 = L13_2 + 30
  L12_2.x = L13_2
  L12_2 = L45_1
  L13_2 = L65_1
  L13_2 = L13_2.y
  L13_2 = L13_2 - 60
  L12_2.y = L13_2
  L12_2 = L17_1
  L13_2 = L12_2
  L12_2 = L12_2.new
  L14_2 = {}
  L14_2.width = 43
  L14_2.height = 33
  L14_2.id = "Previous Button"
  L15_2 = L7_1
  L15_2 = L15_2.Path_Assets
  L16_2 = "BattleItems/Arrows/previous.png"
  L15_2 = L15_2 .. L16_2
  L14_2.imageName = L15_2
  L15_2 = L69_1
  L14_2.onRelease = L15_2
  L12_2 = L12_2(L13_2, L14_2)
  previousOpponentButton = L12_2
  L12_2 = L47_1
  L13_2 = L12_2
  L12_2 = L12_2.insert
  L14_2 = previousOpponentButton
  L14_2 = L14_2.view
  L12_2(L13_2, L14_2)
  L12_2 = previousOpponentButton
  L13_2 = L30_1
  L13_2 = L13_2.width
  L13_2 = L13_2 / 2
  L13_2 = L13_2 - 30
  L12_2.x = L13_2
  L12_2 = previousOpponentButton
  L13_2 = L65_1
  L13_2 = L13_2.y
  L13_2 = L13_2 - 60
  L12_2.y = L13_2
  L12_2 = L17_1
  L13_2 = L12_2
  L12_2 = L12_2.new
  L14_2 = {}
  L15_2 = L7_1
  L15_2 = L15_2.Path_Assets
  L16_2 = "BattleItems/next.png"
  L15_2 = L15_2 .. L16_2
  L14_2.imageName = L15_2
  L14_2.width = 104
  L14_2.height = 33
  L14_2.id = "Attack Button"
  L15_2 = L4_1
  L15_2 = L15_2.attack
  L14_2.label = L15_2
  L15_2 = L68_1
  L14_2.onRelease = L15_2
  L12_2 = L12_2(L13_2, L14_2)
  L46_1 = L12_2
  L12_2 = L47_1
  L13_2 = L12_2
  L12_2 = L12_2.insert
  L14_2 = L46_1
  L14_2 = L14_2.view
  L12_2(L13_2, L14_2)
  L12_2 = L46_1
  L13_2 = L30_1
  L13_2 = L13_2.width
  L13_2 = L13_2 / 2
  L12_2.x = L13_2
  L12_2 = L46_1
  L13_2 = L65_1
  L13_2 = L13_2.y
  L13_2 = L13_2 - 20
  L12_2.y = L13_2
  L12_2 = L46_1
  A0_2.attackButton = L12_2
  L12_2 = L28_1
  L13_2 = L12_2
  L12_2 = L12_2.insert
  L14_2 = A0_2.lowerInfoGroup
  L12_2(L13_2, L14_2)
  L12_2 = L17_1
  L13_2 = L12_2
  L12_2 = L12_2.new
  L14_2 = {}
  L14_2.width = 34
  L14_2.height = 34
  L15_2 = L7_1
  L15_2 = L15_2.Path_Assets
  L16_2 = "CardScene/FC-potion-botton.png"
  L15_2 = L15_2 .. L16_2
  L14_2.imageName = L15_2
  
  function L15_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L1_1
    L0_3 = L0_3.gotoScene
    L1_3 = "Scenes.DepartmentofLabor"
    L2_3 = {}
    L3_3 = {}
    L3_3.selectedTab = 3
    L3_3.previousScene = "Scenes.Battle"
    L2_3.params = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L14_2.onRelease = L15_2
  L12_2 = L12_2(L13_2, L14_2)
  A0_2.potionButton = L12_2
  L13_2 = L2_2
  L12_2 = L2_2.insert
  L14_2 = A0_2.potionButton
  L14_2 = L14_2.view
  L12_2(L13_2, L14_2)
  L12_2 = A0_2.potionButton
  L13_2 = A0_2.potionButton
  L13_2 = L13_2.width
  L13_2 = L13_2 / 2
  L13_2 = 45 + L13_2
  L12_2.x = L13_2
  L12_2 = A0_2.potionButton
  L12_2.y = 20
  L13_2 = L2_2
  L12_2 = L2_2.insert
  L14_2 = L28_1
  L12_2(L13_2, L14_2)
  L12_2 = L28_1
  L12_2.y = 30
  L13_2 = L2_2
  L12_2 = L2_2.insert
  L14_2 = L47_1
  L12_2(L13_2, L14_2)
end

L23_1.create = L74_1

function L74_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.attackButton
  L2_2 = L1_2
  L1_2 = L1_2.setEnabled
  L3_2 = false
  L1_2(L2_2, L3_2)
end

L23_1.disableAttackButton = L74_1

function L74_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.attackButton
  L2_2 = L1_2
  L1_2 = L1_2.setEnabled
  L3_2 = true
  L1_2(L2_2, L3_2)
end

L23_1.enableAttackButton = L74_1

function L74_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = display
  L1_2 = L1_2.newGroup
  L1_2 = L1_2()
  L2_2 = display
  L2_2 = L2_2.newRect
  L3_2 = L1_2
  L4_2 = 0
  L5_2 = 0
  L6_2 = 570
  L7_2 = 360
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = display
  L3_2 = L3_2.contentCenterX
  L2_2.x = L3_2
  L3_2 = display
  L3_2 = L3_2.contentCenterY
  L2_2.y = L3_2
  L4_2 = L2_2
  L3_2 = L2_2.setFillColor
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0.58823529411765
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.isHitTestable = true
  L4_2 = L2_2
  L3_2 = L2_2.addEventListener
  L5_2 = "touch"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.addEventListener
  L5_2 = "tap"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = L1_2
  L5_2 = L7_1
  L5_2 = L5_2.Path_Assets
  L6_2 = "Tutorial/Battle1.png"
  L5_2 = L5_2 .. L6_2
  L6_2 = 480
  L7_2 = 303
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = L1_2
  L6_2 = L4_1
  L6_2 = L6_2.Poor
  L7_2 = 0
  L8_2 = 0
  L9_2 = L7_1
  L9_2 = L9_2.fontForSubtitle
  L9_2 = L9_2()
  L10_2 = 30
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = 1
  L8_2 = 1
  L9_2 = 1
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = display
  L5_2 = L5_2.contentCenterX
  L5_2 = L5_2 + 80
  L6_2 = L4_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L4_2.x = L5_2
  L5_2 = L3_2.y
  L6_2 = L3_2.height
  L6_2 = L6_2 * 3
  L6_2 = L6_2 / 8
  L5_2 = L5_2 - L6_2
  L4_2.y = L5_2
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L1_2
  L7_2 = L4_1
  L7_2 = L7_2.Rich
  L8_2 = 0
  L9_2 = 0
  L10_2 = L7_1
  L10_2 = L10_2.fontForSubtitle
  L10_2 = L10_2()
  L11_2 = 30
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = L5_2
  L6_2 = L5_2.setFillColor
  L8_2 = 1
  L9_2 = 1
  L10_2 = 1
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = display
  L6_2 = L6_2.contentCenterX
  L6_2 = L6_2 + 80
  L7_2 = L5_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L5_2.x = L6_2
  L6_2 = L3_2.y
  L7_2 = L3_2.height
  L7_2 = L7_2 * 1
  L7_2 = L7_2 / 8
  L6_2 = L6_2 + L7_2
  L5_2.y = L6_2
  L6_2 = mainPlayer
  L6_2 = L6_2.settings
  L6_2 = L6_2.newTutorial
  if L6_2 then
    L7_2 = L3_2
    L6_2 = L3_2.addEventListener
    L8_2 = "tap"
    
    function L9_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = display
      L0_3 = L0_3.remove
      L1_3 = L3_2
      L0_3(L1_3)
      L0_3 = nil
      L3_2 = L0_3
      L0_3 = display
      L0_3 = L0_3.newImageRect
      L1_3 = L1_2
      L2_3 = L7_1
      L2_3 = L2_3.Path_Assets
      L3_3 = "Tutorial/Battle2.png"
      L2_3 = L2_3 .. L3_3
      L3_3 = 480
      L4_3 = 303
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      L3_2 = L0_3
      L0_3 = L3_2
      L1_3 = display
      L1_3 = L1_3.contentCenterX
      L0_3.x = L1_3
      L0_3 = L3_2
      L1_3 = display
      L1_3 = L1_3.contentCenterY
      L0_3.y = L1_3
      L0_3 = L3_2
      L1_3 = L0_3
      L0_3 = L0_3.toBack
      L0_3(L1_3)
      L0_3 = L4_2
      L1_3 = L4_1
      L1_3 = L1_3.Weak
      L0_3.text = L1_3
      L0_3 = L4_2
      L1_3 = L0_3
      L0_3 = L0_3.toFront
      L0_3(L1_3)
      L0_3 = L5_2
      L1_3 = L4_1
      L1_3 = L1_3.Strong
      L0_3.text = L1_3
      L0_3 = L5_2
      L1_3 = L0_3
      L0_3 = L0_3.toFront
      L0_3(L1_3)
      L0_3 = L2_2
      L1_3 = L0_3
      L0_3 = L0_3.toBack
      L0_3(L1_3)
      L0_3 = L3_2
      L1_3 = L0_3
      L0_3 = L0_3.addEventListener
      L2_3 = "tap"
      
      function L3_3()
        local L0_4, L1_4
        L0_4 = display
        L0_4 = L0_4.remove
        L1_4 = L1_2
        L0_4(L1_4)
        L0_4 = A0_2
        L0_4()
      end
      
      L0_3(L1_3, L2_3, L3_3)
    end
    
    L6_2(L7_2, L8_2, L9_2)
  else
    L6_2 = 1
    L7_2 = L6_1
    L7_2 = L7_2.newButton
    L8_2 = {}
    L8_2.width = 30
    L8_2.height = 30
    L9_2 = L7_1
    L9_2 = L9_2.Path_Assets
    L10_2 = "General/FC-nextButton.png"
    L9_2 = L9_2 .. L10_2
    L8_2.defaultFile = L9_2
    L9_2 = L7_1
    L9_2 = L9_2.Path_Assets
    L10_2 = "General/FC-nextButton-pressed.png"
    L9_2 = L9_2 .. L10_2
    L8_2.overFile = L9_2
    
    function L9_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3
      L1_3 = L6_2
      if L1_3 == 1 then
        L1_3 = display
        L1_3 = L1_3.remove
        L2_3 = L3_2
        L1_3(L2_3)
        L1_3 = nil
        L3_2 = L1_3
        L1_3 = display
        L1_3 = L1_3.newImageRect
        L2_3 = L1_2
        L3_3 = L7_1
        L3_3 = L3_3.Path_Assets
        L4_3 = "Tutorial/Battle2.png"
        L3_3 = L3_3 .. L4_3
        L4_3 = 480
        L5_3 = 303
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
        L3_2 = L1_3
        L1_3 = L3_2
        L2_3 = display
        L2_3 = L2_3.contentCenterX
        L1_3.x = L2_3
        L1_3 = L3_2
        L2_3 = display
        L2_3 = L2_3.contentCenterY
        L1_3.y = L2_3
        L1_3 = L3_2
        L2_3 = L1_3
        L1_3 = L1_3.toBack
        L1_3(L2_3)
        L1_3 = L4_2
        L2_3 = L4_1
        L2_3 = L2_3.Weak
        L1_3.text = L2_3
        L1_3 = L4_2
        L2_3 = L1_3
        L1_3 = L1_3.toFront
        L1_3(L2_3)
        L1_3 = L5_2
        L2_3 = L4_1
        L2_3 = L2_3.Strong
        L1_3.text = L2_3
        L1_3 = L5_2
        L2_3 = L1_3
        L1_3 = L1_3.toFront
        L1_3(L2_3)
        L1_3 = L2_2
        L2_3 = L1_3
        L1_3 = L1_3.toBack
        L1_3(L2_3)
        L1_3 = 2
        L6_2 = L1_3
      else
        L1_3 = display
        L1_3 = L1_3.remove
        L2_3 = L1_2
        L1_3(L2_3)
        L1_3 = A0_2
        L1_3()
      end
    end
    
    L8_2.onRelease = L9_2
    L7_2 = L7_2(L8_2)
    L8_2 = L3_2.x
    L9_2 = L3_2.width
    L9_2 = L9_2 / 2
    L8_2 = L8_2 + L9_2
    L8_2 = L8_2 - 15
    L7_2.x = L8_2
    L8_2 = L3_2.y
    L9_2 = L3_2.height
    L9_2 = L9_2 / 2
    L8_2 = L8_2 + L9_2
    L8_2 = L8_2 - 15
    L7_2.y = L8_2
    L9_2 = L1_2
    L8_2 = L1_2.insert
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end

L23_1.createPlayerComparisonOverlay = L74_1

function L74_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = display
  L2_2 = L2_2.newRect
  L3_2 = 0
  L4_2 = 0
  L5_2 = 1570
  L6_2 = 1360
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L60_1 = L2_2
  L2_2 = L60_1
  L3_2 = display
  L3_2 = L3_2.contentCenterX
  L2_2.x = L3_2
  L2_2 = L60_1
  L3_2 = display
  L3_2 = L3_2.contentCenterY
  L2_2.y = L3_2
  L2_2 = L60_1
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0.7
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = L60_1
  L3_2 = L2_2
  L2_2 = L2_2.addEventListener
  L4_2 = "touch"
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L60_1
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
  L4_2 = L60_1
  L2_2(L3_2, L4_2)
end

L23_1.showBlackOverlay = L74_1

function L74_1(A0_2)
  local L1_2, L2_2
  L1_2 = L60_1
  if L1_2 then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = L60_1
    L1_2(L2_2)
    L1_2 = nil
    L60_1 = L1_2
  end
end

L23_1.removeBlackOverlay = L74_1

function L74_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 == 1 then
    L1_2 = L23_1
    L1_2 = L1_2.adjustUIForSelectionChange
    L2_2 = 0
    L1_2(L2_2)
    L1_2 = L21_1
    L2_2 = L1_2
    L1_2 = L1_2.new
    L3_2 = {}
    L3_2.id = "Tutorial Dialog "
    L4_2 = {}
    L5_2 = L4_1
    L5_2 = L5_2.LiveBattleTutState3Step1
    L4_2[1] = L5_2
    L3_2.texts = L4_2
    L3_2.mentorAlignment = "left"
    L3_2.mode = "semi"
    L4_2 = L7_1
    L4_2 = L4_2.Path_Assets
    L5_2 = "Tutorial/FC-Sarhang.png"
    L4_2 = L4_2 .. L5_2
    L3_2.mentorImage = L4_2
    L3_2.mentorWidth = 111
    L3_2.mentorHeight = 115
    
    function L4_2()
      local L0_3, L1_3
      L0_3 = 2
      L59_1 = L0_3
      L0_3 = L23_1
      L0_3 = L0_3.liveBattleTutBusyOfflineState
      L1_3 = L59_1
      L0_3(L1_3)
      L0_3 = L23_1
      L1_3 = L0_3
      L0_3 = L0_3.removeBlackOverlay
      L0_3(L1_3)
    end
    
    L3_2.callBackFunction = L4_2
    L1_2(L2_2, L3_2)
  elseif A0_2 == 2 then
    L1_2 = L23_1
    L1_2 = L1_2.adjustUIForSelectionChange
    L2_2 = 0
    L1_2(L2_2)
    L1_2 = L21_1
    L2_2 = L1_2
    L1_2 = L1_2.new
    L3_2 = {}
    L3_2.id = "Tutorial Dialog "
    L4_2 = {}
    L5_2 = L4_1
    L5_2 = L5_2.LiveBattleTutState3Step2
    L4_2[1] = L5_2
    L3_2.texts = L4_2
    L3_2.mentorAlignment = "left"
    L3_2.mode = "semi"
    L4_2 = L7_1
    L4_2 = L4_2.Path_Assets
    L5_2 = "Tutorial/FC-Sarhang.png"
    L4_2 = L4_2 .. L5_2
    L3_2.mentorImage = L4_2
    L3_2.mentorWidth = 111
    L3_2.mentorHeight = 115
    
    function L4_2()
      local L0_3, L1_3
      L0_3 = 3
      L59_1 = L0_3
      L0_3 = L23_1
      L0_3 = L0_3.liveBattleTutBusyOfflineState
      L1_3 = L59_1
      L0_3(L1_3)
      L0_3 = L23_1
      L1_3 = L0_3
      L0_3 = L0_3.removeBlackOverlay
      L0_3(L1_3)
    end
    
    L3_2.callBackFunction = L4_2
    L1_2(L2_2, L3_2)
  elseif A0_2 == 3 then
    L1_2 = L23_1
    L1_2 = L1_2.adjustUIForSelectionChange
    L2_2 = 0
    L1_2(L2_2)
    L1_2 = L21_1
    L2_2 = L1_2
    L1_2 = L1_2.new
    L3_2 = {}
    L3_2.id = "Tutorial Dialog "
    L4_2 = {}
    L5_2 = L4_1
    L5_2 = L5_2.LiveBattleTutState3Step3
    L4_2[1] = L5_2
    L3_2.texts = L4_2
    L3_2.mentorAlignment = "left"
    L3_2.mode = "semi"
    L4_2 = L7_1
    L4_2 = L4_2.Path_Assets
    L5_2 = "Tutorial/FC-Sarhang.png"
    L4_2 = L4_2 .. L5_2
    L3_2.mentorImage = L4_2
    L3_2.mentorWidth = 111
    L3_2.mentorHeight = 115
    
    function L4_2()
      local L0_3, L1_3
      L0_3 = 4
      L59_1 = L0_3
      L0_3 = L23_1
      L0_3 = L0_3.liveBattleTutBusyOfflineState
      L1_3 = L59_1
      L0_3(L1_3)
      L0_3 = L23_1
      L1_3 = L0_3
      L0_3 = L0_3.removeBlackOverlay
      L0_3(L1_3)
    end
    
    L3_2.callBackFunction = L4_2
    L1_2(L2_2, L3_2)
  elseif A0_2 == 4 then
    L1_2 = warningLog
    L2_2 = "Live Battle Tut State 3 Finished"
    L1_2(L2_2)
    L1_2 = mainPlayer
    L2_2 = L1_2
    L1_2 = L1_2.setSettingForKey
    L3_2 = "activeTutorialState"
    L4_2 = "liveBattleState4"
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = mainPlayer
    L2_2 = L1_2
    L1_2 = L1_2.saveSettings
    L1_2(L2_2)
    L1_2 = L1_1
    L1_2 = L1_2.gotoScene
    L2_2 = "Scenes.Home"
    L1_2(L2_2)
  end
end

L23_1.liveBattleTutBusyOfflineState = L74_1

function L74_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == "liveBattleState1" then
    L2_2 = log3
    L3_2 = "Tutorial Weak Enemy"
    L2_2(L3_2)
    L2_2 = true
    L58_1 = L2_2
    L2_2 = 1
    L56_1 = L2_2
    L2_2 = L15_1
    L2_2 = L2_2.pointAt
    L3_2 = L47_1
    L4_2 = L46_1
    L4_2 = L4_2.x
    L5_2 = L46_1
    L5_2 = L5_2.y
    L2_2(L3_2, L4_2, L5_2)
  elseif A1_2 == "liveBattleState2" then
    L2_2 = log3
    L3_2 = "Tutorial Strong Enemy"
    L2_2(L3_2)
    L2_2 = true
    L58_1 = L2_2
    L2_2 = 2
    L56_1 = L2_2
    L2_2 = L15_1
    L2_2 = L2_2.pointAt
    L3_2 = L47_1
    L4_2 = L46_1
    L4_2 = L4_2.x
    L5_2 = L46_1
    L5_2 = L5_2.y
    L2_2(L3_2, L4_2, L5_2)
  elseif A1_2 == "liveBattleHero" then
    L2_2 = true
    L58_1 = L2_2
    L2_2 = "hero"
    L56_1 = L2_2
    L2_2 = 1
    L59_1 = L2_2
    L2_2 = L15_1
    L2_2 = L2_2.pointAt
    L3_2 = L47_1
    L4_2 = L46_1
    L4_2 = L4_2.x
    L5_2 = L46_1
    L5_2 = L5_2.y
    L2_2(L3_2, L4_2, L5_2)
  elseif A1_2 == "liveBattleState3" then
    L2_2 = log3
    L3_2 = "Tutorial Busy Offline"
    L2_2(L3_2)
    L2_2 = true
    L58_1 = L2_2
    L2_2 = 3
    L56_1 = L2_2
    L2_2 = 1
    L59_1 = L2_2
    L2_2 = L23_1
    L2_2 = L2_2.liveBattleTutBusyOfflineState
    L3_2 = L59_1
    L2_2(L3_2)
  else
    L2_2 = false
    L58_1 = L2_2
  end
end

L23_1.startTutorialSequence = L74_1

function L74_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = sceneChange
    if L4_2 ~= nil then
      L4_2 = sceneChange
      L4_2 = L4_2.refresh
      L4_2()
    end
    L4_2 = "Scenes.Home"
    _backAction = L4_2
    L4_2 = L23_1
    L5_2 = L4_2
    L4_2 = L4_2.enableAttackButton
    L4_2(L5_2)
    L4_2 = A0_2.navBar
    L5_2 = L4_2
    L4_2 = L4_2.setNectar
    L6_2 = mainPlayer
    L6_2 = L6_2.nectar
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.navBar
    L5_2 = L4_2
    L4_2 = L4_2.updateGold
    L4_2(L5_2)
    L4_2 = A0_2.navBar
    L5_2 = L4_2
    L4_2 = L4_2.setEnableButtons
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = mainPlayer
    L4_2 = L4_2.level
    L5_2 = L7_1
    L5_2 = L5_2.UnlockLevel_Combos
    if L4_2 < L5_2 then
      L4_2 = A0_2.potionButton
      L4_2.isVisible = false
    else
      L4_2 = A0_2.potionButton
      L4_2.isVisible = true
    end
    L4_2 = nil
    L5_2 = L13_1
    L5_2 = L5_2.stringThousandCommaSeperated
    L6_2 = ""
    L7_2 = L10_1
    L7_2 = L7_2.maxAttackPowerOfPlayer
    L8_2 = mainPlayer
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 .. L7_2
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
    L5_2 = L13_1
    L5_2 = L5_2.addKForLargeNumber
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
    L5_2 = L4_1
    L5_2 = L5_2.adjustNumber
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
    L5_2 = L62_1
    L5_2.text = L4_2
    L5_2 = L14_1
    L5_2 = L5_2.newOnScene
    L6_2 = A0_2
    L5_2(L6_2)
    L5_2 = L11_1
    L5_2 = L5_2.checkForTutorial
    L6_2 = "Scenes.Battle"
    L7_2 = A0_2
    L5_2(L6_2, L7_2)
    L5_2 = L12_1
    L5_2 = L5_2.checkForTutorial
    L6_2 = "Battle"
    L5_2(L6_2)
    L5_2 = L1_1
    L5_2 = L5_2.getSceneName
    L6_2 = "previous"
    L5_2 = L5_2(L6_2)
    if L5_2 ~= "Scenes.HelpScene" then
      L5_2 = L58_1
      if L5_2 ~= true then
        L5_2 = L8_1
        L5_2 = L5_2.show
        L6_2 = L4_1
        L6_2 = L6_2["Fetching Opponents"]
        L5_2(L6_2)
        L5_2 = L5_1
        L5_2 = L5_2.fetchBattleOpponent
        L6_2 = L72_1
        L7_2 = L73_1
        L5_2(L6_2, L7_2)
      end
    end
    L5_2 = L58_1
    if L5_2 == true then
      L5_2 = L23_1
      L5_2 = L5_2.adjustUIForSelectionChange
      L6_2 = 0
      L5_2(L6_2)
    end
    L5_2 = A1_2.params
    if L5_2 then
      L5_2 = A1_2.params
      L5_2 = L5_2.isTutorial
      if L5_2 then
        L6_2 = A0_2
        L5_2 = A0_2.setupForTutorialSequence
        L5_2(L6_2)
        L5_2 = true
        L61_1 = L5_2
        L5_2 = L14_1
        L5_2 = L5_2.removeFromScene
        L6_2 = L23_1
        L5_2(L6_2)
      end
    end
  end
end

L23_1.show = L74_1

function L74_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L38_1
  L3_2.isVisible = true
  L3_2 = L52_1
  L3_2.isVisible = false
  L3_2 = L53_1
  L3_2.isVisible = false
  L3_2 = true
  L54_1 = L3_2
  L3_2 = print
  L4_2 = "makeVisibleScoutButton"
  L5_2 = L54_1
  L3_2(L4_2, L5_2)
  L3_2 = A2_2
  L3_2()
end

L23_1.makeVisibleScoutButton = L74_1

function L74_1(A0_2)
  local L1_2
  L1_2 = A0_2.navBar
  L1_2 = L1_2.view
  L1_2.isVisible = false
  L1_2 = nil
  _backAction = L1_2
  L1_2 = L47_1
  L1_2.alpha = 0.5
  L1_2 = A0_2.lowerInfoGroup
  L1_2.alpha = 0.5
  L1_2 = L33_1
  L1_2.alpha = 0.5
end

L23_1.setupForTutorialSequence = L74_1

function L74_1(A0_2)
  local L1_2
  L1_2 = L47_1
  L1_2.alpha = 1
  L1_2 = A0_2.lowerInfoGroup
  L1_2.alpha = 1
  L1_2 = L33_1
  L1_2.alpha = 1
end

L23_1.resetTutorialChanges = L74_1

function L74_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2.createPlayerComparisonOverlay
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.resetTutorialChanges
    L0_3(L1_3)
    L0_3 = A2_2
    L0_3()
  end
  
  L3_2(L4_2)
  L3_2 = L11_1
  L3_2 = L3_2.processInformativeTutorial
  L4_2 = A1_2
  
  function L5_2()
    local L0_3, L1_3
  end
  
  L3_2(L4_2, L5_2)
end

L23_1.showImageDetails = L74_1

function L74_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = 0
    L55_1 = L4_2
    L4_2 = false
    L58_1 = L4_2
    L4_2 = false
    L61_1 = L4_2
  else
    L4_2 = A0_2.navBar
    L4_2 = L4_2.view
    L4_2.isVisible = true
    L4_2 = L46_1
    L5_2 = L4_2
    L4_2 = L4_2.setEnabled
    L6_2 = true
    L4_2(L5_2, L6_2)
  end
end

L23_1.hide = L74_1

function L74_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L15_1
  L3_2 = L3_2.pointAtObjectInView
  L4_2 = L38_1
  L5_2 = A0_2.lowerInfoGroup
  L3_2(L4_2, L5_2)
  L66_1 = A2_2
end

L23_1.pointAtScout = L74_1

function L74_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L15_1
  L3_2 = L3_2.pointAtObjectInView
  L4_2 = L46_1
  L5_2 = L47_1
  L3_2(L4_2, L5_2)
  L66_1 = A2_2
end

L23_1.pointAtAttackButton = L74_1

function L74_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.view
  L3_2 = L14_1
  L3_2 = L3_2.removeFromScene
  L4_2 = L23_1
  L3_2(L4_2)
end

L23_1.destroy = L74_1
L75_1 = L23_1
L74_1 = L23_1.addEventListener
L76_1 = "create"
L77_1 = L23_1
L74_1(L75_1, L76_1, L77_1)
L75_1 = L23_1
L74_1 = L23_1.addEventListener
L76_1 = "show"
L77_1 = L23_1
L74_1(L75_1, L76_1, L77_1)
L75_1 = L23_1
L74_1 = L23_1.addEventListener
L76_1 = "hide"
L77_1 = L23_1
L74_1(L75_1, L76_1, L77_1)
L75_1 = L23_1
L74_1 = L23_1.addEventListener
L76_1 = "destroy"
L77_1 = L23_1
L74_1(L75_1, L76_1, L77_1)
return L23_1
