local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Utils.Analytics"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Data.Avatars"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "TestServer"
L2_1 = L2_1(L3_1)
TestServer = L2_1
L2_1 = require
L3_1 = "json"
L2_1 = L2_1(L3_1)
json = L2_1
L2_1 = require
L3_1 = "Models.Player"
L2_1 = L2_1(L3_1)
playerModel = L2_1
L2_1 = require
L3_1 = "Models.Tribe"
L2_1 = L2_1(L3_1)
tribeModel = L2_1
L2_1 = require
L3_1 = "Models.ErrorController"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "composer"
L3_1 = L3_1(L4_1)
L4_1 = 0
id = L4_1
L4_1 = false
item = L4_1
L4_1 = 0
rank = L4_1
L4_1 = 0
leagueRising = L4_1
L4_1 = 9000000
leagueFalling = L4_1

function L4_1(A0_2, A1_2)
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

new = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3
    L1_3 = A0_3.isError
    if L1_3 then
      L1_3 = log
      L2_3 = "Network error! Failed to fetch ranks"
      L1_3(L2_3)
      L1_3 = A3_2
      if L1_3 ~= nil then
        L1_3 = A3_2
        L2_3 = "Network error"
        L1_3(L2_3)
      end
    else
      L1_3 = json
      L1_3 = L1_3.decode
      L2_3 = A0_3.response
      L1_3 = L1_3(L2_3)
      if L1_3 == nil then
        L2_3 = log
        L3_3 = "Network error! Response was not a JSON"
        L2_3(L3_3)
        L2_3 = A3_2
        if L2_3 ~= nil then
          L2_3 = A3_2
          L3_3 = "Temporary issue with server, please try again later. If problem persists be sure to let us know."
          L2_3(L3_3)
        end
        return
      end
      L2_3 = L1_3.status
      if L2_3 == true then
        L2_3 = L1_3.data
        L3_3 = {}
        L4_3 = nil
        L5_3 = L2_3.max_round
        if L5_3 ~= nil then
          L4_3 = L2_3.max_round
        else
          L5_3 = log
          L6_3 = "Network error! The response did not contain a data field"
          L7_3 = A0_3.response
          L6_3 = L6_3 .. L7_3
          L5_3(L6_3)
          L5_3 = A3_2
          if L5_3 ~= nil then
            L5_3 = A3_2
            L6_3 = L1_3.error
            if not L6_3 then
              L6_3 = "Response did not contain a data field"
            end
            L5_3(L6_3)
          end
          return
        end
        L5_3 = L2_3.player_ranking
        if L5_3 then
          L5_3 = pairs
          L6_3 = L2_3.player_ranking
          L5_3, L6_3, L7_3 = L5_3(L6_3)
          for L8_3, L9_3 in L5_3, L6_3, L7_3 do
            L10_3 = {}
            L11_3 = pairs
            L12_3 = L9_3
            L11_3, L12_3, L13_3 = L11_3(L12_3)
            for L14_3, L15_3 in L11_3, L12_3, L13_3 do
              L16_3 = {}
              L17_3 = ipairs
              L18_3 = L15_3
              L17_3, L18_3, L19_3 = L17_3(L18_3)
              for L20_3, L21_3 in L17_3, L18_3, L19_3 do
                L22_3 = playerModel
                L23_3 = L22_3
                L22_3 = L22_3.new
                L22_3 = L22_3(L23_3)
                L23_3 = L21_3.player_id
                if L23_3 ~= nil then
                  L23_3 = L21_3.name
                  if L23_3 ~= nil then
                    L23_3 = L21_3.level
                    if L23_3 ~= nil then
                      L23_3 = L21_3.player_id
                      L22_3.id = L23_3
                      L23_3 = L21_3.name
                      L22_3.name = L23_3
                      L23_3 = L21_3.xp
                      L22_3.xp = L23_3
                      L23_3 = tonumber
                      L24_3 = L21_3.level
                      L23_3 = L23_3(L24_3)
                      L22_3.level = L23_3
                      L23_3 = L21_3.rank
                      if L23_3 ~= nil then
                        L23_3 = L21_3.rank
                        L22_3.leagueRank = L23_3
                      end
                      L23_3 = L21_3.final_score
                      if L23_3 ~= nil then
                        L23_3 = L21_3.final_score
                        L22_3.overallScore = L23_3
                      end
                      L23_3 = L21_3.weekly_score
                      if L23_3 ~= nil then
                        L23_3 = L21_3.weekly_score
                        L22_3.weeklyScore = L23_3
                      end
                      L23_3 = L21_3.drank
                      if L23_3 ~= nil then
                        L23_3 = L21_3.drank
                        L22_3.xp = L23_3
                      end
                      L23_3 = L21_3.tribe_name
                      if L23_3 ~= nil then
                        L23_3 = L21_3.tribe_name
                        L22_3.tribeName = L23_3
                      end
                      L23_3 = table
                      L23_3 = L23_3.insert
                      L24_3 = L16_3
                      L25_3 = L22_3
                      L23_3(L24_3, L25_3)
                  end
                end
                else
                  L23_3 = log
                  L24_3 = "Network error! The response did not contain proper values:"
                  L25_3 = A0_3.response
                  L24_3 = L24_3 .. L25_3
                  L23_3(L24_3)
                  L23_3 = A3_2
                  if L23_3 ~= nil then
                    L23_3 = A3_2
                    L24_3 = "Response did not contain required fields"
                    L23_3(L24_3)
                  end
                  return
                end
              end
              L10_3[L14_3] = L16_3
            end
            L11_3 = log3
            L12_3 = " maxRound - k1 is : "
            L13_3 = tonumber
            L14_3 = L8_3
            L13_3 = L13_3(L14_3)
            L13_3 = L4_3 - L13_3
            L11_3(L12_3, L13_3)
            L3_3[L8_3] = L10_3
          end
          L5_3 = log3
          L6_3 = " encoded league history data is : "
          L7_3 = json
          L7_3 = L7_3.encode
          L8_3 = L3_3
          L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3 = L7_3(L8_3)
          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
        else
          L5_3 = log
          L6_3 = "Network error! The response did not contain a data field"
          L7_3 = A0_3.response
          L6_3 = L6_3 .. L7_3
          L5_3(L6_3)
          L5_3 = A3_2
          if L5_3 ~= nil then
            L5_3 = A3_2
            L6_3 = L1_3.error
            if not L6_3 then
              L6_3 = "Response did not contain a data field"
            end
            L5_3(L6_3)
          end
          return
        end
        L5_3 = A2_2
        L6_3 = A1_2
        L7_3 = L3_3
        L8_3 = L4_3
        L5_3(L6_3, L7_3, L8_3)
      else
        L2_3 = log
        L3_3 = "Network error! The response did not return 'true' status"
        L4_3 = A0_3.response
        L3_3 = L3_3 .. L4_3
        L2_3(L3_3)
        L2_3 = L1_3.data
        if L2_3 then
          L2_3 = L1_3.data
          L2_3 = L2_3.code
          if L2_3 then
            L2_3 = L2_1
            L2_3 = L2_3.getErrorMessage
            L3_3 = L1_3.data
            L2_3 = L2_3(L3_3)
            if not L2_3 then
              L2_3 = tostring
              L3_3 = L1_3.data
              L3_3 = L3_3.code
              L2_3 = L2_3(L3_3)
            end
            L1_3.error = L2_3
          end
        end
        L2_3 = A3_2
        if L2_3 ~= nil then
          L2_3 = A3_2
          L3_3 = L1_3.error
          if not L3_3 then
            L3_3 = "Response did not return success status"
          end
          L2_3(L3_3)
        end
        return
      end
    end
  end
  
  L5_2 = {}
  L6_2 = {}
  L7_2 = pairs
  L8_2 = A0_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = table
    L12_2 = L12_2.insert
    L13_2 = L6_2
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
  end
  L7_2 = Constants
  L7_2 = L7_2.League_Rounds
  L8_2 = json
  L8_2 = L8_2.encode
  L9_2 = L6_2
  L8_2 = L8_2(L9_2)
  L5_2[L7_2] = L8_2
  L7_2 = {}
  L7_2.body = L5_2
  L8_2 = log3
  L9_2 = "Sending request:"
  L10_2 = Constants
  L10_2 = L10_2.API_Path
  L11_2 = Constants
  L11_2 = L11_2.API_FetchLeagueHistory
  L10_2 = L10_2 .. L11_2
  L8_2(L9_2, L10_2)
  L8_2 = network
  L8_2 = L8_2.getDefaultHeader
  L8_2 = L8_2()
  L7_2.headers = L8_2
  L8_2 = network
  L8_2 = L8_2.request
  L9_2 = Constants
  L9_2 = L9_2.API_Path
  L10_2 = Constants
  L10_2 = L10_2.API_FetchLeagueHistory
  L9_2 = L9_2 .. L10_2
  L10_2 = "POST"
  L11_2 = L4_2
  L12_2 = L7_2
  L13_2 = "fetch league history"
  L14_2 = nil
  L15_2 = A3_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end

