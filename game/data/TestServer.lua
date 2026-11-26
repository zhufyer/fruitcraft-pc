local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "json"
L0_1 = L0_1(L1_1)

function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.isError = false
  L0_2.response = [[
{

    "status": true,
    "data": {
        "id": 100,
        "name": "test.user.1",
        "rank": 20,
        "xp": 25,
        "level": 10,
        "def_power": 210,
        "gold": 100,
        "tribe_permission": 3,
        "gold_building_level": 1,
        "new_messages": 2,
        "restore_key": "discussion0fertile",
        "invite_key": "bucket0",
        "cooldowns_bought_today": 0,
        "total_quests": 1,
        "cards": [
            {
                "id": 100,
                "last_used_at": 0,
                "power": 26,
                "base_card_id": 226,
                "player_id": 100
            },
            {
                "id": 101,
                "last_used_at": 0,
                "power": 25,
                "base_card_id": 121,
                "player_id": 100
            },
            {
                "id": 102,
                "last_used_at": 0,
                "power": 25,
                "base_card_id": 261,
                "player_id": 100
            },
            {
                "id": 103,
                "last_used_at": 0,
                "power": 58,
                "base_card_id": 220,
                "player_id": 100
            },
            {
                "id": 104,
                "last_used_at": 0,
                "power": 53,
                "base_card_id": 192,
                "player_id": 100
            },
            {
                "id": 105,
                "last_used_at": 0,
                "power": 73,
                "base_card_id": 158,
                "player_id": 100
            },
            {
                "id": 106,
                "last_used_at": 0,
                "power": 26,
                "base_card_id": 226,
                "player_id": 100
            },
            {
                "id": 107,
                "last_used_at": 0,
                "power": 25,
                "base_card_id": 121,
                "player_id": 100
            },
            {
                "id": 108,
                "last_used_at": 0,
                "power": 25,
                "base_card_id": 261,
                "player_id": 100
            },
            {
                "id": 109,
                "last_used_at": 0,
                "power": 58,
                "base_card_id": 220,
                "player_id": 100
            },
            {
                "id": 110,
                "last_used_at": 0,
                "power": 53,
                "base_card_id": 192,
                "player_id": 100
            },
            {
                "id": 111,
                "last_used_at": 0,
                "power": 73,
                "base_card_id": 158,
                "player_id": 100
            }
        ],
        "gold_building_assigned_cards": [ ],
        "offense_building_assigned_cards": [ ],
        "defense_building_assigned_cards": [ ],
        "tribe": {
            "id": 107,
            "name": "khar5user1",
            "description": "aaaa",
            "score": 0,
            "rank": 1,
            "gold": 0,
            "member_count": 1,
            "defense_building_level": 1,
            "offense_building_level": 0,
            "cooldown_building_level": 0,
            "mainhall_building_level": 1,
            "donates_number": 0
        },
        "achievements": [ ],
        "now": 1371729210
    }

}]]
  return L0_2
end

getTestJson = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L0_2.player_gold = 100
  L0_2.player_cooldowns_bought_today = 1
  L1_2 = {}
  L1_2.isError = false
  L2_2 = L0_1
  L2_2 = L2_2.encode
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L1_2.response = L2_2
  return L1_2
end

getCooloffCardTestJSON = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L0_2.player_gold = 100
  L1_2 = {}
  L1_2.card_id = 21
  L1_2.base_card_id = 3
  L1_2.card_power = 50
  L1_2.card_last_usage_date = 0
  L0_2.new_card = L1_2
  L1_2 = {}
  L1_2.isError = false
  L2_2 = L0_1
  L2_2 = L2_2.encode
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L1_2.response = L2_2
  return L1_2
end

getEnhanceCardTestJSON = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L0_2.player_gold = 100
  L1_2 = {}
  L1_2.card_id = 10
  L1_2.base_card_id = 4
  L1_2.card_power = 100
  L1_2.card_last_usage_date = 0
  L0_2.new_card = L1_2
  L1_2 = {}
  L1_2.isError = false
  L2_2 = L0_1
  L2_2 = L2_2.encode
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L1_2.response = L2_2
  return L1_2
end

getEvolveCardTestJSON = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L0_2.status = true
  L1_2 = {}
  L1_2.isError = false
  L2_2 = L0_1
  L2_2 = L2_2.encode
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L1_2.response = L2_2
  return L1_2
end

