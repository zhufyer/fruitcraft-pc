local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.BaseView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "widget"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Components.TDButtonView"
L3_1 = L3_1(L4_1)
L4_1 = setmetatable
L5_1 = _M
L6_1 = {}
L6_1.__index = L0_1
L4_1(L5_1, L6_1)
L4_1 = nil
L5_1 = nil
L6_1 = nil

function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = L0_1
  L3_2 = L3_2.newWithParams
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = assert
  L5_2 = A1_2.mentorImage
  L5_2 = L5_2 ~= nil
  L6_2 = "Mentor image needs to be provided in the TDDialogView params"
  L4_2(L5_2, L6_2)
  L4_2 = assert
  L5_2 = A1_2.mentorWidth
  L5_2 = L5_2 ~= nil
  L6_2 = "Mentor image Width needs to be provided in the TDDialogView params"
  L4_2(L5_2, L6_2)
  L4_2 = assert
  L5_2 = A1_2.mentorHeight
  L5_2 = L5_2 ~= nil
  L6_2 = "Mentor image Height needs to be provided in the TDDialogView params"
  L4_2(L5_2, L6_2)
  L4_2 = assert
  L5_2 = A1_2.texts
  L5_2 = L5_2 ~= nil
  L6_2 = "Dialog text table needs to be provided in the TDDialogView params"
  L4_2(L5_2, L6_2)
  L4_2 = A1_2.mentorAlignment
  if not L4_2 then
    L4_2 = "right"
  end
  L3_2.mentorAlignment = L4_2
  L4_2 = A1_2.mode
  if not L4_2 then
    L4_2 = "full"
  end
  L3_2.mode = L4_2
  L4_2 = A1_2.texts
  L3_2.textValue = L4_2
  L4_2 = A1_2.mentorImage
  L3_2.mentorImage = L4_2
  L4_2 = A1_2.textAlignment
  if not L4_2 then
    L4_2 = "center"
  end
  L3_2.textAlignment = L4_2
  L4_2 = A1_2.callBackFunction
  L3_2.callBackFunction = L4_2
  L4_2 = A1_2.delay
  if not L4_2 then
    L4_2 = 1
  end
  L3_2.delay = L4_2
  L4_2 = A1_2.mentorWidth
  L3_2.mentorWidth = L4_2
  L4_2 = A1_2.mentorHeight
  L3_2.mentorHeight = L4_2
  L4_2 = A1_2.hasButton
  if not L4_2 then
    L4_2 = false
  end
  L3_2.hasButton = L4_2
  L4_2 = A1_2.buttonLabel
  if not L4_2 then
    L4_2 = "Done"
  end
  L3_2.buttonLabel = L4_2
  L4_2 = A1_2.isBackInteractive
  if not L4_2 then
    L4_2 = false
  end
  L3_2.isBackInteractive = L4_2
  L4_2 = A1_2.isComplete
  if not L4_2 then
    L4_2 = false
  end
  L3_2.isComplete = L4_2
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = L3_2.view
  L6_2 = L3_2.mentorImage
  L7_2 = L3_2.mentorWidth
  L8_2 = L3_2.mentorHeight
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L3_2.mentor = L4_2
  L4_2 = L3_2.mentor
  L5_2 = display
  L5_2 = L5_2.contentHeight
  L6_2 = L3_2.mentor
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 - 20
  L4_2.y = L5_2
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  L3_2.dialogGroup = L4_2
  L4_2 = L3_2.view
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = L3_2.dialogGroup
  L4_2(L5_2, L6_2)
  L3_2.counter = 1
  L4_2 = 0
  L5_1 = L4_2
  L4_2 = L3_2.isBackInteractive
  if L4_2 then
    L4_2 = L3_2.hasButton
    if L4_2 then
      L5_2 = L3_2
      L4_2 = L3_2.createButton
      L4_2(L5_2)
    end
  else
    L4_2 = display
    L4_2 = L4_2.newRect
    L5_2 = L3_2.view
    L6_2 = display
    L6_2 = L6_2.contentWidth
    L6_2 = L6_2 / 2
    L7_2 = display
    L7_2 = L7_2.contentHeight
    L7_2 = L7_2 / 2
    L8_2 = display
    L8_2 = L8_2.contentWidth
    L9_2 = display
    L9_2 = L9_2.contentHeight
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L4_2.alpha = 0
    L4_2.isHitTestable = true
    L5_2 = L3_2.hasButton
    if L5_2 then
      L6_2 = L3_2
      L5_2 = L3_2.createButton
      L5_2(L6_2)
      L6_2 = L4_2
      L5_2 = L4_2.addEventListener
      L7_2 = "touch"
      
      function L8_2()
        local L0_3, L1_3
        L0_3 = true
        return L0_3
      end
      
      L5_2(L6_2, L7_2, L8_2)
      L6_2 = L4_2
      L5_2 = L4_2.addEventListener
      L7_2 = "tap"
      
      function L8_2()
        local L0_3, L1_3
        L0_3 = true
        return L0_3
      end
      
      L5_2(L6_2, L7_2, L8_2)
    else
      L6_2 = L3_2
      L5_2 = L3_2.hideDialogWithTouch
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    end
  end
  L4_2 = {}
  L5_2 = {}
  L6_2 = {}
  L6_2.x = 0
  L6_2.y = 0
  L6_2.width = 64
  L6_2.height = 64
  L7_2 = {}
  L7_2.x = 64
  L7_2.y = 0
  L7_2.width = 128
  L7_2.height = 64
  L8_2 = {}
  L8_2.x = 192
  L8_2.y = 0
  L8_2.width = 64
  L8_2.height = 64
  L9_2 = {}
  L9_2.x = 0
  L9_2.y = 64
  L9_2.width = 64
  L9_2.height = 128
  L10_2 = {}
  L10_2.x = 64
  L10_2.y = 64
  L10_2.width = 128
  L10_2.height = 128
  L11_2 = {}
  L11_2.x = 192
  L11_2.y = 64
  L11_2.width = 64
  L11_2.height = 128
  L12_2 = {}
  L12_2.x = 0
  L12_2.y = 192
  L12_2.width = 64
  L12_2.height = 64
  L13_2 = {}
  L13_2.x = 64
  L13_2.y = 192
  L13_2.width = 128
  L13_2.height = 64
  L14_2 = {}
  L14_2.x = 192
  L14_2.y = 192
  L14_2.width = 64
  L14_2.height = 64
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L5_2[5] = L10_2
  L5_2[6] = L11_2
  L5_2[7] = L12_2
  L5_2[8] = L13_2
  L5_2[9] = L14_2
  L4_2.frames = L5_2
  L4_2.sheetContentWidth = 256
  L4_2.sheetContentHeight = 256
  L3_2.dialogSheetOptions = L4_2
  L4_2 = L3_2.mode
  if L4_2 == "full" then
    L4_2 = display
    L4_2 = L4_2.contentWidth
    L4_2 = L4_2 * 5
    L4_2 = L4_2 / 6
    L5_2 = L3_2.mentor
    L5_2 = L5_2.width
    L4_2 = L4_2 - L5_2
    L3_2.dialogWidth = L4_2
    L3_2.margin = 10
  else
    L4_2 = display
    L4_2 = L4_2.contentWidth
    L4_2 = L4_2 * 2
    L4_2 = L4_2 / 3
    L5_2 = L3_2.mentor
    L5_2 = L5_2.width
    L4_2 = L4_2 - L5_2
    L3_2.dialogWidth = L4_2
    L3_2.margin = 10
  end
  L4_2 = L3_2.mentorAlignment
  if L4_2 == "left" then
    L4_2 = L3_2.mentor
    L5_2 = L3_2.mentor
    L5_2 = L5_2.width
    L5_2 = L5_2 / 2
    L5_2 = 40 + L5_2
    L4_2.x = L5_2
    L4_2 = L3_2.mentor
    L4_2 = L4_2.x
    L5_2 = L3_2.mentor
    L5_2 = L5_2.width
    L5_2 = L5_2 / 2
    L4_2 = L4_2 + L5_2
    L3_2.dialogX = L4_2
    L4_2 = graphics
    L4_2 = L4_2.newImageSheet
    L5_2 = Constants
    L5_2 = L5_2.Path_Assets
    L6_2 = "Tutorial/9 Slices balloon - left@2x.png"
    L5_2 = L5_2 .. L6_2
    L6_2 = L3_2.dialogSheetOptions
    L4_2 = L4_2(L5_2, L6_2)
    L3_2.dialogSheet = L4_2
  else
    L4_2 = L3_2.mentor
    L5_2 = display
    L5_2 = L5_2.contentWidth
    L5_2 = L5_2 - 40
    L6_2 = L3_2.mentor
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L5_2 = L5_2 - L6_2
    L4_2.x = L5_2
    L4_2 = L3_2.mentor
    L4_2 = L4_2.x
    L5_2 = L3_2.mentor
    L5_2 = L5_2.width
    L5_2 = L5_2 / 2
    L4_2 = L4_2 - L5_2
    L4_2 = L4_2 + 20
    L3_2.dialogX = L4_2
    L4_2 = graphics
    L4_2 = L4_2.newImageSheet
    L5_2 = Constants
    L5_2 = L5_2.Path_Assets
    L6_2 = "Tutorial/9 Slices balloon - right@2x.png"
    L5_2 = L5_2 .. L6_2
    L6_2 = L3_2.dialogSheetOptions
    L4_2 = L4_2(L5_2, L6_2)
    L3_2.dialogSheet = L4_2
  end
  L4_2 = {}
  L5_2 = L3_2.textValue
  L6_2 = L3_2.counter
  L5_2 = L5_2[L6_2]
  L4_2.text = L5_2
  L5_2 = Constants
  L5_2 = L5_2.fontForSubtitle
  L5_2 = L5_2()
  L4_2.font = L5_2
  L4_2.fontSize = 12
  L5_2 = L3_2.textAlignment
  L4_2.align = L5_2
  L5_2 = L3_2.dialogWidth
  L6_2 = L3_2.margin
  L6_2 = L6_2 * 6
  L5_2 = L5_2 - L6_2
  L4_2.width = L5_2
  L3_2.textOptions = L4_2
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = L3_2.textOptions
  L4_2 = L4_2(L5_2)
  L3_2.dialogText = L4_2
  L4_2 = L3_2.dialogGroup
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = L3_2.dialogText
  L4_2(L5_2, L6_2)
  L4_2 = {}
  L5_2 = L3_2.dialogWidth
  L4_2.width = L5_2
  L5_2 = L3_2.dialogText
  L5_2 = L5_2.height
  L6_2 = L3_2.margin
  L6_2 = L6_2 * 2
  L5_2 = L5_2 + L6_2
  L5_2 = L5_2 + 60
  L6_2 = L5_1
  L5_2 = L5_2 + L6_2
  L4_2.height = L5_2
  L5_2 = L3_2.dialogSheet
  L4_2.sheet = L5_2
  L4_2.topLeftFrame = 1
  L4_2.topMiddleFrame = 2
  L4_2.topRightFrame = 3
  L4_2.middleLeftFrame = 4
  L4_2.middleFrame = 5
  L4_2.middleRightFrame = 6
  L4_2.bottomLeftFrame = 7
  L4_2.bottomMiddleFrame = 8
  L4_2.bottomRightFrame = 9
  L4_2.topLeftOverFrame = 1
  L4_2.topMiddleOverFrame = 2
  L4_2.topRightOverFrame = 3
  L4_2.middleLeftOverFrame = 4
  L4_2.middleOverFrame = 5
  L4_2.middleRightOverFrame = 6
  L4_2.bottomLeftOverFrame = 7
  L4_2.bottomMiddleOverFrame = 8
  L4_2.bottomRightOverFrame = 9
  L3_2.dialogBoxOptions = L4_2
  L4_2 = L3_2.mentor
  L4_2 = L4_2.y
  L5_2 = L3_2.mentor
  L5_2 = L5_2.height
  L5_2 = L5_2 / 20
  L4_2 = L4_2 - L5_2
  L3_2.dialogY = L4_2
  L4_2 = L1_1
  L4_2 = L4_2.newButton
  L5_2 = L3_2.dialogBoxOptions
  L4_2 = L4_2(L5_2)
  L3_2.dialogBox = L4_2
  L4_2 = L3_2.dialogGroup
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = L3_2.dialogBox
  L4_2(L5_2, L6_2)
  L4_2 = L3_2.dialogBox
  L5_2 = L4_2
  L4_2 = L4_2.toBack
  L4_2(L5_2)
  L4_2 = L3_2.dialogBox
  L5_2 = L3_2.dialogX
  L4_2.x = L5_2
  L4_2 = L3_2.dialogBox
  L5_2 = L3_2.dialogY
  L4_2.y = L5_2
  L4_2 = L3_2.dialogGroup
  L5_2 = L3_2.dialogX
  L4_2.x = L5_2
  L4_2 = L3_2.dialogText
  L4_2 = L4_2.height
  if L4_2 < 49 then
    L4_2 = L3_2.dialogGroup
    L5_2 = L3_2.dialogY
    L6_2 = L3_2.mentor
    L6_2 = L6_2.height
    L6_2 = L6_2 / 2
    L5_2 = L5_2 + L6_2
    L4_2.y = L5_2
    L4_2 = L3_2.dialogText
    L4_2 = L4_2.height
    if 17 < L4_2 then
      L4_2 = L3_2.hasButton
      if L4_2 then
        L4_2 = L3_2.dialogGroup
        L5_2 = L3_2.dialogY
        L4_2.y = L5_2
      end
    end
  else
    L4_2 = L3_2.dialogGroup
    L5_2 = L3_2.dialogY
    L4_2.y = L5_2
  end
  L4_2 = L3_2.dialogBox
  L5_2 = L4_2
  L4_2 = L4_2.setEnabled
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = L3_2.dialogText
  L5_2 = L3_2.dialogBox
  L5_2 = L5_2.x
  L4_2.x = L5_2
  L4_2 = L3_2.dialogText
  L5_2 = L3_2.dialogBox
  L5_2 = L5_2.y
  L6_2 = L3_2.dialogBox
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 - L6_2
  L6_2 = L3_2.dialogText
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L5_2 = L5_2 + 18
  L6_2 = L3_2.margin
  L5_2 = L5_2 + L6_2
  L4_2.y = L5_2
  L4_2 = L3_2.mentor
  L4_2.alpha = 0
  L4_2 = L3_2.dialogGroup
  L4_2.alpha = 0
  L4_2 = L3_2.dialogGroup
  L4_2.anchorChildren = true
  L4_2 = L3_2.mentorAlignment
  if L4_2 == "right" then
    L4_2 = L3_2.dialogGroup
    L4_2.anchorX = 1
    L4_2 = L3_2.dialogGroup
    L4_2.anchorY = 1
    L4_2 = L3_2.dialogGroup
    L4_2.rotation = 20
  else
    L4_2 = L3_2.dialogGroup
    L4_2.anchorX = 0
    L4_2 = L3_2.dialogGroup
    L4_2.anchorY = 1
    L4_2 = L3_2.dialogGroup
    L4_2.rotation = 20
  end
  L4_2 = L3_2.dialogBox
  L5_2 = L4_2
  L4_2 = L4_2.setFillColor
  L6_2 = Theme
  L6_2 = L6_2.dialogBoxColor
  L6_2 = L6_2[1]
  L7_2 = Theme
  L7_2 = L7_2.dialogBoxColor
  L7_2 = L7_2[2]
  L8_2 = Theme
  L8_2 = L8_2.dialogBoxColor
  L8_2 = L8_2[3]
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = L3_2.dialogText
  L5_2 = L4_2
  L4_2 = L4_2.setFillColor
  L6_2 = Theme
  L6_2 = L6_2.dialogTextColor
  L6_2 = L6_2[1]
  L7_2 = Theme
  L7_2 = L7_2.dialogTextColor
  L7_2 = L7_2[2]
  L8_2 = Theme
  L8_2 = L8_2.dialogTextColor
  L8_2 = L8_2[3]
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = L3_2.mentor
  L4_2 = L4_2.x
  L3_2.xPos = L4_2
  L4_2 = L3_2.mentor
  L4_2 = L4_2.y
  L3_2.yPos = L4_2
  L4_2 = L3_2.hasButton
  if L4_2 then
    L4_2 = L3_2.view
    L5_2 = L4_2
    L4_2 = L4_2.insert
    L6_2 = L3_2.dialogGroup
    L4_2(L5_2, L6_2)
    L4_2 = L3_2.gotItButton
    L5_2 = L3_2.dialogText
    L5_2 = L5_2.x
    L4_2.x = L5_2
    L4_2 = L3_2.gotItButton
    L5_2 = L3_2.dialogText
    L5_2 = L5_2.y
    L6_2 = L3_2.dialogText
    L6_2 = L6_2.height
    L6_2 = L6_2 / 2
    L5_2 = L5_2 + L6_2
    L6_2 = L3_2.gotItButton
    L6_2 = L6_2.height
    L6_2 = L6_2 / 2
    L5_2 = L5_2 + L6_2
    L5_2 = L5_2 + 10
    L4_2.y = L5_2
  end
  L4_2 = timer
  L4_2 = L4_2.performWithDelay
  L5_2 = L3_2.delay
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = L3_2
    L1_3 = L0_3
    L0_3 = L0_3.showWithAnimation
    L0_3(L1_3)
  end
  
  L7_2 = 1
  L4_2(L5_2, L6_2, L7_2)
  return L3_2
