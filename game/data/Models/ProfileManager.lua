local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Data.Moods"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Data.Avatars"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Views.ActivityIndicatorView"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Language"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Data.AvatarSets"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Data.GenderData"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Data.TribePositionData"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Data.Medals"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Utils.Toolbox"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Data.BaseAchievements"
L9_1 = L9_1(L10_1)
L10_1 = nil
L11_1 = {}
avatarsTable = L11_1

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

function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L2_1
    L1_3 = L1_3.hide
    L1_3()
    L1_3 = A2_2
    L2_3 = A0_3
    L1_3(L2_3)
    L1_3 = showSimpleDialog
    L2_3 = "Profile getPlayerInfo ERROR :"
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "getPlayerInfo"
    L4_3 = L3_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = {}
      L3_3.name = "string"
      L3_3.total_rank = "number"
      L3_3.won_battle_num = "number"
      L3_3.mood_id = "number"
      L3_3.avatar_id = "number"
      L4_3 = A0_2
      if L4_3 == nil then
        L3_3.real_name = "string"
        L3_3.birth_year = "number"
        L3_3.gender = "number"
        L3_3.phone = "number"
        L3_3.address = "string"
      end
      L4_3 = multiCheckValidityAssert
      L5_3 = L2_3
      L6_3 = "wrong data"
      L7_3 = _NAME
      L8_3 = L3_3
      L4_3(L5_3, L6_3, L7_3, L8_3)
      L4_3 = {}
      L5_3 = L2_3.name
      L4_3.name = L5_3
      L5_3 = L2_3.updated_at
      L4_3.updatedAt = L5_3
      L5_3 = L2_3.last_load_at
      L4_3.lastLoadAt = L5_3
      L5_3 = L2_3.total_rank
      L4_3.totalRank = L5_3
      L5_3 = L2_3.tribe_name
      if not L5_3 then
        L5_3 = nil
      end
      L4_3.tribe = L5_3
      L5_3 = L2_3.tribe_rank
      if not L5_3 then
        L5_3 = nil
      end
      L4_3.tribeRank = L5_3
      L5_3 = L6_1
      L6_3 = L2_3.tribe_position
      L5_3 = L5_3[L6_3]
      if not L5_3 then
        L5_3 = L6_1
        L5_3 = L5_3[0]
      end
      L4_3.tribePosition = L5_3
      L5_3 = readMedals
      L6_3 = L2_3.medals
      L5_3 = L5_3(L6_3)
      L4_3.medals = L5_3
      L5_3 = L2_3.won_battle_num
      L4_3.wonBattleNum = L5_3
      L5_3 = L2_3.won_battle_num
      L6_3 = L2_3.lost_battle_num
      L5_3 = L5_3 + L6_3
      if L5_3 ~= 0 then
        L4_3.battleNum = L5_3
        L6_3 = L2_3.won_battle_num
        L6_3 = L6_3 / L5_3
        L4_3.wonRatio = L6_3
      else
        L4_3.battleNum = 0
        L4_3.wonRatio = 0
      end
      L6_3 = L2_3.league_rank
      if not L6_3 then
        L6_3 = nil
      end
      L4_3.leagueRank = L6_3
      L6_3 = L2_3.league_id
      L4_3.leagueID = L6_3
      L6_3 = L4_3.leagueID
      if L6_3 == 0 then
        L4_3.leagueID = nil
      end
      L6_3 = L2_3.prev_league_id
      L4_3.preLeagueID = L6_3
      L6_3 = L4_3.preLeagueID
      if L6_3 == 0 then
        L4_3.preLeagueID = nil
      end
      L6_3 = L2_3.prev_league_rank
      if not L6_3 then
        L6_3 = nil
      end
      L4_3.preLeagueRank = L6_3
      L6_3 = L0_1
      L7_3 = L2_3.mood_id
      L6_3 = L6_3[L7_3]
      if not L6_3 then
        L6_3 = L0_1
        L6_3 = L6_3[1]
      end
      L4_3.mood = L6_3
      L6_3 = L1_1
      L6_3 = L6_3.getAvatarByID
      L7_3 = L2_3.avatar_id
      L6_3 = L6_3(L7_3)
      L4_3.avatar = L6_3
      L6_3 = A0_2
      if L6_3 == nil then
        L6_3 = L2_3.real_name
        L4_3.realName = L6_3
        L6_3 = L2_3.birth_year
        L4_3.birthYear = L6_3
        L6_3 = L5_1
        L7_3 = L2_3.gender
        L6_3 = L6_3[L7_3]
        L4_3.gender = L6_3
        L6_3 = L2_3.phone
        L4_3.phone = L6_3
        L6_3 = L2_3.address
        L4_3.address = L6_3
      end
      L6_3 = L2_1
      L6_3 = L6_3.hide
      L6_3()
      L6_3 = L8_1
      L6_3 = L6_3.printTable
      L7_3 = L4_3
      L6_3(L7_3)
      L6_3 = A1_2
      L7_3 = L4_3
      L6_3(L7_3)
    end
  end
  
  L5_2 = mainPlayer
  L5_2 = L5_2.id
  if A0_2 == L5_2 or A0_2 == nil then
    L5_2 = {}
    L6_2 = mainPlayer
    L6_2 = L6_2.name
    L5_2.name = L6_2
    L6_2 = mainPlayer
    L6_2 = L6_2.updatedAt
    L5_2.updatedAt = L6_2
    L6_2 = mainPlayer
    L6_2 = L6_2.lastLoadAt
    L5_2.lastLoadAt = L6_2
    L6_2 = mainPlayer
    L6_2 = L6_2.rank
    L5_2.totalRank = L6_2
    L6_2 = mainPlayer
    L6_2 = L6_2.tribe
    if L6_2 then
      L6_2 = mainPlayer
      L6_2 = L6_2.tribe
      L6_2 = L6_2.id
      if 0 < L6_2 then
        L6_2 = mainPlayer
        L6_2 = L6_2.tribe
        L6_2 = L6_2.name
        L5_2.tribe = L6_2
        L6_2 = mainPlayer
        L6_2 = L6_2.tribe
        L6_2 = L6_2.rank
        L5_2.tribeRank = L6_2
        L6_2 = L6_1
        L7_2 = mainPlayer
        L7_2 = L7_2.positionInTribe
        L6_2 = L6_2[L7_2]
        L5_2.tribePosition = L6_2
      end
    end
    L6_2 = mainPlayer
    L6_2 = L6_2.wonBattleNum
    L5_2.wonBattleNum = L6_2
    L6_2 = mainPlayer
    L6_2 = L6_2.medals
    L5_2.medals = L6_2
    L6_2 = mainPlayer
    L6_2 = L6_2.wonBattleNum
    if L6_2 then
      L6_2 = mainPlayer
      L6_2 = L6_2.lostBattleNum
      if L6_2 then
        L6_2 = mainPlayer
        L6_2 = L6_2.wonBattleNum
        L7_2 = mainPlayer
        L7_2 = L7_2.lostBattleNum
        L6_2 = L6_2 + L7_2
        if L6_2 ~= 0 then
          L5_2.battleNum = L6_2
          L7_2 = mainPlayer
          L7_2 = L7_2.wonBattleNum
          L7_2 = L7_2 / L6_2
          L5_2.wonRatio = L7_2
        else
          L5_2.battleNum = 0
          L5_2.wonRatio = 0
        end
      end
    end
    L6_2 = mainPlayer
    L6_2 = L6_2.leagueRank
    L5_2.leagueRank = L6_2
    L6_2 = mainPlayer
    L6_2 = L6_2.leagueId
    L5_2.leagueID = L6_2
    L6_2 = L5_2.leagueID
    if L6_2 == 0 then
      L5_2.leagueID = nil
    end
    L6_2 = mainPlayer
    L6_2 = L6_2.preLeagueID
    L5_2.preLeagueID = L6_2
    L6_2 = L5_2.preLeagueID
    if L6_2 == 0 then
      L5_2.preLeagueID = nil
    end
    L6_2 = mainPlayer
    L6_2 = L6_2.preLeagueRank
    L5_2.preLeagueRank = L6_2
    L6_2 = mainPlayer
    L6_2 = L6_2.mood
    if not L6_2 then
      L6_2 = L0_1
      L6_2 = L6_2[1]
    end
    L5_2.mood = L6_2
    L6_2 = mainPlayer
    L6_2 = L6_2.avatar
    if not L6_2 then
      L6_2 = L1_1
      L6_2 = L6_2.getAvatarByID
      L7_2 = 1
      L6_2 = L6_2(L7_2)
    end
    L5_2.avatar = L6_2
    L6_2 = mainPlayer
    L6_2 = L6_2.realName
    L5_2.realName = L6_2
    L6_2 = mainPlayer
    L6_2 = L6_2.birthYear
    L5_2.birthYear = L6_2
    L6_2 = mainPlayer
    L6_2 = L6_2.gender
    L5_2.gender = L6_2
    L6_2 = mainPlayer
    L6_2 = L6_2.phone
    L5_2.phone = L6_2
    L6_2 = mainPlayer
    L6_2 = L6_2.address
    L5_2.address = L6_2
    return L5_2
  else
    L5_2 = nil
    if A0_2 ~= nil then
      L6_2 = {}
      L6_2.player_id = A0_2
      L5_2 = L6_2
    else
      L6_2 = {}
      L5_2 = L6_2
    end
    L6_2 = {}
    L6_2.body = L5_2
    L7_2 = log3
    L8_2 = "Sending profile getPlayerInfo Request to server"
    L7_2(L8_2)
    L7_2 = network
    L7_2 = L7_2.getDefaultHeader
    L7_2 = L7_2()
    L6_2.headers = L7_2
    L7_2 = L2_1
    L7_2 = L7_2.show
    L8_2 = L3_1
    L8_2 = L8_2.getPlayerInfo
    L7_2(L8_2)
    L7_2 = network
    L7_2 = L7_2.request
    L8_2 = Constants
    L8_2 = L8_2.API_Path
    L9_2 = Constants
    L9_2 = L9_2.API_PROFILE_GET_PLAYER_INFO
    L8_2 = L8_2 .. L9_2
    L9_2 = "POST"
    L10_2 = L4_2
    L11_2 = L6_2
    L12_2 = "getPlayerInfo"
    L13_2 = nil
    L14_2 = L3_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
