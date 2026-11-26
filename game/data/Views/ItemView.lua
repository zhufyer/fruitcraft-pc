local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.BaseView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Components.DataManager"
L1_1 = L1_1(L2_1)
L2_1 = L1_1.dataWithName
L3_1 = "BaseHeroItems"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "composer"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.CachedImageView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Language"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.EffectsManager"
L6_1 = L6_1(L7_1)
L7_1 = setmetatable
L8_1 = _M
L9_1 = {}
L9_1.__index = L0_1
L7_1(L8_1, L9_1)

function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = L0_1
  L3_2 = L3_2.newWithParams
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  L3_2.contentGroup = L4_2
  L4_2 = L3_2.view
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = L3_2.contentGroup
  L4_2(L5_2, L6_2)
  L4_2 = A1_2.widthOfView
  if not L4_2 then
    L4_2 = 100
  end
  L3_2.widthOfView = L4_2
  L4_2 = A1_2.heightOfView
  if not L4_2 then
    L4_2 = 100
  end
  L3_2.heightOfView = L4_2
  L4_2 = A1_2.isAnimatedItem
  if not L4_2 then
    L4_2 = false
  end
  L3_2.isAnimatedItem = L4_2
  L4_2 = A1_2.isShowingImageBG
  if not L4_2 then
    L4_2 = false
  end
  L3_2.isShowingImageBG = L4_2
  L4_2 = A1_2.isShowingSolidBG
  if not L4_2 then
    L4_2 = false
  end
  L3_2.isShowingSolidBG = L4_2
  L4_2 = A1_2.id
  L3_2.id = L4_2
  L4_2 = A1_2.scrollViewObject
  L3_2.scrollViewObject = L4_2
  L4_2 = L2_1
  L5_2 = L3_2.id
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.category
  if L4_2 == 1 then
    L5_2 = L3_2
    L4_2 = L3_2.makeDecisionAboutBG
    L6_2 = nil
    L7_2 = Theme
    L7_2 = L7_2.colorsSet
    L7_2 = L7_2.heroItemBack
    L8_2 = Theme
    L8_2 = L8_2.colorsSet
    L8_2 = L8_2.heroItemStroke
    L4_2(L5_2, L6_2, L7_2, L8_2)
  else
    L4_2 = L2_1
    L5_2 = L3_2.id
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.category
    if L4_2 == 2 then
      L5_2 = L3_2
      L4_2 = L3_2.makeDecisionAboutBG
      L6_2 = nil
      L7_2 = Theme
      L7_2 = L7_2.colorsSet
      L7_2 = L7_2.heroItemBack
      L8_2 = Theme
      L8_2 = L8_2.colorsSet
      L8_2 = L8_2.heroItemStroke
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
  end
  L4_2 = L3_2.isAnimatedItem
  if L4_2 then
  else
    L4_2 = L4_1
    L5_2 = L4_2
    L4_2 = L4_2.new
    L6_2 = L3_2.contentGroup
    L7_2 = Constants
    L7_2 = L7_2.Path_Assets
    L8_2 = "Heroes/Items/"
    L9_2 = L2_1
    L10_2 = L3_2.id
    L9_2 = L9_2[L10_2]
    L9_2 = L9_2.image
    L10_2 = ".png"
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
    L8_2 = L3_2.widthOfView
    L8_2 = 150 * L8_2
    L8_2 = L8_2 / 256
    L9_2 = L3_2.heightOfView
    L9_2 = 150 * L9_2
    L9_2 = L9_2 / 256
    
    function L10_2()
      local L0_3, L1_3
      L0_3 = A1_2
      L0_3 = L0_3.touchCallBack
      if not L0_3 then
        L0_3 = L3_2
        L1_3 = L0_3
        L0_3 = L0_3.determineStatusOfItem
        L0_3(L1_3)
      end
    end
    
    L11_2 = nil
    L12_2 = "Items"
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L3_2.itemImage = L4_2
    L4_2 = L3_2.itemImage
    L4_2.x = 0
    L4_2 = L3_2.itemImage
    L4_2.y = 0
  end
  L4_2 = A1_2.isTouchEnable
  if L4_2 then
    L4_2 = A1_2.touchCallBack
    if L4_2 ~= nil then
      L4_2 = L3_2.view
      L5_2 = L4_2
      L4_2 = L4_2.addEventListener
      L6_2 = "touch"
      
      function L7_2()
        local L0_3, L1_3
        L0_3 = A1_2
        L0_3 = L0_3.touchCallBack
        L0_3()
      end
      
      L4_2(L5_2, L6_2, L7_2)
      L5_2 = L3_2
      L4_2 = L3_2.makeDecisionAboutBG
      L6_2 = nil
      L7_2 = Theme
      L7_2 = L7_2.colorsSet
      L7_2 = L7_2.heroItemBack
      L8_2 = Theme
      L8_2 = L8_2.colorsSet
      L8_2 = L8_2.heroItemStroke
      L9_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      L4_2 = L3_2.contentGroup
      L5_2 = L4_2
      L4_2 = L4_2.insert
      L6_2 = L3_2.itemImage
      L6_2 = L6_2.view
      L4_2(L5_2, L6_2)
    else
      L5_2 = L3_2
      L4_2 = L3_2.determineStatusOfItem
      L4_2(L5_2)
      L4_2 = L3_2.view
      L5_2 = L4_2
      L4_2 = L4_2.addEventListener
      L6_2 = "touch"
      
      function L7_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
        L1_3 = display
        L1_3 = L1_3.getCurrentStage
        L1_3 = L1_3()
        L2_3 = A0_3.phase
        if L2_3 == "began" then
          L3_3 = L1_3
          L2_3 = L1_3.setFocus
          L4_3 = A0_3.target
          L2_3(L3_3, L4_3)
        else
          L2_3 = A0_3.phase
          if L2_3 == "moved" then
            L2_3 = 10
            L3_3 = math
            L3_3 = L3_3.abs
            L4_3 = A0_3.x
            L5_3 = A0_3.xStart
            L4_3 = L4_3 - L5_3
            L3_3 = L3_3(L4_3)
            if L2_3 < L3_3 then
              L4_3 = L3_2
              L4_3 = L4_3.scrollViewObject
              if L4_3 then
                L4_3 = L3_2
                L4_3 = L4_3.scrollViewObject
                L5_3 = L4_3
                L4_3 = L4_3.takeFocus
                L6_3 = A0_3
                L4_3(L5_3, L6_3)
              end
            end
          else
            L2_3 = A0_3.phase
            if L2_3 == "ended" then
              L3_3 = L1_3
              L2_3 = L1_3.setFocus
              L4_3 = nil
              L2_3(L3_3, L4_3)
              L2_3 = mainPlayer
              L2_3 = L2_3.settings
              L2_3 = L2_3.sawTutorialOfHeroScene
              if L2_3 ~= true then
                L2_3 = L6_1
                L2_3 = L2_3.removePoint
                L2_3()
              end
              L2_3 = L3_1
              L2_3 = L2_3.showOverlay
              L3_3 = "Scenes.ItemInfoOverlay"
              L4_3 = {}
              L5_3 = {}
              L6_3 = A1_2
              L6_3 = L6_3.useItemCallback
              L5_3.useItemCallback = L6_3
              L6_3 = L3_2
              L5_3.object = L6_3
              L4_3.params = L5_3
              L2_3(L3_3, L4_3)
              L2_3 = L3_1
              L2_3 = L2_3.getScene
              L3_3 = "Scenes.ItemInfoOverlay"
              L2_3 = L2_3(L3_3)
              L3_3 = mainPlayer
              L3_3 = L3_3.settings
              L3_3 = L3_3.sawTutorialOfHeroScene
              if not L3_3 then
                L4_3 = L2_3
                L3_3 = L2_3.pointAtBuyItem
                L3_3(L4_3)
              end
            end
          end
        end
        L2_3 = true
        return L2_3
      end
      
      L4_2(L5_2, L6_2, L7_2)
    end
  end
  return L3_2
