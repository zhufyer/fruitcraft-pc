local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = true
L1_1 = nil
L2_1 = nil
if not L0_1 then
  L3_1 = require
  L4_1 = "plugin.admob"
  L3_1 = L3_1(L4_1)
  L1_1 = L3_1
  L3_1 = isIOS
  L3_1 = L3_1()
  if L3_1 then
    L3_1 = require
    L4_1 = "plugin.att"
    L3_1 = L3_1(L4_1)
    L2_1 = L3_1
  end
end
L3_1 = {}
L3_1.ADMOB_UNAVAILABLE = -1
L3_1.ADMOB_AVAILABLE = 1
L3_1.ADMOB_FINISH = 2
L4_1 = false
adIsReady = L4_1
L4_1 = "rewardedVideo"

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = "Admob/ATT Status is "
  L3_2 = tostring
  L4_2 = A0_2.status
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = L1_1
  L1_2 = L1_2.load
  L2_2 = L4_1
  L3_2 = {}
  L4_2 = Constants
  L4_2 = L4_2.ADMOB_PLACEMENT_ID
  L3_2.adUnitId = L4_2
  L3_2.hasUserConsent = true
  L1_2(L2_2, L3_2)
end

L6_1 = nil
L7_1 = nil

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = print
  L2_2 = "Admob event general log phase : "
  L3_2 = A0_2.phase
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.phase
  if L1_2 == "init" then
    L1_2 = print
    L2_2 = "AdMob event: initialization successful"
    L1_2(L2_2)
    L1_2 = isIOS
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = L2_1
      if L1_2 then
        L1_2 = L2_1
        L1_2 = L1_2.request
        L2_2 = L5_1
        L1_2(L2_2)
    end
    else
      L1_2 = L1_1
      L1_2 = L1_2.load
      L2_2 = L4_1
      L3_2 = {}
      L4_2 = Constants
      L4_2 = L4_2.ADMOB_PLACEMENT_ID
      L3_2.adUnitId = L4_2
      L3_2.hasUserConsent = true
      L1_2(L2_2, L3_2)
    end
  else
    L1_2 = A0_2.phase
    if L1_2 == "loaded" then
      L1_2 = print
      L2_2 = "AdMob event: "
      L3_2 = tostring
      L4_2 = A0_2.type
      L3_2 = L3_2(L4_2)
      L4_2 = " ad loaded successfully"
      L2_2 = L2_2 .. L3_2 .. L4_2
      L1_2(L2_2)
      L1_2 = true
      adIsReady = L1_2
      L1_2 = L6_1
      if L1_2 then
        L1_2 = print
        L2_2 = "Admob/afterCheckingCallbackFunction is called"
        L1_2(L2_2)
        L1_2 = L6_1
        L1_2()
      end
    else
      L1_2 = A0_2.phase
      if L1_2 == "reward" then
        L1_2 = print
        L2_2 = "AdMob event: "
        L3_2 = tostring
        L4_2 = A0_2.type
        L3_2 = L3_2(L4_2)
        L4_2 = " ad finished and reward should be given"
        L2_2 = L2_2 .. L3_2 .. L4_2
        L1_2(L2_2)
        L1_2 = L7_1
        if L1_2 then
          L1_2 = L7_1
          L1_2()
        end
        L1_2 = false
        adIsReady = L1_2
      else
        L1_2 = A0_2.phase
        if L1_2 == "closed" then
          L1_2 = print
          L2_2 = "AdMob event: "
          L3_2 = tostring
          L4_2 = A0_2.type
          L3_2 = L3_2(L4_2)
          L4_2 = " ad closed by user"
          L2_2 = L2_2 .. L3_2 .. L4_2
          L1_2(L2_2)
        else
          L1_2 = A0_2.phase
          if L1_2 == "clicked" then
            L1_2 = print
            L2_2 = "AdMob event: "
            L3_2 = tostring
            L4_2 = A0_2.type
            L3_2 = L3_2(L4_2)
            L4_2 = " ad clicked/tapped by user"
            L2_2 = L2_2 .. L3_2 .. L4_2
            L1_2(L2_2)
          else
            L1_2 = A0_2.phase
            if L1_2 == "failed" then
              L1_2 = print
              L2_2 = "AdMob event: "
              L3_2 = tostring
              L4_2 = A0_2.type
              L3_2 = L3_2(L4_2)
              L4_2 = " ad failed to load "
              L5_2 = A0_2.data
              L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2
              L1_2(L2_2)
              L1_2 = false
              adIsReady = L1_2
            end
          end
        end
      end
    end
  end
end

function L9_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  if not L0_2 then
    L0_2 = L1_1
    if L0_2 ~= nil then
      goto lbl_11
    end
  end
  L0_2 = log3
  L1_2 = "\194\165\194\165\194\165 Admob is disabled, skipping init."
  L0_2(L1_2)
  do return end
  ::lbl_11::
  L0_2 = L1_1
  L0_2 = L0_2.init
  L1_2 = L8_1
  L2_2 = {}
  L2_2.testMode = false
  L0_2(L1_2, L2_2)
end

init = L9_1
L9_1 = system
L9_1 = L9_1.getInfo
L10_1 = "platformName"
L9_1 = L9_1(L10_1)
if L9_1 == "iPhone OS" then
  L9_1 = Constants
  L9_1 = L9_1.Admob_Enabled
  if L9_1 == true then
    L9_1 = init
    L9_1()
  end
end

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1
  if not L1_2 then
    L1_2 = L1_1
    if L1_2 ~= nil then
      goto lbl_11
    end
  end
  L1_2 = log3
  L2_2 = "\194\165\194\165\194\165 Admob is disabled, showAd ignored."
  L1_2(L2_2)
  do return end
  ::lbl_11::
  L1_2 = adIsReady
  if L1_2 == true then
    L1_2 = log3
    L2_2 = "\194\165\194\165\194\165 show Admob called \194\165\194\165\194\165"
    L1_2(L2_2)
    L7_1 = A0_2
    L1_2 = L1_1
    L1_2 = L1_2.isLoaded
    L2_2 = L4_1
    L1_2 = L1_2(L2_2)
    if L1_2 == true then
      L1_2 = L1_1
      L1_2 = L1_2.show
      L2_2 = L4_1
      L1_2(L2_2)
    else
      L1_2 = print
      L2_2 = "Admob Error: show called while the "
      L3_2 = L4_1
      L4_2 = " ad is not ready"
      L2_2 = L2_2 .. L3_2 .. L4_2
      L1_2(L2_2)
    end
  end
end

showAd = L9_1

function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  if not L1_2 then
    L1_2 = L1_1
    if L1_2 ~= nil then
      goto lbl_11
    end
  end
  L1_2 = log3
  L2_2 = "\194\165\194\165\194\165 Admob is disabled, no ad availability."
  L1_2(L2_2)
  do return end
  ::lbl_11::
  L1_2 = system
  L1_2 = L1_2.getInfo
  L2_2 = "platformName"
  L1_2 = L1_2(L2_2)
  if L1_2 == "iPhone OS" then
    L1_2 = Constants
    L1_2 = L1_2.Admob_Enabled
    if L1_2 == true then
      L1_2 = mainPlayer
      L1_2 = L1_2.canShowAdmob
      if L1_2 == true then
        L6_1 = A0_2
    end
    else
      L1_2 = log3
      L2_2 = "\194\165\194\165\194\165 Admob is disabled."
      L1_2(L2_2)
    end
  else
    L1_2 = log3
    L2_2 = "\194\165\194\165\194\165 Your OS does not support Admob yet."
    L1_2(L2_2)
  end
end

checkAdAvailability = L9_1
