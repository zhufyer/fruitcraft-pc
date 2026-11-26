local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "widget"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.DailyRewardItemView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Components.DailyRewardsManager"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.PirtulModel"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Components.AudioManager"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Components.TDButtonView"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Utils.Analytics"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Core.ParentStandardBaseOverlayClass"
L9_1 = L9_1(L10_1)
L10_1 = setmetatable
L11_1 = _M
L12_1 = L9_1
L10_1(L11_1, L12_1)
L10_1 = _M
L11_1 = _M
L10_1.__index = L11_1
L10_1 = _M
L11_1 = {}
L12_1 = {}
L13_1 = {}
L14_1 = nil

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L9_1
  L2_2 = L2_2.create
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = _isFillterSupport
  if L2_2 then
    L2_2 = display
    L2_2 = L2_2.newCircle
    L3_2 = A0_2.contentGroup
    L4_2 = 0
    L5_2 = 0
    L6_2 = 380
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L3_2 = L2_2.fill
    L3_2.effect = "generator.sunbeams"
    L3_2 = L2_2.fill
    L3_2 = L3_2.effect
    L3_2.posX = 0.5
    L3_2 = L2_2.fill
    L3_2 = L3_2.effect
    L3_2.posY = 0.5
    L3_2 = L2_2.fill
    L3_2 = L3_2.effect
    L3_2.seed = 2
    L3_2 = transition
    L3_2 = L3_2.to
    L4_2 = L2_2.fill
    L4_2 = L4_2.effect
    L5_2 = {}
    L5_2.time = 250000
    L5_2.seed = 800
    L5_2.iterations = -1
    L5_2.tag = "sunBeamTransition"
    L3_2(L4_2, L5_2)
  end
  L2_2 = display
  L2_2 = L2_2.newRoundedRect
  L3_2 = A0_2.contentGroup
  L4_2 = 0
  L5_2 = 0
  L6_2 = 280
  L7_2 = 275
  L8_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.backgroundBox = L2_2
  L2_2 = A0_2.backgroundBox
  L2_2.strokeWidth = 2
  L2_2 = A0_2.backgroundBox
  L3_2 = L2_2
  L2_2 = L2_2.setStrokeColor
  L4_2 = Theme
  L4_2 = L4_2.overlayStrokeColor
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = A0_2.backgroundBox
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = Theme
  L4_2 = L4_2.colorsSet
  L4_2 = L4_2.whiteColor
  L4_2 = L4_2[1]
  L5_2 = Theme
  L5_2 = L5_2.colorsSet
  L5_2 = L5_2.whiteColor
  L5_2 = L5_2[2]
  L6_2 = Theme
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.whiteColor
  L6_2 = L6_2[3]
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2.backgroundBox
  L2_2.x = 0
  L2_2 = A0_2.backgroundBox
  L2_2.y = 0
  L2_2 = A0_2.backgroundBox
  L3_2 = L2_2
  L2_2 = L2_2.addEventListener
  L4_2 = "tap"
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2.backgroundBox
  L3_2 = L2_2
  L2_2 = L2_2.addEventListener
  L4_2 = "touch"
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = display
  L2_2 = L2_2.newText
  L3_2 = A0_2.contentGroup
  L4_2 = L1_1
  L4_2 = L4_2["Daily Rewards Overlay Title"]
  L5_2 = 0
  L6_2 = 0
  L7_2 = Theme
  L7_2 = L7_2.overlayFont
  L8_2 = Theme
  L8_2 = L8_2.overlayFontTitleSize
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.titleLabel = L2_2
  L2_2 = A0_2.titleLabel
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = Theme
  L4_2 = L4_2.colorsSet
  L4_2 = L4_2.darkBlueColor
  L4_2 = L4_2[1]
  L5_2 = Theme
  L5_2 = L5_2.colorsSet
  L5_2 = L5_2.darkBlueColor
  L5_2 = L5_2[2]
  L6_2 = Theme
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.darkBlueColor
  L6_2 = L6_2[3]
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2.titleLabel
  L3_2 = A0_2.backgroundBox
  L3_2 = L3_2.x
  L2_2.x = L3_2
  L2_2 = A0_2.titleLabel
  L3_2 = A0_2.backgroundBox
  L3_2 = L3_2.height
  L3_2 = -L3_2
  L3_2 = L3_2 / 2
  L3_2 = L3_2 + 10
  L4_2 = A0_2.titleLabel
  L4_2 = L4_2.height
  L4_2 = L4_2 / 2
  L3_2 = L3_2 + L4_2
  L2_2.y = L3_2
  L2_2 = L7_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.width = 30
  L4_2.height = 30
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "BattleItems/close.png"
  L5_2 = L5_2 .. L6_2
  L4_2.imageName = L5_2
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = L10_1
    L0_3 = L0_3.hideWithAnimation
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.gotoScene
    L1_3 = "Scenes.Home"
    L0_3(L1_3)
  end
  
  L4_2.onRelease = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L14_1 = L2_2
  L2_2 = A0_2.contentGroup
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = L14_1
  L4_2 = L4_2.view
  L2_2(L3_2, L4_2)
  L2_2 = L14_1
  L3_2 = A0_2.backgroundBox
  L3_2 = L3_2.width
  L3_2 = -L3_2
  L3_2 = L3_2 / 2
  L4_2 = L14_1
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L3_2 = L3_2 + L4_2
  L3_2 = L3_2 + 10
  L2_2.x = L3_2
  L2_2 = L14_1
  L3_2 = A0_2.titleLabel
  L3_2 = L3_2.y
  L2_2.y = L3_2
  L2_2 = L14_1
  L2_2.alpha = 0
  L2_2 = display
  L2_2 = L2_2.newRoundedRect
  L3_2 = A0_2.contentGroup
  L4_2 = 0
  L5_2 = 0
  L6_2 = A0_2.backgroundBox
  L6_2 = L6_2.width
  L6_2 = L6_2 - 20
  L7_2 = A0_2.backgroundBox
  L7_2 = L7_2.height
  L7_2 = L7_2 - 60
  L8_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.contentBG = L2_2
  L2_2 = A0_2.contentBG
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = Theme
  L4_2 = L4_2.overlayContentBG
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = A0_2.contentBG
  L3_2 = L2_2
  L2_2 = L2_2.setStrokeColor
  L4_2 = Theme
  L4_2 = L4_2.overlayStrokeContentBG
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = A0_2.contentBG
  L2_2.strokeWidth = 1
  L2_2 = A0_2.contentBG
  L3_2 = A0_2.backgroundBox
  L3_2 = L3_2.x
  L2_2.x = L3_2
  L2_2 = A0_2.contentBG
  L3_2 = A0_2.backgroundBox
  L3_2 = L3_2.y
  L3_2 = L3_2 + 20
  L2_2.y = L3_2
  L2_2 = {}
  L3_2 = A0_2.contentGroup
  L2_2.parent = L3_2
  L3_2 = L1_1
  L3_2 = L3_2["Daily Rewards Desc"]
  L2_2.text = L3_2
  L2_2.x = 0
  L2_2.y = 0
  L3_2 = A0_2.contentBG
  L3_2 = L3_2.width
  L3_2 = L3_2 * 5
  L3_2 = L3_2 / 6
  L2_2.width = L3_2
  L3_2 = Constants
  L3_2 = L3_2.fontForSubtitle
  L3_2 = L3_2()
  L2_2.font = L3_2
  L2_2.fontSize = 10
  L2_2.align = "center"
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  A0_2.description = L3_2
  L3_2 = A0_2.description
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Theme
  L5_2 = L5_2.colorsSet
  L5_2 = L5_2.darkBlueColor
  L5_2 = L5_2[1]
  L6_2 = Theme
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.darkBlueColor
  L6_2 = L6_2[2]
  L7_2 = Theme
  L7_2 = L7_2.colorsSet
  L7_2 = L7_2.darkBlueColor
  L7_2 = L7_2[3]
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2.description
  L4_2 = A0_2.contentBG
  L4_2 = L4_2.y
  L5_2 = A0_2.contentBG
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 - L5_2
  L5_2 = A0_2.description
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L4_2 = L4_2 + 5
  L3_2.y = L4_2
  L3_2 = {}
  L3_2.id = "Rewards Table"
  L4_2 = A0_2.contentBG
  L4_2 = L4_2.width
  L4_2 = L4_2 * 13
  L4_2 = L4_2 / 14
  L3_2.width = L4_2
  L4_2 = A0_2.contentBG
  L4_2 = L4_2.height
  L5_2 = A0_2.description
  L5_2 = L5_2.height
  L4_2 = L4_2 - L5_2
  L4_2 = L4_2 - 20
  L3_2.height = L4_2
  L3_2.hideBackground = true
  L3_2.isBounceEnabled = false
  L3_2.isLocked = false
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = rewardsTableRowRender
    L2_3 = A0_2
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  
  L3_2.onRowRender = L4_2
  L4_2 = L2_1
  L4_2 = L4_2.newTableView
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  A0_2.rewardsTable = L4_2
  L4_2 = A0_2.contentGroup
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = A0_2.rewardsTable
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.rewardsTable
  L4_2.x = 0
  L4_2 = A0_2.rewardsTable
  L5_2 = A0_2.description
  L5_2 = L5_2.y
  L6_2 = A0_2.description
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L5_2 = L5_2 + 5
  L6_2 = A0_2.rewardsTable
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L4_2.y = L5_2
  L4_2 = L4_1
  L4_2 = L4_2.dailyRewardManager
  L5_2 = mainPlayer
  L5_2 = L5_2.currentDayNumber
  L6_2 = mainPlayer
  L6_2 = L6_2.dailyRewardBaseGold
  L7_2 = A0_2.rewardsTable
  L7_2 = L7_2.width
  L8_2 = 40
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  A0_2.rewardsContent = L4_2
  L4_2 = 1
  L5_2 = A0_2.rewardsContent
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2.rewardsTable
    L9_2 = L8_2
    L8_2 = L8_2.insertRow
    L10_2 = {}
    L10_2.rowHeight = 40
    L8_2(L9_2, L10_2)
  end
