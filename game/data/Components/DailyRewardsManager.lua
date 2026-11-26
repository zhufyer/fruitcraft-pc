local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)

function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = {}
  L5_2 = Constants
  L5_2 = L5_2.DAILY_REWARD_MAX_DAY
  L5_2 = L5_2 - A0_2
  L6_2 = nil
  L7_2 = nil
  L8_2 = nil
  if 2 <= L5_2 then
    if A0_2 == 1 then
      L9_2 = 1
      L10_2 = 4
      L11_2 = 1
      for L12_2 = L9_2, L10_2, L11_2 do
        if L12_2 == 1 then
          L8_2 = 1
          L7_2 = A0_2
        else
          L8_2 = 0
          L13_2 = L12_2 - 1
          L7_2 = A0_2 + L13_2
        end
        L13_2 = calculateRewardsWithDayNumber
        L14_2 = L7_2
        L15_2 = A1_2
        L13_2 = L13_2(L14_2, L15_2)
        L6_2 = L13_2
        L13_2 = generateRewardTableContent
        L14_2 = A2_2
        L15_2 = A3_2
        L16_2 = L6_2
        L17_2 = L8_2
        L18_2 = L7_2
        L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
        L4_2[L12_2] = L13_2
      end
    else
      L9_2 = 1
      L10_2 = 4
      L11_2 = 1
      for L12_2 = L9_2, L10_2, L11_2 do
        if L12_2 == 1 then
          L8_2 = 2
          L7_2 = A0_2 - 1
        elseif L12_2 == 2 then
          L8_2 = 1
          L7_2 = A0_2
        else
          L8_2 = 0
          L13_2 = L12_2 - 2
          L7_2 = A0_2 + L13_2
        end
        L13_2 = calculateRewardsWithDayNumber
        L14_2 = L7_2
        L15_2 = A1_2
        L13_2 = L13_2(L14_2, L15_2)
        L6_2 = L13_2
        L13_2 = generateRewardTableContent
        L14_2 = A2_2
        L15_2 = A3_2
        L16_2 = L6_2
        L17_2 = L8_2
        L18_2 = L7_2
        L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
        L4_2[L12_2] = L13_2
      end
    end
  elseif L5_2 == 1 then
    L9_2 = 1
    L10_2 = 4
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      if L12_2 < 3 then
        L8_2 = 2
        L13_2 = 3 - L12_2
        L7_2 = A0_2 - L13_2
      elseif L12_2 == 3 then
        L8_2 = 1
        L7_2 = A0_2
      else
        L8_2 = 0
        L7_2 = A0_2 + 1
      end
      L13_2 = calculateRewardsWithDayNumber
      L14_2 = L7_2
      L15_2 = A1_2
      L13_2 = L13_2(L14_2, L15_2)
      L6_2 = L13_2
      L13_2 = generateRewardTableContent
      L14_2 = A2_2
      L15_2 = A3_2
      L16_2 = L6_2
      L17_2 = L8_2
      L18_2 = L7_2
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
      L4_2[L12_2] = L13_2
    end
  elseif L5_2 == 0 then
    L9_2 = 1
    L10_2 = 4
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      if L12_2 < 4 then
        L8_2 = 2
        L13_2 = 4 - L12_2
        L7_2 = A0_2 - L13_2
      else
        L8_2 = 1
        L7_2 = A0_2
      end
      L13_2 = calculateRewardsWithDayNumber
      L14_2 = L7_2
      L15_2 = A1_2
      L13_2 = L13_2(L14_2, L15_2)
      L6_2 = L13_2
      L13_2 = generateRewardTableContent
      L14_2 = A2_2
      L15_2 = A3_2
      L16_2 = L6_2
      L17_2 = L8_2
      L18_2 = L7_2
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
      L4_2[L12_2] = L13_2
    end
  end
  return L4_2
end

dailyRewardManager = L0_1

function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2
  L5_2 = {}
  L5_2.itemWidth = A0_2
  L5_2.itemHeight = A1_2
  L5_2.rewardAmount = A2_2
  L5_2.status = A3_2
  L5_2.dayNumber = A4_2
  return L5_2
end

generateRewardTableContent = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A0_2 / 4
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 + A0_2
  L2_2 = L2_2 * A1_2
  return L2_2
end

calculateRewardsWithDayNumber = L0_1

function L0_1()
  local L0_2, L1_2
  L0_2 = mainPlayer
  L0_2 = L0_2.nextDailyRewardTime
  if L0_2 == nil then
    L0_2 = -1
    return L0_2
  end
  L0_2 = os
  L0_2 = L0_2.time
  L0_2 = L0_2()
  L1_2 = mainPlayer
  L1_2 = L1_2.timeDelta
  L0_2 = L0_2 + L1_2
  L1_2 = mainPlayer
  L1_2 = L1_2.nextDailyRewardTime
  L1_2 = L1_2 - L0_2
  return L1_2
end

calculateRemainingTimeToNextReward = L0_1
