local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1
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
L5_1 = "Views.CardView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Language"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Models.Operation"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Views.AdjustableProgressBar"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Views.ActivityIndicatorView"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Tutorial.VerticalOverlayView"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Models.Player"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Models.AchievementManager"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Views.ChatButton"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Utils.Toolbox"
L13_1 = L13_1(L14_1)
L14_1 = require
L15_1 = "json"
L14_1 = L14_1(L15_1)
L15_1 = require
L16_1 = "Components.TDButtonView"
L15_1 = L15_1(L16_1)
L16_1 = require
L17_1 = "Tutorial.TutorialManager2"
L16_1 = L16_1(L17_1)
L17_1 = L1_1.newScene
L18_1 = "Evolve"
L17_1 = L17_1(L18_1)
L18_1 = {}
L19_1 = {}
L20_1 = {}
L21_1 = {}
L22_1 = 0
L23_1 = nil
L24_1 = nil

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.cardUsedForBuilding
    if L7_2 ~= true then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L1_2
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L2_3 = L2_3[A0_3]
    L3_3 = A0_2
    L3_3 = L3_3[A1_3]
    L4_3 = L2_3.power
    L5_3 = L3_3.power
    L4_3 = L4_3 > L5_3
    return L4_3
  end
  
  L2_2(L3_2, L4_2)
  return L1_2
end

function L26_1()
  local L0_2, L1_2
  L0_2 = L25_1
  L1_2 = L20_1
  L0_2 = L0_2(L1_2)
  L1_2 = #L0_2
  L1_2 = L0_2[L1_2]
  return L1_2
end

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.baseId
    L8_2 = L23_1
    L8_2 = L8_2.baseId
    if L7_2 == L8_2 then
      L7_2 = L6_2.cardUsedForBuilding
      if L7_2 ~= true then
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = L1_2
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
  end
  return L1_2
end

function L28_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L8_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = mainPlayer
  L1_2 = L1_2.cards
  L2_2 = A0_2.id
  L1_2[L2_2] = A0_2
  L1_2 = mainPlayer
  L1_2 = L1_2.isSeenCardWithId
  L2_2 = A0_2.baseId
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = mainPlayer
    L2_2 = L2_2.collection
    L3_2 = A0_2.baseId
    L1_2(L2_2, L3_2)
  end
  L1_2 = log3
  L2_2 = "collection cards is : "
  L3_2 = L14_1
  L3_2 = L3_2.encode
  L4_2 = mainPlayer
  L4_2 = L4_2.collection
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2 = {}
  L2_2 = pairs
  L3_2 = L20_1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = L11_1
  L2_2 = L2_2.checkColletionAchievements
  L2_2()
  L2_2 = L11_1
  L2_2 = L2_2.cardEvolved
  L2_2()
  L2_2 = L11_1
  L2_2 = L2_2.checkSecretAchievements
  L2_2()
  L2_2 = L0_1
  L2_2 = L2_2.gotoScene
  L3_2 = "Scenes.EvolveAnimationScene"
  L4_2 = {}
  L5_2 = {}
  L6_2 = L1_2[1]
  L5_2.card1 = L6_2
  L6_2 = L1_2[2]
  L5_2.card2 = L6_2
  L5_2.result = A0_2
  L4_2.params = L5_2
  L2_2(L3_2, L4_2)
end

didEvolveCallback = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L8_1
  L2_2 = L2_2.hide
  L2_2()
  if A1_2 == "Network error" then
    L2_2 = showSimpleDialog
    L3_2 = "Evolve"
    L4_2 = A1_2
    L5_2 = "Reload"
    
    function L6_2()
      local L0_3, L1_3, L2_3
      L0_3 = L0_1
      L0_3 = L0_3.gotoScene
      L1_3 = "Scenes.Loading"
      L0_3(L1_3)
      L0_3 = L10_1
      L1_3 = L0_1
      L1_3 = L1_3.getScene
      L2_3 = "Scenes.Loading"
      L1_3 = L1_3(L2_3)
      L0_3.delegate = L1_3
      L0_3 = L10_1
      L0_3 = L0_3.loadPlayer
      L0_3()
    end
    
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = showSimpleDialog
    L3_2 = "Evolve"
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end

failedEvolveCallback = L28_1

function L28_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.cardUsedForBuilding
    if L7_2 ~= true then
      L1_2 = L1_2 + 1
    end
  end
  return L1_2
end

