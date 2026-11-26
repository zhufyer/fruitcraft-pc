local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "json"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Models.UserCard"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.ActivityIndicatorView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Language"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Models.Operation"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.NotificationView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Models.AchievementManager"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Models.Operation"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Utils.Toolbox"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Data.Avatars"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Models.ProfileManager"
L11_1 = L11_1(L12_1)
L12_1 = {}
L13_1 = {}
L14_1 = nil
L15_1 = nil
L16_1 = nil
L17_1 = nil
L18_1 = {}
L19_1 = {}
L20_1 = nil
L21_1 = nil
L22_1 = nil
L23_1 = 0
L24_1 = {}
L25_1 = nil

function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = setmetatable
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  L2_2 = -10
  L16_1 = L2_2
  L2_2 = 1
  L17_1 = L2_2
  L2_2 = {}
  L20_1 = L2_2
  L2_2 = nil
  L21_1 = L2_2
  L2_2 = nil
  L15_1 = L2_2
  L2_2 = nil
  L22_1 = L2_2
  return A1_2
end

new = L26_1

function L26_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = printTable
  L4_2 = L20_1
  L3_2(L4_2)
  L3_2 = A0_2.ticketType
  if L3_2 == "attack" then
    L3_2 = log3
    L4_2 = A0_2.attackerName
    L5_2 = " attack ticket tap"
    L3_2(L4_2, L5_2)
    
    function L3_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = L3_1
      L1_3 = L1_3.hide
      L1_3()
      L1_3 = showSimpleDialog
      L2_3 = "Live-battle ack Error"
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
      L1_3 = network
      L1_3 = L1_3.checkForErrors
      L2_3 = A0_3
      L3_3 = "attackTo"
      L4_3 = L3_2
      L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
      if L1_3 == true then
        L3_3 = {}
        L3_3.created_at = "number"
        L3_3.help_cost = "number"
        L3_3.opponent_avatar_id = "number"
        L4_3 = multiCheckValidityAssert
        L5_3 = L2_3
        L6_3 = "wrong data"
        L7_3 = _NAME
        L8_3 = L3_3
        L4_3(L5_3, L6_3, L7_3, L8_3)
        L4_3 = L1_1
        L4_3 = L4_3.getScene
        L5_3 = "Scenes.LiveBattle"
        L4_3 = L4_3(L5_3)
        L5_3 = A0_2
        L5_3 = L5_3.attackerName
        L4_3.mainEnemyName = L5_3
        L5_3 = mainPlayer
        L5_3 = L5_3.name
        L4_3.mainFriendName = L5_3
        L5_3 = nil
        L6_3 = L23_1
        if L6_3 ~= 0 then
          L6_3 = log3
          L7_3 = "attack request accept, delay time :"
          L8_3 = os
          L8_3 = L8_3.difftime
          L9_3 = os
          L9_3 = L9_3.time
          L9_3 = L9_3()
          L10_3 = L23_1
          L8_3, L9_3, L10_3 = L8_3(L9_3, L10_3)
          L6_3(L7_3, L8_3, L9_3, L10_3)
          L6_3 = os
          L6_3 = L6_3.difftime
          L7_3 = os
          L7_3 = L7_3.time
          L7_3 = L7_3()
          L8_3 = A0_2
          L8_3 = L8_3._time
          L6_3 = L6_3(L7_3, L8_3)
          L7_3 = os
          L7_3 = L7_3.difftime
          L8_3 = os
          L8_3 = L8_3.time
          L8_3 = L8_3()
          L9_3 = L23_1
          L7_3 = L7_3(L8_3, L9_3)
          L6_3 = L6_3 + L7_3
          L5_3 = L6_3 - 1
        else
          L6_3 = os
          L6_3 = L6_3.difftime
          L7_3 = os
          L7_3 = L7_3.time
          L7_3 = L7_3()
          L8_3 = A0_2
          L8_3 = L8_3._time
          L6_3 = L6_3(L7_3, L8_3)
          L5_3 = L6_3
        end
        L6_3 = nil
        L7_3 = L18_1
        L8_3 = A0_2
        L8_3 = L8_3.battle_id
        L7_3 = L7_3[L8_3]
        if L7_3 ~= nil then
          L7_3 = L18_1
          L8_3 = A0_2
          L8_3 = L8_3.battle_id
          L7_3 = L7_3[L8_3]
          if L7_3 == true then
            L7_3 = L18_1
            L8_3 = A0_2
            L8_3 = L8_3.battle_id
            L6_3 = L7_3[L8_3]
        end
        else
          L6_3 = false
        end
        L7_3 = L2_3.created_at
        if L7_3 ~= nil then
          L7_3 = os
          L7_3 = L7_3.difftime
          L8_3 = os
          L8_3 = L8_3.time
          L8_3 = L8_3()
          L9_3 = L2_3.created_at
          L10_3 = mainPlayer
          L10_3 = L10_3.timeDelta
          L9_3 = L9_3 - L10_3
          L7_3 = L7_3(L8_3, L9_3)
          L5_3 = L7_3
          L7_3 = log3
          L8_3 = "delay time + accept time"
          L9_3 = L5_3
          L7_3(L8_3, L9_3)
        else
          L7_3 = warningLog
          L8_3 = "create_at not set"
          L9_3 = L2_3.created_at
          L7_3(L8_3, L9_3)
        end
        L7_3 = {}
        L8_3 = {}
        L9_3 = A0_2
        L9_3 = L9_3.battle_id
        L8_3.battle_ID = L9_3
        L9_3 = mainPlayer
        L9_3 = L9_3.id
        L8_3.ownerTeamId = L9_3
        L8_3.cameForHelp = false
        L9_3 = A1_2
        L8_3.mainEnemy = L9_3
        L8_3._time = L5_3
        L9_3 = L2_3.help_cost
        L8_3.helpCost = L9_3
        L8_3.enemyhasSentHelpRequest = L6_3
        L9_3 = L10_1
        L9_3 = L9_3.getAvatarByID
        L10_3 = L2_3.opponent_avatar_id
        L9_3 = L9_3(L10_3)
        L8_3._mainEnemyAvatar = L9_3
        L7_3.params = L8_3
        L8_3 = 0
        L23_1 = L8_3
        L8_3 = L3_1
        L8_3 = L8_3.hide
        L8_3()
        L8_3 = liveBattleNotificationBarView
        L9_3 = liveBattleNotificationBarView
        L9_3 = L9_3.notificationCounter
        L9_3 = L9_3 - 1
        L8_3.notificationCounter = L9_3
        L8_3 = liveBattleNotificationBarView
        L8_3 = L8_3.notificationCounter
        if L8_3 < 0 then
          L8_3 = liveBattleNotificationBarView
          L8_3.notificationCounter = 0
        end
        L8_3 = log3
        L9_3 = "go to scene live battle"
        L8_3(L9_3)
        L8_3 = L1_1
        L8_3 = L8_3.gotoScene
        L9_3 = "Scenes.LiveBattle"
        L10_3 = L7_3
        L8_3(L9_3, L10_3)
      end
    end
    
    L5_2 = {}
    L6_2 = A0_2.battle_id
    L5_2.battle_id = L6_2
    L5_2.choice = 1
    L6_2 = {}
    L6_2.body = L5_2
    L7_2 = log3
    L8_2 = "Sending livebattle ack to server"
    L7_2(L8_2)
    L7_2 = network
    L7_2 = L7_2.getDefaultHeader
    L7_2 = L7_2()
    L6_2.headers = L7_2
    L7_2 = os
    L7_2 = L7_2.time
    L7_2 = L7_2()
    L23_1 = L7_2
    L7_2 = L3_1
    L7_2 = L7_2.show
    L8_2 = L4_1
    L8_2 = L8_2.WaitForBattle
    L7_2(L8_2)
    L7_2 = network
    L7_2 = L7_2.request
    L8_2 = Constants
    L8_2 = L8_2.API_Path
    L9_2 = Constants
    L9_2 = L9_2.API_LiveBattleChoose
    L8_2 = L8_2 .. L9_2
    L9_2 = "POST"
    L10_2 = L4_2
    L11_2 = L6_2
    L12_2 = "ticket tap attack"
    L13_2 = nil
    L14_2 = L3_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  else
    L3_2 = A0_2.ticketType
    if L3_2 == "help" then
      function L3_2(A0_3)
        local L1_3, L2_3, L3_3
        
        L1_3 = L3_1
        L1_3 = L1_3.hide
        L1_3()
        L1_3 = showSimpleDialog
        L2_3 = "Live-battle help Error"
        L3_3 = A0_3
        L1_3(L2_3, L3_3)
      end
      
      function L4_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
        L1_3 = network
        L1_3 = L1_3.checkForErrors
        L2_3 = A0_3
        L3_3 = "ticketTap"
        L4_3 = L3_2
        L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
        if L1_3 == true then
          L3_3 = {}
          L3_3.attacker_names_set = "table"
          L3_3.defender_names_set = "table"
          L3_3.id = "number"
          L3_3.attacker_cards_set = "table"
          L3_3.defender_cards_set = "table"
          L3_3.created_at = "number"
          L3_3.attacker_avatar_id = "number"
          L3_3.defender_avatar_id = "number"
          L4_3 = multiCheckValidityAssert
          L5_3 = L2_3
          L6_3 = "wrong data"
          L7_3 = _NAME
          L8_3 = L3_3
          L4_3(L5_3, L6_3, L7_3, L8_3)
          L4_3 = L1_1
          L4_3 = L4_3.getScene
          L5_3 = "Scenes.LiveBattle"
          L4_3 = L4_3(L5_3)
          L5_3 = {}
          L6_3 = {}
          L7_3 = nil
          L8_3 = nil
          L9_3 = L2_3.attacker_names_set
          if L9_3 ~= nil then
            L9_3 = pairs
            L10_3 = L2_3.attacker_names_set
            L9_3, L10_3, L11_3 = L9_3(L10_3)
            for L12_3, L13_3 in L9_3, L10_3, L11_3 do
              L14_3 = tonumber
              L15_3 = A2_2
              L14_3 = L14_3(L15_3)
              L15_3 = tonumber
              L16_3 = L12_3
              L15_3 = L15_3(L16_3)
              if L14_3 ~= L15_3 then
                L14_3 = {}
                L6_3 = L14_3
                L14_3 = L2_3.id
                L6_3.battleId = L14_3
                L14_3 = tonumber
                L15_3 = L12_3
                L14_3 = L14_3(L15_3)
                L6_3.playerId = L14_3
                if L13_3 ~= nil then
                  L6_3.playerName = L13_3
                else
                  L6_3.playerName = "NameNotRecived"
                end
                L14_3 = L10_1
                L14_3 = L14_3.getAvatarByID
                L15_3 = L2_3.attacker_avatar_id
                L14_3 = L14_3(L15_3)
                L8_3 = L14_3
                L14_3 = L10_1
                L14_3 = L14_3.getAvatarByID
                L15_3 = L2_3.defender_avatar_id
                L14_3 = L14_3(L15_3)
                L7_3 = L14_3
                L14_3 = tonumber
                L15_3 = L2_3.attacker_id
                L14_3 = L14_3(L15_3)
                L6_3.playerOwnerTeamID = L14_3
                L14_3 = #L5_3
                L14_3 = L14_3 + 1
                L5_3[L14_3] = L6_3
              end
            end
          end
          L9_3 = L2_3.defender_names_set
          if L9_3 ~= nil then
            L9_3 = pairs
            L10_3 = L2_3.defender_names_set
            L9_3, L10_3, L11_3 = L9_3(L10_3)
            for L12_3, L13_3 in L9_3, L10_3, L11_3 do
              L14_3 = tonumber
              L15_3 = A2_2
              L14_3 = L14_3(L15_3)
              L15_3 = tonumber
              L16_3 = L12_3
              L15_3 = L15_3(L16_3)
              if L14_3 ~= L15_3 then
                L14_3 = {}
                L6_3 = L14_3
                L14_3 = L2_3.id
                L6_3.battleId = L14_3
                L14_3 = tonumber
                L15_3 = L12_3
                L14_3 = L14_3(L15_3)
                L6_3.playerId = L14_3
                if L13_3 ~= nil then
                  L6_3.playerName = L13_3
                else
                  L6_3.playerName = "NameNotRecived"
                end
                L14_3 = L10_1
                L14_3 = L14_3.getAvatarByID
                L15_3 = L2_3.defender_avatar_id
                L14_3 = L14_3(L15_3)
                L8_3 = L14_3
                L14_3 = L10_1
                L14_3 = L14_3.getAvatarByID
                L15_3 = L2_3.attacker_avatar_id
                L14_3 = L14_3(L15_3)
                L7_3 = L14_3
                L14_3 = tonumber
                L15_3 = L2_3.defender_id
                L14_3 = L14_3(L15_3)
                L6_3.playerOwnerTeamID = L14_3
                L14_3 = #L5_3
                L14_3 = L14_3 + 1
                L5_3[L14_3] = L6_3
              end
            end
          end
          if L5_3 ~= nil then
            L9_3 = L13_1
            L10_3 = L2_3.id
            L9_3[L10_3] = L5_3
          end
          L9_3 = {}
          L6_3 = L9_3
          L9_3 = pairs
          L10_3 = L2_3.attacker_cards_set
          L9_3, L10_3, L11_3 = L9_3(L10_3)
          for L12_3, L13_3 in L9_3, L10_3, L11_3 do
            L14_3 = {}
            L6_3 = L14_3
            L6_3.card = L13_3
            L14_3 = tonumber
            L15_3 = L2_3.id
            L14_3 = L14_3(L15_3)
            L6_3.id = L14_3
            L14_3 = L13_3.player_name
            L6_3.card_owner_name = L14_3
            L14_3 = L13_3.round
            if not L14_3 then
              L14_3 = 1
            end
            L6_3.round = L14_3
            L14_3 = tonumber
            L15_3 = L2_3.attacker_id
            L14_3 = L14_3(L15_3)
            L6_3.owner_team_id = L14_3
            L14_3 = L4_3.battleManager
            L14_3 = L14_3.addCardToScrollers
            L15_3 = L6_3
            L14_3(L15_3)
          end
          L9_3 = pairs
          L10_3 = L2_3.defender_cards_set
          L9_3, L10_3, L11_3 = L9_3(L10_3)
          for L12_3, L13_3 in L9_3, L10_3, L11_3 do
            L14_3 = {}
            L6_3 = L14_3
            L6_3.card = L13_3
            L14_3 = tonumber
            L15_3 = L2_3.id
            L14_3 = L14_3(L15_3)
            L6_3.id = L14_3
            L14_3 = L13_3.player_name
            L6_3.card_owner_name = L14_3
            L14_3 = L13_3.round
            if not L14_3 then
              L14_3 = 1
            end
            L6_3.round = L14_3
            L14_3 = tonumber
            L15_3 = L2_3.defender_id
            L14_3 = L14_3(L15_3)
            L6_3.owner_team_id = L14_3
            L14_3 = L4_3.battleManager
            L14_3 = L14_3.addCardToScrollers
            L15_3 = L6_3
            L14_3(L15_3)
          end
          L9_3 = log3
          L10_3 = A0_2
          L10_3 = L10_3.helpRequestOwner
          L11_3 = " help ticket tap"
          L9_3(L10_3, L11_3)
          L9_3 = nil
          L10_3 = nil
          L11_3 = L23_1
          if L11_3 ~= 0 then
            L11_3 = log3
            L12_3 = "help request accept, delay time :"
            L13_3 = os
            L13_3 = L13_3.difftime
            L14_3 = os
            L14_3 = L14_3.time
            L14_3 = L14_3()
            L15_3 = L23_1
            L13_3, L14_3, L15_3, L16_3 = L13_3(L14_3, L15_3)
            L11_3(L12_3, L13_3, L14_3, L15_3, L16_3)
            L11_3 = os
            L11_3 = L11_3.difftime
            L12_3 = os
            L12_3 = L12_3.time
            L12_3 = L12_3()
            L13_3 = A0_2
            L13_3 = L13_3._time
            L11_3 = L11_3(L12_3, L13_3)
            L12_3 = os
            L12_3 = L12_3.difftime
            L13_3 = os
            L13_3 = L13_3.time
            L13_3 = L13_3()
            L14_3 = L23_1
            L12_3 = L12_3(L13_3, L14_3)
            L11_3 = L11_3 + L12_3
            L10_3 = L11_3 - 1
          else
            L11_3 = os
            L11_3 = L11_3.difftime
            L12_3 = os
            L12_3 = L12_3.time
            L12_3 = L12_3()
            L13_3 = A0_2
            L13_3 = L13_3._time
            L11_3 = L11_3(L12_3, L13_3)
            L10_3 = L11_3
          end
          L11_3 = L20_1
          L12_3 = L20_1
          L12_3 = #L12_3
          L12_3 = L12_3 + 1
          L13_3 = A0_2
          L13_3 = L13_3.battle_id
          L11_3[L12_3] = L13_3
          L11_3 = L18_1
          L12_3 = A0_2
          L12_3 = L12_3.battle_id
          L11_3 = L11_3[L12_3]
          if L11_3 ~= nil then
            L11_3 = L18_1
            L12_3 = A0_2
            L12_3 = L12_3.battle_id
            L11_3 = L11_3[L12_3]
            if L11_3 == true then
              L11_3 = L18_1
              L12_3 = A0_2
              L12_3 = L12_3.battle_id
              L9_3 = L11_3[L12_3]
          end
          else
            L9_3 = false
          end
          L11_3 = L19_1
          L12_3 = tonumber
          L13_3 = L2_3.id
          L12_3 = L12_3(L13_3)
          L11_3 = L11_3[L12_3]
          L11_3 = L11_3.mainEnemyName
          L4_3.mainEnemyName = L11_3
          L11_3 = L19_1
          L12_3 = tonumber
          L13_3 = L2_3.id
          L12_3 = L12_3(L13_3)
          L11_3 = L11_3[L12_3]
          L11_3 = L11_3.mainFriendName
          L4_3.mainFriendName = L11_3
          L11_3 = L2_3.created_at
          if L11_3 ~= nil then
            L11_3 = os
            L11_3 = L11_3.difftime
            L12_3 = os
            L12_3 = L12_3.time
            L12_3 = L12_3()
            L13_3 = L2_3.created_at
            L14_3 = mainPlayer
            L14_3 = L14_3.timeDelta
            L13_3 = L13_3 - L14_3
            L11_3 = L11_3(L12_3, L13_3)
            L10_3 = L11_3
            L11_3 = log3
            L12_3 = "delay time + accept time"
            L13_3 = L10_3
            L14_3 = mainPlayer
            L14_3 = L14_3.timeDelta
            L11_3(L12_3, L13_3, L14_3)
          else
            L11_3 = warningLog
            L12_3 = "create_at not set"
            L13_3 = L2_3.created_at
            L11_3(L12_3, L13_3)
          end
          L11_3 = {}
          L12_3 = {}
          L13_3 = A0_2
          L13_3 = L13_3.battle_id
          L12_3.battle_ID = L13_3
          L13_3 = A0_2
          L13_3 = L13_3.help_owner_id
          L12_3.ownerTeamId = L13_3
          L13_3 = A0_2
          L13_3 = L13_3.help_owner_tribe_id
          L12_3.help_owner_tribe = L13_3
          L12_3.cameForHelp = true
          L13_3 = A2_2
          L12_3.mainEnemy = L13_3
          L12_3._time = L10_3
          L12_3.enemyhasSentHelpRequest = L9_3
          L13_3 = mainPlayer
          L13_3 = L13_3.avatar
          L12_3._helpOwnerAvatar = L13_3
          L12_3._mainEnemyAvatar = L7_3
          L11_3.params = L12_3
          L12_3 = 0
          L23_1 = L12_3
          L12_3 = L3_1
          L12_3 = L12_3.hide
          L12_3()
          L12_3 = liveBattleNotificationBarView
          L13_3 = liveBattleNotificationBarView
          L13_3 = L13_3.notificationCounter
          L13_3 = L13_3 - 1
          L12_3.notificationCounter = L13_3
          L12_3 = liveBattleNotificationBarView
          L12_3 = L12_3.notificationCounter
          if L12_3 < 0 then
            L12_3 = liveBattleNotificationBarView
            L12_3.notificationCounter = 0
          end
          L12_3 = L1_1
          L12_3 = L12_3.gotoScene
          L13_3 = "Scenes.LiveBattle"
          L14_3 = L11_3
          L12_3(L13_3, L14_3)
        end
      end
      
      L5_2 = log3
      L6_2 = "main enemy id is :"
      L7_2 = A0_2.mainEnemy_id
      L5_2(L6_2, L7_2)
      L5_2 = {}
      L6_2 = A0_2.battle_id
      L5_2.battle_id = L6_2
      L5_2.mainEnemy = A2_2
      L6_2 = {}
      L6_2.body = L5_2
      L7_2 = network
      L7_2 = L7_2.getDefaultHeader
      L7_2 = L7_2()
      L6_2.headers = L7_2
      L7_2 = os
      L7_2 = L7_2.time
      L7_2 = L7_2()
      L23_1 = L7_2
      L7_2 = L3_1
      L7_2 = L7_2.show
      L8_2 = L4_1
      L8_2 = L8_2.WaitForBattle
      L7_2(L8_2)
      L7_2 = network
      L7_2 = L7_2.request
      L8_2 = Constants
      L8_2 = L8_2.API_Path
      L9_2 = Constants
      L9_2 = L9_2.API_LiveBattleHelpJoin
      L8_2 = L8_2 .. L9_2
      L9_2 = "POST"
      L10_2 = L4_2
      L11_2 = L6_2
      L12_2 = "ticket tap help"
      L13_2 = nil
      L14_2 = L3_2
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    end
  end
