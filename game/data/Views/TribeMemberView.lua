local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1
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
L3_1 = "Views.MoreView"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.PokeAndProfileMoreView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "composer"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Utils.Toolbox"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.CachedImageView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Components.TDButtonView"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Constants"
L8_1(L9_1)
L8_1 = require
L9_1 = "Views.ActivityIndicatorView"
L8_1 = L8_1(L9_1)
L9_1 = nil
L10_1 = nil
L11_1 = nil
L12_1 = nil
L13_1 = nil
L14_1 = nil
L15_1 = -1
L16_1 = nil
L17_1 = nil
L18_1 = nil
L19_1 = false
L20_1 = 55
L21_1 = 50

function L22_1()
  local L0_2, L1_2
  L0_2 = hideMoreView
  L0_2()
end

didPressHelpButton = L22_1

function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = log3
  L1_2 = " tribe status is : "
  L2_2 = L17_1
  L2_2 = L2_2.isOn
  L0_2(L1_2, L2_2)
  L0_2 = L8_1
  L0_2 = L0_2.hide
  L0_2()
  L0_2 = nil
  L1_2 = L17_1
  L1_2 = L1_2.isOn
  if L1_2 then
    L1_2 = Constants
    L0_2 = L1_2.Player_Status_Online
  else
    L1_2 = Constants
    L0_2 = L1_2.Player_Status_Invisible
  end
  L1_2 = mainPlayer
  L2_2 = L1_2
  L1_2 = L1_2.setSettingForKey
  L3_2 = "tribeStatus"
  L4_2 = L0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = mainPlayer
  L2_2 = L1_2
  L1_2 = L1_2.saveSettings
  L1_2(L2_2)
  L1_2 = reloadTabelWithNewContent
  L2_2 = L11_1
  L3_2 = L11_1
  L3_2 = L3_2.members
  L1_2(L2_2, L3_2)
end

successToChangeStatus = L22_1

function L22_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L8_1
  L0_2 = L0_2.hide
  L0_2()
  L0_2 = L17_1
  L1_2 = L0_2
  L0_2 = L0_2.setState
  L2_2 = {}
  L3_2 = L17_1
  L3_2 = L3_2.isOn
  L3_2 = not L3_2
  L2_2.isOn = L3_2
  L2_2.isAnimated = false
  L0_2(L1_2, L2_2)
  L0_2 = showSimpleDialog
  L1_2 = "Status"
  L2_2 = "Failed to go incognito, there's probably a problem with your internet connection"
  L0_2(L1_2, L2_2)
end

failedToChangeStatus = L22_1

function L22_1()
  local L0_2, L1_2, L2_2
  L0_2 = L8_1
  L0_2 = L0_2.hide
  L0_2()
  L0_2 = showSimpleDialog
  L1_2 = "Poke"
  L2_2 = "Poke success"
  L0_2(L1_2, L2_2)
end

successToPokeCallBack = L22_1

function L22_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L8_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "Poke"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

failedToPokeCallback = L22_1

function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L8_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "Tribe"
  L3_2 = "Tribe leave success"
  L4_2 = nil
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = L4_1
    L0_3 = L0_3.gotoScene
    L1_3 = "Scenes.Home"
    L0_3(L1_3)
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

didLeaveCallback = L22_1

function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L8_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = showSimpleDialog
  L3_2 = "Leave Tribe"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end

failedToLeaveCallback = L22_1

function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = log3
  L2_2 = "Tribe Member View didGetTribeMemeberCallback"
  L1_2(L2_2)
  L1_2 = L8_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = L11_1
  L1_2.members = A0_2
  L1_2 = L11_1
  L1_2 = L1_2.list
  L2_2 = L1_2
  L1_2 = L1_2.deleteAllRows
  L1_2(L2_2)
  L1_2 = log3
  L2_2 = "Tribe Member View all rows deleted"
  L1_2(L2_2)
  L1_2 = L11_1
  L1_2 = L1_2.list
  L2_2 = L1_2
  L1_2 = L1_2.insertRow
  L3_2 = {}
  L3_2.id = "tribeName"
  L4_2 = L20_1
  L3_2.rowHeight = L4_2
  L4_2 = {}
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  L3_2.lineColor = L4_2
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
  L1_2 = log3
  L2_2 = "Tribe Member View tribe Name has added"
  L1_2(L2_2)
  L1_2 = L11_1
  L2_2 = L1_2
  L1_2 = L1_2.sortMembersWithRank
  L3_2 = L11_1
  L3_2 = L3_2.members
  L1_2(L2_2, L3_2)
  L1_2 = log3
  L2_2 = "Tribe Member View Members sorted"
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = 0
  L15_1 = L2_2
  L2_2 = ipairs
  L3_2 = L11_1
  L3_2 = L3_2.sortedMembersKeys
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L15_1
    L7_2 = L7_2 + 1
    L15_1 = L7_2
    L7_2 = L11_1
    L7_2 = L7_2.list
    L8_2 = L7_2
    L7_2 = L7_2.insertRow
    L9_2 = {}
    L9_2.id = L5_2
    L10_2 = L21_1
    L9_2.rowHeight = L10_2
    L10_2 = {}
    L11_2 = 0
    L12_2 = 0
    L13_2 = 0
    L14_2 = 0
    L10_2[1] = L11_2
    L10_2[2] = L12_2
    L10_2[3] = L13_2
    L10_2[4] = L14_2
    L9_2.lineColor = L10_2
    L10_2 = {}
    L11_2 = {}
    L12_2 = 0
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0
    L11_2[1] = L12_2
    L11_2[2] = L13_2
    L11_2[3] = L14_2
    L11_2[4] = L15_2
    L10_2.default = L11_2
    L11_2 = {}
    L12_2 = 0
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0
    L11_2[1] = L12_2
    L11_2[2] = L13_2
    L11_2[3] = L14_2
    L11_2[4] = L15_2
    L10_2.over = L11_2
    L9_2.rowColor = L10_2
    L7_2(L8_2, L9_2)
    L1_2 = L1_2 + 1
  end
  L2_2 = log3
  L3_2 = "Tribe Member View all the members added"
  L4_2 = L15_1
  L2_2(L3_2, L4_2)
  L2_2 = L16_1
  L3_2 = L1_1
  L3_2 = L3_2.localizedString
  L4_2 = "Members"
  L5_2 = {}
  L6_2 = L1_1
  L6_2 = L6_2.adjustNumber
  L7_2 = L15_1
  L6_2 = L6_2(L7_2)
  L5_2.num = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.text = L3_2
  L2_2 = L16_1
  L3_2 = display
  L3_2 = L3_2.contentWidth
  L3_2 = L3_2 - 15
  L4_2 = L16_1
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L3_2 = L3_2 - L4_2
  L2_2.x = L3_2
  L2_2 = L16_1
  L3_2 = L16_1
  L3_2 = L3_2.height
  L3_2 = L3_2 / 2
  L3_2 = 50 - L3_2
  L3_2 = L3_2 - 3
  L2_2.y = L3_2
  L2_2 = log3
  L3_2 = "Tribe Member View end of didGetTribeMemeberCallback"
  L2_2(L3_2)
