local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Components.TDButtonView"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = L0_1.newScene
L3_1 = L3_1()
L4_1 = require
L5_1 = "Tutorial.TutorialManager2"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Models.Player"
L5_1 = L5_1(L6_1)
L6_1 = nil

function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L6_1
  if L1_2 ~= nil then
    L1_2 = L6_1
    L1_2 = L1_2.alpha
    if L1_2 == 0 then
      L1_2 = timer
      L1_2 = L1_2.performWithDelay
      L2_2 = 1000
      
      function L3_2()
        local L0_3, L1_3, L2_3
        L0_3 = L6_1
        L0_3.alpha = 1
        L0_3 = L6_1
        L1_3 = L0_3
        L0_3 = L0_3.setEnabled
        L2_3 = true
        L0_3(L1_3, L2_3)
      end
      
      L1_2(L2_2, L3_2)
    else
      L1_2 = timer
      L1_2 = L1_2.performWithDelay
      L2_2 = 100
      
      function L3_2()
        local L0_3, L1_3, L2_3
        L0_3 = L6_1
        L1_3 = L0_3
        L0_3 = L0_3.setEnabled
        L2_3 = true
        L0_3(L1_3, L2_3)
      end
      
      L1_2(L2_2, L3_2)
    end
    L1_2 = L6_1
    L1_2 = L1_2.view
    L2_2 = L1_2
    L1_2 = L1_2.toFront
    L1_2(L2_2)
  end
end

function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L6_1
  if L1_2 ~= nil then
    L1_2 = L6_1
    L2_2 = L1_2
    L1_2 = L1_2.setEnabled
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end

function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L6_1
  if L0_2 == nil then
    L0_2 = L2_1
    L0_2 = L0_2["Already Have A Village"]
    L1_2 = mainPlayer
    L1_2 = L1_2.restoreButtonName
    if L1_2 then
      L1_2 = L2_1
      L0_2 = L1_2["Already Have A Village2"]
    end
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.new
    L3_2 = {}
    L3_2.label = L0_2
    L3_2.width = 104
    L3_2.height = 33
    L4_2 = Constants
    L4_2 = L4_2.Path_Assets
    L5_2 = "BattleItems/next.png"
    L4_2 = L4_2 .. L5_2
    L3_2.defaultFile = L4_2
    
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = L4_1
      L0_3 = L0_3.resetTutorialState
      L0_3()
      L0_3 = L0_1
      L0_3 = L0_3.showOverlay
      L1_3 = "Scenes.ExistingPlayerOverlay"
      L0_3(L1_3)
      L0_3 = L6_1
      L0_3.alpha = 0
      L0_3 = mainPlayer
      L1_3 = L0_3
      L0_3 = L0_3.setSettingForKey
      L2_3 = "showingRestoreButton"
      L3_3 = false
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = mainPlayer
      L1_3 = L0_3
      L0_3 = L0_3.saveSettings
      L0_3(L1_3)
    end
    
    L3_2.onRelease = L4_2
    L1_2 = L1_2(L2_2, L3_2)
    L6_1 = L1_2
    L1_2 = L6_1
    L2_2 = L6_1
    L2_2 = L2_2.width
    L2_2 = L2_2 / 2
    L2_2 = 15 + L2_2
    L1_2.x = L2_2
    L1_2 = L6_1
    L2_2 = L6_1
    L2_2 = L2_2.height
    L2_2 = L2_2 / 2
    L2_2 = 15 + L2_2
    L1_2.y = L2_2
    L1_2 = L6_1
    L1_2.alpha = 0
    L1_2 = L6_1
    L2_2 = L1_2
    L1_2 = L1_2.setEnabled
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end

function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = mainPlayer
  L3_2 = L3_2.coachTest
  if L3_2 then
    L3_2 = require
    L4_2 = "Components.TDLookUpView"
    L3_2 = L3_2(L4_2)
    L4_2 = {}
    L5_2 = mainPlayer
    L5_2 = L5_2.trainerName
    L4_2.trainerName = L5_2
    L5_2 = mainPlayer
    L5_2 = L5_2.trainerTribe
    L4_2.trainerTribeName = L5_2
    L4_2.tutorialCallback = A2_2
    L6_2 = L3_2
    L5_2 = L3_2.new
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    A0_2.lookUpView = L5_2
    L5_2 = A0_2.lookUpView
    L6_2 = display
    L6_2 = L6_2.contentCenterX
    L5_2.x = L6_2
    L5_2 = A0_2.lookUpView
    L6_2 = display
    L6_2 = L6_2.contentCenterY
    L5_2.y = L6_2
  else
    L3_2 = A2_2
    L3_2()
  end
end

L3_1.performLookUpAction = L10_1

