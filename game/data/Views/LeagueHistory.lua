local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1
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
L9_1 = "Components.TDButtonView"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Constants"
L9_1(L10_1)
L9_1 = nil
L10_1 = nil
L11_1 = nil
L12_1 = nil
L13_1 = nil
L14_1 = nil
L15_1 = nil
L16_1 = 5
L17_1 = -1
lastRowTouch = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  A0_2.weekNumber = 1
  L1_2 = L1_1
  L1_2 = L1_2.localizedString
  L2_2 = "week ago"
  L3_2 = {}
  L4_2 = L1_1
  L4_2 = L4_2.adjustNumber
  L5_2 = A0_2.weekNumber
  L4_2 = L4_2(L5_2)
  L3_2.num = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2.weekLable
  L2_2.text = L1_2
  L2_2 = A0_2.backButton
  L3_2 = L2_2
  L2_2 = L2_2.setEnabled
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.backButton
  L2_2.alpha = 0.5
  L2_2 = {}
  L15_1 = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.reloadData
  L2_2(L3_2)
  L2_2 = mainPlayer
  L2_2 = L2_2.leagueRemainingTime
  L3_2 = os
  L3_2 = L3_2.time
  L3_2 = L3_2()
  L2_2 = L2_2 - L3_2
  L11_1 = L2_2
end

show = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = moreView
  L2_2 = L1_2
  L1_2 = L1_2.hide
  L3_2 = false
  L1_2(L2_2, L3_2)
end

hide = L17_1

function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = A0_2
    L2_3 = L2_3[A0_3]
    L3_3 = A0_2
    L3_3 = L3_3[A1_3]
    L4_3 = tonumber
    L5_3 = A0_3
    L4_3 = L4_3(L5_3)
    L5_3 = tonumber
    L6_3 = A1_3
    L5_3 = L5_3(L6_3)
    L4_3 = L4_3 < L5_3
    return L4_3
  end
  
  L2_2(L3_2, L4_2)
  return L1_2
end

sortLeaguesWithKey = L17_1

