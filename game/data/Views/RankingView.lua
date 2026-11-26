local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "widget"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Views.AdjustableProgressBar"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Models.Rank"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Utils.Toolbox"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "composer"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.PlayerMoreView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Views.ActivityIndicatorView"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Views.CachedImageView"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Tutorial.TutorialManager2"
L9_1 = L9_1(L10_1)
L10_1 = nil
L11_1 = nil
L12_1 = nil
L13_1 = nil
L14_1 = nil
L15_1 = nil
L16_1 = nil
L17_1 = nil
L18_1 = nil
L19_1 = nil
L20_1 = require
L21_1 = "Constants"
L20_1(L21_1)
L20_1 = nil
L21_1 = nil
L22_1 = mainPlayer
L22_1 = L22_1.leagueRemainingTime
L23_1 = nil
L24_1 = nil
L25_1 = nil
L26_1 = 5
L27_1 = -1
lastRowTouch = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.reloadData
  L1_2(L2_2)
  L1_2 = L9_1
  L1_2 = L1_2.checkForTutorial
  L2_2 = "Views.RankingView"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

show = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = moreView
  L2_2 = L1_2
  L1_2 = L1_2.hide
  L3_2 = false
  L1_2(L2_2, L3_2)
end

hide = L27_1

function L27_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = A0_2.mode
  if L3_2 == 1 then
    L3_2 = A0_2.list
    L4_2 = L3_2
    L3_2 = L3_2.deleteAllRows
    L3_2(L4_2)
    L3_2 = A0_2.list
    L4_2 = L3_2
    L3_2 = L3_2.insertRow
    L5_2 = {}
    L5_2.id = "level-row"
    L5_2.rowHeight = 34
    L6_2 = {}
    L7_2 = 0
    L8_2 = 0
    L9_2 = 0
    L10_2 = 0
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L6_2[3] = L9_2
    L6_2[4] = L10_2
    L5_2.lineColor = L6_2
    L6_2 = {}
    L7_2 = {}
    L8_2 = 0
    L9_2 = 0
    L10_2 = 0
    L11_2 = 0
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L7_2[3] = L10_2
    L7_2[4] = L11_2
    L6_2.default = L7_2
    L7_2 = {}
    L8_2 = 0
    L9_2 = 0
    L10_2 = 0
    L11_2 = 0
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L7_2[3] = L10_2
    L7_2[4] = L11_2
    L6_2.over = L7_2
    L5_2.rowColor = L6_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2.mode
    if L3_2 == 5 then
      L3_2 = A0_2.list
      L4_2 = L3_2
      L3_2 = L3_2.deleteAllRows
      L3_2(L4_2)
      L3_2 = A0_2.list
      L4_2 = L3_2
      L3_2 = L3_2.insertRow
      L5_2 = {}
      L5_2.id = "league-description-row"
      L5_2.rowHeight = 90
      L6_2 = {}
      L7_2 = 0
      L8_2 = 0
      L9_2 = 0
      L10_2 = 0
      L6_2[1] = L7_2
      L6_2[2] = L8_2
      L6_2[3] = L9_2
      L6_2[4] = L10_2
      L5_2.lineColor = L6_2
      L6_2 = {}
      L7_2 = {}
      L8_2 = 0
      L9_2 = 0
      L10_2 = 0
      L11_2 = 0
      L7_2[1] = L8_2
      L7_2[2] = L9_2
      L7_2[3] = L10_2
      L7_2[4] = L11_2
      L6_2.default = L7_2
      L7_2 = {}
      L8_2 = 0
      L9_2 = 0
      L10_2 = 0
      L11_2 = 0
      L7_2[1] = L8_2
      L7_2[2] = L9_2
      L7_2[3] = L10_2
      L7_2[4] = L11_2
      L6_2.over = L7_2
      L5_2.rowColor = L6_2
      L3_2(L4_2, L5_2)
      L3_2 = {}
      A0_2.results = L3_2
      L3_2 = "07"
      L4_2 = A0_2.list
      L5_2 = L4_2
      L4_2 = L4_2.insertRow
      L6_2 = {}
      L6_2.rowHeight = 30
      L7_2 = L3_2
      L8_2 = L1_1
      L8_2 = L8_2.localizedString
      L9_2 = "Top players"
      L10_2 = {}
      L11_2 = L1_1
      L11_2 = L11_2.adjustNumber
      L12_2 = 3
      L11_2 = L11_2(L12_2)
      L10_2.num = L11_2
      L8_2 = L8_2(L9_2, L10_2)
      L7_2 = L7_2 .. L8_2
      L6_2.id = L7_2
      L7_2 = {}
      L8_2 = 0
      L9_2 = 0
      L10_2 = 0
      L11_2 = 0
      L7_2[1] = L8_2
      L7_2[2] = L9_2
      L7_2[3] = L10_2
      L7_2[4] = L11_2
      L6_2.lineColor = L7_2
      L7_2 = {}
      L8_2 = {}
      L9_2 = 0
      L10_2 = 0
      L11_2 = 0
      L12_2 = 0
      L8_2[1] = L9_2
      L8_2[2] = L10_2
      L8_2[3] = L11_2
      L8_2[4] = L12_2
      L7_2.default = L8_2
      L8_2 = {}
      L9_2 = 0
      L10_2 = 0
      L11_2 = 0
      L12_2 = 0
      L8_2[1] = L9_2
      L8_2[2] = L10_2
      L8_2[3] = L11_2
      L8_2[4] = L12_2
      L7_2.over = L8_2
      L6_2.rowColor = L7_2
      L4_2(L5_2, L6_2)
      L4_2 = ipairs
      L5_2 = A1_2
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L9_2 = L8_2.leagueRank
        if L9_2 <= 3 then
          L9_2 = A0_2.results
          L10_2 = L8_2.id
          L9_2[L10_2] = L8_2
          L9_2 = A0_2.list
          L10_2 = L9_2
          L9_2 = L9_2.insertRow
          L11_2 = {}
          L11_2.rowHeight = 53
          L12_2 = "08"
          L13_2 = L8_2.id
          L12_2 = L12_2 .. L13_2
          L11_2.id = L12_2
          L12_2 = {}
          L13_2 = 0
          L14_2 = 0
          L15_2 = 0
          L16_2 = 0
          L12_2[1] = L13_2
          L12_2[2] = L14_2
          L12_2[3] = L15_2
          L12_2[4] = L16_2
          L11_2.lineColor = L12_2
          L12_2 = {}
          L13_2 = {}
          L14_2 = 0
          L15_2 = 0
          L16_2 = 0
          L17_2 = 0
          L13_2[1] = L14_2
          L13_2[2] = L15_2
          L13_2[3] = L16_2
          L13_2[4] = L17_2
          L12_2.default = L13_2
          L13_2 = {}
          L14_2 = 0
          L15_2 = 0
          L16_2 = 0
          L17_2 = 0
          L13_2[1] = L14_2
          L13_2[2] = L15_2
          L13_2[3] = L16_2
          L13_2[4] = L17_2
          L12_2.over = L13_2
          L11_2.rowColor = L12_2
          L9_2(L10_2, L11_2)
        end
      end
      L4_2 = A0_2.list
      L5_2 = L4_2
      L4_2 = L4_2.insertRow
      L6_2 = {}
      L6_2.rowHeight = 30
      L7_2 = L3_2
      L8_2 = L1_1
      L8_2 = L8_2.localizedString
      L9_2 = "Top players"
      L10_2 = {}
      L11_2 = L1_1
      L11_2 = L11_2.adjustNumber
      L12_2 = #A1_2
      L11_2 = L11_2(L12_2)
      L10_2.num = L11_2
      L8_2 = L8_2(L9_2, L10_2)
      L7_2 = L7_2 .. L8_2
      L6_2.id = L7_2
      L7_2 = {}
      L8_2 = 0
      L9_2 = 0
      L10_2 = 0
      L11_2 = 0
      L7_2[1] = L8_2
      L7_2[2] = L9_2
      L7_2[3] = L10_2
      L7_2[4] = L11_2
      L6_2.lineColor = L7_2
      L7_2 = {}
      L8_2 = {}
      L9_2 = 0
      L10_2 = 0
      L11_2 = 0
      L12_2 = 0
      L8_2[1] = L9_2
      L8_2[2] = L10_2
      L8_2[3] = L11_2
      L8_2[4] = L12_2
      L7_2.default = L8_2
      L8_2 = {}
      L9_2 = 0
      L10_2 = 0
      L11_2 = 0
      L12_2 = 0
      L8_2[1] = L9_2
      L8_2[2] = L10_2
      L8_2[3] = L11_2
      L8_2[4] = L12_2
      L7_2.over = L8_2
      L6_2.rowColor = L7_2
      L4_2(L5_2, L6_2)
      L4_2 = ipairs
      L5_2 = A1_2
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L9_2 = L8_2.leagueRank
        if 3 < L9_2 then
          L9_2 = A0_2.results
          L10_2 = L8_2.id
          L9_2[L10_2] = L8_2
          L9_2 = A0_2.list
          L10_2 = L9_2
          L9_2 = L9_2.insertRow
          L11_2 = {}
          L11_2.rowHeight = 23
          L12_2 = "08"
          L13_2 = L8_2.id
          L12_2 = L12_2 .. L13_2
          L11_2.id = L12_2
          L12_2 = {}
          L13_2 = 0
          L14_2 = 0
          L15_2 = 0
          L16_2 = 0
          L12_2[1] = L13_2
          L12_2[2] = L14_2
          L12_2[3] = L15_2
          L12_2[4] = L16_2
          L11_2.lineColor = L12_2
          L12_2 = {}
          L13_2 = {}
          L14_2 = 0
          L15_2 = 0
          L16_2 = 0
          L17_2 = 0
          L13_2[1] = L14_2
          L13_2[2] = L15_2
          L13_2[3] = L16_2
          L13_2[4] = L17_2
          L12_2.default = L13_2
          L13_2 = {}
          L14_2 = 0
          L15_2 = 0
          L16_2 = 0
          L17_2 = 0
          L13_2[1] = L14_2
          L13_2[2] = L15_2
          L13_2[3] = L16_2
          L13_2[4] = L17_2
          L12_2.over = L13_2
          L11_2.rowColor = L12_2
          L9_2(L10_2, L11_2)
        end
      end
      L4_2 = A0_2.list
      L5_2 = L4_2
      L4_2 = L4_2.insertRow
      L6_2 = {}
      L6_2.rowHeight = 30
      L7_2 = L3_2
      L8_2 = L1_1
      L8_2 = L8_2["Near your position"]
      L7_2 = L7_2 .. L8_2
      L6_2.id = L7_2
      L7_2 = {}
      L8_2 = 0
      L9_2 = 0
      L10_2 = 0
      L11_2 = 0
      L7_2[1] = L8_2
      L7_2[2] = L9_2
      L7_2[3] = L10_2
      L7_2[4] = L11_2
      L6_2.lineColor = L7_2
      L7_2 = {}
      L8_2 = {}
      L9_2 = 0
      L10_2 = 0
      L11_2 = 0
      L12_2 = 0
      L8_2[1] = L9_2
      L8_2[2] = L10_2
      L8_2[3] = L11_2
      L8_2[4] = L12_2
      L7_2.default = L8_2
      L8_2 = {}
      L9_2 = 0
      L10_2 = 0
      L11_2 = 0
      L12_2 = 0
      L8_2[1] = L9_2
      L8_2[2] = L10_2
      L8_2[3] = L11_2
      L8_2[4] = L12_2
      L7_2.over = L8_2
      L6_2.rowColor = L7_2
      L4_2(L5_2, L6_2)
      L4_2 = ipairs
      L5_2 = A2_2
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L9_2 = A0_2.results
        L10_2 = L8_2.id
        L9_2[L10_2] = L8_2
        L9_2 = A0_2.list
        L10_2 = L9_2
        L9_2 = L9_2.insertRow
        L11_2 = {}
        L11_2.rowHeight = 23
        L12_2 = "18"
        L13_2 = L8_2.id
        L12_2 = L12_2 .. L13_2
        L11_2.id = L12_2
        L12_2 = {}
        L13_2 = 0
        L14_2 = 0
        L15_2 = 0
        L16_2 = 0
        L12_2[1] = L13_2
        L12_2[2] = L14_2
        L12_2[3] = L15_2
        L12_2[4] = L16_2
        L11_2.lineColor = L12_2
        L12_2 = {}
        L13_2 = {}
        L14_2 = 0
        L15_2 = 0
        L16_2 = 0
        L17_2 = 0
        L13_2[1] = L14_2
        L13_2[2] = L15_2
        L13_2[3] = L16_2
        L13_2[4] = L17_2
        L12_2.default = L13_2
        L13_2 = {}
        L14_2 = 0
        L15_2 = 0
        L16_2 = 0
        L17_2 = 0
        L13_2[1] = L14_2
        L13_2[2] = L15_2
        L13_2[3] = L16_2
        L13_2[4] = L17_2
        L12_2.over = L13_2
        L11_2.rowColor = L12_2
        L9_2(L10_2, L11_2)
      end
      L4_2 = L7_1
      L4_2 = L4_2.hide
      L4_2()
      L4_2 = L17_1
      if L4_2 then
        L4_2 = L18_1
        if L4_2 then
          L4_2 = L19_1
          if L4_2 then
            L4_2 = highlightRewardsAndSeed
            L5_2 = L17_1
            L6_2 = L18_1
            L7_2 = L19_1
            L4_2(L5_2, L6_2, L7_2)
          end
        end
      end
      return
    end
  end
  L3_2 = {}
  A0_2.results = L3_2
  L3_2 = "00"
  L4_2 = A0_2.mode
  if L4_2 == 3 then
    L3_2 = "06"
  end
  L4_2 = A0_2.list
  L5_2 = L4_2
  L4_2 = L4_2.insertRow
  L6_2 = {}
  L6_2.rowHeight = 30
  L7_2 = L3_2
  L8_2 = L1_1
  L8_2 = L8_2.localizedString
  L9_2 = "Top players"
  L10_2 = {}
  L11_2 = L1_1
  L11_2 = L11_2.adjustNumber
  L12_2 = 3
  L11_2 = L11_2(L12_2)
  L10_2.num = L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L7_2 = L7_2 .. L8_2
  L6_2.id = L7_2
  L7_2 = {}
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L6_2.lineColor = L7_2
  L7_2 = {}
  L8_2 = {}
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L7_2.default = L8_2
  L8_2 = {}
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L7_2.over = L8_2
  L6_2.rowColor = L7_2
  L4_2(L5_2, L6_2)
  L4_2 = ipairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.rank
    if L9_2 <= 3 then
      L9_2 = A0_2.results
      L10_2 = L8_2.id
      L9_2[L10_2] = L8_2
      L9_2 = A0_2.list
      L10_2 = L9_2
      L9_2 = L9_2.insertRow
      L11_2 = {}
      L11_2.rowHeight = 53
      L12_2 = "01"
      L13_2 = L8_2.id
      L12_2 = L12_2 .. L13_2
      L11_2.id = L12_2
      L12_2 = {}
      L13_2 = 0
      L14_2 = 0
      L15_2 = 0
      L16_2 = 0
      L12_2[1] = L13_2
      L12_2[2] = L14_2
      L12_2[3] = L15_2
      L12_2[4] = L16_2
      L11_2.lineColor = L12_2
      L12_2 = {}
      L13_2 = {}
      L14_2 = 0
      L15_2 = 0
      L16_2 = 0
      L17_2 = 0
      L13_2[1] = L14_2
      L13_2[2] = L15_2
      L13_2[3] = L16_2
      L13_2[4] = L17_2
      L12_2.default = L13_2
      L13_2 = {}
      L14_2 = 0
      L15_2 = 0
      L16_2 = 0
      L17_2 = 0
      L13_2[1] = L14_2
      L13_2[2] = L15_2
      L13_2[3] = L16_2
      L13_2[4] = L17_2
      L12_2.over = L13_2
      L11_2.rowColor = L12_2
      L9_2(L10_2, L11_2)
    end
  end
  L4_2 = A0_2.list
  L5_2 = L4_2
  L4_2 = L4_2.insertRow
  L6_2 = {}
  L6_2.rowHeight = 30
  L7_2 = L3_2
  L8_2 = L1_1
  L8_2 = L8_2.localizedString
  L9_2 = "Top players"
  L10_2 = {}
  L11_2 = L1_1
  L11_2 = L11_2.adjustNumber
  L12_2 = #A1_2
  L11_2 = L11_2(L12_2)
  L10_2.num = L11_2
  L8_2 = L8_2(L9_2, L10_2)
  L7_2 = L7_2 .. L8_2
  L6_2.id = L7_2
  L7_2 = {}
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L6_2.lineColor = L7_2
  L7_2 = {}
  L8_2 = {}
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L7_2.default = L8_2
  L8_2 = {}
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L7_2.over = L8_2
  L6_2.rowColor = L7_2
  L4_2(L5_2, L6_2)
  L4_2 = ipairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.rank
    if 3 < L9_2 then
      L9_2 = A0_2.results
      L10_2 = L8_2.id
      L9_2[L10_2] = L8_2
      L9_2 = A0_2.list
      L10_2 = L9_2
      L9_2 = L9_2.insertRow
      L11_2 = {}
      L11_2.rowHeight = 23
      L12_2 = "01"
      L13_2 = L8_2.id
      L12_2 = L12_2 .. L13_2
      L11_2.id = L12_2
      L12_2 = {}
      L13_2 = 0
      L14_2 = 0
      L15_2 = 0
      L16_2 = 0
      L12_2[1] = L13_2
      L12_2[2] = L14_2
      L12_2[3] = L15_2
      L12_2[4] = L16_2
      L11_2.lineColor = L12_2
      L12_2 = {}
      L13_2 = {}
      L14_2 = 0
      L15_2 = 0
      L16_2 = 0
      L17_2 = 0
      L13_2[1] = L14_2
      L13_2[2] = L15_2
      L13_2[3] = L16_2
      L13_2[4] = L17_2
      L12_2.default = L13_2
      L13_2 = {}
      L14_2 = 0
      L15_2 = 0
      L16_2 = 0
      L17_2 = 0
      L13_2[1] = L14_2
      L13_2[2] = L15_2
      L13_2[3] = L16_2
      L13_2[4] = L17_2
      L12_2.over = L13_2
      L11_2.rowColor = L12_2
      L9_2(L10_2, L11_2)
    end
  end
  L4_2 = A0_2.list
  L5_2 = L4_2
  L4_2 = L4_2.insertRow
  L6_2 = {}
  L6_2.rowHeight = 30
  L7_2 = L3_2
  L8_2 = L1_1
  L8_2 = L8_2["Near your position"]
  L7_2 = L7_2 .. L8_2
  L6_2.id = L7_2
  L7_2 = {}
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L6_2.lineColor = L7_2
  L7_2 = {}
  L8_2 = {}
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L7_2.default = L8_2
  L8_2 = {}
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L7_2.over = L8_2
  L6_2.rowColor = L7_2
  L4_2(L5_2, L6_2)
  L4_2 = ipairs
  L5_2 = A2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A0_2.results
    L10_2 = L8_2.id
    L9_2[L10_2] = L8_2
    L9_2 = A0_2.list
    L10_2 = L9_2
    L9_2 = L9_2.insertRow
    L11_2 = {}
    L11_2.rowHeight = 23
    L12_2 = "01"
    L13_2 = L8_2.id
    L12_2 = L12_2 .. L13_2
    L11_2.id = L12_2
    L12_2 = {}
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0
    L16_2 = 0
    L12_2[1] = L13_2
    L12_2[2] = L14_2
    L12_2[3] = L15_2
    L12_2[4] = L16_2
    L11_2.lineColor = L12_2
    L12_2 = {}
    L13_2 = {}
    L14_2 = 0
    L15_2 = 0
    L16_2 = 0
    L17_2 = 0
    L13_2[1] = L14_2
    L13_2[2] = L15_2
    L13_2[3] = L16_2
    L13_2[4] = L17_2
    L12_2.default = L13_2
    L13_2 = {}
    L14_2 = 0
    L15_2 = 0
    L16_2 = 0
    L17_2 = 0
    L13_2[1] = L14_2
    L13_2[2] = L15_2
    L13_2[3] = L16_2
    L13_2[4] = L17_2
    L12_2.over = L13_2
    L11_2.rowColor = L12_2
    L9_2(L10_2, L11_2)
  end
  L4_2 = L7_1
  L4_2 = L4_2.hide
  L4_2()
