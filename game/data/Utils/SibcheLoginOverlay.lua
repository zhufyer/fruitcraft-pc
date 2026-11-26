local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Models.Player"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "widget"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "composer"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.ActivityIndicatorView"
L5_1 = L5_1(L6_1)
L6_1 = L4_1.newScene
L6_1 = L6_1()
L7_1 = require
L8_1 = "json"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Models.ErrorController"
L8_1 = L8_1(L9_1)
L9_1 = false

function L10_1()
  local L0_2, L1_2
  L0_2 = emailField
  L0_2.isVisible = true
  L0_2 = passwordField
  L0_2.isVisible = true
end

function L11_1()
  local L0_2, L1_2
  L0_2 = log3
  L1_2 = "!!!! HIDE !!!!"
  L0_2(L1_2)
  L0_2 = emailField
  L0_2.isVisible = false
  L0_2 = passwordField
  L0_2.isVisible = false
  L0_2 = native
  L0_2 = L0_2.setKeyboardFocus
  L1_2 = nil
  L0_2(L1_2)
end

function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.phase
  if "submitted" == L1_2 then
    L1_2 = native
    L1_2 = L1_2.setKeyboardFocus
    L2_2 = nil
    L1_2(L2_2)
  end
end

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = system
  L2_2 = L2_2.pathForFile
  L3_2 = A1_2
  L4_2 = system
  L4_2 = L4_2.DocumentsDirectory
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = io
  L3_2 = L3_2.open
  L4_2 = L2_2
  L5_2 = "w"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = L7_1
    L4_2 = L4_2.encode
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L6_2 = L3_2
    L5_2 = L3_2.write
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = io
    L5_2 = L5_2.close
    L6_2 = L3_2
    L5_2(L6_2)
    L5_2 = true
    return L5_2
  else
    L4_2 = false
    return L4_2
  end
end

saveTable = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = system
  L1_2 = L1_2.pathForFile
  L2_2 = A0_2
  L3_2 = system
  L3_2 = L3_2.DocumentsDirectory
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = ""
  L3_2 = {}
  L4_2 = io
  L4_2 = L4_2.open
  L5_2 = L1_2
  L6_2 = "r"
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L6_2 = L4_2
    L5_2 = L4_2.read
    L7_2 = "*a"
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L7_1
    L6_2 = L6_2.decode
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
    L6_2 = io
    L6_2 = L6_2.close
    L7_2 = L4_2
    L6_2(L7_2)
    return L3_2
  end
  L5_2 = nil
  return L5_2
end

loadTable = L13_1

function L13_1()
  local L0_2, L1_2, L2_2
  L0_2 = L5_1
  L0_2 = L0_2.hide
  L0_2()
  L0_2 = saveTable
  L1_2 = {}
  L2_2 = emailField
  L2_2 = L2_2.text
  L1_2.email = L2_2
  L2_2 = passwordField
  L2_2 = L2_2.text
  L1_2.password = L2_2
  L2_2 = "userAcount.json"
  L0_2(L1_2, L2_2)
  L0_2 = true
  L9_1 = L0_2
  L0_2 = delegate
  L0_2 = L0_2.userLogedIn
  L0_2()
end

successToLoginCallback = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = _G
  L1_2.notLoading = false
  L1_2 = L5_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "\217\136\216\177\217\136\216\175"
  L3_2 = A0_2
  L4_2 = nil
  
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L4_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Utils.SibcheLoginOverlay"
    L2_3 = {}
    L2_3.isModal = true
    L3_3 = {}
    L4_3 = purchaseItemUID
    L3_3.UID = L4_3
    L2_3.params = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

failedToLoginCallback = L13_1

function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L5_1
  L0_2 = L0_2.hide
  L0_2()
  L0_2 = showSimpleDialog
  L1_2 = "\217\136\216\177\217\136\216\175"
  L2_2 = "\219\140\218\169 \216\167\219\140\217\133\219\140\217\132 \216\168\217\135 \216\180\217\133\216\167 \216\167\216\177\216\179\216\167\217\132 \216\180\216\175"
  L3_2 = nil
  
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L4_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Utils.SibcheLoginOverlay"
    L2_3 = {}
    L2_3.isModal = true
    L3_3 = {}
    L4_3 = purchaseItemUID
    L3_3.UID = L4_3
    L2_3.params = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L0_2(L1_2, L2_2, L3_2, L4_2)
