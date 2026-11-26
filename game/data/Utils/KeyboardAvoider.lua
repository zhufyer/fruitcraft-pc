local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = 0.45
L1_1 = 8
L2_1 = 10
L3_1 = "keyboardAvoider"
L4_1 = nil

function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A2_2.y
  L4_2 = A2_2.height
  L4_2 = L4_2 / 2
  L3_2 = L3_2 + L4_2
  L4_2 = display
  L4_2 = L4_2.screenOriginY
  L5_2 = display
  L5_2 = L5_2.screenOriginY
  L6_2 = display
  L6_2 = L6_2.actualContentHeight
  L5_2 = L5_2 + L6_2
  L6_2 = display
  L6_2 = L6_2.actualContentHeight
  L7_2 = L0_1
  L6_2 = L6_2 * L7_2
  L6_2 = L5_2 - L6_2
  L7_2 = L1_1
  L7_2 = L6_2 - L7_2
  L7_2 = L7_2 - L3_2
  L8_2 = L2_1
  L8_2 = L4_2 - L8_2
  L9_2 = A1_2 / 2
  L8_2 = L8_2 + L9_2
  L9_2 = A0_2._keyboardRestY
  if L9_2 == nil then
    L9_2 = A0_2.y
    A0_2._keyboardRestY = L9_2
  end
  L9_2 = math
  L9_2 = L9_2.min
  L10_2 = A0_2._keyboardRestY
  L11_2 = math
  L11_2 = L11_2.max
  L12_2 = L7_2
  L13_2 = L8_2
  L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  A0_2._keyboardLiftY = L9_2
  L4_1 = A0_2
  L9_2 = A0_2.y
  L10_2 = A0_2._keyboardRestY
  if L9_2 ~= L10_2 then
    L9_2 = lift
    L9_2()
  end
end

track = L5_1

function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L4_1
  if L0_2 then
    L0_2 = L4_1
    L0_2 = L0_2._keyboardLiftY
    if L0_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L0_2 = transition
  L0_2 = L0_2.cancel
  L1_2 = L3_1
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.to
  L1_2 = L4_1
  L2_2 = {}
  L2_2.time = 120
  L3_2 = L4_1
  L3_2 = L3_2._keyboardLiftY
  L2_2.y = L3_2
  L3_2 = L3_1
  L2_2.tag = L3_2
  L0_2(L1_2, L2_2)
end

lift = L5_1

function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L4_1
  if L0_2 then
    L0_2 = L4_1
    L0_2 = L0_2._keyboardRestY
    if L0_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L0_2 = transition
  L0_2 = L0_2.cancel
  L1_2 = L3_1
  L0_2(L1_2)
  L0_2 = L4_1
  L0_2 = L0_2.y
  L1_2 = L4_1
  L1_2 = L1_2._keyboardRestY
  if L0_2 ~= L1_2 then
    L0_2 = transition
    L0_2 = L0_2.to
    L1_2 = L4_1
    L2_2 = {}
    L2_2.time = 120
    L3_2 = L4_1
    L3_2 = L3_2._keyboardRestY
    L2_2.y = L3_2
    L3_2 = L3_1
    L2_2.tag = L3_2
    L0_2(L1_2, L2_2)
  end
end

drop = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = native
  L0_2 = L0_2.setKeyboardFocus
  L1_2 = nil
  L0_2(L1_2)
  L0_2 = drop
  L0_2()
end

dismiss = L5_1

function L5_1(A0_2)
  local L1_2, L2_2
  if not A0_2 then
    return
  end
  L1_2 = transition
  L1_2 = L1_2.cancel
  L2_2 = L3_1
  L1_2(L2_2)
  L1_2 = A0_2._keyboardRestY
  if L1_2 then
    L1_2 = A0_2._keyboardRestY
    A0_2.y = L1_2
  end
  L4_1 = A0_2
end

reset = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = transition
  L0_2 = L0_2.cancel
  L1_2 = L3_1
  L0_2(L1_2)
end

cancel = L5_1
