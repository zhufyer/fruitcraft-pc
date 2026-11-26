local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1, L65_1, L66_1
L0_1 = require
L1_1 = "Constants"
L0_1(L1_1)
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.Toolbox"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Utils.SceneCreator"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.CardsTabelView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.CardView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.NavigationBar"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Language"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Views.ActivityIndicatorView"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Tutorial.TutorialManager2"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Models.Player"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Models.AchievementManager"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "composer"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Views.ChatButton"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Views.EffectsManager"
L13_1 = L13_1(L14_1)
L14_1 = require
L15_1 = "Components.TDButtonView"
L14_1 = L14_1(L15_1)
L15_1 = require
L16_1 = "Data.BaseFruits"
L15_1 = L15_1(L16_1)
L16_1 = require
L17_1 = "Language"
L16_1 = L16_1(L17_1)
L17_1 = require
L18_1 = "json"
L17_1 = L17_1(L18_1)
L18_1 = require
L19_1 = "Components.DataManager"
L18_1 = L18_1(L19_1)
L19_1 = L18_1.dataWithName
L20_1 = "BaseFruitLanguage_"
L21_1 = L16_1.lang
L20_1 = L20_1 .. L21_1
L19_1 = L19_1(L20_1)
L20_1 = nil
L21_1 = L2_1.newScene
L22_1 = "Enhance"
L21_1 = L21_1(L22_1)
L22_1 = nil
L23_1 = nil
L24_1 = {}
L25_1 = {}
L26_1 = {}
L27_1 = 0
L28_1 = nil
L29_1 = nil
L30_1 = nil
L31_1 = nil
L32_1 = {}
L33_1 = nil
L34_1 = nil
L35_1 = nil
L36_1 = nil
L37_1 = nil
L38_1 = nil
L39_1 = nil
L40_1 = nil
L41_1 = nil
L42_1 = nil
L43_1 = nil
L44_1 = nil
L45_1 = false
L46_1 = 0
L47_1 = 0
L48_1 = system
L48_1 = L48_1.pathForFile
L49_1 = Constants
L49_1 = L49_1.Path_FruitsFile
L50_1 = system
L50_1 = L50_1.DocumentsDirectory
L48_1 = L48_1(L49_1, L50_1)
L49_1 = io
L49_1 = L49_1.open
L50_1 = L48_1
L51_1 = "r+"
L49_1 = L49_1(L50_1, L51_1)
if L49_1 == nil then
  L50_1 = log2
  L51_1 = "local fruits file not found, using defaults"
  L50_1(L51_1)
else
  L51_1 = L49_1
  L50_1 = L49_1.read
  L52_1 = "*a"
  L50_1 = L50_1(L51_1, L52_1)
  L51_1 = io
  L51_1 = L51_1.close
  L52_1 = L49_1
  L51_1(L52_1)
  L51_1 = L17_1.decode
  L52_1 = L50_1
  L51_1 = L51_1(L52_1)
  if not L51_1 then
    L51_1 = {}
  end
  L52_1 = L51_1.version
  if L52_1 ~= nil then
    L52_1 = L51_1.version
    L53_1 = Constants
    L53_1 = L53_1.version
    if L52_1 >= L53_1 then
      L52_1 = {}
      L15_1 = L52_1
      L52_1 = pairs
      L53_1 = L51_1.data
      L52_1, L53_1, L54_1 = L52_1(L53_1)
      for L55_1, L56_1 in L52_1, L53_1, L54_1 do
        L57_1 = L56_1.name
        L57_1 = L19_1[L57_1]
        L56_1.name = L57_1
        L57_1 = L56_1.description
        L57_1 = L19_1[L57_1]
        L56_1.description = L57_1
        L57_1 = tonumber
        L58_1 = L55_1
        L57_1 = L57_1(L58_1)
        L15_1[L57_1] = L56_1
      end
    end
  end
end

function L50_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 0
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.cardUsedForBuilding
    if L8_2 ~= true then
      L8_2 = mainPlayer
      L8_2 = L8_2.heroSet
      if L8_2 then
        if not A1_2 then
          L8_2 = mainPlayer
          L8_2 = L8_2.heroSet
          L9_2 = L7_2.baseId
          L8_2 = L8_2[L9_2]
        end
        if not L8_2 then
          L2_2 = L2_2 + 1
        end
      else
        L2_2 = L2_2 + 1
      end
    end
  end
  return L2_2
end

function L51_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = pairs
    L7_2 = mainPlayer
    L7_2 = L7_2.heroItems
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = L10_2.assignedHeroID
      if L11_2 == L5_2 then
        L10_2.assignedHeroID = 0
      end
    end
  end
end

function L52_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L10_1
  L2_2 = L2_2.cardEnhanced
  L3_2 = L50_1
  L4_2 = A1_2
  L5_2 = true
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.isEnhanced = true
  L2_2 = mainPlayer
  L2_2 = L2_2.cards
  L3_2 = L33_1
  L3_2 = L3_2.id
  L2_2 = L2_2[L3_2]
  L2_2.isEnhanced = true
  L2_2 = mainPlayer
  L3_2 = {}
  L4_2 = true
  L5_2 = true
  L6_2 = true
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L2_2.recentlyUsedEnhance = L3_2
  L2_2 = L20_1
  L3_2 = L2_2
  L2_2 = L2_2.setGold
  L4_2 = mainPlayer
  L4_2 = L4_2.gold
  L2_2(L3_2, L4_2)
  L2_2 = L7_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = log3
  L3_2 = "Going to animation scene:"
  L2_2(L3_2)
  L2_2 = L11_1
  L2_2 = L2_2.gotoScene
  L3_2 = "Scenes.EnhanceAnimationScene"
  L4_2 = {}
  L5_2 = {}
  L5_2.enhancedCard = A0_2
  L5_2.sacrifices = A1_2
  L6_2 = L47_1
  L5_2.originalPower = L6_2
  L4_2.params = L5_2
  L2_2(L3_2, L4_2)