getSendMessageTestJSON = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = {}
  L1_2 = {}
  L2_2 = {}
  L2_2.message_sender = "Ali"
  L2_2.message_date = 1234334
  L2_2.message_text = "Hello how are you? It would be great to meet you friend lets go out for a coffee sometime blab  ablbfalb la bl bal b lba  bl blab"
  L2_2.message_type = 1
  L3_2 = {}
  L3_2.message_sender = "Bob"
  L3_2.message_date = 1234338
  L3_2.message_text = "Fine thanks"
  L3_2.message_type = 2
  L4_2 = {}
  L4_2.message_sender = "Ali"
  L4_2.message_date = 1234355
  L4_2.message_text = "That's great to hear."
  L4_2.message_type = 1
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L0_2.messages = L1_2
  L1_2 = {}
  L1_2.isError = false
  L2_2 = L0_1
  L2_2 = L2_2.encode
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L1_2.response = L2_2
  return L1_2
end

getFetchMessagesTestJSON = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = {}
  L1_2 = {}
  L2_2 = {}
  L2_2.message_sender = "Fruitcraft"
  L2_2.message_date = 1370330519
  L2_2.message_text = "Hello how are you? It would be great to meet you friend lets go out for a coffee sometime blab  ablbfalb la bl bal b lba  bl blab. This is just a message from the system, no special action is associated with this."
  L2_2.message_type = 3
  L3_2 = {}
  L3_2.message_sender = "Fruitcraft"
  L3_2.message_date = 1370330519
  L3_2.message_text = "You were attacked by someone, this will be a attack message and will include a revenge button. The message text won't be used but instead generated."
  L3_2.message_attacker_id = 3
  L3_2.message_attacker_name = "Bob the great"
  L3_2.message_stolen_gold = 200
  L3_2.message_type = 4
  L4_2 = {}
  L4_2.message_sender = "Fruitcraft"
  L4_2.message_date = 1370330519
  L4_2.message_text = "Someone attacked you and Taunted you. this is the same as the attack message which includes a revenge button"
  L4_2.message_attacker_id = 3
  L4_2.message_attacker_name = "Sam"
  L4_2.message_type = 5
  L5_2 = {}
  L5_2.message_sender = "Fruitcraft"
  L5_2.message_date = 1370330519
  L5_2.message_text = "You have been invited to a tribe, player can choose to join. The actual message text is not shown, instead it's generated based on tribe id."
  L5_2.message_tribe_id = 5
  L5_2.message_tribe_name = "Eldorado Giants"
  L5_2.message_type = 6
  L6_2 = {}
  L6_2.message_sender = "Fruitcraft"
  L6_2.message_date = 1370330519
  L6_2.message_text = "You've been kicked from the tribe. Message is generated using tribe id, no action included"
  L6_2.message_tribe_id = 6
  L6_2.message_tribe_name = "Douches"
  L6_2.message_type = 7
  L7_2 = {}
  L7_2.message_sender = "Fruitcraft"
  L7_2.message_date = 1370330019
  L7_2.message_text = "Tribe promoted, no action included"
  L7_2.message_tribe_id = 4
  L7_2.message_tribe_name = "SagZ"
  L7_2.message_type = 8
  L8_2 = {}
  L8_2.message_sender = "Fruitcraft"
  L8_2.message_date = 1370030519
  L8_2.message_text = "Tribe demoted, no action included"
  L8_2.message_tribe_id = 3
  L8_2.message_tribe_name = "Websters"
  L8_2.message_type = 9
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L0_2.messages = L1_2
  L1_2 = {}
  L1_2.isError = false
  L2_2 = L0_1
  L2_2 = L2_2.encode
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L1_2.response = L2_2
  return L1_2
end

getFetchSystemMessagesTestJSON = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = {}
  L1_2 = {}
  L2_2 = 100
  L3_2 = 104
  L4_2 = 102
  L5_2 = 103
  L6_2 = 108
  L7_2 = 140
  L8_2 = 170
  L9_2 = 200
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  L0_2.cards = L1_2
  value = L0_2
  L0_2 = {}
  L0_2.isError = false
  L1_2 = L0_1
  L1_2 = L1_2.encode
  L2_2 = value
  L1_2 = L1_2(L2_2)
  L0_2.response = L1_2
  return L0_2
end

getCollctionCardsTestJson = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L1_2 = {}
  L2_2 = {}
  L2_2.id = 20
  L2_2.baseId = 2
  L2_2.power = 150
  L2_2.lastUsageDate = "18"
  L2_2.forBuilding = "gold"
  L3_2 = {}
  L3_2.id = 21
  L3_2.baseId = 3
  L3_2.power = 160
  L3_2.lastUsageDate = "20"
  L3_2.forBuilding = "gold"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L0_2.cards = L1_2
  L0_2.gold = 500
  value = L0_2
  L0_2 = {}
  L0_2.isError = false
  L1_2 = L0_1
  L1_2 = L1_2.encode
  L2_2 = value
  L1_2 = L1_2(L2_2)
  L0_2.response = L1_2
  return L0_2
