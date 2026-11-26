local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Components.TDIntroductionStory"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Components.TDButtonView"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Language"
L3_1 = L3_1(L4_1)
L4_1 = L0_1.newScene
L4_1 = L4_1()
L5_1 = nil
L6_1 = nil
L7_1 = nil
L8_1 = nil
L9_1 = nil
L10_1 = nil

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A0_2.view
  L3_2 = A1_2.params
  if L3_2 then
    L3_2 = A1_2.params
    L3_2 = L3_2.completionCallback
    if L3_2 then
      L3_2 = A1_2.params
      L3_2 = L3_2.completionCallback
      L10_1 = L3_2
    end
  end
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = A0_2.view
  L5_2 = display
  L5_2 = L5_2.contentCenterX
  L6_2 = display
  L6_2 = L6_2.contentCenterY
  L7_2 = 570
  L8_2 = 360
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L8_1 = L3_2
  L3_2 = L8_1
  L3_2.alpha = 0
  L3_2 = L8_1
  L3_2.isHitTestable = true
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = L9_1
      if L1_3 == nil then
        L1_3 = L2_1
        L2_3 = L1_3
        L1_3 = L1_3.new
        L3_3 = {}
        L4_3 = L3_1
        L4_3 = L4_3["Skip Movie"]
        L3_3.label = L4_3
        L3_3.width = 104
        L3_3.height = 33
        L4_3 = Constants
        L4_3 = L4_3.Path_Assets
        L5_3 = "BattleItems/battle_outcome_button.png"
        L4_3 = L4_3 .. L5_3
        L3_3.defaultFile = L4_3
        L4_3 = Constants
        L4_3 = L4_3.Path_Assets
        L5_3 = "BattleItems/battle_outcome_button-pressed.png"
        L4_3 = L4_3 .. L5_3
        L3_3.overFile = L4_3
        
        function L4_3()
          local L0_4, L1_4
          L0_4 = L10_1
          if L0_4 then
            L0_4 = L10_1
            L0_4()
            L0_4 = nil
            L10_1 = L0_4
          end
          L0_4 = L0_1
          L0_4 = L0_4.hideOverlay
          L0_4()
        end
        
        L3_3.onRelease = L4_3
        L1_3 = L1_3(L2_3, L3_3)
        L9_1 = L1_3
        L1_3 = A0_2
        L1_3 = L1_3.view
        L2_3 = L1_3
        L1_3 = L1_3.insert
        L3_3 = L9_1
        L3_3 = L3_3.view
        L1_3(L2_3, L3_3)
        L1_3 = L9_1
        L2_3 = L9_1
        L2_3 = L2_3.width
        L2_3 = L2_3 / 2
        L2_3 = 15 + L2_3
        L1_3.x = L2_3
        L1_3 = L9_1
        L2_3 = L9_1
        L2_3 = L2_3.height
        L2_3 = L2_3 / 2
        L2_3 = 15 + L2_3
        L1_3.y = L2_3
        L1_3 = L9_1
        L2_3 = L1_3
        L1_3 = L1_3.toFront
        L1_3(L2_3)
      end
    end
  end
  
  L4_2 = L8_1
  L5_2 = L4_2
  L4_2 = L4_2.addEventListener
  L6_2 = "touch"
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "IntroStory/slide_"
  L4_2 = L4_2 .. L5_2
  L5_2 = {}
  L6_2 = 1
  L7_2 = 26000
  L8_2 = 19000
  L9_2 = 10000
  L10_2 = 6000
  L11_2 = 12000
  L12_2 = 23000
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L5_2[5] = L10_2
  L5_2[6] = L11_2
  L5_2[7] = L12_2
  L6_2 = {}
  L7_2 = L4_2
  L8_2 = "1.jpg"
  L7_2 = L7_2 .. L8_2
  L8_2 = L4_2
  L9_2 = "2.jpg"
  L8_2 = L8_2 .. L9_2
  L9_2 = L4_2
  L10_2 = "3.jpg"
  L9_2 = L9_2 .. L10_2
  L10_2 = L4_2
  L11_2 = "4.jpg"
  L10_2 = L10_2 .. L11_2
  L11_2 = L4_2
  L12_2 = "5.jpg"
  L11_2 = L11_2 .. L12_2
  L12_2 = L4_2
  L13_2 = "6.jpg"
  L12_2 = L12_2 .. L13_2
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L6_2[5] = L11_2
  L6_2[6] = L12_2
  L7_2 = {}
  L7_2.delayBeforShowImage = L5_2
  L7_2.imageAddress = L6_2
  L7_2.nextScene = "Scenes.TutorialStartScene"
  L8_2 = A1_2.params
  L8_2 = L8_2.completionCallback
  L7_2.completionCallback = L8_2
  L8_2 = {}
  L8_2.baseAnimate = "@film"
  L9_2 = {}
  L10_2 = "@noise_1"
  L11_2 = "@noise_2"
  L12_2 = "@noise_3"
  L13_2 = "@noise_4"
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L9_2[4] = L13_2
  L8_2.addAnimates = L9_2
  L9_2 = {}
  L10_2 = 1
  L11_2 = 1
  L12_2 = 1
  L13_2 = 1
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L9_2[4] = L13_2
  L8_2.trackIndex = L9_2
  L8_2.picturesPath = "IntroStory/Noises/"
  L8_2.jsonPath = "Json/intro.json"
  L8_2.makeRandomAnimate = true
  L9_2 = {}
  L10_2 = 1000
  L9_2[1] = L10_2
  L8_2.delayBeforeChangeAnimation = L9_2
  L8_2.addedAnimationsLoop = false
  L9_2 = L1_1
  L10_2 = L9_2
  L9_2 = L9_2.manageMovie
  L11_2 = L7_2
  L12_2 = L8_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L5_1 = L9_2
  L10_2 = L2_2
  L9_2 = L2_2.insert
  L11_2 = L5_1
  L11_2 = L11_2.view
  L9_2(L10_2, L11_2)
  L9_2 = audio
  L9_2 = L9_2.loadStream
  L10_2 = Constants
  L10_2 = L10_2.Path_Assets
  L11_2 = "FC-intro.mp3"
  L10_2 = L10_2 .. L11_2
  L9_2 = L9_2(L10_2)
  L7_1 = L9_2
  L9_2 = audio
  L9_2 = L9_2.play
  L10_2 = L7_1
  L11_2 = {}
  L11_2.fadein = 100
  L9_2 = L9_2(L10_2, L11_2)
  L6_1 = L9_2
  L9_2 = L8_1
  L10_2 = L9_2
  L9_2 = L9_2.toFront
  L9_2(L10_2)