fetchLeagueHistory = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L0_1
  L2_2 = L2_2.logEvent
  L3_2 = "Global Rankings Fetched"
  L2_2(L3_2)
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = log3
    L2_3 = "League Ranking response dump:"
    L1_3(L2_3)
    L1_3 = log3
    L2_3 = "RESPONSE:"
    L3_3 = A0_3.response
    L1_3(L2_3, L3_3)
    L1_3 = log3
    L2_3 = "end of dump"
    L1_3(L2_3)
    L1_3 = fetchRankings
    L2_3 = A0_3
    L3_3 = A0_2
    L4_3 = failedToFetchGlobalRankingsCallback
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = A0_2
    if L1_3 ~= nil then
      L1_3 = A0_2
      L2_3 = topPlayers
      L3_3 = nearPlayers
      L1_3(L2_3, L3_3)
    end
  end
  
  L3_2 = {}
  L4_2 = log3
  L5_2 = "Sending request:"
  L6_2 = Constants
  L6_2 = L6_2.API_Path
  L7_2 = Constants
  L7_2 = L7_2.API_FetchLeagueRanking
  L6_2 = L6_2 .. L7_2
  L4_2(L5_2, L6_2)
  L4_2 = network
  L4_2 = L4_2.getDefaultHeader
  L4_2 = L4_2()
  L3_2.headers = L4_2
  L4_2 = network
  L4_2 = L4_2.request
  L5_2 = Constants
  L5_2 = L5_2.API_Path
  L6_2 = Constants
  L6_2 = L6_2.API_FetchLeagueRanking
  L5_2 = L5_2 .. L6_2
  L6_2 = "POST"
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = "fetch league ranking"
  L10_2 = nil
  L11_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end