end

didFetchRankings = L27_1

function L27_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L7_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = showSimpleDialog
  L3_2 = "Rankings"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

failedToFetchRankings = L27_1

function L27_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = {}
  A0_2.results = L3_2
  L3_2 = A0_2.list
  L4_2 = L3_2
  L3_2 = L3_2.insertRow
  L5_2 = {}
  L5_2.rowHeight = 30
  L6_2 = "02"
  L7_2 = L1_1
  L7_2 = L7_2.localizedString
  L8_2 = "Top tribes"
  L9_2 = {}
  L10_2 = L1_1
  L10_2 = L10_2.adjustNumber
  L11_2 = #A1_2
  L10_2 = L10_2(L11_2)
  L9_2.num = L10_2
  L7_2 = L7_2(L8_2, L9_2)
  L6_2 = L6_2 .. L7_2
  L5_2.id = L6_2
  L6_2 = {}
  L7_2 = {}
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L6_2.default = L7_2
  L7_2 = {}
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L6_2.over = L7_2
  L5_2.rowColor = L6_2
  L3_2(L4_2, L5_2)
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2.results
    L9_2 = L7_2.id
    L8_2[L9_2] = L7_2
    L8_2 = A0_2.list
    L9_2 = L8_2
    L8_2 = L8_2.insertRow
    L10_2 = {}
    L10_2.rowHeight = 23
    L11_2 = "04"
    L12_2 = L7_2.id
    L11_2 = L11_2 .. L12_2
    L10_2.id = L11_2
    L11_2 = {}
    L12_2 = 0
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0
    L11_2[1] = L12_2
    L11_2[2] = L13_2
    L11_2[3] = L14_2
    L11_2[4] = L15_2
    L10_2.lineColor = L11_2
    L11_2 = {}
    L12_2 = {}
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0
    L16_2 = 0
    L12_2[1] = L13_2
    L12_2[2] = L14_2
    L12_2[3] = L15_2
    L12_2[4] = L16_2
    L11_2.default = L12_2
    L12_2 = {}
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0
    L16_2 = 0
    L12_2[1] = L13_2
    L12_2[2] = L14_2
    L12_2[3] = L15_2
    L12_2[4] = L16_2
    L11_2.over = L12_2
    L10_2.rowColor = L11_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = A0_2.list
  L4_2 = L3_2
  L3_2 = L3_2.insertRow
  L5_2 = {}
  L5_2.rowHeight = 30
  L6_2 = "02"
  L7_2 = L1_1
  L7_2 = L7_2["Near your tribe"]
  L6_2 = L6_2 .. L7_2
  L5_2.id = L6_2
  L6_2 = {}
  L7_2 = {}
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L6_2.default = L7_2
  L7_2 = {}
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L6_2.over = L7_2
  L5_2.rowColor = L6_2
  L3_2(L4_2, L5_2)
  L3_2 = ipairs
  L4_2 = A2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2.results
    L9_2 = L7_2.id
    L8_2[L9_2] = L7_2
    L8_2 = A0_2.list
    L9_2 = L8_2
    L8_2 = L8_2.insertRow
    L10_2 = {}
    L10_2.rowHeight = 23
    L11_2 = "04"
    L12_2 = L7_2.id
    L11_2 = L11_2 .. L12_2
    L10_2.id = L11_2
    L11_2 = {}
    L12_2 = {}
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0
    L16_2 = 0
    L12_2[1] = L13_2
    L12_2[2] = L14_2
    L12_2[3] = L15_2
    L12_2[4] = L16_2
    L11_2.default = L12_2
    L12_2 = {}
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0
    L16_2 = 0
    L12_2[1] = L13_2
    L12_2[2] = L14_2
    L12_2[3] = L15_2
    L12_2[4] = L16_2
    L11_2.over = L12_2
    L10_2.rowColor = L11_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = L7_1
  L3_2 = L3_2.hide
  L3_2()
end

didFetchTribeRankings = L27_1

function L27_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = {}
  A0_2.results = L3_2
  L3_2 = A0_2.list
  L4_2 = L3_2
  L3_2 = L3_2.insertRow
  L5_2 = {}
  L5_2.rowHeight = 30
  L6_2 = "03"
  L7_2 = L1_1
  L7_2 = L7_2.localizedString
  L8_2 = "Top tribes"
  L9_2 = {}
  L10_2 = L1_1
  L10_2 = L10_2.adjustNumber
  L11_2 = #A1_2
  L10_2 = L10_2(L11_2)
  L9_2.num = L10_2
  L7_2 = L7_2(L8_2, L9_2)
  L6_2 = L6_2 .. L7_2
  L5_2.id = L6_2
  L6_2 = {}
  L7_2 = {}
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L6_2.default = L7_2
  L7_2 = {}
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L6_2.over = L7_2
  L5_2.rowColor = L6_2
  L3_2(L4_2, L5_2)
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2.results
    L9_2 = L7_2.id
    L8_2[L9_2] = L7_2
    L8_2 = A0_2.list
    L9_2 = L8_2
    L8_2 = L8_2.insertRow
    L10_2 = {}
    L10_2.rowHeight = 23
    L11_2 = "04"
    L12_2 = L7_2.id
    L11_2 = L11_2 .. L12_2
    L10_2.id = L11_2
    L11_2 = {}
    L12_2 = 0
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0
    L11_2[1] = L12_2
    L11_2[2] = L13_2
    L11_2[3] = L14_2
    L11_2[4] = L15_2
    L10_2.lineColor = L11_2
    L11_2 = {}
    L12_2 = {}
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0
    L16_2 = 0
    L12_2[1] = L13_2
    L12_2[2] = L14_2
    L12_2[3] = L15_2
    L12_2[4] = L16_2
    L11_2.default = L12_2
    L12_2 = {}
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0
    L16_2 = 0
    L12_2[1] = L13_2
    L12_2[2] = L14_2
    L12_2[3] = L15_2
    L12_2[4] = L16_2
    L11_2.over = L12_2
    L10_2.rowColor = L11_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = A0_2.list
  L4_2 = L3_2
  L3_2 = L3_2.insertRow
  L5_2 = {}
  L5_2.rowHeight = 30
  L6_2 = "03"
  L7_2 = L1_1
  L7_2 = L7_2["Near your tribe"]
  L6_2 = L6_2 .. L7_2
  L5_2.id = L6_2
  L6_2 = {}
  L7_2 = {}
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L6_2.default = L7_2
  L7_2 = {}
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L6_2.over = L7_2
  L5_2.rowColor = L6_2
  L3_2(L4_2, L5_2)
  L3_2 = ipairs
  L4_2 = A2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2.results
    L9_2 = L7_2.id
    L8_2[L9_2] = L7_2
    L8_2 = A0_2.list
    L9_2 = L8_2
    L8_2 = L8_2.insertRow
    L10_2 = {}
    L10_2.rowHeight = 23
    L11_2 = "04"
    L12_2 = L7_2.id
    L11_2 = L11_2 .. L12_2
    L10_2.id = L11_2
    L11_2 = {}
    L12_2 = {}
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0
    L16_2 = 0
    L12_2[1] = L13_2
    L12_2[2] = L14_2
    L12_2[3] = L15_2
    L12_2[4] = L16_2
    L11_2.default = L12_2
    L12_2 = {}
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0
    L16_2 = 0
    L12_2[1] = L13_2
    L12_2[2] = L14_2
    L12_2[3] = L15_2
    L12_2[4] = L16_2
    L11_2.over = L12_2
    L10_2.rowColor = L11_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = L7_1
  L3_2 = L3_2.hide
  L3_2()
end

didFetchTribeRankingsBasedOnSeeds = L27_1

function L27_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L7_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = showSimpleDialog
  L3_2 = "Rankings"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

