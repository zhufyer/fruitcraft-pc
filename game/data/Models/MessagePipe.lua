local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Utils.noobhub"
L0_1(L1_1)
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Views.NotificationView"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Models.Card"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Models.UserCard"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Utils.Toolbox"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Constants"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Models.Building"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Models.Tribe"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "json"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Models.Operation"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Models.Player"
L11_1 = L11_1(L12_1)
L12_1 = false

function L13_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = removeHub
  L0_2()
  L0_2 = print
  L1_2 = "Creating chat hub with"
  L2_2 = L6_1
  L2_2 = L2_2.API_Chat_Host
  L0_2(L1_2, L2_2)
  L0_2 = _G
  L1_2 = noobhub
  L1_2 = L1_2.new
  L2_2 = {}
  L3_2 = L6_1
  L3_2 = L3_2.API_Chat_Host
  L2_2.server = L3_2
  L3_2 = L6_1
  L3_2 = L3_2.Chat_Port
  L2_2.port = L3_2
  L1_2 = L1_2(L2_2)
  L0_2.hub = L1_2
  L0_2 = hub
  
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = mainPlayer
    L0_3 = L0_3.id
    if L0_3 then
      L0_3 = hub
      L1_3 = L0_3
      L0_3 = L0_3.subscribe
      L2_3 = {}
      L3_3 = "user"
      L4_3 = mainPlayer
      L4_3 = L4_3.id
      L3_3 = L3_3 .. L4_3
      L2_3.channel = L3_3
      L3_3 = messageCallback
      L2_3.callback = L3_3
      L0_3(L1_3, L2_3)
    else
      L0_3 = assert
      L1_3 = "Mainplayer id is nil when subscribe for user channel!!"
      L0_3(L1_3)
    end
    L0_3 = log3
    L1_3 = " init hub function "
    L0_3(L1_3)
    L0_3 = mainPlayer
    L0_3 = L0_3.tribe
    if not L0_3 then
      L0_3 = mainPlayer
      L0_3 = L0_3.firstChatId
      if not L0_3 then
        goto lbl_149
      end
    end
    L0_3 = false
    L1_3 = nil
    L2_3 = mainPlayer
    L2_3 = L2_3.tribe
    if L2_3 then
      L2_3 = mainPlayer
      L2_3 = L2_3.tribe
      L1_3 = L2_3.id
    else
      L2_3 = mainPlayer
      L2_3 = L2_3.firstChatId
      if L2_3 then
        L0_3 = true
        L2_3 = mainPlayer
        L1_3 = L2_3.firstChatId
      end
    end
    L2_3 = log3
    L3_3 = "subscribe for tribe"
    L2_3(L3_3)
    L2_3 = hub
    L3_3 = {}
    L2_3.messages = L3_3
    L2_3 = hub
    L2_3.timeStamp = 0
    L2_3 = hub
    L2_3.unreadMessage = 0
    L2_3 = Runtime
    L3_3 = L2_3
    L2_3 = L2_3.addEventListener
    L4_3 = "enterFrame"
    L5_3 = hub
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = hub
    L3_3 = L2_3
    L2_3 = L2_3.subscribe
    L4_3 = {}
    L5_3 = "tribe"
    L6_3 = L1_3
    L5_3 = L5_3 .. L6_3
    L4_3.channel = L5_3
    L5_3 = messageCallback
    L4_3.callback = L5_3
    L2_3(L3_3, L4_3)
    L2_3 = mainPlayer
    L2_3 = L2_3.trainer
    if L2_3 then
      L2_3 = mainPlayer
      L2_3 = L2_3.coachTribeID
      if L2_3 then
        L2_3 = hub
        L3_3 = {}
        L2_3.coachMessages = L3_3
        L2_3 = hub
        L3_3 = L2_3
        L2_3 = L2_3.subscribe
        L4_3 = {}
        L5_3 = "tribe"
        L6_3 = mainPlayer
        L6_3 = L6_3.coachTribeID
        L5_3 = L5_3 .. L6_3
        L4_3.channel = L5_3
        L5_3 = messageCallback
        L4_3.callback = L5_3
        L2_3(L3_3, L4_3)
      end
    end
    if L0_3 then
      L2_3 = mainPlayer
      L2_3 = L2_3.settings
      L2_3 = L2_3.isFirst
      if L2_3 ~= nil then
        L2_3 = mainPlayer
        L2_3 = L2_3.settings
        L2_3 = L2_3.isFirst
        if L2_3 ~= true then
          goto lbl_147
        end
      end
      L2_3 = errorLog
      L3_3 = "send hello message"
      L2_3(L3_3)
      L2_3 = hub
      L3_3 = L2_3
      L2_3 = L2_3.publish
      L4_3 = {}
      L5_3 = {}
      L5_3.push_message_type = "chat"
      L6_3 = L2_1
      L6_3 = L6_3.Hello
      L5_3.text = L6_3
      L6_3 = mainPlayer
      L6_3 = L6_3.name
      L5_3.sender = L6_3
      L5_3.messageType = 1
      L6_3 = os
      L6_3 = L6_3.time
      L6_3 = L6_3()
      L7_3 = mainPlayer
      L7_3 = L7_3.timeDelta
      L6_3 = L6_3 + L7_3
      L5_3.creationDate = L6_3
      L6_3 = os
      L6_3 = L6_3.time
      L6_3 = L6_3()
      L5_3.id = L6_3
      L6_3 = system
      L6_3 = L6_3.getTimer
      L6_3 = L6_3()
      L5_3.timestamp = L6_3
      L4_3.message = L5_3
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = mainPlayer
      L4_3 = L3_3
      L3_3 = L3_3.setSettingForKey
      L5_3 = "isFirst"
      L6_3 = false
      L3_3(L4_3, L5_3, L6_3)
      L3_3 = mainPlayer
      L4_3 = L3_3
      L3_3 = L3_3.saveSettings
      L3_3(L4_3)
    end
    ::lbl_147::
    L2_3 = hub
    L2_3.isSubscribe = true
    ::lbl_149::
  end
  
  L0_2.init = L1_2
end

createHub = L13_1

function L13_1()
  local L0_2, L1_2
  L0_2 = hub
  if L0_2 then
    L0_2 = hub
    L1_2 = L0_2
    L0_2 = L0_2.removeHub
    L0_2(L1_2)
    L0_2 = nil
    hub = L0_2
  end
end

removeHub = L13_1

function L13_1()
  local L0_2, L1_2
  L0_2 = hub
  if L0_2 then
    L0_2 = hub
    L0_2 = L0_2.init
    L0_2()
  end
end

initHub = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = hub
  L2_2 = L1_2
  L1_2 = L1_2.subscribe
  L3_2 = {}
  L4_2 = "livebattle"
  L5_2 = A0_2
  L4_2 = L4_2 .. L5_2
  L3_2.channel = L4_2
  L4_2 = messageCallback
  L3_2.callback = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = hub
  L2_2 = {}
  L1_2.battleMessages = L2_2
end

subscribeForBattleChat = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = hub
  L2_2 = L1_2
  L1_2 = L1_2.unsubscribeChannel
  L3_2 = "livebattle"
  L4_2 = A0_2
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
end

unsubscribeForBattleChat = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = hub
  L2_2 = L1_2
  L1_2 = L1_2.unsubscribeChannel
  L3_2 = "tribe"
  L4_2 = A0_2
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
end

unsubscribeForCoachChat = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = hub
  L2_2 = L1_2
  L1_2 = L1_2.subscribe
  L3_2 = {}
  L4_2 = "tribe"
  L5_2 = A0_2
  L4_2 = L4_2 .. L5_2
  L3_2.channel = L4_2
  L4_2 = messageCallback
  L3_2.callback = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = hub
  L2_2 = {}
  L1_2.coachMessages = L2_2
end

subscribeForCoachChat = L13_1

function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = log1
  L1_2 = "!!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@    Update current scene gold called"
  L0_2(L1_2)
  L0_2 = L0_1
  L0_2 = L0_2.getScene
  L1_2 = L0_1
  L1_2 = L1_2.getSceneName
  L2_2 = "current"
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  L1_2 = L0_2.updateGold
  if L1_2 then
    L1_2 = log1
    L2_2 = "!!$!$!$!$!$$!$!$!$!$!$!$!$!$!$!$:      calling update gold on scene:"
    L3_2 = L0_1
    L3_2 = L3_2.getSceneName
    L4_2 = "current"
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = L0_2
    L1_2 = L0_2.updateGold
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end