end

new = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = display
  L1_2 = L1_2.newCircle
  L2_2 = A0_2.contentGroup
  L3_2 = 0
  L4_2 = 0
  L5_2 = 25
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.hiddenCircle = L1_2
  L1_2 = A0_2.hiddenCircle
  L2_2 = L1_2
  L1_2 = L1_2.setFillColor
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0.1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2.hiddenCircle
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = "touch"
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L1_2(L2_2, L3_2, L4_2)
end

disableTouch = L7_1

function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.hiddenCircle
  L2_2 = L1_2
  L1_2 = L1_2.removeSelf
  L1_2(L2_2)
  A0_2.hiddenCircle = nil
end

enableTouch = L7_1

function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = display
  L3_2 = L3_2.newCircle
  L4_2 = A0_2.contentGroup
  L5_2 = 0
  L6_2 = 0
  L7_2 = 24
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = A1_2[1]
  L7_2 = A1_2[2]
  L8_2 = A1_2[3]
  L9_2 = A1_2[4]
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2.strokeWidth = 1
  L5_2 = L3_2
  L4_2 = L3_2.setStrokeColor
  L6_2 = A2_2[1]
  L7_2 = A2_2[2]
  L8_2 = A2_2[3]
  L4_2(L5_2, L6_2, L7_2, L8_2)
  return L3_2
