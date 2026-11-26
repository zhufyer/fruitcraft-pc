local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.ParentStandardBaseOverlayClass"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Components.TDButtonView"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Components.TDMultilineButtonView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Components.DataManager"
L4_1 = L4_1(L5_1)
L5_1 = L4_1.dataWithName
L6_1 = "BaseHeroItems"
L5_1 = L5_1(L6_1)
L6_1 = L4_1.dataWithName
L7_1 = "BaseHeroItemsLanguage_"
L8_1 = L1_1.lang
L7_1 = L7_1 .. L8_1
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Models.Card"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Models.ItemModel"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "composer"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Views.ItemView"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Views.ActivityIndicatorView"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Tutorial.TutorialManager2"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Views.EffectsManager"
L13_1 = L13_1(L14_1)
L14_1 = setmetatable
L15_1 = _M
L16_1 = L0_1
L14_1(L15_1, L16_1)
L14_1 = _M
L15_1 = _M
L14_1.__index = L15_1
L14_1 = _M
L15_1 = nil
L16_1 = nil
L17_1 = nil
L18_1 = nil

function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  L2_2.text = A0_2
  L2_2.width = 300
  L3_2 = Theme
  L3_2 = L3_2.overlayFont
  L2_2.font = L3_2
  L2_2.fontSize = 10
  L3_2 = system
  L3_2 = L3_2.getInfo
  L4_2 = "build"
  L3_2 = L3_2(L4_2)
  if "2013.1137" < L3_2 then
    L3_2 = system
    L3_2 = L3_2.getInfo
    L4_2 = "platformName"
    L3_2 = L3_2(L4_2)
    if L3_2 ~= "Android" then
      L3_2 = L1_1
      L3_2 = L3_2.lang
      if L3_2 == "fa" then
        goto lbl_28
      end
    end
  end
  L3_2 = L1_1
  L3_2 = L3_2.lang
  if L3_2 == "ar" then
    ::lbl_28::
    L2_2.align = "right"
  else
    L2_2.align = "left"
  end
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = A1_2[1]
  L7_2 = A1_2[2]
  L8_2 = A1_2[3]
  L4_2(L5_2, L6_2, L7_2, L8_2)
  return L3_2
end

