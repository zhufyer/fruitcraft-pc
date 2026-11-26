local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Language"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.Toolbox"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "composer"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Components.TDButtonView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Components.TDMultilineButtonView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Theme"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.CachedImageView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Utils.Analytics"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Views.BundleDetailsView"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Utils.SKComponents"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Models.ProfileManager"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Views.ActivityIndicatorView"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Data.Avatars"
L12_1 = L12_1(L13_1)

function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if not A2_2 then
    L3_2 = {}
    A2_2 = L3_2
  end
  L3_2 = setmetatable
  L4_2 = A2_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  A0_2.__index = A0_2
  A2_2.bundleData = A1_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  A2_2.group = L3_2
  L3_2 = A1_2.packageType
  if L3_2 == 4 then
    L3_2 = display
    L3_2 = L3_2.newImageRect
    L4_2 = Constants
    L4_2 = L4_2.Path_Assets
    L5_2 = "Shop/FC-shop-card.png"
    L4_2 = L4_2 .. L5_2
    L5_2 = 128
    L6_2 = 185
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A2_2.box = L3_2
  else
    L3_2 = display
    L3_2 = L3_2.newImageRect
    L4_2 = Constants
    L4_2 = L4_2.Path_Assets
    L5_2 = "Shop/FC-shop-card-yellow.png"
    L4_2 = L4_2 .. L5_2
    L5_2 = 128
    L6_2 = 185
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A2_2.box = L3_2
  end
  L3_2 = A2_2.box
  L4_2 = A2_2.box
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L3_2.x = L4_2
  L3_2 = A2_2.box
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 * 0.37
  L3_2.y = L4_2
  L3_2 = A2_2.group
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A2_2.box
  L3_2(L4_2, L5_2)
  L3_2 = "bundle_title_"
  L4_2 = tostring
  L5_2 = A1_2.id
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L4_2 = L0_1
  L4_2 = L4_2[L3_2]
  if not L4_2 then
    L4_2 = ""
  end
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = A2_2.group
  L7_2 = L4_2
  L8_2 = 40
  L9_2 = 0
  L10_2 = Constants
  L10_2 = L10_2.fontForTitle
  L10_2 = L10_2()
  L11_2 = 14
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  A2_2.name = L5_2
  L5_2 = A2_2.name
  L5_2.x = 64
  L5_2 = A2_2.name
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 * 0.37
  L6_2 = L6_2 - 92.5
  L6_2 = L6_2 / 2
  L5_2.y = L6_2
  L5_2 = A2_2.name
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = "bundle_short_description_"
  L6_2 = tostring
  L7_2 = A1_2.id
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L6_2 = L0_1
  L6_2 = L6_2[L5_2]
  if not L6_2 then
    L6_2 = ""
  end
  L7_2 = {}
  L8_2 = A2_2.group
  L7_2.parent = L8_2
  L7_2.text = L6_2
  L7_2.x = 0
  L7_2.y = 0
  L7_2.width = 100
  L7_2.height = 80
  L8_2 = Constants
  L8_2 = L8_2.fontForSubtitle
  L8_2 = L8_2()
  L7_2.font = L8_2
  L7_2.fontSize = 11
  L7_2.align = "center"
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = L7_2
  L8_2 = L8_2(L9_2)
  A2_2.description = L8_2
  L8_2 = A2_2.description
  L8_2.x = 64
  L8_2 = A2_2.description
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 * 0.59
  L8_2.y = L9_2
  L8_2 = A2_2.description
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = Constants
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = Constants
  L8_2 = L8_2.Path_Assets
  L9_2 = "Shop/bundle_"
  L10_2 = A1_2.id
  L11_2 = ".png"
  L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
  bundleImagePath = L8_2
  L8_2 = A1_2.avatar
  if L8_2 then
    L8_2 = A1_2.avatar
    L8_2 = L8_2.avatar_set_id
    if L8_2 then
      L8_2 = Constants
      L8_2 = L8_2.Path_Assets
      L9_2 = "Avatars/Avatar"
      L10_2 = A1_2.avatar
      L10_2 = L10_2.avatar_set_id
      L11_2 = ".png"
      L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
      bundleImagePath = L8_2
    end
  end
  L8_2 = L6_1
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = A2_2.group
  L11_2 = bundleImagePath
  L12_2 = 80
  L13_2 = 80
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  A2_2.image = L8_2
  L8_2 = A2_2.image
  L8_2.x = 64
  L8_2 = A2_2.image
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 * 0.29
  L8_2.y = L9_2
  L8_2 = A1_2.endTime
  if L8_2 then
    L8_2 = {}
    L9_2 = A2_2.group
    L8_2.parent = L9_2
    L8_2.text = "00:00:00"
    L8_2.x = 64
    L8_2.y = 0
    L9_2 = Constants
    L9_2 = L9_2.fontForTitle
    L9_2 = L9_2()
    L8_2.font = L9_2
    L8_2.fontSize = 11
    L8_2.align = "center"
    L9_2 = display
    L9_2 = L9_2.newText
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    A2_2.timerLabel = L9_2
    L9_2 = A2_2.timerLabel
    L10_2 = L9_2
    L9_2 = L9_2.setFillColor
    L11_2 = Constants
    L11_2 = L11_2.darkBlueColor
    L11_2, L12_2, L13_2 = L11_2()
    L9_2(L10_2, L11_2, L12_2, L13_2)
    L9_2 = A2_2.timerLabel
    L10_2 = display
    L10_2 = L10_2.contentHeight
    L10_2 = L10_2 * 0.545
    L9_2.y = L10_2
    L10_2 = A2_2
    L9_2 = A2_2.startTimer
    L9_2(L10_2)
  end
  L8_2 = A1_2.packageType
  if L8_2 == 4 then
    L8_2 = A1_2.nectarAmount
    if L8_2 then
      L8_2 = {}
      L8_2.iconYOffSet = -2
      L8_2.subImageWidth = 20
      L8_2.subImageHeight = 22
      L8_2.subTextFontSize = 13
      L8_2.fontSize = 13
      L9_2 = Constants
      L9_2 = L9_2.fontForTitle
      L9_2 = L9_2()
      L8_2.font = L9_2
      L9_2 = Constants
      L9_2 = L9_2.Path_Assets
      L10_2 = "BattleItems/next.png"
      L9_2 = L9_2 .. L10_2
      L8_2.defaultFile = L9_2
      L9_2 = Constants
      L9_2 = L9_2.Path_Assets
      L10_2 = "BattleItems/next-p.png"
      L9_2 = L9_2 .. L10_2
      L8_2.overFile = L9_2
      L8_2.width = 104
      L8_2.height = 33
      L9_2 = L5_1
      L9_2 = L9_2.nectarIconImage
      L8_2.subImage = L9_2
      L9_2 = tonumber
      L10_2 = A1_2.nectarAmount
      L9_2 = L9_2(L10_2)
      if not L9_2 then
        L9_2 = 0
      end
      L8_2.subText = L9_2
      L8_2.emboss = false
      
      function L9_2()
        local L0_3, L1_3
        L0_3 = L7_1
        L0_3 = L0_3.logEvent
        L1_3 = "Bundle Button Touched"
        L0_3(L1_3)
        L0_3 = A2_2
        L1_3 = L0_3
        L0_3 = L0_3.purchaseAvatarPack
        L0_3(L1_3)
      end
      
      L8_2.onRelease = L9_2
      L9_2 = L4_1
      L10_2 = L9_2
      L9_2 = L9_2.new
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      A2_2.buyButton = L9_2
  end
  else
    L8_2 = L3_1
    L9_2 = L8_2
    L8_2 = L8_2.new
    L10_2 = {}
    L11_2 = L0_1
    L11_2 = L11_2["Bundle Open"]
    L10_2.label = L11_2
    L10_2.fontSize = 13
    L10_2.width = 104
    L10_2.height = 33
    L11_2 = Constants
    L11_2 = L11_2.Path_Assets
    L12_2 = "BattleItems/next.png"
    L11_2 = L11_2 .. L12_2
    L10_2.defaultFile = L11_2
    L11_2 = Constants
    L11_2 = L11_2.Path_Assets
    L12_2 = "BattleItems/next-p.png"
    L11_2 = L11_2 .. L12_2
    L10_2.overFile = L11_2
    
    function L11_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      L0_3 = L7_1
      L0_3 = L0_3.logEvent
      L1_3 = "Bundle Button Touched"
      L0_3(L1_3)
      L0_3 = L8_1
      L1_3 = L0_3
      L0_3 = L0_3.new
      L2_3 = {}
      L3_3 = Constants
      L3_3 = L3_3.Path_Assets
      L4_3 = "Shop/bundle_"
      L5_3 = A2_2
      L5_3 = L5_3.bundleData
      L5_3 = L5_3.id
      L6_3 = ".png"
      L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3
      L2_3.itemImage = L3_3
      L2_3.imageWidth = 120
      L2_3.imageHeight = 120
      L3_3 = A2_2
      L3_3 = L3_3.bundleData
      L2_3.bundleInfo = L3_3
      L0_3 = L0_3(L1_3, L2_3)
      L1_3 = display
      L1_3 = L1_3.contentCenterX
      L0_3.x = L1_3
      L1_3 = display
      L1_3 = L1_3.contentCenterY
      L0_3.y = L1_3
      L1_3 = A2_2
      L1_3 = L1_3.group
      while true do
        L2_3 = L1_3.parent
        if not L2_3 then
          break
        end
        L1_3 = L1_3.parent
      end
      L2_3 = display
      L2_3 = L2_3.newRect
      L3_3 = L1_3
      L4_3 = display
      L4_3 = L4_3.contentCenterX
      L5_3 = display
      L5_3 = L5_3.contentCenterY
      L6_3 = display
      L6_3 = L6_3.contentWidth
      L7_3 = display
      L7_3 = L7_3.contentHeight
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
      L4_3 = L2_3
      L3_3 = L2_3.setFillColor
      L5_3 = 0
      L6_3 = 0
      L7_3 = 0
      L8_3 = 0.7
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
      L4_3 = L2_3
      L3_3 = L2_3.toBack
      L3_3(L4_3)
      L4_3 = L1_3
      L3_3 = L1_3.insert
      L5_3 = L0_3.view
      L3_3(L4_3, L5_3)
    end
    
    L10_2.onRelease = L11_2
    L10_2.emboss = false
    L8_2 = L8_2(L9_2, L10_2)
    A2_2.buyButton = L8_2
  end
  L8_2 = A2_2.group
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = A2_2.buyButton
  L10_2 = L10_2.view
  L8_2(L9_2, L10_2)
  L8_2 = A2_2.buyButton
  L8_2.x = 64
  L8_2 = A2_2.buyButton
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 * 0.73
  L8_2.y = L9_2
  return A2_2
