local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Constants"
L0_1(L1_1)
L0_1 = require
L1_1 = "TestServer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.Analytics"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Models.Card"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "json"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Models.AchievementManager"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Utils.Toolbox"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Data.BaseFruits"
L6_1 = L6_1(L7_1)
L7_1 = 0
userId = L7_1
L7_1 = 0
baseId = L7_1
L7_1 = 0
lastUsageDate = L7_1
L7_1 = false
cardUsedForBuilding = L7_1
L7_1 = 0
cooldownRemainingTime = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.base_card_id
  A1_2.baseId = L2_2
  L2_2 = A1_2.last_used_at
  A1_2.lastUsageDate = L2_2
  L2_2 = A1_2.player_id
  A1_2.userId = L2_2
  A1_2.cardUsedForBuilding = false
  A1_2.base_card_id = nil
  A1_2.last_used_at = nil
  A1_2.used_for_building = nil
  A1_2.player_id = nil
  A1_2.cooldownRemainingTime = 0
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = _M
    L2_3 = L2_3[A1_3]
    if L2_3 then
      return L2_3
    end
    L3_3 = L2_1
    L3_3 = L3_3.baseCardWithId
    L4_3 = A0_3.baseId
    L3_3 = L3_3(L4_3)
    L4_3 = L3_3[A1_3]
    return L4_3
  end
  
  L3_2 = setmetatable
  L4_2 = A1_2
  L5_2 = {}
  L5_2.__index = L2_2
  L3_2(L4_2, L5_2)
  return A1_2
end

new = L7_1
L7_1 = 0
L8_1 = 0

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2.time
  L2_2 = L7_1
  L1_2 = L1_2 - L2_2
  if 1000 <= L1_2 then
    L1_2 = A0_2.time
    L7_1 = L1_2
    L1_2 = os
    L1_2 = L1_2.time
    L1_2 = L1_2()
    L2_2 = mainPlayer
    L2_2 = L2_2.timeDelta
    L1_2 = L1_2 + L2_2
    L2_2 = 0
    L3_2 = nil
    L4_2 = 1
    L5_2 = mainPlayer
    L5_2 = L5_2.tribe
    if L5_2 then
      L5_2 = mainPlayer
      L5_2 = L5_2.tribe
      L5_2 = L5_2.buildings
      if L5_2 ~= nil then
        L5_2 = mainPlayer
        L5_2 = L5_2.tribe
        L5_2 = L5_2.buildings
        L5_2 = L5_2.cooldown
        if L5_2 ~= nil then
          L5_2 = mainPlayer
          L5_2 = L5_2.tribe
          L5_2 = L5_2.buildings
          L5_2 = L5_2.cooldown
          L6_2 = L5_2
          L5_2 = L5_2.benefitFromLevel
          L5_2 = L5_2(L6_2)
          L4_2 = L5_2
        end
      end
    end
    L5_2 = false
    L6_2 = type
    L7_2 = mainPlayer
    L7_2 = L7_2.cards
    L6_2 = L6_2(L7_2)
    if L6_2 == "table" then
      L6_2 = pairs
      L7_2 = mainPlayer
      L7_2 = L7_2.cards
      L6_2, L7_2, L8_2 = L6_2(L7_2)
      for L9_2, L10_2 in L6_2, L7_2, L8_2 do
        L11_2 = L10_2.lastUsageDate
        L2_2 = L1_2 - L11_2
        L11_2 = L10_2.cooldown
        L3_2 = L11_2 * L4_2
        if L2_2 < L3_2 then
          L11_2 = math
          L11_2 = L11_2.ceil
          L12_2 = L3_2 - L2_2
          L11_2 = L11_2(L12_2)
          L10_2.cooldownRemainingTime = L11_2
        else
          L11_2 = L10_2.cooldownRemainingTime
          if 0 < L11_2 then
            L5_2 = true
          end
          L10_2.cooldownRemainingTime = 0
        end
      end
    end
    if L5_2 then
      L6_2 = Runtime
      L7_2 = L6_2
      L6_2 = L6_2.dispatchEvent
      L8_2 = {}
      L8_2.name = "cooldown"
      L6_2(L7_2, L8_2)
    end
    L6_2 = Runtime
    L7_2 = L6_2
    L6_2 = L6_2.dispatchEvent
    L8_2 = {}
    L8_2.name = "click"
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2.time
  L2_2 = L8_1
  L1_2 = L1_2 - L2_2
  if 60000 <= L1_2 then
    L1_2 = A0_2.time
    L8_1 = L1_2
    L1_2 = Runtime
    L2_2 = L1_2
    L1_2 = L1_2.dispatchEvent
    L3_2 = {}
    L3_2.name = "minClick"
    L1_2(L2_2, L3_2)
  end
end

function L10_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = log3
  L1_2 = "Added timer listener"
  L0_2(L1_2)
  L0_2 = Runtime
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = "enterFrame"
  L3_2 = L9_1
  L0_2(L1_2, L2_2, L3_2)
end

startCooldownTimer = L10_1

