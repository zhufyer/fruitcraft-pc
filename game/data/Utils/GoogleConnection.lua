local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "json"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Models.Player"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Models.ProfileManager"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Language"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.ActivityIndicatorView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "composer"
L5_1 = L5_1(L6_1)
L6_1 = nil
L7_1 = nil
L8_1 = nil

function L9_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2 = L0_2.hide
  L0_2()
end

cancelCallback = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = false
  L2_2 = system
  L2_2 = L2_2.getInfo
  L3_2 = "platformName"
  L2_2 = L2_2(L3_2)
  if L2_2 == "Android" then
    if A0_2 ~= nil then
      L2_2 = log3
      L3_2 = " in android inputjson is not null"
      L2_2(L3_2)
      L1_2 = true
    else
      L2_2 = log3
      L3_2 = " in android inputjson is null"
      L2_2(L3_2)
      L1_2 = false
    end
  else
    L2_2 = system
    L2_2 = L2_2.getInfo
    L3_2 = "platformName"
    L2_2 = L2_2(L3_2)
    if L2_2 == "iPhone OS" then
      L2_2 = log3
      L3_2 = " in ios inputjson status is "
      L4_2 = A0_2.status
      L3_2 = L3_2 .. L4_2
      L2_2(L3_2)
      L2_2 = A0_2.status
      if L2_2 == 1 then
        L2_2 = log3
        L3_2 = " in ios inputjson status is 1"
        L2_2(L3_2)
        L1_2 = true
      else
        L2_2 = A0_2.status
        if L2_2 == 0 then
          L2_2 = log3
          L3_2 = " in ios inputjson status is 0"
          L2_2(L3_2)
          L1_2 = false
        end
      end
    end
  end
  return L1_2
end

checkJson = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = mainPlayer
  L1_2.hasVerifiedEmail = A0_2
  L1_2 = mainPlayer
  L2_2 = L1_2
  L1_2 = L1_2.setSettingForKey
  L3_2 = "hasEmail"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = mainPlayer
  L2_2 = L1_2
  L1_2 = L1_2.saveSettings
  L1_2(L2_2)
end

setKeys = L9_1

function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L4_1
  L0_2 = L0_2.hide
  L0_2()
  L0_2 = L6_1
  if L0_2 == true then
    L0_2 = showSimpleDialog
    L1_2 = L3_1
    L1_2 = L1_2["Google Plus Connection successfull title"]
    L2_2 = L3_1
    L2_2 = L2_2["Google Plus Connection successfull message"]
    L3_2 = L3_1
    L3_2 = L3_2["Google Play Service Button"]
    
    function L4_2()
      local L0_3, L1_3
      L0_3 = setKeys
      L1_3 = true
      L0_3(L1_3)
      L0_3 = true
      return L0_3
    end
    
    L0_2(L1_2, L2_2, L3_2, L4_2)
  else
    L0_2 = showSimpleDialog
    L1_2 = L3_1
    L1_2 = L1_2["Google Plus Disconnecting Title"]
    L2_2 = L3_1
    L2_2 = L2_2["Google Plus Disconnecting message"]
    L3_2 = L3_1
    L3_2 = L3_2["Google Play Service Button"]
    
    function L4_2()
      local L0_3, L1_3
      L0_3 = setKeys
      L1_3 = false
      L0_3(L1_3)
      L0_3 = true
      return L0_3
    end
    
    L0_2(L1_2, L2_2, L3_2, L4_2)
  end
end

didSetInformation = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L4_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = log3
  L2_2 = " in failed to set information"
  L1_2(L2_2)
  L1_2 = showSimpleDialog
  L2_2 = L3_1
  L2_2 = L2_2["Google Plus Connection Error Title"]
  L3_2 = L3_1
  L3_2 = L3_2[A0_2]
  L4_2 = L3_1
  L4_2 = L4_2["Google Play Service Button"]
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = setKeys
    L1_3 = false
    L0_3(L1_3)
    L0_3 = L8_1
    if L0_3 == true then
      L0_3 = L5_1
      L0_3 = L0_3.showOverlay
      L1_3 = "Scenes.ExistingPlayerOverlay"
      L0_3(L1_3)
    else
      L0_3 = L5_1
      L0_3 = L0_3.showOverlay
      L1_3 = "Scenes.SettingsOverlay"
      L0_3(L1_3)
    end
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

