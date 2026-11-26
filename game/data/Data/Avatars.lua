local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Models.Avatar"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Views.CachedImageView"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Data.AvatarSets"
L3_1 = L3_1(L4_1)
L4_1 = {}
avatars = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "Wrong Data"
  L4_2 = _NAME
  L5_2 = "number"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  if A0_2 == 0 then
    A0_2 = 1
  end
  L1_2 = avatars
  L1_2 = L1_2[A0_2]
  if L1_2 ~= nil then
    L1_2 = avatars
    L1_2 = L1_2[A0_2]
    return L1_2
  end
  L1_2 = Constants
  L1_2 = L1_2.Path_Assets
  L2_2 = "Avatars/Avatar"
  L3_2 = A0_2
  L4_2 = ".png"
  L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2
  L2_2 = avatars
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.id = A0_2
  L5_2.image = L1_2
  L6_2 = findAvatarSet
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L5_2.avatarSet = L6_2
  L5_2.isAvailable = false
  L6_2 = "Avatar"
  L7_2 = A0_2
  L6_2 = L6_2 .. L7_2
  L5_2.name = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2[A0_2] = L3_2
  L2_2 = avatars
  L2_2 = L2_2[A0_2]
  return L2_2
end

getAvatarByID = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L1_2 = L1_2.getAvatarSetByID
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A0_2 / 100
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 + 1
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.id
  return L1_2
end

findAvatarSet = L4_1