end

successToSendForgotMessageCallback = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = _G
  L1_2.notLoading = false
  L1_2 = L5_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "\217\136\216\177\217\136\216\175"
  L3_2 = A0_2
  L4_2 = nil
  
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L4_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Utils.SibcheLoginOverlay"
    L2_3 = {}
    L2_3.isModal = true
    L3_3 = {}
    L4_3 = purchaseItemUID
    L3_3.UID = L4_3
    L2_3.params = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

failedToSendForgotMessageCallback = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_3.isError
    if L1_3 then
      L1_3 = log
      L2_3 = "Network error! Failed cooldown card."
      L1_3(L2_3)
      L1_3 = A1_2
      if L1_3 ~= nil then
        L1_3 = A1_2
        L2_3 = "Network error"
        L1_3(L2_3)
      end
    else
      L1_3 = log3
      L2_3 = " !!!!!server Response!!!!!!"
      L3_3 = A0_3.response
      L1_3(L2_3, L3_3)
      L1_3 = L7_1
      L1_3 = L1_3.decode
      L2_3 = A0_3.response
      L1_3 = L1_3(L2_3)
      L2_3 = L1_3.status
      if L2_3 == true then
        L2_3 = A0_2
        if L2_3 ~= nil then
          L2_3 = A0_2
          L2_3()
        end
      else
        L2_3 = L1_3.status
        if L2_3 == false then
          L2_3 = L1_3.error
          if not L2_3 then
            L2_3 = "Network Response returned false status"
          end
          L3_3 = L1_3.data
          if L3_3 then
            L3_3 = L1_3.data
            L3_3 = L3_3.code
            if L3_3 then
              L3_3 = L8_1
              L3_3 = L3_3.getErrorMessage
              L4_3 = L1_3.data
              L3_3 = L3_3(L4_3)
              L2_3 = L3_3 or L2_3
              if not L3_3 then
                L3_3 = tostring
                L4_3 = L1_3.data
                L4_3 = L4_3.code
                L3_3 = L3_3(L4_3)
                L2_3 = L3_3
              end
            end
          else
            L3_3 = L1_3.error
            if L3_3 then
              L3_3 = L1_3.error
              L2_3 = L3_3 or L2_3
              if not L3_3 then
                L2_3 = "Response did not return success status"
              end
            end
          end
          L3_3 = A1_2
          if L3_3 ~= nil then
            L3_3 = A1_2
            L4_3 = L2_3
            L3_3(L4_3)
          end
        end
      end
    end
  end
  
  L3_2 = emailField
  L3_2 = L3_2.text
  if L3_2 ~= "" then
    L3_2 = emailField
    L3_2 = L3_2.text
    if L3_2 ~= nil then
      goto lbl_22
    end
  end
  L3_2 = showSimpleDialog
  L4_2 = "\217\136\216\177\217\136\216\175"
  L5_2 = "\217\190\216\179\216\170 \216\167\217\132\218\169\216\170\216\177\217\136\217\134\219\140\218\169 \216\177\216\167 \217\136\216\167\216\177\216\175 \217\134\217\133\216\167\219\140\219\140\216\175"
  L6_2 = nil
  
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = L4_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Utils.SibcheLoginOverlay"
    L2_3 = {}
    L2_3.isModal = true
    L0_3(L1_3, L2_3)
  end
  
  L3_2(L4_2, L5_2, L6_2, L7_2)
  goto lbl_181
  ::lbl_22::
  L3_2 = passwordField
  L3_2 = L3_2.text
  if L3_2 == "" then
    L3_2 = showSimpleDialog
    L4_2 = "\217\136\216\177\217\136\216\175"
    L5_2 = "\216\177\217\133\216\178 \216\185\216\168\217\136\216\177 \216\177\216\167 \217\136\216\167\216\177\216\175 \217\134\217\133\216\167\219\140\219\140\216\175"
    L6_2 = nil
    
    function L7_2()
      local L0_3, L1_3, L2_3
      L0_3 = L4_1
      L0_3 = L0_3.showOverlay
      L1_3 = "Utils.SibcheLoginOverlay"
      L2_3 = {}
      L2_3.isModal = true
      L0_3(L1_3, L2_3)
    end
    
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = "UDID="
    L4_2 = system
    L4_2 = L4_2.getInfo
    L5_2 = "deviceID"
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 .. L4_2
    postData = L3_2
    L3_2 = postData
    L4_2 = "&email="
    L5_2 = emailField
    L5_2 = L5_2.text
    L3_2 = L3_2 .. L4_2 .. L5_2
    postData = L3_2
    L3_2 = postData
    L4_2 = "&password="
    L5_2 = passwordField
    L5_2 = L5_2.text
    L3_2 = L3_2 .. L4_2 .. L5_2
    postData = L3_2
    L3_2 = postData
    L4_2 = "&icheck="
    L5_2 = "0"
    L3_2 = L3_2 .. L4_2 .. L5_2
    postData = L3_2
    L3_2 = postData
    L4_2 = "&deviceGB=-"
    L3_2 = L3_2 .. L4_2
    postData = L3_2
    L3_2 = postData
    L4_2 = "&mac="
    L5_2 = system
    L5_2 = L5_2.getInfo
    L6_2 = "deviceID"
    L5_2 = L5_2(L6_2)
    L3_2 = L3_2 .. L4_2 .. L5_2
    postData = L3_2
    L3_2 = postData
    L4_2 = "&osversion="
    L5_2 = system
    L5_2 = L5_2.getInfo
    L6_2 = "platformVersion"
    L5_2 = L5_2(L6_2)
    L3_2 = L3_2 .. L4_2 .. L5_2
    postData = L3_2
    L3_2 = postData
    L4_2 = "&devicemodel="
    L5_2 = system
    L5_2 = L5_2.getInfo
    L6_2 = "model"
    L5_2 = L5_2(L6_2)
    L3_2 = L3_2 .. L4_2 .. L5_2
    postData = L3_2
    L3_2 = postData
    L4_2 = "&gs="
    L5_2 = Constants
    L5_2 = L5_2.Sibche_APIKey
    L3_2 = L3_2 .. L4_2 .. L5_2
    postData = L3_2
    L3_2 = postData
    L4_2 = "&devicename="
    L5_2 = system
    L5_2 = L5_2.getInfo
    L6_2 = "name"
    L5_2 = L5_2(L6_2)
    L3_2 = L3_2 .. L4_2 .. L5_2
    postData = L3_2
    L3_2 = system
    L3_2 = L3_2.getInfo
    L4_2 = "platformName"
    L3_2 = L3_2(L4_2)
    L4_2 = log3
    L5_2 = "platformName"
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    if L3_2 == "iPhone OS" then
      L4_2 = postData
      L5_2 = "&client=iOS"
      L4_2 = L4_2 .. L5_2
      postData = L4_2
    elseif L3_2 == "Android" then
      L4_2 = postData
      L5_2 = "&client=Android"
      L4_2 = L4_2 .. L5_2
      postData = L4_2
    else
      L4_2 = postData
      L5_2 = "&client=iOS"
      L4_2 = L4_2 .. L5_2
      postData = L4_2
    end
    L4_2 = system
    L4_2 = L4_2.getInfo
    L5_2 = "appVersionString"
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = string
      L4_2 = L4_2.len
      L5_2 = system
      L5_2 = L5_2.getInfo
      L6_2 = "appVersionString"
      L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      if 0 < L4_2 then
        L4_2 = postData
        L5_2 = "&storeversion="
        L6_2 = system
        L6_2 = L6_2.getInfo
        L7_2 = "appVersionString"
        L6_2 = L6_2(L7_2)
        L4_2 = L4_2 .. L5_2 .. L6_2
        postData = L4_2
    end
    else
      L4_2 = log2
      L5_2 = "an empty app version was returned"
      L4_2(L5_2)
      L4_2 = postData
      L5_2 = "&storeversion=0.1"
      L4_2 = L4_2 .. L5_2
      postData = L4_2
    end
    L4_2 = {}
    L5_2 = postData
    L4_2.body = L5_2
    L5_2 = log3
    L6_2 = "~~~~~~~ printing login player request in sibche:"
    L7_2 = postData
    L5_2(L6_2, L7_2)
    L5_2 = L11_1
    L5_2()
    L5_2 = L5_1
    L5_2 = L5_2.show
    L6_2 = "\217\132\216\183\217\129\216\167 \218\169\217\133\219\140 \216\181\216\168\216\177 \218\169\217\134\219\140\216\175"
    L5_2(L6_2)
    L5_2 = network
    L5_2 = L5_2.request
    L6_2 = Constants
    L6_2 = L6_2.Sibche_BaseURL
    L7_2 = Constants
    L7_2 = L7_2.API_SibcheLogin
    L6_2 = L6_2 .. L7_2
    L7_2 = "POST"
    L8_2 = L2_2
    L9_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  ::lbl_181::
