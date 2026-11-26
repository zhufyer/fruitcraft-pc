local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1
L0_1 = require
L1_1 = "Utils.SceneCreator"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Views.TabBar"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Constants"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Language"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.LiveBattleOutcomeView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.LiveBattleMessageView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "composer"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Utils.Toolbox"
L7_1 = L7_1(L8_1)
L8_1 = display
L8_1 = L8_1.contentCenterX
L8_1 = L8_1 + 40
L9_1 = display
L9_1 = L9_1.contentWidth
L10_1 = display
L10_1 = L10_1.contentHeight
L10_1 = L10_1 - 67
L11_1 = L0_1.newScene
L12_1 = "LiveBattleOutcome"
L11_1 = L11_1(L12_1)
L12_1 = nil
L13_1 = nil
L14_1 = nil
L15_1 = nil
L16_1 = nil
L17_1 = nil

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = log3
  L3_2 = "online battle outcome scene create"
  L2_2(L3_2)
  L2_2 = A0_2.view
  A0_2.group = L2_2
  L2_2 = display
  L2_2 = L2_2.newImageRect
  L3_2 = L2_1
  L3_2 = L3_2.Path_Assets
  L4_2 = "FC-bg.png"
  L3_2 = L3_2 .. L4_2
  L4_2 = 570
  L5_2 = 360
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = display
  L3_2 = L3_2.contentCenterX
  L2_2.x = L3_2
  L3_2 = display
  L3_2 = L3_2.contentCenterY
  L2_2.y = L3_2
  L3_2 = A0_2.group
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.toBack
  L3_2(L4_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L6_2 = L3_1
  L6_2 = L6_2.Own
  L7_2 = L3_1
  L7_2 = L7_2.Opponent
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L6_2 = {}
  L6_2.previousScene = "Scenes.Home"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2.bar = L3_2
  L3_2 = A0_2.bar
  L4_2 = L3_2
  L3_2 = L3_2.setPosition
  L5_2 = 0
  L6_2 = 0
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.group
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.bar
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L3_2 = display
  L3_2 = L3_2.newLine
  L4_2 = A0_2.group
  L5_2 = L8_1
  L6_2 = 55
  L7_2 = L8_1
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 - 5
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.separateY = L3_2
  L3_2 = A0_2.separateY
  L4_2 = L3_2
  L3_2 = L3_2.setStrokeColor
  L5_2 = L2_1
  L5_2 = L5_2.greenColor
  L5_2, L6_2, L7_2, L8_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2.separateY
  L3_2.strokeWidth = 3
end

L11_1.create = L18_1

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = log3
  L3_2 = "online battle outcome scene enter"
  L2_2(L3_2)
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    L3_2 = L12_1
    if L3_2 ~= nil then
      L3_2 = L12_1
      L4_2 = L3_2
      L3_2 = L3_2.removeMessageListener
      L3_2(L4_2)
    end
    L3_2 = false
    L4_2 = A1_2.params
    if L4_2 == nil then
      L4_2 = _debugMode
      if L4_2 == true then
        L4_2 = L5_1
        L5_2 = L4_2
        L4_2 = L4_2.new
        L6_2 = {}
        L7_2 = L9_1
        L8_2 = A0_2.separateY
        L8_2 = L8_2.x
        L7_2 = L7_2 - L8_2
        L6_2.width = L7_2
        L7_2 = L10_1
        L6_2.height = L7_2
        L7_2 = 10
        L4_2 = L4_2(L5_2, L6_2, L7_2)
        L12_1 = L4_2
        L4_2 = L4_1
        L5_2 = L4_2
        L4_2 = L4_2.new
        L6_2 = {}
        L6_2.viewType = "owner"
        L6_2.battleResult = 0
        L7_2 = {}
        L8_2 = {}
        L8_2.score = 0
        L8_2.power = 77777777777
        L8_2.id = 40973
        L8_2.name = "\216\173\216\179\217\134 \216\162\217\130\216\167"
        L8_2.xp = 1
        L8_2.gold = 0
        L9_2 = {}
        L9_2.score = 0
        L9_2.power = 77777777777
        L9_2.id = 40973
        L9_2.name = "ZXCVBNMASDFGHJ"
        L9_2.xp = 1
        L9_2.gold = 0
        L7_2[1] = L8_2
        L7_2[2] = L9_2
        L6_2.playersInfo = L7_2
        L7_2 = {}
        L6_2[1] = L7_2
        L4_2 = L4_2(L5_2, L6_2)
        L13_1 = L4_2
        L4_2 = L4_1
        L5_2 = L4_2
        L4_2 = L4_2.new
        L6_2 = {}
        L6_2.viewType = "opponent"
        L7_2 = {}
        L8_2 = {}
        L8_2.score = 10
        L8_2.power = 91170105
        L8_2.id = 40973
        L8_2.name = "12345678"
        L8_2.added_xp = 1
        L8_2.added_gold = 0
        L9_2 = {}
        L9_2.score = 0
        L9_2.power = 91170105
        L9_2.id = 40973
        L9_2.name = "123456789"
        L9_2.added_xp = 1
        L9_2.added_gold = 0
        L10_2 = {}
        L10_2.score = 0
        L10_2.power = 91170105
        L10_2.id = 40973
        L10_2.name = "1234567890"
        L10_2.added_xp = 1
        L10_2.added_gold = 0
        L11_2 = {}
        L11_2.score = 0
        L11_2.power = 91170105
        L11_2.id = 40973
        L11_2.name = "12345678901"
        L11_2.added_xp = 1
        L11_2.added_gold = 0
        L12_2 = {}
        L12_2.score = 0
        L12_2.power = 91170105
        L12_2.id = 40973
        L12_2.name = "123456789012"
        L12_2.added_xp = 1
        L12_2.added_gold = 0
        L13_2 = {}
        L13_2.score = 0
        L13_2.power = 91170105
        L13_2.id = 40973
        L13_2.name = "1234567890123"
        L13_2.added_xp = 1
        L13_2.added_gold = 0
        L14_2 = {}
        L14_2.score = 0
        L14_2.power = 91170105
        L14_2.id = 40973
        L14_2.name = "12345678901234"
        L14_2.added_xp = 1
        L14_2.added_gold = 0
        L7_2[1] = L8_2
        L7_2[2] = L9_2
        L7_2[3] = L10_2
        L7_2[4] = L11_2
        L7_2[5] = L12_2
        L7_2[6] = L13_2
        L7_2[7] = L14_2
        L6_2.playersInfo = L7_2
        L4_2 = L4_2(L5_2, L6_2)
        L14_1 = L4_2
        L3_2 = true
    end
    else
      L4_2 = L5_1
      L5_2 = L4_2
      L4_2 = L4_2.new
      L6_2 = {}
      L7_2 = L9_1
      L8_2 = A0_2.separateY
      L8_2 = L8_2.x
      L7_2 = L7_2 - L8_2
      L6_2.width = L7_2
      L7_2 = L10_1
      L6_2.height = L7_2
      L7_2 = A1_2.params
      L7_2 = L7_2.battle_id
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L12_1 = L4_2
      L4_2 = L4_1
      L5_2 = L4_2
      L4_2 = L4_2.new
      L6_2 = {}
      L6_2.viewType = "owner"
      L7_2 = A1_2.params
      L7_2 = L7_2._friends
      L6_2.playersInfo = L7_2
      L7_2 = A1_2.params
      L7_2 = L7_2.hasWon
      L6_2.battleResult = L7_2
      L4_2 = L4_2(L5_2, L6_2)
      L13_1 = L4_2
      L4_2 = L4_1
      L5_2 = L4_2
      L4_2 = L4_2.new
      L6_2 = {}
      L6_2.viewType = "opponent"
      L7_2 = A1_2.params
      L7_2 = L7_2._enemies
      L6_2.playersInfo = L7_2
      L7_2 = A1_2.params
      L7_2 = L7_2.hasWon
      L7_2 = not L7_2
      L6_2.battleResult = L7_2
      L7_2 = A1_2.params
      L7_2 = L7_2.enemies_tribe
      L6_2.tribe = L7_2
      L4_2 = L4_2(L5_2, L6_2)
      L14_1 = L4_2
      L4_2 = A1_2.params
      L4_2 = L4_2.showRankupAnimation
      if L4_2 == true then
        L4_2 = true
        L15_1 = L4_2
      end
      L4_2 = A1_2.params
      L4_2 = L4_2.showGoldAnimation
      if L4_2 == true then
        L4_2 = true
        L16_1 = L4_2
      end
      L4_2 = A1_2.params
      L4_2 = L4_2.ignoreMessage
      L17_1 = L4_2
    end
    L4_2 = L12_1
    L5_2 = L4_2
    L4_2 = L4_2.setPosition
    L6_2 = A0_2.separateY
    L6_2 = L6_2.x
    L6_2 = L6_2 + 11
    L7_2 = A0_2.separateY
    L7_2 = L7_2.y
    L7_2 = L7_2 + 3
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = L12_1
    L5_2 = L4_2
    L4_2 = L4_2.show
    L4_2(L5_2)
    L4_2 = A0_2.group
    L5_2 = L4_2
    L4_2 = L4_2.insert
    L6_2 = L12_1
    L6_2 = L6_2.view
    L4_2(L5_2, L6_2)
    if L3_2 == true then
      L4_2 = _debugMode
      if L4_2 == true then
        L4_2 = "uhoiufgfjfiujorijgrtioerjgoierjgoierjgrjwegoiewjrgoijrweoihiu"
        L5_2 = {}
        L5_2.creationDate = 1393935803
        L5_2.sender = "Nika ordi"
        L5_2.push_message_type = "chat"
        L5_2.text = L4_2
        L5_2.id = 1393935804
        L5_2.timestamp = 712697.604
        L5_2.isLiveBattle = true
        L5_2.messageType = 1
        theMessage = L5_2
        L5_2 = hub
        L5_2 = L5_2.battleMessages
        L6_2 = theMessage
        L6_2 = L6_2.id
        L7_2 = theMessage
        L5_2[L6_2] = L7_2
        L5_2 = Runtime
        L6_2 = L5_2
        L5_2 = L5_2.dispatchEvent
        L7_2 = {}
        L7_2.name = "battleMessage"
        L8_2 = theMessage
        L7_2.message = L8_2
        L5_2(L6_2, L7_2)
      end
    end
    L4_2 = L13_1
    A0_2.ownerView = L4_2
    L4_2 = L14_1
    A0_2.opponentView = L4_2
    L4_2 = A0_2.bar
    L5_2 = L4_2
    L4_2 = L4_2.setButtonsView
    L6_2 = {}
    L7_2 = A0_2.ownerView
    L8_2 = A0_2.opponentView
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.bar
    L5_2 = L4_2
    L4_2 = L4_2.selectButtonWithId
    L6_2 = 1
    L4_2(L5_2, L6_2)
    L4_2 = A0_2.ownerView
    L4_2 = L4_2.view
    L4_2.isVisible = true
    L4_2 = A0_2.ownerView
    L4_2 = L4_2.view
    L5_2 = L4_2
    L4_2 = L4_2.toFront
    L4_2(L5_2)
    
    function L4_2(A0_3)
      local L1_3, L2_3
      L1_3 = log3
      L2_3 = "messageListener"
      L1_3(L2_3)
      L1_3 = A0_3.state
      if L1_3 == "open" then
        L1_3 = L12_1
        L1_3 = L1_3.messageField
        L1_3.isVisible = false
      else
        L1_3 = L12_1
        L1_3 = L1_3.messageField
        L1_3.isVisible = true
      end
    end
    
    A0_2.messageListener = L4_2
    L4_2 = Runtime
    L5_2 = L4_2
    L4_2 = L4_2.addEventListener
    L6_2 = "liveBattleN_changeState"
    L7_2 = A0_2.messageListener
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = L17_1
    if L4_2 ~= nil then
      L4_2 = hub
      L4_2 = L4_2.battleMessages
      L5_2 = L17_1
      L5_2 = L5_2.id
      L6_2 = L17_1
      L4_2[L5_2] = L6_2
      L4_2 = L17_1
      L4_2 = L4_2.sender
      if L4_2 == "#System Message" then
        L4_2 = L17_1
        L4_2.sender = ""
        L4_2 = L7_1
        L4_2 = L4_2.splitString
        L5_2 = L17_1
        L5_2 = L5_2.text
        L6_2 = "\""
        L4_2 = L4_2(L5_2, L6_2)
        L5_2 = L17_1
        L6_2 = L3_1
        L7_2 = L4_2[1]
        L6_2 = L6_2[L7_2]
        L7_2 = "\""
        L8_2 = L4_2[2]
        L9_2 = "\""
        L10_2 = L3_1
        L11_2 = L4_2[3]
        L10_2 = L10_2[L11_2]
        L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
        L5_2.text = L6_2
      end
      L4_2 = Runtime
      L5_2 = L4_2
      L4_2 = L4_2.dispatchEvent
      L6_2 = {}
      L6_2.name = "battleMessage"
      L7_2 = L17_1
      L6_2.message = L7_2
      L4_2(L5_2, L6_2)
    end
    L4_2 = L6_1
    L4_2 = L4_2.getScene
    L5_2 = "Scenes.LiveBattle"
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = L6_1
      L4_2 = L4_2.getScene
      L5_2 = "Scenes.LiveBattle"
      L4_2 = L4_2(L5_2)
      L4_2 = L4_2.battleManager
      if L4_2 then
        L4_2 = L6_1
        L4_2 = L4_2.getScene
        L5_2 = "Scenes.LiveBattle"
        L4_2 = L4_2(L5_2)
        L4_2 = L4_2.battleManager
        L4_2 = L4_2.fetchBattleRequestThatNotShownToPlayer
        L4_2()
      end
    end
  end
end

L11_1.show = L18_1

function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 then
    L1_2 = A0_2.heroCard
    if L1_2 then
      L1_2 = pairs
      L2_2 = A0_2.heroCard
      L1_2, L2_2, L3_2 = L1_2(L2_2)
      for L4_2, L5_2 in L1_2, L2_2, L3_2 do
        L7_2 = L5_2
        L6_2 = L5_2.removeEnterFrameListener
        L6_2(L7_2)
      end
    end
  end
end

removeEnterFrameListenerFromHeroCard = L18_1

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = log3
  L3_2 = "online battle outcome scene exit"
  L2_2(L3_2)
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    L3_2 = hub
    if L3_2 ~= nil then
      L3_2 = hub
      L4_2 = L3_2
      L3_2 = L3_2.publish
      L5_2 = {}
      L6_2 = {}
      L6_2.isLiveBattle = true
      L6_2.push_message_type = "chat"
      L7_2 = "System "
      L8_2 = "\""
      L9_2 = mainPlayer
      L9_2 = L9_2.name
      L10_2 = "\""
      L11_2 = " leave the chat"
      L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
      L6_2.text = L7_2
      L6_2.messageType = 1
      L6_2.sender = "#System Message"
      L7_2 = os
      L7_2 = L7_2.time
      L7_2 = L7_2()
      L8_2 = mainPlayer
      L8_2 = L8_2.timeDelta
      L7_2 = L7_2 + L8_2
      L6_2.creationDate = L7_2
      L7_2 = os
      L7_2 = L7_2.time
      L7_2 = L7_2()
      L6_2.id = L7_2
      L7_2 = system
      L7_2 = L7_2.getTimer
      L7_2 = L7_2()
      L6_2.timestamp = L7_2
      L5_2.message = L6_2
      L3_2(L4_2, L5_2)
    end
    L3_2 = removeEnterFrameListenerFromHeroCard
    L4_2 = L13_1
    L3_2(L4_2)
    L3_2 = removeEnterFrameListenerFromHeroCard
    L4_2 = L14_1
    L3_2(L4_2)
    L3_2 = L12_1
    if L3_2 ~= nil then
      L3_2 = L12_1
      L4_2 = L3_2
      L3_2 = L3_2.removeMessageListener
      L3_2(L4_2)
      L3_2 = L12_1
      L4_2 = L3_2
      L3_2 = L3_2.destroyView
      L3_2(L4_2)
      L3_2 = L12_1
      L4_2 = L3_2
      L3_2 = L3_2.hide
      L3_2(L4_2)
    end
    L3_2 = A0_2.ownerView
    if L3_2 ~= nil then
      L3_2 = display
      L3_2 = L3_2.remove
      L4_2 = A0_2.ownerView
      L4_2 = L4_2.view
      L3_2(L4_2)
      L3_2 = A0_2.ownerView
      L3_2.view = nil
    end
    L3_2 = A0_2.opponentView
    if L3_2 ~= nil then
      L3_2 = display
      L3_2 = L3_2.remove
      L4_2 = A0_2.opponentView
      L4_2 = L4_2.view
      L3_2(L4_2)
      L3_2 = A0_2.opponentView
      L3_2.view = nil
    end
    L3_2 = Runtime
    L4_2 = L3_2
    L3_2 = L3_2.removeEventListener
    L5_2 = "liveBattleN_changeState"
    L6_2 = A0_2.messageListener
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = L15_1
    if L3_2 == true then
      L3_2 = L6_1
      L3_2 = L3_2.getScene
      L4_2 = "Scenes.Home"
      L3_2 = L3_2(L4_2)
      L4_2 = L3_2.animateRankUp
      L4_2()
    end
    L3_2 = L16_1
    if L3_2 == true then
      L3_2 = L6_1
      L3_2 = L3_2.getScene
      L4_2 = "Scenes.Home"
      L3_2 = L3_2(L4_2)
      L5_2 = L3_2
      L4_2 = L3_2.updateGold
      L6_2 = true
      L4_2(L5_2, L6_2)
    end
    L3_2 = false
    L16_1 = L3_2
    L3_2 = false
    L15_1 = L3_2
  end
end

L11_1.hide = L18_1

function L18_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = log3
  L3_2 = "online battle outcome scene destroy"
  L2_2(L3_2)
end

L11_1.destroy = L18_1
L19_1 = L11_1
L18_1 = L11_1.addEventListener
L20_1 = "create"
L21_1 = L11_1
L18_1(L19_1, L20_1, L21_1)
L19_1 = L11_1
L18_1 = L11_1.addEventListener
L20_1 = "show"
L21_1 = L11_1
L18_1(L19_1, L20_1, L21_1)
L19_1 = L11_1
L18_1 = L11_1.addEventListener
L20_1 = "hide"
L21_1 = L11_1
L18_1(L19_1, L20_1, L21_1)
L19_1 = L11_1
L18_1 = L11_1.addEventListener
L20_1 = "destroy"
L21_1 = L11_1
L18_1(L19_1, L20_1, L21_1)
return L11_1