end

getPlayerInfo = L11_1

function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L2_1
    L1_3 = L1_3.hide
    L1_3()
    L1_3 = A2_2
    if L1_3 then
      L1_3 = A2_2
      L1_3()
    end
    L1_3 = showSimpleDialog
    L2_3 = "Profile setAvatar ERROR :"
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "setAvatar"
    L4_3 = L3_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L1_1
      L3_3 = L3_3.avatars
      L4_3 = A0_2
      L3_3 = L3_3[L4_3]
      L3_3.isAvailable = true
      L3_3 = mainPlayer
      L4_3 = L1_1
      L4_3 = L4_3.getAvatarByID
      L5_3 = A0_2
      L4_3 = L4_3(L5_3)
      L3_3.avatar = L4_3
      L3_3 = mainPlayer
      L4_3 = L3_3
      L3_3 = L3_3.saveSettings
      L3_3(L4_3)
      L3_3 = L2_3.avatar_payment_available
      if L3_3 == false then
        L3_3 = Constants
        L3_3.Can_Open_Avatar_Pack = false
      else
        L3_3 = L2_3.avatar_payment_available
        if L3_3 == true then
          L3_3 = Constants
          L3_3.Can_Open_Avatar_Pack = true
        end
      end
      L3_3 = A1_2
      L3_3()
      L3_3 = L2_1
      L3_3 = L3_3.hide
      L3_3()
    end
  end
  
  L5_2 = {}
  L5_2.avatar_id = A0_2
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = log3
  L8_2 = "Sending profile setAvatar Request to server with avatar id :"
  L9_2 = A0_2
  L7_2(L8_2, L9_2)
  L7_2 = network
  L7_2 = L7_2.getDefaultHeader
  L7_2 = L7_2()
  L6_2.headers = L7_2
  L7_2 = L2_1
  L7_2 = L7_2.show
  L8_2 = L3_1
  L8_2 = L8_2.setAvatar
  L7_2(L8_2)
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = Constants
  L8_2 = L8_2.API_Path
  L9_2 = Constants
  L9_2 = L9_2.API_PROFILE_SET_PLAYER_INFO
  L8_2 = L8_2 .. L9_2
  L9_2 = "POST"
  L10_2 = L4_2
  L11_2 = L6_2
  L12_2 = "setAvatar"
  L13_2 = nil
  L14_2 = L3_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end

