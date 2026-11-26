local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Components.TDButtonView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Models.AdController"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.ActivityIndicatorView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "composer"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Utils.Analytics"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.CachedImageView"
L6_1 = L6_1(L7_1)
L7_1 = setmetatable
L8_1 = _M
L9_1 = {}
L9_1.__index = L0_1
L7_1(L8_1, L9_1)
L7_1 = nil
L8_1 = nil
L9_1 = nil
L10_1 = nil
L11_1 = nil
L12_1 = mainPlayer
L12_1 = L12_1.canShowTapSell
if L12_1 then
  L12_1 = require
  L13_1 = "Utils.Ads.TapSell"
  L12_1 = L12_1(L13_1)
  L7_1 = L12_1
end
L12_1 = mainPlayer
L12_1 = L12_1.canShowAdivery
if L12_1 then
  L12_1 = require
  L13_1 = "Utils.Ads.Adivery"
  L12_1 = L12_1(L13_1)
  L11_1 = L12_1
end
L12_1 = mainPlayer
L12_1 = L12_1.canShowAdmob
if L12_1 then
  L12_1 = require
  L13_1 = "Utils.Ads.Admob"
  L12_1 = L12_1(L13_1)
  L10_1 = L12_1
end
L12_1 = mainPlayer
L12_1 = L12_1.canShowChartboost
if L12_1 then
  L12_1 = require
  L13_1 = "Utils.Ads.Chartboost"
  L12_1 = L12_1(L13_1)
  L9_1 = L12_1
end
L12_1 = mainPlayer
L12_1 = L12_1.canShowUnityAds
if L12_1 then
  L12_1 = require
  L13_1 = "Utils.Ads.UnityAds"
  L12_1 = L12_1(L13_1)
  L8_1 = L12_1
end

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = log3
  L2_2 = "\194\165\194\165\194\165 didGetRewardForAdCallback called. \194\165\194\165\194\165"
  L1_2(L2_2)
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = mainPlayer
  L1_2 = L1_2.rewardForWatchingAd
  if 0 < L1_2 then
    L1_2 = ""
    L2_2 = L7_1
    if L2_2 then
      L2_2 = Constants
      L2_2 = L2_2.TapSell_Enabled
      if L2_2 == true then
        L1_2 = "Tapsell Reward Has Been Claimed"
    end
    else
      L2_2 = L9_1
      if L2_2 then
        L2_2 = Constants
        L2_2 = L2_2.Chartboost_Enabled
        if L2_2 == true then
          L1_2 = "Chartboost Reward Has Been Claimed"
        end
      end
    end
    if L1_2 then
      L2_2 = L5_1
      L2_2 = L2_2.logEvent
      L3_2 = L1_2
      L2_2(L3_2)
    end
    L2_2 = nil
    L3_2 = mainPlayer
    L3_2 = L3_2.hasSpecialOffer
    if L3_2 == true then
      L3_2 = L1_1
      L3_2 = L3_2.localizedString
      L4_2 = "Free Gold And Special Offer Rewarded"
      L5_2 = {}
      L6_2 = mainPlayer
      L6_2 = L6_2.rewardForWatchingAd
      L5_2.reward = L6_2
      L3_2 = L3_2(L4_2, L5_2)
      L2_2 = L3_2
      L3_2 = showSimpleDialog
      L4_2 = L1_1
      L4_2 = L4_2["Free Gold"]
      L5_2 = L2_2
      L6_2 = L1_1
      L6_2 = L6_2.OK
      
      function L7_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.updateButtonUI
        L2_3 = true
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
      end
      
      L3_2(L4_2, L5_2, L6_2, L7_2)
    else
      L3_2 = L1_1
      L3_2 = L3_2.localizedString
      L4_2 = "Free Gold Rewarded"
      L5_2 = {}
      L6_2 = mainPlayer
      L6_2 = L6_2.rewardForWatchingAd
      L5_2.reward = L6_2
      L3_2 = L3_2(L4_2, L5_2)
      L2_2 = L3_2
      L3_2 = showSimpleDialog
      L4_2 = L1_1
      L4_2 = L4_2["Free Gold"]
      L5_2 = L2_2
      L6_2 = L1_1
      L6_2 = L6_2.OK
      
      function L7_2()
        local L0_3, L1_3, L2_3
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.updateButtonUI
        L2_3 = true
        L0_3(L1_3, L2_3)
      end
      
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  else
    L1_2 = showSimpleDialog
    L2_2 = L1_1
    L2_2 = L2_2["Free Gold"]
    L3_2 = L1_1
    L3_2 = L3_2["Reached To Maximum Ads"]
    L4_2 = L1_1
    L4_2 = L4_2.OK
    
    function L5_2()
      local L0_3, L1_3
      L0_3 = true
      return L0_3
    end
    
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end

