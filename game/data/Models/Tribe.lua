local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Constants"
L0_1 = L0_1(L1_1)
Constants = L0_1
L0_1 = require
L1_1 = "Utils.Network"
L0_1 = L0_1(L1_1)
NetworkUtils = L0_1
L0_1 = require
L1_1 = "json"
L0_1 = L0_1(L1_1)
json = L0_1
L0_1 = require
L1_1 = "Models.Building"
L0_1 = L0_1(L1_1)
BuildingModel = L0_1
L0_1 = require
L1_1 = "TestServer"
L0_1 = L0_1(L1_1)
TestServer = L0_1
L0_1 = require
L1_1 = "Language"
L0_1 = L0_1(L1_1)
Language = L0_1
L0_1 = require
L1_1 = "Models.Player"
L0_1 = L0_1(L1_1)
playerModel = L0_1
L0_1 = require
L1_1 = "Models.MessagePipe"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.Analytics"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Models.Operation"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Models.AchievementManager"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Data.Avatars"
L4_1 = L4_1(L5_1)
L5_1 = 0
id = L5_1
L5_1 = "name not set"
name = L5_1
L5_1 = "description not set"
description = L5_1
L5_1 = 0
memberCount = L5_1
L5_1 = 0
gold = L5_1
L5_1 = 0
rank = L5_1
L5_1 = nil
chiefId = L5_1
L5_1 = nil
buildings = L5_1
L5_1 = nil
memberIds = L5_1
L5_1 = nil
seed = L5_1
L5_1 = 0
xp = L5_1

function L5_1(A0_2, A1_2)
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

new = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L6_2 = L1_1
  L6_2 = L6_2.logEvent
  L7_2 = "Tribe Create Called"
  L6_2(L7_2)
  
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "createTribe"
    
    function L4_3(A0_4)
      local L1_4, L2_4, L3_4
      L1_4 = A3_2
      L2_4 = A4_2
      L3_4 = A0_4
      L1_4(L2_4, L3_4)
    end
    
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L2_3.tribe
      tribeProperties = L3_3
      L3_3 = _M
      L4_3 = L3_3
      L3_3 = L3_3.new
      L3_3 = L3_3(L4_3)
      L4_3 = tribeProperties
      L4_3 = L4_3.id
      if L4_3 ~= nil then
        L4_3 = tribeProperties
        L4_3 = L4_3.name
        if L4_3 ~= nil then
          L4_3 = tribeProperties
          L4_3 = L4_3.description
          if L4_3 ~= nil then
            L4_3 = tribeProperties
            L4_3 = L4_3.gold
            if L4_3 ~= nil then
              L4_3 = tribeProperties
              L4_3 = L4_3.rank
              if L4_3 ~= nil then
                L4_3 = tribeProperties
                L4_3 = L4_3.score
                if L4_3 ~= nil then
                  L4_3 = tribeProperties
                  L4_3 = L4_3.donates_number
                  if L4_3 ~= nil then
                    L4_3 = tribeProperties
                    L4_3 = L4_3.id
                    L3_3.id = L4_3
                    L4_3 = tribeProperties
                    L4_3 = L4_3.name
                    L3_3.name = L4_3
                    L4_3 = tribeProperties
                    L4_3 = L4_3.description
                    L3_3.description = L4_3
                    L4_3 = tribeProperties
                    L4_3 = L4_3.gold
                    L3_3.gold = L4_3
                    L4_3 = tribeProperties
                    L4_3 = L4_3.rank
                    L3_3.rank = L4_3
                    L4_3 = mainPlayer
                    L4_3 = L4_3.id
                    L3_3.chiefId = L4_3
                    L4_3 = {}
                    L3_3.buildings = L4_3
                    L3_3.level = 0
                    L4_3 = tribeProperties
                    L4_3 = L4_3.score
                    L3_3.score = L4_3
                    L4_3 = tonumber
                    L5_3 = tribeProperties
                    L5_3 = L5_3.status
                    L4_3 = L4_3(L5_3)
                    L3_3.status = L4_3
                    L4_3 = tribeProperties
                    L4_3 = L4_3.donates_number
                    L3_3.donatesNumber = L4_3
                    L4_3 = BuildingModel
                    L5_3 = L4_3
                    L4_3 = L4_3.new
                    L6_3 = {}
                    L7_3 = Language
                    L7_3 = L7_3["defence building"]
                    L6_3.name = L7_3
                    L7_3 = Language
                    L7_3 = L7_3["defence description"]
                    L6_3.description = L7_3
                    L6_3.level = 1
                    L6_3.maxLevel = 10
                    L6_3.maxCards = 4
                    L7_3 = Constants
                    L7_3 = L7_3.Resource_DeffenceBuildingImage
                    L6_3.image = L7_3
                    L6_3.buildingType = "defensive"
                    L4_3 = L4_3(L5_3, L6_3)
                    defensiveBuilding = L4_3
                    L4_3 = L3_3.buildings
                    L5_3 = defensiveBuilding
                    L4_3.defense = L5_3
                    L4_3 = BuildingModel
                    L5_3 = L4_3
                    L4_3 = L4_3.new
                    L6_3 = {}
                    L7_3 = Language
                    L7_3 = L7_3["attack building"]
                    L6_3.name = L7_3
                    L7_3 = Language
                    L7_3 = L7_3["attack description"]
                    L6_3.description = L7_3
                    L6_3.level = 0
                    L6_3.maxLevel = 10
                    L6_3.maxCards = 4
                    L7_3 = Constants
                    L7_3 = L7_3.Resource_AttackBuildingImage
                    L6_3.image = L7_3
                    L6_3.buildingType = "offensive"
                    L4_3 = L4_3(L5_3, L6_3)
                    offensiveBuilding = L4_3
                    L4_3 = L3_3.buildings
                    L5_3 = offensiveBuilding
                    L4_3.offense = L5_3
                    L4_3 = BuildingModel
                    L5_3 = L4_3
                    L4_3 = L4_3.new
                    L6_3 = {}
                    L7_3 = Language
                    L7_3 = L7_3["cooldown building"]
                    L6_3.name = L7_3
                    L7_3 = Language
                    L7_3 = L7_3["cooldown description"]
                    L6_3.description = L7_3
                    L6_3.level = 0
                    L6_3.maxLevel = 10
                    L6_3.maxCards = 4
                    L7_3 = Constants
                    L7_3 = L7_3.Resource_CooldownBuildingImage
                    L6_3.image = L7_3
                    L6_3.buildingType = "cooldown"
                    L4_3 = L4_3(L5_3, L6_3)
                    cooldownBuilding = L4_3
                    L4_3 = L3_3.buildings
                    L5_3 = cooldownBuilding
                    L4_3.cooldown = L5_3
                    L4_3 = BuildingModel
                    L5_3 = L4_3
                    L4_3 = L4_3.new
                    L6_3 = {}
                    L7_3 = Language
                    L7_3 = L7_3["mainhall building"]
                    L6_3.name = L7_3
                    L7_3 = Language
                    L7_3 = L7_3["mainhall description"]
                    L6_3.description = L7_3
                    L6_3.level = 1
                    L6_3.maxLevel = 10
                    L6_3.maxCards = 4
                    L7_3 = Constants
                    L7_3 = L7_3.Resource_DeffenceBuildingImage
                    L6_3.image = L7_3
                    L6_3.buildingType = "mainhall"
                    L4_3 = L4_3(L5_3, L6_3)
                    mainhallBuilding = L4_3
                    L4_3 = L3_3.buildings
                    L5_3 = mainhallBuilding
                    L4_3.mainhall = L5_3
                    L4_3 = defensiveBuilding
                    L4_3.tribe = L3_3
                    L4_3 = offensiveBuilding
                    L4_3.tribe = L3_3
                    L4_3 = cooldownBuilding
                    L4_3.tribe = L3_3
                    L4_3 = L2_3.player_gold
                    if L4_3 then
                      L4_3 = mainPlayer
                      L5_3 = L2_3.player_gold
                      L4_3.gold = L5_3
                    end
                end
              end
            end
          end
        end
      end
      else
        L4_3 = log
        L5_3 = "Network error! The response did not contain proper values:"
        L6_3 = A0_3.response
        L5_3 = L5_3 .. L6_3
        L4_3(L5_3)
        L4_3 = A3_2
        if L4_3 ~= nil then
          L4_3 = A3_2
          L5_3 = A4_2
          L6_3 = "Response did not contain required fields"
          L4_3(L5_3, L6_3)
        end
        return
      end
      L4_3 = A2_2
      if L4_3 ~= nil then
        L4_3 = A2_2
        L5_3 = A4_2
        L6_3 = L3_3
        L4_3(L5_3, L6_3)
      end
    end
  end
  
  L7_2 = {}
  L8_2 = Constants
  L8_2 = L8_2.Tribe_NameKey
  L7_2[L8_2] = A0_2
  L8_2 = Constants
  L8_2 = L8_2.Tribe_DescKey
  L7_2[L8_2] = A1_2
  L8_2 = Constants
  L8_2 = L8_2.Tribe_Status
  L7_2[L8_2] = A5_2
  L8_2 = {}
  L8_2.body = L7_2
  L9_2 = network
  L9_2 = L9_2.getDefaultHeader
  L9_2 = L9_2()
  L8_2.headers = L9_2
  L9_2 = network
  L9_2 = L9_2.request
  L10_2 = Constants
  L10_2 = L10_2.API_Path
  L11_2 = Constants
  L11_2 = L11_2.API_CreateTribe
  L10_2 = L10_2 .. L11_2
  L11_2 = "POST"
  L12_2 = L6_2
  L13_2 = L8_2
  L14_2 = "create tribe"
  L15_2 = nil
  L16_2 = A3_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
