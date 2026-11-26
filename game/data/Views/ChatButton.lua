local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Constants"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "widget"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Language"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Components.TDButtonView"
L4_1 = L4_1(L5_1)
L5_1 = nil

function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L4_1
  L1_2 = L0_2
  L0_2 = L0_2.new
  L2_2 = {}
  L2_2.label = "20"
  L3_2 = {}
  L4_2 = 0.19607843137255
  L5_2 = 0.19607843137255
  L6_2 = 0.19607843137255
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L2_2.labelColor = L3_2
  L3_2 = L0_1
  L3_2 = L3_2.Path_Assets
  L4_2 = "Navbar/FC-navbar-chat.png"
  L3_2 = L3_2 .. L4_2
  L2_2.defaultFile = L3_2
  L2_2.width = 34
  L2_2.height = 34
  L3_2 = openChat
  L2_2.onRelease = L3_2
  L0_2 = L0_2(L1_2, L2_2)
  
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = hub
    if L0_3 ~= nil then
      L0_3 = hub
      L0_3 = L0_3.unreadMessage
      if L0_3 then
        L0_3 = L0_2
        if L0_3 then
          L0_3 = type
          L1_3 = hub
          L1_3 = L1_3.unreadMessage
          L0_3 = L0_3(L1_3)
          if L0_3 == "number" then
            L0_3 = L0_2
            L1_3 = L0_3
            L0_3 = L0_3.setLabel
            L2_3 = hub
            L2_3 = L2_3.unreadMessage
            L0_3(L1_3, L2_3)
          end
        end
      end
    end
  end
  
  L0_2.chatFound = L1_2
  
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = hub
    if L1_3 ~= nil then
      L1_3 = hub
      L1_3 = L1_3.unreadMessage
      if L1_3 and A0_3 then
        L2_3 = A0_3
        L1_3 = A0_3.setLabel
        L3_3 = hub
        L3_3 = L3_3.unreadMessage
        L1_3(L2_3, L3_3)
      else
      end
    end
  end
  
  L0_2.updateText = L1_2
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = "message"
  L4_2 = L0_2.chatFound
  L1_2(L2_2, L3_2, L4_2)
  return L0_2
end

new = L6_1
L6_1 = nil

function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2.view
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2.view
  L1_2 = L1_2.insert
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = mainPlayer
  L1_2 = L1_2.tribe
  if L1_2 then
    L1_2 = A0_2.chatButton
    if L1_2 then
      L1_2 = A0_2.chatButton
      L1_2.isVisible = true
      L1_2 = A0_2.chatButton
      L2_2 = L1_2
      L1_2 = L1_2.toFront
      L1_2(L2_2)
    else
      L1_2 = new
      L1_2 = L1_2()
      A0_2.chatButton = L1_2
      L1_2 = A0_2.view
      L2_2 = L1_2
      L1_2 = L1_2.insert
      L3_2 = A0_2.chatButton
      L3_2 = L3_2.view
      L1_2(L2_2, L3_2)
      L1_2 = A0_2.chatButton
      L1_2.x = 14
      L1_2 = A0_2.chatButton
      L2_2 = display
      L2_2 = L2_2.contentHeight
      L2_2 = L2_2 - 14
      L1_2.y = L2_2
      L1_2 = A0_2.chatButton
      L1_2.isVisible = true
    end
    L1_2 = A0_2.chatButton
    L2_2 = L1_2
    L1_2 = L1_2.updateText
    L1_2(L2_2)
  else
    L1_2 = A0_2.chatButton
    if L1_2 then
      L1_2 = removeFromScene
      L2_2 = A0_2
      L1_2(L2_2)
    else
    end
  end
end

newOnScene = L7_1

function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2.chooseDeckMode
  L5_1 = L2_2
end

setChooseDeckMode = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.removeSelf
  L1_2(L2_2)
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = "message"
  L4_2 = A0_2.chatFound
  L1_2(L2_2, L3_2, L4_2)
end

removeButton = L7_1

function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.chatButton
  if L1_2 then
    L1_2 = removeButton
    L2_2 = A0_2.chatButton
    L1_2(L2_2)
    A0_2.chatButton = nil
  end
end

removeFromScene = L7_1

function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L1_1
  L0_2 = L0_2.gotoScene
  L1_2 = "Scenes.MessagesScene"
  L2_2 = {}
  L3_2 = {}
  L4_2 = L5_1
  L3_2.chooseDeckMode = L4_2
  L3_2.selectedTab = 1
  L2_2.params = L3_2
  L0_2(L1_2, L2_2)
end

openChat = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = transition
  L2_2 = L2_2.to
  L3_2 = A1_2.chatButton
  L3_2 = L3_2.view
  L4_2 = {}
  L4_2.time = 600
  L4_2.xScale = 1.1
  L4_2.yScale = 1.02
  L4_2.tag = "chatButtonAnime"
  
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = A1_2
    L1_3 = L1_3.chatButton
    L1_3 = L1_3.view
    L2_3 = {}
    L2_3.time = 300
    L2_3.xScale = 0.98
    L2_3.yScale = 0.9
    L2_3.tag = "chatButtonAnime"
    
    function L3_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = transition
      L0_4 = L0_4.to
      L1_4 = A1_2
      L1_4 = L1_4.chatButton
      L1_4 = L1_4.view
      L2_4 = {}
      L2_4.time = 300
      L2_4.xScale = 1
      L2_4.yScale = 1
      L2_4.tag = "chatButtonAnime"
      
      function L3_4()
        local L0_5, L1_5, L2_5
        L0_5 = A0_2
        L1_5 = L0_5
        L0_5 = L0_5.animateChatButton
        L2_5 = A1_2
        L0_5(L1_5, L2_5)
      end
      
      L2_4.onComplete = L3_4
      L0_4(L1_4, L2_4)
    end
    
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L4_2.onComplete = L5_2
  L2_2(L3_2, L4_2)
end

animateChatButton = L7_1
