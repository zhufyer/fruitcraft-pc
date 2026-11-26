local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Models.SplashABTestController"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Models.Operation"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Models.Player"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Models.MessagePipe"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Tutorial.TutorialManager2"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Utils.SKComponents"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Utils.noobhub"
L8_1(L9_1)
L8_1 = require
L9_1 = "Tutorial.VerticalOverlayView"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Tutorial.HorizontalOverlayView"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Views.ActivityIndicatorView"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Views.MoreViewSource"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "plugin.notifications.v2"
L12_1 = L12_1(L13_1)
L13_1 = 0
L14_1 = 300
L15_1 = L0_1.newScene
L15_1 = L15_1()

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.view
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = L2_2
  L5_2 = 0
  L6_2 = 0
  L7_2 = 570
  L8_2 = 360
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.background = L3_2
  L3_2 = A0_2.background
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L3_2 = A0_2.background
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L3_2 = A0_2.background
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L3_2(L4_2, L5_2, L6_2, L7_2)
end

L15_1.create = L16_1

function L16_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2.gotoScene
  L1_2 = "Scenes.Loading"
  L0_2(L1_2)
end

function L17_1()
  local L0_2, L1_2
  L0_2 = log3
  L1_2 = "Failed to get response from server for New Splash."
  L0_2(L1_2)
  L0_2 = mainPlayer
  L0_2.newSplash = false
  L0_2 = L0_1
  L0_2 = L0_2.gotoScene
  L1_2 = "Scenes.Loading"
  L0_2(L1_2)
end

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    L2_2 = L1_1
    L2_2 = L2_2.isShowNewSplash
    L3_2 = L16_1
    L4_2 = L17_1
    L2_2(L3_2, L4_2)
  end
end

L15_1.show = L18_1

function L18_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = print
  L3_2 = "[Splash] Destroy the splash scene"
  L2_2(L3_2)
  L2_2 = A0_2.background
  L3_2 = L2_2
  L2_2 = L2_2.removeSelf
  L2_2(L3_2)
  A0_2.background = nil
end

L15_1.destroy = L18_1

function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = showSimpleDialog
  L1_2 = "Facebook Reward"
  L2_2 = "You've successfully received a bonus for visiting Fruitcraft's Facebook page!"
  L3_2 = nil
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = L4_1
    L1_3 = L15_1
    L0_3.delegate = L1_3
    L0_3 = L4_1
    L0_3 = L0_3.loadPlayer
    L0_3()
  end
  
  L0_2(L1_2, L2_2, L3_2, L4_2)
end

function L19_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = log
  L2_2 = "Failed to submit FB reward"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = L4_1
  L2_2 = L15_1
  L1_2.delegate = L2_2
  L1_2 = L4_1
  L1_2 = L1_2.loadPlayer
  L1_2()
end

function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = showSimpleDialog
  L1_2 = "Instagram Reward"
  L2_2 = "You've successfully received a bonus for visiting Fruitcraft's Instagram page!"
  L3_2 = nil
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = L4_1
    L1_3 = L15_1
    L0_3.delegate = L1_3
    L0_3 = L4_1
    L0_3 = L0_3.loadPlayer
    L0_3()
  end
  
  L0_2(L1_2, L2_2, L3_2, L4_2)
end

function L21_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = log
  L2_2 = "Failed to submit Instagram reward"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = L4_1
  L2_2 = L15_1
  L1_2.delegate = L2_2
  L1_2 = L4_1
  L1_2 = L1_2.loadPlayer
  L1_2()
end

