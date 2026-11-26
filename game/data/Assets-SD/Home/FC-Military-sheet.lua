local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = {}
L3_1.x = 76
L3_1.y = 121
L3_1.width = 38
L3_1.height = 38
L4_1 = {}
L4_1.x = 2
L4_1.y = 121
L4_1.width = 72
L4_1.height = 9
L5_1 = {}
L5_1.x = 2
L5_1.y = 2
L5_1.width = 88
L5_1.height = 15
L6_1 = {}
L6_1.x = 2
L6_1.y = 132
L6_1.width = 71
L6_1.height = 25
L7_1 = {}
L7_1.x = 2
L7_1.y = 87
L7_1.width = 87
L7_1.height = 32
L8_1 = {}
L8_1.x = 2
L8_1.y = 53
L8_1.width = 87
L8_1.height = 32
L9_1 = {}
L9_1.x = 2
L9_1.y = 19
L9_1.width = 87
L9_1.height = 32
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
L2_1[6] = L8_1
L2_1[7] = L9_1
L1_1.frames = L2_1
L1_1.sheetContentWidth = 128
L1_1.sheetContentHeight = 256
L0_1.sheet = L1_1
L1_1 = {}
L1_1.Blade = 1
L1_1.Hole1 = 2
L1_1.Hole2 = 3
L1_1.Spear1 = 4
L1_1.Spear2 = 5
L1_1.Spear3 = 6
L1_1.Spear4 = 7
L0_1.frameIndex = L1_1

function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.sheet
  return L1_2
end

L0_1.getSheet = L1_1

function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.frameIndex
  L2_2 = L2_2[A1_2]
  return L2_2
end

L0_1.getFrameIndex = L1_1
return L0_1
