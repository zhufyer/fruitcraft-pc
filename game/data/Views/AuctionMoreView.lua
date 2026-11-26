local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "widget"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Models.UserCard"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Models.Card"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Models.AuctionItem"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.MoreViewSource"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Language"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Views.ActivityIndicatorView"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Utils.Analytics"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Components.TDButtonView"
L9_1 = L9_1(L10_1)

function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = 1
  if A1_2 == "sales" then
    L4_2 = 1
  elseif A1_2 == "search" then
    L4_2 = 2
  else
    L4_2 = 1
  end
  L5_2 = L5_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = A0_2
  L8_2 = L4_2
  L9_2 = A2_2
  L10_2 = "left"
  L11_2 = A3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  A3_2 = L5_2
  L5_2 = L9_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.width = 50
  L7_2.height = 22
  L8_2 = L6_1
  L8_2 = L8_2.Info
  L7_2.label = L8_2
  L8_2 = Theme
  L8_2 = L8_2.colorsSet
  L8_2 = L8_2.whiteColor
  L7_2.labelColor = L8_2
  L7_2.fontSize = 10
  L8_2 = Constants
  L8_2 = L8_2.Path_Assets
  L9_2 = "Members/FC-memberlist-more.png"
  L8_2 = L8_2 .. L9_2
  L7_2.defaultFile = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  A3_2.cardInfoButton = L5_2
  L5_2 = A3_2.cardInfoButton
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = log3
    L1_3 = "Showing card info for card in auction, baseId"
    L2_3 = A3_2
    L2_3 = L2_3.info
    L2_3 = L2_3.baseId
    L0_3(L1_3, L2_3)
    L0_3 = A3_2
    L0_3 = L0_3.view
    L0_3.isVisible = false
    L0_3 = L8_1
    L0_3 = L0_3.logEvent
    L1_3 = "Auction more info used"
    L0_3(L1_3)
    L0_3 = L2_1
    L1_3 = L0_3
    L0_3 = L0_3.new
    L2_3 = {}
    L3_3 = A3_2
    L3_3 = L3_3.info
    L3_3 = L3_3.baseId
    L2_3.base_card_id = L3_3
    L2_3.last_used_at = 0
    L2_3.used_for_building = false
    L3_3 = A3_2
    L3_3 = L3_3.info
    L3_3 = L3_3.cardPower
    L2_3.power = L3_3
    L3_3 = A3_2
    L3_3 = L3_3.info
    L3_3 = L3_3.ownerId
    L2_3.player_id = L3_3
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = L1_1
    L1_3 = L1_3.showOverlay
    L2_3 = "Scenes.CardOverlay"
    L3_3 = {}
    L3_3.effect = "fade"
    L4_3 = {}
    L4_3.card = L0_3
    L4_3.noButtons = true
    L3_3.params = L4_3
    L1_3(L2_3, L3_3)
  end
  
  L5_2.onRelease = L6_2
  L5_2 = A3_2.view
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = A3_2.cardInfoButton
  L7_2 = L7_2.view
  L5_2(L6_2, L7_2)
  L5_2 = A3_2.cardInfoButton
  L5_2.x = 37
  L5_2 = A3_2.cardInfoButton
  L5_2.y = 16
  if A1_2 == "search" then
    L5_2 = A3_2.cardInfoButton
    L5_2.y = 45
    L5_2 = L9_1
    L6_2 = L5_2
    L5_2 = L5_2.new
    L7_2 = {}
    L7_2.width = 50
    L7_2.height = 22
    L8_2 = L6_1
    L8_2 = L8_2.Follow
    L7_2.label = L8_2
    L8_2 = Theme
    L8_2 = L8_2.colorsSet
    L8_2 = L8_2.whiteColor
    L7_2.labelColor = L8_2
    L7_2.fontSize = 10
    L8_2 = Constants
    L8_2 = L8_2.Path_Assets
    L9_2 = "Members/FC-memberlist-more.png"
    L8_2 = L8_2 .. L9_2
    L7_2.defaultFile = L8_2
    L5_2 = L5_2(L6_2, L7_2)
    A3_2.followButton = L5_2
    L5_2 = A3_2.followButton
    
    function L6_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = log3
      L1_3 = "Following auction with id"
      L2_3 = A3_2
      L2_3 = L2_3.info
      L2_3 = L2_3.id
      L0_3(L1_3, L2_3)
      L0_3 = A3_2
      L0_3 = L0_3.view
      L0_3.isVisible = false
      L0_3 = L7_1
      L0_3 = L0_3.show
      L1_3 = L6_1
      L1_3 = L1_3["Following..."]
      L0_3(L1_3)
      L0_3 = A3_2
      L0_3 = L0_3.info
      L1_3 = L0_3
      L0_3 = L0_3.follow
      L2_3 = A3_2
      L2_3 = L2_3.delegate
      L2_3 = L2_3.successToFollowAuction
      L3_3 = A3_2
      L3_3 = L3_3.delegate
      L3_3 = L3_3.failedToFollowAuction
      L0_3(L1_3, L2_3, L3_3)
    end
    
    L5_2.onRelease = L6_2
    L5_2 = A3_2.view
    L6_2 = L5_2
    L5_2 = L5_2.insert
    L7_2 = A3_2.followButton
    L7_2 = L7_2.view
    L5_2(L6_2, L7_2)
    L5_2 = A3_2.followButton
    L5_2.x = 37
    L5_2 = A3_2.followButton
    L5_2.y = 18
  end
  return A3_2
end

new = L10_1

function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = L5_1
  L4_2 = L4_2.changeMoreViewPositionAndData
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2.view
  L4_2.isVisible = true
end

changeMoreViewPositionAndData = L10_1
