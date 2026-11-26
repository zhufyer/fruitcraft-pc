local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.SceneCreator"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Models.Player"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Language"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Models.UserCard"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.ActivityIndicatorView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.CardView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Constants"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Views.NotificationView"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Utils.SKComponents"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Utils.Toolbox"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Tutorial.TutorialManager"
L11_1 = L11_1(L12_1)
L12_1 = nil
L13_1 = require
L14_1 = "Utils.Analytics"
L13_1 = L13_1(L14_1)
L14_1 = require
L15_1 = "Models.AchievementManager"
L14_1 = L14_1(L15_1)
L15_1 = require
L16_1 = "Data.BaseAchievements"
L15_1 = L15_1(L16_1)
L16_1 = require
L17_1 = "Tutorial.VerticalOverlayView"
L16_1 = L16_1(L17_1)
L17_1 = require
L18_1 = "Tutorial.HorizontalOverlayView"
L17_1 = L17_1(L18_1)
L18_1 = require
L19_1 = "Models.MessagePipe"
L18_1 = L18_1(L19_1)
L19_1 = require
L20_1 = "Models.Operation"
L19_1 = L19_1(L20_1)
L20_1 = require
L21_1 = "Components.AudioManager"
L20_1 = L20_1(L21_1)
L21_1 = require
L22_1 = "widget"
L21_1 = L21_1(L22_1)
L22_1 = require
L23_1 = "plugin.notifications.v2"
L22_1 = L22_1(L23_1)
L23_1 = require
L24_1 = "Views.MoreViewSource"
L23_1 = L23_1(L24_1)
L24_1 = require
L25_1 = "Components.DailyRewardsManager"
L24_1 = L24_1(L25_1)
L25_1 = require
L26_1 = "Utils.noobhub"
L25_1(L26_1)
L25_1 = require
L26_1 = "Language"
L25_1 = L25_1(L26_1)
L26_1 = L1_1.newScene
L27_1 = "Loading"
L26_1 = L26_1(L27_1)
L27_1 = 1
L28_1 = 0
L29_1 = nil
L30_1 = nil
L31_1 = nil
L32_1 = false
L33_1 = nil
L34_1 = 1
L35_1 = 300
L36_1 = isAndroid
L36_1 = L36_1()
if L36_1 then
  L36_1 = L13_1.init
  L37_1 = "M3BWNBRW27XTN9T2265Q"
  L36_1(L37_1)
else
  L36_1 = L13_1.init
  L37_1 = "6376TT6GFZ3HC33VS5JM"
  L36_1(L37_1)
end

function L36_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = showSimpleDialog
  L1_2 = "Facebook Reward"
  L2_2 = "You've successfully received a bonus for visiting Fruitcraft's Facebook page!"
  L3_2 = nil
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = L2_1
    L1_3 = L26_1
    L0_3.delegate = L1_3
    L0_3 = L2_1
    L0_3 = L0_3.loadPlayer
    L0_3()
  end
  
  L0_2(L1_2, L2_2, L3_2, L4_2)
end

function L37_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = log
  L2_2 = "Failed to submit FB reward"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = L2_1
  L2_2 = L26_1
  L1_2.delegate = L2_2
  L1_2 = L2_1
  L1_2 = L1_2.loadPlayer
  L1_2()
end

function L38_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = showSimpleDialog
  L1_2 = "Instagram Reward"
  L2_2 = "You've successfully received a bonus for visiting Fruitcraft's Instagram page!"
  L3_2 = nil
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = L2_1
    L1_3 = L26_1
    L0_3.delegate = L1_3
    L0_3 = L2_1
    L0_3 = L0_3.loadPlayer
    L0_3()
  end
  
  L0_2(L1_2, L2_2, L3_2, L4_2)
end

function L39_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = log
  L2_2 = "Failed to submit Instagram reward"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = L2_1
  L2_2 = L26_1
  L1_2.delegate = L2_2
  L1_2 = L2_1
  L1_2 = L1_2.loadPlayer
  L1_2()
end

