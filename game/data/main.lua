local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.Log"
L1_1(L2_1)
L1_1 = require
L2_1 = "Constants"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Theme"
L2_1(L3_1)
L2_1 = require
L3_1 = "Language"
L2_1(L3_1)
L2_1 = require
L3_1 = "Utils.Network"
L2_1(L3_1)
L2_1 = require
L3_1 = "Utils.ImageSourceResolver"
L2_1(L3_1)
L2_1 = require
L3_1 = "Models.MessagePipe"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Utils.SKComponents"
L3_1 = L3_1(L4_1)
SKComponent = L3_1
L3_1 = require
L4_1 = "Utils.Toolbox"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.ActivityIndicatorView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.LiveBattleNotificationBarView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Utils.SceneChange"
L6_1 = L6_1(L7_1)
L8_1 = L5_1
L7_1 = L5_1.new
L7_1 = L7_1(L8_1)
liveBattleNotificationBarView = L7_1
L8_1 = L6_1
L7_1 = L6_1.new
L7_1 = L7_1(L8_1)
sceneChange = L7_1
L7_1 = SKComponent
L8_1 = _storeType
L7_1.storeType = L8_1

function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = log3
  L1_2 = "RELOAD GAME"
  L0_2(L1_2)
  L0_2 = L0_1
  L0_2 = L0_2.removeHidden
  L0_2()
  L0_2 = L3_1
  L0_2 = L0_2.removeRuntimeListenersForEvent
  L1_2 = "click"
  L0_2(L1_2)
  L0_2 = L3_1
  L0_2 = L0_2.removeRuntimeListenersForEvent
  L1_2 = "minClick"
  L0_2(L1_2)
  L0_2 = L3_1
  L0_2 = L0_2.removeRuntimeListenersForEvent
  L1_2 = "auctionBid"
  L0_2(L1_2)
  L0_2 = hub
  if L0_2 ~= nil then
    L0_2 = hub
    L1_2 = L0_2
    L0_2 = L0_2.removeHub
    L0_2(L1_2)
    L0_2 = nil
    hub = L0_2
    L0_2 = L2_1
    L0_2 = L0_2.createHub
    L0_2()
  end
  L0_2 = require
  L1_2 = "Models.Operation"
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2.clearCachedBattleOpponents
  L1_2()
  L1_2 = mainPlayer
  L2_2 = L1_2
  L1_2 = L1_2.setSettingForKey
  L3_2 = "messageTimeStamp"
  L4_2 = os
  L4_2 = L4_2.time
  L4_2 = L4_2()
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = mainPlayer
  L2_2 = L1_2
  L1_2 = L1_2.setSettingForKey
  L3_2 = "achievementsVersion"
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = mainPlayer
  L2_2 = L1_2
  L1_2 = L1_2.saveSettings
  L1_2(L2_2)
  L1_2 = SKComponent
  L1_2.productList = nil
  L1_2 = L0_1
  L1_2 = L1_2.gotoScene
  L2_2 = "Scenes.Loading"
  L1_2(L2_2)
  L1_2 = L0_1
  L1_2 = L1_2.getScene
  L2_2 = "Scenes.Loading"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.reloadForRestore
  L2_2(L3_2)
end

reloadGame = L7_1

function L7_1()
  local L0_2, L1_2
  L0_2 = system
  L0_2 = L0_2.getInfo
  L1_2 = "platformName"
  L0_2 = L0_2(L1_2)
  L0_2 = "Android" == L0_2
  return L0_2
end

isAndroid = L7_1

function L7_1()
  local L0_2, L1_2
  L0_2 = system
  L0_2 = L0_2.getInfo
  L1_2 = "platformName"
  L0_2 = L0_2(L1_2)
  L0_2 = "iPhone OS" == L0_2
  return L0_2
end

