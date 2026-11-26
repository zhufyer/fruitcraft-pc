local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Data.BaseAchievements"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Data.BaseAchievementsSet"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Views.NotificationView"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "json"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "composer"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Language"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Utils.base64"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Models.ProfileManager"
L7_1 = L7_1(L8_1)
L8_1 = {}
L9_1 = nil
L10_1 = nil

function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = log3
  L1_2 = "pirtulSquash"
  L0_2(L1_2)
  L0_2 = {}
  L1_2 = {}
  L1_2.id = 1
  L1_2.limit = 10
  L0_2[1] = L1_2
  L1_2 = {}
  L1_2.id = 2
  L1_2.limit = 50
  L0_2[2] = L1_2
  L1_2 = {}
  L1_2.id = 3
  L1_2.limit = 250
  L0_2[3] = L1_2
  L1_2 = {}
  L1_2.id = 4
  L1_2.limit = 500
  L0_2[4] = L1_2
  L1_2 = checkAchievements
  L2_2 = 1
  L3_2 = "numberOfsquashedPirtul"
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
end

pirtulSquash = L11_1

function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = log3
  L4_2 = "wonBattle"
  L3_2(L4_2)
  L3_2 = {}
  L4_2 = {}
  L4_2.id = 5
  L4_2.limit = 5
  L3_2[1] = L4_2
  L4_2 = {}
  L4_2.id = 6
  L4_2.limit = 20
  L3_2[2] = L4_2
  L4_2 = {}
  L4_2.id = 7
  L4_2.limit = 200
  L3_2[3] = L4_2
  L4_2 = {}
  L4_2.id = 8
  L4_2.limit = 1000
  L3_2[4] = L4_2
  L4_2 = checkAchievements
  L5_2 = 1
  L6_2 = "numberOfWonBattle"
  L7_2 = L3_2
  L8_2 = A0_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end

wonBattle = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = log3
  L3_2 = "wonQuest"
  L2_2(L3_2)
  L2_2 = {}
  L3_2 = {}
  L3_2.id = 9
  L3_2.limit = 10
  L2_2[1] = L3_2
  L3_2 = {}
  L3_2.id = 10
  L3_2.limit = 50
  L2_2[2] = L3_2
  L3_2 = {}
  L3_2.id = 11
  L3_2.limit = 500
  L2_2[3] = L3_2
  L3_2 = {}
  L3_2.id = 12
  L3_2.limit = 5000
  L2_2[4] = L3_2
  L3_2 = checkAchievements
  L4_2 = 1
  L5_2 = "numberOfWonQuest"
  L6_2 = L2_2
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end

wonQuest = L11_1

function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = log3
  L2_2 = "boughtCooldown"
  L1_2(L2_2)
end

boughtCooldown = L11_1

function L11_1(A0_2)
  local L1_2
end

checkForNotifications = L11_1

function L11_1(A0_2)
  local L1_2
end

checkForFriendRefer = L11_1

function L11_1(A0_2)
  local L1_2
end

checkForEmail = L11_1

function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = mainPlayer
  L0_2 = L0_2.collection
  L0_2 = #L0_2
  if 21 <= L0_2 then
    L1_2 = L0_1
    L1_2 = L1_2[26]
    L1_2 = L1_2.recieved
    if L1_2 == false then
      L1_2 = registerAchievementsWithId
      L2_2 = 26
      L3_2 = failedToRegisterCallback
      L4_2 = didRegisterCallback
      L1_2(L2_2, L3_2, L4_2)
  end
  else
    if 84 <= L0_2 then
      L1_2 = L0_1
      L1_2 = L1_2[27]
      L1_2 = L1_2.recieved
      if L1_2 == false then
        L1_2 = registerAchievementsWithId
        L2_2 = 27
        L3_2 = failedToRegisterCallback
        L4_2 = didRegisterCallback
        L1_2(L2_2, L3_2, L4_2)
    end
    else
      if 168 <= L0_2 then
        L1_2 = L0_1
        L1_2 = L1_2[28]
        L1_2 = L1_2.recieved
        if L1_2 == false then
          L1_2 = registerAchievementsWithId
          L2_2 = 28
          L3_2 = failedToRegisterCallback
          L4_2 = didRegisterCallback
          L1_2(L2_2, L3_2, L4_2)
      end
      elseif 210 <= L0_2 then
        L1_2 = L0_1
        L1_2 = L1_2[29]
        L1_2 = L1_2.recieved
        if L1_2 == false then
          L1_2 = registerAchievementsWithId
          L2_2 = 29
          L3_2 = failedToRegisterCallback
          L4_2 = didRegisterCallback
          L1_2(L2_2, L3_2, L4_2)
        end
      end
    end
  end