end

function L53_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L10_1
  L1_2 = L1_2.cardEnhanced
  L2_2 = 1
  L1_2(L2_2)
  A0_2.isEnhanced = true
  L1_2 = mainPlayer
  L1_2 = L1_2.cards
  L2_2 = L33_1
  L2_2 = L2_2.id
  L1_2 = L1_2[L2_2]
  L1_2.isEnhanced = true
  L1_2 = L20_1
  L2_2 = L1_2
  L1_2 = L1_2.setNectar
  L3_2 = mainPlayer
  L3_2 = L3_2.nectar
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L11_1
  L1_2 = L1_2.gotoScene
  L2_2 = "Scenes.EnhanceAnimationScene"
  L3_2 = {}
  L4_2 = {}
  L4_2.enhancedCard = A0_2
  L5_2 = L43_1
  if not L5_2 then
    L5_2 = L44_1
  end
  L4_2.originalPower = L5_2
  L3_2.params = L4_2
  L1_2(L2_2, L3_2)
end

function L54_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L7_1
  L1_2 = L1_2.hide
  L1_2()
  if A0_2 == "Network error" then
    L1_2 = showSimpleDialog
    L2_2 = "Evolve"
    L3_2 = A0_2
    L4_2 = "Reload"
    
    function L5_2()
      local L0_3, L1_3, L2_3
      L0_3 = L11_1
      L0_3 = L0_3.gotoScene
      L1_3 = "Scenes.Loading"
      L0_3(L1_3)
      L0_3 = L9_1
      L1_3 = L11_1
      L1_3 = L1_3.getScene
      L2_3 = "Scenes.Loading"
      L1_3 = L1_3(L2_3)
      L0_3.delegate = L1_3
      L0_3 = L9_1
      L0_3 = L0_3.loadPlayer
      L0_3()
    end
    
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = showSimpleDialog
    L2_2 = "Card Enhance"
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end

function L55_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L7_1
  L0_2 = L0_2.show
  L1_2 = L16_1
  L1_2 = L1_2["Enhancing Card"]
  L0_2(L1_2)
  L0_2 = L33_1
  L0_2 = L0_2.power
  L47_1 = L0_2
  L0_2 = L33_1
  L1_2 = L0_2
  L0_2 = L0_2.enhanceWithCards
  L2_2 = L24_1
  L3_2 = L52_1
  L4_2 = L54_1
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = L51_1
  L1_2 = L26_1
  L0_2(L1_2)
  L0_2 = {}
  L25_1 = L0_2
  L0_2 = {}
  L26_1 = L0_2
  L0_2 = 0
  L27_1 = L0_2
end

function L56_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = pairs
  L1_2 = L25_1
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    if L4_2 == 386 or L4_2 == 393 or L4_2 == 400 or L4_2 == 407 or L4_2 == 414 or 340 <= L4_2 and L4_2 <= 344 then
      return L4_2
    end
  end
  L0_2 = 0
  return L0_2
end

function L57_1(A0_2)
  local L1_2
  if A0_2 then
    L1_2 = A0_2.heroType
    if L1_2 then
      L1_2 = A0_2.heroType
      if 0 <= L1_2 then
        L1_2 = A0_2.power
        L44_1 = L1_2
        L1_2 = true
        return L1_2
      end
    end
  end
  L1_2 = false
  return L1_2
end

function L58_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = mainPlayer
  L1_2 = L1_2.cards
  L2_2 = A0_2.id
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.baseId
  L2_2 = mainPlayer
  L2_2 = L2_2.cards
  L3_2 = A0_2.id
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.fruitId
  L3_2 = L15_1
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2.category
  if L3_2 == 2 then
    L4_2 = L33_1
    L4_2 = L4_2.power
    L43_1 = L4_2
    L4_2 = true
    return L4_2
  end
  L4_2 = false
  return L4_2
end

function L59_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = 0
  L1_2 = pairs
  L2_2 = L26_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L0_2 = L0_2 + 1
  end
  if 0 < L0_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = false
  return L1_2
end

function L60_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = L33_1
  L1_2 = L0_2
  L0_2 = L0_2.getEnhancementCostWithNectar
  L0_2 = L0_2(L1_2)
  L1_2 = mainPlayer
  L2_2 = L1_2
  L1_2 = L1_2.checkPlayerCurrency
  L3_2 = L0_2
  L4_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    L1_2 = showSimpleDialog
    L2_2 = "Alert"
    L3_2 = L16_1
    L3_2 = L3_2.localizedString
    L4_2 = "You are about to spend Nectar. Are You Sure?"
    L5_2 = {}
    L6_2 = L33_1
    L6_2 = L6_2.name
    L5_2.cardname = L6_2
    L5_2.nectar = L0_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = "OK"
    
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = L33_1
      L1_3 = L0_3
      L0_3 = L0_3.enhanceWithNectar
      L2_3 = L53_1
      L3_3 = L54_1
      L0_3(L1_3, L2_3, L3_3)
    end
    
    L6_2 = "Cancel"
    L7_2 = nil
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end