function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = os
  L0_2 = L0_2.time
  L0_2 = L0_2()
  L1_2 = 0
  L2_2 = nil
  L3_2 = 1
  L4_2 = mainPlayer
  L4_2 = L4_2.tribe
  if L4_2 then
    L4_2 = mainPlayer
    L4_2 = L4_2.tribe
    L4_2 = L4_2.buildings
    if L4_2 ~= nil then
      L4_2 = mainPlayer
      L4_2 = L4_2.tribe
      L4_2 = L4_2.buildings
      L4_2 = L4_2.cooldown
      if L4_2 ~= nil then
        L4_2 = mainPlayer
        L4_2 = L4_2.tribe
        L4_2 = L4_2.buildings
        L4_2 = L4_2.cooldown
        L5_2 = L4_2
        L4_2 = L4_2.benefitFromLevel
        L4_2 = L4_2(L5_2)
        L3_2 = L4_2
      end
    end
  end
  L4_2 = pairs
  L5_2 = mainPlayer
  L5_2 = L5_2.cards
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = mainPlayer
    L9_2 = L9_2.timeDelta
    L9_2 = L0_2 + L9_2
    L10_2 = L8_2.lastUsageDate
    L1_2 = L9_2 - L10_2
    L9_2 = L8_2.cooldown
    L2_2 = L9_2 * L3_2
    if L1_2 < L2_2 then
      L9_2 = math
      L9_2 = L9_2.ceil
      L10_2 = L2_2 - L1_2
      L9_2 = L9_2(L10_2)
      L8_2.cooldownRemainingTime = L9_2
    else
      L8_2.cooldownRemainingTime = 0
    end
  end
end

updateCooldownForAllCards = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = checkValidityAssert
  L3_2 = A0_2
  L4_2 = "setLastUsageDate, function needs to be called with a colon"
  L5_2 = _NAME
  L6_2 = "table"
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = checkValidityAssert
  L3_2 = A1_2
  L4_2 = "setLastUsageDate, function needs to include a time"
  L5_2 = _NAME
  L6_2 = "number"
  L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.lastUsageDate = A1_2
  L2_2 = os
  L2_2 = L2_2.time
  L2_2 = L2_2()
  L3_2 = mainPlayer
  L3_2 = L3_2.timeDelta
  L3_2 = L2_2 + L3_2
  L4_2 = A0_2.lastUsageDate
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2.cooldown
  L5_2 = mainPlayer
  L5_2 = L5_2.tribe
  if L5_2 ~= nil then
    L5_2 = mainPlayer
    L5_2 = L5_2.tribe
    L5_2 = L5_2.buildings
    if L5_2 ~= nil then
      L5_2 = mainPlayer
      L5_2 = L5_2.tribe
      L5_2 = L5_2.buildings
      L5_2 = L5_2.cooldown
      if L5_2 ~= nil then
        L5_2 = mainPlayer
        L5_2 = L5_2.tribe
        L5_2 = L5_2.buildings
        L5_2 = L5_2.cooldown
        L6_2 = L5_2
        L5_2 = L5_2.benefitFromLevel
        L5_2 = L5_2(L6_2)
        L4_2 = L4_2 * L5_2
      end
    end
  end
  if L3_2 < L4_2 then
    L5_2 = math
    L5_2 = L5_2.ceil
    L6_2 = L4_2 - L3_2
    L5_2 = L5_2(L6_2)
    A0_2.cooldownRemainingTime = L5_2
  else
    A0_2.cooldownRemainingTime = 0
  end
end

setLastUsageDate = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = [[
cooldownRemaining, given card must not be nil, either provide the card as the first
        function parameter or call using colon from the card]]
  L4_2 = _NAME
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.cooldownRemainingTime
  return L1_2
end

cooldownRemaining = L10_1

function L10_1(A0_2)
  local L1_2
  if A0_2 then
    L1_2 = A0_2.cooldownRemainingTime
    if L1_2 == 0 then
      L1_2 = false
      return L1_2
    else
      L1_2 = true
      return L1_2
    end
  end
end

isUnavailable = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = mainPlayer
  L3_2 = L3_2.cards
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.isUnavailable
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = L6_2.id
      L8_2 = L6_2.cooldownRemainingTime
      L1_2[L7_2] = L8_2
    end
  end
  L2_2 = L5_1
  L2_2 = L2_2.maximumValueOfTable
  L3_2 = L1_2
  return L2_2(L3_2)
end

calculateMaximumCooldownTime = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = [[
cooldownCost, given card must not be nil, either provide the card as the first
        function parameter or call using colon from the card]]
  L4_2 = _NAME
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = nil
  L2_2 = A0_2.veteran_level
  if 0 < L2_2 then
    L2_2 = 1
    L3_2 = mainPlayer
    L3_2 = L3_2.tribe
    if L3_2 then
      L3_2 = mainPlayer
      L3_2 = L3_2.tribe
      L3_2 = L3_2.buildings
      L3_2 = L3_2.cooldown
      L4_2 = L3_2
      L3_2 = L3_2.benefitFromLevel
      L3_2 = L3_2(L4_2)
      L2_2 = L3_2
    end
    L3_2 = A0_2.cooldown
    L4_2 = math
    L4_2 = L4_2.ceil
    L5_2 = mainPlayer
    L5_2 = L5_2.cooldownsBoughtToday
    L5_2 = L5_2 + 1
    L6_2 = Constants
    L6_2 = L6_2.Card_CooldownIncreaseModifier
    L5_2 = L5_2 * L6_2
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 * L4_2
    L4_2 = Constants
    L4_2 = L4_2.Card_CooldownCostModifier
    L3_2 = L3_2 * L4_2
    L4_2 = Constants
    L4_2 = L4_2.Veteran_Cooldown_Modifier
    L3_2 = L3_2 * L4_2
    L3_2 = L3_2 * L2_2
    L4_2 = A0_2.veteran_level
    L1_2 = L3_2 * L4_2
  else
    L3_2 = A0_2
    L2_2 = A0_2.cooldownRemaining
    L2_2 = L2_2(L3_2)
    L3_2 = math
    L3_2 = L3_2.ceil
    L4_2 = mainPlayer
    L4_2 = L4_2.cooldownsBoughtToday
    L4_2 = L4_2 + 1
    L5_2 = Constants
    L5_2 = L5_2.Card_CooldownIncreaseModifier
    L4_2 = L4_2 * L5_2
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2 * L3_2
    L3_2 = Constants
    L3_2 = L3_2.Card_CooldownCostModifier
    L1_2 = L2_2 * L3_2
  end
  L2_2 = math
  L2_2 = L2_2.ceil
  L3_2 = L1_2
  return L2_2(L3_2)