end

ticketTap = L26_1

function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = os
  L2_2 = L2_2.time
  L2_2 = L2_2()
  A1_2 = L2_2
  L2_2 = {}
  L2_2.battle_id = "number"
  L2_2.attacker_id = "number"
  L2_2.attacker_name = "string"
  L3_2 = multiCheckValidityAssert
  L4_2 = A0_2
  L5_2 = "wrong data"
  L6_2 = _NAME
  L7_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = printTable
  L4_2 = L20_1
  L3_2(L4_2)
  L3_2 = L16_1
  L4_2 = A0_2.battle_id
  if L3_2 == L4_2 then
    L3_2 = errorLog
    L4_2 = "battle request already recived with this battle_id. pastBattleID : "
    L5_2 = L16_1
    L6_2 = " , theMessage.Battle_id : "
    L7_2 = A0_2.battle_id
    L3_2(L4_2, L5_2, L6_2, L7_2)
    return
  end
  L3_2 = A0_2.battle_id
  L16_1 = L3_2
  L3_2 = L20_1
  L4_2 = L20_1
  L4_2 = #L4_2
  L4_2 = L4_2 + 1
  L5_2 = A0_2.battle_id
  L3_2[L4_2] = L5_2
  L3_2 = L1_1
  L3_2 = L3_2.getSceneName
  L4_2 = "current"
  L3_2 = L3_2(L4_2)
  if L3_2 == "Scenes.LiveBattle" then
    L3_2 = {}
    L3_2.message = A0_2
    L4_2 = os
    L4_2 = L4_2.time
    L4_2 = L4_2()
    L3_2._time = L4_2
    L14_1 = L3_2
    return
  end
  L3_2 = liveBattleNotificationBarView
  if L3_2 ~= nil then
    L3_2 = mainPlayer
    L3_2 = L3_2.settings
    L3_2 = L3_2.liveBattleIsOn
    if L3_2 == true then
      L3_2 = liveBattleNotificationBarView
      L4_2 = L3_2
      L3_2 = L3_2.addTicket
      L5_2 = {}
      L5_2.ticketType = "attack"
      L6_2 = A0_2.attacker_name
      L5_2.attackerName = L6_2
      L6_2 = A0_2.tribe_name
      L5_2.attackerTribe = L6_2
      L6_2 = A0_2.battle_id
      L5_2.battle_id = L6_2
      L6_2 = A0_2.attacker_id
      L5_2.attacker_id = L6_2
      L5_2.recivedTime = A1_2
      L3_2(L4_2, L5_2)
    end
    L3_2 = {}
    L4_2 = A0_2.battle_id
    L3_2.battle_id = L4_2
    L4_2 = L1_1
    L4_2 = L4_2.getSceneName
    L5_2 = "current"
    L4_2 = L4_2(L5_2)
    if L4_2 == "Scenes.LiveBattle" then
      L4_2 = log3
      L5_2 = "player is in live battle now"
      L4_2(L5_2)
      L3_2.already_in_game = "1"
    else
      L3_2.already_in_game = "0"
    end
    L4_2 = mainPlayer
    L4_2 = L4_2.settings
    L4_2 = L4_2.liveBattleIsOn
    if L4_2 ~= true then
      L3_2.already_in_game = "0"
    end
    L4_2 = {}
    L4_2.body = L3_2
    L5_2 = network
    L5_2 = L5_2.getDefaultHeader
    L5_2 = L5_2()
    L4_2.headers = L5_2
    L5_2 = network
    L5_2 = L5_2.request
    L6_2 = Constants
    L6_2 = L6_2.API_Path
    L7_2 = Constants
    L7_2 = L7_2.API_LiveBattleAck
    L6_2 = L6_2 .. L7_2
    L7_2 = "POST"
    
    function L8_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = log3
      L2_3 = "battle online response send complete, value: "
      L3_3 = A0_3.response
      L1_3(L2_3, L3_3)
    end
    
    L9_2 = L4_2
    L10_2 = "battle request"
    L11_2 = nil
    
    function L12_2()
      local L0_3, L1_3, L2_3
      L0_3 = log3
      L1_3 = "for failed battle request"
      L0_3(L1_3)
      L0_3 = L3_1
      L0_3 = L0_3.hide
      L0_3()
      L0_3 = showSimpleDialog
      L1_3 = "Live Battle"
      L2_3 = "Failed to call live battle ack"
      L0_3(L1_3, L2_3)
    end
    
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  else
    L3_2 = log3
    L4_2 = "***********************home page not yet load***********************"
    L3_2(L4_2)
  end
