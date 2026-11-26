local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1

function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = type
  L1_2 = package
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2 == "table"
  return L0_2
end

L1_1 = L0_1
L1_1 = L1_1()
L1_1 = not L1_1
L2_1 = L0_1
L2_1 = L2_1()
if L2_1 then
  L2_1 = os
  L2_1 = L2_1.getenv
  L3_1 = "ANSICON"
  L2_1 = L2_1(L3_1)
  L1_1 = L2_1
end
L2_1 = {}
L2_1.reset = 0
L2_1.bright = 1
L2_1.dim = 2
L2_1.underline = 4
L2_1.blink = 5
L2_1.reverse = 7
L2_1.hidden = 8
L2_1.black = 30
L2_1.red = 31
L2_1.green = 32
L2_1.yellow = 33
L2_1.blue = 34
L2_1.magenta = 35
L2_1.cyan = 36
L2_1.white = 37
L2_1.blackbg = 40
L2_1.redbg = 41
L2_1.greenbg = 42
L2_1.yellowbg = 43
L2_1.bluebg = 44
L2_1.magentabg = 45
L2_1.cyanbg = 46
L2_1.whitebg = 47
L3_1 = string
L3_1 = L3_1.char
L4_1 = 27
L3_1 = L3_1(L4_1)
L4_1 = "[%dm"
L3_1 = L3_1 .. L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.format
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L1_1
  if not L1_2 then
    L1_2 = ""
    return L1_2
  end
  L1_2 = {}
  L2_2 = nil
  L4_2 = A0_2
  L3_2 = A0_2.gmatch
  L5_2 = "%w+"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  for L6_2 in L3_2, L4_2, L5_2 do
    L7_2 = L2_1
    L2_2 = L7_2[L6_2]
    L7_2 = assert
    L8_2 = L2_2
    L9_2 = "Unknown key: "
    L10_2 = L6_2
    L9_2 = L9_2 .. L10_2
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L4_1
    L10_2 = L2_2
    L9_2, L10_2 = L9_2(L10_2)
    L7_2(L8_2, L9_2, L10_2)
  end
  L3_2 = table
  L3_2 = L3_2.concat
  L4_2 = L1_2
  return L3_2(L4_2)
end

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = string
  L1_2 = L1_2.gsub
  L2_2 = A0_2
  L3_2 = "(%%{(.-)})"
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = L5_1
    L3_3 = A1_3
    return L2_3(L3_3)
  end
  
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  return A0_2
end

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = tostring
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = ""
  end
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L1_2 = L6_1
  L2_2 = "%{reset}"
  L3_2 = A0_2
  L4_2 = "%{reset}"
  L2_2 = L2_2 .. L3_2 .. L4_2
  return L1_2(L2_2)
end

L8_1 = setmetatable
L9_1 = {}
L9_1.noReset = L6_1
L10_1 = {}

function L11_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L7_1
  L3_2 = A1_2
  return L2_2(L3_2)
end

L10_1.__call = L11_1
return L8_1(L9_1, L10_1)
