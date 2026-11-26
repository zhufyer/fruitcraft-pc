local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.SceneCreator"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "widget"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.NavigationBar"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Language"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.ChatButton"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Utils.Toolbox"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Models.QuestManager"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Tutorial.TutorialManager2"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Views.EffectsManager"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Views.BranchMap"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Tutorial.VerticalOverlayView"
L11_1 = L11_1(L12_1)
L12_1 = L1_1.newScene
L13_1 = "WorldMap"
L12_1 = L12_1(L13_1)
L13_1 = nil
L14_1 = nil
L15_1 = {}
L16_1 = nil
L17_1 = nil
L18_1 = nil
L19_1 = nil
L20_1 = nil
L21_1 = nil
L22_1 = nil
L23_1 = {}
L24_1 = nil

function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L23_1
  L3_2 = L19_1
  L3_2 = L3_2.world
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.nodesView
  L3_2 = L23_1
  L4_2 = L19_1
  L4_2 = L4_2.world
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.connectionsView
  L4_2 = L15_1
  L4_2 = L4_2.branchGroup
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = L23_1
  L7_2 = L19_1
  L7_2 = L7_2.world
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.view
  L4_2(L5_2, L6_2)
  L2_2.alpha = 0
  L3_2.alpha = 0
  L4_2 = 30
  L5_2 = transition
  L5_2 = L5_2.to
  L6_2 = L14_1
  L7_2 = {}
  L7_2.tag = "quest_trans"
  L7_2.alpha = 0.7
  L7_2.xScale = L4_2
  L7_2.yScale = L4_2
  L8_2 = A0_2.target
  L8_2 = L8_2.x
  L9_2 = 1 - L4_2
  L8_2 = L8_2 * L9_2
  L9_2 = A0_2.target
  L9_2 = L9_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L7_2.x = L8_2
  L8_2 = A0_2.target
  L8_2 = L8_2.y
  L9_2 = 1 - L4_2
  L8_2 = L8_2 * L9_2
  L9_2 = A0_2.target
  L9_2 = L9_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L7_2.y = L8_2
  L7_2.time = 810
  
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A1_2
    if L0_3 == 1 then
      L0_3 = display
      L0_3 = L0_3.remove
      L1_3 = L18_1
      L0_3(L1_3)
      L0_3 = display
      L0_3 = L0_3.newImageRect
      L1_3 = Constants
      L1_3 = L1_3.Path_Assets
      L2_3 = "Quest/branch"
      L3_3 = L19_1
      L3_3 = L3_3.world
      L4_3 = ".png"
      L1_3 = L1_3 .. L2_3 .. L3_3 .. L4_3
      L2_3 = L17_1
      L2_3 = L2_3.width
      L3_3 = L17_1
      L3_3 = L3_3.height
      L0_3 = L0_3(L1_3, L2_3, L3_3)
      L18_1 = L0_3
      L0_3 = L18_1
      L1_3 = L17_1
      L1_3 = L1_3.x
      L0_3.x = L1_3
      L0_3 = L18_1
      L1_3 = L17_1
      L1_3 = L1_3.y
      L0_3.y = L1_3
      L0_3 = L14_1
      L1_3 = L0_3
      L0_3 = L0_3.insert
      L2_3 = L18_1
      L0_3(L1_3, L2_3)
      L0_3 = L18_1
      L1_3 = L0_3
      L0_3 = L0_3.toBack
      L0_3(L1_3)
      L0_3 = transition
      L0_3 = L0_3.to
      L1_3 = L14_1
      L2_3 = {}
      L2_3.tag = "quest_trans"
      L2_3.alpha = 1
      L2_3.xScale = 1
      L2_3.yScale = 1
      L2_3.x = 0
      L3_3 = easing
      L3_3 = L3_3.outCubic
      L2_3.transition = L3_3
      L2_3.y = 0
      L2_3.time = 700
      L0_3(L1_3, L2_3)
    else
      L0_3 = transition
      L0_3 = L0_3.to
      L1_3 = L14_1
      L2_3 = {}
      L2_3.tag = "quest_trans"
      L2_3.xScale = 1
      L2_3.yScale = 1
      L2_3.x = 0
      L2_3.y = 0
      L2_3.alpha = 0.8
      L2_3.time = 0
      L0_3(L1_3, L2_3)
      L0_3 = transition
      L0_3 = L0_3.to
      L1_3 = L14_1
      L2_3 = {}
      L2_3.tag = "quest_trans"
      L2_3.alpha = 1
      L2_3.time = 100
      L0_3(L1_3, L2_3)
    end
  end
  
  L7_2.onComplete = L8_2
  L5_2(L6_2, L7_2)
  L5_2 = transition
  L5_2 = L5_2.to
  L6_2 = L15_1
  L6_2 = L6_2.nodesGroup
  L7_2 = {}
  L7_2.tag = "quest_trans"
  L7_2.alpha = 0
  L7_2.delay = 400
  L7_2.time = 400
  
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L2_2
    L2_3 = {}
    L2_3.tag = "quest_trans"
    L2_3.alpha = 1
    L2_3.time = 500
    
    function L3_3()
      local L0_4, L1_4, L2_4
      L0_4 = transition
      L0_4 = L0_4.to
      L1_4 = L3_2
      L2_4 = {}
      L2_4.tag = "quest_trans"
      L2_4.alpha = 1
      L2_4.time = 600
      L0_4(L1_4, L2_4)
      L0_4 = L23_1
      L1_4 = L19_1
      L1_4 = L1_4.world
      L0_4 = L0_4[L1_4]
      L1_4 = L0_4
      L0_4 = L0_4.finishedNodesAnimation
      
      function L2_4()
        local L0_5, L1_5
        L0_5 = L24_1
        if L0_5 then
          L0_5 = L24_1
          L1_5 = nil
          L24_1 = L1_5
          L1_5 = L0_5
          L1_5()
        end
      end
      
      L0_4(L1_4, L2_4)
    end
    
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L7_2.onComplete = L8_2
  L5_2(L6_2, L7_2)