end

battleRequest = L26_1

function L26_1()
  local L0_2, L1_2, L2_2
  L0_2 = L14_1
  if L0_2 == nil then
    return
  end
  L0_2 = battleRequest
  L1_2 = L14_1
  L1_2 = L1_2.message
  L2_2 = L14_1
  L2_2 = L2_2._time
  L0_2(L1_2, L2_2)
  L0_2 = nil
  L14_1 = L0_2
end

fetchBattleRequestThatNotShownToPlayer = L26_1

function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L13_1
  L1_2 = L1_2[A0_2]
  if L1_2 == nil then
    L1_2 = warningLog
    L2_2 = "no players found"
    L1_2(L2_2)
    return
  end
  L1_2 = pairs
  L2_2 = L13_1
  L2_2 = L2_2[A0_2]
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = playerJoinedTheBattle
    L7_2 = L5_2.battleId
    L8_2 = L5_2.playerId
    L9_2 = L5_2.playerName
    L10_2 = L5_2.playerOwnerTeamID
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L1_2 = L13_1
  L1_2[A0_2] = nil
end

fetchBattlePlayers = L26_1

function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L15_1
  if L1_2 ~= nil then
    L1_2 = playerJoinedTheBattle
    L2_2 = L15_1
    L2_2 = L2_2.battleId
    L3_2 = L15_1
    L3_2 = L3_2.playerId
    L4_2 = L15_1
    L4_2 = L4_2.playerName
    L5_2 = L15_1
    L5_2 = L5_2.playerOwnerTeamID
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = L12_1
  L1_2 = L1_2[A0_2]
  if L1_2 == nil then
    return
  end
  L1_2 = require
  L2_2 = "Models.Card"
  L1_2 = L1_2(L2_2)
  
  function L2_2(A0_3)
    local L1_3
    L1_3 = L1_2
    L1_3 = L1_3.baseCards
    if L1_3 then
      L1_3 = L1_2
      L1_3 = L1_3.baseCards
      L1_3 = L1_3[A0_3]
      if L1_3 then
        L1_3 = L1_2
        L1_3 = L1_3.baseCards
        L1_3 = L1_3[A0_3]
        L1_3 = L1_3.isHero
        if L1_3 then
          L1_3 = true
          return L1_3
      end
    end
    else
      L1_3 = false
      return L1_3
    end
  end
  
  function L3_2(A0_3)
    local L1_3, L2_3
    L1_3 = L2_2
    L2_3 = A0_3.base_card_id
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = true
      return L1_3
    end
    L1_3 = false
    return L1_3
  end
  
  L4_2 = pairs
  L5_2 = L12_1
  L5_2 = L5_2[A0_2]
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L1_1
    L9_2 = L9_2.getScene
    L10_2 = "Scenes.LiveBattle"
    L9_2 = L9_2(L10_2)
    L10_2 = tonumber
    L11_2 = L8_2.owner_team_id
    L10_2 = L10_2(L11_2)
    L11_2 = tonumber
    L12_2 = L9_2.mainEnemyId
    L11_2 = L11_2(L12_2)
    if L10_2 == L11_2 then
      L10_2 = L3_2
      L11_2 = L8_2.card
      L10_2 = L10_2(L11_2)
      if L10_2 then
        L10_2 = L2_2
        L11_2 = L8_2.card
        L11_2 = L11_2.base_card_id
        L10_2 = L10_2(L11_2)
        if L10_2 then
          L10_2 = timer
          L10_2 = L10_2.performWithDelay
          L11_2 = 1500
          
          function L12_2()
            local L0_3, L1_3
            L0_3 = addCardToScrollers
            L1_3 = L8_2
            L0_3(L1_3)
          end
          
          L10_2 = L10_2(L11_2, L12_2)
          L25_1 = L10_2
        else
          L10_2 = addCardToScrollers
          L11_2 = L8_2
          L10_2(L11_2)
        end
      else
        L10_2 = addCardToScrollers
        L11_2 = L8_2
        L10_2(L11_2)
      end
    else
      L10_2 = addCardToScrollers
      L11_2 = L8_2
      L10_2(L11_2)
    end
  end
end

fetchBattleCards = L26_1

function L26_1(A0_2)
  local L1_2, L2_2
  L1_2 = L25_1
  if L1_2 then
    L1_2 = timer
    L1_2 = L1_2.cancel
    L2_2 = L25_1
    L1_2(L2_2)
    L1_2 = nil
    L25_1 = L1_2
  end
  L1_2 = L12_1
  L1_2 = L1_2[A0_2]
  if L1_2 == nil then
    return
  end
  L1_2 = L12_1
  L2_2 = {}
  L1_2[A0_2] = L2_2
end

removeBattleUpdateMessages = L26_1

function L26_1(A0_2)
  local L1_2, L2_2
  L1_2 = L24_1
  L1_2 = L1_2[A0_2]
  if L1_2 == nil then
    return
  end
  L1_2 = L24_1
  L2_2 = {}
  L1_2[A0_2] = L2_2
end

removeBattleHeroAbilityMessages = L26_1