function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = L0_1
  L2_2 = L2_2.create
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.mask
  L2_2.alpha = 0
  L2_2 = A0_2.mask
  L2_2.isHitTestable = false
  A0_2.disableSecondButton = false
  L2_2 = A1_2.params
  if L2_2 then
    L2_2 = A1_2.params
    L2_2 = L2_2.useItemCallback
    if L2_2 then
      L2_2 = A1_2.params
      L2_2 = L2_2.useItemCallback
      L17_1 = L2_2
    end
  end
  L2_2 = A1_2.params
  if L2_2 then
    L2_2 = A1_2.params
    L2_2 = L2_2.object
    if L2_2 then
      L2_2 = A1_2.params
      L2_2 = L2_2.object
      L18_1 = L2_2
      L2_2 = A1_2.params
      L2_2 = L2_2.object
      L2_2 = L2_2.id
      if L2_2 then
        L2_2 = A1_2.params
        L2_2 = L2_2.object
        L2_2 = L2_2.id
        L16_1 = L2_2
      end
    end
  end
  L2_2 = display
  L2_2 = L2_2.newRoundedRect
  L3_2 = A0_2.contentGroup
  L4_2 = 0
  L5_2 = 0
  L6_2 = 320
  L7_2 = 200
  L8_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.strokeWidth = 2
  L4_2 = L2_2
  L3_2 = L2_2.setStrokeColor
  L5_2 = Constants
  L5_2 = L5_2.greenColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L4_2 = L2_2
  L3_2 = L2_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.whiteColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L2_2.x = 0
  L2_2.y = 0
  L4_2 = L2_2
  L3_2 = L2_2.addEventListener
  L5_2 = "touch"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A0_2.contentGroup
  L5_2 = L6_1
  L6_2 = "Item"
  L7_2 = L16_1
  L6_2 = L6_2 .. L7_2
  L5_2 = L5_2[L6_2]
  L6_2 = 0
  L7_2 = 0
  L8_2 = Theme
  L8_2 = L8_2.overlayFontTitleFont
  L9_2 = Theme
  L9_2 = L9_2.overlayFontTitleSize
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = Theme
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.darkBlueColor
  L6_2 = L6_2[1]
  L7_2 = Theme
  L7_2 = L7_2.colorsSet
  L7_2 = L7_2.darkBlueColor
  L7_2 = L7_2[2]
  L8_2 = Theme
  L8_2 = L8_2.colorsSet
  L8_2 = L8_2.darkBlueColor
  L8_2 = L8_2[3]
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = L2_2.x
  L3_2.x = L4_2
  L4_2 = L2_2.height
  L4_2 = -L4_2
  L4_2 = L4_2 / 2
  L4_2 = L4_2 + 10
  L5_2 = L3_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L3_2.y = L4_2
  L4_2 = L2_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.width = 30
  L6_2.height = 30
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "BattleItems/close.png"
  L7_2 = L7_2 .. L8_2
  L6_2.imageName = L7_2
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = log3
    L1_3 = "hiding ItemInfo overlay from button"
    L0_3(L1_3)
    L0_3 = L14_1
    L0_3 = L0_3.hideWithAnimation
    L1_3 = A0_2
    L0_3(L1_3)
  end
  
  L6_2.onRelease = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2.contentGroup
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L4_2.view
  L5_2(L6_2, L7_2)
  L5_2 = L2_2.width
  L5_2 = -L5_2
  L5_2 = L5_2 / 2
  L5_2 = L5_2 + 10
  L6_2 = L4_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L4_2.x = L5_2
  L5_2 = L3_2.y
  L4_2.y = L5_2
  L5_2 = display
  L5_2 = L5_2.newRoundedRect
  L6_2 = A0_2.contentGroup
  L7_2 = 0
  L8_2 = 0
  L9_2 = L2_2.width
  L9_2 = L9_2 - 15
  L10_2 = L2_2.height
  L10_2 = L10_2 - 90
  L11_2 = 3
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  A0_2.contentBG = L5_2
  L5_2 = A0_2.contentBG
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Theme
  L7_2 = L7_2.overlayContentBG
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L5_2 = A0_2.contentBG
  L6_2 = L5_2
  L5_2 = L5_2.setStrokeColor
  L7_2 = Theme
  L7_2 = L7_2.overlayStrokeContentBG
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L5_2 = A0_2.contentBG
  L5_2.strokeWidth = 1
  L5_2 = A0_2.contentBG
  L6_2 = L2_2.x
  L5_2.x = L6_2
  L5_2 = A0_2.contentBG
  L6_2 = L2_2.y
  L5_2.y = L6_2
  L5_2 = L10_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L8_2 = L16_1
  L7_2.id = L8_2
  L7_2.isTouchEnable = false
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L2_2.width
  L6_2 = -L6_2
  L6_2 = L6_2 / 2
  L7_2 = L2_2.width
  L7_2 = L7_2 / 4
  L6_2 = L6_2 + L7_2
  L7_2 = L5_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L5_2.x = L6_2
  L5_2.y = 0
  L6_2 = A0_2.contentGroup
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L5_2.view
  L6_2(L7_2, L8_2)
  L6_2 = {}
  L7_2 = A0_2.contentGroup
  L6_2.parent = L7_2
  L7_2 = L6_1
  L8_2 = "Item"
  L9_2 = L16_1
  L10_2 = " description"
  L8_2 = L8_2 .. L9_2 .. L10_2
  L7_2 = L7_2[L8_2]
  L6_2.text = L7_2
  L6_2.width = 190
  L7_2 = Theme
  L7_2 = L7_2.overlayFont
  L6_2.font = L7_2
  L7_2 = Theme
  L7_2 = L7_2.overlayFontContentSize
  L6_2.fontSize = L7_2
  L7_2 = system
  L7_2 = L7_2.getInfo
  L8_2 = "build"
  L7_2 = L7_2(L8_2)
  if "2013.1137" < L7_2 then
    L7_2 = system
    L7_2 = L7_2.getInfo
    L8_2 = "platformName"
    L7_2 = L7_2(L8_2)
    if L7_2 ~= "Android" then
      L7_2 = L1_1
      L7_2 = L7_2.lang
      if L7_2 == "fa" then
        goto lbl_225
      end
    end
  end
  L7_2 = L1_1
  L7_2 = L7_2.lang
  if L7_2 == "ar" then
    ::lbl_225::
    L6_2.align = "right"
  else
    L6_2.align = "left"
  end
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  L15_1 = L7_2
  L7_2 = L15_1
  L8_2 = L7_2
  L7_2 = L7_2.setFillColor
  L9_2 = Theme
  L9_2 = L9_2.colorsSet
  L9_2 = L9_2.darkBlueColor
  L9_2 = L9_2[1]
  L10_2 = Theme
  L10_2 = L10_2.colorsSet
  L10_2 = L10_2.darkBlueColor
  L10_2 = L10_2[2]
  L11_2 = Theme
  L11_2 = L11_2.colorsSet
  L11_2 = L11_2.darkBlueColor
  L11_2 = L11_2[3]
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = L15_1
  L8_2 = L2_2.width
  L8_2 = L8_2 / 2
  L8_2 = L8_2 - 20
  L9_2 = L15_1
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L7_2.x = L8_2
  L7_2 = L15_1
  L8_2 = L2_2.x
  L9_2 = A0_2.contentBG
  L9_2 = L9_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L9_2 = L15_1
  L9_2 = L9_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L8_2 = L8_2 + 10
  L7_2.y = L8_2
  L7_2 = {}
  L8_2 = showAttributeAndValue
  L9_2 = "powerIcon-Small.png"
  L10_2 = L5_1
  L11_2 = L16_1
  L10_2 = L10_2[L11_2]
  L10_2 = L10_2.powerAmount
  L8_2 = L8_2(L9_2, L10_2)
  L7_2[1] = L8_2
  L8_2 = L7_2[1]
  L8_2.x = 0
  L8_2 = L7_2[1]
  L8_2.y = 0
  L8_2 = A0_2.contentGroup
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L7_2[1]
  L8_2(L9_2, L10_2)
  L8_2 = showAttributeAndValue
  L9_2 = "wisdomIcon-Small.png"
  L10_2 = L5_1
  L11_2 = L16_1
  L10_2 = L10_2[L11_2]
  L10_2 = L10_2.wisdomAmount
  L8_2 = L8_2(L9_2, L10_2)
  L7_2[2] = L8_2
  L8_2 = L7_2[2]
  L9_2 = L7_2[2]
  L9_2 = L9_2.width
  L9_2 = L9_2 + 50
  L8_2.x = L9_2
  L8_2 = L7_2[2]
  L8_2.y = 0
  L8_2 = A0_2.contentGroup
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L7_2[2]
  L8_2(L9_2, L10_2)
  L8_2 = showAttributeAndValue
  L9_2 = "blessingIcon-Small.png"
  L10_2 = L5_1
  L11_2 = L16_1
  L10_2 = L10_2[L11_2]
  L10_2 = L10_2.blessingAmount
  L8_2 = L8_2(L9_2, L10_2)
  L7_2[3] = L8_2
  L8_2 = L7_2[3]
  L8_2.x = 0
  L8_2 = L7_2[3]
  L8_2.y = 30
  L8_2 = A0_2.contentGroup
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L7_2[3]
  L8_2(L9_2, L10_2)
  L8_2 = mainPlayer
  L8_2 = L8_2.heroItems
  L9_2 = L16_1
  L8_2 = L8_2[L9_2]
  L8_2 = L8_2.assignedHeroID
  if L8_2 then
    L8_2 = mainPlayer
    L8_2 = L8_2.heroItems
    L9_2 = L16_1
    L8_2 = L8_2[L9_2]
    L8_2 = L8_2.assignedHeroID
    if L8_2 == 0 then
      goto lbl_351
    end
  end
  L8_2 = mainPlayer
  L8_2 = L8_2.heroMaxRarity
  L9_2 = mainPlayer
  L9_2 = L9_2.heroItems
  L10_2 = L16_1
  L9_2 = L9_2[L10_2]
  L9_2 = L9_2.unlock_level
  if L8_2 >= L9_2 then
    L8_2 = mainPlayer
    L8_2 = L8_2.heroItems
    L9_2 = L16_1
    L8_2 = L8_2[L9_2]
    L8_2 = L8_2.assignedHeroID
    if L8_2 == nil then
      ::lbl_351::
      L8_2 = {}
      L9_2 = Constants
      L9_2 = L9_2.Path_Assets
      L10_2 = "BattleItems/battle_outcome_button.png"
      L9_2 = L9_2 .. L10_2
      L8_2.imageName = L9_2
      L8_2.width = 100
      L8_2.height = 30
      L9_2 = mainPlayer
      L9_2 = L9_2.heroItems
      L10_2 = L16_1
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.assignedHeroID
      if L9_2 then
        L9_2 = mainPlayer
        L9_2 = L9_2.heroItems
        L10_2 = L16_1
        L9_2 = L9_2[L10_2]
        L9_2 = L9_2.assignedHeroID
        if L9_2 == 0 then
          L9_2 = L1_1
          L9_2 = L9_2["Use Item"]
          L8_2.label = L9_2
          
          function L9_2()
            local L0_3, L1_3, L2_3
            L0_3 = A1_2
            L0_3 = L0_3.params
            if L0_3 then
              L0_3 = A1_2
              L0_3 = L0_3.params
              L0_3 = L0_3.useItemCallback
              if L0_3 ~= nil then
                L0_3 = A1_2
                L0_3 = L0_3.params
                L0_3 = L0_3.useItemCallback
                L0_3()
              end
            end
            L0_3 = L18_1
            L1_3 = L0_3
            L0_3 = L0_3.setStatusOfItem
            L2_3 = 3
            L0_3(L1_3, L2_3)
            L0_3 = mainPlayer
            L0_3 = L0_3.heroItems
            L1_3 = L16_1
            L0_3 = L0_3[L1_3]
            L1_3 = mainPlayer
            L1_3 = L1_3.activeHeroID
            L0_3.assignedHeroID = L1_3
            L0_3 = L14_1
            L0_3 = L0_3.hideWithAnimation
            L1_3 = A0_2
            L0_3(L1_3)
          end
          
          L8_2.onRelease = L9_2
          L9_2 = L2_1
          L10_2 = L9_2
          L9_2 = L9_2.new
          L11_2 = L8_2
          L9_2 = L9_2(L10_2, L11_2)
          A0_2.dualActionButton = L9_2
      end
      else
        L8_2.subImageWidth = 20
        L8_2.subImageHeight = 20
        L9_2 = L5_1
        L10_2 = L16_1
        L9_2 = L9_2[L10_2]
        L9_2 = L9_2.cost
        L8_2.subText = L9_2
        L8_2.iconYOffSet = -2
        L8_2.subTextFontSize = 14
        L9_2 = Theme
        L9_2 = L9_2.nectarIconImage
        L8_2.subImage = L9_2
        
        function L9_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
          L0_3 = mainPlayer
          L1_3 = L0_3
          L0_3 = L0_3.checkPlayerCurrency
          L2_3 = L5_1
          L3_3 = L16_1
          L2_3 = L2_3[L3_3]
          L2_3 = L2_3.cost
          L3_3 = true
          L0_3 = L0_3(L1_3, L2_3, L3_3)
          if L0_3 then
            L0_3 = showSimpleDialog
            L1_3 = L1_1
            L1_3 = L1_3["Buy Item"]
            L2_3 = L1_1
            L2_3 = L2_3.localizedString
            L3_3 = "Are you sure want this item?"
            L4_3 = {}
            L5_3 = L5_1
            L6_3 = L16_1
            L5_3 = L5_3[L6_3]
            L5_3 = L5_3.cost
            L4_3.nectarPrice = L5_3
            L2_3 = L2_3(L3_3, L4_3)
            L3_3 = L1_1
            L3_3 = L3_3.OK
            
            function L4_3()
              local L0_4, L1_4, L2_4, L3_4
              L0_4 = L11_1
              L0_4 = L0_4.show
              L1_4 = L1_1
              L1_4 = L1_4["Buy Item"]
              L0_4(L1_4)
              L0_4 = L8_1
              L0_4 = L0_4.buyHeroItem
              L1_4 = L16_1
              L2_4 = didBuyItemCallback
              L3_4 = failedToBuyItemCallback
              L0_4(L1_4, L2_4, L3_4)
              L0_4 = mainPlayer
              L0_4 = L0_4.settings
              L0_4 = L0_4.sawTutorialOfHeroScene
              if L0_4 ~= true then
                L0_4 = mainPlayer
                L1_4 = L0_4
                L0_4 = L0_4.setSettingForKey
                L2_4 = "sawTutorialOfHeroScene"
                L3_4 = true
                L0_4(L1_4, L2_4, L3_4)
                L0_4 = mainPlayer
                L1_4 = L0_4
                L0_4 = L0_4.saveSettings
                L0_4(L1_4)
                L0_4 = L9_1
                L0_4 = L0_4.getScene
                L1_4 = "Scenes.HeroScene"
                L0_4 = L0_4(L1_4)
                L2_4 = L0_4
                L1_4 = L0_4.makeItemsTouchEnable
                L3_4 = true
                L1_4(L2_4, L3_4)
              end
            end
            
            L5_3 = L1_1
            L5_3 = L5_3.Cancel
            
            function L6_3()
              local L0_4, L1_4, L2_4, L3_4, L4_4
              L0_4 = L9_1
              L0_4 = L0_4.showOverlay
              L1_4 = "Scenes.ItemInfoOverlay"
              L2_4 = {}
              L3_4 = {}
              L4_4 = L16_1
              L3_4.id = L4_4
              L2_4.params = L3_4
              L0_4(L1_4, L2_4)
            end
            
            L7_3 = A0_2
            L7_3 = L7_3.disableSecondButton
            L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
          end
        end
        
        L8_2.onRelease = L9_2
        L9_2 = L3_1
        L10_2 = L9_2
        L9_2 = L9_2.new
        L11_2 = L8_2
        L9_2 = L9_2(L10_2, L11_2)
        A0_2.dualActionButton = L9_2
      end
      L9_2 = A0_2.contentGroup
      L10_2 = L9_2
      L9_2 = L9_2.insert
      L11_2 = A0_2.dualActionButton
      L11_2 = L11_2.view
      L9_2(L10_2, L11_2)
      L9_2 = A0_2.dualActionButton
      L10_2 = L2_2.x
      L9_2.x = L10_2
      L9_2 = A0_2.dualActionButton
      L10_2 = L2_2.height
      L10_2 = L10_2 / 2
      L10_2 = L10_2 - 10
      L11_2 = A0_2.dualActionButton
      L11_2 = L11_2.height
      L11_2 = L11_2 / 2
      L10_2 = L10_2 - L11_2
      L9_2.y = L10_2
  end
  else
    L8_2 = mainPlayer
    L8_2 = L8_2.heroItems
    L9_2 = L16_1
    L8_2 = L8_2[L9_2]
    L8_2 = L8_2.assignedHeroID
    if not L8_2 then
      L8_2 = mainPlayer
      L8_2 = L8_2.heroMaxRarity
      L9_2 = mainPlayer
      L9_2 = L9_2.heroItems
      L10_2 = L16_1
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.unlock_level
      if L8_2 < L9_2 then
        L8_2 = L1_1
        L8_2 = L8_2.localizedString
        L9_2 = "You need at least one hero with level greater than or equal"
        L10_2 = {}
        L11_2 = mainPlayer
        L11_2 = L11_2.heroItems
        L12_2 = L16_1
        L11_2 = L11_2[L12_2]
        L11_2 = L11_2.unlock_level
        L10_2.level = L11_2
        L8_2 = L8_2(L9_2, L10_2)
        L9_2 = L19_1
        L10_2 = L8_2
        L11_2 = Theme
        L11_2 = L11_2.colorsSet
        L11_2 = L11_2.redColor
        L9_2 = L9_2(L10_2, L11_2)
        L10_2 = A0_2.contentGroup
        L11_2 = L10_2
        L10_2 = L10_2.insert
        L12_2 = L9_2
        L10_2(L11_2, L12_2)
        L10_2 = L1_1
        L10_2 = L10_2.adjustX
        L11_2 = L2_2.width
        L11_2 = L11_2 / 2
        L12_2 = L9_2.width
        L12_2 = L12_2 / 2
        L11_2 = L11_2 - L12_2
        L12_2 = display
        L12_2 = L12_2.contentWidth
        L12_2 = -L12_2
        L10_2 = L10_2(L11_2, L12_2)
        L9_2.x = L10_2
        L10_2 = L2_2.height
        L10_2 = L10_2 / 2
        L10_2 = L10_2 - 10
        L11_2 = L9_2.height
        L11_2 = L11_2 / 2
        L10_2 = L10_2 - L11_2
        L9_2.y = L10_2
        L10_2 = display
        L10_2 = L10_2.newImageRect
        L11_2 = Constants
        L11_2 = L11_2.Path_Assets
        L12_2 = "Quest/lock.png"
        L11_2 = L11_2 .. L12_2
        L12_2 = 14
        L13_2 = 14
        L14_2 = 0
        L15_2 = 0
        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        L11_2 = A0_2.contentGroup
        L12_2 = L11_2
        L11_2 = L11_2.insert
        L13_2 = L10_2
        L11_2(L12_2, L13_2)
        L11_2 = L1_1
        L11_2 = L11_2.adjustX
        L12_2 = L9_2.x
        L13_2 = L9_2.width
        L13_2 = L13_2 / 2
        L12_2 = L12_2 - L13_2
        L13_2 = L10_2.width
        L13_2 = L13_2 / 2
        L12_2 = L12_2 - L13_2
        L13_2 = display
        L13_2 = L13_2.contentWidth
        L13_2 = -L13_2
        L14_2 = L9_2.x
        L14_2 = 2 * L14_2
        L13_2 = L13_2 + L14_2
        L11_2 = L11_2(L12_2, L13_2)
        L10_2.x = L11_2
        L11_2 = L9_2.y
        L11_2 = L11_2 - 2
        L10_2.y = L11_2
    end
    else
      L8_2 = mainPlayer
      L8_2 = L8_2.heroItems
      if L8_2 then
        L8_2 = mainPlayer
        L8_2 = L8_2.heroItems
        L9_2 = L16_1
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2.assignedHeroID
        if L8_2 then
          L8_2 = mainPlayer
          L8_2 = L8_2.heroItems
          L9_2 = L16_1
          L8_2 = L8_2[L9_2]
          L8_2 = L8_2.assignedHeroID
          if 0 < L8_2 then
            L8_2 = L1_1
            L8_2 = L8_2.localizedString
            L9_2 = "This item equipped by"
            L10_2 = {}
            L11_2 = L7_1
            L11_2 = L11_2.baseCards
            L12_2 = mainPlayer
            L12_2 = L12_2.heroItems
            L13_2 = L16_1
            L12_2 = L12_2[L13_2]
            L12_2 = L12_2.assignedHeroID
            L11_2 = L11_2[L12_2]
            L11_2 = L11_2.name
            L10_2.name = L11_2
            L8_2 = L8_2(L9_2, L10_2)
            L9_2 = L19_1
            L10_2 = L8_2
            L11_2 = Theme
            L11_2 = L11_2.colorsSet
            L11_2 = L11_2.darkBlueColor
            L9_2 = L9_2(L10_2, L11_2)
            L10_2 = A0_2.contentGroup
            L11_2 = L10_2
            L10_2 = L10_2.insert
            L12_2 = L9_2
            L10_2(L11_2, L12_2)
            L10_2 = L2_2.width
            L10_2 = L10_2 / 2
            L10_2 = L10_2 - 10
            L11_2 = L9_2.width
            L11_2 = L11_2 / 2
            L10_2 = L10_2 - L11_2
            L9_2.x = L10_2
            L10_2 = L2_2.height
            L10_2 = L10_2 / 2
            L10_2 = L10_2 - 10
            L11_2 = L9_2.height
            L11_2 = L11_2 / 2
            L10_2 = L10_2 - L11_2
            L9_2.y = L10_2
          end
        end
      end
    end
  end
  L8_2 = pointAtBuyItem
  A0_2.pointAtBuyItem = L8_2
