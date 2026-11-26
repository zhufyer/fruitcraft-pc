local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "TestServer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "json"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Models.Player"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Models.UserCard"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Constants"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Utils.Analytics"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "composer"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Data.Avatars"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Models.ProfileManager"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Utils.Toolbox"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "plugin.gameanalytics_v2"
L10_1 = L10_1(L11_1)
L11_1 = 0
id = L11_1
L11_1 = false
defender = L11_1
L11_1 = 0
xpGain = L11_1
L11_1 = 0
goldGain = L11_1
L11_1 = 0
tribeGoldGain = L11_1
L11_1 = false
outcome = L11_1
L11_1 = 0
rankChange = L11_1
L11_1 = 0
levelChange = L11_1
L11_1 = 0
operationType = L11_1
L11_1 = false
attackingCards = L11_1
L11_1 = false
defendingCards = L11_1
L11_1 = false
giftCard = L11_1
L11_1 = L7_1.getAvatarByID
L12_1 = 1
L11_1 = L11_1(L12_1)
tempAvatar = L11_1
L11_1 = 0
cachedUsageCount = L11_1
L11_1 = nil
cachedBattleOpponents = L11_1
L11_1 = 5
maxCacheOpponentFetchCount = L11_1

function L11_1(A0_2, A1_2)
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
  return A1_2
end

