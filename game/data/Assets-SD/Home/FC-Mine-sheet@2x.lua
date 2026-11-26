local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = {}
L3_1.x = 4
L3_1.y = 4
L3_1.width = 86
L3_1.height = 48
L3_1.sourceX = 0
L3_1.sourceY = 0
L3_1.sourceWidth = 106
L3_1.sourceHeight = 101
L4_1 = {}
L4_1.x = 4
L4_1.y = 56
L4_1.width = 84
L4_1.height = 56
L4_1.sourceX = 22
L4_1.sourceY = 46
L4_1.sourceWidth = 106
L4_1.sourceHeight = 101
L5_1 = {}
L5_1.x = 94
L5_1.y = 4
L5_1.width = 30
L5_1.height = 22
L5_1.sourceX = 0
L5_1.sourceY = 0
L5_1.sourceWidth = 29
L5_1.sourceHeight = 22
L6_1 = {}
L6_1.x = 92
L6_1.y = 62
L6_1.width = 24
L6_1.height = 28
L6_1.sourceX = 0
L6_1.sourceY = 0
L6_1.sourceWidth = 23
L6_1.sourceHeight = 28
L7_1 = {}
L7_1.x = 94
L7_1.y = 30
L7_1.width = 24
L7_1.height = 28
L7_1.sourceX = 0
L7_1.sourceY = 0
L7_1.sourceWidth = 23
L7_1.sourceHeight = 28
L8_1 = {}
L8_1.x = 4
L8_1.y = 116
L8_1.width = 66
L8_1.height = 66
L8_1.sourceX = 0
L8_1.sourceY = 0
L8_1.sourceWidth = 65
L8_1.sourceHeight = 65
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
L2_1[6] = L8_1
L1_1.frames = L2_1
L1_1.sheetContentWidth = 128
L1_1.sheetContentHeight = 256
L0_1.sheet = L1_1
L1_1 = {}
L1_1.Chimney1 = 1
L1_1.Chimney2 = 2
L1_1.Cloud = 3
L1_1["Empty Wagon"] = 4
L1_1["FC-wagon"] = 5
L1_1.Ring = 6
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
