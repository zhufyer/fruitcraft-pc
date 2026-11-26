local L0_1, L1_1, L2_1, L3_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Views.MoreViewBG"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)

function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2
  if not A5_2 then
    L6_2 = {}
    A5_2 = L6_2
  end
  A0_2.__index = A0_2
  L6_2 = display
  L6_2 = L6_2.newGroup
  L6_2 = L6_2()
  A5_2.view = L6_2
  A5_2.delegate = A3_2
  L6_2 = L0_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = A2_2
  L9_2 = A4_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  A5_2.background = L6_2
  L6_2 = A5_2.background
  L7_2 = L6_2
  L6_2 = L6_2.setPosition
  L8_2 = 0
  L9_2 = 0
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A5_2.view
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = A5_2.background
  L8_2 = L8_2.view
  L6_2(L7_2, L8_2)
  
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A1_2
    L2_3 = L2_3[A1_3]
    if L2_3 then
      return L2_3
    end
    L3_3 = _M
    L3_3 = L3_3[A1_3]
    return L3_3
  end
  
  L7_2 = setmetatable
  L8_2 = A5_2
  L9_2 = {}
  L9_2.__index = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = A5_2.background
  L7_2 = L7_2.height
  A5_2.height = L7_2
  L7_2 = A5_2.background
  L7_2 = L7_2.width
  A5_2.width = L7_2
  return A5_2
end

new = L2_1

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.view
  L2_2 = A0_2.view
  L2_2 = L2_2.isVisible
  L2_2 = not L2_2
  L1_2.isVisible = L2_2
end

changeVisibility = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = transition
    L2_2 = L2_2.to
    L3_2 = A0_2.view
    L4_2 = {}
    L4_2.time = 3000
    L4_2.alpha = 0
    
    function L5_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L0_3 = L0_3.view
      L0_3.isVisible = false
    end
    
    L4_2.onComplete = L5_2
    L2_2 = L2_2(L3_2, L4_2)
    transitionRef = L2_2
  else
    L2_2 = A0_2.view
    L2_2.isVisible = false
  end
end

hide = L2_1

function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2.info = A1_2
  L5_2 = A0_2
  L4_2 = A0_2.setPosition
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2(L5_2, L6_2, L7_2)
end

changeMoreViewPositionAndData = L2_1

function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2.view
  L1_2.isVisible = false
end

hide = L2_1

function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A2_2
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L5_2 = A0_2.background
  L5_2 = L5_2.height
  L4_2 = L4_2 - L5_2
  if L3_2 > L4_2 then
    L4_2 = display
    L4_2 = L4_2.contentHeight
    L5_2 = A0_2.background
    L5_2 = L5_2.height
    L3_2 = L4_2 - L5_2
  end
  L4_2 = A0_2.view
  L4_2.y = L3_2
end

setPosition = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L1_1
  L2_2 = L2_2.getScene
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    if A0_2 then
      L3_2 = 1
      L4_2 = 3
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = L2_2.moreView
        if L7_2 then
          L7_2 = L2_2.moreView
          L7_2 = L7_2[L6_2]
          if L7_2 ~= nil then
            L7_2 = L2_2.moreView
            L7_2 = L7_2[L6_2]
            L8_2 = L7_2
            L7_2 = L7_2.hide
            L9_2 = false
            L7_2(L8_2, L9_2)
          end
        end
      end
    else
      L3_2 = L2_2.moreView
      if L3_2 ~= nil then
        L3_2 = L2_2.moreView
        L4_2 = L3_2
        L3_2 = L3_2.hide
        L5_2 = false
        L3_2(L4_2, L5_2)
      end
    end
  end
end

function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = L2_1
  L1_2 = false
  L2_2 = "Scenes.RankingsScene"
  L0_2(L1_2, L2_2)
  L0_2 = L2_1
  L1_2 = false
  L2_2 = "Scenes.LeagueScene"
  L0_2(L1_2, L2_2)
  L0_2 = L2_1
  L1_2 = true
  L2_2 = "Scenes.Shop"
  L0_2(L1_2, L2_2)
end

removeMoreView = L3_1