new = L11_1
L11_1 = nil
L12_1 = nil

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L5_1
  L2_2 = L2_2.logEvent
  L3_2 = "Get Opponents Called"
  L2_2(L3_2)
  L11_1 = A0_2
  L12_1 = A1_2
  L2_2 = cachedUsageCount
  L3_2 = maxCacheOpponentFetchCount
  if L2_2 < L3_2 then
    L2_2 = cachedBattleOpponents
    if L2_2 ~= nil then
      L2_2 = cachedUsageCount
      L2_2 = L2_2 + 1
      cachedUsageCount = L2_2
      if A0_2 ~= nil then
        L2_2 = A0_2
        L3_2 = cachedBattleOpponents
        L4_2 = calculateScoutCost
        L4_2 = L4_2()
        L5_2 = false
        L2_2(L3_2, L4_2, L5_2)
        return
      end
  end
  else
    L2_2 = nil
    cachedBattleOpponents = L2_2
    L2_2 = 0
    cachedUsageCount = L2_2
  end
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "Get Opponents"
    L4_3 = A1_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = 1
      L4_3 = {}
      L5_3 = 200
      if L2_3 ~= nil then
        L6_3 = nil
        L7_3 = L2_3.players
        if L7_3 then
          L6_3 = L2_3.players
        else
          L6_3 = L2_3
        end
        L7_3 = false
        L8_3 = pairs
        L9_3 = L6_3
        L8_3, L9_3, L10_3 = L8_3(L9_3)
        for L11_3, L12_3 in L8_3, L9_3, L10_3 do
          L13_3 = L12_3.id
          if L13_3 ~= nil then
            L13_3 = L12_3.name
            if L13_3 ~= nil then
              L13_3 = L12_3.power_ratio
              if L13_3 ~= nil then
                L13_3 = L12_3.rank
                if L13_3 ~= nil then
                  L13_3 = L12_3.level
                  if L13_3 ~= nil then
                    L13_3 = L12_3.def_power
                    if L13_3 ~= nil then
                      L13_3 = L12_3.gold
                      if L13_3 ~= nil then
                        L13_3 = L12_3.tribe_name
                        if L13_3 ~= nil then
                          L13_3 = mainPlayer
                          L13_3 = L13_3.tribe
                          if L13_3 ~= nil then
                            L13_3 = L12_3.tribe_name
                            L14_3 = mainPlayer
                            L14_3 = L14_3.tribe
                            L14_3 = L14_3.name
                          end
                        end
                        if L13_3 ~= L14_3 then
                          L13_3 = L2_1
                          L14_3 = L13_3
                          L13_3 = L13_3.new
                          L13_3 = L13_3(L14_3)
                          L14_3 = L12_3.id
                          L13_3.id = L14_3
                          L14_3 = L12_3.name
                          L13_3.name = L14_3
                          L14_3 = tonumber
                          L15_3 = L12_3.status
                          L14_3 = L14_3(L15_3)
                          if L14_3 == 0 then
                            L13_3.statusNumber = 0
                            L13_3.status = "offline"
                          else
                            L14_3 = tonumber
                            L15_3 = L12_3.status
                            L14_3 = L14_3(L15_3)
                            if L14_3 == 1 then
                              L13_3.statusNumber = L3_3
                              L3_3 = L3_3 + 1
                              L13_3.status = "online"
                            else
                              L14_3 = tonumber
                              L15_3 = L12_3.status
                              L14_3 = L14_3(L15_3)
                              if L14_3 == 2 then
                                L13_3.statusNumber = 0
                                L13_3.status = "busy"
                              else
                                L13_3.statusNumber = 0
                              end
                            end
                          end
                          L14_3 = L12_3.gold
                          L13_3.gold = L14_3
                          L14_3 = L12_3.rank
                          L13_3.rank = L14_3
                          L14_3 = L12_3.league_id
                          L13_3.leagueId = L14_3
                          L14_3 = L12_3.league_rank
                          L13_3.leagueRank = L14_3
                          L14_3 = L12_3.level
                          L13_3.level = L14_3
                          L14_3 = L12_3.power_ratio
                          L13_3.powerRating = L14_3
                          L14_3 = math
                          L14_3 = L14_3.random
                          L15_3 = 1
                          L16_3 = 4
                          L14_3 = L14_3(L15_3, L16_3)
                          L13_3.weather = L14_3
                          L14_3 = L12_3.def_power
                          L13_3.defPower = L14_3
                          L14_3 = L7_1
                          L14_3 = L14_3.getAvatarByID
                          L15_3 = L12_3.avatar_id
                          L14_3 = L14_3(L15_3)
                          L13_3.avatar = L14_3
                          L14_3 = L12_3.tribe_name
                          if L14_3 then
                            L14_3 = L12_3.tribe_name
                            L13_3.tribeName = L14_3
                          end
                          L14_3 = table
                          L14_3 = L14_3.insert
                          L15_3 = L4_3
                          L16_3 = L13_3
                          L14_3(L15_3, L16_3)
                        end
                    end
                  end
                end
              end
            end
          end
          else
            L13_3 = log
            L14_3 = "Network error! The response did not contain proper values:"
            L15_3 = A0_3.response
            L14_3 = L14_3 .. L15_3
            L13_3(L14_3)
            L7_3 = true
          end
        end
        if L7_3 == true then
          L8_3 = #L4_3
          if L8_3 < 1 then
            L8_3 = A1_2
            if L8_3 ~= nil then
              L8_3 = A1_2
              L9_3 = "Response did not contain required fields"
              L8_3(L9_3)
            end
            return
          end
        end
        if L2_3 then
          L8_3 = L2_3.scout_cost
          if L8_3 then
            L5_3 = L2_3.scout_cost
          end
        end
      else
        L6_3 = log
        L7_3 = "Network error! The response did not contain proper values:"
        L8_3 = A0_3.response
        L7_3 = L7_3 .. L8_3
        L6_3(L7_3)
        L6_3 = A1_2
        if L6_3 ~= nil then
          L6_3 = A1_2
          L7_3 = "Response did not contain data field"
          L6_3(L7_3)
        end
        return
      end
      L6_3 = {}
      L7_3 = ipairs
      L8_3 = L4_3
      L7_3, L8_3, L9_3 = L7_3(L8_3)
      for L10_3, L11_3 in L7_3, L8_3, L9_3 do
        L12_3 = table
        L12_3 = L12_3.insert
        L13_3 = L6_3
        L14_3 = L11_3
        L12_3(L13_3, L14_3)
      end
      L7_3 = table
      L7_3 = L7_3.sort
      L8_3 = L6_3
      
      function L9_3(A0_4, A1_4)
        local L2_4, L3_4
        L2_4 = A0_4.defPower
        L3_4 = A1_4.defPower
        L2_4 = L2_4 > L3_4
        return L2_4
      end
      
      L7_3(L8_3, L9_3)
      L7_3 = ipairs
      L8_3 = L6_3
      L7_3, L8_3, L9_3 = L7_3(L8_3)
      for L10_3, L11_3 in L7_3, L8_3, L9_3 do
        L12_3 = #L6_3
        L12_3 = L12_3 / 4
        if L10_3 <= L12_3 then
          L11_3.powerRating = 4
        else
          L12_3 = #L6_3
          L12_3 = L12_3 / 4
          if L10_3 > L12_3 then
            L12_3 = #L6_3
            L12_3 = L12_3 / 4
            L12_3 = 2 * L12_3
            if L10_3 <= L12_3 then
              L11_3.powerRating = 3
          end
          else
            L12_3 = #L6_3
            L12_3 = L12_3 / 4
            L12_3 = 2 * L12_3
            if L10_3 > L12_3 then
              L12_3 = #L6_3
              L12_3 = L12_3 / 4
              L12_3 = 3 * L12_3
              if L10_3 <= L12_3 then
                L11_3.powerRating = 2
            end
            else
              L12_3 = #L6_3
              L12_3 = L12_3 / 4
              L12_3 = 3 * L12_3
              if L10_3 > L12_3 then
                L11_3.powerRating = 1
              end
            end
          end
        end
      end
      L7_3 = {}
      L8_3 = ipairs
      L9_3 = L4_3
      L8_3, L9_3, L10_3 = L8_3(L9_3)
      for L11_3, L12_3 in L8_3, L9_3, L10_3 do
        L13_3 = table
        L13_3 = L13_3.insert
        L14_3 = L7_3
        L15_3 = L12_3
        L13_3(L14_3, L15_3)
      end
      L8_3 = table
      L8_3 = L8_3.sort
      L9_3 = L7_3
      
      function L10_3(A0_4, A1_4)
        local L2_4, L3_4
        L2_4 = A0_4.statusNumber
        L3_4 = A1_4.statusNumber
        L2_4 = L2_4 > L3_4
        return L2_4
      end
      
      L8_3(L9_3, L10_3)
      cachedBattleOpponents = L7_3
      L8_3 = A0_2
      if L8_3 ~= nil then
        L8_3 = A0_2
        L9_3 = L7_3
        L10_3 = L5_3
        L11_3 = true
        L8_3(L9_3, L10_3, L11_3)
      end
    end
  end
  
  L3_2 = network
  L3_2 = L3_2.request
  L4_2 = L4_1
  L4_2 = L4_2.API_Path
  L5_2 = L4_1
  L5_2 = L5_2.API_FetchBattleOpponenet
  L4_2 = L4_2 .. L5_2
  L5_2 = "POST"
  L6_2 = L2_2
  L7_2 = nil
  L8_2 = "fetch battle oppenent"
  L9_2 = nil
  L10_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end

fetchBattleOpponent = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L5_1
  L2_2 = L2_2.logEvent
  L3_2 = "Scout Used"
  L2_2(L3_2)
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "Scout"
    L4_3 = A1_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = A0_2
      if L3_3 ~= nil then
        L3_3 = A0_2
        L3_3()
      end
    end
  end
  
  L3_2 = network
  L3_2 = L3_2.request
  L4_2 = L4_1
  L4_2 = L4_2.API_Path
  L5_2 = L4_1
  L5_2 = L5_2.API_Scout
  L4_2 = L4_2 .. L5_2
  L5_2 = "POST"
  L6_2 = L2_2
  L7_2 = nil
  L8_2 = "scout"
  L9_2 = nil
  L10_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end

scout = L13_1

