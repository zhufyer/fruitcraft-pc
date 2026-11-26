local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "json"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Views.ActivityIndicatorView"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Utils.Toolbox"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "json"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "store"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Utils.base64"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Utils.Toolbox"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Language"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Models.ErrorController"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Models.UserCard"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Utils.Analytics"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "plugin.gameanalytics_v2"
L12_1 = L12_1(L13_1)
L13_1 = nil
L14_1 = nil
L15_1 = nil
L16_1 = nil
L17_1 = 0
L18_1 = nil
L19_1 = false
L20_1 = nil
L21_1 = nil
L22_1 = false
L23_1 = nil
L24_1 = nil
L25_1 = nil
L26_1 = false
L27_1 = false
L28_1 = {}
L29_1 = nil

function L30_1()
  local L0_2, L1_2, L2_2
  L0_2 = mainPlayer
  L0_2 = L0_2.abTests
  if L0_2 then
    L0_2 = mainPlayer
    L0_2 = L0_2.abTests
    L0_2 = L0_2.new_shop_test
    if L0_2 ~= nil then
      L0_2 = log3
      L1_2 = "ab_tests mainPlayer.abTests.new_shop_test"
      L2_2 = mainPlayer
      L2_2 = L2_2.abTests
      L2_2 = L2_2.new_shop_test
      L0_2(L1_2, L2_2)
      L0_2 = mainPlayer
      L0_2 = L0_2.abTests
      L0_2 = L0_2.new_shop_test
      return L0_2
    end
  end
  L0_2 = log3
  L1_2 = "ab_tests mainPlayer.abTests.new_shop_test"
  L2_2 = "a (defaulted)"
  L0_2(L1_2, L2_2)
  L0_2 = "a"
  return L0_2
end

getTestShopVariant = L30_1
L30_1 = true
L31_1 = nil
L32_1 = _G
L33_1 = {}
L32_1.sibcheUser = L33_1

function L32_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 then
    L2_2 = todNative
    if L2_2 then
      L2_2 = L2_1
      L2_2 = L2_2.show
      L3_2 = "\216\168\216\177\216\177\216\179\219\140 \216\185\216\182\217\136\219\140\216\170"
      L2_2(L3_2)
      L2_2 = todNative
      L2_2 = L2_2.checkSubscriptionWithId
      L3_2 = {}
      L4_2 = {}
      L4_2.id = A0_2
      L4_2.bundleID = "TEST"
      L3_2[1] = L4_2
      L2_2(L3_2)
      L2_2 = todNative
      L2_2 = L2_2.checkSubscriptionCallback
      L3_2 = A1_2
      L2_2(L3_2)
    else
      L2_2 = A1_2
      L3_2 = false
      L2_2(L3_2)
    end
  end
end

checkSubscription = L32_1

function L32_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = {}
  L4_2.type = 38
  L4_2.receipt = A0_2
  if A1_2 ~= nil then
    L4_2.token = A1_2
  end
  L5_2 = tonumber
  L6_2 = Constants
  L6_2 = L6_2.StoreID
  L5_2 = L5_2(L6_2)
  L4_2.store = L5_2
  L5_2 = Constants
  L5_2 = L5_2.API_Path
  L6_2 = Constants
  L6_2 = L6_2.API_BuyGoldPack
  L5_2 = L5_2 .. L6_2
  L6_2 = {}
  params = L6_2
  L6_2 = params
  L6_2.body = L4_2
  L6_2 = params
  L7_2 = network
  L7_2 = L7_2.getDefaultHeader
  L7_2 = L7_2()
  L6_2.headers = L7_2
  L6_2 = network
  L6_2 = L6_2.request
  L7_2 = L5_2
  L8_2 = "POST"
  L9_2 = A2_2
  L10_2 = params
  L11_2 = "send receipt"
  L12_2 = nil
  L13_2 = A3_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

verifySubscription = L32_1

function L32_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = {}
  L4_2.type = 38
  L4_2.receipt = A0_2
  if A1_2 ~= nil then
    L4_2.token = A1_2
  end
  L5_2 = tonumber
  L6_2 = Constants
  L6_2 = L6_2.StoreID
  L5_2 = L5_2(L6_2)
  L4_2.store = L5_2
  L5_2 = Constants
  L5_2 = L5_2.API_Path
  L6_2 = Constants
  L6_2 = L6_2.API_CheckSubscription
  L5_2 = L5_2 .. L6_2
  L6_2 = {}
  params = L6_2
  L6_2 = params
  L6_2.body = L4_2
  L6_2 = params
  L7_2 = network
  L7_2 = L7_2.getDefaultHeader
  L7_2 = L7_2()
  L6_2.headers = L7_2
  L6_2 = network
  L6_2 = L6_2.request
  L7_2 = L5_2
  L8_2 = "POST"
  L9_2 = A2_2
  L10_2 = params
  L11_2 = "check sub"
  L12_2 = nil
  L13_2 = A3_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

checkSubscriptionWithServer = L32_1

function L32_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = {}
  L4_2.type = 38
  L4_2.receipt = A0_2
  if A1_2 ~= nil then
    L4_2.token = A1_2
  end
  L5_2 = tonumber
  L6_2 = Constants
  L6_2 = L6_2.StoreID
  L5_2 = L5_2(L6_2)
  L4_2.store = L5_2
  L5_2 = Constants
  L5_2 = L5_2.API_Path
  L6_2 = Constants
  L6_2 = L6_2.API_CancelSubscription
  L5_2 = L5_2 .. L6_2
  L6_2 = {}
  params = L6_2
  L6_2 = params
  L6_2.body = L4_2
  L6_2 = params
  L7_2 = network
  L7_2 = L7_2.getDefaultHeader
  L7_2 = L7_2()
  L6_2.headers = L7_2
  L6_2 = network
  L6_2 = L6_2.request
  L7_2 = L5_2
  L8_2 = "POST"
  L9_2 = A2_2
  L10_2 = params
  L11_2 = "cancel sub"
  L12_2 = nil
  L13_2 = A3_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

cancelSubscription = L32_1

function L32_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = {}
  L4_2 = pairs
  L5_2 = A0_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.product_uid
    if L9_2 then
      L9_2 = #L3_2
      L9_2 = L9_2 + 1
      L10_2 = L8_2.product_uid
      L3_2[L9_2] = L10_2
    end
  end
  L4_2 = #L3_2
  if L4_2 == 0 then
    L4_2 = print
    L5_2 = "SKComponents/applyApplePrices: Server did not return any purchasable product"
    L4_2(L5_2)
    L4_2 = nil
    productList = L4_2
    if A2_2 ~= nil then
      L4_2 = A2_2
      L5_2 = L8_1
      L5_2 = L5_2["AppStore not available on this device"]
      L4_2(L5_2)
    end
    return
  end
  L4_2 = log3
  L5_2 = "Checking with Apple"
  L4_2(L5_2)
  L4_2 = L5_1
  L4_2 = L4_2.availableStores
  L4_2 = L4_2.apple
  if not L4_2 then
    L4_2 = print
    L5_2 = "Apple store was not available on device"
    L4_2(L5_2)
    L4_2 = nil
    productList = L4_2
    if A2_2 ~= nil then
      L4_2 = A2_2
      L5_2 = L8_1
      L5_2 = L5_2["AppStore not available on this device"]
      L4_2(L5_2)
    end
    return
  end
  L4_2 = L27_1
  if not L4_2 then
    L4_2 = L5_1
    L4_2 = L4_2.init
    L5_2 = "apple"
    L6_2 = coronaTransactionCallback
    L4_2(L5_2, L6_2)
    L4_2 = true
    L27_1 = L4_2
  end
  L4_2 = L5_1
  L4_2 = L4_2.canLoadProducts
  if not L4_2 then
    L4_2 = print
    L5_2 = "Could not load AppStore products"
    L4_2(L5_2)
    L4_2 = nil
    productList = L4_2
    if A2_2 ~= nil then
      L4_2 = A2_2
      L5_2 = L8_1
      L5_2 = L5_2["AppStore not available on this device"]
      L4_2(L5_2)
    end
    return
  end
  L4_2 = print
  L5_2 = "Loading app store products..."
  L4_2(L5_2)
  L4_2 = L5_1
  L4_2 = L4_2.loadProducts
  L5_2 = L3_2
  
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L1_3 = {}
    if A0_3 then
      L2_3 = A0_3.products
      if L2_3 then
        L2_3 = print
        L3_3 = "SKComponents/applyApplePrices: Valid products count is:"
        L4_3 = A0_3.products
        L4_3 = #L4_3
        L2_3(L3_3, L4_3)
        L2_3 = 1
        L3_3 = A0_3.products
        L3_3 = #L3_3
        L4_3 = 1
        for L5_3 = L2_3, L3_3, L4_3 do
          L6_3 = A0_3.products
          L6_3 = L6_3[L5_3]
          L7_3 = L6_3.productIdentifier
          if L7_3 then
            L7_3 = L6_3.productIdentifier
            L8_3 = L6_3.localizedPrice
            L1_3[L7_3] = L8_3
            L7_3 = print
            L8_3 = "SKComponents/applyApplePrices: Found the following product. Name: "
            L9_3 = L6_3.title
            L10_3 = "price: "
            L11_3 = L6_3.price
            L12_3 = " local price: "
            L13_3 = L6_3.localizedPrice
            L14_3 = " desc: "
            L15_3 = L6_3.description
            L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
          end
        end
    end
    else
      L2_3 = print
      L3_3 = "SKComponents/applyApplePrices: Apple did not return any product"
      L2_3(L3_3)
    end
    if A0_3 then
      L2_3 = A0_3.invalidProducts
      if L2_3 then
        L2_3 = print
        L3_3 = "SKComponents/applyApplePrices: Invalid products count is:"
        L4_3 = A0_3.invalidProducts
        L4_3 = #L4_3
        L2_3(L3_3, L4_3)
      end
    end
    L2_3 = next
    L3_3 = L1_3
    L2_3 = L2_3(L3_3)
    if L2_3 == nil then
      L2_3 = print
      L3_3 = "SKComponents/applyApplePrices: Apple priced none of the requested SKUs. Requested:"
      L4_3 = L3_2
      L4_3 = #L4_3
      L2_3(L3_3, L4_3)
      L2_3 = log3
      L3_3 = "SKComponents/applyApplePrices: no usable price came back from Apple, failing the whole request"
      L2_3(L3_3)
      L2_3 = nil
      productList = L2_3
      L2_3 = A2_2
      if L2_3 ~= nil then
        L2_3 = A2_2
        L3_3 = L8_1
        L3_3 = L3_3["AppStore not available on this device"]
        L2_3(L3_3)
      end
      return
    end
    L2_3 = {}
    L3_3 = pairs
    L4_3 = A0_2
    L3_3, L4_3, L5_3 = L3_3(L4_3)
    for L6_3, L7_3 in L3_3, L4_3, L5_3 do
      L8_3 = L7_3.product_uid
      if not L8_3 then
        L8_3 = #L2_3
        L8_3 = L8_3 + 1
        L2_3[L8_3] = L7_3
      else
        L8_3 = L7_3.product_uid
        L8_3 = L1_3[L8_3]
        if L8_3 then
          L8_3 = L7_3.product_uid
          L8_3 = L1_3[L8_3]
          L7_3.localPrice = L8_3
          L8_3 = #L2_3
          L8_3 = L8_3 + 1
          L2_3[L8_3] = L7_3
        else
          L8_3 = log3
          L9_3 = "SKComponents/applyApplePrices: dropping pack Apple did not price:"
          L10_3 = L7_3.product_uid
          L8_3(L9_3, L10_3)
        end
      end
    end
    productList = L2_3
    L3_3 = A1_2
    if L3_3 ~= nil then
      L3_3 = print
      L4_3 = "SKComponents/applyApplePrices: didGetProductListCallback is being called"
      L3_3(L4_3)
      L3_3 = A1_2
      L3_3()
    else
      L3_3 = print
      L4_3 = "SKComponents/applyApplePrices: didGetProductListCallback is NIL"
      L3_3(L4_3)
    end
  end
  
  L4_2(L5_2, L6_2)