end

didPressLogin = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = network
    L1_3 = L1_3.parseResposeHeader
    L2_3 = A0_3.responseHeaders
    L1_3(L2_3)
    L1_3 = A0_3.isError
    if L1_3 then
      L1_3 = log
      L2_3 = "Network error!."
      L1_3(L2_3)
      L1_3 = A1_2
      if L1_3 ~= nil then
        L1_3 = A1_2
        L2_3 = "Network error"
        L1_3(L2_3)
      end
    else
      L1_3 = log3
      L2_3 = " !!!!!server Response!!!!!!"
      L3_3 = A0_3.response
      L1_3(L2_3, L3_3)
      L1_3 = L7_1
      L1_3 = L1_3.decode
      L2_3 = A0_3.response
      L1_3 = L1_3(L2_3)
      L2_3 = L1_3.status
      if L2_3 == true then
        L2_3 = A0_2
        if L2_3 ~= nil then
          L2_3 = A0_2
          L2_3()
        end
      else
        L2_3 = L1_3.status
        if L2_3 == false then
          L2_3 = L1_3.error
          if not L2_3 then
            L2_3 = "Network Response returned false status"
          end
          L3_3 = L1_3.data
          if L3_3 then
            L3_3 = L1_3.data
            L3_3 = L3_3.code
            if L3_3 then
              L3_3 = L8_1
              L3_3 = L3_3.getErrorMessage
              L4_3 = L1_3.data
              L3_3 = L3_3(L4_3)
              L2_3 = L3_3 or L2_3
              if not L3_3 then
                L3_3 = tostring
                L4_3 = L1_3.data
                L4_3 = L4_3.code
                L3_3 = L3_3(L4_3)
                L2_3 = L3_3
              end
            end
          else
            L3_3 = L1_3.error
            if L3_3 then
              L3_3 = L1_3.error
              L2_3 = L3_3 or L2_3
              if not L3_3 then
                L2_3 = "Response did not return success status"
              end
            end
          end
          L3_3 = A1_2
          if L3_3 ~= nil then
            L3_3 = A1_2
            L4_3 = L2_3
            L3_3(L4_3)
          end
        end
      end
    end
  end
  
  L3_2 = emailField
  L3_2 = L3_2.text
  if L3_2 == "" then
    L3_2 = showSimpleDialog
    L4_2 = "\217\136\216\177\217\136\216\175"
    L5_2 = "\217\190\216\179\216\170 \216\167\217\132\218\169\216\170\216\177\217\136\217\134\219\140\218\169 \216\177\216\167 \217\136\216\167\216\177\216\175 \217\134\217\133\216\167\219\140\219\140\216\175"
    L6_2 = nil
    
    function L7_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = L4_1
      L0_3 = L0_3.showOverlay
      L1_3 = "Utils.SibcheLoginOverlay"
      L2_3 = {}
      L2_3.isModal = true
      L3_3 = {}
      L4_3 = purchaseItemUID
      L3_3.UID = L4_3
      L2_3.params = L3_3
      L0_3(L1_3, L2_3)
    end
    
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = log3
    L4_2 = " request hasn been sent"
    L3_2(L4_2)
    L3_2 = {}
    L4_2 = network
    L4_2 = L4_2.getDefaultHeader
    L4_2 = L4_2()
    L3_2.headers = L4_2
    L4_2 = network
    L4_2 = L4_2.request
    L5_2 = Constants
    L5_2 = L5_2.Sibche_BaseURL
    L6_2 = Constants
    L6_2 = L6_2.API_ForgotPassword
    L7_2 = "?email="
    L8_2 = emailField
    L8_2 = L8_2.text
    L9_2 = "&client=iOS"
    L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
    L6_2 = "GET"
    L7_2 = L2_2
    L8_2 = L3_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = L5_1
    L4_2 = L4_2.show
    L5_2 = "\217\132\216\183\217\129\216\167 \218\169\217\133\219\140 \216\181\216\168\216\177 \218\169\217\134\219\140\216\175"
    L4_2(L5_2)
  end
