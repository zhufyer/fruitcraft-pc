local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "widget"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Views.AttackerRequestTicketView"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "composer"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Utils.Queue"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Language"
L4_1 = L4_1(L5_1)
L5_1 = 0
L6_1 = system
L6_1 = L6_1.getInfo
L7_1 = "platformName"
L6_1 = L6_1(L7_1)
if L6_1 == "Android" then
  L5_1 = 11
end
L6_1 = nil
L7_1 = nil
L8_1 = nil
L9_1 = 170
L10_1 = false
L11_1 = false
L12_1 = 0
L13_1 = 0
L14_1 = Constants
L14_1 = L14_1.LIVE_BATTLE_CHOOSE_TIMEOUT
L15_1 = nil
L16_1 = 125

function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = log3
  L3_2 = "notificationBar is started to create"
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
  A1_2.notificationCounter = 0
  L2_2 = {}
  A1_2.ticketsTemp = L2_2
  L2_2 = display
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  A1_2.group = L2_2
  L2_2 = A1_2.group
  L3_2 = display
  L3_2 = L3_2.contentWidth
  L4_2 = L9_1
  L4_2 = L4_2 / 2
  L3_2 = L3_2 + L4_2
  L4_2 = L5_1
  L3_2 = L3_2 + L4_2
  L2_2.x = L3_2
  L2_2 = A1_2.group
  L2_2.y = 0
  A1_2.isAttack = false
  A1_2.width = 150
  L2_2 = display
  L2_2 = L2_2.newRoundedRect
  L3_2 = A1_2.width
  L3_2 = L3_2 / 2
  L3_2 = L3_2 + 2
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 / 2
  L5_2 = A1_2.width
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L7_2 = 0
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L7_1 = L2_2
  L2_2 = L7_1
  L2_2.strokeWidth = 6
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.setStrokeColor
  L4_2 = 0.140625
  L5_2 = 0.35546875
  L6_2 = 0.1875
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = L7_1
  L2_2.alpha = 0.8
  L2_2 = {}
  L2_2.type = "image"
  L3_2 = Constants
  L3_2 = L3_2.Path_Assets
  L4_2 = "BattleNotificationBar/FC-notificatio-bg.png"
  L3_2 = L3_2 .. L4_2
  L2_2.filename = L3_2
  L3_2 = A1_2.group
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = L7_1
  L3_2(L4_2, L5_2)
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  showCircleGroup = L3_2
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "BattleNotificationBar/Notification.png"
  L4_2 = L4_2 .. L5_2
  L5_2 = 80
  L6_2 = 60
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L8_1 = L3_2
  L3_2 = L8_1
  L3_2.x = 0
  L3_2 = L8_1
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 / 2
  L3_2.y = L4_2
  L3_2 = showCircleGroup
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = L8_1
  L3_2(L4_2, L5_2)
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "BattleNotificationBar/Shining.png"
  L4_2 = L4_2 .. L5_2
  L5_2 = L9_1
  L6_2 = 121
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  showCircleFG = L3_2
  L3_2 = showCircleFG
  L3_2.x = 0
  L3_2 = showCircleFG
  L4_2 = L8_1
  L4_2 = L4_2.y
  L3_2.y = L4_2
  L3_2 = showCircleFG
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = 1
  L6_2 = 0
  L7_2 = 0
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = showCircleFG
  L3_2.alpha = 0.3
  L3_2 = showCircleGroup
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = showCircleFG
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.group
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = showCircleGroup
  L3_2(L4_2, L5_2)
  L3_2 = L0_1
  L3_2 = L3_2.newScrollView
  L4_2 = {}
  L5_2 = A1_2.width
  L5_2 = L5_2 - 38
  L4_2.width = L5_2
  L4_2.left = 19
  L4_2.hideScrollBar = true
  L4_2.horizontalScrollDisabled = true
  L4_2.scrollWidth = 0
  L4_2.scrollHeight = 0
  L4_2.rightPadding = 0
  L4_2.leftPadding = 0
  L5_2 = {}
  L6_2 = 1
  L7_2 = 1
  L8_2 = 1
  L9_2 = 0
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L4_2.backgroundColor = L5_2
  L3_2 = L3_2(L4_2)
  A1_2.scrollView = L3_2
  L3_2 = A1_2.group
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A1_2.scrollView
  L3_2(L4_2, L5_2)
  A1_2.state = "close"
  L3_2 = nil
  L4_2 = L3_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = 4
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = false
  
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = log3
    L2_3 = "online notification button tap"
    L1_3(L2_3)
    L1_3 = log3
    L2_3 = "state: "
    L3_3 = A1_2
    L3_3 = L3_3.state
    L1_3(L2_3, L3_3)
    L1_3 = transition
    L1_3 = L1_3.cancel
    L2_3 = "notificationGroup"
    L1_3(L2_3)
    L1_3 = A1_2
    L1_3 = L1_3.state
    if L1_3 == "close" then
      L1_3 = log3
      L2_3 = "Open this view when drage/drop it"
      L1_3(L2_3)
      L1_3 = A1_2
      L1_3.state = "open"
      L1_3 = Runtime
      L2_3 = L1_3
      L1_3 = L1_3.dispatchEvent
      L3_3 = {}
      L3_3.name = "liveBattleN_changeState"
      L4_3 = A1_2
      L4_3 = L4_3.state
      L3_3.state = L4_3
      L1_3(L2_3, L3_3)
      L1_3 = A1_2
      L1_3 = L1_3.notificationCounter
      if 0 < L1_3 then
        L1_3 = L2_1
        L1_3 = L1_3.getSceneName
        L2_3 = "current"
        L1_3 = L1_3(L2_3)
        if L1_3 ~= "Scenes.LiveBattle" then
          L1_3 = transition
          L1_3 = L1_3.to
          L2_3 = A1_2
          L2_3 = L2_3.group
          L3_3 = {}
          L4_3 = display
          L4_3 = L4_3.contentWidth
          L5_3 = A1_2
          L5_3 = L5_3.width
          L4_3 = L4_3 - L5_3
          L5_3 = L5_1
          L4_3 = L4_3 + L5_3
          L3_3.x = L4_3
          L4_3 = 400 * A0_3
          L3_3.time = L4_3
          L3_3.tag = "notificationGroup"
          L1_3(L2_3, L3_3)
        end
      end
    else
      L1_3 = A1_2
      L1_3 = L1_3.state
      if L1_3 == "open" then
        L1_3 = log3
        L2_3 = "Close this view when drage/drop it"
        L1_3(L2_3)
        L1_3 = A1_2
        L1_3.state = "close"
        L1_3 = Runtime
        L2_3 = L1_3
        L1_3 = L1_3.dispatchEvent
        L3_3 = {}
        L3_3.name = "liveBattleN_changeState"
        L4_3 = A1_2
        L4_3 = L4_3.state
        L3_3.state = L4_3
        L1_3(L2_3, L3_3)
        L1_3 = A1_2
        L1_3 = L1_3.notificationCounter
        if 0 < L1_3 then
          L1_3 = L2_1
          L1_3 = L1_3.getSceneName
          L2_3 = "current"
          L1_3 = L1_3(L2_3)
          if L1_3 ~= "Scenes.LiveBattle" then
            L1_3 = transition
            L1_3 = L1_3.to
            L2_3 = A1_2
            L2_3 = L2_3.group
            L3_3 = {}
            L4_3 = display
            L4_3 = L4_3.contentWidth
            L5_3 = L5_1
            L4_3 = L4_3 + L5_3
            L3_3.x = L4_3
            L4_3 = 400 * A0_3
            L3_3.time = L4_3
            L3_3.tag = "notificationGroup"
            L1_3(L2_3, L3_3)
          end
        end
      end
    end
  end
  
  L7_2 = true
  L8_2 = false
  L9_2 = nil
  
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A1_2
    L0_3 = L0_3.notificationCounter
    if 0 < L0_3 then
      L0_3 = L2_1
      L0_3 = L0_3.getSceneName
      L1_3 = "current"
      L0_3 = L0_3(L1_3)
      if L0_3 ~= "Scenes.LiveBattle" then
        L0_3 = log3
        L1_3 = "online notification button tap and open it"
        L0_3(L1_3)
        L0_3 = log3
        L1_3 = "state: "
        L2_3 = A1_2
        L2_3 = L2_3.state
        L0_3(L1_3, L2_3)
        L0_3 = transition
        L0_3 = L0_3.cancel
        L1_3 = "notificationGroup"
        L0_3(L1_3)
        L0_3 = A1_2
        L0_3 = L0_3.state
        if L0_3 == "close" then
          L0_3 = log3
          L1_3 = "state is close"
          L0_3(L1_3)
          L0_3 = A1_2
          L0_3.state = "open"
          L0_3 = Runtime
          L1_3 = L0_3
          L0_3 = L0_3.dispatchEvent
          L2_3 = {}
          L2_3.name = "liveBattleN_changeState"
          L3_3 = A1_2
          L3_3 = L3_3.state
          L2_3.state = L3_3
          L0_3(L1_3, L2_3)
          L0_3 = A1_2
          L0_3 = L0_3.notificationCounter
          if 0 < L0_3 then
            L0_3 = transition
            L0_3 = L0_3.to
            L1_3 = A1_2
            L1_3 = L1_3.group
            L2_3 = {}
            L3_3 = display
            L3_3 = L3_3.contentWidth
            L4_3 = A1_2
            L4_3 = L4_3.width
            L3_3 = L3_3 - L4_3
            L4_3 = L5_1
            L3_3 = L3_3 + L4_3
            L2_3.x = L3_3
            L2_3.time = 800
            L2_3.tag = "notificationGroup"
            L0_3(L1_3, L2_3)
          end
        else
          L0_3 = A1_2
          L0_3 = L0_3.state
          if L0_3 == "open" then
            L0_3 = log3
            L1_3 = "online notification button tap and close it "
            L0_3(L1_3)
            L0_3 = A1_2
            L0_3.state = "close"
            L0_3 = Runtime
            L1_3 = L0_3
            L0_3 = L0_3.dispatchEvent
            L2_3 = {}
            L2_3.name = "liveBattleN_changeState"
            L3_3 = A1_2
            L3_3 = L3_3.state
            L2_3.state = L3_3
            L0_3(L1_3, L2_3)
            L0_3 = A1_2
            L0_3 = L0_3.notificationCounter
            if 0 < L0_3 then
              L0_3 = transition
              L0_3 = L0_3.to
              L1_3 = A1_2
              L1_3 = L1_3.group
              L2_3 = {}
              L3_3 = display
              L3_3 = L3_3.contentWidth
              L4_3 = L5_1
              L3_3 = L3_3 + L4_3
              L2_3.x = L3_3
              L2_3.time = 800
              L2_3.tag = "notificationGroup"
              L0_3(L1_3, L2_3)
            end
          end
        end
    end
    else
      L0_3 = A1_2
      L0_3 = L0_3.notificationCounter
      if L0_3 < 0 then
        L0_3 = A1_2
        L0_3.notificationCounter = 0
      end
      L0_3 = transition
      L0_3 = L0_3.cancel
      L1_3 = A1_2
      L1_3 = L1_3.group
      L0_3(L1_3)
      L0_3 = display
      L0_3 = L0_3.getCurrentStage
      L0_3 = L0_3()
      L1_3 = L0_3
      L0_3 = L0_3.setFocus
      L2_3 = nil
      L0_3(L1_3, L2_3)
      L0_3 = liveBattleNotificationBarView
      if L0_3 ~= nil then
        L0_3 = liveBattleNotificationBarView
        L1_3 = L0_3
        L0_3 = L0_3.hideNotificationBar
        L2_3 = 400
        L0_3(L1_3, L2_3)
      end
    end
    L0_3 = true
    return L0_3
  end
  
  function L11_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = A1_2
    L1_3 = L1_3.notificationCounter
    if 0 < L1_3 then
      L1_3 = L2_1
      L1_3 = L1_3.getSceneName
      L2_3 = "current"
      L1_3 = L1_3(L2_3)
      if L1_3 ~= "Scenes.LiveBattle" then
        L1_3 = A0_3.phase
        if L1_3 == "began" then
          L1_3 = display
          L1_3 = L1_3.getCurrentStage
          L1_3 = L1_3()
          L2_3 = L1_3
          L1_3 = L1_3.setFocus
          L3_3 = A0_3.target
          L1_3(L2_3, L3_3)
          L1_3 = A1_2
          L1_3 = L1_3.group
          L1_3 = L1_3.x
          L3_2 = L1_3
          L1_3 = A0_3.xStart
          L9_2 = L1_3
          L1_3 = L4_2
          L2_3 = L1_3
          L1_3 = L1_3.pushfirst
          L3_3 = L3_2
          L1_3(L2_3, L3_3)
          L1_3 = true
          L8_2 = L1_3
          L1_3 = false
          L7_2 = L1_3
        else
          L1_3 = A0_3.phase
          if L1_3 == "moved" then
            L1_3 = false
            L8_2 = L1_3
            L1_3 = L7_2
            if L1_3 == true then
              L1_3 = display
              L1_3 = L1_3.getCurrentStage
              L1_3 = L1_3()
              L2_3 = L1_3
              L1_3 = L1_3.setFocus
              L3_3 = A0_3.target
              L1_3(L2_3, L3_3)
              L1_3 = A1_2
              L1_3 = L1_3.group
              L1_3 = L1_3.x
              L3_2 = L1_3
              L1_3 = A0_3.x
              L9_2 = L1_3
              L1_3 = L4_2
              L2_3 = L1_3
              L1_3 = L1_3.pushfirst
              L3_3 = L3_2
              L1_3(L2_3, L3_3)
              L1_3 = false
              L7_2 = L1_3
            else
              L1_3 = A0_3.x
              L2_3 = L9_2
              L1_3 = L1_3 - L2_3
              L2_3 = L3_2
              L1_3 = L1_3 + L2_3
              L2_3 = display
              L2_3 = L2_3.contentWidth
              L3_3 = A1_2
              L3_3 = L3_3.width
              L2_3 = L2_3 - L3_3
              L3_3 = L5_1
              L2_3 = L2_3 + L3_3
              if L1_3 >= L2_3 then
                L2_3 = L4_2
                L3_3 = L2_3
                L2_3 = L2_3.poplast
                L2_3 = L2_3(L3_3)
                L3_3 = L4_2
                L4_3 = L3_3
                L3_3 = L3_3.pushlast
                L5_3 = L2_3
                L3_3(L4_3, L5_3)
                if L1_3 > L2_3 then
                  L3_3 = A1_2
                  L3_3.state = "open"
                else
                  L3_3 = A1_2
                  L3_3.state = "close"
                end
                L3_3 = A1_2
                L3_3 = L3_3.group
                L3_3.x = L1_3
                L3_3 = true
                L5_2 = L3_3
              end
              L2_3 = L4_2
              L3_3 = L2_3
              L2_3 = L2_3.pushfirst
              L4_3 = L1_3
              L2_3(L3_3, L4_3)
            end
          else
            L1_3 = A0_3.phase
            if L1_3 == "ended" then
              L1_3 = display
              L1_3 = L1_3.getCurrentStage
              L1_3 = L1_3()
              L2_3 = L1_3
              L1_3 = L1_3.setFocus
              L3_3 = nil
              L1_3(L2_3, L3_3)
              L1_3 = true
              L7_2 = L1_3
              L1_3 = L8_2
              if L1_3 ~= true then
                L1_3 = L5_2
                if L1_3 == true then
                  L1_3 = false
                  L5_2 = L1_3
                  L1_3 = A1_2
                  L1_3 = L1_3.state
                  if L1_3 == "open" then
                    L1_3 = L6_2
                    L2_3 = display
                    L2_3 = L2_3.contentWidth
                    L3_3 = A1_2
                    L3_3 = L3_3.group
                    L3_3 = L3_3.x
                    L2_3 = L2_3 - L3_3
                    L3_3 = A1_2
                    L3_3 = L3_3.width
                    L2_3 = L2_3 / L3_3
                    L1_3(L2_3)
                  else
                    L1_3 = A1_2
                    L1_3 = L1_3.state
                    if L1_3 == "close" then
                      L1_3 = L6_2
                      L2_3 = A1_2
                      L2_3 = L2_3.group
                      L2_3 = L2_3.x
                      L3_3 = display
                      L3_3 = L3_3.contentWidth
                      L2_3 = L2_3 - L3_3
                      L3_3 = A1_2
                      L3_3 = L3_3.width
                      L2_3 = L2_3 / L3_3
                      L2_3 = L2_3 + 1
                      L1_3(L2_3)
                    end
                  end
                end
              end
            end
          end
        end
    end
    else
      L1_3 = A1_2
      L1_3 = L1_3.notificationCounter
      if L1_3 < 0 then
        L1_3 = A1_2
        L1_3.notificationCounter = 0
      end
      L1_3 = transition
      L1_3 = L1_3.cancel
      L2_3 = A1_2
      L2_3 = L2_3.group
      L1_3(L2_3)
      L1_3 = display
      L1_3 = L1_3.getCurrentStage
      L1_3 = L1_3()
      L2_3 = L1_3
      L1_3 = L1_3.setFocus
      L3_3 = nil
      L1_3(L2_3, L3_3)
      L1_3 = L2_1
      L1_3 = L1_3.getSceneName
      L2_3 = "current"
      L1_3 = L1_3(L2_3)
      if L1_3 ~= "Scenes.LiveBattle" then
        L1_3 = liveBattleNotificationBarView
        if L1_3 ~= nil then
          L1_3 = liveBattleNotificationBarView
          L2_3 = L1_3
          L1_3 = L1_3.hideNotificationBar
          L3_3 = 400
          L1_3(L2_3, L3_3)
        end
      else
        L1_3 = liveBattleNotificationBarView
        if L1_3 ~= nil then
          L1_3 = liveBattleNotificationBarView
          L2_3 = L1_3
          L1_3 = L1_3.hideNotificationBar
          L3_3 = 0
          L1_3(L2_3, L3_3)
        end
      end
    end
    L1_3 = true
    return L1_3
  end
  
  L12_2 = A1_2.group
  L13_2 = L12_2
  L12_2 = L12_2.addEventListener
  L14_2 = "touch"
  L15_2 = L11_2
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = A1_2.group
  L13_2 = L12_2
  L12_2 = L12_2.addEventListener
  L14_2 = "tap"
  L15_2 = L10_2
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = addTicket
  A1_2.addTicket = L12_2
  L12_2 = hideNotificationBar
  A1_2.hideNotificationBar = L12_2
  L12_2 = showNotificatioBar
  A1_2.showNotificatioBar = L12_2
  
  function L12_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_3.phase
    if L1_3 == "began" then
      L1_3 = L2_1
      L1_3 = L1_3.getSceneName
      L2_3 = "current"
      L1_3 = L1_3(L2_3)
      L6_1 = L1_3
      L1_3 = L6_1
      if L1_3 ~= "Scenes.BattleAnimationScene" then
        L1_3 = L6_1
        if L1_3 ~= "Scenes.LiveBattle" then
          L1_3 = L6_1
          if L1_3 ~= "Scenes.Loading" then
            L1_3 = liveBattleNotificationBarView
            if L1_3 ~= nil then
              L1_3 = liveBattleNotificationBarView
              L2_3 = L1_3
              L1_3 = L1_3.showNotificatioBar
              L1_3(L2_3)
            end
        end
      end
      else
        L1_3 = liveBattleNotificationBarView
        if L1_3 ~= nil then
          L1_3 = liveBattleNotificationBarView
          L2_3 = L1_3
          L1_3 = L1_3.hideNotificationBar
          L3_3 = 0
          L1_3(L2_3, L3_3)
        end
      end
    end
  end
  
  L13_2 = Runtime
  L14_2 = L13_2
  L13_2 = L13_2.addEventListener
  L15_2 = "touch"
  L16_2 = L12_2
  L13_2(L14_2, L15_2, L16_2)
  return A1_2
