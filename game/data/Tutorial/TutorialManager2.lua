local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Components.DataManager"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Components.TDDialogView"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Components.TDTaskOverlay"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "composer"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Components.AudioManager"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Language"
L5_1 = L5_1(L6_1)
L6_1 = nil
L7_1 = nil
L8_1 = L0_1.dataWithName
L9_1 = "TutorialData"
L8_1 = L8_1(L9_1)
L6_1 = L8_1
L8_1 = L6_1.steps
L9_1 = L6_1.images
L10_1 = 1
tutorialIndex = L10_1
L10_1 = 50
tutorialId = L10_1
L10_1 = nil
activeTutorialId = L10_1
L10_1 = true
isPostLaunch = L10_1
L10_1 = false
ignoreLevelTriggerLimit = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = log3
  L3_2 = "TutorialIndex"
  L4_2 = tutorialIndex
  L5_2 = A0_2
  L6_2 = tutorialId
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = activeTutorialId
  if L2_2 then
    return
  end
  L2_2 = checkAndUpdateIndex
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = log3
  L3_2 = "TutorialIndex"
  L4_2 = tutorialIndex
  L2_2(L3_2, L4_2)
  L2_2 = L8_1
  L3_2 = tutorialIndex
  L2_2 = L2_2[L3_2]
  if L2_2 == nil then
    L3_2 = log3
    L4_2 = "!!!!! tutorial is nil !!!!"
    L3_2(L4_2)
    return
  end
  L3_2 = hasTutorialTriggered
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = log3
    L4_2 = "Tutorial has trigered"
    L5_2 = L2_2.id
    L3_2(L4_2, L5_2)
    L3_2 = L2_2.id
    activeTutorialId = L3_2
    L3_2 = L2_2.coachTest
    if L3_2 == true then
      L3_2 = mainPlayer
      L3_2 = L3_2.coachTest
      if L3_2 ~= true then
        L3_2 = L2_2.delay
        if L3_2 then
          L2_2.delay = 0
        end
      end
    end
    L3_2 = L2_2.delay
    if L3_2 then
      L3_2 = L2_2.delay
      if 0 < L3_2 then
        L3_2 = timer
        L3_2 = L3_2.performWithDelay
        L4_2 = L2_2.delay
        
        function L5_2()
          local L0_3, L1_3, L2_3, L3_3
          L0_3 = processTutorial
          L1_3 = L2_2
          L2_3 = A0_2
          L3_3 = A1_2
          L0_3(L1_3, L2_3, L3_3)
        end
        
        L6_2 = 1
        L3_2(L4_2, L5_2, L6_2)
    end
    else
      L3_2 = processTutorial
      L4_2 = L2_2
      L5_2 = A0_2
      L6_2 = A1_2
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end

checkForTutorial = L10_1

