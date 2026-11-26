local L0_1, L1_1, L2_1, L3_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.BaseView"
L0_1 = L0_1(L1_1)
L1_1 = setmetatable
L2_1 = _M
L3_1 = {}
L3_1.__index = L0_1
L1_1(L2_1, L3_1)
L1_1 = 1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L0_1
  L3_2 = L3_2.newWithParams
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2.baseImage
  if not L4_2 then
    L4_2 = Constants
    L4_2 = L4_2.Path_Assets
    L5_2 = "General/ProgressBase.png"
    L4_2 = L4_2 .. L5_2
  end
  L3_2.baseImage = L4_2
  L4_2 = A1_2.fillImage
  if not L4_2 then
    L4_2 = Constants
    L4_2 = L4_2.Path_Assets
    L5_2 = "General/ProgressFill.png"
    L4_2 = L4_2 .. L5_2
  end
  L3_2.fillImage = L4_2
  L4_2 = A1_2.size
  if not L4_2 then
    L4_2 = 44
  end
  L3_2.size = L4_2
  L4_2 = A1_2.value
  if not L4_2 then
    L4_2 = 0
  end
  L3_2.value = L4_2
  L4_2 = L3_2.value
  L3_2.finalValue = L4_2
  L4_2 = L1_1
  L3_2.step = L4_2
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = L3_2.view
  L6_2 = L3_2.baseImage
  L7_2 = L3_2.size
  L8_2 = L3_2.size
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L3_2.progressbarBaseImage = L4_2
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = L3_2.view
  L6_2 = L3_2.fillImage
  L7_2 = L3_2.size
  L8_2 = L3_2.size
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L3_2.progressbarFillImage = L4_2
  L4_2 = L3_2.progressbarFillImage
  L4_2 = L4_2.fill
  L4_2.effect = "filter.radialWipe"
  L4_2 = L3_2.progressbarFillImage
  L4_2 = L4_2.fill
  L4_2 = L4_2.effect
  L5_2 = {}
  L6_2 = 0.5
  L7_2 = 0.5
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L4_2.center = L5_2
  L4_2 = L3_2.progressbarFillImage
  L4_2 = L4_2.fill
  L4_2 = L4_2.effect
  L4_2.smoothness = -0.1
  L4_2 = L3_2.progressbarFillImage
  L4_2 = L4_2.fill
  L4_2 = L4_2.effect
  L4_2.axisOrientation = 0.25
  L4_2 = L3_2.progressbarFillImage
  L4_2 = L4_2.fill
  L4_2 = L4_2.effect
  L4_2.progress = 0
  L4_2 = L3_2.view
  L5_2 = A1_2.x
  if not L5_2 then
    L5_2 = 0
  end
  L4_2.x = L5_2
  L4_2 = L3_2.view
  L5_2 = A1_2.y
  if not L5_2 then
    L5_2 = 0
  end
  L4_2.y = L5_2
  L5_2 = L3_2
  L4_2 = L3_2.updateFill
  L4_2(L5_2)
  return L3_2
end

new = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = A0_2.finalValue
    L3_2 = A0_2.value
    if L2_2 < L3_2 then
      L2_2 = L1_1
      L2_2 = -L2_2
      A0_2.step = L2_2
    else
      L2_2 = L1_1
      A0_2.step = L2_2
    end
    L2_2 = Runtime
    L3_2 = L2_2
    L2_2 = L2_2.addEventListener
    L4_2 = "enterFrame"
    L5_2 = A0_2
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2.finalValue
    A0_2.value = L2_2
    L2_2 = A0_2.progressbarFillImage
    if L2_2 then
      L2_2 = A0_2.progressbarFillImage
      L2_2 = L2_2.fill
      if L2_2 then
        L2_2 = A0_2.progressbarFillImage
        L2_2 = L2_2.fill
        L2_2 = L2_2.effect
        if L2_2 then
          L2_2 = A0_2.progressbarFillImage
          L2_2 = L2_2.fill
          L2_2 = L2_2.effect
          L3_2 = A0_2.value
          L3_2 = L3_2 / 100
          L2_2.progress = L3_2
        end
      end
    end
  end
end

updateFill = L2_1

function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  if A1_2 == nil then
    L4_2 = true
    return L4_2
  end
  if A3_2 then
    A0_2.completionCallback = A3_2
  end
  A0_2.finalValue = A1_2
  L5_2 = A0_2
  L4_2 = A0_2.updateFill
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
end

setValue = L2_1

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.step
  if 0 < L1_2 then
    L1_2 = A0_2.value
    L2_2 = A0_2.finalValue
    if L1_2 > L2_2 then
      L1_2 = false
      return L1_2
    else
      L1_2 = true
      return L1_2
    end
  else
    L1_2 = A0_2.value
    L2_2 = A0_2.finalValue
    if L1_2 < L2_2 then
      L1_2 = false
      return L1_2
    else
      L1_2 = true
      return L1_2
    end
  end
end

shouldContinueAnimation = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.value
  L3_2 = A0_2.step
  L2_2 = L2_2 + L3_2
  A0_2.value = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.shouldContinueAnimation
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2.progressbarFillImage
    if L2_2 then
      L2_2 = A0_2.progressbarFillImage
      L2_2 = L2_2.fill
      if L2_2 then
        L2_2 = A0_2.progressbarFillImage
        L2_2 = L2_2.fill
        L2_2 = L2_2.effect
        if L2_2 then
          L2_2 = A0_2.progressbarFillImage
          L2_2 = L2_2.fill
          L2_2 = L2_2.effect
          L3_2 = A0_2.value
          L3_2 = L3_2 / 100
          L2_2.progress = L3_2
        end
      end
    end
  else
    L3_2 = A0_2
    L2_2 = A0_2.updateFill
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.completionCallback
    if L2_2 then
      L2_2 = A0_2.completionCallback
      L2_2()
    end
    L2_2 = Runtime
    L3_2 = L2_2
    L2_2 = L2_2.removeEventListener
    L4_2 = "enterFrame"
    L5_2 = A0_2
    L2_2(L3_2, L4_2, L5_2)
  end
end

enterFrame = L2_1