end

cooldownCost = L10_1

function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = checkValidityAssert
  L4_2 = A0_2
  L5_2 = [[
cooldownCard, given card must not be nil, either provide the card as the first
        function parameter or call using colon from the card you want
            to cooldown.]]
  L6_2 = _NAME
  L7_2 = "table"
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L1_1
  L3_2 = L3_2.logEvent
  L4_2 = "Cooldown Bought"
  L3_2(L4_2)
  
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    if A1_3 == 178 then
      L2_3 = A0_2
      L3_3 = L2_3
      L2_3 = L2_3.setLastUsageDate
      L4_3 = 0
      L2_3(L3_3, L4_3)
      L2_3 = A1_2
      if L2_3 ~= nil then
        L2_3 = A1_2
        L3_3 = A0_2
        L2_3(L3_3)
      end
      return
    end
    L2_3 = A2_2
    L3_3 = A0_2
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "Cooldown Card"
    L4_3 = L3_2
    L5_3 = {}
    L6_3 = "gold"
    L7_3 = "cooldowns_bought_today"
    L5_3[1] = L6_3
    L5_3[2] = L7_3
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
    if L1_3 then
      L3_3 = mainPlayer
      L4_3 = L2_3.gold
      L3_3.gold = L4_3
      L3_3 = mainPlayer
      L4_3 = L2_3.cooldowns_bought_today
      L3_3.cooldownsBoughtToday = L4_3
      L3_3 = A0_2
      L3_3.lastUsageDate = 0
      L3_3 = A0_2
      L3_3.cooldownRemainingTime = 0
      L3_3 = A1_2
      if L3_3 ~= nil then
        L3_3 = A1_2
        L4_3 = A0_2
        L3_3(L4_3)
      end
      L3_3 = L4_1
      L3_3 = L3_3.boughtCooldown
      L3_3()
    end
  end
  
  L5_2 = {}
  L6_2 = A0_2.id
  L5_2.card_id = L6_2
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
  L9_2 = L9_2.API_CooloffCard
  L8_2 = L8_2 .. L9_2
  L9_2 = "POST"
  L10_2 = L4_2
  L11_2 = L6_2
  L12_2 = "cooldown card"
  L13_2 = nil
  L14_2 = A2_2
  L15_2 = A0_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end

cooldownCard = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = checkValidityAssert
  L3_2 = A0_2
  L4_2 = [[
enhancementCostWithCards, given card must not be nil, either provide the card as the first
        function parameter or call using colon from the card]]
  L5_2 = _NAME
  L6_2 = "table"
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = checkValidityAssert
  L3_2 = A1_2
  L4_2 = "enhancementCostWithCards, an array of cards needs to be provided"
  L5_2 = _NAME
  L6_2 = "table"
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = 0
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.cost
    L8_2 = L8_2(L9_2)
    L2_2 = L2_2 + L8_2
  end
  L3_2 = Constants
  L3_2 = L3_2.Card_EnhancementCostModifier
  L3_2 = L2_2 * L3_2
  return L3_2
end

