local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.SceneCreator"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Views.TabBar"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Language"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.CreateTribeView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.TribesView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Utils.Analytics"
L6_1 = L6_1(L7_1)
L7_1 = L1_1.newScene
L8_1 = "TribeFinderScene"
L7_1 = L7_1(L8_1)

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2.view
  L3_2 = display
  L3_2 = L3_2.newImageRect
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "FC-bg.png"
  L4_2 = L4_2 .. L5_2
  L5_2 = 570
  L6_2 = 360
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L5_2 = L2_2
  L4_2 = L2_2.insert
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = L2_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L7_2 = L3_1
  L7_2 = L7_2["Tribe Search"]
  L8_2 = L3_1
  L8_2 = L8_2["Create Tribe"]
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L7_2 = {}
  L7_2.previousScene = "Scenes.Home"
  L7_2.noMask = true
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.setPosition
  L7_2 = 0
  L8_2 = 0
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L4_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = "create"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = "search"
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = L4_2
  L7_2 = L4_2.setButtonsView
  L9_2 = {}
  L10_2 = L6_2
  L11_2 = L5_2
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L7_2(L8_2, L9_2)
  L8_2 = L2_2
  L7_2 = L2_2.insert
  L9_2 = L4_2.view
  L7_2(L8_2, L9_2)
  A0_2.bar = L4_2
end

L7_1.create = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L6_1
  L2_2 = L2_2.logEvent
  L3_2 = "TribeFinder Scene Shown"
  L2_2(L3_2)
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = "Scenes.Home"
    _backAction = L4_2
    L4_2 = sceneChange
    if L4_2 ~= nil then
      L4_2 = sceneChange
      L4_2 = L4_2.refresh
      L4_2()
    end
    L4_2 = A0_2.bar
    L5_2 = L4_2
    L4_2 = L4_2.selectButtonWithId
    L6_2 = 1
    L4_2(L5_2, L6_2)
  end
end

L7_1.show = L8_1

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = A0_2.bar
    L4_2 = L4_2.buttons
    L4_2 = L4_2[1]
    L4_2 = L4_2.buttonView
    L5_2 = L4_2
    L4_2 = L4_2.hide
    L4_2(L5_2)
    L4_2 = A0_2.bar
    L4_2 = L4_2.buttons
    L4_2 = L4_2[2]
    L4_2 = L4_2.buttonView
    L5_2 = L4_2
    L4_2 = L4_2.hide
    L4_2(L5_2)
  end
end

L7_1.hide = L8_1

function L8_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.view
end

L7_1.destroy = L8_1
L9_1 = L7_1
L8_1 = L7_1.addEventListener
L10_1 = "create"
L11_1 = L7_1
L8_1(L9_1, L10_1, L11_1)
L9_1 = L7_1
L8_1 = L7_1.addEventListener
L10_1 = "show"
L11_1 = L7_1
L8_1(L9_1, L10_1, L11_1)
L9_1 = L7_1
L8_1 = L7_1.addEventListener
L10_1 = "hide"
L11_1 = L7_1
L8_1(L9_1, L10_1, L11_1)
L9_1 = L7_1
L8_1 = L7_1.addEventListener
L10_1 = "destroy"
L11_1 = L7_1
L8_1(L9_1, L10_1, L11_1)
return L7_1