end

createTribe = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L1_1
  L2_2 = L2_2.logEvent
  L3_2 = "Recommended Tribes Fetched"
  L2_2(L3_2)
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "getRecommendedTribes"
    L4_3 = A1_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    L3_3 = {}
    if L1_3 then
      L4_3 = L2_3.tribes
      if L4_3 ~= nil then
        L4_3 = pairs
        L5_3 = L2_3.tribes
        L4_3, L5_3, L6_3 = L4_3(L5_3)
        for L7_3, L8_3 in L4_3, L5_3, L6_3 do
          L9_3 = _M
          L10_3 = L9_3
          L9_3 = L9_3.new
          L9_3 = L9_3(L10_3)
          L10_3 = L8_3.id
          if L10_3 ~= nil then
            L10_3 = L8_3.name
            if L10_3 ~= nil then
              L10_3 = L8_3.description
              if L10_3 ~= nil then
                L10_3 = L8_3.member_count
                if L10_3 ~= nil then
                  L10_3 = L8_3.rank
                  if L10_3 ~= nil then
                    L10_3 = L8_3.id
                    L9_3.id = L10_3
                    L10_3 = L8_3.name
                    L9_3.name = L10_3
                    L10_3 = L8_3.description
                    L9_3.description = L10_3
                    L10_3 = L8_3.member_count
                    L9_3.memberCount = L10_3
                    L10_3 = L8_3.rank
                    L9_3.rank = L10_3
                    L10_3 = L8_3.xp
                    L9_3.xp = L10_3
                    L10_3 = tonumber
                    L11_3 = L8_3.status
                    L10_3 = L10_3(L11_3)
                    L9_3.status = L10_3
                    L10_3 = L9_3.id
                    L3_3[L10_3] = L9_3
                end
              end
            end
          end
          else
            L10_3 = log3
            L11_3 = "!!!!!!!!!!!!  values !!!!!!!!!!!"
            L10_3(L11_3)
            L10_3 = A1_2
            if L10_3 ~= nil then
              L10_3 = A1_2
              L11_3 = "Response did not contain required fields"
              L10_3(L11_3)
            end
            return
          end
        end
      else
        L4_3 = log3
        L5_3 = "!!!!!!!!!!!!  responseData.tribes !!!!!!!!!!!"
        L4_3(L5_3)
        L4_3 = A1_2
        if L4_3 ~= nil then
          L4_3 = A1_2
          L5_3 = "Response did not contain required fields"
          L4_3(L5_3)
        end
        return
      end
      L4_3 = A0_2
      if L4_3 ~= nil then
        L4_3 = A0_2
        L5_3 = L3_3
        L4_3(L5_3)
      end
    end
  end
  
  L3_2 = network
  L3_2 = L3_2.request
  L4_2 = Constants
  L4_2 = L4_2.API_Path
  L5_2 = Constants
  L5_2 = L5_2.API_RecommendedTribes
  L4_2 = L4_2 .. L5_2
  L5_2 = "POST"
  L6_2 = L2_2
  L7_2 = nil
  L8_2 = "get recommended tribe"
  L9_2 = nil
  L10_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end

