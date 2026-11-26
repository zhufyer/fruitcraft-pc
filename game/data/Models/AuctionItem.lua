local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
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
L4_1 = "Utils.Analytics"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Models.UserCard"
L4_1 = L4_1(L5_1)
L5_1 = nil
L6_1 = nil
L7_1 = nil
L8_1 = nil
L9_1 = nil
L10_1 = nil
L11_1 = nil
L12_1 = nil
L13_1 = nil
L14_1 = nil
L15_1 = nil

function L16_1(A0_2, A1_2)
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
  L2_2 = A1_2.base_card_id
  A1_2.baseId = L2_2
  L2_2 = A1_2.power
  A1_2.cardPower = L2_2
  L2_2 = A1_2.created_at
  A1_2.createdAt = L2_2
  L2_2 = A1_2.bid_count
  A1_2.bidCount = L2_2
  L2_2 = A1_2.max_bidder_name
  A1_2.lastBidderName = L2_2
  L2_2 = tonumber
  L3_2 = A1_2.max_bidder_id
  L2_2 = L2_2(L3_2)
  A1_2.lastBidderId = L2_2
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A1_2.max_bid
  L2_2 = L2_2(L3_2)
  A1_2.bidPrice = L2_2
  L2_2 = A1_2.owner_name
  A1_2.ownerName = L2_2
  L2_2 = A1_2.owner_id
  if L2_2 then
    L2_2 = tonumber
    L3_2 = A1_2.owner_id
    L2_2 = L2_2(L3_2)
    A1_2.ownerId = L2_2
  end
  L2_2 = A1_2.activity_status
  A1_2.status = L2_2
  return A1_2
end

new = L16_1

function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = checkValidityAssert
  L4_2 = A0_2
  L5_2 = "auctionCard, card must be a provided"
  L6_2 = _NAME
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = checkValidityAssert
  L4_2 = A0_2.id
  L5_2 = "auctionCard, card.id must not be nil"
  L6_2 = _NAME
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = {}
  L4_2 = A0_2.id
  L3_2.card_id = L4_2
  L4_2 = L3_1
  L4_2 = L4_2.logEvent
  L5_2 = "Auction Created"
  L4_2(L5_2)
  L4_2 = {}
  L4_2.body = L3_2
  L5_2 = performActionAPICall
  L6_2 = nil
  L7_2 = 4
  L8_2 = "auctionCard"
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = L4_2
  L12_2 = A0_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end

auctionCard = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "auctionPriceForCard, card must be a provided"
  L4_2 = _NAME
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = checkValidityAssert
  L2_2 = A0_2.power
  L3_2 = "auctionPriceForCard, card.power must be a number"
  L4_2 = _NAME
  L5_2 = "number"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.power
  L2_2 = mainPlayer
  L2_2 = L2_2.powerBoost
  if L2_2 ~= nil then
    L2_2 = mainPlayer
    L2_2 = L2_2.powerBoost
    L2_2 = L2_2.multiplier
    L1_2 = L1_2 / L2_2
  end
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = L2_1
  L3_2 = L3_2.Auction_PowerToGoldRatio
  L3_2 = L1_2 * L3_2
  L4_2 = L2_1
  L4_2 = L4_2.Auction_MinPriceModifier
  L3_2 = L3_2 * L4_2
  return L2_2(L3_2)
end

auctionPriceForCard = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "bidPriceForCardWithPower, power must be a number"
  L4_2 = _NAME
  L5_2 = "number"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = L2_1
  L2_2 = L2_2.Auction_PowerToGoldRatio
  L2_2 = A0_2 * L2_2
  L3_2 = L2_1
  L3_2 = L3_2.Auction_BidModifier
  L2_2 = L2_2 * L3_2
  return L1_2(L2_2)
end

bidPriceForCardWithPower = L16_1

function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "maxAuctionPriceForCardWithPower, power must be a number"
  L4_2 = _NAME
  L5_2 = "number"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L2_1
  L1_2 = L1_2.Auction_PowerToGoldRatio
  L1_2 = A0_2 * L1_2
  L2_2 = L2_1
  L2_2 = L2_2.Auction_MaxPriceModifier
  L1_2 = L1_2 * L2_2
  return L1_2
end

maxAuctionPriceForCardWithPower = L16_1

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = loadItemsAPICall
  L3_2 = 1
  L4_2 = "loadMyAuctionItems"
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end

