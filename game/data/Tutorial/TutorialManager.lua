local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Tutorial.VerticalOverlayView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Tutorial.HorizontalOverlayView"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Constants"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "composer"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Language"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.NotificationView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Utils.Analytics"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Models.Card"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Views.EffectsManager"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Models.AchievementManager"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Components.TDDialogView"
L10_1 = L10_1(L11_1)

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = mainPlayer
  L2_2 = L1_2
  L1_2 = L1_2.setSettingForKey
  L3_2 = A0_2
  L4_2 = "TutorialFinished"
  L3_2 = L3_2 .. L4_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = mainPlayer
  L2_2 = L1_2
  L1_2 = L1_2.setSettingForKey
  L3_2 = "isShowingTutorial"
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = mainPlayer
  L2_2 = L1_2
  L1_2 = L1_2.setSettingForKey
  L3_2 = "activeTutorial"
  L4_2 = nil
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = mainPlayer
  L2_2 = L1_2
  L1_2 = L1_2.setSettingForKey
  L3_2 = "activeTutorialState"
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
  if A0_2 == "liveBattle" then
    L1_2 = mainPlayer
    L2_2 = L1_2
    L1_2 = L1_2.setSettingForKey
    L3_2 = "liveBattleIsOn"
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = L9_1
    L1_2 = L1_2.registerAchievementsWithId
    L2_2 = 150
    L1_2(L2_2)
  end
  L1_2 = mainPlayer
  L2_2 = L1_2
  L1_2 = L1_2.saveSettings
  L1_2(L2_2)
end

finishedTutorial = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = log3
  L2_2 = "!!!!!! start tutorial !!!!!!!!"
  L1_2(L2_2)
  L1_2 = mainPlayer
  L2_2 = L1_2
  L1_2 = L1_2.setSettingForKey
  L3_2 = "isShowingTutorial"
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = mainPlayer
  L2_2 = L1_2
  L1_2 = L1_2.setSettingForKey
  L3_2 = "activeTutorial"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = mainPlayer
  L2_2 = L1_2
  L1_2 = L1_2.setSettingForKey
  L3_2 = "activeTutorialState"
  L4_2 = 1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = mainPlayer
  L2_2 = L1_2
  L1_2 = L1_2.saveSettings
  L1_2(L2_2)
end

startTutorial = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = log3
  L3_2 = "!!!!!! start tutorial !!!!!!!!"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = mainPlayer
  L3_2 = L2_2
  L2_2 = L2_2.setSettingForKey
  L4_2 = "isShowingTutorial"
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = mainPlayer
  L3_2 = L2_2
  L2_2 = L2_2.setSettingForKey
  L4_2 = "activeTutorial"
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = mainPlayer
  L3_2 = L2_2
  L2_2 = L2_2.setSettingForKey
  L4_2 = "activeTutorialState"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = mainPlayer
  L3_2 = L2_2
  L2_2 = L2_2.saveSettings
  L2_2(L3_2)
end

