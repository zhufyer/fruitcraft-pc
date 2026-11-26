local L0_1, L1_1, L2_1, L3_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Models.Node"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Views.BranchMap"
L1_1 = L1_1(L2_1)
L2_1 = 3
numberOfWorlds = L2_1
L2_1 = 13
numberOfSubWorlds = L2_1
L2_1 = 10
numberOfEeachSubWorldLevels = L2_1
L2_1 = numberOfSubWorlds
L3_1 = numberOfEeachSubWorldLevels
L2_1 = L2_1 * L3_1
numberOfEachWorldLevels = L2_1
L2_1 = numberOfWorlds
L3_1 = numberOfEachWorldLevels
L2_1 = L2_1 * L3_1
totalWorldsLevelNumbers = L2_1

function L2_1(A0_2, A1_2)
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
  A1_2.mapState = 0
  A1_2.isNewWorldAnimationOn = true
  A1_2.isFirstSeenWorldMap = true
  A1_2.isBoss = false
  A1_2.isFinishedQuestMap = false
  return A1_2
end

new = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "Total quest wronged"
  L4_2 = _NAME
  L5_2 = "number"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = {}
  if A0_2 == 0 then
    L1_2.world = 1
    L1_2.subWorld = 1
    L1_2.subWorld_level = 1
  else
    L2_2 = totalWorldsLevelNumbers
    L2_2 = A0_2 % L2_2
    if L2_2 == 0 then
      L2_2 = totalWorldsLevelNumbers
    end
    L3_2 = math
    L3_2 = L3_2.ceil
    L4_2 = numberOfEachWorldLevels
    L4_2 = L2_2 / L4_2
    L3_2 = L3_2(L4_2)
    L1_2.world = L3_2
    L3_2 = numberOfEachWorldLevels
    L2_2 = A0_2 % L3_2
    if L2_2 == 0 then
      L2_2 = numberOfEachWorldLevels
    end
    L3_2 = math
    L3_2 = L3_2.ceil
    L4_2 = numberOfEeachSubWorldLevels
    L4_2 = L2_2 / L4_2
    L3_2 = L3_2(L4_2)
    L1_2.subWorld = L3_2
    L3_2 = numberOfEeachSubWorldLevels
    L2_2 = A0_2 % L3_2
    if L2_2 == 0 then
      L2_2 = numberOfEeachSubWorldLevels
    end
    L1_2.subWorld_level = L2_2
  end
  L2_2 = log3
  L3_2 = "Player quest map info: world,"
  L4_2 = L1_2.world
  L5_2 = ", subWorld,"
  L6_2 = L1_2.subWorld
  L7_2 = ", subWorld-level,"
  L8_2 = L1_2.subWorld_level
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  return L1_2
end

findPlayerQuestMapInfo = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = checkValidityAssert
  L3_2 = A1_2
  L4_2 = "Destination world not fined"
  L5_2 = _NAME
  L6_2 = "number"
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = checkAssert
  L3_2 = 0 < A1_2
  L4_2 = "Destination world is out of range"
  L5_2 = _NAME
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = {}
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  L2_2.view = L3_2
  L3_2 = {}
  L2_2.worlds = L3_2
  L3_2 = getWorldMapNodesPositions
  L3_2 = L3_2()
  L4_2 = 1
  L5_2 = A0_2.numberOfWorlds
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L2_2.worlds
    L9_2 = L0_1
    L10_2 = L9_2
    L9_2 = L9_2.new
    L11_2 = L7_2
    L9_2 = L9_2(L10_2, L11_2)
    L8_2[L7_2] = L9_2
    L8_2 = L2_2.worlds
    L8_2 = L8_2[L7_2]
    L8_2 = L8_2.view
    L9_2 = L3_2[L7_2]
    L9_2 = L9_2.x
    L8_2.x = L9_2
    L8_2 = L2_2.worlds
    L8_2 = L8_2[L7_2]
    L8_2 = L8_2.view
    L9_2 = L3_2[L7_2]
    L9_2 = L9_2.y
    L8_2.y = L9_2
    if L7_2 == A1_2 then
      L8_2 = L2_2.worlds
      L8_2 = L8_2[L7_2]
      L8_2._status = "open"
    else
      L8_2 = L2_2.worlds
      L8_2 = L8_2[L7_2]
      L8_2._status = "close"
    end
    L8_2 = L2_2.view
    L9_2 = L8_2
    L8_2 = L8_2.insert
    L10_2 = L2_2.worlds
    L10_2 = L10_2[L7_2]
    L10_2 = L10_2.view
    L8_2(L9_2, L10_2)
  end
  return L2_2
end

createWorldsMap = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = display
  L0_2 = L0_2.contentWidth
  L0_2 = L0_2 / 20
  L1_2 = display
  L1_2 = L1_2.contentHeight
  L1_2 = L1_2 / 20
  L2_2 = {}
  L3_2 = {}
  L4_2 = 5.2 * L0_2
  L3_2.x = L4_2
  L4_2 = 15.1 * L1_2
  L3_2.y = L4_2
  L4_2 = {}
  L5_2 = 16 * L0_2
  L4_2.x = L5_2
  L5_2 = 16.2 * L1_2
  L4_2.y = L5_2
  L5_2 = {}
  L6_2 = 11.4 * L0_2
  L5_2.x = L6_2
  L6_2 = 5.8 * L1_2
  L5_2.y = L6_2
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  return L2_2
end

getWorldMapNodesPositions = L2_1

function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = A1_2
  L8_2 = A0_2.numberOfSubWorlds
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  return L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end

createSubWorldMap = L2_1