getRecommendedTribes = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "getTribeMembers"
    L4_3 = A3_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = {}
      tribeMembers = L3_3
      L3_3 = L2_3.members
      if L3_3 ~= nil then
        L3_3 = pairs
        L4_3 = L2_3.members
        L3_3, L4_3, L5_3 = L3_3(L4_3)
        for L6_3, L7_3 in L3_3, L4_3, L5_3 do
          L8_3 = playerModel
          L9_3 = L8_3
          L8_3 = L8_3.new
          L8_3 = L8_3(L9_3)
          L9_3 = L7_3.id
          if L9_3 ~= nil then
            L9_3 = L7_3.name
            if L9_3 ~= nil then
              L9_3 = L7_3.tribe_permission
              if L9_3 ~= nil then
                L9_3 = L7_3.xp
                if L9_3 ~= nil then
                  L9_3 = L7_3.rank
                  if L9_3 ~= nil then
                    L9_3 = L7_3.level
                    if L9_3 ~= nil then
                      L9_3 = L7_3.avatar_id
                      if L9_3 ~= nil then
                        L9_3 = L7_3.status
                        if L9_3 then
                          L9_3 = L7_3.status
                          L8_3.status = L9_3
                        end
                        L9_3 = L7_3.id
                        L8_3.id = L9_3
                        L9_3 = L7_3.name
                        L8_3.name = L9_3
                        L9_3 = L7_3.tribe_permission
                        L8_3.positionInTribe = L9_3
                        L9_3 = L7_3.xp
                        L8_3.xp = L9_3
                        L9_3 = L7_3.rank
                        L8_3.rank = L9_3
                        L9_3 = L7_3.level
                        L8_3.level = L9_3
                        L9_3 = L7_3.poke_status
                        L8_3.newbiePokeStatus = L9_3
                        L9_3 = tribeMembers
                        L10_3 = L8_3.id
                        L9_3[L10_3] = L8_3
                        L9_3 = L4_1
                        L9_3 = L9_3.getAvatarByID
                        L10_3 = L7_3.avatar_id
                        L9_3 = L9_3(L10_3)
                        L8_3.avatar = L9_3
                    end
                  end
                end
              end
            end
          end
          else
            L9_3 = log
            L10_3 = "Network error! The response did not contain proper values:"
            L11_3 = A0_3.response
            L10_3 = L10_3 .. L11_3
            L9_3(L10_3)
            L9_3 = A3_2
            if L9_3 ~= nil then
              L9_3 = A3_2
              L10_3 = A0_2
              L11_3 = "Response did not contain required fields"
              L9_3(L10_3, L11_3)
            end
            return
          end
        end
      else
        L3_3 = log
        L4_3 = "Network error! The response did not contain proper values:"
        L5_3 = A0_3.response
        L4_3 = L4_3 .. L5_3
        L3_3(L4_3)
        L3_3 = A3_2
        if L3_3 ~= nil then
          L3_3 = A3_2
          L4_3 = A0_2
          L5_3 = "Response did not contain required fields"
          L3_3(L4_3, L5_3)
        end
        return
      end
      L3_3 = A2_2
      if L3_3 ~= nil then
        L3_3 = A2_2
        L4_3 = tribeMembers
        L3_3(L4_3)
      end
    end
  end
  
  L5_2 = {}
  L5_2.coach_tribe = A1_2
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = network
  L7_2 = L7_2.getDefaultHeader
  L7_2 = L7_2()
  L6_2.headers = L7_2
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = Constants
  L8_2 = L8_2.API_Path
  L9_2 = Constants
  L9_2 = L9_2.API_TribeMembers
  L8_2 = L8_2 .. L9_2
  L9_2 = "POST"
  L10_2 = L4_2
  L11_2 = L6_2
  L12_2 = "get tribe members"
  L13_2 = nil
  L14_2 = A3_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end

getTribeMembers = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L7_2 = L1_1
  L7_2 = L7_2.logEvent
  L8_2 = "Edit Tribe Called"
  L7_2(L8_2)
  
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "editTribe"
    L4_3 = A4_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = mainPlayer
      L3_3 = L3_3.tribe
      L4_3 = A1_2
      L3_3.name = L4_3
      L3_3 = mainPlayer
      L3_3 = L3_3.tribe
      L4_3 = A2_2
      L3_3.description = L4_3
      L3_3 = mainPlayer
      L3_3 = L3_3.tribe
      L4_3 = A6_2
      L3_3.status = L4_3
      L3_3 = A3_2
      if L3_3 ~= nil then
        L3_3 = A3_2
        L4_3 = A5_2
        L5_3 = A0_2
        L3_3(L4_3, L5_3)
      end
    end
  end
  
  L8_2 = {}
  L9_2 = Constants
  L9_2 = L9_2.Tribe_IDKey
  L10_2 = A0_2.id
  L8_2[L9_2] = L10_2
  L9_2 = Constants
  L9_2 = L9_2.Tribe_NameKey
  L8_2[L9_2] = A1_2
  L9_2 = Constants
  L9_2 = L9_2.Tribe_DescKey
  L8_2[L9_2] = A2_2
  L9_2 = Constants
  L9_2 = L9_2.Tribe_Status
  L8_2[L9_2] = A6_2
  L9_2 = {}
  L9_2.body = L8_2
  L10_2 = network
  L10_2 = L10_2.getDefaultHeader
  L10_2 = L10_2()
  L9_2.headers = L10_2
  L10_2 = network
  L10_2 = L10_2.request
  L11_2 = Constants
  L11_2 = L11_2.API_Path
  L12_2 = Constants
  L12_2 = L12_2.API_EditTribe
  L11_2 = L11_2 .. L12_2
  L12_2 = "POST"
  L13_2 = L7_2
  L14_2 = L9_2
  L15_2 = "edit tribe"
  L16_2 = nil
  L17_2 = A4_2
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
end

editTribe = L5_1

function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = mainPlayer
  L0_2 = L0_2.tribe
  if L0_2 then
    L0_2 = mainPlayer
    L0_2 = L0_2.tribe
    L0_2 = L0_2.buildings
    L0_2 = L0_2.offense
    L0_2 = L0_2.assignedCards
    if L0_2 ~= nil then
      L0_2 = pairs
      L1_2 = mainPlayer
      L1_2 = L1_2.tribe
      L1_2 = L1_2.buildings
      L1_2 = L1_2.offense
      L1_2 = L1_2.assignedCards
      L0_2, L1_2, L2_2 = L0_2(L1_2)
      for L3_2, L4_2 in L0_2, L1_2, L2_2 do
        L4_2.cardUsedForBuilding = false
        L5_2 = mainPlayer
        L5_2 = L5_2.cards
        L6_2 = L4_2.id
        L5_2 = L5_2[L6_2]
        L6_2 = L5_2
        L5_2 = L5_2.setLastUsageDate
        L7_2 = os
        L7_2 = L7_2.time
        L7_2 = L7_2()
        L5_2(L6_2, L7_2)
      end
      L0_2 = mainPlayer
      L0_2 = L0_2.tribe
      L0_2 = L0_2.buildings
      L0_2 = L0_2.offense
      L1_2 = {}
      L0_2.assignedCards = L1_2
    end
    L0_2 = mainPlayer
    L0_2 = L0_2.tribe
    L0_2 = L0_2.buildings
    L0_2 = L0_2.defense
    L0_2 = L0_2.assignedCards
    if L0_2 ~= nil then
      L0_2 = pairs
      L1_2 = mainPlayer
      L1_2 = L1_2.tribe
      L1_2 = L1_2.buildings
      L1_2 = L1_2.defense
      L1_2 = L1_2.assignedCards
      L0_2, L1_2, L2_2 = L0_2(L1_2)
      for L3_2, L4_2 in L0_2, L1_2, L2_2 do
        L4_2.cardUsedForBuilding = false
        L5_2 = mainPlayer
        L5_2 = L5_2.cards
        L6_2 = L4_2.id
        L5_2 = L5_2[L6_2]
        L6_2 = L5_2
        L5_2 = L5_2.setLastUsageDate
        L7_2 = os
        L7_2 = L7_2.time
        L7_2 = L7_2()
        L5_2(L6_2, L7_2)
      end
      L0_2 = mainPlayer
      L0_2 = L0_2.tribe
      L0_2 = L0_2.buildings
      L0_2 = L0_2.defense
      L1_2 = {}
      L0_2.assignedCards = L1_2
    end
  end
  L0_2 = L2_1
  L0_2 = L0_2.clearCachedBattleOpponents
  L0_2()
  L0_2 = mainPlayer
  L0_2.tribe = nil
  L0_2 = hub
  L1_2 = L0_2
  L0_2 = L0_2.removeHub
  L0_2(L1_2)
  L0_2 = hub
  L0_2 = L0_2.init
  L0_2()
end

