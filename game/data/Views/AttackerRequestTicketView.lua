local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Views.ActivityIndicatorView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "json"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Utils.Toolbox"
L3_1 = L3_1(L4_1)
L4_1 = nil
L5_1 = nil
L6_1 = 110
L7_1 = 56
L8_1 = Constants
L8_1 = L8_1.Path_Assets
L9_1 = "LiveBattle/frame.png"
L8_1 = L8_1 .. L9_1
L9_1 = Constants
L9_1 = L9_1.Path_Assets
L10_1 = "LiveBattle/frame2.png"
L9_1 = L9_1 .. L10_1

function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = log3
  L4_2 = "new ticket create"
  L3_2(L4_2)
  if not A1_2 then
    L3_2 = {}
    A1_2 = L3_2
  end
  L3_2 = setmetatable
  L4_2 = A1_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  A0_2.__index = A0_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  A1_2.group = L3_2
  A1_2.state = "create"
  L3_2 = A1_2.width
  if not L3_2 then
    L3_2 = L6_1
  end
  A1_2.width = L3_2
  L3_2 = A1_2.height
  if not L3_2 then
    L3_2 = L7_1
  end
  A1_2.height = L3_2
  L3_2 = A1_2.ID
  A1_2.ID = L3_2
  L3_2 = A1_2.battle_id
  A1_2.battle_id = L3_2
  L3_2 = A1_2.ticketType
  if not L3_2 then
    L3_2 = log3
    L4_2 = "ticket type not define"
    L3_2 = L3_2(L4_2)
  end
  A1_2.ticketType = L3_2
  L3_2 = A1_2.ticketTime
  if not L3_2 then
    L3_2 = log3
    L4_2 = "no time set for ticket"
    L3_2 = L3_2(L4_2)
  end
  A1_2.ticketTime = L3_2
  L3_2 = A1_2.attacker_id
  if not L3_2 then
    L3_2 = log3
    L4_2 = "attacker id not set"
    L3_2 = L3_2(L4_2)
  end
  A1_2.attacker_id = L3_2
  A1_2.tap = A2_2
  L3_2 = A1_2.ticketType
  if L3_2 == "attack" then
    L3_2 = A1_2.imgFileName
    if not L3_2 then
      L3_2 = L8_1
    end
    A1_2.imgFileName = L3_2
    L3_2 = display
    L3_2 = L3_2.newImageRect
    L4_2 = A1_2.imgFileName
    L5_2 = 110
    L6_2 = 56
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A1_2.img = L3_2
    L3_2 = A1_2.img
    L4_2 = A1_2.img
    L5_2 = A1_2.width
    L5_2 = L5_2 / 2
    L6_2 = A1_2.height
    L6_2 = L6_2 / 2
    L4_2.y = L6_2
    L3_2.x = L5_2
    L3_2 = A1_2.group
    L4_2 = L3_2
    L3_2 = L3_2.insert
    L5_2 = A1_2.img
    L3_2(L4_2, L5_2)
    L3_2 = A1_2.img
    L4_2 = L3_2
    L3_2 = L3_2.toBack
    L3_2(L4_2)
    L3_2 = A1_2.attackerName
    if not L3_2 then
      L3_2 = log3
      L4_2 = "no name set for attacker"
      L3_2 = L3_2(L4_2)
    end
    A1_2.attackerName = L3_2
    L3_2 = L3_1
    L3_2 = L3_2.stringUTFLength
    L4_2 = A1_2.attackerName
    L3_2 = L3_2(L4_2)
    if 13 < L3_2 then
      L3_2 = L3_1
      L3_2 = L3_2.isStringPersianInAndroid
      L4_2 = A1_2.attackerName
      L5_2 = L4_2
      L4_2 = L4_2.sub
      L6_2 = 1
      L7_2 = 1
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2, L6_2, L7_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      if L3_2 then
        L3_2 = "..."
        L4_2 = L3_1
        L4_2 = L4_2.utf8sub
        L5_2 = A1_2.attackerName
        L6_2 = 0
        L7_2 = 11
        L4_2 = L4_2(L5_2, L6_2, L7_2)
        L3_2 = L3_2 .. L4_2
        A1_2.attackerName = L3_2
      else
        L3_2 = L3_1
        L3_2 = L3_2.utf8sub
        L4_2 = A1_2.attackerName
        L5_2 = 0
        L6_2 = 11
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        L4_2 = "..."
        L3_2 = L3_2 .. L4_2
        A1_2.attackerName = L3_2
      end
    end
    L3_2 = A1_2.attackerTribe
    if not L3_2 then
      L3_2 = log3
      L4_2 = "no tribe set for attacker"
      L3_2 = L3_2(L4_2)
    end
    A1_2.attackerTribe = L3_2
    L3_2 = L3_1
    L3_2 = L3_2.stringUTFLength
    L4_2 = A1_2.attackerTribe
    L3_2 = L3_2(L4_2)
    if 13 < L3_2 then
      L3_2 = L3_1
      L3_2 = L3_2.isStringPersianInAndroid
      L4_2 = A1_2.attackerTribe
      L5_2 = L4_2
      L4_2 = L4_2.sub
      L6_2 = 1
      L7_2 = 1
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2, L6_2, L7_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      if L3_2 then
        L3_2 = "..."
        L4_2 = L3_1
        L4_2 = L4_2.utf8sub
        L5_2 = A1_2.attackerTribe
        L6_2 = 0
        L7_2 = 11
        L4_2 = L4_2(L5_2, L6_2, L7_2)
        L3_2 = L3_2 .. L4_2
        A1_2.attackerTribe = L3_2
      else
        L3_2 = L3_1
        L3_2 = L3_2.utf8sub
        L4_2 = A1_2.attackerTribe
        L5_2 = 0
        L6_2 = 11
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        L4_2 = "..."
        L3_2 = L3_2 .. L4_2
        A1_2.attackerTribe = L3_2
      end
    end
    L3_2 = display
    L3_2 = L3_2.newText
    L4_2 = A1_2.attackerName
    L5_2 = A1_2.width
    L5_2 = L5_2 / 2
    L6_2 = A1_2.height
    L6_2 = L6_2 * 0.25
    L6_2 = L6_2 + 5
    L7_2 = A1_2.font
    if not L7_2 then
      L7_2 = Constants
      L7_2 = L7_2.fontForTitle
      L7_2 = L7_2()
    end
    L8_2 = A1_2.fontSize
    if not L8_2 then
      L8_2 = 12
    end
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L4_1 = L3_2
    L3_2 = A1_2.group
    L4_2 = L3_2
    L3_2 = L3_2.insert
    L5_2 = L4_1
    L3_2(L4_2, L5_2)
    L3_2 = L3_1
    L3_2 = L3_2.fixedTextSize
    L4_2 = L4_1
    L5_2 = 12
    L6_2 = {}
    L7_2 = 1
    L8_2 = 1
    L9_2 = 1
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L6_2[3] = L9_2
    L7_2 = A1_2.group
    L8_2 = A1_2.img
    L8_2 = L8_2.width
    L8_2 = L8_2 - 15
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L4_1 = L3_2
    L3_2 = display
    L3_2 = L3_2.newText
    L4_2 = A1_2.attackerTribe
    L5_2 = A1_2.width
    L5_2 = L5_2 / 2
    L6_2 = A1_2.height
    L6_2 = L6_2 * 0.75
    L6_2 = L6_2 - 1
    L7_2 = A1_2.font
    if not L7_2 then
      L7_2 = Constants
      L7_2 = L7_2.fontForTitle
      L7_2 = L7_2()
    end
    L8_2 = A1_2.fontSize
    if not L8_2 then
      L8_2 = 10
    end
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L5_1 = L3_2
    L3_2 = A1_2.group
    L4_2 = L3_2
    L3_2 = L3_2.insert
    L5_2 = L5_1
    L3_2(L4_2, L5_2)
    L3_2 = L3_1
    L3_2 = L3_2.fixedTextSize
    L4_2 = L5_1
    L5_2 = 10
    L6_2 = {}
    L7_2 = 1
    L8_2 = 1
    L9_2 = 1
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L6_2[3] = L9_2
    L7_2 = A1_2.group
    L8_2 = A1_2.img
    L8_2 = L8_2.width
    L8_2 = L8_2 - 20
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L5_1 = L3_2
  else
    L3_2 = A1_2.ticketType
    if L3_2 == "help" then
      L3_2 = A1_2.imgFileName
      if not L3_2 then
        L3_2 = L9_1
      end
      A1_2.imgFileName = L3_2
      L3_2 = display
      L3_2 = L3_2.newImageRect
      L4_2 = A1_2.imgFileName
      L5_2 = 110
      L6_2 = 41
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      A1_2.img = L3_2
      L3_2 = A1_2.img
      L4_2 = A1_2.img
      L5_2 = A1_2.width
      L5_2 = L5_2 / 2
      L6_2 = A1_2.height
      L6_2 = L6_2 / 2
      L4_2.y = L6_2
      L3_2.x = L5_2
      L3_2 = A1_2.group
      L4_2 = L3_2
      L3_2 = L3_2.insert
      L5_2 = A1_2.img
      L3_2(L4_2, L5_2)
      L3_2 = A1_2.img
      L4_2 = L3_2
      L3_2 = L3_2.toBack
      L3_2(L4_2)
      L3_2 = A1_2.helpRequestOwner
      if not L3_2 then
        L3_2 = log3
        L4_2 = "no name set for help request owner"
        L3_2 = L3_2(L4_2)
      end
      A1_2.helpRequestOwner = L3_2
      L3_2 = L3_1
      L3_2 = L3_2.stringUTFLength
      L4_2 = A1_2.helpRequestOwner
      L3_2 = L3_2(L4_2)
      if 13 < L3_2 then
        L3_2 = L3_1
        L3_2 = L3_2.utf8sub
        L4_2 = A1_2.helpRequestOwner
        L5_2 = 0
        L6_2 = 11
        L3_2 = L3_2(L4_2, L5_2, L6_2)
        L4_2 = "..."
        L3_2 = L3_2 .. L4_2
        A1_2.helpRequestOwner = L3_2
      end
      L3_2 = display
      L3_2 = L3_2.newText
      L4_2 = A1_2.helpRequestOwner
      L5_2 = A1_2.width
      L5_2 = L5_2 / 2
      L6_2 = A1_2.height
      L6_2 = L6_2 * 0.5
      L7_2 = A1_2.font
      if not L7_2 then
        L7_2 = Constants
        L7_2 = L7_2.fontForTitle
        L7_2 = L7_2()
      end
      L8_2 = A1_2.fontSize
      if not L8_2 then
        L8_2 = 12
      end
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      L4_1 = L3_2
      L3_2 = A1_2.group
      L4_2 = L3_2
      L3_2 = L3_2.insert
      L5_2 = L4_1
      L3_2(L4_2, L5_2)
      L3_2 = L3_1
      L3_2 = L3_2.fixedTextSize
      L4_2 = L4_1
      L5_2 = 12
      L6_2 = {}
      L7_2 = 1
      L8_2 = 1
      L9_2 = 1
      L6_2[1] = L7_2
      L6_2[2] = L8_2
      L6_2[3] = L9_2
      L7_2 = A1_2.group
      L8_2 = A1_2.img
      L8_2 = L8_2.width
      L8_2 = L8_2 - 15
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      L4_1 = L3_2
    end
  end
  
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = log3
    L1_3 = A1_2
    L1_3 = L1_3.attackerName
    if not L1_3 then
      L1_3 = A1_2
      L1_3 = L1_3.helpRequestOwner
    end
    L2_3 = " ticket removed"
    L0_3(L1_3, L2_3)
    L0_3 = A1_2
    L0_3.state = "remove"
    L0_3 = A1_2
    L0_3 = L0_3.group
    if L0_3 ~= nil then
      L0_3 = A1_2
      L0_3 = L0_3.group
      L0_3.alpha = 0
    end
    L0_3 = liveBattleNotificationBarView
    L1_3 = L0_3
    L0_3 = L0_3.removeTicket
    L2_3 = A1_2
    L3_3 = 0
    L0_3(L1_3, L2_3, L3_3)
  end
  
  A1_2.removeTicket = L3_2
  L3_2 = A1_2.ticketType
  if L3_2 == "help" then
    L3_2 = display
    L3_2 = L3_2.newRect
    L4_2 = A1_2.img
    L4_2 = L4_2.width
    L4_2 = L4_2 - 5
    L5_2 = A1_2.img
    L5_2 = L5_2.height
    L5_2 = L5_2 + 16
    L5_2 = L5_2 / 2
    L6_2 = A1_2.img
    L6_2 = L6_2.width
    L6_2 = L6_2 - 5
    L7_2 = A1_2.img
    L7_2 = L7_2.height
    L7_2 = L7_2 - 5
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    A1_2.loadBar = L3_2
  else
    L3_2 = display
    L3_2 = L3_2.newRect
    L4_2 = A1_2.img
    L4_2 = L4_2.width
    L4_2 = L4_2 - 5
    L5_2 = A1_2.img
    L5_2 = L5_2.height
    L5_2 = L5_2 - 18
    L5_2 = L5_2 / 2
    L6_2 = A1_2.img
    L6_2 = L6_2.width
    L6_2 = L6_2 - 5
    L7_2 = A1_2.img
    L7_2 = L7_2.height
    L7_2 = L7_2 - 25
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    A1_2.loadBar = L3_2
  end
  L3_2 = A1_2.loadBar
  L3_2.anchorX = 1
  L3_2 = A1_2.loadBar
  L3_2.anchorY = 0.5
  L3_2 = A1_2.loadBar
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = 1
  L6_2 = 1
  L7_2 = 1
  L8_2 = 0.5
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A1_2.group
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A1_2.loadBar
  L3_2(L4_2, L5_2)
  L3_2 = transition
  L3_2 = L3_2.to
  L4_2 = A1_2.loadBar
  L5_2 = {}
  L5_2.xScale = 0
  L6_2 = A1_2.ticketTime
  L6_2 = L6_2 * 1000
  L5_2.time = L6_2
  L6_2 = A1_2.removeTicket
  L5_2.onComplete = L6_2
  L3_2(L4_2, L5_2)
  
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = _debugMode
    if L0_3 then
    end
    L0_3 = transition
    L0_3 = L0_3.cancel
    L1_3 = A1_2
    L1_3 = L1_3.loadBar
    L0_3(L1_3)
    L0_3 = liveBattleNotificationBarView
    L1_3 = L0_3
    L0_3 = L0_3.removeAllTickets
    L0_3(L1_3)
    L0_3 = log3
    L1_3 = "o.mainEnemy_id : "
    L2_3 = A1_2
    L2_3 = L2_3.mainEnemy_id
    L0_3(L1_3, L2_3)
    L0_3 = errorLog
    L1_3 = "o.tutorialTicket"
    L2_3 = A1_2
    L2_3 = L2_3.tutorialTicket
    L0_3(L1_3, L2_3)
    L0_3 = A1_2
    L0_3 = L0_3.tutorialTicket
    if L0_3 ~= true then
      L0_3 = A1_2
      L1_3 = L0_3
      L0_3 = L0_3.tap
      L2_3 = A1_2
      L2_3 = L2_3.attacker_id
      L3_3 = A1_2
      L3_3 = L3_3.mainEnemy_id
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  
  L4_2 = A1_2.group
  L5_2 = L4_2
  L4_2 = L4_2.addEventListener
  L6_2 = "tap"
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  return A1_2
end

new = L10_1
