local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.BaseView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Components.TDButtonView"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Views.HeroView"
L2_1 = L2_1(L3_1)
L3_1 = setmetatable
L4_1 = _M
L5_1 = {}
L5_1.__index = L0_1
L3_1(L4_1, L5_1)

function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = L0_1
  L3_2 = L3_2.newWithParams
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2.displayType
  L3_2.displayType = L4_2
  L4_2 = A1_2.textColor
  if not L4_2 then
    L4_2 = Theme
    L4_2 = L4_2.colorsSet
    L4_2 = L4_2.blackColor
  end
  L3_2.textColor = L4_2
  L4_2 = A1_2.textFontSize
  if not L4_2 then
    L4_2 = 18
  end
  L3_2.textFontSize = L4_2
  L4_2 = A1_2.arrowWidth
  if not L4_2 then
    L4_2 = 60
  end
  L3_2.arrowWidth = L4_2
  L4_2 = A1_2.arrowHeight
  if not L4_2 then
    L4_2 = 60
  end
  L3_2.arrowHeight = L4_2
  L4_2 = A1_2.activeID
  if not L4_2 then
    L4_2 = 1
  end
  L3_2.currentViewID = L4_2
  L4_2 = A1_2.paddingAmount
  if not L4_2 then
    L4_2 = 15
  end
  L3_2.paddingAmount = L4_2
  L4_2 = {}
  L3_2.contents = L4_2
  L4_2 = {}
  L3_2.mainViews = L4_2
  L4_2 = {}
  L3_2.mainViewsWidthSet = L4_2
  L4_2 = {}
  L3_2.mainViewsHeightSet = L4_2
  L4_2 = pairs
  L5_2 = A1_2.contents
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L3_2.contents
    L10_2 = L8_2.id
    L11_2 = {}
    L9_2[L10_2] = L11_2
    L9_2 = L8_2.value
    if L9_2 then
      L9_2 = L3_2.contents
      L10_2 = L8_2.id
      L9_2 = L9_2[L10_2]
      L10_2 = L8_2.value
      L9_2.value = L10_2
    end
    L9_2 = L8_2.width
    if L9_2 then
      L9_2 = L3_2.contents
      L10_2 = L8_2.id
      L9_2 = L9_2[L10_2]
      L10_2 = L8_2.width
      L9_2.imageWidth = L10_2
    end
    L9_2 = L8_2.height
    if L9_2 then
      L9_2 = L3_2.contents
      L10_2 = L8_2.id
      L9_2 = L9_2[L10_2]
      L10_2 = L8_2.height
      L9_2.imageHeight = L10_2
    end
    L9_2 = L8_2.touchCallback
    if L9_2 then
      L9_2 = L3_2.contents
      L10_2 = L8_2.id
      L9_2 = L9_2[L10_2]
      L10_2 = L8_2.touchCallback
      L9_2.touchCallback = L10_2
    end
    L9_2 = L8_2.actionCallback
    if L9_2 then
      L9_2 = L3_2.contents
      L10_2 = L8_2.id
      L9_2 = L9_2[L10_2]
      L10_2 = L8_2.actionCallback
      L9_2.actionCallback = L10_2
    end
  end
  L4_2 = {}
  L5_2 = L3_2.arrowWidth
  L4_2.width = L5_2
  L5_2 = L3_2.arrowHeight
  L4_2.height = L5_2
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "Heroes/leftArrow.png"
  L5_2 = L5_2 .. L6_2
  L4_2.defaultFile = L5_2
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.gotoPreviousView
    L0_3(L1_3)
  end
  
  L4_2.onRelease = L5_2
  L5_2 = {}
  L6_2 = L3_2.arrowWidth
  L5_2.width = L6_2
  L6_2 = L3_2.arrowHeight
  L5_2.height = L6_2
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "Heroes/rightArrow.png"
  L6_2 = L6_2 .. L7_2
  L5_2.defaultFile = L6_2
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.gotoNextView
    L0_3(L1_3)
  end
  
  L5_2.onRelease = L6_2
  L6_2 = L1_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = L4_2
  L6_2 = L6_2(L7_2, L8_2)
  L3_2.leftArrow = L6_2
  L6_2 = L1_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L3_2.rightArrow = L6_2
  L6_2 = L3_2.view
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L3_2.leftArrow
  L8_2 = L8_2.view
  L6_2(L7_2, L8_2)
  L6_2 = L3_2.view
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L3_2.rightArrow
  L8_2 = L8_2.view
  L6_2(L7_2, L8_2)
  L6_2 = ipairs
  L7_2 = L3_2.contents
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = L3_2.displayType
    if L11_2 == "text" then
      L11_2 = L3_2.mainViews
      L12_2 = display
      L12_2 = L12_2.newText
      L13_2 = L3_2.view
      L14_2 = L10_2.value
      L15_2 = 0
      L16_2 = 0
      L17_2 = Constants
      L17_2 = L17_2.fontForTitle
      L17_2 = L17_2()
      L18_2 = L3_2.textFontSize
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L11_2[L9_2] = L12_2
      L11_2 = L3_2.mainViews
      L11_2 = L11_2[L9_2]
      L12_2 = L11_2
      L11_2 = L11_2.setFillColor
      L13_2 = L3_2.textColor
      L13_2 = L13_2[1]
      L14_2 = L3_2.textColor
      L14_2 = L14_2[2]
      L15_2 = L3_2.textColor
      L15_2 = L15_2[3]
      L11_2(L12_2, L13_2, L14_2, L15_2)
    else
      L11_2 = L3_2.displayType
      if L11_2 == "image" then
        L11_2 = L3_2.mainViews
        L12_2 = display
        L12_2 = L12_2.newImageRect
        L13_2 = L3_2.view
        L14_2 = L10_2.value
        L15_2 = L10_2.imageWidth
        L16_2 = L10_2.imageHeight
        L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
        L11_2[L9_2] = L12_2
      else
        L11_2 = L3_2.displayType
        if L11_2 == "hero" then
          L11_2 = {}
          L12_2 = L10_2.value
          L12_2 = L12_2.id
          L11_2.id = L12_2
          L12_2 = L10_2.value
          L12_2 = L12_2.equipmentSize
          L11_2.equipmentSize = L12_2
          L12_2 = L10_2.value
          L12_2 = L12_2.frontEmitterY
          L11_2.frontEmitterY = L12_2
          L12_2 = L10_2.value
          L12_2 = L12_2.backEmitterY
          L11_2.backEmitterY = L12_2
          L12_2 = L10_2.value
          L12_2 = L12_2.spineCharacter
          L11_2.spineCharacter = L12_2
          L12_2 = L10_2.value
          L12_2 = L12_2.isShowingFrontEmitter
          L11_2.isShowingFrontEmitter = L12_2
          L12_2 = L10_2.value
          L12_2 = L12_2.isShowHeroEquipment
          L11_2.isShowHeroEquipment = L12_2
          L12_2 = L10_2.value
          L12_2 = L12_2.heroState
          L11_2.heroState = L12_2
          L12_2 = L10_2.value
          L12_2 = L12_2.widthOfView
          L11_2.widthOfView = L12_2
          L12_2 = L10_2.value
          L12_2 = L12_2.heightOfView
          L11_2.heightOfView = L12_2
          L11_2.sceneName = "HeroScene"
          L12_2 = L3_2.mainViews
          L13_2 = L2_1
          L14_2 = L13_2
          L13_2 = L13_2.new
          L15_2 = L11_2
          L13_2 = L13_2(L14_2, L15_2)
          L12_2[L9_2] = L13_2
          L12_2 = L3_2.view
          L13_2 = L12_2
          L12_2 = L12_2.insert
          L14_2 = L3_2.mainViews
          L14_2 = L14_2[L9_2]
          L14_2 = L14_2.view
          L12_2(L13_2, L14_2)
          L12_2 = L10_2.value
          L12_2 = L12_2.id
          L13_2 = mainPlayer
          L13_2 = L13_2.activeHeroID
          if L12_2 == L13_2 then
            L12_2 = display
            L12_2 = L12_2.newImageRect
            L13_2 = L3_2.mainViews
            L13_2 = L13_2[L9_2]
            L13_2 = L13_2.view
            L14_2 = Constants
            L14_2 = L14_2.Path_Assets
            L15_2 = "Rewards/FC-SignedOpenCheckBox.png"
            L14_2 = L14_2 .. L15_2
            L15_2 = 15
            L16_2 = 15
            L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
            L13_2 = L3_2.mainViews
            L13_2 = L13_2[L9_2]
            L13_2 = L13_2.view
            L13_2 = L13_2.width
            L13_2 = L13_2 / 2
            L13_2 = L13_2 - 5
            L14_2 = L12_2.width
            L14_2 = L14_2 / 2
            L13_2 = L13_2 - L14_2
            L12_2.x = L13_2
            L13_2 = L3_2.mainViews
            L13_2 = L13_2[L9_2]
            L13_2 = L13_2.view
            L13_2 = L13_2.height
            L13_2 = L13_2 / 2
            L13_2 = L13_2 - 5
            L14_2 = L12_2.height
            L14_2 = L14_2 / 2
            L13_2 = L13_2 - L14_2
            L12_2.y = L13_2
          end
        end
      end
    end
    L11_2 = L10_2.touchCallback
    if L11_2 then
      L11_2 = L3_2.mainViews
      L11_2 = L11_2[L9_2]
      L11_2 = L11_2.view
      L12_2 = L11_2
      L11_2 = L11_2.addEventListener
      L13_2 = "touch"
      
      function L14_2(A0_3)
        local L1_3
        L1_3 = A0_3.phase
        if L1_3 == "ended" then
          L1_3 = L10_2
          L1_3 = L1_3.touchCallback
          L1_3()
        end
      end
      
      L11_2(L12_2, L13_2, L14_2)
    end
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L3_2.mainViewsWidthSet
    L13_2 = L3_2.mainViews
    L13_2 = L13_2[L9_2]
    L13_2 = L13_2.width
    L11_2(L12_2, L13_2)
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L3_2.mainViewsHeightSet
    L13_2 = L3_2.mainViews
    L13_2 = L13_2[L9_2]
    L13_2 = L13_2.height
    L11_2(L12_2, L13_2)
    L11_2 = L3_2.mainViews
    L11_2 = L11_2[L9_2]
    L11_2.x = 0
    L11_2 = L3_2.mainViews
    L11_2 = L11_2[L9_2]
    L11_2.y = 0
  end
  L7_2 = L3_2
  L6_2 = L3_2.setCurrentView
  L8_2 = L3_2.currentViewID
  L6_2(L7_2, L8_2)
  L6_2 = L3_2.leftArrow
  L6_2 = L6_2.view
  L7_2 = getMaximumValue
  L8_2 = L3_2.mainViewsWidthSet
  L7_2 = L7_2(L8_2)
  L7_2 = -L7_2
  L7_2 = L7_2 / 2
  L8_2 = L3_2.paddingAmount
  L7_2 = L7_2 - L8_2
  L8_2 = L3_2.leftArrow
  L8_2 = L8_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 - L8_2
  L6_2.x = L7_2
  L6_2 = L3_2.rightArrow
  L6_2 = L6_2.view
  L7_2 = getMaximumValue
  L8_2 = L3_2.mainViewsWidthSet
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2 / 2
  L8_2 = L3_2.paddingAmount
  L7_2 = L7_2 + L8_2
  L8_2 = L3_2.rightArrow
  L8_2 = L8_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L6_2.x = L7_2
  L7_2 = L3_2
  L6_2 = L3_2.updateArrows
  L6_2(L7_2)
  L6_2 = L3_2.contents
  L7_2 = L3_2.currentViewID
  L6_2 = L6_2[L7_2]
  if L6_2 then
    L6_2 = L3_2.contents
    L7_2 = L3_2.currentViewID
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2.actionCallback
    if L6_2 then
      L6_2 = L3_2.contents
      L7_2 = L3_2.currentViewID
      L6_2 = L6_2[L7_2]
      L6_2 = L6_2.actionCallback
      L6_2()
    end
  end
  return L3_2