didGetRewardForAdCallback = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L3_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = showSimpleDialog
  L3_2 = L1_1
  L3_2 = L3_2["Free Gold"]
  L4_2 = A1_2
  L5_2 = L1_1
  L5_2 = L5_2.OK
  
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.updateButtonUI
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  
  L2_2(L3_2, L4_2, L5_2, L6_2)
end

failedToGetRewardForAdCallback = L12_1

function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = log3
  L2_2 = "\194\165\194\165\194\165 callReward API called !!! "
  L1_2(L2_2)
  L1_2 = L3_1
  L1_2 = L1_2.show
  L2_2 = L1_1
  L2_2 = L2_2["Free Gold"]
  L1_2(L2_2)
  L1_2 = L2_1
  L1_2 = L1_2.claimRewardForAd
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.didGetRewardForAdCallback
    L0_3(L1_3)
  end
  
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.failedToGetRewardForAdCallback
    L0_3(L1_3)
  end
  
  L1_2(L2_2, L3_2)
end

callRewardAPI = L12_1

function L12_1(A0_2)
  local L1_2
  if A0_2 then
    A0_2.isVisible = false
  end
end

didPressWatchLater = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = log3
  L3_2 = "AdButtonView/tryToShowAdFromNetwork: "
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = Constants
  L2_2 = L2_2.Advertisement_Provider
  L2_2 = L2_2.UnityAds
  if A1_2 == L2_2 then
    L2_2 = L8_1
    if L2_2 then
      L2_2 = Constants
      L2_2 = L2_2.UnityAds_Enabled
      if L2_2 == true then
        L2_2 = L8_1
        L2_2 = L2_2.adIsReady
        if L2_2 == true then
          L2_2 = L8_1
          L2_2 = L2_2.showAd
          
          function L3_2()
            local L0_3, L1_3
            L0_3 = A0_2
            L1_3 = L0_3
            L0_3 = L0_3.callRewardAPI
            L0_3(L1_3)
          end
          
          L2_2(L3_2)
          L2_2 = true
          return L2_2
      end
    end
    else
      L2_2 = false
      return L2_2
    end
  else
    L2_2 = Constants
    L2_2 = L2_2.Advertisement_Provider
    L2_2 = L2_2.TapSell
    if A1_2 == L2_2 then
      L2_2 = L7_1
      if L2_2 then
        L2_2 = Constants
        L2_2 = L2_2.TapSell_Enabled
        if L2_2 == true then
          L2_2 = L7_1
          L2_2 = L2_2.adIsReady
          if L2_2 == true then
            L2_2 = L7_1
            L2_2 = L2_2.showAd
            
            function L3_2()
              local L0_3, L1_3
              L0_3 = L5_1
              L0_3 = L0_3.logEvent
              L1_3 = "Tapsell Request To Claim Reward"
              L0_3(L1_3)
              L0_3 = A0_2
              L1_3 = L0_3
              L0_3 = L0_3.callRewardAPI
              L0_3(L1_3)
            end
            
            L2_2(L3_2)
            L2_2 = true
            return L2_2
        end
      end
      else
        L2_2 = false
        return L2_2
      end
    else
      L2_2 = Constants
      L2_2 = L2_2.Advertisement_Provider
      L2_2 = L2_2.Adivery
      if A1_2 == L2_2 then
        L2_2 = L11_1
        if L2_2 then
          L2_2 = Constants
          L2_2 = L2_2.Adivery_Enabled
          if L2_2 == true then
            L2_2 = L11_1
            L2_2 = L2_2.adIsReady
            if L2_2 == true then
              L2_2 = L11_1
              L2_2 = L2_2.showAd
              
              function L3_2()
                local L0_3, L1_3
                L0_3 = L5_1
                L0_3 = L0_3.logEvent
                L1_3 = "Adivery Request To Claim Reward"
                L0_3(L1_3)
                L0_3 = A0_2
                L1_3 = L0_3
                L0_3 = L0_3.callRewardAPI
                L0_3(L1_3)
              end
              
              L2_2(L3_2)
              L2_2 = true
              return L2_2
          end
        end
        else
          L2_2 = false
          return L2_2
        end
      else
        L2_2 = Constants
        L2_2 = L2_2.Advertisement_Provider
        L2_2 = L2_2.Admob
        if A1_2 == L2_2 then
          L2_2 = L10_1
          if L2_2 then
            L2_2 = Constants
            L2_2 = L2_2.Admob_Enabled
            if L2_2 == true then
              L2_2 = L10_1
              L2_2 = L2_2.adIsReady
              if L2_2 == true then
                L2_2 = L10_1
                L2_2 = L2_2.showAd
                
                function L3_2()
                  local L0_3, L1_3
                  L0_3 = A0_2
                  L1_3 = L0_3
                  L0_3 = L0_3.callRewardAPI
                  L0_3(L1_3)
                end
                
                L2_2(L3_2)
                L2_2 = true
                return L2_2
            end
          end
          else
            L2_2 = false
            return L2_2
          end
        end
      end
    end
  end
  L2_2 = Constants
  L2_2 = L2_2.Advertisement_Provider
  L2_2 = L2_2.Chartboost
  if A1_2 == L2_2 then
    L2_2 = L9_1
    if L2_2 then
      L2_2 = Constants
      L2_2 = L2_2.Chartboost_Enabled
      if L2_2 == true then
        L2_2 = L9_1
        L2_2 = L2_2.adIsReady
        if L2_2 then
          L2_2 = L9_1
          L2_2 = L2_2.showAd
          
          function L3_2()
            local L0_3, L1_3
            L0_3 = L5_1
            L0_3 = L0_3.logEvent
            L1_3 = "Chartboost Request To Claim Reward"
            L0_3(L1_3)
            L0_3 = A0_2
            L1_3 = L0_3
            L0_3 = L0_3.callRewardAPI
            L0_3(L1_3)
          end
          
          L2_2(L3_2)
          L2_2 = true
          return L2_2
      end
    end
    else
      L2_2 = false
      return L2_2
    end
  end
  L2_2 = false
  return L2_2