end

new = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A1_2
  L2_2 = A1_2.addEventListener
  L4_2 = "touch"
  
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = A0_2
      L1_3 = L1_3.touchIsActive
      if L1_3 then
        L1_3 = A0_2
        L1_3 = L1_3.counter
        L2_3 = A0_2
        L2_3 = L2_3.textValue
        L2_3 = #L2_3
        if L1_3 ~= L2_3 then
          L1_3 = A0_2
          L1_3.touchIsActive = false
          L1_3 = A0_2
          L2_3 = L1_3
          L1_3 = L1_3.setValue
          L3_3 = A0_2
          L3_3 = L3_3.textValue
          L4_3 = A0_2
          L4_3 = L4_3.counter
          L4_3 = L4_3 + 1
          L3_3 = L3_3[L4_3]
          L1_3(L2_3, L3_3)
          L1_3 = A0_2
          L2_3 = A0_2
          L2_3 = L2_3.counter
          L2_3 = L2_3 + 1
          L1_3.counter = L2_3
        else
          L1_3 = A0_2
          L2_3 = L1_3
          L1_3 = L1_3.hideWithAnimation
          L1_3(L2_3)
        end
      end
    end
    L1_3 = true
    return L1_3
  end
  
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A1_2
  L2_2 = A1_2.addEventListener
  L4_2 = "tap"
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L2_2(L3_2, L4_2, L5_2)
end