fetchLeagueRanking = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L0_1
  L2_2 = L2_2.logEvent
  L3_2 = "Global Rankings Fetched"
  L2_2(L3_2)
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = log3
    L2_3 = "Global Ranking response dump:"
    L1_3(L2_3)
    L1_3 = log3
    L2_3 = "RESPONSE:"
    L3_3 = A0_3.response
    L1_3(L2_3, L3_3)
    L1_3 = log3
    L2_3 = "end of dump"
    L1_3(L2_3)
    L1_3 = fetchRankings
    L2_3 = A0_3
    L3_3 = A0_2
    L4_3 = A1_2
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = A0_2
    if L1_3 ~= nil then
      L1_3 = A0_2
      L2_3 = topPlayers
      L3_3 = nearPlayers
      L1_3(L2_3, L3_3)
    end
  end
  
  L3_2 = {}
  L4_2 = log3
  L5_2 = "Sending request:"
  L6_2 = Constants
  L6_2 = L6_2.API_Path
  L7_2 = Constants
  L7_2 = L7_2.API_FetchGlobalRankings
  L6_2 = L6_2 .. L7_2
  L4_2(L5_2, L6_2)
  L4_2 = network
  L4_2 = L4_2.getDefaultHeader
  L4_2 = L4_2()
  L3_2.headers = L4_2
  L4_2 = network
  L4_2 = L4_2.request
  L5_2 = Constants
  L5_2 = L5_2.API_Path
  L6_2 = Constants
  L6_2 = L6_2.API_FetchGlobalRankings
  L5_2 = L5_2 .. L6_2
  L6_2 = "POST"
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = "fetch global ranking"
  L10_2 = nil
  L11_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end

fetchGlobalRankings = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L0_1
  L2_2 = L2_2.logEvent
  L3_2 = "Local Rankings Fetched"
  L2_2(L3_2)
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = fetchRankings
    L2_3 = A0_3
    L3_3 = A0_2
    L4_3 = A1_2
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = mainPlayer
    L1_3 = L1_3.region
    if L1_3 == nil then
      L1_3 = log
      L2_3 = "Network error! The response did not contain region value:"
      L3_3 = A0_3.response
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
      L1_3 = A1_2
      if L1_3 ~= nil then
        L1_3 = A1_2
        L2_3 = "Response did not contain a region"
        L1_3(L2_3)
      end
      return
    end
    L1_3 = A0_2
    if L1_3 ~= nil then
      L1_3 = A0_2
      L2_3 = topPlayers
      L3_3 = nearPlayers
      L1_3(L2_3, L3_3)
    end
  end
  
  L3_2 = log3
  L4_2 = "Sending request:"
  L5_2 = Constants
  L5_2 = L5_2.API_Path
  L6_2 = Constants
  L6_2 = L6_2.API_FetchLocalRankings
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L4_2 = network
  L4_2 = L4_2.getDefaultHeader
  L4_2 = L4_2()
  L3_2.headers = L4_2
  L4_2 = network
  L4_2 = L4_2.request
  L5_2 = Constants
  L5_2 = L5_2.API_Path
  L6_2 = Constants
  L6_2 = L6_2.API_FetchLocalRankings
  L5_2 = L5_2 .. L6_2
  L6_2 = "POST"
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = "fetch local ranking"
  L10_2 = nil
  L11_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end

fetchLocalRankings = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L0_1
  L2_2 = L2_2.logEvent
  L3_2 = "Rising Rankings Fetched"
  L2_2(L3_2)
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = fetchRankings
    L2_3 = A0_3
    L3_3 = A0_2
    L4_3 = A1_2
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = A0_2
    if L1_3 ~= nil then
      L1_3 = A0_2
      L2_3 = topPlayers
      L3_3 = nearPlayers
      L1_3(L2_3, L3_3)
    end
  end
  
  L3_2 = log3
  L4_2 = "Sending request:"
  L5_2 = Constants
  L5_2 = L5_2.API_Path
  L6_2 = Constants
  L6_2 = L6_2.API_FetchLocalRankings
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L4_2 = network
  L4_2 = L4_2.getDefaultHeader
  L4_2 = L4_2()
  L3_2.headers = L4_2
  L4_2 = network
  L4_2 = L4_2.request
  L5_2 = Constants
  L5_2 = L5_2.API_Path
  L6_2 = Constants
  L6_2 = L6_2.API_FetchRisingRanking
  L5_2 = L5_2 .. L6_2
  L6_2 = "POST"
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = "rising ranking"
  L10_2 = nil
  L11_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end