end

buyCardTestJson = L1_1

function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L0_2.gold = 1000
  value = L0_2
  L0_2 = {}
  L0_2.isError = false
  L1_2 = L0_1
  L1_2 = L1_2.encode
  L2_2 = value
  L1_2 = L1_2(L2_2)
  L0_2.response = L1_2
  return L0_2
end

buyGoldTestJson = L1_1

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L2_2.id = 1
  L2_2.name = "sag"
  L2_2.gold = 0
  L2_2.rank = 2000
  L2_2.description = "we are dog"
  L2_2.chiefId = 2
  value = L2_2
  L2_2 = {}
  L2_2.isError = false
  L3_2 = L0_1
  L3_2 = L3_2.encode
  L4_2 = value
  L3_2 = L3_2(L4_2)
  L2_2.response = L3_2
  return L2_2
end

getCreateTribeTestJSON = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = {}
  L1_2 = {}
  L2_2 = {}
  L2_2.id = 2
  L2_2.name = "Team 1"
  L2_2.rank = 100
  L2_2.description = "We are the first team formed in Fruitcraft and so because of our long heritage are the best"
  L2_2.memberCount = 20
  L3_2 = {}
  L3_2.id = 3
  L3_2.name = "Bob dillan"
  L3_2.rank = 120
  L3_2.description = "A regular desciption about a tribe is this long, asking people to join. 80chars"
  L3_2.memberCount = 20
  L4_2 = {}
  L4_2.id = 4
  L4_2.name = "The Canadian Knights"
  L4_2.rank = 130
  L4_2.description = "Please don't apply unless you're above 1000, we seek only active members that will help improve tribe."
  L4_2.memberCount = 20
  L5_2 = {}
  L5_2.id = 5
  L5_2.name = "Mr. Johny"
  L5_2.rank = 140
  L5_2.description = "Everyone is welcome, just be active and donate."
  L5_2.memberCount = 20
  L6_2 = {}
  L6_2.id = 6
  L6_2.name = "Q"
  L6_2.rank = 10
  L6_2.description = "Everyone is welcome, just be active and donate."
  L6_2.memberCount = 20
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L0_2.tribes = L1_2
  value = L0_2
  L0_2 = {}
  L0_2.isError = false
  L1_2 = L0_1
  L1_2 = L1_2.encode
  L2_2 = value
  L1_2 = L1_2(L2_2)
  L0_2.response = L1_2
  return L0_2
end

getGetRecommendedTribes = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = {}
  L1_2 = {}
  L2_2 = {}
  L2_2.id = 2
  L2_2.name = "khar"
  L2_2.rank = 100
  L2_2.description = "we are khar"
  L2_2.memberCount = 20
  L3_2 = {}
  L3_2.id = 3
  L3_2.name = "khar1"
  L3_2.rank = 120
  L3_2.description = "we are khar"
  L3_2.memberCount = 20
  L4_2 = {}
  L4_2.id = 4
  L4_2.name = "khar2"
  L4_2.rank = 130
  L4_2.description = "we are khar"
  L4_2.memberCount = 20
  L5_2 = {}
  L5_2.id = 5
  L5_2.name = "khar3"
  L5_2.rank = 140
  L5_2.description = "we are khar"
  L5_2.memberCount = 20
  L6_2 = {}
  L6_2.id = 6
  L6_2.name = "khar4"
  L6_2.rank = 10
  L6_2.description = "we are khar"
  L6_2.memberCount = 20
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L0_2.tribes = L1_2
  value = L0_2
  L0_2 = {}
  L0_2.isError = false
  L1_2 = L0_1
  L1_2 = L1_2.encode
  L2_2 = value
  L1_2 = L1_2(L2_2)
  L0_2.response = L1_2
  return L0_2
end

