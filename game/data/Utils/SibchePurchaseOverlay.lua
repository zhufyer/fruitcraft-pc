local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1
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
L5_1 = L4_1.newScene
L5_1 = L5_1()
L6_1 = require
L7_1 = "json"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Utils.Toolbox"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Views.ActivityIndicatorView"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Models.ErrorController"
L9_1 = L9_1(L10_1)
L10_1 = nil
L11_1 = nil

function L12_1(A0_2)
  local L1_2
end

function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L8_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = delegate
  L1_2 = L1_2.purchaseCallback
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "\216\174\216\177\219\140\216\175"
  L3_2 = "\216\174\216\177\219\140\216\175 \216\168\216\167 \217\133\217\136\217\129\217\130\219\140\216\170 \216\167\217\134\216\172\216\167\217\133 \216\180\216\175"
  L1_2(L2_2, L3_2)
end

didSendCallback = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = _G
  L2_2.notLoading = false
  L2_2 = L8_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = showSimpleDialog
  L3_2 = "\216\174\216\177\219\140\216\175"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

failedToSendCallback = L13_1

function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = network
    L1_3 = L1_3.parseResposeHeader
    L2_3 = A0_3.responseHeaders
    L1_3(L2_3)
    L1_3 = A0_3.isError
    if L1_3 then
      L1_3 = log
      L2_3 = "Network error! Failed cooldown card."
      L1_3(L2_3)
      L1_3 = A2_2
      if L1_3 ~= nil then
        L1_3 = A2_2
        L2_3 = A0_2
        L3_3 = "Network error"
        L1_3(L2_3, L3_3)
      end
    else
      L1_3 = L6_1
      L1_3 = L1_3.decode
      L2_3 = A0_3.response
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L2_3 = L1_3.status
        if L2_3 == true then
          L2_3 = L1_3.data
          L2_3 = L2_3.bank_account_balance
          if L2_3 ~= nil then
            L2_3 = mainPlayer
            L2_3 = L2_3.bankBuilding
            if L2_3 ~= nil then
              L2_3 = mainPlayer
              L2_3 = L2_3.bankBuilding
              L3_3 = L1_3.data
              L3_3 = L3_3.bank_account_balance
              L2_3.gold = L3_3
            end
          end
          L2_3 = L1_3.data
          L2_3 = L2_3.gold
          if L2_3 ~= nil then
            L2_3 = mainPlayer
            L3_3 = L1_3.data
            L3_3 = L3_3.gold
            L2_3.gold = L3_3
          else
            L2_3 = log
            L3_3 = "Network error! The response did not contain proper values:"
            L4_3 = A0_3.response
            L3_3 = L3_3 .. L4_3
            L2_3(L3_3)
            L2_3 = A2_2
            if L2_3 ~= nil then
              L2_3 = A2_2
              L3_3 = A0_2
              L4_3 = "Response did not contain required fields"
              L2_3(L3_3, L4_3)
            end
            return
          end
          L2_3 = A1_2
          if L2_3 ~= nil then
            L2_3 = A1_2
            L3_3 = A0_2
            L2_3(L3_3)
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
                L3_3 = L9_1
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
            L3_3 = A2_2
            if L3_3 ~= nil then
              L3_3 = A2_2
              L4_3 = A0_2
              L5_3 = L2_3
              L3_3(L4_3, L5_3)
            end
          end
        end
      else
        L2_3 = A2_2
        if L2_3 ~= nil then
          L2_3 = A2_2
          L3_3 = A0_2
          L4_3 = errorMessage
          L2_3(L3_3, L4_3)
        end
      end
    end
  end
  
  L4_2 = "type="
  L5_2 = L10_1
  L4_2 = L4_2 .. L5_2
  postData = L4_2
  L4_2 = postData
  L5_2 = "&store=2"
  L4_2 = L4_2 .. L5_2
  postData = L4_2
  L4_2 = postData
  L5_2 = "&receipt="
  L6_2 = A0_2
  L4_2 = L4_2 .. L5_2 .. L6_2
  postData = L4_2
  L4_2 = {}
  params = L4_2
  L4_2 = params
  L5_2 = postData
  L4_2.body = L5_2
  L4_2 = log3
  L5_2 = "postData"
  L6_2 = postData
  L4_2(L5_2, L6_2)
  L4_2 = params
  L5_2 = network
  L5_2 = L5_2.getDefaultHeader
  L5_2 = L5_2()
  L4_2.headers = L5_2
  L4_2 = network
  L4_2 = L4_2.request
  L5_2 = Constants
  L5_2 = L5_2.API_Path
  L6_2 = Constants
  L6_2 = L6_2.API_BuyGoldPack
  L5_2 = L5_2 .. L6_2
  L6_2 = "POST"
  L7_2 = L3_2
  L8_2 = params
  L9_2 = "send receipt"
  L10_2 = nil
  L11_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = A0_2.view
  L3_2 = A1_2.params
  L3_2 = L3_2.delegate
  delegate = L3_2
  L3_2 = A1_2.params
  L3_2 = L3_2.UID
  purchaseItemUID = L3_2
  L3_2 = string
  L3_2 = L3_2.find
  L4_2 = purchaseItemUID
  L5_2 = "com.tod.fruitcraft.gold"
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = string
  L5_2 = L5_2.sub
  L6_2 = purchaseItemUID
  L7_2 = L4_2 + 1
  L8_2 = string
  L8_2 = L8_2.len
  L9_2 = purchaseItemUID
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L8_2(L9_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L6_2 = log3
  L7_2 = "postFix"
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L10_1 = L5_2
  L6_2 = display
  L6_2 = L6_2.newRect
  L7_2 = A0_2.view
  L8_2 = 0
  L9_2 = 0
  L10_2 = 570
  L11_2 = 360
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  grayOverlay = L6_2
  L6_2 = grayOverlay
  L7_2 = display
  L7_2 = L7_2.contentCenterX
  L6_2.x = L7_2
  L6_2 = grayOverlay
  L7_2 = display
  L7_2 = L7_2.contentCenterY
  L6_2.y = L7_2
  L6_2 = grayOverlay
  L7_2 = L6_2
  L6_2 = L6_2.setFillColor
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0.58823529
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = grayOverlay
  L7_2 = L6_2
  L6_2 = L6_2.addEventListener
  L8_2 = "touch"
  
  function L9_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = grayOverlay
  L7_2 = L6_2
  L6_2 = L6_2.addEventListener
  L8_2 = "tap"
  
  function L9_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = display
  L6_2 = L6_2.newRoundedRect
  L7_2 = A0_2.view
  L8_2 = 0
  L9_2 = 0
  L10_2 = 360
  L11_2 = 295
  L12_2 = 3
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2.strokeWidth = 2
  L8_2 = L6_2
  L7_2 = L6_2.setStrokeColor
  L9_2 = Constants
  L9_2 = L9_2.greenColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L8_2 = L6_2
  L7_2 = L6_2.setFillColor
  L9_2 = 1
  L10_2 = 1
  L11_2 = 1
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = display
  L7_2 = L7_2.contentWidth
  L7_2 = L7_2 / 2
  L6_2.x = L7_2
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L7_2 = L7_2 / 2
  L6_2.y = L7_2
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = A0_2.view
  L9_2 = "\216\174\216\177\219\140\216\175"
  L10_2 = 0
  L11_2 = 0
  L12_2 = Constants
  L12_2 = L12_2.fontForTitle
  L12_2 = L12_2()
  L13_2 = 20
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L9_2 = L7_2
  L8_2 = L7_2.setFillColor
  L10_2 = Constants
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L8_2 = L6_2.x
  L7_2.x = L8_2
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L9_2 = L6_2.height
  L8_2 = L8_2 - L9_2
  L8_2 = L8_2 / 2
  L8_2 = L8_2 + 10
  L9_2 = L7_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L7_2.y = L8_2
  L8_2 = L3_1
  L8_2 = L8_2.newButton
  L9_2 = {}
  L9_2.width = 30
  L9_2.height = 30
  L10_2 = Constants
  L10_2 = L10_2.Path_Assets
  L11_2 = "BattleItems/close.png"
  L10_2 = L10_2 .. L11_2
  L9_2.defaultFile = L10_2
  L10_2 = Constants
  L10_2 = L10_2.Path_Assets
  L11_2 = "BattleItems/close-pressed.png"
  L10_2 = L10_2 .. L11_2
  L9_2.overFile = L10_2
  
  function L10_2()
    local L0_3, L1_3
    L0_3 = L4_1
    L0_3 = L0_3.hideOverlay
    L0_3()
    L0_3 = native
    L0_3 = L0_3.cancelWebPopup
    L0_3()
  end
  
  L9_2.onRelease = L10_2
  L8_2 = L8_2(L9_2)
  L9_2 = A0_2.view
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L8_2.delegate = A0_2
  L9_2 = display
  L9_2 = L9_2.contentWidth
  L10_2 = L6_2.width
  L9_2 = L9_2 + L10_2
  L9_2 = L9_2 / 2
  L9_2 = L9_2 - 10
  L10_2 = L8_2.width
  L10_2 = L10_2 / 2
  L9_2 = L9_2 - L10_2
  L8_2.x = L9_2
  L9_2 = L7_2.y
  L8_2.y = L9_2
  L9_2 = display
  L9_2 = L9_2.newRoundedRect
  L10_2 = A0_2.view
  L11_2 = 0
  L12_2 = 0
  L13_2 = L6_2.width
  L13_2 = L13_2 - 20
  L14_2 = L6_2.height
  L14_2 = L14_2 - 60
  L15_2 = 3
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L11_2 = L9_2
  L10_2 = L9_2.setFillColor
  L12_2 = Constants
  L12_2 = L12_2.lightBlueColor
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L11_2 = L9_2
  L10_2 = L9_2.setStrokeColor
  L12_2 = Constants
  L12_2 = L12_2.blueColor
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L9_2.strokeWidth = 1
  L10_2 = L6_2.x
  L9_2.x = L10_2
  L10_2 = L6_2.y
  L10_2 = L10_2 + 20
  L9_2.y = L10_2
  
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = true
    L2_3 = A0_3.url
    L3_3 = log3
    L4_3 = "URL"
    L5_3 = L2_3
    L3_3(L4_3, L5_3)
    L3_3 = string
    L3_3 = L3_3.find
    L4_3 = L2_3
    L5_3 = "sibche://paymentreceipt/"
    L3_3, L4_3 = L3_3(L4_3, L5_3)
    L5_3 = string
    L5_3 = L5_3.find
    L6_3 = L2_3
    L7_3 = "sibche://paymenterror/"
    L5_3, L6_3 = L5_3(L6_3, L7_3)
    if L3_3 ~= nil then
      L7_3 = string
      L7_3 = L7_3.sub
      L8_3 = L2_3
      L9_3 = L4_3 + 1
      L10_3 = string
      L10_3 = L10_3.len
      L11_3 = L2_3
      L10_3, L11_3, L12_3 = L10_3(L11_3)
      L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
      L11_1 = L7_3
      L7_3 = native
      L7_3 = L7_3.cancelWebPopup
      L7_3()
      L7_3 = L8_1
      L7_3 = L7_3.show
      L8_3 = "\216\174\216\177\219\140\216\175"
      L7_3(L8_3)
      L7_3 = delegate
      L7_3 = L7_3.purchaseCallback
      L8_3 = L11_1
      L7_3(L8_3)
      L1_3 = false
      L7_3 = L4_1
      L7_3 = L7_3.hideOverlay
      L7_3()
      L7_3 = log3
      L8_3 = "receipt"
      L9_3 = L11_1
      L7_3(L8_3, L9_3)
    elseif L5_3 ~= nil then
      L7_3 = L7_1
      L7_3 = L7_3.urlDecode
      L8_3 = string
      L8_3 = L8_3.sub
      L9_3 = L2_3
      L10_3 = L6_3 + 1
      L11_3 = string
      L11_3 = L11_3.len
      L12_3 = L2_3
      L11_3, L12_3 = L11_3(L12_3)
      L8_3, L9_3, L10_3, L11_3, L12_3 = L8_3(L9_3, L10_3, L11_3, L12_3)
      L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
      L8_3 = showSimpleDialog
      L9_3 = "\216\174\216\183\216\167"
      L10_3 = L7_3
      L8_3(L9_3, L10_3)
      L8_3 = log3
      L9_3 = "paymenterror"
      L10_3 = L7_3
      L8_3(L9_3, L10_3)
      L1_3 = false
    end
    L7_3 = string
    L7_3 = L7_3.find
    L8_3 = L2_3
    L9_3 = "login"
    L7_3 = L7_3(L8_3, L9_3)
    if L7_3 then
    end
    L7_3 = string
    L7_3 = L7_3.find
    L8_3 = L2_3
    L9_3 = "corona:close"
    L7_3 = L7_3(L8_3, L9_3)
    if 1 == L7_3 then
      L1_3 = false
    end
    L7_3 = A0_3.errorCode
    if L7_3 then
      L7_3 = print
      L8_3 = "Error: "
      L9_3 = tostring
      L10_3 = A0_3.errorMessage
      L9_3 = L9_3(L10_3)
      L8_3 = L8_3 .. L9_3
      L7_3(L8_3)
      L1_3 = false
    end
    return L1_3
  end
  
  L11_2 = {}
  L11_2.hasBackground = true
  L11_2.urlRequest = L10_2
  L12_2 = log3
  L13_2 = "!!!!!!! PURCHASE URL !!!!!"
  L14_2 = Constants
  L14_2 = L14_2.Sibche_BaseURL
  L15_2 = Constants
  L15_2 = L15_2.API_PurchaseProduct
  L16_2 = "?package_uid="
  L17_2 = purchaseItemUID
  L14_2 = L14_2 .. L15_2 .. L16_2 .. L17_2
  L12_2(L13_2, L14_2)
  L12_2 = native
  L12_2 = L12_2.showWebPopup
  L13_2 = L9_2.x
  L14_2 = L9_2.width
  L14_2 = L14_2 / 2
  L13_2 = L13_2 - L14_2
  L14_2 = L9_2.y
  L15_2 = L9_2.height
  L15_2 = L15_2 / 2
  L14_2 = L14_2 - L15_2
  L15_2 = L9_2.width
  L16_2 = L9_2.height
  L17_2 = Constants
  L17_2 = L17_2.Sibche_BaseURL
  L18_2 = Constants
  L18_2 = L18_2.API_PurchaseProduct
  L19_2 = "?package_uid="
  L20_2 = purchaseItemUID
  L17_2 = L17_2 .. L18_2 .. L19_2 .. L20_2
  L18_2 = L11_2
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
end

L5_1.create = L14_1

function L14_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.view
end

L5_1.show = L14_1

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = _G
  L2_2.notLoading = false
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = native
    L4_2 = L4_2.cancelWebPopup
    L4_2()
  end
end

L5_1.hide = L14_1

function L14_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.view
end

L5_1.destroy = L14_1
L15_1 = L5_1
L14_1 = L5_1.addEventListener
L16_1 = "create"
L17_1 = L5_1
L14_1(L15_1, L16_1, L17_1)
L15_1 = L5_1
L14_1 = L5_1.addEventListener
L16_1 = "show"
L17_1 = L5_1
L14_1(L15_1, L16_1, L17_1)
L15_1 = L5_1
L14_1 = L5_1.addEventListener
L16_1 = "hide"
L17_1 = L5_1
L14_1(L15_1, L16_1, L17_1)
L15_1 = L5_1
L14_1 = L5_1.addEventListener
L16_1 = "destroy"
L17_1 = L5_1
L14_1(L15_1, L16_1, L17_1)
return L5_1