function L40_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = print
  L2_2 = "[Loading] !!!! Application event:"
  L3_2 = A0_2.type
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = A0_2.url
  if L1_2 ~= nil then
    L1_2 = print
    L2_2 = "[Loading] event.url = "
    L3_2 = A0_2.url
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
    L1_2 = L9_1
    if L1_2 == nil then
      L1_2 = A0_2.url
      _LatestURLForSKComponent = L1_2
    else
      L1_2 = L9_1
      L1_2 = L1_2.webPurchaseCallback
      L2_2 = A0_2.url
      L1_2(L2_2)
    end
  end
  L1_2 = A0_2.type
  if L1_2 == "applicationStart" then
    L1_2 = L22_1
    L1_2 = L1_2.cancelNotification
    L1_2()
    L1_2 = log3
    L2_2 = "_buildType is "
    L3_2 = _buildType
    L1_2(L2_2, L3_2)
    L1_2 = _buildType
    if L1_2 == "release" then
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
    L1_2 = L19_1
    if L1_2 then
      L1_2 = L19_1
      L1_2 = L1_2.clearCachedBattleOpponents
      L1_2()
    end
    L1_2 = _G
    L1_2.inBackground = true
    L1_2 = {}
    L2_2 = L25_1
    L3_2 = "notification Message"
    L4_2 = math
    L4_2 = L4_2.random
    L5_2 = 1
    L6_2 = 4
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L3_2 .. L4_2
    L2_2 = L2_2[L3_2]
    L1_2.alert = L2_2
    L2_2 = L22_1
    L2_2 = L2_2.scheduleNotification
    L3_2 = 86400
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = {}
    L3_2 = L25_1
    L4_2 = "notification Message"
    L5_2 = math
    L5_2 = L5_2.random
    L6_2 = 1
    L7_2 = 4
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L4_2 .. L5_2
    L3_2 = L3_2[L4_2]
    L2_2.alert = L3_2
    L3_2 = L22_1
    L3_2 = L3_2.scheduleNotification
    L4_2 = 604800
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = mainPlayer
    if L3_2 then
      L3_2 = mainPlayer
      L3_2 = L3_2.cards
      if L3_2 then
        L3_2 = L4_1
        L4_2 = L3_2
        L3_2 = L3_2.calculateMaximumCooldownTime
        L3_2 = L3_2(L4_2)
        if L3_2 ~= nil then
          L3_2 = L4_1
          L4_2 = L3_2
          L3_2 = L3_2.calculateMaximumCooldownTime
          L3_2 = L3_2(L4_2)
          if 0 < L3_2 then
            L3_2 = {}
            L4_2 = L25_1
            L4_2 = L4_2["Cooldown Notification"]
            L3_2.alert = L4_2
            L4_2 = L22_1
            L4_2 = L4_2.scheduleNotification
            L5_2 = L4_1
            L6_2 = L5_2
            L5_2 = L5_2.calculateMaximumCooldownTime
            L5_2 = L5_2(L6_2)
            L6_2 = L3_2
            L4_2(L5_2, L6_2)
          end
        end
      end
    end
    L3_2 = mainPlayer
    if L3_2 then
      L3_2 = L24_1
      L3_2 = L3_2.calculateRemainingTimeToNextReward
      L3_2 = L3_2()
      if L3_2 ~= nil then
        L3_2 = L24_1
        L3_2 = L3_2.calculateRemainingTimeToNextReward
        L3_2 = L3_2()
        if 0 < L3_2 then
          L3_2 = {}
          L4_2 = L25_1
          L4_2 = L4_2["Daily Reward Notification"]
          L3_2.alert = L4_2
          L4_2 = L22_1
          L4_2 = L4_2.scheduleNotification
          L5_2 = L24_1
          L5_2 = L5_2.calculateRemainingTimeToNextReward
          L5_2 = L5_2()
          L6_2 = L3_2
          L4_2(L5_2, L6_2)
        end
      end
    end
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
    L28_1 = L3_2
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
    L1_2 = L2_1
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
    L1_2 = L18_1
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
      L2_2 = L28_1
      L2_2 = L1_2 - L2_2
      L3_2 = L35_1
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
            L3_2 = L17_1
            L4_2 = L3_2
            L3_2 = L3_2.removeCurrentOverlay
            L3_2(L4_2)
            L3_2 = L16_1
            L4_2 = L3_2
            L3_2 = L3_2.removeCurrentOverlay
            L3_2(L4_2)
            L3_2 = L12_1
            L3_2 = L3_2.resetTutorialState
            L3_2()
            L3_2 = L5_1
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
            L4_2 = L23_1
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
              L5_2 = L38_1
              L6_2 = L39_1
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
                L5_2 = L36_1
                L6_2 = L37_1
                L4_2(L5_2, L6_2)
                return
              else
                L4_2 = L2_1
                L5_2 = L26_1
                L4_2.delegate = L5_2
                L4_2 = L2_1
                L4_2 = L4_2.loadPlayer
                L4_2()
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
      L1_2 = L5_1
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

L41_1 = Runtime
L42_1 = L41_1
L41_1 = L41_1.addEventListener
L43_1 = "system"
L44_1 = L40_1
L41_1(L42_1, L43_1, L44_1)