function L61_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L14_1
  L1_2 = L0_2
  L0_2 = L0_2.new
  L2_2 = {}
  L3_2 = L16_1
  L3_2 = L3_2["Enhance With Nectar"]
  L2_2.label = L3_2
  L2_2.fontSize = 10
  L2_2.width = 100
  L2_2.height = 22
  L3_2 = Constants
  L3_2 = L3_2.Path_Assets
  L4_2 = "CardScene/button.png"
  L3_2 = L3_2 .. L4_2
  L2_2.defaultFile = L3_2
  L3_2 = Constants
  L3_2 = L3_2.Path_Assets
  L4_2 = "CardScene/button-p.png"
  L3_2 = L3_2 .. L4_2
  L2_2.overFile = L3_2
  L3_2 = L60_1
  L2_2.onRelease = L3_2
  L3_2 = Theme
  L3_2 = L3_2.colorsSet
  L3_2 = L3_2.blackColor
  L2_2.labelColor = L3_2
  L0_2 = L0_2(L1_2, L2_2)
  L29_1 = L0_2
  L0_2 = L21_1
  L0_2 = L0_2.view
  L1_2 = L0_2
  L0_2 = L0_2.insert
  L2_2 = L29_1
  L2_2 = L2_2.view
  L0_2(L1_2, L2_2)
  L0_2 = L29_1
  L1_2 = L28_1
  L1_2 = L1_2.x
  L0_2.x = L1_2
  L0_2 = L29_1
  L1_2 = L28_1
  L1_2 = L1_2.y
  L1_2 = L1_2 + 35
  L0_2.y = L1_2
end

function L62_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L45_1
  if L0_2 then
    L0_2 = false
    L45_1 = L0_2
    L0_2 = L13_1
    L0_2 = L0_2.removePoint
    L0_2()
    L0_2 = mainPlayer
    L1_2 = L0_2
    L0_2 = L0_2.setSettingForKey
    L2_2 = "activeTutorialState"
    L3_2 = "goBackHome"
    L0_2(L1_2, L2_2, L3_2)
  end
  L0_2 = L50_1
  L1_2 = L24_1
  L2_2 = true
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 == 0 then
    L0_2 = showSimpleDialog
    L1_2 = "Enhance"
    L2_2 = "Select at least one sacrifice"
    L0_2(L1_2, L2_2)
  else
    L0_2 = mainPlayer
    L1_2 = L0_2
    L0_2 = L0_2.checkPlayerCurrency
    L2_2 = L33_1
    L3_2 = L2_2
    L2_2 = L2_2.enhancementCostWithCards
    L4_2 = L24_1
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L2_2(L3_2, L4_2)
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    if L0_2 then
      L0_2 = L50_1
      L1_2 = mainPlayer
      L1_2 = L1_2.cards
      L0_2 = L0_2(L1_2)
      L1_2 = L50_1
      L2_2 = L24_1
      L1_2 = L1_2(L2_2)
      L0_2 = L0_2 - L1_2
      if L0_2 < 4 then
        L0_2 = showSimpleDialog
        L1_2 = "Enhance"
        L2_2 = "You've selected too many cards and you won't be able to go to battles and quests!"
        L0_2(L1_2, L2_2)
      else
        L0_2 = L56_1
        L0_2 = L0_2()
        if 0 < L0_2 then
          L1_2 = L16_1
          L1_2 = L1_2["Sacrificed Crystal"]
          if 340 <= L0_2 and L0_2 <= 344 then
            L2_2 = L16_1
            L1_2 = L2_2["Sacrificed Monster"]
          end
          L2_2 = showSimpleDialog
          L3_2 = "Alert"
          L4_2 = L16_1
          L4_2 = L4_2.localizedString
          L5_2 = "You are about to sacrifice veteran card. Are you sure?"
          L6_2 = {}
          L6_2.TypeOfCard = L1_2
          L4_2 = L4_2(L5_2, L6_2)
          L5_2 = "OK"
          
          function L6_2()
            local L0_3, L1_3
            L0_3 = L55_1
            L0_3()
          end
          
          L7_2 = "Cancel"
          L8_2 = nil
          L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
        else
          L1_2 = L59_1
          L1_2 = L1_2()
          if L1_2 then
            L1_2 = showSimpleDialog
            L2_2 = "Alert"
            L3_2 = L16_1
            L3_2 = L3_2.localizedString
            L4_2 = "You are about to sacrifice veteran card. Are you sure?"
            L5_2 = {}
            L6_2 = L16_1
            L6_2 = L6_2.Hero
            L5_2.TypeOfCard = L6_2
            L3_2 = L3_2(L4_2, L5_2)
            L4_2 = "OK"
            
            function L5_2()
              local L0_3, L1_3
              L0_3 = L55_1
              L0_3()
            end
            
            L6_2 = "Cancel"
            L7_2 = nil
            L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
          else
            L1_2 = L55_1
            L1_2()
          end
        end
      end
    end
  end
end