end

function L33_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L15_1 = A0_2
  L16_1 = A1_2
  L2_2 = log3
  L3_2 = "Load Products called"
  L2_2(L3_2)
  L2_2 = os
  L2_2 = L2_2.time
  L2_2 = L2_2()
  L3_2 = L17_1
  L3_2 = L2_2 - L3_2
  if 300 < L3_2 then
    L4_2 = nil
    productList = L4_2
  end
  L4_2 = productList
  if L4_2 == nil then
    L4_2 = log2
    L5_2 = "!!!productList is NIL !!!!"
    L4_2(L5_2)
    L17_1 = L2_2
    L4_2 = storeType
    if L4_2 ~= "sibche" then
      L4_2 = storeType
      if L4_2 ~= "appstore" then
        L4_2 = storeType
        if L4_2 ~= "bazar" then
          L4_2 = storeType
          if L4_2 ~= "google" then
            L4_2 = storeType
            if L4_2 ~= "samsung" then
              L4_2 = storeType
              if L4_2 ~= "myket" then
                L4_2 = storeType
                if L4_2 ~= "tod" then
                  L4_2 = storeType
                  if L4_2 ~= "iraqapps" then
                    L4_2 = storeType
                    if L4_2 ~= "parsian" then
                      goto lbl_54
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    L4_2 = getProductListWithPrice
    L5_2 = L15_1
    L6_2 = L16_1
    L4_2(L5_2, L6_2)
    goto lbl_67
    ::lbl_54::
    L4_2 = storeType
    if L4_2 == "test" then
      L4_2 = getProductListWithPrice
      L5_2 = L15_1
      L6_2 = L16_1
      L4_2(L5_2, L6_2)
    end
  else
    L4_2 = log2
    L5_2 = "!!! Product list isn't nil so re-using"
    L4_2(L5_2)
    L4_2 = L15_1
    L4_2()
  end
  ::lbl_67::
end

loadProductData = L33_1