end

checkColletionAchievements = L11_1

function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = log3
  L1_2 = "levelUp"
  L0_2(L1_2)
  L0_2 = L8_1
  L1_2 = mainPlayer
  L1_2 = L1_2.level
  L0_2.playerLevel = L1_2
  L0_2 = {}
  L1_2 = {}
  L1_2.id = 34
  L1_2.limit = 10
  L0_2[1] = L1_2
  L1_2 = {}
  L1_2.id = 35
  L1_2.limit = 20
  L0_2[2] = L1_2
  L1_2 = {}
  L1_2.id = 36
  L1_2.limit = 30
  L0_2[3] = L1_2
  L1_2 = {}
  L1_2.id = 37
  L1_2.limit = 40
  L0_2[4] = L1_2
  L1_2 = {}
  L1_2.id = 38
  L1_2.limit = 50
  L0_2[5] = L1_2
  L1_2 = {}
  L1_2.id = 39
  L1_2.limit = 60
  L0_2[6] = L1_2
  L1_2 = {}
  L1_2.id = 40
  L1_2.limit = 70
  L0_2[7] = L1_2
  L1_2 = {}
  L1_2.id = 41
  L1_2.limit = 80
  L0_2[8] = L1_2
  L1_2 = {}
  L1_2.id = 42
  L1_2.limit = 90
  L0_2[9] = L1_2
  L1_2 = checkAchievements
  L2_2 = 0
  L3_2 = "playerLevel"
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = mainPlayer
  L1_2 = L1_2.level
  L2_2 = Constants
  L2_2 = L2_2.Max_Player_level_For_Tasks
  if L1_2 > L2_2 then
    return
  end
  L1_2 = log3
  L2_2 = "check tasks"
  L1_2(L2_2)
  L1_2 = L8_1
  L2_2 = mainPlayer
  L2_2 = L2_2.level
  L1_2.TasksLevel = L2_2
  L1_2 = {}
  L2_2 = {}
  L2_2.id = 2001
  L2_2.limit = 2
  L1_2[1] = L2_2
  L2_2 = {}
  L2_2.id = 2002
  L2_2.limit = 3
  L1_2[2] = L2_2
  L2_2 = {}
  L2_2.id = 2003
  L2_2.limit = 4
  L1_2[3] = L2_2
  L2_2 = {}
  L2_2.id = 2004
  L2_2.limit = 6
  L1_2[4] = L2_2
  L2_2 = {}
  L2_2.id = 2005
  L2_2.limit = 8
  L1_2[5] = L2_2
  L2_2 = {}
  L2_2.id = 2006
  L2_2.limit = 9
  L1_2[6] = L2_2
  L2_2 = checkAchievements
  L3_2 = 0
  L4_2 = "TasksLevel"
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end

checkLevelAchievement = L11_1

function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = log3
  L1_2 = "cardEvolved"
  L0_2(L1_2)
  L0_2 = log3
  L1_2 = "EVOLVES : "
  L2_2 = L8_1
  L3_2 = numberOfEvolvedCards
  L2_2 = L2_2[L3_2]
  L0_2(L1_2, L2_2)
  L0_2 = {}
  L1_2 = {}
  L1_2.id = 13
  L1_2.limit = 1
  L0_2[1] = L1_2
  L1_2 = {}
  L1_2.id = 14
  L1_2.limit = 10
  L0_2[2] = L1_2
  L1_2 = {}
  L1_2.id = 15
  L1_2.limit = 25
  L0_2[3] = L1_2
  L1_2 = {}
  L1_2.id = 16
  L1_2.limit = 100
  L0_2[4] = L1_2
  L1_2 = checkAchievements
  L2_2 = 1
  L3_2 = "numberOfEvolvedCards"
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = mainPlayer
  L1_2 = L1_2.level
  L2_2 = Constants
  L2_2 = L2_2.Max_Player_level_For_Tasks
  if L1_2 > L2_2 then
    return
  end
  L1_2 = log3
  L2_2 = "check tasks"
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = {}
  L2_2.id = 2011
  L2_2.limit = 1
  L1_2[1] = L2_2
  L2_2 = checkAchievements
  L3_2 = 1
  L4_2 = "TaskEvolveCard"
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end