end

create = L20_1

function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L0_1
  L4_2 = L4_2.show
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "did" then
    L4_2 = L12_1
    L4_2 = L4_2.checkForTutorial
    L5_2 = "Scenes.ItemInfoOverlay"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
  end
end

show = L20_1

function L20_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L13_1
  L3_2 = L3_2.pointAt
  L4_2 = A0_2.dualActionButton
  L4_2 = L4_2.view
  L5_2 = 0
  L6_2 = 0
  L3_2(L4_2, L5_2, L6_2)
  A0_2.disableSecondButton = true
  L3_2 = L9_1
  L3_2 = L3_2.removeScene
  L4_2 = "Scenes.Shop"
  L3_2(L4_2)
  if A2_2 then
    L3_2 = A2_2
    L3_2()
  end
end

pointAtBuyItem = L20_1

function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L0_1
  L4_2 = L4_2.hide
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end

hide = L20_1

function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = L0_1
  L3_2 = L3_2.hide
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end

destroy = L20_1

function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = display
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = L2_2
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "Heroes/"
  L7_2 = A0_2
  L5_2 = L5_2 .. L6_2 .. L7_2
  L6_2 = 20
  L7_2 = 20
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = L3_2.width
  L4_2 = -L4_2
  L3_2.x = L4_2
  L3_2.y = 0
  L4_2 = {}
  L4_2.parent = L2_2
  L5_2 = "+ "
  L6_2 = L1_1
  L6_2 = L6_2.adjustNumber
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L4_2.text = L5_2
  L5_2 = Theme
  L5_2 = L5_2.overlayFont
  L4_2.font = L5_2
  L5_2 = Theme
  L5_2 = L5_2.overlayFontContentSize
  L4_2.fontSize = L5_2
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L7_2 = L5_2
  L6_2 = L5_2.setFillColor
  L8_2 = Theme
  L8_2 = L8_2.colorsSet
  L8_2 = L8_2.darkBlueColor
  L8_2 = L8_2[1]
  L9_2 = Theme
  L9_2 = L9_2.colorsSet
  L9_2 = L9_2.darkBlueColor
  L9_2 = L9_2[2]
  L10_2 = Theme
  L10_2 = L10_2.colorsSet
  L10_2 = L10_2.darkBlueColor
  L10_2 = L10_2[3]
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = L5_2.width
  L5_2.x = L6_2
  return L2_2
