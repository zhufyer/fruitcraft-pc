local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "widget"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Models.ProfileManager"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "composer"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.EffectsManager"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Tutorial.VerticalOverlayView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Tutorial.HorizontalOverlayView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Models.AchievementManager"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Utils.Toolbox"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Utils.DateConvert"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Views.CachedImageView"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Data.Medals"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Components.TDButtonView"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Components.AudioManager"
L13_1 = L13_1(L14_1)
L14_1 = {}
L15_1 = {}
L16_1 = nil
L17_1 = nil
L18_1 = nil
L19_1 = nil
L20_1 = nil
L21_1 = 50
L22_1 = 50
L23_1 = nil
L24_1 = nil
L25_1 = {}
L26_1 = nil
L27_1 = nil
L28_1 = nil
L29_1 = nil
L30_1 = display
L30_1 = L30_1.contentWidth
L30_1 = L30_1 / 3
L30_1 = L30_1 - 10
L31_1 = nil
L32_1 = false

function L33_1()
  local L0_2, L1_2
  L0_2 = true
  L17_1 = L0_2
end

setTapEnable = L33_1

function L33_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L6_2 = A2_2
  L7_2 = A3_2
  L8_2 = A1_2.x
  L9_2 = math
  L9_2 = L9_2.pow
  L10_2 = -1
  L11_2 = A0_2
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = A1_2.width
  L9_2 = L9_2 * L10_2
  L9_2 = L9_2 * 0.2
  L4_2 = L8_2 + L9_2
  L8_2 = math
  L8_2 = L8_2.floor
  L9_2 = A0_2 - 1
  L9_2 = L9_2 / 2
  L8_2 = L8_2(L9_2)
  if L8_2 == 0 then
    L8_2 = A1_2.y
    L9_2 = L7_2 / 2
    L8_2 = L8_2 - L9_2
    L9_2 = A1_2.height
    L9_2 = L9_2 * 0.349
    L5_2 = L8_2 + L9_2
  else
    L8_2 = math
    L8_2 = L8_2.floor
    L9_2 = A0_2 - 1
    L9_2 = L9_2 / 2
    L8_2 = L8_2(L9_2)
    if L8_2 == 1 then
      L8_2 = A1_2.y
      L9_2 = L7_2 / 2
      L8_2 = L8_2 - L9_2
      L9_2 = A1_2.height
      L9_2 = L9_2 * 0.149
      L5_2 = L8_2 + L9_2
    else
      L8_2 = math
      L8_2 = L8_2.floor
      L9_2 = A0_2 - 1
      L9_2 = L9_2 / 2
      L8_2 = L8_2(L9_2)
      if L8_2 == 2 then
        L8_2 = A1_2.y
        L9_2 = L7_2 / 2
        L8_2 = L8_2 - L9_2
        L9_2 = A1_2.height
        L9_2 = L9_2 * 0.051
        L5_2 = L8_2 - L9_2
      end
    end
  end
  L8_2 = L4_2
  L9_2 = L5_2
  L10_2 = L6_2
  L11_2 = L7_2
  return L8_2, L9_2, L10_2, L11_2
end

function L34_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  L4_2 = A0_2.id
  L4_2 = L4_2 - 10000
  L5_2 = L25_1
  L5_2 = L5_2[L4_2]
  if L5_2 then
    L5_2 = display
    L5_2 = L5_2.remove
    L6_2 = L25_1
    L6_2 = L6_2[L4_2]
    L5_2(L6_2)
  end
  L5_2 = L33_1
  L6_2 = L4_2
  L7_2 = A1_2
  L8_2 = 18
  L9_2 = 35
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if A2_2 then
    L9_2 = L33_1
    L10_2 = L4_2
    L11_2 = A1_2
    L12_2 = A2_2.w
    L13_2 = A2_2.h
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    L8_2 = L12_2
    L7_2 = L11_2
    L6_2 = L10_2
    L5_2 = L9_2
  end
  L9_2 = L12_1
  L10_2 = L9_2
  L9_2 = L9_2.new
  L11_2 = {}
  L11_2.width = L7_2
  L11_2.height = L8_2
  L12_2 = A0_2.image
  L13_2 = "-small.png"
  L12_2 = L12_2 .. L13_2
  L11_2.defaultFile = L12_2
  
  function L12_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L3_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Scenes.MedalOverlay"
    L2_3 = {}
    L2_3.effect = "fade"
    L3_3 = {}
    L4_3 = A0_2
    L3_3.medal = L4_3
    L4_3 = relaunchTutorial
    L3_3.onCancel = L4_3
    L2_3.params = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L11_2.onRelease = L12_2
  L9_2 = L9_2(L10_2, L11_2)
  L9_2.x = L5_2
  L9_2.y = L6_2
  L11_2 = L3_2
  L10_2 = L3_2.insert
  L12_2 = L9_2.view
  L10_2(L11_2, L12_2)
  L10_2 = display
  L10_2 = L10_2.newImageRect
  L11_2 = Constants
  L11_2 = L11_2.Path_Assets
  L12_2 = "Profile/MedalCountBG.png"
  L11_2 = L11_2 .. L12_2
  L12_2 = 10
  L13_2 = 10
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L10_2.x = L5_2
  L11_2 = L9_2.height
  L11_2 = L11_2 / 2
  L11_2 = L6_2 + L11_2
  L12_2 = A1_2.height
  L12_2 = L12_2 * 0.025
  L11_2 = L11_2 + L12_2
  L10_2.y = L11_2
  L12_2 = L3_2
  L11_2 = L3_2.insert
  L13_2 = L10_2
  L11_2(L12_2, L13_2)
  L11_2 = A0_2.count
  L12_2 = A0_2.count
  if L12_2 ~= 0 then
    L12_2 = A0_2.count
    if L12_2 ~= nil then
      goto lbl_80
    end
  end
  L11_2 = ""
  ::lbl_80::
  L12_2 = display
  L12_2 = L12_2.newText
  L13_2 = L11_2
  L14_2 = 0
  L15_2 = 0
  L16_2 = Constants
  L16_2 = L16_2.fontForSubtitle
  L16_2 = L16_2()
  L17_2 = 9
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
  L14_2 = L12_2
  L13_2 = L12_2.setTextColor
  L15_2 = 1
  L16_2 = 1
  L17_2 = 1
  L13_2(L14_2, L15_2, L16_2, L17_2)
  L13_2 = L10_2.x
  L12_2.x = L13_2
  L13_2 = L10_2.y
  L12_2.y = L13_2
  L14_2 = L3_2
  L13_2 = L3_2.insert
  L15_2 = L12_2
  L13_2(L14_2, L15_2)
  L13_2 = L3_2
  L14_2 = L9_2
  L15_2 = L5_2
  L16_2 = L6_2
  return L13_2, L14_2, L15_2, L16_2
end

function L35_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = L11_1
  L3_2 = L3_2[10001]
  L4_2 = L11_1
  L4_2 = L4_2[10002]
  L5_2 = L11_1
  L5_2 = L5_2[10003]
  L6_2 = L11_1
  L6_2 = L6_2[10004]
  L7_2 = L11_1
  L7_2 = L7_2[10005]
  L8_2 = L11_1
  L8_2 = L8_2[10006]
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L2_2[6] = L8_2
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = nil
    L9_2 = nil
    L10_2 = nil
    L11_2 = L34_1
    L12_2 = L7_2
    L13_2 = A0_2.achievmentsCase
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2)
    L10_2 = L14_2
    L9_2 = L13_2
    L8_2 = L12_2
    L1_2[L6_2] = L11_2
    L11_2 = L1_2[L6_2]
    L12_2 = L1_2[L6_2]
    L13_2 = L1_2[L6_2]
    L14_2 = L8_2
    L15_2 = L9_2
    L13_2.viewY = L10_2
    L12_2.viewX = L15_2
    L11_2.view = L14_2
    L11_2 = A0_2.middleBoxView
    L12_2 = L11_2
    L11_2 = L11_2.insert
    L13_2 = L1_2[L6_2]
    L11_2(L12_2, L13_2)
  end
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L25_1
    L9_2 = display
    L9_2 = L9_2.newImageRect
    L10_2 = Constants
    L10_2 = L10_2.Path_Assets
    L11_2 = "Profile/Dandelion5.png"
    L10_2 = L10_2 .. L11_2
    L11_2 = 20
    L12_2 = 38
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L8_2[L6_2] = L9_2
    L8_2 = L25_1
    L8_2 = L8_2[L6_2]
    L9_2 = L7_2.viewX
    L8_2.x = L9_2
    L8_2 = L25_1
    L8_2 = L8_2[L6_2]
    L9_2 = L7_2.viewY
    L8_2.y = L9_2
    L8_2 = A0_2.middleBoxView
    L9_2 = L8_2
    L8_2 = L8_2.insert
    L10_2 = L25_1
    L10_2 = L10_2[L6_2]
    L8_2(L9_2, L10_2)
  end
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = display
    L8_2 = L8_2.remove
    L9_2 = L7_2
    L8_2(L9_2)
  end
end

function L36_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = timer
  L1_2 = L1_2.performWithDelay
  L2_2 = A0_2
  
  function L3_2()
    local L0_3, L1_3
    L0_3 = true
    L17_1 = L0_3
  end
  
  L1_2(L2_2, L3_2)
end

enablePrivateTableTap = L36_1

function L36_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A1_2 then
    L3_2 = L15_1
    L3_2 = L3_2[A0_2]
    L3_2.text = A1_2
    if A0_2 == "Real Name" then
      L3_2 = mainPlayer
      L3_2.realName = A1_2
    elseif A0_2 == "Birth Year" then
      L3_2 = mainPlayer
      L3_2.birthYear = A1_2
    elseif A0_2 == "Gender" then
      L3_2 = mainPlayer
      L3_2.gender = A2_2
    elseif A0_2 == "Phone" then
      L3_2 = mainPlayer
      L3_2.phone = A1_2
    elseif A0_2 == "Address" then
      L3_2 = mainPlayer
      L3_2.address = A1_2
    end
    L3_2 = mainPlayer
    L4_2 = L3_2
    L3_2 = L3_2.saveSettings
    L3_2(L4_2)
  end
end

function L37_1(A0_2, A1_2)
end