function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = tutorialStepComplete
    L1_3 = A1_2
    L2_3 = A2_2
    L0_3(L1_3, L2_3)
  end
  
  L4_2 = mainPlayer
  L4_2 = L4_2.heroTutorialAtLevelFour
  if L4_2 ~= true then
    L4_2 = A0_2.heroTutorialAfterLevelFour
    if L4_2 then
      L4_2 = L3_2
      L4_2()
      return
    end
  end
  L4_2 = mainPlayer
  L4_2 = L4_2.heroTutorialAfterSecondQuest
  if not L4_2 then
    L4_2 = mainPlayer
    L4_2 = L4_2.heroTutorialAtLevelFour
    if not L4_2 then
      goto lbl_28
    end
  end
  L4_2 = A0_2.mustBeIgnoredOnHeroTutorialOnSecondQuest
  if L4_2 then
    L4_2 = L3_2
    L4_2()
    return
  end
  ::lbl_28::
  L4_2 = mainPlayer
  L4_2 = L4_2.heroTutorialAfterSecondQuest
  if L4_2 ~= true then
    L4_2 = A0_2.heroTutorialAfterSecondQuest
    if L4_2 then
      L4_2 = L3_2
      L4_2()
      return
    end
  end
  L4_2 = mainPlayer
  L4_2 = L4_2.showTaskUntilLevelUp
  if L4_2 ~= true then
    L4_2 = A0_2.levelUpTest
    if L4_2 then
      L4_2 = L3_2
      L4_2()
      return
    end
  end
  L4_2 = mainPlayer
  L4_2 = L4_2.coachTest
  if L4_2 ~= true then
    L4_2 = A0_2.coachTest
    if L4_2 then
      L4_2 = L3_2
      L4_2()
      return
    end
  end
  L4_2 = mainPlayer
  L4_2 = L4_2.fasterLevelUp
  if L4_2 == true then
    L4_2 = A0_2.skip
    if L4_2 then
      L4_2 = L3_2
      L4_2()
      return
    end
  end
  L4_2 = mainPlayer
  L4_2 = L4_2.betterLeagueTutorial
  if L4_2 == false then
    L4_2 = A0_2.skipLeagueTutorialTest
    if L4_2 then
      L4_2 = L3_2
      L4_2()
      return
    end
  end
  L4_2 = mainPlayer
  L4_2 = L4_2.betterLeagueTutorial
  if L4_2 == true then
    L4_2 = A0_2.skipLeagueTutorial
    if L4_2 then
      L4_2 = L3_2
      L4_2()
      return
    end
  end
  L4_2 = A0_2.type
  if L4_2 == "informative" then
    L4_2 = A0_2.key
    if L4_2 and A2_2 then
      L4_2 = A0_2.key
      L4_2 = A2_2[L4_2]
      if L4_2 then
        L5_2 = L4_2
        L6_2 = A2_2
        L5_2(L6_2)
      end
      L5_2 = timer
      L5_2 = L5_2.performWithDelay
      L6_2 = 900
      
      function L7_2()
        local L0_3, L1_3, L2_3
        L0_3 = processInformativeTutorial
        L1_3 = A0_2
        L2_3 = L3_2
        L0_3(L1_3, L2_3)
      end
      
      L5_2(L6_2, L7_2)
    else
      L4_2 = processInformativeTutorial
      L5_2 = A0_2
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
  else
    L4_2 = A0_2.type
    if L4_2 == "action" then
      if A2_2 then
        L4_2 = A0_2.key
        L4_2 = A2_2[L4_2]
        if L4_2 then
          L5_2 = L4_2
          L6_2 = A2_2
          L7_2 = A0_2
          L8_2 = L3_2
          L5_2(L6_2, L7_2, L8_2)
        else
          L5_2 = L3_2
          L5_2()
        end
      else
        L4_2 = L3_2
        L4_2()
      end
    else
      L4_2 = A0_2.type
      if L4_2 == "scene" then
        L4_2 = L3_2
        L4_2()
        L4_2 = L3_1
        L4_2 = L4_2.gotoScene
        L5_2 = A0_2.name
        L6_2 = {}
        L7_2 = A0_2.params
        L6_2.params = L7_2
        L4_2(L5_2, L6_2)
      else
        L4_2 = A0_2.type
        if L4_2 == "overlay" then
          L4_2 = A0_2.params
          if not L4_2 then
            L4_2 = {}
          end
          L4_2.completionCallback = L3_2
          L5_2 = L3_1
          L5_2 = L5_2.showOverlay
          L6_2 = A0_2.name
          L7_2 = {}
          L7_2.params = L4_2
          L5_2(L6_2, L7_2)
        else
          L4_2 = A0_2.type
          if L4_2 == "sound" then
            L4_2 = L4_1
            L4_2 = L4_2.playEffect
            L5_2 = Constants
            L5_2 = L5_2.Path_Assets
            L6_2 = A0_2.name
            L5_2 = L5_2 .. L6_2
            L4_2(L5_2)
            L4_2 = timer
            L4_2 = L4_2.performWithDelay
            L5_2 = A0_2.length
            L6_2 = L3_2
            L7_2 = 1
            L4_2(L5_2, L6_2, L7_2)
          else
            L4_2 = A0_2.type
            if L4_2 == "task" then
              L4_2 = L2_1
              L5_2 = A0_2.key
              L4_2 = L4_2[L5_2]
              if L4_2 then
                L5_2 = localisedStringsForStep
                L6_2 = A0_2
                L5_2 = L5_2(L6_2)
                A0_2.taskText = L5_2
                L5_2 = L4_2
                L6_2 = L2_1
                L7_2 = A0_2
                L5_2(L6_2, L7_2)
              end
              L5_2 = timer
              L5_2 = L5_2.performWithDelay
              L6_2 = 10
              L7_2 = L3_2
              L8_2 = 1
              L5_2(L6_2, L7_2, L8_2)
            else
              L4_2 = A0_2.type
              if L4_2 == "dialog" then
                L4_2 = L1_1
                L5_2 = A0_2.key
                L4_2 = L4_2[L5_2]
                if L4_2 then
                  L5_2 = L4_2
                  L6_2 = L7_1
                  L7_2 = L1_1
                  L8_2 = A0_2
                  L5_2(L6_2, L7_2, L8_2)
                end
              else
                L4_2 = L3_2
                L4_2()
              end
            end
          end
        end
      end
    end
  end