leaveTribeCleanup = L5_1

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = L1_1
  L3_2 = L3_2.logEvent
  L4_2 = "Leave Tribe Called"
  L3_2(L4_2)
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "leaveTribe"
    L4_3 = A2_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = leaveTribeCleanup
      L3_3()
      L3_3 = A1_2
      if L3_3 ~= nil then
        L3_3 = A1_2
        L4_3 = A0_2
        L3_3(L4_3)
      end
    end
  end
  
  L4_2 = {}
  L5_2 = network
  L5_2 = L5_2.getDefaultHeader
  L5_2 = L5_2()
  L4_2.headers = L5_2
  L5_2 = network
  L5_2 = L5_2.request
  L6_2 = Constants
  L6_2 = L6_2.API_Path
  L7_2 = Constants
  L7_2 = L7_2.API_LeaveTribe
  L6_2 = L6_2 .. L7_2
  L7_2 = "POST"
  L8_2 = L3_2
  L9_2 = L4_2
  L10_2 = "leave tribe"
  L11_2 = nil
  L12_2 = A2_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end

leaveTribe = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = L1_1
  L4_2 = L4_2.logEvent
  L5_2 = "Donate Called"
  L4_2(L5_2)
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "donate"
    L4_3 = A3_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L2_3.player_gold
      if L3_3 ~= nil then
        L3_3 = L2_3.tribe_gold
        if L3_3 ~= nil then
          L3_3 = mainPlayer
          L4_3 = L2_3.player_gold
          L3_3.gold = L4_3
          L3_3 = mainPlayer
          L3_3 = L3_3.tribe
          L4_3 = L2_3.tribe_gold
          L3_3.gold = L4_3
      end
      else
        L3_3 = log
        L4_3 = "Network error! The response did not contain proper values:"
        L5_3 = A0_3.response
        L4_3 = L4_3 .. L5_3
        L3_3(L4_3)
        L3_3 = A3_2
        if L3_3 ~= nil then
          L3_3 = A3_2
          L4_3 = "Response did not contain required fields"
          L3_3(L4_3)
        end
        return
      end
      L3_3 = A2_2
      if L3_3 ~= nil then
        L3_3 = A2_2
        L3_3()
      end
    end
  end
  
  L5_2 = {}
  L6_2 = Constants
  L6_2 = L6_2.Tribe_IDKey
  L7_2 = A0_2.id
  L5_2[L6_2] = L7_2
  L6_2 = Constants
  L6_2 = L6_2.Player_GoldKey
  L5_2[L6_2] = A1_2
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = network
  L7_2 = L7_2.getDefaultHeader
  L7_2 = L7_2()
  L6_2.headers = L7_2
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = Constants
  L8_2 = L8_2.API_Path
  L9_2 = Constants
  L9_2 = L9_2.API_Donate
  L8_2 = L8_2 .. L9_2
  L9_2 = "POST"
  L10_2 = L4_2
  L11_2 = L6_2
  L12_2 = "donate"
  L13_2 = nil
  L14_2 = A3_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end

donate = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = L1_1
  L4_2 = L4_2.logEvent
  L5_2 = "Tribe Search Called"
  L4_2(L5_2)
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "searchForTribeWithQuery"
    L4_3 = A2_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    L3_3 = {}
    foundTribes = L3_3
    if L1_3 then
      L3_3 = L2_3.tribes
      if L3_3 ~= nil then
        L3_3 = true
        L4_3 = pairs
        L5_3 = L2_3.tribes
        L4_3, L5_3, L6_3 = L4_3(L5_3)
        for L7_3, L8_3 in L4_3, L5_3, L6_3 do
          L3_3 = false
          L9_3 = _M
          L10_3 = L9_3
          L9_3 = L9_3.new
          L9_3 = L9_3(L10_3)
          L10_3 = L8_3.id
          if L10_3 ~= nil then
            L10_3 = L8_3.name
            if L10_3 ~= nil then
              L10_3 = L8_3.description
              if L10_3 ~= nil then
                L10_3 = L8_3.member_count
                if L10_3 ~= nil then
                  L10_3 = L8_3.rank
                  if L10_3 ~= nil then
                    L10_3 = L8_3.score
                    if L10_3 ~= nil then
                      L10_3 = L8_3.id
                      L9_3.id = L10_3
                      L10_3 = L8_3.name
                      L9_3.name = L10_3
                      L10_3 = L8_3.description
                      L9_3.description = L10_3
                      L10_3 = L8_3.member_count
                      L9_3.memberCount = L10_3
                      L10_3 = L8_3.rank
                      L9_3.rank = L10_3
                      L10_3 = L8_3.score
                      L9_3.score = L10_3
                      L10_3 = tonumber
                      L11_3 = L8_3.status
                      L10_3 = L10_3(L11_3)
                      L9_3.status = L10_3
                      L10_3 = foundTribes
                      L11_3 = L9_3.id
                      L10_3[L11_3] = L9_3
                  end
                end
              end
            end
          end
          else
            L10_3 = log
            L11_3 = "Network error! The response did not contain proper values:"
            L12_3 = A0_3.response
            L11_3 = L11_3 .. L12_3
            L10_3(L11_3)
            L10_3 = A2_2
            if L10_3 ~= nil then
              L10_3 = A2_2
              L11_3 = A3_2
              L12_3 = "Response did not contain required fields"
              L10_3(L11_3, L12_3)
            end
            return
          end
        end
        if L3_3 == true then
          L4_3 = A2_2
          L5_3 = A3_2
          L6_3 = "Tribe not found"
          L4_3(L5_3, L6_3)
        end
      else
        L3_3 = log
        L4_3 = "Network error! The response did not contain proper values:"
        L5_3 = A0_3.response
        L4_3 = L4_3 .. L5_3
        L3_3(L4_3)
        L3_3 = A2_2
        if L3_3 ~= nil then
          L3_3 = A2_2
          L4_3 = A3_2
          L5_3 = "Response did not contain required fields"
          L3_3(L4_3, L5_3)
        end
        return
      end
      L3_3 = A1_2
      if L3_3 ~= nil then
        L3_3 = A1_2
        L4_3 = A3_2
        L5_3 = foundTribes
        L3_3(L4_3, L5_3)
      end
    end
  end
  
  L5_2 = {}
  L6_2 = Constants
  L6_2 = L6_2.Tribe_Query
  L5_2[L6_2] = A0_2
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = network
  L7_2 = L7_2.getDefaultHeader
  L7_2 = L7_2()
  L6_2.headers = L7_2
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = Constants
  L8_2 = L8_2.API_Path
  L9_2 = Constants
  L9_2 = L9_2.API_FindTribe
  L8_2 = L8_2 .. L9_2
  L9_2 = "POST"
  L10_2 = L4_2
  L11_2 = L6_2
  L12_2 = "search for tribe with query"
  L13_2 = nil
  L14_2 = A2_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end