getFoundTribes = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = {}
  L1_2 = {}
  L2_2 = {}
  L2_2.id = 1
  L2_2.name = "Hasan"
  L2_2.rank = 10
  L2_2.xp = 20000
  L2_2.level = 25
  L2_2.positionInTribe = 3
  L3_2 = {}
  L3_2.id = 2
  L3_2.name = "Hasan1"
  L3_2.rank = 101
  L3_2.xp = 2000
  L3_2.level = 20
  L3_2.positionInTribe = 2
  L4_2 = {}
  L4_2.id = 3
  L4_2.name = "Hasan2"
  L4_2.rank = 102
  L4_2.xp = 200
  L4_2.level = 21
  L4_2.positionInTribe = 2
  L5_2 = {}
  L5_2.id = 4
  L5_2.name = "Hasan3"
  L5_2.rank = 103
  L5_2.xp = 20
  L5_2.level = 22
  L5_2.positionInTribe = 1
  L6_2 = {}
  L6_2.id = 5
  L6_2.name = "Hasan4"
  L6_2.rank = 104
  L6_2.xp = 2
  L6_2.level = 23
  L6_2.positionInTribe = 1
  L7_2 = {}
  L7_2.id = 6
  L7_2.name = "Hasan5"
  L7_2.rank = 105
  L7_2.xp = 2
  L7_2.level = 24
  L7_2.positionInTribe = 1
  L8_2 = {}
  L8_2.id = 7
  L8_2.name = "Hasan6"
  L8_2.rank = 105
  L8_2.xp = 2
  L8_2.level = 24
  L8_2.positionInTribe = 1
  L9_2 = {}
  L9_2.id = 8
  L9_2.name = "Hasan7"
  L9_2.rank = 105
  L9_2.xp = 2
  L9_2.level = 24
  L9_2.positionInTribe = 1
  L10_2 = {}
  L10_2.id = 9
  L10_2.name = "Hasan8"
  L10_2.rank = 105
  L10_2.xp = 2
  L10_2.level = 24
  L10_2.positionInTribe = 1
  L11_2 = {}
  L11_2.id = 10
  L11_2.name = "Hasan9"
  L11_2.rank = 105
  L11_2.xp = 2
  L11_2.level = 24
  L11_2.positionInTribe = 1
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  L1_2[9] = L10_2
  L1_2[10] = L11_2
  L0_2.members = L1_2
  value = L0_2
  L0_2 = {}
  L0_2.isError = false
  L1_2 = L0_1
  L1_2 = L1_2.encode
  L2_2 = value
  L1_2 = L1_2(L2_2)
  L0_2.response = L1_2
  return L0_2
end

getTribeMembersTestJson = L1_1

function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L0_2.playerGold = 2000
  L0_2.tribeGold = 1000
  value = L0_2
  L0_2 = {}
  L0_2.isError = false
  L1_2 = L0_1
  L1_2 = L1_2.encode
  L2_2 = value
  L1_2 = L1_2(L2_2)
  L0_2.response = L1_2
  return L0_2
end

getDonateTestJSON = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = {}
  L0_2.status = true
  L1_2 = {}
  L2_2 = {}
  L2_2.id = 2
  L2_2.name = "asqar"
  L2_2.rank = 20
  L2_2.possitionTribe = "member"
  L2_2.level = 30
  L2_2.power_ratio = 1
  L2_2.def_power = 120
  L3_2 = {}
  L4_2 = {}
  L4_2.cardBaseId = 1
  L5_2 = {}
  L5_2.cardBaseId = 2
  L6_2 = {}
  L6_2.cardBaseId = 2
  L7_2 = {}
  L7_2.cardBaseId = 4
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L2_2.defendingCards = L3_2
  L3_2 = {}
  L3_2.id = 3
  L3_2.name = "akbar"
  L3_2.rank = 24
  L3_2.possitionTribe = "member"
  L3_2.level = 31
  L3_2.power_ratio = 2
  L3_2.def_power = 150
  L4_2 = {}
  L5_2 = {}
  L5_2.cardBaseId = 1
  L6_2 = {}
  L6_2.cardBaseId = 2
  L7_2 = {}
  L7_2.cardBaseId = 2
  L8_2 = {}
  L8_2.cardBaseId = 4
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  L3_2.defendingCards = L4_2
  L4_2 = {}
  L4_2.id = 4
  L4_2.name = "ali"
  L4_2.rank = 30
  L4_2.possitionTribe = "member"
  L4_2.level = 32
  L4_2.power_ratio = 3
  L4_2.def_power = 190
  L5_2 = {}
  L6_2 = {}
  L6_2.cardBaseId = 1
  L7_2 = {}
  L7_2.cardBaseId = 2
  L8_2 = {}
  L8_2.cardBaseId = 2
  L9_2 = {}
  L9_2.cardBaseId = 4
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L4_2.defendingCards = L5_2
  L5_2 = {}
  L5_2.id = 5
  L5_2.name = "amir"
  L5_2.rank = 21
  L5_2.possitionTribe = "member"
  L5_2.level = 33
  L5_2.power_ratio = 4
  L5_2.def_power = 220
  L6_2 = {}
  L7_2 = {}
  L7_2.cardBaseId = 1
  L8_2 = {}
  L8_2.cardBaseId = 2
  L9_2 = {}
  L9_2.cardBaseId = 2
  L10_2 = {}
  L10_2.cardBaseId = 4
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L5_2.defendingCards = L6_2
  L6_2 = {}
  L6_2.id = 6
  L6_2.name = "hasan"
  L6_2.rank = 24
  L6_2.possitionTribe = "member"
  L6_2.level = 34
  L6_2.power_ratio = 4
  L6_2.def_power = 320
  L7_2 = {}
  L8_2 = {}
  L8_2.cardBaseId = 1
  L9_2 = {}
  L9_2.cardBaseId = 2
  L10_2 = {}
  L10_2.cardBaseId = 2
  L11_2 = {}
  L11_2.cardBaseId = 4
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L6_2.defendingCards = L7_2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L0_2.data = L1_2
  value = L0_2
  L0_2 = {}
  L0_2.isError = false
  L1_2 = L0_1
  L1_2 = L1_2.encode
  L2_2 = value
  L1_2 = L1_2(L2_2)
  L0_2.response = L1_2
  return L0_2