function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = mainPlayer
  L3_2 = L3_2.heroTutorialAtFirst
  if not L3_2 then
    L3_2 = mainPlayer
    L3_2 = L3_2.heroTutorialAtFirstAndSelected
    if not L3_2 then
      L3_2 = mainPlayer
      L3_2 = L3_2.heroTutorialAtFirstAndSelectedWithAnimation
      if not L3_2 then
        goto lbl_36
      end
    end
  end
  
  function L3_2(A0_3, A1_3, A2_3, A3_3)
    local L4_3, L5_3, L6_3, L7_3, L8_3
    if A0_3 then
      L4_3 = A0_3.id
      if L4_3 == 32 then
        L4_3 = L0_1
        L4_3 = L4_3.gotoScene
        L5_3 = "Scenes.ShopAnimationScene"
        L6_3 = {}
        L7_3 = {}
        L7_3.type = "heroes"
        L7_3.items = A3_3
        L7_3.shopItem = A0_3
        L8_3 = A2_2
        L7_3.heroTutorialCallback = L8_3
        L7_3.isHeroTutorial = true
        L6_3.params = L7_3
        L4_3(L5_3, L6_3)
      end
    end
  end
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    if A1_3 then
      L2_3 = showSimpleDialog
      L3_3 = "Select Hero"
      L4_3 = A1_3
      L5_3 = "Reload"
      
      function L6_3()
        local L0_4, L1_4, L2_4
        L0_4 = L0_1
        L0_4 = L0_4.gotoScene
        L1_4 = "Scenes.Loading"
        L0_4(L1_4)
        L0_4 = L5_1
        L1_4 = L0_1
        L1_4 = L1_4.getScene
        L2_4 = "Scenes.Loading"
        L1_4 = L1_4(L2_4)
        L0_4.delegate = L1_4
        L0_4 = L5_1
        L0_4 = L0_4.loadPlayer
        L0_4()
      end
      
      L2_3(L3_3, L4_3, L5_3, L6_3)
    end
  end
  
  L5_2 = require
  L6_2 = "Models.ShopItem"
  L5_2 = L5_2(L6_2)
  L6_2 = require
  L7_2 = "Data.BaseShopItems"
  L6_2 = L6_2(L7_2)
  L8_2 = L5_2
  L7_2 = L5_2.new
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = nil
  L12_2 = L6_2[32]
  L13_2 = nil
  L14_2 = true
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L8_2 = L7_2.action
  L8_2()
  goto lbl_38
  ::lbl_36::
  L3_2 = A2_2
  L3_2()
  ::lbl_38::
end

L3_1.performHeroShopAnimation = L10_1

function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = mainPlayer
  L3_2 = L3_2.coachTest
  if L3_2 then
    L3_2 = A0_2.lookUpView
    if L3_2 then
      L3_2 = A0_2.lookUpView
      L4_2 = L3_2
      L3_2 = L3_2.cleanupObjects
      L3_2(L4_2)
    end
  end
  L3_2 = A2_2
  L3_2()
end

L3_1.removeLookUpView = L10_1

function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = mainPlayer
  L3_2 = L3_2.coachTest
  if L3_2 then
    L3_2 = L4_1
    L3_2 = L3_2.processInformativeTutorial
    L4_2 = A1_2
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A2_2
    L3_2()
  end
end

L3_1.performInformativeActionForCoaching = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = mainPlayer
  L2_2 = L2_2.betterTutorialBackground
  if L2_2 == true then
    L2_2 = display
    L2_2 = L2_2.newImageRect
    L3_2 = A0_2.view
    L4_2 = Constants
    L4_2 = L4_2.Path_Assets
    L5_2 = "Tutorial/FC-TutorialTestBackground.png"
    L4_2 = L4_2 .. L5_2
    L5_2 = 570
    L6_2 = 360
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L3_2 = display
    L3_2 = L3_2.contentCenterX
    L2_2.x = L3_2
    L3_2 = display
    L3_2 = L3_2.contentCenterY
    L2_2.y = L3_2
    L2_2.alpha = 0.3
  end
end

L3_1.create = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    L2_2 = Runtime
    L3_2 = L2_2
    L2_2 = L2_2.addEventListener
    L4_2 = "dialogShown"
    L5_2 = L7_1
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = Runtime
    L3_2 = L2_2
    L2_2 = L2_2.addEventListener
    L4_2 = "hideDialogWithAnimation"
    L5_2 = L8_1
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = L4_1
    L2_2 = L2_2.checkForTutorial
    L3_2 = "Scenes.TutorialStartScene"
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
    L2_2 = L9_1
    L2_2()
  end
end

L3_1.show = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    L2_2 = L6_1
    if L2_2 then
      L2_2 = L6_1
      L3_2 = L2_2
      L2_2 = L2_2.removeSelf
      L2_2(L3_2)
      L2_2 = nil
      L6_1 = L2_2
    end
    L2_2 = Runtime
    L3_2 = L2_2
    L2_2 = L2_2.removeEventListener
    L4_2 = "dialogShown"
    L5_2 = L7_1
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = Runtime
    L3_2 = L2_2
    L2_2 = L2_2.removeEventListener
    L4_2 = "hideDialogWithAnimation"
    L5_2 = L8_1
    L2_2(L3_2, L4_2, L5_2)
  end
end

L3_1.hide = L10_1
L11_1 = L3_1
L10_1 = L3_1.addEventListener
L12_1 = "create"
L13_1 = L3_1
L10_1(L11_1, L12_1, L13_1)
L11_1 = L3_1
L10_1 = L3_1.addEventListener
L12_1 = "show"
L13_1 = L3_1
L10_1(L11_1, L12_1, L13_1)
L11_1 = L3_1
L10_1 = L3_1.addEventListener
L12_1 = "hide"
L13_1 = L3_1
L10_1(L11_1, L12_1, L13_1)
return L3_1