startTutorialWithInitialState = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = log3
  L2_2 = "Check for tutoriaal called !!!!!!!!"
  L1_2(L2_2)
  L1_2 = L3_1
  L1_2 = L1_2.getScene
  L2_2 = "Scenes."
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2(L2_2)
  L2_2 = mainPlayer
  L2_2 = L2_2.settings
  L2_2 = L2_2.activeTutorial
  L3_2 = mainPlayer
  L3_2 = L3_2.settings
  L3_2 = L3_2.activeTutorialState
  L4_2 = mainPlayer
  L4_2 = L4_2.settings
  L4_2 = L4_2.isShowingTutorial
  if L4_2 == true then
    L4_2 = nil
    _backAction = L4_2
    if L3_2 == "goBackHome" then
      L5_2 = L1_2
      L4_2 = L1_2.startTutorialSequence
      L6_2 = "goBackHome"
      L4_2(L5_2, L6_2)
      if A0_2 == "Home" then
        L4_2 = finishedTutorial
        L5_2 = L2_2
        L4_2(L5_2)
      end
    end
    if L2_2 == "liveBattle" then
      L4_2 = log3
      L5_2 = "active Tutorial is liveBattle in CheckForTutorial"
      L4_2(L5_2)
      L5_2 = L1_2
      L4_2 = L1_2.startTutorialSequence
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    elseif L2_2 == "profile" and L1_2 then
      L5_2 = L1_2
      L4_2 = L1_2.startTutorialSequence
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
  elseif A0_2 == "Home" then
    L4_2 = L3_1
    L4_2 = L4_2.getScene
    L5_2 = "Scenes.Home"
    L4_2 = L4_2(L5_2)
    L5_2 = mainPlayer
    L5_2 = L5_2.settings
    L5_2 = L5_2.liveBattleTutorialFinished
    if L5_2 ~= false then
      L5_2 = mainPlayer
      L5_2 = L5_2.settings
      L5_2 = L5_2.liveBattleTutorialFinished
      if L5_2 ~= nil then
        goto lbl_95
      end
    end
    L5_2 = mainPlayer
    L5_2 = L5_2.level
    L6_2 = L2_1
    L6_2 = L6_2.UnlockLevel_LiveBattle
    if L5_2 >= L6_2 then
      L5_2 = L10_1
      L6_2 = L5_2
      L5_2 = L5_2.new
      L7_2 = {}
      L7_2.id = "Tutorial Dialog "
      L8_2 = {}
      L9_2 = L4_1
      L9_2 = L9_2["LiveBattle Greetings"]
      L8_2[1] = L9_2
      L7_2.texts = L8_2
      L7_2.mentorAlignment = "right"
      L7_2.mode = "full"
      L8_2 = L2_1
      L8_2 = L8_2.Path_Assets
      L9_2 = "Tutorial/FC-Sarhang.png"
      L8_2 = L8_2 .. L9_2
      L7_2.mentorImage = L8_2
      L7_2.mentorWidth = 111
      L7_2.mentorHeight = 115
      
      function L8_2()
        local L0_3, L1_3, L2_3
        L0_3 = startTutorialWithInitialState
        L1_3 = "liveBattle"
        L2_3 = "liveBattleState1"
        L0_3(L1_3, L2_3)
        L0_3 = L3_1
        L0_3 = L0_3.gotoScene
        L1_3 = "Scenes.Battle"
        L0_3(L1_3)
      end
      
      L7_2.callBackFunction = L8_2
      L5_2(L6_2, L7_2)
      goto lbl_112
      ::lbl_95::
      L5_2 = mainPlayer
      L5_2 = L5_2.settings
      L5_2 = L5_2.profileTutorialFinished
      if L5_2 ~= false then
        L5_2 = mainPlayer
        L5_2 = L5_2.settings
        L5_2 = L5_2.profileTutorialFinished
        if L5_2 ~= nil then
          goto lbl_112
        end
      end
      L5_2 = startTutorialWithInitialState
      L6_2 = "profile"
      L7_2 = "showProfile"
      L5_2(L6_2, L7_2)
      L6_2 = L4_2
      L5_2 = L4_2.startTutorialSequence
      L7_2 = "showProfile"
      L5_2(L6_2, L7_2)
    end
  end
  ::lbl_112::
end

checkForTutorial = L11_1

function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  _backAction = L0_2
  L0_2 = startTutorial
  L1_2 = "start"
  L0_2(L1_2)
  L0_2 = L3_1
  L0_2 = L0_2.hideOverlay
  L0_2()
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "activeTutorialState"
  L3_2 = "showcaseCards"
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.saveSettings
  L0_2(L1_2)
  L0_2 = L0_1
  L1_2 = L0_2
  L0_2 = L0_2.new
  L2_2 = L4_1
  L2_2 = L2_2.Fruitcraft
  L3_2 = L4_1
  L3_2 = L3_2["Tutorial intro text"]
  L4_2 = "center"
  L5_2 = 0.19607843137254902
  L6_2 = L2_1
  L6_2 = L6_2.Path_MentorImage
  L7_2 = L4_1
  L7_2 = L7_2.Continue
  
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L0_3 = log2
    L1_3 = "Going to start tutorial"
    L0_3(L1_3)
    L0_3 = L6_1
    L0_3 = L0_3.logEvent
    L1_3 = "Tutorial Started"
    L0_3(L1_3)
    L0_3 = L0_1
    L1_3 = L0_3
    L0_3 = L0_3.new
    L2_3 = L4_1
    L2_3 = L2_3.Fruitcraft
    L3_3 = L4_1
    L3_3 = L3_3["Game aim"]
    L4_3 = "center"
    L5_3 = 0.19607843137254902
    L6_3 = L2_1
    L6_3 = L6_3.Path_MentorImage
    L7_3 = L4_1
    L7_3 = L7_3.Continue
    
    function L8_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4
      L0_4 = L0_1
      L1_4 = L0_4
      L0_4 = L0_4.new
      L2_4 = L4_1
      L2_4 = L2_4.Fruitcraft
      L3_4 = L4_1
      L3_4 = L3_4["Game mechanics"]
      L4_4 = "center"
      L5_4 = 0.19607843137254902
      L6_4 = L2_1
      L6_4 = L6_4.Path_MentorImage
      L7_4 = L4_1
      L7_4 = L7_4.Continue
      
      function L8_4()
        local L0_5, L1_5, L2_5, L3_5, L4_5
        L0_5 = L3_1
        L0_5 = L0_5.getSceneName
        L1_5 = "current"
        L0_5 = L0_5(L1_5)
        if L0_5 == "Scenes.Home" then
          L1_5 = L3_1
          L1_5 = L1_5.getScene
          L2_5 = "Scenes.Home"
          L1_5 = L1_5(L2_5)
          L3_5 = L1_5
          L2_5 = L1_5.startTutorialSequence
          L4_5 = "showcaseCards"
          L2_5(L3_5, L4_5)
        else
          L1_5 = L3_1
          L1_5 = L1_5.gotoScene
          L2_5 = "Scenes.Home"
          L1_5(L2_5)
        end
      end
      
      L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4)
    end
    
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
  end
  
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end