risingRankings = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L0_1
  L2_2 = L2_2.logEvent
  L3_2 = "Tribe Rankings Fetched"
  L2_2(L3_2)
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = A0_3.isError
    if L1_3 then
      L1_3 = log
      L2_3 = "Network error! Failed cooldown card."
      L1_3(L2_3)
      L1_3 = A1_2
      if L1_3 ~= nil then
        L1_3 = A1_2
        L2_3 = "Network error"
        L1_3(L2_3)
      end
    else
      L1_3 = {}
      topTribes = L1_3
      L1_3 = {}
      nearTribes = L1_3
      L1_3 = json
      L1_3 = L1_3.decode
      L2_3 = A0_3.response
      L1_3 = L1_3(L2_3)
      L2_3 = log3
      L3_3 = "value"
      L4_3 = A0_3.response
      L2_3(L3_3, L4_3)
      L2_3 = L1_3.status
      if L2_3 == true then
        L2_3 = L1_3.data
        L2_3 = L2_3.top_tribes
        if L2_3 ~= nil then
          L2_3 = pairs
          L3_3 = L1_3.data
          L3_3 = L3_3.top_tribes
          L2_3, L3_3, L4_3 = L2_3(L3_3)
          for L5_3, L6_3 in L2_3, L3_3, L4_3 do
            L7_3 = tribeModel
            L8_3 = L7_3
            L7_3 = L7_3.new
            L7_3 = L7_3(L8_3)
            L8_3 = L6_3.id
            if L8_3 ~= nil then
              L8_3 = L6_3.name
              if L8_3 ~= nil then
                L8_3 = L6_3.score
                if L8_3 ~= nil then
                  L8_3 = L6_3.member_count
                  if L8_3 ~= nil then
                    L8_3 = L6_3.rank
                    if L8_3 ~= nil then
                      L8_3 = L6_3.id
                      L7_3.id = L8_3
                      L8_3 = L6_3.name
                      L7_3.name = L8_3
                      L8_3 = L6_3.score
                      L7_3.xp = L8_3
                      L8_3 = L6_3.rank
                      L7_3.rank = L8_3
                      L8_3 = L6_3.member_count
                      L7_3.memberCount = L8_3
                      L8_3 = table
                      L8_3 = L8_3.insert
                      L9_3 = topTribes
                      L10_3 = L7_3
                      L8_3(L9_3, L10_3)
                  end
                end
              end
            end
            else
              L8_3 = log
              L9_3 = "Network error! The response did not contain proper values:"
              L10_3 = A0_3.response
              L9_3 = L9_3 .. L10_3
              L8_3(L9_3)
              L8_3 = A1_2
              if L8_3 ~= nil then
                L8_3 = A1_2
                L9_3 = "Response did not contain required fields"
                L8_3(L9_3)
              end
              return
            end
          end
        else
          L2_3 = log
          L3_3 = "Network error! The response did not contain proper values:"
          L4_3 = A0_3.response
          L3_3 = L3_3 .. L4_3
          L2_3(L3_3)
          L2_3 = A1_2
          if L2_3 ~= nil then
            L2_3 = A1_2
            L3_3 = "Response did not contain required fields"
            L2_3(L3_3)
          end
          return
        end
        L2_3 = L1_3.data
        L2_3 = L2_3.near_tribes
        if L2_3 ~= nil then
          L2_3 = pairs
          L3_3 = L1_3.data
          L3_3 = L3_3.near_tribes
          L2_3, L3_3, L4_3 = L2_3(L3_3)
          for L5_3, L6_3 in L2_3, L3_3, L4_3 do
            L7_3 = tribeModel
            L8_3 = L7_3
            L7_3 = L7_3.new
            L7_3 = L7_3(L8_3)
            L8_3 = L6_3.id
            if L8_3 ~= nil then
              L8_3 = L6_3.name
              if L8_3 ~= nil then
                L8_3 = L6_3.score
                if L8_3 ~= nil then
                  L8_3 = L6_3.member_count
                  if L8_3 ~= nil then
                    L8_3 = L6_3.rank
                    if L8_3 ~= nil then
                      L8_3 = L6_3.id
                      L7_3.id = L8_3
                      L8_3 = L6_3.name
                      L7_3.name = L8_3
                      L8_3 = L6_3.score
                      L7_3.xp = L8_3
                      L8_3 = L6_3.rank
                      L7_3.rank = L8_3
                      L8_3 = L6_3.member_count
                      L7_3.memberCount = L8_3
                      L8_3 = table
                      L8_3 = L8_3.insert
                      L9_3 = nearTribes
                      L10_3 = L7_3
                      L8_3(L9_3, L10_3)
                  end
                end
              end
            end
            else
              L8_3 = log
              L9_3 = "Network error! The response did not contain proper values:"
              L10_3 = A0_3.response
              L9_3 = L9_3 .. L10_3
              L8_3(L9_3)
              L8_3 = A1_2
              if L8_3 ~= nil then
                L8_3 = A1_2
                L9_3 = "Response did not contain required fields"
                L8_3(L9_3)
              end
              return
            end
          end
        else
          L2_3 = log
          L3_3 = "Network error! The response did not contain proper values:"
          L4_3 = A0_3.response
          L3_3 = L3_3 .. L4_3
          L2_3(L3_3)
          L2_3 = A1_2
          if L2_3 ~= nil then
            L2_3 = A1_2
            L3_3 = "Response did not contain required fields"
            L2_3(L3_3)
          end
          return
        end
        L2_3 = A0_2
        if L2_3 ~= nil then
          L2_3 = A0_2
          L3_3 = topTribes
          L4_3 = nearTribes
          L2_3(L3_3, L4_3)
        end
      else
        L2_3 = L1_3.status
        if L2_3 == false then
          L2_3 = L1_3.error
          if not L2_3 then
            L2_3 = "Network Response returned false status"
          end
          L3_3 = L1_3.data
          if L3_3 then
            L3_3 = L1_3.data
            L3_3 = L3_3.code
            if L3_3 then
              L3_3 = L2_1
              L3_3 = L3_3.getErrorMessage
              L4_3 = L1_3.data
              L3_3 = L3_3(L4_3)
              L2_3 = L3_3 or L2_3
              if not L3_3 then
                L3_3 = tostring
                L4_3 = L1_3.data
                L4_3 = L4_3.code
                L3_3 = L3_3(L4_3)
                L2_3 = L3_3
              end
            end
          else
            L3_3 = L1_3.error
            if L3_3 then
              L3_3 = L1_3.error
              L2_3 = L3_3 or L2_3
              if not L3_3 then
                L2_3 = "Response did not return success status"
              end
            end
          end
          L3_3 = failedToGetRecommendedTribesCallback
          if L3_3 ~= nil then
            L3_3 = failedToGetRecommendedTribesCallback
            L4_3 = self
            L5_3 = L2_3
            L3_3(L4_3, L5_3)
          end
        end
      end
    end
  end
  
  L3_2 = {}
  L4_2 = network
  L4_2 = L4_2.getDefaultHeader
  L4_2 = L4_2()
  L3_2.headers = L4_2
  L4_2 = network
  L4_2 = L4_2.request
  L5_2 = Constants
  L5_2 = L5_2.API_Path
  L6_2 = Constants
  L6_2 = L6_2.API_FetchTribeRanking
  L5_2 = L5_2 .. L6_2
  L6_2 = "POST"
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = "fetch tribe ranking"
  L10_2 = nil
  L11_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end