setAvatar = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A0_2 == nil then
    L1_2 = mainPlayer
    L1_2 = L1_2.avatar
    if L1_2 ~= nil then
      L1_2 = mainPlayer
      L1_2 = L1_2.avatar
      return L1_2
  end
  else
    function L1_2(A0_3)
      local L1_3, L2_3, L3_3
      
      L1_3 = L2_1
      L1_3 = L1_3.hide
      L1_3()
      L1_3 = showSimpleDialog
      L2_3 = "Profile getAvatar ERROR :"
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    
    function L2_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      L1_3 = network
      L1_3 = L1_3.checkForErrors
      L2_3 = A0_3
      L3_3 = "getAvatar"
      L4_3 = L1_2
      L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
      if L1_3 then
        L3_3 = {}
        L3_3.avatar_id = "number"
        L4_3 = multiCheckValidityAssert
        L5_3 = L2_3
        L6_3 = "wrong data in getAvatar"
        L7_3 = _NAME
        L8_3 = L3_3
        L4_3(L5_3, L6_3, L7_3, L8_3)
        L4_3 = mainPlayer
        L5_3 = L1_1
        L5_3 = L5_3.getAvatarByID
        L6_3 = L2_3.avatar_id
        L5_3 = L5_3(L6_3)
        L4_3.avatar = L5_3
        L4_3 = L2_1
        L4_3 = L4_3.hide
        L4_3()
        L4_3 = mainPlayer
        L4_3 = L4_3.avatar
        return L4_3
      end
    end
    
    if A0_2 ~= nil then
      L3_2 = {}
      L3_2.player_id = A0_2
    else
      L3_2 = {}
    end
    L3_2 = {}
    L4_2 = postDataTable
    L3_2.body = L4_2
    L4_2 = log3
    L5_2 = "Sending profile getAvatar Request to server"
    L4_2(L5_2)
    L4_2 = network
    L4_2 = L4_2.getDefaultHeader
    L4_2 = L4_2()
    L3_2.headers = L4_2
    L4_2 = L2_1
    L4_2 = L4_2.show
    L5_2 = L3_1
    L5_2 = L5_2.getAvatar
    L4_2(L5_2)
    L4_2 = network
    L4_2 = L4_2.request
    L5_2 = Constants
    L5_2 = L5_2.API_Path
    L6_2 = Constants
    L6_2 = L6_2.API_PROFILE_GET_PLAYER_INFO
    L5_2 = L5_2 .. L6_2
    L6_2 = "POST"
    L7_2 = L2_2
    L8_2 = L3_2
    L9_2 = "getAvatar"
    L10_2 = nil
    L11_2 = L1_2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end