isIOS = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = _debugMode
  if L1_2 then
    L1_2 = L4_1
    L1_2 = L1_2.hide
    L1_2()
    L1_2 = showSimpleDialog
    L2_2 = "Unhandled Error"
    L3_2 = A0_2.errorMessage
    L1_2(L2_2, L3_2)
    L1_2 = system
    L1_2 = L1_2.getInfo
    L2_2 = "platformName"
    L1_2 = L1_2(L2_2)
    if L1_2 == "Mac OS X" then
      goto lbl_120
    end
    L1_2 = system
    L1_2 = L1_2.getInfo
    L2_2 = "platformName"
    L1_2 = L1_2(L2_2)
    if L1_2 == "Win" then
      goto lbl_120
    end
    L1_2 = type
    L2_2 = A0_2.errorMessage
    L1_2 = L1_2(L2_2)
    if L1_2 ~= "number" then
      L1_2 = type
      L2_2 = A0_2.errorMessage
      L1_2 = L1_2(L2_2)
      if L1_2 ~= "string" then
        goto lbl_53
      end
    end
    L1_2 = type
    L2_2 = A0_2.stackTrace
    L1_2 = L1_2(L2_2)
    if L1_2 ~= "number" then
      L1_2 = type
      L2_2 = A0_2.stackTrace
      L1_2 = L1_2(L2_2)
      if L1_2 ~= "string" then
        goto lbl_49
      end
    end
    L1_2 = sendLogToServer
    L2_2 = A0_2.errorMessage
    L3_2 = A0_2.stackTrace
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
    goto lbl_120
    ::lbl_49::
    L1_2 = sendLogToServer
    L2_2 = A0_2.errorMessage
    L1_2(L2_2)
    goto lbl_120
    ::lbl_53::
    L1_2 = sendLogToServer
    L1_2()
  else
    L1_2 = log
    L2_2 = "CORONA, Fruitcraft crash:"
    L3_2 = A0_2.errorMessage
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
    L1_2 = require
    L2_2 = "Utils.Analytics"
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2.logEvent
    L3_2 = "Crash"
    L4_2 = {}
    L5_2 = A0_2.errorMessage
    L4_2.description = L5_2
    L2_2(L3_2, L4_2)
    L2_2 = type
    L3_2 = A0_2.errorMessage
    L2_2 = L2_2(L3_2)
    if L2_2 ~= "number" then
      L2_2 = type
      L3_2 = A0_2.errorMessage
      L2_2 = L2_2(L3_2)
      if L2_2 ~= "string" then
        goto lbl_100
      end
    end
    L2_2 = type
    L3_2 = A0_2.stackTrace
    L2_2 = L2_2(L3_2)
    if L2_2 ~= "number" then
      L2_2 = type
      L3_2 = A0_2.stackTrace
      L2_2 = L2_2(L3_2)
      if L2_2 ~= "string" then
        goto lbl_96
      end
    end
    L2_2 = sendLogToServer
    L3_2 = A0_2.errorMessage
    L4_2 = A0_2.stackTrace
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
    goto lbl_102
    ::lbl_96::
    L2_2 = sendLogToServer
    L3_2 = A0_2.errorMessage
    L2_2(L3_2)
    goto lbl_102
    ::lbl_100::
    L2_2 = sendLogToServer
    L2_2()
    ::lbl_102::
    L2_2 = L0_1
    L2_2 = L2_2.getSceneName
    L3_2 = "current"
    L2_2 = L2_2(L3_2)
    L3_2 = L4_1
    L3_2 = L3_2.hide
    L3_2()
    if L2_2 ~= "Scenes.Home" then
      L3_2 = L0_1
      L3_2 = L3_2.gotoScene
      L4_2 = "Scenes.Home"
      L3_2(L4_2)
    else
      L3_2 = showSimpleDialog
      L4_2 = "Error"
      L5_2 = "Error occurred"
      L3_2(L4_2, L5_2)
    end
  end
  ::lbl_120::
  L1_2 = _debugMode
  return L1_2
end