failedToSetInformation = L9_1

function L9_1()
  local L0_2, L1_2
  L0_2 = todNative
  L0_2 = L0_2.checkGPService
  L0_2 = L0_2()
  if L0_2 == true then
    L0_2 = log3
    L1_2 = "Google Play Service Version is Up to Date !!!"
    L0_2(L1_2)
    L0_2 = true
    return L0_2
  else
    L0_2 = log3
    L1_2 = "Google Play Service Version is Out of Date !!!"
    L0_2(L1_2)
    L0_2 = false
    return L0_2
  end
end

checkGooglePlayServiceVersion = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A0_2 ~= nil then
    L2_2 = {}
    L3_2 = L0_1
    L3_2 = L3_2.decode
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
    if L2_2 == nil then
      L3_2 = log3
      L4_2 = "informationJson is nil and we cant parse it."
      L3_2(L4_2)
      return
    end
    L3_2 = log3
    L4_2 = "player information parsed json:"
    L3_2(L4_2)
    L3_2 = pairs
    L4_2 = L2_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = log3
      L9_2 = L6_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
    L3_2 = checkJson
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 == true then
      L3_2 = true
      L7_1 = L3_2
    else
      L3_2 = checkJson
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if L3_2 == false then
        L3_2 = false
        L7_1 = L3_2
      end
    end
    L3_2 = mainPlayer
    L4_2 = L2_2.playerName
    L3_2.googleName = L4_2
    L3_2 = mainPlayer
    L4_2 = L2_2.playerGoogleID
    L3_2.googleId = L4_2
    L3_2 = mainPlayer
    L4_2 = L2_2.playerGender
    L3_2.googleGender = L4_2
    if A1_2 == true then
      L3_2 = mainPlayer
      L4_2 = L2_2.playerEmail
      L3_2.googleEmail = L4_2
    elseif A1_2 == false then
      L3_2 = mainPlayer
      L3_2.googleEmail = nil
    end
    L3_2 = L2_2.playerBirthDate
    if L3_2 then
      L3_2 = mainPlayer
      L4_2 = L2_2.playerBirthDate
      L3_2.googleBirthDate = L4_2
    end
    L3_2 = log3
    L4_2 = "end of decoding."
    L3_2(L4_2)
  end
end

decodeInformation = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = decodeInformation
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = L7_1
  if L1_2 == true then
    L1_2 = true
    L6_1 = L1_2
  end
  L1_2 = L2_1
  L1_2 = L1_2.sendGooglePlusInformation
  L2_2 = didSetInformation
  L3_2 = failedToSetInformation
  L1_2(L2_2, L3_2)
end

googleCallBack = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = decodeInformation
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L1_2 = L1_2.restorePlayer
  L2_2 = nil
  L3_2 = mainPlayer
  L3_2 = L3_2.googleEmail
  L1_2(L2_2, L3_2)
end

googleCallBackForRestoringWithEmail = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = decodeInformation
  L2_2 = A0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = L7_1
  if L1_2 == true then
    L1_2 = false
    L6_1 = L1_2
  end
  L1_2 = L2_1
  L1_2 = L1_2.sendGooglePlusInformation
  L2_2 = didSetInformation
  L3_2 = failedToSetInformation
  L1_2(L2_2, L3_2)
end

signOutCallBack = L9_1

function L9_1()
  local L0_2, L1_2
  L0_2 = todNative
  L0_2 = L0_2.initCon
  L0_2()
end

initiateGoogleConnectionForAndroid = L9_1