getAvatar = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.avatars
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if A0_2 then
      L7_2 = L6_2.id
      L8_2 = avatarsTable
      L9_2 = L6_2.avatarSet
      L8_2 = L8_2[L9_2]
      if L7_2 < L8_2 then
        L7_2 = avatarsImagePath
        L8_2 = #L1_2
        L8_2 = L8_2 + 1
        L7_2[L8_2] = L6_2
      else
        L7_2 = L6_2.isAvailable
        if L7_2 == true then
          L7_2 = avatarsImagePath
          L8_2 = #L1_2
          L8_2 = L8_2 + 1
          L7_2[L8_2] = L6_2
        end
      end
    else
      L7_2 = avatarsImagePath
      L8_2 = #L1_2
      L8_2 = L8_2 + 1
      L7_2[L8_2] = L6_2
    end
  end
  return L1_2
end

getAvatarList = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = L1_1
  L3_2 = L3_2.avatars
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.avatarSet
    if L7_2 == A0_2 then
      L7_2 = L6_2.isAvailable
      if L7_2 == true then
        L7_2 = L6_2.id
        L1_2[L7_2] = L6_2
      else
        L7_2 = L6_2.id
        L8_2 = L4_1
        L8_2 = L8_2.getAvatarSetByID
        L9_2 = L6_2.avatarSet
        L8_2 = L8_2(L9_2)
        L8_2 = L8_2.numberOfFreeAvatars
        if L7_2 < L8_2 then
          L7_2 = L6_2.id
          L1_2[L7_2] = L6_2
        end
      end
    end
  end
  L2_2 = 1
  L3_2 = L4_1
  L3_2 = L3_2.getAvatarSetByID
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.numberOfFreeAvatars
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2 - 1
    L6_2 = L6_2 * 100
    L6_2 = L5_2 + L6_2
    L7_2 = L1_1
    L7_2 = L7_2.getAvatarByID
    L8_2 = A0_2 - 1
    L8_2 = L8_2 * 100
    L8_2 = L5_2 + L8_2
    L7_2 = L7_2(L8_2)
    L1_2[L6_2] = L7_2
  end
  return L1_2