hideDialogWithTouch = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 0
  L4_2 = 10
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = math
  L3_2 = L3_2.random
  L4_2 = 0
  L5_2 = 5
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = nil
  L5_2 = 10
  L6_2 = 3
  if A1_2 then
    L4_2 = 1
    A1_2 = false
  else
    L4_2 = -1
    A1_2 = true
  end
  L7_2 = transition
  L7_2 = L7_2.to
  L8_2 = A0_2.mentor
  L9_2 = {}
  L9_2.time = 1800
  L10_2 = A0_2.xPos
  L10_2 = L10_2 + L6_2
  L10_2 = L10_2 + L2_2
  L9_2.x = L10_2
  L10_2 = A0_2.yPos
  L11_2 = L5_2 * L4_2
  L10_2 = L10_2 + L11_2
  L10_2 = L10_2 + L3_2
  L9_2.y = L10_2
  L10_2 = easing
  L10_2 = L10_2.inOutSine
  L9_2.transition = L10_2
  
  function L10_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.floatMentor
    L2_3 = A1_2
    L0_3(L1_3, L2_3)
  end
  
  L9_2.onComplete = L10_2
  L7_2(L8_2, L9_2)
end

floatMentor = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.dialogGroup
  L1_2.xScale = 0.2
  L1_2 = A0_2.dialogGroup
  L1_2.yScale = 0.2
  L1_2 = transition
  L1_2 = L1_2.to
  L2_2 = A0_2.dialogGroup
  L3_2 = {}
  L3_2.time = 200
  L3_2.xScale = 1
  L3_2.yScale = 1
  L3_2.alpha = 1
  L3_2.rotation = 0
  L4_2 = easing
  L4_2 = L4_2.outBack
  L3_2.transition = L4_2
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L0_3.touchIsActive = true
  end
  
  L3_2.onComplete = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.isComplete
  if L1_2 then
    L1_2 = A0_2.callBackFunction
    L1_2()
  end
  L4_1 = A0_2
