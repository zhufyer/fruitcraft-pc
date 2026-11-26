local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Models.Line"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Models.QuestNode"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "widget"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.CircleTimer"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.EffectsManager"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Components.TDButtonView"
L6_1 = L6_1(L7_1)
L7_1 = display
L7_1 = L7_1.contentWidth
L8_1 = display
L8_1 = L8_1.contentHeight

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = {}
  L4_2 = L7_1
  L4_2 = L4_2 / 20
  L5_2 = L8_1
  L5_2 = L5_2 / 20
  L6_2 = 1
  L7_2 = 19
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = #L1_2
    L10_2 = L10_2 + 1
    L11_2 = L9_2 * L4_2
    L1_2[L10_2] = L11_2
    L10_2 = #L2_2
    L10_2 = L10_2 + 1
    L11_2 = L9_2 * L5_2
    L2_2[L10_2] = L11_2
  end
  if A0_2 == 1 then
    L6_2 = {}
    L7_2 = {}
    L8_2 = L1_2[2]
    L7_2.x = L8_2
    L8_2 = L2_2[5]
    L7_2.y = L8_2
    L8_2 = {}
    L9_2 = L1_2[4]
    L8_2.x = L9_2
    L9_2 = L2_2[6]
    L8_2.y = L9_2
    L9_2 = {}
    L10_2 = L1_2[7]
    L9_2.x = L10_2
    L10_2 = L2_2[4]
    L9_2.y = L10_2
    L10_2 = {}
    L11_2 = L1_2[9]
    L10_2.x = L11_2
    L11_2 = L2_2[6]
    L10_2.y = L11_2
    L11_2 = {}
    L12_2 = L1_2[12]
    L11_2.x = L12_2
    L12_2 = L2_2[4]
    L11_2.y = L12_2
    L12_2 = {}
    L13_2 = L1_2[14]
    L12_2.x = L13_2
    L13_2 = L2_2[7]
    L12_2.y = L13_2
    L13_2 = {}
    L14_2 = L1_2[18]
    L13_2.x = L14_2
    L14_2 = L2_2[6]
    L13_2.y = L14_2
    L14_2 = {}
    L15_2 = L1_2[17]
    L14_2.x = L15_2
    L15_2 = L2_2[15]
    L14_2.y = L15_2
    L15_2 = {}
    L16_2 = L1_2[14]
    L15_2.x = L16_2
    L16_2 = L2_2[18]
    L15_2.y = L16_2
    L16_2 = {}
    L17_2 = L1_2[11]
    L16_2.x = L17_2
    L17_2 = L2_2[16]
    L16_2.y = L17_2
    L17_2 = {}
    L18_2 = L1_2[7]
    L17_2.x = L18_2
    L18_2 = L2_2[15]
    L17_2.y = L18_2
    L18_2 = {}
    L19_2 = L1_2[4]
    L18_2.x = L19_2
    L19_2 = L2_2[17]
    L18_2.y = L19_2
    L19_2 = {}
    L20_2 = L1_2[2]
    L19_2.x = L20_2
    L20_2 = L2_2[16]
    L19_2.y = L20_2
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L6_2[3] = L9_2
    L6_2[4] = L10_2
    L6_2[5] = L11_2
    L6_2[6] = L12_2
    L6_2[7] = L13_2
    L6_2[8] = L14_2
    L6_2[9] = L15_2
    L6_2[10] = L16_2
    L6_2[11] = L17_2
    L6_2[12] = L18_2
    L6_2[13] = L19_2
    L3_2 = L6_2
  elseif A0_2 == 2 then
    L6_2 = {}
    L7_2 = {}
    L8_2 = L1_2[7]
    L7_2.x = L8_2
    L8_2 = L2_2[17]
    L7_2.y = L8_2
    L8_2 = {}
    L9_2 = L1_2[4]
    L8_2.x = L9_2
    L9_2 = L2_2[13]
    L8_2.y = L9_2
    L9_2 = {}
    L10_2 = L1_2[3]
    L9_2.x = L10_2
    L10_2 = L2_2[7]
    L9_2.y = L10_2
    L10_2 = {}
    L11_2 = L1_2[6]
    L10_2.x = L11_2
    L11_2 = L2_2[4]
    L10_2.y = L11_2
    L11_2 = {}
    L12_2 = L1_2[9]
    L11_2.x = L12_2
    L12_2 = L2_2[4]
    L11_2.y = L12_2
    L12_2 = {}
    L13_2 = L1_2[12]
    L12_2.x = L13_2
    L13_2 = L2_2[4]
    L12_2.y = L13_2
    L13_2 = {}
    L14_2 = L1_2[14]
    L13_2.x = L14_2
    L14_2 = L2_2[6]
    L13_2.y = L14_2
    L14_2 = {}
    L15_2 = L1_2[16]
    L14_2.x = L15_2
    L15_2 = L2_2[10]
    L14_2.y = L15_2
    L15_2 = {}
    L16_2 = L1_2[14]
    L15_2.x = L16_2
    L16_2 = L2_2[15]
    L15_2.y = L16_2
    L16_2 = {}
    L17_2 = L1_2[10]
    L16_2.x = L17_2
    L17_2 = L2_2[15]
    L16_2.y = L17_2
    L17_2 = {}
    L18_2 = L1_2[7]
    L17_2.x = L18_2
    L18_2 = L2_2[11]
    L17_2.y = L18_2
    L18_2 = {}
    L19_2 = L1_2[9]
    L18_2.x = L19_2
    L19_2 = L2_2[8]
    L18_2.y = L19_2
    L19_2 = {}
    L20_2 = L1_2[12]
    L19_2.x = L20_2
    L20_2 = L2_2[9]
    L19_2.y = L20_2
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L6_2[3] = L9_2
    L6_2[4] = L10_2
    L6_2[5] = L11_2
    L6_2[6] = L12_2
    L6_2[7] = L13_2
    L6_2[8] = L14_2
    L6_2[9] = L15_2
    L6_2[10] = L16_2
    L6_2[11] = L17_2
    L6_2[12] = L18_2
    L6_2[13] = L19_2
    L3_2 = L6_2
  elseif A0_2 == 3 then
    L6_2 = {}
    L7_2 = {}
    L8_2 = L1_2[2]
    L7_2.x = L8_2
    L8_2 = L2_2[5]
    L7_2.y = L8_2
    L8_2 = {}
    L9_2 = L1_2[3]
    L8_2.x = L9_2
    L9_2 = L2_2[8]
    L8_2.y = L9_2
    L9_2 = {}
    L10_2 = L1_2[3]
    L9_2.x = L10_2
    L10_2 = L2_2[13]
    L9_2.y = L10_2
    L10_2 = {}
    L11_2 = L1_2[4]
    L10_2.x = L11_2
    L11_2 = L2_2[16]
    L10_2.y = L11_2
    L11_2 = {}
    L12_2 = L1_2[7]
    L11_2.x = L12_2
    L12_2 = L2_2[11]
    L11_2.y = L12_2
    L12_2 = {}
    L13_2 = L1_2[7]
    L12_2.x = L13_2
    L13_2 = L2_2[8]
    L12_2.y = L13_2
    L13_2 = {}
    L14_2 = L1_2[10]
    L13_2.x = L14_2
    L14_2 = L2_2[5]
    L13_2.y = L14_2
    L14_2 = {}
    L15_2 = L1_2[13]
    L14_2.x = L15_2
    L15_2 = L2_2[4]
    L14_2.y = L15_2
    L15_2 = {}
    L16_2 = L1_2[14]
    L15_2.x = L16_2
    L16_2 = L2_2[7]
    L15_2.y = L16_2
    L16_2 = {}
    L17_2 = L1_2[15]
    L16_2.x = L17_2
    L17_2 = L2_2[10]
    L16_2.y = L17_2
    L17_2 = {}
    L18_2 = L1_2[13]
    L17_2.x = L18_2
    L18_2 = L2_2[15]
    L17_2.y = L18_2
    L18_2 = {}
    L19_2 = L1_2[15]
    L18_2.x = L19_2
    L19_2 = L2_2[17]
    L18_2.y = L19_2
    L19_2 = {}
    L20_2 = L1_2[17]
    L19_2.x = L20_2
    L20_2 = L2_2[14]
    L19_2.y = L20_2
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L6_2[3] = L9_2
    L6_2[4] = L10_2
    L6_2[5] = L11_2
    L6_2[6] = L12_2
    L6_2[7] = L13_2
    L6_2[8] = L14_2
    L6_2[9] = L15_2
    L6_2[10] = L16_2
    L6_2[11] = L17_2
    L6_2[12] = L18_2
    L6_2[13] = L19_2
    L3_2 = L6_2
  end
  return L3_2
