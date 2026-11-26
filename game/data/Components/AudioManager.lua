local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = true
effectsEnabled = L0_1
L0_1 = true
musicEnabled = L0_1
L0_1 = {}
L1_1 = {}

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = effectsEnabled
  if L1_2 then
    L1_2 = L0_1
    L1_2 = L1_2[A0_2]
    if L1_2 == nil then
      L1_2 = L0_1
      L2_2 = audio
      L2_2 = L2_2.loadSound
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      L1_2[A0_2] = L2_2
    end
    L1_2 = audio
    L1_2 = L1_2.play
    L2_2 = L0_1
    L2_2 = L2_2[A0_2]
    return L1_2(L2_2)
  end
  L1_2 = 0
  return L1_2
end

playEffect = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = musicEnabled
  if L1_2 then
    L1_2 = L0_1
    L1_2 = L1_2[A0_2]
    if L1_2 == nil then
      L1_2 = L0_1
      L2_2 = audio
      L2_2 = L2_2.loadStream
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      L1_2[A0_2] = L2_2
    end
    L1_2 = L1_1
    L2_2 = audio
    L2_2 = L2_2.play
    L3_2 = L0_1
    L3_2 = L3_2[A0_2]
    L4_2 = {}
    L4_2.loops = -1
    L4_2.fadein = 2000
    L2_2 = L2_2(L3_2, L4_2)
    L1_2[A0_2] = L2_2
    L1_2 = L1_1
    L1_2 = L1_2[A0_2]
    return L1_2
  end
  L1_2 = 0
  return L1_2
end

playMusic = L2_1

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = musicEnabled
  if L1_2 then
    L1_2 = audio
    L1_2 = L1_2.stop
    L2_2 = L1_1
    L2_2 = L2_2[A0_2]
    return L1_2(L2_2)
  end
  L1_2 = 0
  return L1_2
end

stopMusic = L2_1