end

create = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L9_1
  L2_2 = L2_2.show
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    L2_2 = L8_1
    L2_2 = L2_2.logEvent
    L3_2 = "Daily Rewarded"
    L4_2 = {}
    L5_2 = mainPlayer
    L5_2 = L5_2.currentDayNumber
    L4_2.continuousDay = L5_2
    L5_2 = mainPlayer
    L5_2 = L5_2.level
    L4_2.level = L5_2
    L2_2(L3_2, L4_2)
    L2_2 = L6_1
    L2_2 = L2_2.playEffect
    L3_2 = Theme
    L3_2 = L3_2.pirtulCheersSound
    L2_2(L3_2)
    L2_2 = setupPirtuls
    L3_2 = A0_2.view
    L2_2(L3_2)
    L2_2 = L13_1
    L3_2 = timer
    L3_2 = L3_2.performWithDelay
    L4_2 = 6800
    
    function L5_2()
      local L0_3, L1_3
      L0_3 = clearPirtuls
      L0_3()
    end
    
    L6_2 = 1
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2.pirtulCleanUpTimer = L3_2
    L2_2 = L13_1
    L3_2 = timer
    L3_2 = L3_2.performWithDelay
    L4_2 = 7000
    
    function L5_2()
      local L0_3, L1_3
      L0_3 = showBackButton
      L0_3()
    end
    
    L6_2 = 1
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2.backButtonTimer = L3_2
  end
