local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1
L0_1 = require
L1_1 = "Language_en"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language_fa"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language_ar"
L2_1 = L2_1(L3_1)
L3_1 = ""
L4_1 = L3_1
L5_1 = "English keyword,English full text,Full text translation,Tranlsation2,Notes\n"
L3_1 = L4_1 .. L5_1
L4_1 = nil
L5_1 = {}
L6_1 = pairs
L7_1 = L0_1
L6_1, L7_1, L8_1 = L6_1(L7_1)
for L9_1, L10_1 in L6_1, L7_1, L8_1 do
  L11_1 = table
  L11_1 = L11_1.insert
  L12_1 = L5_1
  L13_1 = L9_1
  L11_1(L12_1, L13_1)
end
L6_1 = table
L6_1 = L6_1.sort
L7_1 = L5_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = string
  L2_2 = L2_2.lower
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = string
  L3_2 = L3_2.lower
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 < L3_2
  return L2_2
end

L6_1(L7_1, L8_1)
L6_1 = pairs
L7_1 = L5_1
L6_1, L7_1, L8_1 = L6_1(L7_1)
for L9_1, L10_1 in L6_1, L7_1, L8_1 do
  L11_1 = L0_1[L10_1]
  v = L11_1
  L11_1 = string
  L11_1 = L11_1.gsub
  L12_1 = v
  L13_1 = "\n"
  L14_1 = "\\n"
  L11_1 = L11_1(L12_1, L13_1, L14_1)
  L4_1 = L11_1
  L11_1 = string
  L11_1 = L11_1.gsub
  L12_1 = L4_1
  L13_1 = "\""
  L14_1 = "\"\""
  L11_1 = L11_1(L12_1, L13_1, L14_1)
  L4_1 = L11_1
  L11_1 = string
  L11_1 = L11_1.gsub
  L12_1 = L4_1
  L13_1 = ","
  L14_1 = "\\,"
  L11_1 = L11_1(L12_1, L13_1, L14_1)
  L4_1 = L11_1
  L11_1 = string
  L11_1 = L11_1.gsub
  L12_1 = L1_1[L10_1]
  L13_1 = "\n"
  L14_1 = "\\n"
  L11_1 = L11_1(L12_1, L13_1, L14_1)
  tmp2 = L11_1
  L11_1 = string
  L11_1 = L11_1.gsub
  L12_1 = tmp2
  L13_1 = "\""
  L14_1 = "\"\""
  L11_1 = L11_1(L12_1, L13_1, L14_1)
  tmp2 = L11_1
  L11_1 = string
  L11_1 = L11_1.gsub
  L12_1 = tmp2
  L13_1 = ","
  L14_1 = "\\,"
  L11_1 = L11_1(L12_1, L13_1, L14_1)
  tmp2 = L11_1
  L11_1 = string
  L11_1 = L11_1.gsub
  L12_1 = L2_1[L10_1]
  L13_1 = "\n"
  L14_1 = "\\n"
  L11_1 = L11_1(L12_1, L13_1, L14_1)
  tmp3 = L11_1
  L11_1 = string
  L11_1 = L11_1.gsub
  L12_1 = tmp3
  L13_1 = "\""
  L14_1 = "\"\""
  L11_1 = L11_1(L12_1, L13_1, L14_1)
  tmp3 = L11_1
  L11_1 = string
  L11_1 = L11_1.gsub
  L12_1 = tmp3
  L13_1 = ","
  L14_1 = "\\,"
  L11_1 = L11_1(L12_1, L13_1, L14_1)
  tmp3 = L11_1
  L11_1 = L2_1[L10_1]
  if L11_1 == L10_1 then
    L11_1 = L3_1
    L12_1 = L10_1
    L13_1 = ","
    L14_1 = "\""
    L15_1 = L4_1
    L16_1 = "\""
    L17_1 = ",\""
    L18_1 = tmp2
    L19_1 = "\",\""
    L20_1 = tmp3
    L21_1 = "\", "
    L22_1 = "\n"
    L3_1 = L11_1 .. L12_1 .. L13_1 .. L14_1 .. L15_1 .. L16_1 .. L17_1 .. L18_1 .. L19_1 .. L20_1 .. L21_1 .. L22_1
  end
end
L6_1 = print
L7_1 = L3_1
L6_1(L7_1)