searchForTribeWithQuery = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = L1_1
  L4_2 = L4_2.logEvent
  L5_2 = "Join Request Sent"
  L4_2(L5_2)
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "sendJoinRequestToTribeWithId"
    L4_3 = A2_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = false
      L4_3 = L2_3.tribe
      tribeProperties = L4_3
      L4_3 = _M
      L5_3 = L4_3
      L4_3 = L4_3.new
      L4_3 = L4_3(L5_3)
      L5_3 = tribeProperties
      if L5_3 then
        L5_3 = tribeProperties
        L5_3 = L5_3.id
        if L5_3 ~= nil then
          L5_3 = tribeProperties
          L5_3 = L5_3.name
          if L5_3 ~= nil then
            L5_3 = tribeProperties
            L5_3 = L5_3.description
            if L5_3 ~= nil then
              L5_3 = tribeProperties
              L5_3 = L5_3.gold
              if L5_3 ~= nil then
                L5_3 = tribeProperties
                L5_3 = L5_3.rank
                if L5_3 ~= nil then
                  L5_3 = tribeProperties
                  L5_3 = L5_3.score
                  if L5_3 ~= nil then
                    L5_3 = tribeProperties
                    L5_3 = L5_3.donates_number
                    if L5_3 ~= nil then
                      L5_3 = tribeProperties
                      L5_3 = L5_3.status
                      if L5_3 then
                        L5_3 = L3_1
                        L5_3 = L5_3.checkJoinedTribe
                        L5_3()
                        L5_3 = leaveTribeCleanup
                        L5_3()
                        L5_3 = tribeProperties
                        L5_3 = L5_3.id
                        L4_3.id = L5_3
                        L5_3 = tribeProperties
                        L5_3 = L5_3.name
                        L4_3.name = L5_3
                        L5_3 = tribeProperties
                        L5_3 = L5_3.description
                        L4_3.description = L5_3
                        L5_3 = tribeProperties
                        L5_3 = L5_3.gold
                        L4_3.gold = L5_3
                        L5_3 = tribeProperties
                        L5_3 = L5_3.rank
                        L4_3.rank = L5_3
                        L5_3 = tonumber
                        L6_3 = tribeProperties
                        L6_3 = L6_3.status
                        L5_3 = L5_3(L6_3)
                        L4_3.status = L5_3
                        L5_3 = {}
                        L4_3.buildings = L5_3
                        L4_3.level = 1
                        L5_3 = tribeProperties
                        L5_3 = L5_3.score
                        L4_3.score = L5_3
                        L5_3 = tribeProperties
                        L5_3 = L5_3.donates_number
                        L4_3.donatesNumber = L5_3
                        L5_3 = {}
                        L4_3.buildings = L5_3
                        L5_3 = BuildingModel
                        L6_3 = L5_3
                        L5_3 = L5_3.new
                        L7_3 = {}
                        L8_3 = tribeProperties
                        L8_3 = L8_3.defense_building_level
                        L7_3.level = L8_3
                        L8_3 = Language
                        L8_3 = L8_3["defence building"]
                        L7_3.name = L8_3
                        L8_3 = Language
                        L8_3 = L8_3["defence description"]
                        L7_3.description = L8_3
                        L7_3.maxLevel = 10
                        L7_3.maxCards = 4
                        L8_3 = Constants
                        L8_3 = L8_3.Resource_DeffenceBuildingImage
                        L7_3.image = L8_3
                        L7_3.buildingType = "defensive"
                        L5_3 = L5_3(L6_3, L7_3)
                        newBuilding = L5_3
                        L5_3 = L4_3.buildings
                        L6_3 = newBuilding
                        L5_3.defense = L6_3
                        L5_3 = BuildingModel
                        L6_3 = L5_3
                        L5_3 = L5_3.new
                        L7_3 = {}
                        L8_3 = tribeProperties
                        L8_3 = L8_3.offense_building_level
                        L7_3.level = L8_3
                        L8_3 = Language
                        L8_3 = L8_3["attack building"]
                        L7_3.name = L8_3
                        L8_3 = Language
                        L8_3 = L8_3["attack description"]
                        L7_3.description = L8_3
                        L7_3.maxLevel = 10
                        L7_3.maxCards = 4
                        L8_3 = Constants
                        L8_3 = L8_3.Resource_DeffenceBuildingImage
                        L7_3.image = L8_3
                        L7_3.buildingType = "offensive"
                        L5_3 = L5_3(L6_3, L7_3)
                        newBuilding = L5_3
                        L5_3 = L4_3.buildings
                        L6_3 = newBuilding
                        L5_3.offense = L6_3
                        L5_3 = BuildingModel
                        L6_3 = L5_3
                        L5_3 = L5_3.new
                        L7_3 = {}
                        L8_3 = tribeProperties
                        L8_3 = L8_3.cooldown_building_level
                        L7_3.level = L8_3
                        L8_3 = Language
                        L8_3 = L8_3["cooldown building"]
                        L7_3.name = L8_3
                        L8_3 = Language
                        L8_3 = L8_3["cooldown description"]
                        L7_3.description = L8_3
                        L7_3.maxLevel = 10
                        L7_3.maxCards = 4
                        L8_3 = Constants
                        L8_3 = L8_3.Resource_DeffenceBuildingImage
                        L7_3.image = L8_3
                        L7_3.buildingType = "cooldown"
                        L5_3 = L5_3(L6_3, L7_3)
                        newBuilding = L5_3
                        L5_3 = L4_3.buildings
                        L6_3 = newBuilding
                        L5_3.cooldown = L6_3
                        L5_3 = BuildingModel
                        L6_3 = L5_3
                        L5_3 = L5_3.new
                        L7_3 = {}
                        L8_3 = tribeProperties
                        L8_3 = L8_3.mainhall_building_level
                        L7_3.level = L8_3
                        L8_3 = Language
                        L8_3 = L8_3["mainhall building"]
                        L7_3.name = L8_3
                        L8_3 = Language
                        L8_3 = L8_3["mainhall description"]
                        L7_3.description = L8_3
                        L7_3.maxLevel = 10
                        L7_3.maxCards = 4
                        L8_3 = Constants
                        L8_3 = L8_3.Resource_DeffenceBuildingImage
                        L7_3.image = L8_3
                        L7_3.buildingType = "mainhall"
                        L5_3 = L5_3(L6_3, L7_3)
                        newBuilding = L5_3
                        L5_3 = L4_3.buildings
                        L6_3 = newBuilding
                        L5_3.mainhall = L6_3
                        L5_3 = mainPlayer
                        L5_3.positionInTribe = 1
                        L5_3 = mainPlayer
                        L5_3.tribe = L4_3
                        L3_3 = true
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      L5_3 = A1_2
      if L5_3 ~= nil then
        L5_3 = A1_2
        L6_3 = A3_2
        L7_3 = A0_2
        L8_3 = L3_3
        L5_3(L6_3, L7_3, L8_3)
      end
    end
  end
  
  L5_2 = {}
  L6_2 = Constants
  L6_2 = L6_2.Tribe_IDKey
  L5_2[L6_2] = A0_2
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = network
  L7_2 = L7_2.getDefaultHeader
  L7_2 = L7_2()
  L6_2.headers = L7_2
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = Constants
  L8_2 = L8_2.API_Path
  L9_2 = Constants
  L9_2 = L9_2.API_JoinRequest
  L8_2 = L8_2 .. L9_2
  L9_2 = "POST"
  L10_2 = L4_2
  L11_2 = L6_2
  L12_2 = "send join reuqest for tribe"
  L13_2 = nil
  L14_2 = A2_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end