failedToFetchTribeRankings = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L1_2 = A0_2.row
  L2_2 = A0_2.row
  L3_2 = L2_2.id
  L4_2 = L3_2
  L3_2 = L3_2.sub
  L5_2 = 1
  L6_2 = 2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2.id
  L5_2 = L4_2
  L4_2 = L4_2.sub
  L6_2 = 3
  L4_2 = L4_2(L5_2, L6_2)
  if L3_2 == "01" or L3_2 == "04" then
    L5_2 = A0_2.target
    L5_2 = L5_2.delegate
    L5_2 = L5_2.results
    L6_2 = tonumber
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L5_2 = L5_2[L6_2]
    L6_2 = nil
    L7_2 = L5_2.rank
    if L7_2 <= 3 then
      L7_2 = L5_2.rank
      if 1 <= L7_2 then
        if L3_2 == "01" then
          L7_2 = tonumber
          L8_2 = L4_2
          L7_2 = L7_2(L8_2)
          L8_2 = mainPlayer
          L8_2 = L8_2.id
          if L7_2 == L8_2 then
            L7_2 = display
            L7_2 = L7_2.newImageRect
            L8_2 = L1_2
            L9_2 = Constants
            L9_2 = L9_2.Path_Assets
            L10_2 = "cell_background-green.png"
            L9_2 = L9_2 .. L10_2
            L10_2 = L2_2.contentWidth
            L11_2 = L2_2.contentHeight
            L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
            L6_2 = L7_2
          else
            L7_2 = display
            L7_2 = L7_2.newImageRect
            L8_2 = L1_2
            L9_2 = Constants
            L9_2 = L9_2.Path_Assets
            L10_2 = "cell_background.png"
            L9_2 = L9_2 .. L10_2
            L10_2 = L2_2.contentWidth
            L11_2 = L2_2.contentHeight
            L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
            L6_2 = L7_2
          end
        else
          L7_2 = tonumber
          L8_2 = L4_2
          L7_2 = L7_2(L8_2)
          L8_2 = mainPlayer
          L8_2 = L8_2.tribe
          L8_2 = L8_2.id
          if L7_2 == L8_2 then
            L7_2 = display
            L7_2 = L7_2.newImageRect
            L8_2 = L1_2
            L9_2 = Constants
            L9_2 = L9_2.Path_Assets
            L10_2 = "cell_background-green.png"
            L9_2 = L9_2 .. L10_2
            L10_2 = L2_2.contentWidth
            L11_2 = L2_2.contentHeight
            L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
            L6_2 = L7_2
          else
            L7_2 = display
            L7_2 = L7_2.newImageRect
            L8_2 = L1_2
            L9_2 = Constants
            L9_2 = L9_2.Path_Assets
            L10_2 = "cell_background.png"
            L9_2 = L9_2 .. L10_2
            L10_2 = L2_2.contentWidth
            L11_2 = L2_2.contentHeight
            L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
            L6_2 = L7_2
          end
        end
        L7_2 = L6_2.width
        L7_2 = L7_2 / 2
        L6_2.x = L7_2
        L7_2 = L6_2.height
        L7_2 = L7_2 / 2
        L6_2.y = L7_2
        if L3_2 == "01" then
          L7_2 = nil
          L8_2 = L8_1
          L9_2 = L8_2
          L8_2 = L8_2.new
          L10_2 = L1_2
          L11_2 = L5_2.avatar
          L11_2 = L11_2.image
          L12_2 = L2_2.contentHeight
          L12_2 = L12_2 - 5
          L13_2 = L2_2.contentHeight
          L13_2 = L13_2 - 5
          
          function L14_2()
            local L0_3, L1_3
            L0_3 = L7_2
            L0_3 = L0_3._view
            L1_3 = L7_2
            L1_3 = L1_3._view
            L1_3 = L1_3.width
            L1_3 = L1_3 * 0.5
            L1_3 = L1_3 + 5
            L0_3.x = L1_3
            L0_3 = L7_2
            L0_3 = L0_3._view
            L1_3 = L7_2
            L1_3 = L1_3._view
            L1_3 = L1_3.height
            L1_3 = L1_3 * 0.5
            L1_3 = L1_3 + 2.5
            L0_3.y = L1_3
          end
          
          L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
          L7_2 = L8_2
          L8_2 = L7_2._view
          L9_2 = L7_2._view
          L9_2 = L9_2.width
          L9_2 = L9_2 * 0.5
          L9_2 = L9_2 + 5
          L8_2.x = L9_2
          L8_2 = L7_2._view
          L9_2 = L7_2._view
          L9_2 = L9_2.height
          L9_2 = L9_2 * 0.5
          L9_2 = L9_2 + 2.5
          L8_2.y = L9_2
          L8_2 = display
          L8_2 = L8_2.newText
          L9_2 = L1_2
          L10_2 = L5_2.name
          L11_2 = 0
          L12_2 = 0
          L13_2 = Constants
          L13_2 = L13_2.fontForTitle
          L13_2 = L13_2()
          L14_2 = 12
          L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
          L10_2 = L8_2
          L9_2 = L8_2.setFillColor
          L11_2 = Constants
          L11_2 = L11_2.darkBlueColor
          L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L11_2()
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
          L9_2 = L2_2.contentHeight
          L10_2 = L8_2.width
          L10_2 = L10_2 * 0.5
          L9_2 = L9_2 + L10_2
          L8_2.x = L9_2
          L9_2 = L2_2.contentHeight
          L9_2 = L9_2 * 0.5
          L10_2 = L8_2.height
          L10_2 = L10_2 * 0.5
          L9_2 = L9_2 - L10_2
          L9_2 = L9_2 + 5
          L8_2.y = L9_2
          L9_2 = nil
          L10_2 = tonumber
          L11_2 = L5_2.xp
          L10_2 = L10_2(L11_2)
          if 1000000 < L10_2 then
            L10_2 = L1_1
            L10_2 = L10_2.adjustNumber
            L11_2 = L4_1
            L11_2 = L11_2.stringThousandCommaSeperated
            L12_2 = L4_1
            L12_2 = L12_2.shortenLongNumber
            L13_2 = L5_2.xp
            L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L12_2(L13_2)
            L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
            L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
            L9_2 = L10_2
          else
            L10_2 = L1_1
            L10_2 = L10_2.adjustNumber
            L11_2 = L4_1
            L11_2 = L11_2.stringThousandCommaSeperated
            L12_2 = L5_2.xp
            L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L11_2(L12_2)
            L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
            L9_2 = L10_2
          end
          L10_2 = display
          L10_2 = L10_2.newText
          L11_2 = L1_2
          L12_2 = L9_2
          L13_2 = 0
          L14_2 = 0
          L15_2 = Constants
          L15_2 = L15_2.fontForSubtitle
          L15_2 = L15_2()
          L16_2 = 10
          L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
          L12_2 = L10_2
          L11_2 = L10_2.setFillColor
          L13_2 = Constants
          L13_2 = L13_2.darkBlueColor
          L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L13_2()
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
          L11_2 = L2_2.contentWidth
          L11_2 = L11_2 - 28
          L12_2 = L10_2.width
          L12_2 = L12_2 / 2
          L11_2 = L11_2 - L12_2
          L10_2.x = L11_2
          L11_2 = L2_2.contentHeight
          L11_2 = L11_2 * 0.5
          L12_2 = L10_2.height
          L12_2 = L12_2 * 0.5
          L11_2 = L11_2 - L12_2
          L11_2 = L11_2 + 5
          L10_2.y = L11_2
          if L3_2 == "01" then
            L11_2 = L5_2.tribeName
            if L11_2 then
              L11_2 = display
              L11_2 = L11_2.newText
              L12_2 = L1_2
              L13_2 = L5_2.tribeName
              L14_2 = 0
              L15_2 = 0
              L16_2 = Constants
              L16_2 = L16_2.fontForSubtitle
              L16_2 = L16_2()
              L17_2 = 10
              L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
              L13_2 = L11_2
              L12_2 = L11_2.setFillColor
              L14_2 = Constants
              L14_2 = L14_2.darkBlueColor
              L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L14_2()
              L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
              L12_2 = L2_2.contentWidth
              L12_2 = L12_2 * 0.5
              L11_2.x = L12_2
              L12_2 = L2_2.contentHeight
              L12_2 = L12_2 * 0.5
              L13_2 = L11_2.height
              L13_2 = L13_2 * 0.5
              L12_2 = L12_2 - L13_2
              L12_2 = L12_2 + 5
              L11_2.y = L12_2
            end
          end
          if L3_2 == "01" then
            L11_2 = display
            L11_2 = L11_2.newText
            L12_2 = L1_2
            L13_2 = L1_1
            L13_2 = L13_2.adjustNumber
            L14_2 = L5_2.level
            L13_2 = L13_2(L14_2)
            L14_2 = 0
            L15_2 = 0
            L16_2 = Constants
            L16_2 = L16_2.fontForSubtitle
            L16_2 = L16_2()
            L17_2 = 10
            L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
            L13_2 = L11_2
            L12_2 = L11_2.setFillColor
            L14_2 = Constants
            L14_2 = L14_2.darkBlueColor
            L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L14_2()
            L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
            L12_2 = L2_2.contentWidth
            L12_2 = L12_2 - 120
            L12_2 = L12_2 - 23
            L11_2.x = L12_2
            L12_2 = L2_2.contentHeight
            L12_2 = L12_2 * 0.5
            L13_2 = L11_2.height
            L13_2 = L13_2 * 0.5
            L12_2 = L12_2 - L13_2
            L12_2 = L12_2 + 5
            L11_2.y = L12_2
          end
        else
          L7_2 = display
          L7_2 = L7_2.newText
          L8_2 = L1_2
          L9_2 = L1_1
          L9_2 = L9_2.adjustNumber
          L10_2 = L5_2.rank
          L9_2 = L9_2(L10_2)
          L10_2 = "."
          L9_2 = L9_2 .. L10_2
          L10_2 = 0
          L11_2 = 0
          L12_2 = Constants
          L12_2 = L12_2.fontForSubtitle
          L12_2 = L12_2()
          L13_2 = 10
          L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
          L9_2 = L7_2
          L8_2 = L7_2.setFillColor
          L10_2 = Constants
          L10_2 = L10_2.darkBlueColor
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L10_2()
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
          L8_2 = L7_2.width
          L8_2 = L8_2 / 2
          L8_2 = 20 + L8_2
          L7_2.x = L8_2
          L7_2.y = 12
          L8_2 = display
          L8_2 = L8_2.newText
          L9_2 = L1_2
          L10_2 = L5_2.name
          L11_2 = 0
          L12_2 = 0
          L13_2 = Constants
          L13_2 = L13_2.fontForSubtitle
          L13_2 = L13_2()
          L14_2 = 10
          L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
          L10_2 = L8_2
          L9_2 = L8_2.setFillColor
          L11_2 = Constants
          L11_2 = L11_2.darkBlueColor
          L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L11_2()
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
          L9_2 = L7_2.x
          L10_2 = L7_2.width
          L10_2 = L10_2 / 2
          L9_2 = L9_2 + L10_2
          L9_2 = L9_2 + 2
          L10_2 = L8_2.width
          L10_2 = L10_2 / 2
          L9_2 = L9_2 + L10_2
          L8_2.x = L9_2
          L8_2.y = 12
          L9_2 = nil
          L10_2 = L5_2.seed
          if L10_2 then
            L9_2 = L5_2.seed
          else
            L10_2 = L5_2.xp
            if L10_2 then
              L9_2 = L5_2.xp
            end
          end
          L10_2 = tonumber
          L11_2 = L9_2
          L10_2 = L10_2(L11_2)
          if 1000000 < L10_2 then
            L10_2 = L1_1
            L10_2 = L10_2.adjustNumber
            L11_2 = L4_1
            L11_2 = L11_2.stringThousandCommaSeperated
            L12_2 = L4_1
            L12_2 = L12_2.shortenLongNumber
            L13_2 = L9_2
            L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L12_2(L13_2)
            L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
            L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
            L9_2 = L10_2
          else
            L10_2 = L1_1
            L10_2 = L10_2.adjustNumber
            L11_2 = L4_1
            L11_2 = L11_2.stringThousandCommaSeperated
            L12_2 = L9_2
            L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L11_2(L12_2)
            L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
            L9_2 = L10_2
          end
          L10_2 = display
          L10_2 = L10_2.newText
          L11_2 = L1_2
          L12_2 = L9_2
          L13_2 = 0
          L14_2 = 0
          L15_2 = Constants
          L15_2 = L15_2.fontForSubtitle
          L15_2 = L15_2()
          L16_2 = 10
          L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
          L12_2 = L10_2
          L11_2 = L10_2.setFillColor
          L13_2 = Constants
          L13_2 = L13_2.darkBlueColor
          L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L13_2()
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
          L11_2 = L2_2.contentWidth
          L11_2 = L11_2 - 28
          L12_2 = L10_2.width
          L12_2 = L12_2 / 2
          L11_2 = L11_2 - L12_2
          L10_2.x = L11_2
          L10_2.y = 12
        end
    end
    else
      if L3_2 == "01" then
        L7_2 = tonumber
        L8_2 = L4_2
        L7_2 = L7_2(L8_2)
        L8_2 = mainPlayer
        L8_2 = L8_2.id
        if L7_2 == L8_2 then
          L7_2 = display
          L7_2 = L7_2.newImageRect
          L8_2 = L1_2
          L9_2 = Constants
          L9_2 = L9_2.Path_Assets
          L10_2 = "cell_background-green.png"
          L9_2 = L9_2 .. L10_2
          L10_2 = L2_2.contentWidth
          L11_2 = L2_2.contentHeight
          L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
          L6_2 = L7_2
        else
          L7_2 = display
          L7_2 = L7_2.newImageRect
          L8_2 = L1_2
          L9_2 = Constants
          L9_2 = L9_2.Path_Assets
          L10_2 = "cell_background.png"
          L9_2 = L9_2 .. L10_2
          L10_2 = L2_2.contentWidth
          L11_2 = L2_2.contentHeight
          L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
          L6_2 = L7_2
        end
      else
        L7_2 = tonumber
        L8_2 = L4_2
        L7_2 = L7_2(L8_2)
        L8_2 = mainPlayer
        L8_2 = L8_2.tribe
        L8_2 = L8_2.id
        if L7_2 == L8_2 then
          L7_2 = display
          L7_2 = L7_2.newImageRect
          L8_2 = L1_2
          L9_2 = Constants
          L9_2 = L9_2.Path_Assets
          L10_2 = "cell_background-green.png"
          L9_2 = L9_2 .. L10_2
          L10_2 = L2_2.contentWidth
          L11_2 = L2_2.contentHeight
          L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
          L6_2 = L7_2
        else
          L7_2 = display
          L7_2 = L7_2.newImageRect
          L8_2 = L1_2
          L9_2 = Constants
          L9_2 = L9_2.Path_Assets
          L10_2 = "cell_background.png"
          L9_2 = L9_2 .. L10_2
          L10_2 = L2_2.contentWidth
          L11_2 = L2_2.contentHeight
          L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
          L6_2 = L7_2
        end
      end
      L7_2 = L6_2.width
      L7_2 = L7_2 / 2
      L6_2.x = L7_2
      L7_2 = L6_2.height
      L7_2 = L7_2 / 2
      L6_2.y = L7_2
      L7_2 = display
      L7_2 = L7_2.newText
      L8_2 = L1_2
      L9_2 = L1_1
      L9_2 = L9_2.adjustNumber
      L10_2 = L5_2.rank
      L9_2 = L9_2(L10_2)
      L10_2 = "."
      L9_2 = L9_2 .. L10_2
      L10_2 = 0
      L11_2 = 0
      L12_2 = Constants
      L12_2 = L12_2.fontForSubtitle
      L12_2 = L12_2()
      L13_2 = 10
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L9_2 = L7_2
      L8_2 = L7_2.setFillColor
      L10_2 = Constants
      L10_2 = L10_2.darkBlueColor
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L10_2()
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L8_2 = L7_2.width
      L8_2 = L8_2 / 2
      L8_2 = 20 + L8_2
      L7_2.x = L8_2
      L7_2.y = 12
      L8_2 = display
      L8_2 = L8_2.newText
      L9_2 = L1_2
      L10_2 = L5_2.name
      L11_2 = 0
      L12_2 = 0
      L13_2 = Constants
      L13_2 = L13_2.fontForSubtitle
      L13_2 = L13_2()
      L14_2 = 10
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L10_2 = L8_2
      L9_2 = L8_2.setFillColor
      L11_2 = Constants
      L11_2 = L11_2.darkBlueColor
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L11_2()
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L9_2 = L7_2.x
      L10_2 = L7_2.width
      L10_2 = L10_2 / 2
      L9_2 = L9_2 + L10_2
      L9_2 = L9_2 + 2
      L10_2 = L8_2.width
      L10_2 = L10_2 / 2
      L9_2 = L9_2 + L10_2
      L8_2.x = L9_2
      L8_2.y = 12
      L9_2 = nil
      L10_2 = L5_2.seed
      if L10_2 then
        L9_2 = L5_2.seed
      else
        L10_2 = L5_2.xp
        if L10_2 then
          L9_2 = L5_2.xp
        end
      end
      L10_2 = tonumber
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      if 1000000 < L10_2 then
        L10_2 = L1_1
        L10_2 = L10_2.adjustNumber
        L11_2 = L4_1
        L11_2 = L11_2.stringThousandCommaSeperated
        L12_2 = L4_1
        L12_2 = L12_2.shortenLongNumber
        L13_2 = L9_2
        L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L12_2(L13_2)
        L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        L9_2 = L10_2
      else
        L10_2 = L1_1
        L10_2 = L10_2.adjustNumber
        L11_2 = L4_1
        L11_2 = L11_2.stringThousandCommaSeperated
        L12_2 = L9_2
        L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L11_2(L12_2)
        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        L9_2 = L10_2
      end
      L10_2 = display
      L10_2 = L10_2.newText
      L11_2 = L1_2
      L12_2 = L9_2
      L13_2 = 0
      L14_2 = 0
      L15_2 = Constants
      L15_2 = L15_2.fontForSubtitle
      L15_2 = L15_2()
      L16_2 = 10
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L12_2 = L10_2
      L11_2 = L10_2.setFillColor
      L13_2 = Constants
      L13_2 = L13_2.darkBlueColor
      L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L13_2()
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L11_2 = L2_2.contentWidth
      L11_2 = L11_2 - 28
      L12_2 = L10_2.width
      L12_2 = L12_2 / 2
      L11_2 = L11_2 - L12_2
      L10_2.x = L11_2
      L10_2.y = 12
      if L3_2 == "01" then
        L11_2 = L5_2.tribeName
        if L11_2 then
          L11_2 = display
          L11_2 = L11_2.newText
          L12_2 = L1_2
          L13_2 = L5_2.tribeName
          L14_2 = 0
          L15_2 = 0
          L16_2 = Constants
          L16_2 = L16_2.fontForSubtitle
          L16_2 = L16_2()
          L17_2 = 10
          L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
          L13_2 = L11_2
          L12_2 = L11_2.setFillColor
          L14_2 = Constants
          L14_2 = L14_2.darkBlueColor
          L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L14_2()
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
          L12_2 = L2_2.contentWidth
          L12_2 = L12_2 / 2
          L11_2.x = L12_2
          L11_2.y = 12
        end
      end
      if L3_2 == "01" then
        L11_2 = display
        L11_2 = L11_2.newText
        L12_2 = L1_2
        L13_2 = L1_1
        L13_2 = L13_2.adjustNumber
        L14_2 = L5_2.level
        L13_2 = L13_2(L14_2)
        L14_2 = 0
        L15_2 = 0
        L16_2 = Constants
        L16_2 = L16_2.fontForSubtitle
        L16_2 = L16_2()
        L17_2 = 10
        L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
        L13_2 = L11_2
        L12_2 = L11_2.setFillColor
        L14_2 = Constants
        L14_2 = L14_2.darkBlueColor
        L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L14_2()
        L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        L12_2 = L2_2.contentWidth
        L12_2 = L12_2 - 120
        L12_2 = L12_2 - 23
        L11_2.x = L12_2
        L11_2.y = 12
      end
    end
  elseif L3_2 == "08" or L3_2 == "18" then
    L5_2 = A0_2.target
    L5_2 = L5_2.delegate
    L5_2 = L5_2.results
    L6_2 = tonumber
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L5_2 = L5_2[L6_2]
    L6_2 = nil
    L7_2 = L5_2.leagueRank
    if L7_2 <= 3 then
      L7_2 = L5_2.leagueRank
      if 1 <= L7_2 then
        L7_2 = tonumber
        L8_2 = L4_2
        L7_2 = L7_2(L8_2)
        L8_2 = mainPlayer
        L8_2 = L8_2.id
        if L7_2 == L8_2 then
          L7_2 = mainPlayer
          L8_2 = L5_2.leagueRank
          L7_2.leagueRank = L8_2
          L7_2 = display
          L7_2 = L7_2.newImageRect
          L8_2 = L1_2
          L9_2 = Constants
          L9_2 = L9_2.Path_Assets
          L10_2 = "cell_background-green.png"
          L9_2 = L9_2 .. L10_2
          L10_2 = L2_2.contentWidth
          L11_2 = L2_2.contentHeight
          L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
          L6_2 = L7_2
        else
          L7_2 = display
          L7_2 = L7_2.newImageRect
          L8_2 = L1_2
          L9_2 = Constants
          L9_2 = L9_2.Path_Assets
          L10_2 = "cell_background.png"
          L9_2 = L9_2 .. L10_2
          L10_2 = L2_2.contentWidth
          L11_2 = L2_2.contentHeight
          L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
          L6_2 = L7_2
        end
        L7_2 = L6_2.width
        L7_2 = L7_2 / 2
        L6_2.x = L7_2
        L7_2 = L6_2.height
        L7_2 = L7_2 / 2
        L6_2.y = L7_2
        L7_2 = nil
        L8_2 = L8_1
        L9_2 = L8_2
        L8_2 = L8_2.new
        L10_2 = L1_2
        L11_2 = L5_2.avatar
        L11_2 = L11_2.image
        L12_2 = L2_2.contentHeight
        L12_2 = L12_2 - 5
        L13_2 = L2_2.contentHeight
        L13_2 = L13_2 - 5
        
        function L14_2()
          local L0_3, L1_3
          L0_3 = L7_2
          L0_3 = L0_3._view
          L1_3 = L7_2
          L1_3 = L1_3._view
          L1_3 = L1_3.width
          L1_3 = L1_3 * 0.5
          L1_3 = L1_3 + 5
          L0_3.x = L1_3
          L0_3 = L7_2
          L0_3 = L0_3._view
          L1_3 = L7_2
          L1_3 = L1_3._view
          L1_3 = L1_3.height
          L1_3 = L1_3 * 0.5
          L1_3 = L1_3 + 2.5
          L0_3.y = L1_3
        end
        
        L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        L7_2 = L8_2
        L8_2 = L7_2._view
        L9_2 = L7_2._view
        L9_2 = L9_2.width
        L9_2 = L9_2 * 0.5
        L9_2 = L9_2 + 5
        L8_2.x = L9_2
        L8_2 = L7_2._view
        L9_2 = L7_2._view
        L9_2 = L9_2.height
        L9_2 = L9_2 * 0.5
        L9_2 = L9_2 + 2.5
        L8_2.y = L9_2
        L8_2 = display
        L8_2 = L8_2.newText
        L9_2 = L1_2
        L10_2 = L5_2.name
        L11_2 = 0
        L12_2 = 0
        L13_2 = Constants
        L13_2 = L13_2.fontForTitle
        L13_2 = L13_2()
        L14_2 = 12
        L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        L10_2 = L8_2
        L9_2 = L8_2.setFillColor
        L11_2 = Constants
        L11_2 = L11_2.darkBlueColor
        L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L11_2()
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        L9_2 = L2_2.contentHeight
        L10_2 = L8_2.width
        L10_2 = L10_2 / 2
        L9_2 = L9_2 + L10_2
        L8_2.x = L9_2
        L9_2 = L2_2.contentHeight
        L9_2 = L9_2 * 0.5
        L10_2 = L8_2.height
        L10_2 = L10_2 * 0.5
        L9_2 = L9_2 - L10_2
        L8_2.y = L9_2
        L9_2 = L5_2.tribeName
        if L9_2 then
          L9_2 = display
          L9_2 = L9_2.newText
          L10_2 = L1_2
          L11_2 = L5_2.tribeName
          L12_2 = 0
          L13_2 = 0
          L14_2 = Constants
          L14_2 = L14_2.fontForSubtitle
          L14_2 = L14_2()
          L15_2 = 10
          L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
          L11_2 = L9_2
          L10_2 = L9_2.setFillColor
          L12_2 = Constants
          L12_2 = L12_2.darkBlueColor
          L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L12_2()
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
          L10_2 = L2_2.contentWidth
          L10_2 = L10_2 * 0.5
          L9_2.x = L10_2
          L10_2 = L2_2.contentHeight
          L10_2 = L10_2 * 0.5
          L11_2 = L9_2.height
          L11_2 = L11_2 * 0.5
          L10_2 = L10_2 - L11_2
          L9_2.y = L10_2
        end
        L9_2 = display
        L9_2 = L9_2.newText
        L10_2 = L1_2
        L11_2 = L1_1
        L11_2 = L11_2.adjustNumber
        L12_2 = L5_2.weeklyScore
        L11_2 = L11_2(L12_2)
        L12_2 = 0
        L13_2 = 0
        L14_2 = Constants
        L14_2 = L14_2.fontForSubtitle
        L14_2 = L14_2()
        L15_2 = 10
        L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        L11_2 = L9_2
        L10_2 = L9_2.setFillColor
        L12_2 = Constants
        L12_2 = L12_2.darkBlueColor
        L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L12_2()
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        L10_2 = L2_2.contentWidth
        L10_2 = L10_2 - 28
        L11_2 = L9_2.width
        L11_2 = L11_2 / 2
        L10_2 = L10_2 - L11_2
        L10_2 = L10_2 - 20
        L9_2.x = L10_2
        L10_2 = L2_2.contentHeight
        L10_2 = L10_2 * 0.5
        L11_2 = L9_2.height
        L11_2 = L11_2 * 0.5
        L10_2 = L10_2 - L11_2
        L9_2.y = L10_2
    end
    else
      L7_2 = tonumber
      L8_2 = L4_2
      L7_2 = L7_2(L8_2)
      L8_2 = mainPlayer
      L8_2 = L8_2.id
      if L7_2 == L8_2 then
        L7_2 = mainPlayer
        L8_2 = L5_2.leagueRank
        L7_2.leagueRank = L8_2
        L7_2 = display
        L7_2 = L7_2.newImageRect
        L8_2 = L1_2
        L9_2 = Constants
        L9_2 = L9_2.Path_Assets
        L10_2 = "cell_background-green.png"
        L9_2 = L9_2 .. L10_2
        L10_2 = L2_2.contentWidth
        L11_2 = L2_2.contentHeight
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
        L6_2 = L7_2
      else
        L7_2 = display
        L7_2 = L7_2.newImageRect
        L8_2 = L1_2
        L9_2 = Constants
        L9_2 = L9_2.Path_Assets
        L10_2 = "cell_background.png"
        L9_2 = L9_2 .. L10_2
        L10_2 = L2_2.contentWidth
        L11_2 = L2_2.contentHeight
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
        L6_2 = L7_2
      end
      L7_2 = L6_2.width
      L7_2 = L7_2 / 2
      L6_2.x = L7_2
      L7_2 = L6_2.height
      L7_2 = L7_2 / 2
      L6_2.y = L7_2
      L7_2 = display
      L7_2 = L7_2.newText
      L8_2 = L1_2
      L9_2 = L1_1
      L9_2 = L9_2.adjustNumber
      L10_2 = L5_2.leagueRank
      L9_2 = L9_2(L10_2)
      L10_2 = "."
      L9_2 = L9_2 .. L10_2
      L10_2 = 0
      L11_2 = 0
      L12_2 = Constants
      L12_2 = L12_2.fontForSubtitle
      L12_2 = L12_2()
      L13_2 = 10
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L9_2 = L7_2
      L8_2 = L7_2.setFillColor
      L10_2 = Constants
      L10_2 = L10_2.darkBlueColor
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L10_2()
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L8_2 = L7_2.width
      L8_2 = L8_2 / 2
      L8_2 = 20 + L8_2
      L7_2.x = L8_2
      L7_2.y = 12
      L8_2 = display
      L8_2 = L8_2.newText
      L9_2 = L1_2
      L10_2 = L5_2.name
      L11_2 = 0
      L12_2 = 0
      L13_2 = Constants
      L13_2 = L13_2.fontForSubtitle
      L13_2 = L13_2()
      L14_2 = 10
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L10_2 = L8_2
      L9_2 = L8_2.setFillColor
      L11_2 = Constants
      L11_2 = L11_2.darkBlueColor
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L11_2()
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L9_2 = L7_2.x
      L10_2 = L7_2.width
      L10_2 = L10_2 / 2
      L9_2 = L9_2 + L10_2
      L9_2 = L9_2 + 2
      L10_2 = L8_2.width
      L10_2 = L10_2 / 2
      L9_2 = L9_2 + L10_2
      L8_2.x = L9_2
      L8_2.y = 12
      L9_2 = L5_2.tribeName
      if L9_2 then
        L9_2 = display
        L9_2 = L9_2.newText
        L10_2 = L1_2
        L11_2 = L5_2.tribeName
        L12_2 = 0
        L13_2 = 0
        L14_2 = Constants
        L14_2 = L14_2.fontForSubtitle
        L14_2 = L14_2()
        L15_2 = 10
        L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        L11_2 = L9_2
        L10_2 = L9_2.setFillColor
        L12_2 = Constants
        L12_2 = L12_2.darkBlueColor
        L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L12_2()
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        L10_2 = L2_2.contentWidth
        L10_2 = L10_2 / 2
        L9_2.x = L10_2
        L9_2.y = 12
      end
      L9_2 = display
      L9_2 = L9_2.newText
      L10_2 = L1_2
      L11_2 = L1_1
      L11_2 = L11_2.adjustNumber
      L12_2 = L5_2.weeklyScore
      L11_2 = L11_2(L12_2)
      L12_2 = 0
      L13_2 = 0
      L14_2 = Constants
      L14_2 = L14_2.fontForSubtitle
      L14_2 = L14_2()
      L15_2 = 10
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L11_2 = L9_2
      L10_2 = L9_2.setFillColor
      L12_2 = Constants
      L12_2 = L12_2.darkBlueColor
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L12_2()
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L10_2 = L2_2.contentWidth
      L10_2 = L10_2 - 28
      L11_2 = L9_2.width
      L11_2 = L11_2 / 2
      L10_2 = L10_2 - L11_2
      L10_2 = L10_2 - 20
      L9_2.x = L10_2
      L9_2.y = 12
    end
    L7_2 = L5_2.leagueRank
    L8_2 = L3_1
    L8_2 = L8_2.leagueRising
    if L7_2 <= L8_2 and L3_2 == "18" then
      L7_2 = nil
      L8_2 = display
      L8_2 = L8_2.newImageRect
      L9_2 = L1_2
      L10_2 = Constants
      L10_2 = L10_2.Path_Assets
      L11_2 = "League/FC-tick.png"
      L10_2 = L10_2 .. L11_2
      L11_2 = L2_2.contentHeight
      L11_2 = L11_2 / 2
      L12_2 = L2_2.contentHeight
      L12_2 = L12_2 / 2
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      L7_2 = L8_2
      L8_2 = L2_2.contentWidth
      L9_2 = L2_2.contentHeight
      L9_2 = L9_2 / 2
      L8_2 = L8_2 - L9_2
      L8_2 = L8_2 - 5
      L7_2.x = L8_2
      L7_2.y = 12
    else
      L7_2 = L5_2.leagueRank
      L8_2 = L3_1
      L8_2 = L8_2.leagueFalling
      if L7_2 >= L8_2 then
        L7_2 = display
        L7_2 = L7_2.newImageRect
        L8_2 = L1_2
        L9_2 = Constants
        L9_2 = L9_2.Path_Assets
        L10_2 = "League/FC-death-skull.png"
        L9_2 = L9_2 .. L10_2
        L10_2 = L2_2.contentHeight
        L10_2 = L10_2 / 2
        L11_2 = L2_2.contentHeight
        L11_2 = L11_2 / 2
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
        L8_2 = L2_2.contentWidth
        L9_2 = L2_2.contentHeight
        L9_2 = L9_2 / 2
        L8_2 = L8_2 - L9_2
        L8_2 = L8_2 - 5
        L7_2.x = L8_2
        L7_2.y = 12
      end
    end
  elseif L3_2 == "00" or L3_2 == "06" then
    L5_2 = display
    L5_2 = L5_2.newRect
    L6_2 = L1_2
    L7_2 = 0
    L8_2 = 0
    L9_2 = L2_2.contentWidth
    L10_2 = 25
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L7_2 = L5_2
    L6_2 = L5_2.setFillColor
    L8_2 = Constants
    L8_2 = L8_2.blueColor
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L8_2()
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    L6_2 = L5_2.width
    L6_2 = L6_2 / 2
    L5_2.x = L6_2
    L6_2 = L5_2.height
    L6_2 = L6_2 / 2
    L6_2 = L6_2 + 5
    L5_2.y = L6_2
    L6_2 = display
    L6_2 = L6_2.newText
    L7_2 = L1_2
    L8_2 = L1_1
    L8_2 = L8_2.XP
    L9_2 = 0
    L10_2 = 0
    L11_2 = Constants
    L11_2 = L11_2.fontForTitle
    L11_2 = L11_2()
    L12_2 = 12
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    if L3_2 == "06" then
      L7_2 = L1_1
      L7_2 = L7_2.Progress
      L6_2.text = L7_2
    end
    L8_2 = L6_2
    L7_2 = L6_2.setFillColor
    L9_2 = Constants
    L9_2 = L9_2.darkBlueColor
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L9_2()
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    L7_2 = L2_2.contentWidth
    L7_2 = L7_2 - 28
    L8_2 = L6_2.width
    L8_2 = L8_2 / 2
    L7_2 = L7_2 - L8_2
    L6_2.x = L7_2
    L6_2.y = 17.5
    L7_2 = display
    L7_2 = L7_2.newText
    L8_2 = L1_2
    L9_2 = L1_1
    L9_2 = L9_2.Level
    L10_2 = 0
    L11_2 = 0
    L12_2 = Constants
    L12_2 = L12_2.fontForTitle
    L12_2 = L12_2()
    L13_2 = 12
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    levelTitle = L7_2
    L7_2 = levelTitle
    L8_2 = L7_2
    L7_2 = L7_2.setFillColor
    L9_2 = Constants
    L9_2 = L9_2.darkBlueColor
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L9_2()
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    L7_2 = levelTitle
    L8_2 = L2_2.contentWidth
    L8_2 = L8_2 - 120
    L8_2 = L8_2 - 15
    L9_2 = levelTitle
    L9_2 = L9_2.width
    L9_2 = L9_2 / 2
    L8_2 = L8_2 - L9_2
    L7_2.x = L8_2
    L7_2 = levelTitle
    L7_2.y = 17.5
    L7_2 = display
    L7_2 = L7_2.newText
    L8_2 = L1_2
    L9_2 = L1_1
    L9_2 = L9_2.Tribes
    L10_2 = 0
    L11_2 = 0
    L12_2 = Constants
    L12_2 = L12_2.fontForTitle
    L12_2 = L12_2()
    L13_2 = 12
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L9_2 = L7_2
    L8_2 = L7_2.setFillColor
    L10_2 = Constants
    L10_2 = L10_2.darkBlueColor
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L10_2()
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    L8_2 = L2_2.contentWidth
    L8_2 = L8_2 / 2
    L7_2.x = L8_2
    L7_2.y = 17.5
    L8_2 = display
    L8_2 = L8_2.newText
    L9_2 = L1_2
    L10_2 = L4_2
    L11_2 = 0
    L12_2 = 0
    L13_2 = Constants
    L13_2 = L13_2.fontForTitle
    L13_2 = L13_2()
    L14_2 = 12
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L10_2 = L8_2
    L9_2 = L8_2.setFillColor
    L11_2 = Constants
    L11_2 = L11_2.darkBlueColor
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L11_2()
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    L9_2 = L8_2.width
    L9_2 = L9_2 / 2
    L9_2 = 20 + L9_2
    L8_2.x = L9_2
    L8_2.y = 17.5
  elseif L3_2 == "07" then
    L5_2 = display
    L5_2 = L5_2.newRect
    L6_2 = L1_2
    L7_2 = 0
    L8_2 = 0
    L9_2 = L2_2.contentWidth
    L10_2 = 25
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L7_2 = L5_2
    L6_2 = L5_2.setFillColor
    L8_2 = Constants
    L8_2 = L8_2.blueColor
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L8_2()
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    L6_2 = L5_2.width
    L6_2 = L6_2 / 2
    L5_2.x = L6_2
    L6_2 = L5_2.height
    L6_2 = L6_2 / 2
    L6_2 = L6_2 + 5
    L5_2.y = L6_2
    L6_2 = display
    L6_2 = L6_2.newText
    L7_2 = L1_2
    L8_2 = L1_1
    L8_2 = L8_2["Weekly Score"]
    L9_2 = 0
    L10_2 = 0
    L11_2 = Constants
    L11_2 = L11_2.fontForTitle
    L11_2 = L11_2()
    L12_2 = 12
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    weeklyScore = L6_2
    L6_2 = weeklyScore
    L7_2 = L6_2
    L6_2 = L6_2.setFillColor
    L8_2 = Constants
    L8_2 = L8_2.darkBlueColor
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L8_2()
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    L6_2 = weeklyScore
    L7_2 = L2_2.contentWidth
    L7_2 = L7_2 - 28
    L8_2 = weeklyScore
    L8_2 = L8_2.width
    L8_2 = L8_2 / 2
    L7_2 = L7_2 - L8_2
    L7_2 = L7_2 - 20
    L6_2.x = L7_2
    L6_2 = weeklyScore
    L6_2.y = 17.5
    L6_2 = display
    L6_2 = L6_2.newText
    L7_2 = L1_2
    L8_2 = L1_1
    L8_2 = L8_2.Tribes
    L9_2 = 0
    L10_2 = 0
    L11_2 = Constants
    L11_2 = L11_2.fontForTitle
    L11_2 = L11_2()
    L12_2 = 12
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L8_2 = L6_2
    L7_2 = L6_2.setFillColor
    L9_2 = Constants
    L9_2 = L9_2.darkBlueColor
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L9_2()
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    L7_2 = L2_2.contentWidth
    L7_2 = L7_2 / 2
    L6_2.x = L7_2
    L6_2.y = 17.5
    L7_2 = display
    L7_2 = L7_2.newText
    L8_2 = L1_2
    L9_2 = L4_2
    L10_2 = 0
    L11_2 = 0
    L12_2 = Constants
    L12_2 = L12_2.fontForTitle
    L12_2 = L12_2()
    L13_2 = 12
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L9_2 = L7_2
    L8_2 = L7_2.setFillColor
    L10_2 = Constants
    L10_2 = L10_2.darkBlueColor
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L10_2()
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    L8_2 = L7_2.width
    L8_2 = L8_2 / 2
    L8_2 = 20 + L8_2
    L7_2.x = L8_2
    L7_2.y = 17.5
  elseif L3_2 == "02" then
    L5_2 = display
    L5_2 = L5_2.newRect
    L6_2 = L1_2
    L7_2 = 0
    L8_2 = 0
    L9_2 = L2_2.contentWidth
    L10_2 = 25
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L7_2 = L5_2
    L6_2 = L5_2.setFillColor
    L8_2 = Constants
    L8_2 = L8_2.blueColor
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L8_2()
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    L6_2 = L5_2.width
    L6_2 = L6_2 / 2
    L5_2.x = L6_2
    L6_2 = L5_2.height
    L6_2 = L6_2 / 2
    L6_2 = L6_2 + 5
    L5_2.y = L6_2
    L6_2 = display
    L6_2 = L6_2.newText
    L7_2 = L1_2
    L8_2 = L1_1
    L8_2 = L8_2.XP
    L9_2 = 0
    L10_2 = 0
    L11_2 = Constants
    L11_2 = L11_2.fontForTitle
    L11_2 = L11_2()
    L12_2 = 12
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L8_2 = L6_2
    L7_2 = L6_2.setFillColor
    L9_2 = Constants
    L9_2 = L9_2.darkBlueColor
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L9_2()
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    L7_2 = L2_2.contentWidth
    L7_2 = L7_2 - 28
    L8_2 = L6_2.width
    L8_2 = L8_2 / 2
    L7_2 = L7_2 - L8_2
    L6_2.x = L7_2
    L6_2.y = 17.5
    L7_2 = display
    L7_2 = L7_2.newText
    L8_2 = L1_2
    L9_2 = L4_2
    L10_2 = 0
    L11_2 = 0
    L12_2 = Constants
    L12_2 = L12_2.fontForTitle
    L12_2 = L12_2()
    L13_2 = 12
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L9_2 = L7_2
    L8_2 = L7_2.setFillColor
    L10_2 = Constants
    L10_2 = L10_2.darkBlueColor
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L10_2()
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    L8_2 = L7_2.width
    L8_2 = L8_2 / 2
    L8_2 = 20 + L8_2
    L7_2.x = L8_2
    L7_2.y = 17.5
  elseif L3_2 == "03" then
    L5_2 = display
    L5_2 = L5_2.newRect
    L6_2 = L1_2
    L7_2 = 0
    L8_2 = 0
    L9_2 = L2_2.contentWidth
    L10_2 = 25
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L7_2 = L5_2
    L6_2 = L5_2.setFillColor
    L8_2 = Constants
    L8_2 = L8_2.blueColor
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L8_2()
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    L6_2 = L5_2.width
    L6_2 = L6_2 / 2
    L5_2.x = L6_2
    L6_2 = L5_2.height
    L6_2 = L6_2 / 2
    L6_2 = L6_2 + 5
    L5_2.y = L6_2
    L6_2 = display
    L6_2 = L6_2.newText
    L7_2 = L1_2
    L8_2 = L1_1
    L8_2 = L8_2.Seed
    L9_2 = 0
    L10_2 = 0
    L11_2 = Constants
    L11_2 = L11_2.fontForTitle
    L11_2 = L11_2()
    L12_2 = 12
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L8_2 = L6_2
    L7_2 = L6_2.setFillColor
    L9_2 = Constants
    L9_2 = L9_2.darkBlueColor
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L9_2()
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    L7_2 = L2_2.contentWidth
    L7_2 = L7_2 - 28
    L8_2 = L6_2.width
    L8_2 = L8_2 / 2
    L7_2 = L7_2 - L8_2
    L6_2.x = L7_2
    L6_2.y = 17.5
    L7_2 = display
    L7_2 = L7_2.newText
    L8_2 = L1_2
    L9_2 = L4_2
    L10_2 = 0
    L11_2 = 0
    L12_2 = Constants
    L12_2 = L12_2.fontForTitle
    L12_2 = L12_2()
    L13_2 = 12
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L9_2 = L7_2
    L8_2 = L7_2.setFillColor
    L10_2 = Constants
    L10_2 = L10_2.darkBlueColor
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L10_2()
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
    L8_2 = L7_2.width
    L8_2 = L8_2 / 2
    L8_2 = 20 + L8_2
    L7_2.x = L8_2
    L7_2.y = 17.5
  else
    L5_2 = L2_2.id
    if L5_2 == "level-row" then
      L5_2 = display
      L5_2 = L5_2.newRoundedRect
      L6_2 = L1_2
      L7_2 = 0
      L8_2 = 0
      L9_2 = L2_2.contentWidth
      L10_2 = L2_2.contentHeight
      L11_2 = 5
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L7_2 = L5_2
      L6_2 = L5_2.setFillColor
      L8_2 = Constants
      L8_2 = L8_2.blueColor
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L8_2()
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L6_2 = L5_2.width
      L6_2 = L6_2 / 2
      L5_2.x = L6_2
      L6_2 = L5_2.height
      L6_2 = L6_2 / 2
      L5_2.y = L6_2
      L6_2 = display
      L6_2 = L6_2.newText
      L7_2 = L1_2
      L8_2 = L1_1
      L8_2 = L8_2.Level
      L9_2 = ": "
      L10_2 = L1_1
      L10_2 = L10_2.adjustNumber
      L11_2 = mainPlayer
      L11_2 = L11_2.level
      L10_2 = L10_2(L11_2)
      L8_2 = L8_2 .. L9_2 .. L10_2
      L9_2 = 0
      L10_2 = 0
      L11_2 = Constants
      L11_2 = L11_2.fontForTitle
      L11_2 = L11_2()
      L12_2 = 12
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      L8_2 = L6_2
      L7_2 = L6_2.setFillColor
      L9_2 = Constants
      L9_2 = L9_2.brightBlueColor
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L9_2()
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L7_2 = L2_2.contentWidth
      L7_2 = L7_2 * 0.15
      L8_2 = L6_2.width
      L8_2 = L8_2 / 2
      L7_2 = L7_2 - L8_2
      L6_2.x = L7_2
      L7_2 = L5_2.height
      L7_2 = L7_2 / 2
      L6_2.y = L7_2
      L7_2 = math
      L7_2 = L7_2.min
      L8_2 = display
      L8_2 = L8_2.contentWidth
      L9_2 = L6_2.x
      L10_2 = L6_2.width
      L10_2 = L10_2 / 2
      L9_2 = L9_2 + L10_2
      L9_2 = L9_2 + 3
      L9_2 = L9_2 + 10
      L8_2 = L8_2 - L9_2
      L8_2 = L8_2 - 30
      L9_2 = 500
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = L2_1
      L9_2 = L8_2
      L8_2 = L8_2.new
      L10_2 = L7_2
      L11_2 = 15
      L12_2 = {}
      L12_2.width = 500
      L12_2.height = 15
      L13_2 = Constants
      L13_2 = L13_2.Path_Assets
      L14_2 = "Progressbars/Achievements/barbox_background.png"
      L13_2 = L13_2 .. L14_2
      L12_2.file = L13_2
      L13_2 = {}
      L14_2 = 0.83529411764706
      L15_2 = 0.88235294117647
      L16_2 = 0.84313725490196
      L17_2 = 1
      L13_2[1] = L14_2
      L13_2[2] = L15_2
      L13_2[3] = L16_2
      L13_2[4] = L17_2
      L12_2.borderColor = L13_2
      L13_2 = {}
      L13_2.width = 500
      L13_2.height = 15
      L14_2 = Constants
      L14_2 = L14_2.Path_Assets
      L15_2 = "Progressbars/Achievements/blue.png"
      L14_2 = L14_2 .. L15_2
      L13_2.file = L14_2
      L14_2 = {}
      L14_2.width = 1004
      L14_2.height = 24
      L15_2 = Constants
      L15_2 = L15_2.Path_Assets
      L16_2 = "Progressbars/Achievements/mask.png"
      L15_2 = L15_2 .. L16_2
      L14_2.file = L15_2
      L14_2.rightMargin = 4
      L14_2.leftMargin = 0
      L14_2.topMargin = 4
      L14_2.bottomMargin = 4
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L10_2 = L8_2
      L9_2 = L8_2.setPosition
      L11_2 = L2_2.contentWidth
      L11_2 = L11_2 * 0.5755
      L12_2 = L2_2.contentHeight
      L12_2 = L12_2 / 2
      L9_2(L10_2, L11_2, L12_2)
      L10_2 = L8_2
      L9_2 = L8_2.setProgress
      L11_2 = mainPlayer
      L12_2 = L11_2
      L11_2 = L11_2.levelProgress
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L11_2(L12_2)
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L10_2 = L1_2
      L9_2 = L1_2.insert
      L11_2 = L8_2.view
      L9_2(L10_2, L11_2)
      L9_2 = display
      L9_2 = L9_2.newText
      L10_2 = L1_2
      L11_2 = L1_1
      L11_2 = L11_2.localizedString
      L12_2 = "Experience to level"
      L13_2 = {}
      L14_2 = L1_1
      L14_2 = L14_2.adjustNumber
      L15_2 = L4_1
      L15_2 = L15_2.stringThousandCommaSeperated
      L16_2 = mainPlayer
      L17_2 = L16_2
      L16_2 = L16_2.xpTillLevelUp
      L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L16_2(L17_2)
      L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L13_2.xp = L14_2
      L14_2 = L1_1
      L14_2 = L14_2.adjustNumber
      L15_2 = mainPlayer
      L15_2 = L15_2.level
      L15_2 = L15_2 + 1
      L14_2 = L14_2(L15_2)
      L13_2.level = L14_2
      L11_2 = L11_2(L12_2, L13_2)
      L12_2 = 0
      L13_2 = 0
      L14_2 = Constants
      L14_2 = L14_2.fontForSubtitle
      L14_2 = L14_2()
      L15_2 = 8
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      L11_2 = L9_2
      L10_2 = L9_2.setFillColor
      L12_2 = Constants
      L12_2 = L12_2.veryDarkBlueColor
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L12_2()
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
      L10_2 = display
      L10_2 = L10_2.contentWidth
      L10_2 = L10_2 * 0.22
      L11_2 = L9_2.width
      L11_2 = L11_2 / 2
      L10_2 = L10_2 + L11_2
      L9_2.x = L10_2
      L10_2 = L5_2.height
      L10_2 = L10_2 / 2
      L9_2.y = L10_2
    else
      L5_2 = L2_2.id
      if L5_2 == "player-rank-row" then
        L5_2 = display
        L5_2 = L5_2.newRoundedRect
        L6_2 = L1_2
        L7_2 = 0
        L8_2 = 0
        L9_2 = L2_2.contentWidth
        L10_2 = 34
        L11_2 = 5
        L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
        L7_2 = L5_2
        L6_2 = L5_2.setFillColor
        L8_2 = Constants
        L8_2 = L8_2.blueColor
        L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L8_2()
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        L6_2 = L2_2.contentWidth
        L6_2 = L6_2 / 2
        L5_2.x = L6_2
        L5_2.y = 22
        L6_2 = display
        L6_2 = L6_2.newText
        L7_2 = L1_2
        L8_2 = L1_1
        L8_2 = L8_2.Rank
        L9_2 = ": "
        L10_2 = L1_1
        L10_2 = L10_2.adjustNumber
        L11_2 = mainPlayer
        L11_2 = L11_2.rank
        L10_2 = L10_2(L11_2)
        L8_2 = L8_2 .. L9_2 .. L10_2
        L9_2 = 0
        L10_2 = 0
        L11_2 = Constants
        L11_2 = L11_2.fontForTitle
        L11_2 = L11_2()
        L12_2 = 12
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
        L8_2 = L6_2
        L7_2 = L6_2.setFillColor
        L9_2 = Constants
        L9_2 = L9_2.lightGreenColor
        L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L9_2()
        L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        L7_2 = L2_2.contentWidth
        L7_2 = L7_2 * 0.2
        L8_2 = L6_2.width
        L8_2 = L8_2 / 2
        L7_2 = L7_2 - L8_2
        L6_2.x = L7_2
        L6_2.y = 22
        L7_2 = math
        L7_2 = L7_2.min
        L8_2 = display
        L8_2 = L8_2.contentWidth
        L9_2 = L6_2.x
        L10_2 = L6_2.width
        L10_2 = L10_2 / 2
        L9_2 = L9_2 + L10_2
        L9_2 = L9_2 + 3
        L9_2 = L9_2 + 10
        L8_2 = L8_2 - L9_2
        L8_2 = L8_2 - 15
        L9_2 = 500
        L7_2 = L7_2(L8_2, L9_2)
        L8_2 = L2_1
        L9_2 = L8_2
        L8_2 = L8_2.new
        L10_2 = L7_2
        L11_2 = 15
        L12_2 = {}
        L12_2.width = 500
        L12_2.height = 15
        L13_2 = Constants
        L13_2 = L13_2.Path_Assets
        L14_2 = "Progressbars/Achievements/barbox_background.png"
        L13_2 = L13_2 .. L14_2
        L12_2.file = L13_2
        L13_2 = {}
        L14_2 = 213
        L15_2 = 225
        L16_2 = 215
        L17_2 = 255
        L13_2[1] = L14_2
        L13_2[2] = L15_2
        L13_2[3] = L16_2
        L13_2[4] = L17_2
        L12_2.borderColor = L13_2
        L13_2 = {}
        L13_2.width = 500
        L13_2.height = 15
        L14_2 = Constants
        L14_2 = L14_2.Path_Assets
        L15_2 = "Progressbars/Achievements/red.png"
        L14_2 = L14_2 .. L15_2
        L13_2.file = L14_2
        L14_2 = {}
        L14_2.width = 1004
        L14_2.height = 24
        L15_2 = Constants
        L15_2 = L15_2.Path_Assets
        L16_2 = "Progressbars/Achievements/mask.png"
        L15_2 = L15_2 .. L16_2
        L14_2.file = L15_2
        L14_2.rightMargin = 4
        L14_2.leftMargin = 0
        L14_2.topMargin = 4
        L14_2.bottomMargin = 4
        L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        L10_2 = L8_2
        L9_2 = L8_2.setPosition
        L11_2 = L2_2.contentWidth
        L11_2 = L11_2 * 0.59
        L12_2 = 22
        L9_2(L10_2, L11_2, L12_2)
        L10_2 = L8_2
        L9_2 = L8_2.setProgress
        L11_2 = mainPlayer
        L12_2 = L11_2
        L11_2 = L11_2.levelProgress
        L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L11_2(L12_2)
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        L10_2 = L1_2
        L9_2 = L1_2.insert
        L11_2 = L8_2.view
        L9_2(L10_2, L11_2)
        L9_2 = display
        L9_2 = L9_2.newText
        L10_2 = L1_2
        L11_2 = L1_1
        L11_2 = L11_2.adjustNumber
        L12_2 = L4_1
        L12_2 = L12_2.stringThousandCommaSeperated
        L13_2 = mainPlayer
        L14_2 = L13_2
        L13_2 = L13_2.xpTillLevelUp
        L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L13_2(L14_2)
        L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        L12_2 = " "
        L13_2 = L1_1
        L13_2 = L13_2["XP to rank up"]
        L11_2 = L11_2 .. L12_2 .. L13_2
        L12_2 = 0
        L13_2 = 0
        L14_2 = Constants
        L14_2 = L14_2.fontForSubtitle
        L14_2 = L14_2()
        L15_2 = 8
        L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        L11_2 = L9_2
        L10_2 = L9_2.setFillColor
        L12_2 = Constants
        L12_2 = L12_2.whiteColor
        L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L12_2()
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        L10_2 = display
        L10_2 = L10_2.contentWidth
        L10_2 = L10_2 * 0.22
        L11_2 = L9_2.width
        L11_2 = L11_2 / 2
        L10_2 = L10_2 + L11_2
        L9_2.x = L10_2
        L9_2.y = 21
      else
        L5_2 = L2_2.id
        if L5_2 == "league-description-row" then
          L5_2 = display
          L5_2 = L5_2.newRect
          L6_2 = L1_2
          L7_2 = 0
          L8_2 = 0
          L9_2 = L2_2.contentWidth
          L10_2 = L2_2.contentHeight
          L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
          L7_2 = L5_2
          L6_2 = L5_2.setFillColor
          L8_2 = Constants
          L8_2 = L8_2.lightBlueColor
          L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L8_2()
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
          L6_2 = L5_2.width
          L6_2 = L6_2 / 2
          L5_2.x = L6_2
          L6_2 = L5_2.height
          L6_2 = L6_2 / 2
          L6_2 = L6_2 + 5
          L5_2.y = L6_2
          L6_2 = display
          L6_2 = L6_2.newRect
          L7_2 = L1_2
          L8_2 = 0
          L9_2 = 0
          L10_2 = display
          L10_2 = L10_2.contentWidth
          L10_2 = L10_2 - 195
          L10_2 = L10_2 / 2
          L10_2 = L10_2 - 5
          L11_2 = display
          L11_2 = L11_2.contentHeight
          L11_2 = L11_2 * 0.08
          L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
          L7_2 = L1_1
          L7_2 = L7_2.adjustX
          L8_2 = L2_2.contentWidth
          L8_2 = L8_2 / 2
          L8_2 = L8_2 + 40
          L9_2 = L6_2.width
          L9_2 = L9_2 / 2
          L8_2 = L8_2 + L9_2
          L9_2 = 0
          L7_2 = L7_2(L8_2, L9_2)
          L6_2.x = L7_2
          L7_2 = L2_2.contentHeight
          L7_2 = L7_2 * 0.5
          L8_2 = L6_2.height
          L8_2 = L8_2 / 2
          L7_2 = L7_2 - L8_2
          L6_2.y = L7_2
          L6_2.strokeWidth = 2
          L8_2 = L6_2
          L7_2 = L6_2.setStrokeColor
          L9_2 = Constants
          L9_2 = L9_2.blueColor
          L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L9_2()
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
          L8_2 = L6_2
          L7_2 = L6_2.setFillColor
          L9_2 = Constants
          L9_2 = L9_2.whiteColor
          L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L9_2()
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
          L7_2 = L4_1
          L7_2 = L7_2.getRemainingTime
          L8_2 = L22_1
          L7_2 = L7_2(L8_2)
          L8_2 = display
          L8_2 = L8_2.newText
          L9_2 = L1_2
          L10_2 = L7_2
          L11_2 = 0
          L12_2 = 0
          L13_2 = Constants
          L13_2 = L13_2.fontForTitle
          L13_2 = L13_2()
          L14_2 = 15
          L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
          L25_1 = L8_2
          L8_2 = L25_1
          L9_2 = L8_2
          L8_2 = L8_2.setFillColor
          L10_2 = Constants
          L10_2 = L10_2.darkBlueColor
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L10_2()
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
          L8_2 = L25_1
          L9_2 = L6_2.x
          L8_2.x = L9_2
          L8_2 = L25_1
          L9_2 = L6_2.y
          L8_2.y = L9_2
          L8_2 = display
          L8_2 = L8_2.newImageRect
          L9_2 = L1_2
          L10_2 = Constants
          L10_2 = L10_2.Path_Assets
          L11_2 = "League/"
          L12_2 = Constants
          L12_2 = L12_2.League_Image
          L10_2 = L10_2 .. L11_2 .. L12_2
          L11_2 = Constants
          L11_2 = L11_2.League_logoWidth
          L12_2 = Constants
          L12_2 = L12_2.League_logoHeight
          L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
          L10_1 = L8_2
          L8_2 = L10_1
          L9_2 = L1_1
          L9_2 = L9_2.adjustX
          L10_2 = L10_1
          L10_2 = L10_2.width
          L10_2 = L10_2 / 2
          L10_2 = 25 + L10_2
          L11_2 = 0
          L9_2 = L9_2(L10_2, L11_2)
          L8_2.x = L9_2
          L8_2 = L10_1
          L9_2 = L2_2.contentHeight
          L9_2 = L9_2 * 0.35
          L9_2 = L9_2 + 3
          L8_2.y = L9_2
          L8_2 = nil
          L9_2 = Constants
          L9_2 = L9_2.leagueInfoWithId
          L10_2 = mainPlayer
          L10_2 = L10_2.leagueId
          L9_2 = L9_2(L10_2)
          L10_2 = mainPlayer
          L10_2 = L10_2.leagueId
          if L10_2 ~= 1 then
            L10_2 = L1_1
            L10_2 = L10_2.League
            L11_2 = " "
            L12_2 = L9_2.League_Name
            L13_2 = " "
            L14_2 = Constants
            L14_2 = L14_2.getLeagueNumber
            L15_2 = mainPlayer
            L15_2 = L15_2.leagueId
            L14_2 = L14_2(L15_2)
            L8_2 = L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2
          else
            L10_2 = L1_1
            L10_2 = L10_2.League
            L11_2 = " "
            L12_2 = L9_2.League_Name
            L8_2 = L10_2 .. L11_2 .. L12_2
          end
          L10_2 = display
          L10_2 = L10_2.newText
          L11_2 = L1_2
          L12_2 = L8_2
          L13_2 = 0
          L14_2 = 0
          L15_2 = Constants
          L15_2 = L15_2.fontForTitle
          L15_2 = L15_2()
          L16_2 = 15
          L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
          leagueNameLabel = L10_2
          L10_2 = leagueNameLabel
          L11_2 = L10_2
          L10_2 = L10_2.setFillColor
          L12_2 = Constants
          L12_2 = L12_2.darkBlueColor
          L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L12_2()
          L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
          L10_2 = leagueNameLabel
          L11_2 = L1_1
          L11_2 = L11_2.adjustX
          L12_2 = L10_1
          L12_2 = L12_2.x
          L13_2 = L10_1
          L13_2 = L13_2.width
          L13_2 = L13_2 / 2
          L12_2 = L12_2 + L13_2
          L13_2 = leagueNameLabel
          L13_2 = L13_2.width
          L13_2 = L13_2 / 2
          L12_2 = L12_2 + L13_2
          L12_2 = L12_2 + 20
          L13_2 = L10_1
          L13_2 = L13_2.x
          L14_2 = L10_1
          L14_2 = L14_2.width
          L14_2 = L14_2 / 2
          L13_2 = L13_2 - L14_2
          L13_2 = L13_2 - 10
          L11_2 = L11_2(L12_2, L13_2)
          L10_2.x = L11_2
          L10_2 = leagueNameLabel
          L11_2 = L2_2.contentHeight
          L11_2 = L11_2 * 0.25
          L10_2.y = L11_2
          L10_2 = 1
          L11_2 = 3
          L12_2 = 1
          for L13_2 = L10_2, L11_2, L12_2 do
            L14_2 = nil
            L15_2 = 1
            L16_2 = L5_1
            L16_2 = L16_2.getScene
            L17_2 = "Scenes.LeagueScene"
            L16_2 = L16_2(L17_2)
            if L13_2 == 2 then
              L17_2 = L16_2.secondMin
              L18_2 = "-"
              L19_2 = L16_2.secondMax
              L15_2 = L17_2 .. L18_2 .. L19_2
            elseif L13_2 == 3 then
              L17_2 = L16_2.thirdMin
              L18_2 = "-"
              L19_2 = L16_2.thirdMax
              L15_2 = L17_2 .. L18_2 .. L19_2
            else
              L15_2 = "1"
            end
            L17_2 = L1_1
            L17_2 = L17_2.isLanguageRightToLeft
            L17_2 = L17_2()
            if L17_2 then
              L17_2 = "("
              L18_2 = L1_1
              L18_2 = L18_2.adjustNumber
              L19_2 = L15_2
              L18_2 = L18_2(L19_2)
              L14_2 = L17_2 .. L18_2
            else
              L17_2 = L1_1
              L17_2 = L17_2.adjustNumber
              L18_2 = L15_2
              L17_2 = L17_2(L18_2)
              L18_2 = ") "
              L14_2 = L17_2 .. L18_2
            end
            L17_2 = display
            L17_2 = L17_2.newText
            L18_2 = L1_2
            L19_2 = L14_2
            L20_2 = 0
            L21_2 = 0
            L22_2 = Constants
            L22_2 = L22_2.fontForSubtitle
            L22_2 = L22_2()
            L23_2 = 15
            L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
            L11_1 = L17_2
            L17_2 = L11_1
            L18_2 = L17_2
            L17_2 = L17_2.setFillColor
            L19_2 = Constants
            L19_2 = L19_2.darkBlueColor
            L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L19_2()
            L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
            L17_2 = L11_1
            L18_2 = L1_1
            L18_2 = L18_2.adjustX
            L19_2 = L10_1
            L19_2 = L19_2.x
            L20_2 = L10_1
            L20_2 = L20_2.width
            L20_2 = L20_2 / 2
            L19_2 = L19_2 + L20_2
            L20_2 = L11_1
            L20_2 = L20_2.width
            L20_2 = L20_2 / 2
            L19_2 = L19_2 + L20_2
            L19_2 = L19_2 + 20
            L20_2 = L10_1
            L20_2 = L20_2.x
            L21_2 = L10_1
            L21_2 = L21_2.width
            L21_2 = L21_2 / 2
            L20_2 = L20_2 - L21_2
            L20_2 = L20_2 - 10
            L18_2 = L18_2(L19_2, L20_2)
            L17_2.x = L18_2
            L17_2 = L11_1
            L18_2 = L2_2.contentHeight
            L19_2 = L13_2 * 0.15
            L19_2 = 0.3 + L19_2
            L18_2 = L18_2 * L19_2
            L17_2.y = L18_2
            L17_2 = nil
            if L13_2 == 3 then
              L18_2 = L1_1
              L18_2 = L18_2.localizedString
              L19_2 = "League Reward"
              L20_2 = {}
              L21_2 = L1_1
              L21_2 = L21_2.adjustNumber
              L22_2 = L4_1
              L22_2 = L22_2.shortenLongNumber
              L23_2 = mainPlayer
              L23_2 = L23_2.rewardAVGPower
              L22_2, L23_2, L24_2 = L22_2(L23_2)
              L21_2 = L21_2(L22_2, L23_2, L24_2)
              L20_2.power = L21_2
              L18_2 = L18_2(L19_2, L20_2)
              L17_2 = L18_2
            else
              L18_2 = L1_1
              L18_2 = L18_2.localizedString
              L19_2 = "League Rewards"
              L20_2 = {}
              L21_2 = 4 - L13_2
              L20_2.num = L21_2
              L21_2 = L1_1
              L21_2 = L21_2.adjustNumber
              L22_2 = L4_1
              L22_2 = L22_2.shortenLongNumber
              L23_2 = mainPlayer
              L23_2 = L23_2.rewardAVGPower
              L22_2, L23_2, L24_2 = L22_2(L23_2)
              L21_2 = L21_2(L22_2, L23_2, L24_2)
              L20_2.power = L21_2
              L18_2 = L18_2(L19_2, L20_2)
              L17_2 = L18_2
            end
            L18_2 = display
            L18_2 = L18_2.newText
            L19_2 = L1_2
            L20_2 = L17_2
            L21_2 = 0
            L22_2 = 0
            L23_2 = Constants
            L23_2 = L23_2.fontForSubtitle
            L23_2 = L23_2()
            L24_2 = 12
            L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
            L12_1 = L18_2
            L18_2 = L12_1
            L19_2 = L18_2
            L18_2 = L18_2.setFillColor
            L20_2 = Constants
            L20_2 = L20_2.darkBlueColor
            L20_2, L21_2, L22_2, L23_2, L24_2 = L20_2()
            L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
            L18_2 = L12_1
            L19_2 = L1_1
            L19_2 = L19_2.adjustX
            L20_2 = L10_1
            L20_2 = L20_2.x
            L21_2 = L10_1
            L21_2 = L21_2.width
            L21_2 = L21_2 / 2
            L20_2 = L20_2 + L21_2
            L21_2 = L12_1
            L21_2 = L21_2.width
            L21_2 = L21_2 / 2
            L20_2 = L20_2 + L21_2
            L21_2 = L11_1
            L21_2 = L21_2.width
            L20_2 = L20_2 + L21_2
            L20_2 = L20_2 + 20
            L21_2 = L10_1
            L21_2 = L21_2.x
            L22_2 = L10_1
            L22_2 = L22_2.width
            L22_2 = L22_2 / 2
            L21_2 = L21_2 - L22_2
            L21_2 = L21_2 - 15
            L19_2 = L19_2(L20_2, L21_2)
            L18_2.x = L19_2
            L18_2 = L12_1
            L19_2 = L2_2.contentHeight
            L20_2 = L13_2 * 0.15
            L20_2 = 0.3 + L20_2
            L19_2 = L19_2 * L20_2
            L19_2 = L19_2 + 1
            L18_2.y = L19_2
          end
          L10_2 = display
          L10_2 = L10_2.newRect
          L11_2 = L1_2
          L12_2 = 0
          L13_2 = 0
          L14_2 = display
          L14_2 = L14_2.contentWidth
          L14_2 = L14_2 - 195
          L14_2 = L14_2 / 2
          L14_2 = L14_2 - 5
          L14_2 = L14_2 / 2
          L15_2 = display
          L15_2 = L15_2.contentHeight
          L15_2 = L15_2 * 0.08
          L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
          L11_2 = L6_2.x
          L12_2 = L10_2.width
          L12_2 = L12_2 / 2
          L11_2 = L11_2 - L12_2
          L10_2.x = L11_2
          L11_2 = L6_2.y
          L12_2 = L6_2.height
          L11_2 = L11_2 + L12_2
          L10_2.y = L11_2
          L10_2.strokeWidth = 2
          L12_2 = L10_2
          L11_2 = L10_2.setStrokeColor
          L13_2 = Constants
          L13_2 = L13_2.blueColor
          L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L13_2()
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
          L12_2 = L10_2
          L11_2 = L10_2.setFillColor
          L13_2 = Constants
          L13_2 = L13_2.whiteColor
          L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L13_2()
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
          L11_2 = display
          L11_2 = L11_2.newImageRect
          L12_2 = L1_2
          L13_2 = Constants
          L13_2 = L13_2.Path_Assets
          L14_2 = "BattleItems/rank.png"
          L13_2 = L13_2 .. L14_2
          L14_2 = 18
          L15_2 = 21
          L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
          L15_1 = L11_2
          L11_2 = L15_1
          L12_2 = L10_2.x
          L13_2 = L10_2.width
          L13_2 = L13_2 / 2
          L12_2 = L12_2 - L13_2
          L13_2 = L15_1
          L13_2 = L13_2.width
          L13_2 = L13_2 / 2
          L12_2 = L12_2 + L13_2
          L12_2 = L12_2 + 4
          L11_2.x = L12_2
          L11_2 = L15_1
          L12_2 = L10_2.y
          L11_2.y = L12_2
          L11_2 = display
          L11_2 = L11_2.newText
          L12_2 = L1_2
          L13_2 = L1_1
          L13_2 = L13_2.adjustNumber
          L14_2 = mainPlayer
          L14_2 = L14_2.leagueRank
          L13_2 = L13_2(L14_2)
          L14_2 = 0
          L15_2 = 0
          L16_2 = Constants
          L16_2 = L16_2.fontForSubtitle
          L16_2 = L16_2()
          L17_2 = 10
          L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
          L13_1 = L11_2
          L11_2 = L13_1
          L12_2 = L11_2
          L11_2 = L11_2.setFillColor
          L13_2 = Constants
          L13_2 = L13_2.darkBlueColor
          L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L13_2()
          L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
          L11_2 = L13_1
          L12_2 = L15_1
          L12_2 = L12_2.x
          L13_2 = L15_1
          L13_2 = L13_2.width
          L13_2 = L13_2 / 2
          L12_2 = L12_2 + L13_2
          L13_2 = L13_1
          L13_2 = L13_2.width
          L13_2 = L13_2 / 2
          L12_2 = L12_2 + L13_2
          L12_2 = L12_2 + 5
          L11_2.x = L12_2
          L11_2 = L13_1
          L12_2 = L10_2.y
          L11_2.y = L12_2
          L11_2 = display
          L11_2 = L11_2.newRect
          L12_2 = L1_2
          L13_2 = 0
          L14_2 = 0
          L15_2 = display
          L15_2 = L15_2.contentWidth
          L15_2 = L15_2 - 195
          L15_2 = L15_2 / 2
          L15_2 = L15_2 - 5
          L15_2 = L15_2 / 2
          L16_2 = display
          L16_2 = L16_2.contentHeight
          L16_2 = L16_2 * 0.08
          L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
          L12_2 = L6_2.x
          L13_2 = L11_2.width
          L13_2 = L13_2 / 2
          L12_2 = L12_2 + L13_2
          L11_2.x = L12_2
          L12_2 = L6_2.y
          L13_2 = L6_2.height
          L12_2 = L12_2 + L13_2
          L11_2.y = L12_2
          L11_2.strokeWidth = 2
          L13_2 = L11_2
          L12_2 = L11_2.setStrokeColor
          L14_2 = Constants
          L14_2 = L14_2.blueColor
          L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L14_2()
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
          L13_2 = L11_2
          L12_2 = L11_2.setFillColor
          L14_2 = Constants
          L14_2 = L14_2.whiteColor
          L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L14_2()
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
          L12_2 = display
          L12_2 = L12_2.newImageRect
          L13_2 = L1_2
          L14_2 = Constants
          L14_2 = L14_2.Path_Assets
          L15_2 = "LiveBattle/score.png"
          L14_2 = L14_2 .. L15_2
          L15_2 = 14
          L16_2 = 19
          L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
          L16_1 = L12_2
          L12_2 = L16_1
          L13_2 = L11_2.x
          L14_2 = L11_2.width
          L14_2 = L14_2 / 2
          L13_2 = L13_2 - L14_2
          L14_2 = L16_1
          L14_2 = L14_2.width
          L14_2 = L14_2 / 2
          L13_2 = L13_2 + L14_2
          L13_2 = L13_2 + 4
          L12_2.x = L13_2
          L12_2 = L16_1
          L13_2 = L11_2.y
          L13_2 = L13_2 - 1
          L12_2.y = L13_2
          L12_2 = display
          L12_2 = L12_2.newText
          L13_2 = L1_2
          L14_2 = L1_1
          L14_2 = L14_2.adjustNumber
          L15_2 = mainPlayer
          L15_2 = L15_2.weeklyScore
          L14_2 = L14_2(L15_2)
          L15_2 = 0
          L16_2 = 0
          L17_2 = Constants
          L17_2 = L17_2.fontForSubtitle
          L17_2 = L17_2()
          L18_2 = 10
          L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
          L14_1 = L12_2
          L12_2 = L14_1
          L13_2 = L12_2
          L12_2 = L12_2.setFillColor
          L14_2 = Constants
          L14_2 = L14_2.darkBlueColor
          L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L14_2()
          L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
          L12_2 = L14_1
          L13_2 = L16_1
          L13_2 = L13_2.x
          L14_2 = L16_1
          L14_2 = L14_2.width
          L14_2 = L14_2 / 2
          L13_2 = L13_2 + L14_2
          L14_2 = L14_1
          L14_2 = L14_2.width
          L14_2 = L14_2 / 2
          L13_2 = L13_2 + L14_2
          L13_2 = L13_2 + 5
          L12_2.x = L13_2
          L12_2 = L14_1
          L13_2 = L11_2.y
          L12_2.y = L13_2
        end
      end
    end
  end
