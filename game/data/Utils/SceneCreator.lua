local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = require
  L2_2 = "composer"
  L1_2 = L1_2(L2_2)
  if A0_2 == "BattleAnimationScene" or A0_2 == "Loading" or A0_2 == "LiveBattle" then
    L2_2 = liveBattleNotificationBarView
    if L2_2 ~= nil then
      L2_2 = liveBattleNotificationBarView
      L3_2 = L2_2
      L2_2 = L2_2.hideNotificationBar
      L4_2 = 0
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = L1_2.newScene
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = log1
    L2_3 = "unimplemented updateGold function called"
    L1_3(L2_3)
    L1_3 = A0_3.navBar
    if L1_3 then
      L1_3 = A0_3.navBar
      L2_3 = L1_3
      L1_3 = L1_3.updateGold
      L3_3 = true
      L1_3(L2_3, L3_3)
    end
    L1_3 = A0_3.bar
    if L1_3 then
      L1_3 = A0_3.bar
      L2_3 = L1_3
      L1_3 = L1_3.updateGold
      L3_3 = true
      L1_3(L2_3, L3_3)
    end
  end
  
  L2_2.updateGold = L3_2
  
  function L3_2(A0_3, A1_3)
  end
  
  L2_2.startTutorialSequence = L3_2
  return L2_2
end

newScene = L0_1