function L63_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L45_1
  if L1_2 then
    L1_2 = L46_1
    if L1_2 == 1 then
      L1_2 = L13_1
      L1_2 = L1_2.removePoint
      L1_2()
      L1_2 = L13_1
      L1_2 = L1_2.sparkle
      L2_2 = L21_1
      L2_2 = L2_2.view
      L3_2 = 2000
      L4_2 = L36_1
      L4_2 = L4_2.x
      L4_2 = L4_2 - 50
      L5_2 = L36_1
      L5_2 = L5_2.y
      L6_2 = L36_1
      L6_2 = L6_2.height
      L6_2 = L6_2 / 2
      L5_2 = L5_2 - L6_2
      L6_2 = L36_1
      L6_2 = L6_2.x
      L6_2 = L6_2 + 50
      L7_2 = L40_1
      L7_2 = L7_2.y
      L8_2 = L40_1
      L8_2 = L8_2.height
      L8_2 = L8_2 / 2
      L7_2 = L7_2 + L8_2
      L8_2 = 20
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
      L1_2 = L13_1
      L1_2 = L1_2.pointAtObjectInView
      L2_2 = L28_1
      L3_2 = L21_1
      L3_2 = L3_2.view
      L1_2(L2_2, L3_2)
      L1_2 = 2
      L46_1 = L1_2
    end
  end
  L1_2 = L40_1
  L2_2 = L16_1
  L2_2 = L2_2.adjustNumber
  L3_2 = L1_1
  L3_2 = L3_2.shortenLongNumber
  L4_2 = L33_1
  L5_2 = L4_2
  L4_2 = L4_2.enhancementCostWithCards
  L6_2 = L24_1
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2)
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2.text = L2_2
  L1_2 = L30_1
  L2_2 = L16_1
  L2_2 = L2_2.adjustNumber
  L3_2 = L50_1
  L4_2 = L24_1
  L5_2 = true
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2.text = L2_2
  L1_2 = L36_1
  L2_2 = L16_1
  L2_2 = L2_2.adjustNumber
  L3_2 = L1_1
  L3_2 = L3_2.shortenLongNumber
  L4_2 = L33_1
  L5_2 = L4_2
  L4_2 = L4_2.enhancementPowerWithCards
  L6_2 = L24_1
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2)
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2.text = L2_2
  L1_2 = L33_1
  L1_2 = L1_2.powerBeforeBoost
  if not L1_2 then
    L1_2 = L33_1
    L1_2 = L1_2.power
  end
  L2_2 = L33_1
  L3_2 = L2_2
  L2_2 = L2_2.enhancementPowerWithCards
  L4_2 = L24_1
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L1_2 + L2_2
  L3_2 = L33_1
  L3_2 = L3_2.powerLimit
  if L2_2 > L3_2 then
    L2_2 = L28_1
    L2_2.alpha = 0.3
    L2_2 = L28_1
    L3_2 = L2_2
    L2_2 = L2_2.setEnabled
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = L39_1
    L2_2.alpha = 1
  else
    L2_2 = L39_1
    L2_2.alpha = 0
    L2_2 = L50_1
    L3_2 = L24_1
    L4_2 = true
    L2_2 = L2_2(L3_2, L4_2)
    if 0 < L2_2 then
      L2_2 = L28_1
      L2_2.alpha = 1
      L2_2 = L28_1
      L3_2 = L2_2
      L2_2 = L2_2.setEnabled
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = mainPlayer
      L2_2 = L2_2.improveEnhanceTutorial
      if L2_2 == true then
        L2_2 = L42_1
        if L2_2 then
          L2_2 = false
          L42_1 = L2_2
          L2_2 = L13_1
          L2_2 = L2_2.removePoint
          L2_2()
          L2_2 = L41_1
          if L2_2 then
            L2_2 = L41_1
            L2_2()
            L2_2 = nil
            L41_1 = L2_2
          end
        end
      end
    end
  end
end

L21_1.didPressRowWithCardId = L63_1

function L63_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = mainPlayer
  L1_2 = L1_2.cards
  L1_2 = L1_2[A0_2]
  card = L1_2
  L1_2 = L24_1
  L2_2 = card
  L1_2[A0_2] = L2_2
  L1_2 = L38_1
  L1_2 = L1_2.cardIsHero
  L2_2 = card
  L2_2 = L2_2.baseId
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L27_1
    L1_2 = L1_2 + 1
    L27_1 = L1_2
    L1_2 = L26_1
    L2_2 = card
    L2_2 = L2_2.baseId
    L1_2[A0_2] = L2_2
  end
  L1_2 = L25_1
  L2_2 = card
  L2_2 = L2_2.baseId
  L1_2[A0_2] = L2_2
  L1_2 = L28_1
  if L1_2 ~= nil then
    L1_2 = L28_1
    L1_2.alpha = 1
    L1_2 = L28_1
    L2_2 = L1_2
    L1_2 = L1_2.setEnabled
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end

L21_1.didSelectedRow = L63_1

function L63_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L24_1
  L1_2[A0_2] = nil
  L1_2 = mainPlayer
  L1_2 = L1_2.cards
  L1_2 = L1_2[A0_2]
  card = L1_2
  L1_2 = L38_1
  L1_2 = L1_2.cardIsHero
  L2_2 = card
  L2_2 = L2_2.baseId
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L27_1
    L1_2 = L1_2 - 1
    L27_1 = L1_2
    L1_2 = L26_1
    L1_2[A0_2] = nil
  end
  L1_2 = L25_1
  L1_2[A0_2] = nil
  L1_2 = L50_1
  L2_2 = L24_1
  L3_2 = true
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == 0 then
    L1_2 = L28_1
    L1_2.alpha = 0.3
    L1_2 = L28_1
    L2_2 = L1_2
    L1_2 = L1_2.setEnabled
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end

L21_1.didDeselectedRow = L63_1

function L63_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L1_2 = {}
  L2_2 = L33_1
  L1_2.enhancedCard = L2_2
  L0_2.params = L1_2
  L1_2 = L11_1
  L1_2 = L1_2.gotoScene
  L2_2 = "Scenes.Cards"
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
end

didPressBackButton = L63_1