function L38_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L3_2 = {}
  if A0_2 == 1 then
    L1_2 = "Real Name"
    L4_2 = L15_1
    L4_2 = L4_2[L1_2]
    L4_2 = L4_2.text
    if L4_2 ~= "_" then
      L4_2 = L15_1
      L4_2 = L4_2[L1_2]
      L2_2 = L4_2.text
    end
    L4_2 = {}
    L4_2.titleText = L1_2
    L5_2 = L2_2 or L5_2
    if not L2_2 then
      L5_2 = L14_1
      L5_2 = L5_2.realName
    end
    L4_2.defualtText = L5_2
    L5_2 = L37_1
    L4_2.checkValidate = L5_2
    L5_2 = L36_1
    L4_2.onSelect = L5_2
    L5_2 = enablePrivateTableTap
    L4_2.onExit = L5_2
    L3_2 = L4_2
  elseif A0_2 == 2 then
    L1_2 = "Birth Year"
    L4_2 = L15_1
    L4_2 = L4_2[L1_2]
    L4_2 = L4_2.text
    if L4_2 ~= "_" then
      L4_2 = L15_1
      L4_2 = L4_2[L1_2]
      L2_2 = L4_2.text
    end
    L4_2 = {}
    L4_2.titleText = L1_2
    L5_2 = L1_1
    L5_2 = L5_2["Birth Year Input Description"]
    L4_2.descriptionText = L5_2
    L5_2 = L37_1
    L4_2.checkValidate = L5_2
    L5_2 = L36_1
    L4_2.onSelect = L5_2
    L4_2.textType = "number"
    L5_2 = enablePrivateTableTap
    L4_2.onExit = L5_2
    L5_2 = L2_2 or L5_2
    if not L2_2 then
      L5_2 = L14_1
      L5_2 = L5_2.birthYear
    end
    L4_2.defualtText = L5_2
    L3_2 = L4_2
  elseif A0_2 == 3 then
    L4_2 = {}
    L4_2.titleText = "Gender"
    L5_2 = L36_1
    L4_2.onSelect = L5_2
    L5_2 = enablePrivateTableTap
    L4_2.onExit = L5_2
    L3_2 = L4_2
  elseif A0_2 == 4 then
    L1_2 = "Phone"
    L4_2 = L15_1
    L4_2 = L4_2[L1_2]
    L4_2 = L4_2.text
    if L4_2 ~= "_" then
      L4_2 = L15_1
      L4_2 = L4_2[L1_2]
      L2_2 = L4_2.text
    end
    L4_2 = {}
    L4_2.titleText = L1_2
    L5_2 = L37_1
    L4_2.checkValidate = L5_2
    L5_2 = L36_1
    L4_2.onSelect = L5_2
    L4_2.textType = "number"
    L5_2 = enablePrivateTableTap
    L4_2.onExit = L5_2
    L5_2 = L2_2 or L5_2
    if not L2_2 then
      L5_2 = L14_1
      L5_2 = L5_2.phone
    end
    L4_2.defualtText = L5_2
    L3_2 = L4_2
  elseif A0_2 == 5 then
    L1_2 = "Address"
    L4_2 = L15_1
    L4_2 = L4_2[L1_2]
    L4_2 = L4_2.text
    if L4_2 ~= "_" then
      L4_2 = L15_1
      L4_2 = L4_2[L1_2]
      L2_2 = L4_2.text
    end
    L4_2 = {}
    L4_2.titleText = L1_2
    L5_2 = L37_1
    L4_2.checkValidate = L5_2
    L5_2 = L36_1
    L4_2.onSelect = L5_2
    L5_2 = enablePrivateTableTap
    L4_2.onExit = L5_2
    L5_2 = L2_2 or L5_2
    if not L2_2 then
      L5_2 = L14_1
      L5_2 = L5_2.address
    end
    L4_2.defualtText = L5_2
    L3_2 = L4_2
  end
  return L3_2
end

function L39_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if A4_2 then
    L8_2 = display
    L8_2 = L8_2.newImageRect
    L9_2 = A0_2
    L10_2 = Constants
    L10_2 = L10_2.Path_Assets
    L11_2 = "TribeUpgrade/FC-TU-listbg.png"
    L10_2 = L10_2 .. L11_2
    L11_2 = A2_2 - 2
    L12_2 = A3_2 - 8
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L5_2 = L8_2
    L8_2 = L5_2.width
    L8_2 = L8_2 / 2
    L5_2.x = L8_2
    L8_2 = A3_2 * 0.5
    L5_2.y = L8_2
    L8_2 = display
    L8_2 = L8_2.newImageRect
    L9_2 = A0_2
    L10_2 = Constants
    L10_2 = L10_2.Path_Assets
    L11_2 = "Profile/FC-TU-listbg1.png"
    L10_2 = L10_2 .. L11_2
    L11_2 = A1_2 - A2_2
    L12_2 = A3_2 - 8
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L6_2 = L8_2
    L8_2 = L5_2.x
    L9_2 = L5_2.width
    L10_2 = L6_2.width
    L9_2 = L9_2 + L10_2
    L9_2 = L9_2 / 2
    L8_2 = L8_2 + L9_2
    L6_2.x = L8_2
    L8_2 = A3_2 * 0.5
    L6_2.y = L8_2
    L8_2 = display
    L8_2 = L8_2.newRoundedRect
    L9_2 = A0_2
    L10_2 = 0
    L11_2 = 0
    L12_2 = A1_2 - 4
    L13_2 = A3_2 - 8
    L14_2 = 0
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L7_2 = L8_2
    L8_2 = A1_2 * 0.5
    L7_2.x = L8_2
    L8_2 = A3_2 * 0.5
    L7_2.y = L8_2
    L9_2 = L7_2
    L8_2 = L7_2.setFillColor
    L10_2 = 0
    L11_2 = 0
    L12_2 = 0
    L13_2 = 0
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L7_2.strokeWidth = 3
    L9_2 = L7_2
    L8_2 = L7_2.setStrokeColor
    L10_2 = Constants
    L10_2 = L10_2.darkBlueColor
    L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2()
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  else
    L8_2 = display
    L8_2 = L8_2.newImageRect
    L9_2 = A0_2
    L10_2 = Constants
    L10_2 = L10_2.Path_Assets
    L11_2 = "TribeUpgrade/FC-TU-listbg.png"
    L10_2 = L10_2 .. L11_2
    L11_2 = A2_2 + 1
    L12_2 = A3_2
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L5_2 = L8_2
    L8_2 = L5_2.width
    L8_2 = L8_2 / 2
    L5_2.x = L8_2
    L8_2 = A3_2 * 0.5
    L5_2.y = L8_2
    L8_2 = display
    L8_2 = L8_2.newImageRect
    L9_2 = A0_2
    L10_2 = Constants
    L10_2 = L10_2.Path_Assets
    L11_2 = "Profile/FC-TU-listbg1.png"
    L10_2 = L10_2 .. L11_2
    L11_2 = A1_2 - A2_2
    L12_2 = A3_2
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L6_2 = L8_2
    L8_2 = L5_2.x
    L9_2 = L5_2.width
    L10_2 = L6_2.width
    L9_2 = L9_2 + L10_2
    L9_2 = L9_2 / 2
    L8_2 = L8_2 + L9_2
    L6_2.x = L8_2
    L8_2 = A3_2 * 0.5
    L6_2.y = L8_2
  end
  L8_2 = {}
  L8_2.parent = A0_2
  L8_2.text = ""
  L8_2.x = 0
  L8_2.y = 0
  L9_2 = L5_2.width
  L9_2 = L9_2 - 10
  L8_2.width = L9_2
  L9_2 = Constants
  L9_2 = L9_2.fontForSubtitle
  L9_2 = L9_2()
  L8_2.font = L9_2
  L8_2.fontSize = 10
  L8_2.align = "center"
  L9_2 = display
  L9_2 = L9_2.newText
  L10_2 = L8_2
  L9_2 = L9_2(L10_2)
  L11_2 = L9_2
  L10_2 = L9_2.setFillColor
  L12_2 = Constants
  L12_2 = L12_2.darkBlueColor
  L12_2, L13_2, L14_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2)
  L10_2 = L5_2.x
  L9_2.x = L10_2
  L10_2 = L5_2.y
  L9_2.y = L10_2
  L10_2 = Constants
  L10_2 = L10_2.fontForSubtitle
  L10_2 = L10_2()
  L8_2.font = L10_2
  L10_2 = L6_2.x
  L11_2 = L6_2.y
  L8_2.y = L11_2
  L8_2.x = L10_2
  L10_2 = L9_2
  L11_2 = L8_2
  return L10_2, L11_2
end

createTableRowView = L39_1

function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = display
  L2_2 = L2_2.newImageRect
  L3_2 = A0_2
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "General/FC-back-botton.png"
  L4_2 = L4_2 .. L5_2
  L5_2 = 13
  L6_2 = 13
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2.width
  L4_2 = L2_2.width
  L4_2 = L4_2 * 0.5
  L3_2 = L3_2 - L4_2
  L3_2 = L3_2 - 10
  L2_2.x = L3_2
  L2_2.y = A1_2
  L2_2.rotation = -90
  return L2_2
end

createPointerForTouchRow = L39_1

