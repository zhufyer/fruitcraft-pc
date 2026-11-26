local L0_1, L1_1
L0_1 = {}

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L1_3 = string
    L1_3 = L1_3.match
    L2_3 = A0_3
    L3_3 = " ? ?%a+: ([+-]?%d+), ?([+-]?%d+), ?([+-]?%d+), ?([+-]?%d+)"
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3, L3_3)
    L5_3 = tonumber
    L6_3 = L1_3
    L5_3 = L5_3(L6_3)
    L6_3 = tonumber
    L7_3 = L2_3
    L6_3 = L6_3(L7_3)
    L7_3 = tonumber
    L8_3 = L3_3
    L7_3 = L7_3(L8_3)
    L8_3 = tonumber
    L9_3 = L4_3
    L8_3 = L8_3(L9_3)
    L9_3 = L5_3 or L9_3
    L9_3 = L6_3 or L9_3
    L9_3 = L7_3 or L9_3
    L9_3 = L8_3 or L9_3
    if L5_3 and L6_3 and L7_3 and L8_3 then
      L9_3 = {}
      L10_3 = L5_3
      L11_3 = L6_3
      L12_3 = L7_3
      L13_3 = L8_3
      L9_3[1] = L10_3
      L9_3[2] = L11_3
      L9_3[3] = L12_3
      L9_3[4] = L13_3
    end
    return L9_3
  end
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = string
    L1_3 = L1_3.match
    L2_3 = A0_3
    L3_3 = " ? ?%a+: ([+-]?%d+), ?([+-]?%d+)"
    L1_3, L2_3 = L1_3(L2_3, L3_3)
    L3_3 = tonumber
    L4_3 = L1_3
    L3_3 = L3_3(L4_3)
    L4_3 = tonumber
    L5_3 = L2_3
    L4_3 = L4_3(L5_3)
    L5_3 = L3_3 or L5_3
    L5_3 = L4_3 or L5_3
    if L3_3 and L4_3 then
      L5_3 = {}
      L6_3 = L3_3
      L7_3 = L4_3
      L5_3[1] = L6_3
      L5_3[2] = L7_3
    end
    return L5_3
  end
  
  if not A0_2 then
    L4_2 = error
    L5_2 = "Error: "
    L6_2 = A0_2
    L7_2 = ".atlas"
    L8_2 = " doesn't exist!"
    L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
    L4_2(L5_2)
    L4_2 = nil
    return L4_2
  end
  L4_2 = spine
  L4_2 = L4_2.utils
  L4_2 = L4_2.readFile
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L5_2 = error
    L6_2 = "Error: "
    L7_2 = A0_2
    L8_2 = ".atlas"
    L9_2 = " unable to read!"
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
    L5_2(L6_2)
    L5_2 = nil
    return L5_2
  end
  L5_2 = {}
  L6_2 = string
  L6_2 = L6_2.gmatch
  L7_2 = L4_2
  L8_2 = "(.-)\r?\n"
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L6_2
  L8_2 = nil
  L9_2 = nil
  for L10_2 in L7_2, L8_2, L9_2 do
    L11_2 = #L10_2
    if L11_2 == 0 then
      L11_2 = L6_2
      L11_2 = L11_2()
      L10_2 = L11_2
      if L10_2 then
        L11_2 = {}
        L11_2.name = L10_2
        L12_2 = L6_2
        L12_2 = L12_2()
        L10_2 = L12_2
        L12_2 = L3_2
        L13_2 = L10_2
        L12_2 = L12_2(L13_2)
        L11_2.size = L12_2
        L12_2 = L11_2.size
        if L12_2 then
          L12_2 = L6_2
          L12_2 = L12_2()
          L10_2 = L12_2
        end
        L12_2 = string
        L12_2 = L12_2.match
        L13_2 = L10_2
        L14_2 = "%a+: (.+)"
        L12_2 = L12_2(L13_2, L14_2)
        L11_2.format = L12_2
        L12_2 = {}
        L13_2 = string
        L13_2 = L13_2.match
        L14_2 = L6_2
        L14_2 = L14_2()
        L15_2 = "%a+: (.+),(.+)"
        L13_2, L14_2, L15_2 = L13_2(L14_2, L15_2)
        L12_2[1] = L13_2
        L12_2[2] = L14_2
        L12_2[3] = L15_2
        L11_2.filter = L12_2
        L12_2 = string
        L12_2 = L12_2.match
        L13_2 = L6_2
        L13_2 = L13_2()
        L14_2 = "%a+: (.+)"
        L12_2 = L12_2(L13_2, L14_2)
        L11_2.wrap = L12_2
        L12_2 = {}
        L11_2.regions = L12_2
        L12_2 = table
        L12_2 = L12_2.insert
        L13_2 = L5_2
        L14_2 = L11_2
        L12_2(L13_2, L14_2)
      else
        break
      end
    else
      L11_2 = {}
      L11_2.name = L10_2
      L12_2 = string
      L12_2 = L12_2.match
      L13_2 = L6_2
      L13_2 = L13_2()
      L14_2 = "%a+: (.+)"
      L12_2 = L12_2(L13_2, L14_2)
      L12_2 = L12_2 == "true"
      L11_2.rotate = L12_2
      L12_2 = L3_2
      L13_2 = L6_2
      L13_2, L14_2, L15_2 = L13_2()
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L11_2.xy = L12_2
      L12_2 = L3_2
      L13_2 = L6_2
      L13_2, L14_2, L15_2 = L13_2()
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L11_2.size = L12_2
      L12_2 = L6_2
      L12_2 = L12_2()
      L10_2 = L12_2
      L12_2 = L2_2
      L13_2 = L10_2
      L12_2 = L12_2(L13_2)
      L11_2.splits = L12_2
      L12_2 = L11_2.splits
      if L12_2 then
        L12_2 = L6_2
        L12_2 = L12_2()
        L10_2 = L12_2
        L12_2 = L2_2
        L13_2 = L10_2
        L12_2 = L12_2(L13_2)
        L11_2.pad = L12_2
        L12_2 = L11_2.pad
        if L12_2 then
          L12_2 = L6_2
          L12_2 = L12_2()
          L10_2 = L12_2
        end
      end
      L12_2 = L3_2
      L13_2 = L10_2
      L12_2 = L12_2(L13_2)
      L11_2.orig = L12_2
      L12_2 = L3_2
      L13_2 = L6_2
      L13_2, L14_2, L15_2 = L13_2()
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L11_2.offset = L12_2
      L12_2 = tonumber
      L13_2 = string
      L13_2 = L13_2.match
      L14_2 = L6_2
      L14_2 = L14_2()
      L15_2 = "%a+: ([+-]?%d+)"
      L13_2, L14_2, L15_2 = L13_2(L14_2, L15_2)
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L11_2.index = L12_2
      L12_2 = table
      L12_2 = L12_2.insert
      L13_2 = #L5_2
      L13_2 = L5_2[L13_2]
      L13_2 = L13_2.regions
      L14_2 = L11_2
      L12_2(L13_2, L14_2)
    end
  end
  return L5_2
end

L0_1.parse = L1_1
return L0_1