end

showDialog = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L1_2.name = "hideDialogWithAnimation"
  hideEvent = L1_2
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.dispatchEvent
  L3_2 = hideEvent
  L1_2(L2_2, L3_2)
  L1_2 = transition
  L1_2 = L1_2.to
  L2_2 = A0_2.dialogGroup
  L3_2 = {}
  L3_2.time = 200
  L3_2.delay = 100
  L3_2.xScale = 0.2
  L3_2.yScale = 0.2
  L3_2.alpha = 0.6
  L3_2.rotation = 30
  L4_2 = easing
  L4_2 = L4_2.inBack
  L3_2.transition = L4_2
  L3_2.tag = "xxx"
  
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = A0_2
    L1_3 = L1_3.dialogGroup
    L2_3 = {}
    L2_3.time = 200
    L2_3.alpha = 0
    L3_3 = easing
    L3_3 = L3_3.outBounce
    L2_3.transition = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L3_2.onComplete = L4_2
  L1_2(L2_2, L3_2)
end

hideDialog = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L1_2.name = "dialogShown"
  L6_1 = L1_2
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.dispatchEvent
  L3_2 = L6_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.mentorAlignment
  if L1_2 == "right" then
    L1_2 = A0_2.mentor
    L2_2 = display
    L2_2 = L2_2.contentWidth
    L3_2 = A0_2.mentor
    L3_2 = L3_2.width
    L3_2 = L3_2 / 2
    L2_2 = L2_2 + L3_2
    L1_2.x = L2_2
  else
    L1_2 = A0_2.mentor
    L2_2 = A0_2.mentor
    L2_2 = L2_2.width
    L2_2 = -L2_2
    L2_2 = L2_2 / 2
    L1_2.x = L2_2
  end
  L1_2 = A0_2.mentor
  L2_2 = display
  L2_2 = L2_2.contentHeight
  L2_2 = L2_2 * 0.9
  L1_2.y = L2_2
  L1_2 = A0_2.mentor
  L1_2.alpha = 1
  L1_2 = transition
  L1_2 = L1_2.to
  L2_2 = A0_2.mentor
  L3_2 = {}
  L3_2.time = 300
  L4_2 = A0_2.xPos
  L3_2.x = L4_2
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L5_2 = A0_2.mentor
  L5_2 = L5_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 - L5_2
  L4_2 = L4_2 - 20
  L3_2.y = L4_2
  L4_2 = easing
  L4_2 = L4_2.outBack
  L3_2.transition = L4_2
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.floatMentor
    L0_3(L1_3)
  end
  
  L3_2.onComplete = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = timer
  L1_2 = L1_2.performWithDelay
  L2_2 = 100
  
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.showDialog
    L0_3(L1_3)
  end
  
  L4_2 = 1
  L1_2(L2_2, L3_2, L4_2)