function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = A1_2.row
  L3_2 = 40
  L4_2 = L30_1
  L5_2 = createTableRowView
  L6_2 = L2_2
  L7_2 = L4_2
  L8_2 = L4_2 / 2
  L9_2 = L3_2
  L10_2 = "public"
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L7_2 = L2_2.id
  if L7_2 == "left-info" then
    L7_2 = L2_2.index
    if L7_2 == 1 then
      L7_2 = L1_1
      L7_2 = L7_2.Name
      L5_2.text = L7_2
      L7_2 = L14_1
      L7_2 = L7_2.name
      if L7_2 then
        L7_2 = L8_1
        L7_2 = L7_2.stringUTFLength
        L8_2 = L14_1
        L8_2 = L8_2.name
        L7_2 = L7_2(L8_2)
        if 16 < L7_2 then
          L7_2 = L14_1
          L8_2 = L8_1
          L8_2 = L8_2.utf8sub
          L9_2 = L14_1
          L9_2 = L9_2.name
          L10_2 = 0
          L11_2 = 15
          L8_2 = L8_2(L9_2, L10_2, L11_2)
          L9_2 = "..."
          L8_2 = L8_2 .. L9_2
          L7_2.name = L8_2
        end
        L7_2 = L1_1
        L8_2 = L14_1
        L8_2 = L8_2.name
        L7_2 = L7_2[L8_2]
        L6_2.text = L7_2
      else
        L7_2 = L1_1
        L7_2 = L7_2._
        L6_2.text = L7_2
      end
      L7_2 = L15_1
      L8_2 = display
      L8_2 = L8_2.newText
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      L7_2.Name = L8_2
      L7_2 = L15_1
      L7_2 = L7_2.Name
      L8_2 = L7_2
      L7_2 = L7_2.setFillColor
      L9_2 = Constants
      L9_2 = L9_2.blackColor
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2()
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    else
      L7_2 = L2_2.index
      if L7_2 == 2 then
        L7_2 = L1_1
        L7_2 = L7_2["Last Used"]
        L5_2.text = L7_2
        L7_2 = L14_1
        L7_2 = L7_2.lastLoadAt
        if L7_2 then
          L7_2 = L1_1
          L7_2 = L7_2.lang
          if L7_2 == "fa" then
            L7_2 = L9_1
            L7_2 = L7_2.convertTimeToDate
            L8_2 = L14_1
            L8_2 = L8_2.lastLoadAt
            L9_2 = 1
            L7_2 = L7_2(L8_2, L9_2)
            L6_2.text = L7_2
          else
            L7_2 = L9_1
            L7_2 = L7_2.convertTimeToDate
            L8_2 = L14_1
            L8_2 = L8_2.lastLoadAt
            L9_2 = 0
            L7_2 = L7_2(L8_2, L9_2)
            L6_2.text = L7_2
          end
        else
          L6_2.text = "_"
        end
        L6_2.fontSize = 9
        L7_2 = L15_1
        L8_2 = display
        L8_2 = L8_2.newText
        L9_2 = L6_2
        L8_2 = L8_2(L9_2)
        L7_2["Created at"] = L8_2
        L7_2 = L15_1
        L7_2 = L7_2["Created at"]
        L8_2 = L7_2
        L7_2 = L7_2.setFillColor
        L9_2 = Constants
        L9_2 = L9_2.blackColor
        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2()
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        L6_2.fontSize = 10
      else
        L7_2 = L2_2.index
        if L7_2 == 3 then
          L7_2 = L1_1
          L7_2 = L7_2["League Rank"]
          L5_2.text = L7_2
          L7_2 = L15_1
          L8_2 = display
          L8_2 = L8_2.newText
          L9_2 = L6_2
          L8_2 = L8_2(L9_2)
          L7_2["League Rank"] = L8_2
          L7_2 = L15_1
          L7_2 = L7_2["League Rank"]
          L8_2 = L7_2
          L7_2 = L7_2.setFillColor
          L9_2 = Constants
          L9_2 = L9_2.blackColor
          L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2()
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
          L7_2 = L14_1
          L7_2 = L7_2.leagueID
          if L7_2 then
            L7_2 = L14_1
            L7_2 = L7_2.leagueID
            if L7_2 ~= 0 then
              L7_2 = L14_1
              L7_2 = L7_2.leagueID
              L8_2 = Constants
              L8_2 = L8_2.leagueInfoWithId
              L9_2 = L7_2
              L8_2 = L8_2(L9_2)
              L9_2 = nil
              L10_2 = L1_1
              L10_2 = L10_2.lang
              if L10_2 ~= "fa" then
                L10_2 = L1_1
                L10_2 = L10_2.lang
                if L10_2 ~= "ar" then
                  goto lbl_168
                end
              end
              L10_2 = L1_1
              L10_2 = L10_2.adjustNumber
              L11_2 = L14_1
              L11_2 = L11_2.leagueRank
              L10_2 = L10_2(L11_2)
              L11_2 = " , "
              L12_2 = Constants
              L12_2 = L12_2.getLeagueNumber
              L13_2 = L7_2
              L12_2 = L12_2(L13_2)
              L13_2 = " - "
              L14_2 = L8_2.League_Name
              L9_2 = L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2
              goto lbl_181
              ::lbl_168::
              L10_2 = L8_2.League_Name
              L11_2 = " - "
              L12_2 = Constants
              L12_2 = L12_2.getLeagueNumber
              L13_2 = L7_2
              L12_2 = L12_2(L13_2)
              L13_2 = " , "
              L14_2 = L1_1
              L14_2 = L14_2.adjustNumber
              L15_2 = L14_1
              L15_2 = L15_2.leagueRank
              L14_2 = L14_2(L15_2)
              L9_2 = L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2
              ::lbl_181::
              L10_2 = L15_1
              L10_2 = L10_2["League Rank"]
              L10_2.text = L9_2
          end
          else
            L7_2 = L15_1
            L7_2 = L7_2["League Rank"]
            L7_2.text = "_"
          end
        else
          L7_2 = L2_2.index
          if L7_2 == 4 then
            L7_2 = L1_1
            L7_2 = L7_2.Tribe
            L5_2.text = L7_2
            L7_2 = L14_1
            L7_2 = L7_2.tribe
            if L7_2 then
              L7_2 = L8_1
              L7_2 = L7_2.stringUTFLength
              L8_2 = L14_1
              L8_2 = L8_2.tribe
              L7_2 = L7_2(L8_2)
              if 16 < L7_2 then
                L7_2 = L14_1
                L8_2 = L8_1
                L8_2 = L8_2.utf8sub
                L9_2 = L14_1
                L9_2 = L9_2.tribe
                L10_2 = 0
                L11_2 = 15
                L8_2 = L8_2(L9_2, L10_2, L11_2)
                L9_2 = "..."
                L8_2 = L8_2 .. L9_2
                L7_2.tribe = L8_2
              end
              L7_2 = L1_1
              L8_2 = L14_1
              L8_2 = L8_2.tribe
              L7_2 = L7_2[L8_2]
              L6_2.text = L7_2
            else
              L7_2 = L1_1
              L7_2 = L7_2._
              L6_2.text = L7_2
            end
            L7_2 = L15_1
            L8_2 = display
            L8_2 = L8_2.newText
            L9_2 = L6_2
            L8_2 = L8_2(L9_2)
            L7_2.Tribe = L8_2
            L7_2 = L15_1
            L7_2 = L7_2.Tribe
            L8_2 = L7_2
            L7_2 = L7_2.setFillColor
            L9_2 = Constants
            L9_2 = L9_2.blackColor
            L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2()
            L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
          else
            L7_2 = L2_2.index
            if L7_2 == 5 then
              L7_2 = L1_1
              L7_2 = L7_2["No. Battle"]
              L5_2.text = L7_2
              L7_2 = L1_1
              L7_2 = L7_2.adjustNumber
              L8_2 = L14_1
              L8_2 = L8_2.battleNum
              if not L8_2 then
                L8_2 = "_"
              end
              L7_2 = L7_2(L8_2)
              L6_2.text = L7_2
              L7_2 = L15_1
              L8_2 = display
              L8_2 = L8_2.newText
              L9_2 = L6_2
              L8_2 = L8_2(L9_2)
              L7_2["No. Battle"] = L8_2
              L7_2 = L15_1
              L7_2 = L7_2["No. Battle"]
              L8_2 = L7_2
              L7_2 = L7_2.setFillColor
              L9_2 = Constants
              L9_2 = L9_2.blackColor
              L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2()
              L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
            end
          end
        end
      end
    end
  else
    L7_2 = L2_2.id
    if L7_2 == "right-info" then
      L7_2 = L2_2.index
      if L7_2 == 1 then
        L7_2 = L1_1
        L7_2 = L7_2.Mood
        L5_2.text = L7_2
        L7_2 = L14_1
        L7_2 = L7_2.mood
        if L7_2 then
          L7_2 = L1_1
          L8_2 = L14_1
          L8_2 = L8_2.mood
          L8_2 = L8_2.text
          if not L8_2 then
            L8_2 = "_"
          end
          L7_2 = L7_2[L8_2]
          L6_2.text = L7_2
        else
          L6_2.text = "_"
        end
        L7_2 = L15_1
        L8_2 = display
        L8_2 = L8_2.newText
        L9_2 = L6_2
        L8_2 = L8_2(L9_2)
        L7_2.Mood = L8_2
        L7_2 = L15_1
        L7_2 = L7_2.Mood
        L8_2 = L7_2
        L7_2 = L7_2.setFillColor
        L9_2 = Constants
        L9_2 = L9_2.blackColor
        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2()
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        L7_2 = A0_2.isOverlay
        if L7_2 ~= true then
          L7_2 = L5_2.x
          L7_2 = L7_2 + 3
          L5_2.x = L7_2
          L24_1 = L2_2
          L7_2 = createPointerForTouchRow
          L8_2 = L2_2
          L9_2 = L3_2 * 0.5
          L7_2 = L7_2(L8_2, L9_2)
          L23_1 = L7_2
        end
      else
        L7_2 = L2_2.index
        if L7_2 == 2 then
          L7_2 = L1_1
          L7_2 = L7_2["Total Rank"]
          L5_2.text = L7_2
          L7_2 = L1_1
          L7_2 = L7_2.adjustNumber
          L8_2 = L14_1
          L8_2 = L8_2.totalRank
          if not L8_2 then
            L8_2 = "_"
          end
          L7_2 = L7_2(L8_2)
          L6_2.text = L7_2
          L7_2 = L15_1
          L8_2 = display
          L8_2 = L8_2.newText
          L9_2 = L6_2
          L8_2 = L8_2(L9_2)
          L7_2["Total Rank"] = L8_2
          L7_2 = L15_1
          L7_2 = L7_2["Total Rank"]
          L8_2 = L7_2
          L7_2 = L7_2.setFillColor
          L9_2 = Constants
          L9_2 = L9_2.blackColor
          L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2()
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        else
          L7_2 = L2_2.index
          if L7_2 == 3 then
            L7_2 = L1_1
            L7_2 = L7_2["PreLeague Rank"]
            L5_2.text = L7_2
            L7_2 = L15_1
            L8_2 = display
            L8_2 = L8_2.newText
            L9_2 = L6_2
            L8_2 = L8_2(L9_2)
            L7_2["PreLeague Rank"] = L8_2
            L7_2 = L15_1
            L7_2 = L7_2["PreLeague Rank"]
            L8_2 = L7_2
            L7_2 = L7_2.setFillColor
            L9_2 = Constants
            L9_2 = L9_2.blackColor
            L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2()
            L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
            L7_2 = L14_1
            L7_2 = L7_2.preLeagueID
            if L7_2 then
              L7_2 = L14_1
              L7_2 = L7_2.preLeagueRank
              if L7_2 then
                L7_2 = L14_1
                L7_2 = L7_2.preLeagueID
                L8_2 = Constants
                L8_2 = L8_2.leagueInfoWithId
                L9_2 = L7_2
                L8_2 = L8_2(L9_2)
                L9_2 = L1_1
                L9_2 = L9_2.lang
                if L9_2 ~= "fa" then
                  L9_2 = L1_1
                  L9_2 = L9_2.lang
                  if L9_2 ~= "ar" then
                    goto lbl_406
                  end
                end
                L9_2 = L15_1
                L9_2 = L9_2["PreLeague Rank"]
                L10_2 = L1_1
                L10_2 = L10_2.adjustNumber
                L11_2 = L14_1
                L11_2 = L11_2.preLeagueRank
                L10_2 = L10_2(L11_2)
                L11_2 = " , "
                L12_2 = Constants
                L12_2 = L12_2.getLeagueNumber
                L13_2 = L7_2
                L12_2 = L12_2(L13_2)
                L13_2 = " - "
                L14_2 = L8_2.League_Name
                L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2
                L9_2.text = L10_2
                goto lbl_528
                ::lbl_406::
                L9_2 = L15_1
                L9_2 = L9_2["PreLeague Rank"]
                L10_2 = L8_2.League_Name
                L11_2 = " - "
                L12_2 = Constants
                L12_2 = L12_2.getLeagueNumber
                L13_2 = L7_2
                L12_2 = L12_2(L13_2)
                L13_2 = " , "
                L14_2 = L1_1
                L14_2 = L14_2.adjustNumber
                L15_2 = L14_1
                L15_2 = L15_2.preLeagueRank
                L14_2 = L14_2(L15_2)
                L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2
                L9_2.text = L10_2
            end
            else
              L7_2 = L15_1
              L7_2 = L7_2["PreLeague Rank"]
              L7_2.text = "_"
            end
          else
            L7_2 = L2_2.index
            if L7_2 == 4 then
              L7_2 = L1_1
              L7_2 = L7_2["Tribe Position"]
              L5_2.text = L7_2
              L7_2 = L14_1
              L7_2 = L7_2.tribePosition
              if L7_2 then
                L7_2 = L14_1
                L7_2 = L7_2.tribePosition
                L7_2 = L7_2.position
                if not L7_2 then
                  L7_2 = "_"
                end
                L6_2.text = L7_2
              else
                L6_2.text = "_"
              end
              L7_2 = L15_1
              L8_2 = display
              L8_2 = L8_2.newText
              L9_2 = L6_2
              L8_2 = L8_2(L9_2)
              L7_2["Tribe Position"] = L8_2
              L7_2 = L15_1
              L7_2 = L7_2["Tribe Position"]
              L8_2 = L7_2
              L7_2 = L7_2.setFillColor
              L9_2 = Constants
              L9_2 = L9_2.blackColor
              L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2()
              L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
            else
              L7_2 = L2_2.index
              if L7_2 == 5 then
                L7_2 = L1_1
                L7_2 = L7_2["Battle Won Ratio"]
                L5_2.text = L7_2
                L7_2 = nil
                L8_2 = L14_1
                L8_2 = L8_2.wonRatio
                if L8_2 then
                  L8_2 = math
                  L8_2 = L8_2.floor
                  L9_2 = L14_1
                  L9_2 = L9_2.wonRatio
                  L9_2 = L9_2 * 1000
                  L8_2 = L8_2(L9_2)
                  L8_2 = L8_2 % 10
                  if L8_2 ~= 0 then
                    L8_2 = math
                    L8_2 = L8_2.floor
                    L9_2 = L14_1
                    L9_2 = L9_2.wonRatio
                    L9_2 = L9_2 * 100
                    L8_2 = L8_2(L9_2)
                    L9_2 = "."
                    L10_2 = math
                    L10_2 = L10_2.floor
                    L11_2 = L14_1
                    L11_2 = L11_2.wonRatio
                    L11_2 = L11_2 * 1000
                    L10_2 = L10_2(L11_2)
                    L10_2 = L10_2 % 10
                    L7_2 = L8_2 .. L9_2 .. L10_2
                  else
                    L8_2 = math
                    L8_2 = L8_2.floor
                    L9_2 = L14_1
                    L9_2 = L9_2.wonRatio
                    L9_2 = L9_2 * 100
                    L8_2 = L8_2(L9_2)
                    L7_2 = L8_2
                  end
                  L8_2 = L1_1
                  L8_2 = L8_2.adjustNumber
                  L9_2 = "%"
                  L10_2 = L7_2
                  L9_2 = L9_2 .. L10_2
                  if not L9_2 then
                    L9_2 = "_"
                  end
                  L8_2 = L8_2(L9_2)
                  L6_2.text = L8_2
                else
                  L6_2.text = "_"
                end
                L8_2 = L15_1
                L9_2 = display
                L9_2 = L9_2.newText
                L10_2 = L6_2
                L9_2 = L9_2(L10_2)
                L8_2["Battle Won Ratio"] = L9_2
                L8_2 = L15_1
                L8_2 = L8_2["Battle Won Ratio"]
                L9_2 = L8_2
                L8_2 = L8_2.setFillColor
                L10_2 = Constants
                L10_2 = L10_2.blackColor
                L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L10_2()
                L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
              end
            end
          end
        end
      end
    end
  end
  ::lbl_528::
