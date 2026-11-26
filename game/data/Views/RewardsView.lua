local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Language"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "widget"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "composer"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Components.TDButtonView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Utils.Analytics"
L4_1 = L4_1(L5_1)
L5_1 = nil
L6_1 = nil
L7_1 = nil
L8_1 = nil
L9_1 = nil

function L10_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L4_1
  L0_2 = L0_2.logEvent
  L1_2 = "FB page pressed"
  L0_2(L1_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "perFormFB"
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.saveSettings
  L0_2(L1_2)
  L0_2 = system
  L0_2 = L0_2.openURL
  L1_2 = Constants
  L1_2 = L1_2.APP_FacebookPage
  L0_2(L1_2)
end

function L11_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L4_1
  L0_2 = L0_2.logEvent
  L1_2 = "Instagram button pressed"
  L0_2(L1_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "perFormInstagram"
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.saveSettings
  L0_2(L1_2)
  L0_2 = system
  L0_2 = L0_2.canOpenURL
  L1_2 = Constants
  L1_2 = L1_2.APP_InstagramPage
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = system
    L0_2 = L0_2.openURL
    L1_2 = Constants
    L1_2 = L1_2.APP_InstagramPage
    L0_2(L1_2)
  end
end

function L12_1()
  local L0_2, L1_2
  L0_2 = system
  L0_2 = L0_2.openURL
  L1_2 = Constants
  L1_2 = L1_2.App_Website
  L0_2(L1_2)
end

function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = {}
  L1_2 = L0_1
  L1_2 = L1_2["Invite subject"]
  L0_2.subject = L1_2
  L1_2 = L0_1
  L1_2 = L1_2.localizedString
  L2_2 = "Invite message body"
  L3_2 = {}
  L4_2 = mainPlayer
  L4_2 = L4_2.inviteKey
  L3_2.code = L4_2
  L4_2 = Constants
  L4_2 = L4_2.Social_SharingURL
  L3_2.url = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  L0_2.body = L1_2
  L1_2 = native
  L1_2 = L1_2.showPopup
  L2_2 = "mail"
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
end

function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L4_1
  L1_2 = L1_2.logEvent
  L2_2 = "Share invite key"
  L1_2(L2_2)
  L1_2 = system
  L1_2 = L1_2.getInfo
  L2_2 = "platformName"
  L1_2 = L1_2(L2_2)
  if L1_2 == "Android" then
    L2_2 = native
    L2_2 = L2_2.canShowPopup
    L3_2 = "social"
    L4_2 = "share"
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = {}
      L2_2.service = "share"
      L3_2 = L0_1
      L3_2 = L3_2.localizedString
      L4_2 = "Invite message body"
      L5_2 = {}
      L6_2 = mainPlayer
      L6_2 = L6_2.inviteKey
      L5_2.code = L6_2
      L6_2 = Constants
      L6_2 = L6_2.Social_SharingURL
      L5_2.url = L6_2
      L3_2 = L3_2(L4_2, L5_2)
      L2_2.message = L3_2
      L3_2 = native
      L3_2 = L3_2.showPopup
      L4_2 = "social"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    else
      L2_2 = L13_1
      L2_2()
    end
  elseif L1_2 == "iPhone OS" then
    L2_2 = native
    L2_2 = L2_2.canShowPopup
    L3_2 = "activity"
    L2_2 = L2_2(L3_2)
    L3_2 = tonumber
    L4_2 = string
    L4_2 = L4_2.sub
    L5_2 = system
    L5_2 = L5_2.getInfo
    L6_2 = "platformVersion"
    L5_2 = L5_2(L6_2)
    L6_2 = 1
    L7_2 = 1
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    if L2_2 and 8 <= L3_2 then
      L4_2 = {}
      L5_2 = {}
      L6_2 = {}
      L6_2.type = "string"
      L7_2 = L0_1
      L7_2 = L7_2.localizedString
      L8_2 = "Invite message body"
      L9_2 = {}
      L10_2 = mainPlayer
      L10_2 = L10_2.inviteKey
      L9_2.code = L10_2
      L10_2 = Constants
      L10_2 = L10_2.Social_SharingURL
      L9_2.url = L10_2
      L7_2 = L7_2(L8_2, L9_2)
      L6_2.value = L7_2
      L5_2[1] = L6_2
      L4_2.items = L5_2
      L5_2 = L9_1
      L5_2 = L5_2.view
      L5_2 = L5_2.contentBounds
      L4_2.origin = L5_2
      L5_2 = {}
      L6_2 = "up"
      L7_2 = "down"
      L5_2[1] = L6_2
      L5_2[2] = L7_2
      L4_2.permittedArrowDirections = L5_2
      L5_2 = native
      L5_2 = L5_2.showPopup
      L6_2 = "activity"
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    else
      L4_2 = L13_1
      L4_2()
    end
  else
    L2_2 = showSimpleDialog
    L3_2 = L0_1
    L3_2 = L3_2["Invite Code"]
    L4_2 = L0_1
    L4_2 = L4_2["You can't use this feature"]
    L5_2 = L0_1
    L5_2 = L5_2.OK
    L2_2(L3_2, L4_2, L5_2)
  end
end

function L15_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2 = L0_2.logEvent
  L1_2 = "FB Invite key"
  L0_2(L1_2)
  L0_2 = system
  L0_2 = L0_2.openURL
  L1_2 = "https://www.facebook.com/"
  L0_2(L1_2)
end

didPressFBButton = L15_1

function L15_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L0_2 = L0_2.showOverlay
  L1_2 = "Scenes.RewardCodeOverlay"
  L0_2(L1_2)
end

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = setmetatable
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  L2_2 = display
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  A1_2.view = L2_2
  L2_2 = display
  L2_2 = L2_2.newImageRect
  L3_2 = A1_2.view
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "General/FC-emblem.png"
  L4_2 = L4_2 .. L5_2
  L5_2 = 79
  L6_2 = 96
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = display
  L3_2 = L3_2.contentWidth
  L3_2 = L3_2 * 0.18
  L2_2.x = L3_2
  L3_2 = display
  L3_2 = L3_2.contentHeight
  L3_2 = L3_2 * 0.4
  L2_2.y = L3_2
  L3_2 = nil
  L4_2 = system
  L4_2 = L4_2.getInfo
  L5_2 = "build"
  L4_2 = L4_2(L5_2)
  if "2013.1137" < L4_2 then
    L4_2 = system
    L4_2 = L4_2.getInfo
    L5_2 = "platformName"
    L4_2 = L4_2(L5_2)
    if L4_2 ~= "Android" then
      L4_2 = L0_1
      L4_2 = L4_2.lang
      if L4_2 == "fa" then
        goto lbl_53
      end
    end
  end
  L4_2 = L0_1
  L4_2 = L4_2.lang
  if L4_2 == "ar" then
    ::lbl_53::
    L4_2 = {}
    L5_2 = A1_2.view
    L4_2.parent = L5_2
    L5_2 = L0_1
    L5_2 = L5_2["Invite help"]
    L4_2.text = L5_2
    L4_2.x = 0
    L4_2.y = 0
    L5_2 = display
    L5_2 = L5_2.contentWidth
    L5_2 = L5_2 * 0.5
    L4_2.width = L5_2
    L4_2.height = 200
    L5_2 = Constants
    L5_2 = L5_2.fontForSubtitle
    L5_2 = L5_2()
    L4_2.font = L5_2
    L4_2.fontSize = 13
    L4_2.align = "right"
    L5_2 = display
    L5_2 = L5_2.newText
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L3_2 = L5_2
  else
    L4_2 = display
    L4_2 = L4_2.newText
    L5_2 = A1_2.view
    L6_2 = L0_1
    L6_2 = L6_2["Invite help"]
    L7_2 = 0
    L8_2 = 0
    L9_2 = display
    L9_2 = L9_2.contentWidth
    L9_2 = L9_2 * 0.5
    L10_2 = 200
    L11_2 = Constants
    L11_2 = L11_2.fontForSubtitle
    L11_2 = L11_2()
    L12_2 = 13
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L3_2 = L4_2
  end
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = Constants
  L6_2 = L6_2.darkBlueColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2 = display
  L4_2 = L4_2.contentWidth
  L4_2 = L4_2 * 0.6
  L3_2.x = L4_2
  L3_2.y = 110
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = A1_2.view
  L6_2 = L0_1
  L6_2 = L6_2["Your invite code is:"]
  L7_2 = 0
  L8_2 = 0
  L9_2 = Constants
  L9_2 = L9_2.fontForTitle
  L9_2 = L9_2()
  L10_2 = 13
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = L0_1
  L5_2 = L5_2.lang
  if L5_2 ~= "fa" then
    L5_2 = L0_1
    L5_2 = L5_2.lang
    if L5_2 ~= "ar" then
      goto lbl_135
    end
  end
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 * 0.84
  L4_2.x = L5_2
  goto lbl_143
  ::lbl_135::
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 * 0.43
  L6_2 = L4_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L5_2 = L5_2 - 45
  L4_2.x = L5_2
  ::lbl_143::
  L5_2 = L3_2.y
  L5_2 = L5_2 + 20
  L4_2.y = L5_2
  L5_2 = display
  L5_2 = L5_2.newRoundedRect
  L6_2 = A1_2.view
  L7_2 = 0
  L8_2 = 0
  L9_2 = 154
  L10_2 = 30
  L11_2 = 3
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = L5_2
  L6_2 = L5_2.setFillColor
  L8_2 = Constants
  L8_2 = L8_2.blueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = L0_1
  L6_2 = L6_2.lang
  if L6_2 ~= "fa" then
    L6_2 = L0_1
    L6_2 = L6_2.lang
    if L6_2 ~= "ar" then
      goto lbl_173
    end
  end
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 * 0.55
  L5_2.x = L6_2
  goto lbl_176
  ::lbl_173::
  L6_2 = L4_2.x
  L6_2 = L6_2 + 140
  L5_2.x = L6_2
  ::lbl_176::
  L6_2 = L4_2.y
  L5_2.y = L6_2
  L6_2 = display
  L6_2 = L6_2.newText
  L7_2 = A1_2.view
  L8_2 = mainPlayer
  L8_2 = L8_2.inviteKey
  L9_2 = 0
  L10_2 = 0
  L11_2 = Constants
  L11_2 = L11_2.fontForTitle
  L11_2 = L11_2()
  L12_2 = 15
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = L6_2
  L7_2 = L6_2.setFillColor
  L9_2 = Constants
  L9_2 = L9_2.darkBlueColor
  L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = L0_1
  L7_2 = L7_2.lang
  if L7_2 ~= "fa" then
    L7_2 = L0_1
    L7_2 = L7_2.lang
    if L7_2 ~= "ar" then
      goto lbl_206
    end
  end
  L7_2 = L5_2.x
  L6_2.x = L7_2
  goto lbl_208
  ::lbl_206::
  L7_2 = L5_2.x
  L6_2.x = L7_2
  ::lbl_208::
  L7_2 = L5_2.y
  L6_2.y = L7_2
  L7_2 = L3_1
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L10_2 = L0_1
  L10_2 = L10_2["Share Code"]
  L9_2.label = L10_2
  L9_2.width = 104
  L9_2.height = 33
  L10_2 = Constants
  L10_2 = L10_2.Path_Assets
  L11_2 = "BattleItems/next.png"
  L10_2 = L10_2 .. L11_2
  L9_2.defaultFile = L10_2
  L10_2 = Constants
  L10_2 = L10_2.Path_Assets
  L11_2 = "BattleItems/next-p.png"
  L10_2 = L10_2 .. L11_2
  L9_2.overFile = L10_2
  L10_2 = L14_1
  L9_2.onRelease = L10_2
  L7_2 = L7_2(L8_2, L9_2)
  L9_1 = L7_2
  L7_2 = L9_1
  L7_2.delegate = A1_2
  L7_2 = A1_2.view
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = L9_1
  L9_2 = L9_2.view
  L7_2(L8_2, L9_2)
  L7_2 = L9_1
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 * 0.45
  L7_2.x = L8_2
  L7_2 = L9_1
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 * 0.54
  L7_2.y = L8_2
  L7_2 = L3_1
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L10_2 = L0_1
  L10_2 = L10_2["Reward Code Title"]
  L9_2.label = L10_2
  L9_2.width = 104
  L9_2.height = 33
  L10_2 = Constants
  L10_2 = L10_2.Path_Assets
  L11_2 = "BattleItems/next.png"
  L10_2 = L10_2 .. L11_2
  L9_2.defaultFile = L10_2
  L10_2 = Constants
  L10_2 = L10_2.Path_Assets
  L11_2 = "BattleItems/next-p.png"
  L10_2 = L10_2 .. L11_2
  L9_2.overFile = L10_2
  L10_2 = L15_1
  L9_2.onRelease = L10_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_1 = L7_2
  L7_2 = L8_1
  L7_2.delegate = A1_2
  L7_2 = A1_2.view
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = L8_1
  L9_2 = L9_2.view
  L7_2(L8_2, L9_2)
  L7_2 = L8_1
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 * 0.79
  L7_2.x = L8_2
  L7_2 = L8_1
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 * 0.54
  L7_2.y = L8_2
  L7_2 = L3_1
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L10_2 = L0_1
  L10_2 = L10_2["Instagram Page"]
  L9_2.label = L10_2
  L9_2.width = 104
  L9_2.height = 33
  L10_2 = Constants
  L10_2 = L10_2.Path_Assets
  L11_2 = "BattleItems/next.png"
  L10_2 = L10_2 .. L11_2
  L9_2.defaultFile = L10_2
  L10_2 = Constants
  L10_2 = L10_2.Path_Assets
  L11_2 = "BattleItems/next-p.png"
  L10_2 = L10_2 .. L11_2
  L9_2.overFile = L10_2
  L10_2 = L11_1
  L9_2.onRelease = L10_2
  L7_2 = L7_2(L8_2, L9_2)
  L7_2.delegate = A1_2
  L8_2 = A1_2.view
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L7_2.view
  L8_2(L9_2, L10_2)
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 * 0.79
  L7_2.x = L8_2
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 * 0.68
  L7_2.y = L8_2
  L8_2 = L3_1
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = {}
  L11_2 = L0_1
  L11_2 = L11_2["Fruitcraft site"]
  L10_2.label = L11_2
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
  L11_2 = L12_1
  L10_2.onRelease = L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L8_2.delegate = A1_2
  L9_2 = A1_2.view
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L8_2.view
  L9_2(L10_2, L11_2)
  L9_2 = display
  L9_2 = L9_2.contentWidth
  L9_2 = L9_2 * 0.45
  L8_2.x = L9_2
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 * 0.68
  L8_2.y = L9_2
  L9_2 = L3_1
  L10_2 = L9_2
  L9_2 = L9_2.new
  L11_2 = {}
  L12_2 = L0_1
  L12_2 = L12_2["Invite Button Label"]
  L11_2.label = L12_2
  L11_2.width = 104
  L11_2.height = 33
  L12_2 = Constants
  L12_2 = L12_2.Path_Assets
  L13_2 = "BattleItems/next.png"
  L12_2 = L12_2 .. L13_2
  L11_2.defaultFile = L12_2
  L12_2 = Constants
  L12_2 = L12_2.Path_Assets
  L13_2 = "BattleItems/next-p.png"
  L12_2 = L12_2 .. L13_2
  L11_2.overFile = L12_2
  
  function L12_2()
    local L0_3, L1_3
    L0_3 = L2_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Scenes.InviteInputOverlay"
    L0_3(L1_3)
  end
  
  L11_2.onRelease = L12_2
  L9_2 = L9_2(L10_2, L11_2)
  L6_1 = L9_2
  L9_2 = L6_1
  L9_2.delegate = A1_2
  L9_2 = A1_2.view
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L6_1
  L11_2 = L11_2.view
  L9_2(L10_2, L11_2)
  L9_2 = L6_1
  L10_2 = display
  L10_2 = L10_2.contentWidth
  L10_2 = L10_2 * 0.79
  L9_2.x = L10_2
  L9_2 = L6_1
  L10_2 = display
  L10_2 = L10_2.contentHeight
  L10_2 = L10_2 * 0.54
  L9_2.y = L10_2
  return A1_2
end

new = L16_1

function L16_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L16_1

function L16_1()
  local L0_2, L1_2
  L0_2 = _storeType
  if L0_2 == "appstore" then
    L0_2 = mainPlayer
    L0_2 = L0_2.canUseVitrin
    if L0_2 ~= true then
      L0_2 = L6_1
      L0_2.alpha = 0
      L0_2 = L8_1
      L0_2.alpha = 0
  end
  else
    L0_2 = mainPlayer
    L0_2 = L0_2.level
    if L0_2 < 6 then
      L0_2 = mainPlayer
      L0_2 = L0_2.settings
      L0_2 = L0_2.isInvited
      if L0_2 ~= true then
        L0_2 = L6_1
        L0_2.alpha = 1
        L0_2 = L8_1
        L0_2.alpha = 0
      else
        L0_2 = L6_1
        L0_2.alpha = 0
        L0_2 = L8_1
        L0_2.alpha = 0
      end
    else
      L0_2 = L6_1
      L0_2.alpha = 0
      L0_2 = L8_1
      L0_2.alpha = 1
    end
  end
end

repaint = L16_1
