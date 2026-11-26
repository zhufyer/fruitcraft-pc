local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.BaseView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Components.TDButtonView"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.ActivityIndicatorView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Models.Player"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Models.MessagePipe"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Views.EffectsManager"
L6_1 = L6_1(L7_1)
L7_1 = setmetatable
L8_1 = _M
L9_1 = {}
L9_1.__index = L0_1
L7_1(L8_1, L9_1)

function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L0_1
  L3_2 = L3_2.newWithParams
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2.callbackFunction
  L3_2.callbackFunction = L4_2
  L4_2 = A1_2.textFieldObject
  L3_2.textFieldObject = L4_2
  L4_2 = {}
  L5_2 = L2_1
  L5_2 = L5_2["Trainer Status"]
  L4_2.label = L5_2
  L4_2.width = 80
  L4_2.height = 30
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "Buttons/FC-Select-Deck6.png"
  L5_2 = L5_2 .. L6_2
  L4_2.defaultFile = L5_2
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "Buttons/FC-gui-select.png"
  L5_2 = L5_2 .. L6_2
  L4_2.overFile = L5_2
  
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = L6_1
    L1_3 = L1_3.removePoint
    L1_3()
    L1_3 = mainPlayer
    L1_3 = L1_3.coachTribeID
    if L1_3 then
      L1_3 = L5_1
      L1_3 = L1_3.unsubscribeForCoachChat
      L2_3 = mainPlayer
      L2_3 = L2_3.coachTribeID
      L1_3(L2_3)
    end
    L1_3 = L3_2
    L2_3 = L1_3
    L1_3 = L1_3.alert
    L1_3(L2_3)
  end
  
  L4_2.onRelease = L5_2
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L3_2.isTrainerButton = L5_2
  L5_2 = L3_2.view
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L3_2.isTrainerButton
  L7_2 = L7_2.view
  L5_2(L6_2, L7_2)
  L5_2 = L3_2.isTrainerButton
  L5_2 = L5_2.view
  L5_2.isVisible = false
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "Buttons/FC-gui.png"
  L5_2 = L5_2 .. L6_2
  L4_2.defaultFile = L5_2
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "Buttons/FC-gui-select.png"
  L5_2 = L5_2 .. L6_2
  L4_2.overFile = L5_2
  L5_2 = {}
  L6_2 = 1
  L7_2 = 1
  L8_2 = 1
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L4_2.labelColor = L5_2
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L3_2.isNotTrainerButton = L5_2
  L5_2 = L3_2.view
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L3_2.isNotTrainerButton
  L7_2 = L7_2.view
  L5_2(L6_2, L7_2)
  L5_2 = L3_2.isNotTrainerButton
  L5_2 = L5_2.view
  L5_2.isVisible = false
  L6_2 = L3_2
  L5_2 = L3_2.setStatus
  L7_2 = A1_2.initialStatus
  L5_2(L6_2, L7_2)
  return L3_2
end

new = L7_1

function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 then
    L5_2 = A0_2.isTrainerButton
    L5_2 = L5_2.view
    L5_2.isVisible = true
    L5_2 = A0_2.isNotTrainerButton
    L5_2 = L5_2.view
    L5_2.isVisible = false
    L3_2 = A0_2.onStatusXPos
    L4_2 = A0_2.onStatusYPos
  else
    L5_2 = A0_2.isTrainerButton
    L5_2 = L5_2.view
    L5_2.isVisible = false
    L5_2 = A0_2.isNotTrainerButton
    L5_2 = L5_2.view
    L5_2.isVisible = true
    L3_2 = A0_2.offStatusXPos
    L4_2 = A0_2.offStatusYPos
  end
  if L3_2 and L4_2 then
    L5_2 = A0_2.view
    L5_2.x = L3_2
    L5_2 = A0_2.view
    L5_2.y = L4_2
  end
  if A2_2 then
    L5_2 = A2_2
    L5_2()
  end
end

setStatus = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.textFieldObject
  L1_2.isVisible = false
  L1_2 = nil
  L2_2 = A0_2.isTutorial
  if L2_2 then
    L1_2 = true
  end
  L2_2 = showSimpleDialog
  L3_2 = L2_1
  L3_2 = L3_2["Status Alert Title"]
  L4_2 = L2_1
  L4_2 = L4_2["Status Alert Text"]
  L5_2 = L2_1
  L5_2 = L5_2.Yes
  
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.performAPICall
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  
  L7_2 = L2_1
  L7_2 = L7_2.No
  
  function L8_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.performAPICall
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  
  L9_2 = L1_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end

alert = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.isTutorial
  if L2_2 then
    A0_2.isTutorial = nil
  end
  L2_2 = L3_1
  L2_2 = L2_2.show
  L3_2 = L2_1
  L3_2 = L3_2["Trainer Status"]
  L2_2(L3_2)
  L2_2 = L4_1
  L2_2 = L2_2.coach
  L3_2 = A1_2
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.coachSuccessCallback
    L0_3(L1_3)
  end
  
  L5_2 = coachFailureCallback
  L2_2(L3_2, L4_2, L5_2)
end

performAPICall = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = mainPlayer
  L1_2 = L1_2.trainer
  if L1_2 then
    L1_2 = L5_1
    L1_2 = L1_2.subscribeForCoachChat
    L2_2 = mainPlayer
    L2_2 = L2_2.coachTribeID
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.setStatus
  L3_2 = mainPlayer
  L3_2 = L3_2.trainer
  L4_2 = A0_2.callbackFunction
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.textFieldObject
  L2_2 = mainPlayer
  L2_2 = L2_2.trainer
  L1_2.isVisible = L2_2
end

coachSuccessCallback = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = L2_1
  L2_2 = L2_2["Status Alert Title"]
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

coachFailureCallback = L7_1