end

didGetTribeMemberCallback = L22_1

function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = log3
  L3_2 = "Tribe Member View failedToGetTribeMemeberCallback"
  L2_2(L3_2)
  L2_2 = L8_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = showSimpleDialog
  L3_2 = "Tribe Members"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = -1
  L15_1 = L2_2
end

failedToGetTribeMembersCallback = L22_1

function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = log3
  L3_2 = "Tribe Member View sorting members by rank"
  L2_2(L3_2)
  L2_2 = {}
  A0_2.sortedMembersKeys = L2_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.sortedMembersKeys
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2.sortedMembersKeys
  
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A1_2
    L2_3 = L2_3[A0_3]
    L3_3 = A1_2
    L3_3 = L3_3[A1_3]
    L4_3 = L2_3.rank
    L5_3 = L3_3.rank
    L4_3 = L4_3 < L5_3
    return L4_3
  end
  
  L2_2(L3_2, L4_2)
  L2_2 = log3
  L3_2 = "Tribe Member View end of sorting members by rank"
  L2_2(L3_2)
end

sortMembersWithRank = L22_1

function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = log3
  L3_2 = "Tribe Member View reloadTableWithNewContent"
  L2_2(L3_2)
  A0_2.selectedNumber = 0
  L2_2 = A0_2.list
  L3_2 = L2_2
  L2_2 = L2_2.deleteAllRows
  L2_2(L3_2)
  L2_2 = A0_2.list
  L3_2 = L2_2
  L2_2 = L2_2.insertRow
  L4_2 = {}
  L4_2.id = "tribeName"
  L5_2 = L20_1
  L4_2.rowHeight = L5_2
  L5_2 = {}
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L4_2.lineColor = L5_2
  L5_2 = {}
  L6_2 = {}
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L5_2.default = L6_2
  L6_2 = {}
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L5_2.over = L6_2
  L4_2.rowColor = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = log3
  L3_2 = "Tribe Member View tribeName inseted to table"
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.sortMembersWithRank
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = 0
  L15_1 = L2_2
  L2_2 = ipairs
  L3_2 = A0_2.sortedMembersKeys
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L15_1
    L7_2 = L7_2 + 1
    L15_1 = L7_2
    L7_2 = A0_2.list
    L8_2 = L7_2
    L7_2 = L7_2.insertRow
    L9_2 = {}
    L9_2.id = L5_2
    L10_2 = L21_1
    L9_2.rowHeight = L10_2
    L10_2 = onRowRender
    L9_2.onRender = L10_2
    L10_2 = onRowTouch
    L9_2.listener = L10_2
    L7_2(L8_2, L9_2)
    L7_2 = log3
    L8_2 = "Tribe Member View a member added and memberCount is : "
    L9_2 = L15_1
    L7_2(L8_2, L9_2)
  end
  L2_2 = L16_1
  L3_2 = L1_1
  L3_2 = L3_2.localizedString
  L4_2 = "Members"
  L5_2 = {}
  L6_2 = L1_1
  L6_2 = L6_2.adjustNumber
  L7_2 = L15_1
  L6_2 = L6_2(L7_2)
  L5_2.num = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.text = L3_2
  L2_2 = L16_1
  L3_2 = display
  L3_2 = L3_2.contentWidth
  L3_2 = L3_2 - 15
  L4_2 = L16_1
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L3_2 = L3_2 - L4_2
  L2_2.x = L3_2
  L2_2 = L16_1
  L3_2 = L16_1
  L3_2 = L3_2.height
  L3_2 = L3_2 / 2
  L3_2 = 50 - L3_2
  L3_2 = L3_2 - 3
  L2_2.y = L3_2
  L2_2 = log3
  L3_2 = "Tribe Member View end of reloadTableWithNewContent"
  L2_2(L3_2)
end

reloadTabelWithNewContent = L22_1

function L22_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = frontMore
  if L0_2 ~= nil then
    L0_2 = frontMore
    L1_2 = true
    L13_1 = L1_2
    L1_2 = transition
    L1_2 = L1_2.to
    L2_2 = L0_2.view
    L3_2 = {}
    L3_2.time = 300
    L3_2.alpha = 0
    
    function L4_2()
      local L0_3, L1_3
      L0_2 = L0_3
      L0_3 = false
      L13_1 = L0_3
    end
    
    L3_2.onComplete = L4_2
    L1_2 = L1_2(L2_2, L3_2)
    L14_1 = L1_2
  end
end

hideMoreView = L22_1