end

onRowRender = L27_1

function L27_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2.target
  L3_2 = A0_2.target
  L3_2 = L3_2.id
  L5_2 = L3_2
  L4_2 = L3_2.sub
  L6_2 = 1
  L7_2 = 2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = L3_2
  L5_2 = L3_2.sub
  L7_2 = 3
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A1_2.results
  L7_2 = tonumber
  L8_2 = L5_2
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2[L7_2]
  L7_2 = A0_2.phase
  if L7_2 == "release" then
  elseif L4_2 == "01" then
    L7_2 = moreView
    L7_2 = L7_2.view
    L7_2 = L7_2.isVisible
    if not L7_2 then
      L7_2 = L6_2.rank
      L8_2 = mainPlayer
      L8_2 = L8_2.rank
      if L7_2 ~= L8_2 then
        L7_2 = L6_2.rank
        if L7_2 <= 3 then
          L7_2 = errorLog
          L8_2 = A0_2.target
          L8_2 = L8_2.height
          L7_2(L8_2)
          L7_2 = A0_2.target
          L7_2 = L7_2.height
          if L7_2 < 30 then
            L7_2 = moreView
            L8_2 = L7_2
            L7_2 = L7_2.changeMoreViewPositionAndId
            L9_2 = L6_2
            L10_2 = display
            L10_2 = L10_2.contentCenterX
            L11_2 = A1_2.list
            L12_2 = L11_2
            L11_2 = L11_2.getContentPosition
            L11_2 = L11_2(L12_2)
            L12_2 = L2_2.y
            L11_2 = L11_2 + L12_2
            L12_2 = display
            L12_2 = L12_2.contentHeight
            L12_2 = L12_2 * 0.56
            L11_2 = L11_2 + L12_2
            L12_2 = moreView
            L12_2 = L12_2.BG
            L12_2 = L12_2.height
            L12_2 = L12_2 * 0.5
            L12_2 = L12_2 - 16
            L11_2 = L11_2 - L12_2
            L7_2(L8_2, L9_2, L10_2, L11_2)
          else
            L7_2 = moreView
            L8_2 = L7_2
            L7_2 = L7_2.changeMoreViewPositionAndId
            L9_2 = L6_2
            L10_2 = display
            L10_2 = L10_2.contentCenterX
            L11_2 = A1_2.list
            L12_2 = L11_2
            L11_2 = L11_2.getContentPosition
            L11_2 = L11_2(L12_2)
            L12_2 = L2_2.y
            L11_2 = L11_2 + L12_2
            L12_2 = display
            L12_2 = L12_2.contentHeight
            L12_2 = L12_2 * 0.56
            L11_2 = L11_2 + L12_2
            L12_2 = moreView
            L12_2 = L12_2.BG
            L12_2 = L12_2.height
            L12_2 = L12_2 * 0.5
            L12_2 = L12_2 - 31.5
            L11_2 = L11_2 - L12_2
            L7_2(L8_2, L9_2, L10_2, L11_2)
          end
        else
          L7_2 = moreView
          L8_2 = L7_2
          L7_2 = L7_2.changeMoreViewPositionAndId
          L9_2 = L6_2
          L10_2 = display
          L10_2 = L10_2.contentCenterX
          L11_2 = A1_2.list
          L12_2 = L11_2
          L11_2 = L11_2.getContentPosition
          L11_2 = L11_2(L12_2)
          L12_2 = L2_2.y
          L11_2 = L11_2 + L12_2
          L12_2 = display
          L12_2 = L12_2.contentHeight
          L12_2 = L12_2 * 0.56
          L11_2 = L11_2 + L12_2
          L12_2 = moreView
          L12_2 = L12_2.BG
          L12_2 = L12_2.height
          L12_2 = L12_2 * 0.5
          L12_2 = L12_2 - 16
          L11_2 = L11_2 - L12_2
          L7_2(L8_2, L9_2, L10_2, L11_2)
        end
      end
    else
      L7_2 = moreView
      L8_2 = L7_2
      L7_2 = L7_2.hide
      L9_2 = false
      L7_2(L8_2, L9_2)
    end
  elseif L4_2 == "08" or L4_2 == "18" then
    L7_2 = moreView
    L7_2 = L7_2.view
    L7_2 = L7_2.isVisible
    if not L7_2 then
      L7_2 = L6_2.leagueRank
      L8_2 = mainPlayer
      L8_2 = L8_2.leagueRank
      if L7_2 ~= L8_2 then
        L7_2 = L6_2.leagueRank
        if L7_2 <= 3 then
          L7_2 = moreView
          L8_2 = L7_2
          L7_2 = L7_2.changeMoreViewPositionAndId
          L9_2 = L6_2
          L10_2 = display
          L10_2 = L10_2.contentCenterX
          L11_2 = A1_2.list
          L12_2 = L11_2
          L11_2 = L11_2.getContentPosition
          L11_2 = L11_2(L12_2)
          L12_2 = L2_2.y
          L11_2 = L11_2 + L12_2
          L12_2 = display
          L12_2 = L12_2.contentHeight
          L12_2 = L12_2 * 0.56
          L11_2 = L11_2 + L12_2
          L12_2 = moreView
          L12_2 = L12_2.BG
          L12_2 = L12_2.height
          L12_2 = L12_2 * 0.5
          L12_2 = L12_2 - 30
          L11_2 = L11_2 - L12_2
          L7_2(L8_2, L9_2, L10_2, L11_2)
        else
          L7_2 = moreView
          L8_2 = L7_2
          L7_2 = L7_2.changeMoreViewPositionAndId
          L9_2 = L6_2
          L10_2 = display
          L10_2 = L10_2.contentCenterX
          L11_2 = A1_2.list
          L12_2 = L11_2
          L11_2 = L11_2.getContentPosition
          L11_2 = L11_2(L12_2)
          L12_2 = L2_2.y
          L11_2 = L11_2 + L12_2
          L12_2 = display
          L12_2 = L12_2.contentHeight
          L12_2 = L12_2 * 0.56
          L11_2 = L11_2 + L12_2
          L12_2 = moreView
          L12_2 = L12_2.BG
          L12_2 = L12_2.height
          L12_2 = L12_2 * 0.5
          L12_2 = L12_2 - 15
          L11_2 = L11_2 - L12_2
          L7_2(L8_2, L9_2, L10_2, L11_2)
        end
      end
    else
      L7_2 = moreView
      L8_2 = L7_2
      L7_2 = L7_2.hide
      L9_2 = false
      L7_2(L8_2, L9_2)
    end
  end