function L29_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L28_1
  L2_2 = mainPlayer
  L2_2 = L2_2.cards
  L1_2 = L1_2(L2_2)
  L2_2 = L28_1
  L3_2 = L20_1
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 - L2_2
  if L1_2 < 3 then
    L1_2 = showSimpleDialog
    L2_2 = "Evolve"
    L3_2 = "You've selected too many cards. You need to keep at least four of your cards otherwise you won't be able to go to battles and quests!"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = {}
  L2_2 = pairs
  L3_2 = L20_1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = mainPlayer
  L3_2 = L2_2
  L2_2 = L2_2.checkPlayerCurrency
  L4_2 = L1_2[1]
  L5_2 = L4_2
  L4_2 = L4_2.evolutionCostWithCard
  L6_2 = L1_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2, L6_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  if L2_2 then
    L2_2 = L8_1
    L2_2 = L2_2.show
    L3_2 = L5_1
    L3_2 = L3_2.Evolve
    L2_2(L3_2)
    L2_2 = L1_2[1]
    L3_2 = L2_2
    L2_2 = L2_2.evolveWithCard
    L4_2 = L1_2[2]
    L5_2 = didEvolveCallback
    L6_2 = failedEvolveCallback
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end

function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = log3
  L2_2 = "REPAINT:"
  L1_2(L2_2)
  L1_2 = log3
  L2_2 = "Cards dump before clearing"
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = L19_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = log3
    L7_2 = L4_2
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = pairs
  L2_2 = L19_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 ~= nil then
      L6_2 = L5_2.smallCard
      if L6_2 ~= nil then
        L6_2 = display
        L6_2 = L6_2.remove
        L7_2 = L5_2.smallCard
        L7_2 = L7_2.view
        L6_2(L7_2)
        L6_2 = L5_2.smallCard
        L6_2.view = nil
        L5_2.smallCard = nil
        L6_2 = L19_1
        L6_2[L4_2] = nil
      end
    end
  end
  L1_2 = log3
  L2_2 = "Cards dump after clearing"
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = L19_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = log3
    L7_2 = L4_2
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = 1
  L2_2 = L25_1
  L3_2 = L20_1
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L19_1
    L9_2 = {}
    L9_2.smallCard = nil
    L8_2[L1_2] = L9_2
    L8_2 = L19_1
    L8_2 = L8_2[L1_2]
    L9_2 = L4_1
    L10_2 = L9_2
    L9_2 = L9_2.new
    L11_2 = "small"
    L12_2 = L20_1
    L12_2 = L12_2[L7_2]
    L13_2 = L17_1
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    L8_2.smallCard = L9_2
    L8_2 = L19_1
    L8_2 = L8_2[L1_2]
    L8_2 = L8_2.smallCard
    L9_2 = L8_2
    L8_2 = L8_2.setSelectable
    L10_2 = true
    L8_2(L9_2, L10_2)
    L8_2 = L19_1
    L8_2 = L8_2[L1_2]
    L8_2 = L8_2.smallCard
    L9_2 = L8_2
    L8_2 = L8_2.setAction
    L8_2(L9_2)
    L8_2 = L19_1
    L8_2 = L8_2[L1_2]
    L8_2 = L8_2.smallCard
    L9_2 = L8_2
    L8_2 = L8_2.didSelect
    L8_2(L9_2)
    L8_2 = A0_2.selectedGroup
    L9_2 = L8_2
    L8_2 = L8_2.insert
    L10_2 = L19_1
    L10_2 = L10_2[L1_2]
    L10_2 = L10_2.smallCard
    L10_2 = L10_2.view
    L8_2(L9_2, L10_2)
    L8_2 = L19_1
    L8_2 = L8_2[L1_2]
    L8_2 = L8_2.smallCard
    L9_2 = L8_2
    L8_2 = L8_2.setPosition
    L10_2 = math
    L10_2 = L10_2.abs
    L11_2 = L1_2 % 2
    L11_2 = L11_2 - 1
    L10_2 = L10_2(L11_2)
    L10_2 = L10_2 * 65
    L10_2 = 10 + L10_2
    L11_2 = display
    L11_2 = L11_2.contentHeight
    L11_2 = L11_2 * 0.13
    L12_2 = math
    L12_2 = L12_2.ceil
    L13_2 = L1_2 / 2
    L12_2 = L12_2(L13_2)
    L12_2 = L12_2 - 1
    L12_2 = L12_2 * 83
    L11_2 = L11_2 + L12_2
    L8_2(L9_2, L10_2, L11_2)
    L1_2 = L1_2 + 1
  end
  L3_2 = log3
  L4_2 = "i:"
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = L1_2
  L4_2 = 2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = log3
    L8_2 = "j"
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = display
    L7_2 = L7_2.newImageRect
    L8_2 = A0_2.selectedGroup
    L9_2 = Constants
    L9_2 = L9_2.Path_Assets
    L10_2 = "CardView/small-card-bg.png"
    L9_2 = L9_2 .. L10_2
    L10_2 = 60
    L11_2 = 80
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L8_2 = L19_1
    L9_2 = {}
    L10_2 = {}
    L10_2.view = L7_2
    L9_2.smallCard = L10_2
    L8_2[L1_2] = L9_2
    L8_2 = math
    L8_2 = L8_2.abs
    L9_2 = L6_2 % 2
    L9_2 = L9_2 - 1
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2 * 65
    L8_2 = 10 + L8_2
    L8_2 = L8_2 + 30
    L7_2.x = L8_2
    L8_2 = display
    L8_2 = L8_2.contentHeight
    L8_2 = L8_2 * 0.13
    L9_2 = math
    L9_2 = L9_2.ceil
    L10_2 = L6_2 / 2
    L9_2 = L9_2(L10_2)
    L9_2 = L9_2 - 1
    L9_2 = L9_2 * 83
    L8_2 = L8_2 + L9_2
    L8_2 = L8_2 + 40
    L7_2.y = L8_2
  end
  L3_2 = L13_1
  L3_2 = L3_2.stringThousandCommaSeperated
  L4_2 = ""
  L5_2 = L23_1
  L6_2 = L5_2
  L5_2 = L5_2.evolutionCostWithCard
  L7_2 = L20_1
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2 .. L5_2
  L3_2 = L3_2(L4_2)
  L4_2 = L13_1
  L4_2 = L4_2.addKForLargeNumber
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L3_2 = L4_2
  L4_2 = L5_1
  L4_2 = L4_2.adjustNumber
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L3_2 = L4_2
  L4_2 = A0_2.costLabel
  L4_2.text = L3_2
  L4_2 = L5_1
  L4_2 = L4_2.lang
  if L4_2 == "en" then
    L4_2 = A0_2.costLabel
    L5_2 = A0_2.costLabel
    L5_2 = L5_2.width
    L5_2 = L5_2 / 2
    L5_2 = 140 - L5_2
    L4_2.x = L5_2
  else
    L4_2 = A0_2.costLabel
    L5_2 = A0_2.costLabel
    L5_2 = L5_2.width
    L5_2 = L5_2 / 2
    L5_2 = 5 + L5_2
    L4_2.x = L5_2
  end
  L4_2 = 0
  L5_2 = nil
  L6_2 = nil
  L7_2 = pairs
  L8_2 = L20_1
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L4_2 = L4_2 + 1
    if L4_2 == 1 then
      L5_2 = L11_2
    elseif L4_2 == 2 then
      L6_2 = L11_2
    end
  end
  if 1 < L4_2 then
    L7_2 = L13_1
    L7_2 = L7_2.stringThousandCommaSeperated
    L8_2 = ""
    L10_2 = L5_2
    L9_2 = L5_2.evolutionPowerWithCard
    L11_2 = L6_2
    L9_2 = L9_2(L10_2, L11_2)
    L8_2 = L8_2 .. L9_2
    L7_2 = L7_2(L8_2)
    L8_2 = L13_1
    L8_2 = L8_2.addKForLargeNumber
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L7_2 = L8_2
    L8_2 = L5_1
    L8_2 = L8_2.adjustNumber
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L7_2 = L8_2
    L8_2 = A0_2.powerLabel
    L8_2.text = L7_2
  else
    L7_2 = A0_2.powerLabel
    L8_2 = L5_1
    L8_2 = L8_2.adjustNumber
    L9_2 = "0"
    L8_2 = L8_2(L9_2)
    L7_2.text = L8_2
  end
  L7_2 = L5_1
  L7_2 = L7_2.lang
  if L7_2 == "en" then
    L7_2 = A0_2.powerLabel
    L8_2 = A0_2.powerLabel
    L8_2 = L8_2.width
    L8_2 = L8_2 / 2
    L8_2 = 140 - L8_2
    L7_2.x = L8_2
  else
    L7_2 = A0_2.powerLabel
    L8_2 = A0_2.powerLabel
    L8_2 = L8_2.width
    L8_2 = L8_2 / 2
    L8_2 = 5 + L8_2
    L7_2.x = L8_2
  end
