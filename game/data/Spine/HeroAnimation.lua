local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "spine-corona.spine"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Views.CachedImageView"
L1_1 = L1_1(L2_1)

function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if not A6_2 then
    L7_2 = {}
    A6_2 = L7_2
  end
  L7_2 = id
  A6_2.id = L7_2
  A6_2.hasToFlipX = A5_2
  L7_2 = setmetatable
  L8_2 = A6_2
  L9_2 = A0_2
  L7_2(L8_2, L9_2)
  A0_2.__index = A0_2
  L7_2 = display
  L7_2 = L7_2.newGroup
  L7_2 = L7_2()
  L8_2 = L0_1
  L8_2 = L8_2.SkeletonJson
  L8_2 = L8_2.new
  L8_2 = L8_2()
  L9_2 = A3_2 or L9_2
  if not A3_2 then
    L9_2 = 0.2
  end
  L8_2.scale = L9_2
  L10_2 = L8_2
  L9_2 = L8_2.readSkeletonDataFile
  L11_2 = A2_2
  L12_2 = A4_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = L0_1
  L10_2 = L10_2.Skeleton
  L10_2 = L10_2.new
  L11_2 = L9_2
  L10_2 = L10_2(L11_2)
  A6_2.skeleton = L10_2
  L10_2 = A6_2.skeleton
  
  function L11_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L2_3 = L1_1
    L3_3 = L2_3
    L2_3 = L2_3.new
    L4_3 = L7_2
    L5_3 = Constants
    L5_3 = L5_3.Path_HeroesOnResource
    L6_3 = A1_2
    L7_3 = "/"
    L8_3 = A1_3.name
    L9_3 = ".png"
    L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3
    L6_3 = 0
    L7_3 = 0
    L8_3 = nil
    L9_3 = true
    L10_3 = A1_2
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    L3_3 = ".png"
    L4_3 = L2_3.imagePostfix
    if L4_3 then
      L4_3 = L2_3.imagePostfix
      L5_3 = L3_3
      L3_3 = L4_3 .. L5_3
    end
    L4_3 = string
    L4_3 = L4_3.match
    L5_3 = L2_3.baseDir
    L6_3 = "ResourceDirectory"
    L4_3 = L4_3(L5_3, L6_3)
    if L4_3 then
      L4_3 = display
      L4_3 = L4_3.newImage
      L5_3 = L7_2
      L6_3 = Constants
      L6_3 = L6_3.Path_HeroesOnResource
      L7_3 = A1_2
      L8_3 = "/"
      L9_3 = A1_3.name
      L10_3 = L3_3
      L6_3 = L6_3 .. L7_3 .. L8_3 .. L9_3 .. L10_3
      return L4_3(L5_3, L6_3)
    else
      L4_3 = string
      L4_3 = L4_3.match
      L5_3 = L2_3.baseDir
      L6_3 = "DocumentsDirectory"
      L4_3 = L4_3(L5_3, L6_3)
      if L4_3 then
        L4_3 = log3
        L5_3 = "find images of hero on Documents"
        L4_3(L5_3)
        L4_3 = display
        L4_3 = L4_3.newImage
        L5_3 = L7_2
        L6_3 = Constants
        L6_3 = L6_3.Path_HeroesOnDocument
        L7_3 = A1_2
        L8_3 = "/"
        L9_3 = A1_3.name
        L10_3 = L3_3
        L6_3 = L6_3 .. L7_3 .. L8_3 .. L9_3 .. L10_3
        L7_3 = system
        L7_3 = L7_3.DocumentsDirectory
        return L4_3(L5_3, L6_3, L7_3)
      end
    end
  end
  
  L10_2.createImage = L11_2
  L10_2 = A6_2.skeleton
  L11_2 = L10_2
  L10_2 = L10_2.setToSetupPose
  L10_2(L11_2)
  L10_2 = L0_1
  L10_2 = L10_2.AnimationStateData
  L10_2 = L10_2.new
  L11_2 = L9_2
  L10_2 = L10_2(L11_2)
  L11_2 = L0_1
  L11_2 = L11_2.AnimationState
  L11_2 = L11_2.new
  L12_2 = L10_2
  L11_2 = L11_2(L12_2)
  A6_2.state = L11_2
  L12_2 = A6_2
  L11_2 = A6_2.setAnimation
  L11_2(L12_2)
  L11_2 = A6_2.skeleton
  L11_2 = L11_2.group
  A6_2.view = L11_2
  return A6_2
end

new = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2.lastTime = 0
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = "enterFrame"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end

addEnterFrame = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = "enterFrame"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end

removeEnterFrame = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.time
  L2_2 = L2_2 / 1000
  L3_2 = A0_2.lastTime
  L3_2 = L2_2 - L3_2
  A0_2.lastTime = L2_2
  L4_2 = A0_2.state
  L5_2 = L4_2
  L4_2 = L4_2.update
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.state
  L5_2 = L4_2
  L4_2 = L4_2.apply
  L6_2 = A0_2.skeleton
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.skeleton
  L5_2 = L4_2
  L4_2 = L4_2.updateWorldTransform
  L4_2(L5_2)
end

enterFrame = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.skeleton
  L2_2 = L1_2
  L1_2 = L1_2.setToSetupPose
  L1_2(L2_2)
  L1_2 = A0_2.state
  L2_2 = L1_2
  L1_2 = L1_2.setAnimationByName
  L3_2 = 0
  L4_2 = "animation"
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.hasToFlipX
  if L1_2 then
    L1_2 = A0_2.skeleton
    L1_2.flipX = true
  end
end

setAnimation = L2_1

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.skeleton
  L2_2 = L1_2
  L1_2 = L1_2.setToSetupPose
  L1_2(L2_2)
end

setToSetupPoseAnimation = L2_1
