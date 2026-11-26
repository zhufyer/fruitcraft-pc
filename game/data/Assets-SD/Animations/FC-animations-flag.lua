local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = {}
L3_1.x = 90
L3_1.y = 28
L3_1.width = 20
L3_1.height = 24
L4_1 = {}
L4_1.x = 90
L4_1.y = 2
L4_1.width = 20
L4_1.height = 24
L5_1 = {}
L5_1.x = 68
L5_1.y = 28
L5_1.width = 20
L5_1.height = 24
L6_1 = {}
L6_1.x = 68
L6_1.y = 2
L6_1.width = 20
L6_1.height = 24
L7_1 = {}
L7_1.x = 46
L7_1.y = 28
L7_1.width = 20
L7_1.height = 24
L8_1 = {}
L8_1.x = 46
L8_1.y = 2
L8_1.width = 20
L8_1.height = 24
L9_1 = {}
L9_1.x = 24
L9_1.y = 28
L9_1.width = 20
L9_1.height = 24
L10_1 = {}
L10_1.x = 24
L10_1.y = 2
L10_1.width = 20
L10_1.height = 24
L11_1 = {}
L11_1.x = 2
L11_1.y = 28
L11_1.width = 20
L11_1.height = 24
L12_1 = {}
L12_1.x = 2
L12_1.y = 2
L12_1.width = 20
L12_1.height = 24
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
L1_1.sheetContentWidth = 128
L1_1.sheetContentHeight = 64
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