end

creadeNodesPositions = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 then
    L2_2 = 5
    A1_2 = false
  else
    L2_2 = -5
    A1_2 = true
  end
  L3_2 = transition
  L3_2 = L3_2.to
  L4_2 = A0_2
  L5_2 = {}
  L5_2.time = 1500
  L6_2 = A0_2.y
  L6_2 = L6_2 + L2_2
  L5_2.y = L6_2
  L6_2 = easing
  L6_2 = L6_2.inOutSine
  L5_2.transition = L6_2
  
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = L9_1
    L1_3 = A0_2
    L2_3 = A1_2
    L0_3(L1_3, L2_3)
  end
  
  L5_2.onComplete = L6_2
  L3_2(L4_2, L5_2)
end

function L10_1(A0_2, A1_2)
  local L2_2
  if A1_2 == 1 then
    L2_2 = mainPlayer
    L2_2 = L2_2.improveQuestMap
    if L2_2 then
      L2_2 = mainPlayer
      L2_2 = L2_2.improveQuestMap
      if L2_2 == true then
        if A0_2 ~= 2 and A0_2 ~= 8 then
          L2_2 = A0_2 % 6
          if L2_2 ~= 5 then
            goto lbl_21
          end
        end
        L2_2 = true
        do return L2_2 end
        goto lbl_23
        ::lbl_21::
        L2_2 = false
        return L2_2
      end
    end
  end
  ::lbl_23::
