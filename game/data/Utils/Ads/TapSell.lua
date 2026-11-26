local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Utils.Analytics"
L0_1 = L0_1(L1_1)
L1_1 = false
adIsReady = L1_1
L1_1 = true
canCheckTheAvailabilityOfAd = L1_1
L1_1 = nil
afterCheckingCallbackFunction = L1_1
L1_1 = nil
afterShowCallbackFunction = L1_1
L1_1 = ""
lastRewardedPreparedResponseId = L1_1

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = print
  L4_2 = "Tapsell/Callback: event = "
  L5_2 = A0_2
  L6_2 = ", placement = "
  L7_2 = A1_2
  L8_2 = ", param = "
  L9_2 = A2_2
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
  L3_2(L4_2)
  if A0_2 == "onInitializeSuccess" then
  elseif A0_2 == "onInitializeFailed" then
    L3_2 = false
    adIsReady = L3_2
    L3_2 = mainPlayer
    L3_2.canShowTapSell = false
  elseif A0_2 == "onInterstitialAdResponse" then
  elseif A0_2 == "onRewardedVideoResponse" then
    L3_2 = log3
    L4_2 = "##### AD IS AVAILABLE ######"
    L3_2(L4_2)
    lastRewardedPreparedResponseId = A2_2
    L3_2 = true
    adIsReady = L3_2
    L3_2 = L0_1
    L3_2 = L3_2.logEvent
    L4_2 = "Tapsell Ad Served"
    L3_2(L4_2)
    L3_2 = afterCheckingCallbackFunction
    if L3_2 then
      L3_2 = afterCheckingCallbackFunction
      L3_2()
    end
  elseif A0_2 == "onPrepareError" then
    L3_2 = log3
    L4_2 = "##### AD IS UNAVAILABLE #####"
    L3_2(L4_2)
    L3_2 = false
    adIsReady = L3_2
    L3_2 = true
    canCheckTheAvailabilityOfAd = L3_2
  elseif A0_2 == "onOpened" then
    L3_2 = false
    adIsReady = L3_2
    L3_2 = true
    canCheckTheAvailabilityOfAd = L3_2
  elseif A0_2 == "onClosed" then
    L3_2 = Constants
    L3_2 = L3_2.TAPSELL_PLACEMENT_REWARDED
    if A1_2 == L3_2 then
      L3_2 = todNative
      L3_2 = L3_2.tapsellConnector
      L4_2 = {}
      L4_2.operation = "PrepareRewardedAd"
      L5_2 = Constants
      L5_2 = L5_2.TAPSELL_PLACEMENT_REWARDED
      L4_2.placementId = L5_2
      L3_2(L4_2)
    end
  elseif A0_2 == "onRewarded" then
    L3_2 = afterShowCallbackFunction
    L3_2()
  elseif A0_2 == "onShowError" then
  end
end

tapsellCallback = L1_1

function L1_1()
  local L0_2, L1_2
  L0_2 = todNative
  if L0_2 then
    L0_2 = L0_1
    L0_2 = L0_2.logEvent
    L1_2 = "Tapsell SDK Initiated"
    L0_2(L1_2)
    L0_2 = todNative
    L0_2 = L0_2.tapsellSetCallback
    L1_2 = tapsellCallback
    L0_2(L1_2)
    L0_2 = todNative
    L0_2 = L0_2.tapsellConnector
    L1_2 = {}
    L1_2.operation = "Initialize"
    L0_2(L1_2)
  end
end

init = L1_1
L1_1 = system
L1_1 = L1_1.getInfo
L2_1 = "platformName"
L1_1 = L1_1(L2_1)
if L1_1 == "Android" then
  L1_1 = Constants
  L1_1 = L1_1.TapSell_Enabled
  if L1_1 then
    L1_1 = mainPlayer
    L1_1 = L1_1.canShowTapSell
    if L1_1 then
      L1_1 = init
      L1_1()
    end
  end