end

new = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2.bundleData
  L1_2 = L1_2.id
  L2_2 = L11_1
  L2_2 = L2_2.show
  L3_2 = L0_1
  L3_2 = L3_2.Loading
  if not L3_2 then
    L3_2 = "Loading..."
  end
  L2_2(L3_2)
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L11_1
    L1_3 = L1_3.hide
    L1_3()
    L1_3 = showSimpleDialog
    L2_3 = L0_1
    L2_3 = L2_3["Bundle Title"]
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = A0_3.avatars
    L2_3 = A0_3.nectar
    L3_3 = mainPlayer
    L3_3.nectar = L2_3
    L3_3 = mainPlayer
    L4_3 = L3_3
    L3_3 = L3_3.saveSettings
    L3_3(L4_3)
    if L1_3 then
      L3_3 = #L1_3
      if 0 < L3_3 then
        L3_3 = L1_3[1]
        L4_3 = log3
        L5_3 = "Avatar ID:"
        L6_3 = L3_3
        L4_3(L5_3, L6_3)
        L4_3 = L12_1
        L4_3 = L4_3.getAvatarByID
        L5_3 = L3_3
        L4_3(L5_3)
        L4_3 = L12_1
        L4_3 = L4_3.avatars
        L4_3 = L4_3[L3_3]
        L4_3.isAvailable = true
        
        function L4_3()
          local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4
          L0_4 = L11_1
          L0_4 = L0_4.hide
          L0_4()
          L0_4 = mainPlayer
          L0_4 = L0_4.bundles
          L1_4 = L1_2
          L0_4[L1_4] = nil
          L0_4 = L2_1
          L0_4 = L0_4.getScene
          L1_4 = "Scenes.Shop"
          L0_4 = L0_4(L1_4)
          if L0_4 then
            L1_4 = L0_4.goldShop
            if L1_4 then
              L1_4 = L0_4.goldShop
              L2_4 = L1_4
              L1_4 = L1_4.refreshBundles
              L1_4(L2_4)
              L1_4 = L0_4.bar
              L2_4 = L1_4
              L1_4 = L1_4.setNectar
              L3_4 = mainPlayer
              L3_4 = L3_4.nectar
              L4_4 = true
              L1_4(L2_4, L3_4, L4_4)
              L1_4 = A0_2
              L2_4 = L1_4
              L1_4 = L1_4.updateUIAfterRewards
              L1_4(L2_4)
            end
          end
          L1_4 = showSimpleDialog
          L2_4 = L0_1
          L3_4 = "bundle_title_"
          L4_4 = tostring
          L5_4 = L1_2
          L4_4 = L4_4(L5_4)
          L3_4 = L3_4 .. L4_4
          L2_4 = L2_4[L3_4]
          L3_4 = L0_1
          L3_4 = L3_4["Bundle Success Purchased"]
          L1_4(L2_4, L3_4)
        end
        
        L5_3 = L10_1
        L5_3 = L5_3.setAvatar
        L6_3 = L3_3
        L7_3 = L4_3
        L8_3 = nil
        L5_3(L6_3, L7_3, L8_3)
    end
    else
      L3_3 = L11_1
      L3_3 = L3_3.hide
      L3_3()
      L3_3 = showSimpleDialog
      L4_3 = L0_1
      L4_3 = L4_3["Bundle Title"]
      L5_3 = L0_1
      L5_3 = L5_3["Could not set Avatar"]
      L3_3(L4_3, L5_3)
    end
  end
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "buyAvatarPack"
    L4_3 = L2_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L3_2
      L4_3 = L2_3
      L3_3(L4_3)
    end
  end
  
  L5_2 = {}
  L5_2.bundle_id = L1_2
  L6_2 = {}
  L6_2.body = L5_2
  L7_2 = network
  L7_2 = L7_2.getDefaultHeader
  L7_2 = L7_2()
  L6_2.headers = L7_2
  L7_2 = log3
  L8_2 = "Purchasing avatar pack with bundle ID:"
  L9_2 = L1_2
  L7_2(L8_2, L9_2)
  L7_2 = network
  L7_2 = L7_2.request
  L8_2 = Constants
  L8_2 = L8_2.API_Path
  L9_2 = Constants
  L9_2 = L9_2.API_Buy_Avatar_Pack
  L8_2 = L8_2 .. L9_2
  L9_2 = "POST"
  L10_2 = L4_2
  L11_2 = L6_2
  L12_2 = "buy avatar pack"
  L13_2 = nil
  L14_2 = L2_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end