end

new = L17_1

function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L2_1
  L2_2 = L2_2.getSceneName
  L3_2 = "current"
  L2_2 = L2_2(L3_2)
  L6_1 = L2_2
  L2_2 = L6_1
  if L2_2 ~= "Scenes.LiveBattle" then
    function L2_2()
      local L0_3, L1_3, L2_3, L3_3
      
      L0_3 = transition
      L0_3 = L0_3.to
      L1_3 = showCircleFG
      L2_3 = {}
      L2_3.alpha = 0.8
      L2_3.time = 2000
      L2_3.tag = "blink"
      
      function L3_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = transition
        L0_4 = L0_4.to
        L1_4 = showCircleFG
        L2_4 = {}
        L2_4.alpha = 0.1
        L2_4.time = 2500
        L2_4.tag = "blink"
        
        function L3_4()
          local L0_5, L1_5
          L0_5 = L2_2
          L0_5()
        end
        
        L2_4.onComplete = L3_4
        L0_4(L1_4, L2_4)
      end
      
      L2_3.onComplete = L3_3
      L0_3(L1_3, L2_3)
    end
    
    L3_2 = L15_1
    if L3_2 ~= nil then
      L3_2 = timer
      L3_2 = L3_2.cancel
      L4_2 = L15_1
      L3_2(L4_2)
    end
    
    function L3_2()
      local L0_3, L1_3
      L0_3 = audio
      L0_3 = L0_3.play
      L1_3 = alert
      L0_3(L1_3)
    end
    
    L4_2 = L10_1
    if L4_2 == false then
      L4_2 = transition
      L4_2 = L4_2.cancel
      L5_2 = "blink"
      L4_2(L5_2)
      L4_2 = true
      L10_1 = L4_2
      L4_2 = L2_2
      L4_2()
      L4_2 = audio
      L4_2 = L4_2.play
      L5_2 = audio
      L5_2 = L5_2.loadSound
      L6_2 = Constants
      L6_2 = L6_2.Path_Assets
      L7_2 = "Audio/FC-battle.wav"
      L6_2 = L6_2 .. L7_2
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    end
    L4_2 = log3
    L5_2 = "******new ticket add to online battle notification bar******"
    L4_2(L5_2)
    L4_2 = log3
    L5_2 = "ticket type: "
    L6_2 = A1_2.ticketType
    L4_2(L5_2, L6_2)
    L4_2 = L2_1
    L4_2 = L4_2.getScene
    L5_2 = "Scenes.LiveBattle"
    L4_2 = L4_2(L5_2)
    if L4_2 ~= nil then
      L5_2 = os
      L5_2 = L5_2.time
      L5_2 = L5_2()
      L6_2 = A1_2.recivedTime
      if L6_2 ~= nil then
        L6_2 = L14_1
        L7_2 = os
        L7_2 = L7_2.difftime
        L8_2 = os
        L8_2 = L8_2.time
        L8_2 = L8_2()
        L9_2 = A1_2.recivedTime
        L7_2 = L7_2(L8_2, L9_2)
        L6_2 = L6_2 - L7_2
        L14_1 = L6_2
      end
      L6_2 = log3
      L7_2 = "ticket time"
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
      L6_2 = A1_2.ticketType
      if L6_2 == "help" then
        L6_2 = A0_2.isAttack
        if L6_2 == false then
          L6_2 = L8_1
          L7_2 = L6_2
          L6_2 = L6_2.setFillColor
          L8_2 = 1
          L9_2 = 1
          L10_2 = 0
          L6_2(L7_2, L8_2, L9_2, L10_2)
          L6_2 = showCircleFG
          L7_2 = L6_2
          L6_2 = L6_2.setFillColor
          L8_2 = 1
          L9_2 = 1
          L10_2 = 0
          L6_2(L7_2, L8_2, L9_2, L10_2)
        end
        L6_2 = L1_1
        L7_2 = L6_2
        L6_2 = L6_2.new
        L8_2 = {}
        L8_2._time = L5_2
        L9_2 = L14_1
        L8_2.ticketTime = L9_2
        L9_2 = A0_2.notificationCounter
        L8_2.ID = L9_2
        L9_2 = A1_2.ticketType
        L8_2.ticketType = L9_2
        L9_2 = A1_2.helpRequestOwner
        L8_2.helpRequestOwner = L9_2
        L9_2 = A1_2.help_owner_id
        L8_2.help_owner_id = L9_2
        L9_2 = A1_2.battle_id
        L8_2.battle_id = L9_2
        L9_2 = A1_2.mainEnemy_id
        L8_2.mainEnemy_id = L9_2
        L9_2 = A1_2.tutorialTicket
        L8_2.tutorialTicket = L9_2
        L9_2 = L4_2.battleManager
        L9_2 = L9_2.ticketTap
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        ticket = L6_2
      else
        L6_2 = A1_2.ticketType
        if L6_2 == "attack" then
          A0_2.isAttack = true
          L6_2 = L8_1
          L7_2 = L6_2
          L6_2 = L6_2.setFillColor
          L8_2 = 1
          L9_2 = 1
          L10_2 = 1
          L6_2(L7_2, L8_2, L9_2, L10_2)
          L6_2 = showCircleFG
          L7_2 = L6_2
          L6_2 = L6_2.setFillColor
          L8_2 = 1
          L9_2 = 0
          L10_2 = 0
          L6_2(L7_2, L8_2, L9_2, L10_2)
          L6_2 = L1_1
          L7_2 = L6_2
          L6_2 = L6_2.new
          L8_2 = {}
          L8_2._time = L5_2
          L9_2 = L14_1
          L8_2.ticketTime = L9_2
          L9_2 = A0_2.notificationCounter
          L8_2.ID = L9_2
          L9_2 = A1_2.ticketType
          L8_2.ticketType = L9_2
          L9_2 = A1_2.attackerName
          L8_2.attackerName = L9_2
          L9_2 = A1_2.attackerTribe
          L8_2.attackerTribe = L9_2
          L9_2 = A1_2.battle_id
          L8_2.battle_id = L9_2
          L9_2 = A1_2.attacker_id
          L8_2.attacker_id = L9_2
          L9_2 = A1_2.tutorialTicket
          L8_2.tutorialTicket = L9_2
          L9_2 = L4_2.battleManager
          L9_2 = L9_2.ticketTap
          L6_2 = L6_2(L7_2, L8_2, L9_2)
          ticket = L6_2
        else
          L6_2 = log3
          L7_2 = "ticket not define"
          L6_2(L7_2)
          return
        end
      end
      L6_2 = A0_2.ticketsTemp
      L7_2 = ticket
      L7_2 = L7_2.ID
      L8_2 = ticket
      L6_2[L7_2] = L8_2
      L6_2 = A0_2.group
      L6_2 = L6_2.x
      L7_2 = display
      L7_2 = L7_2.contentWidth
      L8_2 = L9_1
      L8_2 = L8_2 / 2
      L7_2 = L7_2 + L8_2
      L8_2 = L5_1
      L7_2 = L7_2 + L8_2
      if L6_2 == L7_2 then
        L6_2 = L6_1
        if L6_2 ~= "Scenes.Loading" then
          L6_2 = transition
          L6_2 = L6_2.to
          L7_2 = A0_2.group
          L8_2 = {}
          L9_2 = display
          L9_2 = L9_2.contentWidth
          L10_2 = L5_1
          L9_2 = L9_2 + L10_2
          L8_2.x = L9_2
          L8_2.time = 400
          L8_2.tag = "notificationGroup"
          L6_2(L7_2, L8_2)
        end
      end
      L6_2 = ticket
      L6_2 = L6_2.group
      L7_2 = A0_2.scrollView
      L7_2 = L7_2.width
      L8_2 = ticket
      L8_2 = L8_2.width
      L7_2 = L7_2 - L8_2
      L7_2 = L7_2 / 2
      L6_2.x = L7_2
      L6_2 = ticket
      L6_2 = L6_2.group
      L7_2 = A0_2.notificationCounter
      L8_2 = ticket
      L8_2 = L8_2.height
      L8_2 = L8_2 + 10
      L7_2 = L7_2 * L8_2
      L7_2 = L7_2 + 10
      L6_2.y = L7_2
      L6_2 = A0_2.scrollView
      L7_2 = L6_2
      L6_2 = L6_2.insert
      L8_2 = ticket
      L8_2 = L8_2.group
      L6_2(L7_2, L8_2)
      L6_2 = A0_2.notificationCounter
      L6_2 = L6_2 + 1
      A0_2.notificationCounter = L6_2
    else
      L5_2 = log3
      L6_2 = "----live battle scene not loaded yet"
      L5_2(L6_2)
    end
  else
    L2_2 = log3
    L3_2 = "player is in "
    L4_2 = L6_1
    L2_2(L3_2, L4_2)
  end