sendJoinRequestToTribeWithId = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = L1_1
  L5_2 = L5_2.logEvent
  L6_2 = "Invite Request Sent"
  L5_2(L6_2)
  
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "sendInviteRequest"
    L4_3 = A3_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = A2_2
      if L3_3 ~= nil then
        L3_3 = A2_2
        L4_3 = A4_2
        L3_3(L4_3)
      end
    end
  end
  
  L6_2 = {}
  L7_2 = Constants
  L7_2 = L7_2.Tribe_IDKey
  L8_2 = A0_2.id
  L6_2[L7_2] = L8_2
  L7_2 = Constants
  L7_2 = L7_2.Tribe_InviteeName
  L6_2[L7_2] = A1_2
  L7_2 = {}
  L7_2.body = L6_2
  L8_2 = network
  L8_2 = L8_2.getDefaultHeader
  L8_2 = L8_2()
  L7_2.headers = L8_2
  L8_2 = network
  L8_2 = L8_2.request
  L9_2 = Constants
  L9_2 = L9_2.API_Path
  L10_2 = Constants
  L10_2 = L10_2.API_SendInviteRequest
  L9_2 = L9_2 .. L10_2
  L10_2 = "POST"
  L11_2 = L5_2
  L12_2 = L7_2
  L13_2 = "send invite request"
  L14_2 = nil
  L15_2 = A3_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end

sendInviteRequest = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = L1_1
  L5_2 = L5_2.logEvent
  L6_2 = "User Promoted"
  L5_2(L6_2)
  
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "promoteUser"
    L4_3 = A3_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = A2_2
      if L3_3 ~= nil then
        L3_3 = A2_2
        L4_3 = A4_2
        L3_3(L4_3)
      end
    end
  end
  
  L6_2 = {}
  L7_2 = Constants
  L7_2 = L7_2.Tribe_IDKey
  L8_2 = A0_2.id
  L6_2[L7_2] = L8_2
  L7_2 = Constants
  L7_2 = L7_2.Tribe_MemberId
  L8_2 = A1_2.id
  L6_2[L7_2] = L8_2
  L7_2 = {}
  L7_2.body = L6_2
  L8_2 = network
  L8_2 = L8_2.getDefaultHeader
  L8_2 = L8_2()
  L7_2.headers = L8_2
  L8_2 = network
  L8_2 = L8_2.request
  L9_2 = Constants
  L9_2 = L9_2.API_Path
  L10_2 = Constants
  L10_2 = L10_2.API_PromoteUser
  L9_2 = L9_2 .. L10_2
  L10_2 = "POST"
  L11_2 = L5_2
  L12_2 = L7_2
  L13_2 = "promote user"
  L14_2 = nil
  L15_2 = A3_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end

promoteUser = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = L1_1
  L5_2 = L5_2.logEvent
  L6_2 = "User Demoted"
  L5_2(L6_2)
  
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "demoteUser"
    L4_3 = A3_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = A2_2
      if L3_3 ~= nil then
        L3_3 = A2_2
        L4_3 = A4_2
        L3_3(L4_3)
      end
    end
  end
  
  L6_2 = {}
  L7_2 = Constants
  L7_2 = L7_2.Tribe_IDKey
  L8_2 = A0_2.id
  L6_2[L7_2] = L8_2
  L7_2 = Constants
  L7_2 = L7_2.Tribe_MemberId
  L8_2 = A1_2.id
  L6_2[L7_2] = L8_2
  L7_2 = {}
  L7_2.body = L6_2
  L8_2 = network
  L8_2 = L8_2.getDefaultHeader
  L8_2 = L8_2()
  L7_2.headers = L8_2
  L8_2 = network
  L8_2 = L8_2.request
  L9_2 = Constants
  L9_2 = L9_2.API_Path
  L10_2 = Constants
  L10_2 = L10_2.API_DemoteUser
  L9_2 = L9_2 .. L10_2
  L10_2 = "POST"
  L11_2 = L5_2
  L12_2 = L7_2
  L13_2 = "demote user"
  L14_2 = nil
  L15_2 = A3_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end

demoteUser = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = L1_1
  L5_2 = L5_2.logEvent
  L6_2 = "User Kicked From Tribe"
  L5_2(L6_2)
  
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "kickUser"
    L4_3 = A3_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = A2_2
      if L3_3 ~= nil then
        L3_3 = A2_2
        L4_3 = A4_2
        L3_3(L4_3)
      end
    end
  end
  
  L6_2 = {}
  L7_2 = Constants
  L7_2 = L7_2.Tribe_IDKey
  L8_2 = A0_2.id
  L6_2[L7_2] = L8_2
  L7_2 = Constants
  L7_2 = L7_2.Tribe_MemberId
  L8_2 = A1_2.id
  L6_2[L7_2] = L8_2
  L7_2 = {}
  L7_2.body = L6_2
  L8_2 = network
  L8_2 = L8_2.getDefaultHeader
  L8_2 = L8_2()
  L7_2.headers = L8_2
  L8_2 = network
  L8_2 = L8_2.request
  L9_2 = Constants
  L9_2 = L9_2.API_Path
  L10_2 = Constants
  L10_2 = L10_2.API_KickUser
  L9_2 = L9_2 .. L10_2
  L10_2 = "POST"
  L11_2 = L5_2
  L12_2 = L7_2
  L13_2 = "kick user"
  L14_2 = nil
  L15_2 = A3_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end

kickUser = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = L1_1
  L5_2 = L5_2.logEvent
  L6_2 = "User Poked"
  L5_2(L6_2)
  
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "pokeUser"
    L4_3 = A3_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = A2_2
      if L3_3 ~= nil then
        L3_3 = A2_2
        L3_3()
      end
    end
  end
  
  L6_2 = {}
  if A4_2 then
    L7_2 = Constants
    L7_2 = L7_2.Tribe_IDKey
    L6_2[L7_2] = A4_2
  else
    L7_2 = Constants
    L7_2 = L7_2.Tribe_IDKey
    L8_2 = A0_2.id
    L6_2[L7_2] = L8_2
  end
  L7_2 = Constants
  L7_2 = L7_2.Tribe_MemberId
  L8_2 = A1_2.id
  L6_2[L7_2] = L8_2
  L7_2 = {}
  L7_2.body = L6_2
  L8_2 = network
  L8_2 = L8_2.getDefaultHeader
  L8_2 = L8_2()
  L7_2.headers = L8_2
  L8_2 = network
  L8_2 = L8_2.request
  L9_2 = Constants
  L9_2 = L9_2.API_Path
  L10_2 = Constants
  L10_2 = L10_2.API_PokeUser
  L9_2 = L9_2 .. L10_2
  L10_2 = "POST"
  L11_2 = L5_2
  L12_2 = L7_2
  L13_2 = "poke user"
  L14_2 = nil
  L15_2 = A3_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end

