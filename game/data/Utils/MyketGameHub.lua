local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Language"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.base64"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Views.NotificationView"
L2_1 = L2_1(L3_1)
L3_1 = "fruit-craft"
L4_1 = false
L5_1 = false
isConnected = L5_1
L5_1 = ""
lastSessionId = L5_1
L5_1 = 0
shownLoginNotifications = L5_1
L5_1 = ""
UserGameId = L5_1
L5_1 = -1
MyketRank = L5_1
L5_1 = 0
MyketScore = L5_1
L5_1 = nil
RankFetchedCallback = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = print
  L3_2 = "myketGameHub/GeneralCallback: methodName = "
  L4_2 = A0_2
  L5_2 = ", methodParam = "
  L6_2 = A1_2
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L2_2(L3_2)
  if A0_2 == "gameIdFailed" then
    L2_2 = false
    isConnected = L2_2
  end
  if A0_2 == "gameIdSucceeded" then
    UserGameId = A1_2
    L2_2 = refreshRankAndScore
    L2_2()
  end
  if A0_2 == "devApiNotSupported" then
    L2_2 = false
    isConnected = L2_2
    L2_2 = L4_1
    if L2_2 == false then
      L2_2 = showSimpleDialog
      L3_2 = "\217\132\219\140\218\175 \217\133\216\167\219\140\218\169\216\170"
      L4_2 = "\216\168\216\177\216\167\219\140 \216\180\216\177\218\169\216\170 \216\175\216\177 \217\132\219\140\218\175 \217\133\216\167\219\140\218\169\216\170 \217\134\219\140\216\167\216\178 \216\167\216\179\216\170 \218\169\217\135 \217\134\216\179\216\174\217\135 \217\133\216\167\219\140\218\169\216\170 \216\174\217\136\216\175 \216\177\216\167 \216\168\217\135 \216\177\217\136\216\178 \216\177\216\179\216\167\217\134\219\140 \217\134\217\133\216\167\219\140\219\140\216\175"
      L5_2 = L0_1
      L5_2 = L5_2.OK
      
      function L6_2()
        local L0_3, L1_3, L2_3
        L0_3 = system
        L0_3 = L0_3.openURL
        L1_3 = L1_1
        L1_3 = L1_3.decode
        L2_3 = "aHR0cHM6Ly9teWtldC5pci8="
        L1_3, L2_3 = L1_3(L2_3)
        L0_3(L1_3, L2_3)
      end
      
      L7_2 = L0_1
      L7_2 = L7_2.Cancel
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    end
  end
  if A0_2 == "devApiSupported" then
    L2_2 = getGameId
    L2_2()
  end
end

myketGameHubGeneralCallback = L5_1

function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = getUserInfo
  
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = print
    L1_3 = "myketGameHub/UserInfo: Success score = "
    L2_3 = MyketScore
    L1_3 = L1_3 .. L2_3
    L0_3(L1_3)
    L0_3 = true
    isConnected = L0_3
  end
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = print
    L1_3 = "myketGameHub/UserInfo: Failed"
    L0_3(L1_3)
    L0_3 = L4_1
    if L0_3 == false then
      L0_3 = showSimpleDialog
      L1_3 = "\217\132\219\140\218\175 \217\133\216\167\219\140\218\169\216\170"
      L2_3 = "\216\168\216\177\216\167\219\140 \216\180\216\177\218\169\216\170 \216\175\216\177 \217\132\219\140\218\175 \217\133\216\167\219\140\218\169\216\170 \217\134\219\140\216\167\216\178 \216\167\216\179\216\170 \218\169\217\135 \216\171\216\168\216\170 \217\134\216\167\217\133 \218\169\217\134\219\140\216\175"
      L3_3 = L0_1
      L3_3 = L3_3.Register
      
      function L4_3()
        local L0_4, L1_4
        L0_4 = registerIntent
        L0_4()
      end
      
      L5_3 = L0_1
      L5_3 = L5_3.Cancel
      
      function L6_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = showSimpleDialog
        L1_4 = "\217\132\219\140\218\175 \217\133\216\167\219\140\218\169\216\170"
        L2_4 = "\216\168\216\177\216\167\219\140 \216\180\216\177\218\169\216\170 \216\175\216\177 \217\132\219\140\218\175 \217\133\216\167\219\140\218\169\216\170 \217\134\219\140\216\167\216\178 \216\167\216\179\216\170 \218\169\217\135 \216\171\216\168\216\170 \217\134\216\167\217\133 \218\169\217\134\219\140\216\175"
        L3_4 = L0_1
        L3_4 = L3_4.OK
        L0_4(L1_4, L2_4, L3_4)
      end
      
      L7_3 = false
      L8_3 = {}
      L8_3.imageName = "Liveops/myket_banner_dakheli.jpg"
      L8_3.bgWidth = 400
      L8_3.bgHeight = 280
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    end
  end
  
  L0_2(L1_2, L2_2)