end

addTicket = L17_1

function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = log3
  L3_2 = "hide Notification Bar: "
  L4_2 = A1_2
  L5_2 = "time"
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = transition
  L2_2 = L2_2.cancel
  L3_2 = "notificationGroup"
  L2_2(L3_2)
  L2_2 = A0_2.group
  L2_2 = L2_2.x
  L3_2 = display
  L3_2 = L3_2.contentWidth
  L4_2 = L9_1
  L4_2 = L4_2 / 2
  L3_2 = L3_2 + L4_2
  L4_2 = L5_1
  L3_2 = L3_2 + L4_2
  if L2_2 ~= L3_2 then
    L2_2 = transition
    L2_2 = L2_2.to
    L3_2 = A0_2.group
    L4_2 = {}
    L5_2 = display
    L5_2 = L5_2.contentWidth
    L6_2 = L9_1
    L6_2 = L6_2 / 2
    L5_2 = L5_2 + L6_2
    L6_2 = L5_1
    L5_2 = L5_2 + L6_2
    L4_2.x = L5_2
    L4_2.time = A1_2
    L2_2(L3_2, L4_2)
    A0_2.state = "close"
    A0_2.isAttack = false
    L2_2 = 0
    L13_1 = L2_2
    L2_2 = false
    L11_1 = L2_2
    L2_2 = Runtime
    L3_2 = L2_2
    L2_2 = L2_2.dispatchEvent
    L4_2 = {}
    L4_2.name = "liveBattleN_changeState"
    L5_2 = A0_2.state
    L4_2.state = L5_2
    L2_2(L3_2, L4_2)
  end