function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = checkValidityAssert
  L4_2 = A0_2
  L5_2 = "newOperation, function needs to be called with a colon on an operation object"
  L6_2 = _NAME
  L7_2 = "table"
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L5_1
  L3_2 = L3_2.logEvent
  L4_2 = "Operation Initiated"
  L5_2 = {}
  L6_2 = A0_2.operationType
  L5_2.type = L6_2
  L3_2(L4_2, L5_2)
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "New Operation"
    
    function L4_3(A0_4)
      local L1_4, L2_4, L3_4
      L1_4 = A2_2
      L2_4 = A0_2
      L3_4 = A0_4
      L1_4(L2_4, L3_4)
    end
    
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L2_3.gold
      if L3_3 ~= nil then
        L3_3 = L2_3.outcome
        if L3_3 ~= nil then
          L3_3 = L2_3.level
          if L3_3 ~= nil then
            L3_3 = L2_3.rank
            if L3_3 ~= nil then
              L3_3 = L2_3.xp
              if L3_3 ~= nil then
                L3_3 = L2_3.attack_cards
                if L3_3 ~= nil then
                  L3_3 = A0_2
                  L3_3 = L3_3.operationType
                  if L3_3 ~= "quest" then
                    L3_3 = L2_3.opponent_cards
                    if L3_3 == nil then
                      goto lbl_592
                    end
                  end
                  L3_3 = L2_3.xp_added
                  if L3_3 ~= nil then
                    L3_3 = L2_3.gold_added
                    if L3_3 ~= nil then
                      L3_3 = L2_3.weekly_score
                      if L3_3 ~= nil then
                        L3_3 = mainPlayer
                        L4_3 = L2_3.weekly_score
                        L3_3.weeklyScore = L4_3
                      end
                      L3_3 = L2_3.score_added
                      if L3_3 ~= nil then
                        L3_3 = A0_2
                        L4_3 = L2_3.score_added
                        L3_3.scoreAdded = L4_3
                      end
                      L3_3 = A0_2
                      L4_3 = L2_3.gold_added
                      L3_3.goldGain = L4_3
                      L3_3 = mainPlayer
                      L4_3 = L2_3.gold
                      L3_3.gold = L4_3
                      L3_3 = A0_2
                      L4_3 = L2_3.outcome
                      L3_3.outcome = L4_3
                      L3_3 = A0_2
                      L4_3 = L2_3.boss_mode
                      L3_3.isBoss = L4_3
                      L3_3 = L2_3.league_rank
                      if L3_3 then
                        L3_3 = mainPlayer
                        L4_3 = L2_3.league_rank
                        L3_3.leagueRank = L4_3
                      end
                      L3_3 = L2_3.league_id
                      if L3_3 then
                        L3_3 = L2_3.league_id
                        if L3_3 ~= 0 then
                          L3_3 = mainPlayer
                          L4_3 = L2_3.league_id
                          L3_3.leagueId = L4_3
                        end
                      end
                      L3_3 = L2_3.medals
                      if L3_3 then
                        L3_3 = L8_1
                        L3_3 = L3_3.addToMedals
                        L4_3 = L2_3.medals
                        L3_3(L4_3)
                      end
                      L3_3 = A0_2
                      L4_3 = L2_3.rank
                      L5_3 = mainPlayer
                      L5_3 = L5_3.rank
                      L4_3 = L4_3 - L5_3
                      L3_3.rankChange = L4_3
                      L3_3 = log2
                      L4_3 = "Rank change"
                      L5_3 = L2_3.rank
                      L6_3 = mainPlayer
                      L6_3 = L6_3.rank
                      L5_3 = L5_3 - L6_3
                      L3_3(L4_3, L5_3)
                      L3_3 = mainPlayer
                      L4_3 = L2_3.rank
                      L3_3.rank = L4_3
                      L3_3 = L2_3.tribe_rank
                      if L3_3 then
                        L3_3 = mainPlayer
                        L3_3 = L3_3.tribe
                        if L3_3 then
                          L3_3 = mainPlayer
                          L3_3 = L3_3.tribe
                          L4_3 = L2_3.tribe_rank
                          L3_3.rank = L4_3
                        end
                      end
                      L3_3 = L2_3.league_rank
                      if L3_3 then
                        L3_3 = mainPlayer
                        L4_3 = L2_3.league_rank
                        L3_3.leagueRank = L4_3
                      end
                      L3_3 = L2_3.nectar
                      if L3_3 then
                        L3_3 = mainPlayer
                        L4_3 = L2_3.nectar
                        L3_3.nectar = L4_3
                      end
                      L3_3 = A0_2
                      L4_3 = L2_3.xp_added
                      L3_3.xpGain = L4_3
                      L3_3 = mainPlayer
                      L4_3 = L2_3.xp
                      L3_3.xp = L4_3
                      L3_3 = A0_2
                      L4_3 = L2_3.level
                      L5_3 = mainPlayer
                      L5_3 = L5_3.level
                      L4_3 = L4_3 - L5_3
                      L3_3.levelChange = L4_3
                      L3_3 = mainPlayer
                      L4_3 = L2_3.level
                      L3_3.level = L4_3
                      L3_3 = mainPlayer
                      L3_3 = L3_3.level
                      L4_3 = L2_3.level
                      if L3_3 < L4_3 then
                        L3_3 = L10_1
                        L3_3 = L3_3.addDesignEvent
                        L4_3 = {}
                        L5_3 = "lvl_"
                        L6_3 = mainPlayer
                        L6_3 = L6_3.level
                        L5_3 = L5_3 .. L6_3
                        L4_3.eventId = L5_3
                        L3_3(L4_3)
                        L3_3 = isAndroid
                        L3_3 = L3_3()
                        if not L3_3 then
                          L3_3 = isIOS
                          L3_3 = L3_3()
                          if not L3_3 then
                            goto lbl_180
                          end
                        end
                        L3_3 = todNative
                        L3_3 = L3_3.firebaseSDK
                        L4_3 = {}
                        L4_3.operation = "LogEvent"
                        L5_3 = "lvl_"
                        L6_3 = mainPlayer
                        L6_3 = L6_3.level
                        L5_3 = L5_3 .. L6_3
                        L4_3.eventName = L5_3
                        L4_3.paramKey = "level"
                        L5_3 = tostring
                        L6_3 = mainPlayer
                        L6_3 = L6_3.level
                        L5_3 = L5_3(L6_3)
                        L4_3.paramValue = L5_3
                        L3_3(L4_3)
                        ::lbl_180::
                        L3_3 = mainPlayer
                        L3_3 = L3_3.level
                        if L3_3 ~= 5 then
                          L3_3 = mainPlayer
                          L3_3 = L3_3.level
                          if L3_3 ~= 10 then
                            goto lbl_221
                          end
                        end
                        L3_3 = L10_1
                        L3_3 = L3_3.addDesignEvent
                        L4_3 = {}
                        L5_3 = "reached_level_"
                        L6_3 = mainPlayer
                        L6_3 = L6_3.level
                        L5_3 = L5_3 .. L6_3
                        L4_3.eventId = L5_3
                        L3_3(L4_3)
                        L3_3 = isAndroid
                        L3_3 = L3_3()
                        if not L3_3 then
                          L3_3 = isIOS
                          L3_3 = L3_3()
                          if not L3_3 then
                            goto lbl_221
                          end
                        end
                        L3_3 = todNative
                        L3_3 = L3_3.firebaseSDK
                        L4_3 = {}
                        L4_3.operation = "LogEvent"
                        L5_3 = "reached_level_"
                        L6_3 = mainPlayer
                        L6_3 = L6_3.level
                        L5_3 = L5_3 .. L6_3
                        L4_3.eventName = L5_3
                        L4_3.paramKey = "level"
                        L5_3 = tostring
                        L6_3 = mainPlayer
                        L6_3 = L6_3.level
                        L5_3 = L5_3(L6_3)
                        L4_3.paramValue = L5_3
                        L3_3(L4_3)
                      end
                      ::lbl_221::
                      L3_3 = A0_2
                      L3_3 = L3_3.levelChange
                      if 0 < L3_3 then
                        L3_3 = mainPlayer
                        L3_3 = L3_3.level
                        if L3_3 < 17 then
                          L3_3 = require
                          L4_3 = "Components.DataManager"
                          L3_3 = L3_3(L4_3)
                          L4_3 = L5_1
                          L4_3 = L4_3.logEvent
                          L5_3 = "Reached level "
                          L6_3 = mainPlayer
                          L6_3 = L6_3.level
                          L5_3 = L5_3 .. L6_3
                          L6_3 = {}
                          L7_3 = L3_3.moduleVersion
                          L8_3 = "TutorialData"
                          L7_3 = L7_3(L8_3)
                          L6_3.TutorialVersion = L7_3
                          L4_3(L5_3, L6_3)
                        end
                      end
                      L3_3 = mainPlayer
                      L3_3 = L3_3.tribe
                      if L3_3 then
                        L3_3 = L2_3.tribe_gold
                        if L3_3 then
                          L3_3 = A0_2
                          L4_3 = L2_3.tribe_gold
                          L5_3 = mainPlayer
                          L5_3 = L5_3.tribe
                          L5_3 = L5_3.gold
                          L4_3 = L4_3 - L5_3
                          L3_3.tribeGoldChage = L4_3
                          L3_3 = mainPlayer
                          L3_3 = L3_3.tribe
                          L4_3 = L2_3.tribe_gold
                          L3_3.gold = L4_3
                        end
                      end
                      L3_3 = L2_3.won_by_chance
                      if L3_3 then
                        L3_3 = log3
                        L4_3 = "Did won by chance:"
                        L5_3 = L2_3.won_by_chance
                        L3_3(L4_3, L5_3)
                      end
                      L3_3 = L2_3.total_quests
                      if L3_3 then
                        L3_3 = mainPlayer
                        L4_3 = L2_3.total_quests
                        L3_3.totalQuests = L4_3
                      end
                      L3_3 = L2_3.won_battle_num
                      if L3_3 then
                        L3_3 = mainPlayer
                        L4_3 = L2_3.won_battle_num
                        L3_3.wonBattleNum = L4_3
                      end
                      L3_3 = L2_3.lost_battle_num
                      if L3_3 then
                        L3_3 = mainPlayer
                        L4_3 = L2_3.lost_battle_num
                        L3_3.lostBattleNum = L4_3
                      end
                      L3_3 = L2_3.league_bonus
                      if L3_3 then
                        L3_3 = A0_2
                        L4_3 = L2_3.league_bonus
                        L3_3.leagueBonus = L4_3
                      end
                      L3_3 = L2_3.gift_potion
                      if L3_3 then
                        L3_3 = A0_2
                        L4_3 = L2_3.gift_potion
                        L3_3.giftPotion = L4_3
                      end
                      L3_3 = L2_3.gift_nectar
                      if L3_3 then
                        L3_3 = A0_2
                        L4_3 = L2_3.gift_nectar
                        L3_3.giftNectar = L4_3
                      end
                      L3_3 = L2_3.potion_price
                      if L3_3 then
                        L3_3 = mainPlayer
                        L4_3 = L2_3.potion_price
                        L3_3.potionPrice = L4_3
                      end
                      L3_3 = L2_3.nectar_price
                      if L3_3 then
                        L3_3 = mainPlayer
                        L4_3 = L2_3.nectar_price
                        L3_3.nectarPrice = L4_3
                      end
                      L3_3 = L2_3.q
                      if L3_3 then
                        L3_3 = mainPlayer
                        L4_3 = L2_3.q
                        L3_3.q = L4_3
                      else
                        L3_3 = errorLog
                        L4_3 = "Operation response did not include q, main player q set to zero"
                        L3_3(L4_3)
                        L3_3 = mainPlayer
                        L3_3.q = 0
                      end
                      L3_3 = pairs
                      L4_3 = L2_3.attack_cards
                      L3_3, L4_3, L5_3 = L3_3(L4_3)
                      for L6_3, L7_3 in L3_3, L4_3, L5_3 do
                        L8_3 = mainPlayer
                        L8_3 = L8_3.cards
                        L9_3 = L7_3.id
                        L8_3 = L8_3[L9_3]
                        L9_3 = L8_3
                        L8_3 = L8_3.setLastUsageDate
                        L10_3 = L7_3.last_used_at
                        L8_3(L9_3, L10_3)
                      end
                      L3_3 = L2_3.purchase_deposits_to_bank
                      if L3_3 ~= nil then
                        L3_3 = mainPlayer
                        L4_3 = L2_3.purchase_deposits_to_bank
                        L3_3.depositsPurchaseToBank = L4_3
                      end
                      L3_3 = L2_3.opponent_cards
                      if L3_3 then
                        L3_3 = A0_2
                        L4_3 = {}
                        L3_3.defendingCards = L4_3
                        L3_3 = pairs
                        L4_3 = L2_3.opponent_cards
                        L3_3, L4_3, L5_3 = L3_3(L4_3)
                        for L6_3, L7_3 in L3_3, L4_3, L5_3 do
                          L8_3 = A0_2
                          L8_3 = L8_3.defendingCards
                          L9_3 = L7_3.id
                          L10_3 = L3_1
                          L11_3 = L10_3
                          L10_3 = L10_3.new
                          L12_3 = L7_3
                          L10_3 = L10_3(L11_3, L12_3)
                          L8_3[L9_3] = L10_3
                        end
                      end
                      L3_3 = A0_2
                      L4_3 = {}
                      L3_3.attackerComboCardData = L4_3
                      L3_3 = A0_2
                      L4_3 = {}
                      L3_3.defenderComboCardData = L4_3
                      L3_3 = A0_2
                      L3_3.newComboDiscovered = false
                      L3_3 = A0_2
                      L3_3.newComboCount = 0
                      L3_3 = L2_3.attacker_combo_info
                      if L3_3 then
                        L3_3 = pairs
                        L4_3 = L2_3.attacker_combo_info
                        L3_3, L4_3, L5_3 = L3_3(L4_3)
                        for L6_3, L7_3 in L3_3, L4_3, L5_3 do
                          L8_3 = A0_2
                          L8_3 = L8_3.attackerComboCardData
                          L8_3[L6_3] = L7_3
                          L8_3 = L9_1
                          L8_3 = L8_3.doesElementExist
                          L9_3 = L7_3.id
                          L10_3 = mainPlayer
                          L10_3 = L10_3.availableIdsOfComboSet
                          L8_3 = L8_3(L9_3, L10_3)
                          if not L8_3 then
                            L8_3 = table
                            L8_3 = L8_3.insert
                            L9_3 = mainPlayer
                            L9_3 = L9_3.availableIdsOfComboSet
                            L10_3 = L7_3.id
                            L8_3(L9_3, L10_3)
                            L8_3 = A0_2
                            L8_3.newComboDiscovered = true
                            L8_3 = A0_2
                            L9_3 = A0_2
                            L9_3 = L9_3.newComboCount
                            L9_3 = L9_3 + 1
                            L8_3.newComboCount = L9_3
                          end
                        end
                      end
                      L3_3 = L2_3.available_combo_id_set
                      if L3_3 then
                        L3_3 = pairs
                        L4_3 = L2_3.available_combo_id_set
                        L3_3, L4_3, L5_3 = L3_3(L4_3)
                        for L6_3, L7_3 in L3_3, L4_3, L5_3 do
                          L8_3 = table
                          L8_3 = L8_3.insert
                          L9_3 = mainPlayer
                          L9_3 = L9_3.availableIdsOfComboSet
                          L10_3 = L7_3
                          L8_3(L9_3, L10_3)
                        end
                      end
                      L3_3 = L2_3.defender_combo_info
                      if L3_3 then
                        L3_3 = pairs
                        L4_3 = L2_3.defender_combo_info
                        L3_3, L4_3, L5_3 = L3_3(L4_3)
                        for L6_3, L7_3 in L3_3, L4_3, L5_3 do
                          L8_3 = A0_2
                          L8_3 = L8_3.defenderComboCardData
                          L8_3[L6_3] = L7_3
                        end
                      end
                      L3_3 = L2_3.potion_number
                      if L3_3 then
                        L3_3 = mainPlayer
                        L4_3 = L2_3.potion_number
                        L3_3.potionAmount = L4_3
                      end
                      L3_3 = A0_2
                      L4_3 = {}
                      L3_3.attackerHeroData = L4_3
                      L3_3 = L2_3.attacker_hero_benefits_info
                      if L3_3 then
                        L3_3 = A0_2
                        L3_3 = L3_3.attackerHeroData
                        L4_3 = {}
                        L3_3.affectedCardsInfo = L4_3
                        L3_3 = L2_3.attacker_hero_benefits_info
                        L3_3 = L3_3.cards
                        if L3_3 then
                          L3_3 = pairs
                          L4_3 = L2_3.attacker_hero_benefits_info
                          L4_3 = L4_3.cards
                          L3_3, L4_3, L5_3 = L3_3(L4_3)
                          for L6_3, L7_3 in L3_3, L4_3, L5_3 do
                            L8_3 = A0_2
                            L8_3 = L8_3.attackerHeroData
                            L8_3 = L8_3.affectedCardsInfo
                            L8_3[L6_3] = L7_3
                          end
                        end
                        L3_3 = A0_2
                        L3_3 = L3_3.attackerHeroData
                        L4_3 = L2_3.attacker_hero_benefits_info
                        L4_3 = L4_3.power_benefit
                        L3_3.powerBenefit = L4_3
                        L3_3 = A0_2
                        L3_3 = L3_3.attackerHeroData
                        L4_3 = L2_3.attacker_hero_benefits_info
                        L4_3 = L4_3.gold_benefit
                        L3_3.goldBenefit = L4_3
                        L3_3 = A0_2
                        L3_3 = L3_3.attackerHeroData
                        L4_3 = L2_3.attacker_hero_benefits_info
                        L4_3 = L4_3.cooldown_benefit
                        L3_3.cooldownBenefit = L4_3
                      end
                      L3_3 = A0_2
                      L4_3 = {}
                      L3_3.defenderHeroData = L4_3
                      L3_3 = L2_3.defender_hero_benefits_info
                      if L3_3 then
                        L3_3 = A0_2
                        L3_3 = L3_3.defenderHeroData
                        L4_3 = {}
                        L3_3.affectedCardsInfo = L4_3
                        L3_3 = L2_3.defender_hero_benefits_info
                        L3_3 = L3_3.cards
                        if L3_3 then
                          L3_3 = pairs
                          L4_3 = L2_3.defender_hero_benefits_info
                          L4_3 = L4_3.cards
                          L3_3, L4_3, L5_3 = L3_3(L4_3)
                          for L6_3, L7_3 in L3_3, L4_3, L5_3 do
                            L8_3 = A0_2
                            L8_3 = L8_3.defenderHeroData
                            L8_3 = L8_3.affectedCardsInfo
                            L8_3[L6_3] = L7_3
                          end
                        end
                      end
                      L3_3 = A0_2
                      L4_3 = L2_3.attack_bonus_power
                      if not L4_3 then
                        L4_3 = 0
                      end
                      L3_3.attackBonusPower = L4_3
                      L3_3 = A0_2
                      L4_3 = L2_3.def_bonus_power
                      if not L4_3 then
                        L4_3 = 0
                      end
                      L3_3.defenceBonusPower = L4_3
                      L3_3 = A0_2
                      L4_3 = math
                      L4_3 = L4_3.floor
                      L5_3 = A0_2
                      L5_3 = L5_3.attackBonusPower
                      L4_3 = L4_3(L5_3)
                      L3_3.attackBonusPower = L4_3
                      L3_3 = A0_2
                      L4_3 = math
                      L4_3 = L4_3.floor
                      L5_3 = A0_2
                      L5_3 = L5_3.defenceBonusPower
                      L4_3 = L4_3(L5_3)
                      L3_3.defenceBonusPower = L4_3
                      L3_3 = L2_3.gift_card
                      if L3_3 then
                        L3_3 = mainPlayer
                        L3_3 = L3_3.cards
                        L4_3 = L2_3.gift_card
                        L4_3 = L4_3.id
                        L5_3 = L3_1
                        L6_3 = L5_3
                        L5_3 = L5_3.new
                        L7_3 = L2_3.gift_card
                        L5_3 = L5_3(L6_3, L7_3)
                        L3_3[L4_3] = L5_3
                        L3_3 = A0_2
                        L4_3 = mainPlayer
                        L4_3 = L4_3.cards
                        L5_3 = L2_3.gift_card
                        L5_3 = L5_3.id
                        L4_3 = L4_3[L5_3]
                        L3_3.giftCard = L4_3
                      else
                        L3_3 = A0_2
                        L3_3.giftCard = nil
                      end
                      L3_3 = L2_3.tutorial_required_cards
                      if L3_3 then
                        L3_3 = ipairs
                        L4_3 = L2_3.tutorial_required_cards
                        L3_3, L4_3, L5_3 = L3_3(L4_3)
                        for L6_3, L7_3 in L3_3, L4_3, L5_3 do
                          L8_3 = mainPlayer
                          L8_3 = L8_3.cards
                          L9_3 = L7_3.id
                          L10_3 = L3_1
                          L11_3 = L10_3
                          L10_3 = L10_3.new
                          L12_3 = L7_3
                          L10_3 = L10_3(L11_3, L12_3)
                          L8_3[L9_3] = L10_3
                          L8_3 = mainPlayer
                          L9_3 = L8_3
                          L8_3 = L8_3.setSettingForKey
                          L10_3 = "tutorialRequiredCardID"
                          L11_3 = L7_3.id
                          L8_3(L9_3, L10_3, L11_3)
                          L8_3 = mainPlayer
                          L9_3 = L8_3
                          L8_3 = L8_3.saveSettings
                          L8_3(L9_3)
                        end
                      else
                        L3_3 = mainPlayer
                        L4_3 = L3_3
                        L3_3 = L3_3.setSettingForKey
                        L5_3 = "tutorialRequiredCardID"
                        L6_3 = nil
                        L3_3(L4_3, L5_3, L6_3)
                        L3_3 = mainPlayer
                        L4_3 = L3_3
                        L3_3 = L3_3.saveSettings
                        L3_3(L4_3)
                      end
                  end
                end
              end
            end
          end
        end
      end
      else
        ::lbl_592::
        L3_3 = log
        L4_3 = "Network error! The response did not contain proper values:"
        L5_3 = A0_3.response
        L4_3 = L4_3 .. L5_3
        L3_3(L4_3)
        L3_3 = A2_2
        if L3_3 ~= nil then
          L3_3 = A2_2
          L4_3 = A0_2
          L5_3 = "Response did not contain required fields"
          L3_3(L4_3, L5_3)
        end
        return
      end
      L3_3 = A1_2
      if L3_3 ~= nil then
        L3_3 = A1_2
        L4_3 = A0_2
        L3_3(L4_3)
      end
    end
  end
  
  L4_2 = {}
  L5_2 = ""
  L6_2 = ""
  L7_2 = A0_2.operationType
  if L7_2 == "battle" then
    L7_2 = L4_1
    L7_2 = L7_2.Player_OpponentIdKey
    L8_2 = A0_2.defender
    L8_2 = L8_2.id
    L4_2[L7_2] = L8_2
    L7_2 = L4_1
    L7_2 = L7_2.Player_AttacksInTodayKey
    L8_2 = A0_2.defender
    L8_2 = L8_2.attacksInToday
    L4_2[L7_2] = L8_2
    L7_2 = {}
    L8_2 = pairs
    L9_2 = A0_2.attackingCards
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    for L11_2, L12_2 in L8_2, L9_2, L10_2 do
      L13_2 = table
      L13_2 = L13_2.insert
      L14_2 = L7_2
      L15_2 = L12_2.id
      L13_2(L14_2, L15_2)
    end
    L8_2 = L4_1
    L8_2 = L8_2.Player_CardsKey
    L9_2 = L1_1
    L9_2 = L9_2.encode
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    L4_2[L8_2] = L9_2
    L8_2 = L4_1
    L8_2 = L8_2.API_Path
    L9_2 = L4_1
    L9_2 = L9_2.API_Battle
    L6_2 = L8_2 .. L9_2
  else
    L7_2 = A0_2.operationType
    if L7_2 == "quest" then
      L7_2 = {}
      L8_2 = pairs
      L9_2 = A0_2.attackingCards
      L8_2, L9_2, L10_2 = L8_2(L9_2)
      for L11_2, L12_2 in L8_2, L9_2, L10_2 do
        L13_2 = table
        L13_2 = L13_2.insert
        L14_2 = L7_2
        L15_2 = L12_2.id
        L13_2(L14_2, L15_2)
      end
      L8_2 = L4_1
      L8_2 = L8_2.Player_CardsKey
      L9_2 = L1_1
      L9_2 = L9_2.encode
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L4_2[L8_2] = L9_2
      L8_2 = L4_1
      L8_2 = L8_2.API_Path
      L9_2 = L4_1
      L9_2 = L9_2.API_Quest
      L6_2 = L8_2 .. L9_2
      L8_2 = log3
      L9_2 = "~~~~ Post data for quest:"
      L10_2 = L5_2
      L8_2(L9_2, L10_2)
    end
  end
  L7_2 = A0_2.heroId
  if L7_2 then
    L7_2 = A0_2.heroId
    L4_2.hero_id = L7_2
  end
  L7_2 = require
  L8_2 = "crypto"
  L7_2 = L7_2(L8_2)
  L8_2 = L4_1
  L8_2 = L8_2.Player_QKey
  L9_2 = L7_2.digest
  L10_2 = L7_2.md5
  L11_2 = ""
  L12_2 = mainPlayer
  L12_2 = L12_2.q
  L11_2 = L11_2 .. L12_2
  L12_2 = false
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L4_2[L8_2] = L9_2
  L8_2 = {}
  L8_2.body = L4_2
  L9_2 = network
  L9_2 = L9_2.getDefaultHeader
  L9_2 = L9_2()
  L8_2.headers = L9_2
  L9_2 = network
  L9_2 = L9_2.request
  L10_2 = L6_2
  L11_2 = "POST"
  L12_2 = L3_2
  L13_2 = L8_2
  L14_2 = "new operation"
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
end

