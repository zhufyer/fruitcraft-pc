local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)

function L1_1(A0_2, A1_2)
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
  L2_2 = refresh
  A1_2.refresh = L2_2
  return A1_2
end

new = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 == true then
    L1_2 = liveBattleNotificationBarView
    if L1_2 ~= nil then
      L1_2 = liveBattleNotificationBarView
      L2_2 = L1_2
      L1_2 = L1_2.showNotificatioBar
      L1_2(L2_2)
    end
  else
    L1_2 = L0_1
    L1_2 = L1_2.getSceneName
    L2_2 = "current"
    L1_2 = L1_2(L2_2)
    if L1_2 == "Scenes.BattleAnimationScene" or L1_2 == "Scenes.LiveBattle" or L1_2 == "Scenes.Loading" then
      L2_2 = log3
      L3_2 = "not allowed scenes"
      L2_2(L3_2)
      L2_2 = liveBattleNotificationBarView
      if L2_2 ~= nil then
        L2_2 = liveBattleNotificationBarView
        L3_2 = L2_2
        L2_2 = L2_2.hideNotificationBar
        L4_2 = 0
        L2_2(L3_2, L4_2)
      end
    else
      L2_2 = log3
      L3_2 = "allowed scenes"
      L2_2(L3_2)
      L2_2 = liveBattleNotificationBarView
      if L2_2 ~= nil then
        L2_2 = liveBattleNotificationBarView
        L3_2 = L2_2
        L2_2 = L2_2.showNotificatioBar
        L2_2(L3_2)
      end
    end
  end
end

refresh = L1_1