end

hideNotificationBar = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.notificationCounter
  if 0 < L1_2 then
    L1_2 = A0_2.group
    L1_2 = L1_2.x
    L2_2 = display
    L2_2 = L2_2.contentWidth
    L3_2 = L5_1
    L2_2 = L2_2 + L3_2
    if L1_2 ~= L2_2 then
      L1_2 = transition
      L1_2 = L1_2.to
      L2_2 = A0_2.group
      L3_2 = {}
      L4_2 = display
      L4_2 = L4_2.contentWidth
      L5_2 = L5_1
      L4_2 = L4_2 + L5_2
      L3_2.x = L4_2
      L3_2.time = 400
      L3_2.tag = "notificationGroup"
      L1_2(L2_2, L3_2)
      A0_2.state = "close"
      L1_2 = Runtime
      L2_2 = L1_2
      L1_2 = L1_2.dispatchEvent
      L3_2 = {}
      L3_2.name = "liveBattleN_changeState"
      L4_2 = A0_2.state
      L3_2.state = L4_2
      L1_2(L2_2, L3_2)
    end
  else
    L1_2 = A0_2.notificationCounter
    if L1_2 < 0 then
      A0_2.notificationCounter = 0
    end
    L1_2 = A0_2.group
    L1_2 = L1_2.x
    L2_2 = display
    L2_2 = L2_2.contentWidth
    L3_2 = L9_1
    L3_2 = L3_2 / 2
    L2_2 = L2_2 + L3_2
    L3_2 = L5_1
    L2_2 = L2_2 + L3_2
    if L1_2 ~= L2_2 then
      L1_2 = transition
      L1_2 = L1_2.to
      L2_2 = A0_2.group
      L3_2 = {}
      L4_2 = display
      L4_2 = L4_2.contentWidth
      L5_2 = L9_1
      L5_2 = L5_2 / 2
      L4_2 = L4_2 + L5_2
      L5_2 = L5_1
      L4_2 = L4_2 + L5_2
      L3_2.x = L4_2
      L3_2.time = 400
      L3_2.tag = "notificationGroup"
      L1_2(L2_2, L3_2)
      A0_2.state = "close"
      L1_2 = Runtime
      L2_2 = L1_2
      L1_2 = L1_2.dispatchEvent
      L3_2 = {}
      L3_2.name = "liveBattleN_changeState"
      L4_2 = A0_2.state
      L3_2.state = L4_2
      L1_2(L2_2, L3_2)
    end
  end