end

refreshRankAndScore = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = os
  L0_2 = L0_2.time
  L0_2 = L0_2()
  L1_2 = Constants
  L1_2 = L1_2.StoreCompeition_Myket_StartTimestamp
  if not (L0_2 < L1_2) then
    L1_2 = Constants
    L1_2 = L1_2.StoreCompeition_Myket_EndTimestamp
    if not (L0_2 > L1_2) then
      goto lbl_14
    end
  end
  L1_2 = 0
  do return L1_2 end
  ::lbl_14::
  L1_2 = Constants
  L1_2 = L1_2.StoreCompeition_Myket_EndTimestamp
  L1_2 = L1_2 - L0_2
  return L1_2
end

getRemainingTimeInSeconds = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = Constants
  L0_2 = L0_2.StoreCompeition_Myket_Active
  L0_2 = L0_2 ~= 0
  return L0_2
end

isActive = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = todNative
  if L1_2 == nil then
    L1_2 = showSimpleDialog
    L2_2 = "Device Required"
    L3_2 = "This function is only available on a real android device"
    L1_2(L2_2, L3_2)
    return
  end
  L4_1 = A0_2
  L1_2 = todNative
  L1_2 = L1_2.myketGamehubCallback
  L2_2 = myketGameHubGeneralCallback
  L1_2(L2_2)
  L1_2 = todNative
  L1_2 = L1_2.myketGameHub
  L2_2 = {}
  L2_2.operation = "Init"
  L1_2(L2_2)
end

init = L5_1

function L5_1()
  local L0_2, L1_2
  L0_2 = todNative
  if L0_2 == nil then
    return
  end
  L0_2 = todNative
  L0_2 = L0_2.myketGamehubCallback
  L1_2 = myketGameHubGeneralCallback
  L0_2(L1_2)
  L0_2 = todNative
  L0_2 = L0_2.myketGameHub
  L1_2 = {}
  L1_2.operation = "GetGameId"
  L0_2(L1_2)
end

getGameId = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = UserGameId
  if L2_2 == "" then
  end
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "myketgetuser"
    L4_3 = A1_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L2_3.score
      if L3_3 == nil then
        L3_3 = log
        L4_3 = "Network error! The response did not contain proper values:"
        L5_3 = A0_3.response
        L4_3 = L4_3 .. L5_3
        L3_3(L4_3)
        L3_3 = A1_2
        if L3_3 ~= nil then
          L3_3 = A1_2
          L4_3 = "Response did not contain required fields"
          L3_3(L4_3)
          L3_3 = print
          L4_3 = L2_3.message
          L3_3(L4_3)
        end
        return
      end
      L3_3 = L2_3.rank
      if L3_3 ~= nil then
        L3_3 = L2_3.rank
        MyketRank = L3_3
        L3_3 = RankFetchedCallback
        if L3_3 ~= nil then
          L3_3 = RankFetchedCallback
          L3_3()
        end
      end
      L3_3 = L2_3.score
      MyketScore = L3_3
      L3_3 = A0_2
      if L3_3 ~= nil then
        L3_3 = A0_2
        L3_3()
      end
    end
  end
  
  L3_2 = {}
  L4_2 = UserGameId
  L3_2.UserGameId = L4_2
  L4_2 = {}
  L4_2.body = L3_2
  L5_2 = network
  L5_2 = L5_2.getDefaultHeader
  L5_2 = L5_2()
  L4_2.headers = L5_2
  L5_2 = network
  L5_2 = L5_2.request
  L6_2 = Constants
  L6_2 = L6_2.API_Path
  L7_2 = "liveops/myketgetuser"
  L6_2 = L6_2 .. L7_2
  L7_2 = "POST"
  L8_2 = L2_2
  L9_2 = L4_2
  L10_2 = "myketgetuser"
  L11_2 = nil
  L12_2 = failedDonateCallback
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end

