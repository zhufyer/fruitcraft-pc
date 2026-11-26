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
L2_1 = "Models.Card"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Models.UserCard"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "json"
L3_1 = L3_1(L4_1)
Json = L3_1
L3_1 = require
L4_1 = "Constants"
L3_1(L4_1)
L3_1 = "name not set"
name = L3_1
L3_1 = "description not set"
description = L3_1
L3_1 = 0
level = L3_1
L3_1 = 0
maxLevel = L3_1
L3_1 = nil
assignedCards = L3_1
L3_1 = false
maxCards = L3_1
L3_1 = false
image = L3_1
L3_1 = 0
buildingType = L3_1
L3_1 = false
tribe = L3_1

function L3_1(A0_2, A1_2)
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

new = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "upgradeCost, function needs to be called with colon"
  L4_2 = _NAME
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = Constants
  L1_2 = L1_2.Building_UpgradeCosts
  L2_2 = log3
  L3_2 = " building level is : "
  L4_2 = A0_2.level
  L2_2(L3_2, L4_2)
  L2_2 = log3
  L3_2 = " building type is : "
  L4_2 = A0_2.buildingType
  L2_2(L3_2, L4_2)
  L2_2 = log3
  L3_2 = " building upgrage cost is : "
  L4_2 = A0_2.level
  L4_2 = L1_2[L4_2]
  L5_2 = A0_2.buildingType
  L4_2 = L4_2[L5_2]
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.level
  L2_2 = L1_2[L2_2]
  L3_2 = A0_2.buildingType
  L2_2 = L2_2[L3_2]
  return L2_2
end

upgradeCost = L3_1

function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = checkValidityAssert
  L5_2 = A0_2
  L6_2 = "upgrade, function needs to be called with colon"
  L7_2 = _NAME
  L8_2 = "table"
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = L0_1
  L4_2 = L4_2.logEvent
  L5_2 = "Building Upgrade Used"
  L6_2 = {}
  L7_2 = A0_2.name
  L6_2.buildingName = L7_2
  L4_2(L5_2, L6_2)
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "Upgrade Building"
    
    function L4_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = A2_2
      L2_4 = A3_2
      L3_4 = A0_2
      L4_4 = A0_4
      L1_4(L2_4, L3_4, L4_4)
    end
    
    L5_3 = {}
    L6_3 = "player_gold"
    L7_3 = "level"
    L5_3[1] = L6_3
    L5_3[2] = L7_3
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
    if L1_3 then
      L3_3 = L2_3.tribe_gold
      if L3_3 ~= nil then
        L3_3 = mainPlayer
        L3_3 = L3_3.tribe
        L4_3 = L2_3.tribe_gold
        L3_3.gold = L4_3
      end
      L3_3 = mainPlayer
      L4_3 = L2_3.player_gold
      L3_3.gold = L4_3
      L3_3 = A0_2
      L4_3 = L2_3.level
      L3_3.level = L4_3
      L3_3 = A1_2
      if L3_3 ~= nil then
        L3_3 = A1_2
        L4_3 = A3_2
        L5_3 = A0_2
        L3_3(L4_3, L5_3)
      end
    end
  end
  
  L5_2 = 0
  L6_2 = A0_2.buildingType
  if L6_2 == "gold" then
    L5_2 = 1001
  else
    L6_2 = A0_2.buildingType
    if L6_2 == "offensive" then
      L5_2 = 1002
    else
      L6_2 = A0_2.buildingType
      if L6_2 == "defensive" then
        L5_2 = 1003
      else
        L6_2 = A0_2.buildingType
        if L6_2 == "cooldown" then
          L5_2 = 1004
        else
          L6_2 = A0_2.buildingType
          if L6_2 == "mainhall" then
            L5_2 = 1005
          else
            L6_2 = A0_2.buildingType
            if L6_2 == "bank" then
              L5_2 = 1007
            end
          end
        end
      end
    end
  end
  L6_2 = {}
  L6_2.type = L5_2
  L7_2 = mainPlayer
  L7_2 = L7_2.tribe
  if L7_2 then
    L7_2 = mainPlayer
    L7_2 = L7_2.tribe
    L7_2 = L7_2.id
    L6_2.tribe_id = L7_2
  end
  L7_2 = {}
  L7_2.body = L6_2
  L8_2 = log3
  L9_2 = "post data"
  L10_2 = postData
  L8_2(L9_2, L10_2)
  L8_2 = network
  L8_2 = L8_2.request
  L9_2 = Constants
  L9_2 = L9_2.API_Path
  L10_2 = Constants
  L10_2 = L10_2.API_UpgradeBuilding
  L9_2 = L9_2 .. L10_2
  L10_2 = "POST"
  L11_2 = L4_2
  L12_2 = L7_2
  L13_2 = "upgrade"
  L14_2 = nil
  L15_2 = A2_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end