end

publicInfoTableOnRowRender = L39_1

function L39_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.isOverlay
  if L2_2 ~= true then
    L2_2 = A1_2.target
    L3_2 = A1_2.phase
    if L3_2 ~= "press" then
      L3_2 = A1_2.phase
      if L3_2 ~= "cancelled" then
        L3_2 = L2_2.id
        if L3_2 == "right-info" then
          L3_2 = L2_2.index
          if L3_2 == 1 then
            L3_2 = L28_1
            if L3_2 == true then
              L3_2 = L27_1
              L4_2 = L3_2
              L3_2 = L3_2.remove
              L3_2(L4_2)
            end
            L3_2 = L3_1
            L3_2 = L3_2.showOverlay
            L4_2 = "Scenes.MoodSelectOverlay"
            L5_2 = {}
            L5_2.effect = "fade"
            L6_2 = {}
            L7_2 = updateMood
            L6_2.onSelect = L7_2
            L7_2 = failedToUpdateMood
            L6_2.onFailed = L7_2
            L5_2.params = L6_2
            L3_2(L4_2, L5_2)
          end
        end
      end
    end
  end
end

publicInfoTableOnRowTouch = L39_1

function L39_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.row
  L2_2 = L1_2.contentWidth
  L3_2 = L1_2.contentHeight
  L4_2 = createTableRowView
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = L2_2 / 3
  L8_2 = L3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L6_2 = createPointerForTouchRow
  L7_2 = L1_2
  L8_2 = L3_2 * 0.5
  L6_2(L7_2, L8_2)
  L6_2 = L1_2.index
  if L6_2 == 1 then
    L6_2 = L1_1
    L6_2 = L6_2["Real Name"]
    L4_2.text = L6_2
    L6_2 = L14_1
    L6_2 = L6_2.realName
    L5_2.text = L6_2
    L6_2 = L5_2.text
    if L6_2 ~= "" then
      L6_2 = L5_2.text
      if L6_2 ~= nil then
        goto lbl_30
      end
    end
    L5_2.text = "_"
    ::lbl_30::
    L6_2 = L15_1
    L7_2 = display
    L7_2 = L7_2.newText
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L6_2["Real Name"] = L7_2
    L6_2 = L15_1
    L6_2 = L6_2["Real Name"]
    L7_2 = L6_2
    L6_2 = L6_2.setFillColor
    L8_2 = Constants
    L8_2 = L8_2.blackColor
    L8_2 = L8_2()
    L6_2(L7_2, L8_2)
  else
    L6_2 = L1_2.index
    if L6_2 == 2 then
      L6_2 = L1_1
      L6_2 = L6_2["Birth Year"]
      L4_2.text = L6_2
      L6_2 = L1_1
      L6_2 = L6_2.adjustNumber
      L7_2 = L14_1
      L7_2 = L7_2.birthYear
      L6_2 = L6_2(L7_2)
      L5_2.text = L6_2
      L6_2 = L5_2.text
      if L6_2 ~= "" then
        L6_2 = L5_2.text
        if L6_2 ~= nil then
          goto lbl_63
        end
      end
      L5_2.text = "_"
      ::lbl_63::
      L6_2 = L15_1
      L7_2 = display
      L7_2 = L7_2.newText
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      L6_2["Birth Year"] = L7_2
      L6_2 = L15_1
      L6_2 = L6_2["Birth Year"]
      L7_2 = L6_2
      L6_2 = L6_2.setFillColor
      L8_2 = Constants
      L8_2 = L8_2.blackColor
      L8_2 = L8_2()
      L6_2(L7_2, L8_2)
    else
      L6_2 = L1_2.index
      if L6_2 == 3 then
        L6_2 = L1_1
        L6_2 = L6_2.Gender
        L4_2.text = L6_2
        L6_2 = L14_1
        L6_2 = L6_2.gender
        if L6_2 then
          L6_2 = L14_1
          L6_2 = L6_2.gender
          L6_2 = L6_2.gender
          L5_2.text = L6_2
        else
          L5_2.text = "_"
        end
        L6_2 = L15_1
        L7_2 = display
        L7_2 = L7_2.newText
        L8_2 = L5_2
        L7_2 = L7_2(L8_2)
        L6_2.Gender = L7_2
        L6_2 = L15_1
        L6_2 = L6_2.Gender
        L7_2 = L6_2
        L6_2 = L6_2.setFillColor
        L8_2 = Constants
        L8_2 = L8_2.blackColor
        L8_2 = L8_2()
        L6_2(L7_2, L8_2)
      else
        L6_2 = L1_2.index
        if L6_2 == 4 then
          L6_2 = L1_1
          L6_2 = L6_2.Phone
          L4_2.text = L6_2
          L6_2 = L1_1
          L6_2 = L6_2.adjustNumber
          L7_2 = L14_1
          L7_2 = L7_2.phone
          L6_2 = L6_2(L7_2)
          L5_2.text = L6_2
          L6_2 = L5_2.text
          if L6_2 ~= "" then
            L6_2 = L5_2.text
            if L6_2 ~= nil then
              goto lbl_126
            end
          end
          L5_2.text = "_"
          ::lbl_126::
          L6_2 = L15_1
          L7_2 = display
          L7_2 = L7_2.newText
          L8_2 = L5_2
          L7_2 = L7_2(L8_2)
          L6_2.Phone = L7_2
          L6_2 = L15_1
          L6_2 = L6_2.Phone
          L7_2 = L6_2
          L6_2 = L6_2.setFillColor
          L8_2 = Constants
          L8_2 = L8_2.blackColor
          L8_2 = L8_2()
          L6_2(L7_2, L8_2)
        else
          L6_2 = L1_2.index
          if L6_2 == 5 then
            L6_2 = L1_1
            L6_2 = L6_2.Address
            L4_2.text = L6_2
            L6_2 = L14_1
            L6_2 = L6_2.address
            L5_2.text = L6_2
            L6_2 = L5_2.text
            if L6_2 ~= "" then
              L6_2 = L5_2.text
              if L6_2 ~= nil then
                goto lbl_156
              end
            end
            L5_2.text = "_"
            ::lbl_156::
            L6_2 = L15_1
            L7_2 = display
            L7_2 = L7_2.newText
            L8_2 = L5_2
            L7_2 = L7_2(L8_2)
            L6_2.Address = L7_2
            L6_2 = L15_1
            L6_2 = L6_2.Address
            L7_2 = L6_2
            L6_2 = L6_2.setFillColor
            L8_2 = Constants
            L8_2 = L8_2.blackColor
            L8_2 = L8_2()
            L6_2(L7_2, L8_2)
          end
        end
      end
    end
  end
end

function L40_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.phase
  if L1_2 == "tap" then
    L1_2 = L17_1
    if L1_2 == false then
      return
    end
    L1_2 = false
    L17_1 = L1_2
  end
  L1_2 = A0_2.target
  L2_2 = A0_2.phase
  if L2_2 ~= "press" then
    L2_2 = A0_2.phase
    if L2_2 ~= "cancelled" then
      L2_2 = L1_2.index
      if L2_2 == 4 then
        L2_2 = _serverType
        if L2_2 == "mycountry" then
          L2_2 = L3_1
          L2_2 = L2_2.showOverlay
          L3_2 = "Scenes.GetPhoneNumberOverlay"
          L4_2 = {}
          L4_2.effect = "fade"
          L5_2 = {}
          
          function L6_2()
            local L0_3, L1_3, L2_3
            L0_3 = L36_1
            L1_3 = "Phone"
            L2_3 = mainPlayer
            L2_3 = L2_3.phone
            L0_3(L1_3, L2_3)
            L0_3 = true
            L32_1 = L0_3
            L0_3 = enablePrivateTableTap
            L1_3 = 0
            L0_3(L1_3)
          end
          
          L5_2.completionCallback = L6_2
          L4_2.params = L5_2
          L2_2(L3_2, L4_2)
          return
        end
      end
      L2_2 = "Scenes.SetTextOverlay"
      L3_2 = L1_2.index
      if L3_2 == 3 then
        L2_2 = "Scenes.GenderSelectOverlay"
      end
      L3_2 = true
      L32_1 = L3_2
      L3_2 = L3_1
      L3_2 = L3_2.showOverlay
      L4_2 = L2_2
      L5_2 = {}
      L5_2.effect = "fade"
      L6_2 = L38_1
      L7_2 = L1_2.index
      L6_2 = L6_2(L7_2)
      L5_2.params = L6_2
      L3_2(L4_2, L5_2)
    end
  end