newOperation = L13_1

function L13_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = mainPlayer
  L0_2 = L0_2.totalQuests
  L1_2 = L4_1
  L1_2 = L1_2.Quest_BossStep
  L0_2 = L0_2 / L1_2
  L1_2 = math
  L1_2 = L1_2.modf
  L2_2 = L0_2
  L1_2, L2_2 = L1_2(L2_2)
  if L2_2 == 0 then
    L3_2 = true
    return L3_2
  end
  L3_2 = false
  return L3_2
end

isBossQuest = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = 1
  end
  L3_2 = mainPlayer
  L3_2 = L3_2.level
  if L3_2 < 80 then
    L3_2 = math
    L3_2 = L3_2.floor
    L4_2 = L4_1
    L4_2 = L4_2.Quest_InitialQuestPower
    L5_2 = L4_1
    L5_2 = L5_2.Quest_InitialQuestGold
    L6_2 = mainPlayer
    L6_2 = L6_2.q
    L5_2 = L5_2 * L6_2
    L6_2 = mainPlayer
    L6_2 = L6_2.q
    L7_2 = mainPlayer
    L7_2 = L7_2.q
    L7_2 = L7_2 - 1
    L6_2 = L6_2 * L7_2
    L6_2 = L6_2 / 80
    L5_2 = L5_2 + L6_2
    L6_2 = L4_1
    L6_2 = L6_2.Quest_CostPerPowerRatio
    L5_2 = L5_2 / L6_2
    L4_2 = L4_2 + L5_2
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2 * L2_2
    L1_2.realPower = L3_2
  else
    L3_2 = math
    L3_2 = L3_2.max
    L4_2 = L4_1
    L4_2 = L4_2.Quest_DefenceMin
    L5_2 = math
    L5_2 = L5_2.floor
    L6_2 = L4_1
    L6_2 = L6_2.Quest_Coef
    L7_2 = math
    L7_2 = L7_2.pow
    L8_2 = mainPlayer
    L8_2 = L8_2.q
    L9_2 = L4_1
    L9_2 = L9_2.Quest_Exponent
    L7_2 = L7_2(L8_2, L9_2)
    L6_2 = L6_2 * L7_2
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L1_2.realPower = L3_2
  end
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = 0
  L5_2 = L1_2.realPower
  L6_2 = math
  L6_2 = L6_2.random
  L7_2 = 10
  L8_2 = 20
  L6_2 = L6_2(L7_2, L8_2)
  L5_2 = L5_2 - L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L1_2.minPower = L3_2
  L3_2 = L1_2.realPower
  L4_2 = math
  L4_2 = L4_2.random
  L5_2 = 10
  L6_2 = 20
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 + L4_2
  L1_2.maxPower = L3_2
  L3_2 = isBossQuest
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = L4_1
    L3_2 = L3_2.Quest_BossPowerMultiplier
    L4_2 = L1_2.realPower
    L3_2 = L3_2 * L4_2
    L1_2.realPower = L3_2
    L3_2 = L4_1
    L3_2 = L3_2.Quest_BossPowerMultiplier
    L4_2 = L1_2.minPower
    L3_2 = L3_2 * L4_2
    L1_2.minPower = L3_2
    L3_2 = L4_1
    L3_2 = L3_2.Quest_BossPowerMultiplier
    L4_2 = L1_2.maxPower
    L3_2 = L3_2 * L4_2
    L1_2.maxPower = L3_2
  end
  return L1_2