function L63_1(A0_2, A1_2)
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
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  L37_1 = L4_2
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
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2.strokeWidth = 3
  L6_2 = L4_2
  L5_2 = L4_2.setStrokeColor
  L7_2 = 0.30588235
  L8_2 = 0.5254902
  L9_2 = 0.10980392
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = A1_2.params
  L5_2 = L5_2.enhanceCard
  L33_1 = L5_2
  L5_2 = mainPlayer
  L5_2 = L5_2.newCards
  if L5_2 then
    L5_2 = mainPlayer
    L5_2 = L5_2.level
    L6_2 = Constants
    L6_2 = L6_2.MaximumLevelToShowNewSeriesOfCards
    if L5_2 < L6_2 then
      L5_2 = L4_1
      L6_2 = L5_2
      L5_2 = L5_2.new
      L7_2 = "big"
      L8_2 = L33_1
      L9_2 = nil
      L10_2 = {}
      L10_2.cardWidth = 179
      L10_2.cardHeight = 200
      L11_2 = true
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L38_1 = L5_2
  end
  else
    L5_2 = L4_1
    L6_2 = L5_2
    L5_2 = L5_2.new
    L7_2 = "big"
    L8_2 = L33_1
    L9_2 = nil
    L10_2 = nil
    L11_2 = true
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L38_1 = L5_2
  end
  L5_2 = L37_1
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L38_1
  L7_2 = L7_2.view
  L5_2(L6_2, L7_2)
  L5_2 = L38_1
  L6_2 = L5_2
  L5_2 = L5_2.setPosition
  L7_2 = 167
  L8_2 = 50
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L37_1
  L7_2 = L16_1
  L7_2 = L7_2["Max Power Reached"]
  L8_2 = 0
  L9_2 = 0
  L10_2 = Constants
  L10_2 = L10_2.fontForTitle
  L10_2 = L10_2()
  L11_2 = 11
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L39_1 = L5_2
  L5_2 = L39_1
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.redColor
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = L39_1
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 - 90
  L5_2.x = L6_2
  L5_2 = L39_1
  L5_2.y = 80
  L5_2 = L39_1
  L5_2.alpha = 0
  L5_2 = display
  L5_2 = L5_2.newRect
  L6_2 = L37_1
  L7_2 = 0
  L8_2 = 0
  L9_2 = 100
  L10_2 = 40
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  useBG = L5_2
  L5_2 = useBG
  L5_2.strokeWidth = 2
  L5_2 = useBG
  L6_2 = L5_2
  L5_2 = L5_2.setStrokeColor
  L7_2 = 0.67843137
  L8_2 = 0.85882353
  L9_2 = 0.9254902
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = useBG
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.lightBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = useBG
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 - 90
  L5_2.x = L6_2
  L5_2 = useBG
  L5_2.y = 110
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L37_1
  L7_2 = L16_1
  L7_2 = L7_2["Cards Used"]
  L8_2 = 0
  L9_2 = 0
  L10_2 = Constants
  L10_2 = L10_2.fontForTitle
  L10_2 = L10_2()
  L11_2 = 11
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L22_1 = L5_2
  L5_2 = L22_1
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = L22_1
  L6_2 = useBG
  L6_2 = L6_2.x
  L5_2.x = L6_2
  L5_2 = L22_1
  L6_2 = useBG
  L6_2 = L6_2.y
  L6_2 = L6_2 - 10
  L5_2.y = L6_2
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L37_1
  L7_2 = L16_1
  L7_2 = L7_2.adjustNumber
  L8_2 = "0"
  L7_2 = L7_2(L8_2)
  L8_2 = 0
  L9_2 = 0
  L10_2 = Constants
  L10_2 = L10_2.fontForSubtitle
  L10_2 = L10_2()
  L11_2 = 15
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L30_1 = L5_2
  L5_2 = L30_1
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = L30_1
  L6_2 = useBG
  L6_2 = L6_2.x
  L5_2.x = L6_2
  L5_2 = L30_1
  L6_2 = useBG
  L6_2 = L6_2.y
  L6_2 = L6_2 + 5
  L5_2.y = L6_2
  L5_2 = display
  L5_2 = L5_2.newRect
  L6_2 = L37_1
  L7_2 = 0
  L8_2 = 0
  L9_2 = 100
  L10_2 = 40
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  increaseBG = L5_2
  L5_2 = increaseBG
  L5_2.strokeWidth = 2
  L5_2 = increaseBG
  L6_2 = L5_2
  L5_2 = L5_2.setStrokeColor
  L7_2 = 0.67843137
  L8_2 = 0.85882353
  L9_2 = 0.9254902
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = increaseBG
  L6_2 = useBG
  L6_2 = L6_2.x
  L5_2.x = L6_2
  L5_2 = increaseBG
  L5_2.y = 150
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L37_1
  L7_2 = L16_1
  L7_2 = L7_2["Power Increase"]
  L8_2 = 0
  L9_2 = 0
  L10_2 = Constants
  L10_2 = L10_2.fontForTitle
  L10_2 = L10_2()
  L11_2 = 11
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L23_1 = L5_2
  L5_2 = L23_1
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = L23_1
  L6_2 = increaseBG
  L6_2 = L6_2.x
  L5_2.x = L6_2
  L5_2 = L23_1
  L6_2 = increaseBG
  L6_2 = L6_2.y
  L6_2 = L6_2 - 10
  L5_2.y = L6_2
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L37_1
  L7_2 = L16_1
  L7_2 = L7_2.adjustNumber
  L8_2 = "0"
  L7_2 = L7_2(L8_2)
  L8_2 = 0
  L9_2 = 0
  L10_2 = Constants
  L10_2 = L10_2.fontForSubtitle
  L10_2 = L10_2()
  L11_2 = 15
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L36_1 = L5_2
  L5_2 = L36_1
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = L36_1
  L6_2 = increaseBG
  L6_2 = L6_2.x
  L5_2.x = L6_2
  L5_2 = L36_1
  L6_2 = increaseBG
  L6_2 = L6_2.y
  L6_2 = L6_2 + 5
  L5_2.y = L6_2
  L5_2 = display
  L5_2 = L5_2.newRect
  L6_2 = L37_1
  L7_2 = 0
  L8_2 = 0
  L9_2 = 100
  L10_2 = 40
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  costBG = L5_2
  L5_2 = costBG
  L5_2.strokeWidth = 2
  L5_2 = costBG
  L6_2 = L5_2
  L5_2 = L5_2.setStrokeColor
  L7_2 = 0.67843137
  L8_2 = 0.85882353
  L9_2 = 0.9254902
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = costBG
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.lightBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = costBG
  L6_2 = useBG
  L6_2 = L6_2.x
  L5_2.x = L6_2
  L5_2 = costBG
  L5_2.y = 190
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L37_1
  L7_2 = L16_1
  L7_2 = L7_2.Cost
  L8_2 = 0
  L9_2 = 0
  L10_2 = Constants
  L10_2 = L10_2.fontForTitle
  L10_2 = L10_2()
  L11_2 = 11
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  costLabel = L5_2
  L5_2 = costLabel
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = costLabel
  L6_2 = costBG
  L6_2 = L6_2.x
  L5_2.x = L6_2
  L5_2 = costLabel
  L6_2 = costBG
  L6_2 = L6_2.y
  L6_2 = L6_2 - 10
  L5_2.y = L6_2
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = L37_1
  L7_2 = L16_1
  L7_2 = L7_2.adjustNumber
  L8_2 = "0"
  L7_2 = L7_2(L8_2)
  L8_2 = 0
  L9_2 = 0
  L10_2 = Constants
  L10_2 = L10_2.fontForSubtitle
  L10_2 = L10_2()
  L11_2 = 15
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L40_1 = L5_2
  L5_2 = L40_1
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = L40_1
  L6_2 = costBG
  L6_2 = L6_2.x
  L5_2.x = L6_2
  L5_2 = L40_1
  L6_2 = costBG
  L6_2 = L6_2.y
  L6_2 = L6_2 + 5
  L5_2.y = L6_2
  L5_2 = L14_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L8_2 = L16_1
  L8_2 = L8_2.Enhance
  L7_2.label = L8_2
  L8_2 = Theme
  L8_2 = L8_2.colorsSet
  L8_2 = L8_2.blackColor
  L7_2.labelColor = L8_2
  L7_2.width = 100
  L7_2.height = 22
  L8_2 = Constants
  L8_2 = L8_2.Path_Assets
  L9_2 = "CardScene/button.png"
  L8_2 = L8_2 .. L9_2
  L7_2.imageName = L8_2
  L8_2 = L62_1
  L7_2.onRelease = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L28_1 = L5_2
  L5_2 = L21_1
  L5_2 = L5_2.view
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L28_1
  L7_2 = L7_2.view
  L5_2(L6_2, L7_2)
  L5_2 = L28_1
  L6_2 = costBG
  L6_2 = L6_2.x
  L5_2.x = L6_2
  L5_2 = L28_1
  L6_2 = costBG
  L6_2 = L6_2.y
  L6_2 = L6_2 + 50
  L5_2.y = L6_2
  L5_2 = L40_1
  L6_2 = L16_1
  L6_2 = L6_2.adjustNumber
  L7_2 = L33_1
  L8_2 = L7_2
  L7_2 = L7_2.enhancementCostWithCards
  L9_2 = L24_1
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2, L9_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2.text = L6_2
  L5_2 = display
  L5_2 = L5_2.newRect
  L6_2 = A0_2.view
  L7_2 = 0
  L8_2 = 0
  L9_2 = 3
  L10_2 = display
  L10_2 = L10_2.contentHeight
  L10_2 = L10_2 - 45
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  A0_2.seprate = L5_2
  L5_2 = A0_2.seprate
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = 0.2627451
  L8_2 = 0.50588235
  L9_2 = 0.17254902
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = A0_2.seprate
  L5_2.x = 157
  L5_2 = A0_2.seprate
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L7_2 = A0_2.seprate
  L7_2 = L7_2.height
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 - 5
  L5_2.y = L6_2
  L5_2 = L5_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L5_2 = L5_2(L6_2)
  L20_1 = L5_2
  L5_2 = L20_1
  L6_2 = L5_2
  L5_2 = L5_2.setTitle
  L7_2 = L16_1
  L7_2 = L7_2.Enhance
  L5_2(L6_2, L7_2)
  L5_2 = L20_1
  L5_2.helpId = 22
  L5_2 = L20_1
  L6_2 = L5_2
  L5_2 = L5_2.setGold
  L7_2 = mainPlayer
  L7_2 = L7_2.gold
  L5_2(L6_2, L7_2)
  L5_2 = L20_1
  A0_2.navBar = L5_2
  L6_2 = L2_2
  L5_2 = L2_2.insert
  L7_2 = L20_1
  L7_2 = L7_2.view
  L5_2(L6_2, L7_2)
  L5_2 = graphics
  L5_2 = L5_2.newMask
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "General/FC-navIncluded"
  L8_2 = Constants
  L8_2 = L8_2.deviceSpecificFilePostfix
  L8_2 = L8_2()
  L9_2 = "mask.png"
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
  L5_2 = L5_2(L6_2)
  L6_2 = L37_1
  L7_2 = L6_2
  L6_2 = L6_2.setMask
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = L37_1
  L7_2 = display
  L7_2 = L7_2.contentCenterX
  L7_2 = L7_2 + 0.5
  L6_2.maskX = L7_2
  L6_2 = L37_1
  L7_2 = display
  L7_2 = L7_2.contentCenterY
  L6_2.maskY = L7_2
  L7_2 = L2_2
  L6_2 = L2_2.insert
  L8_2 = L37_1
  L6_2(L7_2, L8_2)
