local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = {}
L0_1.UNITYADS_UNAVAILABLE = -1
L0_1.UNITYADS_AVAILABLE = 1
L0_1.UNITYADS_FINISH = 2
L0_1.UNITYADS_INITIALIZED = 3
L1_1 = false
adIsReady = L1_1
L1_1 = "rewardedVideo"
L2_1 = nil
L3_1 = nil

function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = log3
  L2_2 = " \195\134\195\1348\195\134\195\134 Unity native callback responseCode is "
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = L0_1
  L1_2 = L1_2.UNITYADS_INITIALIZED
  if A0_2 == L1_2 then
    L1_2 = todNative
    L1_2 = L1_2.unityAdsDo
    L2_2 = {}
    L2_2.operation = "LoadAd"
    L3_2 = L1_1
    L2_2.placementId = L3_2
    L1_2(L2_2)
  else
    L1_2 = L0_1
    L1_2 = L1_2.UNITYADS_AVAILABLE
    if A0_2 == L1_2 then
      L1_2 = log3
      L2_2 = " ##### UnityAds is Available ######"
      L1_2(L2_2)
      L1_2 = true
      adIsReady = L1_2
      L1_2 = L2_1
      if L1_2 then
        L1_2 = log3
        L2_2 = "AFTERCHECKINGCALLBACFUNCTION is being called"
        L1_2(L2_2)
        L1_2 = L2_1
        L1_2()
      end
    else
      L1_2 = L0_1
      L1_2 = L1_2.UNITYADS_FINISH
      if A0_2 == L1_2 then
        L1_2 = L3_1
        if L1_2 then
          L1_2 = log3
          L2_2 = "afterAdShowFinishCallback is being called"
          L1_2(L2_2)
          L1_2 = L3_1
          L1_2()
        end
      else
        L1_2 = log3
        L2_2 = " ##### UnityAds is not available #####"
        L1_2(L2_2)
        L1_2 = false
        adIsReady = L1_2
      end
    end
  end
end

unityAdsStatusCallback = L4_1

function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = todNative
  if L0_2 then
    L0_2 = todNative
    L0_2 = L0_2.unityAdsCallback
    L1_2 = unityAdsStatusCallback
    L0_2(L1_2)
    L0_2 = todNative
    L0_2 = L0_2.unityAdsDo
    L1_2 = {}
    L1_2.operation = "Init"
    L2_2 = Constants
    L2_2 = L2_2.UNITYADS_GAME_ID_ANDROID
    L1_2.gameId = L2_2
    L0_2(L1_2)
  end
end

init = L4_1
L4_1 = system
L4_1 = L4_1.getInfo
L5_1 = "platformName"
L4_1 = L4_1(L5_1)
if L4_1 == "Android" then
  L4_1 = Constants
  L4_1 = L4_1.UnityAds_Enabled
  if L4_1 == true then
  end
end

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = log3
  L3_2 = "\194\165\194\165\194\165 corona callback for showing unity ad called. \194\165\194\165\194\165"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = L0_1
  L2_2 = L2_2.UNITYADS_FINISH
  if A0_2 == L2_2 then
    L2_2 = log3
    L3_2 = " REWARD FROM UNITYADS ::: "
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
    L2_2 = A1_2
    L2_2()
    L2_2 = false
    adIsReady = L2_2
    L2_2 = mainPlayer
    L2_2.canShowUnityAds = false
  else
    L2_2 = log3
    L3_2 = " \195\134\195\1348\195\134\195\134 responseCode is "
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end

showUnityAdCallback = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = adIsReady
  if L1_2 == true then
    L1_2 = log3
    L2_2 = "\194\165\194\165\194\165 show Unity Ad called \194\165\194\165\194\165"
    L1_2(L2_2)
    L3_1 = A0_2
    L1_2 = todNative
    L1_2 = L1_2.unityAdsDo
    L2_2 = {}
    L2_2.operation = "ShowAd"
    L3_2 = L1_1
    L2_2.placementId = L3_2
    L1_2(L2_2)
  end
end

showAd = L4_1

function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = system
  L1_2 = L1_2.getInfo
  L2_2 = "platformName"
  L1_2 = L1_2(L2_2)
  if L1_2 == "Android" then
    L1_2 = Constants
    L1_2 = L1_2.UnityAds_Enabled
    if L1_2 == true then
      L1_2 = mainPlayer
      L1_2 = L1_2.canShowUnityAds
      if L1_2 == true then
        L2_1 = A0_2
    end
    else
      L1_2 = log3
      L2_2 = "\194\165\194\165\194\165 UnitAds is disabled."
      L1_2(L2_2)
    end
  else
    L1_2 = log3
    L2_2 = "\194\165\194\165\194\165 Your OS does not support UnitAds."
    L1_2(L2_2)
  end
end

checkAdAvailability = L4_1
