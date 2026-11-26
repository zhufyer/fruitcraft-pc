local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "spine-corona.spine"
L0_1 = L0_1(L1_1)
L1_1 = true

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if not A2_2 then
    L3_2 = {}
    A2_2 = L3_2
  end
  L3_2 = setmetatable
  L4_2 = A2_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  A0_2.__index = A0_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  L4_2 = 0
  L5_2 = L0_1
  L5_2 = L5_2.SkeletonJson
  L5_2 = L5_2.new
  L5_2 = L5_2()
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 / 480
  L5_2.scale = L6_2
  L7_2 = L5_2
  L6_2 = L5_2.readSkeletonDataFile
  L8_2 = A1_2.jsonPath
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L0_1
  L7_2 = L7_2.Skeleton
  L7_2 = L7_2.new
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  A2_2.skeleton = L7_2
  L7_2 = A2_2.skeleton
  
  function L8_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = display
    L2_3 = L2_3.newImage
    L3_3 = L3_2
    L4_3 = Constants
    L4_3 = L4_3.Path_Assets
    L5_3 = A1_2
    L5_3 = L5_3.picturesPath
    L6_3 = A1_3.name
    L7_3 = ".png"
    L4_3 = L4_3 .. L5_3 .. L6_3 .. L7_3
    return L2_3(L3_3, L4_3)
  end
  
  L7_2.createImage = L8_2
  L7_2 = A2_2.skeleton
  L7_2.flipX = false
  L7_2 = A2_2.skeleton
  L7_2.flipY = false
  L7_2 = A1_2.skin
  if L7_2 then
    L7_2 = A2_2.skeleton
    L8_2 = L7_2
    L7_2 = L7_2.setSkin
    L9_2 = A1_2.skin
    L7_2(L8_2, L9_2)
  end
  L7_2 = A2_2.skeleton
  L8_2 = L7_2
  L7_2 = L7_2.setToSetupPose
  L7_2(L8_2)
  L7_2 = L0_1
  L7_2 = L7_2.AnimationStateData
  L7_2 = L7_2.new
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  L8_2 = L0_1
  L8_2 = L8_2.AnimationState
  L8_2 = L8_2.new
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  A2_2.state = L8_2
  L8_2 = A1_2.baseAnimate
  if L8_2 then
    L8_2 = A2_2.state
    L9_2 = L8_2
    L8_2 = L8_2.setAnimationByName
    L10_2 = 0
    L11_2 = A1_2.baseAnimate
    L12_2 = true
    L8_2(L9_2, L10_2, L11_2, L12_2)
  end
  
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = L4_2
    L1_3 = A1_2
    L1_3 = L1_3.addAnimates
    L1_3 = #L1_3
    if L0_3 < L1_3 then
      L0_3 = L4_2
      L0_3 = L0_3 + 1
      L4_2 = L0_3
    else
      L0_3 = 1
      L4_2 = L0_3
    end
    L0_3 = nil
    L1_3 = nil
    L2_3 = A1_2
    L2_3 = L2_3.addAnimates
    L3_3 = L4_2
    L2_3 = L2_3[L3_3]
    L3_3 = A1_2
    L3_3 = L3_3.trackIndex
    if L3_3 then
      L3_3 = L4_2
      L4_3 = A1_2
      L4_3 = L4_3.trackIndex
      L4_3 = #L4_3
      if L3_3 <= L4_3 then
        L3_3 = A1_2
        L3_3 = L3_3.trackIndex
        L4_3 = L4_2
        L0_3 = L3_3[L4_3]
    end
    else
      L0_3 = 1
    end
    L3_3 = A1_2
    L3_3 = L3_3.addedAnimationsLoop
    if L3_3 then
      L3_3 = A1_2
      L1_3 = L3_3.addedAnimationsLoop
    else
      L1_3 = false
    end
    L3_3 = A2_2
    L3_3 = L3_3.state
    L4_3 = L3_3
    L3_3 = L3_3.setAnimationByName
    L5_3 = L0_3
    L6_3 = L2_3
    L7_3 = L1_3
    L3_3(L4_3, L5_3, L6_3, L7_3)
    L3_3 = L4_2
    L4_3 = A1_2
    L4_3 = L4_3.delayBeforeChangeAnimation
    L4_3 = #L4_3
    if L3_3 <= L4_3 then
      L3_3 = L4_2
      if L3_3 ~= 1 then
        L3_3 = timer
        L3_3 = L3_3.performWithDelay
        L4_3 = A1_2
        L4_3 = L4_3.delayBeforeChangeAnimation
        L5_3 = L4_2
        L4_3 = L4_3[L5_3]
        
        function L5_3(A0_4)
          local L1_4, L2_4, L3_4
          L1_4 = L1_1
          if L1_4 then
            L1_4 = L8_2
            L2_4 = A0_4
            L3_4 = L4_2
            L1_4(L2_4, L3_4)
          end
        end
        
        L6_3 = 1
        L3_3(L4_3, L5_3, L6_3)
    end
    else
      L3_3 = timer
      L3_3 = L3_3.performWithDelay
      L4_3 = A1_2
      L4_3 = L4_3.delayBeforeChangeAnimation
      L4_3 = L4_3[1]
      
      function L5_3(A0_4)
        local L1_4, L2_4, L3_4
        L1_4 = L1_1
        if L1_4 then
          L1_4 = L8_2
          L2_4 = A0_4
          L3_4 = L4_2
          L1_4(L2_4, L3_4)
        end
      end
      
      L6_3 = 1
      L3_3(L4_3, L5_3, L6_3)
    end
  end
  
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = math
    L0_3 = L0_3.randomseed
    L1_3 = os
    L1_3 = L1_3.time
    L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L1_3()
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    L0_3 = math
    L0_3 = L0_3.random
    L1_3 = 1
    L2_3 = A1_2
    L2_3 = L2_3.addAnimates
    L2_3 = #L2_3
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = nil
    L2_3 = nil
    L3_3 = A1_2
    L3_3 = L3_3.addAnimates
    L3_3 = L3_3[L0_3]
    L4_3 = A1_2
    L4_3 = L4_3.trackIndex
    if L4_3 then
      L4_3 = A1_2
      L4_3 = L4_3.trackIndex
      L4_3 = #L4_3
      if L0_3 <= L4_3 then
        L4_3 = A1_2
        L4_3 = L4_3.trackIndex
        L1_3 = L4_3[L0_3]
    end
    else
      L1_3 = 1
    end
    L4_3 = A1_2
    L4_3 = L4_3.addedAnimationsLoop
    if L4_3 then
      L4_3 = A1_2
      L2_3 = L4_3.addedAnimationsLoop
    else
      L2_3 = false
    end
    L4_3 = A2_2
    L4_3 = L4_3.state
    L5_3 = L4_3
    L4_3 = L4_3.setAnimationByName
    L6_3 = L1_3
    L7_3 = L3_3
    L8_3 = L2_3
    L4_3(L5_3, L6_3, L7_3, L8_3)
    L4_3 = A1_2
    L4_3 = L4_3.delayBeforeChangeAnimation
    L4_3 = #L4_3
    if L0_3 <= L4_3 then
      L4_3 = timer
      L4_3 = L4_3.performWithDelay
      L5_3 = A1_2
      L5_3 = L5_3.delayBeforeChangeAnimation
      L5_3 = L5_3[L0_3]
      
      function L6_3(A0_4)
        local L1_4, L2_4, L3_4
        L1_4 = L1_1
        if L1_4 then
          L1_4 = L9_2
          L2_4 = A0_4
          L3_4 = L0_3
          L1_4(L2_4, L3_4)
        end
      end
      
      L7_3 = 1
      L4_3(L5_3, L6_3, L7_3)
    else
      L4_3 = timer
      L4_3 = L4_3.performWithDelay
      L5_3 = A1_2
      L5_3 = L5_3.delayBeforeChangeAnimation
      L5_3 = L5_3[1]
      
      function L6_3(A0_4)
        local L1_4, L2_4, L3_4
        L1_4 = L1_1
        if L1_4 then
          L1_4 = L9_2
          L2_4 = A0_4
          L3_4 = L0_3
          L1_4(L2_4, L3_4)
        end
      end
      
      L7_3 = 1
      L4_3(L5_3, L6_3, L7_3)
    end
  end
  
  L10_2 = A1_2.addAnimates
  if L10_2 then
    L10_2 = A1_2.makeRandomAnimate
    if L10_2 then
      L10_2 = L9_2
      L10_2()
    else
      L10_2 = L1_1
      if L10_2 then
        L10_2 = L8_2
        L10_2()
      end
    end
  end
  L10_2 = Runtime
  L11_2 = L10_2
  L10_2 = L10_2.addEventListener
  L12_2 = "enterFrame"
  L13_2 = A2_2
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = A2_2.skeleton
  L10_2 = L10_2.group
  A2_2.view = L10_2
  return A2_2
end

new = L2_1
L2_1 = 0
L3_1 = 0

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.time
  L2_2 = L2_2 / 1000
  L3_2 = L2_1
  L3_2 = L2_2 - L3_2
  L2_1 = L2_2
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

enterFrame = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = false
  L1_1 = L1_2
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = "enterFrame"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end

destroyAnimation = L4_1