end

showWithAnimation = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L3_2 = A0_2
    L2_2 = A0_2.hideDialog
    L2_2(L3_2)
  end
  L2_2 = timer
  L2_2 = L2_2.performWithDelay
  L3_2 = 1000
  
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L0_3 = L0_3.dialogText
    L1_3 = A1_2
    L0_3.text = L1_3
    L0_3 = A0_2
    L0_3 = L0_3.dialogBox
    L1_3 = L0_3
    L0_3 = L0_3.removeSelf
    L0_3(L1_3)
    L0_3 = A0_2
    L0_3.dialogBox = nil
    L0_3 = A0_2
    L0_3 = L0_3.dialogBoxOptions
    L1_3 = A0_2
    L1_3 = L1_3.dialogText
    L1_3 = L1_3.height
    L2_3 = A0_2
    L2_3 = L2_3.margin
    L2_3 = L2_3 * 2
    L1_3 = L1_3 + L2_3
    L1_3 = L1_3 + 60
    L2_3 = L5_1
    L1_3 = L1_3 + L2_3
    L0_3.height = L1_3
    L0_3 = A0_2
    L1_3 = L1_1
    L1_3 = L1_3.newButton
    L2_3 = A0_2
    L2_3 = L2_3.dialogBoxOptions
    L1_3 = L1_3(L2_3)
    L0_3.dialogBox = L1_3
    L0_3 = A0_2
    L0_3 = L0_3.dialogGroup
    L1_3 = L0_3
    L0_3 = L0_3.insert
    L2_3 = A0_2
    L2_3 = L2_3.dialogBox
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L0_3 = L0_3.dialogBox
    L1_3 = L0_3
    L0_3 = L0_3.toBack
    L0_3(L1_3)
    L0_3 = A0_2
    L0_3 = L0_3.dialogBox
    L1_3 = A0_2
    L1_3 = L1_3.dialogX
    L0_3.x = L1_3
    L0_3 = A0_2
    L0_3 = L0_3.dialogBox
    L1_3 = A0_2
    L1_3 = L1_3.dialogY
    L0_3.y = L1_3
    L0_3 = A0_2
    L0_3 = L0_3.dialogText
    L0_3 = L0_3.height
    if L0_3 < 49 then
      L0_3 = A0_2
      L0_3 = L0_3.dialogGroup
      L1_3 = A0_2
      L1_3 = L1_3.dialogY
      L2_3 = A0_2
      L2_3 = L2_3.mentor
      L2_3 = L2_3.height
      L2_3 = L2_3 / 2
      L1_3 = L1_3 + L2_3
      L0_3.y = L1_3
      L0_3 = A0_2
      L0_3 = L0_3.mode
      if L0_3 == "semi" then
        L0_3 = A0_2
        L0_3 = L0_3.hasButton
        if L0_3 then
          L0_3 = A0_2
          L0_3 = L0_3.dialogGroup
          L1_3 = A0_2
          L1_3 = L1_3.dialogY
          L0_3.y = L1_3
        end
      end
    else
      L0_3 = A0_2
      L0_3 = L0_3.dialogGroup
      L1_3 = A0_2
      L1_3 = L1_3.dialogY
      L0_3.y = L1_3
    end
    L0_3 = A0_2
    L0_3 = L0_3.dialogBox
    L1_3 = L0_3
    L0_3 = L0_3.setEnabled
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L0_3 = L0_3.dialogText
    L1_3 = A0_2
    L1_3 = L1_3.dialogBox
    L1_3 = L1_3.x
    L0_3.x = L1_3
    L0_3 = A0_2
    L0_3 = L0_3.dialogText
    L1_3 = A0_2
    L1_3 = L1_3.dialogBox
    L1_3 = L1_3.y
    L2_3 = A0_2
    L2_3 = L2_3.dialogBox
    L2_3 = L2_3.height
    L2_3 = L2_3 / 2
    L1_3 = L1_3 - L2_3
    L2_3 = A0_2
    L2_3 = L2_3.dialogText
    L2_3 = L2_3.height
    L2_3 = L2_3 / 2
    L1_3 = L1_3 + L2_3
    L1_3 = L1_3 + 18
    L2_3 = A0_2
    L2_3 = L2_3.margin
    L1_3 = L1_3 + L2_3
    L0_3.y = L1_3
    L0_3 = A0_2
    L0_3 = L0_3.hasButton
    if L0_3 then
      L0_3 = A0_2
      L0_3 = L0_3.gotItButton
      L1_3 = A0_2
      L1_3 = L1_3.dialogText
      L1_3 = L1_3.y
      L2_3 = A0_2
      L2_3 = L2_3.dialogText
      L2_3 = L2_3.height
      L2_3 = L2_3 / 2
      L1_3 = L1_3 + L2_3
      L2_3 = A0_2
      L2_3 = L2_3.gotItButton
      L2_3 = L2_3.height
      L2_3 = L2_3 / 2
      L1_3 = L1_3 + L2_3
      L1_3 = L1_3 + 10
      L0_3.y = L1_3
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.showDialog
    L0_3(L1_3)
  end
  
  L5_2 = 1
  L2_2(L3_2, L4_2, L5_2)