end

getAvatarListByAvatarSet = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L4_1
    L6_2 = L6_2.getAvatarSetByID
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L7_2 = tonumber
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L6_2.numberOfFreeAvatars = L7_2
  end
end

processAvatarsTable = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.id
  L2_2 = L4_1
  L2_2 = L2_2.getAvatarSetByID
  L3_2 = A0_2.avatarSet
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.numberOfFreeAvatars
  L3_2 = A0_2.avatarSet
  L3_2 = L3_2 - 1
  L3_2 = L3_2 * 100
  L2_2 = L2_2 + L3_2
  if L1_2 <= L2_2 then
    A0_2.isAvailable = true
  end
  return A0_2
end

checkAvatar = L11_1

function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = L4_1
  L2_2 = L2_2.avatarSets
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = #L0_2
    L6_2 = L6_2 + 1
    L0_2[L6_2] = L5_2
  end
  return L0_2
end

getAvatarSetsList = L11_1

function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L0_2[L4_2] = L5_2
  end
  return L0_2
end

getMoodList = L11_1

function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L2_1
    L1_3 = L1_3.hide
    L1_3()
    L1_3 = A2_2
    if L1_3 then
      L1_3 = A2_2
      L1_3()
    end
    L1_3 = showSimpleDialog
    L2_3 = "Profile setMood ERROR :"
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "setMood"
    L4_3 = L3_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = mainPlayer
      L4_3 = L0_1
      L5_3 = A0_2
      L4_3 = L4_3[L5_3]
      L3_3.mood = L4_3
      L3_3 = mainPlayer
      L4_3 = L3_3
      L3_3 = L3_3.saveSettings
      L3_3(L4_3)
      L3_3 = A1_2
      L3_3()
      L3_3 = L2_1
      L3_3 = L3_3.hide
      L3_3()
    end
  end
  
  L5_2 = {}
  L5_2.mood_id = A0_2
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = log3
  L8_2 = "Sending profile setMood Request to server with mood id  :"
  L9_2 = A0_2
  L7_2(L8_2, L9_2)
  L7_2 = network
  L7_2 = L7_2.getDefaultHeader
  L7_2 = L7_2()
  L6_2.headers = L7_2
  L7_2 = L2_1
  L7_2 = L7_2.show
  L8_2 = L3_1
  L8_2 = L8_2.setMood
  L7_2(L8_2)
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = Constants
  L8_2 = L8_2.API_Path
  L9_2 = Constants
  L9_2 = L9_2.API_PROFILE_SET_PLAYER_INFO
  L8_2 = L8_2 .. L9_2
  L9_2 = "POST"
  L10_2 = L4_2
  L11_2 = L6_2
  L12_2 = "setMood"
  L13_2 = nil
  L14_2 = L3_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end

setMood = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A0_2 == nil then
    L1_2 = mainPlayer
    L1_2 = L1_2.mood
    if L1_2 ~= nil then
      L1_2 = mainPlayer
      L1_2 = L1_2.mood
      return L1_2
  end
  else
    function L1_2(A0_3)
      local L1_3, L2_3, L3_3
      
      L1_3 = L2_1
      L1_3 = L1_3.hide
      L1_3()
      L1_3 = showSimpleDialog
      L2_3 = "Profile getMood ERROR :"
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    
    function L2_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      L1_3 = network
      L1_3 = L1_3.checkForErrors
      L2_3 = A0_3
      L3_3 = "getMood"
      L4_3 = L1_2
      L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
      if L1_3 then
        L3_3 = {}
        L3_3.mood_id = "number"
        L4_3 = multiCheckValidityAssert
        L5_3 = L2_3
        L6_3 = "wrong data in getMood"
        L7_3 = _NAME
        L8_3 = L3_3
        L4_3(L5_3, L6_3, L7_3, L8_3)
        L4_3 = mainPlayer
        L5_3 = L0_1
        L6_3 = L2_3.mood_id
        L5_3 = L5_3[L6_3]
        L4_3.mood = L5_3
        L4_3 = L2_1
        L4_3 = L4_3.hide
        L4_3()
        L4_3 = mainPlayer
        L4_3 = L4_3.mood
        return L4_3
      end
    end
    
    if A0_2 ~= nil then
      L3_2 = {}
      L3_2.player_id = A0_2
    else
      L3_2 = {}
    end
    L3_2 = {}
    L4_2 = postDataTable
    L3_2.body = L4_2
    L4_2 = log3
    L5_2 = "Sending profile getMood Request to server"
    L4_2(L5_2)
    L4_2 = network
    L4_2 = L4_2.getDefaultHeader
    L4_2 = L4_2()
    L3_2.headers = L4_2
    L4_2 = L2_1
    L4_2 = L4_2.show
    L5_2 = L3_1
    L5_2 = L5_2.getMood
    L4_2(L5_2)
    L4_2 = network
    L4_2 = L4_2.request
    L5_2 = Constants
    L5_2 = L5_2.API_Path
    L6_2 = Constants
    L6_2 = L6_2.API_PROFILE_GET_PLAYER_INFO
    L5_2 = L5_2 .. L6_2
    L6_2 = "POST"
    L7_2 = L2_2
    L8_2 = L3_2
    L9_2 = "getMood"
    L10_2 = nil
    L11_2 = L1_2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end