enhancementCostWithCards = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.powerLimit
  L2_2 = A0_2.power
  L1_2 = L1_2 - L2_2
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = Constants
  L3_2 = L3_2.Card_EnhancementModifier
  L4_2 = math
  L4_2 = L4_2.pow
  L5_2 = A0_2.virtualRarity
  L6_2 = Constants
  L6_2 = L6_2.Card_EnhanceRarityModifier
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 * L4_2
  L3_2 = L1_2 / L3_2
  L2_2 = L2_2(L3_2)
  L3_2 = Constants
  L3_2 = L3_2.Card_EnhanceNectarModifier
  L3_2 = L2_2 * L3_2
  L4_2 = Constants
  L4_2 = L4_2.Card_PriceModifier
  L5_2 = Constants
  L5_2 = L5_2.Card_MaxEnhanceModifier
  L4_2 = L4_2 / L5_2
  L3_2 = L3_2 * L4_2
  L4_2 = Constants
  L4_2 = L4_2.Card_EnhancementCostModifier
  L4_2 = L3_2 * L4_2
  L4_2 = L4_2 + L3_2
  L5_2 = math
  L5_2 = L5_2.max
  L6_2 = Constants
  L6_2 = L6_2.MinimumNectarCostForEnhancement
  L7_2 = math
  L7_2 = L7_2.floor
  L8_2 = mainPlayer
  L8_2 = L8_2.nectarPrice
  L8_2 = L4_2 / L8_2
  L7_2, L8_2 = L7_2(L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  return L5_2
end

getEnhancementCostWithNectar = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = checkValidityAssert
  L3_2 = A0_2
  L4_2 = [[
enhancementPowerWithCards, given card must not be nil, either provide the card as the first
        function parameter or call using colon from the card]]
  L5_2 = _NAME
  L6_2 = "table"
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = checkValidityAssert
  L3_2 = A0_2.virtualRarity
  L4_2 = "The user card (self) doesn't have a virtualRarity"
  L5_2 = _NAME
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = checkValidityAssert
  L3_2 = A1_2
  L4_2 = "enhancementPowerWithCards, an array of cards needs to be provided"
  L5_2 = _NAME
  L6_2 = "table"
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = 0
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.powerBeforeBoost
    if not L8_2 then
      L8_2 = L7_2.power
    end
    L9_2 = L7_2.veteran_level
    if 0 < L9_2 then
      L9_2 = Constants
      L9_2 = L9_2.Card_Vet_SacrificePowerModifier
      L9_2 = L8_2 * L9_2
      L10_2 = L7_2.veteran_level
      L9_2 = L9_2 * L10_2
      L2_2 = L2_2 + L9_2
    else
      L2_2 = L2_2 + L8_2
    end
  end
  L3_2 = 0
  L4_2 = A0_2.veteran_level
  if L4_2 == 0 then
    L4_2 = math
    L4_2 = L4_2.floor
    L5_2 = Constants
    L5_2 = L5_2.Card_EnhancementModifier
    L5_2 = L2_2 * L5_2
    L6_2 = math
    L6_2 = L6_2.pow
    L7_2 = A0_2.virtualRarity
    L8_2 = Constants
    L8_2 = L8_2.Card_EnhanceRarityModifier
    L6_2 = L6_2(L7_2, L8_2)
    L5_2 = L5_2 * L6_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  else
    L4_2 = math
    L4_2 = L4_2.floor
    L5_2 = Constants
    L5_2 = L5_2.Card_Vet_EnhancementModifier
    L5_2 = L2_2 * L5_2
    L6_2 = math
    L6_2 = L6_2.pow
    L7_2 = A0_2.virtualRarity
    L8_2 = A0_2.veteran_level
    L7_2 = L7_2 / L8_2
    L8_2 = Constants
    L8_2 = L8_2.Card_Vet_EnhanceRarityModifier
    L6_2 = L6_2(L7_2, L8_2)
    L5_2 = L5_2 * L6_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  end
  return L3_2
end

enhancementPowerWithCards = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = [[
applyPowerBoostToCard, given card must not be nil, either provide the card as the first
        function parameter or call using colon from the card]]
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = mainPlayer
  L1_2 = L1_2.powerBoost
  if L1_2 ~= nil then
    L1_2 = os
    L1_2 = L1_2.time
    L1_2 = L1_2()
    L2_2 = mainPlayer
    L2_2 = L2_2.powerBoost
    L2_2 = L2_2.creationTime
    L2_2 = L1_2 - L2_2
    L3_2 = Constants
    L3_2 = L3_2.POWER_BOOST_TOTAL_TIME
    L3_2 = L3_2 - L2_2
    L4_2 = log3
    L5_2 = "boost id:"
    L6_2 = mainPlayer
    L6_2 = L6_2.powerBoost
    L6_2 = L6_2.id
    L4_2(L5_2, L6_2)
    L4_2 = log3
    L5_2 = "Constants.BOOST_MULTIPLIERS:"
    L6_2 = Constants
    L6_2 = L6_2.BOOST_MULTIPLIERS
    L7_2 = tostring
    L8_2 = mainPlayer
    L8_2 = L8_2.powerBoost
    L8_2 = L8_2.id
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2[L7_2]
    L4_2(L5_2, L6_2)
    if 0 < L3_2 then
      L4_2 = math
      L4_2 = L4_2.ceil
      L5_2 = A0_2.power
      L6_2 = Constants
      L6_2 = L6_2.BOOST_MULTIPLIERS
      L7_2 = tostring
      L8_2 = mainPlayer
      L8_2 = L8_2.powerBoost
      L8_2 = L8_2.id
      L7_2 = L7_2(L8_2)
      L6_2 = L6_2[L7_2]
      L5_2 = L5_2 * L6_2
      L4_2 = L4_2(L5_2)
      A0_2.power = L4_2
    end
  end
end

applyPowerBoostToCard = L10_1

function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = checkValidityAssert
  L5_2 = A0_2
  L6_2 = [[
enhanceWithCards, given card must not be nil, either provide the card as the first
        function parameter or call using colon from the card]]
  L7_2 = _NAME
  L8_2 = "table"
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = checkValidityAssert
  L5_2 = A1_2
  L6_2 = "enhanceWithCards, an array of cards needs to be provided"
  L7_2 = _NAME
  L8_2 = "table"
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = L1_1
  L4_2 = L4_2.logEvent
  L5_2 = "Card Enhanced"
  L4_2(L5_2)
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "Enhance with Cards"
    L4_3 = A3_2
    L5_3 = {}
    L6_3 = "gold"
    L7_3 = "card"
    L5_3[1] = L6_3
    L5_3[2] = L7_3
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
    if L1_3 then
      L3_3 = mainPlayer
      L4_3 = L2_3.gold
      L3_3.gold = L4_3
      L3_3 = A0_2
      L4_3 = L2_3.card
      L4_3 = L4_3.power
      L3_3.power = L4_3
      L3_3 = A0_2
      L4_3 = L3_3
      L3_3 = L3_3.applyPowerBoostToCard
      L3_3(L4_3)
      L3_3 = A0_2
      L4_3 = L2_3.card
      L4_3 = L4_3.last_used_at
      L3_3.lastUsageDate = L4_3
      L3_3 = pairs
      L4_3 = A1_2
      L3_3, L4_3, L5_3 = L3_3(L4_3)
      for L6_3, L7_3 in L3_3, L4_3, L5_3 do
        L8_3 = mainPlayer
        L8_3 = L8_3.heroSet
        if L8_3 then
          L8_3 = mainPlayer
          L8_3 = L8_3.heroSet
          L9_3 = mainPlayer
          L9_3 = L9_3.cards
          L9_3 = L9_3[L6_3]
          L9_3 = L9_3.baseId
          L8_3 = L8_3[L9_3]
          if L8_3 then
            L8_3 = pairs
            L9_3 = mainPlayer
            L9_3 = L9_3.heroSet
            L10_3 = mainPlayer
            L10_3 = L10_3.cards
            L10_3 = L10_3[L6_3]
            L10_3 = L10_3.baseId
            L9_3 = L9_3[L10_3]
            L8_3, L9_3, L10_3 = L8_3(L9_3)
            for L11_3, L12_3 in L8_3, L9_3, L10_3 do
              L12_3 = nil
            end
            L8_3 = mainPlayer
            L8_3 = L8_3.heroSet
            L9_3 = mainPlayer
            L9_3 = L9_3.cards
            L9_3 = L9_3[L6_3]
            L9_3 = L9_3.baseId
            L8_3[L9_3] = nil
          end
        end
        L8_3 = mainPlayer
        L8_3 = L8_3.cards
        L8_3[L6_3] = nil
        L8_3 = mainPlayer
        L8_3 = L8_3.tribe
        if L8_3 then
          L8_3 = mainPlayer
          L8_3 = L8_3.tribe
          L8_3 = L8_3.defense
          if L8_3 ~= nil then
            L8_3 = mainPlayer
            L8_3 = L8_3.tribe
            L8_3 = L8_3.defense
            L8_3 = L8_3.assignedCards
            L8_3[L6_3] = nil
          end
          L8_3 = mainPlayer
          L8_3 = L8_3.tribe
          L8_3 = L8_3.offense
          if L8_3 ~= nil then
            L8_3 = mainPlayer
            L8_3 = L8_3.tribe
            L8_3 = L8_3.offense
            L8_3 = L8_3.assignedCards
            L8_3[L6_3] = nil
          end
          L8_3 = mainPlayer
          L8_3 = L8_3.tribe
          L8_3 = L8_3.evolution
          if L8_3 ~= nil then
            L8_3 = mainPlayer
            L8_3 = L8_3.tribe
            L8_3 = L8_3.evolution
            L8_3 = L8_3.assignedCards
            L8_3[L6_3] = nil
          end
          L8_3 = mainPlayer
          L8_3 = L8_3.tribe
          L8_3 = L8_3.cooldown
          if L8_3 ~= nil then
            L8_3 = mainPlayer
            L8_3 = L8_3.tribe
            L8_3 = L8_3.cooldown
            L8_3 = L8_3.assignedCards
            L8_3[L6_3] = nil
          end
        end
        L8_3 = L2_3.hero_max_rarity
        if L8_3 then
          L8_3 = mainPlayer
          L9_3 = L2_3.hero_max_rarity
          L8_3.heroMaxRarity = L9_3
        end
        L8_3 = mainPlayer
        L8_3 = L8_3.goldBuilding
        if L8_3 ~= nil then
          L8_3 = mainPlayer
          L8_3 = L8_3.goldBuilding
          L8_3 = L8_3.assignedCards
          L8_3[L6_3] = nil
        end
      end
      L3_3 = A2_2
      if L3_3 ~= nil then
        L3_3 = A2_2
        L4_3 = A0_2
        L5_3 = A1_2
        L3_3(L4_3, L5_3)
      end
    end
  end
  
  L5_2 = {}
  L6_2 = A0_2.id
  L5_2.card_id = L6_2
  L6_2 = {}
  L7_2 = pairs
  L8_2 = A1_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = table
    L12_2 = L12_2.insert
    L13_2 = L6_2
    L14_2 = L11_2.id
    L12_2(L13_2, L14_2)
  end
  L7_2 = L3_1
  L7_2 = L7_2.encode
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  L5_2.sacrifices = L7_2
  L7_2 = {}
  L7_2.body = L5_2
  L8_2 = network
  L8_2 = L8_2.getDefaultHeader
  L8_2 = L8_2()
  L7_2.headers = L8_2
  L8_2 = network
  L8_2 = L8_2.request
  L9_2 = Constants
  L9_2 = L9_2.API_Path
  L10_2 = Constants
  L10_2 = L10_2.API_EnhanceCard
  L9_2 = L9_2 .. L10_2
  L10_2 = "POST"
  L11_2 = L4_2
  L12_2 = L7_2
  L13_2 = "enhance with cards"
  L14_2 = nil
  L15_2 = A3_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end

enhanceWithCards = L10_1

function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "enhance with nectars"
    L4_3 = A2_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = mainPlayer
      L4_3 = L2_3.nectar
      L3_3.nectar = L4_3
      L3_3 = A0_2
      L4_3 = L2_3.card
      L4_3 = L4_3.power
      L3_3.power = L4_3
      L3_3 = A0_2
      L4_3 = L3_3
      L3_3 = L3_3.applyPowerBoostToCard
      L3_3(L4_3)
      L3_3 = A1_2
      if L3_3 ~= nil then
        L3_3 = A1_2
        L4_3 = A0_2
        L3_3(L4_3)
      end
    end
  end
  
  L4_2 = {}
  L5_2 = A0_2.id
  L4_2.card_id = L5_2
  L5_2 = {}
  L6_2 = network
  L6_2 = L6_2.getDefaultHeader
  L6_2 = L6_2()
  L5_2.headers = L6_2
  L5_2.body = L4_2
  L6_2 = network
  L6_2 = L6_2.request
  L7_2 = Constants
  L7_2 = L7_2.API_Path
  L8_2 = Constants
  L8_2 = L8_2.API_EnhanceCardWithNectar
  L7_2 = L7_2 .. L8_2
  L8_2 = "POST"
  L9_2 = L3_2
  L10_2 = L5_2
  L11_2 = "enhance with nectar"
  L12_2 = nil
  L13_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

enhanceWithNectar = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = assert
  L3_2 = A0_2
  L4_2 = [[
given card most not be nil, either provide the card as the first
        function parameter or call using colon from one of the cards you want
            to evolve.]]
  L2_2(L3_2, L4_2)
  L2_2 = 0
  L3_2 = 0
  L4_2 = pairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L8_2
    L9_2 = L8_2.cost
    L9_2 = L9_2(L10_2)
    L2_2 = L2_2 + L9_2
    L3_2 = L3_2 + 1
  end
  L4_2 = getNextCardForbaseId
  L5_2 = A0_2.baseId
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.cost
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2.veteran_level
  if L5_2 == 0 then
    L5_2 = math
    L5_2 = L5_2.floor
    L6_2 = L4_2 - L2_2
    L7_2 = Constants
    L7_2 = L7_2.Card_EvolutionCostModifier
    L6_2 = L6_2 * L7_2
    L5_2 = L5_2(L6_2)
    L2_2 = L5_2
    if L2_2 and L2_2 < 0 then
      L5_2 = tonumber
      L6_2 = Constants
      L6_2 = L6_2.Card_EvolutionCostCorrectionModifier
      L5_2 = L5_2(L6_2)
      L2_2 = L2_2 * L5_2
    end
    L5_2 = L6_1
    if L5_2 then
      L5_2 = L6_1
      L6_2 = A0_2.fruitId
      L5_2 = L5_2[L6_2]
      if L5_2 then
        L5_2 = L6_1
        L6_2 = A0_2.fruitId
        L5_2 = L5_2[L6_2]
        L5_2 = L5_2.category
        if L5_2 == 2 then
          L5_2 = A0_2.rarity
          L6_2 = tonumber
          L7_2 = Constants
          L7_2 = L7_2.Card_MonsterEvolutionMinRarity
          L6_2 = L6_2(L7_2)
          if L5_2 >= L6_2 then
            L5_2 = tonumber
            L6_2 = Constants
            L6_2 = L6_2.Card_MonsterEvolutionMinCost
            L5_2 = L5_2(L6_2)
            L6_2 = tonumber
            L7_2 = A0_2.rarity
            L6_2 = L6_2(L7_2)
            L7_2 = Constants
            L7_2 = L7_2.Card_MonsterEvolutionMinRarity
            L7_2 = L7_2 - 1
            L6_2 = L6_2 - L7_2
            L2_2 = L5_2 * L6_2
          end
        end
      end
    end
  else
    L5_2 = math
    L5_2 = L5_2.floor
    L6_2 = L4_2 - L2_2
    L7_2 = Constants
    L7_2 = L7_2.Card_Vet_EvolutionCostModifier
    L6_2 = L6_2 * L7_2
    L7_2 = A0_2.veteran_level
    L6_2 = L6_2 * L7_2
    L5_2 = L5_2(L6_2)
    L2_2 = L5_2
  end
  if L3_2 < 2 then
    L5_2 = 0
    return L5_2
  else
    return L2_2
  end
end

evolutionCostWithCard = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = checkValidityAssert
  L3_2 = A0_2
  L4_2 = "evolutionPowerWithCard, Two cards must be given for the evolutionPowerWithCard function to work"
  L5_2 = _NAME
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L2_1
  L2_2 = L2_2.baseCardWithId
  L3_2 = A0_2.baseId
  L2_2 = L2_2(L3_2)
  L3_2 = L2_1
  L3_2 = L3_2.evolvesTo
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = 0
  L5_2 = 0
  if A1_2 then
    L6_2 = L2_1
    L6_2 = L6_2.baseCardWithId
    L7_2 = A1_2.baseId
    L6_2 = L6_2(L7_2)
    L4_2 = A1_2.power
    L5_2 = L6_2.power
  end
  if L3_2 ~= nil then
    L6_2 = L3_2.power
    L7_2 = A0_2.power
    L8_2 = L2_2.power
    L7_2 = L7_2 - L8_2
    L8_2 = L4_2 - L5_2
    L7_2 = L7_2 + L8_2
    L8_2 = Constants
    L8_2 = L8_2.Card_EvolutionEnhancePowerModifier
    L7_2 = L8_2 * L7_2
    L8_2 = L6_2 + L7_2
    L9_2 = math
    L9_2 = L9_2.min
    L10_2 = L8_2
    L11_2 = L3_2.powerLimit
    L9_2 = L9_2(L10_2, L11_2)
    L8_2 = L9_2
    return L8_2
  else
    L6_2 = 0
    return L6_2
  end
end

evolutionPowerWithCard = L10_1

function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = checkValidityAssert
  L5_2 = A0_2
  L6_2 = "evolveWithCard, Two cards must be given for the evolveWithCard function to work"
  L7_2 = _NAME
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = checkValidityAssert
  L5_2 = A1_2
  L6_2 = "evolveWithCard, Two cards must be given for the evolveWithCard function to work"
  L7_2 = _NAME
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = checkAssert
  L5_2 = A0_2.baseId
  L6_2 = A1_2.baseId
  L5_2 = L5_2 == L6_2
  L6_2 = "evolveWithCard, Both cards need to have the same baseId to be evolvable"
  L7_2 = _NAME
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L1_1
  L4_2 = L4_2.logEvent
  L5_2 = "Card Evolved"
  L4_2(L5_2)
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "Evolve with Card"
    
    function L4_3(A0_4)
      local L1_4, L2_4, L3_4
      L1_4 = A3_2
      L2_4 = A0_2
      L3_4 = A0_4
      L1_4(L2_4, L3_4)
    end
    
    L5_3 = {}
    L6_3 = "gold"
    L7_3 = "card"
    L5_3[1] = L6_3
    L5_3[2] = L7_3
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
    if L1_3 then
      L3_3 = mainPlayer
      L4_3 = L2_3.gold
      L3_3.gold = L4_3
      L3_3 = _M
      L4_3 = L3_3
      L3_3 = L3_3.new
      L5_3 = L2_3.card
      L3_3 = L3_3(L4_3, L5_3)
      evolutionResult = L3_3
      L3_3 = evolutionResult
      L4_3 = L3_3
      L3_3 = L3_3.applyPowerBoostToCard
      L3_3(L4_3)
      L3_3 = mainPlayer
      L3_3 = L3_3.cards
      L4_3 = L2_3.card
      L4_3 = L4_3.id
      L5_3 = evolutionResult
      L3_3[L4_3] = L5_3
      L3_3 = mainPlayer
      L3_3 = L3_3.cards
      L4_3 = A0_2
      L4_3 = L4_3.id
      L3_3[L4_3] = nil
      L3_3 = mainPlayer
      L3_3 = L3_3.cards
      L4_3 = A1_2
      L4_3 = L4_3.id
      L3_3[L4_3] = nil
      L3_3 = A2_2
      if L3_3 ~= nil then
        L3_3 = A2_2
        L4_3 = evolutionResult
        L3_3(L4_3)
      end
    end
  end
  
  L5_2 = {}
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L5_2
  L8_2 = A0_2.id
  L6_2(L7_2, L8_2)
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L5_2
  L8_2 = A1_2.id
  L6_2(L7_2, L8_2)
  L6_2 = {}
  L7_2 = L3_1
  L7_2 = L7_2.encode
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  L6_2.sacrifices = L7_2
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
  L10_2 = L10_2.API_EvolveCard
  L9_2 = L9_2 .. L10_2
  L10_2 = "POST"
  L11_2 = L4_2
  L12_2 = L7_2
  L13_2 = "evolve with card"
  L14_2 = nil
  L15_2 = A3_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end

evolveWithCard = L10_1

function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = checkValidityAssert
  L4_2 = A0_2
  L5_2 = "evolveHeroCard, A card must be given for the evolveHeroCard function to work"
  L6_2 = _NAME
  L3_2(L4_2, L5_2, L6_2)
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "Evolve Hero Card"
    L4_3 = A2_2
    L5_3 = {}
    L6_3 = "gold"
    L7_3 = "card"
    L5_3[1] = L6_3
    L5_3[2] = L7_3
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
    if L1_3 then
      L3_3 = mainPlayer
      L4_3 = L2_3.gold
      L3_3.gold = L4_3
      L3_3 = _M
      L4_3 = L3_3
      L3_3 = L3_3.new
      L5_3 = L2_3.card
      L3_3 = L3_3(L4_3, L5_3)
      evolutionResult = L3_3
      L3_3 = evolutionResult
      L4_3 = L3_3
      L3_3 = L3_3.applyPowerBoostToCard
      L3_3(L4_3)
      L3_3 = mainPlayer
      L3_3 = L3_3.cards
      L4_3 = L2_3.card
      L4_3 = L4_3.id
      L5_3 = evolutionResult
      L3_3[L4_3] = L5_3
      L3_3 = mainPlayer
      L4_3 = evolutionResult
      L4_3 = L4_3.baseId
      L3_3.activeHeroID = L4_3
      L3_3 = mainPlayer
      L3_3 = L3_3.heroSet
      L4_3 = evolutionResult
      L4_3 = L4_3.baseId
      L5_3 = {}
      L3_3[L4_3] = L5_3
      L3_3 = mainPlayer
      L3_3 = L3_3.heroSet
      L4_3 = evolutionResult
      L4_3 = L4_3.baseId
      L3_3 = L3_3[L4_3]
      L4_3 = evolutionResult
      L4_3 = L4_3.baseId
      L3_3.id = L4_3
      L3_3 = mainPlayer
      L3_3 = L3_3.heroSet
      L4_3 = evolutionResult
      L4_3 = L4_3.baseId
      L3_3 = L3_3[L4_3]
      L4_3 = {}
      L3_3.items = L4_3
      L3_3 = mainPlayer
      L3_3 = L3_3.heroSet
      L4_3 = evolutionResult
      L4_3 = L4_3.baseId
      L3_3 = L3_3[L4_3]
      L4_3 = evolutionResult
      L4_3 = L4_3.id
      L3_3.cardId = L4_3
      L3_3 = mainPlayer
      L3_3 = L3_3.heroSet
      L4_3 = evolutionResult
      L4_3 = L4_3.baseId
      L3_3 = L3_3[L4_3]
      L3_3.potion = 0
      L3_3 = pairs
      L4_3 = mainPlayer
      L4_3 = L4_3.heroItems
      L3_3, L4_3, L5_3 = L3_3(L4_3)
      for L6_3, L7_3 in L3_3, L4_3, L5_3 do
        L8_3 = L7_3.assignedHeroID
        L9_3 = A0_2
        L9_3 = L9_3.baseId
        if L8_3 == L9_3 then
          L7_3.assignedHeroID = 0
        end
      end
      L3_3 = mainPlayer
      L3_3 = L3_3.heroSet
      L4_3 = A0_2
      L4_3 = L4_3.baseId
      L3_3[L4_3] = nil
      L3_3 = mainPlayer
      L3_3 = L3_3.cards
      L4_3 = A0_2
      L4_3 = L4_3.id
      L3_3[L4_3] = nil
      L3_3 = L2_3.hero_max_rarity
      if L3_3 then
        L3_3 = mainPlayer
        L4_3 = L2_3.hero_max_rarity
        L3_3.heroMaxRarity = L4_3
      end
      L3_3 = A1_2
      if L3_3 ~= nil then
        L3_3 = A1_2
        L4_3 = evolutionResult
        L3_3(L4_3)
      end
    end
  end
  
  L4_2 = {}
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L4_2
  L7_2 = A0_2.id
  L5_2(L6_2, L7_2)
  L5_2 = {}
  L6_2 = L3_1
  L6_2 = L6_2.encode
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L5_2.sacrifices = L6_2
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = Constants
  L8_2 = L8_2.API_Path
  L9_2 = Constants
  L9_2 = L9_2.API_EvolveCard
  L8_2 = L8_2 .. L9_2
  L9_2 = "POST"
  L10_2 = L3_2
  L11_2 = L6_2
  L12_2 = "evolve hero card"
  L13_2 = nil
  L14_2 = A2_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end

evolveHeroCard = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L2_1
  L1_2 = L1_2.baseCardWithId
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L2_1
  L3_2 = L3_2.baseCards
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.fruitId
    L8_2 = L1_2.fruitId
    if L7_2 == L8_2 then
      L7_2 = L1_2.rarity
      L7_2 = L7_2 + 1
      L8_2 = L6_2.rarity
      if L7_2 == L8_2 then
        return L6_2
      end
    end
  end
end

getNextCardForbaseId = L10_1

function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "add potion to card"
    L4_3 = A3_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L2_3.nectar
      if L3_3 then
        L3_3 = mainPlayer
        L4_3 = L2_3.nectar
        L3_3.nectar = L4_3
      end
      L3_3 = L2_3.player_potion
      if L3_3 then
        L3_3 = mainPlayer
        L4_3 = L2_3.player_potion
        L3_3.potionAmount = L4_3
      end
      L3_3 = L2_3.gold
      if L3_3 then
        L3_3 = mainPlayer
        L4_3 = L2_3.gold
        L3_3.gold = L4_3
      end
      L3_3 = L2_3.hero_potion
      if L3_3 then
        L3_3 = mainPlayer
        L3_3 = L3_3.heroSet
        L4_3 = A0_2
        L4_3 = L4_3.baseId
        L3_3 = L3_3[L4_3]
        if L3_3 then
          L3_3 = mainPlayer
          L3_3 = L3_3.heroSet
          L4_3 = A0_2
          L4_3 = L4_3.baseId
          L3_3 = L3_3[L4_3]
          L4_3 = L2_3.hero_potion
          L3_3.potion = L4_3
        end
      end
      L3_3 = A2_2
      if L3_3 then
        L3_3 = A2_2
        L3_3()
      end
    end
  end
  
  L5_2 = {}
  L6_2 = A0_2.baseId
  L5_2.hero_id = L6_2
  if A1_2 then
    L5_2.potion = A1_2
  end
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = Constants
  L8_2 = L8_2.API_Path
  L9_2 = Constants
  L9_2 = L9_2.API_Card_AddPotion
  L8_2 = L8_2 .. L9_2
  L9_2 = "POST"
  L10_2 = L4_2
  L11_2 = L6_2
  L12_2 = "add potion to card"
  L13_2 = nil
  L14_2 = A3_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end

addPotionToCard = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L1_2.powerValue = 0
  L1_2.wisdomValue = 0
  L1_2.blessingValue = 0
  L2_2 = 1
  L3_2 = 1
  L4_2 = 1
  L5_2 = L2_1
  L5_2 = L5_2.baseCards
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.heroType
  if L5_2 == 0 then
    L6_2 = Constants
    L2_2 = L6_2.Hero_AttributeMultiplier
  elseif L5_2 == 1 then
    L6_2 = Constants
    L3_2 = L6_2.Hero_AttributeMultiplier
  else
    L6_2 = Constants
    L4_2 = L6_2.Hero_AttributeMultiplier
  end
  L6_2 = pairs
  L7_2 = mainPlayer
  L7_2 = L7_2.heroSet
  L7_2 = L7_2[A0_2]
  L7_2 = L7_2.items
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = L10_2.base_heroitem_id
    if L11_2 then
      L11_2 = L1_2.powerValue
      L12_2 = mainPlayer
      L12_2 = L12_2.heroItems
      L13_2 = L10_2.base_heroitem_id
      L12_2 = L12_2[L13_2]
      L12_2 = L12_2.powerAmount
      L12_2 = L12_2 * L2_2
      L11_2 = L11_2 + L12_2
      L1_2.powerValue = L11_2
      L11_2 = L1_2.wisdomValue
      L12_2 = mainPlayer
      L12_2 = L12_2.heroItems
      L13_2 = L10_2.base_heroitem_id
      L12_2 = L12_2[L13_2]
      L12_2 = L12_2.wisdomAmount
      L12_2 = L12_2 * L3_2
      L11_2 = L11_2 + L12_2
      L1_2.wisdomValue = L11_2
      L11_2 = L1_2.blessingValue
      L12_2 = mainPlayer
      L12_2 = L12_2.heroItems
      L13_2 = L10_2.base_heroitem_id
      L12_2 = L12_2[L13_2]
      L12_2 = L12_2.blessingAmount
      L12_2 = L12_2 * L4_2
      L11_2 = L11_2 + L12_2
      L1_2.blessingValue = L11_2
    end
  end
  return L1_2
end

getGainedAttributesByItems = L10_1