end

getBattleOpponenetsTestJson = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = {}
  L0_2.status = true
  L1_2 = {}
  L1_2.outcome = true
  L1_2.gold = 2000
  L1_2.level = 30
  L1_2.xp = 10000
  L1_2.rank = 5
  L1_2.xp_added = 10
  L1_2.gold_added = 10
  L1_2.tribe_gold = 3000
  L2_2 = {}
  L3_2 = {}
  L3_2.id = 102
  L3_2.last_used_at = 20
  L4_2 = {}
  L4_2.id = 104
  L4_2.last_used_at = 30
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L1_2.attack_cards = L2_2
  L2_2 = {}
  L3_2 = {}
  L3_2.id = 102
  L3_2.last_used_at = 20
  L4_2 = {}
  L4_2.id = 104
  L4_2.last_used_at = 30
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L1_2.cards = L2_2
  L2_2 = {}
  L3_2 = {}
  L3_2.id = 130
  L3_2.base_id = 101
  L3_2.power = 150
  L2_2[1] = L3_2
  L1_2.gift_card = L2_2
  L0_2.data = L1_2
  value = L0_2
  L0_2 = {}
  L0_2.isError = false
  L1_2 = L0_1
  L1_2 = L1_2.encode
  L2_2 = value
  L1_2 = L1_2(L2_2)
  L0_2.response = L1_2
  return L0_2
end

getNewBattleTestJson = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = {}
  L1_2 = {}
  L2_2 = {}
  L2_2.id = 2
  L2_2.name = "asqar"
  L2_2.rank = 20
  L2_2.xp = 500
  L2_2.level = 30
  L2_2.tribeName = "zombis"
  L2_2.tribeId = 3
  L3_2 = {}
  L3_2.id = 3
  L3_2.name = "akbar"
  L3_2.rank = 24
  L3_2.xp = 400
  L3_2.level = 31
  L3_2.tribeName = "kharha"
  L3_2.tribeId = 1
  L4_2 = {}
  L4_2.id = 4
  L4_2.name = "ali"
  L4_2.rank = 30
  L4_2.xp = 300
  L4_2.level = 32
  L4_2.tribeName = "sag"
  L4_2.tribeId = 2
  L5_2 = {}
  L5_2.id = 5
  L5_2.name = "amir"
  L5_2.rank = 31
  L5_2.xp = 200
  L5_2.level = 33
  L5_2.tribeName = "zombis"
  L5_2.tribeId = 3
  L6_2 = {}
  L6_2.id = 6
  L6_2.name = "hasan"
  L6_2.rank = 34
  L6_2.xp = 100
  L6_2.level = 34
  L6_2.tribeName = "sag"
  L6_2.tribeId = 2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L0_2.topPlayers = L1_2
  L1_2 = {}
  L2_2 = {}
  L2_2.id = 10
  L2_2.name = "aaaaaaaaaa"
  L2_2.rank = 120
  L2_2.xp = 108001
  L2_2.level = 30
  L2_2.tribeName = "zombis"
  L2_2.tribeId = 3
  L3_2 = {}
  L3_2.id = 11
  L3_2.name = "bbbbbbbbbb"
  L3_2.rank = 124
  L3_2.xp = 10000
  L3_2.level = 31
  L3_2.tribeName = "kharha"
  L3_2.tribeId = 1
  L4_2 = {}
  L4_2.id = 3
  L4_2.name = "cccccccccc"
  L4_2.rank = 130
  L4_2.xp = 1000
  L4_2.level = 32
  L4_2.tribeName = "sag"
  L4_2.tribeId = 2
  L5_2 = {}
  L5_2.id = 13
  L5_2.name = "dddddddddd"
  L5_2.rank = 131
  L5_2.xp = 100
  L5_2.level = 33
  L5_2.tribeName = "zombis"
  L5_2.tribeId = 3
  L6_2 = {}
  L6_2.id = 14
  L6_2.name = "eeeeeeeeee"
  L6_2.rank = 134
  L6_2.xp = 189980
  L6_2.level = 34
  L6_2.tribeName = "The Honourable Turks"
  L6_2.tribeId = 2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L0_2.nearPlayers = L1_2
  L0_2.xpToRankUp = 200
  value = L0_2
  L0_2 = {}
  L0_2.isError = false
  L1_2 = L0_1
  L1_2 = L1_2.encode
  L2_2 = value
  L1_2 = L1_2(L2_2)
  L0_2.response = L1_2
  return L0_2