end

processTutorial = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L9_1
  L3_2 = A0_2.image
  L2_2 = L2_2[L3_2]
  if L2_2 == nil then
    L3_2 = errorLog
    L4_2 = "Couldn't find the image data for the given tutorial step"
    L5_2 = tutorialIndex
    L6_2 = tutorialId
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A1_2
    L3_2()
    return
  end
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = {}
  L6_2 = "Tutorial Dialog "
  L7_2 = A0_2.id
  L6_2 = L6_2 .. L7_2
  L5_2.id = L6_2
  L6_2 = localisedStringsForStep
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L5_2.texts = L6_2
  L6_2 = A0_2.dir
  L5_2.mentorAlignment = L6_2
  L6_2 = A0_2.size
  L5_2.mode = L6_2
  L6_2 = A0_2.mentorDelay
  L5_2.delay = L6_2
  L6_2 = A0_2.dialogHasButton
  L5_2.hasButton = L6_2
  L6_2 = A0_2.labelOfDialogButton
  L5_2.buttonLabel = L6_2
  L6_2 = A0_2.isDialogBackInteractive
  L5_2.isBackInteractive = L6_2
  L6_2 = A0_2.isComplete
  L5_2.isComplete = L6_2
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = L2_2.image
  L6_2 = L6_2 .. L7_2
  L5_2.mentorImage = L6_2
  L6_2 = L2_2.imageWidth
  L5_2.mentorWidth = L6_2
  L6_2 = L2_2.imageHeight
  L5_2.mentorHeight = L6_2
  L5_2.callBackFunction = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L7_1 = L3_2
end

processInformativeTutorial = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L8_1
  L2_2 = tutorialIndex
  L1_2 = L1_2[L2_2]
  if L1_2 == nil then
    return
  end
  
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = L1_2
    L0_3 = L0_3.level
    if L0_3 then
      L0_3 = L1_2
      L0_3 = L0_3.level
      L1_3 = mainPlayer
      L1_3 = L1_3.level
      if L0_3 < L1_3 then
        L0_3 = L1_2
        L0_3 = L0_3.essential
        if L0_3 ~= true then
          L0_3 = log3
          L1_3 = "current tutorial was less than mainplayer level"
          L0_3(L1_3)
          L0_3 = indexForStepMatchingPlayerLevel
          L0_3 = L0_3()
          tutorialIndex = L0_3
          L0_3 = log3
          L1_3 = "new tutorial index"
          L2_3 = tutorialIndex
          L0_3(L1_3, L2_3)
          L0_3 = L8_1
          L1_3 = tutorialIndex
          L0_3 = L0_3[L1_3]
          L1_2 = L0_3
          L0_3 = true
          return L0_3
        end
      end
    end
    L0_3 = false
    return L0_3
  end
  
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = L1_2
    if L0_3 then
      L0_3 = L1_2
      L0_3 = L0_3.sequenceStart
      if L0_3 then
        L0_3 = log3
        L1_3 = "reseting current tutorial to sequence start"
        L2_3 = L1_2
        L2_3 = L2_3.sequenceStart
        L0_3(L1_3, L2_3)
        L0_3 = indexForStepWithId
        L1_3 = L1_2
        L1_3 = L1_3.sequenceStart
        L0_3 = L0_3(L1_3)
        tutorialIndex = L0_3
      end
    end
  end
  
  L4_2 = isPostLaunch
  if L4_2 then
    L4_2 = false
    isPostLaunch = L4_2
    L4_2 = L1_2.id
    L5_2 = tutorialId
    if L4_2 ~= L5_2 then
      L4_2 = log3
      L5_2 = "current tutorial id didn't match stored tutorialId"
      L6_2 = L1_2.id
      L7_2 = "tutoriqal Id"
      L8_2 = tutorialId
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L4_2 = indexForStepWithId
      L5_2 = tutorialId
      L4_2 = L4_2(L5_2)
      tutorialIndex = L4_2
      L4_2 = log3
      L5_2 = "new tutorial index"
      L6_2 = tutorialIndex
      L4_2(L5_2, L6_2)
      L4_2 = L8_1
      L5_2 = tutorialIndex
      L1_2 = L4_2[L5_2]
      L4_2 = log3
      L5_2 = "currentTutorialID"
      L6_2 = L1_2.id
      L4_2(L5_2, L6_2)
    end
    L4_2 = L2_2
    L4_2()
    L4_2 = L3_2
    L4_2()
  else
    L4_2 = L2_2
    L4_2 = L4_2()
    if L4_2 then
      L5_2 = L3_2
      L5_2()
    end
  end