function L41_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = todNative
  if L1_2 then
    L1_2 = isAndroid
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = todNative
      L1_2 = L1_2.EmptyActivityShow
      L1_2()
    end
  end
  L1_2 = {}
  L1_2.name = "loadingProgress"
  L1_2.value = 0.8
  L2_2 = Runtime
  L3_2 = L2_2
  L2_2 = L2_2.dispatchEvent
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = timer
  L2_2 = L2_2.performWithDelay
  L3_2 = 100
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = getParsePlayerData
    L0_3()
  end
  
  L2_2(L3_2, L4_2)
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = mainPlayer
    L0_3 = L0_3.settings
    L0_3 = L0_3.tribeStatus
    if L0_3 == nil then
      L0_3 = log3
      L1_3 = "save player status online"
      L0_3(L1_3)
      L0_3 = mainPlayer
      L1_3 = L0_3
      L0_3 = L0_3.setSettingForKey
      L2_3 = "tribeStatus"
      L3_3 = L7_1
      L3_3 = L3_3.Player_Status_Online
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = mainPlayer
      L1_3 = L0_3
      L0_3 = L0_3.saveSettings
      L0_3(L1_3)
    end
    L0_3 = L7_1
    L0_3 = L0_3.setLeagueItemsSize
    L0_3()
    L0_3 = L14_1
    L0_3 = L0_3.checkLevelAchievement
    L0_3()
    L0_3 = L2_1
    L0_3 = L0_3.restoreMode
    if L0_3 then
      L0_3 = log3
      L1_3 = "RESTORE MODE"
      L0_3(L1_3)
      L0_3 = L5_1
      L0_3 = L0_3.hide
      L0_3()
      L0_3 = L2_1
      L0_3.restoreMode = false
      L0_3 = reloadGame
      L0_3()
      L0_3 = L11_1
      L0_3 = L0_3.resetAllTutorials
      L0_3()
      L0_3 = L11_1
      L0_3 = L0_3.recalculateTutorials
      L0_3()
    else
      function L0_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4
        
        L0_4 = hub
        if L0_4 ~= nil then
          L0_4 = hub
          L0_4 = L0_4.init
          L0_4()
        else
          L0_4 = L18_1
          L0_4 = L0_4.createHub
          L0_4()
          L0_4 = hub
          L0_4 = L0_4.init
          L0_4()
        end
        L0_4 = log3
        L1_4 = "Loading cards"
        L0_4(L1_4)
        L0_4 = L6_1
        L1_4 = L0_4
        L0_4 = L0_4.deleteCache
        L0_4(L1_4)
        L0_4 = pairs
        L1_4 = mainPlayer
        L1_4 = L1_4.cards
        L0_4, L1_4, L2_4 = L0_4(L1_4)
        for L3_4, L4_4 in L0_4, L1_4, L2_4 do
          L5_4 = L6_1
          L6_4 = L5_4
          L5_4 = L5_4.new
          L7_4 = "medium"
          L8_4 = L4_4
          L9_4 = nil
          L10_4 = nil
          L11_4 = true
          L5_4 = L5_4(L6_4, L7_4, L8_4, L9_4, L10_4, L11_4)
          L7_4 = L5_4
          L6_4 = L5_4.removeSelf
          L6_4(L7_4)
        end
        L0_4 = log3
        L1_4 = "finished loading cards"
        L0_4(L1_4)
        L0_4 = log3
        L1_4 = "loading scenes"
        L0_4(L1_4)
        L0_4 = {}
        L0_4.name = "loadingProgress"
        L0_4.value = 0.9
        L1_4 = Runtime
        L2_4 = L1_4
        L1_4 = L1_4.dispatchEvent
        L3_4 = L0_4
        L1_4(L2_4, L3_4)
        L1_4 = timer
        L1_4 = L1_4.performWithDelay
        L2_4 = 100
        
        function L3_4()
          local L0_5, L1_5
          L0_5 = cardloading
          L0_5()
        end
        
        L1_4(L2_4, L3_4)
        
        function L1_4()
          local L0_5, L1_5
          L0_5 = L26_1
          L0_5 = L0_5.loadGameScenesAndStart
          L0_5()
        end
        
        cardloading = L1_4
      end
      
      L1_3 = log3
      L2_3 = "app version is : "
      L3_3 = string
      L3_3 = L3_3.len
      L4_3 = L10_1
      L4_3 = L4_3.getAppVersion
      L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L4_3()
      L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      L1_3 = L10_1
      L1_3 = L1_3.getAppVersion
      L1_3 = L1_3()
      L2_3 = L10_1
      L2_3 = L2_3.checkVersionIsCorrect
      L3_3 = mainPlayer
      L3_3 = L3_3.latestAppVersion
      L4_3 = L1_3
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = string
      L3_3 = L3_3.len
      L4_3 = L1_3
      L3_3 = L3_3(L4_3)
      if 0 < L3_3 and not L2_3 then
        L3_3 = _debugMode
        if not L3_3 then
          L3_3 = showSimpleDialog
          L4_3 = "Update app title"
          L5_3 = L25_1
          L5_3 = L5_3["You must update app"]
          L6_3 = " "
          L7_3 = mainPlayer
          L7_3 = L7_3.updateMessage
          if not L7_3 then
            L7_3 = ""
          end
          L8_3 = "\n"
          L9_3 = L25_1
          L9_3 = L9_3.localizedString
          L10_3 = "Your Restore Code"
          L11_3 = {}
          L12_3 = mainPlayer
          L12_3 = L12_3.restoreKey
          L11_3.code = L12_3
          L9_3 = L9_3(L10_3, L11_3)
          L5_3 = L5_3 .. L6_3 .. L7_3 .. L8_3 .. L9_3
          L6_3 = "Update"
          
          function L7_3()
            local L0_4, L1_4
            L0_4 = system
            L0_4 = L0_4.openURL
            L1_4 = L7_1
            L1_4 = L1_4.Path_AppLinkInStore
            L0_4(L1_4)
          end
          
          L3_3(L4_3, L5_3, L6_3, L7_3)
      end
      else
        L3_3 = mainPlayer
        L3_3 = L3_3.emergencyMessage
        if L3_3 ~= nil then
          L3_3 = mainPlayer
          L3_3 = L3_3.emergencyMessage
          if L3_3 ~= "" then
            L3_3 = showSimpleDialog
            L4_3 = "Notice"
            L5_3 = mainPlayer
            L5_3 = L5_3.emergencyMessage
            L6_3 = nil
            L7_3 = L0_3
            L3_3(L4_3, L5_3, L6_3, L7_3)
        end
        else
          L3_3 = L0_3
          L3_3()
        end
      end
    end
  end
  
  getParsePlayerData = L2_2
end

L26_1.didFinishLoading = L41_1