end

L21_1.create = L63_1

function L63_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == "showcaseEnhance" then
    L2_2 = L13_1
    L2_2 = L2_2.pointAt
    L3_2 = A0_2.view
    L4_2 = 30
    L5_2 = 60
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = true
    L45_1 = L2_2
    L2_2 = 1
    L46_1 = L2_2
  end
end

L21_1.startTutorialSequence = L63_1

function L63_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = mainPlayer
  L3_2 = L3_2.improveEnhanceTutorial
  if L3_2 then
    L3_2 = L34_1
    L3_2 = L3_2.list
    L4_2 = L3_2
    L3_2 = L3_2.getRowAtIndex
    L5_2 = 1
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L13_1
    L4_2 = L4_2.pointAtObjectInView
    L5_2 = L3_2
    L6_2 = L34_1
    L6_2 = L6_2.list
    L7_2 = L3_2.x
    L8_2 = L35_1
    L8_2 = L8_2[1]
    L8_2 = L8_2.image
    L8_2 = L8_2.width
    L8_2 = L8_2 / 2
    L7_2 = L7_2 + L8_2
    L8_2 = L3_2.y
    L9_2 = L35_1
    L9_2 = L9_2[1]
    L9_2 = L9_2.image
    L9_2 = L9_2.height
    L9_2 = L9_2 / 2
    L8_2 = L8_2 + L9_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
    if A2_2 then
      L41_1 = A2_2
    end
    L4_2 = true
    L42_1 = L4_2
  else
    L3_2 = A2_2
    L3_2()
  end
