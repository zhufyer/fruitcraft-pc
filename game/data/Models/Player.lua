local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "TestServer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "json"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Constants"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Models.UserCard"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Models.Building"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Language"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Models.Tribe"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Utils.Toolbox"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Utils.Analytics"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "composer"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Models.AchievementManager"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Utils.base64"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Data.Avatars"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Data.Moods"
L13_1 = L13_1(L14_1)
L14_1 = require
L15_1 = "Data.GenderData"
L14_1 = L14_1(L15_1)
L15_1 = require
L16_1 = "Models.ProfileManager"
L15_1 = L15_1(L16_1)
L16_1 = require
L17_1 = "Data.BaseAchievements"
L16_1 = L16_1(L17_1)
L17_1 = require
L18_1 = "Models.ErrorController"
L17_1 = L17_1(L18_1)
L18_1 = require
L19_1 = "Views.ActivityIndicatorView"
L18_1 = L18_1(L19_1)
L19_1 = require
L20_1 = "Components.DataManager"
L19_1 = L19_1(L20_1)
L20_1 = require
L21_1 = "Data.FullHelpContent"
L20_1 = L20_1(L21_1)
L21_1 = require
L22_1 = "Models.ItemModel"
L21_1 = L21_1(L22_1)
L22_1 = require
L23_1 = "plugin.gameanalytics_v2"
L22_1 = L22_1(L23_1)
L23_1 = require
L24_1 = "Models.ResourceManager"
L23_1 = L23_1(L24_1)
L24_1 = 0
id = L24_1
L24_1 = "name not set"
name = L24_1
L24_1 = 0
rank = L24_1
L24_1 = 0
level = L24_1
L24_1 = 0
xp = L24_1
L24_1 = 0
power = L24_1
L24_1 = false
cards = L24_1
L24_1 = nil
tribe = L24_1
L24_1 = 0
positionInTribe = L24_1
L24_1 = 0
gold = L24_1
L24_1 = false
isFirstOppening = L24_1
L24_1 = nil
restoreKey = L24_1

function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = setmetatable
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  return A1_2
end

new = L24_1
L24_1 = _G
L25_1 = _M
L26_1 = L25_1
L25_1 = L25_1.new
L27_1 = {}
L27_1.achievements = false
L27_1.cooldownsBoughtToday = 0
L27_1.goldBuilding = nil
L27_1.bankBuilding = nil
L25_1 = L25_1(L26_1, L27_1)
L24_1.mainPlayer = L25_1

function L24_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = L8_1
  L5_2 = L5_2.logEvent
  L6_2 = "Load Player Called"
  L5_2(L6_2)
  L5_2 = {}
  L6_2 = system
  L6_2 = L6_2.getInfo
  L7_2 = "deviceID"
  L6_2 = L6_2(L7_2)
  L5_2.udid = L6_2
  L6_2 = log3
  L7_2 = "udid is : "
  L8_2 = L5_2.udid
  L6_2(L7_2, L8_2)
  L6_2 = system
  L6_2 = L6_2.getInfo
  L7_2 = "name"
  L6_2 = L6_2(L7_2)
  L5_2.device_name = L6_2
  L6_2 = string
  L6_2 = L6_2.len
  L7_2 = L7_1
  L7_2 = L7_2.getAppVersion
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L7_2()
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  if 0 < L6_2 then
    L6_2 = L7_1
    L6_2 = L6_2.getAppVersion
    L6_2 = L6_2()
    L5_2.game_version = L6_2
  else
    L6_2 = log2
    L7_2 = "an empty app version was returned"
    L6_2(L7_2)
    L5_2.game_version = "2"
  end
  L6_2 = string
  L6_2 = L6_2.sub
  L7_2 = system
  L7_2 = L7_2.getInfo
  L8_2 = "model"
  L7_2 = L7_2(L8_2)
  L8_2 = 1
  L9_2 = 2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if L6_2 == "iP" then
    L5_2.os_type = 1
  else
    L5_2.os_type = 2
  end
  if A0_2 then
    L5_2.name = A0_2
  end
  if A1_2 then
    L5_2.restore_key = A1_2
  else
    L6_2 = mainPlayer
    L7_2 = L6_2
    L6_2 = L6_2.loadSettings
    L6_2(L7_2)
    L6_2 = mainPlayer
    L6_2 = L6_2.settings
    L6_2 = L6_2.restoreKey
    L5_2.restore_key = L6_2
  end
  if A2_2 then
    L5_2.invitation_ticket = A2_2
  end
  L6_2 = _storeType
  if L6_2 then
    L6_2 = _storeType
    L5_2.store_type = L6_2
  end
  if A3_2 then
    L5_2.first_time_load = A3_2
  end
  if A4_2 then
    L6_2 = require
    L7_2 = "crypto"
    L6_2 = L6_2(L7_2)
    L7_2 = {}
    L8_2 = "synth"
    L9_2 = "123"
    L10_2 = "sound"
    L11_2 = "394"
    L12_2 = "pluck"
    L13_2 = "449"
    L14_2 = "wave"
    L15_2 = "712"
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L7_2[3] = L10_2
    L7_2[4] = L11_2
    L7_2[5] = L12_2
    L7_2[6] = L13_2
    L7_2[7] = L14_2
    L7_2[8] = L15_2
    L8_2 = L7_2[7]
    L9_2 = L7_2[8]
    L10_2 = L7_2[3]
    L11_2 = L7_2[2]
    L12_2 = L7_2[5]
    L13_2 = L7_2[4]
    L14_2 = L7_2[1]
    L15_2 = L7_2[6]
    L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
    L9_2 = L6_2.digest
    L10_2 = L6_2.sha512
    L11_2 = ""
    L12_2 = L8_2
    L11_2 = L11_2 .. L12_2
    L12_2 = false
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = L11_1
    L10_2 = L10_2.encode
    L11_2 = L7_1
    L11_2 = L11_2.xorEncryptWithKey
    L12_2 = A4_2
    L13_2 = L9_2
    L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2, L13_2)
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    L5_2.email = L10_2
  end
  L6_2 = system
  L6_2 = L6_2.getInfo
  L7_2 = "platformVersion"
  L6_2 = L6_2(L7_2)
  L5_2.os_version = L6_2
  L6_2 = system
  L6_2 = L6_2.getInfo
  L7_2 = "model"
  L6_2 = L6_2(L7_2)
  L5_2.model = L6_2
  L6_2 = isAndroid
  L6_2 = L6_2()
  if L6_2 then
    L6_2 = require
    L7_2 = "plugin.appsflyer"
    L6_2 = L6_2(L7_2)
    L7_2 = L6_2.getAppsFlyerUID
    L7_2 = L7_2()
    L5_2.appsflyer_uid = L7_2
    L7_2 = todNative
    L7_2 = L7_2.metrixSDK
    L8_2 = {}
    L8_2.operation = "GetMetrixUserId"
    L7_2 = L7_2(L8_2)
    L5_2.metrix_uid = L7_2
    L7_2 = print
    L8_2 = "Attribution AppsFlyer UID"
    L9_2 = L5_2.appsflyer_uid
    L7_2(L8_2, L9_2)
    L7_2 = print
    L8_2 = "Attribution Metrix UID"
    L9_2 = L5_2.metrix_uid
    L7_2(L8_2, L9_2)
  end
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = log3
  L8_2 = "player/loadPlayer: printing load player request:"
  L9_2 = postData
  L7_2(L8_2, L9_2)
  L7_2 = L17_1
  L7_2 = L7_2.readErrorMessagesFiles
  L7_2()
  L7_2 = network
  L7_2 = L7_2.getDefaultHeader
  L7_2 = L7_2()
  L6_2.headers = L7_2
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = L2_1
  L8_2 = L8_2.API_Path
  L9_2 = L2_1
  L9_2 = L9_2.API_LoadPath
  L8_2 = L8_2 .. L9_2
  L9_2 = "POST"
  L10_2 = loadPlayerNetworkListener
  L11_2 = L6_2
  L12_2 = "load player"
  L13_2 = nil
  
  function L14_2()
    local L0_3, L1_3
    L0_3 = delegate
    L0_3 = L0_3.failedToLoad
    L1_3 = "Network error"
    L0_3(L1_3)
  end
  
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end

loadPlayer = L24_1

function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L8_1
  L2_2 = L2_2.logEvent
  L3_2 = "Restore Player Called"
  L4_2 = {}
  L5_2 = L19_1
  L5_2 = L5_2.moduleVersion
  L6_2 = "TutorialData"
  L5_2 = L5_2(L6_2)
  L4_2.TutorialVersion = L5_2
  L5_2 = mainPlayer
  L5_2 = L5_2.level
  L4_2.PlayerLevel = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = true
  restoreMode = L2_2
  L2_2 = L9_1
  L2_2 = L2_2.getScene
  L3_2 = "Scenes.Loading"
  L2_2 = L2_2(L3_2)
  delegate = L2_2
  if A0_2 ~= nil then
    L2_2 = restorePlayerWithKey
    L3_2 = A0_2
    L2_2(L3_2)
  elseif A1_2 ~= nil then
    L2_2 = restorePlayerWithEmail
    L3_2 = A1_2
    L2_2(L3_2)
  end
end

restorePlayer = L24_1

function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "player email must be provided"
  L4_2 = _NAME
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = loadPlayer
  L2_2 = nil
  L3_2 = nil
  L4_2 = nil
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end

restorePlayerWithEmail = L24_1

function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "restorePlayerWithKey, restore key must be provided"
  L4_2 = _NAME
  L1_2(L2_2, L3_2, L4_2)
  restoreKey = A0_2
  L1_2 = loadPlayer
  L2_2 = nil
  L3_2 = restoreKey
  L1_2(L2_2, L3_2)
end

restorePlayerWithKey = L24_1

function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "createNewPlayerWithUsername, username must be provided"
  L4_2 = _NAME
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L8_1
  L1_2 = L1_2.logEvent
  L2_2 = "New User Called"
  L1_2(L2_2)
  L1_2 = loadPlayer
  L2_2 = A0_2
  L1_2(L2_2)
end

createNewPlayerWithUsername = L24_1

function L24_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = log3
    L2_3 = "we send user name successfully to the server"
    L1_3(L2_3)
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "setPlayerInfo"
    L4_3 = A2_2
    L5_3 = {}
    L6_3 = "name_changed"
    L5_3[1] = L6_3
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
    L3_3 = {}
    L4_3 = false
    L5_3 = nil
    if L1_3 then
      L6_3 = L2_3.name_changed
      if L6_3 == false then
        L6_3 = ipairs
        L7_3 = L2_3.available_names
        L6_3, L7_3, L8_3 = L6_3(L7_3)
        for L9_3, L10_3 in L6_3, L7_3, L8_3 do
          L3_3[L9_3] = L10_3
        end
      else
        L4_3 = true
        L6_3 = mainPlayer
        L7_3 = A0_2
        L6_3.name = L7_3
        L6_3 = mainPlayer
        L6_3.isNameTemp = false
      end
      L5_3 = L2_3.nectar
      L6_3 = A1_2
      if L6_3 ~= nil then
        L6_3 = A1_2
        L7_3 = L3_3
        L8_3 = L4_3
        L9_3 = L5_3
        L6_3(L7_3, L8_3, L9_3)
      end
    end
  end
  
  L4_2 = {}
  L4_2.name = A0_2
  L5_2 = L5_1
  L5_2 = L5_2.lang
  L4_2.lang = L5_2
  L5_2 = {}
  L5_2.body = L4_2
  L6_2 = log3
  L7_2 = "Sending profile setInfo Request to server"
  L6_2(L7_2)
  L6_2 = network
  L6_2 = L6_2.request
  L7_2 = L2_1
  L7_2 = L7_2.API_Path
  L8_2 = L2_1
  L8_2 = L8_2.API_PROFILE_SET_PLAYER_INFO
  L7_2 = L7_2 .. L8_2
  L8_2 = "POST"
  L9_2 = L3_2
  L10_2 = L5_2
  L11_2 = "setPlayerInfo.sendUserNameToServer"
  L12_2 = nil
  L13_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

sendUserNameToServer = L24_1

function L24_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = log3
    L2_3 = "We send the verification number successfully to the server"
    L1_3(L2_3)
    L1_3 = nil
    L2_3 = network
    L2_3 = L2_3.checkForErrors
    L3_3 = A0_3
    L4_3 = "setVerificationNumber"
    L5_3 = A2_2
    L2_3, L3_3 = L2_3(L3_3, L4_3, L5_3)
    if L2_3 then
      if L3_3 then
        L4_3 = L3_3.mobile_number_verified
        if L4_3 then
          L1_3 = L3_3.mobile_number_verified
        end
      end
      L4_3 = A1_2
      if L4_3 ~= nil then
        L4_3 = A1_2
        L5_3 = L1_3
        L4_3(L5_3)
      end
    end
  end
  
  L4_2 = {}
  L4_2.code = A0_2
  L5_2 = {}
  L5_2.body = L4_2
  L6_2 = network
  L6_2 = L6_2.request
  L7_2 = L2_1
  L7_2 = L7_2.API_Path
  L8_2 = L2_1
  L8_2 = L8_2.API_VERIFY_MOBILE_NUMBER
  L7_2 = L7_2 .. L8_2
  L8_2 = "POST"
  L9_2 = L3_2
  L10_2 = L5_2
  L11_2 = "setVerificationNumber"
  L12_2 = nil
  L13_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

sendVerificationCodeToServer = L24_1

function L24_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = log3
    L2_3 = "We send the mobile number successfully to the server"
    L1_3(L2_3)
    L1_3 = nil
    L2_3 = network
    L2_3 = L2_3.checkForErrors
    L3_3 = A0_3
    L4_3 = "setMobileNumber"
    L5_3 = A2_2
    L2_3, L3_3 = L2_3(L3_3, L4_3, L5_3)
    if L2_3 then
      L4_3 = L3_3.mobile_number
      if L4_3 then
        L1_3 = L3_3.mobile_number
      end
      L4_3 = A1_2
      if L4_3 ~= nil then
        L4_3 = A1_2
        L5_3 = L1_3
        L4_3(L5_3)
      end
    end
  end
  
  L4_2 = {}
  L4_2.mobile_number = A0_2
  L5_2 = {}
  L5_2.body = L4_2
  L6_2 = network
  L6_2 = L6_2.request
  L7_2 = L2_1
  L7_2 = L7_2.API_Path
  L8_2 = L2_1
  L8_2 = L8_2.API_SET_MOBILE_NUMBER
  L7_2 = L7_2 .. L8_2
  L8_2 = "POST"
  L9_2 = L3_2
  L10_2 = L5_2
  L11_2 = "setMobileNumber"
  L12_2 = nil
  L13_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

sendMobileNumberToServer = L24_1

function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "validateInviteToken, inviteKey must be provided"
  L4_2 = _NAME
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L8_1
  L1_2 = L1_2.logEvent
  L2_2 = "Invite Key Used"
  L1_2(L2_2)
  L1_2 = log3
  L2_2 = "Invite key used"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = loadPlayer
  L2_2 = nil
  L3_2 = nil
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end

validateInviteToken = L24_1

function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  if A0_2 then
    L2_2 = A0_2.type
    if L2_2 == 1 then
      L2_2 = {}
      L3_2 = require
      L4_2 = "Models.UserCard"
      L3_2 = L3_2(L4_2)
      L4_2 = pairs
      L5_2 = A0_2.cards
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L9_2 = L8_2.id
        L11_2 = L3_2
        L10_2 = L3_2.new
        L12_2 = L8_2
        L10_2 = L10_2(L11_2, L12_2)
        L2_2[L9_2] = L10_2
      end
      L1_2.cards = L2_2
    end
    L2_2 = A0_2.type
    L1_2.type = L2_2
    L2_2 = A0_2.card_pack_type
    L1_2.cardPackId = L2_2
    return L1_2
  else
    return A0_2
  end
end

function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = checkValidityAssert
  L4_2 = A0_2
  L5_2 = "captureUserEmail, email must be provided"
  L6_2 = _NAME
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L8_1
  L3_2 = L3_2.logEvent
  L4_2 = "insert email"
  L3_2(L4_2)
  L3_2 = log3
  L4_2 = "capture user email"
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "Capture Email"
    L4_3 = A2_2
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L2_3 = A1_2
      if L2_3 ~= nil then
        L2_3 = A1_2
        L2_3()
      end
    end
  end
  
  L4_2 = {}
  L5_2 = L2_1
  L5_2 = L5_2.Player_EmailKey
  L4_2[L5_2] = A0_2
  L5_2 = {}
  L5_2.body = L4_2
  L6_2 = network
  L6_2 = L6_2.request
  L7_2 = L2_1
  L7_2 = L7_2.API_Path
  L8_2 = L2_1
  L8_2 = L8_2.API_SetEmail
  L7_2 = L7_2 .. L8_2
  L8_2 = "POST"
  L9_2 = L3_2
  L10_2 = L5_2
  L11_2 = "capture user email"
  L12_2 = nil
  L13_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