function L33_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = storeType
  if L2_2 ~= "sibche" then
    L2_2 = storeType
    if L2_2 ~= "bazar" then
      L2_2 = storeType
      if L2_2 ~= "google" then
        L2_2 = storeType
        if L2_2 ~= "samsung" then
          L2_2 = storeType
          if L2_2 ~= "myket" then
            L2_2 = storeType
            if L2_2 ~= "iraqapps" then
              L2_2 = storeType
              if L2_2 ~= "parsian" then
                L2_2 = storeType
                if L2_2 ~= "tod" then
                  L2_2 = storeType
                  if L2_2 ~= "test" then
                    L2_2 = storeType
                    if L2_2 ~= "appstore" then
                      goto lbl_71
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L1_3 = A0_3.isError
    if L1_3 then
      L1_3 = log
      L2_3 = "Network error! Failed to fetch product list prices"
      L1_3(L2_3)
      L1_3 = A1_2
      if L1_3 ~= nil then
        L1_3 = A1_2
        L2_3 = "Network error"
        L1_3(L2_3)
      end
    else
      L1_3 = L0_1
      L1_3 = L1_3.decode
      L2_3 = A0_3.response
      L1_3 = L1_3(L2_3)
      L2_3 = log3
      L3_3 = "getshopitems: product list"
      L4_3 = A0_3.response
      L2_3(L3_3, L4_3)
      if L1_3 then
        L2_3 = L1_3.status
        if L2_3 == true then
          L2_3 = L1_3.metadata
          if L2_3 then
            L2_3 = L1_3.metadata
            L2_3 = L2_3.ask_for_phonenumber
            if L2_3 then
              L2_3 = true
              L30_1 = L2_3
            else
              L2_3 = false
              L30_1 = L2_3
            end
            L2_3 = print
            L3_3 = "WebPayment_AskPhoneNumber:"
            L4_3 = L30_1
            L2_3(L3_3, L4_3)
          end
          L2_3 = L7_1
          L2_3 = L2_3.printTable
          L3_3 = L1_3.data
          L2_3(L3_3)
          L2_3 = pairs
          L3_3 = L1_3.data
          L2_3, L3_3, L4_3 = L2_3(L3_3)
          for L5_3, L6_3 in L2_3, L3_3, L4_3 do
            L7_3 = L6_3.product_uid
            if L7_3 then
              L7_3 = L7_1
              L7_3 = L7_3.stringThousandCommaSeperated
              L8_3 = L6_3.price
              L9_3 = Constants
              L9_3 = L9_3.StoreID
              L8_3 = L8_3[L9_3]
              L7_3 = L7_3(L8_3)
              L6_3.localPrice = L7_3
            else
              L7_3 = type
              L8_3 = L6_3.price
              L7_3 = L7_3(L8_3)
              if L7_3 == "table" then
                L7_3 = L6_3.price
                L8_3 = Constants
                L8_3 = L8_3.StoreID
                L7_3 = L7_3[L8_3]
                L6_3.localPrice = L7_3
              else
                L7_3 = type
                L8_3 = L6_3.price
                L7_3 = L7_3(L8_3)
                if L7_3 == "number" then
                  L7_3 = L6_3.price
                  L6_3.localPrice = L7_3
                end
              end
            end
            L7_3 = L6_3.nectar_amount
            if L7_3 then
              L7_3 = L6_3.nectar_amount
              L6_3.baseCurrencyAmount = L7_3
            end
            L7_3 = L6_3.nectar_to_price_ratio
            if L7_3 then
              L7_3 = L6_3.nectar_to_price_ratio
              L6_3.currencyToPriceRatio = L7_3
            end
            L7_3 = L6_3.gold_amount
            if L7_3 then
              L7_3 = L6_3.gold_amount
              L6_3.baseCurrencyAmount = L7_3
            end
            L7_3 = L6_3.gold_to_price_ratio
            if L7_3 then
              L7_3 = L6_3.gold_to_price_ratio
              L6_3.currencyToPriceRatio = L7_3
            end
            L7_3 = L6_3.popularity
            if L7_3 then
              L7_3 = L6_3.popularity
              L6_3.popularityStatus = L7_3
            end
            L7_3 = L6_3.onsale
            if L7_3 then
              L7_3 = {}
              L6_3.sale = L7_3
              L7_3 = log3
              L8_3 = "store id is : "
              L9_3 = Constants
              L9_3 = L9_3.StoreID
              L7_3(L8_3, L9_3)
              L7_3 = L6_3.onsale
              L8_3 = Constants
              L8_3 = L8_3.StoreID
              L7_3 = L7_3[L8_3]
              L8_3 = L6_3.sale
              L9_3 = L7_3[1]
              L8_3.startTime = L9_3
              L8_3 = L6_3.sale
              L9_3 = L7_3[2]
              L8_3.endTime = L9_3
              L8_3 = L6_3.sale
              L9_3 = L7_3[3]
              L8_3.percent = L9_3
            end
            L7_3 = _storeType
            if L7_3 ~= "sibche" then
              L7_3 = _storeType
              if L7_3 ~= "bazar" then
                L7_3 = _storeType
                if L7_3 ~= "myket" then
                  L7_3 = _storeType
                  if L7_3 ~= "iraqapps" then
                    L7_3 = _storeType
                    if L7_3 ~= "parsian" then
                      L7_3 = _storeType
                      if L7_3 ~= "tod" then
                        L7_3 = _storeType
                        if L7_3 ~= "appstore" then
                          goto lbl_167
                        end
                        L7_3 = mainPlayer
                        L7_3 = L7_3.canUseVitrin
                        if L7_3 ~= true then
                          goto lbl_167
                        end
                      end
                    end
                  end
                end
              end
            end
            L7_3 = L6_3.product_uid
            if L7_3 then
              L7_3 = L7_1
              L7_3 = L7_3.convertEnglishNumberToPersian
              L8_3 = L6_3.localPrice
              L7_3 = L7_3(L8_3)
              L6_3.localPrice = L7_3
              L7_3 = L6_3.localPrice
              L8_3 = " \216\170\217\136\217\133\216\167\217\134"
              L7_3 = L7_3 .. L8_3
              L6_3.localPrice = L7_3
              goto lbl_174
              ::lbl_167::
              L7_3 = L6_3.product_uid
              if L7_3 then
                L7_3 = "$ "
                L8_3 = L6_3.localPrice
                L7_3 = L7_3 .. L8_3
                L6_3.localPrice = L7_3
              end
            end
            ::lbl_174::
            L7_3 = L6_3.product_uid
            if not L7_3 then
              L7_3 = L6_3.localPrice
              L6_3.priceNumber = L7_3
              L7_3 = L6_3.localPrice
              L6_3.localPrice = L7_3
              L7_3 = L6_3.price
              L6_3.localPrice = L7_3
            end
            L7_3 = L6_3.product_uid
            L8_3 = Constants
            L8_3 = L8_3.App_UID
            L9_3 = ".avatar"
            L8_3 = L8_3 .. L9_3
            if L7_3 == L8_3 then
              L7_3 = L6_3.avatar_payment_available
              if L7_3 == false then
                L7_3 = Constants
                L7_3.Can_Open_Avatar_Pack = false
              else
                L7_3 = L6_3.avatar_payment_available
                if L7_3 == true then
                  L7_3 = Constants
                  L7_3.Can_Open_Avatar_Pack = true
                else
                  L7_3 = Constants
                  L7_3.Can_Open_Avatar_Pack = false
                end
              end
            end
            L7_3 = log3
            L8_3 = "\194\162\194\162\194\162\194\162\194\162\194\162\194\162\194\162 gives_avatar for pack:"
            L9_3 = L6_3.product_uid
            L10_3 = L6_3.gives_avatar
            L11_3 = "gives_avatar type:"
            L12_3 = type
            L13_3 = L6_3.gives_avatar
            L12_3, L13_3 = L12_3(L13_3)
            L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
            L7_3 = L6_3.gives_avatar
            if L7_3 == true then
              L6_3.givesAvatar = true
            else
              L6_3.givesAvatar = false
            end
          end
          L2_3 = L1_3.data
          productList = L2_3
          L2_3 = storeType
          if L2_3 == "appstore" then
            L2_3 = mainPlayer
            L2_3 = L2_3.canUseVitrin
            if L2_3 ~= true then
              L2_3 = L32_1
              L3_3 = L1_3.data
              L4_3 = A0_2
              L5_3 = A1_2
              L2_3(L3_3, L4_3, L5_3)
          end
          else
            L2_3 = A0_2
            if L2_3 ~= nil then
              L2_3 = A0_2
              L2_3()
            end
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
            L3_3 = A1_2
            if L3_3 ~= nil then
              L3_3 = A1_2
              L4_3 = L2_3
              L3_3(L4_3)
            end
          end
        end
      else
        L2_3 = "Invalid network response."
        L3_3 = A1_2
        if L3_3 ~= nil then
          L3_3 = A1_2
          L4_3 = L2_3
          L3_3(L4_3)
        end
      end
    end
  end
  
  L3_2 = {}
  L4_2 = getTestShopVariant
  L4_2 = L4_2()
  L3_2.test_group = L4_2
  L5_2 = {}
  params = L5_2
  L5_2 = params
  L5_2.body = L3_2
  L5_2 = params
  L6_2 = network
  L6_2 = L6_2.getDefaultHeader
  L6_2 = L6_2()
  L5_2.headers = L6_2
  L5_2 = Constants
  L5_2 = L5_2.API_Path
  L6_2 = Constants
  L6_2 = L6_2.API_GetProductList
  L5_2 = L5_2 .. L6_2
  L6_2 = log3
  L7_2 = "Calling URL:"
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = network
  L6_2 = L6_2.request
  L7_2 = L5_2
  L8_2 = "POST"
  L9_2 = L2_2
  L10_2 = params
  L11_2 = "get product list with price"
  L12_2 = nil
  L13_2 = A1_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  ::lbl_71::
end

getProductListWithPrice = L33_1

function L33_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = print
  L6_2 = "sku "
  L7_2 = A1_2
  L6_2 = L6_2 .. L7_2
  L5_2(L6_2)
  L5_2 = _G
  L5_2.notLoading = true
  delegate = A2_2
  L14_1 = A0_2
  if A4_2 then
    L24_1 = A4_2
  else
    L5_2 = nil
    L24_1 = L5_2
  end
  if A1_2 then
    L25_1 = A1_2
  end
  L5_2 = L30_1
  if L5_2 then
    L5_2 = L1_1
    L5_2 = L5_2.showOverlay
    L6_2 = "Scenes.PaymentGetPhoneNumberOverlay"
    L7_2 = {}
    L8_2 = {}
    L8_2.id = A0_2
    L9_2 = L25_1
    L8_2.bundleId = L9_2
    L8_2.sku = A1_2
    L7_2.params = L8_2
    L5_2(L6_2, L7_2)
  else
    L5_2 = SKComponent
    L5_2 = L5_2.startWebPayment
    L6_2 = A0_2
    L7_2 = L25_1
    L8_2 = ""
    L5_2(L6_2, L7_2, L8_2)
  end
end

startWebPurchaseFlow = L33_1