end

function L11_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L6_2 = {}
  L7_2 = setmetatable
  L8_2 = L6_2
  L9_2 = A0_2
  L7_2(L8_2, L9_2)
  A0_2.__index = A0_2
  L7_2 = display
  L7_2 = L7_2.newGroup
  L7_2 = L7_2()
  L6_2.view = L7_2
  L6_2.level = A3_2
  L6_2.subLevel = A4_2
  L6_2.branch = A1_2
  L7_2 = display
  L7_2 = L7_2.newGroup
  L7_2 = L7_2()
  L6_2.connectionsView = L7_2
  L7_2 = display
  L7_2 = L7_2.newGroup
  L7_2 = L7_2()
  L6_2.nodesView = L7_2
  L7_2 = L6_2.view
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = L6_2.connectionsView
  L7_2(L8_2, L9_2)
  L7_2 = L6_2.view
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = L6_2.nodesView
  L7_2(L8_2, L9_2)
  L7_2 = {}
  L6_2.nodes = L7_2
  L7_2 = L4_1
  L8_2 = L7_2
  L7_2 = L7_2.new
  L7_2 = L7_2(L8_2)
  L6_2.nodeProgress = L7_2
  L7_2 = creadeNodesPositions
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  L8_2 = 1
  L9_2 = A2_2
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = L6_2.nodes
    L13_2 = L2_1
    L14_2 = L13_2
    L13_2 = L13_2.new
    L15_2 = L11_2
    L16_2 = A1_2
    L13_2 = L13_2(L14_2, L15_2, L16_2)
    L12_2[L11_2] = L13_2
    L12_2 = L6_2.nodes
    L12_2 = L12_2[L11_2]
    L12_2 = L12_2.view
    L13_2 = L7_2[L11_2]
    L13_2 = L13_2.x
    L12_2.x = L13_2
    L12_2 = L6_2.nodes
    L12_2 = L12_2[L11_2]
    L12_2 = L12_2.view
    L13_2 = L7_2[L11_2]
    L13_2 = L13_2.y
    L12_2.y = L13_2
    L12_2 = L10_1
    L13_2 = L11_2
    L14_2 = A1_2
    L12_2 = L12_2(L13_2, L14_2)
    if L12_2 and A3_2 <= L11_2 then
      L12_2 = _isFillterSupport
      if L12_2 then
        L12_2 = display
        L12_2 = L12_2.newCircle
        L13_2 = L6_2.nodes
        L13_2 = L13_2[L11_2]
        L13_2 = L13_2.view
        L14_2 = 0
        L15_2 = 0
        L16_2 = 40
        L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
        L13_2 = L6_2.nodes
        L13_2 = L13_2[L11_2]
        L13_2 = L13_2.treasure
        L13_2 = L13_2.y
        L12_2.y = L13_2
        L13_2 = L6_2.nodes
        L13_2 = L13_2[L11_2]
        L13_2 = L13_2.treasure
        L13_2 = L13_2.x
        L12_2.x = L13_2
        L13_2 = L12_2.fill
        L13_2.effect = "generator.sunbeams"
        L13_2 = L12_2.fill
        L13_2 = L13_2.effect
        L13_2.posX = 0.5
        L13_2 = L12_2.fill
        L13_2 = L13_2.effect
        L13_2.posY = 0.5
        L13_2 = L12_2.fill
        L13_2 = L13_2.effect
        L13_2.seed = 5
        L13_2 = transition
        L13_2 = L13_2.to
        L14_2 = L12_2.fill
        L14_2 = L14_2.effect
        L15_2 = {}
        L15_2.time = 200000
        L15_2.seed = 300
        L15_2.iterations = -1
        L13_2(L14_2, L15_2)
        L14_2 = L12_2
        L13_2 = L12_2.toBack
        L13_2(L14_2)
      end
      L12_2 = L6_2.nodes
      L12_2 = L12_2[L11_2]
      L12_2 = L12_2.treasure
      L12_2.alpha = 1
    end
    L12_2 = L6_2.level
    if L11_2 < L12_2 then
      L12_2 = L6_2.nodes
      L12_2 = L12_2[L11_2]
      L12_2 = L12_2.lockRect
      L12_2.alpha = 0
      if A5_2 == false then
        L12_2 = L6_2.nodes
        L12_2 = L12_2[L11_2]
        L13_2 = L12_2
        L12_2 = L12_2.finishProgress
        L14_2 = 0
        L12_2(L13_2, L14_2)
      end
    end
    L12_2 = L6_2.level
    if L11_2 == L12_2 then
      if A5_2 == false then
        L12_2 = L6_2.nodes
        L12_2 = L12_2[L11_2]
        L12_2 = L12_2.lockRect
        L12_2.alpha = 0
      else
        L12_2 = L6_2.subLevel
        if 1 < L12_2 then
          L12_2 = L6_2.nodes
          L12_2 = L12_2[L11_2]
          L12_2 = L12_2.lockRect
          L12_2.alpha = 0
        end
      end
    end
    if L11_2 ~= 1 then
      L12_2 = L1_1
      L13_2 = L12_2
      L12_2 = L12_2.new
      L14_2 = L6_2.nodes
      L15_2 = L11_2 - 1
      L14_2 = L14_2[L15_2]
      L15_2 = L6_2.nodes
      L15_2 = L15_2[L11_2]
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L6_2.connection = L12_2
      L12_2 = L6_2.connectionsView
      L13_2 = L12_2
      L12_2 = L12_2.insert
      L14_2 = L6_2.connection
      L14_2 = L14_2.line
      L12_2(L13_2, L14_2)
    end
    L12_2 = L6_2.nodesView
    L13_2 = L12_2
    L12_2 = L12_2.insert
    L14_2 = L6_2.nodes
    L14_2 = L14_2[L11_2]
    L14_2 = L14_2.view
    L12_2(L13_2, L14_2)
  end
  if A1_2 == 1 and A3_2 <= A2_2 then
    L8_2 = mainPlayer
    L8_2 = L8_2.improveQuestMap
    if L8_2 then
      L8_2 = mainPlayer
      L8_2 = L8_2.improveQuestMap
      if L8_2 == true then
        L8_2 = display
        L8_2 = L8_2.newImageRect
        L9_2 = L6_2.view
        L10_2 = Constants
        L10_2 = L10_2.Path_Assets
        L11_2 = "Tutorial/FC-Porteghula.png"
        L10_2 = L10_2 .. L11_2
        L11_2 = 40
        L12_2 = 50
        L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
        L9_2 = L8_2.width
        L9_2 = L9_2 / 2
        L9_2 = L9_2 + 10
        L8_2.x = L9_2
        L9_2 = display
        L9_2 = L9_2.contentHeight
        L10_2 = L8_2.height
        L10_2 = L10_2 / 2
        L9_2 = L9_2 - L10_2
        L9_2 = L9_2 - 60
        L8_2.y = L9_2
        L9_2 = L9_1
        L10_2 = L8_2
        L9_2(L10_2)
      end
    end
  end
  L8_2 = L6_2.nodes
  L9_2 = L6_2.level
  L8_2 = L8_2[L9_2]
  L8_2._status = "open"
  L8_2 = L6_2.nodes
  L9_2 = L6_2.level
  L8_2 = L8_2[L9_2]
  L9_2 = L6_2.subLevel
  L8_2.progressNumber = L9_2
  L8_2 = L6_2.nodes
  L9_2 = L6_2.nodes
  L9_2 = #L9_2
  L8_2 = L8_2[L9_2]
  L8_2.bossNode = true
  L8_2 = L6_1
  L9_2 = L8_2
  L8_2 = L8_2.new
  L10_2 = {}
  L10_2.width = 30
  L10_2.height = 30
  L11_2 = Constants
  L11_2 = L11_2.Path_Assets
  L12_2 = "General/FC-backBotton.png"
  L11_2 = L11_2 .. L12_2
  L10_2.defaultFile = L11_2
  L11_2 = Constants
  L11_2 = L11_2.Path_Assets
  L12_2 = "General/FC-backBotton-pressed.png"
  L11_2 = L11_2 .. L12_2
  L10_2.overFile = L11_2
  
  function L11_2()
    local L0_3, L1_3, L2_3
    L0_3 = L5_1
    L0_3 = L0_3.removePoint
    L0_3()
    L0_3 = L0_1
    L0_3 = L0_3.getScene
    L1_3 = "Scenes.WorldMap"
    L0_3 = L0_3(L1_3)
    L1_3 = L0_3.verticalOverlay
    if L1_3 ~= nil then
      L1_3 = L0_3.verticalOverlay
      L2_3 = L1_3
      L1_3 = L1_3.remove
      L1_3(L2_3)
    end
    L1_3 = L0_1
    L1_3 = L1_3.getScene
    L2_3 = "Scenes.WorldMap"
    L1_3 = L1_3(L2_3)
    L1_3 = L1_3.questManager
    L1_3.mapState = 0
    L1_3 = L0_1
    L1_3 = L1_3.gotoScene
    L2_3 = "Scenes.WorldMap"
    L1_3(L2_3)
  end
  
  L10_2.onRelease = L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = L6_2.view
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L8_2.view
  L9_2(L10_2, L11_2)
  L8_2.delegate = A0_2
  L9_2 = L8_2.width
  L9_2 = L9_2 - 5
  L8_2.x = L9_2
  L9_2 = L8_1
  L10_2 = L8_2.height
  L9_2 = L9_2 - L10_2
  L9_2 = L9_2 + 5
  L8_2.y = L9_2
  return L6_2