function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = print
  L2_2 = "[Splash] !!!! Application event:"
  L3_2 = A0_2.type
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = A0_2.url
  if L1_2 ~= nil then
    L1_2 = print
    L2_2 = "[Splash] event.url = "
    L3_2 = A0_2.url
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
    L1_2 = L7_1
    if L1_2 == nil then
      L1_2 = A0_2.url
      _LatestURLForSKComponent = L1_2
    else
      L1_2 = L7_1
      L1_2 = L1_2.webPurchaseCallback
      L2_2 = A0_2.url
      L1_2(L2_2)
    end
  end
  L1_2 = A0_2.type
  if L1_2 == "applicationStart" then
    L1_2 = system
    L1_2 = L1_2.cancelNotification
    L1_2()
    L1_2 = log3
    L2_2 = "_buildType is "
    L3_2 = _buildType
    L1_2(L2_2, L3_2)
    L1_2 = _buildType
    if L1_2 == "release" then
      L1_2 = print
      L2_2 = "!!!on start !!!"
      L1_2(L2_2)
      L1_2 = todNative
      if L1_2 then
        L1_2 = todNative
        L1_2 = L1_2.onStart
        if L1_2 then
          L1_2 = todNative
          L1_2 = L1_2.onResume
          if L1_2 then
            L1_2 = todNative
            L1_2 = L1_2.onStart
            L1_2()
            L1_2 = todNative
            L1_2 = L1_2.onResume
            L1_2()
          end
        end
      end
    end
  end
  L1_2 = A0_2.type
  if L1_2 == "applicationSuspend" then
    L1_2 = _buildType
    if L1_2 == "release" then
      L1_2 = print
      L2_2 = "!!!on pause !!!"
      L1_2(L2_2)
      L1_2 = todNative
      if L1_2 then
        L1_2 = todNative
        L1_2 = L1_2.onPause
        if L1_2 then
          L1_2 = todNative
          L1_2 = L1_2.onPause
          L1_2()
        end
      end
    end
    L1_2 = L3_1
    if L1_2 then
      L1_2 = L3_1
      L1_2 = L1_2.clearCachedBattleOpponents
      L1_2()
    end
    L1_2 = _G
    L1_2.inBackground = true
    L1_2 = {}
    L2_2 = L2_1
    L3_2 = "notification Message"
    L4_2 = math
    L4_2 = L4_2.random
    L5_2 = 1
    L6_2 = 4
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L3_2 .. L4_2
    L2_2 = L2_2[L3_2]
    L1_2.alert = L2_2
    L2_2 = L12_1
    L2_2 = L2_2.scheduleNotification
    L3_2 = 86400
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = {}
    L3_2 = L2_1
    L4_2 = "notification Message"
    L5_2 = math
    L5_2 = L5_2.random
    L6_2 = 1
    L7_2 = 4
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L4_2 .. L5_2
    L3_2 = L3_2[L4_2]
    L2_2.alert = L3_2
    L3_2 = L12_1
    L3_2 = L3_2.scheduleNotification
    L4_2 = 604800
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = hub
    if L3_2 ~= nil then
      L3_2 = log3
      L4_2 = "applicationSuspend encountered, we are closing the hub"
      L3_2(L4_2)
      L3_2 = hub
      L4_2 = L3_2
      L3_2 = L3_2.removeHub
      L3_2(L4_2)
      L3_2 = nil
      hub = L3_2
    end
    L3_2 = os
    L3_2 = L3_2.time
    L3_2 = L3_2()
    L13_1 = L3_2
  end
  L1_2 = A0_2.type
  if L1_2 == "applicationResume" then
    L1_2 = log3
    L2_2 = "applicationResume"
    L1_2(L2_2)
    L1_2 = _buildType
    if L1_2 == "release" then
      L1_2 = todNative
      if L1_2 then
        L1_2 = todNative
        L1_2 = L1_2.onResume
        if L1_2 then
          L1_2 = todNative
          L1_2 = L1_2.onResume
          L1_2()
        end
      end
    end
    L1_2 = L4_1
    L1_2 = L1_2.playerComeback
    L1_2()
    L1_2 = log3
    L2_2 = "on resume"
    L1_2(L2_2)
    L1_2 = hub
    if L1_2 ~= nil then
      L1_2 = hub
      L2_2 = L1_2
      L1_2 = L1_2.removeHub
      L1_2(L2_2)
      L1_2 = nil
      hub = L1_2
    end
    L1_2 = L5_1
    L1_2 = L1_2.createHub
    L1_2()
    L1_2 = hub
    L1_2 = L1_2.init
    L1_2()
    L1_2 = notLoading
    if L1_2 ~= true then
      L1_2 = system
      L1_2 = L1_2.cancelNotification
      L1_2()
      L1_2 = hub
      if L1_2 then
        L1_2 = mainPlayer
        L1_2 = L1_2.tribe
        if L1_2 then
          L1_2 = timer
          L1_2 = L1_2.performWithDelay
          L2_2 = 5
          
          function L3_2()
            local L0_3, L1_3
            L0_3 = hub
            L1_3 = L0_3
            L0_3 = L0_3.reconnect
            L0_3(L1_3)
          end
          
          L4_2 = 1
          L1_2(L2_2, L3_2, L4_2)
        end
      end
      L1_2 = os
      L1_2 = L1_2.time
      L1_2 = L1_2()
      L2_2 = L13_1
      L2_2 = L1_2 - L2_2
      L3_2 = L14_1
      if L2_2 > L3_2 then
        L3_2 = L0_1
        L3_2 = L3_2.getSceneName
        L4_2 = "current"
        L3_2 = L3_2(L4_2)
        if L3_2 ~= "Scenes.Loading" then
          L3_2 = L0_1
          L3_2 = L3_2.getSceneName
          L4_2 = "overlay"
          L3_2 = L3_2(L4_2)
          if L3_2 ~= "Scenes.StoryScene" then
            L3_2 = L9_1
            L4_2 = L3_2
            L3_2 = L3_2.removeCurrentOverlay
            L3_2(L4_2)
            L3_2 = L8_1
            L4_2 = L3_2
            L3_2 = L3_2.removeCurrentOverlay
            L3_2(L4_2)
            L3_2 = L6_1
            L3_2 = L3_2.resetTutorialState
            L3_2()
            L3_2 = L10_1
            L3_2 = L3_2.hideAll
            L3_2()
            L3_2 = L0_1
            L3_2 = L3_2.gotoScene
            L4_2 = "Scenes.Loading"
            L3_2(L4_2)
            L3_2 = L0_1
            L3_2 = L3_2.removeScene
            L4_2 = "Scenes.ReceivedScene"
            L3_2(L4_2)
            L3_2 = L0_1
            L3_2 = L3_2.hideOverlay
            L3_2()
            L3_2 = require
            L4_2 = "Views.BattleOutComeView2"
            L3_2 = L3_2(L4_2)
            L4_2 = L3_2.removeOverlay
            L4_2()
            L4_2 = L11_1
            L4_2 = L4_2.removeMoreView
            L4_2()
            L4_2 = mainPlayer
            L4_2 = L4_2.settings
            L4_2 = L4_2.perFormInstagram
            if L4_2 == true then
              L4_2 = mainPlayer
              L5_2 = L4_2
              L4_2 = L4_2.setSettingForKey
              L6_2 = "perFormInstagram"
              L7_2 = false
              L4_2(L5_2, L6_2, L7_2)
              L4_2 = mainPlayer
              L5_2 = L4_2
              L4_2 = L4_2.saveSettings
              L4_2(L5_2)
              L4_2 = mainPlayer
              L4_2 = L4_2.claimInstagramReward
              L5_2 = L20_1
              L6_2 = L21_1
              L4_2(L5_2, L6_2)
              return
            else
              L4_2 = mainPlayer
              L4_2 = L4_2.settings
              L4_2 = L4_2.perFormFB
              if L4_2 == true then
                L4_2 = mainPlayer
                L5_2 = L4_2
                L4_2 = L4_2.setSettingForKey
                L6_2 = "perFormFB"
                L7_2 = false
                L4_2(L5_2, L6_2, L7_2)
                L4_2 = mainPlayer
                L5_2 = L4_2
                L4_2 = L4_2.saveSettings
                L4_2(L5_2)
                L4_2 = mainPlayer
                L4_2 = L4_2.claimFBReward
                L5_2 = L18_1
                L6_2 = L19_1
                L4_2(L5_2, L6_2)
                return
              else
                L4_2 = L0_1
                L4_2 = L4_2.getScene
                L5_2 = "Scenes.Loading"
                L4_2 = L4_2(L5_2)
                L5_2 = L4_1
                L5_2.delegate = L4_2
                L5_2 = L4_1
                L5_2 = L5_2.loadPlayer
                L5_2()
              end
            end
          end
        end
      end
      L3_2 = liveBattleNotificationBarView
      if L3_2 ~= nil then
        L3_2 = liveBattleNotificationBarView
        L3_2 = L3_2.notificationCounter
        if 0 < L3_2 then
          L3_2 = {}
          L4_2 = pairs
          L5_2 = liveBattleNotificationBarView
          L5_2 = L5_2.ticketsTemp
          L4_2, L5_2, L6_2 = L4_2(L5_2)
          for L7_2, L8_2 in L4_2, L5_2, L6_2 do
            L3_2[L7_2] = L8_2
          end
          L4_2 = 0
          while true do
            L5_2 = L3_2[L4_2]
            if L5_2 == nil then
              break
            end
            L5_2 = L3_2[L4_2]
            L5_2 = L5_2.loadBar
            L5_2 = L5_2.xScale
            if L5_2 ~= nil then
              L5_2 = transition
              L5_2 = L5_2.cancel
              L6_2 = L3_2[L4_2]
              L6_2 = L6_2.loadBar
              L5_2(L6_2)
              L5_2 = L3_2[L4_2]
              L5_2 = L5_2.loadBar
              L6_2 = L3_2[L4_2]
              L6_2 = L6_2.loadBar
              L6_2 = L6_2.xScale
              L7_2 = L3_2[L4_2]
              L7_2 = L7_2.ticketTime
              L7_2 = L2_2 / L7_2
              L6_2 = L6_2 - L7_2
              L5_2.xScale = L6_2
              L5_2 = L3_2[L4_2]
              L5_2 = L5_2.loadBar
              L5_2 = L5_2.xScale
              if 0 < L5_2 then
                L5_2 = L3_2[L4_2]
                L5_2 = L5_2.ticketTime
                L6_2 = L3_2[L4_2]
                L6_2 = L6_2.loadBar
                L6_2 = L6_2.xScale
                L5_2 = L5_2 * L6_2
                L6_2 = transition
                L6_2 = L6_2.to
                L7_2 = L3_2[L4_2]
                L7_2 = L7_2.loadBar
                L8_2 = {}
                L8_2.xScale = 0
                L9_2 = L5_2 * 1000
                L8_2.time = L9_2
                L9_2 = L3_2[L4_2]
                L9_2 = L9_2.removeTicket
                L8_2.onComplete = L9_2
                L6_2(L7_2, L8_2)
              else
                L5_2 = L3_2[L4_2]
                L5_2 = L5_2.loadBar
                L5_2.xScale = 0
                L5_2 = L3_2[L4_2]
                L5_2 = L5_2.removeTicket
                L5_2()
              end
            else
              L5_2 = log3
              L6_2 = "ticket load bar x scale not found"
              L5_2(L6_2)
            end
            L4_2 = L4_2 + 1
          end
        end
      end
      L3_2 = L0_1
      L3_2 = L3_2.getSceneName
      L4_2 = "current"
      L3_2 = L3_2(L4_2)
      if L3_2 == "Scenes.LiveBattle" then
        L4_2 = L0_1
        L4_2 = L4_2.getScene
        L5_2 = "Scenes.LiveBattle"
        L4_2 = L4_2(L5_2)
        L5_2 = L4_2.liveBattleGetInfo
        L5_2 = L5_2()
        L6_2 = log3
        L7_2 = "resume live battle"
        L6_2(L7_2)
        L6_2 = log3
        L7_2 = "timeGone"
        L8_2 = L2_2
        L6_2(L7_2, L8_2)
        L6_2 = L2_2
        L7_2 = transition
        L7_2 = L7_2.cancel
        L8_2 = L5_2.helpTimeRect
        L7_2(L8_2)
        L7_2 = L5_2.helpTimeRect
        L8_2 = L5_2.helpTimeRect
        L8_2 = L8_2.yScale
        L9_2 = L5_2.helpTime
        L9_2 = L2_2 / L9_2
        L8_2 = L8_2 - L9_2
        L7_2.yScale = L8_2
        L7_2 = L5_2.helpTimeRect
        L7_2 = L7_2.yScale
        if 0 < L7_2 then
          L7_2 = L5_2.helpTimeRect
          L7_2 = L7_2.yScale
          L8_2 = L5_2.helpTime
          L7_2 = L7_2 * L8_2
          L8_2 = transition
          L8_2 = L8_2.to
          L9_2 = L5_2.helpTimeRect
          L10_2 = {}
          L10_2.yScale = 0
          L11_2 = L7_2 * 1000
          L10_2.time = L11_2
          L10_2.tag = "LiveBattle"
          
          function L11_2()
            local L0_3, L1_3
            L0_3 = L5_2
            L0_3 = L0_3.helpTimeRect
            L0_3.alpha = 0
            L0_3 = L5_2
            L0_3 = L0_3.hideHelpBar
            L0_3()
          end
          
          L10_2.onComplete = L11_2
          L8_2(L9_2, L10_2)
        else
          L7_2 = L5_2.helpTimeRect
          L7_2.yScale = 0
          L7_2 = L5_2.helpTimeRect
          L7_2.alpha = 0
          L7_2 = L5_2.hideHelpBar
          L7_2()
        end
        
        function L7_2(A0_3)
          local L1_3, L2_3, L3_3, L4_3, L5_3
          if A0_3 < 5 then
            L1_3 = L5_2
            L1_3 = L1_3.myBattleCardSlot
            L1_3 = L1_3[A0_3]
            if L1_3 ~= nil then
              L1_3 = log3
              L2_3 = "timer.counter"
              L3_3 = A0_3
              L4_3 = L5_2
              L4_3 = L4_3.myBattleCardSlot
              L4_3 = L4_3[A0_3]
              L4_3 = L4_3.timer
              L4_3 = L4_3.counter
              L5_3 = L6_2
              L1_3(L2_3, L3_3, L4_3, L5_3)
              L1_3 = L5_2
              L1_3 = L1_3.myBattleCardSlot
              L1_3 = L1_3[A0_3]
              L1_3 = L1_3.timer
              L1_3 = L1_3.counter
              L2_3 = L6_2
              L1_3 = L1_3 - L2_3
              if 0 <= L1_3 then
                L1_3 = L5_2
                L1_3 = L1_3.myBattleCardSlot
                L1_3 = L1_3[A0_3]
                L1_3 = L1_3.timer
                L2_3 = L5_2
                L2_3 = L2_3.myBattleCardSlot
                L2_3 = L2_3[A0_3]
                L2_3 = L2_3.timer
                L2_3 = L2_3.counter
                L3_3 = L6_2
                L2_3 = L2_3 - L3_3
                L1_3.counter = L2_3
              else
                L1_3 = L5_2
                L1_3 = L1_3.myBattleCardSlot
                L1_3 = L1_3[A0_3]
                L1_3 = L1_3.timer
                L2_3 = L1_3
                L1_3 = L1_3.stopCoinTimer
                L3_3 = true
                L1_3(L2_3, L3_3)
                L1_3 = L6_2
                L2_3 = L5_2
                L2_3 = L2_3.myBattleCardSlot
                L2_3 = L2_3[A0_3]
                L2_3 = L2_3.timer
                L2_3 = L2_3.counter
                L1_3 = L1_3 - L2_3
                L6_2 = L1_3
                L1_3 = L5_2
                L1_3 = L1_3.myBattleCardSlot
                L1_3 = L1_3[A0_3]
                L1_3 = L1_3.timer
                L1_3.counter = 0
                A0_3 = A0_3 + 1
                L1_3 = L7_2
                L2_3 = A0_3
                L1_3(L2_3)
              end
          end
          else
            L1_3 = log3
            L2_3 = "game time finished"
            L1_3(L2_3)
          end
        end
        
        L8_2 = pairs
        L9_2 = L5_2.myBattleCardSlot
        L8_2, L9_2, L10_2 = L8_2(L9_2)
        for L11_2 in L8_2, L9_2, L10_2 do
          L12_2 = L5_2.myBattleCardSlot
          L12_2 = L12_2[L11_2]
          L12_2 = L12_2.timer
          if L12_2 then
            L12_2 = L5_2.myBattleCardSlot
            L12_2 = L12_2[L11_2]
            L12_2 = L12_2.timer
            L12_2 = L12_2.state
            if L12_2 == 1 then
              L12_2 = L7_2
              L13_2 = L11_2
              L12_2(L13_2)
              break
            end
          end
        end
      end
    else
      L1_2 = L10_1
      L1_2 = L1_2.hide
      L1_2()
    end
  else
    L1_2 = A0_2.type
    if L1_2 == "applicationExit" then
      L1_2 = log3
      L2_2 = "current scene: "
      L3_2 = L0_1
      L3_2 = L3_2.getSceneName
      L4_2 = "current"
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L1_2 = L0_1
      L1_2 = L1_2.getSceneName
      L2_2 = "current"
      L1_2 = L1_2(L2_2)
      if L1_2 == "Scenes.LiveBattleOutcome" then
        L1_2 = log3
        L2_2 = "leave chat message send"
        L1_2(L2_2)
        L1_2 = hub
        L2_2 = L1_2
        L1_2 = L1_2.publish
        L3_2 = {}
        L4_2 = {}
        L4_2.isLiveBattle = true
        L4_2.push_message_type = "chat"
        L5_2 = "System "
        L6_2 = "\""
        L7_2 = mainPlayer
        L7_2 = L7_2.name
        L8_2 = "\""
        L9_2 = " left chat"
        L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
        L4_2.text = L5_2
        L4_2.messageType = 1
        L4_2.sender = "#System Message"
        L5_2 = os
        L5_2 = L5_2.time
        L5_2 = L5_2()
        L6_2 = mainPlayer
        L6_2 = L6_2.timeDelta
        L5_2 = L5_2 + L6_2
        L4_2.creationDate = L5_2
        L5_2 = os
        L5_2 = L5_2.time
        L5_2 = L5_2()
        L4_2.id = L5_2
        L5_2 = system
        L5_2 = L5_2.getTimer
        L5_2 = L5_2()
        L4_2.timestamp = L5_2
        L3_2.message = L4_2
        L1_2(L2_2, L3_2)
      end
      L1_2 = _buildType
      if L1_2 == "release" then
        L1_2 = print
        L2_2 = "!!!on exit !!!"
        L1_2(L2_2)
        L1_2 = todNative
        if L1_2 then
          L1_2 = todNative
          L1_2 = L1_2.onExit
          if L1_2 then
            L1_2 = todNative
            L1_2 = L1_2.onExit
            L1_2()
          end
        end
      end
    end
  end
end

L23_1 = Runtime
L24_1 = L23_1
L23_1 = L23_1.addEventListener
L25_1 = "system"
L26_1 = L22_1
L23_1(L24_1, L25_1, L26_1)
L24_1 = L15_1
L23_1 = L15_1.addEventListener
L25_1 = "create"
L26_1 = L15_1
L23_1(L24_1, L25_1, L26_1)
L24_1 = L15_1
L23_1 = L15_1.addEventListener
L25_1 = "show"
L26_1 = L15_1
L23_1(L24_1, L25_1, L26_1)
L24_1 = L15_1
L23_1 = L15_1.addEventListener
L25_1 = "destroy"
L26_1 = L15_1
L23_1(L24_1, L25_1, L26_1)
return L15_1