end

function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L9_1
  L2_2 = L2_2.removePoint
  L2_2()
  L2_2 = L12_1
  L2_2 = L2_2.verticalOverlay
  if L2_2 ~= nil then
    L2_2 = L12_1
    L2_2 = L2_2.verticalOverlay
    L3_2 = L2_2
    L2_2 = L2_2.remove
    L2_2(L3_2)
  end
  L2_2 = log3
  L3_2 = "world tap called from out:"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = L20_1
  if L2_2 == true then
    L2_2 = false
    L20_1 = L2_2
    L2_2 = L12_1
    L2_2 = L2_2.questManager
    L3_2 = L19_1
    L3_2 = L3_2.world
    L2_2.mapState = L3_2
    if A1_2 ~= true then
      L2_2 = L23_1
      L3_2 = L19_1
      L3_2 = L3_2.world
      L4_2 = L12_1
      L4_2 = L4_2.questManager
      L5_2 = L4_2
      L4_2 = L4_2.createSubWorldMap
      L6_2 = L19_1
      L6_2 = L6_2.world
      L7_2 = L19_1
      L7_2 = L7_2.subWorld
      L8_2 = L19_1
      L8_2 = L8_2.subWorld_level
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      L2_2[L3_2] = L4_2
      L2_2 = L25_1
      L3_2 = A0_2
      L4_2 = 1
      L2_2(L3_2, L4_2)
    else
      L2_2 = L23_1
      L3_2 = L19_1
      L3_2 = L3_2.world
      L4_2 = L12_1
      L4_2 = L4_2.questManager
      L5_2 = L4_2
      L4_2 = L4_2.createSubWorldMap
      L6_2 = L19_1
      L6_2 = L6_2.world
      L7_2 = L19_1
      L7_2 = L7_2.subWorld
      L8_2 = L19_1
      L8_2 = L8_2.subWorld_level
      L9_2 = false
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      L2_2[L3_2] = L4_2
      L2_2 = L23_1
      L3_2 = L19_1
      L3_2 = L3_2.world
      L2_2 = L2_2[L3_2]
      L3_2 = L2_2
      L2_2 = L2_2.increaseProgress
      L4_2 = L23_1
      L5_2 = L19_1
      L5_2 = L5_2.world
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.level
      L5_2 = false
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = L21_1
      if L2_2 == true then
        L2_2 = L23_1
        L3_2 = L19_1
        L3_2 = L3_2.world
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.nodes
        L3_2 = L19_1
        L3_2 = L3_2.subWorld
        L3_2 = L3_2 - 1
        L2_2 = L2_2[L3_2]
        L3_2 = L23_1
        L4_2 = L19_1
        L4_2 = L4_2.world
        L3_2 = L3_2[L4_2]
        L3_2 = L3_2.nodes
        L4_2 = L19_1
        L4_2 = L4_2.subWorld
        L3_2 = L3_2[L4_2]
        L3_2 = L3_2.lockRect
        L3_2.alpha = 1
        L3_2 = _isFillterSupport
        if L3_2 == true then
          L3_2 = L2_2.bgRect
          L3_2 = L3_2.fill
          L3_2.effect = "filter.monotone"
          L3_2 = Constants
          L3_2 = L3_2.pinkColor
          L3_2, L4_2, L5_2 = L3_2()
          L6_2 = L2_2.bgRect
          L6_2 = L6_2.fill
          L6_2 = L6_2.effect
          L6_2.r = L3_2
          L6_2 = L2_2.bgRect
          L6_2 = L6_2.fill
          L6_2 = L6_2.effect
          L6_2.g = L4_2
          L6_2 = L2_2.bgRect
          L6_2 = L6_2.fill
          L6_2 = L6_2.effect
          L6_2.b = L5_2
          L6_2 = L2_2.bgRect
          L6_2 = L6_2.fill
          L6_2 = L6_2.effect
          L6_2.a = 1
          
          function L6_2()
            local L0_3, L1_3, L2_3, L3_3
            L0_3 = transition
            L0_3 = L0_3.to
            L1_3 = L2_2
            L1_3 = L1_3.view
            L2_3 = {}
            L2_3.tag = "quest_trans"
            L2_3.xScale = 1
            L2_3.yScale = 1
            L2_3.time = 360
            
            function L3_3()
              local L0_4, L1_4, L2_4
              L0_4 = L23_1
              L1_4 = L19_1
              L1_4 = L1_4.world
              L0_4 = L0_4[L1_4]
              L1_4 = L0_4
              L0_4 = L0_4.increaseProgress
              L2_4 = L19_1
              L2_4 = L2_4.subWorld
              L0_4(L1_4, L2_4)
            end
            
            L2_3.onComplete = L3_3
            L0_3(L1_3, L2_3)
          end
          
          L7_2 = transition
          L7_2 = L7_2.to
          L8_2 = L2_2.view
          L9_2 = {}
          L9_2.tag = "quest_trans"
          L9_2.xScale = 1.3
          L9_2.yScale = 1.3
          L9_2.time = 360
          
          function L10_2()
            local L0_3, L1_3, L2_3, L3_3
            L0_3 = L2_2
            L1_3 = L0_3
            L0_3 = L0_3.finishProgress
            L2_3 = 200
            L3_3 = L6_2
            L0_3(L1_3, L2_3, L3_3)
          end
          
          L9_2.onComplete = L10_2
          L7_2(L8_2, L9_2)
        else
          L3_2 = L2_2.bgRect
          L4_2 = L3_2
          L3_2 = L3_2.setFillColor
          L5_2 = 1
          L6_2 = 1
          L7_2 = 1
          L3_2(L4_2, L5_2, L6_2, L7_2)
          L3_2 = transition
          L3_2 = L3_2.to
          L4_2 = L2_2.view
          L5_2 = {}
          L5_2.tag = "quest_trans"
          L5_2.xScale = 1.3
          L5_2.yScale = 1.3
          L5_2.time = 360
          
          function L6_2()
            local L0_3, L1_3, L2_3, L3_3
            L0_3 = L2_2
            L1_3 = L0_3
            L0_3 = L0_3.finishProgress
            L0_3(L1_3)
            L0_3 = transition
            L0_3 = L0_3.to
            L1_3 = L2_2
            L1_3 = L1_3.view
            L2_3 = {}
            L2_3.tag = "quest_trans"
            L2_3.time = 400
            
            function L3_3()
              local L0_4, L1_4, L2_4, L3_4
              L0_4 = transition
              L0_4 = L0_4.to
              L1_4 = L2_2
              L1_4 = L1_4.view
              L2_4 = {}
              L2_4.tag = "quest_trans"
              L2_4.xScale = 1
              L2_4.yScale = 1
              L2_4.time = 360
              
              function L3_4()
                local L0_5, L1_5, L2_5
                L0_5 = L23_1
                L1_5 = L19_1
                L1_5 = L1_5.world
                L0_5 = L0_5[L1_5]
                L1_5 = L0_5
                L0_5 = L0_5.increaseProgress
                L2_5 = L19_1
                L2_5 = L2_5.subWorld
                L0_5(L1_5, L2_5)
              end
              
              L2_4.onComplete = L3_4
              L0_4(L1_4, L2_4)
            end
            
            L2_3.onComplete = L3_3
            L0_3(L1_3, L2_3)
          end
          
          L5_2.onComplete = L6_2
          L3_2(L4_2, L5_2)
        end
      else
        L2_2 = L22_1
        if L2_2 == true then
          L2_2 = log3
          L3_2 = "player lose boss battle, decrease animation called"
          L2_2(L3_2)
          L2_2 = L23_1
          L3_2 = L19_1
          L3_2 = L3_2.world
          L2_2 = L2_2[L3_2]
          L3_2 = L2_2
          L2_2 = L2_2.decreaseProgress
          L4_2 = L19_1
          L4_2 = L4_2.subWorld
          L2_2(L3_2, L4_2)
        end
      end
      L2_2 = L15_1
      L2_2 = L2_2.branchGroup
      L3_2 = L2_2
      L2_2 = L2_2.insert
      L4_2 = L23_1
      L5_2 = L19_1
      L5_2 = L5_2.world
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.view
      L2_2(L3_2, L4_2)
      L2_2 = L19_1
      L2_2 = L2_2.world
      if L2_2 == 1 then
        L2_2 = L23_1
        L3_2 = L19_1
        L3_2 = L3_2.world
        L2_2 = L2_2[L3_2]
        L3_2 = L2_2
        L2_2 = L2_2.changeTreaureImageForFinishedNode
        L2_2(L3_2)
      end
    end
  end