end

new = L11_1

function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = log3
  L4_2 = "increaseProgress for sublevel: "
  L5_2 = A0_2.subLevel
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2.nodes
  L3_2 = L3_2[A1_2]
  L4_2 = A0_2.view
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = A0_2.nodeProgress
  L6_2 = L6_2.view
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.nodeProgress
  L4_2 = L4_2.view
  L5_2 = L3_2.view
  L5_2 = L5_2.x
  L4_2.x = L5_2
  L4_2 = A0_2.nodeProgress
  L4_2 = L4_2.view
  L5_2 = L3_2.view
  L5_2 = L5_2.y
  L4_2.y = L5_2
  L4_2 = A0_2.subLevel
  if L4_2 == 1 then
    if A2_2 ~= false then
      L4_2 = transition
      L4_2 = L4_2.to
      L5_2 = A0_2.nodes
      L5_2 = L5_2[A1_2]
      L5_2 = L5_2.lockRect
      L6_2 = {}
      L6_2.tag = "quest_trans"
      L6_2.xScale = 3
      L6_2.yScale = 3
      L6_2.alpha = 0
      L6_2.time = 1000
      L4_2(L5_2, L6_2)
    else
      L4_2 = A0_2.nodes
      L4_2 = L4_2[A1_2]
      L4_2 = L4_2.lockRect
      L4_2.alpha = 0
    end
  else
    L4_2 = A0_2.nodeProgress
    L5_2 = L4_2
    L4_2 = L4_2.startPieTimer
    L6_2 = A0_2.subLevel
    L6_2 = L6_2 - 1
    L7_2 = L0_1
    L7_2 = L7_2.getScene
    L8_2 = "Scenes.WorldMap"
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2.questManager
    L7_2 = L7_2.numberOfEeachSubWorldLevels
    L6_2 = L6_2 / L7_2
    L7_2 = "quest_trans"
    L8_2 = A2_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end