end

onRowTouch = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.phase
  if L1_2 == "moved" then
    L1_2 = moreView
    L2_2 = L1_2
    L1_2 = L1_2.hide
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end

tableListener = L27_1

function L27_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if not A2_2 then
    L3_2 = {}
    A2_2 = L3_2
  end
  L3_2 = setmetatable
  L4_2 = A2_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  A0_2.__index = A0_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  A2_2.view = L3_2
  L3_2 = L6_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L3_2 = L3_2(L4_2)
  moreView = L3_2
  A2_2.mode = A1_2
  L3_2 = L0_1
  L3_2 = L3_2.newTableView
  L4_2 = {}
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 - 12
  L6_2 = L26_1
  L6_2 = 2 * L6_2
  L5_2 = L5_2 - L6_2
  L4_2.width = L5_2
  L5_2 = display
  L5_2 = L5_2.contentHeight
  L5_2 = L5_2 - 66
  L6_2 = L26_1
  L6_2 = 2 * L6_2
  L5_2 = L5_2 - L6_2
  L4_2.height = L5_2
  L4_2.id = "rankings_tableview"
  L4_2.noLines = true
  L5_2 = onRowRender
  L4_2.onRowRender = L5_2
  
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = onRowTouch
    L2_3 = A0_3
    L3_3 = A2_2
    L1_3(L2_3, L3_3)
  end
  
  L4_2.onRowTouch = L5_2
  L5_2 = tableListener
  L4_2.listener = L5_2
  L4_2.hideScrollBar = true
  L3_2 = L3_2(L4_2)
  A2_2.list = L3_2
  L3_2 = A2_2.list
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 - 70
  L4_2 = L4_2 / 2
  L3_2.y = L4_2
  L3_2 = A2_2.list
  L4_2 = display
  L4_2 = L4_2.contentWidth
  L4_2 = L4_2 - 12
  L4_2 = L4_2 / 2
  L3_2.x = L4_2
  L3_2 = A2_2.list
  L3_2.delegate = A2_2
  L3_2 = A2_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A2_2.list
  L3_2(L4_2, L5_2)
  if A1_2 == 5 then
    L3_2 = Runtime
    L4_2 = L3_2
    L3_2 = L3_2.addEventListener
    L5_2 = "minClick"
    L6_2 = timerChange
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = L5_1
  L3_2 = L3_2.getScene
  L4_2 = "Scenes.RankingsScene"
  L3_2 = L3_2(L4_2)
  L4_2 = moreView
  L3_2.moreView = L4_2
  return A2_2