getMood = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L10_1
  if L1_2 ~= nil then
    L1_2 = L10_1
    return L1_2
  else
    function L1_2(A0_3)
      local L1_3, L2_3, L3_3
      
      L1_3 = L2_1
      L1_3 = L1_3.hide
      L1_3()
      L1_3 = showSimpleDialog
      L2_3 = "Profile getLeagueInfo ERROR :"
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    
    function L2_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      L1_3 = network
      L1_3 = L1_3.checkForErrors
      L2_3 = A0_3
      L3_3 = "getLeagueInfo"
      L4_3 = L1_2
      L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
      if L1_3 then
        L3_3 = {}
        L3_3.league_rank = "number"
        L3_3.league_id = "number"
        L3_3.prev_league_id = "number"
        L3_3.prev_league_rank = "number"
        L4_3 = multiCheckValidityAssert
        L5_3 = L2_3
        L6_3 = "wrong data in getLeagueInfo"
        L7_3 = _NAME
        L8_3 = L3_3
        L4_3(L5_3, L6_3, L7_3, L8_3)
        L4_3 = {}
        L5_3 = L2_3.league_rank
        L4_3.leagueRank = L5_3
        L5_3 = L2_3.league_id
        L4_3.leagueID = L5_3
        L5_3 = L2_3.prev_league_id
        L4_3.preLeagueID = L5_3
        L5_3 = L2_3.prev_league_rank
        L4_3.preLeagueRank = L5_3
        L10_1 = L4_3
        L4_3 = L2_1
        L4_3 = L4_3.hide
        L4_3()
        L4_3 = L10_1
        return L4_3
      end
    end
    
    if A0_2 ~= nil then
      L3_2 = {}
      L3_2.player_id = A0_2
    else
      L3_2 = {}
    end
    L3_2 = {}
    L4_2 = postDataTable
    L3_2.body = L4_2
    L4_2 = log3
    L5_2 = "Sending profile getLeagueInfo Request to server"
    L4_2(L5_2)
    L4_2 = network
    L4_2 = L4_2.getDefaultHeader
    L4_2 = L4_2()
    L3_2.headers = L4_2
    L4_2 = L2_1
    L4_2 = L4_2.show
    L5_2 = L3_1
    L5_2 = L5_2.getLeagueInfo
    L4_2(L5_2)
    L4_2 = network
    L4_2 = L4_2.request
    L5_2 = Constants
    L5_2 = L5_2.API_Path
    L6_2 = Constants
    L6_2 = L6_2.API_PROFILE_GET_PLAYER_INFO
    L5_2 = L5_2 .. L6_2
    L6_2 = "POST"
    L7_2 = L2_2
    L8_2 = L3_2
    L9_2 = "getLeagueInfo"
    L10_2 = nil
    L11_2 = L1_2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end

getLeagueInfo = L11_1

function L11_1(A0_2)
  local L1_2
  L1_2 = mainPlayer
  L1_2.birthYear = A0_2
end

setBirthYear = L11_1

function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = mainPlayer
  L2_2 = L5_1
  L2_2 = L2_2[A0_2]
  L1_2.gender = L2_2
end

setGender = L11_1