increaseProgress = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.nodes
  L2_2 = L2_2[A1_2]
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.nodeProgress
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.nodeProgress
  L3_2 = L3_2.view
  L4_2 = L2_2.view
  L4_2 = L4_2.x
  L3_2.x = L4_2
  L3_2 = A0_2.nodeProgress
  L3_2 = L3_2.view
  L4_2 = L2_2.view
  L4_2 = L4_2.y
  L3_2.y = L4_2
  L3_2 = A0_2.nodeProgress
  L4_2 = L3_2
  L3_2 = L3_2.resetPieTimer
  L5_2 = L0_1
  L5_2 = L5_2.getScene
  L6_2 = "Scenes.WorldMap"
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.questManager
  L5_2 = L5_2.numberOfEeachSubWorldLevels
  L5_2 = 9 / L5_2
  L6_2 = "quest_trans"
  L3_2(L4_2, L5_2, L6_2)
end

decreaseProgress = L11_1

function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = 1
  
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = L1_2
    L1_3 = A0_2
    L1_3 = L1_3.level
    if L0_3 < L1_3 then
      L0_3 = L10_1
      L1_3 = L1_2
      L2_3 = A0_2
      L2_3 = L2_3.branch
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        L0_3 = {}
        L0_3.type = "image"
        L1_3 = Constants
        L1_3 = L1_3.Path_Assets
        L2_3 = "Shop/3. 15000 Gold.png"
        L1_3 = L1_3 .. L2_3
        L0_3.filename = L1_3
        L1_3 = A0_2
        L1_3 = L1_3.nodes
        L2_3 = L1_2
        L1_3 = L1_3[L2_3]
        L1_3 = L1_3.treasure
        L1_3.fill = L0_3
        L1_3 = A0_2
        L1_3 = L1_3.nodes
        L2_3 = L1_2
        L1_3 = L1_3[L2_3]
        L1_3 = L1_3.treasure
        L1_3.alpha = 1
      end
      L0_3 = L1_2
      L0_3 = L0_3 + 1
      L1_2 = L0_3
      L0_3 = L2_2
      L0_3()
    end
  end
  
  L3_2 = L2_2
  L3_2()