upgrade = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "canUpgrade, function needs to be called with colon"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = Constants
  L1_2 = L1_2.Building_UpgradeCosts
  L2_2 = A0_2.level
  L2_2 = L1_2[L2_2]
  L3_2 = A0_2.buildingType
  L2_2 = L2_2[L3_2]
  if L2_2 ~= nil then
    L2_2 = true
    return L2_2
  end
  L2_2 = false
  return L2_2
end

canUpgrade = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "benefitFromNextLevel, function needs to be called with colon"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = Constants
  L1_2 = L1_2.Building_Benefits
  L3_2 = A0_2
  L2_2 = A0_2.canUpgrade
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2.buildingType
    if L2_2 == "gold" then
    end
    L2_2 = A0_2.level
    L2_2 = L2_2 + 1
    L2_2 = L1_2[L2_2]
    L3_2 = A0_2.buildingType
    L2_2 = L2_2[L3_2]
    return L2_2
  end
  L2_2 = ""
  return L2_2
end

benefitFromNextLevel = L3_1

function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L4_2 = checkValidityAssert
  L5_2 = A0_2
  L6_2 = "assignCards, function needs to be called with colon"
  L7_2 = _NAME
  L8_2 = "table"
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = L0_1
  L4_2 = L4_2.logEvent
  L5_2 = "Cards Assigned"
  L6_2 = {}
  L7_2 = A0_2.name
  L6_2.buildingName = L7_2
  L4_2(L5_2, L6_2)
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "Assign Cards"
    L4_3 = A3_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = A0_2
      L3_3 = L3_3.assignedCards
      if L3_3 == nil then
        L3_3 = A0_2
        L4_3 = {}
        L3_3.assignedCards = L4_3
      end
      L3_3 = pairs
      L4_3 = A0_2
      L4_3 = L4_3.assignedCards
      L3_3, L4_3, L5_3 = L3_3(L4_3)
      for L6_3, L7_3 in L3_3, L4_3, L5_3 do
        L8_3 = mainPlayer
        L8_3 = L8_3.cards
        L9_3 = L7_3.id
        L8_3 = L8_3[L9_3]
        L8_3.cardUsedForBuilding = false
      end
      L3_3 = L2_3.removed_cards
      if L3_3 ~= nil then
        L3_3 = pairs
        L4_3 = L2_3.removed_cards
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
      end
      L3_3 = pairs
      L4_3 = A1_2
      L3_3, L4_3, L5_3 = L3_3(L4_3)
      for L6_3, L7_3 in L3_3, L4_3, L5_3 do
        L8_3 = mainPlayer
        L8_3 = L8_3.cards
        L9_3 = L7_3.id
        L8_3 = L8_3[L9_3]
        L8_3.cardUsedForBuilding = true
      end
      L3_3 = A0_2
      L4_3 = A1_2
      L3_3.assignedCards = L4_3
      L3_3 = A2_2
      if L3_3 ~= nil then
        L3_3 = A2_2
        L4_3 = A0_2
        L3_3(L4_3)
      end
    end
  end
  
  L5_2 = 0
  L6_2 = A0_2.buildingType
  if L6_2 == "gold" then
    L5_2 = 1001
  else
    L6_2 = A0_2.buildingType
    if L6_2 == "offensive" then
      L5_2 = 1002
    else
      L6_2 = A0_2.buildingType
      if L6_2 == "defensive" then
        L5_2 = 1003
      else
        L6_2 = A0_2.buildingType
        if L6_2 == "cooldown" then
          L5_2 = 1004
        else
          L6_2 = A0_2.buildingType
          if L6_2 == "mainhall" then
            L5_2 = 1005
          end
        end
      end
    end
  end
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
  L7_2 = log3
  L8_2 = "type"
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  L7_2 = {}
  L7_2.type = L5_2
  L8_2 = Json
  L8_2 = L8_2.encode
  L9_2 = L6_2
  L8_2 = L8_2(L9_2)
  L7_2.cards = L8_2
  L8_2 = {}
  L8_2.body = L7_2
  L9_2 = log3
  L10_2 = "post data"
  L11_2 = postData
  L9_2(L10_2, L11_2)
  L9_2 = network
  L9_2 = L9_2.request
  L10_2 = Constants
  L10_2 = L10_2.API_Path
  L11_2 = Constants
  L11_2 = L11_2.API_AssignCards
  L10_2 = L10_2 .. L11_2
  L11_2 = "POST"
  L12_2 = L4_2
  L13_2 = L8_2
  L14_2 = "assign cards"
  L15_2 = nil
  L16_2 = A3_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