end

function L41_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = 5
  L3_2 = false
  L4_2 = 38
  if A1_2 == "private" then
    L4_2 = 36
  end
  L5_2 = {}
  L6_2 = {}
  L7_2 = 1
  L8_2 = 1
  L9_2 = 1
  L10_2 = 0
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L5_2.default = L6_2
  L6_2 = {}
  L7_2 = 1
  L8_2 = 1
  L9_2 = 1
  L10_2 = 0
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L5_2.over = L6_2
  rowColor = L5_2
  L5_2 = {}
  L6_2 = 1
  L7_2 = 1
  L8_2 = 1
  L9_2 = 0
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  lineColor = L5_2
  L5_2 = 1
  L6_2 = L2_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L10_2 = A0_2
    L9_2 = A0_2.insertRow
    L11_2 = {}
    L11_2.id = A1_2
    L11_2.isCategory = L3_2
    L11_2.rowHeight = L4_2
    L9_2(L10_2, L11_2)
  end
end

function L42_1()
  local L0_2, L1_2, L2_2
  L0_2 = L14_1
  L0_2.name = "hasan khan"
  L0_2 = L14_1
  L0_2.totalRank = 5
  L0_2 = L14_1
  L0_2.createdAt = "1 June 2014"
  L0_2 = L14_1
  L0_2.tribe = "ghale hasan panjali khan "
  L0_2 = L14_1
  L0_2.tribeRank = 3
  L0_2 = L14_1
  L0_2.tribePosition = "Tribe Chief"
  L0_2 = L14_1
  L0_2.battleNum = 7000
  L0_2 = L14_1
  L0_2.wonBattleNum = 5000
  L0_2 = L14_1
  L0_2.leagueRank = 5
  L0_2 = L14_1
  L0_2.leagueID = 2
  L0_2 = L14_1
  L0_2.preLeagueID = 3
  L0_2 = L14_1
  L0_2.preLeagueRank = 2
  L0_2 = L14_1
  L0_2.mood = "happy"
  L0_2 = L14_1
  L1_2 = Avatars
  L1_2 = L1_2.getAvatarByID
  L2_2 = data
  L2_2 = L2_2.avatar_id
  L1_2 = L1_2(L2_2)
  L0_2.avatar = L1_2
end

function L43_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L13_1
  L0_2 = L0_2.playEffect
  L1_2 = Theme
  L1_2 = L1_2.buttonTouchSoundName
  L0_2(L1_2)
  L0_2 = L28_1
  if L0_2 == true then
    L0_2 = L26_1
    if L0_2 == 2 then
      L0_2 = L4_1
      L0_2 = L0_2.removePoint
      L0_2()
    end
    L0_2 = L27_1
    L1_2 = L0_2
    L0_2 = L0_2.remove
    L0_2(L1_2)
  end
  L0_2 = L3_1
  L0_2 = L0_2.showOverlay
  L1_2 = "Scenes.selectAvatarOverlay"
  L2_2 = {}
  L2_2.effect = "fade"
  L3_2 = {}
  L4_2 = updateAvatar
  L3_2.onSelect = L4_2
  L4_2 = failedToUpdateAvatar
  L3_2.onFailed = L4_2
  L2_2.params = L3_2
  L0_2(L1_2, L2_2)
end