cardEvolved = L11_1

function L11_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = mainPlayer
  L0_2 = L0_2.level
  L1_2 = Constants
  L1_2 = L1_2.Max_Player_level_For_Tasks
  if L0_2 > L1_2 then
    return
  end
  L0_2 = setAchievementForKey
  L1_2 = "TaskPlayerJoinedTheTribe"
  L2_2 = true
  L0_2(L1_2, L2_2)
  L0_2 = saveAchievements
  L0_2()
  L0_2 = registerAchievementsWithId
  L1_2 = 2010
  L2_2 = failedToRegisterCallback
  L3_2 = didRegisterCallback
  L0_2(L1_2, L2_2, L3_2)
end

checkJoinedTribe = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = log3
  L2_2 = "cardEnhanced"
  L1_2(L2_2)
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "cardEnhanced, numberOfcards must be a number"
  L4_2 = _NAME
  L5_2 = "number"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = {}
  L2_2 = {}
  L2_2.id = 18
  L2_2.limit = 1
  L1_2[1] = L2_2
  L2_2 = {}
  L2_2.id = 19
  L2_2.limit = 25
  L1_2[2] = L2_2
  L2_2 = {}
  L2_2.id = 20
  L2_2.limit = 100
  L1_2[3] = L2_2
  L2_2 = {}
  L2_2.id = 21
  L2_2.limit = 500
  L1_2[4] = L2_2
  L2_2 = checkAchievements
  L3_2 = A0_2
  L4_2 = "numberOfEnhancedCards"
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = mainPlayer
  L2_2 = L2_2.level
  L3_2 = Constants
  L3_2 = L3_2.Max_Player_level_For_Tasks
  if L2_2 > L3_2 then
    return
  end
  L2_2 = {}
  L3_2 = {}
  L3_2.id = 2009
  L3_2.limit = 1
  L2_2[1] = L3_2
  L3_2 = checkAchievements
  L4_2 = A0_2
  L5_2 = "TaskEnhanceCard"
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end

cardEnhanced = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = mainPlayer
  L1_2 = L1_2.level
  L2_2 = Constants
  L2_2 = L2_2.Max_Player_level_For_Tasks
  if L1_2 > L2_2 then
    return
  end
  L1_2 = log3
  L2_2 = "buycardPack"
  L1_2(L2_2)
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "buyCardPacks, cardPackNumber must be a number"
  L4_2 = _NAME
  L5_2 = "number"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = {}
  if A0_2 == 1 then
    L2_2 = {}
    L3_2 = {}
    L3_2.id = 2007
    L3_2.limit = 1
    L2_2[1] = L3_2
    L1_2 = L2_2
  elseif A0_2 == 2 then
    L2_2 = {}
    L3_2 = {}
    L3_2.id = 2008
    L3_2.limit = 1
    L2_2[1] = L3_2
    L1_2 = L2_2
  end
  L2_2 = checkAchievements
  L3_2 = 1
  L4_2 = "TaskBuyCardsPack"
  L5_2 = A0_2
  L4_2 = L4_2 .. L5_2
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end

buyCardPacks = L11_1

