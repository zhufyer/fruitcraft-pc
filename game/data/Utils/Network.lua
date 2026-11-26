local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Constants"
L0_1(L1_1)
L0_1 = require
L1_1 = "json"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.Toolbox"
L1_1 = L1_1(L2_1)
L2_1 = L1_1.urlEncode
L3_1 = require
L4_1 = "Models.ErrorController"
L3_1 = L3_1(L4_1)

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = ""
  postString = L2_2
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = postString
    if L7_2 ~= "" then
      L7_2 = postString
      L8_2 = "&"
      L7_2 = L7_2 .. L8_2
      postString = L7_2
    end
    L7_2 = postString
    L8_2 = L5_2
    L9_2 = "="
    L10_2 = L6_2
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
    postString = L7_2
  end
  L2_2 = postString
  A1_2.body = L2_2
  return A1_2
end

setPostParams = L4_1
L4_1 = false
L5_1 = {}

function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = system
  L0_2 = L0_2.pathForFile
  L1_2 = Constants
  L1_2 = L1_2.Path_Cookies
  L2_2 = system
  L2_2 = L2_2.DocumentsDirectory
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = io
  L1_2 = L1_2.open
  L2_2 = L0_2
  L3_2 = "w"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.write
  L4_2 = L0_1
  L4_2 = L4_2.encode
  L5_2 = L5_1
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = io
  L2_2 = L2_2.close
  L3_2 = L1_2
  L2_2(L3_2)
  L1_2 = nil
  L0_2 = nil
end

saveCookies = L6_1

function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = log3
  L0_2()
  L0_2 = system
  L0_2 = L0_2.pathForFile
  L1_2 = Constants
  L1_2 = L1_2.Path_Cookies
  L2_2 = system
  L2_2 = L2_2.DocumentsDirectory
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = io
  L1_2 = L1_2.open
  L2_2 = L0_2
  L3_2 = "r+"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = log3
    L3_2 = "Didn't find cookies file."
    L2_2(L3_2)
  else
    L3_2 = L1_2
    L2_2 = L1_2.read
    L4_2 = "*a"
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = io
    L3_2 = L3_2.close
    L4_2 = L1_2
    L3_2(L4_2)
    L3_2 = L0_1
    L3_2 = L3_2.decode
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = {}
    end
    L4_2 = log3
    L5_2 = "loaded cookie: "
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
    L5_1 = L3_2
  end
  L2_2 = true
  L4_1 = L2_2
end

loadCookies = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = log3
  L2_2 = "Checking for cookies"
  L1_2(L2_2)
  L1_2 = log
  L2_2 = A0_2["Set-Cookie"]
  L1_2(L2_2)
  if A0_2 then
    L1_2 = A0_2["Set-Cookie"]
    if L1_2 then
      L1_2 = string
      L1_2 = L1_2.gmatch
      L2_2 = A0_2["Set-Cookie"]
      L3_2 = "(%w+)%=(%w+);"
      L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
      for L4_2, L5_2 in L1_2, L2_2, L3_2 do
        L6_2 = L5_1
        L6_2[L4_2] = L5_2
      end
      L1_2 = saveCookies
      L1_2()
    end
  end
  if A0_2 then
    L1_2 = A0_2["set-cookie"]
    if L1_2 then
      L1_2 = string
      L1_2 = L1_2.gmatch
      L2_2 = A0_2["set-cookie"]
      L3_2 = "(%w+)%=(%w+);"
      L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
      for L4_2, L5_2 in L1_2, L2_2, L3_2 do
        L6_2 = L5_1
        L6_2[L4_2] = L5_2
      end
      L1_2 = saveCookies
      L1_2()
    end
  end
end