end

getGlobalRankingsTestJson = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = {}
  L1_2 = {}
  L2_2 = {}
  L2_2.id = 2
  L2_2.name = "asqar"
  L2_2.rank = 20
  L2_2.xp = 500
  L2_2.level = 30
  L2_2.tribeName = "zombis"
  L2_2.tribeId = 3
  L3_2 = {}
  L3_2.id = 3
  L3_2.name = "akbar"
  L3_2.rank = 24
  L3_2.xp = 400
  L3_2.level = 31
  L3_2.tribeName = "kharha"
  L3_2.tribeId = 1
  L4_2 = {}
  L4_2.id = 4
  L4_2.name = "ali"
  L4_2.rank = 30
  L4_2.xp = 300
  L4_2.level = 32
  L4_2.tribeName = "sag"
  L4_2.tribeId = 2
  L5_2 = {}
  L5_2.id = 5
  L5_2.name = "amir"
  L5_2.rank = 31
  L5_2.xp = 200
  L5_2.level = 33
  L5_2.tribeName = "zombis"
  L5_2.tribeId = 3
  L6_2 = {}
  L6_2.id = 6
  L6_2.name = "hasan"
  L6_2.rank = 34
  L6_2.xp = 100
  L6_2.level = 34
  L6_2.tribeName = "sag"
  L6_2.tribeId = 2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L0_2.topPlayers = L1_2
  L1_2 = {}
  L2_2 = {}
  L2_2.id = 10
  L2_2.name = "aaaaaaaaaa"
  L2_2.rank = 120
  L2_2.xp = 10001
  L2_2.level = 30
  L2_2.tribeName = "zombis"
  L2_2.tribeId = 3
  L3_2 = {}
  L3_2.id = 11
  L3_2.name = "bbbbbbbbbb"
  L3_2.rank = 124
  L3_2.xp = 10000
  L3_2.level = 31
  L3_2.tribeName = "kharha"
  L3_2.tribeId = 1
  L4_2 = {}
  L4_2.id = 12
  L4_2.name = "cccccccccc"
  L4_2.rank = 130
  L4_2.xp = 1000
  L4_2.level = 32
  L4_2.tribeName = "sag"
  L4_2.tribeId = 2
  L5_2 = {}
  L5_2.id = 13
  L5_2.name = "dddddddddd"
  L5_2.rank = 131
  L5_2.xp = 100
  L5_2.level = 33
  L5_2.tribeName = "zombis"
  L5_2.tribeId = 3
  L6_2 = {}
  L6_2.id = 14
  L6_2.name = "eeeeeeeeee"
  L6_2.rank = 134
  L6_2.xp = 10
  L6_2.level = 34
  L6_2.tribeName = "sag"
  L6_2.tribeId = 2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L0_2.nearPlayers = L1_2
  L0_2.xpToRankUp = 200
  L0_2.region = "mycountry"
  value = L0_2
  L0_2 = {}
  L0_2.isError = false
  L1_2 = L0_1
  L1_2 = L1_2.encode
  L2_2 = value
  L1_2 = L1_2(L2_2)
  L0_2.response = L1_2
  return L0_2
end

getLocalRankingTestJson = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = {}
  L1_2 = {}
  L2_2 = {}
  L2_2.id = 2
  L2_2.name = "sags"
  L2_2.rank = 100
  L2_2.score = 10000
  L2_2.memberCount = 10
  L3_2 = {}
  L3_2.id = 3
  L3_2.name = "sags1"
  L3_2.rank = 101
  L3_2.score = 10000
  L3_2.memberCount = 10
  L4_2 = {}
  L4_2.id = 4
  L4_2.name = "sags2"
  L4_2.rank = 102
  L4_2.score = 10000
  L4_2.memberCount = 10
  L5_2 = {}
  L5_2.id = 5
  L5_2.name = "sags3"
  L5_2.rank = 103
  L5_2.score = 10000
  L5_2.memberCount = 10
  L6_2 = {}
  L6_2.id = 6
  L6_2.name = "sags4"
  L6_2.rank = 104
  L6_2.score = 10000
  L6_2.memberCount = 10
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L0_2.topTribes = L1_2
  L1_2 = {}
  L2_2 = {}
  L2_2.id = 12
  L2_2.name = "sags10"
  L2_2.rank = 1000
  L2_2.score = 10000
  L2_2.memberCount = 10
  L3_2 = {}
  L3_2.id = 13
  L3_2.name = "sags11"
  L3_2.rank = 1001
  L3_2.score = 10000
  L3_2.memberCount = 10
  L4_2 = {}
  L4_2.id = 1
  L4_2.name = "sags12"
  L4_2.rank = 1002
  L4_2.score = 10000
  L4_2.memberCount = 10
  L5_2 = {}
  L5_2.id = 15
  L5_2.name = "sags13"
  L5_2.rank = 1003
  L5_2.score = 10000
  L5_2.memberCount = 10
  L6_2 = {}
  L6_2.id = 16
  L6_2.name = "sags14"
  L6_2.rank = 1004
  L6_2.score = 10000
  L6_2.memberCount = 10
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L0_2.nearTribes = L1_2
  L0_2.score = 1000
  L0_2.scoreToRankUp = 200
  value = L0_2
  L0_2 = {}
  L0_2.isError = false
  L1_2 = L0_1
  L1_2 = L1_2.encode
  L2_2 = value
  L1_2 = L1_2(L2_2)
  L0_2.response = L1_2
  return L0_2