function L41_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = require
  L1_2 = "Tutorial.TutorialManager2"
  L0_2 = L0_2(L1_2)
  L12_1 = L0_2
  L0_2 = L14_1
  L0_2 = L0_2.startGame
  L0_2()
  L0_2 = L0_1
  L0_2 = L0_2.loadScene
  L1_2 = "Scenes.ChooseDeck"
  L0_2(L1_2)
  L0_2 = L0_1
  L0_2 = L0_2.loadScene
  L1_2 = "Scenes.Cards"
  L0_2(L1_2)
  L0_2 = L0_1
  L0_2 = L0_2.loadScene
  L1_2 = "Scenes.Battle"
  L0_2(L1_2)
  L0_2 = L0_1
  L0_2 = L0_2.loadScene
  L1_2 = "Scenes.RankingsScene"
  L0_2(L1_2)
  L0_2 = mainPlayer
  L0_2 = L0_2.leagueId
  if L0_2 ~= 0 then
    L0_2 = L0_1
    L0_2 = L0_2.loadScene
    L1_2 = "Scenes.LeagueScene"
    L0_2(L1_2)
  end
  L0_2 = L0_1
  L0_2 = L0_2.loadScene
  L1_2 = "Scenes.LiveBattle"
  L0_2(L1_2)
  L0_2 = L0_1
  L0_2 = L0_2.loadScene
  L1_2 = "Scenes.WorldMap"
  L0_2(L1_2)
  L0_2 = {}
  L0_2.name = "loadingProgress"
  L0_2.value = 1
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.dispatchEvent
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
  L1_2 = timer
  L1_2 = L1_2.performWithDelay
  L2_2 = 100
  
  function L3_2()
    local L0_3, L1_3
    L0_3 = startGame
    L0_3()
  end
  
  L1_2(L2_2, L3_2)
  
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = mainPlayer
    L0_3 = L0_3.settings
    L0_3 = L0_3.liveBattleTutorialFinished
    if L0_3 == true then
      L0_3 = L11_1
      L0_3 = L0_3.finishedTutorial
      L1_3 = "liveBattle"
      L0_3(L1_3)
    else
      L0_3 = L15_1
      L0_3 = L0_3[150]
      L0_3 = L0_3.recieved
      if L0_3 == true then
        L0_3 = L11_1
        L0_3 = L0_3.finishedTutorial
        L1_3 = "liveBattle"
        L0_3(L1_3)
      else
        L0_3 = mainPlayer
        L0_3 = L0_3.settings
        L0_3.liveBattleIsOn = false
      end
    end
    L0_3 = mainPlayer
    L0_3 = L0_3.level
    if 9 <= L0_3 then
      L0_3 = mainPlayer
      L0_3 = L0_3.settings
      L0_3 = L0_3.liveBattleIsOn
      if L0_3 ~= true then
        L0_3 = mainPlayer
        L0_3 = L0_3.settings
        L0_3.liveBattleIsOn = true
        L0_3 = L14_1
        L0_3 = L0_3.registerAchievementsWithId
        L1_3 = 150
        L0_3(L1_3)
      end
    end
    L0_3 = log3
    L1_3 = "&&&&& live battle flag : "
    L2_3 = mainPlayer
    L2_3 = L2_3.settings
    L2_3 = L2_3.liveBattleIsOn
    L0_3(L1_3, L2_3)
    L0_3 = L15_1
    L0_3 = L0_3[151]
    L0_3 = L0_3.recieved
    if L0_3 == true then
      L0_3 = L11_1
      L0_3 = L0_3.finishedTutorial
      L1_3 = "profile"
      L0_3(L1_3)
    end
    L0_3 = L15_1
    L0_3 = L0_3[152]
    L0_3 = L0_3.recieved
    if L0_3 == true then
      L0_3 = L11_1
      L0_3 = L0_3.finishedTutorial
      L1_3 = "boosts"
      L0_3(L1_3)
    end
    L0_3 = L0_1
    L0_3 = L0_3.getScene
    L1_3 = "Scenes.WorldMap"
    L0_3 = L0_3(L1_3)
    L0_3 = L0_3.questManager
    L1_3 = L15_1
    L1_3 = L1_3[3001]
    L1_3 = L1_3.recieved
    if L1_3 ~= true then
      L1_3 = mainPlayer
      L1_3 = L1_3.totalQuests
      L2_3 = L0_3.totalWorldsLevelNumbers
      if not (L1_3 > L2_3) then
        goto lbl_83
      end
    end
    L1_3 = log3
    L2_3 = "player finished world map quest"
    L1_3(L2_3)
    L0_3.isFinishedQuestMap = true
    ::lbl_83::
    L1_3 = L15_1
    L1_3 = L1_3[2010]
    L1_3 = L1_3.recieved
    if L1_3 == false then
      L1_3 = mainPlayer
      L1_3 = L1_3.tribe
      if L1_3 ~= nil then
        L1_3 = L14_1
        L1_3 = L1_3.checkJoinedTribe
        L1_3()
      end
    end
    L1_3 = log3
    L2_3 = "Finished loading scenes"
    L1_3(L2_3)
    L1_3 = L0_1
    L1_3 = L1_3.hideOverlay
    L1_3()
    L1_3 = L5_1
    L1_3 = L1_3.hideAll
    L1_3()
    L1_3 = L4_1
    L2_3 = L1_3
    L1_3 = L1_3.startCooldownTimer
    L1_3(L2_3)
    L1_3 = log3
    L2_3 = "going home"
    L1_3(L2_3)
    L1_3 = mainPlayer
    L1_3 = L1_3.isFirstOppening
    if L1_3 == true then
      L1_3 = mainPlayer
      L1_3.isFirstOppening = false
      L1_3 = mainPlayer
      L1_3 = L1_3.isExistingPlayer
      if L1_3 == true then
        L1_3 = mainPlayer
        L1_3 = L1_3.hasDailyReward
        if L1_3 then
          L1_3 = L0_1
          L1_3 = L1_3.showOverlay
          L2_3 = "Scenes.DailyRewardsOverlay"
          L1_3(L2_3)
        else
          L1_3 = L0_1
          L1_3 = L1_3.gotoScene
          L2_3 = "Scenes.Home"
          L1_3(L2_3)
        end
      else
        L1_3 = log3
        L2_3 = " #### its new Player ####"
        L1_3(L2_3)
        L1_3 = require
        L2_3 = "Components.DataManager"
        L1_3 = L1_3(L2_3)
        L2_3 = L13_1
        L2_3 = L2_3.logEvent
        L3_3 = "New player joined"
        L4_3 = {}
        L5_3 = L1_3.moduleVersion
        L6_3 = "TutorialData"
        L5_3 = L5_3(L6_3)
        L4_3.TutorialVersion = L5_3
        L2_3(L3_3, L4_3)
        L2_3 = L12_1
        L2_3 = L2_3.checkForTutorial
        L3_3 = "Scenes.Loading"
        L4_3 = L26_1
        L2_3(L3_3, L4_3)
      end
    else
      L1_3 = mainPlayer
      L1_3 = L1_3.hasDailyReward
      if L1_3 then
        L1_3 = L0_1
        L1_3 = L1_3.showOverlay
        L2_3 = "Scenes.DailyRewardsOverlay"
        L1_3(L2_3)
      else
        L1_3 = L0_1
        L1_3 = L1_3.gotoScene
        L2_3 = "Scenes.Home"
        L1_3(L2_3)
      end
      L1_3 = mainPlayer
      L1_3 = L1_3.newMessageNumber
      if 0 < L1_3 then
        L1_3 = mainPlayer
        L1_3 = L1_3.level
        if 3 < L1_3 then
          L1_3 = L8_1
          L2_3 = L1_3
          L1_3 = L1_3.new
          L3_3 = L25_1
          L3_3 = L3_3.localizedString
          L4_3 = "New Messages"
          L5_3 = {}
          L6_3 = mainPlayer
          L6_3 = L6_3.newMessageNumber
          L5_3.count = L6_3
          L3_3 = L3_3(L4_3, L5_3)
          L4_3 = nil
          L5_3 = L25_1
          L5_3 = L5_3["Read Messages"]
          
          function L6_3()
            local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
            L1_4 = mainPlayer
            L1_4 = L1_4.tribe
            if L1_4 then
              L0_4 = 2
            else
              L0_4 = 1
            end
            L1_4 = nil
            L2_4 = mainPlayer
            L2_4 = L2_4.hasDailyReward
            if L2_4 then
              L1_4 = "Scenes.Home"
            end
            L2_4 = L0_1
            L2_4 = L2_4.gotoScene
            L3_4 = "Scenes.MessagesScene"
            L4_4 = {}
            L5_4 = {}
            L5_4.selectedTab = L0_4
            L5_4.isNotification = true
            L5_4.previousScene = L1_4
            L4_4.params = L5_4
            L2_4(L3_4, L4_4)
          end
          
          L7_3 = 3
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
          L1_3 = L8_1
          L1_3 = L1_3.showNotifications
          L1_3()
          L1_3 = mainPlayer
          L1_3.newMessageNumber = 0
        end
      end
    end
  end
  
  startGame = L1_2