end

new = L27_1

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.list
  L2_2 = L1_2
  L1_2 = L1_2.deleteAllRows
  L1_2(L2_2)
  L1_2 = A0_2.mode
  if L1_2 == 1 then
    L1_2 = A0_2.list
    L2_2 = L1_2
    L1_2 = L1_2.insertRow
    L3_2 = {}
    L3_2.id = "level-row"
    L3_2.rowHeight = 34
    L4_2 = {}
    L5_2 = {}
    L6_2 = 0
    L7_2 = 0
    L8_2 = 0
    L9_2 = 0
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L5_2[3] = L8_2
    L5_2[4] = L9_2
    L4_2.default = L5_2
    L5_2 = {}
    L6_2 = 0
    L7_2 = 0
    L8_2 = 0
    L9_2 = 0
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L5_2[3] = L8_2
    L5_2[4] = L9_2
    L4_2.over = L5_2
    L3_2.rowColor = L4_2
    L1_2(L2_2, L3_2)
    L1_2 = L7_1
    L1_2 = L1_2.show
    L2_2 = L1_1
    L2_2 = L2_2["Retrieving Ranks"]
    L1_2(L2_2)
    L1_2 = L3_1
    L1_2 = L1_2.fetchGlobalRankings
    
    function L2_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3
      L2_3 = didFetchRankings
      L3_3 = A0_2
      L4_3 = A0_3
      L5_3 = A1_3
      L2_3(L3_3, L4_3, L5_3)
    end
    
    function L3_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = failedToFetchRankings
      L2_3 = A0_2
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2.mode
    if L1_2 == 2 then
      L1_2 = L7_1
      L1_2 = L1_2.show
      L2_2 = L1_1
      L2_2 = L2_2["Retrieving Ranks"]
      L1_2(L2_2)
      L1_2 = L3_1
      L1_2 = L1_2.fetchTribeRankings
      
      function L2_2(A0_3, A1_3)
        local L2_3, L3_3, L4_3, L5_3
        L2_3 = didFetchTribeRankings
        L3_3 = A0_2
        L4_3 = A0_3
        L5_3 = A1_3
        L2_3(L3_3, L4_3, L5_3)
      end
      
      function L3_2(A0_3)
        local L1_3, L2_3, L3_3
        L1_3 = failedToFetchTribeRankings
        L2_3 = A0_2
        L3_3 = A0_3
        L1_3(L2_3, L3_3)
      end
      
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2.mode
      if L1_2 == 3 then
        L1_2 = L7_1
        L1_2 = L1_2.show
        L2_2 = L1_1
        L2_2 = L2_2["Retrieving Ranks"]
        L1_2(L2_2)
        L1_2 = L3_1
        L1_2 = L1_2.risingRankings
        
        function L2_2(A0_3, A1_3)
          local L2_3, L3_3, L4_3, L5_3
          L2_3 = didFetchRankings
          L3_3 = A0_2
          L4_3 = A0_3
          L5_3 = A1_3
          L2_3(L3_3, L4_3, L5_3)
        end
        
        function L3_2(A0_3)
          local L1_3, L2_3, L3_3
          L1_3 = failedToFetchRankings
          L2_3 = A0_2
          L3_3 = A0_3
          L1_3(L2_3, L3_3)
        end
        
        L1_2(L2_2, L3_2)
      else
        L1_2 = A0_2.mode
        if L1_2 == 4 then
          L1_2 = L7_1
          L1_2 = L1_2.show
          L2_2 = L1_1
          L2_2 = L2_2["Retrieving Ranks"]
          L1_2(L2_2)
          L1_2 = L3_1
          L1_2 = L1_2.fetchLocalRankings
          
          function L2_2(A0_3, A1_3)
            local L2_3, L3_3, L4_3, L5_3
            L2_3 = didFetchRankings
            L3_3 = A0_2
            L4_3 = A0_3
            L5_3 = A1_3
            L2_3(L3_3, L4_3, L5_3)
          end
          
          function L3_2(A0_3)
            local L1_3, L2_3, L3_3
            L1_3 = failedToFetchRankings
            L2_3 = A0_2
            L3_3 = A0_3
            L1_3(L2_3, L3_3)
          end
          
          L1_2(L2_2, L3_2)
        else
          L1_2 = A0_2.mode
          if L1_2 == 5 then
            L1_2 = L7_1
            L1_2 = L1_2.show
            L2_2 = L1_1
            L2_2 = L2_2["Retrieving Ranks"]
            L1_2(L2_2)
            L1_2 = L3_1
            L1_2 = L1_2.fetchLeagueRanking
            
            function L2_2(A0_3, A1_3)
              local L2_3, L3_3, L4_3, L5_3
              L2_3 = didFetchRankings
              L3_3 = A0_2
              L4_3 = A0_3
              L5_3 = A1_3
              L2_3(L3_3, L4_3, L5_3)
            end
            
            function L3_2(A0_3)
              local L1_3, L2_3, L3_3
              L1_3 = failedToFetchRankings
              L2_3 = A0_2
              L3_3 = A0_3
              L1_3(L2_3, L3_3)
            end
            
            L1_2(L2_2, L3_2)
          else
            L1_2 = A0_2.mode
            if L1_2 == 6 then
              L1_2 = L7_1
              L1_2 = L1_2.show
              L2_2 = L1_1
              L2_2 = L2_2["Retrieving Ranks"]
              L1_2(L2_2)
              L1_2 = L3_1
              L1_2 = L1_2.fetchTribeRankingsBasedOnSeeds
              
              function L2_2(A0_3, A1_3)
                local L2_3, L3_3, L4_3, L5_3
                L2_3 = didFetchTribeRankingsBasedOnSeeds
                L3_3 = A0_2
                L4_3 = A0_3
                L5_3 = A1_3
                L2_3(L3_3, L4_3, L5_3)
              end
              
              function L3_2(A0_3)
                local L1_3, L2_3, L3_3
                L1_3 = failedToFetchTribeRankings
                L2_3 = A0_2
                L3_3 = A0_3
                L1_3(L2_3, L3_3)
              end
              
              L1_2(L2_2, L3_2)
            end
          end
        end
      end
    end
  end