function L33_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L8_2 = log3
  L9_2 = "Starting purchase with id:"
  L10_2 = A0_2
  L11_2 = "and UID:"
  L12_2 = A1_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = L26_1
  if L8_2 then
    L8_2 = log3
    L9_2 = "Purchase already in progress, rejecting new purchase request"
    L8_2(L9_2)
    if A2_2 then
      L8_2 = A2_2.failedToBuyItem
      if L8_2 then
        L8_2 = A2_2.failedToBuyItem
        L9_2 = nil
        L10_2 = "Purchase already in progress"
        L8_2(L9_2, L10_2)
      end
    end
    return
  end
  L8_2 = true
  L26_1 = L8_2
  L8_2 = L23_1
  if L8_2 then
    L8_2 = timer
    L8_2 = L8_2.cancel
    L9_2 = L23_1
    L8_2(L9_2)
  end
  L8_2 = timer
  L8_2 = L8_2.performWithDelay
  L9_2 = 120000
  
  function L10_2()
    local L0_3, L1_3, L2_3
    L0_3 = log3
    L1_3 = "Purchase timeout reached, clearing purchase flag"
    L0_3(L1_3)
    L0_3 = false
    L26_1 = L0_3
    L0_3 = delegate
    if L0_3 then
      L0_3 = delegate
      L0_3 = L0_3.failedToBuyItem
      if L0_3 then
        L0_3 = delegate
        L0_3 = L0_3.failedToBuyItem
        L1_3 = nil
        L2_3 = "Purchase timeout"
        L0_3(L1_3, L2_3)
      end
    end
  end
  
  L8_2 = L8_2(L9_2, L10_2)
  L23_1 = L8_2
  L8_2 = _G
  L8_2.notLoading = true
  delegate = A2_2
  L22_1 = A7_2
  L14_1 = A0_2
  if A4_2 then
    L24_1 = A4_2
  else
    L8_2 = nil
    L24_1 = L8_2
  end
  L8_2 = storeType
  if L8_2 ~= "bazar" then
    L8_2 = storeType
    if L8_2 ~= "samsung" then
      L8_2 = storeType
      if L8_2 ~= "myket" then
        L8_2 = storeType
        if L8_2 ~= "iraqapps" then
          L8_2 = storeType
          if L8_2 ~= "tod" then
            L8_2 = storeType
            if L8_2 ~= "google" then
              goto lbl_88
            end
          end
        end
      end
    end
  end
  L8_2 = todNative
  L8_2 = L8_2.purchasePackageWithId
  L9_2 = {}
  L9_2.id = A1_2
  L9_2.bundleID = A3_2
  L8_2(L9_2)
  if A5_2 then
    L8_2 = todNative
    L8_2 = L8_2.subscriptionCallback
    L9_2 = A6_2
    L8_2(L9_2)
  else
    L8_2 = todNative
    L8_2 = L8_2.purchaseCallback
    L9_2 = purchaseCallback
    L8_2(L9_2)
  end
  L8_2 = checkCallbackFile
  L8_2()
  goto lbl_154
  ::lbl_88::
  L8_2 = storeType
  if L8_2 ~= "sibche" then
    L8_2 = storeType
    if L8_2 ~= "appstore" then
      goto lbl_117
    end
    L8_2 = mainPlayer
    L8_2 = L8_2.canUseVitrin
    if L8_2 ~= true then
      goto lbl_117
    end
  end
  L8_2 = false
  L26_1 = L8_2
  L8_2 = L23_1
  if L8_2 then
    L8_2 = timer
    L8_2 = L8_2.cancel
    L9_2 = L23_1
    L8_2(L9_2)
    L8_2 = nil
    L23_1 = L8_2
  end
  L8_2 = startWebPurchaseFlow
  L9_2 = A0_2
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = A3_2
  L13_2 = A4_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  goto lbl_154
  ::lbl_117::
  L8_2 = storeType
  if L8_2 == "appstore" then
    L8_2 = log3
    L9_2 = "apple purchase"
    L8_2(L9_2)
    L8_2 = L5_1
    L8_2 = L8_2.canMakePurchases
    if L8_2 then
      L8_2 = L5_1
      L8_2 = L8_2.purchase
      L9_2 = {}
      L10_2 = A1_2
      L9_2[1] = L10_2
      L8_2(L9_2)
      L18_1 = A3_2
    else
      L8_2 = log
      L9_2 = "Failed to purchase item with UID:"
      L10_2 = A1_2
      L8_2(L9_2, L10_2)
      L8_2 = false
      L26_1 = L8_2
      L8_2 = L23_1
      if L8_2 then
        L8_2 = timer
        L8_2 = L8_2.cancel
        L9_2 = L23_1
        L8_2(L9_2)
        L8_2 = nil
        L23_1 = L8_2
      end
      L8_2 = delegate
      L8_2 = L8_2.failedToBuyItem
      L9_2 = "Purchases disabled on device"
      L8_2(L9_2)
    end
  end
  ::lbl_154::
end

startPurchaseWithIdAndUID = L33_1

function L33_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L5_2 = print
  L6_2 = "SKComponent/purchaseCallback: purchaseJson ==> "
  L7_2 = A0_2
  L8_2 = "bundleId ==> "
  L9_2 = A1_2
  L10_2 = "error ==> "
  L11_2 = A3_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = L21_1
  if L5_2 then
    L5_2 = timer
    L5_2 = L5_2.cancel
    L6_2 = L21_1
    L5_2(L6_2)
  end
  L5_2 = _G
  L5_2.notLoading = false
  L5_2 = false
  L26_1 = L5_2
  L5_2 = L23_1
  if L5_2 then
    L5_2 = timer
    L5_2 = L5_2.cancel
    L6_2 = L23_1
    L5_2(L6_2)
    L5_2 = nil
    L23_1 = L5_2
  end
  if A0_2 == nil then
    L5_2 = delegate
    if L5_2 then
      L5_2 = delegate
      L5_2 = L5_2.failedToBuyItem
      L6_2 = nil
      L7_2 = A3_2
      L5_2(L6_2, L7_2)
  end
  else
    L5_2 = {}
    L6_2 = nil
    L7_2 = storeType
    if L7_2 ~= "bazar" then
      L7_2 = storeType
      if L7_2 ~= "myket" then
        L7_2 = storeType
        if L7_2 ~= "tod" then
          L7_2 = storeType
          if L7_2 ~= "google" then
            L7_2 = storeType
            if L7_2 ~= "iraqapps" then
              goto lbl_95
            end
          end
        end
      end
    end
    L7_2 = L0_1
    L7_2 = L7_2.decode
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    L5_2 = L7_2
    if L5_2 == nil then
      L7_2 = log3
      L8_2 = "could not parse response JSON"
      L7_2(L8_2)
      L7_2 = delegate
      L7_2 = L7_2.failedToBuyItem
      L8_2 = nil
      L9_2 = "Failed to parse server response"
      L7_2(L8_2, L9_2)
      return
    end
    L7_2 = log3
    L8_2 = "Dumping purchase info parsed JSON:"
    L7_2(L8_2)
    L7_2 = pairs
    L8_2 = L5_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L12_2 = log3
      L13_2 = L10_2
      L14_2 = L11_2
      L12_2(L13_2, L14_2)
    end
    L7_2 = log3
    L8_2 = "End of purchase info dump"
    L7_2(L8_2)
    L7_2 = log3
    L8_2 = "purchase token ==>"
    L9_2 = L5_2.purchaseToken
    L7_2(L8_2, L9_2)
    L6_2 = L5_2.receipt
    goto lbl_96
    ::lbl_95::
    L6_2 = A0_2
    ::lbl_96::
    L7_2 = delegate
    if L7_2 then
      L7_2 = log3
      L8_2 = "delegate isn't nil"
      L7_2(L8_2)
      L7_2 = sendReceipt
      L8_2 = L6_2
      
      function L9_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = delegate
        L0_3 = L0_3.didPurchaseItemWithId
        L1_3 = nil
        L2_3 = L31_1
        L3_3 = L24_1
        L0_3(L1_3, L2_3, L3_3)
      end
      
      L10_2 = delegate
      L10_2 = L10_2.failedToBuyItem
      L11_2 = A4_2
      L12_2 = delegate
      L13_2 = L5_2.purchaseToken
      L14_2 = A1_2
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    else
      L7_2 = log3
      L8_2 = "delegate is nil"
      L7_2(L8_2)
      L7_2 = sendReceipt
      L8_2 = L6_2
      L9_2 = nil
      L10_2 = nil
      L11_2 = A4_2
      L12_2 = delegate
      L13_2 = L5_2.purchaseToken
      L14_2 = A1_2
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    end
  end
end

purchaseCallback = L33_1