end

new = L3_1

function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = sortItems
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = #L1_2
  L2_2 = L1_2[L2_2]
  return L2_2
end

getMaximumValue = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  L2_2(L3_2)
  return L1_2
end

sortItems = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.currentViewID
  L1_2 = L1_2 + 1
  L2_2 = A0_2.contents
  L2_2 = #L2_2
  if L1_2 > L2_2 then
  else
    L2_2 = transition
    L2_2 = L2_2.to
    L3_2 = A0_2.mainViews
    L4_2 = A0_2.currentViewID
    L3_2 = L3_2[L4_2]
    L4_2 = {}
    L4_2.time = 360
    L4_2.alpha = 0
    L5_2 = easing
    L5_2 = L5_2.outExpo
    L4_2.transiiton = L5_2
    L2_2(L3_2, L4_2)
    L2_2 = transition
    L2_2 = L2_2.to
    L3_2 = A0_2.mainViews
    L3_2 = L3_2[L1_2]
    L4_2 = {}
    L4_2.time = 360
    L4_2.alpha = 1
    L5_2 = easing
    L5_2 = L5_2.outExpo
    L4_2.transiiton = L5_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.displayType
    if L2_2 == "hero" then
      L2_2 = A0_2.mainViews
      L3_2 = A0_2.currentViewID
      L2_2 = L2_2[L3_2]
      L3_2 = L2_2
      L2_2 = L2_2.removeHero
      L2_2(L3_2)
      L2_2 = A0_2.mainViews
      L2_2 = L2_2[L1_2]
      L3_2 = L2_2
      L2_2 = L2_2.addListenerToHero
      L2_2(L3_2)
    end
    A0_2.currentViewID = L1_2
    L3_2 = A0_2
    L2_2 = A0_2.updateArrows
    L2_2(L3_2)
    L2_2 = A0_2.contents
    L3_2 = A0_2.currentViewID
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.actionCallback
    if L2_2 then
      L2_2 = A0_2.contents
      L3_2 = A0_2.currentViewID
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.actionCallback
      L2_2()
    end
  end