function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = log3
  L1_2 = "checkSecretAchievements"
  L0_2(L1_2)
  L0_2 = nil
  L1_2 = nil
  L2_2 = nil
  L3_2 = nil
  L4_2 = pairs
  L5_2 = mainPlayer
  L5_2 = L5_2.cards
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.baseId
    if L9_2 ~= 146 then
      L9_2 = L8_2.baseId
      if L9_2 ~= 147 then
        L9_2 = L8_2.baseId
        if L9_2 ~= 148 then
          goto lbl_21
        end
      end
    end
    L0_2 = true
    goto lbl_56
    ::lbl_21::
    L9_2 = L8_2.baseId
    if L9_2 ~= 234 then
      L9_2 = L8_2.baseId
      if L9_2 ~= 235 then
        L9_2 = L8_2.baseId
        if L9_2 ~= 236 then
          L9_2 = L8_2.baseId
          if L9_2 ~= 237 then
            L9_2 = L8_2.baseId
            if L9_2 ~= 238 then
              L9_2 = L8_2.baseId
              if L9_2 ~= 239 then
                goto lbl_41
              end
            end
          end
        end
      end
    end
    L1_2 = true
    goto lbl_56
    ::lbl_41::
    L9_2 = L8_2.baseId
    if L9_2 ~= 119 then
      L9_2 = L8_2.baseId
      if L9_2 ~= 120 then
        goto lbl_49
      end
    end
    L2_2 = true
    goto lbl_56
    ::lbl_49::
    L9_2 = L8_2.baseId
    if L9_2 ~= 126 then
      L9_2 = L8_2.baseId
      if L9_2 ~= 127 then
        goto lbl_56
      end
    end
    L3_2 = true
    ::lbl_56::
    if L0_2 and L1_2 and L2_2 and L3_2 then
      L9_2 = L0_1
      L9_2 = L9_2[17]
      L9_2 = L9_2.recieved
      if L9_2 == false then
        L9_2 = log3
        L10_2 = "GET ACHIEVEMENTS"
        L9_2(L10_2)
        L9_2 = registerAchievementsWithId
        L10_2 = 17
        L11_2 = failedToRegisterCallback
        L12_2 = didRegisterCallback
        L9_2(L10_2, L11_2, L12_2)
        break
      end
    end
  end
end

checkSecretAchievements = L11_1

function L11_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = 0
  L9_1 = L0_2
  L0_2 = L10_1
  if L0_2 == nil then
    L0_2 = timer
    L0_2 = L0_2.performWithDelay
    L1_2 = 20000
    L2_2 = checkTimeAchievements
    L3_2 = 0
    L0_2 = L0_2(L1_2, L2_2, L3_2)
    L10_1 = L0_2
  end
end

startGame = L11_1

function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L9_1
  L0_2 = L0_2 + 20000
  L9_1 = L0_2
  L0_2 = os
  L0_2 = L0_2.time
  L0_2 = L0_2()
  L1_2 = L8_1
  L1_2 = L1_2.updateTime
  L1_2 = L0_2 - L1_2
  if 86400 < L1_2 then
    L1_2 = log3
    L2_2 = "past time is : "
    L3_2 = L8_1
    L3_2 = L3_2.updateTime
    L3_2 = L3_2 - L0_2
    L1_2(L2_2, L3_2)
    L1_2 = registerAchievementsWithId
    L1_2()
  end
  L1_2 = {}
  L2_2 = {}
  L2_2.id = 30
  L2_2.limit = 1800000
  L1_2[1] = L2_2
  L2_2 = {}
  L2_2.id = 31
  L2_2.limit = 18000000
  L1_2[2] = L2_2
  L2_2 = {}
  L2_2.id = 32
  L2_2.limit = 86400000
  L1_2[3] = L2_2
  L2_2 = {}
  L2_2.id = 33
  L2_2.limit = 259200000
  L1_2[4] = L2_2
  L2_2 = checkAchievements
  L3_2 = 20000
  L4_2 = "timeOfPlaying"
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end

checkTimeAchievements = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = log3
  L2_2 = "goldCollectedForTribe"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "goldCollectedForTribe, goldAmount must be provided"
  L4_2 = _NAME
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  L2_2 = {}
  L2_2.id = 22
  L2_2.limit = 500
  L1_2[1] = L2_2
  L2_2 = {}
  L2_2.id = 23
  L2_2.limit = 5000
  L1_2[2] = L2_2
  L2_2 = {}
  L2_2.id = 24
  L2_2.limit = 10000
  L1_2[3] = L2_2
  L2_2 = {}
  L2_2.id = 25
  L2_2.limit = 1000000
  L1_2[4] = L2_2
  L2_2 = mainPlayer
  L2_2 = L2_2.tribe
  if L2_2 then
    L2_2 = mainPlayer
    L2_2 = L2_2.tribe
    L2_2 = L2_2.id
    if 0 < L2_2 then
      L2_2 = checkAchievements
      L3_2 = A0_2
      L4_2 = "numberOfCollectedGold"
      L5_2 = L1_2
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end