end

show = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L9_1
  L2_2 = L2_2.hide
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    L2_2 = clearPirtuls
    L2_2()
  else
    L2_2 = A1_2.phase
    if L2_2 == "did" then
      L2_2 = cleanUpRewardsTableTimersAndTransitions
      L2_2()
      L2_2 = cleanUpSceneTimers
      L2_2()
    end
  end
end

hide = L15_1

function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2.row
  L3_2 = A1_2.row
  L3_2 = L3_2.id
  L4_2 = A0_2.rewardsContent
  L4_2 = L4_2[L3_2]
  L5_2 = L11_1
  L6_2 = L3_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = L4_2
  L6_2 = L6_2(L7_2, L8_2)
  L5_2[L3_2] = L6_2
  L5_2 = L11_1
  L5_2 = L5_2[L3_2]
  L6_2 = L2_2.width
  L6_2 = L6_2 / 2
  L5_2.x = L6_2
  L5_2 = L11_1
  L5_2 = L5_2[L3_2]
  L6_2 = L2_2.height
  L6_2 = L6_2 / 2
  L5_2.y = L6_2
  L5_2 = L11_1
  L5_2 = L5_2[L3_2]
  L6_2 = L5_2
  L5_2 = L5_2.updateItemView
  L5_2(L6_2)
  L6_2 = L2_2
  L5_2 = L2_2.insert
  L7_2 = L11_1
  L7_2 = L7_2[L3_2]
  L7_2 = L7_2.view
  L5_2(L6_2, L7_2)