updateCurrentSceneGold = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if A0_2 == nil then
    return
  end
  L1_2 = _buildType
  if L1_2 == "debug" then
  end
  L1_2 = A0_2.push_message_type
  if L1_2 == "tribe_kick" then
    L1_2 = log3
    L2_2 = "tribe_kick"
    L1_2(L2_2)
    L1_2 = L0_1
    L1_2 = L1_2.getScene
    L2_2 = "Scenes.Home"
    L1_2 = L1_2(L2_2)
    L2_2 = L8_1
    L2_2 = L2_2.leaveTribeCleanup
    L2_2()
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.new
    L4_2 = L2_1
    L4_2 = L4_2["You have been kicked form the tribe!"]
    L2_2(L3_2, L4_2)
    L2_2 = L1_1
    L2_2 = L2_2.showNotifications
    L2_2()
    L2_2 = L0_1
    L2_2 = L2_2.getSceneName
    L3_2 = "current"
    L2_2 = L2_2(L3_2)
    if L2_2 == "Scenes.Home" then
      L3_2 = L1_2
      L2_2 = L1_2.updateUI
      L2_2(L3_2)
    end
  else
    L1_2 = A0_2.push_message_type
    if L1_2 == "tribe_join" then
      L1_2 = L0_1
      L1_2 = L1_2.getScene
      L2_2 = "Scenes.Home"
      L1_2 = L1_2(L2_2)
      L2_2 = log3
      L2_2()
      L2_2 = A0_2.tribe
      if L2_2 then
        L2_2 = mainPlayer
        L3_2 = L8_1
        L4_2 = L3_2
        L3_2 = L3_2.new
        L3_2 = L3_2(L4_2)
        L2_2.tribe = L3_2
        L2_2 = mainPlayer
        L2_2 = L2_2.tribe
        L3_2 = A0_2.tribe
        L3_2 = L3_2.id
        L2_2.id = L3_2
        L2_2 = mainPlayer
        L2_2 = L2_2.tribe
        L3_2 = A0_2.tribe
        L3_2 = L3_2.name
        L2_2.name = L3_2
        L2_2 = mainPlayer
        L2_2 = L2_2.tribe
        L3_2 = tonumber
        L4_2 = A0_2.tribe
        L4_2 = L4_2.status
        L3_2 = L3_2(L4_2)
        L2_2.status = L3_2
        L2_2 = mainPlayer
        L2_2 = L2_2.tribe
        L3_2 = A0_2.tribe
        L3_2 = L3_2.description
        L2_2.description = L3_2
        L2_2 = mainPlayer
        L2_2 = L2_2.tribe
        L3_2 = A0_2.tribe
        L3_2 = L3_2.gold
        L2_2.gold = L3_2
        L2_2 = mainPlayer
        L2_2 = L2_2.tribe
        L3_2 = A0_2.tribe
        L3_2 = L3_2.rank
        L2_2.rank = L3_2
        L2_2 = mainPlayer
        L2_2 = L2_2.tribe
        L3_2 = A0_2.tribe
        L3_2 = L3_2.donates_number
        L2_2.donatesNumber = L3_2
        L2_2 = mainPlayer
        L2_2 = L2_2.tribe
        L3_2 = A0_2.tribe
        L3_2 = L3_2.member_count
        L2_2.memberCount = L3_2
        L2_2 = mainPlayer
        L2_2 = L2_2.tribe
        L3_2 = {}
        L2_2.buildings = L3_2
        L2_2 = L7_1
        L3_2 = L2_2
        L2_2 = L2_2.new
        L4_2 = {}
        L5_2 = A0_2.tribe
        L5_2 = L5_2.defense_building_level
        L4_2.level = L5_2
        L5_2 = L2_1
        L5_2 = L5_2["defence building"]
        L4_2.name = L5_2
        L5_2 = L2_1
        L5_2 = L5_2["defence description"]
        L4_2.description = L5_2
        L4_2.maxLevel = 10
        L4_2.maxCards = 4
        L5_2 = L6_1
        L5_2 = L5_2.Resource_DeffenceBuildingImage
        L4_2.image = L5_2
        L4_2.buildingType = "defensive"
        L2_2 = L2_2(L3_2, L4_2)
        newBuilding = L2_2
        L2_2 = newBuilding
        L3_2 = {}
        L2_2.assignedCards = L3_2
        L2_2 = A0_2.defense_building_assigned_cards
        if L2_2 then
          L2_2 = pairs
          L3_2 = A0_2.defense_building_assigned_cards
          L2_2, L3_2, L4_2 = L2_2(L3_2)
          for L5_2, L6_2 in L2_2, L3_2, L4_2 do
            L7_2 = newBuilding
            L7_2 = L7_2.assignedCards
            L8_2 = L6_2.id
            L9_2 = mainPlayer
            L9_2 = L9_2.cards
            L10_2 = L6_2.id
            L9_2 = L9_2[L10_2]
            L7_2[L8_2] = L9_2
            L7_2 = newBuilding
            L7_2 = L7_2.assignedCards
            L8_2 = L6_2.id
            L7_2 = L7_2[L8_2]
            L7_2.cardUsedForBuilding = true
            L7_2 = mainPlayer
            L7_2 = L7_2.cards
            L8_2 = L6_2.id
            L7_2 = L7_2[L8_2]
            L7_2.cardUsedForBuilding = true
          end
        end
        L2_2 = mainPlayer
        L2_2 = L2_2.tribe
        L2_2 = L2_2.buildings
        L3_2 = newBuilding
        L2_2.defense = L3_2
        L2_2 = L7_1
        L3_2 = L2_2
        L2_2 = L2_2.new
        L4_2 = {}
        L5_2 = A0_2.tribe
        L5_2 = L5_2.offense_building_level
        L4_2.level = L5_2
        L5_2 = L2_1
        L5_2 = L5_2["attack building"]
        L4_2.name = L5_2
        L5_2 = L2_1
        L5_2 = L5_2["attack description"]
        L4_2.description = L5_2
        L4_2.maxLevel = 10
        L4_2.maxCards = 4
        L5_2 = L6_1
        L5_2 = L5_2.Resource_DeffenceBuildingImage
        L4_2.image = L5_2
        L4_2.buildingType = "offensive"
        L2_2 = L2_2(L3_2, L4_2)
        newBuilding = L2_2
        L2_2 = newBuilding
        L3_2 = {}
        L2_2.assignedCards = L3_2
        L2_2 = A0_2.offense_building_assigned_cards
        if L2_2 then
          L2_2 = pairs
          L3_2 = A0_2.offense_building_assigned_cards
          L2_2, L3_2, L4_2 = L2_2(L3_2)
          for L5_2, L6_2 in L2_2, L3_2, L4_2 do
            L7_2 = newBuilding
            L7_2 = L7_2.assignedCards
            L8_2 = L6_2.id
            L9_2 = mainPlayer
            L9_2 = L9_2.cards
            L10_2 = L6_2.id
            L9_2 = L9_2[L10_2]
            L7_2[L8_2] = L9_2
            L7_2 = newBuilding
            L7_2 = L7_2.assignedCards
            L8_2 = L6_2.id
            L7_2 = L7_2[L8_2]
            L7_2.cardUsedForBuilding = true
            L7_2 = mainPlayer
            L7_2 = L7_2.cards
            L8_2 = L6_2.id
            L7_2 = L7_2[L8_2]
            L7_2.cardUsedForBuilding = true
          end
        end
        L2_2 = mainPlayer
        L2_2 = L2_2.tribe
        L2_2 = L2_2.buildings
        L3_2 = newBuilding
        L2_2.offense = L3_2
        L2_2 = L7_1
        L3_2 = L2_2
        L2_2 = L2_2.new
        L4_2 = {}
        L5_2 = A0_2.tribe
        L5_2 = L5_2.cooldown_building_level
        L4_2.level = L5_2
        L5_2 = L2_1
        L5_2 = L5_2["cooldown building"]
        L4_2.name = L5_2
        L5_2 = L2_1
        L5_2 = L5_2["cooldown description"]
        L4_2.description = L5_2
        L4_2.maxLevel = 10
        L4_2.maxCards = 4
        L5_2 = L6_1
        L5_2 = L5_2.Resource_DeffenceBuildingImage
        L4_2.image = L5_2
        L4_2.buildingType = "cooldown"
        L2_2 = L2_2(L3_2, L4_2)
        newBuilding = L2_2
        L2_2 = mainPlayer
        L2_2 = L2_2.tribe
        L2_2 = L2_2.buildings
        L3_2 = newBuilding
        L2_2.cooldown = L3_2
        L2_2 = L7_1
        L3_2 = L2_2
        L2_2 = L2_2.new
        L4_2 = {}
        L5_2 = A0_2.tribe
        L5_2 = L5_2.mainhall_building_level
        L4_2.level = L5_2
        L5_2 = L2_1
        L5_2 = L5_2["mainhall building"]
        L4_2.name = L5_2
        L5_2 = L2_1
        L5_2 = L5_2["mainhall description"]
        L4_2.description = L5_2
        L4_2.maxLevel = 10
        L4_2.maxCards = 4
        L5_2 = L6_1
        L5_2 = L5_2.Resource_DeffenceBuildingImage
        L4_2.image = L5_2
        L4_2.buildingType = "mainhall"
        L2_2 = L2_2(L3_2, L4_2)
        newBuilding = L2_2
        L2_2 = mainPlayer
        L2_2 = L2_2.tribe
        L2_2 = L2_2.buildings
        L3_2 = newBuilding
        L2_2.mainhall = L3_2
      end
      L2_2 = L10_1
      L2_2 = L2_2.clearCachedBattleOpponents
      L2_2()
      L2_2 = mainPlayer
      L3_2 = A0_2.tribe_permission
      L2_2.positionInTribe = L3_2
      L2_2 = hub
      L3_2 = L2_2
      L2_2 = L2_2.removeHub
      L2_2(L3_2)
      L2_2 = hub
      L2_2 = L2_2.init
      L2_2()
      L2_2 = L1_1
      L3_2 = L2_2
      L2_2 = L2_2.new
      L4_2 = L2_1
      L4_2 = L4_2.localizedString
      L5_2 = "You have been approved to join tribe"
      L6_2 = {}
      L7_2 = A0_2.tribe
      L7_2 = L7_2.name
      L6_2.tribe = L7_2
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L4_2(L5_2, L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L2_2 = L1_1
      L2_2 = L2_2.showNotifications
      L2_2()
      L2_2 = L0_1
      L2_2 = L2_2.getSceneName
      L3_2 = "current"
      L2_2 = L2_2(L3_2)
      if L2_2 == "Scenes.Home" then
        L3_2 = L1_2
        L2_2 = L1_2.updateUI
        L2_2(L3_2)
      end
    else
      L1_2 = A0_2.push_message_type
      if L1_2 == "tribe_player_status" then
        L1_2 = log3
        L2_2 = "my_tribe message is send"
        L1_2(L2_2)
        L1_2 = tonumber
        L2_2 = A0_2.player_id
        L1_2 = L1_2(L2_2)
        L2_2 = mainPlayer
        L2_2 = L2_2.id
        if L1_2 ~= L2_2 then
          L1_2 = A0_2.status
          if L1_2 == 1 then
            L1_2 = L1_1
            L2_2 = L1_2
            L1_2 = L1_2.new
            L3_2 = L2_1
            L3_2 = L3_2.localizedString
            L4_2 = "Tribe Player is online"
            L5_2 = {}
            L6_2 = A0_2.player_name
            L5_2.name = L6_2
            L3_2 = L3_2(L4_2, L5_2)
            L4_2 = L6_1
            L4_2 = L4_2.Path_Assets
            L5_2 = "General/online.png"
            L4_2 = L4_2 .. L5_2
            L5_2 = nil
            L6_2 = nil
            L7_2 = nil
            L8_2 = 2
            L9_2 = A0_2.player_id
            L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
          end
          L1_2 = L1_1
          L1_2 = L1_2.showNotifications
          L1_2()
          L1_2 = Runtime
          L2_2 = L1_2
          L1_2 = L1_2.dispatchEvent
          L3_2 = {}
          L3_2.name = "changePlayerStatus"
          L3_2.player = A0_2
          L1_2(L2_2, L3_2)
        end
      else
        L1_2 = A0_2.push_message_type
        if L1_2 == "auction_bid" then
          L1_2 = nil
          L2_2 = nil
          L3_2 = L0_1
          L3_2 = L3_2.getSceneName
          L4_2 = "current"
          L3_2 = L3_2(L4_2)
          if L3_2 ~= "Scenes.LiveBattle" then
            L3_2 = L2_1
            L1_2 = L3_2["Auction House"]
            
            function L2_2()
              local L0_3, L1_3, L2_3, L3_3
              L0_3 = L0_1
              L0_3 = L0_3.gotoScene
              L1_3 = "Scenes.Shop"
              L2_3 = {}
              L3_3 = {}
              L3_3.selectedTab = 3
              L2_3.params = L3_3
              L0_3(L1_3, L2_3)
            end
          end
          L3_2 = A0_2.owner_id
          L4_2 = mainPlayer
          L4_2 = L4_2.id
          if L3_2 == L4_2 then
            L3_2 = Runtime
            L4_2 = L3_2
            L3_2 = L3_2.dispatchEvent
            L5_2 = {}
            L5_2.name = "auctionBid"
            L5_2.message = A0_2
            L3_2(L4_2, L5_2)
            L3_2 = L1_1
            L4_2 = L3_2
            L3_2 = L3_2.new
            L5_2 = L2_1
            L5_2 = L5_2.localizedString
            L6_2 = "Bid on one of your cards"
            L7_2 = {}
            L8_2 = A0_2.max_bidder_name
            L7_2.name = L8_2
            L5_2 = L5_2(L6_2, L7_2)
            L6_2 = nil
            L7_2 = L1_2
            L8_2 = L2_2
            L9_2 = 1
            L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
            L3_2 = L1_1
            L3_2 = L3_2.showNotifications
            L3_2()
          else
            L3_2 = A0_2.max_bidder_id
            L4_2 = mainPlayer
            L4_2 = L4_2.id
            if L3_2 ~= L4_2 then
              L3_2 = A0_2.last_bidder_id
              if L3_2 then
                L3_2 = A0_2.last_bidder_id
                L4_2 = mainPlayer
                L4_2 = L4_2.id
                if L3_2 == L4_2 then
                  L3_2 = mainPlayer
                  L4_2 = A0_2.last_bidder_gold
                  L3_2.gold = L4_2
                  L3_2 = updateCurrentSceneGold
                  L3_2()
                end
              end
              L3_2 = Runtime
              L4_2 = L3_2
              L3_2 = L3_2.dispatchEvent
              L5_2 = {}
              L5_2.name = "auctionBid"
              L5_2.message = A0_2
              L6_2 = nil
              L7_2 = L2_1
              L7_2 = L7_2["Auction House"]
              
              function L8_2()
                local L0_3, L1_3, L2_3, L3_3
                L0_3 = L0_1
                L0_3 = L0_3.gotoScene
                L1_3 = "Scenes.Shop"
                L2_3 = {}
                L3_3 = {}
                L3_3.selectedTab = 3
                L2_3.params = L3_3
                L0_3(L1_3, L2_3)
              end
              
              L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
              L3_2 = L1_1
              L4_2 = L3_2
              L3_2 = L3_2.new
              L5_2 = L2_1
              L5_2 = L5_2.localizedString
              L6_2 = "Out bid you"
              L7_2 = {}
              L8_2 = A0_2.max_bidder_name
              L7_2.name = L8_2
              L8_2 = L3_1
              L8_2 = L8_2.baseCardWithId
              L9_2 = A0_2.base_card_id
              L8_2 = L8_2(L9_2)
              L8_2 = L8_2.name
              L7_2.cardName = L8_2
              L5_2 = L5_2(L6_2, L7_2)
              L6_2 = nil
              L7_2 = L1_2
              L8_2 = L2_2
              L9_2 = 1
              L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
              L3_2 = L1_1
              L3_2 = L3_2.showNotifications
              L3_2()
            end
          end
        else
          L1_2 = A0_2.push_message_type
          if L1_2 == "auction_sold" then
            L1_2 = Runtime
            L2_2 = L1_2
            L1_2 = L1_2.dispatchEvent
            L3_2 = {}
            L3_2.name = "auctionBid"
            L3_2.message = A0_2
            L1_2(L2_2, L3_2)
            L1_2 = A0_2.max_bidder_id
            L2_2 = mainPlayer
            L2_2 = L2_2.id
            if L1_2 == L2_2 then
              L1_2 = L3_1
              L1_2 = L1_2.baseCardWithId
              L2_2 = A0_2.base_card_id
              L1_2 = L1_2(L2_2)
              L2_2 = log3
              L3_2 = "auction card name is : "
              L4_2 = L1_2.name
              L2_2(L3_2, L4_2)
              L2_2 = {}
              L3_2 = A0_2.card_id
              L2_2.id = L3_2
              L3_2 = A0_2.base_card_id
              L2_2.base_card_id = L3_2
              L3_2 = A0_2.power
              L2_2.power = L3_2
              L2_2.last_used_at = 0
              L3_2 = L4_1
              L4_2 = L3_2
              L3_2 = L3_2.new
              L5_2 = L2_2
              L3_2 = L3_2(L4_2, L5_2)
              L4_2 = mainPlayer
              L4_2 = L4_2.cards
              L5_2 = L2_2.id
              L4_2[L5_2] = L3_2
              L4_2 = mainPlayer
              L4_2 = L4_2.isSeenCardWithId
              L5_2 = L3_2.baseId
              L4_2 = L4_2(L5_2)
              if not L4_2 then
                L4_2 = table
                L4_2 = L4_2.insert
                L5_2 = mainPlayer
                L5_2 = L5_2.collection
                L6_2 = L3_2.baseId
                L4_2(L5_2, L6_2)
              end
              L4_2 = nil
              L5_2 = _imageQuality
              if L5_2 == "HD" then
                L5_2 = L6_1
                L5_2 = L5_2.Path_Assets
                L6_2 = "Cards/"
                L7_2 = L3_2.image
                L8_2 = "-m.jpg"
                L4_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
              else
                L5_2 = L6_1
                L5_2 = L5_2.Path_Assets
                L6_2 = "Cards/"
                L7_2 = L3_2.image
                L8_2 = ".jpg"
                L4_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
              end
              L5_2 = L1_1
              L6_2 = L5_2
              L5_2 = L5_2.new
              L7_2 = L2_1
              L7_2 = L7_2.localizedString
              L8_2 = "Won the auction"
              L9_2 = {}
              L10_2 = L1_2.name
              L9_2.cardName = L10_2
              L7_2 = L7_2(L8_2, L9_2)
              L8_2 = L4_2
              L9_2 = L2_1
              L9_2 = L9_2.View
              
              function L10_2()
                local L0_3, L1_3, L2_3, L3_3, L4_3
                L0_3 = L0_1
                L0_3 = L0_3.showOverlay
                L1_3 = "Scenes.CardOverlay"
                L2_3 = {}
                L2_3.effect = "fade"
                L3_3 = {}
                L4_3 = L3_2
                L3_3.card = L4_3
                L2_3.params = L3_3
                L0_3(L1_3, L2_3)
              end
              
              L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
              L5_2 = L1_1
              L5_2 = L5_2.showNotifications
              L5_2()
            else
              L1_2 = A0_2.owner_id
              L2_2 = mainPlayer
              L2_2 = L2_2.id
              if L1_2 == L2_2 then
                L1_2 = A0_2.last_bidder_id
                if L1_2 then
                  L1_2 = A0_2.last_bidder_id
                  L2_2 = mainPlayer
                  L2_2 = L2_2.id
                  if L1_2 == L2_2 then
                    L1_2 = mainPlayer
                    L2_2 = A0_2.last_bidder_gold
                    L1_2.gold = L2_2
                    L1_2 = updateCurrentSceneGold
                    L1_2()
                  end
                end
                L1_2 = L5_1
                L1_2 = L1_2.stringThousandCommaSeperated
                L2_2 = ""
                L3_2 = A0_2.max_bid
                L2_2 = L2_2 .. L3_2
                L1_2 = L1_2(L2_2)
                L2_2 = L5_1
                L2_2 = L2_2.addKForLargeNumber
                L3_2 = L1_2
                L2_2 = L2_2(L3_2)
                L1_2 = L2_2
                L2_2 = L2_1
                L2_2 = L2_2.adjustNumber
                L3_2 = L1_2
                L2_2 = L2_2(L3_2)
                L1_2 = L2_2
                L2_2 = L1_1
                L3_2 = L2_2
                L2_2 = L2_2.new
                L4_2 = L2_1
                L4_2 = L4_2.localizedString
                L5_2 = "Has been bought"
                L6_2 = {}
                L7_2 = L3_1
                L7_2 = L7_2.baseCardWithId
                L8_2 = A0_2.base_card_id
                L7_2 = L7_2(L8_2)
                L7_2 = L7_2.name
                L6_2.cardName = L7_2
                L7_2 = A0_2.max_bidder_name
                L6_2.name = L7_2
                L6_2.price = L1_2
                L4_2 = L4_2(L5_2, L6_2)
                L5_2 = nil
                L6_2 = L2_1
                L6_2 = L6_2["Auction House"]
                
                function L7_2()
                  local L0_3, L1_3, L2_3, L3_3
                  L0_3 = L0_1
                  L0_3 = L0_3.gotoScene
                  L1_3 = "Scenes.Shop"
                  L2_3 = {}
                  L3_3 = {}
                  L3_3.selectedTab = 3
                  L2_3.params = L3_3
                  L0_3(L1_3, L2_3)
                end
                
                L8_2 = 1
                L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
                L2_2 = L1_1
                L2_2 = L2_2.showNotifications
                L2_2()
              else
                L1_2 = A0_2.last_bidder_id
                if L1_2 then
                  L1_2 = A0_2.last_bidder_id
                  L2_2 = mainPlayer
                  L2_2 = L2_2.id
                  if L1_2 == L2_2 then
                    L1_2 = mainPlayer
                    L2_2 = A0_2.last_bidder_gold
                    L1_2.gold = L2_2
                    L1_2 = updateCurrentSceneGold
                    L1_2()
                  end
                end
                L1_2 = L1_1
                L2_2 = L1_2
                L1_2 = L1_2.new
                L3_2 = L2_1
                L3_2 = L3_2.localizedString
                L4_2 = "Bidding has closed"
                L5_2 = {}
                L6_2 = L3_1
                L6_2 = L6_2.baseCardWithId
                L7_2 = A0_2.base_card_id
                L6_2 = L6_2(L7_2)
                L6_2 = L6_2.name
                L5_2.cardName = L6_2
                L3_2 = L3_2(L4_2, L5_2)
                L4_2 = nil
                L5_2 = L2_1
                L5_2 = L5_2["Auction House"]
                
                function L6_2()
                  local L0_3, L1_3, L2_3, L3_3
                  L0_3 = L0_1
                  L0_3 = L0_3.gotoScene
                  L1_3 = "Scenes.Shop"
                  L2_3 = {}
                  L3_3 = {}
                  L3_3.selectedTab = 3
                  L2_3.params = L3_3
                  L3_3 = 1
                  L0_3(L1_3, L2_3, L3_3)
                end
                
                L7_2 = 1
                L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
                L1_2 = L1_1
                L1_2 = L1_2.showNotifications
                L1_2()
              end
            end
          else
            L1_2 = A0_2.push_message_type
            if L1_2 == "system_message" then
              L1_2 = log3
              L2_2 = " Language lang is : "
              L3_2 = L2_1
              L3_2 = L3_2.lang
              L1_2(L2_2, L3_2)
              L1_2 = L2_1
              L1_2 = L1_2.lang
              if L1_2 == "fa" then
                L1_2 = L1_1
                L2_2 = L1_2
                L1_2 = L1_2.new
                L3_2 = A0_2.text_fa
                L4_2 = nil
                L5_2 = nil
                L6_2 = nil
                L7_2 = 4000
                L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
              else
                L1_2 = L1_1
                L2_2 = L1_2
                L1_2 = L1_2.new
                L3_2 = A0_2.text_en
                L4_2 = nil
                L5_2 = nil
                L6_2 = nil
                L7_2 = 4000
                L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
              end
              L1_2 = L1_1
              L1_2 = L1_2.showNotifications
              L1_2()
            else
              L1_2 = A0_2.push_message_type
              if L1_2 == "debug_mode" then
                L1_2 = A0_2.enabled
                if L1_2 == true then
                  L1_2 = warningLog
                  L2_2 = "server allowed client to send log data"
                  L1_2(L2_2)
                else
                  L1_2 = warningLog
                  L2_2 = "server prevented client to send log data"
                  L1_2(L2_2)
                  L1_2 = _G
                  L1_2 = L1_2.stopSendingLogsToServer
                  L1_2()
                end
              else
                L1_2 = A0_2.push_message_type
                if L1_2 == "battle_update" then
                  L1_2 = mainPlayer
                  L1_2 = L1_2.settings
                  L1_2 = L1_2.liveBattleIsOn
                  if L1_2 == true then
                    L1_2 = log3
                    L2_2 = "card for live battle recieved"
                    L1_2(L2_2)
                    L1_2 = L0_1
                    L1_2 = L1_2.getScene
                    L2_2 = "Scenes.LiveBattle"
                    L1_2 = L1_2(L2_2)
                    if L1_2 ~= nil then
                      L2_2 = L1_2.battleManager
                      L3_2 = L2_2.addCardToScrollers
                      L4_2 = A0_2
                      L3_2(L4_2)
                    end
                end
                else
                  L1_2 = A0_2.push_message_type
                  if L1_2 == "battle_hero_ability" then
                    L1_2 = mainPlayer
                    L1_2 = L1_2.settings
                    L1_2 = L1_2.liveBattleIsOn
                    if L1_2 == true then
                      L1_2 = L0_1
                      L1_2 = L1_2.getSceneName
                      L2_2 = "current"
                      L1_2 = L1_2(L2_2)
                      if L1_2 == "Scenes.LiveBattle" then
                        L2_2 = L0_1
                        L2_2 = L2_2.getScene
                        L3_2 = "Scenes.LiveBattle"
                        L2_2 = L2_2(L3_2)
                        L3_2 = A0_2.hero_owner_id
                        L4_2 = mainPlayer
                        L4_2 = L4_2.id
                        if L3_2 == L4_2 then
                          L3_2 = A0_2.hero_benefits_info
                          if L3_2 then
                            L3_2 = A0_2.hero_benefits_info
                            L3_2 = L3_2.cooldown_benefit
                            if L3_2 then
                              L3_2 = A0_2.hero_benefits_info
                              L3_2 = L3_2.cards
                              if L3_2 then
                                L3_2 = pairs
                                L4_2 = A0_2.hero_benefits_info
                                L4_2 = L4_2.cards
                                L3_2, L4_2, L5_2 = L3_2(L4_2)
                                for L6_2, L7_2 in L3_2, L4_2, L5_2 do
                                  L8_2 = mainPlayer
                                  L8_2 = L8_2.cards
                                  L9_2 = tonumber
                                  L10_2 = L7_2.id
                                  L9_2 = L9_2(L10_2)
                                  L8_2 = L8_2[L9_2]
                                  L9_2 = L8_2
                                  L8_2 = L8_2.setLastUsageDate
                                  L10_2 = L7_2.last_used_at
                                  L8_2(L9_2, L10_2)
                                end
                              end
                            end
                            L3_2 = A0_2.hero_benefits_info
                            L3_2 = L3_2.power_benefit
                            if L3_2 then
                              L3_2 = pairs
                              L4_2 = A0_2.hero_benefits_info
                              L4_2 = L4_2.cards
                              L3_2, L4_2, L5_2 = L3_2(L4_2)
                              for L6_2, L7_2 in L3_2, L4_2, L5_2 do
                                L8_2 = L2_2.addedCardsToBattle
                                if L8_2 then
                                  L8_2 = L2_2.addedCardsToBattle
                                  L9_2 = tonumber
                                  L10_2 = L7_2.id
                                  L9_2 = L9_2(L10_2)
                                  L8_2 = L8_2[L9_2]
                                  if L8_2 then
                                    L8_2 = mainPlayer
                                    L8_2 = L8_2.cards
                                    L9_2 = tonumber
                                    L10_2 = L7_2.id
                                    L9_2 = L9_2(L10_2)
                                    L8_2 = L8_2[L9_2]
                                    L8_2 = L8_2.power
                                    L9_2 = L7_2.power
                                    L8_2 = L8_2 + L9_2
                                    L9_2 = L2_2.addedCardsToBattle
                                    L10_2 = tonumber
                                    L11_2 = L7_2.id
                                    L10_2 = L10_2(L11_2)
                                    L9_2 = L9_2[L10_2]
                                    L9_2 = L9_2.power
                                    L10_2 = L9_2
                                    L9_2 = L9_2.setValue
                                    L11_2 = L8_2
                                    L9_2(L10_2, L11_2)
                                  end
                                end
                              end
                              L3_2 = L2_2.applyPowerBenefit
                              L4_2 = A0_2.hero_benefits_info
                              L4_2 = L4_2.power_benefit
                              L3_2(L4_2)
                            end
                          end
                        else
                          L3_2 = A0_2.hero_owner_id
                          L4_2 = L2_2.mainEnemyId
                          if L3_2 == L4_2 then
                            L3_2 = A0_2.hero_benefits_info
                            if L3_2 then
                              L3_2 = A0_2.hero_benefits_info
                              L3_2 = L3_2.cooldown_benefit
                              if L3_2 then
                                L3_2 = L2_2.showUsedAbilityByMainEnemy
                                L4_2 = tonumber
                                L5_2 = A0_2.ability_type
                                L4_2 = L4_2(L5_2)
                                L5_2 = tonumber
                                L6_2 = A0_2.hero_benefits_info
                                L6_2 = L6_2.cooldown_benefit
                                L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2)
                                L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
                              end
                              L3_2 = A0_2.hero_benefits_info
                              L3_2 = L3_2.power_benefit
                              if L3_2 then
                                L3_2 = L2_2.showUsedAbilityByMainEnemy
                                L4_2 = tonumber
                                L5_2 = A0_2.ability_type
                                L4_2 = L4_2(L5_2)
                                L5_2 = tonumber
                                L6_2 = A0_2.hero_benefits_info
                                L6_2 = L6_2.power_benefit
                                L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2)
                                L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
                                L3_2 = pairs
                                L4_2 = A0_2.hero_benefits_info
                                L4_2 = L4_2.cards
                                L3_2, L4_2, L5_2 = L3_2(L4_2)
                                for L6_2, L7_2 in L3_2, L4_2, L5_2 do
                                  L8_2 = L2_2.enemyAddedCardsToBattle
                                  if L8_2 then
                                    L8_2 = L2_2.enemyAddedCardsToBattle
                                    L9_2 = tonumber
                                    L10_2 = L7_2.id
                                    L9_2 = L9_2(L10_2)
                                    L8_2 = L8_2[L9_2]
                                    if L8_2 then
                                      L8_2 = L2_2.enemyAddedCardsToBattle
                                      L9_2 = tonumber
                                      L10_2 = L7_2.id
                                      L9_2 = L9_2(L10_2)
                                      L8_2 = L8_2[L9_2]
                                      L8_2 = L8_2.power
                                      L8_2 = L8_2.value
                                      L9_2 = L7_2.power
                                      L8_2 = L8_2 + L9_2
                                      L9_2 = L2_2.enemyAddedCardsToBattle
                                      L10_2 = tonumber
                                      L11_2 = L7_2.id
                                      L10_2 = L10_2(L11_2)
                                      L9_2 = L9_2[L10_2]
                                      L9_2 = L9_2.power
                                      L10_2 = L9_2
                                      L9_2 = L9_2.setValue
                                      L11_2 = L8_2
                                      L9_2(L10_2, L11_2)
                                    end
                                  end
                                end
                                L3_2 = L2_2.applyPowerBenefit
                                L4_2 = tonumber
                                L5_2 = A0_2.hero_benefits_info
                                L5_2 = L5_2.power_benefit
                                L4_2 = L4_2(L5_2)
                                L5_2 = true
                                L3_2(L4_2, L5_2)
                              end
                              L3_2 = A0_2.hero_benefits_info
                              L3_2 = L3_2.blessing_multiplier
                              if L3_2 then
                                L3_2 = L2_2.showUsedAbilityByMainEnemy
                                L4_2 = tonumber
                                L5_2 = A0_2.ability_type
                                L4_2 = L4_2(L5_2)
                                L5_2 = tonumber
                                L6_2 = A0_2.hero_benefits_info
                                L6_2 = L6_2.blessing_multiplier
                                L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2)
                                L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
                              end
                            end
                          else
                            L3_2 = A0_2.hero_benefits_info
                            if L3_2 then
                              L3_2 = A0_2.hero_benefits_info
                              L3_2 = L3_2.cooldown_benefit
                              if L3_2 then
                                L3_2 = L2_2.applyBenefitForOtherPlayers
                                L4_2 = tonumber
                                L5_2 = A0_2.hero_owner_id
                                L4_2 = L4_2(L5_2)
                                L5_2 = tonumber
                                L6_2 = A0_2.ability_type
                                L5_2 = L5_2(L6_2)
                                L6_2 = tonumber
                                L7_2 = A0_2.hero_benefits_info
                                L7_2 = L7_2.cooldown_benefit
                                L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2)
                                L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
                              end
                              L3_2 = A0_2.hero_benefits_info
                              L3_2 = L3_2.power_benefit
                              if L3_2 then
                                L3_2 = L2_2.applyBenefitForOtherPlayers
                                L4_2 = tonumber
                                L5_2 = A0_2.hero_owner_id
                                L4_2 = L4_2(L5_2)
                                L5_2 = tonumber
                                L6_2 = A0_2.ability_type
                                L5_2 = L5_2(L6_2)
                                L6_2 = tonumber
                                L7_2 = A0_2.hero_benefits_info
                                L7_2 = L7_2.power_benefit
                                L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2)
                                L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
                                L3_2 = nil
                                L4_2 = tonumber
                                L5_2 = A0_2.owner_team_id
                                L4_2 = L4_2(L5_2)
                                L5_2 = L2_2.ownerTeamId
                                if L4_2 ~= L5_2 then
                                  L3_2 = true
                                end
                                L4_2 = L2_2.applyPowerBenefit
                                L5_2 = tonumber
                                L6_2 = A0_2.hero_benefits_info
                                L6_2 = L6_2.power_benefit
                                L5_2 = L5_2(L6_2)
                                L6_2 = L3_2
                                L4_2(L5_2, L6_2)
                              end
                              L3_2 = A0_2.hero_benefits_info
                              L3_2 = L3_2.blessing_multiplier
                              if L3_2 then
                                L3_2 = L2_2.applyBenefitForOtherPlayers
                                L4_2 = tonumber
                                L5_2 = A0_2.hero_owner_id
                                L4_2 = L4_2(L5_2)
                                L5_2 = tonumber
                                L6_2 = A0_2.ability_type
                                L5_2 = L5_2(L6_2)
                                L6_2 = tonumber
                                L7_2 = A0_2.hero_benefits_info
                                L7_2 = L7_2.blessing_multiplier
                                L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2)
                                L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
                              end
                            end
                          end
                        end
                      else
                        L2_2 = A0_2.hero_owner_id
                        L3_2 = mainPlayer
                        L3_2 = L3_2.id
                        if L2_2 ~= L3_2 then
                          L2_2 = L0_1
                          L2_2 = L2_2.getScene
                          L3_2 = "Scenes.LiveBattle"
                          L2_2 = L2_2(L3_2)
                          L3_2 = L2_2.battleManager
                          L4_2 = L3_2.storeHeroEffects
                          L5_2 = A0_2
                          L4_2(L5_2)
                        end
                      end
                  end
                  else
                    L1_2 = A0_2.push_message_type
                    if L1_2 == "bonus_time" then
                      L1_2 = L0_1
                      L1_2 = L1_2.getScene
                      L2_2 = "Scenes.Home"
                      L1_2 = L1_2(L2_2)
                      L2_2 = A0_2.status
                      if L2_2 == 1 then
                        L2_2 = L0_1
                        L2_2 = L2_2.getSceneName
                        L3_2 = "current"
                        L2_2 = L2_2(L3_2)
                        L3_2 = mainPlayer
                        L4_2 = A0_2.time_length
                        L3_2.bonusRemainingTime = L4_2
                        L3_2 = L5_1
                        L3_2 = L3_2.getRemainingTime
                        L4_2 = A0_2.time_length
                        L3_2 = L3_2(L4_2)
                        L4_2 = nil
                        L5_2 = nil
                        L6_2 = L0_1
                        L6_2 = L6_2.getSceneName
                        L7_2 = "current"
                        L6_2 = L6_2(L7_2)
                        if L6_2 ~= "Scenes.LiveBattle" then
                          L6_2 = L2_1
                          L4_2 = L6_2["Bonus Time"]
                          
                          function L5_2()
                            local L0_3, L1_3, L2_3, L3_3, L4_3
                            L0_3 = L0_1
                            L0_3 = L0_3.gotoScene
                            L1_3 = "Scenes.HelpScene"
                            L2_3 = {}
                            L3_3 = {}
                            L3_3.helpId = 32
                            L4_3 = L2_2
                            L3_3.previousScene = L4_3
                            L2_3.params = L3_3
                            L0_3(L1_3, L2_3)
                          end
                        end
                        L6_2 = L1_1
                        L7_2 = L6_2
                        L6_2 = L6_2.new
                        L8_2 = L2_1
                        L8_2 = L8_2.localizedString
                        L9_2 = "Start Bonus Time"
                        L10_2 = {}
                        L10_2.time = L3_2
                        L8_2 = L8_2(L9_2, L10_2)
                        L9_2 = L6_1
                        L9_2 = L9_2.Path_Assets
                        L10_2 = "General/Golden-Time.png"
                        L9_2 = L9_2 .. L10_2
                        L10_2 = L4_2
                        L11_2 = L5_2
                        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
                        L6_2 = L1_1
                        L6_2 = L6_2.showNotifications
                        L6_2()
                      else
                        L2_2 = A0_2.status
                        if L2_2 == 0 then
                          L2_2 = mainPlayer
                          L2_2.bonusRemainingTime = nil
                          L2_2 = L1_1
                          L3_2 = L2_2
                          L2_2 = L2_2.new
                          L4_2 = L2_1
                          L4_2 = L4_2["End Bonus Time"]
                          L2_2(L3_2, L4_2)
                          L2_2 = L1_1
                          L2_2 = L2_2.showNotifications
                          L2_2()
                        end
                      end
                      if L1_2 then
                        L2_2 = L0_1
                        L2_2 = L2_2.getSceneName
                        L3_2 = "current"
                        L2_2 = L2_2(L3_2)
                        if L2_2 == "Scenes.Home" then
                          L3_2 = L1_2
                          L2_2 = L1_2.updateUI
                          L2_2(L3_2)
                        end
                      end
                    else
                      L1_2 = A0_2.push_message_type
                      if L1_2 == "trainee_trained" then
                        L1_2 = mainPlayer
                        L2_2 = mainPlayer
                        L2_2 = L2_2.numberOfTrainedPlayers
                        L2_2 = L2_2 + 1
                        L1_2.numberOfTrainedPlayers = L2_2
                        L1_2 = L5_1
                        L1_2 = L1_2.getRemainingTime
                        L2_2 = A0_2.time_length
                        L1_2 = L1_2(L2_2)
                        L2_2 = L1_1
                        L3_2 = L2_2
                        L2_2 = L2_2.new
                        L4_2 = L2_1
                        L4_2 = L4_2.localizedString
                        L5_2 = "Trained Player Notification"
                        L6_2 = {}
                        L7_2 = A0_2.trainee_name
                        L6_2.name = L7_2
                        L6_2.time = L1_2
                        L4_2 = L4_2(L5_2, L6_2)
                        L5_2 = L6_1
                        L5_2 = L5_2.Path_Assets
                        L6_2 = "General/FC-rankup-arrow.png"
                        L5_2 = L5_2 .. L6_2
                        L6_2 = L2_1
                        L6_2 = L6_2.School
                        
                        function L7_2()
                          local L0_3, L1_3, L2_3, L3_3
                          L0_3 = L0_1
                          L0_3 = L0_3.gotoScene
                          L1_3 = "Scenes.MessagesScene"
                          L2_3 = {}
                          L3_3 = {}
                          L3_3.selectedTab = 3
                          L2_3.params = L3_3
                          L0_3(L1_3, L2_3)
                        end
                        
                        L8_2 = 5000
                        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
                        L2_2 = L1_1
                        L2_2 = L2_2.showNotifications
                        L2_2()
                        L2_2 = L0_1
                        L2_2 = L2_2.getSceneName
                        L3_2 = "current"
                        L2_2 = L2_2(L3_2)
                        if L2_2 == "Scenes.MessagesScene" then
                          L3_2 = L0_1
                          L3_2 = L3_2.getScene
                          L4_2 = L2_2
                          L3_2 = L3_2(L4_2)
                          L4_2 = L3_2.showSchoolView
                          if L4_2 then
                            L4_2 = L3_2.showSchoolView
                            L4_2()
                          end
                        end
                      else
                        L1_2 = A0_2.push_message_type
                        if L1_2 == "battle_finished" then
                          L1_2 = mainPlayer
                          L1_2 = L1_2.settings
                          L1_2 = L1_2.liveBattleIsOn
                          if L1_2 == true then
                            L1_2 = log3
                            L2_2 = "Live-Battle Finished"
                            L1_2(L2_2)
                            L1_2 = checkValidityAssert
                            L2_2 = A0_2.players_info
                            L3_2 = tostring
                            L4_2 = mainPlayer
                            L4_2 = L4_2.id
                            L3_2 = L3_2(L4_2)
                            L2_2 = L2_2[L3_2]
                            L3_2 = "Wrong data"
                            L4_2 = _NAME
                            L5_2 = "table"
                            L1_2(L2_2, L3_2, L4_2, L5_2)
                            L1_2 = L0_1
                            L1_2 = L1_2.getScene
                            L2_2 = "Scenes.LiveBattle"
                            L1_2 = L1_2(L2_2)
                            L2_2 = false
                            L3_2 = A0_2.players_info
                            L4_2 = tostring
                            L5_2 = mainPlayer
                            L5_2 = L5_2.id
                            L4_2 = L4_2(L5_2)
                            L3_2 = L3_2[L4_2]
                            if L3_2 then
                              L3_2 = A0_2.players_info
                              L4_2 = tostring
                              L5_2 = mainPlayer
                              L5_2 = L5_2.id
                              L4_2 = L4_2(L5_2)
                              L3_2 = L3_2[L4_2]
                              L3_2 = L3_2.is_ignored
                              if L3_2 == true then
                                L2_2 = true
                              end
                            end
                            L3_2 = false
                            L4_2 = mainPlayer
                            L4_2 = L4_2.tribe
                            if L4_2 then
                              L4_2 = A0_2.result
                              L4_2 = L4_2.winner_tribe_name
                              L5_2 = mainPlayer
                              L5_2 = L5_2.tribe
                              L5_2 = L5_2.name
                              if L4_2 == L5_2 then
                                L3_2 = true
                              else
                                L3_2 = false
                              end
                            else
                              L4_2 = mainPlayer
                              L4_2 = L4_2.id
                              L5_2 = A0_2.result
                              L5_2 = L5_2.winner_id
                              if L4_2 == L5_2 then
                                L3_2 = true
                              else
                                L3_2 = false
                              end
                            end
                            L4_2 = false
                            L5_2 = A0_2.result
                            L5_2 = L5_2.winner_id
                            L6_2 = mainPlayer
                            L6_2 = L6_2.id
                            if L5_2 ~= L6_2 then
                              L5_2 = A0_2.result
                              L5_2 = L5_2.loser_id
                              L6_2 = mainPlayer
                              L6_2 = L6_2.id
                              if L5_2 ~= L6_2 then
                                goto lbl_1165
                              end
                            end
                            L4_2 = true
                            goto lbl_1166
                            ::lbl_1165::
                            L4_2 = false
                            ::lbl_1166::
                            L5_2 = nil
                            if L3_2 then
                              L6_2 = A0_2.players_info
                              L7_2 = tostring
                              L8_2 = A0_2.result
                              L8_2 = L8_2.loser_id
                              L7_2 = L7_2(L8_2)
                              L6_2 = L6_2[L7_2]
                              L5_2 = L6_2.name
                            else
                              L6_2 = A0_2.players_info
                              L7_2 = tostring
                              L8_2 = A0_2.result
                              L8_2 = L8_2.winner_id
                              L7_2 = L7_2(L8_2)
                              L6_2 = L6_2[L7_2]
                              L5_2 = L6_2.name
                            end
                            L6_2 = nil
                            L7_2 = L2_1
                            L7_2 = L7_2.adjustNumber
                            L8_2 = L5_1
                            L8_2 = L8_2.shortenLongNumber
                            L9_2 = math
                            L9_2 = L9_2.abs
                            L10_2 = A0_2.players_info
                            L11_2 = tostring
                            L12_2 = mainPlayer
                            L12_2 = L12_2.id
                            L11_2 = L11_2(L12_2)
                            L10_2 = L10_2[L11_2]
                            L10_2 = L10_2.added_gold
                            L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
                            L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
                            L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
                            if L2_2 then
                              if L3_2 then
                                L8_2 = A0_2.result
                                L8_2 = L8_2.winner_added_score
                                if L8_2 ~= 0 then
                                  L8_2 = errorLog
                                  L9_2 = L2_1
                                  L9_2 = L9_2.localizedString
                                  L10_2 = "Livebattle win notification1"
                                  L11_2 = {}
                                  L11_2.gold = L7_2
                                  L12_2 = A0_2.result
                                  L12_2 = L12_2.winner_added_score
                                  L11_2.seed = L12_2
                                  L11_2.opponent = L5_2
                                  L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2, L11_2)
                                  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
                                  L8_2 = L2_1
                                  L8_2 = L8_2.localizedString
                                  L9_2 = "Livebattle win notification1"
                                  L10_2 = {}
                                  L10_2.gold = L7_2
                                  L11_2 = L2_1
                                  L11_2 = L11_2.adjustNumber
                                  L12_2 = A0_2.result
                                  L12_2 = L12_2.winner_added_score
                                  L11_2 = L11_2(L12_2)
                                  L10_2.seed = L11_2
                                  L10_2.opponent = L5_2
                                  L8_2 = L8_2(L9_2, L10_2)
                                  L6_2 = L8_2
                                end
                              else
                                L8_2 = errorLog
                                L9_2 = L2_1
                                L9_2 = L9_2.localizedString
                                L10_2 = "Livebattle lose notification2"
                                L11_2 = {}
                                L12_2 = A0_2.result
                                L12_2 = L12_2.loser_added_score
                                L11_2.seed = L12_2
                                L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2, L11_2)
                                L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
                                L8_2 = L2_1
                                L8_2 = L8_2.localizedString
                                L9_2 = "Livebattle lose notification2"
                                L10_2 = {}
                                L11_2 = L2_1
                                L11_2 = L11_2.adjustNumber
                                L12_2 = math
                                L12_2 = L12_2.abs
                                L13_2 = A0_2.result
                                L13_2 = L13_2.loser_added_score
                                L12_2, L13_2 = L12_2(L13_2)
                                L11_2 = L11_2(L12_2, L13_2)
                                L10_2.seed = L11_2
                                L10_2.opponent = L5_2
                                L8_2 = L8_2(L9_2, L10_2)
                                L6_2 = L8_2
                              end
                            elseif L4_2 then
                              if L3_2 then
                                L8_2 = errorLog
                                L9_2 = L2_1
                                L9_2 = L9_2.localizedString
                                L10_2 = "Livebattle win notification1"
                                L11_2 = {}
                                L11_2.gold = L7_2
                                L12_2 = A0_2.result
                                L12_2 = L12_2.winner_added_score
                                L11_2.seed = L12_2
                                L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2, L11_2)
                                L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
                                L8_2 = L2_1
                                L8_2 = L8_2.localizedString
                                L9_2 = "Livebattle win notification1"
                                L10_2 = {}
                                L10_2.gold = L7_2
                                L11_2 = L2_1
                                L11_2 = L11_2.adjustNumber
                                L12_2 = A0_2.result
                                L12_2 = L12_2.winner_added_score
                                L11_2 = L11_2(L12_2)
                                L10_2.seed = L11_2
                                L10_2.opponent = L5_2
                                L8_2 = L8_2(L9_2, L10_2)
                                L6_2 = L8_2
                              else
                                L8_2 = errorLog
                                L9_2 = L2_1
                                L9_2 = L9_2.localizedString
                                L10_2 = "Livebattle lose notification1"
                                L11_2 = {}
                                L11_2.gold = L7_2
                                L12_2 = A0_2.result
                                L12_2 = L12_2.loser_added_score
                                L11_2.seed = L12_2
                                L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2, L11_2)
                                L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
                                L8_2 = L2_1
                                L8_2 = L8_2.localizedString
                                L9_2 = "Livebattle lose notification1"
                                L10_2 = {}
                                L10_2.gold = L7_2
                                L11_2 = L2_1
                                L11_2 = L11_2.adjustNumber
                                L12_2 = math
                                L12_2 = L12_2.abs
                                L13_2 = A0_2.result
                                L13_2 = L13_2.loser_added_score
                                L12_2, L13_2 = L12_2(L13_2)
                                L11_2 = L11_2(L12_2, L13_2)
                                L10_2.seed = L11_2
                                L10_2.opponent = L5_2
                                L8_2 = L8_2(L9_2, L10_2)
                                L6_2 = L8_2
                              end
                            elseif L3_2 then
                              L8_2 = errorLog
                              L9_2 = L2_1
                              L9_2 = L9_2.localizedString
                              L10_2 = "Livebattle win notification2"
                              L11_2 = {}
                              L11_2.gold = L7_2
                              L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2, L11_2)
                              L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
                              L8_2 = L2_1
                              L8_2 = L8_2.localizedString
                              L9_2 = "Livebattle win notification2"
                              L10_2 = {}
                              L10_2.gold = L7_2
                              L10_2.opponent = L5_2
                              L8_2 = L8_2(L9_2, L10_2)
                              L6_2 = L8_2
                            else
                              L8_2 = errorLog
                              L9_2 = L2_1
                              L9_2 = L9_2.localizedString
                              L10_2 = "Livebattle lose notification3"
                              L11_2 = {}
                              L11_2.gold = L7_2
                              L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2, L11_2)
                              L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
                              L8_2 = L2_1
                              L8_2 = L8_2.localizedString
                              L9_2 = "Livebattle lose notification3"
                              L10_2 = {}
                              L10_2.gold = L7_2
                              L10_2.opponent = L5_2
                              L8_2 = L8_2(L9_2, L10_2)
                              L6_2 = L8_2
                            end
                            L8_2 = A0_2.players_info
                            L9_2 = tostring
                            L10_2 = mainPlayer
                            L10_2 = L10_2.id
                            L9_2 = L9_2(L10_2)
                            L8_2 = L8_2[L9_2]
                            if L8_2 then
                              L8_2 = A0_2.players_info
                              L9_2 = tostring
                              L10_2 = mainPlayer
                              L10_2 = L10_2.id
                              L9_2 = L9_2(L10_2)
                              L8_2 = L8_2[L9_2]
                              L8_2 = L8_2.gold
                              if L8_2 then
                                L8_2 = mainPlayer
                                L9_2 = A0_2.players_info
                                L10_2 = tostring
                                L11_2 = mainPlayer
                                L11_2 = L11_2.id
                                L10_2 = L10_2(L11_2)
                                L9_2 = L9_2[L10_2]
                                L9_2 = L9_2.gold
                                L8_2.gold = L9_2
                              end
                              L8_2 = A0_2.players_info
                              L9_2 = tostring
                              L10_2 = mainPlayer
                              L10_2 = L10_2.id
                              L9_2 = L9_2(L10_2)
                              L8_2 = L8_2[L9_2]
                              L8_2 = L8_2.xp
                              if L8_2 then
                                L8_2 = mainPlayer
                                L9_2 = A0_2.players_info
                                L10_2 = tostring
                                L11_2 = mainPlayer
                                L11_2 = L11_2.id
                                L10_2 = L10_2(L11_2)
                                L9_2 = L9_2[L10_2]
                                L9_2 = L9_2.xp
                                L8_2.xp = L9_2
                              end
                              L8_2 = A0_2.players_info
                              L9_2 = tostring
                              L10_2 = mainPlayer
                              L10_2 = L10_2.id
                              L9_2 = L9_2(L10_2)
                              L8_2 = L8_2[L9_2]
                              L8_2 = L8_2.league_rank
                              if L8_2 then
                                L8_2 = mainPlayer
                                L9_2 = A0_2.players_info
                                L10_2 = tostring
                                L11_2 = mainPlayer
                                L11_2 = L11_2.id
                                L10_2 = L10_2(L11_2)
                                L9_2 = L9_2[L10_2]
                                L9_2 = L9_2.league_rank
                                L8_2.leagueRank = L9_2
                              end
                              L8_2 = A0_2.players_info
                              L9_2 = tostring
                              L10_2 = mainPlayer
                              L10_2 = L10_2.id
                              L9_2 = L9_2(L10_2)
                              L8_2 = L8_2[L9_2]
                              L8_2 = L8_2.rank
                              if L8_2 then
                                L8_2 = mainPlayer
                                L9_2 = A0_2.players_info
                                L10_2 = tostring
                                L11_2 = mainPlayer
                                L11_2 = L11_2.id
                                L10_2 = L10_2(L11_2)
                                L9_2 = L9_2[L10_2]
                                L9_2 = L9_2.rank
                                L8_2.rank = L9_2
                              end
                              L8_2 = A0_2.players_info
                              L9_2 = tostring
                              L10_2 = mainPlayer
                              L10_2 = L10_2.id
                              L9_2 = L9_2(L10_2)
                              L8_2 = L8_2[L9_2]
                              L8_2 = L8_2.tribe_rank
                              if L8_2 then
                                L8_2 = mainPlayer
                                L8_2 = L8_2.tribe
                                if L8_2 then
                                  L8_2 = mainPlayer
                                  L8_2 = L8_2.tribe
                                  L9_2 = A0_2.players_info
                                  L10_2 = tostring
                                  L11_2 = mainPlayer
                                  L11_2 = L11_2.id
                                  L10_2 = L10_2(L11_2)
                                  L9_2 = L9_2[L10_2]
                                  L9_2 = L9_2.tribe_rank
                                  L8_2.rank = L9_2
                                end
                              end
                              L8_2 = A0_2.players_info
                              L9_2 = tostring
                              L10_2 = mainPlayer
                              L10_2 = L10_2.id
                              L9_2 = L9_2(L10_2)
                              L8_2 = L8_2[L9_2]
                              L8_2 = L8_2.q
                              if L8_2 then
                                L8_2 = mainPlayer
                                L9_2 = A0_2.players_info
                                L10_2 = tostring
                                L11_2 = mainPlayer
                                L11_2 = L11_2.id
                                L10_2 = L10_2(L11_2)
                                L9_2 = L9_2[L10_2]
                                L9_2 = L9_2.q
                                L8_2.q = L9_2
                              end
                              L8_2 = A0_2.players_info
                              L9_2 = tostring
                              L10_2 = mainPlayer
                              L10_2 = L10_2.id
                              L9_2 = L9_2(L10_2)
                              L8_2 = L8_2[L9_2]
                              L8_2 = L8_2.level
                              if L8_2 then
                                L8_2 = mainPlayer
                                L9_2 = A0_2.players_info
                                L10_2 = tostring
                                L11_2 = mainPlayer
                                L11_2 = L11_2.id
                                L10_2 = L10_2(L11_2)
                                L9_2 = L9_2[L10_2]
                                L9_2 = L9_2.level
                                L8_2.level = L9_2
                              end
                            end
                            L8_2 = L0_1
                            L8_2 = L8_2.getSceneName
                            L9_2 = "current"
                            L8_2 = L8_2(L9_2)
                            L9_2 = L0_1
                            L9_2 = L9_2.getScene
                            L10_2 = L8_2
                            L9_2 = L9_2(L10_2)
                            L10_2 = L9_2.updateGold
                            if L10_2 ~= nil then
                              L10_2 = type
                              L11_2 = L9_2.updateGold
                              L10_2 = L10_2(L11_2)
                              if L10_2 == "function" then
                                L11_2 = L9_2
                                L10_2 = L9_2.updateGold
                                L10_2(L11_2)
                              end
                            end
                            if L1_2 ~= nil then
                              L10_2 = L1_2.battleManager
                              L11_2 = L10_2.battleFinished
                              L12_2 = A0_2
                              L11_2(L12_2)
                            end
                            L10_2 = L0_1
                            L10_2 = L10_2.getSceneName
                            L11_2 = "current"
                            L10_2 = L10_2(L11_2)
                            if L10_2 ~= "Scenes.LiveBattleOutcome" then
                              L10_2 = L0_1
                              L10_2 = L10_2.getSceneName
                              L11_2 = "current"
                              L10_2 = L10_2(L11_2)
                              if L10_2 ~= "Scenes.LiveBattle" then
                                goto lbl_1534
                              end
                            end
                            do return end
                            goto lbl_1817
                            ::lbl_1534::
                            if L2_2 == true and L3_2 == true then
                            else
                              L10_2 = L1_1
                              L11_2 = L10_2
                              L10_2 = L10_2.new
                              L12_2 = L6_2
                              L10_2(L11_2, L12_2)
                              L10_2 = L1_1
                              L10_2 = L10_2.showNotifications
                              L10_2()
                            end
                        end
                        else
                          L1_2 = A0_2.push_message_type
                          if L1_2 == "battle_request" then
                            L1_2 = log3
                            L2_2 = "new battle_request recive from: "
                            L3_2 = A0_2.attacker_name
                            L1_2(L2_2, L3_2)
                            L1_2 = L0_1
                            L1_2 = L1_2.getScene
                            L2_2 = "Scenes.LiveBattle"
                            L1_2 = L1_2(L2_2)
                            if L1_2 ~= nil then
                              L2_2 = L1_2.battleManager
                              L3_2 = L2_2.battleRequest
                              L4_2 = A0_2
                              L3_2(L4_2)
                            end
                          else
                            L1_2 = A0_2.push_message_type
                            if L1_2 == "battle_help" then
                              L1_2 = mainPlayer
                              L1_2 = L1_2.settings
                              L1_2 = L1_2.liveBattleIsOn
                              if L1_2 == true then
                                L1_2 = log3
                                L2_2 = "new help_request recive from: "
                                L3_2 = A0_2.helpOwner_name
                                L1_2(L2_2, L3_2)
                                L1_2 = L0_1
                                L1_2 = L1_2.getScene
                                L2_2 = "Scenes.LiveBattle"
                                L1_2 = L1_2(L2_2)
                                if L1_2 ~= nil then
                                  L2_2 = L1_2.battleManager
                                  L3_2 = L2_2.helpRequestRecieved
                                  L4_2 = A0_2
                                  L3_2(L4_2)
                                end
                            end
                            else
                              L1_2 = A0_2.push_message_type
                              if L1_2 == "battle_join" then
                                L1_2 = mainPlayer
                                L1_2 = L1_2.settings
                                L1_2 = L1_2.liveBattleIsOn
                                if L1_2 == true then
                                  L1_2 = log3
                                  L2_2 = "new player joined the battle: "
                                  L3_2 = A0_2.player_name
                                  L1_2(L2_2, L3_2)
                                  L1_2 = L0_1
                                  L1_2 = L1_2.getScene
                                  L2_2 = "Scenes.LiveBattle"
                                  L1_2 = L1_2(L2_2)
                                  if L1_2 ~= nil then
                                    L2_2 = L1_2.battleManager
                                    L3_2 = L2_2.playerJoinedTheBattle
                                    L4_2 = A0_2.id
                                    L5_2 = A0_2.player_id
                                    L6_2 = A0_2.player_name
                                    L7_2 = A0_2.owner_team_id
                                    L3_2(L4_2, L5_2, L6_2, L7_2)
                                  end
                              end
                              else
                                L1_2 = A0_2.push_message_type
                                if L1_2 == "player_status" then
                                  L1_2 = mainPlayer
                                  L1_2 = L1_2.settings
                                  L1_2 = L1_2.liveBattleIsOn
                                  if L1_2 == true then
                                    L1_2 = L10_1
                                    L1_2 = L1_2.changeStatus
                                    L2_2 = A0_2.player_id
                                    L3_2 = A0_2.status
                                    L1_2(L2_2, L3_2)
                                end
                                else
                                  L1_2 = A0_2.push_message_type
                                  if L1_2 == "league_ended" then
                                    L1_2 = L0_1
                                    L1_2 = L1_2.gotoScene
                                    L2_2 = "Scenes.Loading"
                                    L1_2(L2_2)
                                    L1_2 = L11_1
                                    L2_2 = L0_1
                                    L2_2 = L2_2.getScene
                                    L3_2 = "Scenes.Loading"
                                    L2_2 = L2_2(L3_2)
                                    L1_2.delegate = L2_2
                                    L1_2 = L11_1
                                    L1_2 = L1_2.loadPlayer
                                    L1_2()
                                  else
                                    L1_2 = L9_1
                                    L1_2 = L1_2.encode
                                    L2_2 = A0_2
                                    L1_2 = L1_2(L2_2)
                                    L2_2 = log3
                                    L3_2 = " messageJson is : "
                                    L4_2 = L1_2
                                    L2_2(L3_2, L4_2)
                                    if L1_2 then
                                      L2_2 = A0_2.creationDate
                                      if L2_2 then
                                        L2_2 = A0_2.sender
                                        if L2_2 then
                                          L2_2 = A0_2.id
                                          if L2_2 then
                                            L2_2 = A0_2.text
                                            if L2_2 then
                                              L2_2 = A0_2.timestamp
                                              if L2_2 then
                                                L2_2 = A0_2.messageType
                                                if L2_2 then
                                                  L2_2 = A0_2.isLiveBattle
                                                  if not L2_2 then
                                                    L2_2 = mainPlayer
                                                    L2_2 = L2_2.settings
                                                    L2_2 = L2_2.messageTimeStamp
                                                    if L2_2 == nil then
                                                      L2_2 = mainPlayer
                                                      L3_2 = L2_2
                                                      L2_2 = L2_2.setSettingForKey
                                                      L4_2 = "messageTimeStamp"
                                                      L5_2 = 0
                                                      L2_2(L3_2, L4_2, L5_2)
                                                      L2_2 = mainPlayer
                                                      L3_2 = L2_2
                                                      L2_2 = L2_2.saveSettings
                                                      L2_2(L3_2)
                                                    end
                                                    L2_2 = A0_2.creationDate
                                                    L3_2 = mainPlayer
                                                    L3_2 = L3_2.settings
                                                    L3_2 = L3_2.messageTimeStamp
                                                    if L2_2 > L3_2 then
                                                      L2_2 = hub
                                                      if L2_2 ~= nil then
                                                        L2_2 = hub
                                                        L3_2 = hub
                                                        L3_2 = L3_2.unreadMessage
                                                        L3_2 = L3_2 + 1
                                                        L2_2.unreadMessage = L3_2
                                                      end
                                                    end
                                                    L2_2 = hub
                                                    L3_2 = math
                                                    L3_2 = L3_2.min
                                                    L4_2 = hub
                                                    L4_2 = L4_2.unreadMessage
                                                    L5_2 = 20
                                                    L3_2 = L3_2(L4_2, L5_2)
                                                    L2_2.unreadMessage = L3_2
                                                    L2_2 = nil
                                                    L3_2 = A0_2.channel
                                                    if L3_2 then
                                                      L3_2 = mainPlayer
                                                      L3_2 = L3_2.trainer
                                                      if L3_2 then
                                                        L3_2 = string
                                                        L3_2 = L3_2.find
                                                        L4_2 = A0_2.channel
                                                        L5_2 = "-"
                                                        L6_2 = 1
                                                        L7_2 = true
                                                        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
                                                        if L3_2 then
                                                          L2_2 = "coachMessage"
                                                          L3_2 = hub
                                                          L4_2 = "coachMessages"
                                                          L3_2 = L3_2[L4_2]
                                                          L4_2 = A0_2.id
                                                          L3_2[L4_2] = A0_2
                                                        else
                                                          L2_2 = "message"
                                                          L3_2 = hub
                                                          L4_2 = "messages"
                                                          L3_2 = L3_2[L4_2]
                                                          L4_2 = A0_2.id
                                                          L3_2[L4_2] = A0_2
                                                        end
                                                      else
                                                        L2_2 = "message"
                                                        L3_2 = hub
                                                        L4_2 = "messages"
                                                        L3_2 = L3_2[L4_2]
                                                        L4_2 = A0_2.id
                                                        L3_2[L4_2] = A0_2
                                                      end
                                                    end
                                                    L3_2 = Runtime
                                                    L4_2 = L3_2
                                                    L3_2 = L3_2.dispatchEvent
                                                    L5_2 = {}
                                                    L5_2.name = L2_2
                                                    L5_2.message = A0_2
                                                    L3_2(L4_2, L5_2)
                                                  else
                                                    L2_2 = log3
                                                    L3_2 = "livebattle chat recived"
                                                    L2_2(L3_2)
                                                    L2_2 = hub
                                                    L3_2 = "battleMessages"
                                                    L2_2 = L2_2[L3_2]
                                                    L3_2 = nil
                                                    if L2_2 ~= L3_2 then
                                                      L2_2 = hub
                                                      L3_2 = "battleMessages"
                                                      L2_2 = L2_2[L3_2]
                                                      L3_2 = A0_2.id
                                                      L2_2[L3_2] = A0_2
                                                      L2_2 = A0_2.sender
                                                      L3_2 = "#System Message"
                                                      if L2_2 == L3_2 then
                                                        A0_2.sender = ""
                                                        L2_2 = L5_1
                                                        L3_2 = "splitString"
                                                        L2_2 = L2_2[L3_2]
                                                        L3_2 = A0_2.text
                                                        L4_2 = "\""
                                                        L2_2 = L2_2(L3_2, L4_2)
                                                        L3_2 = L2_1
                                                        L4_2 = 1
                                                        L4_2 = L2_2[L4_2]
                                                        L3_2 = L3_2[L4_2]
                                                        L4_2 = "\""
                                                        L5_2 = 2
                                                        L5_2 = L2_2[L5_2]
                                                        L6_2 = "\""
                                                        L7_2 = L2_1
                                                        L8_2 = 3
                                                        L8_2 = L2_2[L8_2]
                                                        L7_2 = L7_2[L8_2]
                                                        L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
                                                        A0_2.text = L3_2
                                                      end
                                                      L2_2 = Runtime
                                                      L3_2 = L2_2
                                                      L2_2 = L2_2.dispatchEvent
                                                      L4_2 = {}
                                                      L5_2 = "battleMessage"
                                                      L4_2.name = L5_2
                                                      L4_2.message = A0_2
                                                      L2_2(L3_2, L4_2)
                                                    else
                                                      L2_2 = log3
                                                      L3_2 = "one player ignored the battle"
                                                      L2_2(L3_2)
                                                      L2_2 = L0_1
                                                      L2_2 = L2_2.getScene
                                                      L3_2 = "Scenes.LiveBattle"
                                                      L2_2 = L2_2(L3_2)
                                                      L3_2 = nil
                                                      if L2_2 ~= L3_2 then
                                                        L3_2 = L2_2.battleManager
                                                        L4_2 = "ignoreMessage"
                                                        L4_2 = L3_2[L4_2]
                                                        L5_2 = A0_2
                                                        L4_2(L5_2)
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  ::lbl_1817::
end

messageCallback = L13_1
