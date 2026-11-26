local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.cardUsedForBuilding
    if L8_2 ~= true then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L2_2
  
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L2_3 = L2_3[A0_3]
    L3_3 = A0_2
    L3_3 = L3_3[A1_3]
    L4_3 = mainPlayer
    L4_3 = L4_3.heroSet
    if L4_3 then
      L4_3 = mainPlayer
      L4_3 = L4_3.heroSet
      L5_3 = L2_3.baseId
      L4_3 = L4_3[L5_3]
      if L4_3 then
        L4_3 = mainPlayer
        L4_3 = L4_3.level
        L5_3 = Constants
        L5_3 = L5_3.UnlockLevel_Hero
        if L4_3 < L5_3 then
          L4_3 = mainPlayer
          L4_3 = L4_3.heroSet
          L5_3 = L3_3.baseId
          L4_3 = L4_3[L5_3]
          if not L4_3 then
            L4_3 = false
            return L4_3
          end
      end
    end
    else
      L4_3 = mainPlayer
      L4_3 = L4_3.heroSet
      if L4_3 then
        L4_3 = mainPlayer
        L4_3 = L4_3.heroSet
        L5_3 = L3_3.baseId
        L4_3 = L4_3[L5_3]
        if L4_3 then
          L4_3 = mainPlayer
          L4_3 = L4_3.level
          L5_3 = Constants
          L5_3 = L5_3.UnlockLevel_Hero
          if L4_3 < L5_3 then
            L4_3 = mainPlayer
            L4_3 = L4_3.heroSet
            L5_3 = L2_3.baseId
            L4_3 = L4_3[L5_3]
            if not L4_3 then
              L4_3 = true
              return L4_3
            end
        end
      end
      else
        L4_3 = mainPlayer
        L4_3 = L4_3.heroSet
        if L4_3 then
          L4_3 = mainPlayer
          L4_3 = L4_3.heroSet
          L5_3 = L2_3.baseId
          L4_3 = L4_3[L5_3]
          if L4_3 then
            L4_3 = mainPlayer
            L4_3 = L4_3.level
            L5_3 = Constants
            L5_3 = L5_3.UnlockLevel_Hero
            if L4_3 >= L5_3 then
              L4_3 = mainPlayer
              L4_3 = L4_3.heroSet
              L5_3 = L3_3.baseId
              L4_3 = L4_3[L5_3]
              if L4_3 then
                L4_3 = L2_3.power
                L5_3 = L3_3.power
                L4_3 = L4_3 > L5_3
                return L4_3
              else
                L4_3 = true
                return L4_3
              end
          end
        end
        else
          L4_3 = mainPlayer
          L4_3 = L4_3.heroSet
          if L4_3 then
            L4_3 = mainPlayer
            L4_3 = L4_3.heroSet
            L5_3 = L3_3.baseId
            L4_3 = L4_3[L5_3]
            if L4_3 then
              L4_3 = mainPlayer
              L4_3 = L4_3.level
              L5_3 = Constants
              L5_3 = L5_3.UnlockLevel_Hero
              if L4_3 >= L5_3 then
                L4_3 = false
                return L4_3
            end
          end
          else
            L4_3 = L2_3.power
            L5_3 = L3_3.power
            L4_3 = L4_3 > L5_3
            return L4_3
          end
        end
      end
    end
  end
  
  L3_2(L4_2, L5_2)
  return L2_2
end

sortCardsWithPower = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2
  
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = mainPlayer
    L2_3 = L2_3.cards
    L2_3 = L2_3[A0_3]
    L3_3 = mainPlayer
    L3_3 = L3_3.cards
    L3_3 = L3_3[A1_3]
    L5_3 = L2_3
    L4_3 = L2_3.cooldownRemaining
    L4_3 = L4_3(L5_3)
    L6_3 = L3_3
    L5_3 = L3_3.cooldownRemaining
    L5_3 = L5_3(L6_3)
    if L4_3 < 10 then
      L4_3 = 0
    end
    if L5_3 < 10 then
      L5_3 = 0
    end
    if L4_3 == 0 and L5_3 == 0 then
      L6_3 = mainPlayer
      L6_3 = L6_3.heroSet
      if L6_3 then
        L6_3 = mainPlayer
        L6_3 = L6_3.heroSet
        L7_3 = L2_3.baseId
        L6_3 = L6_3[L7_3]
        if L6_3 then
          L6_3 = mainPlayer
          L6_3 = L6_3.heroSet
          L7_3 = L3_3.baseId
          L6_3 = L6_3[L7_3]
          if L6_3 then
            L6_3 = L2_3.power
            L7_3 = L3_3.power
            L6_3 = L6_3 > L7_3
            return L6_3
          else
            L6_3 = true
            return L6_3
          end
      end
      else
        L6_3 = mainPlayer
        L6_3 = L6_3.heroSet
        if L6_3 then
          L6_3 = mainPlayer
          L6_3 = L6_3.heroSet
          L7_3 = L3_3.baseId
          L6_3 = L6_3[L7_3]
          if L6_3 then
            L6_3 = false
            return L6_3
        end
        else
          L6_3 = L2_3.power
          L7_3 = L3_3.power
          L6_3 = L6_3 > L7_3
          return L6_3
        end
      end
    elseif L4_3 == 0 and 0 < L5_3 then
      L6_3 = true
      return L6_3
    elseif 0 < L4_3 and L5_3 == 0 then
      L6_3 = false
      return L6_3
    else
      L6_3 = L2_3.power
      L7_3 = L3_3.power
      L6_3 = L6_3 > L7_3
      return L6_3
    end
  end
  
  L1_2(L2_2, L3_2)
  return A0_2
end

sortCardKeysWithCooldown = L0_1

function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = mainPlayer
    L7_2 = L7_2.cards
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2
    L7_2 = L7_2.cooldownRemaining
    L7_2 = L7_2(L8_2)
    if L7_2 <= 0 then
      L1_2 = L1_2 + 1
    end
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = mainPlayer
    L2_3 = L2_3.cards
    L2_3 = L2_3[A0_3]
    L3_3 = mainPlayer
    L3_3 = L3_3.cards
    L3_3 = L3_3[A1_3]
    L5_3 = L2_3
    L4_3 = L2_3.cooldownRemaining
    L4_3 = L4_3(L5_3)
    L6_3 = L3_3
    L5_3 = L3_3.cooldownRemaining
    L5_3 = L5_3(L6_3)
    L6_3 = L1_2
    if L6_3 < 2 then
      if L4_3 < 10 then
        L4_3 = 0
      end
      if L5_3 < 10 then
        L5_3 = 0
      end
    end
    if L4_3 == 0 and L5_3 == 0 then
      L6_3 = L2_3.power
      L7_3 = L3_3.power
      L6_3 = L6_3 < L7_3
      return L6_3
    elseif L4_3 == 0 and 0 < L5_3 then
      L6_3 = true
      return L6_3
    elseif 0 < L4_3 and L5_3 == 0 then
      L6_3 = false
      return L6_3
    else
      L6_3 = L2_3.power
      L7_3 = L3_3.power
      L6_3 = L6_3 < L7_3
      return L6_3
    end
  end
  
  L2_2(L3_2, L4_2)
  return A0_2
end

reverseSortCardKeysWithCooldown = L0_1