end

function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L24_1
  L1_2.alpha = 0.3
  L1_2 = L24_1
  L2_2 = L1_2
  L1_2 = L1_2.setEnabled
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = L22_1
  L1_2 = L1_2 - 1
  L22_1 = L1_2
  L1_2 = log3
  L2_2 = "~~~~~~~~~ ~~~~~~ DESELECTED : selected number"
  L3_2 = L22_1
  L4_2 = A0_2.card
  L4_2 = L4_2.id
  L5_2 = A0_2.card
  L5_2 = L5_2.name
  L6_2 = A0_2.card
  L6_2 = L6_2.power
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = L21_1
  L2_2 = A0_2.card
  L2_2 = L2_2.id
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.deselected
  L1_2(L2_2)
  L1_2 = L20_1
  L2_2 = A0_2.card
  L2_2 = L2_2.id
  L1_2[L2_2] = nil
  L1_2 = L21_1
  L2_2 = A0_2.card
  L2_2 = L2_2.id
  L1_2[L2_2] = nil
  L1_2 = L30_1
  L2_2 = L17_1
  L1_2(L2_2)
end

L17_1.cardDeselected = L31_1

function L31_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = pairs
  L1_2 = L19_1
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = log3
    L6_2 = "card "
    L7_2 = L3_2
    L8_2 = "withName:"
    L9_2 = L4_2.smallCard
    L9_2 = L9_2.name
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end