end

L21_1.pointAtCard = L63_1

function L63_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = "Scenes.Cards"
    _backAction = L4_2
    L4_2 = A1_2.params
    if L4_2 then
      L4_2 = A1_2.params
      L4_2 = L4_2.previousScene
      if L4_2 then
        L4_2 = L20_1
        L5_2 = A1_2.params
        L5_2 = L5_2.previousScene
        L4_2.previousScene = L5_2
    end
    else
      L4_2 = L20_1
      L4_2.previousScene = "Scenes.Cards"
    end
    L4_2 = L11_1
    L4_2 = L4_2.getSceneName
    L5_2 = "previous"
    L4_2 = L4_2(L5_2)
    if L4_2 ~= "Scenes.HelpScene" then
      L4_2 = L11_1
      L4_2 = L4_2.getSceneName
      L5_2 = "previous"
      L4_2 = L4_2(L5_2)
      if L4_2 ~= "Scenes.MessagesScene" then
        L4_2 = L33_1
        if L4_2 ~= nil then
          L4_2 = display
          L4_2 = L4_2.remove
          L5_2 = L38_1
          L5_2 = L5_2.view
          L4_2(L5_2)
          L4_2 = nil
          L38_1 = L4_2
          L4_2 = A1_2.params
          L4_2 = L4_2.enhanceCard
          L33_1 = L4_2
          L4_2 = mainPlayer
          L4_2 = L4_2.newCards
          if L4_2 then
            L4_2 = mainPlayer
            L4_2 = L4_2.level
            L5_2 = Constants
            L5_2 = L5_2.MaximumLevelToShowNewSeriesOfCards
            if L4_2 < L5_2 then
              L4_2 = L4_1
              L5_2 = L4_2
              L4_2 = L4_2.new
              L6_2 = "big"
              L7_2 = L33_1
              L8_2 = nil
              L9_2 = {}
              L9_2.cardWidth = 179
              L9_2.cardHeight = 200
              L10_2 = true
              L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
              L38_1 = L4_2
              L4_2 = L38_1
              L5_2 = L4_2
              L4_2 = L4_2.setPosition
              L6_2 = display
              L6_2 = L6_2.contentWidth
              L6_2 = L6_2 / 2
              L6_2 = L6_2 - 89
              L6_2 = L6_2 + 10
              L7_2 = display
              L7_2 = L7_2.contentHeight
              L7_2 = L7_2 - 45
              L7_2 = L7_2 / 2
              L7_2 = 40 + L7_2
              L8_2 = L38_1
              L8_2 = L8_2.view
              L8_2 = L8_2.height
              L8_2 = L8_2 / 2
              L7_2 = L7_2 - L8_2
              L7_2 = L7_2 + 10
              L4_2(L5_2, L6_2, L7_2)
          end
          else
            L4_2 = L4_1
            L5_2 = L4_2
            L4_2 = L4_2.new
            L6_2 = "big"
            L7_2 = L33_1
            L8_2 = nil
            L9_2 = {}
            L9_2.cardWidth = 178
            L9_2.cardHeight = 250
            L10_2 = true
            L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
            L38_1 = L4_2
            L4_2 = L38_1
            L5_2 = L4_2
            L4_2 = L4_2.setPosition
            L6_2 = display
            L6_2 = L6_2.contentWidth
            L6_2 = L6_2 / 2
            L6_2 = L6_2 - 89
            L6_2 = L6_2 + 10
            L7_2 = display
            L7_2 = L7_2.contentHeight
            L7_2 = L7_2 - 45
            L7_2 = L7_2 / 2
            L7_2 = 40 + L7_2
            L7_2 = L7_2 - 125
            L4_2(L5_2, L6_2, L7_2)
          end
          L4_2 = L37_1
          L5_2 = L4_2
          L4_2 = L4_2.insert
          L6_2 = L38_1
          L6_2 = L6_2.view
          L4_2(L5_2, L6_2)
          L4_2 = L38_1
          L5_2 = L4_2
          L4_2 = L4_2.addEnterFrameListener
          L4_2(L5_2)
          L4_2 = {}
          L32_1 = L4_2
          L4_2 = pairs
          L5_2 = mainPlayer
          L5_2 = L5_2.cards
          L4_2, L5_2, L6_2 = L4_2(L5_2)
          for L7_2, L8_2 in L4_2, L5_2, L6_2 do
            L9_2 = L8_2.id
            L10_2 = L33_1
            L10_2 = L10_2.id
            if L9_2 ~= L10_2 then
              L9_2 = L32_1
              L10_2 = L8_2.id
              L9_2[L10_2] = L8_2
            end
          end
          L4_2 = L34_1
          if L4_2 ~= nil then
            L4_2 = display
            L4_2 = L4_2.remove
            L5_2 = L34_1
            L5_2 = L5_2.list
            L4_2(L5_2)
            L4_2 = nil
            L34_1 = L4_2
          end
          L4_2 = L3_1
          L5_2 = L4_2
          L4_2 = L4_2.new
          L6_2 = L21_1
          L7_2 = L32_1
          L8_2 = true
          L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
          L35_1 = L5_2
          L34_1 = L4_2
          L4_2 = L34_1
          L5_2 = L4_2
          L4_2 = L4_2.setPosition
          L6_2 = 80
          L7_2 = display
          L7_2 = L7_2.contentHeight
          L7_2 = L7_2 - 47
          L7_2 = L7_2 / 2
          L7_2 = 42 + L7_2
          L4_2(L5_2, L6_2, L7_2)
          L4_2 = L37_1
          L5_2 = L4_2
          L4_2 = L4_2.insert
          L6_2 = L34_1
          L6_2 = L6_2.list
          L4_2(L5_2, L6_2)
          L4_2 = A0_2.seprate
          L5_2 = L4_2
          L4_2 = L4_2.toFront
          L4_2(L5_2)
        end
        L4_2 = L28_1
        if L4_2 ~= nil then
          L4_2 = L28_1
          L4_2.alpha = 0.3
          L4_2 = L28_1
          L5_2 = L4_2
          L4_2 = L4_2.setEnabled
          L6_2 = false
          L4_2(L5_2, L6_2)
        end
        L4_2 = L20_1
        L4_2.currentScene = "Scenes.Enhance"
        L4_2 = L20_1
        L5_2 = L4_2
        L4_2 = L4_2.setNectar
        L6_2 = mainPlayer
        L6_2 = L6_2.nectar
        L4_2(L5_2, L6_2)
        L4_2 = L20_1
        L5_2 = L4_2
        L4_2 = L4_2.updateGold
        L4_2(L5_2)
        L4_2 = L58_1
        L5_2 = L33_1
        L4_2 = L4_2(L5_2)
        if L4_2 then
          L4_2 = L43_1
          L5_2 = Constants
          L5_2 = L5_2.Card_EnhanceWithNectarModifier
          L6_2 = L33_1
          L6_2 = L6_2.powerLimit
          L5_2 = L5_2 * L6_2
          if L4_2 > L5_2 then
            L4_2 = L61_1
            L4_2()
          end
        end
        L4_2 = L57_1
        L5_2 = L33_1
        L4_2 = L4_2(L5_2)
        if L4_2 then
          L4_2 = L44_1
          L5_2 = Constants
          L5_2 = L5_2.Card_EnhanceWithNectarModifier
          L6_2 = L33_1
          L6_2 = L6_2.powerLimit
          L5_2 = L5_2 * L6_2
          if L4_2 > L5_2 then
            L4_2 = L61_1
            L4_2()
          end
        end
      end
    end
    L4_2 = L12_1
    L4_2 = L4_2.newOnScene
    L5_2 = A0_2
    L4_2(L5_2)
    L4_2 = L8_1
    L4_2 = L4_2.checkForTutorial
    L5_2 = "Scenes.Enhance"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
    L4_2 = A1_2.params
    if L4_2 then
      L4_2 = A1_2.params
      L4_2 = L4_2.isTutorial
      if L4_2 then
        L4_2 = L20_1
        L4_2 = L4_2.view
        L4_2.isVisible = false
        L4_2 = L12_1
        L4_2 = L4_2.removeFromScene
        L5_2 = L21_1
        L4_2(L5_2)
    end
    else
      L4_2 = L20_1
      L4_2 = L4_2.view
      L4_2.isVisible = true
    end
  end