pokeUser = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = L1_1
  L4_2 = L4_2.logEvent
  L5_2 = "Join Request Accepted"
  L4_2(L5_2)
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "acceptUserJoinRequest"
    L4_3 = A2_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = A1_2
      if L3_3 ~= nil then
        L3_3 = A1_2
        L4_3 = A3_2
        L5_3 = A0_2
        L3_3(L4_3, L5_3)
      end
    end
  end
  
  L5_2 = {}
  L6_2 = Constants
  L6_2 = L6_2.Message_ReqId
  L7_2 = A0_2.id
  L5_2[L6_2] = L7_2
  L6_2 = Constants
  L6_2 = L6_2.Tribe_IDKey
  L7_2 = A0_2.tribeId
  L5_2[L6_2] = L7_2
  L6_2 = Constants
  L6_2 = L6_2.Message_NewMemberId
  L7_2 = A0_2.requesterId
  L5_2[L6_2] = L7_2
  L6_2 = Constants
  L6_2 = L6_2.Message_Decision
  L5_2[L6_2] = "approve"
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = log3
  L8_2 = "Accept User post params:"
  L9_2 = postData
  L7_2(L8_2, L9_2)
  L7_2 = network
  L7_2 = L7_2.getDefaultHeader
  L7_2 = L7_2()
  L6_2.headers = L7_2
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = Constants
  L8_2 = L8_2.API_Path
  L9_2 = Constants
  L9_2 = L9_2.API_AcceptJoinRequest
  L8_2 = L8_2 .. L9_2
  L9_2 = "POST"
  L10_2 = L4_2
  L11_2 = L6_2
  L12_2 = "accept user join reuqest"
  L13_2 = nil
  L14_2 = A2_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end

acceptUserJoinRequest = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = L1_1
  L4_2 = L4_2.logEvent
  L5_2 = "Join Request Rejected"
  L4_2(L5_2)
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "rejectUserJoinRequest"
    L4_3 = A2_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = A1_2
      if L3_3 ~= nil then
        L3_3 = A1_2
        L4_3 = A3_2
        L5_3 = A0_2
        L3_3(L4_3, L5_3)
      end
    end
  end
  
  L5_2 = {}
  L6_2 = Constants
  L6_2 = L6_2.Message_ReqId
  L7_2 = A0_2.id
  L5_2[L6_2] = L7_2
  L6_2 = Constants
  L6_2 = L6_2.Tribe_IDKey
  L7_2 = A0_2.tribeId
  L5_2[L6_2] = L7_2
  L6_2 = Constants
  L6_2 = L6_2.Message_NewMemberId
  L7_2 = A0_2.requesterId
  L5_2[L6_2] = L7_2
  L6_2 = Constants
  L6_2 = L6_2.Message_Decision
  L5_2[L6_2] = "reject"
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = network
  L7_2 = L7_2.getDefaultHeader
  L7_2 = L7_2()
  L6_2.headers = L7_2
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = Constants
  L8_2 = L8_2.API_Path
  L9_2 = Constants
  L9_2 = L9_2.API_RejectJoinRequest
  L8_2 = L8_2 .. L9_2
  L9_2 = "POST"
  L10_2 = L4_2
  L11_2 = L6_2
  L12_2 = "reject user join request"
  L13_2 = nil
  L14_2 = A2_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end

rejectUserJoinRequest = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = L1_1
  L4_2 = L4_2.logEvent
  L5_2 = "Invite Accepted"
  L4_2(L5_2)
  L4_2 = log3
  L5_2 = "invite accepted"
  L4_2(L5_2)
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "acceptUserInviteRequest"
    L4_3 = A2_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L3_1
      L3_3 = L3_3.checkJoinedTribe
      L3_3()
      L3_3 = L2_3.tribe
      tribeProperties = L3_3
      L3_3 = _M
      L4_3 = L3_3
      L3_3 = L3_3.new
      L3_3 = L3_3(L4_3)
      L4_3 = tribeProperties
      if L4_3 then
        L4_3 = tribeProperties
        L4_3 = L4_3.id
        if L4_3 ~= nil then
          L4_3 = tribeProperties
          L4_3 = L4_3.name
          if L4_3 ~= nil then
            L4_3 = tribeProperties
            L4_3 = L4_3.description
            if L4_3 ~= nil then
              L4_3 = tribeProperties
              L4_3 = L4_3.gold
              if L4_3 ~= nil then
                L4_3 = tribeProperties
                L4_3 = L4_3.rank
                if L4_3 ~= nil then
                  L4_3 = tribeProperties
                  L4_3 = L4_3.score
                  if L4_3 ~= nil then
                    L4_3 = tribeProperties
                    L4_3 = L4_3.donates_number
                    if L4_3 ~= nil then
                      L4_3 = leaveTribeCleanup
                      L4_3()
                      L4_3 = tribeProperties
                      L4_3 = L4_3.id
                      L3_3.id = L4_3
                      L4_3 = tribeProperties
                      L4_3 = L4_3.name
                      L3_3.name = L4_3
                      L4_3 = tribeProperties
                      L4_3 = L4_3.description
                      L3_3.description = L4_3
                      L4_3 = tribeProperties
                      L4_3 = L4_3.gold
                      L3_3.gold = L4_3
                      L4_3 = tribeProperties
                      L4_3 = L4_3.rank
                      L3_3.rank = L4_3
                      L4_3 = {}
                      L3_3.buildings = L4_3
                      L3_3.level = 1
                      L4_3 = tribeProperties
                      L4_3 = L4_3.score
                      L3_3.score = L4_3
                      L4_3 = tribeProperties
                      L4_3 = L4_3.donates_number
                      L3_3.donatesNumber = L4_3
                      L4_3 = {}
                      L3_3.buildings = L4_3
                      L4_3 = BuildingModel
                      L5_3 = L4_3
                      L4_3 = L4_3.new
                      L6_3 = {}
                      L7_3 = tribeProperties
                      L7_3 = L7_3.defense_building_level
                      L6_3.level = L7_3
                      L7_3 = Language
                      L7_3 = L7_3["defence building"]
                      L6_3.name = L7_3
                      L7_3 = Language
                      L7_3 = L7_3["defence description"]
                      L6_3.description = L7_3
                      L6_3.maxLevel = 10
                      L6_3.maxCards = 4
                      L7_3 = Constants
                      L7_3 = L7_3.Resource_DeffenceBuildingImage
                      L6_3.image = L7_3
                      L6_3.buildingType = "defensive"
                      L4_3 = L4_3(L5_3, L6_3)
                      newBuilding = L4_3
                      L4_3 = L3_3.buildings
                      L5_3 = newBuilding
                      L4_3.defense = L5_3
                      L4_3 = BuildingModel
                      L5_3 = L4_3
                      L4_3 = L4_3.new
                      L6_3 = {}
                      L7_3 = tribeProperties
                      L7_3 = L7_3.offense_building_level
                      L6_3.level = L7_3
                      L7_3 = Language
                      L7_3 = L7_3["attack building"]
                      L6_3.name = L7_3
                      L7_3 = Language
                      L7_3 = L7_3["attack description"]
                      L6_3.description = L7_3
                      L6_3.maxLevel = 10
                      L6_3.maxCards = 4
                      L7_3 = Constants
                      L7_3 = L7_3.Resource_DeffenceBuildingImage
                      L6_3.image = L7_3
                      L6_3.buildingType = "offensive"
                      L4_3 = L4_3(L5_3, L6_3)
                      newBuilding = L4_3
                      L4_3 = L3_3.buildings
                      L5_3 = newBuilding
                      L4_3.offense = L5_3
                      L4_3 = BuildingModel
                      L5_3 = L4_3
                      L4_3 = L4_3.new
                      L6_3 = {}
                      L7_3 = tribeProperties
                      L7_3 = L7_3.cooldown_building_level
                      L6_3.level = L7_3
                      L7_3 = Language
                      L7_3 = L7_3["cooldown building"]
                      L6_3.name = L7_3
                      L7_3 = Language
                      L7_3 = L7_3["cooldown description"]
                      L6_3.description = L7_3
                      L6_3.maxLevel = 10
                      L6_3.maxCards = 4
                      L7_3 = Constants
                      L7_3 = L7_3.Resource_DeffenceBuildingImage
                      L6_3.image = L7_3
                      L6_3.buildingType = "cooldown"
                      L4_3 = L4_3(L5_3, L6_3)
                      newBuilding = L4_3
                      L4_3 = L3_3.buildings
                      L5_3 = newBuilding
                      L4_3.cooldown = L5_3
                      L4_3 = BuildingModel
                      L5_3 = L4_3
                      L4_3 = L4_3.new
                      L6_3 = {}
                      L7_3 = tribeProperties
                      L7_3 = L7_3.mainhall_building_level
                      L6_3.level = L7_3
                      L7_3 = Language
                      L7_3 = L7_3["mainhall building"]
                      L6_3.name = L7_3
                      L7_3 = Language
                      L7_3 = L7_3["mainhall description"]
                      L6_3.description = L7_3
                      L6_3.maxLevel = 10
                      L6_3.maxCards = 4
                      L7_3 = Constants
                      L7_3 = L7_3.Resource_DeffenceBuildingImage
                      L6_3.image = L7_3
                      L6_3.buildingType = "mainhall"
                      L4_3 = L4_3(L5_3, L6_3)
                      newBuilding = L4_3
                      L4_3 = L3_3.buildings
                      L5_3 = newBuilding
                      L4_3.mainhall = L5_3
                      L4_3 = mainPlayer
                      L4_3.positionInTribe = 1
                      L4_3 = mainPlayer
                      L4_3.tribe = L3_3
                  end
                end
              end
            end
          end
        end
      end
      else
        L4_3 = log
        L5_3 = "Network error! The response did not contain proper values:"
        L6_3 = A0_3.response
        L5_3 = L5_3 .. L6_3
        L4_3(L5_3)
        L4_3 = failedCreateTribeCallback
        if L4_3 ~= nil then
          L4_3 = failedCreateTribeCallback
          L5_3 = "Response did not contain required fields"
          L4_3(L5_3)
        end
        return
      end
      L4_3 = A1_2
      if L4_3 ~= nil then
        L4_3 = A1_2
        L5_3 = L3_3
        L6_3 = A3_2
        L7_3 = A0_2
        L4_3(L5_3, L6_3, L7_3)
      end
    end
  end
  
  L5_2 = {}
  L6_2 = Constants
  L6_2 = L6_2.Message_ReqId
  L7_2 = A0_2.id
  L5_2[L6_2] = L7_2
  L6_2 = Constants
  L6_2 = L6_2.Tribe_IDKey
  L7_2 = A0_2.tribeId
  L5_2[L6_2] = L7_2
  L6_2 = Constants
  L6_2 = L6_2.Message_Decision
  L5_2[L6_2] = "approve"
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = network
  L7_2 = L7_2.getDefaultHeader
  L7_2 = L7_2()
  L6_2.headers = L7_2
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = Constants
  L8_2 = L8_2.API_Path
  L9_2 = Constants
  L9_2 = L9_2.API_AcceptInviteRequest
  L8_2 = L8_2 .. L9_2
  L9_2 = "POST"
  L10_2 = L4_2
  L11_2 = L6_2
  L12_2 = "accept user invite request"
  L13_2 = nil
  L14_2 = A2_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end