function L26_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = printTable
  L5_2 = L20_1
  L4_2(L5_2)
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = A0_3
    L2_3 = "NetworkError"
    L3_3 = "%d+"
    L4_3 = string
    L4_3 = L4_3.find
    L5_3 = L1_3
    L6_3 = L3_3
    L4_3, L5_3 = L4_3(L5_3, L6_3)
    if L4_3 ~= nil and L5_3 ~= nil then
      L6_3 = print
      L7_3 = " first digits found"
      L6_3(L7_3)
      L6_3 = A0_2
      L7_3 = tonumber
      L8_3 = string
      L8_3 = L8_3.sub
      L9_3 = L1_3
      L10_3 = L4_3
      L11_3 = L5_3
      L8_3, L9_3, L10_3, L11_3 = L8_3(L9_3, L10_3, L11_3)
      L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
      if L6_3 == L7_3 then
        L6_3 = string
        L6_3 = L6_3.sub
        L7_3 = L1_3
        L8_3 = L5_3 + 1
        L6_3 = L6_3(L7_3, L8_3)
        L1_3 = L6_3
        L3_3 = "%d+"
        L6_3 = string
        L6_3 = L6_3.find
        L7_3 = L1_3
        L8_3 = L3_3
        L6_3, L7_3 = L6_3(L7_3, L8_3)
        L5_3 = L7_3
        L4_3 = L6_3
        if L4_3 ~= nil and L5_3 ~= nil then
          L6_3 = print
          L7_3 = tonumber
          L8_3 = string
          L8_3 = L8_3.sub
          L9_3 = L1_3
          L10_3 = L4_3
          L11_3 = L5_3
          L8_3, L9_3, L10_3, L11_3 = L8_3(L9_3, L10_3, L11_3)
          L7_3, L8_3, L9_3, L10_3, L11_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
          L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
          L6_3 = L9_1
          L6_3 = L6_3.trimString
          L7_3 = string
          L7_3 = L7_3.sub
          L8_3 = L1_3
          L9_3 = L5_3 + 1
          L7_3, L8_3, L9_3, L10_3, L11_3 = L7_3(L8_3, L9_3)
          L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
          if L6_3 == "seconds is passed" then
            L2_3 = "CooldownError"
            L6_3 = mainPlayer
            L6_3 = L6_3.cards
            L7_3 = A0_2
            L6_3 = L6_3[L7_3]
            L7_3 = tonumber
            L8_3 = string
            L8_3 = L8_3.sub
            L9_3 = L1_3
            L10_3 = L4_3
            L11_3 = L5_3
            L8_3, L9_3, L10_3, L11_3 = L8_3(L9_3, L10_3, L11_3)
            L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3)
            L6_3.cooldownRemainingTime = L7_3
          end
        end
      end
    end
    L6_3 = L1_1
    L6_3 = L6_3.getScene
    L7_3 = "Scenes.LiveBattle"
    L6_3 = L6_3(L7_3)
    L7_3 = L1_1
    L7_3 = L7_3.getSceneName
    L8_3 = "current"
    L7_3 = L7_3(L8_3)
    if L7_3 == "Scenes.LiveBattle" then
      L7_3 = L6_3.setcardError
      L8_3 = A0_2
      L9_3 = A2_2
      L10_3 = L2_3
      L11_3 = A3_2
      L7_3(L8_3, L9_3, L10_3, L11_3)
    end
  end
  
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "send card to battle"
    L4_3 = L4_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    L3_3 = {}
    L3_3.last_used_at = "number"
    if L1_3 then
      L4_3 = multiCheckValidityAssert
      L5_3 = L2_3
      L6_3 = "wrong data"
      L7_3 = _NAME
      L8_3 = L3_3
      L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3 = mainPlayer
      L4_3 = L4_3.cards
      L5_3 = A0_2
      L4_3 = L4_3[L5_3]
      L5_3 = L4_3
      L4_3 = L4_3.setLastUsageDate
      L6_3 = L2_3.last_used_at
      L4_3(L5_3, L6_3)
      L4_3 = A3_2
      if L4_3 then
        L4_3 = L1_1
        L4_3 = L4_3.getScene
        L5_3 = "Scenes.LiveBattle"
        L4_3 = L4_3(L5_3)
        L5_3 = L4_3.isPlayerDeployedHero
        if L5_3 ~= true then
          L4_3.isPlayerDeployedHero = true
        end
      end
      L4_3 = log3
      L5_3 = "card cooldown has been set"
      L4_3(L5_3)
      L4_3 = log3
      L5_3 = "card sent to server"
      L4_3(L5_3)
    end
  end
  
  if A3_2 ~= true then
    L6_2 = L22_1
    if L6_2 ~= nil then
      L6_2 = L22_1
      if A2_2 <= L6_2 then
        L6_2 = L22_1
        L6_2 = L6_2 + 1
        L22_1 = L6_2
        A2_2 = L22_1
      end
    end
    L22_1 = A2_2
  end
  L6_2 = {}
  L6_2.battle_id = A1_2
  L6_2.card = A0_2
  L6_2.round = A2_2
  L7_2 = {}
  L7_2.body = L6_2
  L8_2 = log3
  L9_2 = "Sending livebattle card to server"
  L8_2(L9_2)
  L8_2 = network
  L8_2 = L8_2.getDefaultHeader
  L8_2 = L8_2()
  L7_2.headers = L8_2
  L8_2 = network
  L8_2 = L8_2.request
  L9_2 = Constants
  L9_2 = L9_2.API_Path
  L10_2 = Constants
  L10_2 = L10_2.API_Live_Battle_SetCard
  L9_2 = L9_2 .. L10_2
  L10_2 = "POST"
  L11_2 = L5_2
  L12_2 = L7_2
  L13_2 = "send selected cards to battle"
  L14_2 = nil
  L15_2 = L4_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end

sendSelectedCardToBattle = L26_1

function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L1_2.id = "number"
  L1_2.card_owner_name = "string"
  L1_2.owner_team_id = "number"
  L1_2.card = ""
  L1_2.round = "number"
  L2_2 = multiCheckValidityAssert
  L3_2 = A0_2
  L4_2 = "wrong data"
  L5_2 = _NAME
  L6_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = printTable
  L3_2 = L20_1
  L2_2(L3_2)
  L2_2 = L1_1
  L2_2 = L2_2.getScene
  L3_2 = "Scenes.LiveBattle"
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1
  L3_2 = L3_2.getSceneName
  L4_2 = "current"
  L3_2 = L3_2(L4_2)
  if L3_2 == "Scenes.LiveBattle" then
    L3_2 = tonumber
    L4_2 = A0_2.id
    L3_2 = L3_2(L4_2)
    L4_2 = L2_2.battle_ID
    if L3_2 == L4_2 then
      goto lbl_51
    end
  end
  L3_2 = L12_1
  L4_2 = A0_2.id
  L3_2 = L3_2[L4_2]
  if L3_2 == nil then
    L3_2 = L12_1
    L4_2 = A0_2.id
    L5_2 = {}
    L3_2[L4_2] = L5_2
  end
  L3_2 = L12_1
  L4_2 = A0_2.id
  L3_2 = L3_2[L4_2]
  L4_2 = L12_1
  L5_2 = A0_2.id
  L4_2 = L4_2[L5_2]
  L4_2 = #L4_2
  L4_2 = L4_2 + 1
  L3_2[L4_2] = A0_2
  do return end
  ::lbl_51::
  L3_2 = L2_2.battle_ID
  L4_2 = tonumber
  L5_2 = A0_2.id
  L4_2 = L4_2(L5_2)
  if L3_2 ~= L4_2 then
    L3_2 = errorLog
    L4_2 = "error , the battle_id id not correct the battle id is : "
    L5_2 = L2_2.battle_ID
    L3_2(L4_2, L5_2)
    L3_2 = log3
    L4_2 = "the message.id : "
    L5_2 = A0_2.id
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2.card_owner_name
  L4_2 = mainPlayer
  L4_2 = L4_2.name
  if L3_2 == L4_2 then
    L3_2 = log3
    L4_2 = "i have sent this card so RETURN and dont add this card"
    L3_2(L4_2)
    return
  end
  L3_2 = nil
  L4_2 = log3
  L5_2 = "live_Battle.owner_team_id : "
  L6_2 = L2_2.ownerTeamId
  L4_2(L5_2, L6_2)
  L4_2 = log3
  L5_2 = "theMessage.owner_team_id : "
  L6_2 = A0_2.owner_team_id
  L4_2(L5_2, L6_2)
  L4_2 = tonumber
  L5_2 = A0_2.owner_team_id
  L4_2 = L4_2(L5_2)
  L5_2 = L2_2.ownerTeamId
  if L4_2 == L5_2 then
    L3_2 = "friends"
  else
    L3_2 = "enemies"
  end
  L4_2 = L2_2.addCardsToScrollers
  L5_2 = L3_2
  L6_2 = L2_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = A0_2.card
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A0_2.round
  L8_2 = A0_2.card_owner_name
  L4_2(L5_2, L6_2, L7_2, L8_2)
end

addCardToScrollers = L26_1

function L26_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L24_1
  L2_2 = A0_2.id
  L1_2 = L1_2[L2_2]
  if L1_2 == nil then
    L1_2 = L24_1
    L2_2 = A0_2.id
    L3_2 = {}
    L1_2[L2_2] = L3_2
  end
  L1_2 = L24_1
  L2_2 = A0_2.id
  L1_2 = L1_2[L2_2]
  L2_2 = L24_1
  L3_2 = A0_2.id
  L2_2 = L2_2[L3_2]
  L2_2 = #L2_2
  L2_2 = L2_2 + 1
  L1_2[L2_2] = A0_2
end

storeHeroEffects = L26_1

function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = L24_1
  L1_2 = L1_2[A0_2]
  if L1_2 == nil then
    return
  end
  L1_2 = L1_1
  L1_2 = L1_2.getScene
  L2_2 = "Scenes.LiveBattle"
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L24_1
  L3_2 = L3_2[A0_2]
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.hero_benefits_info
    if L7_2 then
      L7_2 = L6_2.hero_benefits_info
      L8_2 = L7_2.power_benefit
      if L8_2 then
        L8_2 = nil
        L9_2 = L6_2.hero_owner_id
        L10_2 = L1_2.mainEnemyId
        if L9_2 == L10_2 then
          L8_2 = true
          L9_2 = pairs
          L10_2 = L7_2.cards
          L9_2, L10_2, L11_2 = L9_2(L10_2)
          for L12_2, L13_2 in L9_2, L10_2, L11_2 do
            L14_2 = L1_2.enemyAddedCardsToBattle
            if L14_2 then
              L14_2 = L1_2.enemyAddedCardsToBattle
              L15_2 = tonumber
              L16_2 = L13_2.id
              L15_2 = L15_2(L16_2)
              L14_2 = L14_2[L15_2]
              if L14_2 then
                L14_2 = L1_2.enemyAddedCardsToBattle
                L15_2 = tonumber
                L16_2 = L13_2.id
                L15_2 = L15_2(L16_2)
                L14_2 = L14_2[L15_2]
                L14_2 = L14_2.power
                L14_2 = L14_2.value
                L15_2 = L13_2.power
                L14_2 = L14_2 + L15_2
                L15_2 = L1_2.enemyAddedCardsToBattle
                L16_2 = tonumber
                L17_2 = L13_2.id
                L16_2 = L16_2(L17_2)
                L15_2 = L15_2[L16_2]
                L15_2 = L15_2.power
                L16_2 = L15_2
                L15_2 = L15_2.setValue
                L17_2 = L14_2
                L18_2 = true
                L15_2(L16_2, L17_2, L18_2)
              end
            end
          end
        else
          L9_2 = L1_2.applyBenefitForOtherPlayers
          L10_2 = tonumber
          L11_2 = L6_2.hero_owner_id
          L10_2 = L10_2(L11_2)
          L11_2 = tonumber
          L12_2 = L6_2.ability_type
          L11_2 = L11_2(L12_2)
          L12_2 = tonumber
          L13_2 = L7_2.power_benefit
          L12_2 = L12_2(L13_2)
          L13_2 = true
          L9_2(L10_2, L11_2, L12_2, L13_2)
          L9_2 = tonumber
          L10_2 = L6_2.owner_team_id
          L9_2 = L9_2(L10_2)
          L10_2 = L1_2.ownerTeamId
          if L9_2 ~= L10_2 then
            L8_2 = true
          end
        end
        L9_2 = L1_2.applyPowerBenefit
        L10_2 = tonumber
        L11_2 = L7_2.power_benefit
        L10_2 = L10_2(L11_2)
        L11_2 = L8_2
        L9_2(L10_2, L11_2)
      end
    end
  end
end

fetchHeroesPowerBenefit = L26_1

