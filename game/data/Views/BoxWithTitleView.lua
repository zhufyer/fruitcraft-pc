local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Language"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.Toolbox"
L1_1 = L1_1(L2_1)
L2_1 = display
L2_1 = L2_1.contentWidth
L2_1 = L2_1 / 2
L3_1 = 80
L4_1 = 12
L5_1 = 15

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = log3
  L3_2 = "new live battle ticket create"
  L2_2(L3_2)
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = setmetatable
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  L2_2 = display
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  A1_2.group = L2_2
  L2_2 = A1_2.width
  if not L2_2 then
    L2_2 = L2_1
  end
  A1_2.width = L2_2
  L2_2 = A1_2.height
  if not L2_2 then
    L2_2 = L3_1
  end
  A1_2.height = L2_2
  L2_2 = A1_2.name
  if L2_2 == nil then
    L2_2 = log3
    L3_2 = "no name set for ticket owner"
    L2_2(L3_2)
    A1_2.name = ""
  end
  L2_2 = L0_1
  L3_2 = A1_2.name
  L2_2 = L2_2[L3_2]
  A1_2.name = L2_2
  L2_2 = display
  L2_2 = L2_2.newRoundedRect
  L3_2 = A1_2.group
  L4_2 = A1_2.width
  L4_2 = L4_2 / 2
  L5_2 = A1_2.height
  L5_2 = L5_2 / 2
  L6_2 = A1_2.width
  L7_2 = A1_2.height
  L8_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A1_2.bg = L2_2
  L2_2 = A1_2.bg
  L2_2.strokeWidth = 2
  L2_2 = A1_2.bg
  L3_2 = L2_2
  L2_2 = L2_2.setStrokeColor
  L4_2 = Constants
  L4_2 = L4_2.greenColor
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = A1_2.bg
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = 1
  L5_2 = 1
  L6_2 = 1
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A1_2.bg
  L3_2 = L2_2
  L2_2 = L2_2.toBack
  L2_2(L3_2)
  L2_2 = display
  L2_2 = L2_2.newRoundedRect
  L3_2 = A1_2.group
  L4_2 = A1_2.width
  L4_2 = L4_2 / 2
  L5_2 = A1_2.height
  L5_2 = L5_2 + 25
  L5_2 = L5_2 / 2
  L6_2 = A1_2.width
  L7_2 = A1_2.height
  L7_2 = L7_2 - 25
  L8_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A1_2.bg1 = L2_2
  L2_2 = A1_2.bg1
  L2_2.strokeWidth = 2
  L2_2 = A1_2.bg1
  L3_2 = L2_2
  L2_2 = L2_2.setStrokeColor
  L4_2 = Constants
  L4_2 = L4_2.greenColor
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = A1_2.bg1
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = 1
  L5_2 = 1
  L6_2 = 1
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = display
  L2_2 = L2_2.newRoundedRect
  L3_2 = A1_2.group
  L4_2 = A1_2.width
  L4_2 = L4_2 / 2
  L5_2 = A1_2.height
  L5_2 = L5_2 + 25
  L5_2 = L5_2 / 2
  L6_2 = A1_2.width
  L6_2 = L6_2 - 3
  L7_2 = A1_2.height
  L7_2 = L7_2 - 28
  L8_2 = 0
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A1_2.info = L2_2
  L2_2 = A1_2.color
  if L2_2 == true then
    L2_2 = A1_2.info
    L3_2 = L2_2
    L2_2 = L2_2.setFillColor
    L4_2 = 0.78431373
    L5_2 = 1
    L6_2 = 0.78431373
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = 13
  L3_2 = L1_1
  L3_2 = L3_2.stringUTFLength
  L4_2 = A1_2.name
  L3_2 = L3_2(L4_2)
  if 11 < L3_2 then
    L2_2 = 9
  else
    L3_2 = L1_1
    L3_2 = L3_2.stringUTFLength
    L4_2 = A1_2.name
    L3_2 = L3_2(L4_2)
    if 10 < L3_2 then
      L2_2 = 10
    else
      L3_2 = L1_1
      L3_2 = L3_2.stringUTFLength
      L4_2 = A1_2.name
      L3_2 = L3_2(L4_2)
      if 9 < L3_2 then
        L2_2 = 11
      else
        L3_2 = L1_1
        L3_2 = L3_2.stringUTFLength
        L4_2 = A1_2.name
        L3_2 = L3_2(L4_2)
        if 8 < L3_2 then
          L2_2 = 12
        end
      end
    end
  end
  L3_2 = L1_1
  L3_2 = L3_2.stringUTFLength
  L4_2 = A1_2.name
  L3_2 = L3_2(L4_2)
  if 13 < L3_2 then
    L3_2 = L1_1
    L3_2 = L3_2.isStringPersianInAndroid
    L4_2 = A1_2.name
    L5_2 = L4_2
    L4_2 = L4_2.sub
    L6_2 = 1
    L7_2 = 1
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    if L3_2 then
      L3_2 = "..."
      L4_2 = L1_1
      L4_2 = L4_2.utf8sub
      L5_2 = A1_2.name
      L6_2 = 0
      L7_2 = 11
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L3_2 = L3_2 .. L4_2
      A1_2.name = L3_2
    else
      L3_2 = L1_1
      L3_2 = L3_2.utf8sub
      L4_2 = A1_2.name
      L5_2 = 0
      L6_2 = 11
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L4_2 = "..."
      L3_2 = L3_2 .. L4_2
      A1_2.name = L3_2
    end
  end
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A1_2.name
  L5_2 = 0
  L6_2 = 0
  L7_2 = A1_2.font
  if not L7_2 then
    L7_2 = Constants
    L7_2 = L7_2.fontForSubtitle
    L7_2 = L7_2()
  end
  L8_2 = A1_2.fontSize
  if not L8_2 then
    L8_2 = L2_2
  end
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = L1_1
  L4_2 = L4_2.isStringPersianInAndroid
  L5_2 = A1_2.name
  L6_2 = L5_2
  L5_2 = L5_2.sub
  L7_2 = 1
  L8_2 = 1
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  if L4_2 then
    L4_2 = A1_2.width
    L4_2 = L4_2 * 0.5
    L3_2.x = L4_2
  else
    L4_2 = A1_2.width
    L4_2 = L4_2 * 0.5
    L3_2.x = L4_2
  end
  L3_2.y = 12
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = gray
  L4_2(L5_2, L6_2)
  L4_2 = A1_2.group
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = L1_1
  L4_2 = L4_2.fixedTextSize
  L5_2 = L3_2
  L6_2 = L2_2
  L7_2 = {}
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L8_2 = A1_2.group
  L9_2 = A1_2.bg
  L9_2 = L9_2.height
  L9_2 = L9_2 - 5
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = L4_2
  return A1_2
end

new = L6_1
