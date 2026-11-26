local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = display
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  A1_2.view = L2_2
  A1_2.class = A0_2
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L2_3 = L2_3[A1_3]
    if L2_3 then
      return L2_3
    end
    L3_3 = A0_2
    L3_3 = L3_3.customIndex
    L4_3 = A0_3
    L5_3 = A1_3
    L3_3, L4_3 = L3_3(L4_3, L5_3)
    if L3_3 then
      return L4_3
    end
    if A1_3 == "x" then
      L5_3 = A0_3.view
      L5_3 = L5_3.x
      return L5_3
    end
    if A1_3 == "y" then
      L5_3 = A0_3.view
      L5_3 = L5_3.y
      return L5_3
    end
    if A1_3 == "width" then
      L5_3 = A0_3.view
      L5_3 = L5_3.width
      return L5_3
    end
    if A1_3 == "height" then
      L5_3 = A0_3.view
      L5_3 = L5_3.height
      return L5_3
    end
    if A1_3 == "xScale" then
      L5_3 = A0_3.view
      L5_3 = L5_3.xScale
      return L5_3
    end
    if A1_3 == "yScale" then
      L5_3 = A0_3.view
      L5_3 = L5_3.yScale
      return L5_3
    end
    if A1_3 == "alpha" then
      L5_3 = A0_3.view
      L5_3 = L5_3.alpha
      return L5_3
    end
    if A1_3 == "rotation" then
      L5_3 = A0_3.view
      L5_3 = L5_3.rotation
      return L5_3
    end
    if A1_3 == "parent" then
      L5_3 = A0_3.view
      L5_3 = L5_3.parent
      return L5_3
    end
    if A1_3 == "isVisible" then
      L5_3 = A0_3.view
      L5_3 = L5_3.isVisible
      return L5_3
    end
    L5_3 = nil
    return L5_3
  end
  
  function L3_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3
    L3_3 = A0_2
    L3_3 = L3_3.customSet
    L4_3 = A0_3
    L5_3 = A1_3
    L6_3 = A2_3
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    if L3_3 then
      return
    end
    if A1_3 == "x" then
      L4_3 = A0_3.view
      L4_3.x = A2_3
    elseif A1_3 == "y" then
      L4_3 = A0_3.view
      L4_3.y = A2_3
    elseif A1_3 == "width" then
      L4_3 = A0_3.view
      L4_3.width = A2_3
    elseif A1_3 == "height" then
      L4_3 = A0_3.view
      L4_3.height = A2_3
    elseif A1_3 == "xScale" then
      L4_3 = A0_3.view
      L4_3.xScale = A2_3
    elseif A1_3 == "yScale" then
      L4_3 = A0_3.view
      L4_3.yScale = A2_3
    elseif A1_3 == "alpha" then
      L4_3 = A0_3.view
      L4_3.alpha = A2_3
    elseif A1_3 == "rotation" then
      L4_3 = A0_3.view
      L4_3.rotation = A2_3
    elseif A1_3 == "isVisible" then
      L4_3 = A0_3.view
      L4_3.isVisible = A2_3
    else
      L4_3 = rawset
      L5_3 = A0_3
      L6_3 = A1_3
      L7_3 = A2_3
      L4_3(L5_3, L6_3, L7_3)
    end
  end
  
  L4_2 = {}
  L4_2.__index = L2_2
  L4_2.__newindex = L3_2
  L5_2 = setmetatable
  L6_2 = A1_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  return A1_2
end

new = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = assert
  L4_2 = A1_2
  L5_2 = "params needs to be provided for the creation of visual module"
  L3_2(L4_2, L5_2)
  L3_2 = assert
  L4_2 = type
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 == "table"
  L5_2 = "params needs to be a table, for the creation of the visual module"
  L3_2(L4_2, L5_2)
  L3_2 = new
  L4_2 = A0_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A1_2.id
  if not L4_2 then
    L4_2 = A1_2.name
    if not L4_2 then
      L4_2 = A1_2.label
      if not L4_2 then
        L4_2 = A1_2.text
        if not L4_2 then
          L4_2 = "View Module"
        end
      end
    end
  end
  L3_2.id = L4_2
  return L3_2
end

newWithParams = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.localToContent
  L4_2 = 0
  L5_2 = 0
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2.width
  L5_2 = A0_2.height
  L6_2 = A1_2.x
  L7_2 = L4_2 * 3
  L7_2 = L7_2 / 4
  L7_2 = L2_2 + L7_2
  if L6_2 < L7_2 then
    L6_2 = A1_2.y
    L7_2 = L5_2 * 3
    L7_2 = L7_2 / 4
    L7_2 = L3_2 + L7_2
    if L6_2 < L7_2 then
      L6_2 = A1_2.x
      L7_2 = L4_2 * 3
      L7_2 = L7_2 / 4
      L7_2 = L2_2 - L7_2
      if L6_2 > L7_2 then
        L6_2 = A1_2.y
        L7_2 = L5_2 * 3
        L7_2 = L7_2 / 4
        L7_2 = L3_2 - L7_2
        if L6_2 > L7_2 then
          L6_2 = true
          return L6_2
        end
      end
    end
  end
  L6_2 = false
  return L6_2
end

whitinArea = L0_1

function L0_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = false
  L3_2 = nil
  return L2_2, L3_2
end

customIndex = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = false
  return L3_2
end

customSet = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = display
  L1_2 = L1_2.remove
  L2_2 = A0_2.view
  L1_2(L2_2)
  A0_2.view = nil
end

removeSelf = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L0_1

function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.view
  L2_2 = L1_2
  L1_2 = L1_2.toFront
  L1_2(L2_2)
end

toFront = L0_1