purchaseAvatarPack = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1
  L1_2 = L1_2.getScene
  L2_2 = "Scenes.Home"
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.navBar
    if L2_2 then
      L2_2 = L1_2.navBar
      L3_2 = L2_2
      L2_2 = L2_2.setGold
      L4_2 = mainPlayer
      L4_2 = L4_2.gold
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = L1_2.navBar
      L3_2 = L2_2
      L2_2 = L2_2.setNectar
      L4_2 = mainPlayer
      L4_2 = L4_2.nectar
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  if L1_2 then
    L2_2 = L1_2.tabbar
    if L2_2 then
      L2_2 = L1_2.tabbar
      L3_2 = L2_2
      L2_2 = L2_2.setGold
      L4_2 = mainPlayer
      L4_2 = L4_2.gold
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = L1_2.tabbar
      L3_2 = L2_2
      L2_2 = L2_2.setNectar
      L4_2 = mainPlayer
      L4_2 = L4_2.nectar
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end

updateUIAfterRewards = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.timerLabel
  if L1_2 then
    L1_2 = A0_2.bundleData
    L1_2 = L1_2.endTime
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = L1_1
    L0_3 = L0_3.remainTimeFromNow
    L1_3 = A0_2
    L1_3 = L1_3.bundleData
    L1_3 = L1_3.endTime
    L2_3 = mainPlayer
    L2_3 = L2_3.timeDelta
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3, L2_3)
    if L0_3 < 0 then
      L4_3 = A0_2
      L4_3 = L4_3.timerLabel
      if L4_3 then
        L4_3 = A0_2
        L4_3 = L4_3.timerLabel
        L5_3 = L4_3
        L4_3 = L4_3.removeSelf
        L4_3(L5_3)
        L4_3 = A0_2
        L4_3.timerLabel = nil
      end
      L4_3 = A0_2
      L4_3 = L4_3.group
      L4_3.isVisible = false
      return
    end
    L4_3 = L0_1
    L4_3 = L4_3.adjustNumber
    L5_3 = L1_3
    L4_3 = L4_3(L5_3)
    L1_3 = L4_3
    L4_3 = L0_1
    L4_3 = L4_3.adjustNumber
    L5_3 = L3_3
    L4_3 = L4_3(L5_3)
    L3_3 = L4_3
    L4_3 = L0_1
    L4_3 = L4_3.adjustNumber
    L5_3 = L2_3
    L4_3 = L4_3(L5_3)
    L2_3 = L4_3
    L4_3 = L1_3
    L5_3 = " : "
    L6_3 = L2_3
    L7_3 = " : "
    L8_3 = L3_3
    L4_3 = L4_3 .. L5_3 .. L6_3 .. L7_3 .. L8_3
    L5_3 = A0_2
    L5_3 = L5_3.timerLabel
    if L5_3 then
      L5_3 = A0_2
      L5_3 = L5_3.timerLabel
      L5_3.text = L4_3
    end
  end
  
  L2_2 = L1_2
  L2_2()
  L2_2 = timer
  L2_2 = L2_2.performWithDelay
  L3_2 = 1000
  L4_2 = L1_2
  L5_2 = 0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.timerTimer = L2_2
