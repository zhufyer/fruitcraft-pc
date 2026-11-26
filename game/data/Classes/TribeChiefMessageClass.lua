local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.ParentStandardBaseOverlayClass"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Components.TDButtonView"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "composer"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "widget"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Utils.Toolbox"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.ActivityIndicatorView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Models.Tribe"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Utils.KeyboardAvoider"
L8_1 = L8_1(L9_1)
L9_1 = setmetatable
L10_1 = _M
L11_1 = L0_1
L9_1(L10_1, L11_1)
L9_1 = _M
L10_1 = _M
L9_1.__index = L10_1
L9_1 = _M
L10_1 = nil
L11_1 = nil

function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.phase
  if "submitted" == L1_2 then
    L1_2 = A0_2.target
    L2_2 = L10_1
    if L1_2 == L2_2 then
      L1_2 = native
      L1_2 = L1_2.setKeyboardFocus
      L2_2 = L11_1
      L1_2(L2_2)
    else
      L1_2 = L8_1
      L1_2 = L1_2.dismiss
      L1_2()
    end
  end
end

function L13_1()
  local L0_2, L1_2, L2_2
  L0_2 = L6_1
  L0_2 = L0_2.hide
  L0_2()
  L0_2 = showSimpleDialog
  L1_2 = "Tribe Chief Message"
  L2_2 = L1_1
  L2_2 = L2_2["Successful Tribe Chief Message"]
  L0_2(L1_2, L2_2)
end

function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L6_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "Tribe Chief Message"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L11_1
  L0_2.isVisible = false
  L0_2 = L10_1
  L0_2.isVisible = false
  L0_2 = L6_1
  L0_2 = L0_2.show
  L0_2()
  L0_2 = nil
  L1_2 = nil
  L2_2 = L10_1
  if L2_2 then
    L2_2 = L10_1
    L2_2 = L2_2.text
    if L2_2 == "" then
      L2_2 = L1_1
      L0_2 = L2_2["No Title"]
    else
      L2_2 = L5_1
      L2_2 = L2_2.stringUTFLength
      L3_2 = L10_1
      L3_2 = L3_2.text
      L2_2 = L2_2(L3_2)
      L3_2 = Constants
      L3_2 = L3_2.Tribe_ChiefMessageTitleCharacterLimit
      if L2_2 > L3_2 then
        L2_2 = L6_1
        L2_2 = L2_2.hide
        L2_2()
        L2_2 = showSimpleDialog
        L3_2 = "Tribe Chief Message"
        L4_2 = "Long Title Alert"
        L5_2 = "OK"
        
        function L6_2()
          local L0_3, L1_3
          L0_3 = L3_1
          L0_3 = L0_3.showOverlay
          L1_3 = "Scenes.TribeChiefMessageOverlay"
          L0_3(L1_3)
        end
        
        L2_2(L3_2, L4_2, L5_2, L6_2)
        return
      else
        L2_2 = L10_1
        L0_2 = L2_2.text
      end
    end
  end
  L2_2 = L11_1
  if L2_2 then
    L2_2 = L11_1
    L2_2 = L2_2.text
    if L2_2 == "" then
      L2_2 = L6_1
      L2_2 = L2_2.hide
      L2_2()
      L2_2 = showSimpleDialog
      L3_2 = "Tribe Chief Message"
      L4_2 = "Empty Message Body Alert"
      L5_2 = "OK"
      
      function L6_2()
        local L0_3, L1_3
        L0_3 = L3_1
        L0_3 = L0_3.showOverlay
        L1_3 = "Scenes.TribeChiefMessageOverlay"
        L0_3(L1_3)
      end
      
      L2_2(L3_2, L4_2, L5_2, L6_2)
      return
    else
      L2_2 = L5_1
      L2_2 = L2_2.stringUTFLength
      L3_2 = L11_1
      L3_2 = L3_2.text
      L2_2 = L2_2(L3_2)
      L3_2 = Constants
      L3_2 = L3_2.Tribe_ChiefMessageBodyCharacterLimit
      if L2_2 > L3_2 then
        L2_2 = L6_1
        L2_2 = L2_2.hide
        L2_2()
        L2_2 = showSimpleDialog
        L3_2 = "Tribe Chief Message"
        L4_2 = "Long Body Message Alert"
        L5_2 = "OK"
        
        function L6_2()
          local L0_3, L1_3
          L0_3 = L3_1
          L0_3 = L0_3.showOverlay
          L1_3 = "Scenes.TribeChiefMessageOverlay"
          L0_3(L1_3)
        end
        
        L2_2(L3_2, L4_2, L5_2, L6_2)
        return
      else
        L2_2 = L11_1
        L1_2 = L2_2.text
      end
    end
  end
  L2_2 = L7_1
  L2_2 = L2_2.broadcastChiefMessage
  L3_2 = L0_2
  L4_2 = L1_2
  L5_2 = L13_1
  L6_2 = L14_1
  L2_2(L3_2, L4_2, L5_2, L6_2)