end

L26_1.loadGameScenesAndStart = L41_1

function L41_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = errorLog
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = L2_1
  L2_2 = L2_2.restoreMode
  if L2_2 then
    L2_2 = mainPlayer
    L2_2.restoreMode = false
    L2_2 = L2_1
    L2_2.restoreKey = nil
    L2_2 = L5_1
    L2_2 = L2_2.hide
    L2_2()
    L2_2 = showSimpleDialog
    L3_2 = "Profile Restore"
    L4_2 = L25_1
    L4_2 = L4_2[A0_2]
    L5_2 = nil
    
    function L6_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = A1_2
      if L0_3 ~= nil then
        L0_3 = A1_2
        if L0_3 == 159 then
          L0_3 = L0_1
          L0_3 = L0_3.showOverlay
          L1_3 = "Scenes.ExistingPlayerOverlay"
          L2_3 = {}
          L3_3 = {}
          L3_3.mode = "failure"
          L2_3.params = L3_3
          L0_3(L1_3, L2_3)
        end
      end
      L0_3 = A1_2
      if L0_3 ~= nil then
        L0_3 = A1_2
        if L0_3 ~= 154 then
          L0_3 = A1_2
          if L0_3 ~= 155 then
            goto lbl_47
          end
        end
        L0_3 = mainPlayer
        L0_3 = L0_3.level
        if L0_3 < 2 then
          L0_3 = L0_1
          L0_3 = L0_3.showOverlay
          L1_3 = "Scenes.RestoreGameOverlay"
          L2_3 = {}
          L2_3.isModal = true
          L3_3 = {}
          L3_3.previousOverlay = "Scenes.ExistingPlayerOverlay"
          L2_3.params = L3_3
          L0_3(L1_3, L2_3)
        else
          L0_3 = L0_1
          L0_3 = L0_3.showOverlay
          L1_3 = "Scenes.RestoreGameOverlay"
          L2_3 = {}
          L2_3.isModal = true
          L3_3 = {}
          L3_3.previousOverlay = "Scenes.SettingsOverlay"
          L2_3.params = L3_3
          L0_3(L1_3, L2_3)
        end
      end
      ::lbl_47::
    end
    
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = L0_1
    L2_2 = L2_2.hideOverlay
    L2_2()
    L2_2 = L5_1
    L2_2 = L2_2.hide
    L2_2()
    if A1_2 ~= nil and A1_2 == 156 then
      L2_2 = showSimpleDialog
      L3_2 = L25_1
      L3_2 = L3_2["Profile Needed"]
      L4_2 = L25_1
      L4_2 = L4_2["Name or Restorekey required"]
      L5_2 = nil
      
      function L6_2()
        local L0_3, L1_3
        L0_3 = L0_1
        L0_3 = L0_3.showOverlay
        L1_3 = "Scenes.NewInstallOverlay"
        L0_3(L1_3)
      end
      
      L2_2(L3_2, L4_2, L5_2, L6_2)
    elseif A1_2 ~= nil and A1_2 == 154 then
      L2_2 = mainPlayer
      L2_2 = L2_2.settings
      L2_2.restoreKey = nil
      L2_2 = mainPlayer
      L3_2 = L2_2
      L2_2 = L2_2.saveSettings
      L2_2(L3_2)
      L2_2 = L2_1
      L3_2 = L26_1
      L2_2.delegate = L3_2
      L2_2 = L2_1
      L2_2 = L2_2.loadPlayer
      L2_2()
    else
      L2_2 = showSimpleDialog
      L3_2 = L25_1
      L3_2 = L3_2["Load Failed"]
      L4_2 = L25_1
      L4_2 = L4_2[A0_2]
      L5_2 = "Reload"
      
      function L6_2()
        local L0_3, L1_3
        L0_3 = L2_1
        L1_3 = L26_1
        L0_3.delegate = L1_3
        L0_3 = L2_1
        L0_3 = L0_3.loadPlayer
        L0_3()
      end
      
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
end