end

tryToShowAdFromNetwork = L12_1

function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = mainPlayer
  L2_2 = L2_2.advertisment_providers_waterfall
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.tryToShowAdFromNetwork
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      return
    end
  end
  L1_2 = mainPlayer
  L1_2 = L1_2.advertisment_providers_random
  L2_2 = 1
  L3_2 = 5
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = #L1_2
    L6_2 = L6_2(L7_2)
    L6_2 = L1_2[L6_2]
    L8_2 = A0_2
    L7_2 = A0_2.tryToShowAdFromNetwork
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      return
    end
  end
end

didPressWatchVideo = L12_1

function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = showSimpleDialog
  L3_2 = L1_1
  L3_2 = L3_2["Free Gold"]
  L4_2 = L1_1
  L4_2 = L4_2["Free Gold Message"]
  L5_2 = L1_1
  L5_2 = L5_2["Watch Ad Video"]
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.didPressWatchVideo
    L0_3(L1_3)
  end
  
  L7_2 = L1_1
  L7_2 = L7_2["Watch Later"]
  
  function L8_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.didPressWatchLater
    L0_3(L1_3)
  end
  
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end

didPressAdButton = L12_1

function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2.imageName
  if L4_2 then
    L4_2 = A1_2.imageDisplayObject
    if not L4_2 then
      L4_2 = display
      L4_2 = L4_2.newGroup
      L4_2 = L4_2()
      L3_2 = L4_2
      L4_2 = L6_1
      L5_2 = L4_2
      L4_2 = L4_2.new
      L6_2 = L3_2
      L7_2 = A1_2.imageName
      L8_2 = A1_2.width
      L9_2 = A1_2.height
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      L5_2 = L4_2.view
      A1_2.imageDisplayObject = L5_2
    end
  end
  L4_2 = L0_1
  L4_2 = L4_2.new
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A2_2 = L4_2
  if L3_2 then
    L5_2 = L3_2
    L4_2 = L3_2.removeSelf
    L4_2(L5_2)
  end
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = A2_2
    L1_3 = L0_3
    L0_3 = L0_3.didPressAdButton
    L0_3(L1_3)
  end
  
  A2_2.onRelease = L4_2
  L4_2 = _isFillterSupport
  if L4_2 then
    L4_2 = display
    L4_2 = L4_2.newCircle
    L5_2 = A2_2.view
    L6_2 = 0
    L7_2 = 0
    L8_2 = A1_2.width
    L8_2 = L8_2 / 2
    L8_2 = L8_2 + 20
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L5_2 = L4_2.fill
    L5_2.effect = "generator.sunbeams"
    L5_2 = L4_2.fill
    L5_2 = L5_2.effect
    L5_2.posX = 0.5
    L5_2 = L4_2.fill
    L5_2 = L5_2.effect
    L5_2.posY = 0.5
    L5_2 = L4_2.fill
    L5_2 = L5_2.effect
    L5_2.seed = 2
    L5_2 = transition
    L5_2 = L5_2.to
    L6_2 = L4_2.fill
    L6_2 = L6_2.effect
    L7_2 = {}
    L7_2.time = 200000
    L7_2.seed = 200
    L7_2.iterations = -1
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.toBack
    L5_2(L6_2)
  end
  return A2_2