end

getTribeRankingsTestJson = L1_1

function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L0_2.gold = 1000
  L0_2.level = 3
  value = L0_2
  L0_2 = {}
  L0_2.isError = false
  L1_2 = L0_1
  L1_2 = L1_2.encode
  L2_2 = value
  L1_2 = L1_2(L2_2)
  L0_2.response = L1_2
  return L0_2
end

getUpgradeBuildingTestJSON = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = {}
  L0_2.status = true
  L1_2 = {}
  L2_2 = {}
  L2_2.id = 1
  L2_2.activity_status = 1
  L2_2.base_card_id = 101
  L2_2.power = 1000
  L2_2.created_at = 1384666790
  L2_2.bid_count = 12
  L2_2.max_bidder_name = "bodzilla1"
  L2_2.max_bid = 500
  L3_2 = {}
  L3_2.id = 2
  L3_2.activity_status = 1
  L3_2.base_card_id = 105
  L3_2.power = 2000
  L3_2.created_at = 1384666190
  L3_2.bid_count = 10
  L3_2.max_bidder_name = "bodzilla2"
  L3_2.max_bid = 600
  L4_2 = {}
  L4_2.id = 3
  L4_2.activity_status = 0
  L4_2.base_card_id = 114
  L4_2.power = 3000
  L4_2.created_at = 1384666490
  L4_2.bid_count = 8
  L4_2.max_bidder_name = "bodzilla3"
  L4_2.max_bid = 700
  L5_2 = {}
  L5_2.id = 4
  L5_2.activity_status = 1
  L5_2.base_card_id = 106
  L5_2.power = 5000
  L5_2.created_at = 1384666290
  L5_2.bid_count = 7
  L5_2.max_bidder_name = "bodzilla4"
  L5_2.max_bid = 800
  L6_2 = {}
  L6_2.id = 5
  L6_2.activity_status = 1
  L6_2.base_card_id = 151
  L6_2.power = 6000
  L6_2.created_at = 1384666390
  L6_2.bid_count = 4
  L6_2.max_bidder_name = "bodzilla5"
  L6_2.max_bid = 900
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L0_2.data = L1_2
  L1_2 = {}
  L1_2.isError = false
  L2_2 = L0_1
  L2_2 = L2_2.encode
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L1_2.response = L2_2
  return L1_2
end

getMyAuctionsTestJSON = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = {}
  L0_2.status = true
  L1_2 = {}
  L2_2 = {}
  L2_2.id = 1
  L2_2.activity_status = 1
  L2_2.base_card_id = 101
  L2_2.power = 100003123
  L2_2.created_at = 1384666790
  L2_2.bid_count = 12
  L2_2.max_bidder_name = "sag"
  L2_2.max_bidder_id = 115
  L2_2.max_bid = 1000342
  L2_2.owner_name = "jack1"
  L2_2.owner_id = 32
  L3_2 = {}
  L3_2.id = 2
  L3_2.activity_status = 1
  L3_2.base_card_id = 105
  L3_2.power = 800000
  L3_2.created_at = 1384666190
  L3_2.bid_count = 10
  L3_2.max_bidder_name = "bodzilla2"
  L3_2.max_bid = 80000
  L3_2.owner_name = "jack2"
  L3_2.owner_id = 33
  L4_2 = {}
  L4_2.id = 3
  L4_2.activity_status = 0
  L4_2.base_card_id = 114
  L4_2.power = 3000
  L4_2.created_at = 1384666490
  L4_2.bid_count = 8
  L4_2.max_bidder_name = "bodzilla3"
  L4_2.max_bid = 90010
  L4_2.owner_name = "jack3"
  L4_2.owner_id = 34
  L5_2 = {}
  L5_2.id = 4
  L5_2.activity_status = 0
  L5_2.base_card_id = 106
  L5_2.power = 5000
  L5_2.created_at = 1384666290
  L5_2.bid_count = 7
  L5_2.max_bidder_name = "bodzilla4"
  L5_2.max_bid = 333156
  L5_2.owner_name = "jack4"
  L5_2.owner_id = 35
  L6_2 = {}
  L6_2.id = 5
  L6_2.activity_status = 0
  L6_2.base_card_id = 151
  L6_2.power = 6000
  L6_2.created_at = 1384666390
  L6_2.bid_count = 4
  L6_2.max_bidder_name = "bodzilla5"
  L6_2.max_bid = 900
  L6_2.owner_name = "jack5"
  L6_2.owner_id = 36
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L0_2.data = L1_2
  L1_2 = {}
  L1_2.isError = false
  L2_2 = L0_1
  L2_2 = L2_2.encode
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L1_2.response = L2_2
  return L1_2