end

reloadData = L27_1

function L27_1()
  local L0_2, L1_2
  L0_2 = mainPlayer
  L1_2 = mainPlayer
  L1_2 = L1_2.leagueRemainingTime
  L1_2 = L1_2 - 60
  L0_2.leagueRemainingTime = L1_2
  L0_2 = mainPlayer
  L0_2 = L0_2.mainPlayer
  L0_2 = L0_2.leagueRemainingTime
  L22_1 = L0_2
  L0_2 = L4_1
  L0_2 = L0_2.getRemainingTime
  L1_2 = L22_1
  L0_2 = L0_2(L1_2)
  L1_2 = L25_1
  if L1_2 then
    L1_2 = L25_1
    L1_2.text = L0_2
  end
end

timerChange = L27_1

function L27_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = log3
  L1_2 = "destroy method called"
  L2_2 = timerChange
  L0_2(L1_2, L2_2)
  L0_2 = Runtime
  L1_2 = L0_2
  L0_2 = L0_2.removeEventListener
  L2_2 = "minClick"
  L3_2 = timerChange
  L0_2(L1_2, L2_2, L3_2)
end

destroy = L27_1

function L27_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L27_1

function L27_1(A0_2, A1_2, A2_2)
  L17_1 = A0_2
  L18_1 = A1_2
  L19_1 = A2_2
