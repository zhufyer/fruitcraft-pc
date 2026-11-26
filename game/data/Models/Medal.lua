local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = {}
  end
  obj = L2_2
  L2_2 = setmetatable
  L3_2 = obj
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  if A1_2 ~= nil then
    L2_2 = obj
    L3_2 = A1_2.id
    if not L3_2 then
      L3_2 = 0
    end
    L2_2.id = L3_2
    L2_2 = obj
    L3_2 = A1_2.name
    if not L3_2 then
      L3_2 = "name not set"
    end
    L2_2.name = L3_2
    L2_2 = obj
    L3_2 = A1_2.image
    if not L3_2 then
      L3_2 = Constants
      L3_2 = L3_2.Path_MissingImage
    end
    L2_2.image = L3_2
    L2_2 = obj
    L3_2 = A1_2.isAvailable
    if not L3_2 then
      L3_2 = false
    end
    L2_2.isAvailable = L3_2
    L2_2 = obj
    L3_2 = A1_2.description
    if not L3_2 then
      L3_2 = ""
    end
    L2_2.description = L3_2
    L2_2 = obj
    L3_2 = A1_2.count
    if not L3_2 then
      L3_2 = 0
    end
    L2_2.count = L3_2
  else
    L2_2 = obj
    L2_2.id = 0
    L2_2 = obj
    L2_2.name = "name not set"
    L2_2 = obj
    L3_2 = Constants
    L3_2 = L3_2.Path_MissingImage
    L2_2.image = L3_2
    L2_2 = obj
    L2_2.isAvailable = false
    L2_2 = obj
    L2_2.description = ""
    L2_2 = obj
    L2_2.count = 0
  end
  L2_2 = obj
  return L2_2
end

new = L0_1