fetchTribeRankings = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L0_1
  L2_2 = L2_2.logEvent
  L3_2 = "Tribe Rankings base on Seeds Fetched"
  L2_2(L3_2)
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = A0_3.isError
    if L1_3 then
      L1_3 = log
      L2_3 = "Network error! Failed to fetch ranks base on Seeds"
      L1_3(L2_3)
      L1_3 = A1_2
      if L1_3 ~= nil then
        L1_3 = A1_2
        L2_3 = "Network error"
        L1_3(L2_3)
      end
    else
      L1_3 = {}
      topTribes = L1_3
      L1_3 = {}
      nearTribes = L1_3
      L1_3 = json
      L1_3 = L1_3.decode
      L2_3 = A0_3.response
      L1_3 = L1_3(L2_3)
      L2_3 = log3
      L3_3 = "value"
      L4_3 = A0_3.response
      L2_3(L3_3, L4_3)
      L2_3 = L1_3.status
      if L2_3 == true then
        L2_3 = L1_3.data
        L2_3 = L2_3.top_tribes
        if L2_3 ~= nil then
          L2_3 = pairs
          L3_3 = L1_3.data
          L3_3 = L3_3.top_tribes
          L2_3, L3_3, L4_3 = L2_3(L3_3)
          for L5_3, L6_3 in L2_3, L3_3, L4_3 do
            L7_3 = tribeModel
            L8_3 = L7_3
            L7_3 = L7_3.new
            L7_3 = L7_3(L8_3)
            L8_3 = L6_3.id
            if L8_3 ~= nil then
              L8_3 = L6_3.name
              if L8_3 ~= nil then
                L8_3 = L6_3.score
                if L8_3 ~= nil then
                  L8_3 = L6_3.member_count
                  if L8_3 ~= nil then
                    L8_3 = L6_3.rank
                    if L8_3 ~= nil then
                      L8_3 = L6_3.id
                      L7_3.id = L8_3
                      L8_3 = L6_3.name
                      L7_3.name = L8_3
                      L8_3 = L6_3.weekly_score
                      L7_3.seed = L8_3
                      L8_3 = L6_3.weekly_rank
                      L7_3.rank = L8_3
                      L8_3 = table
                      L8_3 = L8_3.insert
                      L9_3 = topTribes
                      L10_3 = L7_3
                      L8_3(L9_3, L10_3)
                  end
                end
              end
            end
            else
              L8_3 = log
              L9_3 = "Network error! The response did not contain proper values:"
              L10_3 = A0_3.response
              L9_3 = L9_3 .. L10_3
              L8_3(L9_3)
              L8_3 = A1_2
              if L8_3 ~= nil then
                L8_3 = A1_2
                L9_3 = "Response did not contain required fields"
                L8_3(L9_3)
              end
              return
            end
          end
        else
          L2_3 = log
          L3_3 = "Network error! The response did not contain proper values:"
          L4_3 = A0_3.response
          L3_3 = L3_3 .. L4_3
          L2_3(L3_3)
          L2_3 = A1_2
          if L2_3 ~= nil then
            L2_3 = A1_2
            L3_3 = "Response did not contain required fields"
            L2_3(L3_3)
          end
          return
        end
        L2_3 = L1_3.data
        L2_3 = L2_3.near_tribes
        if L2_3 ~= nil then
          L2_3 = pairs
          L3_3 = L1_3.data
          L3_3 = L3_3.near_tribes
          L2_3, L3_3, L4_3 = L2_3(L3_3)
          for L5_3, L6_3 in L2_3, L3_3, L4_3 do
            L7_3 = tribeModel
            L8_3 = L7_3
            L7_3 = L7_3.new
            L7_3 = L7_3(L8_3)
            L8_3 = L6_3.id
            if L8_3 ~= nil then
              L8_3 = L6_3.name
              if L8_3 ~= nil then
                L8_3 = L6_3.score
                if L8_3 ~= nil then
                  L8_3 = L6_3.member_count
                  if L8_3 ~= nil then
                    L8_3 = L6_3.rank
                    if L8_3 ~= nil then
                      L8_3 = L6_3.id
                      L7_3.id = L8_3
                      L8_3 = L6_3.name
                      L7_3.name = L8_3
                      L8_3 = L6_3.weekly_score
                      L7_3.seed = L8_3
                      L8_3 = L6_3.weekly_rank
                      L7_3.rank = L8_3
                      L8_3 = table
                      L8_3 = L8_3.insert
                      L9_3 = nearTribes
                      L10_3 = L7_3
                      L8_3(L9_3, L10_3)
                  end
                end
              end
            end
            else
              L8_3 = log
              L9_3 = "Network error! The response did not contain proper values:"
              L10_3 = A0_3.response
              L9_3 = L9_3 .. L10_3
              L8_3(L9_3)
              L8_3 = A1_2
              if L8_3 ~= nil then
                L8_3 = A1_2
                L9_3 = "Response did not contain required fields"
                L8_3(L9_3)
              end
              return
            end
          end
        else
          L2_3 = log
          L3_3 = "Network error! The response did not contain proper values:"
          L4_3 = A0_3.response
          L3_3 = L3_3 .. L4_3
          L2_3(L3_3)
          L2_3 = A1_2
          if L2_3 ~= nil then
            L2_3 = A1_2
            L3_3 = "Response did not contain required fields"
            L2_3(L3_3)
          end
          return
        end
        L2_3 = A0_2
        if L2_3 ~= nil then
          L2_3 = A0_2
          L3_3 = topTribes
          L4_3 = nearTribes
          L2_3(L3_3, L4_3)
        end
      else
        L2_3 = L1_3.status
        if L2_3 == false then
          L2_3 = L1_3.error
          if not L2_3 then
            L2_3 = "Network Response returned false status"
          end
          L3_3 = L1_3.data
          if L3_3 then
            L3_3 = L1_3.data
            L3_3 = L3_3.code
            if L3_3 then
              L3_3 = L2_1
              L3_3 = L3_3.getErrorMessage
              L4_3 = L1_3.data
              L3_3 = L3_3(L4_3)
              L2_3 = L3_3 or L2_3
              if not L3_3 then
                L3_3 = tostring
                L4_3 = L1_3.data
                L4_3 = L4_3.code
                L3_3 = L3_3(L4_3)
                L2_3 = L3_3
              end
            end
          else
            L3_3 = L1_3.error
            if L3_3 then
              L3_3 = L1_3.error
              L2_3 = L3_3 or L2_3
              if not L3_3 then
                L2_3 = "Response did not return success status"
              end
            end
          end
          L3_3 = failedToGetRecommendedTribesCallback
          if L3_3 ~= nil then
            L3_3 = failedToGetRecommendedTribesCallback
            L4_3 = self
            L5_3 = L2_3
            L3_3(L4_3, L5_3)
          end
        end
      end
    end
  end
  
  L3_2 = {}
  L4_2 = network
  L4_2 = L4_2.getDefaultHeader
  L4_2 = L4_2()
  L3_2.headers = L4_2
  L4_2 = network
  L4_2 = L4_2.request
  L5_2 = Constants
  L5_2 = L5_2.API_Path
  L6_2 = Constants
  L6_2 = L6_2.API_FetchTribeRankingBasedOnSeed
  L5_2 = L5_2 .. L6_2
  L6_2 = "POST"
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = "fetch tribe ranking"
  L10_2 = nil
  L11_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end