getUserInfo = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "myketpostscore"
    L4_3 = failedGetInfoCallback
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L2_3.status
      if L3_3 ~= true then
        L3_3 = log
        L4_3 = "Network error! The request failed "
        L5_3 = A0_3.response
        L4_3 = L4_3 .. L5_3
        L3_3(L4_3)
        L3_3 = failedGetInfoCallback
        if L3_3 ~= nil then
          L3_3 = failedGetInfoCallback
          L4_3 = "Request failed"
          L3_3(L4_3)
          L3_3 = print
          L4_3 = L2_3.message
          L3_3(L4_3)
        end
        return
      end
      L3_3 = didGetInfoCallback
      if L3_3 ~= nil then
        L3_3 = didGetInfoCallback
        L3_3()
      end
    end
  end
  
  L3_2 = {}
  L4_2 = UserGameId
  L3_2.UserGameId = L4_2
  L4_2 = matchId
  L3_2.MatchId = L4_2
  L3_2.Duration = A0_2
  L3_2.Status = A1_2
  L4_2 = {}
  L4_2.body = L3_2
  L5_2 = network
  L5_2 = L5_2.getDefaultHeader
  L5_2 = L5_2()
  L4_2.headers = L5_2
  L5_2 = network
  L5_2 = L5_2.request
  L6_2 = Constants
  L6_2 = L6_2.API_Path
  L7_2 = "liveops/myketpostscore"
  L6_2 = L6_2 .. L7_2
  L7_2 = "POST"
  L8_2 = L2_2
  L9_2 = L4_2
  L10_2 = "myketpostscore"
  L11_2 = nil
  L12_2 = failedDonateCallback
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end

postScore = L5_1

function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L1_1
  L0_2 = L0_2.decode
  L1_2 = "aHR0cHM6Ly9teWtldC5pci9pbnRlbnQ/cT1teWtldDovL3RvZ28vP3VybD1odHRwcyUzQSUyRiUyRmNsdWIubXlrZXQuaXIlMkZ2MSUyRnJlZ2lzdGVyJTJG"
  L0_2 = L0_2(L1_2)
  L1_2 = L3_1
  L2_2 = "%2F"
  L3_2 = UserGameId
  L0_2 = L0_2 .. L1_2 .. L2_2 .. L3_2
  L1_2 = print
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = system
  L1_2 = L1_2.openURL
  L2_2 = L0_2
  L1_2(L2_2)
end

registerIntent = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = todNative
  if L1_2 == nil then
    return
  end
  L1_2 = L1_1
  L1_2 = L1_2.decode
  L2_2 = "aHR0cHM6Ly9teWtldC5pci9pbnRlbnQ/cT1odHRwcyUzQSUyRiUyRmNsdWIubXlrZXQuaXIlMkZ2MSUyRmxlYWRlcmJvYXJkJTJG"
  L1_2 = L1_2(L2_2)
  L2_2 = L3_1
  L3_2 = "%2F"
  L4_2 = UserGameId
  L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2
  L2_2 = print
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = system
  L2_2 = L2_2.openURL
  L3_2 = L1_2
  L2_2(L3_2)
end

showTournamentRanking = L5_1

function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = shownLoginNotifications
  if L0_2 < 3 then
    L0_2 = L2_1
    L1_2 = L0_2
    L0_2 = L0_2.new
    L2_2 = "\216\172\217\135\216\170 \216\171\216\168\216\170 \216\167\217\133\216\170\219\140\216\167\216\178 \217\134\219\140\216\167\216\178 \216\167\216\179\216\170 \216\175\216\177 \218\169\216\167\217\129\217\135 \216\168\216\167\216\178\216\167\216\177 \217\132\216\167\218\175\219\140\217\134 \218\169\217\134\219\140\216\175"
    L3_2 = nil
    L4_2 = "\218\169\216\167\217\129\217\135 \216\168\216\167\216\178\216\167\216\177"
    L5_2 = showBazaarLogin
    L6_2 = 2
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
    L0_2 = L2_1
    L0_2 = L0_2.showNotifications
    L0_2()
    L0_2 = shownLoginNotifications
    L0_2 = L0_2 + 1
    shownLoginNotifications = L0_2
  end
end

showLoginNotification = L5_1