parseResposeHeader = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if not A1_2 then
    A1_2 = true
  end
  L2_2 = system
  L2_2 = L2_2.getInfo
  L3_2 = "platformName"
  L2_2 = L2_2(L3_2)
  if L2_2 ~= "Android" then
    L2_2 = system
    L2_2 = L2_2.getInfo
    L3_2 = "platformName"
    L2_2 = L2_2(L3_2)
    if L2_2 ~= "Win" then
      L2_2 = Constants
      L2_2 = L2_2._buildType
      if L2_2 ~= "debug" then
        L2_2 = nil
        return L2_2
      end
    end
  end
  if A1_2 == true then
    L2_2 = log3
    L3_2 = "getting default headers"
    L2_2(L3_2)
  end
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = {}
  end
  L3_2 = L4_1
  if L3_2 == false then
    L3_2 = loadCookies
    L3_2()
  end
  L2_2["Content-Type"] = "application/x-www-form-urlencoded"
  L3_2 = pairs
  L4_2 = L5_1
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L2_2.Cookie
    if L8_2 == nil then
      L2_2.Cookie = ""
    end
    L8_2 = L2_2.Cookie
    L9_2 = " "
    L10_2 = L6_2
    L11_2 = "="
    L12_2 = L7_2
    L13_2 = "; "
    L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
    L2_2.Cookie = L8_2
  end
  return L2_2
end

getDefaultHeader = L6_1
L6_1 = false

function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L9_2 = true
  if A5_2 == "sendLog" then
    L9_2 = false
  end
  if L9_2 == true then
    L10_2 = log3
    L10_2()
  end
  L10_2 = A6_2 or L10_2
  if not A6_2 then
    L10_2 = 0
  end
  if L9_2 == true then
    L11_2 = log3
    L12_2 = "---- "
    L13_2 = A1_2
    L14_2 = " retry count:"
    L15_2 = L10_2
    L14_2 = L14_2 .. L15_2
    L11_2(L12_2, L13_2, L14_2)
  end
  if L9_2 == true then
    L11_2 = log3
    L12_2 = "---- end of print"
    L11_2(L12_2)
  end
  L11_2 = A0_2.isError
  if L11_2 then
    if L9_2 == true then
      L11_2 = log2
      L12_2 = "Network error! Checking for retry"
      L11_2(L12_2)
    end
    L11_2 = A0_2.status
    if L11_2 == -1 then
      L11_2 = Constants
      L11_2 = L11_2.API_RetryCount
      if L10_2 < L11_2 then
        L10_2 = L10_2 + 1
        L11_2 = timer
        L11_2 = L11_2.performWithDelay
        L12_2 = 1000
        
        function L13_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
          L0_3 = request
          L1_3 = A1_2
          L2_3 = A2_2
          L3_3 = A3_2
          L4_3 = A4_2
          L5_3 = A5_2
          L6_3 = L10_2
          L7_3 = A7_2
          L8_3 = A8_2
          return L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        end
        
        L11_2(L12_2, L13_2)
        return
      end
    end
    if L9_2 == true then
      L11_2 = log1
      L12_2 = "*!* Network error occured and unable to retry"
      L13_2 = A1_2
      L14_2 = A5_2
      L15_2 = A0_2.status
      L16_2 = "*!*"
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    end
    if A7_2 ~= nil then
      if not A8_2 then
        A8_2 = "Network error occured and unable to retry"
      end
      L11_2 = A7_2
      L12_2 = A8_2
      L13_2 = "Base network error "
      L14_2 = A0_2.status
      L13_2 = L13_2 .. L14_2
      L11_2(L12_2, L13_2)
    else
      if L9_2 == true then
        L11_2 = log1
        L12_2 = "There was no failure callback provided, event will be passed to listener"
        L11_2(L12_2)
      end
      L11_2 = A3_2
      L12_2 = A0_2
      L11_2(L12_2)
    end
  else
    L11_2 = string
    L11_2 = L11_2.find
    L12_2 = A1_2
    L13_2 = Constants
    L13_2 = L13_2.API_Host
    L11_2, L12_2 = L11_2(L12_2, L13_2)
    if L9_2 == true then
      L13_2 = log3
      L14_2 = "URL: "
      L15_2 = A1_2
      L13_2(L14_2, L15_2)
    end
    if L11_2 ~= nil then
      L13_2 = nil
      if L9_2 then
        L13_2 = A0_2.response
      end
      if L9_2 == true then
        L14_2 = log3
        L15_2 = "------ encode RESPONSE -------- : "
        L16_2 = A0_2.response
        L14_2(L15_2, L16_2)
      end
      L14_2 = L1_1
      L14_2 = L14_2.xorDecrypt
      L15_2 = A0_2.response
      L14_2 = L14_2(L15_2)
      A0_2.response = L14_2
      if L9_2 == true then
        if A5_2 then
          L14_2 = log3
          L15_2 = "------ decode RESPONSE ("
          L16_2 = A5_2
          L17_2 = ")-------- : "
          L15_2 = L15_2 .. L16_2 .. L17_2
          L16_2 = A0_2.response
          L14_2(L15_2, L16_2)
        else
          L14_2 = log3
          L15_2 = "------ decode RESPONSE -------- : "
          L16_2 = A0_2.response
          L14_2(L15_2, L16_2)
        end
      end
      L14_2 = false
      L6_1 = L14_2
      L14_2 = L0_1
      L14_2 = L14_2.decode
      L15_2 = A0_2.response
      L14_2 = L14_2(L15_2)
      if L14_2 then
        L15_2 = L14_2.data
        if L15_2 then
          L15_2 = L14_2.data
          L15_2 = L15_2.needs_captcha
          if L15_2 == true then
            L15_2 = true
            L6_1 = L15_2
          end
        end
      else
        if L9_2 == true then
          L15_2 = log3
          L16_2 = "response is nil, encoded response:"
          L17_2 = L13_2
          L15_2(L16_2, L17_2)
        end
        if A7_2 ~= nil then
          L15_2 = A7_2
          L16_2 = "response is nil"
          L15_2(L16_2)
          return
        end
      end
    end
    L13_2 = parseResposeHeader
    L14_2 = A0_2.responseHeaders
    L13_2(L14_2)
    if A3_2 then
      L13_2 = A3_2
      L14_2 = A0_2
      L13_2(L14_2)
    end
  end
