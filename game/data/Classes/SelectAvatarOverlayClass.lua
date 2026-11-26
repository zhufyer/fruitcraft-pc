local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Models.Card"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "widget"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.ProfileView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "widget"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.AvatarView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Models.ProfileManager"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Data.AvatarSets"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Views.CachedImageView"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Components.TDButtonView"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Utils.Toolbox"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Core.ParentStandardBaseOverlayClass"
L12_1 = L12_1(L13_1)
L13_1 = setmetatable
L14_1 = _M
L15_1 = L12_1
L13_1(L14_1, L15_1)
L13_1 = _M
L14_1 = _M
L13_1.__index = L14_1
L13_1 = _M
L14_1 = L0_1.newScene
L14_1 = L14_1()
L15_1 = {}
L16_1 = {}
L17_1 = nil
L18_1 = nil
L19_1 = true
L20_1 = nil
L21_1 = 300
L22_1 = 270

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = pairs
  L2_2 = L7_1
  L2_2 = L2_2.getAvatarSetsList
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L2_2()
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = false
    L7_2 = 50
    L8_2 = {}
    L9_2 = {}
    L10_2 = 1
    L11_2 = 1
    L12_2 = 1
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L9_2[3] = L12_2
    L8_2.default = L9_2
    L9_2 = {}
    L10_2 = 1
    L11_2 = 0.5
    L12_2 = 0
    L13_2 = 0.2
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L9_2[3] = L12_2
    L9_2[4] = L13_2
    L8_2.over = L9_2
    L9_2 = {}
    L10_2 = 0
    L11_2 = 0
    L12_2 = 0
    L13_2 = 0
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L9_2[3] = L12_2
    L9_2[4] = L13_2
    L11_2 = A0_2
    L10_2 = A0_2.insertRow
    L12_2 = {}
    L12_2.isCategory = L6_2
    L12_2.rowHeight = L7_2
    L12_2.rowColor = L8_2
    L12_2.lineColor = L9_2
    L12_2.avatarSet = L5_2
    L10_2(L11_2, L12_2)
  end
end

function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = display
  L1_2 = L1_2.newGroup
  L1_2 = L1_2()
  L2_2 = 3
  L3_2 = 3
  L4_2 = 50
  L5_2 = 50
  L6_2 = 1
  L7_2 = pairs
  L8_2 = L7_1
  L8_2 = L8_2.getAvatarListByAvatarSet
  L9_2 = A0_2
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L8_2(L9_2)
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = L6_1
    L13_2 = L12_2
    L12_2 = L12_2.new
    L14_2 = L11_2.id
    L15_2 = L4_2
    L16_2 = L5_2
    L17_2 = L14_1
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
    L14_2 = L1_2
    L13_2 = L1_2.insert
    L15_2 = L12_2.view
    L13_2(L14_2, L15_2)
    L13_2 = L12_2.view
    L14_2 = L4_2 / 2
    L15_2 = L4_2 + 10
    L16_2 = L6_2 - 1
    L16_2 = L16_2 % L2_2
    L15_2 = L15_2 * L16_2
    L14_2 = L14_2 + L15_2
    L13_2.x = L14_2
    L13_2 = L12_2.view
    L14_2 = L5_2 / 2
    L15_2 = L5_2 + 10
    L16_2 = math
    L16_2 = L16_2.floor
    L17_2 = L6_2 - 1
    L17_2 = L17_2 / L3_2
    L16_2 = L16_2(L17_2)
    L15_2 = L15_2 * L16_2
    L14_2 = L14_2 + L15_2
    L13_2.y = L14_2
    L6_2 = L6_2 + 1
  end
  return L1_2
end

function L25_1(A0_2)
  local L1_2
  if A0_2 == 1 then
    L1_2 = 5
  elseif A0_2 == 2 then
    L1_2 = 16
  elseif A0_2 == 3 then
    L1_2 = 6
  elseif A0_2 == 4 then
    L1_2 = 25
  elseif A0_2 == 5 then
    L1_2 = 1
  end
  return L1_2
end

