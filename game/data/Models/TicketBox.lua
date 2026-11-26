local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Language"
L0_1 = L0_1(L1_1)
L1_1 = nil
L2_1 = nil
L3_1 = nil
L4_1 = nil
L5_1 = nil

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = setmetatable
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L5_1
    if L0_3 == "attack" then
      L0_3 = liveBattleNotificationBarView
      L1_3 = L0_3
      L0_3 = L0_3.addTicket
      L2_3 = {}
      L3_3 = L5_1
      L2_3.ticketType = L3_3
      L3_3 = L1_1
      L2_3.attackerName = L3_3
      L3_3 = L2_1
      L2_3.attackerTribe = L3_3
      L0_3(L1_3, L2_3)
    else
      L0_3 = liveBattleNotificationBarView
      L1_3 = L0_3
      L0_3 = L0_3.addTicket
      L2_3 = {}
      L3_3 = L5_1
      L2_3.ticketType = L3_3
      L3_3 = L3_1
      L2_3.helpRequestOwner = L3_3
      L3_3 = L4_1
      L2_3.helpRequestOwnerTribe = L3_3
      L0_3(L1_3, L2_3)
    end
  end
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = log3
    L2_3 = "time to call ticket"
    L3_3 = os
    L3_3 = L3_3.time
    L3_3 = L3_3()
    L1_3(L2_3, L3_3)
    L1_3 = A0_3.source
    L1_3 = L1_3.params
    L2_3 = L1_3.ticketType
    L5_1 = L2_3
    L2_3 = L1_3.attackerName
    if not L2_3 then
      L2_3 = {}
    end
    L1_1 = L2_3
    L2_3 = L1_3.attackerTribe
    if not L2_3 then
      L2_3 = {}
    end
    L2_1 = L2_3
    L2_3 = L1_3.helpRequestOwner
    if not L2_3 then
      L2_3 = {}
    end
    L3_1 = L2_3
    L2_3 = L1_3.helpRequestOwnerTribe
    if not L2_3 then
      L2_3 = {}
    end
    L4_1 = L2_3
    L2_3 = L2_2
    L2_3()
  end
  
  L4_2 = timer
  L4_2 = L4_2.performWithDelay
  L5_2 = 5000
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = {}
  L5_2.ticketType = "attack"
  L5_2.attackerName = "1234567890123"
  L5_2.attackerTribe = "1234567890123"
  L4_2.params = L5_2
  L5_2 = timer
  L5_2 = L5_2.performWithDelay
  L6_2 = 9000
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = {}
  L6_2.ticketType = "attack"
  L6_2.attackerName = "ZXCVBNMASDFGH"
  L6_2.attackerTribe = "ZXCVBNMASDFGH"
  L5_2.params = L6_2
  L6_2 = timer
  L6_2 = L6_2.performWithDelay
  L7_2 = 10000
  L8_2 = L3_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = {}
  L7_2.ticketType = "help"
  L7_2.helpRequestOwner = "test.name.3"
  L7_2.helpRequestOwnerTribe = "test.tribe.3"
  L6_2.params = L7_2
  L7_2 = timer
  L7_2 = L7_2.performWithDelay
  L8_2 = 15000
  L9_2 = L3_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = {}
  L8_2.ticketType = "attack"
  L8_2.attackerName = "test.name.4"
  L8_2.attackerTribe = "test.tribe.4"
  L7_2.params = L8_2
  L8_2 = timer
  L8_2 = L8_2.performWithDelay
  L9_2 = 41000
  L10_2 = L3_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = {}
  L9_2.ticketType = "attack"
  L9_2.attackerName = "test.name.5"
  L9_2.attackerTribe = "test.tribe.5"
  L8_2.params = L9_2
  L9_2 = timer
  L9_2 = L9_2.performWithDelay
  L10_2 = 52000
  L11_2 = L3_2
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = {}
  L10_2.ticketType = "attack"
  L10_2.attackerName = "test.name.6"
  L10_2.attackerTribe = "test.tribe.6"
  L9_2.params = L10_2
  return A1_2
end

new = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L5_1
    if L0_3 == "attack" then
      L0_3 = liveBattleNotificationBarView
      L1_3 = L0_3
      L0_3 = L0_3.addTicket
      L2_3 = {}
      L3_3 = L5_1
      L2_3.ticketType = L3_3
      L3_3 = L1_1
      L2_3.attackerName = L3_3
      L3_3 = L2_1
      L2_3.attackerTribe = L3_3
      L2_3.tutorialTicket = true
      L0_3(L1_3, L2_3)
    else
      L0_3 = liveBattleNotificationBarView
      L1_3 = L0_3
      L0_3 = L0_3.addTicket
      L2_3 = {}
      L3_3 = L5_1
      L2_3.ticketType = L3_3
      L3_3 = L3_1
      L2_3.helpRequestOwner = L3_3
      L3_3 = L4_1
      L2_3.helpRequestOwnerTribe = L3_3
      L2_3.tutorialTicket = true
      L0_3(L1_3, L2_3)
    end
  end
  
  if A0_2 == 1 then
    L2_2 = {}
    L2_2.ticketType = "attack"
    L3_2 = L0_1
    L3_2 = L3_2.Enemy
    L2_2.attackerName = L3_2
    L3_2 = L0_1
    L3_2 = L3_2.Enemies
    L2_2.attackerTribe = L3_2
    L3_2 = L2_2.ticketType
    L5_1 = L3_2
    L3_2 = L2_2.attackerName
    if not L3_2 then
      L3_2 = {}
    end
    L1_1 = L3_2
    L3_2 = L2_2.attackerTribe
    if not L3_2 then
      L3_2 = {}
    end
    L2_1 = L3_2
    L3_2 = L2_2.helpRequestOwner
    if not L3_2 then
      L3_2 = {}
    end
    L3_1 = L3_2
    L3_2 = L2_2.helpRequestOwnerTribe
    if not L3_2 then
      L3_2 = {}
    end
    L4_1 = L3_2
    L3_2 = L1_2
    L3_2()
  elseif A0_2 == 2 then
    L2_2 = {}
    L2_2.ticketType = "help"
    L3_2 = L0_1
    L3_2 = L3_2.Friend
    L2_2.helpRequestOwner = L3_2
    L2_2.helpRequestOwnerTribe = "test.tribe.3"
    L3_2 = L2_2.ticketType
    L5_1 = L3_2
    L3_2 = L2_2.attackerName
    if not L3_2 then
      L3_2 = {}
    end
    L1_1 = L3_2
    L3_2 = L2_2.attackerTribe
    if not L3_2 then
      L3_2 = {}
    end
    L2_1 = L3_2
    L3_2 = L2_2.helpRequestOwner
    if not L3_2 then
      L3_2 = {}
    end
    L3_1 = L3_2
    L3_2 = L2_2.helpRequestOwnerTribe
    if not L3_2 then
      L3_2 = {}
    end
    L4_1 = L3_2
    L3_2 = L1_2
    L3_2()
  end
end

addLiveBattleTutorialTickets = L6_1