goldCollectedForTribe = L11_1

function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = 0
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.recieved
    if L6_2 == true then
      L0_2 = L0_2 + 1
    end
  end
  return L0_2
end

numberOfCollectedAchievements = L11_1

function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = log3
  L4_2 = "didRegisterCallback with id"
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  L3_2 = checkValidityAssert
  L4_2 = A0_2
  L5_2 = "didRegisterCallback, id must be a number"
  L6_2 = _NAME
  L7_2 = "number"
  L3_2(L4_2, L5_2, L6_2, L7_2)
  if A0_2 ~= 3001 then
    L3_2 = showAchievementsNotificationAndUpdateBaseAchievements
    L4_2 = A0_2
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
  if A2_2 ~= nil then
    L3_2 = A2_2.gold
    if L3_2 ~= nil then
      L3_2 = type
      L4_2 = A2_2.gold
      L3_2 = L3_2(L4_2)
      if L3_2 == "number" then
        L3_2 = log3
        L4_2 = "Player Gold has been updated"
        L3_2(L4_2)
        L3_2 = mainPlayer
        L4_2 = A2_2.gold
        L3_2.gold = L4_2
        L3_2 = L4_1
        L3_2 = L3_2.getScene
        L4_2 = "Scenes.Home"
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L4_2 = L3_2.updateGold
          if L4_2 then
            L5_2 = L3_2
            L4_2 = L3_2.updateGold
            L6_2 = true
            L4_2(L5_2, L6_2)
          end
        end
      end
    end
    L3_2 = A2_2.medals
    if L3_2 then
      L3_2 = L7_1
      L3_2 = L3_2.addToMedals
      L4_2 = A2_2.medals
      L3_2(L4_2)
    end
  end
end

didRegisterCallback = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = log3
  L3_2 = "failedToRegisterCallback with id"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end

failedToRegisterCallback = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "getNextAchievementForSetId, achievementsSetId must be a number"
  L4_2 = _NAME
  L5_2 = "number"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = ipairs
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.achievementsID
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = log3
    L7_2 = "achievementsData[v] name is : "
    L8_2 = L0_1
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.name
    L6_2(L7_2, L8_2)
    L6_2 = L0_1
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.recieved
    if L6_2 == false then
      L6_2 = L0_1
      L6_2 = L6_2[L5_2]
      return L6_2
    end
  end
  L1_2 = L0_1
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.achievementsID
  L3_2 = L1_1
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.max
  L2_2 = L2_2[L3_2]
  L1_2 = L1_2[L2_2]
  L2_2 = true
  return L1_2, L2_2
end

getNextAchievementForSetId = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "getAchievementsProgress, achievementsStaticsName must be a string"
  L4_2 = _NAME
  L5_2 = "string"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  if A0_2 == "numberOfViewCards" then
    L1_2 = mainPlayer
    L1_2 = L1_2.numberOfviewCards
    if L1_2 then
      L1_2 = mainPlayer
      L1_2 = L1_2.numberOfviewCards
      return L1_2
    else
      L1_2 = 0
      return L1_2
    end
  else
    L1_2 = nil
    L2_2 = L8_1
    if L2_2 == nil then
      L1_2 = 0
    else
      L2_2 = L8_1
      L2_2 = L2_2[A0_2]
      if L2_2 ~= nil then
        L2_2 = L8_1
        L1_2 = L2_2[A0_2]
      else
        L1_2 = 0
      end
    end
    return L1_2
  end
end

getAchievementsProgress = L11_1