end

checkAndUpdateIndex = L10_1

function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = ignoreLevelTriggerLimit
  if L0_2 then
    L0_2 = tutorialIndex
    return L0_2
  end
  L0_2 = ipairs
  L1_2 = L8_1
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = L4_2.level
    if L5_2 then
      L5_2 = L4_2.level
      L6_2 = mainPlayer
      L6_2 = L6_2.level
      if L5_2 >= L6_2 then
        goto lbl_21
      end
    end
    L5_2 = L4_2.essential
    if L5_2 == true then
      ::lbl_21::
      return L3_2
    else
      L5_2 = L4_2.level
      if L5_2 == nil then
        return L3_2
      end
    end
  end
  L0_2 = log3
  L1_2 = "The player's level is higher than all tutorial steps."
  L0_2(L1_2)
  L0_2 = L8_1
  L0_2 = #L0_2
  L0_2 = L0_2 + 1
  return L0_2
end

indexForStepMatchingPlayerLevel = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ipairs
  L2_2 = L8_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.id
    if L6_2 == A0_2 then
      return L4_2
    end
  end
  L1_2 = errorLog
  L2_2 = "Couldn't find tutorial index to match id:"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = tutorialIndex
  return L1_2
end

indexForStepWithId = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = log3
  L3_2 = "tutorial step complete called"
  L2_2(L3_2)
  L2_2 = nil
  activeTutorialId = L2_2
  L2_2 = increaseTutorialIndex
  L2_2()
  L2_2 = checkForTutorial
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

tutorialStepComplete = L10_1

function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = tutorialIndex
  L0_2 = L0_2 + 1
  tutorialIndex = L0_2
  L0_2 = L8_1
  L1_2 = tutorialIndex
  L0_2 = L0_2[L1_2]
  if L0_2 then
    L1_2 = L0_2.id
    if L1_2 then
      L1_2 = L0_2.id
      tutorialId = L1_2
    end
  end
  if L0_2 then
    L1_2 = mainPlayer
    L1_2 = L1_2.sendAllTutorialSteps
    if not L1_2 then
      L1_2 = L0_2.sequenceStart
      if L1_2 ~= nil then
        goto lbl_44
      end
    end
    L1_2 = {}
    L2_2 = {}
    L3_2 = tutorialId
    L2_2.id = L3_2
    L3_2 = tutorialIndex
    L2_2.index = L3_2
    L1_2.body = L2_2
    L2_2 = network
    L2_2 = L2_2.request
    L3_2 = Constants
    L3_2 = L3_2.API_Path
    L4_2 = Constants
    L4_2 = L4_2.API_TutorialStateSet
    L3_2 = L3_2 .. L4_2
    L4_2 = "POST"
    
    function L5_2()
      local L0_3, L1_3
      L0_3 = log3
      L1_3 = "updated tutorial index and id"
      L0_3(L1_3)
    end
    
    L6_2 = L1_2
    L7_2 = "update tutorial index"
    L8_2 = nil
    
    function L9_2(A0_3)
      local L1_3, L2_3
      L1_3 = errorLog
      L2_3 = A0_3
      L1_3(L2_3)
    end
    
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  end
  ::lbl_44::
end