end

L4_1.create = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = audio
    L4_2 = L4_2.stop
    L5_2 = L6_1
    L4_2(L5_2)
    L4_2 = audio
    L4_2 = L4_2.dispose
    L5_2 = L7_1
    L4_2(L5_2)
    L4_2 = L5_1
    L4_2 = L4_2.exitStorySceneFrame
    L4_2()
    L4_2 = require
    L5_2 = "Components.AudioManager"
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2.playMusic
    L6_2 = Constants
    L6_2 = L6_2.Path_Assets
    L7_2 = "FC-bg-music.mp3"
    L6_2 = L6_2 .. L7_2
    L5_2(L6_2)
  end
end

L4_1.hide = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L5_1
  L3_2 = L2_2
  L2_2 = L2_2.removeSelf
  L2_2(L3_2)
  L2_2 = nil
  L5_1 = L2_2
  L2_2 = display
  L2_2 = L2_2.remove
  L3_2 = L8_1
  L2_2(L3_2)
  L2_2 = display
  L2_2 = L2_2.remove
  L3_2 = L9_1
  L2_2(L3_2)
  L2_2 = nil
  L8_1 = L2_2
  L2_2 = nil
  L9_1 = L2_2
end

L4_1.destroy = L11_1
L12_1 = L4_1
L11_1 = L4_1.addEventListener
L13_1 = "create"
L14_1 = L4_1
L11_1(L12_1, L13_1, L14_1)
L12_1 = L4_1
L11_1 = L4_1.addEventListener
L13_1 = "hide"
L14_1 = L4_1
L11_1(L12_1, L13_1, L14_1)
L12_1 = L4_1
L11_1 = L4_1.addEventListener
L13_1 = "destroy"
L14_1 = L4_1
L11_1(L12_1, L13_1, L14_1)
return L4_1