end

changeTreaureImageForFinishedNode = L11_1

function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = 1
  
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = A0_2
    L0_3 = L0_3.nodes
    L1_3 = L2_2
    L0_3 = L0_3[L1_3]
    L1_3 = L2_2
    L2_3 = A0_2
    L2_3 = L2_3.level
    if L1_3 < L2_3 then
      L1_3 = transition
      L1_3 = L1_3.to
      L2_3 = L0_3.view
      L3_3 = {}
      L3_3.tag = "quest_trans"
      L3_3.xScale = 1.3
      L3_3.yScale = 1.3
      L4_3 = math
      L4_3 = L4_3.log
      L5_3 = L2_2
      L5_3 = L5_3 + 1
      L4_3 = L4_3(L5_3)
      L4_3 = 1 + L4_3
      L4_3 = 260 / L4_3
      L3_3.time = L4_3
      
      function L4_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4
        L0_4 = L0_3
        L1_4 = L0_4
        L0_4 = L0_4.finishProgress
        L0_4(L1_4)
        L0_4 = transition
        L0_4 = L0_4.to
        L1_4 = L0_3
        L1_4 = L1_4.view
        L2_4 = {}
        L2_4.tag = "quest_trans"
        L2_4.xScale = 1
        L2_4.yScale = 1
        L3_4 = math
        L3_4 = L3_4.log
        L4_4 = L2_2
        L4_4 = L4_4 + 1
        L3_4 = L3_4(L4_4)
        L3_4 = 1 + L3_4
        L3_4 = 260 / L3_4
        L2_4.time = L3_4
        
        function L3_4()
          local L0_5, L1_5, L2_5, L3_5, L4_5
          L0_5 = L2_2
          L1_5 = L10_1
          L2_5 = L2_2
          L3_5 = A0_2
          L3_5 = L3_5.branch
          L1_5 = L1_5(L2_5, L3_5)
          if L1_5 then
            L1_5 = {}
            L1_5.type = "image"
            L2_5 = Constants
            L2_5 = L2_5.Path_Assets
            L3_5 = "Shop/3. 15000 Gold.png"
            L2_5 = L2_5 .. L3_5
            L1_5.filename = L2_5
            L2_5 = A0_2
            L2_5 = L2_5.nodes
            L2_5 = L2_5[L0_5]
            L2_5 = L2_5.treasure
            L2_5.fill = L1_5
            L2_5 = A0_2
            L2_5 = L2_5.nodes
            L3_5 = L2_2
            L2_5 = L2_5[L3_5]
            L2_5 = L2_5.treasure
            L2_5.xScale = 0.5
            L2_5 = A0_2
            L2_5 = L2_5.nodes
            L3_5 = L2_2
            L2_5 = L2_5[L3_5]
            L2_5 = L2_5.treasure
            L2_5.yScale = 0.5
            L2_5 = transition
            L2_5 = L2_5.to
            L3_5 = A0_2
            L3_5 = L3_5.nodes
            L4_5 = L2_2
            L3_5 = L3_5[L4_5]
            L3_5 = L3_5.treasure
            L4_5 = {}
            L4_5.time = 500
            L4_5.alpha = 1
            L4_5.xScale = 1
            L4_5.yScale = 1
            L2_5(L3_5, L4_5)
          end
          L1_5 = L2_2
          L1_5 = L1_5 + 1
          L2_2 = L1_5
          L1_5 = L3_2
          L1_5()
        end
        
        L2_4.onComplete = L3_4
        L0_4(L1_4, L2_4)
      end
      
      L3_3.onComplete = L4_3
      L1_3(L2_3, L3_3)
    else
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.increaseProgress
      L3_3 = L2_2
      L1_3(L2_3, L3_3)
      L1_3 = A1_2
      if L1_3 then
        L1_3 = A1_2
        L1_3()
      end
    end
  end
  
  L4_2 = L3_2
  L5_2 = L2_2
  L4_2(L5_2)
end

finishedNodesAnimation = L11_1