fetchTribeRankingsBasedOnSeeds = L4_1

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A0_2.isError
  if L3_2 then
    L3_2 = log
    L4_2 = "Network error! Failed to fetch ranks"
    L3_2(L4_2)
    if A2_2 ~= nil then
      L3_2 = A2_2
      L4_2 = "Network error"
      L3_2(L4_2)
    end
  else
    L3_2 = {}
    topPlayers = L3_2
    L3_2 = {}
    nearPlayers = L3_2
    L3_2 = json
    L3_2 = L3_2.decode
    L4_2 = A0_2.response
    L3_2 = L3_2(L4_2)
    if L3_2 == nil then
      L4_2 = log
      L5_2 = "Network error! Response was not a JSON"
      L4_2(L5_2)
      if A2_2 ~= nil then
        L4_2 = A2_2
        L5_2 = "Temporary issue with server, please try again later. If problem persists be sure to let us know."
        L4_2(L5_2)
      end
      return
    end
    L4_2 = L3_2.status
    if L4_2 == true then
      L4_2 = L3_2.data
      if L4_2 then
        L5_2 = L4_2.rank
        if L5_2 then
          L5_2 = mainPlayer
          L6_2 = L4_2.rank
          L5_2.rank = L6_2
        end
        L5_2 = L4_2.local_rank
        if L5_2 then
          L5_2 = mainPlayer
          L6_2 = L4_2.local_rank
          L5_2.localRank = L6_2
        end
        L5_2 = L4_2.current_league_bonus
        if L5_2 then
          L5_2 = mainPlayer
          L6_2 = L4_2.current_league_bonus
          L5_2.currentLeagueBonus = L6_2
        end
        L5_2 = L4_2.next_league_bonus
        if L5_2 then
          L5_2 = mainPlayer
          L6_2 = L4_2.next_league_bonus
          L5_2.nextLeagueBonus = L6_2
        end
        L5_2 = L4_2.region
        if L5_2 then
          L5_2 = mainPlayer
          L6_2 = L4_2.region
          L5_2.region = L6_2
        end
        L5_2 = L4_2.reward_avg_card_power
        if L5_2 then
          L5_2 = mainPlayer
          L6_2 = L4_2.reward_avg_card_power
          L5_2.rewardAVGPower = L6_2
        end
        L5_2 = L4_2.league_rising_rank
        if L5_2 then
          L5_2 = L4_2.league_rising_rank
          leagueRising = L5_2
        end
        L5_2 = L4_2.league_falling_rank
        if L5_2 then
          L5_2 = L4_2.league_falling_rank
          leagueFalling = L5_2
        end
        L5_2 = L4_2.winner_ranges
        if L5_2 then
          L5_2 = L3_1
          L5_2 = L5_2.getScene
          L6_2 = "Scenes.LeagueScene"
          L5_2 = L5_2(L6_2)
          if L5_2 then
            L6_2 = L4_2.winner_ranges
            L6_2 = L6_2.second_min
            L5_2.secondMin = L6_2
            L6_2 = L4_2.winner_ranges
            L6_2 = L6_2.second_max
            L5_2.secondMax = L6_2
            L6_2 = L4_2.winner_ranges
            L6_2 = L6_2.third_min
            L5_2.thirdMin = L6_2
            L6_2 = L4_2.winner_ranges
            L6_2 = L6_2.third_max
            L5_2.thirdMax = L6_2
          end
        end
        L5_2 = L4_2.top_players
        if L5_2 ~= nil then
          L5_2 = pairs
          L6_2 = L4_2.top_players
          L5_2, L6_2, L7_2 = L5_2(L6_2)
          for L8_2, L9_2 in L5_2, L6_2, L7_2 do
            L10_2 = playerModel
            L11_2 = L10_2
            L10_2 = L10_2.new
            L10_2 = L10_2(L11_2)
            L11_2 = L9_2.id
            if L11_2 ~= nil then
              L11_2 = L9_2.name
              if L11_2 ~= nil then
                L11_2 = L9_2.tribe_id
                if L11_2 ~= nil then
                  L11_2 = L9_2.id
                  L10_2.id = L11_2
                  L11_2 = L9_2.name
                  L10_2.name = L11_2
                  L11_2 = L9_2.xp
                  L10_2.xp = L11_2
                  L11_2 = L9_2.level
                  L10_2.level = L11_2
                  L11_2 = L9_2.rank
                  if L11_2 ~= nil then
                    L11_2 = L9_2.rank
                    L10_2.rank = L11_2
                  end
                  L11_2 = L9_2.avatar_id
                  if L11_2 then
                    L11_2 = L1_1
                    L11_2 = L11_2.getAvatarByID
                    L12_2 = L9_2.avatar_id
                    L11_2 = L11_2(L12_2)
                    L10_2.avatar = L11_2
                  else
                    L11_2 = L1_1
                    L11_2 = L11_2.getAvatarByID
                    L12_2 = 1
                    L11_2 = L11_2(L12_2)
                    L10_2.avatar = L11_2
                  end
                  L11_2 = L9_2.rising_rank
                  if L11_2 ~= nil then
                    L11_2 = L9_2.rising_rank
                    L10_2.rank = L11_2
                  end
                  L11_2 = L9_2.league_rank
                  if L11_2 ~= nil then
                    L11_2 = L9_2.league_rank
                    L10_2.leagueRank = L11_2
                  end
                  L11_2 = L9_2.overall_score
                  if L11_2 ~= nil then
                    L11_2 = L9_2.overall_score
                    L10_2.overallScore = L11_2
                  end
                  L11_2 = L9_2.weekly_score
                  if L11_2 ~= nil then
                    L11_2 = L9_2.weekly_score
                    L10_2.weeklyScore = L11_2
                  end
                  L11_2 = L9_2.drank
                  if L11_2 ~= nil then
                    L11_2 = L9_2.drank
                    L10_2.xp = L11_2
                  end
                  L11_2 = L9_2.tribe_id
                  if 0 < L11_2 then
                    L11_2 = L9_2.tribe_id
                    L10_2.tribeId = L11_2
                    L11_2 = L9_2.tribe_name
                    L10_2.tribeName = L11_2
                  end
                  L11_2 = table
                  L11_2 = L11_2.insert
                  L12_2 = topPlayers
                  L13_2 = L10_2
                  L11_2(L12_2, L13_2)
              end
            end
            else
              L11_2 = log
              L12_2 = "Network error! The response did not contain proper values:"
              L13_2 = A0_2.response
              L12_2 = L12_2 .. L13_2
              L11_2(L12_2)
              if A2_2 ~= nil then
                L11_2 = A2_2
                L12_2 = "Response did not contain required fields"
                L11_2(L12_2)
              end
              return
            end
          end
        else
          L5_2 = log
          L6_2 = "Network error! The response did not contain top players field:"
          L7_2 = A0_2.response
          L6_2 = L6_2 .. L7_2
          L5_2(L6_2)
          if A2_2 ~= nil then
            L5_2 = A2_2
            L6_2 = "Response did not contain required fields"
            L5_2(L6_2)
          end
          return
        end
        L5_2 = L4_2.near_players
        if L5_2 ~= nil then
          L5_2 = pairs
          L6_2 = L4_2.near_players
          L5_2, L6_2, L7_2 = L5_2(L6_2)
          for L8_2, L9_2 in L5_2, L6_2, L7_2 do
            L10_2 = playerModel
            L11_2 = L10_2
            L10_2 = L10_2.new
            L10_2 = L10_2(L11_2)
            L11_2 = L9_2.id
            if L11_2 ~= nil then
              L11_2 = L9_2.name
              if L11_2 ~= nil then
                L11_2 = L9_2.tribe_id
                if L11_2 ~= nil then
                  L11_2 = L9_2.id
                  L10_2.id = L11_2
                  L11_2 = L9_2.name
                  L10_2.name = L11_2
                  L11_2 = L9_2.xp
                  L10_2.xp = L11_2
                  L11_2 = L9_2.rank
                  if L11_2 ~= nil then
                    L11_2 = L9_2.rank
                    L10_2.rank = L11_2
                  end
                  L11_2 = L9_2.rising_rank
                  if L11_2 ~= nil then
                    L11_2 = L9_2.rising_rank
                    L10_2.rank = L11_2
                  end
                  L11_2 = L9_2.league_rank
                  if L11_2 ~= nil then
                    L11_2 = L9_2.league_rank
                    L10_2.leagueRank = L11_2
                  end
                  L11_2 = L9_2.avatar_id
                  if L11_2 then
                    L11_2 = L1_1
                    L11_2 = L11_2.getAvatarByID
                    L12_2 = L9_2.avatar_id
                    L11_2 = L11_2(L12_2)
                    L10_2.avatar = L11_2
                  else
                    L11_2 = L1_1
                    L11_2 = L11_2.getAvatarByID
                    L12_2 = 1
                    L11_2 = L11_2(L12_2)
                    L10_2.avatar = L11_2
                  end
                  L11_2 = L9_2.overall_score
                  if L11_2 ~= nil then
                    L11_2 = L9_2.overall_score
                    L10_2.overallScore = L11_2
                  end
                  L11_2 = L9_2.weekly_score
                  if L11_2 ~= nil then
                    L11_2 = L9_2.weekly_score
                    L10_2.weeklyScore = L11_2
                    L11_2 = L9_2.id
                    L12_2 = mainPlayer
                    L12_2 = L12_2.id
                    if L11_2 == L12_2 then
                      L11_2 = mainPlayer
                      L12_2 = L9_2.weekly_score
                      L11_2.weeklyScore = L12_2
                    end
                  end
                  L11_2 = L9_2.drank
                  if L11_2 ~= nil then
                    L11_2 = L9_2.drank
                    L10_2.xp = L11_2
                  end
                  L11_2 = L9_2.level
                  L10_2.level = L11_2
                  L11_2 = L9_2.tribe_id
                  if 0 < L11_2 then
                    L11_2 = L9_2.tribe_id
                    L10_2.tribeId = L11_2
                    L11_2 = L9_2.tribe_name
                    L10_2.tribeName = L11_2
                  end
                  L11_2 = table
                  L11_2 = L11_2.insert
                  L12_2 = nearPlayers
                  L13_2 = L10_2
                  L11_2(L12_2, L13_2)
              end
            end
            else
              L11_2 = log
              L12_2 = "Network error! The response did not contain proper values for element:"
              L13_2 = A0_2.response
              L12_2 = L12_2 .. L13_2
              L11_2(L12_2)
              if A2_2 ~= nil then
                L11_2 = A2_2
                L12_2 = "Response did not contain required fields"
                L11_2(L12_2)
              end
              return
            end
          end
        else
          L5_2 = log
          L6_2 = "Network error! The response did not contain proper values (near_players):"
          L7_2 = A0_2.response
          L6_2 = L6_2 .. L7_2
          L5_2(L6_2)
          if A2_2 ~= nil then
            L5_2 = A2_2
            L6_2 = "Response did not contain required fields"
            L5_2(L6_2)
          end
          return
        end
      else
        L5_2 = log
        L6_2 = "Network error! The response did not contain a data field"
        L7_2 = A0_2.response
        L6_2 = L6_2 .. L7_2
        L5_2(L6_2)
        if A2_2 ~= nil then
          L5_2 = A2_2
          L6_2 = L3_2.error
          if not L6_2 then
            L6_2 = "Response did not contain a data field"
          end
          L5_2(L6_2)
        end
        return
      end
    else
      L4_2 = log
      L5_2 = "Network error! The response did not return 'true' status"
      L6_2 = A0_2.response
      L5_2 = L5_2 .. L6_2
      L4_2(L5_2)
      L4_2 = L3_2.data
      if L4_2 then
        L4_2 = L3_2.data
        L4_2 = L4_2.code
        if L4_2 then
          L4_2 = L2_1
          L4_2 = L4_2.getErrorMessage
          L5_2 = L3_2.data
          L4_2 = L4_2(L5_2)
          if not L4_2 then
            L4_2 = tostring
            L5_2 = L3_2.data
            L5_2 = L5_2.code
            L4_2 = L4_2(L5_2)
          end
          L3_2.error = L4_2
        end
      end
      if A2_2 ~= nil then
        L4_2 = A2_2
        L5_2 = L3_2.error
        if not L5_2 then
          L5_2 = "Response did not return success status"
        end
        L4_2(L5_2)
      end
      return
    end
  end