end

gotoNextView = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.currentViewID
  L1_2 = L1_2 - 1
  if L1_2 < 1 then
  else
    L2_2 = transition
    L2_2 = L2_2.to
    L3_2 = A0_2.mainViews
    L4_2 = A0_2.currentViewID
    L3_2 = L3_2[L4_2]
    L4_2 = {}
    L4_2.time = 360
    L4_2.alpha = 0
    L5_2 = easing
    L5_2 = L5_2.outExpo
    L4_2.transiiton = L5_2
    L2_2(L3_2, L4_2)
    L2_2 = transition
    L2_2 = L2_2.to
    L3_2 = A0_2.mainViews
    L3_2 = L3_2[L1_2]
    L4_2 = {}
    L4_2.time = 360
    L4_2.alpha = 1
    L5_2 = easing
    L5_2 = L5_2.outExpo
    L4_2.transiiton = L5_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.displayType
    if L2_2 == "hero" then
      L2_2 = A0_2.mainViews
      L3_2 = A0_2.currentViewID
      L2_2 = L2_2[L3_2]
      L3_2 = L2_2
      L2_2 = L2_2.removeHero
      L2_2(L3_2)
      L2_2 = A0_2.mainViews
      L2_2 = L2_2[L1_2]
      L3_2 = L2_2
      L2_2 = L2_2.addListenerToHero
      L2_2(L3_2)
    end
    A0_2.currentViewID = L1_2
    L3_2 = A0_2
    L2_2 = A0_2.updateArrows
    L2_2(L3_2)
    L2_2 = A0_2.contents
    L3_2 = A0_2.currentViewID
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.actionCallback
    if L2_2 then
      L2_2 = A0_2.contents
      L3_2 = A0_2.currentViewID
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.actionCallback
      L2_2()
    end
  end