acceptUserInviteRequest = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = L1_1
  L4_2 = L4_2.logEvent
  L5_2 = "Invite Accepted"
  L4_2(L5_2)
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "rejectUserInviteRequest"
    L4_3 = A2_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = A1_2
      if L3_3 ~= nil then
        L3_3 = A1_2
        L4_3 = A3_2
        L5_3 = A0_2
        L3_3(L4_3, L5_3)
      end
    end
  end
  
  L5_2 = {}
  L6_2 = Constants
  L6_2 = L6_2.Message_ReqId
  L7_2 = A0_2.id
  L5_2[L6_2] = L7_2
  L6_2 = Constants
  L6_2 = L6_2.Tribe_IDKey
  L7_2 = A0_2.tribeId
  L5_2[L6_2] = L7_2
  L6_2 = Constants
  L6_2 = L6_2.Message_Decision
  L5_2[L6_2] = "reject"
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = network
  L7_2 = L7_2.getDefaultHeader
  L7_2 = L7_2()
  L6_2.headers = L7_2
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = Constants
  L8_2 = L8_2.API_Path
  L9_2 = Constants
  L9_2 = L9_2.API_RejectInviteRequest
  L8_2 = L8_2 .. L9_2
  L9_2 = "POST"
  L10_2 = L4_2
  L11_2 = L6_2
  L12_2 = "reject user invite request"
  L13_2 = nil
  L14_2 = A2_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end

rejectUserInviteRequest = L5_1

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "changePlayerStatus"
    L4_3 = A2_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = A1_2
      if L3_3 ~= nil then
        L3_3 = log3
        L4_3 = "call successCallback"
        L3_3(L4_3)
        L3_3 = A1_2
        L3_3()
      end
    end
  end
  
  L4_2 = {}
  L5_2 = Constants
  L5_2 = L5_2.Player_Status
  L4_2[L5_2] = A0_2
  L5_2 = {}
  L5_2.body = L4_2
  L6_2 = network
  L6_2 = L6_2.getDefaultHeader
  L6_2 = L6_2()
  L5_2.headers = L6_2
  L6_2 = network
  L6_2 = L6_2.request
  L7_2 = Constants
  L7_2 = L7_2.API_Path
  L8_2 = Constants
  L8_2 = L8_2.API_TribeInvisible
  L7_2 = L7_2 .. L8_2
  L8_2 = "POST"
  L9_2 = L3_2
  L10_2 = L5_2
  L11_2 = "invisible"
  L12_2 = nil
  L13_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

changePlayerStatus = L5_1

function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 then
      L1_3 = network
      L1_3 = L1_3.checkForErrors
      L2_3 = A0_3
      L3_3 = "broadcast"
      L4_3 = A3_2
      L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
      if L1_3 then
        L3_3 = A2_2
        if L3_3 ~= nil then
          L3_3 = A2_2
          L3_3()
        end
      end
    end
  end
  
  L5_2 = {}
  L5_2.title = A0_2
  L5_2.message = A1_2
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = network
  L7_2 = L7_2.getDefaultHeader
  L7_2 = L7_2()
  L6_2.headers = L7_2
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = Constants
  L8_2 = L8_2.API_Path
  L9_2 = Constants
  L9_2 = L9_2.API_BroadcastChiefMassage
  L8_2 = L8_2 .. L9_2
  L9_2 = "POST"
  L10_2 = L4_2
  L11_2 = L6_2
  L12_2 = "broadcast"
  L13_2 = nil
  L14_2 = A3_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end

broadcastChiefMessage = L5_1