end

function L27_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = pairs
  L1_2 = L15_1
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = display
    L5_2 = L5_2.remove
    L6_2 = L4_2
    L5_2(L6_2)
    L4_2 = nil
  end
  L0_2 = L15_1
  L1_2 = display
  L1_2 = L1_2.newGroup
  L1_2 = L1_2()
  L0_2.nodesGroup = L1_2
  L0_2 = L15_1
  L1_2 = display
  L1_2 = L1_2.newGroup
  L1_2 = L1_2()
  L0_2.branchGroup = L1_2
  L0_2 = L12_1
  L0_2 = L0_2.questManager
  L0_2 = L0_2.mapState
  if L0_2 == 0 then
    L0_2 = display
    L0_2 = L0_2.remove
    L1_2 = L18_1
    L0_2(L1_2)
    L0_2 = display
    L0_2 = L0_2.newImageRect
    L1_2 = Constants
    L1_2 = L1_2.Path_Assets
    L2_2 = "Quest/Background.png"
    L1_2 = L1_2 .. L2_2
    L2_2 = L17_1
    L2_2 = L2_2.width
    L3_2 = L17_1
    L3_2 = L3_2.height
    L0_2 = L0_2(L1_2, L2_2, L3_2)
    L18_1 = L0_2
    L0_2 = L18_1
    L1_2 = L17_1
    L1_2 = L1_2.x
    L0_2.x = L1_2
    L0_2 = L18_1
    L1_2 = L17_1
    L1_2 = L1_2.y
    L0_2.y = L1_2
    L0_2 = L14_1
    L1_2 = L0_2
    L0_2 = L0_2.insert
    L2_2 = L18_1
    L0_2(L1_2, L2_2)
    L0_2 = L18_1
    L1_2 = L0_2
    L0_2 = L0_2.toBack
    L0_2(L1_2)
    L0_2 = L12_1
    L0_2 = L0_2.questManager
    L1_2 = L0_2
    L0_2 = L0_2.createWorldsMap
    L2_2 = L19_1
    L2_2 = L2_2.world
    L0_2 = L0_2(L1_2, L2_2)
    
    function L1_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
      L1_3 = A0_3
      
      function L2_3(A0_4, A1_4, A2_4)
        local L3_4, L4_4, L5_4, L6_4
        L3_4 = L1_3
        if L3_4 ~= true or A2_4 == false then
          L3_4 = L12_1
          L3_4 = L3_4.questManager
          L3_4 = L3_4.isFirstSeenWorldMap
          if L3_4 ~= true then
            goto lbl_38
          end
        end
        L3_4 = L12_1
        L3_4 = L3_4.questManager
        L3_4.isFirstSeenWorldMap = false
        L3_4 = transition
        L3_4 = L3_4.to
        L4_4 = A0_4.view
        L5_4 = {}
        L5_4.tag = "quest_trans"
        L5_4.xScale = 1.3
        L5_4.yScale = 1.3
        L5_4.time = 200
        
        function L6_4()
          local L0_5, L1_5, L2_5, L3_5
          L0_5 = A0_4
          L1_5 = L0_5
          L0_5 = L0_5.finishProgress
          L2_5 = 200
          L3_5 = A1_4
          L0_5(L1_5, L2_5, L3_5)
        end
        
        L5_4.onComplete = L6_4
        L3_4(L4_4, L5_4)
        L3_4 = transition
        L3_4 = L3_4.to
        L4_4 = A0_4.view
        L5_4 = {}
        L5_4.tag = "quest_trans"
        L5_4.xScale = 1
        L5_4.yScale = 1
        L5_4.delay = 600
        L5_4.time = 200
        L3_4(L4_4, L5_4)
        goto lbl_42
        ::lbl_38::
        L4_4 = A0_4
        L3_4 = A0_4.finishProgress
        L5_4 = 0
        L6_4 = A1_4
        L3_4(L4_4, L5_4, L6_4)
        ::lbl_42::
      end
      
      L3_3 = 1
      L4_3 = L12_1
      L4_3 = L4_3.questManager
      L4_3 = L4_3.numberOfWorlds
      L5_3 = 1
      for L6_3 = L3_3, L4_3, L5_3 do
        L7_3 = L0_2
        L7_3 = L7_3.worlds
        L7_3 = L7_3[L6_3]
        L7_3 = L7_3._status
        if L7_3 == "open" then
          L7_3 = L0_2
          L7_3 = L7_3.worlds
          L7_3 = L7_3[L6_3]
          L7_3 = L7_3.view
          L8_3 = L7_3
          L7_3 = L7_3.addEventListener
          L9_3 = "tap"
          L10_3 = L26_1
          L7_3(L8_3, L9_3, L10_3)
          L7_3 = L0_2
          L7_3 = L7_3.worlds
          L7_3 = L7_3[1]
          L7_3 = L7_3.lockRect
          L7_3.alpha = 0
          
          function L7_3()
            local L0_4, L1_4, L2_4
            L0_4 = L1_3
            if L0_4 == true then
              L0_4 = transition
              L0_4 = L0_4.to
              L1_4 = L0_2
              L1_4 = L1_4.worlds
              L2_4 = L6_3
              L1_4 = L1_4[L2_4]
              L1_4 = L1_4.lockRect
              L2_4 = {}
              L2_4.tag = "quest_trans"
              L2_4.xScale = 3
              L2_4.yScale = 3
              L2_4.alpha = 0
              L2_4.delay = 300
              L2_4.time = 700
              L0_4(L1_4, L2_4)
            else
              L0_4 = L0_2
              L0_4 = L0_4.worlds
              L1_4 = L6_3
              L0_4 = L0_4[L1_4]
              L0_4 = L0_4.lockRect
              L0_4.alpha = 0
            end
          end
          
          if L6_3 == 2 then
            L8_3 = L2_3
            L9_3 = L0_2
            L9_3 = L9_3.worlds
            L9_3 = L9_3[1]
            L10_3 = L7_3
            L8_3(L9_3, L10_3)
          elseif L6_3 == 3 then
            L8_3 = L0_2
            L8_3 = L8_3.worlds
            L8_3 = L8_3[2]
            L8_3 = L8_3.lockRect
            L8_3.alpha = 0
            
            function L8_3()
              local L0_4, L1_4, L2_4
              L0_4 = L2_3
              L1_4 = L0_2
              L1_4 = L1_4.worlds
              L1_4 = L1_4[2]
              L2_4 = L7_3
              L0_4(L1_4, L2_4)
            end
            
            L9_3 = L2_3
            L10_3 = L0_2
            L10_3 = L10_3.worlds
            L10_3 = L10_3[1]
            L11_3 = L8_3
            L12_3 = false
            L9_3(L10_3, L11_3, L12_3)
          end
          break
        end
      end
    end
    
    L2_2 = L12_1
    L2_2 = L2_2.questManager
    L2_2 = L2_2.isNewWorldAnimationOn
    if L2_2 == true then
      L2_2 = L12_1
      L2_2 = L2_2.questManager
      L2_2.isNewWorldAnimationOn = false
      L2_2 = L1_2
      L3_2 = true
      L2_2(L3_2)
    else
      L2_2 = L1_2
      L3_2 = false
      L2_2(L3_2)
    end
    L2_2 = L15_1
    L2_2 = L2_2.nodesGroup
    L3_2 = L2_2
    L2_2 = L2_2.insert
    L4_2 = L0_2.view
    L2_2(L3_2, L4_2)
  else
    L0_2 = L26_1
    L1_2 = nil
    L2_2 = true
    L0_2(L1_2, L2_2)
  end
  L0_2 = L14_1
  L0_2.x = 0
  L0_2 = L14_1
  L0_2.y = 0
  L0_2 = L14_1
  L0_2.xScale = 1
  L0_2 = L14_1
  L0_2.yScale = 1
  L0_2 = L14_1
  L1_2 = L0_2
  L0_2 = L0_2.insert
  L2_2 = L15_1
  L2_2 = L2_2.nodesGroup
  L0_2(L1_2, L2_2)
  L0_2 = L14_1
  L1_2 = L0_2
  L0_2 = L0_2.insert
  L2_2 = L15_1
  L2_2 = L2_2.branchGroup
  L0_2(L1_2, L2_2)