end

defaultResponseHandler = L7_1
L7_1 = _G
L7_1 = L7_1.network
L7_1 = L7_1.request
plainNetworkRequest = L7_1
L7_1 = _G
L7_1 = L7_1.network
L8_1 = plainNetworkRequest
L7_1.plainNetworkRequest = L8_1

function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L8_2 = true
  if A4_2 == "sendLog" then
    L8_2 = false
  end
  if L8_2 == true then
    L9_2 = log3
    L10_2 = "request url is:"
    L11_2 = A0_2
    L9_2(L10_2, L11_2)
  end
  L9_2 = L6_1
  if L9_2 == true then
    L9_2 = require
    L10_2 = "composer"
    L9_2 = L9_2(L10_2)
    L10_2 = string
    L10_2 = L10_2.find
    L11_2 = A0_2
    L12_2 = "battle/battle"
    L10_2, L11_2 = L10_2(L11_2, L12_2)
    L12_2 = string
    L12_2 = L12_2.find
    L13_2 = A0_2
    L14_2 = "battle/quest"
    L12_2, L13_2 = L12_2(L13_2, L14_2)
    L14_2 = string
    L14_2 = L14_2.find
    L15_2 = A0_2
    L16_2 = "cards/collectgold"
    L14_2, L15_2 = L14_2(L15_2, L16_2)
    if L10_2 ~= nil or L12_2 ~= nil or L14_2 ~= nil then
      L16_2 = L9_2.showOverlay
      L17_2 = "Scenes.CaptchaOverlay"
      L18_2 = {}
      L19_2 = {}
      L19_2.url = A0_2
      L19_2.method = A1_2
      L19_2.listener = A2_2
      L19_2.params = A3_2
      L19_2.requestName = A4_2
      L19_2.retryCount = A5_2
      L19_2.failureCallback = A6_2
      L19_2.caller = A7_2
      L18_2.params = L19_2
      L16_2(L17_2, L18_2)
      if L8_2 == true then
        L16_2 = log2
        L17_2 = "Showing capcha input before continuing with request."
        L16_2(L17_2)
      end
      return
    end
  end
  if A3_2 == nil then
    L9_2 = {}
    A3_2 = L9_2
  end
  L9_2 = type
  L10_2 = A2_2
  L9_2 = L9_2(L10_2)
  if L9_2 == "table" then
    L9_2 = string
    L9_2 = L9_2.find
    L10_2 = A0_2
    L11_2 = "getcaptcha"
    L9_2, L10_2 = L9_2(L10_2, L11_2)
    if L9_2 ~= nil then
      L11_2 = getDefaultHeader
      L11_2 = L11_2()
      A3_2.headers = L11_2
    end
    L11_2 = plainNetworkRequest
    L12_2 = A0_2
    L13_2 = A1_2
    L14_2 = A2_2
    L15_2 = A3_2
    L11_2(L12_2, L13_2, L14_2, L15_2)
    return
  end
  L9_2 = string
  L9_2 = L9_2.find
  L10_2 = A0_2
  L11_2 = Constants
  L11_2 = L11_2.API_Host
  L9_2, L10_2 = L9_2(L10_2, L11_2)
  L11_2 = {}
  L12_2 = pairs
  L13_2 = A3_2
  L12_2, L13_2, L14_2 = L12_2(L13_2)
  for L15_2, L16_2 in L12_2, L13_2, L14_2 do
    L11_2[L15_2] = L16_2
  end
  L11_2.timeout = 15
  if L9_2 ~= nil then
    L12_2 = A3_2.body
    if L12_2 == nil then
      L12_2 = {}
      L12_2.client = "iOS"
      A3_2.body = L12_2
    end
    L12_2 = A3_2.body
    if L12_2 ~= nil then
      L12_2 = L0_1
      L12_2 = L12_2.encode
      L13_2 = A3_2.body
      L12_2 = L12_2(L13_2)
      if L8_2 == true then
        L13_2 = log3
        L14_2 = "request is : "
        L15_2 = L12_2
        L13_2(L14_2, L15_2)
      end
      L13_2 = "edata="
      L14_2 = L2_1
      L15_2 = L1_1
      L15_2 = L15_2.xorEncrypt
      L16_2 = L12_2
      L15_2, L16_2, L17_2, L18_2, L19_2 = L15_2(L16_2)
      L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
      L15_2 = "&version=2"
      L13_2 = L13_2 .. L14_2 .. L15_2
      L11_2.body = L13_2
      L13_2 = log3
      L14_2 = " params.body : "
      L15_2 = L11_2.body
      L13_2(L14_2, L15_2)
    end
  end
  L12_2 = getDefaultHeader
  L12_2 = L12_2()
  L11_2.headers = L12_2
  L12_2 = plainNetworkRequest
  L13_2 = A0_2
  L14_2 = A1_2
  
  function L15_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = defaultResponseHandler
    L2_3 = A0_3
    L3_3 = A0_2
    L4_3 = A1_2
    L5_3 = A2_2
    L6_3 = A3_2
    L7_3 = A4_2
    L8_3 = A5_2
    L9_3 = A6_2
    L10_3 = A7_2
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
  end
  
  L16_2 = L11_2
  L12_2(L13_2, L14_2, L15_2, L16_2)