function L44_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = {}
  L4_2 = setmetatable
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
  A0_2.__index = A0_2
  L3_2.playerID = A1_2
  L3_2.isOverlay = A2_2
  
  function L4_2(A0_3)
    local L1_3, L2_3
    L14_1 = A0_3
    L1_3 = L3_2
    L2_3 = L1_3
    L1_3 = L1_3.repaint
    L1_3(L2_3)
  end
  
  function L5_2(A0_3)
    local L1_3
  end
  
  L6_2 = L2_1
  L6_2 = L6_2.getPlayerInfo
  L7_2 = L3_2.playerID
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if not L6_2 then
    L6_2 = {}
  end
  L14_1 = L6_2
  L6_2 = display
  L6_2 = L6_2.newGroup
  L6_2 = L6_2()
  L3_2.view = L6_2
  L6_2 = L30_1
  L6_2 = L6_2 * 2
  L6_2 = L6_2 + 120
  L6_2 = L6_2 + 20
  L7_2 = 230
  L8_2 = display
  L8_2 = L8_2.newRect
  L9_2 = 0
  L10_2 = 0
  L11_2 = L6_2
  L12_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L3_2.bg = L8_2
  L8_2 = L3_2.bg
  L9_2 = L6_2 / 2
  L8_2.x = L9_2
  L8_2 = L3_2.bg
  L9_2 = L7_2 / 2
  L8_2.y = L9_2
  L8_2 = L3_2.bg
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L13_2 = 0
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = L3_2.view
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L3_2.bg
  L8_2(L9_2, L10_2)
  L8_2 = display
  L8_2 = L8_2.newGroup
  L8_2 = L8_2()
  L3_2.middleBoxView = L8_2
  L8_2 = L3_2.view
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L3_2.middleBoxView
  L8_2(L9_2, L10_2)
  L8_2 = 0
  L9_2 = display
  L9_2 = L9_2.newImageRect
  L10_2 = Constants
  L10_2 = L10_2.Path_Assets
  L11_2 = "Profile/closet.png"
  L10_2 = L10_2 .. L11_2
  L11_2 = 86
  L12_2 = 247
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L3_2.achievmentsCase = L9_2
  
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L3_2
    L1_3 = L1_3.achievmentsCase
    L0_3(L1_3)
    L0_3 = L8_2
    if L0_3 == 0 then
      L0_3 = L3_2
      L1_3 = display
      L1_3 = L1_3.newImageRect
      L2_3 = Constants
      L2_3 = L2_3.Path_Assets
      L3_3 = "Profile/closet.png"
      L2_3 = L2_3 .. L3_3
      L3_3 = 86
      L4_3 = 240
      L1_3 = L1_3(L2_3, L3_3, L4_3)
      L0_3.achievmentsCase = L1_3
    else
      L0_3 = L8_2
      if L0_3 ~= 1 then
        L0_3 = L3_2
        L1_3 = display
        L1_3 = L1_3.newImageRect
        L2_3 = Constants
        L2_3 = L2_3.Path_Assets
        L3_3 = "Profile/closet"
        L4_3 = L8_2
        L5_3 = ".png"
        L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
        L3_3 = 86
        L4_3 = 240
        L1_3 = L1_3(L2_3, L3_3, L4_3)
        L0_3.achievmentsCase = L1_3
      end
    end
    L0_3 = L3_2
    L0_3 = L0_3.achievmentsCase
    L1_3 = L3_2
    L1_3 = L1_3.bg
    L1_3 = L1_3.x
    L2_3 = L3_2
    L2_3 = L2_3.bg
    L2_3 = L2_3.width
    L2_3 = L2_3 / 2
    L1_3 = L1_3 - L2_3
    L2_3 = L3_2
    L2_3 = L2_3.achievmentsCase
    L2_3 = L2_3.width
    L2_3 = L2_3 / 2
    L1_3 = L1_3 + L2_3
    L1_3 = L1_3 + 15
    L0_3.x = L1_3
    L0_3 = L3_2
    L0_3 = L0_3.achievmentsCase
    L1_3 = L3_2
    L1_3 = L1_3.bg
    L1_3 = L1_3.y
    L2_3 = L3_2
    L2_3 = L2_3.achievmentsCase
    L2_3 = L2_3.height
    L2_3 = L2_3 / 2
    L1_3 = L1_3 + L2_3
    L1_3 = L1_3 - 9
    L0_3.y = L1_3
    L0_3 = L3_2
    L0_3 = L0_3.middleBoxView
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = L3_2
    L2_3 = L2_3.achievmentsCase
    L0_3(L1_3, L2_3)
    L0_3 = L3_2
    L0_3 = L0_3.achievmentsCase
    L1_3 = L0_3
    L0_3 = L0_3.toBack
    L0_3(L1_3)
    L0_3 = L8_2
    L0_3 = L0_3 + 1
    L8_2 = L0_3
    L0_3 = L8_2
    if L0_3 == 11 then
      L0_3 = 0
      L8_2 = L0_3
    end
    L0_3 = L3_2
    L0_3 = L0_3.achievmentsCase
    L1_3 = L0_3
    L0_3 = L0_3.addEventListener
    L2_3 = "tap"
    L3_3 = L9_2
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L10_2 = L3_2.achievmentsCase
  L11_2 = L3_2.bg
  L11_2 = L11_2.x
  L12_2 = L3_2.bg
  L12_2 = L12_2.width
  L12_2 = L12_2 / 2
  L11_2 = L11_2 - L12_2
  L12_2 = L3_2.achievmentsCase
  L12_2 = L12_2.width
  L12_2 = L12_2 / 2
  L11_2 = L11_2 + L12_2
  L11_2 = L11_2 + 15
  L10_2.x = L11_2
  L10_2 = L3_2.achievmentsCase
  L11_2 = L3_2.bg
  L11_2 = L11_2.y
  L12_2 = L3_2.achievmentsCase
  L12_2 = L12_2.height
  L12_2 = L12_2 / 2
  L11_2 = L11_2 + L12_2
  L11_2 = L11_2 - 9
  L10_2.y = L11_2
  L10_2 = L3_2.middleBoxView
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = L3_2.achievmentsCase
  L10_2(L11_2, L12_2)
  L10_2 = L3_2.achievmentsCase
  L10_2 = L10_2.x
  L19_1 = L10_2
  L10_2 = L3_2.achievmentsCase
  L10_2 = L10_2.y
  L11_2 = L3_2.achievmentsCase
  L11_2 = L11_2.height
  L11_2 = L11_2 * 0.37
  L10_2 = L10_2 - L11_2
  L20_1 = L10_2
  L10_2 = L14_1
  L10_2 = L10_2.avatar
  if L10_2 then
    L10_2 = L10_1
    L11_2 = L10_2
    L10_2 = L10_2.new
    L12_2 = L3_2.middleBoxView
    L13_2 = L14_1
    L13_2 = L13_2.avatar
    L13_2 = L13_2.image
    L14_2 = L21_1
    L15_2 = L22_1
    
    function L16_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = L18_1
      L0_3 = L0_3._view
      L1_3 = L19_1
      L0_3.x = L1_3
      L0_3 = L18_1
      L0_3 = L0_3._view
      L1_3 = L20_1
      L0_3.y = L1_3
      L0_3 = L3_2
      L0_3 = L0_3.isOverlay
      if L0_3 ~= true then
        L0_3 = L18_1
        L0_3 = L0_3._view
        L1_3 = L0_3
        L0_3 = L0_3.addEventListener
        L2_3 = "tap"
        L3_3 = L43_1
        L0_3(L1_3, L2_3, L3_3)
      end
    end
    
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L18_1 = L10_2
    L10_2 = L18_1
    L10_2 = L10_2._view
    L11_2 = L19_1
    L10_2.x = L11_2
    L10_2 = L18_1
    L10_2 = L10_2._view
    L11_2 = L20_1
    L10_2.y = L11_2
    L10_2 = L3_2.isOverlay
    if L10_2 ~= true then
      L10_2 = L18_1
      L10_2 = L10_2._view
      L11_2 = L10_2
      L10_2 = L10_2.addEventListener
      L12_2 = "tap"
      L13_2 = L43_1
      L10_2(L11_2, L12_2, L13_2)
    end
  end
  L10_2 = L35_1
  L11_2 = L3_2
  L10_2(L11_2)
  L10_2 = {}
  L3_2.medal = L10_2
  L10_2 = L14_1
  L10_2 = L10_2.medals
  if L10_2 then
    L10_2 = pairs
    L11_2 = L14_1
    L11_2 = L11_2.medals
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    for L13_2, L14_2 in L10_2, L11_2, L12_2 do
      L15_2 = L3_2.medal
      L16_2 = L34_1
      L17_2 = L14_2
      L18_2 = L3_2.achievmentsCase
      L16_2 = L16_2(L17_2, L18_2)
      L15_2[L13_2] = L16_2
      L15_2 = L3_2.middleBoxView
      L15_2 = L15_2.insert
      if L15_2 then
        L15_2 = L3_2.middleBoxView
        L16_2 = L15_2
        L15_2 = L15_2.insert
        L17_2 = L3_2.medal
        L17_2 = L17_2[L13_2]
        L15_2(L16_2, L17_2)
      end
    end
  end
  L10_2 = L3_2.middleBoxView
  L11_2 = L3_2.bg
  L11_2 = L11_2.y
  L12_2 = L3_2.bg
  L12_2 = L12_2.height
  L12_2 = L12_2 / 2
  L11_2 = L11_2 - L12_2
  L12_2 = L3_2.achievmentsCase
  L12_2 = L12_2.height
  L12_2 = L12_2 / 2
  L11_2 = L11_2 - L12_2
  L11_2 = L11_2 + 3
  L10_2.y = L11_2
  L10_2 = display
  L10_2 = L10_2.newRoundedRect
  L11_2 = 0
  L12_2 = L3_2.bg
  L12_2 = L12_2.y
  L13_2 = L30_1
  L14_2 = 195
  L15_2 = 0
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L3_2.leftDetailsRect = L10_2
  L10_2 = L3_2.leftDetailsRect
  L11_2 = L3_2.bg
  L11_2 = L11_2.x
  L12_2 = L3_2.leftDetailsRect
  L12_2 = L12_2.width
  L12_2 = L12_2 / 2
  L11_2 = L11_2 - L12_2
  L11_2 = L11_2 + 45
  L10_2.x = L11_2
  L10_2 = L3_2.leftDetailsRect
  L11_2 = L3_2.achievmentsCase
  L11_2 = L11_2.y
  L12_2 = L3_2.leftDetailsRect
  L12_2 = L12_2.height
  L12_2 = L12_2 / 2
  L11_2 = L11_2 - L12_2
  L10_2.y = L11_2
  L10_2 = L3_2.leftDetailsRect
  L11_2 = L10_2
  L10_2 = L10_2.setFillColor
  L12_2 = Constants
  L12_2 = L12_2.lightBlueColor
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L10_2 = L3_2.leftDetailsRect
  L10_2.strokeWidth = 3
  L10_2 = L3_2.leftDetailsRect
  L11_2 = L10_2
  L10_2 = L10_2.setStrokeColor
  L12_2 = Constants
  L12_2 = L12_2.darkBlueColor
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L10_2 = L3_2.leftDetailsRect
  L10_2.alpha = 0
  L10_2 = L3_2.view
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = L3_2.leftDetailsRect
  L10_2(L11_2, L12_2)
  L10_2 = display
  L10_2 = L10_2.newRoundedRect
  L11_2 = 0
  L12_2 = 0
  L13_2 = L30_1
  L14_2 = 195
  L15_2 = 0
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L3_2.rightDetailsRect = L10_2
  L10_2 = L3_2.rightDetailsRect
  L11_2 = L3_2.bg
  L11_2 = L11_2.x
  L11_2 = L11_2 * 3
  L11_2 = L11_2 / 2
  L11_2 = L11_2 + 20
  L10_2.x = L11_2
  L10_2 = L3_2.rightDetailsRect
  L11_2 = L3_2.leftDetailsRect
  L11_2 = L11_2.y
  L10_2.y = L11_2
  L10_2 = L3_2.rightDetailsRect
  L11_2 = L10_2
  L10_2 = L10_2.setFillColor
  L12_2 = Constants
  L12_2 = L12_2.lightBlueColor
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L10_2 = L3_2.rightDetailsRect
  L10_2.strokeWidth = 3
  L10_2 = L3_2.rightDetailsRect
  L11_2 = L10_2
  L10_2 = L10_2.setStrokeColor
  L12_2 = Constants
  L12_2 = L12_2.darkBlueColor
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L10_2 = L3_2.rightDetailsRect
  L10_2.alpha = 0
  L10_2 = L3_2.view
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = L3_2.rightDetailsRect
  L10_2(L11_2, L12_2)
  L10_2 = false
  L29_1 = L10_2
  L10_2 = L3_2.isOverlay
  if L10_2 == true then
    L10_2 = true
    L29_1 = L10_2
  end
  L10_2 = L0_1
  L10_2 = L10_2.newTableView
  L11_2 = {}
  L12_2 = L3_2.leftDetailsRect
  L12_2 = L12_2.height
  L11_2.height = L12_2
  L12_2 = L3_2.leftDetailsRect
  L12_2 = L12_2.width
  L11_2.width = L12_2
  
  function L12_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L3_2
    L2_3 = L1_3
    L1_3 = L1_3.publicInfoTableOnRowRender
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  
  L11_2.onRowRender = L12_2
  
  function L12_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L3_2
    L2_3 = L1_3
    L1_3 = L1_3.publicInfoTableOnRowTouch
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  
  L11_2.onRowTouch = L12_2
  L12_2 = scrollListener
  L11_2.listener = L12_2
  L11_2.hideScrollBar = true
  L11_2.isLocked = true
  L11_2.noLines = true
  L12_2 = {}
  L13_2 = 0
  L14_2 = 0
  L15_2 = 0
  L16_2 = 0
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L12_2[4] = L16_2
  L11_2.backgroundColor = L12_2
  L11_2.hideBackground = true
  L10_2 = L10_2(L11_2)
  L3_2.leftInfoTableView = L10_2
  L10_2 = L3_2.leftInfoTableView
  L11_2 = L3_2.leftDetailsRect
  L11_2 = L11_2.x
  L10_2.x = L11_2
  L10_2 = L3_2.leftInfoTableView
  L11_2 = L3_2.leftDetailsRect
  L11_2 = L11_2.y
  L10_2.y = L11_2
  L10_2 = L3_2.view
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = L3_2.leftInfoTableView
  L10_2(L11_2, L12_2)
  L10_2 = L41_1
  L11_2 = L3_2.leftInfoTableView
  L12_2 = "left-info"
  L10_2(L11_2, L12_2)
  L10_2 = L0_1
  L10_2 = L10_2.newTableView
  L11_2 = {}
  L12_2 = L3_2.rightDetailsRect
  L12_2 = L12_2.height
  L11_2.height = L12_2
  L12_2 = L3_2.rightDetailsRect
  L12_2 = L12_2.width
  L11_2.width = L12_2
  
  function L12_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L3_2
    L2_3 = L1_3
    L1_3 = L1_3.publicInfoTableOnRowRender
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  
  L11_2.onRowRender = L12_2
  
  function L12_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L3_2
    L2_3 = L1_3
    L1_3 = L1_3.publicInfoTableOnRowTouch
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  
  L11_2.onRowTouch = L12_2
  L12_2 = scrollListener
  L11_2.listener = L12_2
  L11_2.hideScrollBar = true
  L11_2.isLocked = true
  L11_2.noLines = true
  L12_2 = {}
  L13_2 = 0
  L14_2 = 0
  L15_2 = 0
  L16_2 = 0
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L12_2[4] = L16_2
  L11_2.backgroundColor = L12_2
  L11_2.hideBackground = true
  L10_2 = L10_2(L11_2)
  L3_2.rightInfoTableView = L10_2
  L10_2 = L3_2.rightInfoTableView
  L11_2 = L3_2.rightDetailsRect
  L11_2 = L11_2.x
  L10_2.x = L11_2
  L10_2 = L3_2.rightInfoTableView
  L11_2 = L3_2.rightDetailsRect
  L11_2 = L11_2.y
  L10_2.y = L11_2
  L10_2 = L3_2.view
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = L3_2.rightInfoTableView
  L10_2(L11_2, L12_2)
  L10_2 = L41_1
  L11_2 = L3_2.rightInfoTableView
  L12_2 = "right-info"
  L10_2(L11_2, L12_2)
  L10_2 = L3_2.isOverlay
  if L10_2 ~= true then
    L10_2 = L12_1
    L11_2 = L10_2
    L10_2 = L10_2.new
    L12_2 = {}
    L12_2.width = 40
    L12_2.height = 40
    L13_2 = Constants
    L13_2 = L13_2.Path_Assets
    L14_2 = "Home/FC-openButton.png"
    L13_2 = L13_2 .. L14_2
    L12_2.defaultFile = L13_2
    
    function L13_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = L28_1
      if L0_3 == true then
        L0_3 = L26_1
        if L0_3 < 4 then
          return
        end
        L0_3 = L4_1
        L0_3 = L0_3.removePoint
        L0_3()
      end
      L0_3 = L3_2
      L0_3 = L0_3.bg
      L0_3 = L0_3.width
      L0_3 = -L0_3
      L1_3 = L3_2
      L1_3 = L1_3.privatePageButton
      L1_3 = L1_3.width
      L1_3 = L1_3 / 2
      L0_3 = L0_3 + L1_3
      L1_3 = L3_2
      L1_3 = L1_3.view
      L1_3 = L1_3.x
      if L1_3 == L0_3 then
        L1_3 = transition
        L1_3 = L1_3.to
        L2_3 = L3_2
        L2_3 = L2_3.view
        L3_3 = {}
        L4_3 = L16_1
        L3_3.x = L4_3
        L3_3.time = 800
        
        function L4_3()
          local L0_4, L1_4, L2_4, L3_4
          L0_4 = transition
          L0_4 = L0_4.to
          L1_4 = L3_2
          L1_4 = L1_4.privatePageButton
          L2_4 = {}
          L2_4.rotation = 0
          L2_4.time = 400
          L3_4 = sendPrivateInfoToServer
          L3_4 = L3_4()
          L2_4.onComplete = L3_4
          L0_4(L1_4, L2_4)
        end
        
        L3_3.onComplete = L4_3
        L1_3(L2_3, L3_3)
      else
        L1_3 = L3_2
        L1_3 = L1_3.view
        L1_3 = L1_3.x
        L16_1 = L1_3
        L1_3 = transition
        L1_3 = L1_3.to
        L2_3 = L3_2
        L2_3 = L2_3.view
        L3_3 = {}
        L3_3.x = L0_3
        L3_3.time = 800
        
        function L4_3()
          local L0_4, L1_4, L2_4, L3_4
          L0_4 = transition
          L0_4 = L0_4.to
          L1_4 = L3_2
          L1_4 = L1_4.privatePageButton
          L2_4 = {}
          L2_4.rotation = 180
          L2_4.time = 400
          
          function L3_4()
            local L0_5, L1_5
            L0_5 = L28_1
            if L0_5 == true then
              L0_5 = 5
              L26_1 = L0_5
              L0_5 = profileTutorialSteps
              L0_5()
            end
          end
          
          L2_4.onComplete = L3_4
          L0_4(L1_4, L2_4)
        end
        
        L3_3.onComplete = L4_3
        L1_3(L2_3, L3_3)
      end
    end
    
    L12_2.onRelease = L13_2
    L10_2 = L10_2(L11_2, L12_2)
    L3_2.privatePageButton = L10_2
    L10_2 = L3_2.privatePageButton
    L11_2 = L3_2.rightInfoTableView
    L11_2 = L11_2.x
    L12_2 = L3_2.rightInfoTableView
    L12_2 = L12_2.width
    L12_2 = L12_2 / 2
    L11_2 = L11_2 + L12_2
    L12_2 = display
    L12_2 = L12_2.contentWidth
    L12_2 = L12_2 - 10
    L13_2 = L3_2.rightInfoTableView
    L13_2 = L13_2.x
    L14_2 = L3_2.rightInfoTableView
    L14_2 = L14_2.width
    L14_2 = L14_2 / 2
    L13_2 = L13_2 + L14_2
    L12_2 = L12_2 - L13_2
    L12_2 = L12_2 / 2
    L11_2 = L11_2 + L12_2
    L10_2.x = L11_2
    L10_2 = L3_2.privatePageButton
    L11_2 = L3_2.bg
    L11_2 = L11_2.y
    L10_2.y = L11_2
    L10_2 = L3_2.view
    L11_2 = L10_2
    L10_2 = L10_2.insert
    L12_2 = L3_2.privatePageButton
    L12_2 = L12_2.view
    L10_2(L11_2, L12_2)
    L10_2 = {}
    L11_2 = L1_1
    L11_2 = L11_2["Private Descriptions"]
    L10_2.text = L11_2
    L10_2.x = 0
    L10_2.y = 0
    L11_2 = L3_2.bg
    L11_2 = L11_2.width
    L11_2 = L11_2 - 40
    L10_2.width = L11_2
    L11_2 = Constants
    L11_2 = L11_2.fontForSubtitle
    L11_2 = L11_2()
    L10_2.font = L11_2
    L10_2.fontSize = 11
    L11_2 = system
    L11_2 = L11_2.getInfo
    L12_2 = "build"
    L11_2 = L11_2(L12_2)
    if "2013.1137" < L11_2 then
      L11_2 = system
      L11_2 = L11_2.getInfo
      L12_2 = "platformName"
      L11_2 = L11_2(L12_2)
      if L11_2 ~= "Android" then
        L11_2 = L1_1
        L11_2 = L11_2.lang
        if L11_2 == "fa" then
          goto lbl_469
        end
      end
    end
    L11_2 = L1_1
    L11_2 = L11_2.lang
    if L11_2 == "ar" then
      ::lbl_469::
      L10_2.align = "right"
    else
      L11_2 = L1_1
      L11_2 = L11_2.lang
      if L11_2 ~= "fa" then
        L11_2 = L1_1
        L11_2 = L11_2.lang
        if L11_2 ~= "ar" then
          L10_2.align = "left"
        end
      end
    end
    L11_2 = display
    L11_2 = L11_2.newText
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    L3_2.privatViewDescription = L11_2
    L11_2 = L3_2.privatViewDescription
    L12_2 = L11_2
    L11_2 = L11_2.setFillColor
    L13_2 = Constants
    L13_2 = L13_2.darkBlueColor
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L13_2()
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L11_2 = L3_2.privatViewDescription
    L12_2 = L3_2.privatePageButton
    L12_2 = L12_2.x
    L13_2 = L3_2.bg
    L13_2 = L13_2.width
    L13_2 = L13_2 / 2
    L12_2 = L12_2 + L13_2
    L12_2 = L12_2 + 10
    L11_2.x = L12_2
    L11_2 = L3_2.privatViewDescription
    L12_2 = L3_2.bg
    L12_2 = L12_2.y
    L13_2 = L3_2.bg
    L13_2 = L13_2.height
    L13_2 = L13_2 / 2
    L12_2 = L12_2 - L13_2
    L12_2 = L12_2 + 17
    L11_2.y = L12_2
    L11_2 = L3_2.view
    L12_2 = L11_2
    L11_2 = L11_2.insert
    L13_2 = L3_2.privatViewDescription
    L11_2(L12_2, L13_2)
    L11_2 = display
    L11_2 = L11_2.newRoundedRect
    L12_2 = 0
    L13_2 = 0
    L14_2 = L3_2.bg
    L14_2 = L14_2.width
    L14_2 = L14_2 - 40
    L15_2 = 180
    L16_2 = 0
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    L3_2.privateDetailsRect = L11_2
    L11_2 = L3_2.privateDetailsRect
    L12_2 = L3_2.privatePageButton
    L12_2 = L12_2.x
    L13_2 = L3_2.privatePageButton
    L13_2 = L13_2.width
    L13_2 = L13_2 / 2
    L12_2 = L12_2 + L13_2
    L13_2 = L3_2.privateDetailsRect
    L13_2 = L13_2.width
    L13_2 = L13_2 / 2
    L12_2 = L12_2 + L13_2
    L12_2 = L12_2 + 12
    L11_2.x = L12_2
    L11_2 = L3_2.privateDetailsRect
    L12_2 = L3_2.privatViewDescription
    L12_2 = L12_2.y
    L13_2 = L3_2.privatViewDescription
    L13_2 = L13_2.height
    L13_2 = L13_2 / 2
    L12_2 = L12_2 + L13_2
    L13_2 = L3_2.privateDetailsRect
    L13_2 = L13_2.height
    L13_2 = L13_2 / 2
    L12_2 = L12_2 + L13_2
    L12_2 = L12_2 + 10
    L11_2.y = L12_2
    L11_2 = L3_2.privateDetailsRect
    L12_2 = L11_2
    L11_2 = L11_2.setFillColor
    L13_2 = Constants
    L13_2 = L13_2.lightBlueColor
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L13_2()
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L11_2 = L3_2.privateDetailsRect
    L11_2.strokeWidth = 3
    L11_2 = L3_2.privateDetailsRect
    L12_2 = L11_2
    L11_2 = L11_2.setStrokeColor
    L13_2 = Constants
    L13_2 = L13_2.darkBlueColor
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L13_2()
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L11_2 = L3_2.view
    L12_2 = L11_2
    L11_2 = L11_2.insert
    L13_2 = L3_2.privateDetailsRect
    L11_2(L12_2, L13_2)
    L11_2 = L0_1
    L11_2 = L11_2.newTableView
    L12_2 = {}
    L13_2 = L3_2.privateDetailsRect
    L13_2 = L13_2.height
    L12_2.height = L13_2
    L13_2 = L3_2.privateDetailsRect
    L13_2 = L13_2.width
    L12_2.width = L13_2
    L13_2 = L39_1
    L12_2.onRowRender = L13_2
    L13_2 = L40_1
    L12_2.onRowTouch = L13_2
    L13_2 = scrollListener
    L12_2.listener = L13_2
    L12_2.hideScrollBar = true
    L13_2 = L29_1
    L12_2.isLocked = L13_2
    L11_2 = L11_2(L12_2)
    L3_2.privateTableView = L11_2
    L11_2 = L3_2.privateTableView
    L12_2 = L3_2.privateDetailsRect
    L12_2 = L12_2.x
    L11_2.x = L12_2
    L11_2 = L3_2.privateTableView
    L12_2 = L3_2.privateDetailsRect
    L12_2 = L12_2.y
    L11_2.y = L12_2
    L11_2 = L3_2.view
    L12_2 = L11_2
    L11_2 = L11_2.insert
    L13_2 = L3_2.privateTableView
    L11_2(L12_2, L13_2)
    L11_2 = L41_1
    L12_2 = L3_2.privateTableView
    L13_2 = "private"
    L11_2(L12_2, L13_2)
  end
  L31_1 = L3_2
  return L3_2
