local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = nil
L1_1 = nil
L2_1 = nil
L3_1 = nil
L4_1 = nil

function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2
  if not A6_2 then
    L7_2 = {}
    A6_2 = L7_2
  end
  L7_2 = setmetatable
  L8_2 = A6_2
  L9_2 = A0_2
  L7_2(L8_2, L9_2)
  A0_2.__index = A0_2
  L7_2 = display
  L7_2 = L7_2.newGroup
  L7_2 = L7_2()
  A6_2.view = L7_2
  A6_2.width = A1_2
  A6_2.height = A2_2
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = A6_2.view
  L9_2 = A4_2
  L10_2 = A1_2
  L11_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  A6_2.progressImage = L7_2
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = A6_2.view
  L9_2 = A3_2
  L10_2 = A1_2
  L11_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  A6_2.progressBoxImage = L7_2
  L7_2 = A6_2.progressImage
  L8_2 = A6_2.progressBoxImage
  L8_2 = L8_2.x
  L9_2 = A6_2.progressBoxImage
  L9_2 = L9_2.width
  L8_2 = L8_2 - L9_2
  L7_2.x = L8_2
  L7_2 = graphics
  L7_2 = L7_2.newMask
  L8_2 = A5_2
  L7_2 = L7_2(L8_2)
  A6_2.mask = L7_2
  L7_2 = A6_2.view
  L8_2 = L7_2
  L7_2 = L7_2.setMask
  L9_2 = A6_2.mask
  L7_2(L8_2, L9_2)
  return A6_2
end

new = L5_1

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2.progressBoxImage
  L3_2.x = A1_2
  L3_2 = A0_2.progressBoxImage
  L3_2.y = A2_2
  L3_2 = A0_2.progressImage
  L4_2 = A0_2.progressBoxImage
  L4_2 = L4_2.x
  L5_2 = A0_2.progressBoxImage
  L5_2 = L5_2.width
  L4_2 = L4_2 - L5_2
  L4_2 = L4_2 - 0.5
  L3_2.x = L4_2
  L3_2 = A0_2.progressImage
  L4_2 = A0_2.progressBoxImage
  L4_2 = L4_2.y
  L3_2.y = L4_2
  L3_2 = A0_2.view
  L4_2 = A0_2.progressBoxImage
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L4_2 = A1_2 - L4_2
  L3_2.maskX = L4_2
  L3_2 = A0_2.view
  L3_2.maskY = A2_2
end

setPosition = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.progressImage
  L3_2 = A0_2.progressBoxImage
  L3_2 = L3_2.x
  L4_2 = A0_2.progressBoxImage
  L4_2 = L4_2.width
  L3_2 = L3_2 - L4_2
  L4_2 = A1_2 / 100
  L5_2 = A0_2.progressImage
  L5_2 = L5_2.width
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 + L4_2
  L3_2 = L3_2 + 1
  L2_2.x = L3_2
  L2_2 = A0_2.progressImage
  L3_2 = L2_2
  L2_2 = L2_2.toFront
  L2_2(L3_2)
end

setProgress = L5_1
