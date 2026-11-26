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
afterShowingCallbackFunction = L1_1

function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = print
  L4_2 = "Adivery/Callback: event = "
  L5_2 = A0_2
  L6_2 = ", placement = "
  L7_2 = A1_2
  L8_2 = ", param = "
  L9_2 = A2_2
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
  L3_2(L4_2)
  if A0_2 == "onInterstitialAdLoaded" then
  elseif A0_2 == "onRewardedAdLoaded" then
    L3_2 = true
    adIsReady = L3_2
    L3_2 = afterCheckingCallbackFunction
    if L3_2 then
      L3_2 = afterCheckingCallbackFunction
      L3_2()
    end
  elseif A0_2 == "onRewardedAdClosed" then
    L3_2 = false
    adIsReady = L3_2
    L3_2 = true
    canCheckTheAvailabilityOfAd = L3_2
    if A2_2 ~= "" and A2_2 ~= "false" then
      L3_2 = L0_1
      L3_2 = L3_2.logEvent
      L4_2 = "Adivery Ad Has Been Shown Completely"
      L3_2(L4_2)
      L3_2 = afterShowingCallbackFunction
      L3_2()
    end
  elseif A0_2 == "onRewardedAdShown" then
  elseif A0_2 == "onRewardedAdClicked" then
  end
end

adiveryCallback = L1_1

function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = todNative
  if L0_2 == nil then
    L0_2 = showSimpleDialog
    L1_2 = "Device Required"
    L2_2 = "Adivery is only available on an android device"
    L0_2(L1_2, L2_2)
    return
  end
  L0_2 = L0_1
  L0_2 = L0_2.logEvent
  L1_2 = "Adivery SDK Initiated"
  L0_2(L1_2)
  L0_2 = todNative
  L0_2 = L0_2.adiverySetCallback
  L1_2 = adiveryCallback
  L0_2(L1_2)
  L0_2 = todNative
  L0_2 = L0_2.adiveryConnector
  L1_2 = {}
  L1_2.operation = "Initialize"
  L2_2 = Constants
  L2_2 = L2_2.ADIVERY_APP_ID
  L1_2.appId = L2_2
  L0_2(L1_2)
end

init = L1_1
L1_1 = system
L1_1 = L1_1.getInfo
L2_1 = "platformName"
L1_1 = L1_1(L2_1)
if L1_1 == "Android" then
  L1_1 = Constants
  L1_1 = L1_1.Adivery_Enabled
  if L1_1 then
    L1_1 = mainPlayer
    L1_1 = L1_1.canShowAdivery
    if L1_1 then
      L1_1 = init
      L1_1()
    end
  end
end

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  afterShowingCallbackFunction = A0_2
  L1_2 = adIsReady
  if L1_2 == true then
    L1_2 = log3
    L2_2 = "\194\165\194\165\194\165 showAd called \194\165\194\165\194\165"
    L1_2(L2_2)
    L1_2 = L0_1
    L1_2 = L1_2.logEvent
    L2_2 = "Adivery Ad Show"
    L1_2(L2_2)
    L1_2 = todNative
    L1_2 = L1_2.adiveryConnector
    L2_2 = {}
    L2_2.operation = "ShowAd"
    L3_2 = Constants
    L3_2 = L3_2.ADIVERY_PLACEMENT_REWARDED
    L2_2.placementId = L3_2
    L1_2(L2_2)
  end
end

showAd = L1_1

function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = system
  L1_2 = L1_2.getInfo
  L2_2 = "platformName"
  L1_2 = L1_2(L2_2)
  if L1_2 == "Android" then
    L1_2 = Constants
    L1_2 = L1_2.Adivery_Enabled
    if L1_2 == true then
      L1_2 = mainPlayer
      L1_2 = L1_2.canShowAdivery
      if L1_2 == true then
        L1_2 = adIsReady
        if L1_2 ~= true then
          L1_2 = false
          canCheckTheAvailabilityOfAd = L1_2
          afterCheckingCallbackFunction = A0_2
          L1_2 = L0_1
          L1_2 = L1_2.logEvent
          L2_2 = "Adivery Ad Requested"
          L1_2(L2_2)
          L1_2 = todNative
          L1_2 = L1_2.adiverySetCallback
          L2_2 = adiveryCallback
          L1_2(L2_2)
          L1_2 = todNative
          L1_2 = L1_2.adiveryConnector
          L2_2 = {}
          L2_2.operation = "PrepareRewardedAd"
          L3_2 = Constants
          L3_2 = L3_2.ADIVERY_PLACEMENT_REWARDED
          L2_2.placementId = L3_2
          L1_2(L2_2)
        else
          L1_2 = log3
          L2_2 = "\194\165\194\165\194\165 There is a ready to use ad."
          L1_2(L2_2)
          L1_2 = A0_2
          L1_2()
        end
    end
    else
      L1_2 = log3
      L2_2 = "\194\165\194\165\194\165 Adivery is disabled."
      L1_2(L2_2)
    end
  else
    L1_2 = log3
    L2_2 = "\194\165\194\165\194\165 Your OS does not support Adivery."
    L1_2(L2_2)
  end
end

checkAdAvailability = L1_1