end

new = L44_1

function L44_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L44_1

function L44_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1
  L1_2 = L1_2.getPlayerInfo
  L2_2 = A0_2.playerID
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = {}
  end
  L14_1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.repaint
  L1_2(L2_2)
end

checkForUpdate = L44_1

function L44_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L14_1
  L1_2 = L1_2.avatar
  if L1_2 then
    L1_2 = L18_1
    if L1_2 then
      L1_2 = display
      L1_2 = L1_2.remove
      L2_2 = L18_1
      L2_2 = L2_2._view
      L1_2(L2_2)
    end
    L1_2 = L10_1
    L2_2 = L1_2
    L1_2 = L1_2.new
    L3_2 = A0_2.middleBoxView
    L4_2 = L14_1
    L4_2 = L4_2.avatar
    L4_2 = L4_2.image
    L5_2 = L21_1
    L6_2 = L22_1
    
    function L7_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = L18_1
      L0_3 = L0_3._view
      L1_3 = L19_1
      L0_3.x = L1_3
      L0_3 = L18_1
      L0_3 = L0_3._view
      L1_3 = L20_1
      L0_3.y = L1_3
      L0_3 = A0_2
      L0_3 = L0_3.isOverlay
      if L0_3 ~= true then
        L0_3 = L18_1
        L0_3 = L0_3._view
        L1_3 = L0_3
        L0_3 = L0_3.addEventListener
        L2_3 = "tap"
        L3_3 = L43_1
        L0_3(L1_3, L2_3, L3_3)
      end
    end
    
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
    L18_1 = L1_2
    L1_2 = L18_1
    L1_2 = L1_2._view
    L2_2 = L19_1
    L1_2.x = L2_2
    L1_2 = L18_1
    L1_2 = L1_2._view
    L2_2 = L20_1
    L1_2.y = L2_2
    L1_2 = A0_2.isOverlay
    if L1_2 ~= true then
      L1_2 = L18_1
      L1_2 = L1_2._view
      L2_2 = L1_2
      L1_2 = L1_2.addEventListener
      L3_2 = "tap"
      L4_2 = L43_1
      L1_2(L2_2, L3_2, L4_2)
    end
  end
  L1_2 = L35_1
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = {}
  A0_2.medal = L1_2
  L1_2 = L14_1
  L1_2 = L1_2.medals
  if L1_2 then
    L1_2 = pairs
    L2_2 = L14_1
    L2_2 = L2_2.medals
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = A0_2.medal
      L7_2 = L34_1
      L8_2 = L5_2
      L9_2 = A0_2.achievmentsCase
      L7_2 = L7_2(L8_2, L9_2)
      L6_2[L4_2] = L7_2
      L6_2 = A0_2.middleBoxView
      L6_2 = L6_2.insert
      if L6_2 then
        L6_2 = A0_2.middleBoxView
        L7_2 = L6_2
        L6_2 = L6_2.insert
        L8_2 = A0_2.medal
        L8_2 = L8_2[L4_2]
        L6_2(L7_2, L8_2)
      end
    end
  end
  L1_2 = A0_2.leftInfoTableView
  L2_2 = L1_2
  L1_2 = L1_2.reloadData
  L1_2(L2_2)
  L1_2 = A0_2.rightInfoTableView
  L2_2 = L1_2
  L1_2 = L1_2.reloadData
  L1_2(L2_2)
  L1_2 = A0_2.isOverlay
  if L1_2 ~= true then
    L1_2 = A0_2.privateTableView
    L2_2 = L1_2
    L1_2 = L1_2.reloadData
    L1_2(L2_2)
  end