function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = log3
  L2_2 = "changePlayerStatusListener call"
  L1_2(L2_2)
  L1_2 = nil
  L2_2 = L11_1
  L2_2 = L2_2.members
  if L2_2 then
    L2_2 = L11_1
    L2_2 = L2_2.members
    L3_2 = tonumber
    L4_2 = A0_2.player
    L4_2 = L4_2.player_id
    L3_2 = L3_2(L4_2)
    L1_2 = L2_2[L3_2]
    if L1_2 then
      L2_2 = A0_2.player
      L2_2 = L2_2.status
      L1_2.status = L2_2
      L2_2 = L11_1
      L2_2 = L2_2.list
      L3_2 = L2_2
      L2_2 = L2_2.getContentPosition
      L2_2 = L2_2(L3_2)
      L18_1 = L2_2
      L2_2 = L11_1
      L3_2 = L2_2
      L2_2 = L2_2.reloadTabelWithNewContent
      L4_2 = L11_1
      L4_2 = L4_2.members
      L2_2(L3_2, L4_2)
      L2_2 = L18_1
      if L2_2 then
        L2_2 = L11_1
        L2_2 = L2_2.list
        L3_2 = L2_2
        L2_2 = L2_2.scrollToY
        L4_2 = {}
        L5_2 = L18_1
        L4_2.y = L5_2
        L4_2.time = 0
        L2_2(L3_2, L4_2)
      end
    end
  end
end

changePlayerStatusListener = L22_1

function L22_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Runtime
  L1_2 = L0_2
  L0_2 = L0_2.addEventListener
  L2_2 = "changePlayerStatus"
  L3_2 = changePlayerStatusListener
  L0_2(L1_2, L2_2, L3_2)
end

show = L22_1

function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = "changePlayerStatus"
  L4_2 = changePlayerStatusListener
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = frontMore
  if L1_2 ~= nil then
    L1_2 = frontMore
    L1_2 = L1_2.view
    L1_2.alpha = 0
    L1_2 = false
    L13_1 = L1_2
  end
end

hide = L22_1

