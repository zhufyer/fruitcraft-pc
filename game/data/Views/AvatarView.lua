local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Models.Avatar"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Data.Avatars"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Data.AvatarSets"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "widget"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Constants"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.CachedImageView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Models.ProfileManager"
L7_1 = L7_1(L8_1)
L8_1 = nil
L9_1 = nil

function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = {}
  obj = L5_2
  L5_2 = setmetatable
  L6_2 = obj
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  A0_2.__index = A0_2
  L5_2 = obj
  L5_2.delegate = A4_2
  L5_2 = obj
  L6_2 = selectType
  L5_2.selectType = L6_2
  L5_2 = obj
  L6_2 = L1_1
  L6_2 = L6_2.getAvatarByID
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = L1_1
    L6_2 = L6_2.getAvatarByID
    L7_2 = 1
    L6_2 = L6_2(L7_2)
  end
  L5_2.avatar = L6_2
  L5_2 = obj
  L6_2 = L7_1
  L6_2 = L6_2.checkAvatar
  L7_2 = obj
  L7_2 = L7_2.avatar
  L6_2 = L6_2(L7_2)
  L5_2.avatar = L6_2
  L5_2 = obj
  L6_2 = A2_2 or L6_2
  if not A2_2 then
    L6_2 = L8_1
  end
  L5_2.width = L6_2
  L5_2 = obj
  L6_2 = A3_2 or L6_2
  if not A3_2 then
    L6_2 = L9_1
  end
  L5_2.height = L6_2
  L5_2 = obj
  L6_2 = display
  L6_2 = L6_2.newGroup
  L6_2 = L6_2()
  L5_2.view = L6_2
  L5_2 = obj
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = obj
  L7_2 = L7_2.view
  L8_2 = L5_1
  L8_2 = L8_2.Path_Assets
  L9_2 = "Profile/Frame.png"
  L8_2 = L8_2 .. L9_2
  L9_2 = obj
  L9_2 = L9_2.width
  L10_2 = obj
  L10_2 = L10_2.height
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L5_2.background = L6_2
  L5_2 = obj
  L5_2 = L5_2.background
  L5_2.x = 0
  L5_2 = obj
  L5_2 = L5_2.background
  L5_2.y = 0
  L5_2 = obj
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = obj
  L7_2 = L7_2.view
  L8_2 = L5_1
  L8_2 = L8_2.Path_Assets
  L9_2 = "General/FC-lock.png"
  L8_2 = L8_2 .. L9_2
  L9_2 = obj
  L9_2 = L9_2.width
  L9_2 = L9_2 * 0.9
  L10_2 = obj
  L10_2 = L10_2.width
  L10_2 = L10_2 * 0.9
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L5_2.lockView = L6_2
  L5_2 = nil
  L6_2 = L6_1
  L7_2 = L6_2
  L6_2 = L6_2.new
  L8_2 = obj
  L8_2 = L8_2.view
  L9_2 = obj
  L9_2 = L9_2.avatar
  L9_2 = L9_2.image
  L10_2 = obj
  L10_2 = L10_2.width
  L10_2 = L10_2 * 0.9
  L11_2 = obj
  L11_2 = L11_2.height
  L11_2 = L11_2 * 0.9
  
  function L12_2()
    local L0_3, L1_3
    L0_3 = obj
    L0_3 = L0_3.avatar
    L0_3 = L0_3.isAvailable
    if L0_3 == false then
      L0_3 = obj
      L0_3 = L0_3.lockView
      L1_3 = L0_3
      L0_3 = L0_3.toFront
      L0_3(L1_3)
    end
    L0_3 = L5_2
    L0_3 = L0_3._view
    L0_3.x = 0
    L0_3 = L5_2
    L0_3 = L0_3._view
    L0_3.y = 0
  end
  
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = L6_2
  L6_2 = L5_2._view
  L6_2.x = 0
  L6_2 = L5_2._view
  L6_2.y = 0
  L6_2 = obj
  L6_2 = L6_2.avatar
  L6_2 = L6_2.isAvailable
  if L6_2 == true then
    L6_2 = obj
    L6_2 = L6_2.lockView
    L6_2.isVisible = false
  else
    L6_2 = obj
    L6_2 = L6_2.lockView
    L6_2.isVisible = true
  end
  L6_2 = obj
  L6_2 = L6_2.lockView
  L7_2 = obj
  L7_2 = L7_2.background
  L7_2 = L7_2.x
  L6_2.x = L7_2
  L6_2 = obj
  L6_2 = L6_2.lockView
  L7_2 = obj
  L7_2 = L7_2.background
  L7_2 = L7_2.y
  L6_2.y = L7_2
  L6_2 = obj
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = obj
  L8_2 = L8_2.view
  L9_2 = L5_1
  L9_2 = L9_2.Path_Assets
  L10_2 = "General/FC-tick.png"
  L9_2 = L9_2 .. L10_2
  L10_2 = 35
  L11_2 = 35
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L6_2.selectedView = L7_2
  L6_2 = obj
  L6_2 = L6_2.selectedView
  L7_2 = L6_2
  L6_2 = L6_2.toBack
  L6_2(L7_2)
  L6_2 = obj
  L6_2 = L6_2.selectedView
  L7_2 = obj
  L7_2 = L7_2.background
  L7_2 = L7_2.x
  L6_2.x = L7_2
  L6_2 = obj
  L6_2 = L6_2.selectedView
  L7_2 = obj
  L7_2 = L7_2.background
  L7_2 = L7_2.y
  L6_2.y = L7_2
  L6_2 = obj
  L6_2 = L6_2.delegate
  if L6_2 then
    L6_2 = obj
    L6_2.selected = false
    L6_2 = obj
    L6_2.selectable = true
    L6_2 = obj
    L7_2 = L6_2
    L6_2 = L6_2.setAction
    L6_2(L7_2)
  end
  L6_2 = obj
  return L6_2