end

getQuestPower = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = tostring
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = system
  L2_2 = L2_2.pathForFile
  L3_2 = L4_1
  L3_2 = L3_2.Path_AttacksInTodayFile
  L4_2 = system
  L4_2 = L4_2.DocumentsDirectory
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = nil
  L4_2 = io
  L4_2 = L4_2.open
  L5_2 = L2_2
  L6_2 = "r+"
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L4_2
  if L3_2 == nil then
    L4_2 = io
    L4_2 = L4_2.open
    L5_2 = L2_2
    L6_2 = "w+"
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  L5_2 = L3_2
  L4_2 = L3_2.read
  L6_2 = "*a"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L1_1
  L5_2 = L5_2.decode
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = io
  L6_2 = L6_2.close
  L7_2 = L3_2
  L6_2(L7_2)
  L6_2 = os
  L6_2 = L6_2.date
  L7_2 = "*t"
  L6_2 = L6_2(L7_2)
  if L5_2 ~= nil then
    L7_2 = L5_2.date
    L7_2 = L7_2.year
    L8_2 = L6_2.year
    if L7_2 == L8_2 then
      L7_2 = L5_2.date
      L7_2 = L7_2.month
      L8_2 = L6_2.month
      if L7_2 == L8_2 then
        L7_2 = L5_2.date
        L7_2 = L7_2.day
        L8_2 = L6_2.day
        if L7_2 == L8_2 then
          goto lbl_73
        end
      end
    end
  end
  L7_2 = {}
  L5_2 = L7_2
  L7_2 = {}
  L5_2.data = L7_2
  L7_2 = {}
  L5_2.date = L7_2
  L7_2 = L5_2.date
  L8_2 = L6_2.year
  L7_2.year = L8_2
  L7_2 = L5_2.date
  L8_2 = L6_2.month
  L7_2.month = L8_2
  L7_2 = L5_2.date
  L8_2 = L6_2.day
  L7_2.day = L8_2
  ::lbl_73::
  L7_2 = L5_2.data
  L7_2 = L7_2[L1_2]
  if L7_2 == nil then
    L7_2 = L5_2.data
    L7_2[L1_2] = 1
  else
    L7_2 = L5_2.data
    L8_2 = L5_2.data
    L8_2 = L8_2[L1_2]
    L8_2 = L8_2 + 1
    L7_2[L1_2] = L8_2
  end
  L7_2 = io
  L7_2 = L7_2.open
  L8_2 = L2_2
  L9_2 = "w"
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = L7_2
  L8_2 = L7_2.write
  L10_2 = L1_1
  L10_2 = L10_2.encode
  L11_2 = L5_2
  L10_2, L11_2 = L10_2(L11_2)
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = io
  L8_2 = L8_2.close
  L9_2 = L7_2
  L8_2(L9_2)
  L7_2 = nil