L26_1.failedToLoad = L41_1
L41_1 = false

function L42_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L8_2 = display
  L8_2 = L8_2.newImageRect
  L9_2 = A0_2.view
  L10_2 = A1_2
  L11_2 = A4_2
  L12_2 = A5_2
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L7_2 = L8_2
  L7_2.x = A2_2
  L7_2.y = A3_2
  L7_2.alpha = A6_2
  return L7_2
end

function L43_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = A0_2.view
  L3_2 = true
  L32_1 = L3_2
  L3_2 = log3
  L4_2 = "CREATE SCENE"
  L3_2(L4_2)
  L3_2 = nil
  L4_2 = 5
  L5_2 = L25_1
  L5_2 = L5_2.lang
  if L5_2 == "fa" then
    L5_2 = L7_1
    L5_2 = L5_2.Path_Assets
    L6_2 = "Splash/Fruit-Craft-F.png"
    L3_2 = L5_2 .. L6_2
    L4_2 = 10
  else
    L5_2 = mainPlayer
    L5_2 = L5_2.newSplash
    if L5_2 == true then
      L5_2 = 1.2
      L34_1 = L5_2
    end
    L5_2 = L7_1
    L5_2 = L5_2.Path_Assets
    L6_2 = "Splash/Fruit-Craft-E.png"
    L3_2 = L5_2 .. L6_2
  end
  L5_2 = mainPlayer
  L5_2 = L5_2.newSplash
  if L5_2 then
    L5_2 = L42_1
    L6_2 = A0_2
    L7_2 = L7_1
    L7_2 = L7_2.Path_Assets
    L8_2 = "Splash/FC-SplashBackground.png"
    L7_2 = L7_2 .. L8_2
    L8_2 = display
    L8_2 = L8_2.contentCenterX
    L9_2 = display
    L9_2 = L9_2.contentCenterY
    L10_2 = 640
    L11_2 = 360
    L12_2 = 1
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    A0_2.background = L5_2
    L5_2 = L42_1
    L6_2 = A0_2
    L7_2 = L3_2
    L8_2 = display
    L8_2 = L8_2.contentCenterX
    L9_2 = display
    L9_2 = L9_2.contentCenterY
    L9_2 = L9_2 * 1.2
    L10_2 = 230
    L11_2 = 64
    L12_2 = 0
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L30_1 = L5_2
    L5_2 = L30_1
    L6_2 = display
    L6_2 = L6_2.contentWidth
    L6_2 = L6_2 - 30
    L7_2 = L30_1
    L7_2 = L7_2.width
    L7_2 = L7_2 / 2
    L6_2 = L6_2 - L7_2
    L5_2.x = L6_2
    L5_2 = L30_1
    L6_2 = L30_1
    L6_2 = L6_2.height
    L6_2 = L6_2 / 2
    L6_2 = L4_2 + L6_2
    L5_2.y = L6_2
  else
    L5_2 = L42_1
    L6_2 = A0_2
    L7_2 = L7_1
    L7_2 = L7_2.Path_Assets
    L8_2 = "Splash/FC-SplashBackground.png"
    L7_2 = L7_2 .. L8_2
    L8_2 = display
    L8_2 = L8_2.contentCenterX
    L9_2 = display
    L9_2 = L9_2.contentCenterY
    L10_2 = 570
    L11_2 = 360
    L12_2 = 1
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    A0_2.background = L5_2
    L5_2 = L42_1
    L6_2 = A0_2
    L7_2 = L3_2
    L8_2 = display
    L8_2 = L8_2.contentCenterX
    L9_2 = display
    L9_2 = L9_2.contentHeight
    L9_2 = L9_2 * 0.125
    L10_2 = 180
    L11_2 = 50
    L12_2 = 0
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L30_1 = L5_2
  end
  L5_2 = mainPlayer
  L6_2 = L5_2
  L5_2 = L5_2.loadSettings
  L5_2(L6_2)
  L5_2 = log2
  L6_2 = "calling play music"
  L5_2(L6_2)
  L5_2 = _debugMode
  if L5_2 == false then
    L5_2 = mainPlayer
    L5_2 = L5_2.settings
    L5_2 = L5_2.bgMusicEnabled
    if L5_2 ~= nil then
      L5_2 = mainPlayer
      L5_2 = L5_2.settings
      L5_2 = L5_2.bgMusicEnabled
      if L5_2 ~= true then
        goto lbl_136
      end
    end
    L5_2 = mainPlayer
    L5_2 = L5_2.isFirstOppening
    if L5_2 ~= true then
      L5_2 = L20_1
      L5_2 = L5_2.playMusic
      L6_2 = L7_1
      L6_2 = L6_2.Path_Assets
      L7_2 = "FC-bg-music.mp3"
      L6_2 = L6_2 .. L7_2
      L5_2(L6_2)
      goto lbl_138
      ::lbl_136::
      L5_2 = L20_1
      L5_2.musicEnabled = false
    end
  end
  ::lbl_138::
  L5_2 = L2_1
  L5_2.delegate = A0_2
  L5_2 = {}
  L5_2.id = "loadingProgress"
  L5_2.initialValue = 0
  L5_2.maxValue = 100
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 / 2
  L5_2.width = L6_2
  L5_2.height = 12.5
  L5_2.alpha = 1
  L6_2 = Theme
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.goldColor
  L5_2.initialBarColor = L6_2
  L6_2 = display
  L6_2 = L6_2.contentCenterX
  L7_2 = mainPlayer
  L7_2 = L7_2.newSplash
  if L7_2 == true then
    L7_2 = display
    L7_2 = L7_2.contentWidth
    L7_2 = L7_2 / 2
    L7_2 = L7_2 * 0.85
    L5_2.width = L7_2
    L7_2 = {}
    L8_2 = 0
    L9_2 = 0
    L10_2 = 0
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L7_2[3] = L10_2
    L5_2.borderColor = L7_2
    L7_2 = display
    L7_2 = L7_2.contentCenterX
    L6_2 = L7_2 / 2
  end
  L7_2 = {}
  L7_2.width = 64
  L7_2.height = 64
  L7_2.numFrames = 6
  L7_2.sheetContentWidth = 384
  L7_2.sheetContentHeight = 64
  L8_2 = graphics
  L8_2 = L8_2.newImageSheet
  L9_2 = L7_1
  L9_2 = L9_2.Path_Assets
  L10_2 = "Splash/progressBarImages.png"
  L9_2 = L9_2 .. L10_2
  L10_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = L21_1
  L9_2 = L9_2.newProgressView
  L10_2 = {}
  L10_2.sheet = L8_2
  L10_2.fillOuterLeftFrame = 1
  L10_2.fillOuterMiddleFrame = 2
  L10_2.fillOuterRightFrame = 3
  L10_2.fillOuterWidth = 16
  L10_2.fillOuterHeight = 16
  L10_2.fillInnerLeftFrame = 4
  L10_2.fillInnerMiddleFrame = 5
  L10_2.fillInnerRightFrame = 6
  L10_2.fillWidth = 16
  L10_2.fillHeight = 16
  L10_2.left = 50
  L10_2.top = 200
  L10_2.width = 220
  L10_2.isAnimated = true
  L9_2 = L9_2(L10_2)
  L29_1 = L9_2
  L9_2 = A0_2.view
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L29_1
  L9_2(L10_2, L11_2)
  L9_2 = L29_1
  L9_2.x = L6_2
  L9_2 = L29_1
  L10_2 = display
  L10_2 = L10_2.contentHeight
  L10_2 = L10_2 * 0.87
  L9_2.y = L10_2
  L9_2 = L29_1
  L9_2.alpha = 0
  L9_2 = mainPlayer
  L9_2 = L9_2.isFirstOppening
  if L9_2 == true then
    L9_2 = _debugMode
    if L9_2 then
      L9_2 = log3
      L10_2 = "its first openning, so we create new player."
      L9_2(L10_2)
      L9_2 = L2_1
      L9_2 = L9_2.loadPlayer
      L10_2 = nil
      L11_2 = nil
      L12_2 = nil
      L13_2 = true
      L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  else
    L9_2 = log3
    L10_2 = "!!!!!PlayerModel delegate!!!!!"
    L11_2 = L2_1
    L11_2 = L11_2.delegate
    L9_2(L10_2, L11_2)
    L9_2 = timer
    L9_2 = L9_2.performWithDelay
    L10_2 = 1200
    
    function L11_2()
      local L0_3, L1_3
      L0_3 = L2_1
      L0_3 = L0_3.loadPlayer
      L0_3()
    end
    
    L9_2(L10_2, L11_2)
  end
  L9_2 = {}
  L9_2.parent = L2_2
  L10_2 = L25_1
  L10_2 = L10_2.tipText0
  L9_2.text = L10_2
  L10_2 = Theme
  L10_2 = L10_2.tipFont
  L9_2.font = L10_2
  L10_2 = Theme
  L10_2 = L10_2.tipFontSize
  L9_2.fontSize = L10_2
  L10_2 = display
  L10_2 = L10_2.contentWidth
  L10_2 = L10_2 * 0.75
  L9_2.width = L10_2
  L9_2.height = 0
  L9_2.align = "center"
  L10_2 = display
  L10_2 = L10_2.contentCenterX
  L11_2 = mainPlayer
  L11_2 = L11_2.newSplash
  if L11_2 == true then
    L11_2 = L29_1
    L11_2 = L11_2.view
    L11_2 = L11_2.width
    L11_2 = L11_2 - 5
    L9_2.width = L11_2
    L11_2 = display
    L11_2 = L11_2.contentCenterX
    L10_2 = L11_2 / 2
  end
  L11_2 = display
  L11_2 = L11_2.newText
  L12_2 = L9_2
  L11_2 = L11_2(L12_2)
  L33_1 = L11_2
  L11_2 = L33_1
  L11_2.x = L10_2
  L11_2 = L33_1
  L12_2 = display
  L12_2 = L12_2.contentCenterY
  L12_2 = L12_2 + 100
  L11_2.y = L12_2
  L11_2 = mainPlayer
  L11_2 = L11_2.newSplash
  if L11_2 then
    L11_2 = L33_1
    L12_2 = L11_2
    L11_2 = L11_2.setFillColor
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0
    L16_2 = 1
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  end
end