end

showAttributeAndValue = L20_1

function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = log3
  L2_2 = "failed to buy hero Items"
  L1_2(L2_2)
  L1_2 = L11_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = L1_1
  L2_2 = L2_2["Failed to buy"]
  L3_2 = A0_2
  L4_2 = L1_1
  L4_2 = L4_2.OK
  
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L9_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Scenes.ItemInfoOverlay"
    L2_3 = {}
    L3_3 = {}
    L4_3 = L16_1
    L3_3.id = L4_3
    L2_3.params = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

failedToBuyItemCallback = L20_1

function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L11_1
  L0_2 = L0_2.hide
  L0_2()
  L0_2 = L18_1
  L1_2 = L0_2
  L0_2 = L0_2.setStatusOfItem
  L2_2 = 5
  L0_2(L1_2, L2_2)
  L0_2 = mainPlayer
  L0_2 = L0_2.heroItems
  L1_2 = L16_1
  L0_2 = L0_2[L1_2]
  L0_2.assignedHeroID = 0
  L0_2 = L9_1
  L0_2 = L0_2.showOverlay
  L1_2 = "Scenes.ItemInfoOverlay"
  L2_2 = {}
  L3_2 = {}
  L4_2 = L16_1
  L3_2.id = L4_2
  L4_2 = L17_1
  L3_2.useItemCallback = L4_2
  L2_2.params = L3_2
  L0_2(L1_2, L2_2)
  L0_2 = L9_1
  L0_2 = L0_2.getSceneName
  L1_2 = "current"
  L0_2 = L0_2(L1_2)
  if L0_2 == "Scenes.HeroScene" then
    L0_2 = L9_1
    L0_2 = L0_2.getScene
    L1_2 = "Scenes.HeroScene"
    L0_2 = L0_2(L1_2)
    L1_2 = L0_2.navBar
    L2_2 = L1_2
    L1_2 = L1_2.setNectar
    L3_2 = mainPlayer
    L3_2 = L3_2.nectar
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
end

didBuyItemCallback = L20_1
