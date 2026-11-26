local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = {}
L3_1.x = 2
L3_1.y = 2
L3_1.width = 43
L3_1.height = 24
L3_1.sourceX = 0
L3_1.sourceY = 0
L3_1.sourceWidth = 53
L3_1.sourceHeight = 50
L4_1 = {}
L4_1.x = 2
L4_1.y = 28
L4_1.width = 42
L4_1.height = 28
L4_1.sourceX = 11
L4_1.sourceY = 23
L4_1.sourceWidth = 53
L4_1.sourceHeight = 50
L5_1 = {}
L5_1.x = 47
L5_1.y = 2
L5_1.width = 15
L5_1.height = 11
L5_1.sourceX = 0
L5_1.sourceY = 0
L5_1.sourceWidth = 15
L5_1.sourceHeight = 11
L6_1 = {}
L6_1.x = 46
L6_1.y = 31
L6_1.width = 12
L6_1.height = 14
L6_1.sourceX = 0
L6_1.sourceY = 0
L6_1.sourceWidth = 12
L6_1.sourceHeight = 14
L7_1 = {}
L7_1.x = 47
L7_1.y = 15
L7_1.width = 12
L7_1.height = 14
L7_1.sourceX = 0
L7_1.sourceY = 0
L7_1.sourceWidth = 12
L7_1.sourceHeight = 14
L8_1 = {}
L8_1.x = 2
L8_1.y = 58
L8_1.width = 33
L8_1.height = 33
L8_1.sourceX = 0
L8_1.sourceY = 0
L8_1.sourceWidth = 32
L8_1.sourceHeight = 33
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
L2_1[6] = L8_1
L1_1.frames = L2_1
L1_1.sheetContentWidth = 64
L1_1.sheetContentHeight = 128
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