function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = log3
  L2_2 = "SELECTED"
  L1_2(L2_2)
  L1_2 = L31_1
  L1_2()
  L1_2 = L22_1
  L1_2 = L1_2 + 1
  L22_1 = L1_2
  L1_2 = L22_1
  if L1_2 < 2 then
    L1_2 = L24_1
    L1_2.alpha = 0.3
    L1_2 = L24_1
    L2_2 = L1_2
    L1_2 = L1_2.setEnabled
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L1_2 = L24_1
    L1_2.alpha = 1
    L1_2 = L24_1
    L2_2 = L1_2
    L1_2 = L1_2.setEnabled
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L1_2 = L22_1
  if L1_2 <= 2 then
    L1_2 = log3
    L2_2 = A0_2.card
    L2_2 = L2_2.id
    L3_2 = A0_2.card
    L3_2 = L3_2.name
    L1_2(L2_2, L3_2)
    L1_2 = L20_1
    L2_2 = A0_2.card
    L2_2 = L2_2.id
    L3_2 = A0_2.card
    L1_2[L2_2] = L3_2
    L1_2 = L21_1
    L2_2 = A0_2.card
    L2_2 = L2_2.id
    L1_2[L2_2] = A0_2
    L1_2 = L30_1
    L2_2 = L17_1
    L1_2(L2_2)
  else
    L1_2 = 2
    L22_1 = L1_2
    L1_2 = L26_1
    L1_2 = L1_2()
    L2_2 = L21_1
    L2_2 = L2_2[L1_2]
    L3_2 = L2_2
    L2_2 = L2_2.deselected
    L2_2(L3_2)
    L2_2 = L21_1
    L2_2[L1_2] = nil
    L2_2 = L20_1
    L2_2[L1_2] = nil
    L2_2 = L21_1
    L3_2 = A0_2.card
    L3_2 = L3_2.id
    L2_2[L3_2] = A0_2
    L2_2 = L20_1
    L3_2 = A0_2.card
    L3_2 = L3_2.id
    L4_2 = A0_2.card
    L2_2[L3_2] = L4_2
    L2_2 = L30_1
    L3_2 = L17_1
    L2_2(L3_2)
  end
end

L17_1.cardSelected = L32_1