function L33_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
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
      L1_3 = L4_1
      L1_3 = L1_3.decode
      L2_3 = A0_3.response
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L2_3 = nil
        L3_3 = nil
        L4_3 = L1_3.status
        if L4_3 == true then
          L4_3 = L1_3.data
          L4_3 = L4_3.bank_account_balance
          if L4_3 ~= nil then
            L4_3 = mainPlayer
            L4_3 = L4_3.bankBuilding
            if L4_3 ~= nil then
              L4_3 = mainPlayer
              L4_3 = L4_3.bankBuilding
              L5_3 = L1_3.data
              L5_3 = L5_3.bank_account_balance
              L4_3.gold = L5_3
            end
          end
          L4_3 = L1_3.data
          L4_3 = L4_3.gold
          if L4_3 ~= nil then
            L4_3 = mainPlayer
            L5_3 = L1_3.data
            L5_3 = L5_3.gold
            L4_3.gold = L5_3
          end
          L4_3 = 0
          L5_3 = L1_3.data
          if L5_3 then
            L5_3 = L1_3.data
            L5_3 = L5_3.price
            if L5_3 then
              L5_3 = storeType
              if L5_3 == "google" then
                L5_3 = L1_3.data
                L4_3 = L5_3.price
              else
                L5_3 = L1_3.data
                L5_3 = L5_3.price
                L4_3 = L5_3 / 100000
              end
            end
          end
          if 0 < L4_3 then
            L5_3 = L12_1
            L5_3 = L5_3.addBusinessEvent
            L6_3 = {}
            L6_3.currency = "USD"
            L7_3 = L4_3 * 100
            L6_3.amount = L7_3
            L6_3.itemType = "InAppPurchase"
            L7_3 = tostring
            L8_3 = L14_1
            L7_3 = L7_3(L8_3)
            L6_3.itemId = L7_3
            L7_3 = storeType
            L6_3.cartType = L7_3
            L5_3(L6_3)
          end
          L5_3 = L1_3.data
          L5_3 = L5_3.fill_potion
          if L5_3 ~= nil then
            L5_3 = L1_3.data
            L5_3 = L5_3.fill_potion
            if L5_3 == true then
              L5_3 = mainPlayer
              L6_3 = Constants
              L6_3 = L6_3.Potion_Capacity
              L5_3.potionAmount = L6_3
            end
          end
          L5_3 = L1_3.data
          L5_3 = L5_3.nectar
          if L5_3 ~= nil then
            L5_3 = mainPlayer
            L6_3 = L1_3.data
            L6_3 = L6_3.nectar
            L5_3.nectar = L6_3
          end
          L5_3 = L1_3.data
          L5_3 = L5_3.cards
          if L5_3 ~= nil then
            L5_3 = {}
            L28_1 = L5_3
            L5_3 = pairs
            L6_3 = L1_3.data
            L6_3 = L6_3.cards
            L5_3, L6_3, L7_3 = L5_3(L6_3)
            for L8_3, L9_3 in L5_3, L6_3, L7_3 do
              L10_3 = mainPlayer
              L10_3 = L10_3.cards
              L11_3 = L9_3.id
              L12_3 = L10_1
              L13_3 = L12_3
              L12_3 = L12_3.new
              L14_3 = L9_3
              L12_3 = L12_3(L13_3, L14_3)
              L10_3[L11_3] = L12_3
              L10_3 = L28_1
              L11_3 = L9_3.id
              L12_3 = mainPlayer
              L12_3 = L12_3.cards
              L13_3 = L9_3.id
              L12_3 = L12_3[L13_3]
              L10_3[L11_3] = L12_3
              L10_3 = A6_2
              if L10_3 ~= nil then
                L10_3 = mainPlayer
                L10_3 = L10_3.powerBoost
                if L10_3 ~= nil then
                  L10_3 = mainPlayer
                  L10_3 = L10_3.cards
                  L11_3 = L9_3.id
                  L10_3 = L10_3[L11_3]
                  L11_3 = mainPlayer
                  L11_3 = L11_3.cards
                  L12_3 = L9_3.id
                  L11_3 = L11_3[L12_3]
                  L11_3 = L11_3.power
                  L10_3.powerBeforeBoost = L11_3
                  L10_3 = mainPlayer
                  L10_3 = L10_3.cards
                  L11_3 = L9_3.id
                  L10_3 = L10_3[L11_3]
                  L10_3 = L10_3.power
                  L11_3 = mainPlayer
                  L11_3 = L11_3.cards
                  L12_3 = L9_3.id
                  L11_3 = L11_3[L12_3]
                  L12_3 = math
                  L12_3 = L12_3.ceil
                  L13_3 = mainPlayer
                  L13_3 = L13_3.powerBoost
                  L13_3 = L13_3.multiplier
                  L13_3 = L10_3 * L13_3
                  L12_3 = L12_3(L13_3)
                  L11_3.power = L12_3
                end
              end
            end
          end
          L5_3 = L1_3.data
          L5_3 = L5_3.pwboost_created_at
          if L5_3 then
            L5_3 = mainPlayer
            L6_3 = {}
            L7_3 = L1_3.data
            L7_3 = L7_3.pwboost_created_at
            L6_3.creationTime = L7_3
            L7_3 = L1_3.data
            L7_3 = L7_3.boost_id
            L6_3.id = L7_3
            L7_3 = Constants
            L7_3 = L7_3.BOOST_MULTIPLIERS
            L8_3 = tostring
            L9_3 = L1_3.data
            L9_3 = L9_3.boost_id
            L8_3 = L8_3(L9_3)
            L7_3 = L7_3[L8_3]
            L6_3.multiplier = L7_3
            L5_3.powerBoost = L6_3
            L5_3 = pairs
            L6_3 = mainPlayer
            L6_3 = L6_3.cards
            L5_3, L6_3, L7_3 = L5_3(L6_3)
            for L8_3, L9_3 in L5_3, L6_3, L7_3 do
              L10_3 = L9_3.power
              L9_3.powerBeforeBoost = L10_3
              L10_3 = L9_3.power
              L11_3 = math
              L11_3 = L11_3.ceil
              L12_3 = Constants
              L12_3 = L12_3.BOOST_MULTIPLIERS
              L13_3 = tostring
              L14_3 = L1_3.data
              L14_3 = L14_3.boost_id
              L13_3 = L13_3(L14_3)
              L12_3 = L12_3[L13_3]
              L12_3 = L10_3 * L12_3
              L11_3 = L11_3(L12_3)
              L9_3.power = L11_3
            end
          else
            L5_3 = L1_3.data
            L5_3 = L5_3.xpboost_created_at
            if L5_3 then
              L5_3 = mainPlayer
              L6_3 = {}
              L7_3 = L1_3.data
              L7_3 = L7_3.xpboost_created_at
              L6_3.creationTime = L7_3
              L7_3 = L1_3.data
              L7_3 = L7_3.boost_id
              L6_3.id = L7_3
              L5_3.xpBoost = L6_3
            end
          end
          L5_3 = L1_3.data
          L5_3 = L5_3.avatars
          if L5_3 then
            L5_3 = L1_3.data
            L3_3 = L5_3.avatars
            L2_3 = true
            L5_3 = true
            L31_1 = L5_3
          else
            L5_3 = false
            L31_1 = L5_3
          end
          L5_3 = A6_2
          if L5_3 ~= nil then
            L5_3 = L11_1
            L5_3 = L5_3.logEvent
            L6_3 = "Bundle Purchased"
            L5_3(L6_3)
          else
            L5_3 = L11_1
            L5_3 = L5_3.logEvent
            L6_3 = "Gold Pack Purchased"
            L5_3(L6_3)
          end
          L5_3 = storeType
          if L5_3 ~= "bazar" then
            L5_3 = storeType
            if L5_3 ~= "myket" then
              L5_3 = storeType
              if L5_3 ~= "tod" then
                L5_3 = storeType
                if L5_3 ~= "google" then
                  L5_3 = storeType
                  if L5_3 ~= "iraqapps" then
                    goto lbl_274
                  end
                end
              end
            end
          end
          L5_3 = log3
          L6_3 = "Consume Purchase "
          L7_3 = storeType
          L6_3 = L6_3 .. L7_3
          L5_3(L6_3)
          L5_3 = todNative
          L5_3 = L5_3.consumePurchase
          L5_3()
          L5_3 = todNative
          L5_3 = L5_3.consumePurchaseCallback
          L6_3 = consumeCallback
          L5_3(L6_3)
          goto lbl_342
          ::lbl_274::
          L5_3 = storeType
          if L5_3 == "parsian" then
            L5_3 = consumeCallback
            L6_3 = true
            L5_3(L6_3)
          else
            L5_3 = storeType
            if L5_3 == "samsung" then
              L5_3 = A1_2
              L6_3 = A0_2
              L5_3(L6_3)
            else
              L5_3 = storeType
              if L5_3 ~= "sibche" then
                L5_3 = storeType
                if L5_3 ~= "appstore" then
                  goto lbl_305
                end
                L5_3 = mainPlayer
                L5_3 = L5_3.canUseVitrin
                if L5_3 ~= true then
                  goto lbl_305
                end
              end
              L5_3 = A1_2
              if L5_3 ~= nil then
                L5_3 = A1_2
                L6_3 = A0_2
                L5_3(L6_3)
              else
                ::lbl_305::
                L5_3 = storeType
                if L5_3 == "appstore" then
                  L5_3 = log3
                  L6_3 = "Apple receipt was successfully sent to server and accepted."
                  L5_3(L6_3)
                  L5_3 = A1_2
                  if L5_3 ~= nil then
                    L5_3 = log3
                    L6_3 = "Calling success callback"
                    L5_3(L6_3)
                    L5_3 = A1_2
                    L6_3 = A0_2
                    L5_3(L6_3)
                  else
                    L5_3 = log3
                    L6_3 = "Callback for Apple success was nil"
                    L5_3(L6_3)
                  end
                else
                  L5_3 = storeType
                  if L5_3 == "test" then
                    L5_3 = warningLog
                    L6_3 = "Bought Pack from Test Store"
                    L5_3(L6_3)
                    L5_3 = A1_2
                    if L5_3 ~= nil and L2_3 == nil then
                      L5_3 = log3
                      L6_3 = "Calling success callback"
                      L5_3(L6_3)
                      L5_3 = A1_2
                      L6_3 = A0_2
                      L5_3(L6_3)
                    end
                  end
                end
              end
            end
          end
          ::lbl_342::
          if L2_3 then
            L5_3 = A4_2
            L5_3 = L5_3.successToBuyAvatar
            L6_3 = L3_3
            L5_3(L6_3)
          end
        else
          L4_3 = L1_3.status
          if L4_3 == false then
            L4_3 = L1_3.error
            if not L4_3 then
              L4_3 = "Network Response returned false status"
            end
            L5_3 = L1_3.data
            if L5_3 then
              L5_3 = L1_3.data
              L5_3 = L5_3.code
              if L5_3 then
                L5_3 = tostring
                L6_3 = L1_3.data
                L6_3 = L6_3.code
                L5_3 = L5_3(L6_3)
                if L5_3 == "265" then
                  L5_3 = true
                  L29_1 = L5_3
                  L5_3 = todNative
                  L5_3 = L5_3.consumePurchase
                  L5_3()
                  L5_3 = todNative
                  L5_3 = L5_3.consumePurchaseCallback
                  L6_3 = consumeCallback
                  L5_3(L6_3)
                else
                  L5_3 = L9_1
                  L5_3 = L5_3.getErrorMessage
                  L6_3 = L1_3.data
                  L5_3 = L5_3(L6_3)
                  L4_3 = L5_3 or L4_3
                  if not L5_3 then
                    L5_3 = tostring
                    L6_3 = L1_3.data
                    L6_3 = L6_3.code
                    L5_3 = L5_3(L6_3)
                    L4_3 = L5_3
                  end
                end
              end
            else
              L5_3 = L1_3.error
              if L5_3 then
                L5_3 = L1_3.error
                L4_3 = L5_3 or L4_3
                if not L5_3 then
                  L4_3 = "Response did not return success status"
                end
              end
            end
            L5_3 = A2_2
            if L5_3 ~= nil then
              L5_3 = L29_1
              if not L5_3 then
                L5_3 = A2_2
                L6_3 = A0_2
                L7_3 = L4_3
                L5_3(L6_3, L7_3)
              end
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
  
  L8_2 = {}
  if A6_2 ~= nil then
    L9_2 = tonumber
    L10_2 = A6_2
    L9_2 = L9_2(L10_2)
    L8_2.bundle_id = L9_2
  end
  L9_2 = isAndroid
  L9_2 = L9_2()
  if not L9_2 then
    L9_2 = isIOS
    L9_2 = L9_2()
    if not L9_2 then
      goto lbl_59
    end
  end
  L9_2 = isAndroid
  L9_2 = L9_2()
  if L9_2 then
    L9_2 = todNative
    L9_2 = L9_2.metrixSDK
    L10_2 = {}
    L10_2.operation = "GetMetrixUserId"
    L9_2 = L9_2(L10_2)
    L8_2.metrix_id = L9_2
  end
  L9_2 = todNative
  L9_2 = L9_2.tenjingSDK
  L10_2 = {}
  L10_2.operation = "GetAnalyticsInstallationId"
  L9_2 = L9_2(L10_2)
  L8_2.tenjin_installation_id = L9_2
  L9_2 = todNative
  L9_2 = L9_2.appMetricaSDK
  L10_2 = {}
  L10_2.operation = "GetDeviceId"
  L9_2 = L9_2(L10_2)
  L8_2.appmetrica_id = L9_2
  L9_2 = todNative
  L9_2 = L9_2.firebaseSDK
  L10_2 = {}
  L10_2.operation = "GetAppInstanceId"
  L9_2 = L9_2(L10_2)
  L8_2.firebase_app_instance_id = L9_2
  ::lbl_59::
  L9_2 = L14_1
  L8_2.type = L9_2
  L8_2.receipt = A0_2
  L8_2.signature = A3_2
  if A5_2 ~= nil then
    L8_2.token = A5_2
  end
  L9_2 = tonumber
  L10_2 = Constants
  L10_2 = L10_2.StoreID
  L9_2 = L9_2(L10_2)
  L8_2.store = L9_2
  L9_2 = storeType
  if L9_2 == "parsian" then
    L9_2 = L25_1
    if L9_2 then
      L9_2 = nil
      L25_1 = L9_2
    end
    L8_2.store = 14
  end
  L9_2 = storeType
  if L9_2 ~= "sibche" then
    L9_2 = storeType
    if L9_2 == "appstore" then
      L9_2 = mainPlayer
      L9_2 = L9_2.canUseVitrin
      if L9_2 == true then
    end
    else
      L9_2 = storeType
      if L9_2 == "bazar" then
        L9_2 = mainPlayer
        L9_2 = L9_2.totalQuests
        L10_2 = mainPlayer
        L10_2 = L10_2.id
        L9_2 = L9_2 * L10_2
        L8_2.payload = L9_2
      else
        L9_2 = storeType
        if L9_2 == "iraqapps" then
          L9_2 = mainPlayer
          L9_2 = L9_2.totalQuests
          L10_2 = mainPlayer
          L10_2 = L10_2.id
          L9_2 = L9_2 * L10_2
          L8_2.payload = L9_2
        else
          L9_2 = storeType
          if L9_2 == "parsian" then
            L9_2 = mainPlayer
            L9_2 = L9_2.totalQuests
            L10_2 = mainPlayer
            L10_2 = L10_2.id
            L9_2 = L9_2 * L10_2
            L8_2.payload = L9_2
          else
            L9_2 = storeType
            if L9_2 == "appstore" then
              if A0_2 then
                L9_2 = L6_1
                L9_2 = L9_2.encode
                L10_2 = A0_2
                L9_2 = L9_2(L10_2)
                L8_2.receipt = L9_2
              else
                L8_2.receipt = A0_2
              end
            else
              L9_2 = storeType
              if L9_2 == "google" then
                L9_2 = mainPlayer
                L9_2 = L9_2.totalQuests
                L10_2 = mainPlayer
                L10_2 = L10_2.id
                L9_2 = L9_2 * L10_2
                L8_2.payload = L9_2
                L8_2.receipt = A5_2
              else
                L9_2 = storeType
                if L9_2 == "myket" then
                  L9_2 = mainPlayer
                  L9_2 = L9_2.totalQuests
                  L10_2 = mainPlayer
                  L10_2 = L10_2.id
                  L9_2 = L9_2 * L10_2
                  L8_2.payload = L9_2
                else
                  L9_2 = storeType
                  if L9_2 == "tod" then
                    L9_2 = mainPlayer
                    L9_2 = L9_2.totalQuests
                    L10_2 = mainPlayer
                    L10_2 = L10_2.id
                    L9_2 = L9_2 * L10_2
                    L8_2.payload = L9_2
                    L8_2.receipt = A5_2
                  else
                    L9_2 = storeType
                    if L9_2 == "samsung" then
                      L9_2 = mainPlayer
                      L9_2 = L9_2.totalQuests
                      L10_2 = mainPlayer
                      L10_2 = L10_2.id
                      L9_2 = L9_2 * L10_2
                      L8_2.payload = L9_2
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L9_2 = L22_1
  if L9_2 then
    L9_2 = Constants
    L9_2 = L9_2.API_Path
    L10_2 = Constants
    L10_2 = L10_2.API_BuyProgressBundle
    L9_2 = L9_2 .. L10_2
    API = L9_2
  else
    L9_2 = Constants
    L9_2 = L9_2.API_Path
    L10_2 = Constants
    L10_2 = L10_2.API_BuyGoldPack
    L9_2 = L9_2 .. L10_2
    API = L9_2
  end
  L9_2 = {}
  params = L9_2
  L9_2 = params
  L9_2.body = L8_2
  L9_2 = log3
  L10_2 = "postData"
  L9_2(L10_2)
  L9_2 = L7_1
  L9_2 = L9_2.printTable
  L10_2 = L8_2
  L9_2(L10_2)
  L9_2 = params
  L10_2 = network
  L10_2 = L10_2.getDefaultHeader
  L10_2 = L10_2()
  L9_2.headers = L10_2
  L9_2 = network
  L9_2 = L9_2.request
  L10_2 = API
  L11_2 = "POST"
  L12_2 = L7_2
  L13_2 = params
  L14_2 = "send receipt"
  L15_2 = nil
  L16_2 = A2_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