function L11_1(A0_2)
  local L1_2
  L1_2 = mainPlayer
  L1_2.realName = A0_2
end

setRealName = L11_1

function L11_1(A0_2)
  local L1_2
  L1_2 = mainPlayer
  L1_2.phone = A0_2
end

setPhone = L11_1

function L11_1(A0_2)
  local L1_2
  L1_2 = mainPlayer
  L1_2.address = A0_2
end

setAddress = L11_1

function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  
  function L0_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L2_1
    L1_3 = L1_3.hide
    L1_3()
    L1_3 = showSimpleDialog
    L2_3 = "Profile setInfo ERROR :"
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "setPrivateInfo"
    L4_3 = L0_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L2_1
      L3_3 = L3_3.hide
      L3_3()
    end
  end
  
  L2_2 = {}
  L3_2 = mainPlayer
  L3_2 = L3_2.address
  L2_2.address = L3_2
  L3_2 = mainPlayer
  L3_2 = L3_2.realName
  L2_2.realname = L3_2
  L3_2 = mainPlayer
  L3_2 = L3_2.gender
  L3_2 = L3_2.id
  L2_2.gender = L3_2
  L3_2 = mainPlayer
  L3_2 = L3_2.birthYear
  L2_2.birth_year = L3_2
  L3_2 = mainPlayer
  L3_2 = L3_2.phone
  L2_2.phone = L3_2
  L3_2 = {}
  L3_2.body = L2_2
  L4_2 = log3
  L5_2 = "Sending profile setInfo Request to server"
  L4_2(L5_2)
  L4_2 = network
  L4_2 = L4_2.getDefaultHeader
  L4_2 = L4_2()
  L3_2.headers = L4_2
  L4_2 = L2_1
  L4_2 = L4_2.show
  L5_2 = L3_1
  L5_2 = L5_2.setInfo
  L4_2(L5_2)
  L4_2 = network
  L4_2 = L4_2.request
  L5_2 = Constants
  L5_2 = L5_2.API_Path
  L6_2 = Constants
  L6_2 = L6_2.API_PROFILE_SET_PLAYER_INFO
  L5_2 = L5_2 .. L6_2
  L6_2 = "POST"
  L7_2 = L1_2
  L8_2 = L3_2
  L9_2 = "setPlayerInfo"
  L10_2 = nil
  L11_2 = L0_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end

sendPrivateInfo = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "Capture Player Information"
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
  
  L3_2 = {}
  L4_2 = mainPlayer
  L4_2 = L4_2.googleName
  L3_2.realname = L4_2
  L4_2 = mainPlayer
  L4_2 = L4_2.googleEmail
  L3_2.email = L4_2
  L4_2 = mainPlayer
  L4_2 = L4_2.googleId
  L3_2.google_id = L4_2
  L4_2 = mainPlayer
  L4_2 = L4_2.googleGender
  L3_2.gender = L4_2
  L4_2 = mainPlayer
  L4_2 = L4_2.googleBirthDate
  if L4_2 then
    L4_2 = mainPlayer
    L4_2 = L4_2.googleBirthDate
    L3_2.birth_year = L4_2
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
  L7_2 = L7_2.API_PROFILE_SET_PLAYER_INFO
  L6_2 = L6_2 .. L7_2
  L7_2 = "POST"
  L8_2 = L2_2
  L9_2 = L4_2
  L10_2 = "capture Player Information"
  L11_2 = nil
  L12_2 = A1_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end

sendGooglePlusInformation = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  if A0_2 then
    L2_2 = pairs
    L3_2 = A0_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L7_1
      L8_2 = tonumber
      L9_2 = L5_2
      L8_2 = L8_2(L9_2)
      L7_2 = L7_2[L8_2]
      if L7_2 then
        L7_2 = L7_1
        L8_2 = tonumber
        L9_2 = L5_2
        L8_2 = L8_2(L9_2)
        L7_2 = L7_2[L8_2]
        L7_2.count = L6_2
        L7_2 = L7_1
        L8_2 = tonumber
        L9_2 = L5_2
        L8_2 = L8_2(L9_2)
        L7_2 = L7_2[L8_2]
        L7_2.isAvailable = true
        L7_2 = #L1_2
        L7_2 = L7_2 + 1
        L8_2 = L7_1
        L9_2 = tonumber
        L10_2 = L5_2
        L9_2 = L9_2(L10_2)
        L8_2 = L8_2[L9_2]
        L1_2[L7_2] = L8_2
      end
    end
  end
  return L1_2
