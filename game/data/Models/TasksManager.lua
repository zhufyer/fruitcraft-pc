local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Models.Task"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Data.BaseAchievements"
L2_1 = L2_1(L3_1)
L3_1 = {}
L4_1 = 2001
L5_1 = 2012
AllTasksDoneId = L5_1

function L5_1(A0_2, A1_2)
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
  return A1_2
end

new = L5_1

function L5_1(A0_2)
  local L1_2
  A0_2.status = "active"
end

setActive = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = L2_1
  L3_2 = A0_2.id
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.nextTasks
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = setActive
    L7_2 = L2_1
    L7_2 = L7_2[L5_2]
    L6_2(L7_2)
  end
end

openNextTasks = L5_1

function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = pairs
  L1_2 = L2_1
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = L4_2.isTask
    if L5_2 == true then
      L5_2 = L4_2.recieved
      if L5_2 == true then
        L5_2 = openNextTasks
        L6_2 = L4_2
        L5_2(L6_2)
      end
    end
  end
  L0_2 = pairs
  L1_2 = L2_1
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = L4_2.isTask
    if L5_2 == true then
      L5_2 = L4_2.recieved
      if L5_2 == true then
        L4_2.status = "closed"
      end
    end
  end
end

checkTasks = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L2_1
  L2_2 = L4_1
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.recieved
  if L1_2 ~= true then
    L1_2 = L2_1
    L2_2 = L4_1
    L1_2 = L1_2[L2_2]
    L1_2.status = "active"
  else
    L1_2 = checkTasks
    L1_2()
  end
  L1_2 = {}
  L3_1 = L1_2
  L1_2 = pairs
  L2_2 = L2_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.isTask
    if L6_2 == true then
      L6_2 = L5_2.status
      if L6_2 == "active" then
        L6_2 = L3_1
        L7_2 = L3_1
        L7_2 = #L7_2
        L7_2 = L7_2 + 1
        L6_2[L7_2] = L5_2
      end
    end
  end
  L1_2 = L3_1
  return L1_2
end

getTasks = L5_1