end

setValue = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2.touchIsActive = false
  L1_2 = A0_2.dialogGroup
  L1_2 = L1_2.alpha
  if L1_2 == 1 then
    L2_2 = A0_2
    L1_2 = A0_2.hideDialog
    L1_2(L2_2)
  end
  L1_2 = nil
  L2_2 = A0_2.mentorAlignment
  if L2_2 == "right" then
    L2_2 = display
    L2_2 = L2_2.contentWidth
    L3_2 = A0_2.mentor
    L3_2 = L3_2.width
    L1_2 = L2_2 + L3_2
  else
    L2_2 = A0_2.mentor
    L2_2 = L2_2.width
    L1_2 = -L2_2
  end
  L2_2 = display
  L2_2 = L2_2.contentHeight
  L2_2 = L2_2 * 0.9
  L3_2 = timer
  L3_2 = L3_2.performWithDelay
  L4_2 = 50
  L5_2 = transition
  L5_2 = L5_2.cancel
  L6_2 = A0_2.mentor
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = transition
  L3_2 = L3_2.to
  L4_2 = A0_2.mentor
  L5_2 = {}
  L5_2.time = 800
  L5_2.delay = 400
  L5_2.x = L1_2
  L5_2.y = L2_2
  L6_2 = easing
  L6_2 = L6_2.outBack
  L5_2.transition = L6_2
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.removeSelf
    L0_3(L1_3)
    L0_3 = A0_2
    L0_3 = L0_3.callBackFunction
    L0_3()
    L0_3 = nil
    A0_2 = L0_3
  end
  
  L5_2.onComplete = L6_2
  L3_2(L4_2, L5_2)
  L3_2 = nil
  L4_1 = L3_2