end

new = L10_1

function L10_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L10_1

function L10_1(A0_2)
  local L1_2, L2_2
  A0_2.selected = false
  L1_2 = A0_2.selectedView
  if L1_2 then
    L1_2 = A0_2.selectedView
    L1_2 = L1_2.toBack
    if L1_2 then
      L1_2 = A0_2.selectedView
      L2_2 = L1_2
      L1_2 = L1_2.toBack
      L1_2(L2_2)
    end
  end
end

deselected = L10_1

function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = log3
  L2_2 = "didSelect"
  L1_2(L2_2)
  A0_2.selected = true
  L1_2 = A0_2.selectedView
  if L1_2 then
    L1_2 = A0_2.selectedView
    L1_2 = L1_2.toFront
    if L1_2 then
      L1_2 = A0_2.selectedView
      L2_2 = L1_2
      L1_2 = L1_2.toFront
      L1_2(L2_2)
    end
  end
end

didSelect = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  
  function L1_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L0_3 = L0_3.selectable
    if L0_3 then
      L0_3 = A0_2
      L0_3 = L0_3.selected
      if L0_3 then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.deselected
        L0_3(L1_3)
        L0_3 = A0_2
        L0_3 = L0_3.delegate
        L0_3 = L0_3.avatarDeselected
        L1_3 = A0_2
        L0_3(L1_3)
      else
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.didSelect
        L0_3(L1_3)
        L0_3 = A0_2
        L0_3 = L0_3.delegate
        L0_3 = L0_3.avatarSelected
        L1_3 = A0_2
        L0_3(L1_3)
      end
    end
  end
  
  func = L1_2
  L1_2 = A0_2.background
  if L1_2 then
    L1_2 = A0_2.usedActionType
    if L1_2 ~= true then
      L1_2 = A0_2.background
      L2_2 = L1_2
      L1_2 = L1_2.addEventListener
      L3_2 = "tap"
      L4_2 = func
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = func
      A0_2.usedAction = L1_2
      A0_2.usedActionType = true
    end
  end
end

setAction = L10_1

function L10_1(A0_2)
  local L1_2
  L1_2 = A0_2.lockView
  if L1_2 then
    L1_2 = A0_2.lockView
    L1_2.isVisible = true
    L1_2 = A0_2.background
    L1_2.isVisible = false
  end
end

showLockView = L10_1

function L10_1(A0_2)
  local L1_2
  L1_2 = A0_2.lockView
  if L1_2 then
    L1_2 = A0_2.lockView
    L1_2.isVisible = false
    L1_2 = A0_2.background
    L1_2.isVisible = true
  end
end

hideLockView = L10_1

function L10_1(A0_2, A1_2)
  A0_2.selectable = A1_2
end

setSelectable = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  
  function L1_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L0_3 = L0_3.selectable
    if L0_3 then
      L0_3 = A0_2
      L0_3 = L0_3.delegate
      L0_3 = L0_3.avatarSelected
      L1_3 = A0_2
      L0_3(L1_3)
    end
  end
  
  func = L1_2
  L1_2 = A0_2.background
  if L1_2 then
    L1_2 = A0_2.background
    L2_2 = L1_2
    L1_2 = L1_2.addEventListener
    L3_2 = "tap"
    L4_2 = func
    L1_2(L2_2, L3_2, L4_2)
  end
end

setSimpleAction = L10_1