end

setAttacksInTodayForOpponent = L13_1

function L13_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = math
  L0_2 = L0_2.floor
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = mainPlayer
  L2_2 = L2_2.q
  L3_2 = L4_1
  L3_2 = L3_2.Scout_CostRelCoef
  L2_2 = L2_2 * L3_2
  L3_2 = L4_1
  L3_2 = L3_2.Scout_CostMax
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L4_1
  L2_2 = L2_2.Scout_CostBase
  L1_2 = L1_2 + L2_2
  return L0_2(L1_2)
end

calculateScoutCost = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  attackInTodayArray = L1_2
  L1_2 = system
  L1_2 = L1_2.pathForFile
  L2_2 = L4_1
  L2_2 = L2_2.Path_AttacksInTodayFile
  L3_2 = system
  L3_2 = L3_2.DocumentsDirectory
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = io
  L2_2 = L2_2.open
  L3_2 = L1_2
  L4_2 = "r+"
  L2_2 = L2_2(L3_2, L4_2)
  file = L2_2
  L2_2 = file
  if L2_2 == nil then
    L2_2 = io
    L2_2 = L2_2.open
    L3_2 = L1_2
    L4_2 = "w+"
    L2_2 = L2_2(L3_2, L4_2)
    file = L2_2
  end
  L2_2 = file
  L3_2 = L2_2
  L2_2 = L2_2.read
  L4_2 = "*a"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = io
  L3_2 = L3_2.close
  L4_2 = file
  L3_2(L4_2)
  L3_2 = L1_1
  L3_2 = L3_2.decode
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = log3
  L5_2 = L2_2
  L4_2(L5_2)
  L4_2 = pairs
  L5_2 = A0_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = tostring
    L10_2 = L8_2.id
    L9_2 = L9_2(L10_2)
    if L3_2 ~= nil then
      L10_2 = L3_2.data
      L10_2 = L10_2[L9_2]
      if L10_2 ~= nil then
        L10_2 = L3_2.data
        L10_2 = L10_2[L9_2]
        L8_2.attacksInToday = L10_2
      else
        L8_2.attacksInToday = 0
      end
    else
      L8_2.attacksInToday = 0
    end
  end