function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L1_2 = A0_2.row
  L1_2 = L1_2.id
  L2_2 = A0_2.row
  L3_2 = A0_2.row
  L4_2 = L3_2.id
  if L4_2 == "tribeName" then
    L4_2 = display
    L4_2 = L4_2.newImageRect
    L5_2 = Constants
    L5_2 = L5_2.Path_Assets
    L6_2 = "TribeUpgrade/FC-TU-listbg.png"
    L5_2 = L5_2 .. L6_2
    L6_2 = display
    L6_2 = L6_2.contentWidth
    L6_2 = L6_2 - 10
    L7_2 = L3_2.contentHeight
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = L4_2.width
    L5_2 = L5_2 / 2
    L4_2.x = L5_2
    L5_2 = L4_2.height
    L5_2 = L5_2 / 2
    L4_2.y = L5_2
    L6_2 = L2_2
    L5_2 = L2_2.insert
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = display
    L5_2 = L5_2.newText
    L6_2 = L2_2
    L7_2 = "\226\156\165 "
    L8_2 = mainPlayer
    L8_2 = L8_2.tribe
    L8_2 = L8_2.name
    L9_2 = " \226\156\165"
    L7_2 = L7_2 .. L8_2 .. L9_2
    L8_2 = 0
    L9_2 = 0
    L10_2 = Constants
    L10_2 = L10_2.fontForTitle
    L10_2 = L10_2()
    L11_2 = 20
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L7_2 = L5_2
    L6_2 = L5_2.setFillColor
    L8_2 = Constants
    L8_2 = L8_2.darkBlueColor
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L8_2()
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L6_2 = display
    L6_2 = L6_2.contentWidth
    L6_2 = L6_2 - 11
    L6_2 = L6_2 / 2
    L5_2.x = L6_2
    L5_2.y = 25
    L6_2 = " "
    L7_2 = L15_1
    if 0 < L7_2 then
      L7_2 = L1_1
      L7_2 = L7_2.localizedString
      L8_2 = "Members"
      L9_2 = {}
      L10_2 = L1_1
      L10_2 = L10_2.adjustNumber
      L11_2 = L15_1
      L10_2 = L10_2(L11_2)
      L9_2.num = L10_2
      L7_2 = L7_2(L8_2, L9_2)
      L6_2 = L7_2
    end
    L7_2 = display
    L7_2 = L7_2.newText
    L8_2 = L2_2
    L9_2 = L6_2
    L10_2 = 0
    L11_2 = 0
    L12_2 = Constants
    L12_2 = L12_2.fontForSubtitle
    L12_2 = L12_2()
    L13_2 = 10
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L16_1 = L7_2
    L7_2 = L16_1
    L8_2 = L7_2
    L7_2 = L7_2.setFillColor
    L9_2 = Constants
    L9_2 = L9_2.darkBlueColor
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L9_2()
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L7_2 = L16_1
    L8_2 = display
    L8_2 = L8_2.contentWidth
    L8_2 = L8_2 - 15
    L9_2 = L16_1
    L9_2 = L9_2.width
    L9_2 = L9_2 / 2
    L8_2 = L8_2 - L9_2
    L7_2.x = L8_2
    L7_2 = L16_1
    L8_2 = L16_1
    L8_2 = L8_2.height
    L8_2 = L8_2 / 2
    L8_2 = 50 - L8_2
    L8_2 = L8_2 - 3
    L7_2.y = L8_2
    L7_2 = nil
    L8_2 = mainPlayer
    L8_2 = L8_2.settings
    L8_2 = L8_2.tribeStatus
    L9_2 = Constants
    L9_2 = L9_2.Player_Status_Online
    if L8_2 == L9_2 then
      L7_2 = true
    else
      L7_2 = false
    end
    L8_2 = L0_1
    L8_2 = L8_2.newSwitch
    L9_2 = {}
    L9_2.left = 20
    L10_2 = L3_2.height
    L10_2 = L10_2 / 2
    L10_2 = L10_2 - 12
    L9_2.top = L10_2
    L9_2.initialSwitchState = L7_2
    
    function L10_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3
      L1_3 = log3
      L2_3 = "event phase :"
      L3_3 = A0_3.target
      L3_3 = L3_3.phase
      L1_3(L2_3, L3_3)
      L1_3 = L8_1
      L1_3 = L1_3.show
      L2_3 = L1_1
      L2_3 = L2_3["Changing status"]
      L1_3(L2_3)
      L1_3 = nil
      L2_3 = L17_1
      L2_3 = L2_3.isOn
      if L2_3 then
        L2_3 = Constants
        L1_3 = L2_3.Player_Status_Online
      else
        L2_3 = Constants
        L1_3 = L2_3.Player_Status_Invisible
      end
      L2_3 = mainPlayer
      L2_3 = L2_3.tribe
      L2_3 = L2_3.changePlayerStatus
      L3_3 = L1_3
      L4_3 = successToChangeStatus
      L5_3 = failedToChangeStatus
      L2_3(L3_3, L4_3, L5_3)
    end
    
    L9_2.onRelease = L10_2
    L8_2 = L8_2(L9_2)
    L17_1 = L8_2
    L9_2 = L2_2
    L8_2 = L2_2.insert
    L10_2 = L17_1
    L8_2(L9_2, L10_2)
    L8_2 = display
    L8_2 = L8_2.newText
    L9_2 = L2_2
    L10_2 = L1_1
    L10_2 = L10_2["Appear online"]
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
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L11_2()
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L9_2 = L17_1
    L9_2 = L9_2.x
    L8_2.x = L9_2
    L9_2 = string
    L9_2 = L9_2.sub
    L10_2 = system
    L10_2 = L10_2.getInfo
    L11_2 = "model"
    L10_2 = L10_2(L11_2)
    L11_2 = 1
    L12_2 = 4
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    if L9_2 == "iPad" then
      L9_2 = L17_1
      L9_2 = L9_2.y
      L9_2 = L9_2 - 28
      L8_2.y = L9_2
    else
      L9_2 = L17_1
      L9_2 = L9_2.y
      L9_2 = L9_2 - 22
      L8_2.y = L9_2
    end
    L9_2 = mainPlayer
    L9_2 = L9_2.positionInTribe
    if L9_2 == 3 then
      L9_2 = {}
      L9_2.width = 70
      L9_2.height = 25
      L10_2 = L1_1
      L10_2 = L10_2["Tribe Chief Message"]
      L9_2.label = L10_2
      L9_2.fontSize = 10
      L9_2.emboss = false
      L10_2 = Constants
      L10_2 = L10_2.Path_Assets
      L11_2 = "Buttons/FC-Select-Deck6.png"
      L10_2 = L10_2 .. L11_2
      L9_2.defaultFile = L10_2
      
      function L10_2()
        local L0_3, L1_3
        L0_3 = L4_1
        L0_3 = L0_3.showOverlay
        L1_3 = "Scenes.TribeChiefMessageOverlay"
        L0_3(L1_3)
      end
      
      L9_2.onRelease = L10_2
      L10_2 = L7_1
      L11_2 = L10_2
      L10_2 = L10_2.new
      L12_2 = L9_2
      L10_2 = L10_2(L11_2, L12_2)
      L12_2 = L2_2
      L11_2 = L2_2.insert
      L13_2 = L10_2.view
      L11_2(L12_2, L13_2)
      L11_2 = L16_1
      L11_2 = L11_2.y
      L12_2 = L16_1
      L12_2 = L12_2.height
      L12_2 = L12_2 / 2
      L11_2 = L11_2 - L12_2
      L11_2 = L11_2 - 5
      L12_2 = L10_2.height
      L12_2 = L12_2 / 2
      L11_2 = L11_2 - L12_2
      L10_2.y = L11_2
      L11_2 = L16_1
      L11_2 = L11_2.x
      L12_2 = L16_1
      L12_2 = L12_2.width
      L12_2 = L12_2 / 2
      L11_2 = L11_2 + L12_2
      L12_2 = L10_2.width
      L12_2 = L12_2 / 2
      L11_2 = L11_2 - L12_2
      L11_2 = L11_2 - 20
      L10_2.x = L11_2
    end
  else
    L4_2 = L11_1
    L4_2 = L4_2.members
    L5_2 = L11_1
    L5_2 = L5_2.sortedMembersKeys
    L5_2 = L5_2[L1_2]
    L4_2 = L4_2[L5_2]
    L5_2 = display
    L5_2 = L5_2.newImageRect
    L6_2 = Constants
    L6_2 = L6_2.Path_Assets
    L7_2 = "Members/FC-memberlist-bg.png"
    L6_2 = L6_2 .. L7_2
    L7_2 = L3_2.contentWidth
    L8_2 = L3_2.contentHeight
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = L3_2.width
    L6_2 = L6_2 / 2
    L5_2.x = L6_2
    L6_2 = L3_2.height
    L6_2 = L6_2 / 2
    L5_2.y = L6_2
    L7_2 = L2_2
    L6_2 = L2_2.insert
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = display
    L6_2 = L6_2.newImageRect
    L7_2 = Constants
    L7_2 = L7_2.Path_Assets
    L8_2 = "Profile/white circle.png"
    L7_2 = L7_2 .. L8_2
    L8_2 = L3_2.contentHeight
    L8_2 = L8_2 - 10
    L9_2 = L3_2.contentHeight
    L9_2 = L9_2 - 10
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = L6_2.width
    L7_2 = L7_2 / 2
    L7_2 = 5 + L7_2
    L6_2.x = L7_2
    L7_2 = L3_2.contentHeight
    L7_2 = L7_2 * 0.5
    L6_2.y = L7_2
    L8_2 = L2_2
    L7_2 = L2_2.insert
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = nil
    L8_2 = L6_1
    L9_2 = L8_2
    L8_2 = L8_2.new
    L10_2 = L2_2
    L11_2 = L4_2.avatar
    L11_2 = L11_2.image
    L12_2 = L6_2.width
    L12_2 = L12_2 - 10
    L13_2 = L6_2.height
    L13_2 = L13_2 - 10
    
    function L14_2()
      local L0_3, L1_3
      L0_3 = L7_2
      L0_3 = L0_3._view
      L1_3 = L6_2
      L1_3 = L1_3.x
      L0_3.x = L1_3
      L0_3 = L7_2
      L0_3 = L0_3._view
      L1_3 = L6_2
      L1_3 = L1_3.y
      L0_3.y = L1_3
    end
    
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L7_2 = L8_2
    L8_2 = L7_2._view
    L9_2 = L6_2.x
    L8_2.x = L9_2
    L8_2 = L7_2._view
    L9_2 = L6_2.y
    L8_2.y = L9_2
    L8_2 = display
    L8_2 = L8_2.newText
    L9_2 = L2_2
    L10_2 = L1_1
    L10_2 = L10_2.adjustNumber
    L11_2 = L4_2.rank
    L12_2 = "."
    L11_2 = L11_2 .. L12_2
    L10_2 = L10_2(L11_2)
    L11_2 = 0
    L12_2 = 0
    L13_2 = Constants
    L13_2 = L13_2.fontForSubtitle
    L13_2 = L13_2()
    L14_2 = 12
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L10_2 = L8_2
    L9_2 = L8_2.setFillColor
    L11_2 = Constants
    L11_2 = L11_2.darkBlueColor
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L11_2()
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L9_2 = L6_2.x
    L10_2 = L6_2.width
    L10_2 = L10_2 / 2
    L9_2 = L9_2 + L10_2
    L10_2 = L8_2.width
    L10_2 = L10_2 / 2
    L9_2 = L9_2 + L10_2
    L9_2 = L9_2 + 5
    L8_2.x = L9_2
    L9_2 = L3_2.height
    L9_2 = L9_2 * 0.46
    L8_2.y = L9_2
    L9_2 = nil
    L10_2 = L4_2.name
    L11_2 = L5_1
    L11_2 = L11_2.utf8sub
    L12_2 = L4_2.name
    L13_2 = 1
    L14_2 = math
    L14_2 = L14_2.floor
    L15_2 = L5_2.width
    L15_2 = L15_2 * 0.32
    L15_2 = L15_2 * 0.1
    L14_2 = L14_2(L15_2)
    L15_2 = tonumber
    L16_2 = L5_1
    L16_2 = L16_2.stringUTFLength
    L17_2 = L4_2.rank
    L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L16_2(L17_2)
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L14_2 = L14_2 - L15_2
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L10_2 = L11_2
    L11_2 = system
    L11_2 = L11_2.getInfo
    L12_2 = "platformName"
    L11_2 = L11_2(L12_2)
    if L11_2 == "Android" then
      L11_2 = L5_1
      L11_2 = L11_2.isStringPersianInAndroid
      L12_2 = L4_2.name
      L11_2 = L11_2(L12_2)
      if L11_2 == true then
        L11_2 = {}
        L11_2.parent = L2_2
        L11_2.text = L10_2
        L11_2.x = 0
        L11_2.y = 0
        L11_2.width = 0
        L11_2.height = 0
        L12_2 = Constants
        L12_2 = L12_2.fontForSubtitle
        L12_2 = L12_2()
        L11_2.font = L12_2
        L11_2.fontSize = 12
        L11_2.align = "right"
        L12_2 = display
        L12_2 = L12_2.newText
        L13_2 = L11_2
        L12_2 = L12_2(L13_2)
        L9_2 = L12_2
    end
    else
      L11_2 = display
      L11_2 = L11_2.newText
      L12_2 = L2_2
      L13_2 = L10_2
      L14_2 = 0
      L15_2 = 0
      L16_2 = 0
      L17_2 = 0
      L18_2 = Constants
      L18_2 = L18_2.fontForSubtitle
      L18_2 = L18_2()
      L19_2 = 12
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      L9_2 = L11_2
    end
    L11_2 = L5_1
    L11_2 = L11_2.fixedTextSize
    L12_2 = L9_2
    L13_2 = 12
    L14_2 = {}
    L15_2 = 0
    L16_2 = 0
    L17_2 = 0
    L14_2[1] = L15_2
    L14_2[2] = L16_2
    L14_2[3] = L17_2
    L15_2 = L2_2
    L16_2 = 105
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    L9_2 = L11_2
    L12_2 = L9_2
    L11_2 = L9_2.setFillColor
    L13_2 = Constants
    L13_2 = L13_2.darkBlueColor
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L13_2()
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L11_2 = L8_2.x
    L12_2 = L8_2.width
    L12_2 = L12_2 / 2
    L11_2 = L11_2 + L12_2
    L11_2 = L11_2 + 2
    L12_2 = L9_2.width
    L12_2 = L12_2 / 2
    L11_2 = L11_2 + L12_2
    L9_2.x = L11_2
    L11_2 = L3_2.height
    L11_2 = L11_2 * 0.46
    L9_2.y = L11_2
    L11_2 = nil
    L12_2 = L4_2.status
    L13_2 = Constants
    L13_2 = L13_2.Player_Status_Online
    if L12_2 == L13_2 then
      L11_2 = "green"
    else
      L11_2 = "grey"
    end
    L12_2 = L4_2.id
    L13_2 = mainPlayer
    L13_2 = L13_2.id
    if L12_2 == L13_2 then
      L12_2 = mainPlayer
      L12_2 = L12_2.settings
      L12_2 = L12_2.tribeStatus
      L13_2 = Constants
      L13_2 = L13_2.Player_Status_Online
      if L12_2 ~= L13_2 then
        L11_2 = "grey"
      end
    end
    L12_2 = L4_2.id
    L13_2 = mainPlayer
    L13_2 = L13_2.id
    if L12_2 == L13_2 then
      L12_2 = mainPlayer
      L12_2 = L12_2.settings
      L12_2 = L12_2.tribeStatus
      L13_2 = Constants
      L13_2 = L13_2.Player_Status_Online
      if L12_2 == L13_2 then
        L11_2 = "green"
      end
    end
    L12_2 = nil
    if L11_2 == "green" then
      L13_2 = Constants
      L13_2 = L13_2.Path_Assets
      L14_2 = "Members/light-green.png"
      L12_2 = L13_2 .. L14_2
    else
      L13_2 = Constants
      L13_2 = L13_2.Path_Assets
      L14_2 = "Members/light.png"
      L12_2 = L13_2 .. L14_2
    end
    L13_2 = display
    L13_2 = L13_2.newImageRect
    L14_2 = L2_2
    L15_2 = L12_2
    L16_2 = 10
    L17_2 = 10
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
    L14_2 = L3_2.width
    L14_2 = L14_2 * 0.385
    L13_2.x = L14_2
    L14_2 = L3_2.height
    L14_2 = L14_2 / 2
    L15_2 = 5
    L13_2.y = L14_2
    L14_2 = L4_2.positionInTribe
    if L14_2 ~= 1 then
      L14_2 = display
      L14_2 = L14_2.newText
      L15_2 = L2_2
      L17_2 = L4_2
      L16_2 = L4_2.getPositionInTribe
      L16_2 = L16_2(L17_2)
      L17_2 = 0
      L18_2 = 0
      L19_2 = Constants
      L19_2 = L19_2.fontForTitle
      L19_2 = L19_2()
      L20_2 = 10
      L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L16_2 = L14_2
      L15_2 = L14_2.setFillColor
      L17_2 = Constants
      L17_2 = L17_2.darkBlueColor
      L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L17_2()
      L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
      L15_2 = L1_1
      L15_2 = L15_2.lang
      if L15_2 ~= "fa" then
        L15_2 = L1_1
        L15_2 = L15_2.lang
        if L15_2 ~= "ar" then
          goto lbl_512
        end
      end
      L15_2 = L3_2.width
      L15_2 = L15_2 * 0.47
      L14_2.x = L15_2
      goto lbl_515
      ::lbl_512::
      L15_2 = L3_2.width
      L15_2 = L15_2 * 0.465
      L14_2.x = L15_2
      ::lbl_515::
      L15_2 = L3_2.height
      L15_2 = L15_2 * 0.46
      L14_2.y = L15_2
    end
    L14_2 = display
    L14_2 = L14_2.newText
    L15_2 = L2_2
    L16_2 = L1_1
    L16_2 = L16_2.adjustNumber
    L17_2 = L5_1
    L17_2 = L17_2.stringThousandCommaSeperated
    L18_2 = L4_2.xp
    L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L17_2(L18_2)
    L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L17_2 = 0
    L18_2 = 0
    L19_2 = Constants
    L19_2 = L19_2.fontForSubtitle
    L19_2 = L19_2()
    L20_2 = 12
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L16_2 = L14_2
    L15_2 = L14_2.setFillColor
    L17_2 = Constants
    L17_2 = L17_2.darkBlueColor
    L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L17_2()
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L15_2 = L3_2.width
    L15_2 = L15_2 * 0.715
    L16_2 = L14_2.width
    L16_2 = L16_2 / 2
    L15_2 = L15_2 - L16_2
    L14_2.x = L15_2
    L15_2 = L3_2.height
    L15_2 = L15_2 * 0.46
    L14_2.y = L15_2
    L15_2 = nil
    L16_2 = nil
    L17_2 = nil
    L18_2 = nil
    L19_2 = L4_2.id
    L20_2 = mainPlayer
    L20_2 = L20_2.id
    if L19_2 == L20_2 then
      L19_2 = mainPlayer
      L20_2 = L4_2.positionInTribe
      L19_2.positionInTribe = L20_2
      L19_2 = L1_1
      L15_2 = L19_2["leave button"]
      
      function L16_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3
        L0_3 = L4_1
        L0_3 = L0_3.showOverlay
        L1_3 = "Scenes.AlertOverlay"
        L2_3 = {}
        L3_3 = {}
        L4_3 = L1_1
        L4_3 = L4_3.Tribe
        L3_3.title = L4_3
        L4_3 = L1_1
        L4_3 = L4_3["tribe leave message"]
        L3_3.text = L4_3
        
        function L4_3()
          local L0_4, L1_4, L2_4, L3_4
          L0_4 = L8_1
          L0_4 = L0_4.show
          L1_4 = L1_1
          L1_4 = L1_4["Leaving Tribe"]
          L0_4(L1_4)
          L0_4 = mainPlayer
          L0_4 = L0_4.tribe
          L1_4 = L0_4
          L0_4 = L0_4.leaveTribe
          L2_4 = didLeaveCallback
          L3_4 = failedToLeaveCallback
          L0_4(L1_4, L2_4, L3_4)
        end
        
        L3_3.action = L4_3
        L4_3 = L1_1
        L4_3 = L4_3.Continue
        L3_3.buttonText = L4_3
        L4_3 = L1_1
        L4_3 = L4_3.Cancel
        L3_3.buttonText2 = L4_3
        L2_3.params = L3_3
        L0_3(L1_3, L2_3)
      end
      
      L19_2 = Constants
      L19_2 = L19_2.Path_Assets
      L20_2 = "Members/FC-memberlist-leave"
      L17_2 = L19_2 .. L20_2
      L19_2 = Constants
      L18_2 = L19_2.whiteColor
    else
      L19_2 = mainPlayer
      L19_2 = L19_2.positionInTribe
      if L19_2 ~= 1 then
        L19_2 = mainPlayer
        L19_2 = L19_2.positionInTribe
        if L19_2 ~= 2 then
          goto lbl_613
        end
        L19_2 = L11_1
        L19_2 = L19_2.members
        L20_2 = L11_1
        L20_2 = L20_2.sortedMembersKeys
        L20_2 = L20_2[L1_2]
        L19_2 = L19_2[L20_2]
        L19_2 = L19_2.positionInTribe
        if L19_2 ~= 3 then
          L19_2 = L11_1
          L19_2 = L19_2.members
          L20_2 = L11_1
          L20_2 = L20_2.sortedMembersKeys
          L20_2 = L20_2[L1_2]
          L19_2 = L19_2[L20_2]
          L19_2 = L19_2.positionInTribe
          if L19_2 ~= 2 then
            goto lbl_613
          end
        end
      end
      L19_2 = L1_1
      L15_2 = L19_2.More
      
      function L16_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
        L0_3 = frontMore
        L1_3 = L11_1
        L1_3 = L1_3.moreButtons
        L2_3 = L11_1
        L2_3 = L2_3.sortedMembersKeys
        L3_3 = L1_2
        L2_3 = L2_3[L3_3]
        L1_3 = L1_3[L2_3]
        if L0_3 ~= L1_3 then
          L0_3 = hideMoreView
          L0_3()
        end
        L0_3 = L11_1
        L0_3 = L0_3.moreButtons
        L1_3 = L11_1
        L1_3 = L1_3.sortedMembersKeys
        L2_3 = L1_2
        L1_3 = L1_3[L2_3]
        L0_3 = L0_3[L1_3]
        if L0_3 == nil then
          L0_3 = L11_1
          L0_3 = L0_3.moreButtons
          L1_3 = L11_1
          L1_3 = L1_3.sortedMembersKeys
          L2_3 = L1_2
          L1_3 = L1_3[L2_3]
          L2_3 = L3_1
          L3_3 = L2_3
          L2_3 = L2_3.new
          L4_3 = L11_1
          L4_3 = L4_3.sortedMembersKeys
          L5_3 = L1_2
          L4_3 = L4_3[L5_3]
          L5_3 = L11_1
          L2_3 = L2_3(L3_3, L4_3, L5_3)
          L0_3[L1_3] = L2_3
        else
          L0_3 = L11_1
          L0_3 = L0_3.moreButtons
          L1_3 = L11_1
          L1_3 = L1_3.sortedMembersKeys
          L2_3 = L1_2
          L1_3 = L1_3[L2_3]
          L0_3 = L0_3[L1_3]
          L1_3 = L4_2
          L0_3.selectedUser = L1_3
        end
        L0_3 = L11_1
        L0_3 = L0_3.moreButtons
        L1_3 = L11_1
        L1_3 = L1_3.sortedMembersKeys
        L2_3 = L1_2
        L1_3 = L1_3[L2_3]
        L0_3 = L0_3[L1_3]
        frontMore = L0_3
        L0_3 = L11_1
        L0_3 = L0_3.moreButtons
        L1_3 = L11_1
        L1_3 = L1_3.sortedMembersKeys
        L2_3 = L1_2
        L1_3 = L1_3[L2_3]
        L0_3 = L0_3[L1_3]
        L1_3 = L0_3
        L0_3 = L0_3.setPosition
        L2_3 = L3_2
        L2_3 = L2_3.contentWidth
        L2_3 = L2_3 * 0.78
        L3_3 = A0_2
        L3_3 = L3_3.target
        L4_3 = L3_3
        L3_3 = L3_3.getContentPosition
        L3_3 = L3_3(L4_3)
        L4_3 = L3_2
        L4_3 = L4_3.y
        L3_3 = L3_3 + L4_3
        L4_3 = display
        L4_3 = L4_3.contentHeight
        L4_3 = L4_3 * 0.56
        L3_3 = L3_3 + L4_3
        L4_3 = L11_1
        L4_3 = L4_3.moreButtons
        L5_3 = L11_1
        L5_3 = L5_3.sortedMembersKeys
        L6_3 = L1_2
        L5_3 = L5_3[L6_3]
        L4_3 = L4_3[L5_3]
        L4_3 = L4_3.BG
        L4_3 = L4_3.height
        L4_3 = L4_3 * 0.5
        L4_3 = L4_3 - 29
        L3_3 = L3_3 - L4_3
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = L11_1
        L0_3 = L0_3.moreButtons
        L1_3 = L11_1
        L1_3 = L1_3.sortedMembersKeys
        L2_3 = L1_2
        L1_3 = L1_3[L2_3]
        L0_3 = L0_3[L1_3]
        L0_3 = L0_3.view
        L0_3.alpha = 1
      end
      
      L19_2 = Constants
      L19_2 = L19_2.Path_Assets
      L20_2 = "Members/FC-memberlist-more"
      L17_2 = L19_2 .. L20_2
      L19_2 = Constants
      L18_2 = L19_2.darkGreenColor
      goto lbl_636
      ::lbl_613::
      L19_2 = mainPlayer
      L19_2 = L19_2.positionInTribe
      if L19_2 ~= 3 then
        L19_2 = mainPlayer
        L19_2 = L19_2.positionInTribe
        if L19_2 ~= 2 then
          goto lbl_636
        end
      end
      L19_2 = L1_1
      L15_2 = L19_2.More
      
      function L16_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
        L0_3 = frontMore
        L1_3 = L11_1
        L1_3 = L1_3.moreButtons
        L2_3 = L11_1
        L2_3 = L2_3.sortedMembersKeys
        L3_3 = L1_2
        L2_3 = L2_3[L3_3]
        L1_3 = L1_3[L2_3]
        if L0_3 ~= L1_3 then
          L0_3 = hideMoreView
          L0_3()
        end
        L0_3 = L11_1
        L0_3 = L0_3.moreButtons
        L1_3 = L11_1
        L1_3 = L1_3.sortedMembersKeys
        L2_3 = L1_2
        L1_3 = L1_3[L2_3]
        L0_3 = L0_3[L1_3]
        if L0_3 == nil then
          L0_3 = L11_1
          L0_3 = L0_3.moreButtons
          L1_3 = L11_1
          L1_3 = L1_3.sortedMembersKeys
          L2_3 = L1_2
          L1_3 = L1_3[L2_3]
          L2_3 = L2_1
          L3_3 = L2_3
          L2_3 = L2_3.new
          L4_3 = L11_1
          L4_3 = L4_3.sortedMembersKeys
          L5_3 = L1_2
          L4_3 = L4_3[L5_3]
          L5_3 = L11_1
          L2_3 = L2_3(L3_3, L4_3, L5_3)
          L0_3[L1_3] = L2_3
        else
          L0_3 = L11_1
          L0_3 = L0_3.moreButtons
          L1_3 = L11_1
          L1_3 = L1_3.sortedMembersKeys
          L2_3 = L1_2
          L1_3 = L1_3[L2_3]
          L0_3 = L0_3[L1_3]
          L1_3 = L4_2
          L0_3.selectedUser = L1_3
        end
        L0_3 = L11_1
        L0_3 = L0_3.moreButtons
        L1_3 = L11_1
        L1_3 = L1_3.sortedMembersKeys
        L2_3 = L1_2
        L1_3 = L1_3[L2_3]
        L0_3 = L0_3[L1_3]
        frontMore = L0_3
        L0_3 = L11_1
        L0_3 = L0_3.moreButtons
        L1_3 = L11_1
        L1_3 = L1_3.sortedMembersKeys
        L2_3 = L1_2
        L1_3 = L1_3[L2_3]
        L0_3 = L0_3[L1_3]
        L1_3 = L0_3
        L0_3 = L0_3.setPosition
        L2_3 = L3_2
        L2_3 = L2_3.contentWidth
        L2_3 = L2_3 * 0.78
        L3_3 = A0_2
        L3_3 = L3_3.target
        L4_3 = L3_3
        L3_3 = L3_3.getContentPosition
        L3_3 = L3_3(L4_3)
        L4_3 = L3_2
        L4_3 = L4_3.y
        L3_3 = L3_3 + L4_3
        L4_3 = display
        L4_3 = L4_3.contentHeight
        L4_3 = L4_3 * 0.56
        L3_3 = L3_3 + L4_3
        L4_3 = L11_1
        L4_3 = L4_3.moreButtons
        L5_3 = L11_1
        L5_3 = L5_3.sortedMembersKeys
        L6_3 = L1_2
        L5_3 = L5_3[L6_3]
        L4_3 = L4_3[L5_3]
        L4_3 = L4_3.BG
        L4_3 = L4_3.height
        L4_3 = L4_3 * 0.5
        L4_3 = L4_3 - 30
        L3_3 = L3_3 - L4_3
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = L11_1
        L0_3 = L0_3.moreButtons
        L1_3 = L11_1
        L1_3 = L1_3.sortedMembersKeys
        L2_3 = L1_2
        L1_3 = L1_3[L2_3]
        L0_3 = L0_3[L1_3]
        L0_3 = L0_3.view
        L0_3.alpha = 1
      end
      
      L19_2 = Constants
      L19_2 = L19_2.Path_Assets
      L20_2 = "Members/FC-memberlist-more"
      L17_2 = L19_2 .. L20_2
      L19_2 = Constants
      L18_2 = L19_2.darkGreenColor
    end
    ::lbl_636::
    L19_2 = L7_1
    L20_2 = L19_2
    L19_2 = L19_2.new
    L21_2 = {}
    L21_2.width = 50
    L21_2.height = 22
    L21_2.label = L15_2
    L22_2 = {}
    L23_2 = L18_2
    L23_2 = L23_2()
    L22_2[1] = L23_2
    L21_2.labelColor = L22_2
    L21_2.fontSize = 10
    L21_2.emboss = false
    L22_2 = L17_2
    L23_2 = ".png"
    L22_2 = L22_2 .. L23_2
    L21_2.defaultFile = L22_2
    L22_2 = L17_2
    L23_2 = "pressed.png"
    L22_2 = L22_2 .. L23_2
    L21_2.overFile = L22_2
    L21_2.onRelease = L16_2
    L19_2 = L19_2(L20_2, L21_2)
    L21_2 = L2_2
    L20_2 = L2_2.insert
    L22_2 = L19_2.view
    L20_2(L21_2, L22_2)
    L20_2 = L3_2.contentWidth
    L20_2 = L20_2 * 0.88
    L19_2.x = L20_2
    L20_2 = L3_2.contentHeight
    L20_2 = L20_2 * 0.44
    L19_2.y = L20_2
  end