L8_1 = Runtime
L9_1 = L8_1
L8_1 = L8_1.addEventListener
L10_1 = "unhandledError"
L11_1 = L7_1
L8_1(L9_1, L10_1, L11_1)
L8_1 = nil
_backAction = L8_1

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = false
  L2_2 = A0_2.phase
  L3_2 = A0_2.keyName
  L4_2 = log3
  L5_2 = "some body try to use mobile keys"
  L6_2 = L3_2
  L7_2 = L2_2
  L4_2(L5_2, L6_2, L7_2)
  if ("back" == L3_2 or "n" == L3_2) and L2_2 == "up" then
    L4_2 = log3
    L5_2 = "some body try to use mobile back key"
    L6_2 = _backAction
    L4_2(L5_2, L6_2)
    L4_2 = _backAction
    if L4_2 ~= nil then
      L4_2 = _backAction
      if L4_2 == "hideOverlay" then
        L4_2 = L0_1
        L4_2 = L4_2.hideOverlay
        L4_2()
      else
        L4_2 = _backAction
        if L4_2 == "exit" then
          L4_2 = false
          return L4_2
        else
          L4_2 = type
          L5_2 = _backAction
          L4_2 = L4_2(L5_2)
          if L4_2 == "string" then
            L4_2 = L0_1
            L4_2 = L4_2.gotoScene
            L5_2 = _backAction
            L4_2(L5_2)
          else
            L4_2 = type
            L5_2 = _backAction
            L4_2 = L4_2(L5_2)
            if L4_2 == "function" then
              L4_2 = _backAction
              L4_2()
            end
          end
        end
      end
    end
    L4_2 = true
    return L4_2
  end
  return L1_2
end

L9_1 = isAndroid
L9_1 = L9_1()
if L9_1 then
  L9_1 = Runtime
  L10_1 = L9_1
  L9_1 = L9_1.addEventListener
  L11_1 = "key"
  L12_1 = L8_1
  L9_1(L10_1, L11_1, L12_1)
end
L9_1 = display
L9_1 = L9_1.setStatusBar
L10_1 = display
L10_1 = L10_1.HiddenStatusBar
L9_1(L10_1)
L9_1 = system
L9_1 = L9_1.getInfo
L10_1 = "androidApiLevel"
L9_1 = L9_1(L10_1)
if L9_1 then
  L9_1 = system
  L9_1 = L9_1.getInfo
  L10_1 = "androidApiLevel"
  L9_1 = L9_1(L10_1)
  if L9_1 < 19 then
end
else
  L9_1 = native
  L9_1 = L9_1.setProperty
  L10_1 = "androidSystemUiVisibility"
  L11_1 = "immersiveSticky"
  L9_1(L10_1, L11_1)
end

function L9_1(A0_2)
  local L1_2
end

L10_1 = isAndroid
L10_1 = L10_1()
if L10_1 then
  L10_1 = require
  L11_1 = "plugin.appsflyer"
  L10_1 = L10_1(L11_1)
  L11_1 = L10_1.init
  L12_1 = L9_1
  L13_1 = {}
  L13_1.appID = "com.tod.fruitcraft"
  L13_1.devKey = "YBThmUqaiHZYpiSwZ3GQz4"
  L13_1.hasUserConsent = true
  L11_1(L12_1, L13_1)
end
L10_1 = isIOS
L10_1 = L10_1()
if L10_1 then
  L10_1 = require
  L11_1 = "plugin.appsflyer"
  L10_1 = L10_1(L11_1)
  L11_1 = L10_1.init
  L12_1 = L9_1
  L13_1 = {}
  L13_1.appID = "id1359111778"
  L13_1.devKey = "YBThmUqaiHZYpiSwZ3GQz4"
  L13_1.hasUserConsent = true
  L11_1(L12_1, L13_1)
end
L10_1 = todNative
if L10_1 then
else
  L10_1 = showSimpleDialog
  L11_1 = "Invalid Build"
  L12_1 = "Native modules are not connected to todNative variable"
  L10_1(L11_1, L12_1)
end

function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = print
  L2_2 = "[main.lua] !!!! Application event:"
  L3_2 = A0_2.type
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = A0_2.url
  if L1_2 then
    L1_2 = print
    L2_2 = "[main.lua] event.url = "
    L3_2 = A0_2.url
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
    L1_2 = SKComponent
    if L1_2 == nil then
      L1_2 = A0_2.url
      _LatestURLForSKComponent = L1_2
    else
      L1_2 = SKComponent
      L1_2 = L1_2.webPurchaseCallback
      L2_2 = A0_2.url
      L1_2(L2_2)
    end
  end
end

L11_1 = Runtime
L12_1 = L11_1
L11_1 = L11_1.addEventListener
L13_1 = "system"
L14_1 = L10_1
L11_1(L12_1, L13_1, L14_1)
L11_1 = L0_1.gotoScene
L12_1 = "Scenes.Loading"
L11_1(L12_1)

-- Desktop: set a proper window title (no-op on other platforms)
pcall(function()
  if native and native.setWindowTitle then
    native.setWindowTitle("Fruitcraft")
  end
end)
