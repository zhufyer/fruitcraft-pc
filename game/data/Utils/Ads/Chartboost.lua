local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Utils.Analytics"
L0_1 = L0_1(L1_1)
L1_1 = {}
L1_1.CHARTBOOST_COULD_NOT_CONNECT_TO_SERVER = -1
L1_1.CHARTBOOST_AD_UNAVAILABLE = 0
L1_1.CHARTBOOST_USER_DONT_OPEN_AD = -2
L1_1.CHARTBOOST_USER_DONT_WATCH_UNTIL_END = -3
L1_1.CHARTBOOST_AD_AVAILABLE = 1
L2_1 = false
adIsReady = L2_1
L2_1 = true
canCheckTheAvailabilityOfAd = L2_1
L2_1 = nil
afterCheckingCallbackFunction = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if 0 < A0_2 then
    L2_2 = L0_1
    L2_2 = L2_2.logEvent
    L3_2 = "Chartboost Ad Has Been Shown Completely"
    L2_2(L3_2)
    L2_2 = A1_2
    L2_2()
  else
    L2_2 = log3
    L3_2 = " \195\134\195\1348\195\134\195\134 responseCode is "
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = checkAdAvailability
  
  function L3_2()
    local L0_3, L1_3
    L0_3 = print
    L1_3 = "Chartboost ad cached"
    L0_3(L1_3)
  end
  
  L2_2(L3_2)
end

ChartboostShowCoronaCallback = L2_1

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = adIsReady
  if L1_2 == true then
    L1_2 = log3
    L2_2 = "\194\165\194\165\194\165 showAd called \194\165\194\165\194\165"
    L1_2(L2_2)
    L1_2 = L0_1
    L1_2 = L1_2.logEvent
    L2_2 = "Chartboost Ad Show"
    L1_2(L2_2)
    L1_2 = false
    adIsReady = L1_2
    L1_2 = true
    canCheckTheAvailabilityOfAd = L1_2
    L1_2 = todNative
    L1_2 = L1_2.chartboostShowAd
    L1_2()
    L1_2 = todNative
    L1_2 = L1_2.chartboostShowAdCallback
    
    function L2_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = ChartboostShowCoronaCallback
      L2_3 = A0_3
      L3_3 = A0_2
      L1_3(L2_3, L3_3)
    end
    
    L1_2(L2_2)
  end
end

showAd = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = log3
  L2_2 = " \195\134\195\1348\195\134\195\134 responseCode is "
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L1_2 = L1_2.CHARTBOOST_AD_AVAILABLE
  if A0_2 == L1_2 then
    L1_2 = log3
    L2_2 = " ##### AD IS AVAILABLE ######"
    L1_2(L2_2)
    L1_2 = true
    adIsReady = L1_2
    L1_2 = L0_1
    L1_2 = L1_2.logEvent
    L2_2 = "Chartboost Ad Served"
    L1_2(L2_2)
    L1_2 = afterCheckingCallbackFunction
    if L1_2 then
      L1_2 = afterCheckingCallbackFunction
      L1_2()
    end
  else
    L1_2 = log3
    L2_2 = " ##### AD IS UNAVAILABLE #####"
    L1_2(L2_2)
    L1_2 = false
    adIsReady = L1_2
    L1_2 = true
    canCheckTheAvailabilityOfAd = L1_2
  end
end

adAvailablityStatusCallback = L2_1

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = system
  L1_2 = L1_2.getInfo
  L2_2 = "platformName"
  L1_2 = L1_2(L2_2)
  if L1_2 == "Android" then
    L1_2 = Constants
    L1_2 = L1_2.Chartboost_Enabled
    if L1_2 == true then
      L1_2 = mainPlayer
      L1_2 = L1_2.canShowChartboost
      if L1_2 == true then
        L1_2 = adIsReady
        if L1_2 ~= true then
          L1_2 = canCheckTheAvailabilityOfAd
          if L1_2 == true then
            afterCheckingCallbackFunction = A0_2
            L1_2 = L0_1
            L1_2 = L1_2.logEvent
            L2_2 = "Chartboost Ad Requested"
            L1_2(L2_2)
            L1_2 = todNative
            L1_2 = L1_2.chartboostCacheAd
            L1_2()
            L1_2 = todNative
            L1_2 = L1_2.chartboostCacheAdCallback
            L2_2 = adAvailablityStatusCallback
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
      L2_2 = "\194\165\194\165\194\165 Chartboost is disabled."
      L1_2(L2_2)
    end
  else
    L1_2 = log3
    L2_2 = "\194\165\194\165\194\165 Your OS does not support Chartboost."
    L1_2(L2_2)
  end
end

checkAdAvailability = L2_1