end

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = log3
  L3_2 = "create scene"
  L2_2(L3_2)
  L2_2 = A0_2.view
  L13_1 = L2_2
  L2_2 = display
  L2_2 = L2_2.newImageRect
  L3_2 = Constants
  L3_2 = L3_2.Path_Assets
  L4_2 = "FC-bg.png"
  L3_2 = L3_2 .. L4_2
  L4_2 = 570
  L5_2 = 360
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L16_1 = L2_2
  L2_2 = L16_1
  L3_2 = display
  L3_2 = L3_2.contentCenterX
  L2_2.x = L3_2
  L2_2 = L16_1
  L3_2 = display
  L3_2 = L3_2.contentCenterY
  L2_2.y = L3_2
  L2_2 = L13_1
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = L16_1
  L2_2(L3_2, L4_2)
  L2_2 = display
  L2_2 = L2_2.newRoundedRect
  L3_2 = display
  L3_2 = L3_2.contentWidth
  L3_2 = L3_2 / 2
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 - 45
  L4_2 = L4_2 / 2
  L4_2 = 40 + L4_2
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 - 10
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 - 47
  L7_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L17_1 = L2_2
  L2_2 = L17_1
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = Constants
  L4_2 = L4_2.whiteColor
  L4_2, L5_2, L6_2, L7_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = L17_1
  L2_2.strokeWidth = 3
  L2_2 = L17_1
  L3_2 = L2_2
  L2_2 = L2_2.setStrokeColor
  L4_2 = Constants
  L4_2 = L4_2.greenColorSceneBorder
  L4_2, L5_2, L6_2, L7_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = L13_1
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = L17_1
  L2_2(L3_2, L4_2)
  L2_2 = display
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  A0_2.maskGroup = L2_2
  L2_2 = L13_1
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = A0_2.maskGroup
  L2_2(L3_2, L4_2)
  L2_2 = display
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  L14_1 = L2_2
  L2_2 = A0_2.maskGroup
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = L14_1
  L2_2(L3_2, L4_2)
  L2_2 = graphics
  L2_2 = L2_2.newMask
  L3_2 = Constants
  L3_2 = L3_2.Path_Assets
  L4_2 = "General/FC-navIncluded"
  L5_2 = Constants
  L5_2 = L5_2.deviceSpecificFilePostfix
  L5_2 = L5_2()
  L6_2 = "mask.png"
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.maskGroup
  L4_2 = L3_2
  L3_2 = L3_2.setMask
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.maskGroup
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.maskX = L4_2
  L3_2 = A0_2.maskGroup
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.maskY = L4_2
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "Quest/Background.png"
  L4_2 = L4_2 .. L5_2
  L5_2 = L17_1
  L5_2 = L5_2.width
  L6_2 = L17_1
  L6_2 = L6_2.height
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L18_1 = L3_2
  L3_2 = L18_1
  L4_2 = L17_1
  L4_2 = L4_2.x
  L3_2.x = L4_2
  L3_2 = L18_1
  L4_2 = L17_1
  L4_2 = L4_2.y
  L3_2.y = L4_2
  L3_2 = L14_1
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = L18_1
  L3_2(L4_2, L5_2)
  L3_2 = L3_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L3_2 = L3_2(L4_2)
  A0_2.navBar = L3_2
  L3_2 = A0_2.navBar
  L4_2 = L3_2
  L3_2 = L3_2.setTitle
  L5_2 = L4_1
  L5_2 = L5_2["Quest Map"]
  L3_2(L4_2, L5_2)
  L3_2 = L13_1
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.navBar
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L3_2 = L12_1
  L4_2 = L7_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L4_2 = L4_2(L5_2)
  L3_2.questManager = L4_2
