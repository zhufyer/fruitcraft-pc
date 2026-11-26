local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = {}
L3_1.x = 152
L3_1.y = 242
L3_1.width = 76
L3_1.height = 76
L4_1 = {}
L4_1.x = 4
L4_1.y = 242
L4_1.width = 144
L4_1.height = 18
L5_1 = {}
L5_1.x = 4
L5_1.y = 4
L5_1.width = 176
L5_1.height = 30
L6_1 = {}
L6_1.x = 4
L6_1.y = 264
L6_1.width = 142
L6_1.height = 50
L7_1 = {}
L7_1.x = 4
L7_1.y = 174
L7_1.width = 174
L7_1.height = 64
L8_1 = {}
L8_1.x = 4
L8_1.y = 106
L8_1.width = 174
L8_1.height = 64
L9_1 = {}
L9_1.x = 4
L9_1.y = 38
L9_1.width = 174
L9_1.height = 64
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
L2_1[6] = L8_1
L2_1[7] = L9_1
L1_1.frames = L2_1
L1_1.sheetContentWidth = 256
L1_1.sheetContentHeight = 512
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
