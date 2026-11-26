local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Models.AvatarSet"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = {}
avatarSets = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "Wrong Data"
  L4_2 = _NAME
  L5_2 = "number"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  if A0_2 == 0 then
    A0_2 = 1
  end
  L1_2 = avatarSets
  L1_2 = L1_2[A0_2]
  if L1_2 ~= nil then
    L1_2 = avatarSets
    L1_2 = L1_2[A0_2]
    return L1_2
  end
  L1_2 = Constants
  L1_2 = L1_2.Path_Assets
  L2_2 = "Avatars/AvatarSet"
  L3_2 = A0_2
  L4_2 = ".png"
  L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2
  L2_2 = avatarSets
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.id = A0_2
  L6_2 = L1_1
  L6_2 = L6_2.Fruits
  L5_2.name = L6_2
  L5_2.smallImage = L1_2
  L5_2.numberOfFreeAvatars = 0
  L3_2 = L3_2(L4_2, L5_2)
  L2_2[A0_2] = L3_2
  L2_2 = avatarSets
  L2_2 = L2_2[A0_2]
  return L2_2
end

getAvatarSetByID = L2_1