function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.row
  L2_2 = L1_2.contentHeight
  L3_2 = L1_2.contentWidth
  L4_2 = L16_1
  L5_2 = A0_2.row
  L5_2 = L5_2.index
  L6_2 = L16_1
  L7_2 = A0_2.row
  L7_2 = L7_2.index
  L6_2 = L6_2[L7_2]
  if not L6_2 then
    L6_2 = {}
  end
  L4_2[L5_2] = L6_2
  L4_2 = L16_1
  L5_2 = A0_2.row
  L5_2 = L5_2.index
  L4_2 = L4_2[L5_2]
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = L1_2
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "TribeUpgrade/FC-TU-listbg.png"
  L7_2 = L7_2 .. L8_2
  L8_2 = L3_2
  L9_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L4_2.view = L5_2
  L4_2 = L16_1
  L5_2 = A0_2.row
  L5_2 = L5_2.index
  L4_2 = L4_2[L5_2]
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = L1_2
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Profile/FC-TU-listbg1.png"
  L7_2 = L7_2 .. L8_2
  L8_2 = L3_2
  L9_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L4_2.selectedView = L5_2
  L4_2 = L16_1
  L5_2 = A0_2.row
  L5_2 = L5_2.index
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.selectedView
  L4_2.isVisible = false
  L4_2 = L16_1
  L5_2 = A0_2.row
  L5_2 = L5_2.index
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.isSelected
  if L4_2 == true then
    L4_2 = L16_1
    L5_2 = A0_2.row
    L5_2 = L5_2.index
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.selectedView
    L4_2.isVisible = true
  end
  L4_2 = L16_1
  L5_2 = A0_2.row
  L5_2 = L5_2.index
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.view
  L5_2 = L3_2 * 0.5
  L4_2.x = L5_2
  L4_2 = L16_1
  L5_2 = A0_2.row
  L5_2 = L5_2.index
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.view
  L5_2 = L2_2 * 0.5
  L4_2.y = L5_2
  L4_2 = L16_1
  L5_2 = A0_2.row
  L5_2 = L5_2.index
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.selectedView
  L5_2 = L3_2 * 0.5
  L4_2.x = L5_2
  L4_2 = L16_1
  L5_2 = A0_2.row
  L5_2 = L5_2.index
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.selectedView
  L5_2 = L2_2 * 0.5
  L4_2.y = L5_2
  L4_2 = nil
  L5_2 = L9_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = L1_2
  L8_2 = L8_1
  L8_2 = L8_2.getAvatarSetByID
  L9_2 = A0_2.row
  L9_2 = L9_2.index
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2.smallImage
  L9_2 = 54
  L10_2 = 40.5
  
  function L11_2()
    local L0_3, L1_3
    L0_3 = L4_2
    L0_3 = L0_3._view
    L1_3 = L3_2
    L1_3 = L1_3 * 0.5
    L0_3.x = L1_3
    L0_3 = L4_2
    L0_3 = L0_3._view
    L1_3 = L2_2
    L1_3 = L1_3 * 0.5
    L0_3.y = L1_3
  end
  
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = L5_2
  L5_2 = L4_2._view
  L5_2.index = 3
  L5_2 = L4_2._view
  L6_2 = L3_2 * 0.5
  L5_2.x = L6_2
  L5_2 = L4_2._view
  L6_2 = L2_2 * 0.5
  L5_2.y = L6_2
end

function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.phase
  if L1_2 ~= "release" then
    L1_2 = L18_1
    L2_2 = L1_2
    L1_2 = L1_2.scrollToPosition
    L3_2 = {}
    L3_2.x = 0
    L3_2.y = 0
    L3_2.time = 0
    L1_2(L2_2, L3_2)
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = L17_1
    L1_2(L2_2)
    L1_2 = L24_1
    L2_2 = A0_2.target
    L2_2 = L2_2.index
    L1_2 = L1_2(L2_2)
    L17_1 = L1_2
    L1_2 = L17_1
    L1_2.x = 12
    L1_2 = L17_1
    L1_2.y = 12
    L1_2 = L18_1
    L2_2 = L1_2
    L1_2 = L1_2.insert
    L3_2 = L17_1
    L1_2(L2_2, L3_2)
    L1_2 = pairs
    L2_2 = L16_1
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = L5_2.selectedView
      L6_2 = L6_2.isVisible
      if L6_2 == true then
        L6_2 = L5_2.selectedView
        L6_2.isVisible = false
        L5_2.isSelected = false
      end
    end
    L1_2 = L16_1
    L2_2 = A0_2.target
    L2_2 = L2_2.index
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.selectedView
    L1_2.isVisible = true
    L1_2 = L16_1
    L2_2 = A0_2.target
    L2_2 = L2_2.index
    L1_2 = L1_2[L2_2]
    L1_2.isSelected = true
  end