loadMyAuctionItems = L16_1

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = loadItemsAPICall
  L3_2 = 2
  L4_2 = "loadMyParticipatingAuctionItems"
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end

loadMyParticipatingAuctionItems = L16_1

function L16_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = checkValidityAssert
  L6_2 = A2_2
  L7_2 = "searchAuctions, queryType must be a number"
  L8_2 = _NAME
  L9_2 = "number"
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = L3_1
  L5_2 = L5_2.logEvent
  L6_2 = "Auction Search called"
  L5_2(L6_2)
  L5_2 = log3
  L6_2 = "selected card base id is : "
  L7_2 = A3_2
  L5_2(L6_2, L7_2)
  L5_2 = {}
  L5_2.query_type = A2_2
  if A2_2 == 2 then
    L6_2 = checkAssert
    L7_2 = A3_2 ~= nil
    L8_2 = "searchAuctions, for queryType fruit (2) a valid baseId needs to be provided"
    L9_2 = _NAME
    L6_2(L7_2, L8_2, L9_2)
    L5_2.base_card_id = A3_2
  elseif A2_2 == 6 then
    L6_2 = pairs
    L7_2 = A4_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L5_2[L9_2] = L10_2
    end
  end
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = loadItemsAPICall
  L8_2 = 3
  L9_2 = "searchAuctions"
  L10_2 = A0_2
  L11_2 = A1_2
  L12_2 = L6_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
end

searchAuctions = L16_1

function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L3_1
  L3_2 = L3_2.logEvent
  L4_2 = "Auction Bid called"
  L3_2(L4_2)
  L3_2 = performActionAPICall
  L4_2 = A0_2
  L5_2 = 1
  L6_2 = "bid(Auction)"
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end

bid = L16_1

function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L3_1
  L3_2 = L3_2.logEvent
  L4_2 = "Auction Follow called"
  L3_2(L4_2)
  L3_2 = performActionAPICall
  L4_2 = A0_2
  L5_2 = 2
  L6_2 = "follow(Auction)"
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end

follow = L16_1

function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L3_1
  L3_2 = L3_2.logEvent
  L4_2 = "Auction SellNow called"
  L3_2(L4_2)
  L3_2 = performActionAPICall
  L4_2 = A0_2
  L5_2 = 3
  L6_2 = "sellNow(Auction)"
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end

sellNow = L16_1

function L16_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L7_2 = {}
  if A1_2 ~= 4 then
    L8_2 = checkValidityAssert
    L9_2 = A0_2
    L10_2 = A2_2
    L11_2 = ", function needs to be called with a colon"
    L10_2 = L10_2 .. L11_2
    L11_2 = _NAME
    L12_2 = "table"
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = checkValidityAssert
    L9_2 = A0_2.id
    L10_2 = A2_2
    L11_2 = ", auction object needs to have an id"
    L10_2 = L10_2 .. L11_2
    L11_2 = _NAME
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = A0_2.id
    L7_2.auction_id = L8_2
  end
  L8_2 = A5_2 or L8_2
  if not A5_2 then
    L8_2 = {}
  end
  if A5_2 == nil then
    L8_2.body = L7_2
  end
  
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = A2_2
    L4_3 = A4_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = A1_2
      if L3_3 ~= 1 then
        L3_3 = A1_2
        if L3_3 ~= 3 then
          goto lbl_25
        end
      end
      L3_3 = L2_3.player_gold
      if L3_3 ~= nil then
        L3_3 = log3
        L4_3 = "player gold is : "
        L5_3 = L2_3.player_gold
        L3_3(L4_3, L5_3)
        L3_3 = mainPlayer
        L4_3 = L2_3.player_gold
        L3_3.gold = L4_3
      end
      ::lbl_25::
      L3_3 = A1_2
      if 0 < L3_3 then
        L3_3 = A1_2
        if L3_3 < 4 then
          L3_3 = L2_3.auction
          if L3_3 ~= nil then
            L3_3 = A0_2
            L4_3 = L2_3.auction
            L4_3 = L4_3.bid_count
            L3_3.bidCount = L4_3
            L3_3 = A0_2
            L4_3 = L2_3.auction
            L4_3 = L4_3.max_bidder_name
            L3_3.lastBidderName = L4_3
            L3_3 = A0_2
            L4_3 = tonumber
            L5_3 = L2_3.auction
            L5_3 = L5_3.max_bidder_id
            L4_3 = L4_3(L5_3)
            L3_3.lastBidderId = L4_3
            L3_3 = A0_2
            L4_3 = math
            L4_3 = L4_3.floor
            L5_3 = L2_3.auction
            L5_3 = L5_3.max_bid
            L4_3 = L4_3(L5_3)
            L3_3.bidPrice = L4_3
            L3_3 = A0_2
            L4_3 = L2_3.auction
            L4_3 = L4_3.activity_status
            L3_3.status = L4_3
          end
        end
      end
      L3_3 = A3_2
      if L3_3 ~= nil then
        L3_3 = A0_2
        if L3_3 ~= nil then
          L3_3 = A3_2
          L4_3 = A0_2
          L3_3(L4_3)
        else
          L3_3 = A3_2
          L4_3 = A6_2
          L3_3(L4_3)
        end
      end
    end
  end
  
  L10_2 = nil
  if A1_2 == 1 then
    L11_2 = L2_1
    L11_2 = L11_2.API_Path
    L12_2 = L2_1
    L12_2 = L12_2.API_AuctionBid
    L10_2 = L11_2 .. L12_2
  elseif A1_2 == 2 then
    L11_2 = L2_1
    L11_2 = L11_2.API_Path
    L12_2 = L2_1
    L12_2 = L12_2.API_AuctionFollow
    L10_2 = L11_2 .. L12_2
  elseif A1_2 == 3 then
    L11_2 = L2_1
    L11_2 = L11_2.API_Path
    L12_2 = L2_1
    L12_2 = L12_2.API_AuctionSell
    L10_2 = L11_2 .. L12_2
  else
    L11_2 = L2_1
    L11_2 = L11_2.API_Path
    L12_2 = L2_1
    L12_2 = L12_2.API_AuctionCreate
    L10_2 = L11_2 .. L12_2
  end
  L11_2 = network
  L11_2 = L11_2.request
  L12_2 = L10_2
  L13_2 = "POST"
  L14_2 = L9_2
  L15_2 = L8_2
  L16_2 = A2_2
  L17_2 = nil
  L18_2 = A4_2
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
end

