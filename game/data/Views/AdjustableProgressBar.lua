local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)

function L0_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
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
  L7_2 = A3_2.width
  L7_2 = L7_2 - A1_2
  L7_2 = L7_2 / 2
  A6_2.boxImageOffset = L7_2
  L7_2 = A4_2.width
  L7_2 = L7_2 - A1_2
  L7_2 = L7_2 / 2
  A6_2.progressImageOffset = L7_2
  A6_2.maskTable = A5_2
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = A6_2.view
  L9_2 = A3_2.file
  L10_2 = A3_2.width
  L11_2 = A3_2.height
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  A6_2.progressBoxImage = L7_2
  L7_2 = display
  L7_2 = L7_2.newLine
  L8_2 = A6_2.view
  L9_2 = -1
  L10_2 = 0
  L11_2 = -1
  L12_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  A6_2.beginLine = L7_2
  L7_2 = A6_2.beginLine
  L8_2 = L7_2
  L7_2 = L7_2.setStrokeColor
  L9_2 = A3_2.borderColor
  L9_2 = L9_2[1]
  L10_2 = A3_2.borderColor
  L10_2 = L10_2[2]
  L11_2 = A3_2.borderColor
  L11_2 = L11_2[3]
  L12_2 = A3_2.borderColor
  L12_2 = L12_2[4]
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = A6_2.beginLine
  L7_2.strokeWidth = 2
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = A6_2.view
  L9_2 = A4_2.file
  L10_2 = A4_2.width
  L11_2 = A4_2.height
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  A6_2.progressImage = L7_2
  L7_2 = graphics
  L7_2 = L7_2.newMask
  L8_2 = A5_2.file
  L7_2 = L7_2(L8_2)
  A6_2.mask = L7_2
  L7_2 = A6_2.view
  L8_2 = L7_2
  L7_2 = L7_2.setMask
  L9_2 = A6_2.mask
  L7_2(L8_2, L9_2)
  return A6_2
end

new = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.progressBoxImage
  L4_2 = A0_2.boxImageOffset
  L4_2 = A1_2 - L4_2
  L3_2.x = L4_2
  L3_2 = A0_2.progressBoxImage
  L3_2.y = A2_2
  L3_2 = A0_2.beginLine
  L4_2 = A0_2.width
  L4_2 = L4_2 / 2
  L4_2 = A1_2 - L4_2
  L4_2 = L4_2 + 3
  L3_2.x = L4_2
  L3_2 = A0_2.beginLine
  L4_2 = A0_2.height
  L4_2 = L4_2 / 2
  L4_2 = A2_2 - L4_2
  L3_2.y = L4_2
  L3_2 = A0_2.progressImage
  L4_2 = A0_2.progressImageOffset
  L4_2 = A1_2 - L4_2
  L3_2.x = L4_2
  L3_2 = A0_2.progressImage
  L3_2.y = A2_2
  L3_2 = A0_2.view
  L4_2 = A0_2.width
  L4_2 = L4_2 / 2
  L4_2 = A1_2 - L4_2
  L5_2 = A0_2.maskTable
  L5_2 = L5_2.leftMargin
  L6_2 = A0_2.maskTable
  L6_2 = L6_2.rightMargin
  L5_2 = L5_2 - L6_2
  L4_2 = L4_2 - L5_2
  L3_2.maskX = L4_2
  L3_2 = A0_2.view
  L4_2 = A0_2.maskTable
  L4_2 = L4_2.topMargin
  L5_2 = A0_2.maskTable
  L5_2 = L5_2.bottomMargin
  L4_2 = L4_2 - L5_2
  L4_2 = L4_2 / 2
  L4_2 = A2_2 + L4_2
  L3_2.maskY = L4_2
end

setPosition = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = math
  L2_2 = L2_2.min
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = A1_2
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 100
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2.progressImage
  L4_2 = A0_2.progressBoxImage
  L4_2 = L4_2.x
  L5_2 = A0_2.width
  L4_2 = L4_2 - L5_2
  L5_2 = L2_2 / 100
  L6_2 = A0_2.width
  L5_2 = L5_2 * L6_2
  L4_2 = L4_2 + L5_2
  L3_2.x = L4_2
  L3_2 = A0_2.progressImage
  L4_2 = L3_2
  L3_2 = L3_2.toFront
  L3_2(L4_2)
end

setProgress = L0_1