end

assignCards = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "avilableAssignCard, function needs to be called with colon"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = Constants
  L1_2 = L1_2.Building_MaxAssign
  L2_2 = math
  L2_2 = L2_2.min
  L3_2 = 4
  L4_2 = A0_2.level
  L4_2 = L1_2[L4_2]
  L5_2 = A0_2.buildingType
  L4_2 = L4_2[L5_2]
  return L2_2(L3_2, L4_2)
end

avilableAssignCard = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "benefitFromLevel, function needs to be called with colon"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = checkValidityAssert
  L2_2 = A0_2.buildingType
  L3_2 = "benefitFromLevel, building needs to have a buildingType"
  L4_2 = _NAME
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = Constants
  L1_2 = L1_2.Building_Benefits
  L2_2 = A0_2.buildingType
  if L2_2 == "gold" then
    L2_2 = A0_2.level
    L2_2 = L1_2[L2_2]
    L3_2 = A0_2.buildingType
    L2_2 = L2_2[L3_2]
    return L2_2
  else
    L2_2 = A0_2.buildingType
    if L2_2 ~= "offensive" then
      L2_2 = A0_2.buildingType
      if L2_2 ~= "defensive" then
        goto lbl_37
      end
    end
    L2_2 = A0_2.level
    L2_2 = L1_2[L2_2]
    L3_2 = A0_2.buildingType
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2 / 100
    L2_2 = 1 + L2_2
    do return L2_2 end
    goto lbl_72
    ::lbl_37::
    L2_2 = A0_2.buildingType
    if L2_2 == "cooldown" then
      L2_2 = A0_2.level
      L2_2 = L1_2[L2_2]
      L3_2 = A0_2.buildingType
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2 / 100
      L2_2 = 1 - L2_2
      return L2_2
    else
      L2_2 = A0_2.buildingType
      if L2_2 == "tribe" then
        L2_2 = A0_2.level
        L2_2 = L1_2[L2_2]
        L3_2 = A0_2.buildingType
        L2_2 = L2_2[L3_2]
        return L2_2
      else
        L2_2 = A0_2.buildingType
        if L2_2 == "bank" then
          L2_2 = log3
          L3_2 = "Fetching benefit for bank"
          L4_2 = A0_2.level
          L4_2 = L1_2[L4_2]
          L5_2 = A0_2.buildingType
          L4_2 = L4_2[L5_2]
          L2_2(L3_2, L4_2)
          L2_2 = A0_2.level
          L2_2 = L1_2[L2_2]
          L3_2 = A0_2.buildingType
          L2_2 = L2_2[L3_2]
          return L2_2
        end
      end
    end
  end
  ::lbl_72::
end

benefitFromLevel = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "benefitFromLevelText, function needs to be called with colon"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = Constants
  L1_2 = L1_2.Building_Benefits
  L2_2 = A0_2.buildingType
  if L2_2 == "gold" then
    L2_2 = log3
    L3_2 = "benefitFromLevelText GOLD"
    L4_2 = A0_2.level
    L5_2 = A0_2.buildingType
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2.level
    L3_2 = A0_2.level
    L3_2 = L1_2[L3_2]
    L4_2 = A0_2.buildingType
    L3_2 = L3_2[L4_2]
    return L2_2, L3_2
  else
    L2_2 = A0_2.buildingType
    if L2_2 == "bank" then
      L2_2 = log3
      L3_2 = "benefitFromLevelText GOLD"
      L4_2 = A0_2.level
      L5_2 = A0_2.buildingType
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = A0_2.level
      L3_2 = A0_2.level
      L3_2 = L1_2[L3_2]
      L4_2 = A0_2.buildingType
      L3_2 = L3_2[L4_2]
      return L2_2, L3_2
    end
  end
  L2_2 = log3
  L3_2 = "benefitFromLevelText OTHER"
  L4_2 = A0_2.level
  L5_2 = A0_2.buildingType
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2.level
  L2_2 = L1_2[L2_2]
  L3_2 = A0_2.buildingType
  L2_2 = L2_2[L3_2]
  return L2_2
end