end

gotoPreviousView = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = true
  L2_2 = true
  L3_2 = 1
  L4_2 = 1
  L5_2 = A0_2.contents
  L5_2 = #L5_2
  if L5_2 == 1 then
    L2_2 = false
    L4_2 = 0.5
    L1_2 = false
    L3_2 = 0.5
  else
    L5_2 = A0_2.currentViewID
    L6_2 = A0_2.contents
    L6_2 = #L6_2
    if L5_2 == L6_2 then
      L2_2 = false
      L4_2 = 0.5
    else
      L5_2 = A0_2.currentViewID
      if L5_2 == 1 then
        L1_2 = false
        L3_2 = 0.5
      end
    end
  end
  L5_2 = A0_2.leftArrow
  L6_2 = L5_2
  L5_2 = L5_2.setEnabled
  L7_2 = L1_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2.rightArrow
  L6_2 = L5_2
  L5_2 = L5_2.setEnabled
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2.leftArrow
  L5_2 = L5_2.view
  L5_2.alpha = L3_2
  L5_2 = A0_2.rightArrow
  L5_2 = L5_2.view
  L5_2.alpha = L4_2
end

updateArrows = L3_1

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = ipairs
  L4_2 = A0_2.mainViews
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L6_2 == A1_2 then
      L2_2 = 1
    else
      L2_2 = 0
    end
    L7_2.alpha = L2_2
  end
end

setCurrentView = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.leftArrow
  L2_2 = L1_2
  L1_2 = L1_2.setEnabled
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.rightArrow
  L2_2 = L1_2
  L1_2 = L1_2.setEnabled
  L3_2 = false
  L1_2(L2_2, L3_2)
end

setDisable = L3_1