startNewPlayerTutorial = L11_1

function L11_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "isShowingTutorial"
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "activeTutorial"
  L3_2 = nil
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "activeTutorialState"
  L3_2 = 0
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "enhanceTutorialFinished"
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "startTutorialFinished"
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "mineTutorialFinished"
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "shopTutorialFinished"
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "battleTutorialFinished"
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "questTutorialFinished"
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "auctionTutorialFinished"
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "tribeTutorialFinished"
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "tribeAvTutorialFinished"
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "shopMultiplierTutorialFinished"
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "liveBattleTutorialFinished"
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "leagueTutorialFinished"
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "inviteInputShown"
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.saveSettings
  L0_2(L1_2)
end

resetAllTutorials = L11_1

function L11_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "isShowingTutorial"
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "activeTutorial"
  L3_2 = nil
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "activeTutorialState"
  L3_2 = 0
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "startTutorialFinished"
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "questTutorialFinished"
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = startNewPlayerTutorial
  L0_2()
end

restartStartingTutorial = L11_1

function L11_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "isShowingTutorial"
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "activeTutorial"
  L3_2 = nil
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "activeTutorialState"
  L3_2 = 0
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "startTutorialFinished"
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.setSettingForKey
  L2_2 = "questTutorialFinished"
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = mainPlayer
  L0_2 = L0_2.level
  L1_2 = L2_1
  L1_2 = L1_2.UnlockLevel_Enhance
  if L0_2 > L1_2 then
    L0_2 = mainPlayer
    L1_2 = L0_2
    L0_2 = L0_2.setSettingForKey
    L2_2 = "enhanceTutorialFinished"
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = mainPlayer
  L0_2 = L0_2.level
  L1_2 = L2_1
  L1_2 = L1_2.UnlockLevel_Mine
  if L0_2 > L1_2 then
    L0_2 = mainPlayer
    L1_2 = L0_2
    L0_2 = L0_2.setSettingForKey
    L2_2 = "mineTutorialFinished"
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = mainPlayer
  L0_2 = L0_2.level
  L1_2 = L2_1
  L1_2 = L1_2.UnlockLevel_Auction
  if L0_2 > L1_2 then
    L0_2 = mainPlayer
    L1_2 = L0_2
    L0_2 = L0_2.setSettingForKey
    L2_2 = "auctionTutorialFinished"
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = mainPlayer
  L0_2 = L0_2.level
  L1_2 = L2_1
  L1_2 = L1_2.UnlockLevel_Battle
  if L0_2 > L1_2 then
    L0_2 = mainPlayer
    L1_2 = L0_2
    L0_2 = L0_2.setSettingForKey
    L2_2 = "battleTutorialFinished"
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = mainPlayer
  L0_2 = L0_2.level
  L1_2 = L2_1
  L1_2 = L1_2.UnlockLevel_Tribe
  if L0_2 > L1_2 then
    L0_2 = mainPlayer
    L1_2 = L0_2
    L0_2 = L0_2.setSettingForKey
    L2_2 = "tribeAvTutorialFinished"
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = mainPlayer
  L0_2 = L0_2.tribe
  if L0_2 then
    L0_2 = mainPlayer
    L1_2 = L0_2
    L0_2 = L0_2.setSettingForKey
    L2_2 = "tribeTutorialFinished"
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = mainPlayer
  L0_2 = L0_2.level
  if 9 < L0_2 then
    L0_2 = mainPlayer
    L1_2 = L0_2
    L0_2 = L0_2.setSettingForKey
    L2_2 = "shopMultiplierTutorialFinished"
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = mainPlayer
  L0_2 = L0_2.level
  L1_2 = L2_1
  L1_2 = L1_2.UnlockLevel_League
  if L0_2 > L1_2 then
    L0_2 = mainPlayer
    L1_2 = L0_2
    L0_2 = L0_2.setSettingForKey
    L2_2 = "leagueTutorialFinished"
    L3_2 = true
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = mainPlayer
  L1_2 = L0_2
  L0_2 = L0_2.saveSettings
  L0_2(L1_2)
end

recalculateTutorials = L11_1