end

new = L12_1

function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = print
  L4_2 = "AdButton:updateButtonUI"
  L3_2(L4_2)
  L3_2 = Constants
  L3_2 = L3_2.TapSell_Enabled
  if L3_2 ~= true then
    L3_2 = Constants
    L3_2 = L3_2.Admob_Enabled
    if L3_2 ~= true then
      L3_2 = Constants
      L3_2 = L3_2.UnityAds_Enabled
      if L3_2 ~= true then
        L3_2 = Constants
        L3_2 = L3_2.Chartboost_Enabled
        if not L3_2 then
          L3_2 = Constants
          L3_2 = L3_2.Adivery_Enabled
          if L3_2 ~= true then
            goto lbl_72
          end
        end
      end
    end
  end
  L3_2 = L7_1
  if L3_2 then
    L3_2 = L7_1
    L3_2 = L3_2.adIsReady
    if L3_2 == true then
      goto lbl_59
    end
  end
  L3_2 = L10_1
  if L3_2 then
    L3_2 = L10_1
    L3_2 = L3_2.adIsReady
    if L3_2 then
      goto lbl_59
    end
  end
  L3_2 = L8_1
  if L3_2 then
    L3_2 = L8_1
    L3_2 = L3_2.adIsReady
    if L3_2 == true then
      goto lbl_59
    end
  end
  L3_2 = L9_1
  if L3_2 then
    L3_2 = L9_1
    L3_2 = L3_2.adIsReady
    if L3_2 == true then
      goto lbl_59
    end
  end
  L3_2 = L11_1
  if L3_2 then
    L3_2 = L11_1
    L3_2 = L3_2.adIsReady
    if L3_2 == true then
      ::lbl_59::
      if A0_2 then
        L3_2 = print
        L4_2 = "AdButton:enabled"
        L3_2(L4_2)
        A0_2.isVisible = true
      end
  end
  elseif A0_2 then
    L3_2 = print
    L4_2 = "AdButton:disabled"
    L3_2(L4_2)
    A0_2.isVisible = false
  end
  ::lbl_72::
  if A1_2 then
    L3_2 = L4_1
    L3_2 = L3_2.getScene
    L4_2 = "Scenes.Home"
    L3_2 = L3_2(L4_2)
    L5_2 = L3_2
    L4_2 = L3_2.updateGold
    L6_2 = true
    L4_2(L5_2, L6_2)
    if A2_2 == true then
      L4_2 = L3_2.shopButton
      L5_2 = L4_2
      L4_2 = L4_2.update
      L4_2(L5_2)
    end
  end
end

updateButtonUI = L12_1