L26_1.create = L43_1

function L43_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = log3
  L2_2 = "TEST"
  L1_2(L2_2)
  L1_2 = L2_1
  L2_2 = L26_1
  L1_2.delegate = L2_2
  L1_2 = log3
  L2_2 = "!!!!!PlayerModel delegate!!!!!"
  L3_2 = L2_1
  L3_2 = L3_2.delegate
  L1_2(L2_2, L3_2)
  L1_2 = L2_1
  L1_2 = L1_2.loadPlayer
  L2_2 = nil
  L3_2 = L2_1
  L3_2 = L3_2.restoreKey
  L1_2(L2_2, L3_2)
end

L26_1.reloadForRestore = L43_1

function L43_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L32_1
  if L1_2 then
    L1_2 = transition
    L1_2 = L1_2.to
    L2_2 = L29_1
    L3_2 = {}
    L3_2.time = 400
    L3_2.alpha = 1
    L4_2 = easing
    L4_2 = L4_2.inSine
    L3_2.transition = L4_2
    L1_2(L2_2, L3_2)
    L1_2 = L30_1
    L1_2.xScale = 0.2
    L1_2 = L30_1
    L1_2.yScale = 0.2
    L1_2 = transition
    L1_2 = L1_2.to
    L2_2 = L30_1
    L3_2 = {}
    L3_2.time = 600
    L3_2.alpha = 1
    L4_2 = L34_1
    L3_2.xScale = L4_2
    L4_2 = L34_1
    L3_2.yScale = L4_2
    L4_2 = easing
    L4_2 = L4_2.outCirc
    L3_2.transition = L4_2
    L1_2(L2_2, L3_2)
    L1_2 = L29_1
    L1_2 = L1_2.y
    L2_2 = L29_1
    L2_2 = L2_2.height
    L2_2 = L2_2 / 2
    L1_2 = L1_2 + L2_2
    L2_2 = A0_2.height
    L2_2 = L2_2 / 2
    L1_2 = L1_2 + L2_2
    L2_2 = transition
    L2_2 = L2_2.to
    L3_2 = A0_2
    L4_2 = {}
    L4_2.time = 400
    L4_2.delay = 300
    L4_2.alpha = 1
    L4_2.y = L1_2
    L5_2 = easing
    L5_2 = L5_2.outCirc
    L4_2.transition = L5_2
    L2_2(L3_2, L4_2)
    L2_2 = false
    L32_1 = L2_2
  else
    L1_2 = L29_1
    L1_2.alpha = 1
    L1_2 = L30_1
    L1_2.alpha = 1
    L1_2 = L29_1
    L1_2 = L1_2.y
    L2_2 = L29_1
    L2_2 = L2_2.height
    L2_2 = L2_2 / 2
    L1_2 = L1_2 + L2_2
    L2_2 = A0_2.height
    L2_2 = L2_2 / 2
    L1_2 = L1_2 + L2_2
    L1_2 = L1_2 + 10
    A0_2.y = L1_2
    A0_2.alpha = 1
  end