end

showNotificatioBar = L17_1

function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = log3
  L4_2 = "ticket called to remove"
  L3_2(L4_2)
  L3_2 = A0_2.notificationCounter
  if 0 < L3_2 then
    L3_2 = L11_1
    if L3_2 == false then
      L3_2 = log3
      L4_2 = "no ticket reserved removing funtion before"
      L5_2 = A0_2.notificationCounter
      L6_2 = A2_2
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = true
      L11_1 = L3_2
      L3_2 = A0_2.notificationCounter
      L3_2 = L3_2 - 1
      A0_2.notificationCounter = L3_2
      L3_2 = log3
      L4_2 = A2_2
      L5_2 = " conflict detected"
      L3_2(L4_2, L5_2)
      L3_2 = 533.3333333333333
      L12_1 = L3_2
      L3_2 = 1 + A2_2
      L4_2 = A0_2.notificationCounter
      L4_2 = L4_2 + A2_2
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = A0_2.ticketsTemp
        L7_2 = L7_2[L6_2]
        if L7_2 ~= nil then
          L7_2 = A0_2.ticketsTemp
          L7_2 = L7_2[L6_2]
          L7_2 = L7_2.group
          if L7_2 ~= nil then
            L7_2 = A0_2.ticketsTemp
            L8_2 = L6_2 - 1
            L8_2 = L8_2 - A2_2
            L7_2 = L7_2[L8_2]
            L7_2 = L7_2.group
            if L7_2 ~= nil then
              L7_2 = transition
              L7_2 = L7_2.to
              L8_2 = A0_2.ticketsTemp
              L8_2 = L8_2[L6_2]
              L8_2 = L8_2.group
              L9_2 = {}
              L10_2 = A0_2.ticketsTemp
              L11_2 = L6_2 - 1
              L11_2 = L11_2 - A2_2
              L10_2 = L10_2[L11_2]
              L10_2 = L10_2.group
              L10_2 = L10_2.y
              L9_2.y = L10_2
              L9_2.tag = "remove ticket"
              L10_2 = L6_2 / 3
              L10_2 = 1 + L10_2
              L10_2 = 400 * L10_2
              L9_2.time = L10_2
              
              function L10_2()
                local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
                L0_3 = log3
                L1_3 = "transition compelete"
                L0_3(L1_3)
                L0_3 = log3
                L1_3 = L6_2
                L2_3 = "ticket info: "
                L3_3 = "ticketID: "
                L4_3 = A0_2
                L4_3 = L4_3.ticketsTemp
                L5_3 = L6_2
                L4_3 = L4_3[L5_3]
                L4_3 = L4_3.ID
                L5_3 = "ticket owner: "
                L6_3 = A0_2
                L6_3 = L6_3.ticketsTemp
                L7_3 = L6_2
                L6_3 = L6_3[L7_3]
                L6_3 = L6_3.attackerName
                if not L6_3 then
                  L6_3 = A0_2
                  L6_3 = L6_3.ticketsTemp
                  L7_3 = L6_2
                  L6_3 = L6_3[L7_3]
                  L6_3 = L6_3.helpRequestOwner
                  if not L6_3 then
                    L6_3 = "not set"
                  end
                end
                L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
                L0_3 = log3
                L1_3 = L6_2
                L2_3 = "ticket new y position is: "
                L3_3 = A0_2
                L3_3 = L3_3.ticketsTemp
                L4_3 = L6_2
                L3_3 = L3_3[L4_3]
                L3_3 = L3_3.group
                L3_3 = L3_3.y
                L0_3(L1_3, L2_3, L3_3)
                L0_3 = log3
                L1_3 = L6_2
                L1_3 = L1_3 - 1
                L2_3 = A2_2
                L1_3 = L1_3 - L2_3
                L2_3 = "ticket new y position parent is: "
                L3_3 = A0_2
                L3_3 = L3_3.ticketsTemp
                L4_3 = L6_2
                L4_3 = L4_3 - 1
                L5_3 = A2_2
                L4_3 = L4_3 - L5_3
                L3_3 = L3_3[L4_3]
                L3_3 = L3_3.group
                L3_3 = L3_3.y
                L0_3(L1_3, L2_3, L3_3)
                L0_3 = false
                L11_1 = L0_3
                L0_3 = A0_2
                L0_3 = L0_3.ticketsTemp
                L1_3 = L6_2
                L1_3 = L1_3 - 1
                L2_3 = A2_2
                L1_3 = L1_3 - L2_3
                L0_3 = L0_3[L1_3]
                L0_3 = L0_3.ID
                L1_3 = L6_2
                L2_3 = A2_2
                L2_3 = 1 + L2_3
                if L1_3 == L2_3 then
                  L1_3 = A0_2
                  L1_3 = L1_3.ticketsTemp
                  L2_3 = L6_2
                  L2_3 = L2_3 - 1
                  L3_3 = A2_2
                  L2_3 = L2_3 - L3_3
                  L1_3 = L1_3[L2_3]
                  L1_3 = L1_3.group
                  if L1_3 ~= nil then
                    L1_3 = display
                    L1_3 = L1_3.remove
                    L2_3 = A0_2
                    L2_3 = L2_3.ticketsTemp
                    L3_3 = L6_2
                    L3_3 = L3_3 - 1
                    L4_3 = A2_2
                    L3_3 = L3_3 - L4_3
                    L2_3 = L2_3[L3_3]
                    L2_3 = L2_3.group
                    L1_3(L2_3)
                    L1_3 = A0_2
                    L1_3 = L1_3.ticketsTemp
                    L2_3 = L6_2
                    L2_3 = L2_3 - 1
                    L3_3 = A2_2
                    L2_3 = L2_3 - L3_3
                    L1_3 = L1_3[L2_3]
                    L1_3.group = nil
                  end
                end
                L1_3 = A0_2
                L1_3 = L1_3.ticketsTemp
                L2_3 = L6_2
                L2_3 = L2_3 - 1
                L3_3 = A2_2
                L2_3 = L2_3 - L3_3
                L3_3 = A0_2
                L3_3 = L3_3.ticketsTemp
                L4_3 = L6_2
                L3_3 = L3_3[L4_3]
                L1_3[L2_3] = L3_3
                L1_3 = A0_2
                L1_3 = L1_3.ticketsTemp
                L2_3 = L6_2
                L2_3 = L2_3 - 1
                L3_3 = A2_2
                L2_3 = L2_3 - L3_3
                L1_3 = L1_3[L2_3]
                L1_3.ID = L0_3
                L1_3 = L6_2
                L2_3 = A0_2
                L2_3 = L2_3.notificationCounter
                L3_3 = A2_2
                L2_3 = L2_3 + L3_3
                if L1_3 == L2_3 then
                  L1_3 = 0
                  L13_1 = L1_3
                end
              end
              
              L9_2.onComplete = L10_2
              L7_2(L8_2, L9_2)
            end
          end
        end
      end
      L3_2 = A0_2.notificationCounter
      if L3_2 == 0 then
        L3_2 = transition
        L3_2 = L3_2.cancel
        L4_2 = "blink"
        L3_2(L4_2)
        L3_2 = false
        L10_1 = L3_2
        L3_2 = 0
        L13_1 = L3_2
        L4_2 = A0_2
        L3_2 = A0_2.hideNotificationBar
        L5_2 = 600
        L3_2(L4_2, L5_2)
      end
    else
      L3_2 = L13_1
      L3_2 = L3_2 + 1
      L13_1 = L3_2
      L3_2 = log3
      L4_2 = "conflict"
      L5_2 = A1_2.attackerName
      if not L5_2 then
        L5_2 = A1_2.helpRequestOwner
        if not L5_2 then
          L5_2 = "not set"
        end
      end
      L3_2(L4_2, L5_2)
      L3_2 = log3
      L4_2 = "removing ticket transition canceled"
      L3_2(L4_2)
      L3_2 = false
      L11_1 = L3_2
      L3_2 = transition
      L3_2 = L3_2.cancel
      L4_2 = "remove ticket"
      L3_2(L4_2)
      L4_2 = A0_2
      L3_2 = A0_2.removeTicket
      L5_2 = A1_2
      L6_2 = L13_1
      L3_2(L4_2, L5_2, L6_2)
    end
  else
    L3_2 = errorLog
    L4_2 = "called remove empty ticket"
    L3_2(L4_2)
  end
