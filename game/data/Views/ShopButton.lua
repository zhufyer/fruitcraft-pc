local L0_1, L1_1, L2_1, L3_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Components.TDTimeIndicatorButton"
L0_1 = L0_1(L1_1)
L1_1 = setmetatable
L2_1 = _M
L3_1 = {}
L3_1.__index = L0_1
L1_1(L2_1, L3_1)
L1_1 = require
L2_1 = "Models.ShopItem"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = {}
  L1_2.sale = L2_2
  L2_2 = mainPlayer
  L2_2 = L2_2.saleInfo
  if L2_2 then
    L2_2 = ipairs
    L3_2 = mainPlayer
    L3_2 = L3_2.saleInfo
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L1_2.sale
      L8_2 = L6_2[1]
      L7_2.startTime = L8_2
      L7_2 = L1_2.sale
      L8_2 = L6_2[2]
      L7_2.endTime = L8_2
      L7_2 = L6_2[2]
      A0_2.endTime = L7_2
      L7_2 = L1_1
      L7_2 = L7_2.checkForSale
      L8_2 = L1_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = A0_2.badge
        if L7_2 then
          L7_2 = A0_2.badge
          L7_2 = L7_2.label
          L8_2 = L2_1
          L8_2 = L8_2.adjustNumber
          L9_2 = L6_2[3]
          L8_2 = L8_2(L9_2)
          L7_2.text = L8_2
          L7_2 = A0_2.badge
          L7_2.alpha = 1
        end
        L7_2 = A0_2.timerGroup
        L7_2.alpha = 1
        L7_2 = Runtime
        L8_2 = L7_2
        L7_2 = L7_2.addEventListener
        L9_2 = "click"
        L10_2 = A0_2
        L7_2(L8_2, L9_2, L10_2)
        return
      end
    end
    L2_2 = A0_2.badge
    if L2_2 then
      L2_2 = A0_2.badge
      L2_2.alpha = 0
    end
    L2_2 = A0_2.timerGroup
    L2_2.alpha = 0
  end
end

update = L3_1

function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = L0_1
  L3_2 = L3_2.new
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.setBadge
  L6_2 = "Discount Rate"
  L7_2 = true
  L8_2 = true
  L9_2 = L3_2.width
  L9_2 = -L9_2
  L9_2 = L9_2 + 3
  L10_2 = 3
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = L3_2.badge
  L4_2.alpha = 0
  L4_2 = L3_2.view
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = L3_2.badge
  L4_2(L5_2, L6_2)
  return L3_2
end

new = L3_1