function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L3_2 = log3
  L4_2 = "maxRound is : "
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  A0_2.maxRound = A2_2
  L3_2 = A0_2.maxRound
  if L3_2 <= 1 then
    L3_2 = A0_2.forwardButton
    L4_2 = L3_2
    L3_2 = L3_2.setEnabled
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.forwardButton
    L3_2.alpha = 0.5
  end
  L3_2 = {}
  A0_2.results = L3_2
  L3_2 = nil
  if A2_2 == 0 then
    L4_2 = {}
    L5_2 = A0_2.view
    L4_2.parent = L5_2
    L5_2 = L1_1
    L5_2 = L5_2["No League history avilable yet"]
    L4_2.text = L5_2
    L5_2 = display
    L5_2 = L5_2.contentWidth
    L5_2 = L5_2 / 2
    L4_2.x = L5_2
    L5_2 = display
    L5_2 = L5_2.contentHeight
    L5_2 = L5_2 / 2
    L5_2 = L5_2 + 20
    L4_2.y = L5_2
    L5_2 = display
    L5_2 = L5_2.contentWidth
    L5_2 = L5_2 - 100
    L4_2.width = L5_2
    L4_2.height = 200
    L5_2 = Constants
    L5_2 = L5_2.fontForTitle
    L5_2 = L5_2()
    L4_2.font = L5_2
    L4_2.fontSize = 14
    L4_2.align = "center"
    L5_2 = display
    L5_2 = L5_2.newText
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    A0_2.emptyListLabel = L5_2
    L5_2 = A0_2.emptyListLabel
    L6_2 = L5_2
    L5_2 = L5_2.setFillColor
    L7_2 = Constants
    L7_2 = L7_2.darkBlueColor
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L7_2()
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L5_2 = A0_2.weekBG
    L5_2.isVisible = false
    L5_2 = A0_2.backButton
    L5_2.isVisible = false
    L5_2 = A0_2.forwardButton
    L5_2.isVisible = false
    L5_2 = A0_2.weekLable
    L5_2.isVisible = false
  else
    L4_2 = ""
    L5_2 = A0_2.weekNumber
    L4_2 = L4_2 .. L5_2
    L4_2 = A1_2[L4_2]
    if L4_2 then
      L4_2 = A0_2.weekBG
      L4_2.isVisible = true
      L4_2 = A0_2.backButton
      L4_2.isVisible = true
      L4_2 = A0_2.forwardButton
      L4_2.isVisible = true
      L4_2 = A0_2.weekLable
      L4_2.isVisible = true
      L4_2 = sortLeaguesWithKey
      L5_2 = ""
      L6_2 = A0_2.weekNumber
      L5_2 = L5_2 .. L6_2
      L5_2 = A1_2[L5_2]
      L4_2 = L4_2(L5_2)
      L3_2 = L4_2
      L4_2 = L15_1
      L5_2 = ""
      L6_2 = A0_2.weekNumber
      L5_2 = L5_2 .. L6_2
      L6_2 = ""
      L7_2 = A0_2.weekNumber
      L6_2 = L6_2 .. L7_2
      L6_2 = A1_2[L6_2]
      L4_2[L5_2] = L6_2
      L4_2 = A0_2.list
      L5_2 = L4_2
      L4_2 = L4_2.deleteAllRows
      L4_2(L5_2)
      L4_2 = ipairs
      L5_2 = L3_2
      L4_2, L5_2, L6_2 = L4_2(L5_2)
      for L7_2, L8_2 in L4_2, L5_2, L6_2 do
        L9_2 = log3
        L9_2()
        L9_2 = tonumber
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        if L9_2 == 1 or L9_2 == 2 or L9_2 == 7 or L9_2 == 12 or L9_2 == 17 or L9_2 == 22 then
          L10_2 = A0_2.list
          L11_2 = L10_2
          L10_2 = L10_2.insertRow
          L12_2 = {}
          L13_2 = "1"
          L14_2 = L8_2
          L13_2 = L13_2 .. L14_2
          L12_2.id = L13_2
          L12_2.rowHeight = 60
          L13_2 = {}
          L14_2 = 0
          L15_2 = 0
          L16_2 = 0
          L17_2 = 0
          L13_2[1] = L14_2
          L13_2[2] = L15_2
          L13_2[3] = L16_2
          L13_2[4] = L17_2
          L12_2.lineColor = L13_2
          L13_2 = {}
          L14_2 = {}
          L15_2 = 0
          L16_2 = 0
          L17_2 = 0
          L18_2 = 0
          L14_2[1] = L15_2
          L14_2[2] = L16_2
          L14_2[3] = L17_2
          L14_2[4] = L18_2
          L13_2.default = L14_2
          L14_2 = {}
          L15_2 = 0
          L16_2 = 0
          L17_2 = 0
          L18_2 = 0
          L14_2[1] = L15_2
          L14_2[2] = L16_2
          L14_2[3] = L17_2
          L14_2[4] = L18_2
          L13_2.over = L14_2
          L12_2.rowColor = L13_2
          L10_2(L11_2, L12_2)
        end
        if L9_2 == 1 then
        else
          L10_2 = nil
          if 2 <= L9_2 and L9_2 < 7 then
            L10_2 = L9_2 - 1
          elseif 7 <= L9_2 and L9_2 < 12 then
            L10_2 = L9_2 - 6
          elseif 12 <= L9_2 and L9_2 < 17 then
            L10_2 = L9_2 - 11
          elseif 17 <= L9_2 and L9_2 < 22 then
            L10_2 = L9_2 - 16
          else
            L10_2 = L9_2 - 21
          end
          L11_2 = A0_2.list
          L12_2 = L11_2
          L11_2 = L11_2.insertRow
          L13_2 = {}
          L14_2 = "2"
          L15_2 = L10_2
          L14_2 = L14_2 .. L15_2
          L13_2.id = L14_2
          L13_2.rowHeight = 15
          L14_2 = {}
          L15_2 = 0
          L16_2 = 0
          L17_2 = 0
          L18_2 = 0
          L14_2[1] = L15_2
          L14_2[2] = L16_2
          L14_2[3] = L17_2
          L14_2[4] = L18_2
          L13_2.lineColor = L14_2
          L14_2 = {}
          L15_2 = {}
          L16_2 = 0
          L17_2 = 0
          L18_2 = 0
          L19_2 = 0
          L15_2[1] = L16_2
          L15_2[2] = L17_2
          L15_2[3] = L18_2
          L15_2[4] = L19_2
          L14_2.default = L15_2
          L15_2 = {}
          L16_2 = 0
          L17_2 = 0
          L18_2 = 0
          L19_2 = 0
          L15_2[1] = L16_2
          L15_2[2] = L17_2
          L15_2[3] = L18_2
          L15_2[4] = L19_2
          L14_2.over = L15_2
          L13_2.rowColor = L14_2
          L11_2(L12_2, L13_2)
        end
        L10_2 = ipairs
        L11_2 = ""
        L12_2 = A0_2.weekNumber
        L11_2 = L11_2 .. L12_2
        L11_2 = A1_2[L11_2]
        L11_2 = L11_2[L8_2]
        L10_2, L11_2, L12_2 = L10_2(L11_2)
        for L13_2, L14_2 in L10_2, L11_2, L12_2 do
          L15_2 = A0_2.results
          L16_2 = L14_2.id
          L15_2[L16_2] = L14_2
          L15_2 = A0_2.list
          L16_2 = L15_2
          L15_2 = L15_2.insertRow
          L17_2 = {}
          L17_2.rowHeight = 23
          L18_2 = "3"
          L19_2 = L14_2.id
          L18_2 = L18_2 .. L19_2
          L17_2.id = L18_2
          L18_2 = {}
          L19_2 = 0
          L20_2 = 0
          L21_2 = 0
          L22_2 = 0
          L18_2[1] = L19_2
          L18_2[2] = L20_2
          L18_2[3] = L21_2
          L18_2[4] = L22_2
          L17_2.lineColor = L18_2
          L18_2 = {}
          L19_2 = {}
          L20_2 = 0
          L21_2 = 0
          L22_2 = 0
          L23_2 = 0
          L19_2[1] = L20_2
          L19_2[2] = L21_2
          L19_2[3] = L22_2
          L19_2[4] = L23_2
          L18_2.default = L19_2
          L19_2 = {}
          L20_2 = 0
          L21_2 = 0
          L22_2 = 0
          L23_2 = 0
          L19_2[1] = L20_2
          L19_2[2] = L21_2
          L19_2[3] = L22_2
          L19_2[4] = L23_2
          L18_2.over = L19_2
          L17_2.rowColor = L18_2
          L15_2(L16_2, L17_2)
        end
      end
    end
  end
  L4_2 = L7_1
  L4_2 = L4_2.hide
  L4_2()
