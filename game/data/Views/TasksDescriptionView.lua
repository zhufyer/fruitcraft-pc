local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
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
L2_1 = require
L3_1 = "Views.BoxWithTitleView"
L2_1 = L2_1(L3_1)
L3_1 = 3
L4_1 = 5

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = log3
  L4_2 = "new live battle ticket create"
  L3_2(L4_2)
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L5_2.width = A1_2
  L5_2.height = A2_2
  L5_2.name = "Description"
  L5_2.color = true
  L3_2 = L3_2(L4_2, L5_2)
  o = L3_2
  L3_2 = system
  L3_2 = L3_2.getInfo
  L4_2 = "build"
  L3_2 = L3_2(L4_2)
  if "2013.1137" < L3_2 then
    L3_2 = system
    L3_2 = L3_2.getInfo
    L4_2 = "platformName"
    L3_2 = L3_2(L4_2)
    if L3_2 ~= "Android" then
      L3_2 = L0_1
      L3_2 = L3_2.lang
      if L3_2 == "fa" then
        goto lbl_33
      end
    end
  end
  L3_2 = L0_1
  L3_2 = L3_2.lang
  if L3_2 == "ar" then
    ::lbl_33::
    L3_2 = o
    L4_2 = display
    L4_2 = L4_2.newText
    L5_2 = {}
    L6_2 = o
    L6_2 = L6_2.group
    L5_2.parent = L6_2
    L5_2.text = "Description"
    L6_2 = o
    L6_2 = L6_2.info
    L6_2 = L6_2.x
    L7_2 = L4_1
    L6_2 = L6_2 - L7_2
    L5_2.x = L6_2
    L6_2 = o
    L6_2 = L6_2.info
    L6_2 = L6_2.y
    L6_2 = L6_2 + 3
    L5_2.y = L6_2
    L6_2 = A1_2 - 10
    L7_2 = L4_1
    L6_2 = L6_2 - L7_2
    L5_2.width = L6_2
    L6_2 = A2_2 - 50
    L5_2.height = L6_2
    L6_2 = Constants
    L6_2 = L6_2.fontForSubtitle
    L6_2 = L6_2()
    L5_2.font = L6_2
    L5_2.fontSize = 11
    L5_2.align = "right"
    L4_2 = L4_2(L5_2)
    L3_2.description = L4_2
  else
    L3_2 = o
    L4_2 = display
    L4_2 = L4_2.newText
    L5_2 = {}
    L6_2 = o
    L6_2 = L6_2.group
    L5_2.parent = L6_2
    L5_2.text = "Description"
    L6_2 = o
    L6_2 = L6_2.info
    L6_2 = L6_2.x
    L7_2 = L3_1
    L6_2 = L6_2 + L7_2
    L5_2.x = L6_2
    L6_2 = o
    L6_2 = L6_2.info
    L6_2 = L6_2.y
    L6_2 = L6_2 + 3
    L5_2.y = L6_2
    L6_2 = A1_2 - 10
    L5_2.width = L6_2
    L6_2 = A2_2 - 50
    L5_2.height = L6_2
    L6_2 = Constants
    L6_2 = L6_2.fontForSubtitle
    L6_2 = L6_2()
    L5_2.font = L6_2
    L5_2.fontSize = 11
    L5_2.align = "left"
    L4_2 = L4_2(L5_2)
    L3_2.description = L4_2
  end
  L3_2 = o
  L3_2 = L3_2.description
  L4_2 = L3_2
  L3_2 = L3_2.setTextColor
  L5_2 = 0
  L6_2 = 1
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = o
  L4_2 = setDescription
  L3_2.setDescription = L4_2
  L3_2 = o
  return L3_2
end

new = L5_1

function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.description
  L2_2.text = A1_2
end

setDescription = L5_1