end

rewardsTableRowRender = L15_1

function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = transition
  L0_2 = L0_2.cancel
  L1_2 = "rewardViewAnimation"
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.cancel
  L1_2 = "checkBoxAnimation"
  L0_2(L1_2)
  L0_2 = transition
  L0_2 = L0_2.cancel
  L1_2 = "sunBeamTransition"
  L0_2(L1_2)
  L0_2 = pairs
  L1_2 = L11_1
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = pairs
    L6_2 = L4_2.timers
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = timer
      L10_2 = L10_2.cancel
      L11_2 = L9_2
      L10_2(L11_2)
    end
    L5_2 = {}
    L4_2.timers = L5_2
  end
end

cleanUpRewardsTableTimersAndTransitions = L15_1

function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L12_1
  if L0_2 ~= nil then
    L0_2 = pairs
    L1_2 = L12_1
    L0_2, L1_2, L2_2 = L0_2(L1_2)
    for L3_2, L4_2 in L0_2, L1_2, L2_2 do
      L6_2 = L4_2
      L5_2 = L4_2.removeAndCancel
      L7_2 = true
      L5_2(L6_2, L7_2)
      L4_2 = nil
    end
    L0_2 = {}
    L12_1 = L0_2
  end
end

clearPirtuls = L15_1

function L15_1()
  local L0_2, L1_2, L2_2
  L0_2 = L14_1
  if L0_2 then
    L0_2 = transition
    L0_2 = L0_2.to
    L1_2 = L14_1
    L2_2 = {}
    L2_2.time = 450
    L2_2.alpha = 1
    L0_2(L1_2, L2_2)
  end
end

showBackButton = L15_1

function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = 1
  L2_2 = 5
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L12_1
    L5_2 = L5_2[L4_2]
    if L5_2 == nil then
      L5_2 = L12_1
      L6_2 = L5_1
      L7_2 = L6_2
      L6_2 = L6_2.new
      L8_2 = nil
      L9_2 = nil
      L10_2 = nil
      L11_2 = nil
      L12_2 = true
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      L5_2[L4_2] = L6_2
      L5_2 = L12_1
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2
      L5_2 = L5_2.setScale
      L7_2 = 0.5
      L5_2(L6_2, L7_2)
      L6_2 = A0_2
      L5_2 = A0_2.insert
      L7_2 = L12_1
      L7_2 = L7_2[L4_2]
      L7_2 = L7_2.view
      L5_2(L6_2, L7_2)
      L5_2 = L12_1
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2
      L5_2 = L5_2.setPosition
      L7_2 = display
      L7_2 = L7_2.contentCenterX
      L7_2 = L7_2 / 4
      L8_2 = L4_2 + 1
      L7_2 = L7_2 * L8_2
      L8_2 = display
      L8_2 = L8_2.contentHeight
      L8_2 = L8_2 - 25
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = L13_1
      L6_2 = timer
      L6_2 = L6_2.performWithDelay
      L7_2 = 250 * L4_2
      
      function L8_2()
        local L0_3, L1_3
        L0_3 = L12_1
        if L0_3 ~= nil then
          L0_3 = L12_1
          L1_3 = L4_2
          L0_3 = L0_3[L1_3]
          if L0_3 ~= nil then
            goto lbl_10
          end
        end
        do return end
        ::lbl_10::
        L0_3 = L12_1
        L1_3 = L4_2
        L0_3 = L0_3[L1_3]
        L1_3 = L0_3
        L0_3 = L0_3.play
        L0_3(L1_3)
      end
      
      L9_2 = 1
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2.animatePirtuls = L6_2
    end
  end
end

setupPirtuls = L15_1

function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = pairs
  L1_2 = L13_1
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = timer
    L5_2 = L5_2.cancel
    L6_2 = L4_2
    L5_2(L6_2)
    L4_2 = nil
  end
end

cleanUpSceneTimers = L15_1