end

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L7_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = showSimpleDialog
  L3_2 = "Fetch Rankings"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = A0_2.row
  L2_2 = A0_2.row
  L3_2 = L2_2.id
  L4_2 = L3_2
  L3_2 = L3_2.sub
  L5_2 = 1
  L6_2 = 1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2.id
  L5_2 = L4_2
  L4_2 = L4_2.sub
  L6_2 = 2
  L4_2 = L4_2(L5_2, L6_2)
  if L3_2 == "3" then
    L5_2 = A0_2.target
    L5_2 = L5_2.delegate
    L5_2 = L5_2.results
    L6_2 = tonumber
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L5_2 = L5_2[L6_2]
    L6_2 = display
    L6_2 = L6_2.newImageRect
    L7_2 = L1_2
    L8_2 = Constants
    L8_2 = L8_2.Path_Assets
    L9_2 = "cell_background.png"
    L8_2 = L8_2 .. L9_2
    L9_2 = L2_2.contentWidth
    L10_2 = 24
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
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
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2()
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
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
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L11_2()
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
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
      L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2()
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L10_2 = display
      L10_2 = L10_2.contentCenterX
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
    L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2()
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L10_2 = L2_2.contentWidth
    L10_2 = L10_2 - 28
    L11_2 = L9_2.width
    L11_2 = L11_2 / 2
    L10_2 = L10_2 - L11_2
    L10_2 = L10_2 - 10
    L9_2.x = L10_2
    L9_2.y = 12
  elseif L3_2 == "2" then
    L5_2 = nil
    L6_2 = tonumber
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L7_2 = display
    L7_2 = L7_2.newRoundedRect
    L8_2 = L1_2
    L9_2 = 0
    L10_2 = 0
    L11_2 = L2_2.contentWidth
    L12_2 = L2_2.contentHeight
    L13_2 = 5
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L9_2 = L7_2
    L8_2 = L7_2.setFillColor
    L10_2 = Constants
    L10_2 = L10_2.blueColor
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2()
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L8_2 = L7_2.width
    L8_2 = L8_2 / 2
    L7_2.x = L8_2
    L8_2 = L7_2.height
    L8_2 = L8_2 / 2
    L7_2.y = L8_2
    if L6_2 == 1 then
      L5_2 = "I"
    elseif L6_2 == 2 then
      L5_2 = "II"
    elseif L6_2 == 3 then
      L5_2 = "III"
    elseif L6_2 == 4 then
      L5_2 = "IV"
    elseif L6_2 == 5 then
      L5_2 = "V"
    end
    L8_2 = display
    L8_2 = L8_2.newText
    L9_2 = L1_2
    L10_2 = L5_2
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
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L11_2()
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L9_2 = display
    L9_2 = L9_2.contentCenterX
    L8_2.x = L9_2
    L9_2 = L7_2.height
    L9_2 = L9_2 / 2
    L8_2.y = L9_2
  elseif L3_2 == "1" then
    L5_2 = tonumber
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = nil
    if L5_2 == 1 then
      L7_2 = Constants
      L7_2 = L7_2.Path_Assets
      L8_2 = "League/Side Line1.png"
      L6_2 = L7_2 .. L8_2
    elseif L5_2 == 2 then
      L7_2 = Constants
      L7_2 = L7_2.Path_Assets
      L8_2 = "League/Side Line2.png"
      L6_2 = L7_2 .. L8_2
    elseif L5_2 == 7 then
      L7_2 = Constants
      L7_2 = L7_2.Path_Assets
      L8_2 = "League/Side Line3.png"
      L6_2 = L7_2 .. L8_2
    elseif L5_2 == 12 then
      L7_2 = Constants
      L7_2 = L7_2.Path_Assets
      L8_2 = "League/Side Line4.png"
      L6_2 = L7_2 .. L8_2
    elseif L5_2 == 17 then
      L7_2 = Constants
      L7_2 = L7_2.Path_Assets
      L8_2 = "League/Side Line5.png"
      L6_2 = L7_2 .. L8_2
    elseif L5_2 == 22 then
      L7_2 = Constants
      L7_2 = L7_2.Path_Assets
      L8_2 = "League/Side Line6.png"
      L6_2 = L7_2 .. L8_2
    end
    L7_2 = Constants
    L7_2 = L7_2.leagueInfoWithId
    L8_2 = tonumber
    L9_2 = L4_2
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L8_2(L9_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L8_2 = display
    L8_2 = L8_2.newImageRect
    L9_2 = L1_2
    L10_2 = Constants
    L10_2 = L10_2.Path_Assets
    L11_2 = "League/"
    L12_2 = L7_2.League_Image
    L10_2 = L10_2 .. L11_2 .. L12_2
    L11_2 = L7_2.League_logoWidth
    L11_2 = L11_2 * 2
    L11_2 = L11_2 / 3
    L12_2 = L7_2.League_logoHeight
    L12_2 = L12_2 * 2
    L12_2 = L12_2 / 3
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L9_2 = display
    L9_2 = L9_2.contentCenterX
    L8_2.x = L9_2
    L9_2 = L2_2.contentHeight
    L9_2 = L9_2 * 0.35
    L8_2.y = L9_2
    L9_2 = 4.365079365079365
    L10_2 = display
    L10_2 = L10_2.newImageRect
    L11_2 = L1_2
    L12_2 = L6_2
    L13_2 = L2_2.contentWidth
    L13_2 = L13_2 / 3
    L14_2 = L2_2.contentWidth
    L14_2 = L14_2 / 3
    L14_2 = L14_2 / L9_2
    L15_2 = 5
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    L11_2 = L10_2.width
    L11_2 = L11_2 / 2
    L12_2 = display
    L12_2 = L12_2.contentCenterX
    L11_2 = L11_2 + L12_2
    L11_2 = L11_2 + 50
    L10_2.x = L11_2
    L11_2 = L10_2.height
    L11_2 = L11_2 / 2
    L11_2 = L11_2 + 10
    L10_2.y = L11_2
    L11_2 = display
    L11_2 = L11_2.newImageRect
    L12_2 = L1_2
    L13_2 = L6_2
    L14_2 = L2_2.contentWidth
    L14_2 = L14_2 / 3
    L15_2 = L2_2.contentWidth
    L15_2 = L15_2 / 3
    L15_2 = L15_2 / L9_2
    L16_2 = 5
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    L11_2.xScale = -1
    L12_2 = L10_2.width
    L12_2 = -L12_2
    L12_2 = L12_2 / 2
    L13_2 = display
    L13_2 = L13_2.contentCenterX
    L12_2 = L12_2 + L13_2
    L12_2 = L12_2 - 50
    L11_2.x = L12_2
    L12_2 = L11_2.height
    L12_2 = L12_2 / 2
    L12_2 = L12_2 + 10
    L11_2.y = L12_2
  end
end

onRowRender = L19_1

function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2.target
  L3_2 = A0_2.target
  L3_2 = L3_2.id
  L4_2 = tonumber
  L6_2 = L3_2
  L5_2 = L3_2.sub
  L7_2 = 1
  L8_2 = 1
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = tonumber
  L7_2 = L3_2
  L6_2 = L3_2.sub
  L8_2 = 2
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L6_2(L7_2, L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = A1_2.results
  L6_2 = L6_2[L5_2]
  L7_2 = A0_2.phase
  if L7_2 == "release" then
  elseif L4_2 == 3 then
    L7_2 = moreView
    L7_2 = L7_2.view
    L7_2 = L7_2.isVisible
    if not L7_2 then
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
      L12_2 = L12_2 - 35
      L11_2 = L11_2 - L12_2
      L7_2(L8_2, L9_2, L10_2, L11_2)
    else
      L7_2 = moreView
      L8_2 = L7_2
      L7_2 = L7_2.hide
      L9_2 = false
      L7_2(L8_2, L9_2)
    end
  else
    L7_2 = moreView
    L8_2 = L7_2
    L7_2 = L7_2.hide
    L9_2 = false
    L7_2(L8_2, L9_2)
  end
end

onRowTouch = L19_1

function L19_1(A0_2)
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

tableListener = L19_1

function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.weekNumber
  if 1 < L1_2 then
    L1_2 = A0_2.weekNumber
    L1_2 = L1_2 - 1
    A0_2.weekNumber = L1_2
    L1_2 = reloadData
    L2_2 = A0_2
    L1_2(L2_2)
  end
  L1_2 = A0_2.weekNumber
  if L1_2 == 1 then
    L1_2 = A0_2.backButton
    L2_2 = L1_2
    L1_2 = L1_2.setEnabled
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2.backButton
    L1_2.alpha = 0.5
  end
  L1_2 = A0_2.weekNumber
  if 1 < L1_2 then
    L1_2 = A0_2.backButton
    L2_2 = L1_2
    L1_2 = L1_2.setEnabled
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2.backButton
    L1_2.alpha = 1
  end
  L1_2 = A0_2.weekNumber
  L2_2 = A0_2.maxRound
  if L1_2 < L2_2 then
    L1_2 = A0_2.forwardButton
    L2_2 = L1_2
    L1_2 = L1_2.setEnabled
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2.forwardButton
    L1_2.alpha = 1
  end
  L1_2 = nil
  L2_2 = A0_2.weekNumber
  if 1 < L2_2 then
    L2_2 = L1_1
    L2_2 = L2_2.localizedString
    L3_2 = "weeks ago"
    L4_2 = {}
    L5_2 = L1_1
    L5_2 = L5_2.adjustNumber
    L6_2 = A0_2.weekNumber
    L5_2 = L5_2(L6_2)
    L4_2.num = L5_2
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  else
    L2_2 = L1_1
    L2_2 = L2_2.localizedString
    L3_2 = "week ago"
    L4_2 = {}
    L5_2 = L1_1
    L5_2 = L5_2.adjustNumber
    L6_2 = A0_2.weekNumber
    L5_2 = L5_2(L6_2)
    L4_2.num = L5_2
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  L2_2 = A0_2.weekLable
  L2_2.text = L1_2
end

function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.weekNumber
  L2_2 = A0_2.maxRound
  if L1_2 < L2_2 then
    L1_2 = A0_2.weekNumber
    L1_2 = L1_2 + 1
    A0_2.weekNumber = L1_2
    L1_2 = reloadData
    L2_2 = A0_2
    L1_2(L2_2)
  end
  L1_2 = A0_2.weekNumber
  L2_2 = A0_2.maxRound
  if L1_2 == L2_2 then
    L1_2 = A0_2.forwardButton
    L2_2 = L1_2
    L1_2 = L1_2.setEnabled
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2.forwardButton
    L1_2.alpha = 0.5
  end
  L1_2 = A0_2.weekNumber
  if 1 < L1_2 then
    L1_2 = A0_2.backButton
    L2_2 = L1_2
    L1_2 = L1_2.setEnabled
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2.backButton
    L1_2.alpha = 1
  end
  L1_2 = A0_2.weekNumber
  L2_2 = A0_2.maxRound
  if L1_2 < L2_2 then
    L1_2 = A0_2.forwardButton
    L2_2 = L1_2
    L1_2 = L1_2.setEnabled
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2.forwardButton
    L1_2.alpha = 1
  end
  L1_2 = nil
  L2_2 = A0_2.weekNumber
  if 1 < L2_2 then
    L2_2 = L1_1
    L2_2 = L2_2.localizedString
    L3_2 = "weeks ago"
    L4_2 = {}
    L5_2 = L1_1
    L5_2 = L5_2.adjustNumber
    L6_2 = A0_2.weekNumber
    L5_2 = L5_2(L6_2)
    L4_2.num = L5_2
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  else
    L2_2 = L1_1
    L2_2 = L2_2.localizedString
    L3_2 = "week ago"
    L4_2 = {}
    L5_2 = L1_1
    L5_2 = L5_2.adjustNumber
    L6_2 = A0_2.weekNumber
    L5_2 = L5_2(L6_2)
    L4_2.num = L5_2
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  L2_2 = A0_2.weekLable
  L2_2.text = L1_2
end

function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = setmetatable
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  L2_2 = display
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  A1_2.view = L2_2
  L2_2 = display
  L2_2 = L2_2.newRect
  L3_2 = A1_2.view
  L4_2 = 0
  L5_2 = 0
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L7_2 = 34
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  A1_2.weekBG = L2_2
  L2_2 = A1_2.weekBG
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = Constants
  L4_2 = L4_2.blueColor
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = A1_2.weekBG
  L3_2 = display
  L3_2 = L3_2.contentWidth
  L3_2 = L3_2 / 2
  L2_2.x = L3_2
  L2_2 = A1_2.weekBG
  L2_2.y = 10
  L2_2 = A1_2.weekBG
  L2_2.isVisible = false
  A1_2.weekNumber = 1
  L2_2 = L6_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L2_2 = L2_2(L3_2)
  moreView = L2_2
  L2_2 = L8_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.width = 25
  L4_2.height = 25
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "League/Week-backbutton.png"
  L5_2 = L5_2 .. L6_2
  L4_2.defaultFile = L5_2
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = L19_1
    L1_3 = A1_2
    L0_3(L1_3)
  end
  
  L4_2.onRelease = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A1_2.backButton = L2_2
  L2_2 = A1_2.backButton
  L2_2.isVisible = false
  L2_2 = A1_2.backButton
  L3_2 = display
  L3_2 = L3_2.contentWidth
  L3_2 = L3_2 / 2
  L3_2 = L3_2 - 70
  L2_2.x = L3_2
  L2_2 = A1_2.backButton
  L2_2.y = 12
  L2_2 = A1_2.view
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = A1_2.backButton
  L4_2 = L4_2.view
  L2_2(L3_2, L4_2)
  L2_2 = L8_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = {}
  L4_2.width = 25
  L4_2.height = 25
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "League/Week-forwardbutton.png"
  L5_2 = L5_2 .. L6_2
  L4_2.defaultFile = L5_2
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = L20_1
    L1_3 = A1_2
    L0_3(L1_3)
  end
  
  L4_2.onRelease = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  A1_2.forwardButton = L2_2
  L2_2 = A1_2.forwardButton
  L2_2.isVisible = false
  L2_2 = A1_2.forwardButton
  L3_2 = display
  L3_2 = L3_2.contentWidth
  L3_2 = L3_2 / 2
  L3_2 = L3_2 + 70
  L2_2.x = L3_2
  L2_2 = A1_2.forwardButton
  L2_2.y = 12
  L2_2 = A1_2.view
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = A1_2.forwardButton
  L4_2 = L4_2.view
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.backButton
  L3_2 = L2_2
  L2_2 = L2_2.setEnabled
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.backButton
  L2_2.alpha = 0.5
  L2_2 = nil
  L3_2 = A1_2.weekNumber
  if 1 < L3_2 then
    L3_2 = L1_1
    L3_2 = L3_2.localizedString
    L4_2 = "weeks ago"
    L5_2 = {}
    L6_2 = L1_1
    L6_2 = L6_2.adjustNumber
    L7_2 = A1_2.weekNumber
    L6_2 = L6_2(L7_2)
    L5_2.num = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  else
    L3_2 = L1_1
    L3_2 = L3_2.localizedString
    L4_2 = "week ago"
    L5_2 = {}
    L6_2 = L1_1
    L6_2 = L6_2.adjustNumber
    L7_2 = A1_2.weekNumber
    L6_2 = L6_2(L7_2)
    L5_2.num = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A1_2.view
  L5_2 = L2_2
  L6_2 = 0
  L7_2 = 0
  L8_2 = Constants
  L8_2 = L8_2.fontForTitle
  L8_2 = L8_2()
  L9_2 = 18
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A1_2.weekLable = L3_2
  L3_2 = A1_2.weekLable
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.darkBlueColor
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = A1_2.weekLable
  L4_2 = display
  L4_2 = L4_2.contentWidth
  L4_2 = L4_2 / 2
  L3_2.x = L4_2
  L3_2 = A1_2.weekLable
  L3_2.y = 10
  L3_2 = A1_2.weekLable
  L3_2.isVisible = false
  L3_2 = L0_1
  L3_2 = L3_2.newTableView
  L4_2 = {}
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 - 12
  L6_2 = L16_1
  L6_2 = 2 * L6_2
  L5_2 = L5_2 - L6_2
  L4_2.width = L5_2
  L5_2 = display
  L5_2 = L5_2.contentHeight
  L5_2 = L5_2 - 86
  L6_2 = L16_1
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
    L3_3 = A1_2
    L1_3(L2_3, L3_3)
  end
  
  L4_2.onRowTouch = L5_2
  L5_2 = tableListener
  L4_2.listener = L5_2
  L4_2.hideScrollBar = true
  L4_2.bottomPadding = 15
  L3_2 = L3_2(L4_2)
  A1_2.list = L3_2
  L3_2 = A1_2.list
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 - 70
  L4_2 = L4_2 / 2
  L4_2 = L4_2 + 20
  L3_2.y = L4_2
  L3_2 = A1_2.list
  L4_2 = display
  L4_2 = L4_2.contentWidth
  L4_2 = L4_2 - 12
  L4_2 = L4_2 / 2
  L3_2.x = L4_2
  L3_2 = A1_2.list
  L3_2.delegate = A1_2
  L3_2 = A1_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A1_2.list
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.weekLable
  L4_2 = L3_2
  L3_2 = L3_2.toFront
  L3_2(L4_2)
  L3_2 = L5_1
  L3_2 = L3_2.getScene
  L4_2 = "Scenes.LeagueScene"
  L3_2 = L3_2(L4_2)
  L4_2 = moreView
  L3_2.moreView = L4_2
  return A1_2
end

new = L21_1

function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.list
  L2_2 = L1_2
  L1_2 = L1_2.deleteAllRows
  L1_2(L2_2)
  L1_2 = L7_1
  L1_2 = L1_2.show
  L2_2 = L1_1
  L2_2 = L2_2["Retrieving Ranks"]
  L1_2(L2_2)
  L1_2 = L15_1
  L2_2 = ""
  L3_2 = A0_2.weekNumber
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L1_2 = L17_1
    L2_2 = A0_2
    L3_2 = L15_1
    L4_2 = A0_2.maxRound
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = L3_1
    L1_2 = L1_2.fetchLeagueHistory
    L2_2 = {}
    L3_2 = A0_2.weekNumber
    L2_2[1] = L3_2
    L3_2 = A0_2
    L4_2 = L17_1
    
    function L5_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = L18_1
      L2_3 = A0_2
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end

reloadData = L21_1

function L21_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L21_1