end

L21_1.show = L63_1

function L63_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = {}
    L24_1 = L4_2
    L4_2 = L40_1
    L4_2.text = ""
    L4_2 = L30_1
    L4_2.text = ""
    L4_2 = L36_1
    L4_2.text = ""
    L4_2 = L39_1
    L4_2.alpha = 0
    L4_2 = false
    L45_1 = L4_2
    L4_2 = {}
    L25_1 = L4_2
    L4_2 = {}
    L26_1 = L4_2
    L4_2 = 0
    L27_1 = L4_2
    L4_2 = L38_1
    L5_2 = L4_2
    L4_2 = L4_2.removeEnterFrameListener
    L4_2(L5_2)
    L4_2 = L29_1
    if L4_2 then
      L4_2 = L29_1
      L5_2 = L4_2
      L4_2 = L4_2.removeSelf
      L4_2(L5_2)
      L4_2 = nil
      L29_1 = L4_2
    end
  end
end

L21_1.hide = L63_1

function L63_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.view
  L3_2 = L12_1
  L3_2 = L3_2.removeFromScene
  L4_2 = L21_1
  L3_2(L4_2)
end

L21_1.destroy = L63_1
L64_1 = L21_1
L63_1 = L21_1.addEventListener
L65_1 = "create"
L66_1 = L21_1
L63_1(L64_1, L65_1, L66_1)
L64_1 = L21_1
L63_1 = L21_1.addEventListener
L65_1 = "show"
L66_1 = L21_1
L63_1(L64_1, L65_1, L66_1)
L64_1 = L21_1
L63_1 = L21_1.addEventListener
L65_1 = "hide"
L66_1 = L21_1
L63_1(L64_1, L65_1, L66_1)
L64_1 = L21_1
L63_1 = L21_1.addEventListener
L65_1 = "destroy"
L66_1 = L21_1
L63_1(L64_1, L65_1, L66_1)
return L21_1