end

request = L7_1

function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = false
  if A1_2 == "sendLog" then
    L4_2 = false
  end
  L5_2 = A0_2.isError
  if L5_2 then
    if L4_2 == true then
      L5_2 = log
      L6_2 = "Network error! Failed to "
      L7_2 = A1_2
      L6_2 = L6_2 .. L7_2
      L5_2(L6_2)
    end
    if A2_2 ~= nil then
      L5_2 = A2_2
      L6_2 = "Network error"
      L5_2(L6_2)
    end
    L5_2 = false
    return L5_2
  else
    if L4_2 == true then
      L5_2 = log3
      L6_2 = A1_2
      L7_2 = A0_2.response
      L5_2(L6_2, L7_2)
    end
    L5_2 = L0_1
    L5_2 = L5_2.decode
    L6_2 = A0_2.response
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L6_2 = L5_2.status
      if L6_2 == true then
        if L4_2 == true then
          L6_2 = log3
          L7_2 = A1_2
          L8_2 = " data:"
          L7_2 = L7_2 .. L8_2
          L8_2 = L5_2.data
          L6_2(L7_2, L8_2)
        end
        L6_2 = L5_2.data
        if L6_2 ~= nil then
          if A3_2 ~= nil then
            L6_2 = ipairs
            L7_2 = A3_2
            L6_2, L7_2, L8_2 = L6_2(L7_2)
            for L9_2, L10_2 in L6_2, L7_2, L8_2 do
              L11_2 = L5_2.data
              L11_2 = L11_2[L10_2]
              if L11_2 == nil then
                if L4_2 == true then
                  L11_2 = log
                  L12_2 = "Network error! The response did not contain proper value ("
                  L13_2 = L10_2
                  L14_2 = ") :"
                  L15_2 = L5_2
                  L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2
                  L11_2(L12_2)
                end
                if A2_2 ~= nil then
                  L11_2 = A2_2
                  L12_2 = "Response error detected, please try again or contact support for help."
                  L11_2(L12_2)
                end
                return
              end
            end
          end
          L6_2 = true
          L7_2 = L5_2.data
          return L6_2, L7_2
        else
          if L4_2 == true then
            L6_2 = log
            L7_2 = "Network error "
            L8_2 = A1_2
            L9_2 = "! The response data was nil:"
            L10_2 = A0_2.response
            L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
            L6_2(L7_2)
          end
          if A2_2 ~= nil then
            L6_2 = A2_2
            L7_2 = "Response did not contain data field"
            L6_2(L7_2)
          end
          L6_2 = false
          return L6_2
        end
      else
        if L4_2 == true then
          L6_2 = log
          L7_2 = "Network error "
          L8_2 = A1_2
          L9_2 = "! The response did not return 'true' status"
          L10_2 = A0_2.response
          L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
          L6_2(L7_2)
        end
        if A2_2 ~= nil then
          L6_2 = L5_2.data
          if L6_2 then
            L6_2 = L5_2.data
            L6_2 = L6_2.code
            if L6_2 then
              L6_2 = A2_2
              L7_2 = L3_1
              L7_2 = L7_2.getErrorMessage
              L8_2 = L5_2.data
              L7_2 = L7_2(L8_2)
              if not L7_2 then
                L7_2 = tostring
                L8_2 = L5_2.data
                L8_2 = L8_2.code
                L7_2 = L7_2(L8_2)
              end
              L8_2 = L5_2.data
              L8_2 = L8_2.code
              L6_2(L7_2, L8_2)
            end
          else
            L6_2 = L5_2.error
            if L6_2 then
              L6_2 = A2_2
              L7_2 = L5_2.error
              if not L7_2 then
                L7_2 = "Response did not return success status"
              end
              L6_2(L7_2)
            else
              L6_2 = A2_2
              L7_2 = "Response did not return success status"
              L6_2(L7_2)
            end
          end
        end
        L6_2 = false
        return L6_2
      end
    else
      if L4_2 == true then
        L6_2 = log
        L7_2 = "Recieved response was not a proper JSON, upon "
        L8_2 = A1_2
        L7_2 = L7_2 .. L8_2
        L8_2 = A0_2.response
        L6_2(L7_2, L8_2)
      end
      if A2_2 ~= nil then
        L6_2 = A2_2
        L7_2 = "Response error (Invalid JSON)"
        L6_2(L7_2)
      end
      L6_2 = false
      return L6_2
    end
  end
end

checkForErrors = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = log3
  L1_2()
  L1_2 = false
  L6_1 = L1_2
  if A0_2 ~= nil then
    L1_2 = request
    L2_2 = A0_2.url
    L3_2 = A0_2.method
    L4_2 = A0_2.listener
    L5_2 = A0_2.params
    L6_2 = A0_2.requestName
    L7_2 = A0_2.retryCount
    L8_2 = A0_2.failureCallback
    L9_2 = A0_2.caller
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end

resumeRequest = L7_1
L7_1 = _G
L7_1 = L7_1.network
L8_1 = parseResposeHeader
L7_1.parseResposeHeader = L8_1
L7_1 = _G
L7_1 = L7_1.network
L8_1 = getDefaultHeader
L7_1.getDefaultHeader = L8_1
L7_1 = _G
L7_1 = L7_1.network
L8_1 = request
L7_1.request = L8_1
L7_1 = _G
L7_1 = L7_1.network
L8_1 = checkForErrors
L7_1.checkForErrors = L8_1