captureUserEmail = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "parseGameLoadData, responseData must be provided otherwise mainPlayer will be set to nonsense values"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.achievements_blob
  if L1_2 ~= nil then
    L1_2 = log3
    L2_2 = "achievements :"
    L3_2 = L11_1
    L3_2 = L3_2.decode
    L4_2 = A0_2.achievements_blob
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L1_2 = L1_1
    L1_2 = L1_2.decode
    L2_2 = L11_1
    L2_2 = L2_2.decode
    L3_2 = A0_2.achievements_blob
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L2_2(L3_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L2_2 = restoreMode
    if L2_2 == true then
      L2_2 = L10_1
      L2_2 = L2_2.setAchievementsText
      L3_2 = L11_1
      L3_2 = L3_2.decode
      L4_2 = A0_2.achievements_blob
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L3_2(L4_2)
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    else
      L2_2 = L1_2.version
      if L2_2 then
        L2_2 = L1_2.updateTime
        if L2_2 then
          L2_2 = mainPlayer
          L2_2 = L2_2.settings
          L2_2 = L2_2.achievementsVersion
          if L2_2 then
            L2_2 = L1_2.version
            L3_2 = mainPlayer
            L3_2 = L3_2.settings
            L3_2 = L3_2.achievementsVersion
          end
          if L2_2 >= L3_2 then
            L2_2 = L10_1
            L2_2 = L2_2.setAchievementsText
            L3_2 = L11_1
            L3_2 = L3_2.decode
            L4_2 = A0_2.achievements_blob
            L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L3_2(L4_2)
            L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
          end
      end
      else
        L1_2.version = 0
        L2_2 = os
        L2_2 = L2_2.time
        L2_2 = L2_2()
        L1_2.updateTime = L2_2
        L2_2 = L10_1
        L2_2 = L2_2.setAchievementsText
        L3_2 = L1_1
        L3_2 = L3_2.encode
        L4_2 = L1_2
        L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L3_2(L4_2)
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L2_2 = L10_1
        L2_2 = L2_2.registerAchievementsWithId
        L2_2()
      end
    end
  else
    L1_2 = {}
    achievementsTable = L1_2
    L1_2 = achievementsTable
    L1_2.version = 0
    L1_2 = achievementsTable
    L2_2 = os
    L2_2 = L2_2.time
    L2_2 = L2_2()
    L1_2.updateTime = L2_2
    L1_2 = L10_1
    L1_2 = L1_2.setAchievementsText
    L2_2 = L1_1
    L2_2 = L2_2.encode
    L3_2 = achievementsTable
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L2_2(L3_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L1_2 = L10_1
    L1_2 = L1_2.registerAchievementsWithId
    L1_2()
  end
  L1_2 = L10_1
  L1_2 = L1_2.loadAchievements
  L1_2()
  L1_2 = mainPlayer
  L2_2 = A0_2.potion_number
  L1_2.potionAmount = L2_2
  L1_2 = mainPlayer
  L2_2 = A0_2.potion_price
  L1_2.potionPrice = L2_2
  L1_2 = mainPlayer
  L2_2 = A0_2.nectar_price
  L1_2.nectarPrice = L2_2
  L1_2 = mainPlayer
  L2_2 = A0_2.new_messages
  L1_2.newMessageNumber = L2_2
  L1_2 = mainPlayer
  L2_2 = A0_2.id
  L1_2.id = L2_2
  L1_2 = mainPlayer
  L2_2 = A0_2.name
  L1_2.name = L2_2
  L1_2 = mainPlayer
  L2_2 = A0_2.rank
  L1_2.rank = L2_2
  L1_2 = mainPlayer
  L2_2 = A0_2.xp
  L1_2.xp = L2_2
  L1_2 = mainPlayer
  L2_2 = A0_2.level
  L1_2.level = L2_2
  L1_2 = mainPlayer
  L2_2 = A0_2.def_power
  L1_2.power = L2_2
  L1_2 = mainPlayer
  L2_2 = A0_2.gold
  L1_2.gold = L2_2
  L1_2 = mainPlayer
  L2_2 = A0_2.nectar
  L1_2.nectar = L2_2
  L1_2 = mainPlayer
  L2_2 = A0_2.cards_view
  L1_2.numberOfviewCards = L2_2
  L1_2 = mainPlayer
  L2_2 = A0_2.tribe_permission
  L1_2.positionInTribe = L2_2
  L1_2 = mainPlayer
  L2_2 = A0_2.restore_key
  L1_2.restoreKey = L2_2
  L1_2 = mainPlayer
  L2_2 = A0_2.emergency_message
  L1_2.emergencyMessage = L2_2
  L1_2 = mainPlayer
  L2_2 = A0_2.latest_app_version
  L1_2.latestAppVersion = L2_2
  L1_2 = mainPlayer
  L2_2 = A0_2.updated_at
  L1_2.updatedAt = L2_2
  L1_2 = mainPlayer
  L2_2 = A0_2.last_load_at
  L1_2.lastLoadAt = L2_2
  L1_2 = log3
  L2_2 = "ab_tests"
  L3_2 = A0_2.ab_tests
  L3_2 = L3_2.new_shop_test
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.ab_tests
  if L1_2 then
    L1_2 = mainPlayer
    L2_2 = A0_2.ab_tests
    L1_2.abTests = L2_2
  end
  L1_2 = {}
  L2_2 = "a"
  L3_2 = "b"
  L4_2 = "c"
  L5_2 = "d"
  L6_2 = "e"
  L7_2 = "f"
  L8_2 = "g"
  L9_2 = "h"
  L10_2 = "i"
  L11_2 = "j"
  L12_2 = "k"
  L13_2 = "l"
  L14_2 = "m"
  L15_2 = "n"
  L16_2 = "o"
  L17_2 = "p"
  L18_2 = "q"
  L19_2 = "r"
  L20_2 = "s"
  L21_2 = "t"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  L1_2[9] = L10_2
  L1_2[10] = L11_2
  L1_2[11] = L12_2
  L1_2[12] = L13_2
  L1_2[13] = L14_2
  L1_2[14] = L15_2
  L1_2[15] = L16_2
  L1_2[16] = L17_2
  L1_2[17] = L18_2
  L1_2[18] = L19_2
  L1_2[19] = L20_2
  L1_2[20] = L21_2
  L2_2 = isAndroid
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = log3
    L3_2 = "android gameanalytics init"
    L2_2(L3_2)
    L2_2 = L22_1
    L2_2 = L2_2.setEnabledInfoLog
    L3_2 = true
    L2_2(L3_2)
    L2_2 = L22_1
    L2_2 = L2_2.setEnabledVerboseLog
    L3_2 = true
    L2_2(L3_2)
    L2_2 = L22_1
    L2_2 = L2_2.configureAvailableCustomDimensions01
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = L22_1
    L2_2 = L2_2.configureAvailableCustomDimensions02
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = L22_1
    L2_2 = L2_2.configureAvailableCustomDimensions03
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = L22_1
    L2_2 = L2_2.initialize
    L3_2 = {}
    L3_2.gameKey = "8244dc7af9e1173496d5bd428eb97e4e"
    L3_2.gameSecret = "9500dd7ab891b24f1ac68da1a139ae53be0e38c8"
    L2_2(L3_2)
    L2_2 = mainPlayer
    L2_2 = L2_2.abTests
    if L2_2 then
      L2_2 = mainPlayer
      L2_2 = L2_2.abTests
      L2_2 = L2_2.new_shop_test
      if L2_2 ~= nil then
        L2_2 = log3
        L3_2 = "android gameanalytics setCustomDimension01"
        L4_2 = mainPlayer
        L4_2 = L4_2.abTests
        L4_2 = L4_2.new_shop_test
        L2_2(L3_2, L4_2)
        L2_2 = L22_1
        L2_2 = L2_2.setCustomDimension01
        L3_2 = mainPlayer
        L3_2 = L3_2.abTests
        L3_2 = L3_2.new_shop_test
        L2_2(L3_2)
      end
    end
    L2_2 = log3
    L3_2 = "android gameanalytics init done"
    L2_2(L3_2)
    L2_2 = log3
    L3_2 = "android tenjin init"
    L2_2(L3_2)
    L2_2 = todNative
    L2_2 = L2_2.tenjingSDK
    L3_2 = {}
    L3_2.operation = "init"
    L3_2.apiKey = "H6UQQ7Z26SWEKBBEK3S21LEKMQT74BYW"
    L2_2(L3_2)
    L2_2 = log3
    L3_2 = "android tenjin init done"
    L2_2(L3_2)
    L2_2 = log3
    L3_2 = "android appmetrica init"
    L2_2(L3_2)
    L2_2 = todNative
    L2_2 = L2_2.appMetricaSDK
    L3_2 = {}
    L3_2.operation = "Init"
    L3_2.apiKey = "e7c0080e-9934-4905-9cc0-eacb82adaf74"
    L2_2(L3_2)
    L2_2 = log3
    L3_2 = "android firebase init"
    L2_2(L3_2)
    L2_2 = todNative
    L2_2 = L2_2.firebaseSDK
    L3_2 = {}
    L3_2.operation = "Init"
    L3_2.analyticsCollectionEnabled = true
    L3_2.crashlyticsCollectionEnabled = true
    L3_2.messagingAutoInit = true
    L2_2(L3_2)
    L2_2 = todNative
    L2_2 = L2_2.firebaseSDK
    L3_2 = {}
    L3_2.operation = "GetToken"
    L2_2 = L2_2(L3_2)
    L3_2 = log3
    L4_2 = "android firebase token"
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L2_2 = isIOS
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = log3
      L3_2 = "ios gameanalytics init"
      L2_2(L3_2)
      L2_2 = L22_1
      L2_2 = L2_2.setEnabledInfoLog
      L3_2 = true
      L2_2(L3_2)
      L2_2 = L22_1
      L2_2 = L2_2.setEnabledVerboseLog
      L3_2 = true
      L2_2(L3_2)
      L2_2 = L22_1
      L2_2 = L2_2.configureAvailableCustomDimensions01
      L3_2 = L1_2
      L2_2(L3_2)
      L2_2 = L22_1
      L2_2 = L2_2.configureAvailableCustomDimensions02
      L3_2 = L1_2
      L2_2(L3_2)
      L2_2 = L22_1
      L2_2 = L2_2.configureAvailableCustomDimensions03
      L3_2 = L1_2
      L2_2(L3_2)
      L2_2 = L22_1
      L2_2 = L2_2.initialize
      L3_2 = {}
      L3_2.gameKey = "5245aaf8873b587002e5539dc44e3be7"
      L4_2 = L2_1
      L4_2 = L4_2.GameAnalytics_iOS_SecretKey
      L3_2.gameSecret = L4_2
      L2_2(L3_2)
      L2_2 = mainPlayer
      L2_2 = L2_2.abTests
      if L2_2 then
        L2_2 = mainPlayer
        L2_2 = L2_2.abTests
        L2_2 = L2_2.new_shop_test
        if L2_2 ~= nil then
          L2_2 = L22_1
          L2_2 = L2_2.setCustomDimension01
          L3_2 = mainPlayer
          L3_2 = L3_2.abTests
          L3_2 = L3_2.new_shop_test
          L2_2(L3_2)
        end
      end
      L2_2 = log3
      L3_2 = "ios gameanalytics init done"
      L2_2(L3_2)
      L2_2 = log3
      L3_2 = "ios tenjin init"
      L2_2(L3_2)
      L2_2 = todNative
      L2_2 = L2_2.tenjingSDK
      L3_2 = {}
      L3_2.operation = "init"
      L3_2.apiKey = "UMFF4GFUU5XJYPPZ5PAEFVWQHNNVWUN7"
      L2_2(L3_2)
      L2_2 = log3
      L3_2 = "ios tenjin init done"
      L2_2(L3_2)
      L2_2 = log3
      L3_2 = "ios appmetrica init"
      L2_2(L3_2)
      L2_2 = todNative
      L2_2 = L2_2.appMetricaSDK
      L3_2 = {}
      L3_2.operation = "Init"
      L3_2.apiKey = "e2543662-3387-47bd-abf0-53e36ba81685"
      L2_2(L3_2)
      L2_2 = log3
      L3_2 = "ios firebase init"
      L2_2(L3_2)
      L2_2 = todNative
      L2_2 = L2_2.firebaseSDK
      L3_2 = {}
      L3_2.operation = "Init"
      L3_2.analyticsCollectionEnabled = true
      L3_2.crashlyticsCollectionEnabled = true
      L3_2.messagingAutoInit = true
      L2_2(L3_2)
      L2_2 = todNative
      L2_2 = L2_2.firebaseSDK
      L3_2 = {}
      L3_2.operation = "GetToken"
      L2_2 = L2_2(L3_2)
      L3_2 = log3
      L4_2 = "ios firebase token"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
  L2_2 = mainPlayer
  L3_2 = mainPlayer
  L3_2 = L3_2.gold
  L2_2.previousGoldAmount = L3_2
  L2_2 = mainPlayer
  L3_2 = L2_2
  L2_2 = L2_2.setSettingForKey
  L4_2 = "restoreKey"
  L5_2 = mainPlayer
  L5_2 = L5_2.restoreKey
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = mainPlayer
  L3_2 = L2_2
  L2_2 = L2_2.saveSettings
  L2_2(L3_2)
  L2_2 = A0_2.retouched_tutorial
  if L2_2 then
    L2_2 = mainPlayer
    L3_2 = L2_2
    L2_2 = L2_2.setSettingForKey
    L4_2 = "newTutorial"
    L5_2 = A0_2.retouched_tutorial
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = mainPlayer
    L3_2 = L2_2
    L2_2 = L2_2.saveSettings
    L2_2(L3_2)
  end
  L2_2 = require
  L3_2 = "Tutorial.TutorialManager2"
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.updateTutorialIndexAndId
  L4_2 = A0_2.tutorial_id
  L5_2 = A0_2.tutorial_index
  L3_2(L4_2, L5_2)
  L3_2 = mainPlayer
  L4_2 = A0_2.is_existing_player
  L3_2.isExistingPlayer = L4_2
  L3_2 = mainPlayer
  L4_2 = A0_2.is_name_temp
  L3_2.isNameTemp = L4_2
  L3_2 = A0_2.gateway
  if L3_2 then
    L3_2 = A0_2.gateway
    if L3_2 == "web" then
      L3_2 = SKComponent
      L3_2.storeType = "parsian"
    end
  end
  L3_2 = A0_2.weekly_score
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = A0_2.weekly_score
    L3_2.weeklyScore = L4_2
  end
  L3_2 = A0_2.league_remaining_time
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = A0_2.league_remaining_time
    L3_2.leagueRemainingTime = L4_2
  end
  L3_2 = A0_2.bonus_remaining_time
  if L3_2 then
    L3_2 = A0_2.bonus_remaining_time
    if 0 < L3_2 then
      L3_2 = mainPlayer
      L4_2 = A0_2.bonus_remaining_time
      L5_2 = mainPlayer
      L5_2 = L5_2.timeDelta
      L4_2 = L4_2 + L5_2
      L3_2.bonusRemainingTime = L4_2
    else
      L3_2 = mainPlayer
      L3_2.bonusRemainingTime = nil
    end
  end
  L3_2 = A0_2.has_email
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = L3_2
    L3_2 = L3_2.setSettingForKey
    L5_2 = "hasEmail"
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = mainPlayer
    L4_2 = L3_2
    L3_2 = L3_2.saveSettings
    L3_2(L4_2)
  else
    L3_2 = mainPlayer
    L4_2 = L3_2
    L3_2 = L3_2.setSettingForKey
    L5_2 = "hasEmail"
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = mainPlayer
    L4_2 = L3_2
    L3_2 = L3_2.saveSettings
    L3_2(L4_2)
  end
  L3_2 = mainPlayer
  L3_2 = L3_2.lastGoldCollectAt
  if L3_2 == nil then
    L3_2 = mainPlayer
    L4_2 = A0_2.last_gold_collect_at
    L3_2.lastGoldCollectAt = L4_2
  end
  L3_2 = mainPlayer
  L4_2 = {}
  L3_2.cards = L4_2
  L3_2 = mainPlayer
  L4_2 = A0_2.cards
  L4_2 = #L4_2
  L3_2.loadedCardCount = L4_2
  L3_2 = pairs
  L4_2 = A0_2.cards
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = mainPlayer
    L8_2 = L8_2.cards
    L9_2 = L7_2.id
    L10_2 = L3_1
    L11_2 = L10_2
    L10_2 = L10_2.new
    L12_2 = L7_2
    L10_2 = L10_2(L11_2, L12_2)
    L8_2[L9_2] = L10_2
  end
  L3_2 = L3_1
  L3_2 = L3_2.updateCooldownForAllCards
  L3_2()
  L3_2 = A0_2.base_hero_id
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = A0_2.base_hero_id
    L3_2.activeHeroID = L4_2
  end
  L3_2 = A0_2.hero_id_set
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = {}
    L3_2.heroSet = L4_2
    L3_2 = pairs
    L4_2 = A0_2.hero_id_set
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = mainPlayer
      L8_2 = L8_2.heroSet
      L9_2 = L7_2.base_card_id
      L10_2 = {}
      L8_2[L9_2] = L10_2
      L8_2 = mainPlayer
      L8_2 = L8_2.heroSet
      L9_2 = L7_2.base_card_id
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2.base_card_id
      L8_2.id = L9_2
      L8_2 = mainPlayer
      L8_2 = L8_2.heroSet
      L9_2 = L7_2.base_card_id
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2.items
      L8_2.items = L9_2
      L8_2 = mainPlayer
      L8_2 = L8_2.heroSet
      L9_2 = L7_2.base_card_id
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2.id
      L8_2.cardId = L9_2
      L8_2 = mainPlayer
      L8_2 = L8_2.heroSet
      L9_2 = L7_2.base_card_id
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2.potion
      L8_2.potion = L9_2
    end
  end
  L3_2 = A0_2.total_quests
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = A0_2.total_quests
    L3_2.totalQuests = L4_2
  else
    L3_2 = mainPlayer
    L3_2.totalQuests = 1
  end
  L3_2 = A0_2.q
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = A0_2.q
    L3_2.q = L4_2
  else
    L3_2 = mainPlayer
    L3_2.q = 0
  end
  L3_2 = A0_2.won_battle_num
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = A0_2.won_battle_num
    L3_2.wonBattleNum = L4_2
  end
  L3_2 = A0_2.prev_league_id
  if L3_2 then
    L3_2 = A0_2.prev_league_id
    if L3_2 ~= 0 then
      L3_2 = mainPlayer
      L4_2 = A0_2.prev_league_id
      L3_2.preLeagueID = L4_2
    end
  end
  L3_2 = A0_2.prev_league_rank
  if L3_2 then
    L3_2 = A0_2.prev_league_rank
    if L3_2 ~= 0 then
      L3_2 = mainPlayer
      L4_2 = A0_2.prev_league_rank
      L3_2.preLeagueRank = L4_2
    end
  end
  L3_2 = A0_2.mood_id
  if L3_2 then
    L3_2 = A0_2.mood_id
    if L3_2 ~= 0 then
      L3_2 = mainPlayer
      L4_2 = L13_1
      L5_2 = A0_2.mood_id
      L4_2 = L4_2[L5_2]
      L3_2.mood = L4_2
    else
      L3_2 = errorLog
      L4_2 = "mood_id == 0"
      L3_2(L4_2)
    end
  end
  L3_2 = A0_2.avatar_id
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = L12_1
    L4_2 = L4_2.getAvatarByID
    L5_2 = A0_2.avatar_id
    L4_2 = L4_2(L5_2)
    L3_2.avatar = L4_2
  else
    L3_2 = errorLog
    L4_2 = "server didnt send avatar id for player"
    L3_2(L4_2)
  end
  L3_2 = A0_2.birth_year
  if L3_2 then
    L3_2 = A0_2.birth_year
    if L3_2 ~= 0 then
      L3_2 = mainPlayer
      L4_2 = A0_2.birth_year
      L3_2.birthYear = L4_2
    else
      L3_2 = errorLog
      L4_2 = "birth_year == 0"
      L3_2(L4_2)
    end
  end
  L3_2 = A0_2.gender
  if L3_2 then
    L3_2 = A0_2.gender
    if L3_2 == 0 then
      L3_2 = errorLog
      L4_2 = "gender == 0"
      L3_2(L4_2)
    end
    L3_2 = mainPlayer
    L4_2 = L14_1
    L5_2 = A0_2.gender
    L4_2 = L4_2[L5_2]
    L3_2.gender = L4_2
  end
  L3_2 = A0_2.medals
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = L15_1
    L4_2 = L4_2.readMedals
    L5_2 = A0_2.medals
    L4_2 = L4_2(L5_2)
    L3_2.medals = L4_2
  end
  L3_2 = A0_2.phone
  if L3_2 then
    L3_2 = A0_2.phone
    if L3_2 ~= 0 then
      L3_2 = mainPlayer
      L4_2 = A0_2.phone
      L3_2.phone = L4_2
    else
      L3_2 = errorLog
      L4_2 = "phone == 0"
      L3_2(L4_2)
    end
  end
  L3_2 = A0_2.address
  if L3_2 then
    L3_2 = type
    L4_2 = A0_2.address
    L3_2 = L3_2(L4_2)
    if L3_2 == "string" then
      L3_2 = mainPlayer
      L4_2 = A0_2.address
      L3_2.address = L4_2
    else
      L3_2 = errorLog
      L4_2 = "address ~= string"
      L3_2(L4_2)
    end
  end
  L3_2 = A0_2.realname
  if L3_2 then
    L3_2 = type
    L4_2 = A0_2.realname
    L3_2 = L3_2(L4_2)
    if L3_2 == "string" then
      L3_2 = mainPlayer
      L4_2 = A0_2.realname
      L3_2.realName = L4_2
    else
      L3_2 = errorLog
      L4_2 = "realName ~= string"
      L3_2(L4_2)
    end
  end
  L3_2 = A0_2.lost_battle_num
  if L3_2 then
    L3_2 = type
    L4_2 = A0_2.lost_battle_num
    L3_2 = L3_2(L4_2)
    if L3_2 == "number" then
      L3_2 = mainPlayer
      L4_2 = A0_2.lost_battle_num
      L3_2.lostBattleNum = L4_2
    else
      L3_2 = errorLog
      L4_2 = "lost_battle_num ~= number"
      L3_2(L4_2)
    end
  end
  L3_2 = A0_2.avatars
  if L3_2 then
    L3_2 = L15_1
    L3_2 = L3_2.processAvatarsTable
    L4_2 = A0_2.avatars
    L3_2(L4_2)
  end
  L3_2 = A0_2.avatar_slots
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = tonumber
    L5_2 = A0_2.avatar_slots
    L4_2 = L4_2(L5_2)
    L3_2.avatarnumFreeSlots = L4_2
  else
    L3_2 = mainPlayer
    L3_2.avatarnumFreeSlots = 0
  end
  L3_2 = A0_2.owned_avatars
  if L3_2 then
    L3_2 = pairs
    L4_2 = A0_2.owned_avatars
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L12_1
      L8_2 = L8_2.getAvatarByID
      L9_2 = L7_2
      L8_2(L9_2)
      L8_2 = L12_1
      L8_2 = L8_2.avatars
      L8_2 = L8_2[L7_2]
      L8_2.isAvailable = true
    end
  end
  L3_2 = A0_2.gold_building_level
  if 0 < L3_2 then
    L3_2 = mainPlayer
    L4_2 = L4_1
    L5_2 = L4_2
    L4_2 = L4_2.new
    L6_2 = {}
    L6_2.id = 1
    L7_2 = L5_1
    L7_2 = L7_2["Gold Building"]
    L6_2.name = L7_2
    L7_2 = L5_1
    L7_2 = L7_2["gold description"]
    L6_2.description = L7_2
    L6_2.maxLevel = 4
    L7_2 = L2_1
    L7_2 = L7_2.Path_MissingImage
    L6_2.image = L7_2
    L6_2.buildingType = "gold"
    L4_2 = L4_2(L5_2, L6_2)
    L3_2.goldBuilding = L4_2
    L3_2 = mainPlayer
    L3_2 = L3_2.goldBuilding
    L4_2 = A0_2.gold_building_level
    L3_2.level = L4_2
    L3_2 = mainPlayer
    L3_2 = L3_2.goldBuilding
    L4_2 = {}
    L3_2.assignedCards = L4_2
    L3_2 = A0_2.gold_building_assigned_cards
    if L3_2 then
      L3_2 = pairs
      L4_2 = A0_2.gold_building_assigned_cards
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = mainPlayer
        L8_2 = L8_2.goldBuilding
        L8_2 = L8_2.assignedCards
        L9_2 = L7_2.id
        L10_2 = mainPlayer
        L10_2 = L10_2.cards
        L11_2 = L7_2.id
        L10_2 = L10_2[L11_2]
        L8_2[L9_2] = L10_2
        L8_2 = mainPlayer
        L8_2 = L8_2.goldBuilding
        L8_2 = L8_2.assignedCards
        L9_2 = L7_2.id
        L8_2 = L8_2[L9_2]
        L8_2.cardUsedForBuilding = true
        L8_2 = mainPlayer
        L8_2 = L8_2.cards
        L9_2 = L7_2.id
        L8_2 = L8_2[L9_2]
        L8_2.cardUsedForBuilding = true
      end
    end
  end
  L3_2 = A0_2.bank_building_level
  if 0 < L3_2 then
    L3_2 = mainPlayer
    L4_2 = L4_1
    L5_2 = L4_2
    L4_2 = L4_2.new
    L6_2 = {}
    L7_2 = L5_1
    L7_2 = L7_2["Bank Building"]
    L6_2.name = L7_2
    L7_2 = L5_1
    L7_2 = L7_2["bank description"]
    L6_2.description = L7_2
    L6_2.maxLevel = 7
    L7_2 = L2_1
    L7_2 = L7_2.Path_MissingImage
    L6_2.image = L7_2
    L6_2.buildingType = "bank"
    L4_2 = L4_2(L5_2, L6_2)
    L3_2.bankBuilding = L4_2
    L3_2 = mainPlayer
    L3_2 = L3_2.bankBuilding
    L4_2 = A0_2.bank_building_level
    L3_2.level = L4_2
    L3_2 = mainPlayer
    L3_2 = L3_2.bankBuilding
    L3_2.gold = 0
    L3_2 = A0_2.bank_account_balance
    if 0 < L3_2 then
      L3_2 = mainPlayer
      L3_2 = L3_2.bankBuilding
      L4_2 = A0_2.bank_account_balance
      L3_2.gold = L4_2
    end
  end
  L3_2 = A0_2.market_building_assigned_cards
  if L3_2 then
    L3_2 = pairs
    L4_2 = A0_2.market_building_assigned_cards
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = mainPlayer
      L8_2 = L8_2.cards
      L9_2 = L7_2.id
      L8_2 = L8_2[L9_2]
      L8_2.cardUsedForBuilding = true
    end
  end
  L3_2 = A0_2.auction_building_assigned_cards
  if L3_2 then
    L3_2 = pairs
    L4_2 = A0_2.auction_building_assigned_cards
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = mainPlayer
      L8_2 = L8_2.cards
      L9_2 = L7_2.id
      L8_2 = L8_2[L9_2]
      L8_2.cardUsedForBuilding = true
    end
  end
  L3_2 = mainPlayer
  L4_2 = A0_2.has_messages
  L3_2.hasMessages = L4_2
  L3_2 = mainPlayer
  L4_2 = A0_2.cooldowns_bought_today
  L3_2.cooldownsBoughtToday = L4_2
  L3_2 = mainPlayer
  L4_2 = A0_2.update_message
  L3_2.updateMessage = L4_2
  L3_2 = A0_2.latest_app_version_for_notice
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = A0_2.latest_app_version_for_notice
    L3_2.latestAppVersionForNotice = L4_2
  end
  L3_2 = mainPlayer
  L4_2 = {}
  L3_2.collection = L4_2
  L3_2 = A0_2.collection
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = A0_2.collection
    L3_2.collection = L4_2
  end
  L3_2 = A0_2.league_rank
  if L3_2 ~= nil then
    L3_2 = mainPlayer
    L4_2 = A0_2.league_rank
    L3_2.leagueRank = L4_2
  end
  L3_2 = A0_2.league_id
  if L3_2 ~= nil then
    L3_2 = mainPlayer
    L4_2 = A0_2.league_id
    L3_2.leagueId = L4_2
  end
  L3_2 = mainPlayer
  L4_2 = {}
  L3_2.achievements = L4_2
  L3_2 = A0_2.achievements
  if L3_2 then
    L3_2 = pairs
    L4_2 = L16_1
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L7_2.recieved = false
    end
    L3_2 = ipairs
    L4_2 = A0_2.achievements
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L16_1
      L9_2 = L7_2.achievement_id
      L8_2 = L8_2[L9_2]
      if L8_2 ~= nil then
        L8_2 = L16_1
        L9_2 = L7_2.achievement_id
        L8_2 = L8_2[L9_2]
        L8_2.recieved = true
        L8_2 = mainPlayer
        L8_2 = L8_2.achievements
        L9_2 = L7_2.achievement_id
        L10_2 = L16_1
        L11_2 = L7_2.achievement_id
        L10_2 = L10_2[L11_2]
        L8_2[L9_2] = L10_2
      end
    end
  end
  L3_2 = A0_2.tribe
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = L6_1
    L5_2 = L4_2
    L4_2 = L4_2.new
    L4_2 = L4_2(L5_2)
    L3_2.tribe = L4_2
    L3_2 = mainPlayer
    L3_2 = L3_2.tribe
    L4_2 = A0_2.tribe
    L4_2 = L4_2.id
    L3_2.id = L4_2
    L3_2 = mainPlayer
    L3_2 = L3_2.tribe
    L4_2 = A0_2.tribe
    L4_2 = L4_2.name
    L3_2.name = L4_2
    L3_2 = mainPlayer
    L3_2 = L3_2.tribe
    L4_2 = tonumber
    L5_2 = A0_2.tribe
    L5_2 = L5_2.status
    L4_2 = L4_2(L5_2)
    L3_2.status = L4_2
    L3_2 = mainPlayer
    L3_2 = L3_2.tribe
    L4_2 = A0_2.tribe
    L4_2 = L4_2.description
    L3_2.description = L4_2
    L3_2 = mainPlayer
    L3_2 = L3_2.tribe
    L4_2 = A0_2.tribe
    L4_2 = L4_2.gold
    L3_2.gold = L4_2
    L3_2 = mainPlayer
    L3_2 = L3_2.tribe
    L4_2 = A0_2.tribe
    L4_2 = L4_2.rank
    L3_2.rank = L4_2
    L3_2 = mainPlayer
    L3_2 = L3_2.tribe
    L4_2 = A0_2.tribe
    L4_2 = L4_2.donates_number
    L3_2.donatesNumber = L4_2
    L3_2 = mainPlayer
    L3_2 = L3_2.tribe
    L4_2 = A0_2.tribe
    L5_2 = "member_count"
    L4_2 = L4_2[L5_2]
    L3_2.memberCount = L4_2
    L3_2 = mainPlayer
    L3_2 = L3_2.tribe
    L4_2 = "buildings"
    L5_2 = {}
    L3_2[L4_2] = L5_2
    L3_2 = L4_1
    L4_2 = L3_2
    L3_2 = L3_2.new
    L5_2 = {}
    L6_2 = A0_2.tribe
    L7_2 = "defense_building_level"
    L6_2 = L6_2[L7_2]
    L5_2.level = L6_2
    L6_2 = L5_1
    L7_2 = "defence building"
    L6_2 = L6_2[L7_2]
    L5_2.name = L6_2
    L6_2 = L5_1
    L7_2 = "defence description"
    L6_2 = L6_2[L7_2]
    L5_2.description = L6_2
    L6_2 = 10
    L5_2.maxLevel = L6_2
    L6_2 = "maxCards"
    L7_2 = 4
    L5_2[L6_2] = L7_2
    L6_2 = L2_1
    L7_2 = "Resource_DeffenceBuildingImage"
    L6_2 = L6_2[L7_2]
    L5_2.image = L6_2
    L6_2 = "defensive"
    L5_2.buildingType = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    newBuilding = L3_2
    L3_2 = newBuilding
    L4_2 = {}
    L3_2.assignedCards = L4_2
    L3_2 = "defense_building_assigned_cards"
    L3_2 = A0_2[L3_2]
    if L3_2 then
      L3_2 = pairs
      L4_2 = "defense_building_assigned_cards"
      L4_2 = A0_2[L4_2]
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = newBuilding
        L8_2 = L8_2.assignedCards
        L9_2 = L7_2.id
        L10_2 = mainPlayer
        L10_2 = L10_2.cards
        L11_2 = L7_2.id
        L10_2 = L10_2[L11_2]
        L8_2[L9_2] = L10_2
        L8_2 = newBuilding
        L8_2 = L8_2.assignedCards
        L9_2 = L7_2.id
        L8_2 = L8_2[L9_2]
        L9_2 = true
        L8_2.cardUsedForBuilding = L9_2
        L8_2 = mainPlayer
        L8_2 = L8_2.cards
        L9_2 = L7_2.id
        L8_2 = L8_2[L9_2]
        L9_2 = true
        L8_2.cardUsedForBuilding = L9_2
      end
    end
    L3_2 = mainPlayer
    L3_2 = L3_2.tribe
    L4_2 = "buildings"
    L3_2 = L3_2[L4_2]
    L4_2 = "defense"
    L5_2 = newBuilding
    L3_2[L4_2] = L5_2
    L3_2 = L4_1
    L4_2 = L3_2
    L3_2 = L3_2.new
    L5_2 = {}
    L6_2 = A0_2.tribe
    L7_2 = "offense_building_level"
    L6_2 = L6_2[L7_2]
    L5_2.level = L6_2
    L6_2 = L5_1
    L7_2 = "attack building"
    L6_2 = L6_2[L7_2]
    L5_2.name = L6_2
    L6_2 = L5_1
    L7_2 = "attack description"
    L6_2 = L6_2[L7_2]
    L5_2.description = L6_2
    L6_2 = 10
    L5_2.maxLevel = L6_2
    L6_2 = "maxCards"
    L7_2 = 4
    L5_2[L6_2] = L7_2
    L6_2 = L2_1
    L7_2 = "Resource_DeffenceBuildingImage"
    L6_2 = L6_2[L7_2]
    L5_2.image = L6_2
    L6_2 = "offensive"
    L5_2.buildingType = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    newBuilding = L3_2
    L3_2 = newBuilding
    L4_2 = {}
    L3_2.assignedCards = L4_2
    L3_2 = "offense_building_assigned_cards"
    L3_2 = A0_2[L3_2]
    if L3_2 then
      L3_2 = pairs
      L4_2 = "offense_building_assigned_cards"
      L4_2 = A0_2[L4_2]
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = newBuilding
        L8_2 = L8_2.assignedCards
        L9_2 = L7_2.id
        L10_2 = mainPlayer
        L10_2 = L10_2.cards
        L11_2 = L7_2.id
        L10_2 = L10_2[L11_2]
        L8_2[L9_2] = L10_2
        L8_2 = newBuilding
        L8_2 = L8_2.assignedCards
        L9_2 = L7_2.id
        L8_2 = L8_2[L9_2]
        L9_2 = true
        L8_2.cardUsedForBuilding = L9_2
        L8_2 = mainPlayer
        L8_2 = L8_2.cards
        L9_2 = L7_2.id
        L8_2 = L8_2[L9_2]
        L9_2 = true
        L8_2.cardUsedForBuilding = L9_2
      end
    end
    L3_2 = mainPlayer
    L3_2 = L3_2.tribe
    L4_2 = "buildings"
    L3_2 = L3_2[L4_2]
    L4_2 = "offense"
    L5_2 = newBuilding
    L3_2[L4_2] = L5_2
    L3_2 = L4_1
    L4_2 = L3_2
    L3_2 = L3_2.new
    L5_2 = {}
    L6_2 = A0_2.tribe
    L7_2 = "cooldown_building_level"
    L6_2 = L6_2[L7_2]
    L5_2.level = L6_2
    L6_2 = L5_1
    L7_2 = "cooldown building"
    L6_2 = L6_2[L7_2]
    L5_2.name = L6_2
    L6_2 = L5_1
    L7_2 = "cooldown description"
    L6_2 = L6_2[L7_2]
    L5_2.description = L6_2
    L6_2 = 10
    L5_2.maxLevel = L6_2
    L6_2 = "maxCards"
    L7_2 = 4
    L5_2[L6_2] = L7_2
    L6_2 = L2_1
    L7_2 = "Resource_DeffenceBuildingImage"
    L6_2 = L6_2[L7_2]
    L5_2.image = L6_2
    L6_2 = "cooldown"
    L5_2.buildingType = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    newBuilding = L3_2
    L3_2 = mainPlayer
    L3_2 = L3_2.tribe
    L4_2 = "buildings"
    L3_2 = L3_2[L4_2]
    L4_2 = "cooldown"
    L5_2 = newBuilding
    L3_2[L4_2] = L5_2
    L3_2 = L4_1
    L4_2 = L3_2
    L3_2 = L3_2.new
    L5_2 = {}
    L6_2 = A0_2.tribe
    L7_2 = "mainhall_building_level"
    L6_2 = L6_2[L7_2]
    L5_2.level = L6_2
    L6_2 = L5_1
    L7_2 = "mainhall building"
    L6_2 = L6_2[L7_2]
    L5_2.name = L6_2
    L6_2 = L5_1
    L7_2 = "mainhall description"
    L6_2 = L6_2[L7_2]
    L5_2.description = L6_2
    L6_2 = 10
    L5_2.maxLevel = L6_2
    L6_2 = "maxCards"
    L7_2 = 4
    L5_2[L6_2] = L7_2
    L6_2 = L2_1
    L7_2 = "Resource_DeffenceBuildingImage"
    L6_2 = L6_2[L7_2]
    L5_2.image = L6_2
    L6_2 = "mainhall"
    L5_2.buildingType = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    newBuilding = L3_2
    L3_2 = mainPlayer
    L3_2 = L3_2.tribe
    L4_2 = "buildings"
    L3_2 = L3_2[L4_2]
    L4_2 = "mainhall"
    L5_2 = newBuilding
    L3_2[L4_2] = L5_2
    L3_2 = A0_2.tribe
    L3_2 = L3_2.id
    L4_2 = 0
    if L3_2 <= L4_2 then
      L3_2 = mainPlayer
      L4_2 = "firstChatId"
      L5_2 = A0_2.tribe
      L5_2 = L5_2.id
      L3_2[L4_2] = L5_2
    end
  end
  L3_2 = "invite_key"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "inviteKey"
    L5_2 = "invite_key"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
  else
    L3_2 = mainPlayer
    L4_2 = "inviteKey"
    L5_2 = "NA"
    L3_2[L4_2] = L5_2
  end
  L3_2 = "xpboost_created_at"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = os
    L3_2 = L3_2.time
    L3_2 = L3_2()
    L4_2 = "xpboost_created_at"
    L4_2 = A0_2[L4_2]
    L3_2 = L3_2 - L4_2
    L4_2 = L2_1
    L5_2 = "XP_BOOST_TOTAL_TIME"
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2 - L3_2
    L5_2 = 0
    if L4_2 > L5_2 then
      L5_2 = mainPlayer
      L6_2 = "xpBoost"
      L7_2 = {}
      L8_2 = "creationTime"
      L9_2 = "xpboost_created_at"
      L9_2 = A0_2[L9_2]
      L7_2[L8_2] = L9_2
      L8_2 = tonumber
      L9_2 = "xpboost_id"
      L9_2 = A0_2[L9_2]
      L8_2 = L8_2(L9_2)
      L7_2.id = L8_2
      L5_2[L6_2] = L7_2
    else
      L5_2 = mainPlayer
      L6_2 = "xpBoost"
      L7_2 = nil
      L5_2[L6_2] = L7_2
    end
  end
  L3_2 = "pwboost_created_at"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = os
    L3_2 = L3_2.time
    L3_2 = L3_2()
    L4_2 = "pwboost_created_at"
    L4_2 = A0_2[L4_2]
    L3_2 = L3_2 - L4_2
    L4_2 = L2_1
    L5_2 = "POWER_BOOST_TOTAL_TIME"
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2 - L3_2
    L5_2 = 0
    if L4_2 > L5_2 then
      L5_2 = mainPlayer
      L6_2 = "powerBoost"
      L7_2 = {}
      L8_2 = "creationTime"
      L9_2 = "pwboost_created_at"
      L9_2 = A0_2[L9_2]
      L7_2[L8_2] = L9_2
      L8_2 = tonumber
      L9_2 = "pwboost_id"
      L9_2 = A0_2[L9_2]
      L8_2 = L8_2(L9_2)
      L7_2.id = L8_2
      L8_2 = "multiplier"
      L9_2 = L2_1
      L10_2 = "BOOST_MULTIPLIERS"
      L9_2 = L9_2[L10_2]
      L10_2 = "pwboost_id"
      L10_2 = A0_2[L10_2]
      L9_2 = L9_2[L10_2]
      L7_2[L8_2] = L9_2
      L5_2[L6_2] = L7_2
      L5_2 = pairs
      L6_2 = mainPlayer
      L6_2 = L6_2.cards
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      for L8_2, L9_2 in L5_2, L6_2, L7_2 do
        L10_2 = "powerBeforeBoost"
        L11_2 = L9_2.power
        L9_2[L10_2] = L11_2
        L10_2 = L9_2.power
        L11_2 = math
        L12_2 = "ceil"
        L11_2 = L11_2[L12_2]
        L12_2 = L2_1
        L13_2 = "BOOST_MULTIPLIERS"
        L12_2 = L12_2[L13_2]
        L13_2 = "pwboost_id"
        L13_2 = A0_2[L13_2]
        L12_2 = L12_2[L13_2]
        L12_2 = L10_2 * L12_2
        L11_2 = L11_2(L12_2)
        L9_2.power = L11_2
      end
    else
      L5_2 = pairs
      L6_2 = mainPlayer
      L6_2 = L6_2.cards
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      for L8_2, L9_2 in L5_2, L6_2, L7_2 do
        L10_2 = "powerBeforeBoost"
        L11_2 = nil
        L9_2[L10_2] = L11_2
      end
      L5_2 = mainPlayer
      L6_2 = "powerBoost"
      L7_2 = nil
      L5_2[L6_2] = L7_2
    end
  end
  L3_2 = mainPlayer
  L3_2 = L3_2.level
  L4_2 = L2_1
  L5_2 = "UnlockLevel_Boosts"
  L4_2 = L4_2[L5_2]
  if L3_2 < L4_2 then
    L3_2 = L2_1
    L4_2 = "Can_Open_Boosts_Pack"
    L5_2 = false
    L3_2[L4_2] = L5_2
  end
  L3_2 = "available_combo_id_set"
  L3_2 = A0_2[L3_2]
  L4_2 = nil
  if L3_2 ~= L4_2 then
    L3_2 = mainPlayer
    L4_2 = "availableIdsOfComboSet"
    L5_2 = "available_combo_id_set"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
  end
  L3_2 = "purchase_deposits_to_bank"
  L3_2 = A0_2[L3_2]
  L4_2 = nil
  if L3_2 ~= L4_2 then
    L3_2 = mainPlayer
    L4_2 = "depositsPurchaseToBank"
    L5_2 = "purchase_deposits_to_bank"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
  else
    L3_2 = mainPlayer
    L4_2 = "depositsPurchaseToBank"
    L5_2 = false
    L3_2[L4_2] = L5_2
  end
  L3_2 = "sale_info"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "saleInfo"
    L5_2 = "sale_info"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
  end
  L3_2 = "better_quest_map"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "improveQuestMap"
    L5_2 = "better_quest_map"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
  end
  L3_2 = "better_tutorial_steps"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "forceToClickOnBattleButton"
    L5_2 = "better_tutorial_steps"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
  end
  L3_2 = "more_xp"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "fasterLevelUp"
    L5_2 = "more_xp"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
  end
  L3_2 = "better_league_tutorial"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "betterLeagueTutorial"
    L5_2 = "better_league_tutorial"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
  else
    L3_2 = mainPlayer
    L4_2 = "betterLeagueTutorial"
    L5_2 = false
    L3_2[L4_2] = L5_2
  end
  L3_2 = "gold_packs_sort_desc"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "isGoldPacksDescending"
    L5_2 = "gold_packs_sort_desc"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
  else
    L3_2 = mainPlayer
    L4_2 = "isGoldPacksDescending"
    L5_2 = L2_1
    L6_2 = "Shop_GoldPacksDescendingOrder"
    L5_2 = L5_2[L6_2]
    L3_2[L4_2] = L5_2
  end
  L3_2 = isAndroid
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = todNative
    L4_2 = "onesignalSetExternalId"
    L3_2 = L3_2[L4_2]
    L4_2 = {}
    L5_2 = "externalUserId"
    L6_2 = ""
    L7_2 = mainPlayer
    L7_2 = L7_2.id
    L6_2 = L6_2 .. L7_2
    L4_2[L5_2] = L6_2
    L3_2(L4_2)
  end
  L3_2 = mainPlayer
  L4_2 = "advertisment_providers_waterfall"
  L5_2 = "advertisment_providers_waterfall"
  L5_2 = A0_2[L5_2]
  L3_2[L4_2] = L5_2
  L3_2 = mainPlayer
  L4_2 = "advertisment_providers_random"
  L5_2 = "advertisment_providers_random"
  L5_2 = A0_2[L5_2]
  L3_2[L4_2] = L5_2
  L3_2 = print
  L4_2 = "Advertisment canWatch:"
  L5_2 = "can_watch_advertisment"
  L5_2 = A0_2[L5_2]
  L6_2 = " legacy single provider:"
  L7_2 = "advertisment_provider"
  L7_2 = A0_2[L7_2]
  L8_2 = " algorithm:"
  L9_2 = mainPlayer
  L10_2 = "advertisment_selection"
  L9_2 = L9_2[L10_2]
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = "can_watch_advertisment"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = pairs
    L4_2 = "advertisment_providers_waterfall"
    L4_2 = A0_2[L4_2]
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = print
      L9_2 = "Enabling Ads Provider (Waterfall): "
      L10_2 = L7_2
      L9_2 = L9_2 .. L10_2
      L8_2(L9_2)
      L8_2 = L2_1
      L9_2 = "Advertisement_Provider"
      L8_2 = L8_2[L9_2]
      L9_2 = "TapSell"
      L8_2 = L8_2[L9_2]
      if L7_2 == L8_2 then
        L8_2 = mainPlayer
        L9_2 = "canShowTapSell"
        L10_2 = true
        L8_2[L9_2] = L10_2
      else
        L8_2 = L2_1
        L9_2 = "Advertisement_Provider"
        L8_2 = L8_2[L9_2]
        L9_2 = "Adivery"
        L8_2 = L8_2[L9_2]
        if L7_2 == L8_2 then
          L8_2 = mainPlayer
          L9_2 = "canShowAdivery"
          L10_2 = true
          L8_2[L9_2] = L10_2
        else
          L8_2 = L2_1
          L9_2 = "Advertisement_Provider"
          L8_2 = L8_2[L9_2]
          L9_2 = "Admob"
          L8_2 = L8_2[L9_2]
          if L7_2 == L8_2 then
            L8_2 = mainPlayer
            L9_2 = "canShowAdmob"
            L10_2 = true
            L8_2[L9_2] = L10_2
          else
            L8_2 = L2_1
            L9_2 = "Advertisement_Provider"
            L8_2 = L8_2[L9_2]
            L9_2 = "UnityAds"
            L8_2 = L8_2[L9_2]
            if L7_2 == L8_2 then
              L8_2 = mainPlayer
              L9_2 = "canShowUnityAds"
              L10_2 = true
              L8_2[L9_2] = L10_2
            else
              L8_2 = L2_1
              L9_2 = "Advertisement_Provider"
              L8_2 = L8_2[L9_2]
              L9_2 = "Chartboost"
              L8_2 = L8_2[L9_2]
              if L7_2 == L8_2 then
                L8_2 = mainPlayer
                L9_2 = "canShowChartboost"
                L10_2 = true
                L8_2[L9_2] = L10_2
              end
            end
          end
        end
      end
    end
    L3_2 = pairs
    L4_2 = "advertisment_providers_random"
    L4_2 = A0_2[L4_2]
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = print
      L9_2 = "Enabling Ads Provider (Random): "
      L10_2 = L7_2
      L9_2 = L9_2 .. L10_2
      L8_2(L9_2)
      L8_2 = L2_1
      L9_2 = "Advertisement_Provider"
      L8_2 = L8_2[L9_2]
      L9_2 = "TapSell"
      L8_2 = L8_2[L9_2]
      if L7_2 == L8_2 then
        L8_2 = mainPlayer
        L9_2 = "canShowTapSell"
        L10_2 = true
        L8_2[L9_2] = L10_2
      else
        L8_2 = L2_1
        L9_2 = "Advertisement_Provider"
        L8_2 = L8_2[L9_2]
        L9_2 = "Adivery"
        L8_2 = L8_2[L9_2]
        if L7_2 == L8_2 then
          L8_2 = mainPlayer
          L9_2 = "canShowAdivery"
          L10_2 = true
          L8_2[L9_2] = L10_2
        else
          L8_2 = L2_1
          L9_2 = "Advertisement_Provider"
          L8_2 = L8_2[L9_2]
          L9_2 = "Admob"
          L8_2 = L8_2[L9_2]
          if L7_2 == L8_2 then
            L8_2 = mainPlayer
            L9_2 = "canShowAdmob"
            L10_2 = true
            L8_2[L9_2] = L10_2
          else
            L8_2 = L2_1
            L9_2 = "Advertisement_Provider"
            L8_2 = L8_2[L9_2]
            L9_2 = "UnityAds"
            L8_2 = L8_2[L9_2]
            if L7_2 == L8_2 then
              L8_2 = mainPlayer
              L9_2 = "canShowUnityAds"
              L10_2 = true
              L8_2[L9_2] = L10_2
            else
              L8_2 = L2_1
              L9_2 = "Advertisement_Provider"
              L8_2 = L8_2[L9_2]
              L9_2 = "Chartboost"
              L8_2 = L8_2[L9_2]
              if L7_2 == L8_2 then
                L8_2 = mainPlayer
                L9_2 = "canShowChartboost"
                L10_2 = true
                L8_2[L9_2] = L10_2
              end
            end
          end
        end
      end
    end
  end
  L3_2 = "better_choose_deck"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "betterChooseDeck"
    L5_2 = "better_choose_deck"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
  end
  L3_2 = "better_enhance_tutorial"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "improveEnhanceTutorial"
    L5_2 = "better_enhance_tutorial"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
  else
    L3_2 = mainPlayer
    L4_2 = "improveEnhanceTutorial"
    L5_2 = false
    L3_2[L4_2] = L5_2
  end
  L3_2 = "better_tutorial_background"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "betterTutorialBackground"
    L5_2 = "better_tutorial_background"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
  else
    L3_2 = mainPlayer
    L4_2 = "betterTutorialBackground"
    L5_2 = false
    L3_2[L4_2] = L5_2
  end
  L3_2 = "better_gold_pack_multiplier"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "betterGoldPackMultiplier"
    L5_2 = "better_gold_pack_multiplier"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
  else
    L3_2 = mainPlayer
    L4_2 = "betterGoldPackMultiplier"
    L5_2 = false
    L3_2[L4_2] = L5_2
  end
  L3_2 = "better_gold_pack_ratio_on_price"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "betterGoldPackRatioOnPrice"
    L5_2 = "better_gold_pack_ratio_on_price"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
  else
    L3_2 = mainPlayer
    L4_2 = "betterGoldPackRatioOnPrice"
    L5_2 = false
    L3_2[L4_2] = L5_2
  end
  L3_2 = "better_gold_pack_ratio"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "betterGoldPackRatio"
    L5_2 = "better_gold_pack_ratio"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
  else
    L3_2 = mainPlayer
    L4_2 = "betterGoldPackRatio"
    L5_2 = false
    L3_2[L4_2] = L5_2
  end
  L3_2 = "bundles"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "bundles"
    L5_2 = {}
    L3_2[L4_2] = L5_2
    L3_2 = mainPlayer
    L4_2 = "activeBundleId"
    L5_2 = nil
    L3_2[L4_2] = L5_2
    L3_2 = mainPlayer
    L4_2 = "canBuyBundle"
    L5_2 = true
    L3_2[L4_2] = L5_2
    L3_2 = pairs
    L4_2 = "bundles"
    L4_2 = A0_2[L4_2]
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = mainPlayer
      L9_2 = "bundles"
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2.id
      L10_2 = {}
      L8_2[L9_2] = L10_2
      L8_2 = mainPlayer
      L9_2 = "bundles"
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2.id
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2.id
      L8_2.id = L9_2
      L8_2 = mainPlayer
      L9_2 = "bundles"
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2.id
      L8_2 = L8_2[L9_2]
      L9_2 = "extraDescription"
      L10_2 = L7_2.description
      L8_2[L9_2] = L10_2
      L8_2 = mainPlayer
      L9_2 = "bundles"
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2.id
      L8_2 = L8_2[L9_2]
      L9_2 = "goldPackInfo"
      L10_2 = "gold_pack_info"
      L10_2 = L7_2[L10_2]
      L8_2[L9_2] = L10_2
      L8_2 = mainPlayer
      L9_2 = "bundles"
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2.id
      L8_2 = L8_2[L9_2]
      L9_2 = "goldAmount"
      L10_2 = "gold_amount"
      L10_2 = L7_2[L10_2]
      L8_2[L9_2] = L10_2
      L8_2 = mainPlayer
      L9_2 = "bundles"
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2.id
      L8_2 = L8_2[L9_2]
      L9_2 = "potionGift"
      L10_2 = "fill_potion"
      L10_2 = L7_2[L10_2]
      L8_2[L9_2] = L10_2
      L8_2 = mainPlayer
      L9_2 = "bundles"
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2.id
      L8_2 = L8_2[L9_2]
      L9_2 = "nectarAmount"
      L10_2 = "nectar_amount"
      L10_2 = L7_2[L10_2]
      L8_2[L9_2] = L10_2
      L8_2 = mainPlayer
      L9_2 = "bundles"
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2.id
      L8_2 = L8_2[L9_2]
      L9_2 = "endTime"
      L10_2 = "end_date"
      L10_2 = L7_2[L10_2]
      L8_2[L9_2] = L10_2
      L8_2 = mainPlayer
      L9_2 = "bundles"
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2.id
      L8_2 = L8_2[L9_2]
      L9_2 = "boostPackType"
      L10_2 = "boost_pack_type"
      L10_2 = L7_2[L10_2]
      L8_2[L9_2] = L10_2
      L8_2 = mainPlayer
      L9_2 = "bundles"
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2.id
      L8_2 = L8_2[L9_2]
      L9_2 = "cardsInfo"
      L10_2 = L24_1
      L11_2 = "card_info"
      L11_2 = L7_2[L11_2]
      L10_2 = L10_2(L11_2)
      L8_2[L9_2] = L10_2
      L8_2 = mainPlayer
      L9_2 = "bundles"
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2.id
      L8_2 = L8_2[L9_2]
      L9_2 = "rewardsCount"
      L10_2 = "rewards_count"
      L10_2 = L7_2[L10_2]
      L8_2[L9_2] = L10_2
      L8_2 = mainPlayer
      L9_2 = "bundles"
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2.id
      L8_2 = L8_2[L9_2]
      L9_2 = "discountRatio"
      L10_2 = "discount_ratio"
      L10_2 = L7_2[L10_2]
      L8_2[L9_2] = L10_2
      L8_2 = mainPlayer
      L9_2 = "bundles"
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2.id
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2.avatar
      L8_2.avatar = L9_2
      L8_2 = mainPlayer
      L9_2 = "bundles"
      L8_2 = L8_2[L9_2]
      L9_2 = L7_2.id
      L8_2 = L8_2[L9_2]
      L9_2 = "packageType"
      L10_2 = "package_type"
      L10_2 = L7_2[L10_2]
      L8_2[L9_2] = L10_2
      L8_2 = mainPlayer
      L9_2 = "activeBundleId"
      L8_2 = L8_2[L9_2]
      L9_2 = nil
      if L8_2 == L9_2 then
        L8_2 = "show_on_home"
        L8_2 = L7_2[L8_2]
        if L8_2 then
          L8_2 = mainPlayer
          L9_2 = "activeBundleId"
          L10_2 = L7_2.id
          L8_2[L9_2] = L10_2
        end
      end
    end
    L3_2 = mainPlayer
    L4_2 = "activeBundleId"
    L3_2 = L3_2[L4_2]
    L4_2 = nil
    if L3_2 == L4_2 then
      L3_2 = mainPlayer
      L4_2 = "activeBundleId"
      L5_2 = 1
      L3_2[L4_2] = L5_2
    end
  end
  L3_2 = "progress_bundle"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "ladder"
    L5_2 = {}
    L3_2[L4_2] = L5_2
    L3_2 = mainPlayer
    L4_2 = "ladder"
    L3_2 = L3_2[L4_2]
    L4_2 = "startTime"
    L5_2 = "progress_bundle"
    L5_2 = A0_2[L5_2]
    L6_2 = "start_time"
    L5_2 = L5_2[L6_2]
    L3_2[L4_2] = L5_2
    L3_2 = mainPlayer
    L4_2 = "ladder"
    L3_2 = L3_2[L4_2]
    L4_2 = "finishTime"
    L5_2 = "progress_bundle"
    L5_2 = A0_2[L5_2]
    L6_2 = "finish_time"
    L5_2 = L5_2[L6_2]
    L3_2[L4_2] = L5_2
    L3_2 = mainPlayer
    L4_2 = "ladder"
    L3_2 = L3_2[L4_2]
    L4_2 = "minLevel"
    L5_2 = "progress_bundle"
    L5_2 = A0_2[L5_2]
    L6_2 = "min_level"
    L5_2 = L5_2[L6_2]
    L3_2[L4_2] = L5_2
    L3_2 = mainPlayer
    L4_2 = "ladder"
    L3_2 = L3_2[L4_2]
    L4_2 = "progress_bundle"
    L4_2 = A0_2[L4_2]
    L5_2 = "max_level"
    L4_2 = L4_2[L5_2]
    L3_2.maxLevel = L4_2
    L3_2 = mainPlayer
    L4_2 = "ladder"
    L3_2 = L3_2[L4_2]
    L4_2 = "step"
    L5_2 = "progress_bundle"
    L5_2 = A0_2[L5_2]
    L6_2 = "step"
    L5_2 = L5_2[L6_2]
    L3_2[L4_2] = L5_2
    L3_2 = "progress_bundle"
    L3_2 = A0_2[L3_2]
    L4_2 = "data"
    L3_2 = L3_2[L4_2]
    if L3_2 then
      L3_2 = mainPlayer
      L4_2 = "ladder"
      L3_2 = L3_2[L4_2]
      L4_2 = "data"
      L5_2 = {}
      L3_2[L4_2] = L5_2
      L3_2 = pairs
      L4_2 = "progress_bundle"
      L4_2 = A0_2[L4_2]
      L5_2 = "data"
      L4_2 = L4_2[L5_2]
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = mainPlayer
        L9_2 = "ladder"
        L8_2 = L8_2[L9_2]
        L9_2 = "data"
        L8_2 = L8_2[L9_2]
        L9_2 = {}
        L8_2[L6_2] = L9_2
        L8_2 = mainPlayer
        L9_2 = "ladder"
        L8_2 = L8_2[L9_2]
        L9_2 = "data"
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2[L6_2]
        L9_2 = "purchaseType"
        L10_2 = "purchase_type"
        L10_2 = L7_2[L10_2]
        L8_2[L9_2] = L10_2
        L8_2 = mainPlayer
        L9_2 = "ladder"
        L8_2 = L8_2[L9_2]
        L9_2 = "data"
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2[L6_2]
        L9_2 = "packageType"
        L10_2 = "package_type"
        L10_2 = L7_2[L10_2]
        L8_2[L9_2] = L10_2
        L8_2 = mainPlayer
        L9_2 = "ladder"
        L8_2 = L8_2[L9_2]
        L9_2 = "data"
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2[L6_2]
        L9_2 = L7_2.description
        L8_2.description = L9_2
        L8_2 = mainPlayer
        L9_2 = "ladder"
        L8_2 = L8_2[L9_2]
        L9_2 = "data"
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2[L6_2]
        L9_2 = "goldPackInfo"
        L10_2 = "gold_pack_info"
        L10_2 = L7_2[L10_2]
        L8_2[L9_2] = L10_2
        L8_2 = mainPlayer
        L9_2 = "ladder"
        L8_2 = L8_2[L9_2]
        L9_2 = "data"
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2[L6_2]
        L9_2 = "goldAmount"
        L10_2 = "gold_amount"
        L10_2 = L7_2[L10_2]
        L8_2[L9_2] = L10_2
        L8_2 = mainPlayer
        L9_2 = "ladder"
        L8_2 = L8_2[L9_2]
        L9_2 = "data"
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2[L6_2]
        L9_2 = "nectarAmount"
        L10_2 = "nectar_amount"
        L10_2 = L7_2[L10_2]
        L8_2[L9_2] = L10_2
        L8_2 = mainPlayer
        L9_2 = "ladder"
        L8_2 = L8_2[L9_2]
        L9_2 = "data"
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2[L6_2]
        L9_2 = "fillPotion"
        L10_2 = "fill_potion"
        L10_2 = L7_2[L10_2]
        L8_2[L9_2] = L10_2
        L8_2 = mainPlayer
        L9_2 = "ladder"
        L8_2 = L8_2[L9_2]
        L9_2 = "data"
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2[L6_2]
        L9_2 = "boostPackType"
        L10_2 = "boost_pack_type"
        L10_2 = L7_2[L10_2]
        L8_2[L9_2] = L10_2
        L8_2 = mainPlayer
        L9_2 = "ladder"
        L8_2 = L8_2[L9_2]
        L9_2 = "data"
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2[L6_2]
        L9_2 = "cardsInfo"
        L10_2 = L24_1
        L11_2 = "card_info"
        L11_2 = L7_2[L11_2]
        L10_2 = L10_2(L11_2)
        L8_2[L9_2] = L10_2
        L8_2 = mainPlayer
        L9_2 = "ladder"
        L8_2 = L8_2[L9_2]
        L9_2 = "data"
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2[L6_2]
        L9_2 = "discountRatio"
        L10_2 = "discount_ratio"
        L10_2 = L7_2[L10_2]
        L8_2[L9_2] = L10_2
      end
    end
    L3_2 = mainPlayer
    L4_2 = "ladder"
    L3_2 = L3_2[L4_2]
    L4_2 = "finishTime"
    L3_2 = L3_2[L4_2]
    if L3_2 then
      L3_2 = mainPlayer
      L4_2 = "ladder"
      L3_2 = L3_2[L4_2]
      L4_2 = "finishTime"
      L3_2 = L3_2[L4_2]
      L4_2 = os
      L4_2 = L4_2.time
      L4_2 = L4_2()
      if L3_2 > L4_2 then
        L3_2 = mainPlayer
        L4_2 = "canAccessLadder"
        L5_2 = true
        L3_2[L4_2] = L5_2
    end
    else
      L3_2 = mainPlayer
      L4_2 = "canAccessLadder"
      L5_2 = false
      L3_2[L4_2] = L5_2
    end
  end
  L3_2 = "daily_reward"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = "daily_reward"
    L3_2 = A0_2[L3_2]
    L4_2 = "next_reward_at"
    L3_2 = L3_2[L4_2]
    if L3_2 then
      L3_2 = mainPlayer
      L4_2 = "nextDailyRewardTime"
      L5_2 = "daily_reward"
      L5_2 = A0_2[L5_2]
      L6_2 = "next_reward_at"
      L5_2 = L5_2[L6_2]
      L3_2[L4_2] = L5_2
    end
    L3_2 = "daily_reward"
    L3_2 = A0_2[L3_2]
    L4_2 = "day_index"
    L3_2 = L3_2[L4_2]
    if L3_2 then
      L3_2 = mainPlayer
      L4_2 = "hasDailyReward"
      L5_2 = true
      L3_2[L4_2] = L5_2
      L3_2 = mainPlayer
      L4_2 = "currentDayNumber"
      L5_2 = "daily_reward"
      L5_2 = A0_2[L5_2]
      L6_2 = "day_index"
      L5_2 = L5_2[L6_2]
      L3_2[L4_2] = L5_2
    end
    L3_2 = "daily_reward"
    L3_2 = A0_2[L3_2]
    L4_2 = "base_gold"
    L3_2 = L3_2[L4_2]
    if L3_2 then
      L3_2 = mainPlayer
      L4_2 = "dailyRewardBaseGold"
      L5_2 = "daily_reward"
      L5_2 = A0_2[L5_2]
      L6_2 = "base_gold"
      L5_2 = L5_2[L6_2]
      L3_2[L4_2] = L5_2
    end
  end
  L3_2 = "rolling_gold"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "rollingGold"
    L5_2 = "rolling_gold"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
  else
    L3_2 = mainPlayer
    L4_2 = "rollingGold"
    L5_2 = false
    L3_2[L4_2] = L5_2
  end
  L3_2 = "coach_test"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "coachTest"
    L5_2 = "coach_test"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
    L3_2 = "coach_info"
    L3_2 = A0_2[L3_2]
    if L3_2 then
      L3_2 = "coach_info"
      L3_2 = A0_2[L3_2]
      L3_2 = L3_2.name
      if L3_2 then
        L3_2 = mainPlayer
        L4_2 = "trainerName"
        L5_2 = "coach_info"
        L5_2 = A0_2[L5_2]
        L5_2 = L5_2.name
        L3_2[L4_2] = L5_2
      end
      L3_2 = "coach_info"
      L3_2 = A0_2[L3_2]
      L4_2 = "tribe_name"
      L3_2 = L3_2[L4_2]
      if L3_2 then
        L3_2 = mainPlayer
        L4_2 = "trainerTribe"
        L5_2 = "coach_info"
        L5_2 = A0_2[L5_2]
        L6_2 = "tribe_name"
        L5_2 = L5_2[L6_2]
        L3_2[L4_2] = L5_2
      end
    end
  else
    L3_2 = mainPlayer
    L4_2 = "coachTest"
    L5_2 = false
    L3_2[L4_2] = L5_2
    L3_2 = L20_1
    L4_2 = "fullHelpChunks"
    L3_2 = L3_2[L4_2]
    L4_2 = 38
    L3_2 = L3_2[L4_2]
    L4_2 = "isVisible"
    L5_2 = false
    L3_2[L4_2] = L5_2
  end
  L3_2 = "coaching"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = "coaching"
    L3_2 = A0_2[L3_2]
    L4_2 = "tribe_id"
    L3_2 = L3_2[L4_2]
    if L3_2 then
      L3_2 = mainPlayer
      L4_2 = "coachTribeID"
      L5_2 = "coaching"
      L5_2 = A0_2[L5_2]
      L6_2 = "tribe_id"
      L5_2 = L5_2[L6_2]
      L3_2[L4_2] = L5_2
      L3_2 = mainPlayer
      L4_2 = "trainer"
      L5_2 = true
      L3_2[L4_2] = L5_2
    else
      L3_2 = mainPlayer
      L4_2 = "trainer"
      L5_2 = false
      L3_2[L4_2] = L5_2
    end
    L3_2 = "coaching"
    L3_2 = A0_2[L3_2]
    L4_2 = "trained_players"
    L3_2 = L3_2[L4_2]
    if L3_2 then
      L3_2 = mainPlayer
      L4_2 = "numberOfTrainedPlayers"
      L5_2 = "coaching"
      L5_2 = A0_2[L5_2]
      L6_2 = "trained_players"
      L5_2 = L5_2[L6_2]
      L3_2[L4_2] = L5_2
    end
  end
  L3_2 = "durable_buildings_name"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "durableBuildingsName"
    L5_2 = "durable_buildings_name"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
  else
    L3_2 = mainPlayer
    L4_2 = "durableBuildingsName"
    L5_2 = false
    L3_2[L4_2] = L5_2
  end
  L3_2 = "unified_gold_icon"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "unifiedGoldIcon"
    L5_2 = "unified_gold_icon"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
  else
    L3_2 = mainPlayer
    L4_2 = "unifiedGoldIcon"
    L5_2 = false
    L3_2[L4_2] = L5_2
  end
  L3_2 = "better_card_graphic"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "newCards"
    L5_2 = "better_card_graphic"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
    L3_2 = mainPlayer
    L3_2 = L3_2.level
    L4_2 = 3
    if L3_2 <= L4_2 then
      L3_2 = mainPlayer
      L4_2 = "showNewCards"
      L5_2 = true
      L3_2[L4_2] = L5_2
    else
      L3_2 = mainPlayer
      L4_2 = "showNewCards"
      L5_2 = false
      L3_2[L4_2] = L5_2
    end
  end
  L3_2 = "send_all_tutorial_steps"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "sendAllTutorialSteps"
    L5_2 = "send_all_tutorial_steps"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
  else
    L3_2 = mainPlayer
    L4_2 = "sendAllTutorialSteps"
    L5_2 = false
    L3_2[L4_2] = L5_2
  end
  L3_2 = "show_task_until_levelup"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "showTaskUntilLevelUp"
    L5_2 = "show_task_until_levelup"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
  else
    L3_2 = mainPlayer
    L4_2 = "showTaskUntilLevelUp"
    L5_2 = false
    L3_2[L4_2] = L5_2
  end
  L3_2 = "better_restore_button_label"
  L3_2 = A0_2[L3_2]
  if L3_2 then
    L3_2 = mainPlayer
    L4_2 = "restoreButtonName"
    L5_2 = "better_restore_button_label"
    L5_2 = A0_2[L5_2]
    L3_2[L4_2] = L5_2
  else
    L3_2 = mainPlayer
    L4_2 = "restoreButtonName"
    L5_2 = false
    L3_2[L4_2] = L5_2
  end
  L3_2 = _storeType
  L4_2 = "appstore"
  L3_2 = _isMyCountry
  L3_2 = not L3_2
  L3_2 = L3_2 ~= L4_2 or L3_2
  L4_2 = "can_use_vitrin"
  L4_2 = A0_2[L4_2]
  if L4_2 and L3_2 then
    L4_2 = mainPlayer
    L5_2 = "canUseVitrin"
    L6_2 = "can_use_vitrin"
    L6_2 = A0_2[L6_2]
    L4_2[L5_2] = L6_2
    L4_2 = L2_1
    L5_2 = "StoreID"
    L6_2 = "2"
    L4_2[L5_2] = L6_2
    L4_2 = L2_1
    L5_2 = "Path_AppLinkInStore"
    L6_2 = "sibche2://showapp/1524"
    L4_2[L5_2] = L6_2
  else
    L4_2 = mainPlayer
    L5_2 = "canUseVitrin"
    L6_2 = false
    L4_2[L5_2] = L6_2
  end
  L4_2 = "better_vitrin_promotion"
  L4_2 = A0_2[L4_2]
  if L4_2 then
    L4_2 = mainPlayer
    L5_2 = "betterVitrinPromotion"
    L6_2 = "better_vitrin_promotion"
    L6_2 = A0_2[L6_2]
    L4_2[L5_2] = L6_2
  else
    L4_2 = mainPlayer
    L5_2 = "betterVitrinPromotion"
    L6_2 = false
    L4_2[L5_2] = L6_2
  end
  L4_2 = "better_quest_tutorial"
  L4_2 = A0_2[L4_2]
  if L4_2 then
    L4_2 = mainPlayer
    L5_2 = "betterQuestTutorial"
    L6_2 = "better_quest_tutorial"
    L6_2 = A0_2[L6_2]
    L4_2[L5_2] = L6_2
  else
    L4_2 = mainPlayer
    L5_2 = "betterQuestTutorial"
    L6_2 = false
    L4_2[L5_2] = L6_2
  end
  L4_2 = "activity_status"
  L4_2 = A0_2[L4_2]
  if L4_2 then
    L4_2 = "activity_status"
    L4_2 = A0_2[L4_2]
    L5_2 = 4
    if L4_2 == L5_2 then
      L4_2 = mainPlayer
      L5_2 = "hasVerifiedEmail"
      L6_2 = true
      L4_2[L5_2] = L6_2
    end
  end
  L4_2 = mainPlayer
  L5_2 = "heroItems"
  L6_2 = {}
  L4_2[L5_2] = L6_2
  L4_2 = L19_1
  L5_2 = "dataWithName"
  L4_2 = L4_2[L5_2]
  L5_2 = "BaseHeroItems"
  L4_2 = L4_2(L5_2)
  L5_2 = pairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = mainPlayer
    L11_2 = "heroItems"
    L10_2 = L10_2[L11_2]
    L11_2 = L9_2.id
    L12_2 = L21_1
    L13_2 = L12_2
    L12_2 = L12_2.new
    L14_2 = L9_2
    L12_2 = L12_2(L13_2, L14_2)
    L10_2[L11_2] = L12_2
  end
  L5_2 = "heroitems"
  L5_2 = A0_2[L5_2]
  if L5_2 then
    L5_2 = pairs
    L6_2 = "heroitems"
    L6_2 = A0_2[L6_2]
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = mainPlayer
      L11_2 = "heroItems"
      L10_2 = L10_2[L11_2]
      L11_2 = "base_heroitem_id"
      L11_2 = L9_2[L11_2]
      L10_2 = L10_2[L11_2]
      if L10_2 then
        L10_2 = mainPlayer
        L11_2 = "heroItems"
        L10_2 = L10_2[L11_2]
        L11_2 = "base_heroitem_id"
        L11_2 = L9_2[L11_2]
        L10_2 = L10_2[L11_2]
        L11_2 = "usedCount"
        L12_2 = "used_count"
        L12_2 = L9_2[L12_2]
        L10_2[L11_2] = L12_2
        L10_2 = mainPlayer
        L11_2 = "heroItems"
        L10_2 = L10_2[L11_2]
        L11_2 = "base_heroitem_id"
        L11_2 = L9_2[L11_2]
        L10_2 = L10_2[L11_2]
        L11_2 = "assignedHeroID"
        L12_2 = L9_2.base_hero_id
        L10_2[L11_2] = L12_2
      end
    end
  end
  L5_2 = "hero_tutorial_at_first"
  L5_2 = A0_2[L5_2]
  if L5_2 then
    L5_2 = mainPlayer
    L6_2 = "heroTutorialAtFirst"
    L7_2 = "hero_tutorial_at_first"
    L7_2 = A0_2[L7_2]
    L5_2[L6_2] = L7_2
  end
  L5_2 = "hero_tutorial_at_second_quest"
  L5_2 = A0_2[L5_2]
  if L5_2 then
    L5_2 = mainPlayer
    L6_2 = "heroTutorialAfterSecondQuest"
    L7_2 = "hero_tutorial_at_second_quest"
    L7_2 = A0_2[L7_2]
    L5_2[L6_2] = L7_2
  end
  L5_2 = "hero_tutorial_at_first_and_selected"
  L5_2 = A0_2[L5_2]
  if L5_2 then
    L5_2 = mainPlayer
    L6_2 = "heroTutorialAtFirstAndSelected"
    L7_2 = "hero_tutorial_at_first_and_selected"
    L7_2 = A0_2[L7_2]
    L5_2[L6_2] = L7_2
  end
  L5_2 = "hero_tutorial_at_first_and_selected_and_animated"
  L5_2 = A0_2[L5_2]
  if L5_2 then
    L5_2 = mainPlayer
    L6_2 = "heroTutorialAtFirstAndSelectedWithAnimation"
    L7_2 = "hero_tutorial_at_first_and_selected_and_animated"
    L7_2 = A0_2[L7_2]
    L5_2[L6_2] = L7_2
  end
  L5_2 = "hero_tutorial_at_level_four"
  L5_2 = A0_2[L5_2]
  if L5_2 then
    L5_2 = mainPlayer
    L6_2 = "heroTutorialAtLevelFour"
    L7_2 = "hero_tutorial_at_level_four"
    L7_2 = A0_2[L7_2]
    L5_2[L6_2] = L7_2
  end
  L5_2 = "hero_max_rarity"
  L5_2 = A0_2[L5_2]
  if L5_2 then
    L5_2 = mainPlayer
    L6_2 = "heroMaxRarity"
    L7_2 = "hero_max_rarity"
    L7_2 = A0_2[L7_2]
    L5_2[L6_2] = L7_2
  end
  L5_2 = "better_mine_building_status"
  L5_2 = A0_2[L5_2]
  if L5_2 then
    L5_2 = mainPlayer
    L6_2 = "canShowMineExtractionDetails"
    L7_2 = "better_mine_building_status"
    L7_2 = A0_2[L7_2]
    L5_2[L6_2] = L7_2
  else
    L5_2 = mainPlayer
    L6_2 = "canShowMineExtractionDetails"
    L7_2 = false
    L5_2[L6_2] = L7_2
  end
  L5_2 = "is_mine_building_limited"
  L5_2 = A0_2[L5_2]
  if L5_2 then
    L5_2 = mainPlayer
    L6_2 = "isMineBuildingLimited"
    L7_2 = "is_mine_building_limited"
    L7_2 = A0_2[L7_2]
    L5_2[L6_2] = L7_2
  else
    L5_2 = mainPlayer
    L6_2 = "isMineBuildingLimited"
    L7_2 = false
    L5_2[L6_2] = L7_2
  end
  L5_2 = "gold_collection_allowed"
  L5_2 = A0_2[L5_2]
  if L5_2 then
    L5_2 = mainPlayer
    L6_2 = "goldCollectionAllowed"
    L7_2 = "gold_collection_allowed"
    L7_2 = A0_2[L7_2]
    L5_2[L6_2] = L7_2
  else
    L5_2 = mainPlayer
    L6_2 = "goldCollectionAllowed"
    L7_2 = false
    L5_2[L6_2] = L7_2
  end
  L5_2 = "gold_collection_allowed_at"
  L5_2 = A0_2[L5_2]
  if L5_2 then
    L5_2 = mainPlayer
    L6_2 = "goldCollectionAllowedAt"
    L7_2 = "gold_collection_allowed_at"
    L7_2 = A0_2[L7_2]
    L5_2[L6_2] = L7_2
  end
  L5_2 = "gold_collection_extraction"
  L5_2 = A0_2[L5_2]
  if L5_2 then
    L5_2 = mainPlayer
    L6_2 = "goldCollectionExtraction"
    L7_2 = "gold_collection_extraction"
    L7_2 = A0_2[L7_2]
    L5_2[L6_2] = L7_2
  end
  L5_2 = logMineAnalyticsEvent
  L5_2()
  L5_2 = "fall_background"
  L5_2 = A0_2[L5_2]
  if L5_2 then
    L5_2 = mainPlayer
    L6_2 = "fallBackground"
    L7_2 = "fall_background"
    L7_2 = A0_2[L7_2]
    L5_2[L6_2] = L7_2
  end
  L5_2 = "mobile_number_verified"
  L5_2 = A0_2[L5_2]
  if L5_2 then
    L5_2 = mainPlayer
    L6_2 = "mobileNumberVerified"
    L7_2 = "mobile_number_verified"
    L7_2 = A0_2[L7_2]
    L5_2[L6_2] = L7_2
  end
  L5_2 = "wheel_of_fortune"
  L5_2 = A0_2[L5_2]
  if L5_2 then
    L5_2 = mainPlayer
    L6_2 = "mustShowChanceBox"
    L7_2 = "wheel_of_fortune"
    L7_2 = A0_2[L7_2]
    L5_2[L6_2] = L7_2
  end
  L5_2 = "wheel_of_fortune_opens_in"
  L5_2 = A0_2[L5_2]
  if L5_2 then
    L5_2 = mainPlayer
    L6_2 = "chanceBoxOpenningTime"
    L7_2 = "wheel_of_fortune_opens_in"
    L7_2 = A0_2[L7_2]
    L5_2[L6_2] = L7_2
  end
  L5_2 = log3
  L6_2 = "finished load player, calling delegate"
  L5_2(L6_2)
  L5_2 = delegate
  L7_2 = "didFinishLoading"
  L6_2 = L5_2
  L5_2 = L5_2[L7_2]
  L5_2(L6_2)
end

parseGameLoadData = L25_1

function L25_1()
  local L0_2, L1_2, L2_2
  L1_2 = mainPlayer
  L1_2 = L1_2.isMineBuildingLimited
  if L1_2 then
    L1_2 = mainPlayer
    L1_2 = L1_2.canShowMineExtractionDetails
    if L1_2 then
      L0_2 = "Limited Mine with details"
    else
      L0_2 = "Limited Mine"
    end
  else
    L0_2 = "Regular Mine"
  end
  if L0_2 then
    L1_2 = L8_1
    L1_2 = L1_2.logEvent
    L2_2 = L0_2
    L1_2(L2_2)
  end
end

logMineAnalyticsEvent = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.now
  L2_2 = os
  L2_2 = L2_2.time
  L2_2 = L2_2()
  L3_2 = mainPlayer
  L4_2 = L1_2 - L2_2
  L3_2.timeDelta = L4_2
  L3_2 = log3
  L4_2 = "Mainplayer time delta:"
  L5_2 = mainPlayer
  L5_2 = L5_2.timeDelta
  L3_2(L4_2, L5_2)
end

calculateTimeDiff = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = network
    L0_3 = L0_3.parseResposeHeader
    L1_3 = A0_2
    L1_3 = L1_3.responseHeaders
    L0_3(L1_3)
    L0_3 = network
    L0_3 = L0_3.checkForErrors
    L1_3 = A0_2
    L2_3 = "Player Load"
    L3_3 = delegate
    L3_3 = L3_3.failedToLoad
    L0_3, L1_3 = L0_3(L1_3, L2_3, L3_3)
    if L0_3 then
      L2_3 = restoreKey
      if L2_3 then
        L2_3 = _G
        L3_3 = _M
        L4_3 = L3_3
        L3_3 = L3_3.new
        L5_3 = {}
        L5_3.achievements = false
        L5_3.cooldownsBoughtToday = 0
        L5_3.goldBuilding = nil
        L3_3 = L3_3(L4_3, L5_3)
        L2_3.mainPlayer = L3_3
        L2_3 = mainPlayer
        L3_3 = L2_3
        L2_3 = L2_3.loadSettings
        L2_3(L3_3)
        L2_3 = nil
        restoreKey = L2_3
      end
      L2_3 = calculateTimeDiff
      L3_3 = L1_3
      L2_3(L3_3)
      L2_3 = mainPlayer
      L3_3 = L1_3.latest_constants_version
      L2_3.latestConstantsVersion = L3_3
      
      function L2_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = {}
        L0_4.name = "loadingProgress"
        L0_4.value = 0.65
        L1_4 = Runtime
        L2_4 = L1_4
        L1_4 = L1_4.dispatchEvent
        L3_4 = L0_4
        L1_4(L2_4, L3_4)
        L1_4 = timer
        L1_4 = L1_4.performWithDelay
        L2_4 = 100
        
        function L3_4()
          local L0_5, L1_5, L2_5, L3_5, L4_5
          
          function L0_5()
            local L0_6, L1_6, L2_6, L3_6
            L0_6 = timer
            L0_6 = L0_6.performWithDelay
            L1_6 = 100
            
            function L2_6()
              local L0_7, L1_7
              L0_7 = parseGameLoadData
              L1_7 = L1_3
              L0_7(L1_7)
            end
            
            L3_6 = 1
            L0_6(L1_6, L2_6, L3_6)
          end
          
          function L1_5()
            local L0_6, L1_6, L2_6, L3_6
            L0_6 = timer
            L0_6 = L0_6.performWithDelay
            L1_6 = 100
            
            function L2_6()
              local L0_7, L1_7
              L0_7 = parseGameLoadData
              L1_7 = L1_3
              L0_7(L1_7)
            end
            
            L3_6 = 1
            L0_6(L1_6, L2_6, L3_6)
          end
          
          L2_5 = L2_1
          L2_5 = L2_5.checkForUpdates
          L3_5 = L0_5
          L4_5 = L1_5
          L2_5(L3_5, L4_5)
        end
        
        L1_4(L2_4, L3_4)
      end
      
      function L3_3()
        local L0_4, L1_4, L2_4, L3_4
        
        function L0_4()
          local L0_5, L1_5, L2_5, L3_5
          
          function L0_5(A0_6)
            local L1_6, L2_6, L3_6, L4_6, L5_6
            L1_6 = log
            L2_6 = A0_6
            L1_6(L2_6)
            L1_6 = L18_1
            L1_6 = L1_6.hide
            L1_6()
            L1_6 = showSimpleDialog
            L2_6 = "Update"
            L3_6 = "Internal update failed in gettting error messages"
            L4_6 = "Retry"
            
            function L5_6()
              local L0_7, L1_7, L2_7
              L0_7 = L18_1
              L0_7 = L0_7.show
              L0_7()
              L0_7 = L17_1
              L0_7 = L0_7.getErrorMessagesFilesFromServer
              L1_7 = L2_3
              L2_7 = getErrorMessagesFailureCallback
              L0_7(L1_7, L2_7)
            end
            
            L1_6(L2_6, L3_6, L4_6, L5_6)
          end
          
          L1_5 = L17_1
          L1_5 = L1_5.checkErrorMessagesFilesVersion
          L2_5 = mainPlayer
          L2_5 = L2_5.latestConstantsVersion
          L1_5 = L1_5(L2_5)
          if L1_5 then
            L1_5 = L17_1
            L1_5 = L1_5.getErrorMessagesFilesFromServer
            L2_5 = L2_3
            L3_5 = L0_5
            L1_5(L2_5, L3_5)
          else
            L1_5 = L2_3
            L1_5()
          end
        end
        
        getConstansData = L0_4
        L0_4 = {}
        L0_4.name = "loadingProgress"
        L0_4.value = 0.5
        L1_4 = Runtime
        L2_4 = L1_4
        L1_4 = L1_4.dispatchEvent
        L3_4 = L0_4
        L1_4(L2_4, L3_4)
        L1_4 = timer
        L1_4 = L1_4.performWithDelay
        L2_4 = 100
        L3_4 = getConstansData
        L1_4(L2_4, L3_4)
      end
      
      L4_3 = L17_1
      L4_3 = L4_3.checkErrorMessagesFilesVersion
      L5_3 = mainPlayer
      L5_3 = L5_3.latestConstantsVersion
      L4_3 = L4_3(L5_3)
      if L4_3 then
        function L4_3()
          local L0_4, L1_4, L2_4
          
          L0_4 = updateDataManagerFiles
          L1_4 = L1_3
          L2_4 = L3_3
          L0_4(L1_4, L2_4)
        end
        
        function L5_3(A0_4)
          local L1_4, L2_4, L3_4
          L1_4 = log
          L2_4 = A0_4
          L1_4(L2_4)
          L1_4 = L17_1
          L1_4 = L1_4.loadDefaultErrorMessagesFile
          L1_4()
          L1_4 = updateDataManagerFiles
          L2_4 = L1_3
          L3_4 = L3_3
          L1_4(L2_4, L3_4)
        end
        
        L6_3 = L17_1
        L6_3 = L6_3.getErrorMessagesFilesFromServer
        L7_3 = L4_3
        L8_3 = L5_3
        L6_3(L7_3, L8_3)
      else
        L4_3 = updateDataManagerFiles
        L5_3 = L1_3
        L6_3 = L3_3
        L4_3(L5_3, L6_3)
      end
    end
  end
  
  L2_2 = {}
  L2_2.name = "loadingProgress"
  L2_2.value = 0.2
  L3_2 = Runtime
  L4_2 = L3_2
  L3_2 = L3_2.dispatchEvent
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = timer
  L3_2 = L3_2.performWithDelay
  L4_2 = 600
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end

loadPlayerNetworkListener = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    
    function L0_3()
      local L0_4, L1_4, L2_4
      L0_4 = log3
      L1_4 = "Resource config loaded successfully"
      L0_4(L1_4)
      L0_4 = Runtime
      L1_4 = L0_4
      L0_4 = L0_4.dispatchEvent
      L2_4 = {}
      L2_4.name = "loadingProgress"
      L2_4.value = 0.4
      L0_4(L1_4, L2_4)
      L0_4 = A1_2
      if L0_4 then
        L0_4 = A1_2
        L0_4()
      end
    end
    
    function L1_3()
      local L0_4, L1_4, L2_4
      L0_4 = log
      L1_4 = "Failed to load resource config:"
      L0_4(L1_4)
      L0_4 = Runtime
      L1_4 = L0_4
      L0_4 = L0_4.dispatchEvent
      L2_4 = {}
      L2_4.name = "loadingProgress"
      L2_4.value = 0.4
      L0_4(L1_4, L2_4)
      L0_4 = A1_2
      if L0_4 then
        L0_4 = A1_2
        L0_4()
      end
    end
    
    L2_3 = L23_1
    L2_3 = L2_3.loadConfig
    L3_3 = L0_3
    L4_3 = L1_3
    L2_3(L3_3, L4_3)
  end
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = log
    L2_3 = A0_3
    L1_3(L2_3)
    L1_3 = L18_1
    L1_3 = L1_3.hide
    L1_3()
    L1_3 = showSimpleDialog
    L2_3 = "Update"
    L3_3 = "Internal update failed"
    L4_3 = "Retry"
    
    function L5_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = L18_1
      L0_4 = L0_4.show
      L0_4()
      L0_4 = L19_1
      L0_4 = L0_4.checkForUpdates
      L1_4 = A0_2
      L1_4 = L1_4.modules_version
      L2_4 = L2_2
      L3_4 = dataManagerFailure
      L0_4(L1_4, L2_4, L3_4)
    end
    
    L1_3(L2_3, L3_3, L4_3, L5_3)
  end
  
  L4_2 = L19_1
  L4_2 = L4_2.checkForUpdates
  L5_2 = A0_2.modules_version
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end

updateDataManagerFiles = L25_1

function L25_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = mainPlayer
  L0_2 = L0_2.bankBuilding
  if L0_2 == nil then
    L0_2 = mainPlayer
    L0_2 = L0_2.level
    L1_2 = L2_1
    L1_2 = L1_2.UnlockLevel_Mine
    if L0_2 >= L1_2 then
      L0_2 = mainPlayer
      L1_2 = L4_1
      L2_2 = L1_2
      L1_2 = L1_2.new
      L3_2 = {}
      L3_2.id = 2
      L4_2 = L5_1
      L4_2 = L4_2["Bank Building"]
      L3_2.name = L4_2
      L4_2 = L5_1
      L4_2 = L4_2["bank description"]
      L3_2.description = L4_2
      L3_2.maxLevel = 7
      L4_2 = L2_1
      L4_2 = L4_2.Path_MissingImage
      L3_2.image = L4_2
      L3_2.buildingType = "bank"
      L1_2 = L1_2(L2_2, L3_2)
      L0_2.bankBuilding = L1_2
      L0_2 = mainPlayer
      L0_2 = L0_2.bankBuilding
      L0_2.level = 1
      L0_2 = mainPlayer
      L0_2 = L0_2.bankBuilding
      L0_2.gold = 0
    end
  end
end

updatePlayerBankBuilding = L25_1

function L25_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = log3
  L1_2 = "Update gold building "
  L0_2(L1_2)
  L0_2 = mainPlayer
  L0_2 = L0_2.goldBuilding
  if L0_2 == nil then
    L0_2 = mainPlayer
    L0_2 = L0_2.level
    L1_2 = L2_1
    L1_2 = L1_2.UnlockLevel_Mine
    if L0_2 >= L1_2 then
      L0_2 = mainPlayer
      L1_2 = L4_1
      L2_2 = L1_2
      L1_2 = L1_2.new
      L3_2 = {}
      L3_2.id = 1
      L4_2 = L5_1
      L4_2 = L4_2["Gold Building"]
      L3_2.name = L4_2
      L4_2 = L5_1
      L4_2 = L4_2["gold description"]
      L3_2.description = L4_2
      L3_2.maxLevel = 4
      L4_2 = L2_1
      L4_2 = L4_2.Path_MissingImage
      L3_2.image = L4_2
      L3_2.buildingType = "gold"
      L1_2 = L1_2(L2_2, L3_2)
      L0_2.goldBuilding = L1_2
      L0_2 = mainPlayer
      L0_2 = L0_2.goldBuilding
      L0_2.level = 1
      L0_2 = mainPlayer
      L0_2 = L0_2.goldBuilding
      L1_2 = {}
      L0_2.assignedCards = L1_2
    end
  end
end

updatePlayerGoldBuilding = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L8_1
  L2_2 = L2_2.logEvent
  L3_2 = "Collection Called"
  L2_2(L3_2)
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "Get Collection"
    L4_3 = A1_2
    L5_3 = {}
    L6_3 = "collection"
    L5_3[1] = L6_3
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
    if L1_3 then
      L3_3 = A0_2
      if L3_3 ~= nil then
        L3_3 = A0_2
        L4_3 = L2_3.collection
        L3_3(L4_3)
      end
    end
  end
  
  L3_2 = network
  L3_2 = L3_2.request
  L4_2 = L2_1
  L4_2 = L4_2.API_Path
  L5_2 = L2_1
  L5_2 = L5_2.API_CardCollection
  L4_2 = L4_2 .. L5_2
  L5_2 = "POST"
  L6_2 = L2_2
  L7_2 = nil
  L8_2 = "get card collection"
  L9_2 = nil
  L10_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end

getCardCollection = L25_1

function L25_1(A0_2)
  local L1_2
  L1_2 = A0_2.positionInTribe
  if L1_2 == 0 then
    L1_2 = ""
    return L1_2
  else
    L1_2 = A0_2.positionInTribe
    if L1_2 == 1 then
      L1_2 = L5_1
      L1_2 = L1_2.Member
      return L1_2
    else
      L1_2 = A0_2.positionInTribe
      if L1_2 == 2 then
        L1_2 = L5_1
        L1_2 = L1_2["Tribe Elder"]
        return L1_2
      else
        L1_2 = A0_2.positionInTribe
        if L1_2 == 3 then
          L1_2 = L5_1
          L1_2 = L1_2["Tribe Chief"]
          return L1_2
        else
          L1_2 = ""
          return L1_2
        end
      end
    end
  end
end

getPositionInTribe = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L8_1
  L2_2 = L2_2.logEvent
  L3_2 = "Collect Mine Gold Called"
  L2_2(L3_2)
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "Collect Gold"
    L4_3 = A1_2
    L5_3 = {}
    L6_3 = "player_gold"
    L7_3 = "last_gold_collect_at"
    L8_3 = "collected_gold"
    L5_3[1] = L6_3
    L5_3[2] = L7_3
    L5_3[3] = L8_3
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3, L5_3)
    if L1_3 then
      L3_3 = mainPlayer
      L4_3 = mainPlayer
      L4_3 = L4_3.gold
      L3_3.previousGoldAmount = L4_3
      L3_3 = mainPlayer
      L4_3 = L2_3.player_gold
      L3_3.gold = L4_3
      L3_3 = mainPlayer
      L4_3 = L2_3.last_gold_collect_at
      L3_3.lastGoldCollectAt = L4_3
      L3_3 = L2_3.gold_collection_allowed
      if L3_3 then
        L3_3 = mainPlayer
        L4_3 = L2_3.gold_collection_allowed
        L3_3.goldCollectionAllowed = L4_3
      else
        L3_3 = mainPlayer
        L3_3.goldCollectionAllowed = false
      end
      L3_3 = L2_3.gold_collection_allowed_at
      if L3_3 then
        L3_3 = mainPlayer
        L4_3 = L2_3.gold_collection_allowed_at
        L3_3.goldCollectionAllowedAt = L4_3
      end
      L3_3 = L2_3.gold_collection_extraction
      if L3_3 then
        L3_3 = mainPlayer
        L4_3 = L2_3.gold_collection_extraction
        L3_3.goldCollectionExtraction = L4_3
      end
      L3_3 = A0_2
      if L3_3 ~= nil then
        L3_3 = A0_2
        L4_3 = L2_3.collected_gold
        L3_3(L4_3)
      end
    end
  end
  
  L3_2 = network
  L3_2 = L3_2.request
  L4_2 = L2_1
  L4_2 = L4_2.API_Path
  L5_2 = L2_1
  L5_2 = L5_2.API_CollectGold
  L4_2 = L4_2 .. L5_2
  L5_2 = "POST"
  L6_2 = L2_2
  L7_2 = nil
  L8_2 = "collect gold"
  L9_2 = nil
  L10_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end

collectGold = L25_1

function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = checkValidityAssert
  L4_2 = A0_2
  L5_2 = "submitCaptchaResult, first parameter must be the answer to the captcha"
  L6_2 = _NAME
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = log3
  L3_2()
  L3_2 = L8_1
  L3_2 = L3_2.logEvent
  L4_2 = "Captcha entered"
  L3_2(L4_2)
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "Submit Captcha"
    L4_3 = A2_2
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L2_3 = A1_2
      if L2_3 ~= nil then
        L2_3 = A1_2
        L2_3()
      end
    end
  end
  
  L4_2 = {}
  L5_2 = L2_1
  L5_2 = L5_2.Player_CaptchaKey
  L4_2[L5_2] = A0_2
  L5_2 = {}
  L5_2.body = L4_2
  L6_2 = network
  L6_2 = L6_2.getDefaultHeader
  L6_2 = L6_2()
  L5_2.headers = L6_2
  L6_2 = network
  L6_2 = L6_2.request
  L7_2 = L2_1
  L7_2 = L7_2.API_Path
  L8_2 = L2_1
  L8_2 = L8_2.API_SubmitCaptcha
  L7_2 = L7_2 .. L8_2
  L8_2 = "POST"
  L9_2 = L3_2
  L10_2 = L5_2
  L11_2 = "submit captcha result"
  L12_2 = nil
  L13_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

submitCaptchaResult = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "xpForNextLevel, first parameter must be the level and it must be a number"
  L4_2 = _NAME
  L5_2 = "number"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = math
  L1_2 = L1_2.ceil
  L2_2 = math
  L2_2 = L2_2.pow
  L3_2 = A0_2
  L4_2 = L2_1
  L4_2 = L4_2.Player_LevelExpo
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_1
  L3_2 = L3_2.Player_LevelMultiplier
  L2_2 = L2_2 * L3_2
  L1_2 = L1_2(L2_2)
  return L1_2
end

xpForNextLevel = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "xpTillLevelUp, a player object needs to be provided"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = checkValidityAssert
  L2_2 = A0_2.level
  L3_2 = "xpTillLevelUp, a valid player object needs to be provided that has a level (number)"
  L4_2 = _NAME
  L5_2 = "number"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = checkValidityAssert
  L2_2 = A0_2.xp
  L3_2 = "xpTillLevelUp, a valid player object needs to be provided that has a xp (number)"
  L4_2 = _NAME
  L5_2 = "number"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = xpForNextLevel
  L2_2 = A0_2.level
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.xp
  L1_2 = L1_2 - L2_2
  return L1_2
end

xpTillLevelUp = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "levelProgress, a player object needs to be provided"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = checkValidityAssert
  L2_2 = A0_2.level
  L3_2 = "levelProgress, a valid player object needs to be provided that has a level (number)"
  L4_2 = _NAME
  L5_2 = "number"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = checkValidityAssert
  L2_2 = A0_2.xp
  L3_2 = "levelProgress, a valid player object needs to be provided that has a xp (number)"
  L4_2 = _NAME
  L5_2 = "number"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = levelProgressForLevelAndXP
  L2_2 = A0_2.level
  L3_2 = A0_2.xp
  return L1_2(L2_2, L3_2)
end

levelProgress = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2 - 1
  L3_2 = nil
  if L2_2 == 0 then
    L3_2 = 0
  else
    L4_2 = xpForNextLevel
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  end
  L4_2 = A1_2 - L3_2
  L5_2 = xpForNextLevel
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2 - L3_2
  L4_2 = L4_2 / L5_2
  L4_2 = L4_2 * 100
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = L4_2
  return L5_2(L6_2)
end

levelProgressForLevelAndXP = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "numberOfCards, a player object needs to be provided"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = checkValidityAssert
  L2_2 = A0_2.cards
  L3_2 = "numberOfCards, a valid player object needs to be provided that has a cards (table)"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L7_1
  L1_2 = L1_2.lengthOfTable
  L2_2 = A0_2.cards
  return L1_2(L2_2)
end

numberOfCards = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "numberOfAvailableCards, a player object needs to be provided"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = checkValidityAssert
  L2_2 = A0_2.cards
  L3_2 = "numberOfAvailableCards, a valid player object needs to be provided that has a cards (table)"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2.cards
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.cooldownRemaining
    L7_2 = L7_2(L8_2)
    if L7_2 <= 0 then
      L7_2 = L6_2.cardUsedForBuilding
      if L7_2 == false then
        L1_2 = L1_2 + 1
      end
    end
  end
  return L1_2
end

numberOfAvailableCards = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L8_1
  L2_2 = L2_2.logEvent
  L3_2 = "Collect FB Reward Called"
  L2_2(L3_2)
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "Claim FB Reward"
    L4_3 = A1_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L2_3.player_gold
      if L3_3 ~= nil then
        L3_3 = mainPlayer
        L4_3 = L2_3.player_gold
        L3_3.gold = L4_3
      end
      L3_3 = A0_2
      if L3_3 ~= nil then
        L3_3 = A0_2
        L3_3()
      end
    end
  end
  
  L3_2 = network
  L3_2 = L3_2.request
  L4_2 = L2_1
  L4_2 = L4_2.API_Path
  L5_2 = L2_1
  L5_2 = L5_2.API_ClaimFBReward
  L4_2 = L4_2 .. L5_2
  L5_2 = "POST"
  L6_2 = L2_2
  L7_2 = nil
  L8_2 = "claim FB Reward"
  L9_2 = nil
  L10_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end

claimFBReward = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L8_1
  L2_2 = L2_2.logEvent
  L3_2 = "Collect Instagram Reward Called"
  L2_2(L3_2)
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "Claim Instagram Reward"
    L4_3 = A1_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L2_3.player_gold
      if L3_3 ~= nil then
        L3_3 = mainPlayer
        L4_3 = L2_3.player_gold
        L3_3.gold = L4_3
      end
      L3_3 = A0_2
      if L3_3 ~= nil then
        L3_3 = A0_2
        L3_3()
      end
    end
  end
  
  L3_2 = network
  L3_2 = L3_2.request
  L4_2 = L2_1
  L4_2 = L4_2.API_Path
  L5_2 = L2_1
  L5_2 = L5_2.API_ClaimInstagramReward
  L4_2 = L4_2 .. L5_2
  L5_2 = "POST"
  L6_2 = L2_2
  L7_2 = nil
  L8_2 = "claim Instagram Reward"
  L9_2 = nil
  L10_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end

claimInstagramReward = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "loadSettings, a player object needs to be provided"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = system
  L1_2 = L1_2.pathForFile
  L2_2 = L2_1
  L2_2 = L2_2.Path_SettingsFile
  L3_2 = system
  L3_2 = L3_2.DocumentsDirectory
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = io
  L2_2 = L2_2.open
  L3_2 = L1_2
  L4_2 = "r+"
  L2_2 = L2_2(L3_2, L4_2)
  file = L2_2
  L2_2 = file
  if L2_2 == nil then
    L2_2 = log2
    L3_2 = "settings file not found, creating"
    L2_2(L3_2)
    A0_2.isFirstOppening = true
    L2_2 = io
    L2_2 = L2_2.open
    L3_2 = L1_2
    L4_2 = "w+"
    L2_2 = L2_2(L3_2, L4_2)
    file = L2_2
  end
  L2_2 = file
  L3_2 = L2_2
  L2_2 = L2_2.read
  L4_2 = "*a"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = io
  L3_2 = L3_2.close
  L4_2 = file
  L3_2(L4_2)
  L3_2 = L1_1
  L3_2 = L3_2.decode
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = {}
  end
  A0_2.settings = L3_2
end

loadSettings = L25_1

function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = checkValidityAssert
  L4_2 = A0_2
  L5_2 = "setSettingForKey, a player object needs to be provided"
  L6_2 = _NAME
  L7_2 = "table"
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2.settings
  if L3_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.loadSettings
    L3_2(L4_2)
  end
  L3_2 = A0_2.settings
  L3_2[A1_2] = A2_2
end

setSettingForKey = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = system
  L1_2 = L1_2.pathForFile
  L2_2 = L2_1
  L2_2 = L2_2.Path_SettingsFile
  L3_2 = system
  L3_2 = L3_2.DocumentsDirectory
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = io
  L2_2 = L2_2.open
  L3_2 = L1_2
  L4_2 = "w"
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.write
  L5_2 = L1_1
  L5_2 = L5_2.encode
  L6_2 = A0_2.settings
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = io
  L3_2 = L3_2.close
  L4_2 = L2_2
  L3_2(L4_2)
  L2_2 = nil
end

saveSettings = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "isSeenCardWithId, a base card id needs to be provided"
  L4_2 = _NAME
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = pairs
  L2_2 = mainPlayer
  L2_2 = L2_2.collection
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if A0_2 == L5_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = false
  return L1_2
end

isSeenCardWithId = L25_1

function L25_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = network
  L0_2 = L0_2.request
  L1_2 = L2_1
  L1_2 = L1_2.API_Path
  L2_2 = L2_1
  L2_2 = L2_2.API_PlayerComeback
  L1_2 = L1_2 .. L2_2
  L2_2 = "POST"
  L3_2 = nil
  L4_2 = nil
  L5_2 = "player comback"
  L6_2 = nil
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = log3
    L1_3 = "failed to call player comeback API"
    L0_3(L1_3)
  end
  
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end

playerComeback = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "haveCardWithId, a base card id needs to be provided"
  L4_2 = _NAME
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = pairs
  L2_2 = mainPlayer
  L2_2 = L2_2.cards
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.baseId
    if L6_2 == A0_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = false
  return L1_2
end

haveCardWithId = L25_1

function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = checkValidityAssert
  L4_2 = A0_2
  L5_2 = "checkPlayerCurrency, a player object needs to be provided"
  L6_2 = _NAME
  L7_2 = "table"
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = checkValidityAssert
  L4_2 = A1_2
  L5_2 = "checkPlayerCurrency, the amount to compare against needs to be provided to the function"
  L6_2 = _NAME
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.gold
  L4_2 = nil
  if A2_2 then
    L3_2 = A0_2.nectar
    L4_2 = true
  end
  if A1_2 > L3_2 then
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      
      L0_3 = L9_1
      L0_3 = L0_3.gotoScene
      L1_3 = "Scenes.Shop"
      L2_3 = {}
      L3_3 = {}
      L3_3.selectedTab = 1
      L4_3 = L4_2
      L3_3.scrollingToNectarPacks = L4_3
      L2_3.params = L3_3
      L0_3(L1_3, L2_3)
    end
    
    L6_2 = "You need more money"
    L7_2 = "Get Gold"
    if A2_2 then
      L6_2 = "You need more nectar"
      L7_2 = "Get Nectar"
    end
    L8_2 = showSimpleDialog
    L9_2 = "Shop"
    L10_2 = L5_1
    L10_2 = L10_2.localizedString
    L11_2 = L6_2
    L12_2 = {}
    L13_2 = L5_1
    L13_2 = L13_2.adjustNumber
    L14_2 = A1_2 - L3_2
    L13_2 = L13_2(L14_2)
    L12_2.money = L13_2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = "Cancel"
    L12_2 = nil
    L13_2 = L7_2
    
    function L14_2()
      local L0_3, L1_3
      L0_3 = L5_2
      L0_3()
    end
    
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L8_2 = false
    return L8_2
  end
  L5_2 = true
  return L5_2
end

checkPlayerCurrency = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = _storeType
  if L1_2 ~= "appstore" then
    L1_2 = _storeType
    if L1_2 ~= "google" then
      goto lbl_19
    end
  end
  L1_2 = {}
  L1_2.iOSAppId = "com.tod.fruitybattles"
  L2_2 = {}
  L3_2 = "google"
  L2_2[1] = L3_2
  L1_2.supportedAndroidStores = L2_2
  L2_2 = native
  L2_2 = L2_2.showPopup
  L3_2 = "appStore"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  goto lbl_34
  ::lbl_19::
  L1_2 = _storeType
  if L1_2 == "bazar" then
    L1_2 = L9_1
    L1_2 = L1_2.hideOverlay
    L1_2()
    L1_2 = todNative
    L1_2 = L1_2.showCafeBaazaarRatingActivity
    L1_2()
  else
    L1_2 = system
    L1_2 = L1_2.openURL
    L2_2 = L2_1
    L2_2 = L2_2.Path_AppLinkInStore
    L1_2(L2_2)
  end
  ::lbl_34::
  L1_2 = mainPlayer
  L2_2 = L1_2
  L1_2 = L1_2.setSettingForKey
  L3_2 = "rated"
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = mainPlayer
  L2_2 = L1_2
  L1_2 = L1_2.saveSettings
  L1_2(L2_2)
end

rateMeNow = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L2_1
  L3_2 = L2_1
  L3_2 = L3_2.RATING_WINNER_DIVISOR
  L3_2 = L3_2 + 10
  L2_2.RATING_WINNER_DIVISOR = L3_2
  L2_2 = L9_1
  L2_2 = L2_2.gotoScene
  L3_2 = A1_2
  L2_2(L3_2)
  L2_2 = true
  return L2_2
end

rateMeLater = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = mainPlayer
  L2_2 = L2_2.settings
  L2_2 = L2_2.rated
  if L2_2 == nil then
    L2_2 = mainPlayer
    L3_2 = L2_2
    L2_2 = L2_2.setSettingForKey
    L4_2 = "rated"
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = mainPlayer
    L3_2 = L2_2
    L2_2 = L2_2.saveSettings
    L2_2(L3_2)
  end
  L2_2 = mainPlayer
  L2_2 = L2_2.settings
  L2_2 = L2_2.rated
  if L2_2 == false then
    L2_2 = showSimpleDialog
    L3_2 = L5_1
    L3_2 = L3_2["Rate Title"]
    L4_2 = L5_1
    L4_2 = L4_2["Rating Message"]
    L5_2 = L5_1
    L5_2 = L5_2["Rate Now Button"]
    L6_2 = rateMeNow
    L7_2 = L5_1
    L7_2 = L7_2["Rate Later Button"]
    
    function L8_2()
      local L0_3, L1_3, L2_3
      L0_3 = rateMeLater
      L1_3 = A0_2
      L2_3 = A1_2
      L0_3(L1_3, L2_3)
    end
    
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end

showRateOverlay = L25_1

function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = log3
    L2_3 = " \226\128\161\226\128\161\226\128\161\226\128\161\226\128\161\226\128\161\226\128\161\226\128\161 in Fill Potion event handler function"
    L1_3(L2_3)
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "fillPotion"
    L4_3 = A2_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L2_3.gold
      if L3_3 then
        L3_3 = L2_3.potion_number
        if L3_3 then
          L3_3 = mainPlayer
          L4_3 = L2_3.gold
          L3_3.gold = L4_3
          L3_3 = mainPlayer
          L4_3 = L2_3.potion_number
          L3_3.potionAmount = L4_3
          L3_3 = log3
          L4_3 = " \194\167\194\167\194\167 PLAYER Potion Amount AFTER CALLING API :::"
          L5_3 = mainPlayer
          L5_3 = L5_3.potionAmount
          L3_3(L4_3, L5_3)
      end
      else
        L3_3 = log
        L4_3 = "Network error! The response did not contain proper values:"
        L5_3 = A0_3.response
        L4_3 = L4_3 .. L5_3
        L3_3(L4_3)
        L3_3 = A2_2
        if L3_3 ~= nil then
          L3_3 = A2_2
          L4_3 = "Response did not contain required fields"
          L3_3(L4_3)
        end
        return
      end
      L3_3 = A1_2
      if L3_3 ~= nil then
        L3_3 = A1_2
        L3_3()
      end
    end
  end
  
  L4_2 = {}
  L4_2.amount = A0_2
  L5_2 = {}
  L5_2.body = L4_2
  L6_2 = network
  L6_2 = L6_2.request
  L7_2 = L2_1
  L7_2 = L7_2.API_Path
  L8_2 = L2_1
  L8_2 = L8_2.API_PLAYER_FILL_POTION
  L7_2 = L7_2 .. L8_2
  L8_2 = "POST"
  L9_2 = L3_2
  L10_2 = L5_2
  L11_2 = "fillPotion"
  L12_2 = nil
  L13_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

fillPotion = L25_1

function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = log3
    L2_3 = " \226\128\161\226\128\161\226\128\161\226\128\161\226\128\161\226\128\161\226\128\161\226\128\161 in Withdraw From Bank event handler function"
    L1_3(L2_3)
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "withdrawFromBank"
    L4_3 = A2_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L2_3.player_gold
      if L3_3 then
        L3_3 = mainPlayer
        L4_3 = L2_3.player_gold
        L3_3.gold = L4_3
      end
      L3_3 = L2_3.bank_account_balance
      if L3_3 then
        L3_3 = mainPlayer
        L3_3 = L3_3.bankBuilding
        L4_3 = L2_3.bank_account_balance
        L3_3.gold = L4_3
      end
      L3_3 = A1_2
      if L3_3 then
        L3_3 = A1_2
        L3_3()
      end
    end
  end
  
  L4_2 = {}
  L4_2.amount = A0_2
  L5_2 = {}
  L5_2.body = L4_2
  L6_2 = network
  L6_2 = L6_2.request
  L7_2 = L2_1
  L7_2 = L7_2.API_Path
  L8_2 = L2_1
  L8_2 = L8_2.API_WithdrawFromBank
  L7_2 = L7_2 .. L8_2
  L8_2 = "POST"
  L9_2 = L3_2
  L10_2 = L5_2
  L11_2 = "withdrawFromBank"
  L12_2 = nil
  L13_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

withdrawFromBank = L25_1

function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "coach"
    L4_3 = A2_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L2_3.coaching
      if L3_3 then
        L3_3 = L2_3.coaching
        L3_3 = L3_3.tribe_id
        if L3_3 then
          L3_3 = mainPlayer
          L4_3 = L2_3.coaching
          L4_3 = L4_3.tribe_id
          L3_3.coachTribeID = L4_3
        end
        L3_3 = L2_3.coaching
        L3_3 = L3_3.trained_players
        if L3_3 then
          L3_3 = mainPlayer
          L4_3 = L2_3.coaching
          L4_3 = L4_3.trained_players
          L3_3.numberOfTrainedPlayers = L4_3
        end
      end
      L3_3 = L2_3.coach_status
      if L3_3 then
        L3_3 = mainPlayer
        L4_3 = L2_3.coach_status
        L3_3.trainer = L4_3
      else
        L3_3 = mainPlayer
        L3_3.trainer = false
      end
      L3_3 = A1_2
      if L3_3 then
        L3_3 = A1_2
        L3_3()
      end
    end
  end
  
  L4_2 = {}
  L4_2.make_me_coach = A0_2
  L5_2 = {}
  L5_2.body = L4_2
  L6_2 = network
  L6_2 = L6_2.request
  L7_2 = L2_1
  L7_2 = L7_2.API_Path
  L8_2 = L2_1
  L8_2 = L8_2.API_TribeCoach
  L7_2 = L7_2 .. L8_2
  L8_2 = "POST"
  L9_2 = L3_2
  L10_2 = L5_2
  L11_2 = "Coach"
  L12_2 = nil
  L13_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

coach = L25_1

function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "redeemRewardCode"
    L4_3 = A2_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = nil
      L4_3 = nil
      L5_3 = nil
      L6_3 = L2_3.added_gold
      if L6_3 then
        L3_3 = L2_3.added_gold
      end
      L6_3 = L2_3.added_nectar
      if L6_3 then
        L4_3 = L2_3.added_nectar
      end
      L6_3 = L2_3.added_potion
      if L6_3 then
        L5_3 = L2_3.added_potion
      end
      L6_3 = L2_3.gold
      if L6_3 then
        L6_3 = mainPlayer
        L7_3 = L2_3.gold
        L6_3.gold = L7_3
      end
      L6_3 = L2_3.nectar
      if L6_3 then
        L6_3 = mainPlayer
        L7_3 = L2_3.nectar
        L6_3.nectar = L7_3
      end
      L6_3 = L2_3.potion
      if L6_3 then
        L6_3 = mainPlayer
        L7_3 = L2_3.potion
        L6_3.potionAmount = L7_3
      end
      L6_3 = A1_2
      if L6_3 then
        L6_3 = A1_2
        L7_3 = L3_3
        L8_3 = L4_3
        L9_3 = L5_3
        L6_3(L7_3, L8_3, L9_3)
      end
    end
  end
  
  L4_2 = {}
  L4_2.code = A0_2
  L5_2 = {}
  L5_2.body = L4_2
  L6_2 = network
  L6_2 = L6_2.request
  L7_2 = L2_1
  L7_2 = L7_2.API_Path
  L8_2 = L2_1
  L8_2 = L8_2.API_RedeemGift
  L7_2 = L7_2 .. L8_2
  L8_2 = "POST"
  L9_2 = L3_2
  L10_2 = L5_2
  L11_2 = "redeemRewardCode"
  L12_2 = nil
  L13_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

redeemRewardCode = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "setHeroesDetails"
    L4_3 = A1_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L2_3.gold
      if L3_3 then
        L3_3 = mainPlayer
        L4_3 = L2_3.gold
        L3_3.gold = L4_3
      end
      L3_3 = L2_3.nectar
      if L3_3 then
        L3_3 = mainPlayer
        L4_3 = L2_3.nectar
        L3_3.nectar = L4_3
      end
      L3_3 = A0_2
      if L3_3 then
        L3_3 = A0_2
        L3_3()
      end
    end
  end
  
  L3_2 = {}
  L4_2 = mainPlayer
  L4_2 = L4_2.activeHeroID
  L3_2.default_hero_id = L4_2
  L4_2 = {}
  L5_2 = pairs
  L6_2 = mainPlayer
  L6_2 = L6_2.heroSet
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = {}
    L11_2 = L9_2.id
    L10_2.hero_id = L11_2
    L11_2 = L9_2.items
    L10_2.items = L11_2
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L4_2
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
  end
  L5_2 = L1_1
  L5_2 = L5_2.encode
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L3_2.hero_details = L5_2
  L5_2 = {}
  L5_2.body = L3_2
  L6_2 = network
  L6_2 = L6_2.request
  L7_2 = L2_1
  L7_2 = L7_2.API_Path
  L8_2 = L2_1
  L8_2 = L8_2.API_SetHeroItems
  L7_2 = L7_2 .. L8_2
  L8_2 = "POST"
  L9_2 = L2_2
  L10_2 = L5_2
  L11_2 = "setHeroesDetails"
  L12_2 = nil
  L13_2 = A1_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

setHeroesDetails = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "turnTheWheel"
    L4_3 = A1_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L2_3.gold
      if L3_3 then
        L3_3 = mainPlayer
        L4_3 = L2_3.gold
        L3_3.gold = L4_3
      end
      L3_3 = L2_3.nectar
      if L3_3 then
        L3_3 = mainPlayer
        L4_3 = L2_3.nectar
        L3_3.nectar = L4_3
      end
      L3_3 = {}
      L4_3 = L2_3.won_prize_number
      if L4_3 then
        L4_3 = tostring
        L5_3 = L2_3.won_prize_number
        L4_3 = L4_3(L5_3)
        L3_3.wonPrizeIndex = L4_3
      end
      L4_3 = L2_3.prizes
      if L4_3 then
        L4_3 = {}
        L3_3.prizes = L4_3
        L4_3 = pairs
        L5_3 = L2_3.prizes
        L4_3, L5_3, L6_3 = L4_3(L5_3)
        for L7_3, L8_3 in L4_3, L5_3, L6_3 do
          L9_3 = L3_3.prizes
          L10_3 = {}
          L9_3[L7_3] = L10_3
          L9_3 = L3_3.prizes
          L9_3 = L9_3[L7_3]
          L9_3.index = L7_3
          L9_3 = L3_3.prizes
          L9_3 = L9_3[L7_3]
          L10_3 = L8_3.gold
          L9_3.gold = L10_3
          L9_3 = L3_3.prizes
          L9_3 = L9_3[L7_3]
          L10_3 = L8_3.nectar
          L9_3.nectar = L10_3
        end
      end
      L4_3 = A0_2
      if L4_3 then
        L4_3 = A0_2
        L5_3 = L3_3
        L4_3(L5_3)
      end
    end
  end
  
  L3_2 = {}
  L4_2 = L2_1
  L4_2 = L4_2.StoreID
  L3_2.store = L4_2
  L4_2 = require
  L5_2 = "crypto"
  L4_2 = L4_2(L5_2)
  L5_2 = L2_1
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
  L7_2 = L2_1
  L7_2 = L7_2.API_Path
  L8_2 = L2_1
  L8_2 = L8_2.API_TURN_THE_WHEEL
  L7_2 = L7_2 .. L8_2
  L8_2 = "POST"
  L9_2 = L2_2
  L10_2 = L5_2
  L11_2 = "turnTheWheel"
  L12_2 = nil
  L13_2 = A1_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

turnTheWheel = L25_1