end

sendReceipt = L33_1

function L33_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L2_1
    L1_3 = L1_3.hide
    L1_3()
    L1_3 = showSimpleDialog
    L2_3 = "Profile setInfo ERROR :"
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "buyAvatarPackWithFreeSlot"
    L4_3 = L3_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = nil
      L4_3 = nil
      L5_3 = L2_3.avatars
      if L5_3 then
        L3_3 = L2_3.avatars
        L4_3 = true
      end
      if L4_3 then
        L5_3 = A0_2
        L5_3 = L5_3.successToBuyAvatar
        L6_3 = L3_3
        L5_3(L6_3)
      end
    end
  end
  
  L5_2 = {}
  L6_2 = {}
  params = L6_2
  L6_2 = params
  L6_2.body = L5_2
  L6_2 = log3
  L7_2 = "postData"
  L8_2 = postData
  L6_2(L7_2, L8_2)
  L6_2 = params
  L7_2 = network
  L7_2 = L7_2.getDefaultHeader
  L7_2 = L7_2()
  L6_2.headers = L7_2
  L6_2 = network
  L6_2 = L6_2.request
  L7_2 = Constants
  L7_2 = L7_2.API_Path
  L8_2 = Constants
  L8_2 = L8_2.API_Buy_Avatar_Pack
  L7_2 = L7_2 .. L8_2
  L8_2 = "POST"
  L9_2 = L4_2
  L10_2 = params
  L11_2 = "send receipt"
  L12_2 = nil
  L13_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

buyAvatarPackWithFreeSlot = L33_1
L33_1 = nil