function L11_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = checkValidityAssert
  L5_2 = A0_2
  L6_2 = "checkAchievements, increaseNumber must be a number"
  L7_2 = _NAME
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = checkValidityAssert
  L5_2 = A1_2
  L6_2 = "checkAchievements, achievementsStaticsName must be a string"
  L7_2 = _NAME
  L8_2 = "string"
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = checkValidityAssert
  L5_2 = A2_2
  L6_2 = "checkAchievements, data must be a table"
  L7_2 = _NAME
  L8_2 = "table"
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = nil
  L5_2 = L8_1
  if L5_2 == nil then
    L4_2 = 0
  else
    L5_2 = L8_1
    L5_2 = L5_2[A1_2]
    if L5_2 ~= nil then
      L5_2 = L8_1
      L4_2 = L5_2[A1_2]
    else
      L4_2 = 0
    end
  end
  L5_2 = setAchievementForKey
  L6_2 = A1_2
  L7_2 = L4_2 + A0_2
  L5_2(L6_2, L7_2)
  L5_2 = saveAchievements
  L5_2()
  if A1_2 == "numberOfsquashedPirtul" then
    L5_2 = L7_1
    L5_2 = L5_2.checkForPirtulMedal
    L6_2 = L8_1
    L6_2 = L6_2[A1_2]
    L5_2(L6_2)
  end
  L5_2 = ipairs
  L6_2 = A2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L8_1
    L10_2 = L10_2[A1_2]
    L11_2 = L0_1
    L12_2 = L9_2.id
    L11_2 = L11_2[L12_2]
    L11_2 = L11_2.limit
    if L10_2 >= L11_2 then
      L10_2 = L0_1
      L11_2 = L9_2.id
      L10_2 = L10_2[L11_2]
      L10_2 = L10_2.recieved
      if L10_2 == false then
        L10_2 = registerAchievementsWithId
        L11_2 = L9_2.id
        L12_2 = failedToRegisterCallback
        L13_2 = didRegisterCallback
        L14_2 = A3_2
        L10_2(L11_2, L12_2, L13_2, L14_2)
      end
    end
  end
end

checkAchievements = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = log3
  L2_2()
  L2_2 = checkValidityAssert
  L3_2 = A0_2
  L4_2 = "showAchievementsNotificationAndUpdateBaseAchievements, id must be a number"
  L5_2 = _NAME
  L6_2 = "number"
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  L2_2.recieved = true
end

showAchievementsNotificationAndUpdateBaseAchievements = L11_1

function L11_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = setAchievementForKey
  L5_2 = "updateTime"
  L6_2 = os
  L6_2 = L6_2.time
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "registerAchievementsWithId"
    L4_3 = A1_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = A2_2
      if L3_3 ~= nil then
        L3_3 = A2_2
        L4_3 = A0_2
        L5_3 = A3_2
        L6_3 = L2_3
        L3_3(L4_3, L5_3, L6_3)
      end
    end
  end
  
  L5_2 = log3
  L6_2 = "achievements text : "
  L7_2 = getAchievementsText
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L5_2 = {}
  L6_2 = Constants
  L6_2 = L6_2.Achievements_RegisterId
  L5_2[L6_2] = A0_2
  L6_2 = Constants
  L6_2 = L6_2.achievements_Stats
  L7_2 = L6_1
  L7_2 = L7_2.encode
  L8_2 = getAchievementsText
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2()
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L5_2[L6_2] = L7_2
  L6_2 = log3
  L7_2 = "postData"
  L8_2 = postData
  L6_2(L7_2, L8_2)
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
  L9_2 = L9_2.API_RegisterAchievements
  L8_2 = L8_2 .. L9_2
  L9_2 = "POST"
  L10_2 = L4_2
  L11_2 = L6_2
  L12_2 = "register achievements"
  L13_2 = nil
  L14_2 = A1_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end

registerAchievementsWithId = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = system
  L1_2 = L1_2.pathForFile
  L2_2 = Constants
  L2_2 = L2_2.Path_AchievementsFile
  L3_2 = system
  L3_2 = L3_2.DocumentsDirectory
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = io
  L2_2 = L2_2.open
  L3_2 = L1_2
  L4_2 = "w"
  L2_2 = L2_2(L3_2, L4_2)
  if A0_2 == nil then
    A0_2 = ""
  end
  L4_2 = L2_2
  L3_2 = L2_2.write
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  L3_2 = io
  L3_2 = L3_2.close
  L4_2 = L2_2
  L3_2(L4_2)
  L2_2 = nil