function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = pairs
  L2_2 = L18_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = display
    L6_2 = L6_2.remove
    L7_2 = L5_2.view
    L6_2(L7_2)
    L6_2 = L5_2.timer1
    if L6_2 then
      L6_2 = timer
      L6_2 = L6_2.cancel
      L7_2 = L5_2.timer1
      L6_2(L7_2)
    end
    L6_2 = L18_1
    L6_2[L4_2] = nil
  end
  L1_2 = pairs
  L2_2 = L19_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 ~= nil then
      L6_2 = L5_2.smallCard
      if L6_2 ~= nil then
        L6_2 = display
        L6_2 = L6_2.remove
        L7_2 = L5_2.smallCard
        L7_2 = L7_2.view
        L6_2(L7_2)
        L6_2 = L5_2.smallCard
        L6_2.view = nil
        L5_2.smallCard = nil
        L6_2 = L19_1
        L6_2[L4_2] = nil
      end
    end
  end
  L1_2 = {}
  L20_1 = L1_2
  L1_2 = 0
  L22_1 = L1_2
  L1_2 = {}
  L21_1 = L1_2
  L1_2 = L27_1
  L2_2 = mainPlayer
  L2_2 = L2_2.cards
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L4_1
    L8_2 = L7_2
    L7_2 = L7_2.new
    L9_2 = "big"
    L10_2 = L6_2
    L11_2 = L17_1
    L12_2 = {}
    L12_2.cardWidth = 178
    L12_2.cardHeight = 250
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L9_2 = L7_2
    L8_2 = L7_2.setSelectable
    L10_2 = true
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.setAction
    L8_2(L9_2)
    L9_2 = L7_2
    L8_2 = L7_2.setId
    L10_2 = L5_2
    L8_2(L9_2, L10_2)
    L8_2 = A0_2.scroller1
    L9_2 = L8_2
    L8_2 = L8_2.insert
    L10_2 = L7_2.view
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.setPosition
    L10_2 = L5_2 - 1
    L10_2 = L10_2 * 185
    L10_2 = 5 + L10_2
    L11_2 = display
    L11_2 = L11_2.contentHeight
    L11_2 = L11_2 - 250
    L11_2 = L11_2 - 50
    L11_2 = L11_2 / 2
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = L18_1
    L8_2[L6_2] = L7_2
  end
  L2_2 = A0_2.scroller1
  L3_2 = L2_2
  L2_2 = L2_2.scrollToPosition
  L4_2 = {}
  L4_2.x = 0
  L2_2(L3_2, L4_2)
end

L17_1.setupCardScrollers = L32_1

