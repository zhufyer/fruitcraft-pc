local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Components.ParticleDesigner"
L0_1 = L0_1(L1_1)
L1_1 = {}

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = _isFillterSupport
  if L1_2 == false then
    return
  end
  L1_2 = display
  L1_2 = L1_2.contentWidth
  L2_2 = L0_1
  L2_2 = L2_2.newEmitter
  L3_2 = Constants
  L3_2 = L3_2.Path_Assets
  L4_2 = "Effects/snowFront.json"
  L3_2 = L3_2 .. L4_2
  L2_2 = L2_2(L3_2)
  L3_2 = L1_2 / 2
  L3_2 = L3_2 - 40
  L2_2.x = L3_2
  L2_2.y = -50
  L3_2 = L0_1
  L3_2 = L3_2.newEmitter
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "Effects/snowBack.json"
  L4_2 = L4_2 .. L5_2
  L3_2 = L3_2(L4_2)
  L4_2 = L1_2 / 2
  L4_2 = L4_2 - 40
  L3_2.x = L4_2
  L3_2.y = -50
  if A0_2 then
    L5_2 = A0_2
    L4_2 = A0_2.insert
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2.insert
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L1_1
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L1_1
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end

startSnowEffect = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = ipairs
  L1_2 = L1_1
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L6_2 = L4_2
    L5_2 = L4_2.removeSelf
    L5_2(L6_2)
  end
end

removeEffects = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = ipairs
  L1_2 = L1_1
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L6_2 = L4_2
    L5_2 = L4_2.stop
    L5_2(L6_2)
  end
end

stopEffects = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = ipairs
  L1_2 = L1_1
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L6_2 = L4_2
    L5_2 = L4_2.pause
    L5_2(L6_2)
  end
end

pauseEffects = L2_1

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = ipairs
  L1_2 = L1_1
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L6_2 = L4_2
    L5_2 = L4_2.start
    L5_2(L6_2)
  end
end

resumeEffects = L2_1