end

repaint = L44_1

function L44_1()
  local L0_2, L1_2, L2_2
  L0_2 = L28_1
  if L0_2 == true then
    L0_2 = L26_1
    if L0_2 == 3 then
      L0_2 = L4_1
      L0_2 = L0_2.removePoint
      L0_2()
      L0_2 = 4
      L26_1 = L0_2
      L0_2 = profileTutorialSteps
      L0_2()
    end
  end
  L0_2 = L14_1
  L1_2 = L2_1
  L1_2 = L1_2.getMood
  L1_2 = L1_2()
  L1_2 = L1_2.text
  L0_2.mood = L1_2
  L0_2 = L15_1
  L0_2 = L0_2.Mood
  if L0_2 then
    L0_2 = L15_1
    L0_2 = L0_2.Mood
    L1_2 = L1_1
    L2_2 = L14_1
    L2_2 = L2_2.mood
    if not L2_2 then
      L2_2 = "_"
    end
    L1_2 = L1_2[L2_2]
    L0_2.text = L1_2
  end
end

updateMood = L44_1

function L44_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L28_1
  if L0_2 == true then
    L0_2 = L26_1
    if L0_2 == 2 then
      L0_2 = L4_1
      L0_2 = L0_2.removePoint
      L0_2()
      L0_2 = 3
      L26_1 = L0_2
      L0_2 = profileTutorialSteps
      L0_2()
    end
  end
  L0_2 = L18_1
  L0_2 = L0_2._view
  L0_2 = L0_2.x
  L1_2 = L18_1
  L1_2 = L1_2._view
  L1_2 = L1_2.y
  L2_2 = L2_1
  L2_2 = L2_2.getAvatar
  L2_2 = L2_2()
  L2_2 = L2_2.image
  L3_2 = L18_1
  if L3_2 then
    L3_2 = display
    L3_2 = L3_2.remove
    L4_2 = L18_1
    L4_2 = L4_2._view
    L3_2(L4_2)
  end
  L3_2 = L10_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = L31_1
  L5_2 = L5_2.middleBoxView
  L6_2 = L2_2
  L7_2 = L21_1
  L8_2 = L22_1
  
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L18_1
    L0_3 = L0_3._view
    L1_3 = L0_2
    L0_3.x = L1_3
    L0_3 = L18_1
    L0_3 = L0_3._view
    L1_3 = L1_2
    L0_3.y = L1_3
    L0_3 = L31_1
    L0_3 = L0_3.isOverlay
    if L0_3 ~= true then
      L0_3 = L18_1
      L0_3 = L0_3._view
      L1_3 = L0_3
      L0_3 = L0_3.addEventListener
      L2_3 = "tap"
      L3_3 = L43_1
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L18_1 = L3_2
  L3_2 = L18_1
  L3_2 = L3_2._view
  L3_2.x = L0_2
  L3_2 = L18_1
  L3_2 = L3_2._view
  L3_2.y = L1_2
  L3_2 = L31_1
  L3_2 = L3_2.isOverlay
  if L3_2 ~= true then
    L3_2 = L18_1
    L3_2 = L3_2._view
    L4_2 = L3_2
    L3_2 = L3_2.addEventListener
    L5_2 = "tap"
    L6_2 = L43_1
    L3_2(L4_2, L5_2, L6_2)
  end
end

updateAvatar = L44_1

function L44_1()
  local L0_2, L1_2
  L0_2 = L28_1
  if L0_2 == true then
    L0_2 = profileTutorialSteps
    L0_2()
  end
end

failedToUpdateAvatar = L44_1

function L44_1()
  local L0_2, L1_2
  L0_2 = L28_1
  if L0_2 == true then
    L0_2 = profileTutorialSteps
    L0_2()
  end
end

failedToUpdateMood = L44_1

function L44_1()
  local L0_2, L1_2
  L0_2 = L28_1
  if L0_2 == true then
    L0_2 = profileTutorialSteps
    L0_2()
  end
end

relaunchTutorial = L44_1

function L44_1()
  local L0_2, L1_2
  L0_2 = L32_1
  if L0_2 == true then
    L0_2 = L2_1
    L0_2 = L0_2.sendPrivateInfo
    L0_2()
    L0_2 = false
    L32_1 = L0_2
  end
end

sendPrivateInfoToServer = L44_1

function L44_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L26_1
  if L0_2 == nil then
    L0_2 = 1
    L26_1 = L0_2
    L0_2 = true
    L28_1 = L0_2
  end
  L0_2 = L26_1
  if L0_2 == 1 then
    function L0_2()
      local L0_3, L1_3, L2_3, L3_3
      
      L0_3 = L5_1
      L1_3 = L0_3
      L0_3 = L0_3.new
      L2_3 = {}
      L3_3 = L1_1
      L3_3 = L3_3.Profile
      L2_3.title = L3_3
      L2_3.touchEnabled = false
      L3_3 = L1_1
      L3_3 = L3_3["Profile Greetings"]
      L2_3.text = L3_3
      L2_3.position = "center"
      L2_3.bgAlpha = 0.5
      L3_3 = L1_1
      L3_3 = L3_3.OK
      L2_3.button1Text = L3_3
      
      function L3_3()
        local L0_4, L1_4
        L0_4 = 2
        L26_1 = L0_4
        L0_4 = profileTutorialSteps
        L0_4()
      end
      
      L2_3.button1Action = L3_3
      L0_3(L1_3, L2_3)
    end
    
    L1_2 = timer
    L1_2 = L1_2.performWithDelay
    L2_2 = 2000
    L3_2 = L0_2
    L1_2(L2_2, L3_2)
  else
    L0_2 = L26_1
    if L0_2 == 2 then
      L0_2 = L4_1
      L0_2 = L0_2.pointAtObjectInView
      L1_2 = L18_1
      L2_2 = L31_1
      L2_2 = L2_2.middleBoxView
      L0_2(L1_2, L2_2)
      L0_2 = L6_1
      L1_2 = L0_2
      L0_2 = L0_2.new
      L2_2 = {}
      L3_2 = L1_1
      L3_2 = L3_2.Profile
      L2_2.title = L3_2
      L2_2.touchEnabled = false
      L3_2 = L1_1
      L3_2 = L3_2.ProfileStep2
      L2_2.message = L3_2
      L2_2.position = "top"
      L2_2.bgAlpha = 0
      L3_2 = L1_1
      L3_2 = L3_2.OK
      L2_2.buttonText = L3_2
      
      function L3_2()
        local L0_3, L1_3
      end
      
      L2_2.buttonAction = L3_2
      L0_2 = L0_2(L1_2, L2_2)
      L27_1 = L0_2
    else
      L0_2 = L26_1
      if L0_2 == 3 then
        L0_2 = L24_1
        L1_2 = L0_2
        L0_2 = L0_2.toFront
        L0_2(L1_2)
        L0_2 = L4_1
        L0_2 = L0_2.pointAt
        L1_2 = L24_1
        L2_2 = L23_1
        L2_2 = L2_2.x
        L2_2 = L2_2 - 50
        L3_2 = L23_1
        L3_2 = L3_2.y
        L0_2(L1_2, L2_2, L3_2)
        L0_2 = L6_1
        L1_2 = L0_2
        L0_2 = L0_2.new
        L2_2 = {}
        L3_2 = L1_1
        L3_2 = L3_2.Profile
        L2_2.title = L3_2
        L2_2.touchEnabled = false
        L3_2 = L1_1
        L3_2 = L3_2.ProfileStep3
        L2_2.message = L3_2
        L2_2.position = "bottom"
        L2_2.bgAlpha = 0
        L3_2 = L1_1
        L3_2 = L3_2.OK
        L2_2.buttonText = L3_2
        
        function L3_2()
          local L0_3, L1_3
        end
        
        L2_2.buttonAction = L3_2
        L0_2 = L0_2(L1_2, L2_2)
        L27_1 = L0_2
      else
        L0_2 = L26_1
        if L0_2 == 4 then
          L0_2 = L4_1
          L0_2 = L0_2.pointAtObjectInView
          L1_2 = L31_1
          L1_2 = L1_2.privatePageButton
          L2_2 = L31_1
          L2_2 = L2_2.view
          L0_2(L1_2, L2_2)
        else
          L0_2 = L26_1
          if L0_2 == 5 then
            L0_2 = L6_1
            L1_2 = L0_2
            L0_2 = L0_2.new
            L2_2 = {}
            L3_2 = L1_1
            L3_2 = L3_2.Profile
            L2_2.title = L3_2
            L2_2.touchEnabled = false
            L3_2 = L1_1
            L3_2 = L3_2["Private Descriptions"]
            L2_2.message = L3_2
            L2_2.position = "top"
            L2_2.bgAlpha = 0
            L3_2 = L1_1
            L3_2 = L3_2.OK
            L2_2.buttonText = L3_2
            
            function L3_2()
              local L0_3, L1_3
              L0_3 = warningLog
              L1_3 = "Profile Tutorial Finished"
              L0_3(L1_3)
              L0_3 = false
              L28_1 = L0_3
              L0_3 = L7_1
              L0_3 = L0_3.registerAchievementsWithId
              L1_3 = 151
              L0_3(L1_3)
            end
            
            L2_2.buttonAction = L3_2
            L0_2 = L0_2(L1_2, L2_2)
            L27_1 = L0_2
          end
        end
      end
    end
  end
end

profileTutorialSteps = L44_1

function L44_1()
  local L0_2, L1_2
  L0_2 = L14_1
  L1_2 = mainPlayer
  L1_2 = L1_2.name
  L0_2.name = L1_2
end

show = L44_1