end

setAchievementsText = L11_1

function L11_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = log3
  L1_2 = "getAchievementsText"
  L0_2(L1_2)
  L0_2 = system
  L0_2 = L0_2.pathForFile
  L1_2 = Constants
  L1_2 = L1_2.Path_AchievementsFile
  L2_2 = system
  L2_2 = L2_2.DocumentsDirectory
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = io
  L1_2 = L1_2.open
  L2_2 = L0_2
  L3_2 = "r+"
  L1_2 = L1_2(L2_2, L3_2)
  file = L1_2
  L1_2 = file
  if L1_2 == nil then
    L1_2 = log2
    L2_2 = "settings file not found, creating"
    L1_2(L2_2)
    L1_2 = true
    isFirstOppening = L1_2
    L1_2 = io
    L1_2 = L1_2.open
    L2_2 = L0_2
    L3_2 = "w+"
    L1_2 = L1_2(L2_2, L3_2)
    file = L1_2
  end
  L1_2 = file
  L2_2 = L1_2
  L1_2 = L1_2.read
  L3_2 = "*a"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = io
  L2_2 = L2_2.close
  L3_2 = file
  L2_2(L3_2)
  return L1_2
end

getAchievementsText = L11_1

function L11_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = log3
  L1_2 = "loadAchievements"
  L0_2(L1_2)
  L0_2 = system
  L0_2 = L0_2.pathForFile
  L1_2 = Constants
  L1_2 = L1_2.Path_AchievementsFile
  L2_2 = system
  L2_2 = L2_2.DocumentsDirectory
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = io
  L1_2 = L1_2.open
  L2_2 = L0_2
  L3_2 = "r+"
  L1_2 = L1_2(L2_2, L3_2)
  file = L1_2
  L1_2 = file
  if L1_2 == nil then
    L1_2 = log2
    L2_2 = "settings file not found, creating"
    L1_2(L2_2)
    L1_2 = true
    isFirstOppening = L1_2
    L1_2 = io
    L1_2 = L1_2.open
    L2_2 = L0_2
    L3_2 = "w+"
    L1_2 = L1_2(L2_2, L3_2)
    file = L1_2
  end
  L1_2 = file
  L2_2 = L1_2
  L1_2 = L1_2.read
  L3_2 = "*a"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = io
  L2_2 = L2_2.close
  L3_2 = file
  L2_2(L3_2)
  L2_2 = L3_1
  L2_2 = L2_2.decode
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
  end
  L8_1 = L2_2
end

loadAchievements = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L8_1
  L2_2 = L2_2.version
  if L2_2 then
    L2_2 = L8_1
    L3_2 = L8_1
    L3_2 = L3_2.version
    L3_2 = L3_2 + 1
    L2_2.version = L3_2
  else
    L2_2 = L8_1
    L2_2.version = 0
  end
  L2_2 = mainPlayer
  L3_2 = L2_2
  L2_2 = L2_2.setSettingForKey
  L4_2 = "achievementsVersion"
  L5_2 = L8_1
  L5_2 = L5_2.version
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = mainPlayer
  L3_2 = L2_2
  L2_2 = L2_2.saveSettings
  L2_2(L3_2)
  L2_2 = L8_1
  L2_2 = L2_2.updateTime
  if L2_2 == nil then
    L2_2 = L8_1
    L3_2 = os
    L3_2 = L3_2.time
    L3_2 = L3_2()
    L2_2.updateTime = L3_2
  end
  L2_2 = L8_1
  L2_2[A0_2] = A1_2
end

setAchievementForKey = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = system
  L1_2 = L1_2.pathForFile
  L2_2 = Constants
  L2_2 = L2_2.Path_AchievementsFile
  L3_2 = system
  L3_2 = L3_2.DocumentsDirectory
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = io
  L2_2 = L2_2.open
  L3_2 = L1_2
  L4_2 = "w"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.write
  L5_2 = L3_1
  L5_2 = L5_2.encode
  L6_2 = L8_1
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = io
  L3_2 = L3_2.close
  L4_2 = L2_2
  L3_2(L4_2)
  L2_2 = nil
end

saveAchievements = L11_1