end

L12_1.create = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = log3
  L3_2 = "----------------------------------------------------------------------enter scene"
  L2_2(L3_2)
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    L3_2 = "Scenes.Home"
    _backAction = L3_2
    L3_2 = A0_2.navBar
    L3_2.currentScene = "Scenes.WorldMap"
    L3_2 = A0_2.navBar
    L3_2.previousScene = "Scenes.Home"
    L3_2 = A0_2.navBar
    L4_2 = L3_2
    L3_2 = L3_2.setNectar
    L5_2 = mainPlayer
    L5_2 = L5_2.nectar
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.navBar
    L4_2 = L3_2
    L3_2 = L3_2.updateGold
    L3_2(L4_2)
    L3_2 = A0_2.navBar
    L4_2 = L3_2
    L3_2 = L3_2.setEnableButtons
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.navBar
    L3_2.helpId = 17
    L3_2 = checkAssert
    L4_2 = mainPlayer
    L4_2 = L4_2.totalQuests
    L5_2 = "mainPlayer.totalQuests not define yet"
    L6_2 = "WorldMap.lua -> enterScene()"
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = L12_1
    L3_2 = L3_2.questManager
    L3_2 = L3_2.findPlayerQuestMapInfo
    L4_2 = mainPlayer
    L4_2 = L4_2.totalQuests
    L3_2 = L3_2(L4_2)
    L19_1 = L3_2
    L3_2 = true
    L20_1 = L3_2
    L3_2 = A1_2.params
    L4_2 = false
    L21_1 = L4_2
    L4_2 = false
    L22_1 = L4_2
    if L3_2 then
      L4_2 = L3_2.isNextSubWorld
      if L4_2 == true then
        L4_2 = true
        L21_1 = L4_2
      end
      L4_2 = L3_2.isBackSubWorld
      if L4_2 == true then
        L4_2 = true
        L22_1 = L4_2
      end
      L4_2 = L3_2.isTutorial
      if L4_2 then
        L4_2 = A0_2.navBar
        L4_2 = L4_2.view
        L4_2.isVisible = false
      else
        L4_2 = A0_2.navBar
        L4_2 = L4_2.view
        L4_2.isVisible = true
      end
    end
    L4_2 = L27_1
    L4_2()
    L4_2 = L8_1
    L4_2 = L4_2.checkForTutorial
    L5_2 = "Scenes.WorldMap"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
  end