end

getMyActiveAuctionsTestJSON = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = {}
  L0_2.status = true
  L1_2 = {}
  L2_2 = {}
  L2_2.id = 1
  L2_2.activity_status = 1
  L2_2.base_card_id = 101
  L2_2.power = 1000
  L2_2.created_at = 1384666790
  L2_2.bid_count = 12
  L2_2.max_bidder_name = "bodzilla1"
  L2_2.max_bid = 500
  L2_2.owner_name = "jack1"
  L2_2.owner_id = 32
  L3_2 = {}
  L3_2.id = 2
  L3_2.activity_status = 1
  L3_2.base_card_id = 105
  L3_2.power = 2000
  L3_2.created_at = 1384666190
  L3_2.bid_count = 10
  L3_2.max_bidder_name = "bodzilla2"
  L3_2.max_bid = 600
  L3_2.owner_name = "jack2"
  L3_2.owner_id = 33
  L4_2 = {}
  L4_2.id = 3
  L4_2.activity_status = 1
  L4_2.activity_status = 1
  L4_2.base_card_id = 114
  L4_2.power = 3000
  L4_2.created_at = 1384666490
  L4_2.bid_count = 8
  L4_2.max_bidder_name = "bodzilla3"
  L4_2.max_bid = 700
  L4_2.owner_name = "jack3"
  L4_2.owner_id = 34
  L5_2 = {}
  L5_2.id = 4
  L5_2.activity_status = 1
  L5_2.base_card_id = 106
  L5_2.power = 5000
  L5_2.created_at = 1384666290
  L5_2.bid_count = 7
  L5_2.max_bidder_name = "bodzilla4"
  L5_2.max_bid = 800
  L5_2.owner_name = "jack4"
  L5_2.owner_id = 35
  L6_2 = {}
  L6_2.id = 5
  L6_2.activity_status = 1
  L6_2.base_card_id = 151
  L6_2.power = 6000
  L6_2.created_at = 1384666390
  L6_2.bid_count = 4
  L6_2.max_bidder_name = "bodzilla5"
  L6_2.max_bid = 900
  L6_2.owner_name = "jack5"
  L6_2.owner_id = 36
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L0_2.data = L1_2
  L1_2 = {}
  L1_2.isError = false
  L2_2 = L0_1
  L2_2 = L2_2.encode
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L1_2.response = L2_2
  return L1_2
end

getSearchAuctionsTestJSON = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L0_2.status = true
  L1_2 = {}
  L0_2.data = L1_2
  L1_2 = {}
  L1_2.isError = false
  L2_2 = L0_1
  L2_2 = L2_2.encode
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L1_2.response = L2_2
  return L1_2
end

getAuctionBidTestJSON = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L0_2.status = true
  L1_2 = {}
  L0_2.data = L1_2
  L1_2 = {}
  L1_2.isError = false
  L2_2 = L0_1
  L2_2 = L2_2.encode
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L1_2.response = L2_2
  return L1_2
end

getAuctionFollowTestJSON = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L0_2.status = true
  L1_2 = {}
  L0_2.data = L1_2
  L1_2 = {}
  L1_2.isError = false
  L2_2 = L0_1
  L2_2 = L2_2.encode
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L1_2.response = L2_2
  return L1_2
end

getAuctionSellTestJSON = L1_1

function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L0_2.status = true
  L1_2 = {}
  L0_2.data = L1_2
  L1_2 = {}
  L1_2.isError = false
  L2_2 = L0_1
  L2_2 = L2_2.encode
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L1_2.response = L2_2
  return L1_2
end

getAuctionCreateTestJSON = L1_1