end

didPressForget = L13_1

function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L4_1
  L0_2 = L0_2.showOverlay
  L1_2 = "Utils.SibcheRegisterOverlay"
  L2_2 = {}
  L2_2.isModal = true
  L2_2.effect = "fade"
  L3_2 = {}
  L4_2 = purchaseItemUID
  L3_2.UID = L4_2
  L2_2.params = L3_2
  L0_2(L1_2, L2_2)
end

didPressSignUp = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = A0_2.view
  L3_2 = A1_2.params
  if L3_2 then
    L3_2 = A1_2.params
    L3_2 = L3_2.delegate
    delegate = L3_2
    L3_2 = A1_2.params
    L3_2 = L3_2.UID
    purchaseItemUID = L3_2
  end
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = A0_2.view
  L5_2 = 0
  L6_2 = 0
  L7_2 = 570
  L8_2 = 360
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  grayOverlay = L3_2
  L3_2 = grayOverlay
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L3_2 = grayOverlay
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L3_2 = grayOverlay
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0.58823529
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = grayOverlay
  L4_2 = L3_2
  L3_2 = L3_2.addEventListener
  L5_2 = "touch"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = grayOverlay
  L4_2 = L3_2
  L3_2 = L3_2.addEventListener
  L5_2 = "tap"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = display
  L3_2 = L3_2.newRoundedRect
  L4_2 = A0_2.view
  L5_2 = 0
  L6_2 = 0
  L7_2 = 280
  L8_2 = 295
  L9_2 = 3
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2.strokeWidth = 2
  L5_2 = L3_2
  L4_2 = L3_2.setStrokeColor
  L6_2 = Constants
  L6_2 = L6_2.greenColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = 1
  L7_2 = 1
  L8_2 = 1
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = display
  L4_2 = L4_2.contentWidth
  L4_2 = L4_2 / 2
  L3_2.x = L4_2
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 / 2
  L3_2.y = L4_2
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = A0_2.view
  L6_2 = "\217\136\216\177\217\136\216\175 \216\179\219\140\216\168\218\134\217\135"
  L7_2 = 0
  L8_2 = 0
  L9_2 = Constants
  L9_2 = L9_2.fontForTitle
  L9_2 = L9_2()
  L10_2 = 20
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L5_2 = L3_2.x
  L4_2.x = L5_2
  L5_2 = display
  L5_2 = L5_2.contentHeight
  L6_2 = L3_2.height
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 / 2
  L5_2 = L5_2 + 10
  L6_2 = L4_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L4_2.y = L5_2
  L5_2 = L3_1
  L5_2 = L5_2.newButton
  L6_2 = {}
  L6_2.width = 30
  L6_2.height = 30
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "BattleItems/close.png"
  L7_2 = L7_2 .. L8_2
  L6_2.defaultFile = L7_2
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "BattleItems/close-pressed.png"
  L7_2 = L7_2 .. L8_2
  L6_2.overFile = L7_2
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = L11_1
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = L4_1
    L0_3 = L0_3.hideOverlay
    L0_3()
  end
  
  L6_2.onRelease = L7_2
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2.view
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L5_2.delegate = A0_2
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L7_2 = L3_2.width
  L6_2 = L6_2 + L7_2
  L6_2 = L6_2 / 2
  L6_2 = L6_2 - 10
  L7_2 = L5_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L5_2.x = L6_2
  L6_2 = L4_2.y
  L5_2.y = L6_2
  L6_2 = display
  L6_2 = L6_2.newRoundedRect
  L7_2 = A0_2.view
  L8_2 = 0
  L9_2 = 0
  L10_2 = L3_2.width
  L10_2 = L10_2 - 20
  L11_2 = L3_2.height
  L11_2 = L11_2 - 60
  L12_2 = 3
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = L6_2
  L7_2 = L6_2.setFillColor
  L9_2 = Constants
  L9_2 = L9_2.lightBlueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L8_2 = L6_2
  L7_2 = L6_2.setStrokeColor
  L9_2 = Constants
  L9_2 = L9_2.blueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L6_2.strokeWidth = 1
  L7_2 = L3_2.x
  L6_2.x = L7_2
  L7_2 = L3_2.y
  L7_2 = L7_2 + 20
  L6_2.y = L7_2
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = A0_2.view
  L9_2 = "\217\190\216\179\216\170 \216\167\217\132\218\169\216\170\216\177\217\136\217\134\219\140\218\169 :"
  L10_2 = 0
  L11_2 = 0
  L12_2 = Constants
  L12_2 = L12_2.fontForSubtitle
  L12_2 = L12_2()
  L13_2 = 13
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L9_2 = L7_2
  L8_2 = L7_2.setFillColor
  L10_2 = Constants
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 / 2
  L8_2 = L8_2 + 85
  L7_2.x = L8_2
  L8_2 = L3_2.y
  L8_2 = L8_2 - 90
  L7_2.y = L8_2
  L8_2 = native
  L8_2 = L8_2.newTextField
  L9_2 = display
  L9_2 = L9_2.contentWidth
  L9_2 = L9_2 / 2
  L9_2 = L9_2 - 120
  L10_2 = L3_2.y
  L10_2 = L10_2 - 75
  L11_2 = 240
  L12_2 = 20
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  emailField = L8_2
  L8_2 = emailField
  L9_2 = L12_1
  L8_2.userInput = L9_2
  L8_2 = emailField
  L9_2 = L8_2
  L8_2 = L8_2.addEventListener
  L10_2 = "userInput"
  L11_2 = L12_1
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = emailField
  L8_2.isVisible = false
  L8_2 = emailField
  L9_2 = Constants
  L9_2 = L9_2.nativeFontForTextFields
  L9_2 = L9_2()
  L8_2.font = L9_2
  L8_2 = emailField
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = Constants
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = A0_2.view
  L10_2 = "\216\177\217\133\216\178 \216\185\216\168\217\136\216\177 :"
  L11_2 = 0
  L12_2 = 0
  L13_2 = Constants
  L13_2 = L13_2.fontForSubtitle
  L13_2 = L13_2()
  L14_2 = 13
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L10_2 = L8_2
  L9_2 = L8_2.setFillColor
  L11_2 = Constants
  L11_2 = L11_2.darkBlueColor
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2()
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L9_2 = display
  L9_2 = L9_2.contentWidth
  L9_2 = L9_2 / 2
  L9_2 = L9_2 + 100
  L8_2.x = L9_2
  L9_2 = L3_2.y
  L9_2 = L9_2 - 48
  L8_2.y = L9_2
  L9_2 = native
  L9_2 = L9_2.newTextField
  L10_2 = display
  L10_2 = L10_2.contentWidth
  L10_2 = L10_2 / 2
  L10_2 = L10_2 - 120
  L11_2 = L3_2.y
  L11_2 = L11_2 - 33
  L12_2 = 240
  L13_2 = 20
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  passwordField = L9_2
  L9_2 = passwordField
  L10_2 = L12_1
  L9_2.userInput = L10_2
  L9_2 = passwordField
  L10_2 = L9_2
  L9_2 = L9_2.addEventListener
  L11_2 = "userInput"
  L12_2 = L12_1
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = passwordField
  L9_2.isVisible = false
  L9_2 = passwordField
  L10_2 = Constants
  L10_2 = L10_2.nativeFontForTextFields
  L10_2 = L10_2()
  L9_2.font = L10_2
  L9_2 = passwordField
  L10_2 = L9_2
  L9_2 = L9_2.setFillColor
  L11_2 = Constants
  L11_2 = L11_2.darkBlueColor
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2()
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L9_2 = passwordField
  L9_2.isSecure = true
  L9_2 = L3_1
  L9_2 = L9_2.newButton
  L10_2 = {}
  L10_2.label = "\217\136\216\177\217\136\216\175"
  L11_2 = Constants
  L11_2 = L11_2.fontForTitle
  L11_2 = L11_2()
  L10_2.font = L11_2
  L10_2.fontSize = 11
  L11_2 = {}
  L12_2 = {}
  L13_2 = Constants
  L13_2 = L13_2.darkGreenColor
  L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2()
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L12_2[4] = L16_2
  L12_2[5] = L17_2
  L11_2.default = L12_2
  L10_2.labelColor = L11_2
  L10_2.emboss = false
  L10_2.width = 100
  L10_2.height = 30
  L11_2 = Constants
  L11_2 = L11_2.Path_Assets
  L12_2 = "BattleItems/battle_outcome_button.png"
  L11_2 = L11_2 .. L12_2
  L10_2.defaultFile = L11_2
  L11_2 = Constants
  L11_2 = L11_2.Path_Assets
  L12_2 = "BattleItems/battle_outcome_button-pressed.png"
  L11_2 = L11_2 .. L12_2
  L10_2.overFile = L11_2
  
  function L11_2()
    local L0_3, L1_3, L2_3
    L0_3 = didPressLogin
    L1_3 = successToLoginCallback
    L2_3 = failedToLoginCallback
    L0_3(L1_3, L2_3)
  end
  
  L10_2.onRelease = L11_2
  L9_2 = L9_2(L10_2)
  L9_2.delegate = A0_2
  L10_2 = A0_2.view
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L10_2 = display
  L10_2 = L10_2.contentCenterX
  L11_2 = L9_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 - L11_2
  L10_2 = L10_2 - 10
  L9_2.x = L10_2
  L10_2 = passwordField
  L10_2 = L10_2.y
  L10_2 = L10_2 + 40
  L9_2.y = L10_2
  L10_2 = L3_1
  L10_2 = L10_2.newButton
  L11_2 = {}
  L11_2.label = "\219\140\216\167\216\175\217\133 \216\177\217\129\216\170\217\135"
  L12_2 = Constants
  L12_2 = L12_2.fontForTitle
  L12_2 = L12_2()
  L11_2.font = L12_2
  L11_2.fontSize = 11
  L12_2 = {}
  L13_2 = {}
  L14_2 = Constants
  L14_2 = L14_2.darkGreenColor
  L14_2, L15_2, L16_2, L17_2 = L14_2()
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L13_2[4] = L17_2
  L12_2.default = L13_2
  L11_2.labelColor = L12_2
  L11_2.emboss = false
  L11_2.width = 100
  L11_2.height = 30
  L12_2 = Constants
  L12_2 = L12_2.Path_Assets
  L13_2 = "BattleItems/battle_outcome_button.png"
  L12_2 = L12_2 .. L13_2
  L11_2.defaultFile = L12_2
  L12_2 = Constants
  L12_2 = L12_2.Path_Assets
  L13_2 = "BattleItems/battle_outcome_button-pressed.png"
  L12_2 = L12_2 .. L13_2
  L11_2.overFile = L12_2
  
  function L12_2()
    local L0_3, L1_3, L2_3
    L0_3 = L11_1
    L0_3()
    L0_3 = didPressForget
    L1_3 = successToSendForgotMessageCallback
    L2_3 = failedToSendForgotMessageCallback
    L0_3(L1_3, L2_3)
  end
  
  L11_2.onRelease = L12_2
  L10_2 = L10_2(L11_2)
  L10_2.delegate = A0_2
  L11_2 = A0_2.view
  L12_2 = L11_2
  L11_2 = L11_2.insert
  L13_2 = L10_2
  L11_2(L12_2, L13_2)
  L11_2 = display
  L11_2 = L11_2.contentCenterX
  L12_2 = L10_2.width
  L12_2 = L12_2 / 2
  L11_2 = L11_2 + L12_2
  L11_2 = L11_2 + 10
  L10_2.x = L11_2
  L11_2 = L9_2.y
  L10_2.y = L11_2
  L11_2 = display
  L11_2 = L11_2.newText
  L12_2 = A0_2.view
  L13_2 = "\216\171\216\168\216\170 \217\134\216\167\217\133 \216\177\216\167\219\140\218\175\216\167\217\134 \216\175\216\177 \216\179\219\140\216\168\218\134\217\135 :"
  L14_2 = 0
  L15_2 = 0
  L16_2 = Constants
  L16_2 = L16_2.fontForSubtitle
  L16_2 = L16_2()
  L17_2 = 13
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L13_2 = L11_2
  L12_2 = L11_2.setFillColor
  L14_2 = Constants
  L14_2 = L14_2.darkBlueColor
  L14_2, L15_2, L16_2, L17_2 = L14_2()
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
  L12_2 = display
  L12_2 = L12_2.contentWidth
  L12_2 = L12_2 / 2
  L11_2.x = L12_2
  L12_2 = L9_2.y
  L12_2 = L12_2 + 50
  L11_2.y = L12_2
  L12_2 = L3_1
  L12_2 = L12_2.newButton
  L13_2 = {}
  L13_2.label = "\216\171\216\168\216\170 \217\134\216\167\217\133"
  L14_2 = Constants
  L14_2 = L14_2.fontForTitle
  L14_2 = L14_2()
  L13_2.font = L14_2
  L13_2.fontSize = 11
  L14_2 = {}
  L15_2 = {}
  L16_2 = Constants
  L16_2 = L16_2.darkGreenColor
  L16_2, L17_2 = L16_2()
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L14_2.default = L15_2
  L13_2.labelColor = L14_2
  L13_2.emboss = false
  L13_2.width = 100
  L13_2.height = 30
  L14_2 = Constants
  L14_2 = L14_2.Path_Assets
  L15_2 = "BattleItems/battle_outcome_button.png"
  L14_2 = L14_2 .. L15_2
  L13_2.defaultFile = L14_2
  L14_2 = Constants
  L14_2 = L14_2.Path_Assets
  L15_2 = "BattleItems/battle_outcome_button-pressed.png"
  L14_2 = L14_2 .. L15_2
  L13_2.overFile = L14_2
  L14_2 = didPressSignUp
  L13_2.onRelease = L14_2
  L12_2 = L12_2(L13_2)
  L12_2.delegate = A0_2
  L13_2 = A0_2.view
  L14_2 = L13_2
  L13_2 = L13_2.insert
  L15_2 = L12_2
  L13_2(L14_2, L15_2)
  L13_2 = display
  L13_2 = L13_2.contentCenterX
  L12_2.x = L13_2
  L13_2 = L6_2.y
  L14_2 = L6_2.height
  L14_2 = L14_2 / 2
  L13_2 = L13_2 + L14_2
  L14_2 = L12_2.height
  L14_2 = L14_2 / 2
  L13_2 = L13_2 - L14_2
  L13_2 = L13_2 - 15
  L12_2.y = L13_2
  L13_2 = loadTable
  L14_2 = "userAcount.json"
  L13_2 = L13_2(L14_2)
  userAcount = L13_2
  L13_2 = userAcount
  if L13_2 ~= nil then
    L13_2 = sibcheUser
    L14_2 = userAcount
    L14_2 = L14_2.email
    L13_2.email = L14_2
    L13_2 = sibcheUser
    L14_2 = userAcount
    L14_2 = L14_2.password
    L13_2.password = L14_2
  end
end

L6_1.create = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = emailField
    L5_2 = sibcheUser
    L5_2 = L5_2.email
    L4_2.text = L5_2
    L4_2 = passwordField
    L5_2 = sibcheUser
    L5_2 = L5_2.password
    L4_2.text = L5_2
    L4_2 = L10_1
    L4_2()
  end
end

L6_1.show = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = _G
    L4_2.notLoading = false
    L4_2 = L11_1
    L4_2()
  end
end

L6_1.hide = L13_1

function L13_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.view
end

L6_1.destroy = L13_1
L14_1 = L6_1
L13_1 = L6_1.addEventListener
L15_1 = "create"
L16_1 = L6_1
L13_1(L14_1, L15_1, L16_1)
L14_1 = L6_1
L13_1 = L6_1.addEventListener
L15_1 = "show"
L16_1 = L6_1
L13_1(L14_1, L15_1, L16_1)
L14_1 = L6_1
L13_1 = L6_1.addEventListener
L15_1 = "hide"
L16_1 = L6_1
L13_1(L14_1, L15_1, L16_1)
L14_1 = L6_1
L13_1 = L6_1.addEventListener
L15_1 = "destroy"
L16_1 = L6_1
L13_1(L14_1, L15_1, L16_1)
return L6_1