end

L12_1.show = L28_1

function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.questManager
  L3_2 = L3_2.mapState
  if L3_2 == 0 then
    L24_1 = A2_2
    L3_2 = A0_2.questManager
    L3_2 = L3_2.getWorldMapNodesPositions
    L3_2 = L3_2()
    L4_2 = L9_1
    L4_2 = L4_2.pointAt
    L5_2 = L13_1
    L6_2 = L3_2[1]
    L6_2 = L6_2.x
    L7_2 = L3_2[1]
    L7_2 = L7_2.y
    L4_2(L5_2, L6_2, L7_2)
  else
    L3_2 = L10_1
    L3_2 = L3_2.creadeNodesPositions
    L4_2 = L19_1
    L4_2 = L4_2.world
    L3_2 = L3_2(L4_2)
    L4_2 = L9_1
    L4_2 = L4_2.pointAt
    L5_2 = L13_1
    L6_2 = L19_1
    L6_2 = L6_2.subWorld
    L6_2 = L3_2[L6_2]
    L6_2 = L6_2.x
    L7_2 = L19_1
    L7_2 = L7_2.subWorld
    L7_2 = L3_2[L7_2]
    L7_2 = L7_2.y
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A2_2
    L4_2()
  end
end

L12_1.pointAtFirstNode = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    L3_2 = transition
    L3_2 = L3_2.cancel
    L4_2 = "quest_trans"
    L3_2(L4_2)
    L3_2 = L9_1
    L3_2 = L3_2.removePoint
    L3_2()
    L3_2 = L12_1
    L3_2 = L3_2.verticalOverlay
    if L3_2 ~= nil then
      L3_2 = L12_1
      L3_2 = L3_2.verticalOverlay
      L4_2 = L3_2
      L3_2 = L3_2.remove
      L3_2(L4_2)
    end
  end
end

L12_1.hide = L28_1
L29_1 = L12_1
L28_1 = L12_1.addEventListener
L30_1 = "create"
L31_1 = L12_1
L28_1(L29_1, L30_1, L31_1)
L29_1 = L12_1
L28_1 = L12_1.addEventListener
L30_1 = "show"
L31_1 = L12_1
L28_1(L29_1, L30_1, L31_1)
L29_1 = L12_1
L28_1 = L12_1.addEventListener
L30_1 = "hide"
L31_1 = L12_1
L28_1(L29_1, L30_1, L31_1)
return L12_1