function L32_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = A0_2.view
  L3_2 = {}
  L18_1 = L3_2
  L3_2 = A1_2.params
  L3_2 = L3_2.evolveCard
  L23_1 = L3_2
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
  L4_2 = L3_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L4_2 = L4_2(L5_2)
  A0_2.navBar = L4_2
  L4_2 = A0_2.navBar
  L5_2 = L4_2
  L4_2 = L4_2.setTitle
  L6_2 = L5_1
  L6_2 = L6_2.Evolve
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.navBar
  L4_2.helpId = 24
  L5_2 = L2_2
  L4_2 = L2_2.insert
  L6_2 = A0_2.navBar
  L6_2 = L6_2.view
  L4_2(L5_2, L6_2)
  L4_2 = display
  L4_2 = L4_2.newRoundedRect
  L5_2 = L2_2
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 / 2
  L7_2 = display
  L7_2 = L7_2.contentHeight
  L7_2 = L7_2 - 45
  L7_2 = L7_2 / 2
  L7_2 = 40 + L7_2
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 - 10
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 - 45
  L10_2 = 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.whiteColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L4_2.strokeWidth = 3
  L6_2 = L4_2
  L5_2 = L4_2.setStrokeColor
  L7_2 = Constants
  L7_2 = L7_2.greenColorSceneBorder
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  L6_2 = L27_1
  L7_2 = mainPlayer
  L7_2 = L7_2.cards
  L6_2 = L6_2(L7_2)
  L7_2 = L2_1
  L7_2 = L7_2.newScrollView
  L8_2 = {}
  L9_2 = display
  L9_2 = L9_2.contentWidth
  L9_2 = L9_2 - 5
  L9_2 = L9_2 - 145
  L8_2.width = L9_2
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 - 60
  L8_2.height = L9_2
  L8_2.hideScrollBar = true
  L8_2.verticalScrollDisabled = true
  L9_2 = math
  L9_2 = L9_2.ceil
  L10_2 = #L6_2
  L9_2 = L9_2(L10_2)
  L9_2 = L9_2 - 1
  L9_2 = L9_2 * 170
  L8_2.scrollWidth = L9_2
  L8_2.scrollHeight = 0
  L8_2.rightPadding = 20
  L9_2 = {}
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L13_2 = 0
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L9_2[3] = L12_2
  L9_2[4] = L13_2
  L8_2.backgroundColor = L9_2
  L7_2 = L7_2(L8_2)
  A0_2.scroller1 = L7_2
  L7_2 = A0_2.scroller1
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 - 5
  L8_2 = L8_2 - 145
  L8_2 = L8_2 / 2
  L8_2 = 5 + L8_2
  L7_2.x = L8_2
  L7_2 = A0_2.scroller1
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 - 60
  L8_2 = L8_2 / 2
  L8_2 = 40 + L8_2
  L7_2.y = L8_2
  L8_2 = L5_2
  L7_2 = L5_2.insert
  L9_2 = A0_2.scroller1
  L7_2(L8_2, L9_2)
  L7_2 = display
  L7_2 = L7_2.newGroup
  L7_2 = L7_2()
  A0_2.selectedGroup = L7_2
  L7_2 = display
  L7_2 = L7_2.newRect
  L8_2 = A0_2.selectedGroup
  L9_2 = 72.5
  L10_2 = display
  L10_2 = L10_2.contentHeight
  L10_2 = L10_2 - 47
  L10_2 = L10_2 / 2
  L10_2 = 11 + L10_2
  L11_2 = 145
  L12_2 = display
  L12_2 = L12_2.contentHeight
  L12_2 = L12_2 - 47
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L9_2 = L7_2
  L8_2 = L7_2.setFillColor
  L10_2 = Constants
  L10_2 = L10_2.lightBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L9_2 = L7_2
  L8_2 = L7_2.addEventListener
  L10_2 = "touch"
  
  function L11_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = L7_2
  L8_2 = L7_2.addEventListener
  L10_2 = "tap"
  
  function L11_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = A0_2.selectedGroup
  L10_2 = L5_1
  L10_2 = L10_2["Evolve card select title"]
  L11_2 = 0
  L12_2 = 0
  L13_2 = Constants
  L13_2 = L13_2.fontForTitle
  L13_2 = L13_2()
  L14_2 = 12
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  A0_2.descLabel = L8_2
  L8_2 = A0_2.descLabel
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = Constants
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = A0_2.descLabel
  L8_2.x = 72.5
  L8_2 = A0_2.descLabel
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 * 0.08
  L8_2.y = L9_2
  L8_2 = A0_2.selectedGroup
  L9_2 = display
  L9_2 = L9_2.contentWidth
  L9_2 = L9_2 - 150
  L8_2.x = L9_2
  L8_2 = A0_2.selectedGroup
  L8_2.y = 30
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = A0_2.selectedGroup
  L10_2 = L5_1
  L10_2 = L10_2.Cost
  L11_2 = ":"
  L10_2 = L10_2 .. L11_2
  L11_2 = 0
  L12_2 = 0
  L13_2 = Constants
  L13_2 = L13_2.fontForTitle
  L13_2 = L13_2()
  L14_2 = 11
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L10_2 = L8_2
  L9_2 = L8_2.setFillColor
  L11_2 = Constants
  L11_2 = L11_2.darkBlueColor
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L11_2()
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L9_2 = display
  L9_2 = L9_2.newText
  L10_2 = A0_2.selectedGroup
  L11_2 = L5_1
  L11_2 = L11_2["New power"]
  L12_2 = ":"
  L11_2 = L11_2 .. L12_2
  L12_2 = 0
  L13_2 = 0
  L14_2 = Constants
  L14_2 = L14_2.fontForTitle
  L14_2 = L14_2()
  L15_2 = 11
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L11_2 = L9_2
  L10_2 = L9_2.setFillColor
  L12_2 = Constants
  L12_2 = L12_2.darkBlueColor
  L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2 = L5_1
  L10_2 = L10_2.lang
  if L10_2 ~= "en" then
    L10_2 = L5_1
    L10_2 = L10_2.lang
    if L10_2 ~= "fr" then
      goto lbl_246
    end
  end
  L10_2 = L8_2.width
  L10_2 = L10_2 / 2
  L10_2 = 5 + L10_2
  L8_2.x = L10_2
  L10_2 = L9_2.width
  L10_2 = L10_2 / 2
  L10_2 = 5 + L10_2
  L9_2.x = L10_2
  goto lbl_254
  ::lbl_246::
  L10_2 = L8_2.width
  L10_2 = L10_2 / 2
  L10_2 = 140 - L10_2
  L8_2.x = L10_2
  L10_2 = L9_2.width
  L10_2 = L10_2 / 2
  L10_2 = 140 - L10_2
  L9_2.x = L10_2
  ::lbl_254::
  L10_2 = display
  L10_2 = L10_2.contentHeight
  L10_2 = L10_2 * 0.67
  L8_2.y = L10_2
  L10_2 = display
  L10_2 = L10_2.contentHeight
  L10_2 = L10_2 * 0.6
  L9_2.y = L10_2
  L10_2 = display
  L10_2 = L10_2.newText
  L11_2 = A0_2.selectedGroup
  L12_2 = "0"
  L13_2 = 0
  L14_2 = 0
  L15_2 = Constants
  L15_2 = L15_2.fontForTitle
  L15_2 = L15_2()
  L16_2 = 11
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  A0_2.costLabel = L10_2
  L10_2 = A0_2.costLabel
  L11_2 = L10_2
  L10_2 = L10_2.setFillColor
  L12_2 = Constants
  L12_2 = L12_2.darkBlueColor
  L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2 = display
  L10_2 = L10_2.newText
  L11_2 = A0_2.selectedGroup
  L12_2 = "0"
  L13_2 = 0
  L14_2 = 0
  L15_2 = Constants
  L15_2 = L15_2.fontForTitle
  L15_2 = L15_2()
  L16_2 = 11
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  A0_2.powerLabel = L10_2
  L10_2 = A0_2.powerLabel
  L11_2 = L10_2
  L10_2 = L10_2.setFillColor
  L12_2 = Constants
  L12_2 = L12_2.darkBlueColor
  L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2 = L5_1
  L10_2 = L10_2.lang
  if L10_2 ~= "en" then
    L10_2 = L5_1
    L10_2 = L10_2.lang
    if L10_2 ~= "fr" then
      goto lbl_319
    end
  end
  L10_2 = A0_2.costLabel
  L11_2 = A0_2.costLabel
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L11_2 = 140 - L11_2
  L10_2.x = L11_2
  L10_2 = A0_2.powerLabel
  L11_2 = A0_2.powerLabel
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L11_2 = 140 - L11_2
  L10_2.x = L11_2
  goto lbl_331
  ::lbl_319::
  L10_2 = A0_2.costLabel
  L11_2 = A0_2.costLabel
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L11_2 = 5 + L11_2
  L10_2.x = L11_2
  L10_2 = A0_2.powerLabel
  L11_2 = A0_2.powerLabel
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L11_2 = 5 + L11_2
  L10_2.x = L11_2
  ::lbl_331::
  L10_2 = A0_2.costLabel
  L11_2 = display
  L11_2 = L11_2.contentHeight
  L11_2 = L11_2 * 0.67
  L10_2.y = L11_2
  L10_2 = A0_2.powerLabel
  L11_2 = display
  L11_2 = L11_2.contentHeight
  L11_2 = L11_2 * 0.6
  L10_2.y = L11_2
  L10_2 = L15_1
  L11_2 = L10_2
  L10_2 = L10_2.new
  L12_2 = {}
  L13_2 = L5_1
  L13_2 = L13_2.Evolve
  L12_2.label = L13_2
  L13_2 = Theme
  L13_2 = L13_2.colorsSet
  L13_2 = L13_2.whiteColor
  L12_2.labelColor = L13_2
  L13_2 = Constants
  L13_2 = L13_2.Path_Assets
  L14_2 = "Buttons/FC-gui.png"
  L13_2 = L13_2 .. L14_2
  L12_2.imageName = L13_2
  L12_2.width = 100
  L12_2.height = 30
  L13_2 = L29_1
  L12_2.onRelease = L13_2
  L10_2 = L10_2(L11_2, L12_2)
  L24_1 = L10_2
  L10_2 = A0_2.selectedGroup
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = L24_1
  L12_2 = L12_2.view
  L10_2(L11_2, L12_2)
  L10_2 = L24_1
  L10_2.x = 72.5
  L10_2 = L24_1
  L11_2 = display
  L11_2 = L11_2.contentHeight
  L11_2 = L11_2 * 0.82
  L10_2.y = L11_2
  L10_2 = L24_1
  L10_2.alpha = 0.3
  L10_2 = L24_1
  L11_2 = L10_2
  L10_2 = L10_2.setEnabled
  L12_2 = false
  L10_2(L11_2, L12_2)
  L11_2 = L5_2
  L10_2 = L5_2.insert
  L12_2 = A0_2.selectedGroup
  L10_2(L11_2, L12_2)
  L11_2 = L2_2
  L10_2 = L2_2.insert
  L12_2 = L5_2
  L10_2(L11_2, L12_2)
  L10_2 = graphics
  L10_2 = L10_2.newMask
  L11_2 = Constants
  L11_2 = L11_2.Path_Assets
  L12_2 = "General/FC-navIncluded"
  L13_2 = Constants
  L13_2 = L13_2.deviceSpecificFilePostfix
  L13_2 = L13_2()
  L14_2 = "mask.png"
  L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2
  L10_2 = L10_2(L11_2)
  L12_2 = L5_2
  L11_2 = L5_2.setMask
  L13_2 = L10_2
  L11_2(L12_2, L13_2)
  L11_2 = display
  L11_2 = L11_2.contentCenterX
  L11_2 = L11_2 + 0.5
  L5_2.maskX = L11_2
  L11_2 = display
  L11_2 = L11_2.contentCenterY
  L5_2.maskY = L11_2