function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = printTable
  L2_2 = L20_1
  L1_2(L2_2)
  
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = showSimpleDialog
    L2_3 = "Error"
    L3_3 = A0_3
    L4_3 = L4_1
    L4_3 = L4_3.OK
    L1_3(L2_3, L3_3, L4_3)
  end
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "RequestHelp"
    L4_3 = L1_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L1_1
      L3_3 = L3_3.getScene
      L4_3 = "Scenes.LiveBattle"
      L3_3 = L3_3(L4_3)
      if L3_3 ~= nil then
        L4_3 = L1_1
        L4_3 = L4_3.getSceneName
        L5_3 = "current"
        L4_3 = L4_3(L5_3)
        if L4_3 == "Scenes.LiveBattle" then
          L4_3 = L3_3.resetGameTime
          L4_3()
          L4_3 = L3_3.friendsScrollerAnimation
          L5_3 = nil
          L4_3(L5_3)
        end
      end
    end
  end
  
  L3_2 = {}
  L3_2.battle_id = A0_2
  L4_2 = {}
  L4_2.body = L3_2
  L5_2 = log3
  L6_2 = "Sending livebattle Help Request to server"
  L5_2(L6_2)
  L5_2 = network
  L5_2 = L5_2.getDefaultHeader
  L5_2 = L5_2()
  L4_2.headers = L5_2
  L5_2 = network
  L5_2 = L5_2.request
  L6_2 = Constants
  L6_2 = L6_2.API_Path
  L7_2 = Constants
  L7_2 = L7_2.API_Live_Battle_help_
  L6_2 = L6_2 .. L7_2
  L7_2 = "POST"
  L8_2 = L2_2
  L9_2 = L4_2
  L10_2 = "request help"
  L11_2 = nil
  L12_2 = L1_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end

requestHelp = L26_1

function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = tonumber
    L9_2 = A1_2
    L8_2 = L8_2(L9_2)
    if L7_2 == L8_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end

contains = L26_1

function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = "{ "
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_2
    L8_2 = " "
    L9_2 = L6_2
    L10_2 = " , "
    L1_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
  end
  L2_2 = L1_2
  L3_2 = " }"
  L1_2 = L2_2 .. L3_2
  L2_2 = log3
  L3_2 = "Current BattleID'S : "
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end

printTable = L26_1

function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = tonumber
    L9_2 = A1_2
    L8_2 = L8_2(L9_2)
    if L7_2 == L8_2 then
      A0_2[L5_2] = nil
      return
    end
  end
  L2_2 = warningLog
  L3_2 = "not in table"
  L2_2(L3_2)
end

removeFromTable = L26_1