end

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = L0_1
  L2_2 = L2_2.create
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = display
  L2_2 = L2_2.newRoundedRect
  L3_2 = A0_2.contentGroup
  L4_2 = 0
  L5_2 = 0
  L6_2 = 280
  L7_2 = 295
  L8_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.strokeWidth = 2
  L4_2 = L2_2
  L3_2 = L2_2.setStrokeColor
  L5_2 = Constants
  L5_2 = L5_2.greenColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L4_2 = L2_2
  L3_2 = L2_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.whiteColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L2_2.x = 0
  L2_2.y = 0
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A0_2.contentGroup
  L5_2 = L1_1
  L5_2 = L5_2["Tribe Chief Message"]
  L6_2 = 0
  L7_2 = 0
  L8_2 = Constants
  L8_2 = L8_2.fontForTitle
  L8_2 = L8_2()
  L9_2 = 20
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = Constants
  L6_2 = L6_2.darkBlueColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L4_2 = L2_2.x
  L3_2.x = L4_2
  L4_2 = L2_2.height
  L4_2 = -L4_2
  L4_2 = L4_2 / 2
  L4_2 = L4_2 + 10
  L5_2 = L3_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L3_2.y = L4_2
  L4_2 = L2_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = {}
  L6_2.width = 30
  L6_2.height = 30
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "BattleItems/close.png"
  L7_2 = L7_2 .. L8_2
  L6_2.imageName = L7_2
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = L9_1
    L0_3 = L0_3.hideWithAnimation
    L1_3 = A0_2
    L0_3(L1_3)
  end
  
  L6_2.onRelease = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2.contentGroup
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L4_2.view
  L5_2(L6_2, L7_2)
  L5_2 = L2_2.width
  L5_2 = -L5_2
  L5_2 = L5_2 / 2
  L5_2 = L5_2 + 10
  L6_2 = L4_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L4_2.x = L5_2
  L5_2 = L3_2.y
  L4_2.y = L5_2
  L5_2 = display
  L5_2 = L5_2.newRoundedRect
  L6_2 = A0_2.contentGroup
  L7_2 = 0
  L8_2 = 0
  L9_2 = L2_2.width
  L9_2 = L9_2 - 20
  L10_2 = L2_2.height
  L10_2 = L10_2 - 60
  L11_2 = 3
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = L5_2
  L6_2 = L5_2.setFillColor
  L8_2 = Constants
  L8_2 = L8_2.lightBlueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L7_2 = L5_2
  L6_2 = L5_2.setStrokeColor
  L8_2 = Constants
  L8_2 = L8_2.blueColor
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2()
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L5_2.strokeWidth = 1
  L6_2 = L2_2.x
  L5_2.x = L6_2
  L6_2 = L2_2.y
  L6_2 = L6_2 + 20
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
  L6_2 = display
  L6_2 = L6_2.newText
  L7_2 = A0_2.internalContentGroup
  L8_2 = L1_1
  L8_2 = L8_2["Message Title Label"]
  L9_2 = 0
  L10_2 = 0
  L11_2 = Constants
  L11_2 = L11_2.fontForTitle
  L11_2 = L11_2()
  L12_2 = 12
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = A0_2.internalContentGroup
  L9_2 = L1_1
  L9_2 = L9_2["Message Body Label"]
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
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L9_2 = L6_2
  L8_2 = L6_2.setFillColor
  L10_2 = Constants
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L8_2 = L5_2.y
  L9_2 = L5_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L8_2 = L8_2 + 10
  L9_2 = L6_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L6_2.y = L8_2
  L8_2 = display
  L8_2 = L8_2.newRoundedRect
  L9_2 = A0_2.internalContentGroup
  L10_2 = 0
  L11_2 = 0
  L12_2 = L5_2.width
  L12_2 = L12_2 * 0.6
  L13_2 = 30
  L14_2 = 5
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L10_2 = L8_2
  L9_2 = L8_2.setFillColor
  L11_2 = Constants
  L11_2 = L11_2.blueColor
  L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2()
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L9_2 = L6_2.y
  L10_2 = L6_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L9_2 = L9_2 + 5
  L10_2 = L8_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L8_2.y = L9_2
  L9_2 = L8_2.y
  L10_2 = L8_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L9_2 = L9_2 + 5
  L10_2 = L7_2.height
  L10_2 = L10_2 / 2
  L9_2 = L9_2 + L10_2
  L7_2.y = L9_2
  L9_2 = display
  L9_2 = L9_2.newRoundedRect
  L10_2 = A0_2.internalContentGroup
  L11_2 = 0
  L12_2 = 0
  L13_2 = L5_2.width
  L13_2 = L13_2 * 0.6
  L14_2 = L5_2.height
  L14_2 = L14_2 * 0.4
  L15_2 = 5
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L11_2 = L9_2
  L10_2 = L9_2.setFillColor
  L12_2 = Constants
  L12_2 = L12_2.blueColor
  L12_2, L13_2, L14_2, L15_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = L7_2.y
  L11_2 = L7_2.height
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L10_2 = L10_2 + 5
  L11_2 = L9_2.height
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L9_2.y = L10_2
  L10_2 = native
  L10_2 = L10_2.newTextField
  L11_2 = L8_2.x
  L12_2 = L8_2.y
  L13_2 = L8_2.width
  L13_2 = L13_2 * 0.92
  L14_2 = L8_2.height
  L14_2 = L14_2 * 0.92
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  L10_1 = L10_2
  L10_2 = A0_2.internalContentGroup
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = L10_1
  L10_2(L11_2, L12_2)
  L10_2 = L10_1
  L10_2.isVisible = false
  L10_2 = L10_1
  L10_2.isEditable = true
  L10_2 = L10_1
  L11_2 = L10_2
  L10_2 = L10_2.setTextColor
  L12_2 = Constants
  L12_2 = L12_2.darkBlueColor
  L12_2, L13_2, L14_2, L15_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = L10_1
  L11_2 = L10_2
  L10_2 = L10_2.resizeFontToFitHeight
  L10_2(L11_2)
  L10_2 = L10_1
  L11_2 = L10_2
  L10_2 = L10_2.addEventListener
  L12_2 = "userInput"
  L13_2 = L12_1
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = L10_1
  L11_2 = L10_2
  L10_2 = L10_2.setReturnKey
  L12_2 = "next"
  L10_2(L11_2, L12_2)
  L10_2 = native
  L10_2 = L10_2.newTextField
  L11_2 = L9_2.x
  L12_2 = L9_2.y
  L13_2 = L9_2.width
  L13_2 = L13_2 * 0.92
  L14_2 = L9_2.height
  L14_2 = L14_2 * 0.92
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  L11_1 = L10_2
  L10_2 = A0_2.internalContentGroup
  L11_2 = L10_2
  L10_2 = L10_2.insert
  L12_2 = L11_1
  L10_2(L11_2, L12_2)
  L10_2 = L11_1
  L10_2.isVisible = false
  L10_2 = L11_1
  L10_2.isEditable = true
  L10_2 = L11_1
  L11_2 = L10_2
  L10_2 = L10_2.setTextColor
  L12_2 = Constants
  L12_2 = L12_2.darkBlueColor
  L12_2, L13_2, L14_2, L15_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = L11_1
  L11_2 = L10_2
  L10_2 = L10_2.resizeFontToFitHeight
  L10_2(L11_2)
  L10_2 = L11_1
  L11_2 = L10_2
  L10_2 = L10_2.addEventListener
  L12_2 = "userInput"
  L13_2 = L12_1
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = L11_1
  L11_2 = Constants
  L11_2 = L11_2.nativeFontForTextFields
  L11_2 = L11_2()
  L10_2.font = L11_2
  L10_2 = L11_1
  L11_2 = L10_2
  L10_2 = L10_2.setReturnKey
  L12_2 = "done"
  L10_2(L11_2, L12_2)
  L10_2 = {}
  L11_2 = L5_2.width
  L11_2 = L11_2 * 0.3
  L10_2.width = L11_2
  L10_2.height = 22
  L11_2 = L1_1
  L11_2 = L11_2.Send
  L10_2.label = L11_2
  L11_2 = Constants
  L11_2 = L11_2.fontForTitle
  L11_2 = L11_2()
  L10_2.font = L11_2
  L10_2.fontSize = 10
  L11_2 = Constants
  L11_2 = L11_2.Path_Assets
  L12_2 = "Buttons/FC-Select-Deck6.png"
  L11_2 = L11_2 .. L12_2
  L10_2.imageName = L11_2
  L11_2 = L15_1
  L10_2.onRelease = L11_2
  L11_2 = L2_1
  L12_2 = L11_2
  L11_2 = L11_2.new
  L13_2 = L10_2
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = A0_2.internalContentGroup
  L13_2 = L12_2
  L12_2 = L12_2.insert
  L14_2 = L11_2.view
  L12_2(L13_2, L14_2)
  L12_2 = L5_2.y
  L13_2 = L5_2.height
  L13_2 = L13_2 / 2
  L12_2 = L12_2 + L13_2
  L12_2 = L12_2 - 10
  L13_2 = L11_2.height
  L13_2 = L13_2 / 2
  L12_2 = L12_2 - L13_2
  L11_2.y = L12_2
end

create = L16_1

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  L2_2 = L2_2.show
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.phase
  if L2_2 == "did" then
    L2_2 = L11_1
    L2_2.isVisible = true
    L2_2 = L10_1
    L2_2.isVisible = true
  end
end

show = L16_1

function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  L2_2 = L2_2.hide
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.phase
  if L2_2 == "will" then
    L2_2 = L11_1
    L2_2.isVisible = false
    L2_2 = L10_1
    L2_2.isVisible = false
    L2_2 = native
    L2_2 = L2_2.setKeyboardFocus
    L3_2 = nil
    L2_2(L3_2)
  end
end

hide = L16_1
