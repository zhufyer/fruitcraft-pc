local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = {}
  o = L3_2
  L3_2 = setmetatable
  L4_2 = o
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  A0_2.__index = A0_2
  L3_2 = o
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  L3_2.view = L4_2
  L3_2 = o
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "Quest/Node.png"
  L5_2 = L5_2 .. L6_2
  L6_2 = 32
  L7_2 = 32
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.bgRect = L4_2
  L3_2 = o
  L3_2 = L3_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = o
  L5_2 = L5_2.bgRect
  L3_2(L4_2, L5_2)
  L3_2 = o
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "Quest/lock.png"
  L5_2 = L5_2 .. L6_2
  L6_2 = 20
  L7_2 = 20
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.lockRect = L4_2
  L3_2 = o
  L3_2 = L3_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = o
  L5_2 = L5_2.lockRect
  L3_2(L4_2, L5_2)
  L3_2 = o
  L3_2.branch = A1_2
  L3_2 = o
  L3_2.progressNumber = 0
  L3_2 = o
  L3_2._status = "close"
  L3_2 = o
  L4_2 = A2_2 or L4_2
  if not A2_2 then
    L4_2 = 1
  end
  L3_2.questCount = L4_2
  L3_2 = o
  return L3_2
end

new = L0_1

function L0_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = multiCheckValidityAssert
  L5_2 = {}
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L6_2 = "color not correct"
  L7_2 = _NAME
  L8_2 = {}
  L9_2 = "number"
  L10_2 = "number"
  L11_2 = "number"
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2.bgRect
  L5_2 = L4_2
  L4_2 = L4_2.setFillColor
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end

setColor = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = log3
  L4_2 = "updateProgressView, progressNumber: "
  L5_2 = A0_2.progressNumber
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.progressNumber
  if L3_2 == 0 then
  else
    L3_2 = A0_2.progressNumber
    L4_2 = A0_2.questCount
    if L3_2 == L4_2 then
      L3_2 = _isFillterSupport
      if L3_2 == true then
        L3_2 = A0_2.bgRect
        L3_2 = L3_2.fill
        L3_2.effect = "filter.monotone"
        if A1_2 ~= 0 then
          L3_2 = Constants
          L3_2 = L3_2.pinkColor
          L3_2, L4_2, L5_2 = L3_2()
          L6_2 = A0_2.bgRect
          L6_2 = L6_2.fill
          L6_2 = L6_2.effect
          L6_2.r = L3_2
          L6_2 = A0_2.bgRect
          L6_2 = L6_2.fill
          L6_2 = L6_2.effect
          L6_2.g = L4_2
          L6_2 = A0_2.bgRect
          L6_2 = L6_2.fill
          L6_2 = L6_2.effect
          L6_2.b = L5_2
          L6_2 = A0_2.bgRect
          L6_2 = L6_2.fill
          L6_2 = L6_2.effect
          L6_2.a = 1
          L6_2 = Constants
          L6_2 = L6_2.newGreenColor
          L6_2, L7_2, L8_2 = L6_2()
          L5_2 = L8_2
          L4_2 = L7_2
          L3_2 = L6_2
          L6_2 = transition
          L6_2 = L6_2.to
          L7_2 = A0_2.bgRect
          L7_2 = L7_2.fill
          L7_2 = L7_2.effect
          L8_2 = {}
          L8_2.tag = "quest_trans"
          L8_2.r = L3_2
          L8_2.g = L4_2
          L8_2.b = L5_2
          L9_2 = A1_2 or L9_2
          if not A1_2 then
            L9_2 = 700
          end
          L8_2.time = L9_2
          
          function L9_2()
            local L0_3, L1_3
            L0_3 = A2_2
            if L0_3 then
              L0_3 = A2_2
              L0_3()
            end
          end
          
          L8_2.onComplete = L9_2
          L6_2(L7_2, L8_2)
        else
          L3_2 = {}
          L4_2 = A0_2.view
          L4_2 = L4_2.x
          L3_2.x = L4_2
          L4_2 = A0_2.view
          L4_2 = L4_2.y
          L3_2.y = L4_2
          L4_2 = display
          L4_2 = L4_2.remove
          L5_2 = A0_2.bgRect
          L4_2(L5_2)
          L4_2 = display
          L4_2 = L4_2.newImageRect
          L5_2 = Constants
          L5_2 = L5_2.Path_Assets
          L6_2 = "Quest/NewNode.png"
          L5_2 = L5_2 .. L6_2
          L6_2 = 32
          L7_2 = 32
          L4_2 = L4_2(L5_2, L6_2, L7_2)
          A0_2.bgRect = L4_2
          L4_2 = A0_2.view
          L5_2 = L4_2
          L4_2 = L4_2.insert
          L6_2 = A0_2.bgRect
          L4_2(L5_2, L6_2)
          if A2_2 then
            L4_2 = A2_2
            L4_2()
          end
        end
      else
        L3_2 = A0_2.bgRect
        L4_2 = L3_2
        L3_2 = L3_2.setFillColor
        L5_2 = 0
        L6_2 = 1
        L7_2 = 0
        L3_2(L4_2, L5_2, L6_2, L7_2)
        if A2_2 then
          L3_2 = A2_2
          L3_2()
        end
      end
    end
  end
end

updateProgressView = L0_1

function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2.progressNumber
  L4_2 = A0_2.questCount
  if L3_2 ~= L4_2 then
    L3_2 = A0_2.questCount
    A0_2.progressNumber = L3_2
  end
  A0_2._status = "finnished"
  L3_2 = A0_2.nextNodes
  if L3_2 then
    L3_2 = pairs
    L4_2 = A0_2.nextNodes
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L7_2._status
      if L8_2 == "close" then
        L7_2._status = "open"
      end
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.updateProgressView
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end

finishProgress = L0_1