increaseTutorialIndex = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = mainPlayer
  L2_2 = L2_2.heroTutorialAtLevelFour
  if L2_2 ~= true then
    L2_2 = A0_2.heroTutorialAfterLevelFour
    if L2_2 then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = mainPlayer
  L2_2 = L2_2.heroTutorialAfterSecondQuest
  if L2_2 then
    L2_2 = A0_2.mustBeIgnoredOnHeroTutorialOnSecondQuest
    if L2_2 then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = mainPlayer
  L2_2 = L2_2.heroTutorialAfterSecondQuest
  if L2_2 ~= true then
    L2_2 = A0_2.heroTutorialAfterSecondQuest
    if L2_2 then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = mainPlayer
  L2_2 = L2_2.showTaskUntilLevelUp
  if L2_2 ~= true then
    L2_2 = A0_2.levelUpTest
    if L2_2 then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = mainPlayer
  L2_2 = L2_2.coachTest
  if L2_2 ~= true then
    L2_2 = A0_2.coachTest
    if L2_2 then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = mainPlayer
  L2_2 = L2_2.fasterLevelUp
  if L2_2 then
    L2_2 = A0_2.skip
    if L2_2 then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = mainPlayer
  L2_2 = L2_2.betterLeagueTutorial
  if L2_2 == false then
    L2_2 = A0_2.skipLeagueTutorialTest
    if L2_2 then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = mainPlayer
  L2_2 = L2_2.betterLeagueTutorial
  if L2_2 == true then
    L2_2 = A0_2.skipLeagueTutorial
    if L2_2 then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = mainPlayer
  L2_2 = L2_2.heroTutorialAfterSecondQuest
  if L2_2 then
    L2_2 = A0_2.testLevel
    if L2_2 then
      L2_2 = A0_2.testLevel
      A0_2.level = L2_2
    end
  end
  L2_2 = A0_2.level
  if L2_2 ~= nil then
    L2_2 = A0_2.level
    L3_2 = mainPlayer
    L3_2 = L3_2.level
    if not (L2_2 <= L3_2) then
      L2_2 = ignoreLevelTriggerLimit
      if not L2_2 then
        goto lbl_101
      end
    end
  end
  L2_2 = A0_2.scene
  if L2_2 ~= nil then
    L2_2 = A0_2.scene
    if L2_2 ~= A1_2 then
      goto lbl_101
    end
  end
  L2_2 = true
  do return L2_2 end
  ::lbl_101::
  L2_2 = false
  return L2_2
end

hasTutorialTriggered = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.text
  if L1_2 then
    L1_2 = nil
    L2_2 = L0_1
    L2_2 = L2_2.dataWithName
    L3_2 = "TutorialLanguage_"
    L4_2 = L5_1
    L4_2 = L4_2.lang
    L3_2 = L3_2 .. L4_2
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2.type
    if L3_2 == "task" then
      L1_2 = L2_2.tasks
      L3_2 = A0_2.text
      L3_2 = L1_2[L3_2]
      if L3_2 then
        L3_2 = A0_2.text
        L3_2 = L1_2[L3_2]
        return L3_2
      else
        L3_2 = warningLog
        L4_2 = "Localised tutorial text not found for:"
        L5_2 = A0_2.text
        L3_2(L4_2, L5_2)
        L3_2 = A0_2.text
        return L3_2
      end
    else
      L1_2 = L2_2.text
      L3_2 = {}
      L4_2 = ipairs
      L5_2 = A0_2.text
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L9_2 = L1_2[L8_2]
        if L9_2 then
          L9_2 = L1_2[L8_2]
          L3_2[L7_2] = L9_2
        else
          L9_2 = warningLog
          L10_2 = "Localised tutorial text not found for:"
          L11_2 = L8_2
          L9_2(L10_2, L11_2)
          L3_2[L7_2] = L8_2
        end
      end
      return L3_2
    end
  end
end

localisedStringsForStep = L10_1

function L10_1(A0_2, A1_2)
  local L2_2
  if A0_2 and 0 < A0_2 then
    L2_2 = A1_2 or L2_2
    if not A1_2 then
      L2_2 = tutorialIndex
    end
    tutorialIndex = L2_2
    L2_2 = A0_2 or L2_2
    if not A0_2 then
      L2_2 = tutorialId
    end
    tutorialId = L2_2
  else
    L2_2 = 1
    tutorialIndex = L2_2
    L2_2 = 50
    tutorialId = L2_2
  end
end

updateTutorialIndexAndId = L10_1

function L10_1()
  local L0_2, L1_2, L2_2
  L0_2 = L1_1
  L0_2 = L0_2.removeCurrentDialog
  L0_2()
  L0_2 = L2_1
  L1_2 = L0_2
  L0_2 = L0_2.hide
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = nil
  activeTutorialId = L0_2
  L0_2 = true
  isPostLaunch = L0_2
end

resetTutorialState = L10_1

function L10_1()
  local L0_2, L1_2, L2_2
  L0_2 = L8_1
  L1_2 = tutorialIndex
  L0_2 = L0_2[L1_2]
  while L0_2 do
    L1_2 = L0_2.sequenceStart
    if not L1_2 then
      break
    end
    L1_2 = tutorialIndex
    L1_2 = L1_2 + 1
    tutorialIndex = L1_2
    L1_2 = L8_1
    L2_2 = tutorialIndex
    L0_2 = L1_2[L2_2]
  end
end

goToNextStepAfterCurrentSequence = L10_1