end

function L28_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.avatar
  L1_2 = L1_2.isAvailable
  if L1_2 ~= true then
    L2_2 = A0_2
    L1_2 = A0_2.deselected
    L1_2(L2_2)
  else
    L1_2 = L20_1
    if L1_2 ~= nil then
      L1_2 = L20_1
      L2_2 = L1_2
      L1_2 = L1_2.deselected
      L1_2(L2_2)
      L1_2 = nil
      L20_1 = L1_2
      L20_1 = A0_2
      L1_2 = L20_1
      L2_2 = L1_2
      L1_2 = L1_2.didSelect
      L1_2(L2_2)
    end
    L20_1 = A0_2
  end
end

L14_1.avatarSelected = L28_1

function L28_1(A0_2)
  local L1_2
  L20_1 = L1_2
end

L14_1.avatarDeselected = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = L14_1
  L3_2 = L2_2
  L2_2 = L2_2.showBlackOverlay
  L4_2 = A0_2.view
  L2_2(L3_2, L4_2)
  L2_2 = L12_1
  L2_2 = L2_2.create
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = display
  L2_2 = L2_2.newRect
  L3_2 = A0_2.contentGroup
  L4_2 = 0
  L5_2 = 0
  L6_2 = L21_1
  L7_2 = L22_1
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2.x = 0
  L2_2.y = 0
  L4_2 = L2_2
  L3_2 = L2_2.setFillColor
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.isHitTestable = true
  L4_2 = L2_2
  L3_2 = L2_2.addEventListener
  L5_2 = "tap"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = log3
    L1_3 = "hiding overlay"
    L0_3(L1_3)
    L0_3 = L13_1
    L0_3 = L0_3.hideWithAnimation
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.addEventListener
  L5_2 = "touch"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = display
  L3_2 = L3_2.newRoundedRect
  L4_2 = A0_2.contentGroup
  L5_2 = 0
  L6_2 = 0
  L7_2 = L21_1
  L8_2 = L22_1
  L9_2 = 3
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2.strokeWidth = 2
  L5_2 = L3_2
  L4_2 = L3_2.setStrokeColor
  L6_2 = Constants
  L6_2 = L6_2.greenColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = Constants
  L6_2 = L6_2.whiteColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L3_2.x = 0
  L3_2.y = 0
  L5_2 = L3_2
  L4_2 = L3_2.addEventListener
  L6_2 = "touch"
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = L3_2
  L4_2 = L3_2.addEventListener
  L6_2 = "tap"
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = A0_2.contentGroup
  L6_2 = L2_1
  L6_2 = L6_2.Avatar
  L7_2 = 0
  L8_2 = 0
  L9_2 = Constants
  L9_2 = L9_2.fontForTitle
  L9_2 = L9_2()
  L10_2 = 20
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L5_2 = L3_2.x
  L4_2.x = L5_2
  L5_2 = L3_2.height
  L5_2 = -L5_2
  L5_2 = L5_2 / 2
  L5_2 = L5_2 + 10
  L6_2 = L4_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L4_2.y = L5_2
  L5_2 = L10_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = {}
  L7_2.width = 30
  L7_2.height = 30
  L8_2 = Constants
  L8_2 = L8_2.Path_Assets
  L9_2 = "BattleItems/close.png"
  L8_2 = L8_2 .. L9_2
  L7_2.defaultFile = L8_2
  
  function L8_2()
    local L0_3, L1_3
    L0_3 = log3
    L1_3 = "hiding overlay from button"
    L0_3(L1_3)
    L0_3 = L13_1
    L0_3 = L0_3.hideWithAnimation
    L1_3 = A0_2
    L0_3(L1_3)
    L0_3 = A1_2
    L0_3 = L0_3.params
    L0_3 = L0_3.onFailed
    if L0_3 then
      L0_3 = A1_2
      L0_3 = L0_3.params
      L0_3 = L0_3.onFailed
      L0_3()
    end
  end
  
  L7_2.onRelease = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A0_2.contentGroup
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L5_2.view
  L6_2(L7_2, L8_2)
  L5_2.delegate = A0_2
  L6_2 = L3_2.width
  L6_2 = -L6_2
  L6_2 = L6_2 / 2
  L6_2 = L6_2 + 10
  L7_2 = L5_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L5_2.x = L6_2
  L6_2 = L4_2.y
  L5_2.y = L6_2
  L6_2 = display
  L6_2 = L6_2.newGroup
  L6_2 = L6_2()
  A0_2.internalContentGroup = L6_2
  L6_2 = A0_2.contentGroup
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = A0_2.internalContentGroup
  L6_2(L7_2, L8_2)
  L6_2 = graphics
  L6_2 = L6_2.newMask
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "Auction/FC-auction-mask-small"
  L9_2 = Constants
  L9_2 = L9_2.deviceSpecificFilePostfix
  L9_2 = L9_2()
  L10_2 = ".png"
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
  L6_2 = L6_2(L7_2)
  L7_2 = A0_2.internalContentGroup
  L8_2 = L7_2
  L7_2 = L7_2.setMask
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.internalContentGroup
  L8_2 = display
  L8_2 = L8_2.contentCenterX
  L7_2.maskX = L8_2
  L7_2 = A0_2.internalContentGroup
  L8_2 = display
  L8_2 = L8_2.contentCenterY
  L7_2.maskY = L8_2
  L7_2 = A0_2.contentGroup
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = A0_2.internalContentGroup
  L7_2(L8_2, L9_2)
  L7_2 = display
  L7_2 = L7_2.newRoundedRect
  L8_2 = A0_2.contentGroup
  L9_2 = 0
  L10_2 = 0
  L11_2 = L3_2.width
  L11_2 = L11_2 - 16
  L12_2 = L3_2.height
  L12_2 = L12_2 - 58
  L13_2 = 1
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2.strokeWidth = 2
  L9_2 = L7_2
  L8_2 = L7_2.setStrokeColor
  L10_2 = Constants
  L10_2 = L10_2.greenColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L9_2 = L7_2
  L8_2 = L7_2.setFillColor
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L13_2 = 0
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = L3_2.x
  L7_2.x = L8_2
  L8_2 = L3_2.y
  L9_2 = L3_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L9_2 = L7_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L8_2 = L8_2 - 8
  L7_2.y = L8_2
  L8_2 = display
  L8_2 = L8_2.newRoundedRect
  L9_2 = 0
  L10_2 = 0
  L11_2 = L7_2.width
  L11_2 = L11_2 / 4
  L12_2 = L7_2.height
  L12_2 = L12_2 - 40
  L13_2 = 0
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L9_2 = L7_2.x
  L10_2 = L8_2.width
  L11_2 = L7_2.width
  L10_2 = L10_2 - L11_2
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L9_2 = L9_2 + 10
  L8_2.x = L9_2
  L9_2 = L7_2.y
  L9_2 = L9_2 - 10
  L8_2.y = L9_2
  L10_2 = L8_2
  L9_2 = L8_2.setFillColor
  L11_2 = Constants
  L11_2 = L11_2.lightBlueColor
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2()
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L8_2.strokeWidth = 3
  L10_2 = L8_2
  L9_2 = L8_2.setStrokeColor
  L11_2 = Constants
  L11_2 = L11_2.darkBlueColor
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2()
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L9_2 = A0_2.contentGroup
  L10_2 = L9_2
  L9_2 = L9_2.insert
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  L9_2 = L16_1
  L10_2 = {}
  L9_2[1] = L10_2
  L9_2 = L16_1
  L9_2 = L9_2[1]
  L9_2.isSelected = true
  L9_2 = L5_1
  L9_2 = L9_2.newTableView
  L10_2 = {}
  L11_2 = L8_2.width
  L10_2.width = L11_2
  L11_2 = L8_2.height
  L10_2.height = L11_2
  L11_2 = L26_1
  L10_2.onRowRender = L11_2
  L11_2 = L27_1
  L10_2.onRowTouch = L11_2
  L10_2.hideScrollBar = true
  L9_2 = L9_2(L10_2)
  L10_2 = L8_2.x
  L9_2.x = L10_2
  L10_2 = L8_2.y
  L9_2.y = L10_2
  L10_2 = A0_2.contentGroup
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  L10_2 = L23_1
  L11_2 = L9_2
  L10_2(L11_2)
  L10_2 = display
  L10_2 = L10_2.newRoundedRect
  L11_2 = 0
  L12_2 = 0
  L13_2 = L7_2.width
  L13_2 = L13_2 * 3
  L13_2 = L13_2 / 4
  L13_2 = L13_2 - 20
  L14_2 = L8_2.height
  L15_2 = 0
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L11_2 = L7_2.x
  L12_2 = L7_2.width
  L13_2 = L10_2.width
  L12_2 = L12_2 - L13_2
  L12_2 = L12_2 / 2
  L11_2 = L11_2 + L12_2
  L11_2 = L11_2 - 10
  L10_2.x = L11_2
  L11_2 = L8_2.y
  L10_2.y = L11_2
  L12_2 = L10_2
  L11_2 = L10_2.setFillColor
  L13_2 = Constants
  L13_2 = L13_2.lightBlueColor
  L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2()
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L10_2.strokeWidth = 3
  L12_2 = L10_2
  L11_2 = L10_2.setStrokeColor
  L13_2 = Constants
  L13_2 = L13_2.darkBlueColor
  L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2()
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L11_2 = A0_2.contentGroup
  L12_2 = L11_2
  L11_2 = L11_2.insert
  L13_2 = L10_2
  L11_2(L12_2, L13_2)
  L11_2 = L3_1
  L11_2 = L11_2.newScrollView
  L12_2 = {}
  L13_2 = A0_2.contentGroup
  L12_2.parent = L13_2
  L13_2 = L10_2.width
  L12_2.width = L13_2
  L13_2 = L10_2.height
  L12_2.height = L13_2
  L12_2.hideScrollBar = true
  L12_2.horizontalScrollDisabled = true
  L12_2.scrollWidth = 0
  L12_2.scrollHeight = 0
  L12_2.bottomPadding = 25
  L13_2 = {}
  L14_2 = 1
  L15_2 = 1
  L16_2 = 0
  L17_2 = 0
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L13_2[3] = L16_2
  L13_2[4] = L17_2
  L12_2.backgroundColor = L13_2
  L11_2 = L11_2(L12_2)
  L18_1 = L11_2
  L11_2 = L18_1
  L12_2 = L10_2.x
  L11_2.x = L12_2
  L11_2 = L18_1
  L12_2 = L10_2.y
  L11_2.y = L12_2
  L11_2 = A0_2.contentGroup
  L12_2 = L11_2
  L11_2 = L11_2.insert
  L13_2 = L18_1
  L11_2(L12_2, L13_2)
  L11_2 = L24_1
  L12_2 = 1
  L11_2 = L11_2(L12_2)
  L17_1 = L11_2
  L11_2 = L17_1
  L11_2.x = 12
  L11_2 = L17_1
  L11_2.y = 12
  L11_2 = L18_1
  L12_2 = L11_2
  L11_2 = L11_2.insert
  L13_2 = L17_1
  L11_2(L12_2, L13_2)
  L11_2 = nil
  L12_2 = A1_2.params
  if L12_2 then
    L12_2 = A1_2.params
    L12_2 = L12_2.buttonText
    if L12_2 then
      L12_2 = A1_2.params
      L11_2 = L12_2.buttonText
  end
  else
    L12_2 = L2_1
    L11_2 = L12_2.Accept
  end
  L12_2 = L10_1
  L13_2 = L12_2
  L12_2 = L12_2.new
  L14_2 = {}
  L14_2.label = L11_2
  L15_2 = L21_1
  L15_2 = 12 * L15_2
  L15_2 = L15_2 / 400
  L14_2.fontSize = L15_2
  L15_2 = Theme
  L15_2 = L15_2.colorsSet
  L15_2 = L15_2.blackColor
  L14_2.labelColor = L15_2
  L15_2 = L21_1
  L15_2 = 123 * L15_2
  L15_2 = L15_2 / 400
  L14_2.width = L15_2
  L15_2 = L22_1
  L15_2 = 22 * L15_2
  L15_2 = L15_2 / 300
  L14_2.height = L15_2
  L15_2 = Constants
  L15_2 = L15_2.Path_Assets
  L16_2 = "CardScene/button.png"
  L15_2 = L15_2 .. L16_2
  L14_2.defaultFile = L15_2
  
  function L15_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L20_1
    if L0_3 == nil then
      L0_3 = showSimpleDialog
      L1_3 = L2_1
      L1_3 = L1_3.Avatar
      L2_3 = L2_1
      L2_3 = L2_3["You need to select an avatar."]
      L3_3 = nil
      
      function L4_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4
        L0_4 = A1_2
        L0_4 = L0_4.params
        if L0_4 then
          L0_4 = A1_2
          L0_4 = L0_4.params
          L0_4 = L0_4.onSelect
          if L0_4 then
            L0_4 = L0_1
            L0_4 = L0_4.showOverlay
            L1_4 = "Scenes.selectAvatarOverlay"
            L2_4 = {}
            L2_4.effect = "fade"
            L3_4 = {}
            L4_4 = A1_2
            L4_4 = L4_4.params
            L4_4 = L4_4.onSelect
            L3_4.onSelect = L4_4
            L2_4.params = L3_4
            L0_4(L1_4, L2_4)
          end
        end
      end
      
      L0_3(L1_3, L2_3, L3_3, L4_3)
      return
    end
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
    L0_3 = warningLog
    L1_3 = "avatar Selected id :"
    L2_3 = L20_1
    L2_3 = L2_3.avatar
    L2_3 = L2_3.id
    L0_3(L1_3, L2_3)
    L0_3 = A1_2
    L0_3 = L0_3.params
    if L0_3 then
      L0_3 = A1_2
      L0_3 = L0_3.params
      L0_3 = L0_3.onSelect
      if L0_3 then
        L0_3 = L7_1
        L0_3 = L0_3.setAvatar
        L1_3 = L20_1
        L1_3 = L1_3.avatar
        L1_3 = L1_3.id
        L2_3 = A1_2
        L2_3 = L2_3.params
        L2_3 = L2_3.onSelect
        L3_3 = A1_2
        L3_3 = L3_3.params
        L3_3 = L3_3.onFailed
        L0_3(L1_3, L2_3, L3_3)
      end
    end
  end
  
  L14_2.onRelease = L15_2
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = A0_2.contentGroup
  L14_2 = L13_2
  L13_2 = L13_2.insert
  L15_2 = L12_2.view
  L13_2(L14_2, L15_2)
  L12_2.x = 0
  L13_2 = L3_2.y
  L14_2 = L3_2.height
  L14_2 = L14_2 / 2
  L13_2 = L13_2 + L14_2
  L13_2 = L13_2 - 13
  L14_2 = L12_2.height
  L14_2 = L14_2 / 2
  L13_2 = L13_2 - L14_2
  L12_2.y = L13_2