end

createSolidCircleBG = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = display
  L2_2 = L2_2.newRect
  L3_2 = A0_2.contentGroup
  L4_2 = 0
  L5_2 = 0
  L6_2 = A0_2.widthOfView
  L7_2 = A0_2.heightOfView
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L4_2 = L2_2
  L3_2 = L2_2.setFillColor
  L5_2 = A1_2[1]
  L6_2 = A1_2[2]
  L7_2 = A1_2[3]
  L3_2(L4_2, L5_2, L6_2, L7_2)
  return L2_2
end

createSolidRectangleBG = L7_1

function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A0_2.isShowingImageBG
  if L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2.createImage
    L7_2 = A0_2.contentGroup
    L8_2 = Constants
    L8_2 = L8_2.Path_Assets
    L9_2 = "Heroes/ItemBG/"
    L10_2 = A1_2
    L8_2 = L8_2 .. L9_2 .. L10_2
    L9_2 = A0_2.widthOfView
    L10_2 = A0_2.heightOfView
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    A0_2.backgroundImage = L5_2
  else
    L5_2 = A0_2.isShowingSolidBG
    if L5_2 then
      L6_2 = A0_2
      L5_2 = A0_2.createSolidCircleBG
      L7_2 = A2_2
      L8_2 = A3_2
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      A0_2.backgroundImage = L5_2
    elseif A4_2 then
      L6_2 = A0_2
      L5_2 = A0_2.createSolidRectangleBG
      L7_2 = A2_2
      L5_2 = L5_2(L6_2, L7_2)
      A0_2.backgroundImage = L5_2
    end
  end
end