function L34_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = log2
  L2_2 = "Corona transaction callback"
  L1_2(L2_2)
  L1_2 = A0_2.transaction
  L33_1 = L1_2
  L1_2 = L33_1
  L1_2 = L1_2.state
  if L1_2 == "purchased" then
    L1_2 = print
    L2_2 = "Transaction succuessful!"
    L1_2(L2_2)
    L1_2 = print
    L2_2 = "productIdentifier"
    L3_2 = L33_1
    L3_2 = L3_2.productIdentifier
    L1_2(L2_2, L3_2)
    L1_2 = print
    L2_2 = "receipt"
    L3_2 = L33_1
    L3_2 = L3_2.receipt
    L1_2(L2_2, L3_2)
    L1_2 = print
    L2_2 = "transactionIdentifier"
    L3_2 = L33_1
    L3_2 = L3_2.identifier
    L1_2(L2_2, L3_2)
    L1_2 = print
    L2_2 = "date"
    L3_2 = L33_1
    L3_2 = L3_2.date
    L1_2(L2_2, L3_2)
    L1_2 = purchaseCallback
    L2_2 = L33_1
    L2_2 = L2_2.receipt
    L3_2 = L18_1
    L4_2 = nil
    L5_2 = A0_2.transaction
    L5_2 = L5_2.signature
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = L33_1
    L1_2 = L1_2.state
    if L1_2 == "restored" then
      L1_2 = print
      L2_2 = "Transaction restored (from previous session)"
      L1_2(L2_2)
      L1_2 = print
      L2_2 = "productIdentifier"
      L3_2 = L33_1
      L3_2 = L3_2.productIdentifier
      L1_2(L2_2, L3_2)
      L1_2 = print
      L2_2 = "receipt"
      L3_2 = L33_1
      L3_2 = L3_2.receipt
      L1_2(L2_2, L3_2)
      L1_2 = print
      L2_2 = "transactionIdentifier"
      L3_2 = L33_1
      L3_2 = L3_2.identifier
      L1_2(L2_2, L3_2)
      L1_2 = print
      L2_2 = "date"
      L3_2 = L33_1
      L3_2 = L3_2.date
      L1_2(L2_2, L3_2)
      L1_2 = print
      L2_2 = "originalReceipt"
      L3_2 = L33_1
      L3_2 = L3_2.originalReceipt
      L1_2(L2_2, L3_2)
      L1_2 = print
      L2_2 = "originalTransactionIdentifier"
      L3_2 = L33_1
      L3_2 = L3_2.originalIdentifier
      L1_2(L2_2, L3_2)
      L1_2 = print
      L2_2 = "originalDate"
      L3_2 = L33_1
      L3_2 = L3_2.originalDate
      L1_2(L2_2, L3_2)
      L1_2 = purchaseCallback
      L2_2 = L33_1
      L2_2 = L2_2.receipt
      L3_2 = L18_1
      L1_2(L2_2, L3_2)
    else
      L1_2 = L33_1
      L1_2 = L1_2.state
      if L1_2 == "cancelled" then
        L1_2 = print
        L2_2 = "User cancelled coronaTransaction"
        L1_2(L2_2)
        L1_2 = false
        L26_1 = L1_2
        L1_2 = L23_1
        if L1_2 then
          L1_2 = timer
          L1_2 = L1_2.cancel
          L2_2 = L23_1
          L1_2(L2_2)
          L1_2 = nil
          L23_1 = L1_2
        end
        L1_2 = purchaseCallback
        L2_2 = nil
        L1_2(L2_2)
      else
        L1_2 = L33_1
        L1_2 = L1_2.state
        if L1_2 == "failed" then
          L1_2 = print
          L2_2 = "Transaction failed, type:"
          L3_2 = L33_1
          L3_2 = L3_2.errorType
          L4_2 = L33_1
          L4_2 = L4_2.errorString
          L1_2(L2_2, L3_2, L4_2)
          L1_2 = false
          L26_1 = L1_2
          L1_2 = L23_1
          if L1_2 then
            L1_2 = timer
            L1_2 = L1_2.cancel
            L2_2 = L23_1
            L1_2(L2_2)
            L1_2 = nil
            L23_1 = L1_2
          end
          L1_2 = purchaseCallback
          L2_2 = nil
          L3_2 = L18_1
          L4_2 = "error:"
          L5_2 = L33_1
          L5_2 = L5_2.errorString
          L4_2 = L4_2 .. L5_2
          L1_2(L2_2, L3_2, L4_2)
        else
          L1_2 = print
          L2_2 = "Unknown purchase transaction event"
          L1_2(L2_2)
          L1_2 = false
          L26_1 = L1_2
          L1_2 = L23_1
          if L1_2 then
            L1_2 = timer
            L1_2 = L1_2.cancel
            L2_2 = L23_1
            L1_2(L2_2)
            L1_2 = nil
            L23_1 = L1_2
          end
          L1_2 = purchaseCallback
          L2_2 = nil
          L1_2(L2_2)
        end
      end
    end
  end
  L1_2 = log2
  L2_2 = "Calling finished transaction for Apple/Google"
  L1_2(L2_2)
  L1_2 = L5_1
  L1_2 = L1_2.finishTransaction
  L2_2 = L33_1
  L1_2(L2_2)
  L1_2 = log2
  L2_2 = "Finished calling finished transaction for Apple/Google"
  L1_2(L2_2)
end

coronaTransactionCallback = L34_1

function L34_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L3_2 = print
  L4_2 = "packType "
  L5_2 = A0_2
  L6_2 = " productIdentifier "
  L7_2 = A1_2
  L8_2 = " mobileNumber "
  L9_2 = A2_2
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
  L3_2(L4_2)
  L3_2 = 0
  L4_2 = Constants
  L4_2 = L4_2.API_Path_Secure
  L5_2 = "store/startwebpayment?playerId="
  L6_2 = mainPlayer
  L6_2 = L6_2.id
  L7_2 = "&packType="
  L8_2 = A0_2
  L9_2 = "&sku="
  L10_2 = A1_2
  L11_2 = "&mobileNo="
  L12_2 = A2_2
  L13_2 = "&market="
  L14_2 = storeType
  L15_2 = "&version="
  L16_2 = L7_1
  L16_2 = L16_2.getAppVersion
  L16_2 = L16_2()
  L17_2 = "&timezone="
  L18_2 = os
  L18_2 = L18_2.date
  L19_2 = "%z"
  L18_2 = L18_2(L19_2)
  L19_2 = "&orderId="
  L20_2 = L3_2
  L21_2 = "&pg=13"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2
  L5_2 = isAndroid
  L5_2 = L5_2()
  if L5_2 then
    L5_2 = require
    L6_2 = "plugin.appsflyer"
    L5_2 = L5_2(L6_2)
    L6_2 = L5_2.getAppsFlyerUID
    L6_2 = L6_2()
    L7_2 = todNative
    L7_2 = L7_2.metrixSDK
    L8_2 = {}
    L8_2.operation = "GetMetrixUserId"
    L7_2 = L7_2(L8_2)
    L8_2 = todNative
    L8_2 = L8_2.tenjingSDK
    L9_2 = {}
    L9_2.operation = "GetAnalyticsInstallationId"
    L8_2 = L8_2(L9_2)
    L9_2 = todNative
    L9_2 = L9_2.appMetricaSDK
    L10_2 = {}
    L10_2.operation = "GetDeviceId"
    L9_2 = L9_2(L10_2)
    L10_2 = todNative
    L10_2 = L10_2.firebaseSDK
    L11_2 = {}
    L11_2.operation = "GetAppInstanceId"
    L10_2 = L10_2(L11_2)
    L11_2 = L4_2
    L12_2 = "&afUID="
    L13_2 = L6_2
    L14_2 = "&mxUID="
    L15_2 = L7_2
    L16_2 = "&tenjID="
    L17_2 = L8_2
    L18_2 = "&apmUID="
    L19_2 = L9_2
    L20_2 = "&firebaseAppInstanceID="
    L21_2 = L10_2
    L4_2 = L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2
  end
  L5_2 = print
  L6_2 = L4_2
  L5_2(L6_2)
  L5_2 = system
  L5_2 = L5_2.openURL
  L6_2 = L4_2
  L5_2(L6_2)
end

startWebPayment = L34_1

function L34_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  result = L2_2
  L2_2 = A0_2
  L3_2 = A1_2
  L2_2 = L2_2 .. L3_2
  L3_2 = L2_2
  L2_2 = L2_2.gmatch
  L4_2 = "(.-)"
  L5_2 = A1_2
  L4_2 = L4_2 .. L5_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  for L5_2 in L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = result
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L2_2 = result
  return L2_2
end

Split = L34_1

function L34_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = log3
  L2_2 = "Scheme URL is: "
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = string
  L1_2 = L1_2.find
  L2_2 = A0_2
  L3_2 = Constants
  L3_2 = L3_2.Sibche_APIKey
  L4_2 = "://micropayment/"
  L3_2 = L3_2 .. L4_2
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = string
  L3_2 = L3_2.find
  L4_2 = A0_2
  L5_2 = Constants
  L5_2 = L5_2.Sibche_APIKey
  L6_2 = "://micropayment/error/"
  L5_2 = L5_2 .. L6_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = string
  L5_2 = L5_2.find
  L6_2 = A0_2
  L7_2 = "error"
  L5_2, L6_2 = L5_2(L6_2, L7_2)
  if L3_2 ~= nil then
    L7_2 = L6_1
    L7_2 = L7_2.decode
    L8_2 = string
    L8_2 = L8_2.sub
    L9_2 = A0_2
    L10_2 = L4_2 + 1
    L11_2 = string
    L11_2 = L11_2.len
    L12_2 = A0_2
    L11_2, L12_2 = L11_2(L12_2)
    L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    if L7_2 then
      L8_2 = showSimpleDialog
      L9_2 = "\216\174\216\183\216\167"
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    else
      L8_2 = showSimpleDialog
      L9_2 = "\216\174\216\183\216\167"
      L10_2 = "\216\174\216\183\216\167 \216\175\216\177 \216\174\216\177\219\140\216\175"
      L8_2(L9_2, L10_2)
    end
    L8_2 = log3
    L9_2 = "paymenterror"
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  elseif L1_2 ~= nil then
    L7_2 = string
    L7_2 = L7_2.sub
    L8_2 = A0_2
    L9_2 = L2_2 + 1
    L10_2 = string
    L10_2 = L10_2.len
    L11_2 = A0_2
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    receipt = L7_2
    L7_2 = L2_1
    L7_2 = L7_2.show
    L8_2 = "\216\174\216\177\219\140\216\175"
    L7_2(L8_2)
    L7_2 = nil
    L8_2 = L18_1
    if L8_2 ~= nil then
      L7_2 = L18_1
    else
      L8_2 = L6_1
      L8_2 = L8_2.decode
      L9_2 = receipt
      L8_2 = L8_2(L9_2)
      L9_2 = print
      L10_2 = "Receipt: "
      L11_2 = receipt
      L10_2 = L10_2 .. L11_2
      L9_2(L10_2)
      L9_2 = Split
      L10_2 = L8_2
      L11_2 = "|"
      L9_2 = L9_2(L10_2, L11_2)
      L7_2 = L9_2[5]
    end
    L8_2 = purchaseCallback
    L9_2 = receipt
    L10_2 = L7_2
    L11_2 = nil
    L12_2 = nil
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = log3
    L9_2 = "receipt"
    L10_2 = receipt
    L8_2(L9_2, L10_2)
  elseif L5_2 ~= nil then
    L7_2 = showSimpleDialog
    L8_2 = "\216\174\216\183\216\167"
    L9_2 = "\216\174\216\183\216\167 \216\175\216\177 \216\174\216\177\219\140\216\175"
    L7_2(L8_2, L9_2)
  end