function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkAssert
  L2_2 = A0_2 ~= nil
  L3_2 = "server sends nil in battle finished"
  L4_2 = "LiveBattleManager"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = checkAssert
  L2_2 = A0_2.id
  L2_2 = L2_2 ~= nil
  L3_2 = "server sends theMessage.id nil in battle finished"
  L4_2 = "LiveBattleManager"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = checkAssert
  L2_2 = A0_2.players_info
  L2_2 = L2_2 ~= nil
  L3_2 = "server sends theMessage.players_info nil in battle finished"
  L4_2 = "LiveBattleManager"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = checkAssert
  L2_2 = A0_2.players_info
  L3_2 = tostring
  L4_2 = mainPlayer
  L4_2 = L4_2.id
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.league_rank
  L2_2 = L2_2 ~= nil
  L3_2 = "server sends mainPlayer.league_rank nil in battle finished"
  L4_2 = "LiveBattleManager"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = checkAssert
  L2_2 = A0_2.players_info
  L3_2 = tostring
  L4_2 = mainPlayer
  L4_2 = L4_2.id
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.xp
  L2_2 = L2_2 ~= nil
  L3_2 = "server sends mainPlayer.xp  nil in battle finished"
  L4_2 = "LiveBattleManager"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = checkAssert
  L2_2 = A0_2.players_info
  L3_2 = tostring
  L4_2 = mainPlayer
  L4_2 = L4_2.id
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.gold
  L2_2 = L2_2 ~= nil
  L3_2 = "server sends mainPlayer.gold nil in battle finished"
  L4_2 = "LiveBattleManager"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = checkAssert
  L2_2 = A0_2.players_info
  L3_2 = tostring
  L4_2 = mainPlayer
  L4_2 = L4_2.id
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.level
  L2_2 = L2_2 ~= nil
  L3_2 = "server sends mainPlayer.level nil in battle finished"
  L4_2 = "LiveBattleManager"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = checkAssert
  L2_2 = A0_2.result
  L2_2 = L2_2.winner_id
  L2_2 = L2_2 ~= nil
  L3_2 = "server sends result.winner_id nil in battle finished"
  L4_2 = "LiveBattleManager"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = checkAssert
  L2_2 = A0_2.result
  L2_2 = L2_2.winner_added_score
  L2_2 = L2_2 ~= nil
  L3_2 = "server sends theMessage.result.winner_added_score nil in battle finished"
  L4_2 = "LiveBattleManager"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = checkAssert
  L2_2 = A0_2.result
  L2_2 = L2_2.loser_added_score
  L2_2 = L2_2 ~= nil
  L3_2 = "server sends theMessage.result.loser_added_score nil in battle finished"
  L4_2 = "LiveBattleManager"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = mainPlayer
  L1_2 = L1_2.tribe
  if L1_2 then
    L1_2 = checkAssert
    L2_2 = A0_2.result
    L2_2 = L2_2.winner_tribe_name
    L2_2 = L2_2 ~= nil
    L3_2 = "server sends theMessage.result.winner_tribe_name nil in battle finished"
    L4_2 = "LiveBattleManager"
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = printTable
  L2_2 = L20_1
  L1_2(L2_2)
  L1_2 = L1_1
  L1_2 = L1_2.getScene
  L2_2 = "Scenes.LiveBattle"
  L1_2 = L1_2(L2_2)
  L2_2 = contains
  L3_2 = L20_1
  L4_2 = A0_2.id
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = errorLog
    L3_2 = "error ,battle finished recived but theMessage.battle_id is not in CurrentBattleIDs"
    L2_2(L3_2)
    return
  end
  L2_2 = removeFromTable
  L3_2 = L20_1
  L4_2 = A0_2.id
  L2_2(L3_2, L4_2)
  L2_2 = nil
  L15_1 = L2_2
  L2_2 = -1
  L17_1 = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3
    L1_3 = log3
    L2_3 = "mainPlayer LeagueRank Updated to :"
    L3_3 = A0_2
    L3_3 = L3_3.players_info
    L4_3 = tostring
    L5_3 = mainPlayer
    L5_3 = L5_3.id
    L4_3 = L4_3(L5_3)
    L3_3 = L3_3[L4_3]
    L3_3 = L3_3.league_rank
    L1_3(L2_3, L3_3)
    L1_3 = A0_2
    L1_3 = L1_3.players_info
    L2_3 = tostring
    L3_3 = mainPlayer
    L3_3 = L3_3.id
    L2_3 = L2_3(L3_3)
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.league_rank
    if not L1_3 then
      L1_3 = 1
    end
    if L1_3 == "" or L1_3 == nil then
      L1_3 = 1
    end
    L2_3 = mainPlayer
    L2_3.leagueRank = L1_3
    L2_3 = A0_2
    L2_3 = L2_3.players_info
    L3_3 = tostring
    L4_3 = mainPlayer
    L4_3 = L4_3.id
    L3_3 = L3_3(L4_3)
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3.xp
    if L2_3 ~= nil then
      L3_3 = mainPlayer
      L3_3 = L3_3.xp
      L3_3 = L2_3 - L3_3
      if 0 < L3_3 then
        L3_3 = mainPlayer
        L3_3.xp = L2_3
      end
    end
    L3_3 = A0_2
    L3_3 = L3_3.players_info
    L4_3 = tostring
    L5_3 = mainPlayer
    L5_3 = L5_3.id
    L4_3 = L4_3(L5_3)
    L3_3 = L3_3[L4_3]
    L3_3 = L3_3.gold
    L4_3 = false
    if L3_3 ~= nil then
      L5_3 = mainPlayer
      L5_3 = L5_3.gold
      L5_3 = L3_3 - L5_3
      if 0 < L5_3 then
        L5_3 = mainPlayer
        L5_3.gold = L3_3
        L4_3 = true
      end
    end
    L5_3 = nil
    L6_3 = A0_2
    L6_3 = L6_3.players_info
    L7_3 = tostring
    L8_3 = mainPlayer
    L8_3 = L8_3.id
    L7_3 = L7_3(L8_3)
    L6_3 = L6_3[L7_3]
    L6_3 = L6_3.gift_card
    if L6_3 then
      L6_3 = mainPlayer
      L6_3 = L6_3.cards
      L7_3 = A0_2
      L7_3 = L7_3.players_info
      L8_3 = tostring
      L9_3 = mainPlayer
      L9_3 = L9_3.id
      L8_3 = L8_3(L9_3)
      L7_3 = L7_3[L8_3]
      L7_3 = L7_3.gift_card
      L7_3 = L7_3.id
      L8_3 = L2_1
      L9_3 = L8_3
      L8_3 = L8_3.new
      L10_3 = A0_2
      L10_3 = L10_3.players_info
      L11_3 = tostring
      L12_3 = mainPlayer
      L12_3 = L12_3.id
      L11_3 = L11_3(L12_3)
      L10_3 = L10_3[L11_3]
      L10_3 = L10_3.gift_card
      L8_3 = L8_3(L9_3, L10_3)
      L6_3[L7_3] = L8_3
      L6_3 = mainPlayer
      L6_3 = L6_3.cards
      L7_3 = A0_2
      L7_3 = L7_3.players_info
      L8_3 = tostring
      L9_3 = mainPlayer
      L9_3 = L9_3.id
      L8_3 = L8_3(L9_3)
      L7_3 = L7_3[L8_3]
      L7_3 = L7_3.gift_card
      L7_3 = L7_3.id
      L5_3 = L6_3[L7_3]
    else
      L5_3 = nil
    end
    L6_3 = A0_2
    L6_3 = L6_3.medals
    if L6_3 then
      L6_3 = L11_1
      L6_3 = L6_3.addToMedals
      L7_3 = A0_2
      L7_3 = L7_3.medals
      L6_3(L7_3)
    end
    L6_3 = A0_2
    L6_3 = L6_3.players_info
    L7_3 = tostring
    L8_3 = mainPlayer
    L8_3 = L8_3.id
    L7_3 = L7_3(L8_3)
    L6_3 = L6_3[L7_3]
    L6_3 = L6_3.level
    if L6_3 ~= nil then
      L7_3 = mainPlayer
      L7_3 = L7_3.level
      L7_3 = L6_3 - L7_3
      levelChange = L7_3
      L7_3 = mainPlayer
      L7_3.level = L6_3
    end
    L7_3 = levelChange
    if 0 < L7_3 then
      if L5_3 then
        L7_3 = nil
        L8_3 = _imageQuality
        if L8_3 == "HD" then
          L8_3 = Constants
          L8_3 = L8_3.Path_Assets
          L9_3 = "Cards/"
          L10_3 = L5_3.image
          L11_3 = "-m.jpg"
          L7_3 = L8_3 .. L9_3 .. L10_3 .. L11_3
        else
          L8_3 = Constants
          L8_3 = L8_3.Path_Assets
          L9_3 = "Cards/"
          L10_3 = L5_3.image
          L11_3 = ".jpg"
          L7_3 = L8_3 .. L9_3 .. L10_3 .. L11_3
        end
        L8_3 = L6_1
        L9_3 = L8_3
        L8_3 = L8_3.new
        L10_3 = L4_1
        L10_3 = L10_3["You've leveled up and have received a bonus card"]
        L11_3 = L7_3
        L12_3 = L4_1
        L12_3 = L12_3.View
        
        function L13_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4
          L0_4 = obj
          if L0_4 then
            L0_4 = obj
            L1_4 = L0_4
            L0_4 = L0_4.didPressContinue
            L2_4 = false
            L0_4(L1_4, L2_4)
          end
          L0_4 = L1_1
          L0_4 = L0_4.showOverlay
          L1_4 = "Scenes.CardOverlay"
          L2_4 = {}
          L2_4.effect = "fade"
          L3_4 = {}
          L4_4 = L5_3
          L3_4.card = L4_4
          L2_4.params = L3_4
          L0_4(L1_4, L2_4)
        end
        
        L14_3 = 4000
        L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
        L8_3 = mainPlayer
        L8_3 = L8_3.isSeenCardWithId
        L9_3 = L5_3.baseId
        L8_3 = L8_3(L9_3)
        if not L8_3 then
          L8_3 = table
          L8_3 = L8_3.insert
          L9_3 = mainPlayer
          L9_3 = L9_3.collection
          L10_3 = L5_3.baseId
          L8_3(L9_3, L10_3)
        end
        L8_3 = L7_1
        L8_3 = L8_3.checkColletionAchievements
        L8_3()
        L8_3 = L7_1
        L8_3 = L8_3.checkSecretAchievements
        L8_3()
        L8_3 = L7_1
        L8_3 = L8_3.checkLevelAchievement
        L8_3()
        L8_3 = L6_1
        L8_3 = L8_3.showNotifications
        L8_3()
      else
        L7_3 = L6_1
        L8_3 = L7_3
        L7_3 = L7_3.new
        L9_3 = L4_1
        L9_3 = L9_3["You've leveled up!"]
        L7_3(L8_3, L9_3)
        L7_3 = L7_1
        L7_3 = L7_3.checkLevelAchievement
        L7_3()
        L7_3 = L6_1
        L7_3 = L7_3.showNotifications
        L7_3()
      end
    end
    L7_3 = nil
    L8_3 = A0_2
    L8_3 = L8_3.players_info
    L9_3 = tostring
    L10_3 = mainPlayer
    L10_3 = L10_3.id
    L9_3 = L9_3(L10_3)
    L8_3 = L8_3[L9_3]
    L8_3 = L8_3.rank
    L9_3 = mainPlayer
    L9_3 = L9_3.rank
    L7_3 = L8_3 - L9_3
    L8_3 = mainPlayer
    L9_3 = A0_2
    L9_3 = L9_3.players_info
    L10_3 = tostring
    L11_3 = mainPlayer
    L11_3 = L11_3.id
    L10_3 = L10_3(L11_3)
    L9_3 = L9_3[L10_3]
    L9_3 = L9_3.rank
    L8_3.rank = L9_3
    L8_3 = nil
    if L7_3 < 0 then
      L8_3 = true
    end
    L9_3 = A0_2
    L9_3 = L9_3.players_info
    L10_3 = tostring
    L11_3 = mainPlayer
    L11_3 = L11_3.id
    L10_3 = L10_3(L11_3)
    L9_3 = L9_3[L10_3]
    L9_3 = L9_3.won_battle_num
    if L9_3 ~= nil then
      L9_3 = mainPlayer
      L10_3 = A0_2
      L10_3 = L10_3.players_info
      L11_3 = tostring
      L12_3 = mainPlayer
      L12_3 = L12_3.id
      L11_3 = L11_3(L12_3)
      L10_3 = L10_3[L11_3]
      L10_3 = L10_3.won_battle_num
      L9_3.wonBattleNum = L10_3
    end
    L9_3 = A0_2
    L9_3 = L9_3.players_info
    L10_3 = tostring
    L11_3 = mainPlayer
    L11_3 = L11_3.id
    L10_3 = L10_3(L11_3)
    L9_3 = L9_3[L10_3]
    L9_3 = L9_3.lost_battle_num
    if L9_3 ~= nil then
      L9_3 = mainPlayer
      L10_3 = A0_2
      L10_3 = L10_3.players_info
      L11_3 = tostring
      L12_3 = mainPlayer
      L12_3 = L12_3.id
      L11_3 = L11_3(L12_3)
      L10_3 = L10_3[L11_3]
      L10_3 = L10_3.lost_battle_num
      L9_3.lostBattleNum = L10_3
    end
    L9_3 = mainPlayer
    L9_3 = L9_3.tribe
    if L9_3 then
      L9_3 = A0_2
      L9_3 = L9_3.result
      L9_3 = L9_3.winner_tribe_name
      L10_3 = mainPlayer
      L10_3 = L10_3.tribe
      if L9_3 == L10_3 then
        L9_3 = mainPlayer
        L9_3 = L9_3.tribe
        L10_3 = A0_2
        L10_3 = L10_3.result
        L10_3 = L10_3.winner_tribe_rank
        L9_3.rank = L10_3
      else
        L9_3 = A0_2
        L9_3 = L9_3.result
        L9_3 = L9_3.loser_tribe_name
        L10_3 = mainPlayer
        L10_3 = L10_3.tribe
        if L9_3 == L10_3 then
          L9_3 = mainPlayer
          L9_3 = L9_3.tribe
          L10_3 = A0_2
          L10_3 = L10_3.result
          L10_3 = L10_3.loser_tribe_rank
          L9_3.rank = L10_3
        end
      end
    end
    L9_3 = A0_2
    L9_3 = L9_3.players_info
    L10_3 = tostring
    L11_3 = mainPlayer
    L11_3 = L11_3.id
    L10_3 = L10_3(L11_3)
    L9_3 = L9_3[L10_3]
    L9_3 = L9_3.q
    if L9_3 ~= nil then
      L9_3 = mainPlayer
      L10_3 = A0_2
      L10_3 = L10_3.players_info
      L11_3 = tostring
      L12_3 = mainPlayer
      L12_3 = L12_3.id
      L11_3 = L11_3(L12_3)
      L10_3 = L10_3[L11_3]
      L10_3 = L10_3.q
      L9_3.q = L10_3
    end
    L9_3 = L1_1
    L9_3 = L9_3.getSceneName
    L10_3 = "current"
    L9_3 = L9_3(L10_3)
    if L9_3 ~= "Scenes.LiveBattle" then
      L9_3 = log3
      L10_3 = "battle finished recived but player are not in the live battle scene,  player ignored the battle"
      L9_3(L10_3)
      L9_3 = L1_1
      L9_3 = L9_3.getScene
      L10_3 = "Scenes.Home"
      L9_3 = L9_3(L10_3)
      if L8_3 == true then
        L10_3 = L1_1
        L10_3 = L10_3.getSceneName
        L11_3 = "current"
        L10_3 = L10_3(L11_3)
        if L10_3 == "Scenes.Home" then
          L10_3 = L9_3.animateRankUp
          L10_3()
        end
      end
      if L4_3 == true then
        L10_3 = L1_1
        L10_3 = L10_3.getSceneName
        L11_3 = "current"
        L10_3 = L10_3(L11_3)
        if L10_3 == "Scenes.Home" then
          L11_3 = L9_3
          L10_3 = L9_3.updateGold
          L12_3 = true
          L10_3(L11_3, L12_3)
        end
      end
      return
    end
    L9_3 = L1_2
    L9_3 = L9_3.battle_ID
    L10_3 = tonumber
    L11_3 = A0_2
    L11_3 = L11_3.id
    L10_3 = L10_3(L11_3)
    if L9_3 ~= L10_3 then
      L9_3 = warningLog
      L10_3 = "this battle finish is not for the current live battle scene ,its for ignored battles"
      L9_3(L10_3)
      return
    end
    L9_3 = {}
    L10_3 = {}
    L11_3 = nil
    
    function L12_3(A0_4, A1_4)
      local L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4
      L2_4 = ipairs
      L3_4 = A1_4
      L2_4, L3_4, L4_4 = L2_4(L3_4)
      for L5_4, L6_4 in L2_4, L3_4, L4_4 do
        L7_4 = tonumber
        L8_4 = L6_4
        L7_4 = L7_4(L8_4)
        L8_4 = tonumber
        L9_4 = A0_4
        L8_4 = L8_4(L9_4)
        if L7_4 == L8_4 then
          L7_4 = true
          return L7_4
        end
      end
      L2_4 = false
      return L2_4
    end
    
    L13_3 = pairs
    L14_3 = A0_2
    L14_3 = L14_3.players_info
    L13_3, L14_3, L15_3 = L13_3(L14_3)
    for L16_3 in L13_3, L14_3, L15_3 do
      L17_3 = A0_2
      L17_3 = L17_3.players_info
      L17_3 = L17_3[L16_3]
      L17_3 = L17_3.owner_team_id
      L18_3 = L1_2
      L18_3 = L18_3.ownerTeamId
      if L17_3 == L18_3 then
        L17_3 = log3
        L18_3 = A0_2
        L18_3 = L18_3.players_info
        L18_3 = L18_3[L16_3]
        L18_3 = L18_3.id
        L19_3 = " considered as friend"
        L17_3(L18_3, L19_3)
        L17_3 = A0_2
        L17_3 = L17_3.players_info
        L17_3 = L17_3[L16_3]
        L9_3[L16_3] = L17_3
        L17_3 = L9_3[L16_3]
        L18_3 = L1_2
        L18_3 = L18_3.everyPlayerCards
        L19_3 = tonumber
        L20_3 = L9_3[L16_3]
        L20_3 = L20_3.id
        L19_3 = L19_3(L20_3)
        L18_3 = L18_3[L19_3]
        L17_3.cards = L18_3
      else
        L17_3 = log3
        L18_3 = A0_2
        L18_3 = L18_3.players_info
        L18_3 = L18_3[L16_3]
        L18_3 = L18_3.id
        L19_3 = " considered as enemy"
        L17_3(L18_3, L19_3)
        L17_3 = A0_2
        L17_3 = L17_3.players_info
        L17_3 = L17_3[L16_3]
        L10_3[L16_3] = L17_3
        L17_3 = L10_3[L16_3]
        L18_3 = L1_2
        L18_3 = L18_3.everyPlayerCards
        L19_3 = tonumber
        L20_3 = L10_3[L16_3]
        L20_3 = L20_3.id
        L19_3 = L19_3(L20_3)
        L18_3 = L18_3[L19_3]
        L17_3.cards = L18_3
      end
    end
    L13_3 = nil
    L14_3 = L1_2
    L14_3 = L14_3.ownerTeamId
    L15_3 = A0_2
    L15_3 = L15_3.result
    L15_3 = L15_3.winner_id
    if L14_3 == L15_3 then
      L14_3 = tostring
      L15_3 = A0_2
      L15_3 = L15_3.result
      L15_3 = L15_3.winner_id
      L14_3 = L14_3(L15_3)
      L14_3 = L9_3[L14_3]
      if L14_3 ~= nil then
        L14_3 = tostring
        L15_3 = A0_2
        L15_3 = L15_3.result
        L15_3 = L15_3.winner_id
        L14_3 = L14_3(L15_3)
        L14_3 = L9_3[L14_3]
        L15_3 = tonumber
        L16_3 = A0_2
        L16_3 = L16_3.result
        L16_3 = L16_3.winner_added_score
        L15_3 = L15_3(L16_3)
        L14_3.score = L15_3
      end
      L14_3 = tostring
      L15_3 = A0_2
      L15_3 = L15_3.result
      L15_3 = L15_3.loser_id
      L14_3 = L14_3(L15_3)
      L14_3 = L10_3[L14_3]
      if L14_3 ~= nil then
        L14_3 = tostring
        L15_3 = A0_2
        L15_3 = L15_3.result
        L15_3 = L15_3.loser_id
        L14_3 = L14_3(L15_3)
        L14_3 = L10_3[L14_3]
        L15_3 = tonumber
        L16_3 = A0_2
        L16_3 = L16_3.result
        L16_3 = L16_3.loser_added_score
        L15_3 = L15_3(L16_3)
        L14_3.score = L15_3
      end
      L14_3 = mainPlayer
      L14_3 = L14_3.tribe
      if L14_3 then
        L14_3 = mainPlayer
        L14_3 = L14_3.tribe
        L15_3 = A0_2
        L15_3 = L15_3.result
        L15_3 = L15_3.winner_tribe_rank
        L14_3.rank = L15_3
      end
      L13_3 = true
    else
      L14_3 = tostring
      L15_3 = A0_2
      L15_3 = L15_3.result
      L15_3 = L15_3.winner_id
      L14_3 = L14_3(L15_3)
      L14_3 = L10_3[L14_3]
      if L14_3 ~= nil then
        L14_3 = tostring
        L15_3 = A0_2
        L15_3 = L15_3.result
        L15_3 = L15_3.winner_id
        L14_3 = L14_3(L15_3)
        L14_3 = L10_3[L14_3]
        L15_3 = tonumber
        L16_3 = A0_2
        L16_3 = L16_3.result
        L16_3 = L16_3.winner_added_score
        L15_3 = L15_3(L16_3)
        L14_3.score = L15_3
      end
      L14_3 = tostring
      L15_3 = A0_2
      L15_3 = L15_3.result
      L15_3 = L15_3.loser_id
      L14_3 = L14_3(L15_3)
      L14_3 = L9_3[L14_3]
      if L14_3 ~= nil then
        L14_3 = tostring
        L15_3 = A0_2
        L15_3 = L15_3.result
        L15_3 = L15_3.loser_id
        L14_3 = L14_3(L15_3)
        L14_3 = L9_3[L14_3]
        L15_3 = tonumber
        L16_3 = A0_2
        L16_3 = L16_3.result
        L16_3 = L16_3.loser_added_score
        L15_3 = L15_3(L16_3)
        L14_3.score = L15_3
      end
      L14_3 = mainPlayer
      L14_3 = L14_3.tribe
      if L14_3 then
        L14_3 = mainPlayer
        L14_3 = L14_3.tribe
        L15_3 = A0_2
        L15_3 = L15_3.result
        L15_3 = L15_3.loser_tribe_rank
        L14_3.rank = L15_3
      end
      L13_3 = false
    end
    L14_3 = mainPlayer
    L14_3 = L14_3.tribe
    if L14_3 == nil then
      L14_3 = mainPlayer
      L14_3 = L14_3.id
      L15_3 = A0_2
      L15_3 = L15_3.result
      L15_3 = L15_3.winner_id
      if L14_3 == L15_3 then
        L14_3 = A0_2
        L14_3 = L14_3.result
        L11_3 = L14_3.loser_tribe_name
      else
        L14_3 = A0_2
        L14_3 = L14_3.result
        L11_3 = L14_3.winner_tribe_name
      end
    else
      L14_3 = mainPlayer
      L14_3 = L14_3.tribe
      L14_3 = L14_3.name
      L15_3 = A0_2
      L15_3 = L15_3.result
      L15_3 = L15_3.winner_tribe_name
      if L14_3 == L15_3 then
        L14_3 = A0_2
        L14_3 = L14_3.result
        L11_3 = L14_3.loser_tribe_name
      else
        L14_3 = A0_2
        L14_3 = L14_3.result
        L11_3 = L14_3.winner_tribe_name
      end
    end
    L14_3 = L21_1
    L15_3 = nil
    L21_1 = L15_3
    L15_3 = L1_1
    L15_3 = L15_3.gotoScene
    L16_3 = "Scenes.LiveBattleOutcome"
    L17_3 = {}
    L18_3 = {}
    L18_3._friends = L9_3
    L18_3._enemies = L10_3
    L19_3 = L1_2
    L19_3 = L19_3.battle_ID
    L18_3.battle_id = L19_3
    L18_3.hasWon = L13_3
    L18_3.enemies_tribe = L11_3
    L18_3.showRankupAnimation = L8_3
    L18_3.showGoldAnimation = L4_3
    L18_3.ignoreMessage = L14_3
    L17_3.params = L18_3
    L15_3(L16_3, L17_3)
  end
  
  L3_2 = timer
  L3_2 = L3_2.performWithDelay
  L4_2 = 2000
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end

