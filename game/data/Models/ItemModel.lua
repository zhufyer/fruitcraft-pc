local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Components.DataManager"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.dataWithName
L2_1 = "BaseHeroItems"
L1_1 = L1_1(L2_1)

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.id
  A1_2.baseID = L2_2
  A1_2.assignedHeroID = nil
  A1_2.usedCount = nil
  L2_2 = setmetatable
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  return A1_2
end

new = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = log3
    L2_3 = "we send purchase request successful to the server."
    L1_3(L2_3)
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "BuyHeroItem"
    L4_3 = A2_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L2_3.nectar
      if L3_3 then
        L3_3 = mainPlayer
        L4_3 = L2_3.nectar
        L3_3.nectar = L4_3
      end
      L3_3 = A1_2
      if L3_3 ~= nil then
        L3_3 = A1_2
        L3_3()
      end
    end
  end
  
  L4_2 = {}
  L4_2.id = A0_2
  L5_2 = {}
  L5_2.body = L4_2
  L6_2 = log3
  L7_2 = "send request to the server for buy new items."
  L6_2(L7_2)
  L6_2 = network
  L6_2 = L6_2.request
  L7_2 = Constants
  L7_2 = L7_2.API_Path
  L8_2 = Constants
  L8_2 = L8_2.API_BuyHeroItem
  L7_2 = L7_2 .. L8_2
  L8_2 = "POST"
  L9_2 = L3_2
  L10_2 = L5_2
  L11_2 = "\226\128\140\226\128\140BuyHeroItem"
  L12_2 = nil
  L13_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

buyHeroItem = L2_1

function L2_1(A0_2, A1_2)
  A0_2.assignedHeroId = A1_2
end

equip = L2_1