end

webPurchaseCallback = L34_1

function L34_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = A0_3.isError
    if L1_3 then
      L1_3 = log
      L2_3 = "Network error! Failed collection card."
      L1_3(L2_3)
      L1_3 = A1_2
      if L1_3 ~= nil then
        L1_3 = A1_2
        L2_3 = true
        L3_3 = "Network error"
        L1_3(L2_3, L3_3)
      end
    else
      L1_3 = log3
      L2_3 = "~~~~~~ balance ~~~~~~"
      L3_3 = A0_3.response
      L1_3(L2_3, L3_3)
      L1_3 = L0_1
      L1_3 = L1_3.decode
      L2_3 = A0_3.response
      L1_3 = L1_3(L2_3)
      L2_3 = log3
      L3_3 = "VALUE"
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
      if L1_3 ~= nil then
        L2_3 = L1_3.status
        if L2_3 == true then
          L2_3 = L1_3.data
          L2_3 = L2_3.balance
          if L2_3 ~= nil then
          else
            L2_3 = log
            L3_3 = "Network error! The response did not contain proper values:"
            L4_3 = A0_3.response
            L3_3 = L3_3 .. L4_3
            L2_3(L3_3)
            L2_3 = A1_2
            if L2_3 ~= nil then
              L2_3 = A1_2
              L3_3 = false
              L4_3 = "Response did not contain required fields"
              L2_3(L3_3, L4_3)
            end
            return
          end
          L2_3 = A0_2
          if L2_3 ~= nil then
            L2_3 = A0_2
            L2_3()
          end
        else
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
          L3_3 = A1_2
          if L3_3 ~= nil then
            L3_3 = A1_2
            L4_3 = false
            L5_3 = L2_3
            L3_3(L4_3, L5_3)
          end
        end
      else
        L2_3 = A1_2
        if L2_3 ~= nil then
          L2_3 = A1_2
          L3_3 = false
          L4_3 = errorMessage
          L2_3(L3_3, L4_3)
        end
      end
    end
  end
  
  L3_2 = log3
  L4_2 = Constants
  L4_2 = L4_2.Sibche_BaseURL
  L5_2 = Constants
  L5_2 = L5_2.API_GetVCBalance
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = {}
  params = L3_2
  L3_2 = network
  L3_2 = L3_2.request
  L4_2 = Constants
  L4_2 = L4_2.Sibche_BaseURL
  L5_2 = Constants
  L5_2 = L5_2.API_GetVCBalance
  L4_2 = L4_2 .. L5_2
  L5_2 = "GET"
  L6_2 = L2_2
  L7_2 = params
  L3_2(L4_2, L5_2, L6_2, L7_2)
end

checkUserLogin = L34_1

function L34_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = log3
  L1_2 = "successToGetVCBalance"
  L0_2(L1_2)
  L0_2 = L2_1
  L0_2 = L0_2.hide
  L0_2()
  L0_2 = L1_1
  L0_2 = L0_2.showOverlay
  L1_2 = "Utils.SibchePurchaseOverlay"
  L2_2 = {}
  L2_2.isModal = true
  L3_2 = {}
  L4_2 = L13_1
  L3_2.UID = L4_2
  L4_2 = _M
  L3_2.delegate = L4_2
  L4_2 = L18_1
  L3_2.bundleID = L4_2
  L2_2.params = L3_2
  L0_2(L1_2, L2_2)
end

successToGetVCBalance = L34_1

function L34_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = _G
  L2_2.notLoading = false
  L2_2 = L2_1
  L2_2 = L2_2.hide
  L2_2()
  if A0_2 == true then
    L2_2 = showSimpleDialog
    L3_2 = ""
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = L1_1
    L2_2 = L2_2.showOverlay
    L3_2 = "Utils.SibcheLoginOverlay"
    L4_2 = {}
    L4_2.isModal = true
    L5_2 = {}
    L6_2 = L13_1
    L5_2.UID = L6_2
    L6_2 = _M
    L5_2.delegate = L6_2
    L6_2 = L18_1
    L5_2.bundleID = L6_2
    L4_2.params = L5_2
    L2_2(L3_2, L4_2)
  end
end

failedToGetVCBalance = L34_1

function L34_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L1_1
  L0_2 = L0_2.showOverlay
  L1_2 = "Utils.SibchePurchaseOverlay"
  L2_2 = {}
  L2_2.isModal = true
  L3_2 = {}
  L4_2 = L13_1
  L3_2.UID = L4_2
  L4_2 = _M
  L3_2.delegate = L4_2
  L4_2 = L18_1
  L3_2.bundleID = L4_2
  L2_2.params = L3_2
  L0_2(L1_2, L2_2)
end

userLogedIn = L34_1

function L34_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = log3
  L2_2 = "STATUS"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = false
  L26_1 = L1_2
  L1_2 = L23_1
  if L1_2 then
    L1_2 = timer
    L1_2 = L1_2.cancel
    L2_2 = L23_1
    L1_2(L2_2)
    L1_2 = nil
    L23_1 = L1_2
  end
  L1_2 = L29_1
  if L1_2 then
    L1_2 = showSimpleDialog
    L2_2 = L8_1
    L2_2 = L2_2["Bundle Title"]
    L3_2 = L8_1
    L3_2 = L3_2["Network error"]
    L4_2 = "Reload"
    
    function L5_2()
      local L0_3, L1_3, L2_3
      L0_3 = require
      L1_3 = "Models.Player"
      L0_3 = L0_3(L1_3)
      L1_3 = L1_1
      L1_3 = L1_3.gotoScene
      L2_3 = "Scenes.Loading"
      L1_3(L2_3)
      L1_3 = L1_1
      L1_3 = L1_3.getScene
      L2_3 = "Scenes.Loading"
      L1_3 = L1_3(L2_3)
      L0_3.delegate = L1_3
      L1_3 = L0_3.loadPlayer
      L1_3()
    end
    
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = false
    L29_1 = L1_2
  else
    L1_2 = delegate
    L1_2 = L1_2.didPurchaseItemWithId
    L2_2 = nil
    L3_2 = L31_1
    L4_2 = L24_1
    L5_2 = L28_1
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end

consumeCallback = L34_1

function L34_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  
  function L0_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = system
    L0_3 = L0_3.pathForFile
    L1_3 = "nativeCallback.txt"
    L2_3 = system
    L2_3 = L2_3.DocumentsDirectory
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = io
    L1_3 = L1_3.open
    L2_3 = L0_3
    L3_3 = "r+"
    L1_3 = L1_3(L2_3, L3_3)
    file = L1_3
    L1_3 = file
    if L1_3 == nil then
      L1_3 = log2
      L2_3 = "callback file not found !!!"
      L1_3(L2_3)
    else
      L1_3 = true
      L19_1 = L1_3
      L1_3 = file
      L2_3 = L1_3
      L1_3 = L1_3.read
      L3_3 = "*a"
      L1_3 = L1_3(L2_3, L3_3)
      L20_1 = L1_3
      L2_3 = io
      L2_3 = L2_3.close
      L3_3 = file
      L2_3(L3_3)
    end
    L1_3 = L19_1
    if L1_3 then
      L1_3 = delegate
      L1_3 = L1_3.failedToBuyItem
      L2_3 = nil
      L3_3 = L20_1
      L1_3(L2_3, L3_3)
      L1_3 = os
      L1_3 = L1_3.remove
      L2_3 = L0_3
      L1_3(L2_3)
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = L21_1
      L1_3(L2_3)
    end
  end
  
  L1_2 = timer
  L1_2 = L1_2.performWithDelay
  L2_2 = 500
  L3_2 = L0_2
  L4_2 = 0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L21_1 = L1_2
end

checkCallbackFile = L34_1
