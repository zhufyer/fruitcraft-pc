local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Models.Achievement"
L0_1 = L0_1(L1_1)

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = Constants
    L2_2 = L2_2.Path_Assets
    L3_2 = "Tutorial/Dandelion-head.png"
    L2_2 = L2_2 .. L3_2
    A1_2.image = L2_2
  end
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.rewards
  if L3_2 == nil then
    L3_2 = {}
    L3_2.gold = 0
    L2_2.rewards = L3_2
  end
  L2_2.isTask = true
  L2_2.status = "pending"
  return L2_2
end

new = L1_1