benefitFromLevelText = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "benefitFromAssignedCards, function needs to be called with colon"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.assignedCards
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.benefitWithAssignedCards
    L3_2 = A0_2.assignedCards
    return L1_2(L2_2, L3_2)
  end
  L1_2 = 0
  return L1_2
end

benefitFromAssignedCards = L3_1

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = checkValidityAssert
  L3_2 = A0_2
  L4_2 = "benefitWithAssignedCards, function needs to be called with colon"
  L5_2 = _NAME
  L6_2 = "table"
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = 0
  L3_2 = {}
  if A1_2 then
    L4_2 = pairs
    L5_2 = A1_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = L8_2.power
      L2_2 = L2_2 + L9_2
      L9_2 = mainPlayer
      L9_2 = L9_2.heroSet
      if L9_2 then
        L9_2 = mainPlayer
        L9_2 = L9_2.heroSet
        L10_2 = L8_2.baseId
        L9_2 = L9_2[L10_2]
        if L9_2 then
          L9_2 = L8_2.baseId
          L10_2 = L2_1
          L10_2 = L10_2.getGainedAttributesByItems
          L11_2 = L8_2.baseId
          L10_2 = L10_2(L11_2)
          L3_2[L9_2] = L10_2
        end
      end
    end
    L4_2 = A0_2.buildingType
    if L4_2 == "gold" then
      L4_2 = 0
      L5_2 = pairs
      L6_2 = L3_2
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      for L8_2, L9_2 in L5_2, L6_2, L7_2 do
        L10_2 = L9_2.blessingValue
        L10_2 = L4_2 + L10_2
        L11_2 = L1_1
        L11_2 = L11_2.baseCards
        L11_2 = L11_2[L8_2]
        L11_2 = L11_2.blessingAttribute
        L4_2 = L10_2 + L11_2
      end
      L5_2 = Constants
      L5_2 = L5_2.Hero_BenefitModifier
      L5_2 = L4_2 * L5_2
      L6_2 = Constants
      L6_2 = L6_2.Hero_Benefit_BlessingMaxMultiplier
      L5_2 = L5_2 * L6_2
      L6_2 = Constants
      L6_2 = L6_2.Hero_BenefitDecreaseModifier
      L4_2 = L5_2 / L6_2
      if 0 < L4_2 then
        L5_2 = L2_2 * L4_2
        L2_2 = L2_2 + L5_2
      end
      L5_2 = math
      L5_2 = L5_2.floor
      L6_2 = math
      L6_2 = L6_2.pow
      L7_2 = L2_2
      L8_2 = Constants
      L8_2 = L8_2.Building_GoldMinePowerModifier1
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = Constants
      L7_2 = L7_2.Building_GoldMinePowerModifier2
      L6_2 = L6_2 * L7_2
      return L5_2(L6_2)
    else
      L4_2 = nil
      L5_2 = A0_2.buildingType
      if L5_2 == "offensive" then
        L5_2 = Constants
        L4_2 = L5_2.Building_OffensePowerModifier
      else
        L5_2 = A0_2.buildingType
        if L5_2 == "defensive" then
          L5_2 = Constants
          L4_2 = L5_2.Building_DefensePowerModifier
        end
      end
      L5_2 = 0
      L6_2 = pairs
      L7_2 = L3_2
      L6_2, L7_2, L8_2 = L6_2(L7_2)
      for L9_2, L10_2 in L6_2, L7_2, L8_2 do
        L11_2 = L10_2.powerValue
        L11_2 = L5_2 + L11_2
        L12_2 = L1_1
        L12_2 = L12_2.baseCards
        L12_2 = L12_2[L9_2]
        L12_2 = L12_2.powerAttribute
        L5_2 = L11_2 + L12_2
      end
      L6_2 = Constants
      L6_2 = L6_2.Hero_BenefitModifier
      L6_2 = L5_2 * L6_2
      L7_2 = Constants
      L7_2 = L7_2.Hero_Benefit_PowerMaxMultiplier
      L6_2 = L6_2 * L7_2
      L7_2 = Constants
      L7_2 = L7_2.Hero_BenefitDecreaseModifier
      L5_2 = L6_2 / L7_2
      if 0 < L5_2 then
        L6_2 = L2_2 * L5_2
        L2_2 = L2_2 + L6_2
      end
      L6_2 = math
      L6_2 = L6_2.floor
      L7_2 = L2_2 * L4_2
      return L6_2(L7_2)
    end
  end
  L4_2 = 0
  return L4_2
end

benefitWithAssignedCards = L3_1