end

create = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L12_1
  L4_2 = L4_2.show
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "did" then
    L4_2 = "hideOverlay"
    _backAction = L4_2
  end
end

show = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  L4_2 = L12_1
  L4_2 = L4_2.hide
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  if L3_2 == "will" then
    L4_2 = "Scenes.Home"
    _backAction = L4_2
  end
end

hide = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.view
  L3_2 = L12_1
  L3_2 = L3_2.destroy
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end

destroy = L28_1

function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L14_1
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = 0
  L5_2 = 0
  L6_2 = 1570
  L7_2 = 1360
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2.darknessOverlay = L3_2
  L2_2 = L14_1
  L2_2 = L2_2.darknessOverlay
  L3_2 = display
  L3_2 = L3_2.contentCenterX
  L2_2.x = L3_2
  L2_2 = L14_1
  L2_2 = L2_2.darknessOverlay
  L3_2 = display
  L3_2 = L3_2.contentCenterY
  L2_2.y = L3_2
  L2_2 = L14_1
  L2_2 = L2_2.darknessOverlay
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = 0
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0.7
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = L14_1
  L2_2 = L2_2.darknessOverlay
  L3_2 = L2_2
  L2_2 = L2_2.addEventListener
  L4_2 = "touch"
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L14_1
  L2_2 = L2_2.darknessOverlay
  L3_2 = L2_2
  L2_2 = L2_2.addEventListener
  L4_2 = "tap"
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A1_2
  L2_2 = A1_2.toFront
  L2_2(L3_2)
  L3_2 = A1_2
  L2_2 = A1_2.insert
  L4_2 = L14_1
  L4_2 = L4_2.darknessOverlay
  L2_2(L3_2, L4_2)
end

L14_1.showBlackOverlay = L28_1

function L28_1(A0_2)
  local L1_2, L2_2
  L1_2 = L14_1
  L1_2 = L1_2.darknessOverlay
  if L1_2 ~= nil then
    L1_2 = display
    L1_2 = L1_2.remove
    L2_2 = L14_1
    L2_2 = L2_2.darknessOverlay
    L1_2(L2_2)
    L1_2 = L14_1
    L1_2.darknessOverlay = nil
  end
end

L14_1.removeBlackOverlay = L28_1