end

function L44_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L29_1
  L2_2 = L1_2
  L1_2 = L1_2.setProgress
  L3_2 = A0_2.value
  L1_2(L2_2, L3_2)
end

function L45_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = nil
  if L3_2 == "will" then
    L5_2 = mainPlayer
    L5_2 = L5_2.isFirstOppening
    if L5_2 == false then
      L5_2 = math
      L5_2 = L5_2.randomseed
      L6_2 = os
      L6_2 = L6_2.time
      L6_2, L7_2, L8_2, L9_2 = L6_2()
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L5_2 = math
      L5_2 = L5_2.random
      L6_2 = 1
      L7_2 = 34
      L5_2 = L5_2(L6_2, L7_2)
      L4_2 = L5_2
      L5_2 = L33_1
      L6_2 = L25_1
      L7_2 = "tipText"
      L8_2 = tostring
      L9_2 = L4_2
      L8_2 = L8_2(L9_2)
      L7_2 = L7_2 .. L8_2
      L6_2 = L6_2[L7_2]
      L5_2.text = L6_2
    end
    L5_2 = L33_1
    L5_2.alpha = 0
  elseif L3_2 == "did" then
    L5_2 = nil
    _backAction = L5_2
    L5_2 = liveBattleNotificationBarView
    L6_2 = L5_2
    L5_2 = L5_2.removeAllTickets
    L7_2 = "loading"
    L5_2(L6_2, L7_2)
    L5_2 = timer
    L5_2 = L5_2.performWithDelay
    L6_2 = 100
    
    function L7_2()
      local L0_3, L1_3
      L0_3 = L43_1
      L1_3 = L33_1
      L0_3(L1_3)
    end
    
    L5_2(L6_2, L7_2)
    L5_2 = Runtime
    L6_2 = L5_2
    L5_2 = L5_2.addEventListener
    L7_2 = "loadingProgress"
    L8_2 = L44_1
    L5_2(L6_2, L7_2, L8_2)
  end
end

L26_1.show = L45_1

function L45_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = print
  L5_2 = "[Loading] will hide the scene"
  L4_2(L5_2)
  if L3_2 == "will" then
    L4_2 = Runtime
    L5_2 = L4_2
    L4_2 = L4_2.removeEventListener
    L6_2 = "loadingProgress"
    L7_2 = L44_1
    L4_2(L5_2, L6_2, L7_2)
  end
end

L26_1.hide = L45_1
L46_1 = L26_1
L45_1 = L26_1.addEventListener
L47_1 = "create"
L48_1 = L26_1
L45_1(L46_1, L47_1, L48_1)
L46_1 = L26_1
L45_1 = L26_1.addEventListener
L47_1 = "show"
L48_1 = L26_1
L45_1(L46_1, L47_1, L48_1)
L46_1 = L26_1
L45_1 = L26_1.addEventListener
L47_1 = "hide"
L48_1 = L26_1
L45_1(L46_1, L47_1, L48_1)
return L26_1