makeDecisionAboutBG = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.shadow
  if L2_2 then
    L2_2 = A0_2.shadow
    L3_2 = L2_2
    L2_2 = L2_2.removeSelf
    L2_2(L3_2)
    A0_2.shadow = nil
  end
  L2_2 = A0_2.statusImage
  if L2_2 then
    L2_2 = A0_2.statusImage
    L3_2 = L2_2
    L2_2 = L2_2.removeSelf
    L2_2(L3_2)
    A0_2.statusImage = nil
  end
  L2_2 = display
  L2_2 = L2_2.newCircle
  L3_2 = A0_2.contentGroup
  L4_2 = 0
  L5_2 = 0
  L6_2 = 24
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.shadow = L2_2
  L2_2 = A0_2.shadow
  L2_2.alpha = 0
  if A1_2 == 0 then
    L2_2 = A0_2.shadow
    L2_2.alpha = 1
    L2_2 = A0_2.shadow
    L3_2 = L2_2
    L2_2 = L2_2.setFillColor
    L4_2 = Theme
    L4_2 = L4_2.colorsSet
    L4_2 = L4_2.blackColor
    L4_2 = L4_2[1]
    L5_2 = Theme
    L5_2 = L5_2.colorsSet
    L5_2 = L5_2.blackColor
    L5_2 = L5_2[2]
    L6_2 = Theme
    L6_2 = L6_2.colorsSet
    L6_2 = L6_2.blackColor
    L6_2 = L6_2[3]
    L7_2 = 0.5
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = createImage
    L3_2 = A0_2.contentGroup
    L4_2 = Constants
    L4_2 = L4_2.Path_Assets
    L5_2 = "Quest/lock.png"
    L4_2 = L4_2 .. L5_2
    L5_2 = A0_2.widthOfView
    L5_2 = 100 * L5_2
    L5_2 = L5_2 / 256
    L6_2 = A0_2.heightOfView
    L6_2 = 100 * L6_2
    L6_2 = L6_2 / 256
    L7_2 = 0
    L8_2 = 0
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    A0_2.statusImage = L2_2
  elseif A1_2 == 1 then
    L2_2 = A0_2.shadow
    L2_2.alpha = 1
    L2_2 = A0_2.shadow
    L3_2 = L2_2
    L2_2 = L2_2.setFillColor
    L4_2 = Theme
    L4_2 = L4_2.colorsSet
    L4_2 = L4_2.blackColor
    L4_2 = L4_2[1]
    L5_2 = Theme
    L5_2 = L5_2.colorsSet
    L5_2 = L5_2.blackColor
    L5_2 = L5_2[2]
    L6_2 = Theme
    L6_2 = L6_2.colorsSet
    L6_2 = L6_2.blackColor
    L6_2 = L6_2[3]
    L7_2 = 0.5
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = createImage
    L3_2 = A0_2.contentGroup
    L4_2 = Constants
    L4_2 = L4_2.Path_Assets
    L5_2 = "Heroes/Items/Buy.png"
    L4_2 = L4_2 .. L5_2
    L5_2 = A0_2.widthOfView
    L5_2 = 100 * L5_2
    L5_2 = L5_2 / 256
    L6_2 = A0_2.heightOfView
    L6_2 = 100 * L6_2
    L6_2 = L6_2 / 256
    L7_2 = 0
    L8_2 = 0
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    A0_2.statusImage = L2_2
  elseif A1_2 == 2 then
  elseif A1_2 == 3 then
    L2_2 = A0_2.shadow
    L2_2.alpha = 1
    L2_2 = A0_2.shadow
    L3_2 = L2_2
    L2_2 = L2_2.setFillColor
    L4_2 = Theme
    L4_2 = L4_2.colorsSet
    L4_2 = L4_2.greenColor
    L4_2 = L4_2[1]
    L5_2 = Theme
    L5_2 = L5_2.colorsSet
    L5_2 = L5_2.greenColor
    L5_2 = L5_2[2]
    L6_2 = Theme
    L6_2 = L6_2.colorsSet
    L6_2 = L6_2.greenColor
    L6_2 = L6_2[3]
    L7_2 = 0.5
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = createImage
    L3_2 = A0_2.contentGroup
    L4_2 = Constants
    L4_2 = L4_2.Path_Assets
    L5_2 = "General/FC-tick.png"
    L4_2 = L4_2 .. L5_2
    L5_2 = A0_2.widthOfView
    L5_2 = 80 * L5_2
    L5_2 = L5_2 / 256
    L6_2 = A0_2.heightOfView
    L6_2 = 80 * L6_2
    L6_2 = L6_2 / 256
    L7_2 = 0
    L8_2 = 0
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    A0_2.statusImage = L2_2
  elseif A1_2 == 5 then
    L2_2 = L6_1
    L2_2 = L2_2.sparkle
    L3_2 = A0_2.contentGroup
    L4_2 = 1000
    L5_2 = A0_2.widthOfView
    L5_2 = -L5_2
    L5_2 = L5_2 / 2
    L6_2 = A0_2.heightOfView
    L6_2 = -L6_2
    L6_2 = L6_2 / 2
    L7_2 = A0_2.widthOfView
    L7_2 = L7_2 / 2
    L8_2 = A0_2.heightOfView
    L8_2 = L8_2 / 2
    L9_2 = 20
    L10_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  end
end

setStatusOfItem = L7_1

function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if A4_2 then
    L6_2.x = A4_2
  end
  if A5_2 then
    L6_2.y = A5_2
  end
  return L6_2
end

createImage = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = mainPlayer
  L1_2 = L1_2.heroItems
  L2_2 = A0_2.id
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.assignedHeroID
  if L1_2 then
    L1_2 = mainPlayer
    L1_2 = L1_2.heroItems
    L2_2 = A0_2.id
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.assignedHeroID
    if L1_2 == 0 then
      L2_2 = A0_2
      L1_2 = A0_2.setStatusOfItem
      L3_2 = 2
      L1_2(L2_2, L3_2)
    else
      L1_2 = mainPlayer
      L1_2 = L1_2.heroItems
      L2_2 = A0_2.id
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.assignedHeroID
      if 0 < L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2.setStatusOfItem
        L3_2 = 3
        L1_2(L2_2, L3_2)
      end
    end
  else
    L1_2 = mainPlayer
    L1_2 = L1_2.heroMaxRarity
    L2_2 = mainPlayer
    L2_2 = L2_2.heroItems
    L3_2 = A0_2.id
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.unlock_level
    if L1_2 < L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2.setStatusOfItem
      L3_2 = 0
      L1_2(L2_2, L3_2)
    else
      L1_2 = mainPlayer
      L1_2 = L1_2.heroMaxRarity
      L2_2 = mainPlayer
      L2_2 = L2_2.heroItems
      L3_2 = A0_2.id
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.unlock_level
      if L1_2 >= L2_2 then
        L2_2 = A0_2
        L1_2 = A0_2.setStatusOfItem
        L3_2 = 1
        L1_2(L2_2, L3_2)
      end
    end
  end
end

determineStatusOfItem = L7_1