performActionAPICall = L16_1

function L16_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = A4_2 or nil
  if not A4_2 then
    L5_2 = {}
  end
  
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = A1_2
    L4_3 = A3_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = {}
      L4_3 = ipairs
      L5_3 = L2_3
      L4_3, L5_3, L6_3 = L4_3(L5_3)
      for L7_3, L8_3 in L4_3, L5_3, L6_3 do
        L9_3 = _M
        L10_3 = L9_3
        L9_3 = L9_3.new
        L11_3 = L8_3
        L9_3 = L9_3(L10_3, L11_3)
        L10_3 = A0_2
        if L10_3 == 1 then
          L10_3 = mainPlayer
          L10_3 = L10_3.id
          L9_3.ownerId = L10_3
          L10_3 = mainPlayer
          L10_3 = L10_3.name
          L9_3.ownerName = L10_3
        end
        L10_3 = L9_3.id
        L3_3[L10_3] = L9_3
      end
      L4_3 = A2_2
      if L4_3 ~= nil then
        L4_3 = L5_2
        L4_3 = L4_3.body
        if L4_3 then
          L4_3 = A2_2
          L5_3 = L3_3
          L6_3 = L5_2
          L6_3 = L6_3.body
          L6_3 = L6_3.query_type
          L4_3(L5_3, L6_3)
        end
      end
    end
  end
  
  L7_2 = nil
  if A0_2 == 1 then
    L8_2 = L2_1
    L8_2 = L8_2.API_Path
    L9_2 = L2_1
    L9_2 = L9_2.API_AuctionUserSales
    L7_2 = L8_2 .. L9_2
  elseif A0_2 == 2 then
    L8_2 = L2_1
    L8_2 = L8_2.API_Path
    L9_2 = L2_1
    L9_2 = L9_2.API_AuctionUserInvolved
    L7_2 = L8_2 .. L9_2
  else
    L8_2 = L2_1
    L8_2 = L8_2.API_Path
    L9_2 = L2_1
    L9_2 = L9_2.API_AuctionSearch
    L7_2 = L8_2 .. L9_2
  end
  L8_2 = network
  L8_2 = L8_2.request
  L9_2 = L7_2
  L10_2 = "POST"
  L11_2 = L6_2
  L12_2 = L5_2
  L13_2 = "load item api call"
  L14_2 = nil
  L15_2 = A3_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end

loadItemsAPICall = L16_1