end

onRowRender = L22_1

function L22_1(A0_2)
  local L1_2, L2_2
  L1_2 = log3
  L2_2 = "Tribe Member View onRowTouch"
  L1_2(L2_2)
  L1_2 = A0_2.phase
  if L1_2 == "press" then
    L1_2 = L13_1
    if L1_2 == false then
      L1_2 = hideMoreView
      L2_2 = A0_2.target
      L2_2 = L2_2.delegate
      L1_2(L2_2)
    end
  end
end

onRowTouch = L22_1

function L22_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L13_1
  if L2_2 == false then
    L2_2 = hideMoreView
    L3_2 = A1_2
    L2_2(L3_2)
  end
end

tableListener = L22_1

function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = setmetatable
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  L2_2 = nil
  L12_1 = L2_2
  L2_2 = false
  L13_1 = L2_2
  L2_2 = log3
  L3_2 = "Tribe Member View CreateView Called"
  L2_2(L3_2)
  L2_2 = {}
  A1_2.moreButtons = L2_2
  L2_2 = display
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  A1_2.view = L2_2
  L2_2 = L0_1
  L2_2 = L2_2.newTableView
  L3_2 = {}
  L4_2 = display
  L4_2 = L4_2.contentWidth
  L4_2 = L4_2 - 11
  L3_2.width = L4_2
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 - 70
  L3_2.height = L4_2
  L3_2.id = "members_tableview"
  L3_2.noLines = true
  L4_2 = onRowRender
  L3_2.onRowRender = L4_2
  L3_2.hideScrollBar = true
  L4_2 = onRowTouch
  L3_2.onRowTouch = L4_2
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = tableListener
    L2_3 = A0_3
    L3_3 = A1_2
    L1_3(L2_3, L3_3)
  end
  
  L3_2.listener = L4_2
  L2_2 = L2_2(L3_2)
  A1_2.list = L2_2
  L2_2 = log3
  L3_2 = "Tribe Member View obj.list created"
  L2_2(L3_2)
  L2_2 = A1_2.list
  L3_2 = display
  L3_2 = L3_2.contentWidth
  L3_2 = L3_2 - 11
  L3_2 = L3_2 / 2
  L2_2.x = L3_2
  L2_2 = A1_2.list
  L3_2 = display
  L3_2 = L3_2.contentHeight
  L3_2 = L3_2 - 70
  L3_2 = L3_2 / 2
  L2_2.y = L3_2
  L2_2 = A1_2.list
  L2_2.delegate = A1_2
  L2_2 = A1_2.view
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = A1_2.list
  L2_2(L3_2, L4_2)
  L2_2 = log3
  L3_2 = "Tribe Member View obj.list inserted to group"
  L2_2(L3_2)
  L2_2 = A1_2.list
  L3_2 = L2_2
  L2_2 = L2_2.insertRow
  L4_2 = {}
  L4_2.id = "tribeName"
  L5_2 = L20_1
  L4_2.rowHeight = L5_2
  L5_2 = {}
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L4_2.lineColor = L5_2
  L5_2 = {}
  L6_2 = {}
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L5_2.default = L6_2
  L6_2 = {}
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L5_2.over = L6_2
  L4_2.rowColor = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = log3
  L3_2 = "Tribe Member View tribeName inserted"
  L2_2(L3_2)
  L11_1 = A1_2
  return A1_2
end

createView = L22_1

function L22_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L22_1
