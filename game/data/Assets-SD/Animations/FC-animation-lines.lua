local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = {}
L3_1.x = 574
L3_1.y = 1088
L3_1.width = 570
L3_1.height = 360
L4_1 = {}
L4_1.x = 1146
L4_1.y = 726
L4_1.width = 570
L4_1.height = 360
L5_1 = {}
L5_1.x = 574
L5_1.y = 726
L5_1.width = 570
L5_1.height = 360
L6_1 = {}
L6_1.x = 2
L6_1.y = 1450
L6_1.width = 570
L6_1.height = 360
L7_1 = {}
L7_1.x = 2
L7_1.y = 1088
L7_1.width = 570
L7_1.height = 360
L8_1 = {}
L8_1.x = 2
L8_1.y = 726
L8_1.width = 570
L8_1.height = 360
L9_1 = {}
L9_1.x = 1146
L9_1.y = 364
L9_1.width = 570
L9_1.height = 360
L10_1 = {}
L10_1.x = 574
L10_1.y = 364
L10_1.width = 570
L10_1.height = 360
L11_1 = {}
L11_1.x = 2
L11_1.y = 364
L11_1.width = 570
L11_1.height = 360
L12_1 = {}
L12_1.x = 1146
L12_1.y = 2
L12_1.width = 570
L12_1.height = 360
L13_1 = {}
L13_1.x = 574
L13_1.y = 2
L13_1.width = 570
L13_1.height = 360
L14_1 = {}
L14_1.x = 2
L14_1.y = 2
L14_1.width = 570
L14_1.height = 360
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
L2_1[11] = L13_1
L2_1[12] = L14_1
L1_1.frames = L2_1
L1_1.sheetContentWidth = 2048
L1_1.sheetContentHeight = 2048
L0_1.sheet = L1_1
L1_1 = {}
L1_1["moving lines_0"] = 1
L1_1["moving lines_1"] = 2
L1_1["moving lines_10"] = 3
L1_1["moving lines_11"] = 4
L1_1["moving lines_2"] = 5
L1_1["moving lines_3"] = 6
L1_1["moving lines_4"] = 7
L1_1["moving lines_5"] = 8
L1_1["moving lines_6"] = 9
L1_1["moving lines_7"] = 10
L1_1["moving lines_8"] = 11
L1_1["moving lines_9"] = 12
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