end

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = log3
  L3_2 = "\194\165\194\165\194\165 corona callback for showing ad called. \194\165\194\165\194\165"
  L2_2(L3_2)
  if 0 < A0_2 then
    L2_2 = log3
    L3_2 = " REWARD FROM TAPSELL ::: "
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
    L2_2 = L0_1
    L2_2 = L2_2.logEvent
    L3_2 = "Tapsell Ad Has Been Shown Completely"
    L2_2(L3_2)
    L2_2 = A1_2
    L2_2()
    L2_2 = false
    adIsReady = L2_2
    L2_2 = true
    canCheckTheAvailabilityOfAd = L2_2
    L2_2 = mainPlayer
    L2_2.canShowTapSell = false
  else
    L2_2 = log3
    L3_2 = " \195\134\195\1348\195\134\195\134 responseCode is "
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end

tapSellShowCoronaCallback = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  afterShowCallbackFunction = A0_2
  L1_2 = adIsReady
  if L1_2 == true then
    L1_2 = log3
    L2_2 = "\194\165\194\165\194\165 showAd called \194\165\194\165\194\165"
    L1_2(L2_2)
    L1_2 = L0_1
    L1_2 = L1_2.logEvent
    L2_2 = "Tapsell Ad Show"
    L1_2(L2_2)
    L1_2 = todNative
    L1_2 = L1_2.tapsellSetCallback
    L2_2 = tapsellCallback
    L1_2(L2_2)
    L1_2 = todNative
    L1_2 = L1_2.tapsellConnector
    L2_2 = {}
    L2_2.operation = "ShowAd"
    L2_2.type = "Rewarded"
    L3_2 = lastRewardedPreparedResponseId
    L2_2.preparedResponseId = L3_2
    L1_2(L2_2)
  end
end

showAd = L1_1

function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = network
  L0_2 = L0_2.getConnectionStatus
  L0_2 = L0_2()
  L1_2 = "streamed"
  if L0_2 then
    L2_2 = L0_2.isConnected
    if L2_2 then
      L2_2 = L0_2.isMobile
      if not L2_2 then
        L1_2 = "cached"
      end
    end
  end
  return L1_2
end

getAdType = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = system
  L1_2 = L1_2.getInfo
  L2_2 = "platformName"
  L1_2 = L1_2(L2_2)
  if L1_2 == "Android" then
    L1_2 = Constants
    L1_2 = L1_2.TapSell_Enabled
    if L1_2 == true then
      L1_2 = mainPlayer
      L1_2 = L1_2.canShowTapSell
      if L1_2 == true then
        L1_2 = adIsReady
        if L1_2 ~= true then
          L1_2 = canCheckTheAvailabilityOfAd
          if L1_2 == true then
            L1_2 = false
            canCheckTheAvailabilityOfAd = L1_2
            afterCheckingCallbackFunction = A0_2
            L1_2 = L0_1
            L1_2 = L1_2.logEvent
            L2_2 = "Tapsell Ad Requested"
            L1_2(L2_2)
            L1_2 = todNative
            L1_2 = L1_2.tapsellSetCallback
            L2_2 = tapsellCallback
            L1_2(L2_2)
            L1_2 = todNative
            L1_2 = L1_2.tapsellConnector
            L2_2 = {}
            L2_2.operation = "PrepareRewardedAd"
            L3_2 = Constants
            L3_2 = L3_2.TAPSELL_PLACEMENT_REWARDED
            L2_2.placementId = L3_2
            L1_2(L2_2)
        end
        else
          L1_2 = log3
          L2_2 = "\194\165\194\165\194\165 There is a ready to use ad."
          L1_2(L2_2)
        end
    end
    else
      L1_2 = log3
      L2_2 = "\194\165\194\165\194\165 TapSell is disabled."
      L1_2(L2_2)
    end
  else
    L1_2 = log3
    L2_2 = "\194\165\194\165\194\165 Your OS does not support TapSell."
    L1_2(L2_2)
  end
end

checkAdAvailability = L1_1