end

readMedals = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L7_1
    L7_2 = tonumber
    L8_2 = L4_2
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2[L7_2]
    L6_2.count = L5_2
    L6_2 = L7_1
    L7_2 = tonumber
    L8_2 = L4_2
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2[L7_2]
    L6_2.isAvailable = true
    L6_2 = mainPlayer
    L6_2 = L6_2.medals
    L7_2 = mainPlayer
    L7_2 = L7_2.medals
    L7_2 = #L7_2
    L7_2 = L7_2 + 1
    L8_2 = L7_1
    L9_2 = tonumber
    L10_2 = L4_2
    L9_2 = L9_2(L10_2)
    L8_2 = L8_2[L9_2]
    L6_2[L7_2] = L8_2
  end
end

addToMedals = L11_1

function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L2_1
    L1_3 = L1_3.hide
    L1_3()
    L1_3 = A2_2
    L1_3()
    L1_3 = showSimpleDialog
    L2_3 = "Profile setMedal ERROR :"
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "setMedal"
    L4_3 = L3_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = mainPlayer
      L3_3 = L3_3.medals
      L4_3 = mainPlayer
      L4_3 = L4_3.medals
      L4_3 = #L4_3
      L4_3 = L4_3 + 1
      L5_3 = L7_1
      L6_3 = A0_2
      L5_3 = L5_3[L6_3]
      L3_3[L4_3] = L5_3
      L3_3 = A1_2
      L3_3()
      L3_3 = L2_1
      L3_3 = L3_3.hide
      L3_3()
    end
  end
  
  L5_2 = {}
  L5_2.medal_id = A0_2
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = log3
  L8_2 = "Sending profile setMedal Request to server"
  L7_2(L8_2)
  L7_2 = network
  L7_2 = L7_2.getDefaultHeader
  L7_2 = L7_2()
  L6_2.headers = L7_2
  L7_2 = L2_1
  L7_2 = L7_2.show
  L8_2 = L3_1
  L8_2 = L8_2.setMedal
  L7_2(L8_2)
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = Constants
  L8_2 = L8_2.API_Path
  L9_2 = Constants
  L9_2 = L9_2.API_PROFILE_SET_PLAYER_INFO
  L8_2 = L8_2 .. L9_2
  L9_2 = "POST"
  L10_2 = L4_2
  L11_2 = L6_2
  L12_2 = "setMedal"
  L13_2 = nil
  L14_2 = L3_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end

setMedal = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = L9_1
  L2_2 = L2_2[4]
  L2_2 = L2_2.limit
  if A0_2 > L2_2 then
    L2_2 = A0_2 % 50
    if L2_2 == 0 then
      function L2_2(A0_3)
        local L1_3, L2_3
        
        L1_3 = A1_2
        if L1_3 then
          L1_3 = A1_2
          L2_3 = A0_3
          L1_3(L2_3)
        end
      end
      
      function L3_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3
        L1_3 = network
        L1_3 = L1_3.checkForErrors
        L2_3 = A0_3
        L3_3 = "setPirtulNumber"
        L4_3 = L2_2
        L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
        if L1_3 then
          L3_3 = L2_3.medals
          if L3_3 then
            L3_3 = addToMedals
            L4_3 = L2_3.medals
            L3_3(L4_3)
          end
        end
      end
      
      L4_2 = {}
      L4_2.pirtul = A0_2
      L5_2 = {}
      L5_2.body = L4_2
      L6_2 = log3
      L7_2 = "Sending profile setPirtulNumber Request to server"
      L6_2(L7_2)
      L6_2 = network
      L6_2 = L6_2.getDefaultHeader
      L6_2 = L6_2()
      L5_2.headers = L6_2
      L6_2 = network
      L6_2 = L6_2.request
      L7_2 = Constants
      L7_2 = L7_2.API_Path
      L8_2 = Constants
      L8_2 = L8_2.API_PROFILE_SET_PLAYER_INFO
      L7_2 = L7_2 .. L8_2
      L8_2 = "POST"
      L9_2 = L3_2
      L10_2 = L5_2
      L11_2 = "setPirtulNumber"
      L12_2 = nil
      L13_2 = L2_2
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    end
  end
end

checkForPirtulMedal = L11_1
