local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Models.Node"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "json"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Utils.Toolbox"
L3_1 = L3_1(L4_1)

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = A2_2
  L6_2 = 10
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  o = L3_2
  L3_2 = {}
  L3_2.type = "image"
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "Shop/FC-shop-box-closed.png"
  L4_2 = L4_2 .. L5_2
  L3_2.filename = L4_2
  L4_2 = o
  L5_2 = display
  L5_2 = L5_2.newRect
  L6_2 = o
  L6_2 = L6_2.view
  L7_2 = 0
  L8_2 = 0
  L9_2 = 30
  L10_2 = 30
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2.treasure = L5_2
  L4_2 = o
  L4_2 = L4_2.treasure
  L4_2.fill = L3_2
  L4_2 = o
  L4_2 = L4_2.treasure
  L4_2.alpha = 0
  L4_2 = o
  L4_2 = L4_2.treasure
  L4_2.x = 0
  L4_2 = o
  L4_2 = L4_2.treasure
  L5_2 = o
  L5_2 = L5_2.bgRect
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L5_2 = L5_2 + 12
  L4_2.y = L5_2
  L4_2 = o
  L4_2.id = A1_2
  L4_2 = o
  L5_2 = tap
  L4_2.tap = L5_2
  L4_2 = o
  L4_2 = L4_2.view
  L5_2 = L4_2
  L4_2 = L4_2.addEventListener
  L6_2 = "tap"
  L7_2 = o
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = o
  L5_2 = {}
  L4_2.nextNodes = L5_2
  L4_2 = o
  L5_2 = {}
  L4_2.previousNodes = L5_2
  L4_2 = o
  L4_2.bossNode = false
  L4_2 = o
  L5_2 = setColor
  L4_2.setColor = L5_2
  L4_2 = o
  return L4_2
end

new = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._status
  if L2_2 == "close" then
    L2_2 = log3
    L3_2 = "node is close"
    L2_2(L3_2)
  else
    L2_2 = A0_2._status
    if L2_2 == "finnished" then
      L2_2 = log3
      L3_2 = "quests for this node has finnished"
      L2_2(L3_2)
    else
      L2_2 = log3
      L3_2 = "this node is bossNode :"
      L4_2 = A0_2.bossNode
      L2_2(L3_2, L4_2)
      L2_2 = A0_2.bossNode
      if L2_2 == true then
        L2_2 = A0_2.progressNumber
        L3_2 = A0_2.questCount
        if L2_2 == L3_2 then
          L2_2 = log3
          L3_2 = "FinalBossBattle"
          L2_2(L3_2)
        end
      end
      L2_2 = {}
      L2_2.mode = "quest"
      L2_2.previousScene = "Scenes.WorldMap"
      L3_2 = A0_2.branch
      L2_2.branch = L3_2
      L3_2 = L0_1
      L3_2 = L3_2.gotoScene
      L4_2 = "Scenes.ChooseDeck"
      L5_2 = {}
      L5_2.params = L2_2
      L3_2(L4_2, L5_2)
    end
  end
end

tap = L4_1
