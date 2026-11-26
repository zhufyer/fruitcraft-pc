local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "plugin.gameanalytics_v2"
L0_1 = L0_1(L1_1)

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = log3
    L2_3 = " \226\128\161\226\128\161\226\128\161\226\128\161\226\128\161\226\128\161\226\128\161\226\128\161 in claimRewardForAd event handler function"
    L1_3(L2_3)
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "claimAdReward"
    L4_3 = A1_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L0_1
      L3_3 = L3_3.addDesignEvent
      L4_3 = {}
      L4_3.eventId = "ad_reward"
      L4_3.value = 1
      L3_3(L4_3)
      L3_3 = isAndroid
      L3_3 = L3_3()
      if not L3_3 then
        L3_3 = isIOS
        L3_3 = L3_3()
        if not L3_3 then
          goto lbl_48
        end
      end
      L3_3 = todNative
      L3_3 = L3_3.firebaseSDK
      L4_3 = {}
      L4_3.operation = "LogEvent"
      L4_3.eventName = "ad_reward"
      L4_3.paramKey = "value"
      L4_3.paramValue = "1"
      L3_3(L4_3)
      L3_3 = todNative
      L3_3 = L3_3.tenjingSDK
      L4_3 = {}
      L4_3.operation = "SendEvent"
      L4_3.eventName = "ad_reward"
      L4_3.eventValue = "1"
      L3_3(L4_3)
      L3_3 = todNative
      L3_3 = L3_3.appMetricaSDK
      L4_3 = {}
      L4_3.operation = "SendEvent"
      L4_3.eventName = "ad_reward"
      L4_3.eventValue = "1"
      L3_3(L4_3)
      ::lbl_48::
      L3_3 = L2_3.gold
      if L3_3 then
        L3_3 = mainPlayer
        L4_3 = L2_3.gold
        L3_3.gold = L4_3
      end
      L3_3 = L2_3.added_gold
      if L3_3 then
        L3_3 = mainPlayer
        L4_3 = L2_3.added_gold
        L3_3.rewardForWatchingAd = L4_3
      end
      L3_3 = L2_3.has_special_offer
      if L3_3 then
        L3_3 = mainPlayer
        L4_3 = L2_3.has_special_offer
        L3_3.hasSpecialOffer = L4_3
      end
      L3_3 = L2_3.sale_info
      if L3_3 then
        L3_3 = mainPlayer
        L4_3 = L2_3.sale_info
        L3_3.saleInfo = L4_3
      end
      L3_3 = A0_2
      if L3_3 ~= nil then
        L3_3 = A0_2
        L3_3()
      end
    end
  end
  
  L3_2 = {}
  L4_2 = require
  L5_2 = "crypto"
  L4_2 = L4_2(L5_2)
  L5_2 = Constants
  L5_2 = L5_2.Player_QKey
  L6_2 = L4_2.digest
  L7_2 = L4_2.md5
  L8_2 = ""
  L9_2 = mainPlayer
  L9_2 = L9_2.q
  L8_2 = L8_2 .. L9_2
  L9_2 = false
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L3_2[L5_2] = L6_2
  L5_2 = {}
  L5_2.body = L3_2
  L6_2 = network
  L6_2 = L6_2.request
  L7_2 = Constants
  L7_2 = L7_2.API_Path
  L8_2 = Constants
  L8_2 = L8_2.API_CLAIM_AD_REWARD
  L7_2 = L7_2 .. L8_2
  L8_2 = "POST"
  L9_2 = L2_2
  L10_2 = L5_2
  L11_2 = "claimAdReward"
  L12_2 = nil
  L13_2 = A1_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

claimRewardForAd = L1_1
