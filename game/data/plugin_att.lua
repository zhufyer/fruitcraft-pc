local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "CoronaLibrary"
L0_1 = L0_1(L1_1)
L2_1 = L0_1
L1_1 = L0_1.new
L3_1 = {}
L3_1.name = "plugin.att"
L3_1.publisherId = "com.solar2d"
L1_1 = L1_1(L2_1, L3_1)

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "WARNING: The '"
  L3_2 = L1_1
  L3_2 = L3_2.name
  L4_2 = "' library is not available on this platform."
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2(L2_2)
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == "table" then
    L1_2 = type
    L2_2 = A0_2.att
    L1_2 = L1_2(L2_2)
    if L1_2 == "function" then
      A0_2 = A0_2.att
    end
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == "function" then
    L1_2 = A0_2
    L2_2 = {}
    L2_2.name = "att"
    L2_2.status = "unavailable"
    L1_2(L2_2)
  end
end

L1_1.request = L2_1
L1_1.status = "unavailable"

function L2_1()
  local L0_2, L1_2
  L0_2 = "00000000-0000-0000-0000-000000000000"
  return L0_2
end

L1_1.getAdId = L2_1
return L1_1
