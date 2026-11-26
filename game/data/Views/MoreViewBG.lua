local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)

function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  if not A3_2 then
    L4_2 = {}
    A3_2 = L4_2
  end
  L4_2 = setmetatable
  L5_2 = A3_2
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
  A0_2.__index = A0_2
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  A3_2.view = L4_2
  L4_2 = A1_2 * 32
  L5_2 = 75
  L6_2 = L5_2 / 2
  L7_2 = L4_2 / 2
  L8_2 = nil
  L9_2 = nil
  if A2_2 == "left" then
    L8_2 = 12
    L9_2 = L7_2
  elseif A2_2 == "right" then
    L8_2 = L5_2 - 12
    L9_2 = L7_2
  elseif A2_2 == "up" then
    L8_2 = L5_2 / 2
    L9_2 = 12
  else
    L8_2 = L5_2 / 2
    L9_2 = L4_2 - 12
  end
  L10_2 = display
  L10_2 = L10_2.newRoundedRect
  L11_2 = A3_2.view
  L12_2 = 8
  L13_2 = 2
  L14_2 = L5_2 - 16
  L15_2 = L4_2 - 4
  L16_2 = 3
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2.x = L6_2
  L10_2.y = L7_2
  L10_2.strokeWidth = 2
  L12_2 = L10_2
  L11_2 = L10_2.setStrokeColor
  L13_2 = 0
  L14_2 = 0.64705882
  L15_2 = 0.94509804
  L11_2(L12_2, L13_2, L14_2, L15_2)
  L11_2 = display
  L11_2 = L11_2.newRect
  L12_2 = A3_2.view
  L13_2 = 5
  L14_2 = 5
  L15_2 = 15
  L16_2 = 15
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L13_2 = L11_2
  L12_2 = L11_2.setFillColor
  L14_2 = Constants
  L14_2 = L14_2.whiteColor
  L14_2, L15_2, L16_2, L17_2, L18_2 = L14_2()
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L11_2.rotation = 45
  L11_2.x = L8_2
  L11_2.y = L9_2
  L11_2.strokeWidth = 1
  L13_2 = L11_2
  L12_2 = L11_2.setStrokeColor
  L14_2 = 0
  L15_2 = 0.64705882
  L16_2 = 0.94509804
  L12_2(L13_2, L14_2, L15_2, L16_2)
  L12_2 = display
  L12_2 = L12_2.newRoundedRect
  L13_2 = A3_2.view
  L14_2 = 8
  L15_2 = 2
  L16_2 = L5_2 - 16
  L17_2 = L4_2 - 4
  L18_2 = 3
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L12_2.x = L6_2
  L12_2.y = L7_2
  A3_2.width = L5_2
  A3_2.height = L4_2
  return A3_2
end

new = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L0_1