battleFinished = L26_1

function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L1_2.help_owner_id = "number"
  L1_2.id = "number"
  L1_2.defender_id = "number"
  L1_2.defender_name = "string"
  L1_2.attacker_name = "string"
  L2_2 = multiCheckValidityAssert
  L3_2 = A0_2
  L4_2 = "wrong data"
  L5_2 = _NAME
  L6_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = warningLog
  L3_2 = "Help Request Revieced"
  L2_2(L3_2)
  L2_2 = printTable
  L3_2 = L20_1
  L2_2(L3_2)
  L2_2 = L16_1
  L3_2 = A0_2.id
  if L2_2 == L3_2 then
    L2_2 = L17_1
    L3_2 = A0_2.help_owner_id
    if L2_2 == L3_2 then
      L2_2 = errorLog
      L3_2 = "battle help already recived from this player with this battle_id. pastBattleID : "
      L4_2 = L16_1
      L5_2 = " , theMessage.Battle_id : "
      L6_2 = A0_2.id
      L7_2 = "pastHelpOwnerID : "
      L8_2 = L17_1
      L9_2 = "theMessage.help_owner_id : "
      L10_2 = A0_2.help_owner_id
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      return
    end
  end
  L2_2 = A0_2.id
  L16_1 = L2_2
  L2_2 = A0_2.help_owner_id
  L17_1 = L2_2
  L2_2 = L1_1
  L2_2 = L2_2.getSceneName
  L3_2 = "current"
  L2_2 = L2_2(L3_2)
  if L2_2 == "Scenes.LiveBattle" then
    L2_2 = L1_1
    L2_2 = L2_2.getScene
    L3_2 = "Scenes.LiveBattle"
    L2_2 = L2_2(L3_2)
    L3_2 = log3
    L4_2 = "Composer Scene : LiveBattle"
    L3_2(L4_2)
    L3_2 = tonumber
    L4_2 = L2_2.battle_ID
    L3_2 = L3_2(L4_2)
    L4_2 = tonumber
    L5_2 = A0_2.id
    L4_2 = L4_2(L5_2)
    if L3_2 == L4_2 then
      L3_2 = A0_2.help_owner_id
      L4_2 = mainPlayer
      L4_2 = L4_2.id
      if L3_2 ~= L4_2 then
        L3_2 = L2_2.requestHelpRecieved
        L3_2()
      else
        L3_2 = log3
        L4_2 = "help owner is main player"
        L3_2(L4_2)
      end
    else
      L3_2 = log3
      L4_2 = "help request is not for this battle , liveBattle.battleID :"
      L5_2 = L2_2.battle_ID
      L6_2 = " , theMessage.id : "
      L7_2 = A0_2.id
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
    return
  end
  L2_2 = liveBattleNotificationBarView
  if L2_2 ~= nil then
    L2_2 = mainPlayer
    L2_2 = L2_2.tribe
    if L2_2 then
      L2_2 = mainPlayer
      L2_2 = L2_2.tribe
      L2_2 = L2_2.id
      L3_2 = A0_2.help_owner_tribe_id
      if L2_2 == L3_2 then
        L2_2 = A0_2.help_owner_id
        L3_2 = mainPlayer
        L3_2 = L3_2.id
        if L2_2 ~= L3_2 then
          L2_2 = L1_1
          L2_2 = L2_2.getScene
          L3_2 = "Scenes.LiveBattle"
          L2_2 = L2_2(L3_2)
          L3_2 = nil
          L4_2 = {}
          L15_1 = L4_2
          L4_2 = A0_2.help_owner_id
          L5_2 = tonumber
          L6_2 = A0_2.defender_id
          L5_2 = L5_2(L6_2)
          if L4_2 == L5_2 then
            L4_2 = A0_2.defender_name
            A0_2.help_owner_name = L4_2
            L4_2 = L19_1
            L5_2 = tonumber
            L6_2 = A0_2.id
            L5_2 = L5_2(L6_2)
            L6_2 = {}
            L7_2 = A0_2.attacker_name
            L6_2.mainEnemyName = L7_2
            L7_2 = A0_2.defender_name
            L6_2.mainFriendName = L7_2
            L4_2[L5_2] = L6_2
            L3_2 = A0_2.attacker_id
            L4_2 = L15_1
            L5_2 = A0_2.id
            L4_2.battleId = L5_2
            L4_2 = L15_1
            L5_2 = A0_2.help_owner_id
            L4_2.playerId = L5_2
            L4_2 = L15_1
            L5_2 = A0_2.defender_name
            L4_2.playerName = L5_2
            L4_2 = L15_1
            L5_2 = A0_2.help_owner_id
            L4_2.playerOwnerTeamID = L5_2
          else
            L4_2 = A0_2.attacker_name
            A0_2.help_owner_name = L4_2
            L4_2 = L19_1
            L5_2 = tonumber
            L6_2 = A0_2.id
            L5_2 = L5_2(L6_2)
            L6_2 = {}
            L7_2 = A0_2.defender_name
            L6_2.mainEnemyName = L7_2
            L7_2 = A0_2.attacker_name
            L6_2.mainFriendName = L7_2
            L4_2[L5_2] = L6_2
            L3_2 = A0_2.defender_id
            L4_2 = L15_1
            L5_2 = A0_2.id
            L4_2.battleId = L5_2
            L4_2 = L15_1
            L5_2 = A0_2.help_owner_id
            L4_2.playerId = L5_2
            L4_2 = L15_1
            L5_2 = A0_2.attacker_name
            L4_2.playerName = L5_2
            L4_2 = L15_1
            L5_2 = A0_2.help_owner_id
            L4_2.playerOwnerTeamID = L5_2
          end
          L4_2 = liveBattleNotificationBarView
          L5_2 = L4_2
          L4_2 = L4_2.addTicket
          L6_2 = {}
          L6_2.ticketType = "help"
          L7_2 = A0_2.help_owner_name
          L6_2.helpRequestOwner = L7_2
          L7_2 = A0_2.help_owner_id
          L6_2.help_owner_id = L7_2
          L7_2 = A0_2.id
          L6_2.battle_id = L7_2
          L6_2.mainEnemy_id = L3_2
          L7_2 = A0_2.help_owner_tribe_id
          L6_2.help_owner_tribe_id = L7_2
          L4_2(L5_2, L6_2)
      end
      else
        L2_2 = A0_2.help_owner_id
        L3_2 = mainPlayer
        L3_2 = L3_2.id
        if L2_2 == L3_2 then
          L2_2 = log3
          L3_2 = "main player is the help request owner"
          L2_2(L3_2)
        else
          L2_2 = pairs
          L3_2 = liveBattleNotificationBarView
          L3_2 = L3_2.ticketsTemp
          L2_2, L3_2, L4_2 = L2_2(L3_2)
          for L5_2, L6_2 in L2_2, L3_2, L4_2 do
            L7_2 = L6_2.battle_id
            L8_2 = A0_2.id
            if L7_2 == L8_2 then
              L7_2 = L6_2._time
              if L7_2 ~= nil then
                L7_2 = os
                L7_2 = L7_2.time
                L7_2 = L7_2()
                L6_2._time = L7_2
                L7_2 = log3
                L8_2 = "battle time update"
                L9_2 = L6_2.attackerName
                if not L9_2 then
                  L9_2 = L6_2.helpRequestOwner
                end
                L7_2(L8_2, L9_2)
                L7_2 = log3
                L8_2 = "battle"
                L9_2 = L6_2.battle_id
                L10_2 = A0_2.id
                L7_2(L8_2, L9_2, L10_2)
              end
            end
          end
        end
        L2_2 = mainPlayer
        L2_2 = L2_2.tribe
        L2_2 = L2_2.id
        L3_2 = A0_2.help_owner_tribe_id
        if L2_2 ~= L3_2 then
          L2_2 = log3
          L3_2 = "enemy sent help before ticket tap"
          L2_2(L3_2)
          L2_2 = L18_1
          L3_2 = A0_2.id
          L2_2[L3_2] = true
        end
      end
    else
      L2_2 = A0_2.help_owner_id
      L3_2 = mainPlayer
      L3_2 = L3_2.id
      if L2_2 == L3_2 then
        L2_2 = log3
        L3_2 = "main player is the help request owner"
        L2_2(L3_2)
      else
        L2_2 = pairs
        L3_2 = liveBattleNotificationBarView
        L3_2 = L3_2.ticketsTemp
        L2_2, L3_2, L4_2 = L2_2(L3_2)
        for L5_2, L6_2 in L2_2, L3_2, L4_2 do
          L7_2 = L6_2.battle_id
          L8_2 = A0_2.id
          if L7_2 == L8_2 then
            L7_2 = L6_2._time
            if L7_2 ~= nil then
              L7_2 = os
              L7_2 = L7_2.time
              L7_2 = L7_2()
              L6_2._time = L7_2
              L7_2 = log3
              L8_2 = "battle time update"
              L9_2 = L6_2.attackerName
              if not L9_2 then
                L9_2 = L6_2.helpRequestOwner
              end
              L7_2(L8_2, L9_2)
              L7_2 = log3
              L8_2 = "battle"
              L9_2 = L6_2.battle_id
              L10_2 = A0_2.id
              L7_2(L8_2, L9_2, L10_2)
            end
          end
        end
      end
      L2_2 = log3
      L3_2 = "enemy sent help before ticket tap"
      L2_2(L3_2)
      L2_2 = L18_1
      L3_2 = A0_2.id
      L2_2[L3_2] = true
    end
  else
    L2_2 = log3
    L3_2 = "***********************home page not yet load***********************"
    L2_2(L3_2)
  end