end

L17_1.create = L32_1

function L32_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = "Scenes.Cards"
    _backAction = L4_2
    L4_2 = L12_1
    L4_2 = L4_2.newOnScene
    L5_2 = A0_2
    L4_2(L5_2)
    L4_2 = L0_1
    L4_2 = L4_2.getSceneName
    L5_2 = "previous"
    L4_2 = L4_2(L5_2)
    if L4_2 ~= "Scenes.HelpScene" then
      L4_2 = L0_1
      L4_2 = L4_2.getSceneName
      L5_2 = "previous"
      L4_2 = L4_2(L5_2)
      if L4_2 ~= "Scenes.MessagesScene" then
        L4_2 = A1_2.params
        L4_2 = L4_2.evolveCard
        L23_1 = L4_2
        L4_2 = A1_2.params
        if L4_2 then
          L4_2 = A1_2.params
          L4_2 = L4_2.previousScene
          if L4_2 then
            L4_2 = A0_2.navBar
            L5_2 = A1_2.params
            L5_2 = L5_2.previousScene
            L4_2.previousScene = L5_2
          else
            L4_2 = A0_2.navBar
            L4_2.previousScene = "Scenes.Cards"
          end
        else
        end
        L5_2 = A0_2
        L4_2 = A0_2.setupCardScrollers
        L4_2(L5_2)
        L4_2 = A0_2.navBar
        L4_2.currentScene = "Scenes.Evolve"
        L4_2 = A0_2.navBar
        L5_2 = L4_2
        L4_2 = L4_2.setNectar
        L6_2 = mainPlayer
        L6_2 = L6_2.nectar
        L4_2(L5_2, L6_2)
        L4_2 = A0_2.navBar
        L5_2 = L4_2
        L4_2 = L4_2.updateGold
        L4_2(L5_2)
        L4_2 = L30_1
        L5_2 = A0_2
        L4_2(L5_2)
        L4_2 = L22_1
        if L4_2 < 2 then
          L4_2 = L24_1
          L4_2.alpha = 0.3
          L4_2 = L24_1
          L5_2 = L4_2
          L4_2 = L4_2.setEnabled
          L6_2 = false
          L4_2(L5_2, L6_2)
        else
          L4_2 = L24_1
          L4_2.alpha = 1
          L4_2 = L24_1
          L5_2 = L4_2
          L4_2 = L4_2.setEnabled
          L6_2 = true
          L4_2(L5_2, L6_2)
        end
      end
    end
    L4_2 = A1_2.params
    if L4_2 then
      L4_2 = A1_2.params
      L4_2 = L4_2.isTutorial
      if L4_2 then
        L4_2 = A0_2.navBar
        L4_2 = L4_2.view
        L4_2.isVisible = false
        L4_2 = L12_1
        L4_2 = L4_2.removeFromScene
        L5_2 = L17_1
        L4_2(L5_2)
    end
    else
      L4_2 = A0_2.navBar
      L4_2 = L4_2.view
      L4_2.isVisible = true
    end
    L4_2 = L16_1
    L4_2 = L4_2.checkForTutorial
    L5_2 = "Scenes.Evolve"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
  end
end

L17_1.show = L32_1

function L32_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.view
end

L17_1.hide = L32_1

function L32_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.view
  L3_2 = L12_1
  L3_2 = L3_2.removeFromScene
  L4_2 = L17_1
  L3_2(L4_2)
end

L17_1.destroy = L32_1
L33_1 = L17_1
L32_1 = L17_1.addEventListener
L34_1 = "create"
L35_1 = L17_1
L32_1(L33_1, L34_1, L35_1)
L33_1 = L17_1
L32_1 = L17_1.addEventListener
L34_1 = "show"
L35_1 = L17_1
L32_1(L33_1, L34_1, L35_1)
L33_1 = L17_1
L32_1 = L17_1.addEventListener
L34_1 = "hide"
L35_1 = L17_1
L32_1(L33_1, L34_1, L35_1)
L33_1 = L17_1
L32_1 = L17_1.addEventListener
L34_1 = "destroy"
L35_1 = L17_1
L32_1(L33_1, L34_1, L35_1)
return L17_1