end

setTutorialData = L27_1

function L27_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = L1_1
  L3_2 = L3_2.adjustX
  L4_2 = L12_1
  L4_2 = L4_2.x
  L5_2 = L11_1
  L5_2 = L5_2.width
  L5_2 = L5_2 / 2
  L4_2 = L4_2 - L5_2
  L5_2 = L12_1
  L5_2 = L5_2.x
  L6_2 = L11_1
  L6_2 = L6_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 - L6_2
  L6_2 = L11_1
  L6_2 = L6_2.width
  L6_2 = L6_2 / 2
  L7_2 = L12_1
  L7_2 = L7_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L7_2 = L10_1
  L7_2 = L7_2.width
  L6_2 = L6_2 + L7_2
  L6_2 = L6_2 + 25
  L5_2 = L5_2 - L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = display
  L4_2 = L4_2.newRect
  L5_2 = A0_2.view
  L6_2 = 0
  L7_2 = 0
  L8_2 = L11_1
  L8_2 = L8_2.width
  L9_2 = L12_1
  L9_2 = L9_2.width
  L8_2 = L8_2 + L9_2
  L8_2 = L8_2 + 10
  L9_2 = L12_1
  L9_2 = L9_2.height
  L9_2 = L9_2 * 3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2.x = L3_2
  L5_2 = L10_1
  L5_2 = L5_2.y
  L6_2 = leagueNameLabel
  L6_2 = L6_2.height
  L5_2 = L5_2 + L6_2
  L5_2 = L5_2 - 5
  L4_2.y = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = 1
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2.strokeWidth = 2
  L6_2 = L4_2
  L5_2 = L4_2.setStrokeColor
  L7_2 = 1
  L8_2 = 0
  L9_2 = 0
  L10_2 = 1
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = transition
  L5_2 = L5_2.blink
  L6_2 = L4_2
  L7_2 = {}
  L7_2.time = 3000
  L5_2(L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.newCircle
  L6_2 = A0_2.view
  L7_2 = L16_1
  L7_2 = L7_2.x
  L8_2 = L16_1
  L8_2 = L8_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 - L8_2
  L8_2 = L16_1
  L8_2 = L8_2.width
  L9_2 = L14_1
  L9_2 = L9_2.width
  L8_2 = L8_2 + L9_2
  L8_2 = L8_2 + 5
  L8_2 = L8_2 / 2
  L7_2 = L7_2 + L8_2
  L8_2 = L14_1
  L8_2 = L8_2.y
  L9_2 = L16_1
  L9_2 = L9_2.width
  L10_2 = L14_1
  L10_2 = L10_2.width
  L9_2 = L9_2 + L10_2
  L9_2 = L9_2 + 5
  L9_2 = L9_2 / 2
  L9_2 = L9_2 + 10
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L7_2 = L5_2
  L6_2 = L5_2.setFillColor
  L8_2 = 1
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2.strokeWidth = 2
  L7_2 = L5_2
  L6_2 = L5_2.setStrokeColor
  L8_2 = 1
  L9_2 = 0
  L10_2 = 0
  L11_2 = 1
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = transition
  L6_2 = L6_2.blink
  L7_2 = L5_2
  L8_2 = {}
  L8_2.time = 3000
  L6_2(L7_2, L8_2)
  L6_2 = L9_1
  L6_2 = L6_2.processInformativeTutorial
  L7_2 = A1_2
  
  function L8_2()
    local L0_3, L1_3
    L0_3 = transition
    L0_3 = L0_3.cancel
    L1_3 = L4_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L4_2
    L0_3(L1_3)
    L0_3 = nil
    L4_2 = L0_3
    L0_3 = transition
    L0_3 = L0_3.cancel
    L1_3 = L5_2
    L0_3(L1_3)
    L0_3 = display
    L0_3 = L0_3.remove
    L1_3 = L5_2
    L0_3(L1_3)
    L0_3 = nil
    L5_2 = L0_3
    L0_3 = A2_2
    L0_3()
    L0_3 = nil
    L17_1 = L0_3
    L0_3 = nil
    L18_1 = L0_3
    L0_3 = nil
    L19_1 = L0_3
  end
  
  L6_2(L7_2, L8_2)
end

highlightRewardsAndSeed = L27_1