end

helpRequestRecieved = L26_1

function L26_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = L3_1
  L3_2 = L3_2.show
  L4_2 = L4_1
  L4_2 = L4_2.CheckingOpponentStatus
  L3_2(L4_2)
  L3_2 = printTable
  L4_2 = L20_1
  L3_2(L4_2)
  L3_2 = log3
  L4_2 = "attackTo"
  L3_2(L4_2)
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L3_1
    L1_3 = L1_3.hide
    L1_3()
    L1_3 = L1_1
    L1_3 = L1_3.getSceneName
    L2_3 = "current"
    L1_3 = L1_3(L2_3)
    if L1_3 ~= "Scenes.LiveBattle" then
      L1_3 = showSimpleDialog
      L2_3 = "Live-battle Request Error"
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    if A0_3 == "opponent is no longer online!" then
      L1_3 = L8_1
      L1_3 = L1_3.changeStatus
      L2_3 = A0_2
      L3_3 = 0
      L1_3(L2_3, L3_3)
    elseif A0_3 == "Opponent is BUSY" then
      L1_3 = L8_1
      L1_3 = L1_3.changeStatus
      L2_3 = A0_2
      L3_3 = 2
      L1_3(L2_3, L3_3)
    end
  end
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "name"
    L4_3 = L3_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = {}
      L3_3.battle_id = "number"
      L3_3.help_cost = "number"
      L4_3 = multiCheckValidityAssert
      L5_3 = L2_3
      L6_3 = "wrong data"
      L7_3 = _NAME
      L8_3 = L3_3
      L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3 = L20_1
      L5_3 = L20_1
      L5_3 = #L5_3
      L5_3 = L5_3 + 1
      L6_3 = L2_3.battle_id
      L4_3[L5_3] = L6_3
      L4_3 = {}
      L5_3 = {}
      L6_3 = L2_3.battle_id
      L5_3.battle_ID = L6_3
      L6_3 = mainPlayer
      L6_3 = L6_3.id
      L5_3.ownerTeamId = L6_3
      L6_3 = A0_2
      L5_3.mainEnemy = L6_3
      L5_3.cameForHelp = false
      L6_3 = L2_3.help_cost
      L5_3.helpCost = L6_3
      L6_3 = A2_2
      L5_3._mainEnemyAvatar = L6_3
      L4_3.params = L5_3
      L5_3 = L3_1
      L5_3 = L5_3.hide
      L5_3()
      L5_3 = L1_1
      L5_3 = L5_3.getScene
      L6_3 = "Scenes.LiveBattle"
      L5_3 = L5_3(L6_3)
      L6_3 = A1_2
      L5_3.mainEnemyName = L6_3
      L6_3 = mainPlayer
      L6_3 = L6_3.name
      L5_3.mainFriendName = L6_3
      L6_3 = L1_1
      L6_3 = L6_3.gotoScene
      L7_3 = "Scenes.LiveBattle"
      L8_3 = L4_3
      L6_3(L7_3, L8_3)
    end
  end
  
  L5_2 = {}
  L5_2.opponent_id = A0_2
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = log3
  L8_2 = "Sending livebattle Request to server"
  L7_2(L8_2)
  L7_2 = network
  L7_2 = L7_2.getDefaultHeader
  L7_2 = L7_2()
  L6_2.headers = L7_2
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = Constants
  L8_2 = L8_2.API_Path
  L9_2 = Constants
  L9_2 = L9_2.API_Live_Battle
  L8_2 = L8_2 .. L9_2
  L9_2 = "POST"
  L10_2 = L4_2
  L11_2 = L6_2
  L12_2 = "attack to"
  L13_2 = nil
  L14_2 = L3_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end

attackTo = L26_1

function L26_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = {}
  L4_2.battleId = "number"
  L4_2.playerId = "number"
  L4_2.playerName = "string"
  L4_2.playerOwnerTeamID = "number"
  L5_2 = multiCheckValidityAssert
  L6_2 = {}
  L6_2.battleId = A0_2
  L6_2.playerId = A1_2
  L6_2.playerName = A2_2
  L6_2.playerOwnerTeamID = A3_2
  L7_2 = "wrong data"
  L8_2 = _NAME
  L9_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = printTable
  L6_2 = L20_1
  L5_2(L6_2)
  L5_2 = L1_1
  L5_2 = L5_2.getScene
  L6_2 = "Scenes.LiveBattle"
  L5_2 = L5_2(L6_2)
  L6_2 = tonumber
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = tonumber
  L8_2 = L5_2.battle_ID
  L7_2 = L7_2(L8_2)
  if L6_2 ~= L7_2 then
    L6_2 = errorLog
    L7_2 = "battle id not match server battle Id :"
    L8_2 = A0_2
    L6_2(L7_2, L8_2)
    L6_2 = errorLog
    L7_2 = "player battle ID :"
    L8_2 = L5_2.battle_ID
    L6_2(L7_2, L8_2)
    return
  end
  L6_2 = L1_1
  L6_2 = L6_2.getSceneName
  L7_2 = "current"
  L6_2 = L6_2(L7_2)
  if L6_2 ~= "Scenes.LiveBattle" then
    L6_2 = errorLog
    L7_2 = "mainPlayer is not in liveBattle Scene"
    L6_2(L7_2)
    return
  end
  L6_2 = mainPlayer
  L6_2 = L6_2.id
  if L6_2 == A1_2 then
    return
  end
  L6_2 = L5_2.playerJoinedTheBattle
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L6_2(L7_2, L8_2, L9_2)
end

playerJoinedTheBattle = L26_1

function L26_1(A0_2)
  local L1_2
  L21_1 = A0_2
end

ignoreMessage = L26_1

function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L22_1 = L1_2
  L1_2 = nil
  L15_1 = L1_2
  L1_2 = removeFromTable
  L2_2 = L20_1
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = -10
  L16_1 = L1_2
  L1_2 = -1
  L17_1 = L1_2
  L1_2 = nil
  L21_1 = L1_2
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = L1_1
  L1_2 = L1_2.gotoScene
  L2_2 = "Scenes.Home"
  L1_2(L2_2)
  L1_2 = showSimpleDialog
  L2_2 = L4_1
  L2_2 = L2_2.Error
  L3_2 = L4_1
  L3_2 = L3_2["Server Not Send Battle Finished"]
  L4_2 = L4_1
  L4_2 = L4_2.OK
  L1_2(L2_2, L3_2, L4_2)
end

removeBattles = L26_1

function L26_1()
  local L0_2, L1_2
  L22_1 = L0_2
end

removeTempRound = L26_1

function L26_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "name"
    L4_3 = A3_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L1_1
      L3_3 = L3_3.getScene
      L4_3 = "Scenes.LiveBattle"
      L3_3 = L3_3(L4_3)
      L4_3 = L3_3.heroAbilities
      if L4_3 then
        L4_3 = L3_3.heroAbilities
        L5_3 = L4_3
        L4_3 = L4_3.touchSuccessCallback
        L6_3 = A2_2
        L4_3(L5_3, L6_3)
      end
    end
  end
  
  L5_2 = {}
  L5_2.battle_id = A0_2
  L5_2.hero_id = A1_2
  L5_2.ability_type = A2_2
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = Constants
  L8_2 = L8_2.API_Path
  L9_2 = Constants
  L9_2 = L9_2.API_LiveBattleTriggerAbility
  L8_2 = L8_2 .. L9_2
  L9_2 = "POST"
  L10_2 = L4_2
  L11_2 = L6_2
  L12_2 = "trigger hero ability"
  L13_2 = nil
  L14_2 = A3_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end

triggerHeroAbility = L26_1