end

hideWithAnimation = L7_1

function L7_1()
  local L0_2, L1_2
  L0_2 = L4_1
  if L0_2 ~= nil then
    L0_2 = L4_1
    L1_2 = L0_2
    L0_2 = L0_2.removeSelf
    L0_2(L1_2)
    L0_2 = nil
    L4_1 = L0_2
  end
end

removeCurrentDialog = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L4_2 = L2_1
  L5_2 = A0_2.buttonLabel
  L4_2 = L4_2[L5_2]
  L3_2.label = L4_2
  L3_2.width = 75
  L3_2.height = 22
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "BattleItems/next.png"
  L4_2 = L4_2 .. L5_2
  L3_2.defaultFile = L4_2
  
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L0_3 = L0_3.touchIsActive
    if L0_3 then
      L0_3 = A0_2
      L0_3 = L0_3.counter
      L1_3 = A0_2
      L1_3 = L1_3.textValue
      L1_3 = #L1_3
      if L0_3 ~= L1_3 then
        L0_3 = A0_2
        L0_3.touchIsActive = false
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.setValue
        L2_3 = A0_2
        L2_3 = L2_3.textValue
        L3_3 = A0_2
        L3_3 = L3_3.counter
        L3_3 = L3_3 + 1
        L2_3 = L2_3[L3_3]
        L0_3(L1_3, L2_3)
        L0_3 = A0_2
        L1_3 = A0_2
        L1_3 = L1_3.counter
        L1_3 = L1_3 + 1
        L0_3.counter = L1_3
      else
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.hideWithAnimation
        L0_3(L1_3)
      end
    end
  end
  
  L3_2.onRelease = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.gotItButton = L1_2
  L1_2 = A0_2.dialogGroup
  L2_2 = L1_2
  L1_2 = L1_2.insert
  L3_2 = A0_2.gotItButton
  L3_2 = L3_2.view
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.gotItButton
  L1_2 = L1_2.height
  L1_2 = L1_2 + 10
  L5_1 = L1_2
end

createButton = L7_1