function L9_1()
  local L0_2, L1_2
  L0_2 = todNative
  L0_2 = L0_2.getUserInformationCallback
  L1_2 = googleCallBackForRestoringWithEmail
  L0_2(L1_2)
end

getUserInformationCallbackForRestoring = L9_1

function L9_1()
  local L0_2, L1_2
  L0_2 = todNative
  L0_2 = L0_2.getUserInformationCallback
  L1_2 = googleCallBack
  L0_2(L1_2)
end

getUserInformationCallback = L9_1

function L9_1()
  local L0_2, L1_2
  L0_2 = signInGoogleForIOS
  L0_2()
end

initGoogleCallback = L9_1

function L9_1()
  local L0_2, L1_2
  L0_2 = todNative
  L0_2 = L0_2.initGoogle
  L1_2 = googleCallBack
  L0_2(L1_2)
end

initiateGoogleConnectionForIOS = L9_1

function L9_1()
  local L0_2, L1_2
  L0_2 = todNative
  L0_2 = L0_2.initGoogle
  L1_2 = googleCallBackForRestoringWithEmail
  L0_2(L1_2)
end

initiateGoogleConnectionForRestoringInIOS = L9_1

function L9_1()
  local L0_2, L1_2
  L0_2 = todNative
  L0_2 = L0_2.signInGoogle
  L0_2()
end

signInGoogleForIOS = L9_1

function L9_1()
  local L0_2, L1_2
  L0_2 = todNative
  L0_2 = L0_2.signOutGoogle
  L1_2 = signOutCallBack
  L0_2(L1_2)
end

signOutGoogleForIOS = L9_1

function L9_1()
  local L0_2, L1_2
  L0_2 = todNative
  L0_2 = L0_2.googleCancelCallback
  L1_2 = cancelCallback
  L0_2(L1_2)
end

setCancelCallback = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L8_1 = A0_2
  L2_2 = system
  L2_2 = L2_2.getInfo
  L3_2 = "platformName"
  L2_2 = L2_2(L3_2)
  if L2_2 == "Android" then
    L2_2 = checkGooglePlayServiceVersion
    L2_2 = L2_2()
    if L2_2 == true then
      L3_2 = L4_1
      L3_2 = L3_2.show
      L3_2()
      if A0_2 == true then
        L3_2 = initiateGoogleConnectionForAndroid
        L3_2()
        L3_2 = getUserInformationCallbackForRestoring
        L3_2()
        L3_2 = setCancelCallback
        L3_2()
      else
        L3_2 = initiateGoogleConnectionForAndroid
        L3_2()
        L3_2 = getUserInformationCallback
        L3_2()
        L3_2 = setCancelCallback
        L3_2()
      end
    else
      L3_2 = showSimpleDialog
      L4_2 = L3_1
      L4_2 = L4_2["Google Play Service Error Title"]
      L5_2 = L3_1
      L5_2 = L5_2["Google Play Service is Outdated"]
      L6_2 = L3_1
      L6_2 = L6_2["Google Play Service Button"]
      
      function L7_2()
        local L0_3, L1_3
        L0_3 = L5_1
        L0_3 = L0_3.showOverlay
        L1_3 = A1_2
        L0_3(L1_3)
      end
      
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  else
    L2_2 = system
    L2_2 = L2_2.getInfo
    L3_2 = "platformName"
    L2_2 = L2_2(L3_2)
    if L2_2 == "iPhone OS" then
      L2_2 = L4_1
      L2_2 = L2_2.show
      L2_2()
      if A0_2 == true then
        L2_2 = initiateGoogleConnectionForRestoringInIOS
        L2_2()
        L2_2 = signInGoogleForIOS
        L2_2()
      else
        L2_2 = mainPlayer
        L2_2 = L2_2.hasVerifiedEmail
        if L2_2 ~= true then
          L2_2 = initiateGoogleConnectionForIOS
          L2_2()
          L2_2 = signInGoogleForIOS
          L2_2()
        else
          L2_2 = signOutGoogleForIOS
          L2_2()
        end
      end
    end
  end
end

startConnection = L9_1