end

fetchRankings = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L2_2 = mainPlayer
  L2_2 = L2_2.leagueId
  if L2_2 then
    L2_2 = mainPlayer
    L2_2 = L2_2.leagueId
    if L2_2 == 1 then
      L2_2 = Constants
      L2_2 = L2_2.Path_Assets
      L3_2 = "Home/League-1.png"
      L0_2 = L2_2 .. L3_2
      L2_2 = Constants
      L2_2 = L2_2.Path_Assets
      L3_2 = "Home/League-1-pressed.png"
      L1_2 = L2_2 .. L3_2
    else
      L2_2 = mainPlayer
      L2_2 = L2_2.leagueId
      if 2 <= L2_2 then
        L2_2 = mainPlayer
        L2_2 = L2_2.leagueId
        if L2_2 <= 6 then
          L2_2 = Constants
          L2_2 = L2_2.Path_Assets
          L3_2 = "Home/League-2.png"
          L0_2 = L2_2 .. L3_2
          L2_2 = Constants
          L2_2 = L2_2.Path_Assets
          L3_2 = "Home/League-2-pressed.png"
          L1_2 = L2_2 .. L3_2
      end
      else
        L2_2 = mainPlayer
        L2_2 = L2_2.leagueId
        if 7 <= L2_2 then
          L2_2 = mainPlayer
          L2_2 = L2_2.leagueId
          if L2_2 <= 11 then
            L2_2 = Constants
            L2_2 = L2_2.Path_Assets
            L3_2 = "Home/League-3.png"
            L0_2 = L2_2 .. L3_2
            L2_2 = Constants
            L2_2 = L2_2.Path_Assets
            L3_2 = "Home/League-3-pressed.png"
            L1_2 = L2_2 .. L3_2
        end
        else
          L2_2 = mainPlayer
          L2_2 = L2_2.leagueId
          if 12 <= L2_2 then
            L2_2 = mainPlayer
            L2_2 = L2_2.leagueId
            if L2_2 <= 16 then
              L2_2 = Constants
              L2_2 = L2_2.Path_Assets
              L3_2 = "Home/League-4.png"
              L0_2 = L2_2 .. L3_2
              L2_2 = Constants
              L2_2 = L2_2.Path_Assets
              L3_2 = "Home/League-4-pressed.png"
              L1_2 = L2_2 .. L3_2
          end
          else
            L2_2 = mainPlayer
            L2_2 = L2_2.leagueId
            if 17 <= L2_2 then
              L2_2 = mainPlayer
              L2_2 = L2_2.leagueId
              if L2_2 <= 21 then
                L2_2 = Constants
                L2_2 = L2_2.Path_Assets
                L3_2 = "Home/League-5.png"
                L0_2 = L2_2 .. L3_2
                L2_2 = Constants
                L2_2 = L2_2.Path_Assets
                L3_2 = "Home/League-5-pressed.png"
                L1_2 = L2_2 .. L3_2
            end
            else
              L2_2 = mainPlayer
              L2_2 = L2_2.leagueId
              if 22 <= L2_2 then
                L2_2 = mainPlayer
                L2_2 = L2_2.leagueId
                if L2_2 <= 24 then
                  L2_2 = Constants
                  L2_2 = L2_2.Path_Assets
                  L3_2 = "Home/League-6.png"
                  L0_2 = L2_2 .. L3_2
                  L2_2 = Constants
                  L2_2 = L2_2.Path_Assets
                  L3_2 = "Home/League-6-pressed.png"
                  L1_2 = L2_2 .. L3_2
                end
              end
            end
          end
        end
      end
    end
  end
  L2_2 = L0_2
  L3_2 = L1_2
  return L2_2, L3_2
end

getLeagueRankImage = L4_1