end

removeTicket = L17_1

function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = log3
  L3_2 = "remove all tickets"
  L2_2(L3_2)
  A0_2.notificationCounter = 0
  L2_2 = transition
  L2_2 = L2_2.cancel
  L3_2 = "blink"
  L2_2(L3_2)
  L2_2 = false
  L10_1 = L2_2
  L2_2 = pairs
  L3_2 = A0_2.ticketsTemp
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2 in L2_2, L3_2, L4_2 do
    L6_2 = A0_2.ticketsTemp
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.tran
    if L6_2 ~= nil then
      L6_2 = transition
      L6_2 = L6_2.cancel
      L7_2 = A0_2.ticketsTemp
      L7_2 = L7_2[L5_2]
      L7_2 = L7_2.tran
      L6_2(L7_2)
      L6_2 = A0_2.ticketsTemp
      L6_2 = L6_2[L5_2]
      L6_2.tran = nil
    end
    L6_2 = A0_2.ticketsTemp
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.group
    if L6_2 ~= nil then
      L6_2 = display
      L6_2 = L6_2.remove
      L7_2 = A0_2.ticketsTemp
      L7_2 = L7_2[L5_2]
      L7_2 = L7_2.group
      L6_2(L7_2)
      L6_2 = A0_2.ticketsTemp
      L6_2 = L6_2[L5_2]
      L6_2.group = nil
    end
  end
  if A1_2 == "loading" then
    L3_2 = A0_2
    L2_2 = A0_2.hideNotificationBar
    L4_2 = 0
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.hideNotificationBar
    L4_2 = 600
    L2_2(L3_2, L4_2)
  end
end

removeAllTickets = L17_1

function L17_1()
  local L0_2, L1_2
  L0_2 = transition
  L0_2 = L0_2.pause
  L0_2()
end

pauseNotificationBar = L17_1

function L17_1()
  local L0_2, L1_2
  L0_2 = transition
  L0_2 = L0_2.resume
  L0_2()
end

resumeNotificationBar = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.group
  L1_2 = L1_2.x
  L2_2 = display
  L2_2 = L2_2.contentWidth
  L3_2 = A0_2.width
  L2_2 = L2_2 - L3_2
  L3_2 = L5_1
  L2_2 = L2_2 + L3_2
  if L1_2 ~= L2_2 then
    L1_2 = transition
    L1_2 = L1_2.to
    L2_2 = A0_2.group
    L3_2 = {}
    L4_2 = display
    L4_2 = L4_2.contentWidth
    L5_2 = A0_2.width
    L4_2 = L4_2 - L5_2
    L5_2 = L5_1
    L4_2 = L4_2 + L5_2
    L3_2.x = L4_2
    L3_2.time = 800
    L3_2.tag = "notificationGroup"
    L1_2(L2_2, L3_2)
    A0_2.state = "open"
  end
end

openNotificationBarView = L17_1
