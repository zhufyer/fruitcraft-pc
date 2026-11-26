local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = {}
L3_1.x = 180
L3_1.y = 56
L3_1.width = 40
L3_1.height = 48
L4_1 = {}
L4_1.x = 180
L4_1.y = 4
L4_1.width = 40
L4_1.height = 48
L5_1 = {}
L5_1.x = 136
L5_1.y = 56
L5_1.width = 40
L5_1.height = 48
L6_1 = {}
L6_1.x = 136
L6_1.y = 4
L6_1.width = 40
L6_1.height = 48
L7_1 = {}
L7_1.x = 92
L7_1.y = 56
L7_1.width = 40
L7_1.height = 48
L8_1 = {}
L8_1.x = 92
L8_1.y = 4
L8_1.width = 40
L8_1.height = 48
L9_1 = {}
L9_1.x = 48
L9_1.y = 56
L9_1.width = 40
L9_1.height = 48
L10_1 = {}
L10_1.x = 48
L10_1.y = 4
L10_1.width = 40
L10_1.height = 48
L11_1 = {}
L11_1.x = 4
L11_1.y = 56
L11_1.width = 40
L11_1.height = 48
L12_1 = {}
L12_1.x = 4
L12_1.y = 4
L12_1.width = 40
L12_1.height = 48
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
L2_1[6] = L8_1
L2_1[7] = L9_1
L2_1[8] = L10_1
L2_1[9] = L11_1
L2_1[10] = L12_1
L1_1.frames = L2_1
L1_1.sheetContentWidth = 256
L1_1.sheetContentHeight = 128
L0_1.sheet = L1_1
L1_1 = {}
L1_1.Flag_0 = 1
L1_1.Flag_1 = 2
L1_1.Flag_2 = 3
L1_1.Flag_3 = 4
L1_1.Flag_4 = 5
L1_1.Flag_5 = 6
L1_1.Flag_6 = 7
L1_1.Flag_7 = 8
L1_1.Flag_8 = 9
L1_1.Flag_9 = 10
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