end

startTimer = L13_1

function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.timerTimer
  if L1_2 then
    L1_2 = timer
    L1_2 = L1_2.cancel
    L2_2 = A0_2.timerTimer
    L1_2(L2_2)
    A0_2.timerTimer = nil
  end
  L1_2 = A0_2.timerLabel
  if L1_2 then
    L1_2 = A0_2.timerLabel
    L2_2 = L1_2
    L1_2 = L1_2.removeSelf
    L1_2(L2_2)
    A0_2.timerLabel = nil
  end
  L1_2 = A0_2.discountBadge
  if L1_2 then
    L1_2 = A0_2.discountBadge
    L2_2 = L1_2
    L1_2 = L1_2.removeSelf
    L1_2(L2_2)
    A0_2.discountBadge = nil
  end
  L1_2 = display
  L1_2 = L1_2.remove
  L2_2 = A0_2.box
  L1_2(L2_2)
  L1_2 = display
  L1_2 = L1_2.remove
  L2_2 = A0_2.name
  L1_2(L2_2)
  L1_2 = display
  L1_2 = L1_2.remove
  L2_2 = A0_2.description
  L1_2(L2_2)
  L1_2 = A0_2.image
  if L1_2 then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = A0_2.image
    L1_2(L2_2)
  end
  L1_2 = display
  L1_2 = L1_2.remove
  L2_2 = A0_2.buyButton
  L1_2(L2_2)
  A0_2.box = nil
  A0_2.name = nil
  A0_2.description = nil
  A0_2.image = nil
  A0_2.buyButton = nil
  A0_2.bundleData = nil
  A0_2.group = nil
end

destroy = L13_1

function L13_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.group
  L3_2.x = A1_2
  L3_2 = A0_2.group
  L3_2.y = A2_2
end

setPosition = L13_1

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.buyButton
  if L2_2 then
    L2_2 = A0_2.buyButton
    L3_2 = L2_2
    L2_2 = L2_2.setEnabled
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  if A1_2 then
    L2_2 = A0_2.group
    L2_2.alpha = 1
  else
    L2_2 = A0_2.group
    L2_2.alpha = 0.5
  end
end

setEnabled = L13_1