end

opponentArrayAttackInToday = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L1_2.id = A0_2
  L2_2 = opponentArrayAttackInToday
  L3_2 = {}
  L4_2 = L1_2
  L3_2[1] = L4_2
  L2_2(L3_2)
  L2_2 = L1_2.attacksInToday
  return L2_2
end

getAttackInTodayToOpponentWithId = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = cachedBattleOpponents
  if L2_2 == nil then
    return
  end
  L2_2 = pairs
  L3_2 = cachedBattleOpponents
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = cachedBattleOpponents
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.id
    L7_2 = L7_2(L8_2)
    L8_2 = tonumber
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if L7_2 == L8_2 then
      if A1_2 == 1 then
        L7_2 = cachedBattleOpponents
        L7_2 = L7_2[L5_2]
        L7_2.status = "online"
      elseif A1_2 == 2 then
        L7_2 = cachedBattleOpponents
        L7_2 = L7_2[L5_2]
        L7_2.status = "busy"
      elseif A1_2 == 4 then
        L7_2 = cachedBattleOpponents
        L7_2 = L7_2[L5_2]
        L7_2.status = "shield"
      else
        L7_2 = cachedBattleOpponents
        L7_2 = L7_2[L5_2]
        L7_2.status = "offline"
      end
    end
  end
  L2_2 = L6_1
  L2_2 = L2_2.getSceneName
  L3_2 = "current"
  L2_2 = L2_2(L3_2)
  if L2_2 == "Scenes.Battle" then
    L2_2 = L6_1
    L2_2 = L2_2.getScene
    L3_2 = "Scenes.Battle"
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.changeStatus
    L4_2 = A0_2
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end

changeStatus = L13_1

function L13_1()
  local L0_2, L1_2
  cachedBattleOpponents = L0_2
end

clearCachedBattleOpponents = L13_1
