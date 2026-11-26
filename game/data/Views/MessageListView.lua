local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1
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
L3_1 = "Models.Message"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.ActivityIndicatorView"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "composer"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Models.Tribe"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "json"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Models.MessagePipe"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Utils.Toolbox"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Data.Avatars"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Views.CachedImageView"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Views.ProfileOverlay"
L11_1 = L11_1(L12_1)
L12_1 = require
L13_1 = "Components.TDButtonView"
L12_1 = L12_1(L13_1)
L13_1 = require
L14_1 = "Components.TDProgressBarView"
L13_1 = L13_1(L14_1)
L14_1 = require
L15_1 = "Views.TrainerStatusButtonView"
L14_1 = L14_1(L15_1)
L15_1 = nil
L16_1 = nil
L17_1 = nil
L18_1 = nil
L19_1 = nil
L20_1 = false
isLoading = L20_1

function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end

function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = _serverType
  if L2_2 == "mycountry" then
    L2_2 = mainPlayer
    L2_2 = L2_2.mobileNumberVerified
    if not L2_2 then
      goto lbl_11
    end
  end
  L2_2 = A1_2
  L2_2()
  goto lbl_23
  ::lbl_11::
  L2_2 = A0_2.messageField
  L2_2.isVisible = false
  L2_2 = L4_1
  L2_2 = L2_2.showOverlay
  L3_2 = "Scenes.GetPhoneNumberOverlay"
  L4_2 = {}
  L5_2 = {}
  L5_2.completionCallback = A1_2
  L6_2 = A0_2.messageField
  L5_2.textFieldObject = L6_2
  L4_2.params = L5_2
  L2_2(L3_2, L4_2)
  ::lbl_23::
end

function L22_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.messageField
  if L1_2 ~= nil then
    L1_2 = A0_2.messageField
    L1_2.isVisible = false
  end
  L1_2 = native
  L1_2 = L1_2.setKeyboardFocus
  L2_2 = nil
  L1_2(L2_2)
end

hide = L22_1

function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.mode
  if L1_2 == 1 then
    L1_2 = L3_1
    L1_2 = L1_2.show
    L2_2 = L1_1
    L2_2 = L2_2["Fetching Messages"]
    L1_2(L2_2)
    L1_2 = true
    isLoading = L1_2
    L1_2 = A0_2.isChiefMessage
    if L1_2 then
      L1_2 = L2_1
      L1_2 = L1_2.fetchTribeBroadcastMessages
      
      function L2_2(A0_3)
        local L1_3, L2_3, L3_3
        L1_3 = didFetchMessages
        L2_3 = A0_2
        L3_3 = A0_3
        L1_3(L2_3, L3_3)
      end
      
      function L3_2(A0_3)
        local L1_3, L2_3, L3_3
        L1_3 = failedToFetchMessages
        L2_3 = A0_2
        L3_3 = A0_3
        L1_3(L2_3, L3_3)
      end
      
      L1_2(L2_2, L3_2)
    else
      L1_2 = L2_1
      L1_2 = L1_2.fetchSystemMessages
      
      function L2_2(A0_3)
        local L1_3, L2_3, L3_3
        L1_3 = didFetchMessages
        L2_3 = A0_2
        L3_3 = A0_3
        L1_3(L2_3, L3_3)
      end
      
      function L3_2(A0_3)
        local L1_3, L2_3, L3_3
        L1_3 = failedToFetchMessages
        L2_3 = A0_2
        L3_3 = A0_3
        L1_3(L2_3, L3_3)
      end
      
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = A0_2.messageField
  if L1_2 ~= nil then
    L1_2 = isLoading
    if not L1_2 then
      L1_2 = A0_2.mode
      if L1_2 == 2 then
        L1_2 = A0_2.messageField
        L1_2.isVisible = true
      end
    end
  end
  L1_2 = A0_2.mode
  if L1_2 == 2 then
    L1_2 = A0_2.trainer
    if L1_2 then
      L1_2 = A0_2.trainerStatusButton
      L2_2 = L1_2
      L1_2 = L1_2.setStatus
      L3_2 = mainPlayer
      L3_2 = L3_2.trainer
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2.setChatItemsVisibility
      L3_2 = mainPlayer
      L3_2 = L3_2.trainer
      L1_2(L2_2, L3_2)
      L1_2 = A0_2.traineeProgressBar
      L2_2 = L1_2
      L1_2 = L1_2.setValue
      L3_2 = getTrainerProgressionAmount
      L3_2 = L3_2()
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = A0_2.traineeProgressBar
      L1_2 = L1_2.label
      L2_2 = L1_1
      L2_2 = L2_2.localizedString
      L3_2 = "Trained Progression Label"
      L4_2 = {}
      L5_2 = L1_1
      L5_2 = L5_2.adjustNumber
      L6_2 = mainPlayer
      L6_2 = L6_2.numberOfTrainedPlayers
      L5_2 = L5_2(L6_2)
      L4_2.trained = L5_2
      L5_2 = L1_1
      L5_2 = L5_2.adjustNumber
      L6_2 = getCapacityOfTrainerProgression
      L6_2 = L6_2()
      L5_2 = L5_2(L6_2)
      L4_2.capacity = L5_2
      L5_2 = L1_1
      L5_2 = L5_2.adjustNumber
      L6_2 = getLevelOfTrainerProgression
      L6_2 = L6_2()
      L5_2 = L5_2(L6_2)
      L4_2.level = L5_2
      L2_2 = L2_2(L3_2, L4_2)
      L1_2.text = L2_2
    end
  end
end

show = L22_1

function L22_1(A0_2, A1_2)
  local L2_2, L3_2
  A1_2.isDecide = true
  L2_2 = L3_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = A0_2.buttons1
  L3_2 = A1_2.id
  L2_2 = L2_2[L3_2]
  L2_2.isVisible = false
  L2_2 = A0_2.buttons2
  L3_2 = A1_2.id
  L2_2 = L2_2[L3_2]
  L2_2.isVisible = false
  L2_2 = A0_2.buttons3
  L3_2 = A1_2.id
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L2_2 = A0_2.buttons3
    L3_2 = A1_2.id
    L2_2 = L2_2[L3_2]
    L2_2.isVisible = false
  end
end

successToAcceptJionRequestCallBack = L22_1

function L22_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "Requests"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

failedToAcceptJionRequestCallback = L22_1

function L22_1(A0_2, A1_2)
  local L2_2, L3_2
  A1_2.isDecide = true
  L2_2 = L3_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = A0_2.buttons1
  L3_2 = A1_2.id
  L2_2 = L2_2[L3_2]
  L2_2.isVisible = false
  L2_2 = A0_2.buttons2
  L3_2 = A1_2.id
  L2_2 = L2_2[L3_2]
  L2_2.isVisible = false
  L2_2 = A0_2.buttons3
  L3_2 = A1_2.id
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L2_2 = A0_2.buttons3
    L3_2 = A1_2.id
    L2_2 = L2_2[L3_2]
    L2_2.isVisible = false
  end
end

successToRejectJoinRequestCallBack = L22_1

function L22_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "Requests"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

failedToRejectJoinRequestCallback = L22_1

function L22_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = L3_1
  L3_2 = L3_2.hide
  L3_2()
  A2_2.isDecide = true
  L3_2 = L4_1
  L3_2 = L3_2.removeScene
  L4_2 = "Scenes.RankingsScene"
  L3_2(L4_2)
  L3_2 = hub
  if L3_2 ~= nil then
    L3_2 = hub
    L4_2 = L3_2
    L3_2 = L3_2.removeHub
    L3_2(L4_2)
    L3_2 = nil
    hub = L3_2
    L3_2 = L7_1
    L3_2 = L3_2.createHub
    L3_2()
    L3_2 = hub
    L3_2 = L3_2.init
    L3_2()
  end
  L3_2 = L4_1
  L3_2 = L3_2.gotoScene
  L4_2 = "Scenes.Home"
  L3_2(L4_2)
end

successToAcceptInviteRequestCallBack = L22_1

function L22_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "Requests"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

failedToAcceptInviteRequestCallback = L22_1

function L22_1(A0_2, A1_2)
  local L2_2, L3_2
  A1_2.isDecide = true
  L2_2 = L3_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = A0_2.buttons1
  L3_2 = A1_2.id
  L2_2 = L2_2[L3_2]
  L2_2.isVisible = false
  L2_2 = A0_2.buttons2
  L3_2 = A1_2.id
  L2_2 = L2_2[L3_2]
  L2_2.isVisible = false
end

successToRejectInviteRequestCallBack = L22_1

function L22_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L3_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "Requests"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end

failedToRejectInviteRequestCallback = L22_1

function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = {}
  A0_2.results = L2_2
  L2_2 = {}
  A0_2.titles = L2_2
  L2_2 = false
  isLoading = L2_2
  L2_2 = log3
  L3_2 = "Number of messages "
  L4_2 = #A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.list
  L3_2 = L2_2
  L2_2 = L2_2.deleteAllRows
  L2_2(L3_2)
  L2_2 = #A1_2
  if L2_2 == 0 then
    L2_2 = A0_2.list
    L3_2 = L2_2
    L2_2 = L2_2.insertRow
    L4_2 = {}
    L4_2.rowHeight = 50
    L4_2.id = -1
    L2_2(L3_2, L4_2)
  else
    L2_2 = pairs
    L3_2 = A1_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L6_2.messageType
      if L7_2 ~= -1 then
        L7_2 = A0_2.results
        L8_2 = L6_2.id
        L7_2[L8_2] = L6_2
        L7_2 = L6_2.title
        if L7_2 then
          L7_2 = A0_2.titles
          L8_2 = L6_2.id
          L9_2 = L6_2.title
          L7_2[L8_2] = L9_2
        end
        L7_2 = L1_1
        L7_2 = L7_2.lang
        if L7_2 ~= "fa" then
          L7_2 = L1_1
          L7_2 = L7_2.lang
          if L7_2 ~= "ar" then
            goto lbl_54
          end
        end
        L7_2 = "\226\128\143 \226\128\143\226\128\143"
        L8_2 = L6_2.text
        L7_2 = L7_2 .. L8_2
        L6_2.text = L7_2
        goto lbl_58
        ::lbl_54::
        L7_2 = "\226\128\142 \226\128\142"
        L8_2 = L6_2.text
        L7_2 = L7_2 .. L8_2
        L6_2.text = L7_2
        ::lbl_58::
        L7_2 = A0_2.list
        L8_2 = L7_2
        L7_2 = L7_2.insertRow
        L9_2 = {}
        L11_2 = A0_2
        L10_2 = A0_2.messageHeight
        L12_2 = L6_2
        L10_2 = L10_2(L11_2, L12_2)
        L10_2 = 20 + L10_2
        L9_2.rowHeight = L10_2
        L10_2 = L6_2.id
        L9_2.id = L10_2
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
      end
    end
  end
  L2_2 = L3_1
  L2_2 = L2_2.hide
  L2_2()
end

didFetchMessages = L22_1

function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = false
  isLoading = L2_2
  L2_2 = L3_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = showSimpleDialog
  L3_2 = "Message Fetch"
  L4_2 = A1_2
  L5_2 = nil
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = chatView
    if L0_3 ~= nil then
      L0_3 = A0_2
      L0_3 = L0_3.isNotification
      if not L0_3 then
        L0_3 = false
        isNotification = L0_3
        L0_3 = show
        L1_3 = chatView
        L0_3(L1_3)
      end
    end
  end
  
  L2_2(L3_2, L4_2, L5_2, L6_2)
end

failedToFetchMessages = L22_1

function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.text
  if L2_2 == nil then
    L2_2 = 30
    return L2_2
  end
  L2_2 = A1_2.messageType
  if L2_2 ~= 4 then
    L2_2 = A1_2.messageType
    if L2_2 ~= 2 then
      goto lbl_15
    end
  end
  L2_2 = 40
  do return L2_2 end
  goto lbl_91
  ::lbl_15::
  L2_2 = A1_2.messageType
  if L2_2 ~= 1 then
    L2_2 = A1_2.messageType
    if L2_2 ~= 18 then
      goto lbl_56
    end
  end
  L2_2 = A1_2.link
  if L2_2 then
    L2_2 = math
    L2_2 = L2_2.floor
    L3_2 = L8_1
    L3_2 = L3_2.stringUTFLength
    L4_2 = A1_2.text
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2.charsPerLine
    L4_2 = L4_2 - 17
    L3_2 = L3_2 / L4_2
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2 + 1
    L3_2 = A0_2.lineHeight
    L2_2 = L2_2 * L3_2
    L2_2 = L2_2 + 10
    return L2_2
  else
    L2_2 = math
    L2_2 = L2_2.floor
    L3_2 = L8_1
    L3_2 = L3_2.stringUTFLength
    L4_2 = A1_2.text
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2.charsPerLine
    L4_2 = L4_2 - 17
    L3_2 = L3_2 / L4_2
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2 + 1
    L3_2 = A0_2.lineHeight
    L2_2 = L2_2 * L3_2
    L2_2 = L2_2 + 10
    do return L2_2 end
    goto lbl_91
    ::lbl_56::
    L2_2 = A1_2.messageType
    if L2_2 ~= 7 then
      L2_2 = A1_2.messageType
      if L2_2 ~= 8 then
        goto lbl_78
      end
    end
    L2_2 = math
    L2_2 = L2_2.floor
    L3_2 = L8_1
    L3_2 = L3_2.stringUTFLength
    L4_2 = A1_2.text
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2.charsPerLine
    L4_2 = L4_2 - 17
    L3_2 = L3_2 / L4_2
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2 + 1
    L3_2 = A0_2.lineHeight
    L2_2 = L2_2 * L3_2
    L2_2 = L2_2 + 10
    do return L2_2 end
    goto lbl_91
    ::lbl_78::
    L2_2 = L1_1
    L2_2 = L2_2.lang
    if L2_2 ~= "fa" then
      L2_2 = L1_1
      L2_2 = L2_2.lang
      if L2_2 ~= "ar" then
        goto lbl_89
      end
    end
    L2_2 = 30
    do return L2_2 end
    goto lbl_91
    ::lbl_89::
    L2_2 = 30
    return L2_2
  end
  ::lbl_91::
end

messageHeight = L22_1

function L22_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.width
  L2_2 = L2_2 / 2
  L2_2 = L2_2 + 5
  return L2_2
end

messageX = L22_1

function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
  L1_2 = A0_2.row
  L2_2 = A0_2.row
  L3_2 = A0_2.target
  L3_2 = L3_2.delegate
  L4_2 = 35
  L5_2 = 3
  L6_2 = L2_2.id
  if L6_2 == -1 then
    L6_2 = display
    L6_2 = L6_2.newRoundedRect
    L7_2 = L1_2
    L8_2 = 10
    L9_2 = 4
    L10_2 = L3_2.width
    L10_2 = L10_2 - 20
    L11_2 = L2_2.contentHeight
    L11_2 = L11_2 - 8
    L12_2 = 3
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    L7_2 = L3_2.width
    L7_2 = L7_2 / 2
    L7_2 = L7_2 + 2
    L6_2.x = L7_2
    L7_2 = L2_2.contentHeight
    L7_2 = L7_2 / 2
    L6_2.y = L7_2
    L6_2.strokeWidth = 1
    L8_2 = L6_2
    L7_2 = L6_2.setStrokeColor
    L9_2 = Constants
    L9_2 = L9_2.blueColor
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2 = L9_2()
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
    L7_2 = display
    L7_2 = L7_2.newText
    L8_2 = L1_2
    L9_2 = L1_1
    L9_2 = L9_2["No messages"]
    L10_2 = 0
    L11_2 = 0
    L12_2 = Constants
    L12_2 = L12_2.fontForSubtitle
    L12_2 = L12_2()
    L13_2 = 12
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L9_2 = L7_2
    L8_2 = L7_2.setFillColor
    L10_2 = Constants
    L10_2 = L10_2.darkBlueColor
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2 = L10_2()
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
    L8_2 = L6_2.x
    L7_2.x = L8_2
    L8_2 = L6_2.height
    L8_2 = L8_2 / 2
    L7_2.y = L8_2
  else
    L6_2 = nil
    L7_2 = nil
    L8_2 = L3_2.mode
    if L8_2 == 2 then
      L8_2 = L3_2.trainer
      if L8_2 then
        L8_2 = hub
        L8_2 = L8_2.coachMessages
        L9_2 = L3_2.sortedMessages
        L10_2 = L2_2.id
        L9_2 = L9_2[L10_2]
        L8_2 = L8_2[L9_2]
        if L8_2 then
          L8_2 = hub
          L8_2 = L8_2.coachMessages
          L9_2 = L3_2.sortedMessages
          L10_2 = L2_2.id
          L9_2 = L9_2[L10_2]
          L6_2 = L8_2[L9_2]
      end
      else
        L8_2 = hub
        L8_2 = L8_2.messages
        L9_2 = L3_2.sortedMessages
        L10_2 = L2_2.id
        L9_2 = L9_2[L10_2]
        L8_2 = L8_2[L9_2]
        if L8_2 then
          L8_2 = hub
          L8_2 = L8_2.messages
          L9_2 = L3_2.sortedMessages
          L10_2 = L2_2.id
          L9_2 = L9_2[L10_2]
          L6_2 = L8_2[L9_2]
        end
      end
      L8_2 = pairs
      L9_2 = _profanityList
      L8_2, L9_2, L10_2 = L8_2(L9_2)
      for L11_2, L12_2 in L8_2, L9_2, L10_2 do
        L13_2 = L6_2.text
        L14_2 = L13_2
        L13_2 = L13_2.gsub
        L15_2 = L12_2
        L16_2 = "***"
        L13_2 = L13_2(L14_2, L15_2, L16_2)
        L6_2.text = L13_2
      end
    else
      L8_2 = L3_2.mode
      if L8_2 == 1 then
        L8_2 = L3_2.results
        L9_2 = L2_2.id
        L6_2 = L8_2[L9_2]
        L8_2 = L3_2.titles
        if L8_2 then
          L8_2 = L3_2.titles
          L9_2 = L2_2.id
          L8_2 = L8_2[L9_2]
          if L8_2 then
            L8_2 = L3_2.titles
            L9_2 = L2_2.id
            L7_2 = L8_2[L9_2]
          end
        end
      end
    end
    if L6_2 == nil then
      return
    end
    L9_2 = L3_2
    L8_2 = L3_2.messageHeight
    L10_2 = L6_2
    L8_2 = L8_2(L9_2, L10_2)
    L8_2 = 20 + L8_2
    L9_2 = nil
    L10_2 = L3_2.mode
    if L10_2 == 1 then
      L10_2 = display
      L10_2 = L10_2.newRoundedRect
      L11_2 = L1_2
      L12_2 = 10
      L13_2 = 4
      L14_2 = L3_2.width
      L14_2 = L14_2 - 20
      L15_2 = L8_2 - 8
      L16_2 = 3
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L9_2 = L10_2
      L10_2 = L3_2.width
      L10_2 = L10_2 / 2
      L10_2 = L10_2 + 2
      L9_2.x = L10_2
    else
      L10_2 = L3_2.mode
      if L10_2 == 2 then
        L10_2 = display
        L10_2 = L10_2.newRoundedRect
        L11_2 = L1_2
        L12_2 = 10
        L13_2 = 4
        L14_2 = L3_2.width
        L14_2 = L14_2 - 40
        L14_2 = L14_2 - L4_2
        L15_2 = L8_2 - 8
        L16_2 = 3
        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
        L9_2 = L10_2
        L10_2 = L6_2.sender
        L11_2 = mainPlayer
        L11_2 = L11_2.name
        if L10_2 == L11_2 then
          L10_2 = L3_2.width
          L10_2 = L10_2 / 2
          L10_2 = L10_2 - 2
          L11_2 = L4_2 / 2
          L10_2 = L10_2 - L11_2
          L9_2.x = L10_2
        else
          L10_2 = L3_2.width
          L10_2 = L10_2 / 2
          L10_2 = L10_2 + 2
          L11_2 = L4_2 / 2
          L10_2 = L10_2 + L11_2
          L9_2.x = L10_2
        end
        L11_2 = L9_2
        L10_2 = L9_2.addEventListener
        L12_2 = "tap"
        
        function L13_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
          L0_3 = showSimpleDialog
          L1_3 = "Chat Text"
          L2_3 = "Choose action..."
          L3_3 = "Copy"
          
          function L4_3()
            local L0_4, L1_4, L2_4, L3_4
            L0_4 = require
            L1_4 = "plugin.pasteboard"
            L0_4 = L0_4(L1_4)
            L1_4 = L0_4.copy
            L2_4 = "string"
            L3_4 = L6_2
            L3_4 = L3_4.text
            L1_4(L2_4, L3_4)
          end
          
          L5_3 = "\226\154\160 Report"
          
          function L6_3()
            local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4
            L0_4 = {}
            L1_4 = L6_2
            L1_4 = L1_4.sender
            L0_4.player_name = L1_4
            L1_4 = L6_2
            L1_4 = L1_4.text
            L0_4.message = L1_4
            L1_4 = L6_2
            L1_4 = L1_4.creationDate
            L0_4.date = L1_4
            L1_4 = L3_2
            L1_4 = L1_4.id
            L0_4.reported_by = L1_4
            L1_4 = {}
            L1_4.body = L0_4
            L2_4 = network
            L2_4 = L2_4.getDefaultHeader
            L2_4 = L2_4()
            L1_4.headers = L2_4
            L2_4 = network
            L2_4 = L2_4.request
            L3_4 = Constants
            L3_4 = L3_4.API_Path
            L4_4 = Constants
            L4_4 = L4_4.API_TribeReportChat
            L3_4 = L3_4 .. L4_4
            L4_4 = "POST"
            L5_4 = eventHandlerFunction
            L6_4 = L1_4
            L7_4 = "report tribe chat"
            L8_4 = nil
            L9_4 = nil
            L2_4(L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4)
            L2_4 = showSimpleDialog
            L3_4 = "Report a harmful message"
            L4_4 = "Message has been reported to the game administrators."
            L2_4(L3_4, L4_4)
          end
          
          L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3)
        end
        
        L10_2(L11_2, L12_2, L13_2)
      end
    end
    L10_2 = L8_2 / 2
    L9_2.y = L10_2
    L9_2.strokeWidth = 1
    L11_2 = L9_2
    L10_2 = L9_2.setStrokeColor
    L12_2 = Constants
    L12_2 = L12_2.blueColor
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2 = L12_2()
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
    L10_2 = nil
    L11_2 = L3_2.mode
    if L11_2 == 1 then
    else
      L11_2 = L3_2.mode
      if L11_2 == 2 then
        L11_2 = L6_2.avatar_id
        if not L11_2 then
          L6_2.avatar_id = 0
        end
        L11_2 = L6_2.sender
        L12_2 = mainPlayer
        L12_2 = L12_2.name
        if L11_2 == L12_2 then
          L11_2 = mainPlayer
          L11_2 = L11_2.avatar
          L11_2 = L11_2.id
          L6_2.avatar_id = L11_2
        end
        L11_2 = L9_1
        L11_2 = L11_2.getAvatarByID
        L12_2 = L6_2.avatar_id
        L11_2 = L11_2(L12_2)
        L12_2 = L10_1
        L13_2 = L12_2
        L12_2 = L12_2.new
        L14_2 = L1_2
        L15_2 = L11_2.image
        L16_2 = L4_2
        L17_2 = L4_2
        
        function L18_2()
          local L0_3, L1_3, L2_3
          L0_3 = L6_2
          L0_3 = L0_3.sender
          L1_3 = mainPlayer
          L1_3 = L1_3.name
          if L0_3 == L1_3 then
            L0_3 = L10_2
            L0_3 = L0_3._view
            L1_3 = display
            L1_3 = L1_3.contentWidth
            L1_3 = L1_3 - 40
            L2_3 = L5_2
            L1_3 = L1_3 + L2_3
            L0_3.x = L1_3
          else
            L0_3 = L10_2
            L0_3 = L0_3._view
            L1_3 = L5_2
            L1_3 = 30 - L1_3
            L0_3.x = L1_3
          end
          L0_3 = L10_2
          L0_3 = L0_3._view
          L1_3 = L9_2
          L1_3 = L1_3.y
          L0_3.y = L1_3
        end
        
        L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
        L10_2 = L12_2
        L12_2 = L6_2.sender
        L13_2 = mainPlayer
        L13_2 = L13_2.name
        if L12_2 == L13_2 then
          L12_2 = L10_2._view
          L13_2 = display
          L13_2 = L13_2.contentWidth
          L13_2 = L13_2 - 40
          L13_2 = L13_2 + L5_2
          L12_2.x = L13_2
        else
          L12_2 = L10_2._view
          L13_2 = 30 - L5_2
          L12_2.x = L13_2
        end
        L12_2 = L10_2._view
        L13_2 = L9_2.y
        L12_2.y = L13_2
      end
    end
    L11_2 = display
    L11_2 = L11_2.newRect
    L12_2 = L1_2
    L13_2 = 5
    L14_2 = 5
    L15_2 = 15
    L16_2 = 15
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    L13_2 = L11_2
    L12_2 = L11_2.setFillColor
    L14_2 = 1
    L15_2 = 1
    L16_2 = 1
    L12_2(L13_2, L14_2, L15_2, L16_2)
    L11_2.rotation = 45
    L12_2 = L3_2.mode
    if L12_2 == 1 then
      L11_2.x = 15
    else
      L12_2 = L3_2.mode
      if L12_2 == 2 then
        L12_2 = L6_2.sender
        L13_2 = mainPlayer
        L13_2 = L13_2.name
        if L12_2 == L13_2 then
          L12_2 = display
          L12_2 = L12_2.contentWidth
          L12_2 = L12_2 - 35
          L12_2 = L12_2 - L4_2
          L11_2.x = L12_2
        else
          L12_2 = 25 + L4_2
          L11_2.x = L12_2
        end
      end
    end
    L12_2 = L9_2.y
    L11_2.y = L12_2
    L11_2.strokeWidth = 1
    L13_2 = L11_2
    L12_2 = L11_2.setStrokeColor
    L14_2 = Constants
    L14_2 = L14_2.blueColor
    L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2 = L14_2()
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
    L13_2 = L11_2
    L12_2 = L11_2.toBack
    L12_2(L13_2)
    L12_2 = system
    L12_2 = L12_2.getInfo
    L13_2 = "platformName"
    L12_2 = L12_2(L13_2)
    L13_2 = nil
    L14_2 = nil
    L15_2 = L6_2.text
    if L15_2 then
      L15_2 = system
      L15_2 = L15_2.getInfo
      L16_2 = "build"
      L15_2 = L15_2(L16_2)
      if "2013.1137" < L15_2 and L12_2 ~= "Android" then
        L15_2 = L1_1
        L15_2 = L15_2.lang
        if L15_2 == "fa" then
          goto lbl_325
        end
      end
      L15_2 = L1_1
      L15_2 = L15_2.lang
      if L15_2 == "ar" then
        L15_2 = L3_2.mode
        if L15_2 == 1 then
          ::lbl_325::
          L15_2 = L3_2.mode
          if L15_2 == 1 then
            L15_2 = L3_2.isChiefMessage
            if L15_2 then
              if L7_2 then
                L15_2 = {}
                L15_2.parent = L1_2
                L15_2.text = L7_2
                L15_2.x = 0
                L15_2.y = 0
                L16_2 = L9_2.width
                L16_2 = L16_2 - 15
                L15_2.width = L16_2
                L15_2.height = 20
                L16_2 = Constants
                L16_2 = L16_2.fontForSubtitle
                L16_2 = L16_2()
                L15_2.font = L16_2
                L15_2.fontSize = 14
                L15_2.align = "right"
                L16_2 = display
                L16_2 = L16_2.newText
                L17_2 = L15_2
                L16_2 = L16_2(L17_2)
                L14_2 = L16_2
              end
              L15_2 = {}
              L15_2.parent = L1_2
              L16_2 = L6_2.text
              L15_2.text = L16_2
              L15_2.x = 0
              L15_2.y = 0
              L16_2 = L9_2.width
              L16_2 = L16_2 - 15
              L15_2.width = L16_2
              L17_2 = L3_2
              L16_2 = L3_2.messageHeight
              L18_2 = L6_2
              L16_2 = L16_2(L17_2, L18_2)
              L15_2.height = L16_2
              L16_2 = Constants
              L16_2 = L16_2.fontForSubtitle
              L16_2 = L16_2()
              L15_2.font = L16_2
              L16_2 = L3_2.fontSize
              L15_2.fontSize = L16_2
              L15_2.align = "right"
              L16_2 = display
              L16_2 = L16_2.newText
              L17_2 = L15_2
              L16_2 = L16_2(L17_2)
              L13_2 = L16_2
            else
              L15_2 = {}
              L15_2.parent = L1_2
              L16_2 = L6_2.text
              L15_2.text = L16_2
              L15_2.x = 0
              L15_2.y = 0
              L16_2 = L9_2.width
              L16_2 = L16_2 - 15
              L15_2.width = L16_2
              L17_2 = L3_2
              L16_2 = L3_2.messageHeight
              L18_2 = L6_2
              L16_2 = L16_2(L17_2, L18_2)
              L15_2.height = L16_2
              L16_2 = Constants
              L16_2 = L16_2.fontForSubtitle
              L16_2 = L16_2()
              L15_2.font = L16_2
              L16_2 = L3_2.fontSize
              L15_2.fontSize = L16_2
              L15_2.align = "right"
              L16_2 = display
              L16_2 = L16_2.newText
              L17_2 = L15_2
              L16_2 = L16_2(L17_2)
              L13_2 = L16_2
            end
          else
            L15_2 = L8_1
            L15_2 = L15_2.isFirstCharachterInPersian
            L16_2 = L6_2.text
            L15_2 = L15_2(L16_2)
            if L15_2 then
              L15_2 = {}
              L15_2.parent = L1_2
              L16_2 = L6_2.text
              L15_2.text = L16_2
              L15_2.x = 0
              L15_2.y = 0
              L16_2 = L9_2.width
              L16_2 = L16_2 - 15
              L15_2.width = L16_2
              L17_2 = L3_2
              L16_2 = L3_2.messageHeight
              L18_2 = L6_2
              L16_2 = L16_2(L17_2, L18_2)
              L15_2.height = L16_2
              L16_2 = Constants
              L16_2 = L16_2.fontForSubtitle
              L16_2 = L16_2()
              L15_2.font = L16_2
              L16_2 = L3_2.fontSize
              L15_2.fontSize = L16_2
              L15_2.align = "right"
              L16_2 = display
              L16_2 = L16_2.newText
              L17_2 = L15_2
              L16_2 = L16_2(L17_2)
              L13_2 = L16_2
            else
              L15_2 = {}
              L15_2.parent = L1_2
              L16_2 = L6_2.text
              L15_2.text = L16_2
              L15_2.x = 0
              L15_2.y = 0
              L16_2 = L9_2.width
              L16_2 = L16_2 - 15
              L15_2.width = L16_2
              L17_2 = L3_2
              L16_2 = L3_2.messageHeight
              L18_2 = L6_2
              L16_2 = L16_2(L17_2, L18_2)
              L15_2.height = L16_2
              L16_2 = Constants
              L16_2 = L16_2.fontForSubtitle
              L16_2 = L16_2()
              L15_2.font = L16_2
              L16_2 = L3_2.fontSize
              L15_2.fontSize = L16_2
              L15_2.align = "left"
              L16_2 = display
              L16_2 = L16_2.newText
              L17_2 = L15_2
              L16_2 = L16_2(L17_2)
              L13_2 = L16_2
            end
          end
      end
      else
        L15_2 = L3_2.mode
        if L15_2 == 1 then
          L15_2 = L3_2.isChiefMessage
          if L15_2 then
            if L7_2 then
              L15_2 = {}
              L15_2.parent = L1_2
              L15_2.text = L7_2
              L15_2.x = 0
              L15_2.y = 0
              L16_2 = L9_2.width
              L16_2 = L16_2 - 15
              L15_2.width = L16_2
              L15_2.height = 20
              L16_2 = Constants
              L16_2 = L16_2.fontForSubtitle
              L16_2 = L16_2()
              L15_2.font = L16_2
              L15_2.fontSize = 14
              L15_2.align = "left"
              L16_2 = display
              L16_2 = L16_2.newText
              L17_2 = L15_2
              L16_2 = L16_2(L17_2)
              L14_2 = L16_2
            end
            L15_2 = {}
            L15_2.parent = L1_2
            L16_2 = L6_2.text
            L15_2.text = L16_2
            L15_2.x = 0
            L15_2.y = 0
            L16_2 = L9_2.width
            L16_2 = L16_2 - 15
            L15_2.width = L16_2
            L17_2 = L3_2
            L16_2 = L3_2.messageHeight
            L18_2 = L6_2
            L16_2 = L16_2(L17_2, L18_2)
            L15_2.height = L16_2
            L16_2 = Constants
            L16_2 = L16_2.fontForSubtitle
            L16_2 = L16_2()
            L15_2.font = L16_2
            L16_2 = L3_2.fontSize
            L15_2.fontSize = L16_2
            L15_2.align = "left"
            L16_2 = display
            L16_2 = L16_2.newText
            L17_2 = L15_2
            L16_2 = L16_2(L17_2)
            L13_2 = L16_2
          else
            L15_2 = {}
            L15_2.parent = L1_2
            L16_2 = L6_2.text
            L15_2.text = L16_2
            L15_2.x = 0
            L15_2.y = 0
            L16_2 = L9_2.width
            L16_2 = L16_2 - 15
            L15_2.width = L16_2
            L17_2 = L3_2
            L16_2 = L3_2.messageHeight
            L18_2 = L6_2
            L16_2 = L16_2(L17_2, L18_2)
            L15_2.height = L16_2
            L16_2 = Constants
            L16_2 = L16_2.fontForSubtitle
            L16_2 = L16_2()
            L15_2.font = L16_2
            L16_2 = L3_2.fontSize
            L15_2.fontSize = L16_2
            L15_2.align = "left"
            L16_2 = display
            L16_2 = L16_2.newText
            L17_2 = L15_2
            L16_2 = L16_2(L17_2)
            L13_2 = L16_2
          end
        else
          L15_2 = {}
          L15_2.parent = L1_2
          L16_2 = L6_2.text
          L15_2.text = L16_2
          L15_2.x = 0
          L15_2.y = 0
          L16_2 = L9_2.width
          L16_2 = L16_2 - 15
          L15_2.width = L16_2
          L17_2 = L3_2
          L16_2 = L3_2.messageHeight
          L18_2 = L6_2
          L16_2 = L16_2(L17_2, L18_2)
          L15_2.height = L16_2
          L16_2 = Constants
          L16_2 = L16_2.fontForSubtitle
          L16_2 = L16_2()
          L15_2.font = L16_2
          L16_2 = L3_2.fontSize
          L15_2.fontSize = L16_2
          L15_2.align = "left"
          L16_2 = display
          L16_2 = L16_2.newText
          L17_2 = L15_2
          L16_2 = L16_2(L17_2)
          L13_2 = L16_2
        end
      end
      L15_2 = L3_2.mode
      if L15_2 == 1 then
        L15_2 = L1_1
        L15_2 = L15_2.adjustX
        L17_2 = L3_2
        L16_2 = L3_2.messageX
        L18_2 = L6_2
        L16_2 = L16_2(L17_2, L18_2)
        L17_2 = -5
        L15_2 = L15_2(L16_2, L17_2)
        L13_2.x = L15_2
        if L14_2 then
          L15_2 = L1_1
          L15_2 = L15_2.adjustX
          L17_2 = L3_2
          L16_2 = L3_2.messageX
          L18_2 = L6_2
          L16_2 = L16_2(L17_2, L18_2)
          L17_2 = -5
          L15_2 = L15_2(L16_2, L17_2)
          L14_2.x = L15_2
        end
      else
        L16_2 = L3_2
        L15_2 = L3_2.messageX
        L17_2 = L6_2
        L15_2 = L15_2(L16_2, L17_2)
        L13_2.x = L15_2
        L15_2 = L6_2.sender
        L16_2 = mainPlayer
        L16_2 = L16_2.name
        if L15_2 == L16_2 then
          L16_2 = L3_2
          L15_2 = L3_2.messageX
          L17_2 = L6_2
          L15_2 = L15_2(L16_2, L17_2)
          L15_2 = L15_2 - 23
          L13_2.x = L15_2
        else
          L16_2 = L3_2
          L15_2 = L3_2.messageX
          L17_2 = L6_2
          L15_2 = L15_2(L16_2, L17_2)
          L15_2 = L15_2 + 15
          L13_2.x = L15_2
        end
      end
      L15_2 = L1_1
      L15_2 = L15_2.lang
      if L15_2 == "en" then
        L15_2 = L8_2 / 2
        L15_2 = L15_2 - 3
        L13_2.y = L15_2
      else
        L15_2 = L1_1
        L15_2 = L15_2.lang
        if L15_2 ~= "fa" then
          L15_2 = L1_1
          L15_2 = L15_2.lang
          if L15_2 ~= "ar" then
            goto lbl_629
          end
        end
        L15_2 = L8_2 / 2
        L15_2 = L15_2 - 3
        L13_2.y = L15_2
      end
      ::lbl_629::
      if L14_2 then
        L15_2 = L14_2.height
        L15_2 = L15_2 / 2
        L15_2 = 5 + L15_2
        L14_2.y = L15_2
        L15_2 = L14_2.y
        L16_2 = L14_2.height
        L16_2 = L16_2 / 2
        L15_2 = L15_2 + L16_2
        L15_2 = L15_2 + 1
        L16_2 = L13_2.height
        L16_2 = L16_2 / 2
        L15_2 = L15_2 + L16_2
        L13_2.y = L15_2
        L16_2 = L14_2
        L15_2 = L14_2.setFillColor
        L17_2 = Constants
        L17_2 = L17_2.darkBlueColor
        L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2 = L17_2()
        L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
      end
      L16_2 = L13_2
      L15_2 = L13_2.setFillColor
      L17_2 = Constants
      L17_2 = L17_2.darkBlueColor
      L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2 = L17_2()
      L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
    end
    L15_2 = nil
    L16_2 = nil
    L17_2 = L3_2.mode
    if L17_2 == 1 then
      L17_2 = L6_2.creationDate
      L18_2 = mainPlayer
      L18_2 = L18_2.timeDelta
      L16_2 = L17_2 + L18_2
    else
      L17_2 = L3_2.mode
      if L17_2 == 2 then
        L16_2 = L6_2.creationDate
      end
    end
    L17_2 = os
    L17_2 = L17_2.date
    L18_2 = "*t"
    L19_2 = L16_2
    L17_2 = L17_2(L18_2, L19_2)
    L18_2 = log3
    L19_2 = " message date is : "
    L20_2 = L17_2.year
    L21_2 = "/"
    L22_2 = L17_2.month
    L23_2 = "/"
    L24_2 = L17_2.day
    L25_2 = "  "
    L26_2 = L17_2.hour
    L27_2 = ":"
    L28_2 = L17_2.min
    L29_2 = ":"
    L30_2 = L17_2.sec
    L20_2 = L20_2 .. L21_2 .. L22_2 .. L23_2 .. L24_2 .. L25_2 .. L26_2 .. L27_2 .. L28_2 .. L29_2 .. L30_2
    L18_2(L19_2, L20_2)
    L18_2 = os
    L18_2 = L18_2.time
    L18_2 = L18_2()
    L19_2 = mainPlayer
    L19_2 = L19_2.timeDelta
    L18_2 = L18_2 + L19_2
    L19_2 = math
    L19_2 = L19_2.floor
    L20_2 = L18_2 - L16_2
    L20_2 = L20_2 / 60
    L19_2 = L19_2(L20_2)
    if L19_2 < 43200 then
      if L19_2 < 1440 then
        if L19_2 < 60 then
          if L19_2 <= 1 then
            L20_2 = L1_1
            L15_2 = L20_2["min ago"]
          else
            L20_2 = L1_1
            L20_2 = L20_2.localizedString
            L21_2 = "mins ago"
            L22_2 = {}
            L23_2 = L1_1
            L23_2 = L23_2.adjustNumber
            L24_2 = L19_2
            L23_2 = L23_2(L24_2)
            L22_2.num = L23_2
            L20_2 = L20_2(L21_2, L22_2)
            L15_2 = L20_2
          end
        else
          L20_2 = math
          L20_2 = L20_2.floor
          L21_2 = L19_2 / 60
          L20_2 = L20_2(L21_2)
          L15_2 = L20_2
          if 1 < L15_2 then
            L20_2 = L1_1
            L20_2 = L20_2.adjustNumber
            L21_2 = L15_2
            L20_2 = L20_2(L21_2)
            L15_2 = L20_2
            L20_2 = L1_1
            L20_2 = L20_2.localizedString
            L21_2 = "hours ago"
            L22_2 = {}
            L22_2.num = L15_2
            L20_2 = L20_2(L21_2, L22_2)
            L15_2 = L20_2
          else
            L20_2 = L1_1
            L15_2 = L20_2["hour ago"]
          end
        end
      else
        L20_2 = math
        L20_2 = L20_2.floor
        L21_2 = L19_2 / 1440
        L20_2 = L20_2(L21_2)
        L15_2 = L20_2
        if 1 < L15_2 then
          L20_2 = L1_1
          L20_2 = L20_2.adjustNumber
          L21_2 = L15_2
          L20_2 = L20_2(L21_2)
          L15_2 = L20_2
          L20_2 = L1_1
          L20_2 = L20_2.localizedString
          L21_2 = "days ago"
          L22_2 = {}
          L22_2.num = L15_2
          L20_2 = L20_2(L21_2, L22_2)
          L15_2 = L20_2
        else
          L20_2 = L1_1
          L15_2 = L20_2["day ago"]
        end
      end
    else
      L20_2 = math
      L20_2 = L20_2.floor
      L21_2 = L19_2 / 43200
      L20_2 = L20_2(L21_2)
      L15_2 = L20_2
      if 1 < L15_2 then
        L20_2 = L1_1
        L20_2 = L20_2.adjustNumber
        L21_2 = L15_2
        L20_2 = L20_2(L21_2)
        L15_2 = L20_2
        L20_2 = L1_1
        L20_2 = L20_2.localizedString
        L21_2 = "months ago"
        L22_2 = {}
        L22_2.num = L15_2
        L20_2 = L20_2(L21_2, L22_2)
        L15_2 = L20_2
      else
        L20_2 = L1_1
        L15_2 = L20_2["month ago"]
      end
    end
    L20_2 = nil
    L21_2 = L6_2.text
    if L21_2 then
      L21_2 = display
      L21_2 = L21_2.newText
      L22_2 = L1_2
      L23_2 = L15_2
      L24_2 = 0
      L25_2 = 0
      L26_2 = Constants
      L26_2 = L26_2.fontForSubtitle
      L26_2 = L26_2()
      L27_2 = 8
      L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
      L20_2 = L21_2
      L22_2 = L20_2
      L21_2 = L20_2.setFillColor
      L23_2 = 0.39215686
      L24_2 = 0.39215686
      L25_2 = 0.39215686
      L21_2(L22_2, L23_2, L24_2, L25_2)
      L21_2 = L3_2.mode
      if L21_2 == 1 then
        L21_2 = L1_1
        L21_2 = L21_2.adjustX
        L22_2 = L20_2.width
        L22_2 = L22_2 / 2
        L22_2 = 18 + L22_2
        L23_2 = -5
        L21_2 = L21_2(L22_2, L23_2)
        L20_2.x = L21_2
      else
        L21_2 = L6_2.sender
        L22_2 = mainPlayer
        L22_2 = L22_2.name
        if L21_2 == L22_2 then
          L21_2 = L20_2.width
          L21_2 = L21_2 / 2
          L21_2 = 18 + L21_2
          L21_2 = L21_2 + 3
          L20_2.x = L21_2
        else
          L21_2 = L20_2.width
          L21_2 = L21_2 / 2
          L21_2 = 18 + L21_2
          L21_2 = L21_2 + 43
          L20_2.x = L21_2
        end
      end
      L21_2 = L8_2 - 9
      L20_2.y = L21_2
    end
    L21_2 = L6_2.messageType
    if L21_2 == 1 then
      L21_2 = display
      L21_2 = L21_2.newText
      L22_2 = L1_2
      L23_2 = L6_2.sender
      L24_2 = 0
      L25_2 = 0
      L26_2 = Constants
      L26_2 = L26_2.fontForSubtitle
      L26_2 = L26_2()
      L27_2 = 8
      L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
      L23_2 = L21_2
      L22_2 = L21_2.setFillColor
      L24_2 = 0
      L25_2 = 0
      L26_2 = 0
      L22_2(L23_2, L24_2, L25_2, L26_2)
      L22_2 = L3_2.mode
      if L22_2 == 1 then
        L22_2 = L1_1
        L22_2 = L22_2.adjustX
        L23_2 = L2_2.contentWidth
        L23_2 = L23_2 - 40
        L24_2 = L21_2.width
        L24_2 = L24_2 / 2
        L23_2 = L23_2 - L24_2
        L22_2 = L22_2(L23_2)
        L21_2.x = L22_2
      else
        L22_2 = L6_2.sender
        L23_2 = mainPlayer
        L23_2 = L23_2.name
        if L22_2 == L23_2 then
          L22_2 = display
          L22_2 = L22_2.contentWidth
          L22_2 = L22_2 - 11
          L22_2 = L22_2 - 20
          L23_2 = L21_2.width
          L23_2 = L23_2 / 2
          L22_2 = L22_2 - L23_2
          L22_2 = L22_2 - 40
          L21_2.x = L22_2
        else
          L22_2 = display
          L22_2 = L22_2.contentWidth
          L22_2 = L22_2 - 11
          L22_2 = L22_2 - 20
          L23_2 = L21_2.width
          L23_2 = L23_2 / 2
          L22_2 = L22_2 - L23_2
          L21_2.x = L22_2
        end
      end
      L22_2 = L8_2 - 9
      L21_2.y = L22_2
    end
    L21_2 = nil
    L22_2 = nil
    L23_2 = nil
    L24_2 = nil
    L25_2 = nil
    L26_2 = L6_2.messageType
    if L26_2 == 5 then
    else
      L26_2 = L6_2.messageType
      if L26_2 == 1 then
        L26_2 = L6_2.link
        if L26_2 then
          L26_2 = L1_1
          L21_2 = L26_2.More
          
          function L24_2()
            local L0_3, L1_3
            L0_3 = system
            L0_3 = L0_3.openURL
            L1_3 = L6_2
            L1_3 = L1_3.link
            L0_3(L1_3)
          end
      end
      else
        L26_2 = L6_2.messageType
        if L26_2 == 6 then
        else
          L26_2 = L6_2.messageType
          if L26_2 == 4 then
            L26_2 = L1_1
            L21_2 = L26_2.Accept
            L26_2 = L1_1
            L22_2 = L26_2.Reject
            
            function L24_2()
              local L0_3, L1_3, L2_3, L3_3, L4_3
              L0_3 = mainPlayer
              L0_3 = L0_3.tribe
              if L0_3 ~= nil then
                L0_3 = L4_1
                L0_3 = L0_3.showOverlay
                L1_3 = "Scenes.AlertOverlay"
                L2_3 = {}
                L3_3 = {}
                L4_3 = L1_1
                L4_3 = L4_3.Invitation
                L3_3.title = L4_3
                L4_3 = L1_1
                L4_3 = L4_3["Warning! If you accept this invitation you will leave your current tribe!"]
                L3_3.text = L4_3
                
                function L4_3()
                  local L0_4, L1_4, L2_4, L3_4, L4_4
                  L0_4 = L3_1
                  L0_4 = L0_4.show
                  L1_4 = L1_1
                  L1_4 = L1_4["Accepting Request"]
                  L0_4(L1_4)
                  L0_4 = L5_1
                  L0_4 = L0_4.acceptUserInviteRequest
                  L1_4 = L6_2
                  L2_4 = successToAcceptInviteRequestCallBack
                  L3_4 = failedToAcceptInviteRequestCallback
                  L4_4 = A0_2
                  L4_4 = L4_4.target
                  L4_4 = L4_4.delegate
                  L0_4(L1_4, L2_4, L3_4, L4_4)
                end
                
                L3_3.action = L4_3
                L4_3 = L1_1
                L4_3 = L4_3.Cancel
                L3_3.buttonText2 = L4_3
                L2_3.params = L3_3
                L0_3(L1_3, L2_3)
              else
                L0_3 = L3_1
                L0_3 = L0_3.show
                L1_3 = L1_1
                L1_3 = L1_3["Accepting Request"]
                L0_3(L1_3)
                L0_3 = L5_1
                L0_3 = L0_3.acceptUserInviteRequest
                L1_3 = L6_2
                L2_3 = successToAcceptInviteRequestCallBack
                L3_3 = failedToAcceptInviteRequestCallback
                L4_3 = A0_2
                L4_3 = L4_3.target
                L4_3 = L4_3.delegate
                L0_3(L1_3, L2_3, L3_3, L4_3)
              end
            end
            
            function L26_2()
              local L0_3, L1_3, L2_3, L3_3, L4_3
              L0_3 = L3_1
              L0_3 = L0_3.show
              L1_3 = L1_1
              L1_3 = L1_3["Rejecting Request"]
              L0_3(L1_3)
              L0_3 = L5_1
              L0_3 = L0_3.rejectUserInviteRequest
              L1_3 = L6_2
              L2_3 = successToRejectInviteRequestCallBack
              L3_3 = failedToRejectInviteRequestCallback
              L4_3 = A0_2
              L4_3 = L4_3.target
              L4_3 = L4_3.delegate
              L0_3(L1_3, L2_3, L3_3, L4_3)
            end
            
            buttonFunction2 = L26_2
          else
            L26_2 = L6_2.messageType
            if L26_2 == 2 then
              L26_2 = mainPlayer
              L26_2 = L26_2.tribe
              if L26_2 ~= nil then
                L26_2 = L1_1
                L21_2 = L26_2.Accept
                L26_2 = L1_1
                L22_2 = L26_2.Reject
                L26_2 = L1_1
                L23_2 = L26_2.Profile
                
                function L24_2()
                  local L0_3, L1_3, L2_3, L3_3, L4_3
                  L0_3 = L3_1
                  L0_3 = L0_3.show
                  L1_3 = L1_1
                  L1_3 = L1_3["Accepting Request"]
                  L0_3(L1_3)
                  L0_3 = mainPlayer
                  L0_3 = L0_3.tribe
                  L0_3 = L0_3.acceptUserJoinRequest
                  L1_3 = L6_2
                  L2_3 = successToAcceptJionRequestCallBack
                  L3_3 = failedToAcceptJionRequestCallback
                  L4_3 = A0_2
                  L4_3 = L4_3.target
                  L4_3 = L4_3.delegate
                  L0_3(L1_3, L2_3, L3_3, L4_3)
                end
                
                function L26_2()
                  local L0_3, L1_3, L2_3, L3_3, L4_3
                  L0_3 = L3_1
                  L0_3 = L0_3.show
                  L1_3 = L1_1
                  L1_3 = L1_3["Rejecting Request"]
                  L0_3(L1_3)
                  L0_3 = mainPlayer
                  L0_3 = L0_3.tribe
                  L0_3 = L0_3.rejectUserJoinRequest
                  L1_3 = L6_2
                  L2_3 = successToRejectJoinRequestCallBack
                  L3_3 = failedToRejectJoinRequestCallback
                  L4_3 = A0_2
                  L4_3 = L4_3.target
                  L4_3 = L4_3.delegate
                  L0_3(L1_3, L2_3, L3_3, L4_3)
                end
                
                buttonFunction2 = L26_2
                
                function L25_2()
                  local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
                  L0_3 = {}
                  L1_3 = L6_2
                  L1_3 = L1_3.requesterId
                  if not L1_3 then
                    L1_3 = mainPlayer
                    L1_3 = L1_3.id
                  end
                  L0_3.id = L1_3
                  L1_3 = L6_2
                  L1_3 = L1_3.requesterName
                  if not L1_3 then
                    L1_3 = mainPlayer
                    L1_3 = L1_3.name
                  end
                  L0_3.name = L1_3
                  L1_3 = log3
                  L2_3 = "called profile"
                  L3_3 = L0_3.id
                  L4_3 = L0_3.name
                  L1_3(L2_3, L3_3, L4_3)
                  L1_3 = L11_1
                  L2_3 = L1_3
                  L1_3 = L1_3.new
                  L3_3 = L0_3
                  L1_3 = L1_3(L2_3, L3_3)
                  L2_3 = L4_1
                  L2_3 = L2_3.getSceneName
                  L3_3 = "current"
                  L2_3 = L2_3(L3_3)
                  if L2_3 == "Scenes.MessagesScene" then
                    L3_3 = nil
                    if L2_3 then
                      L4_3 = L4_1
                      L4_3 = L4_3.getScene
                      L5_3 = L2_3
                      L4_3 = L4_3(L5_3)
                      L3_3 = L4_3.view
                      L5_3 = L3_3
                      L4_3 = L3_3.insert
                      L6_3 = L1_3.view
                      L4_3(L5_3, L6_3)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if L21_2 ~= nil then
      L26_2 = L6_2.isDecide
      if L26_2 ~= true then
        L26_2 = L12_1
        L27_2 = L26_2
        L26_2 = L26_2.new
        L28_2 = {}
        L28_2.width = 80
        L28_2.height = 22
        L28_2.label = L21_2
        L29_2 = Constants
        L29_2 = L29_2.Path_Assets
        L30_2 = "BattleItems/battle_outcome_button.png"
        L29_2 = L29_2 .. L30_2
        L28_2.defaultFile = L29_2
        L29_2 = Constants
        L29_2 = L29_2.Path_Assets
        L30_2 = "BattleItems/battle_outcome_button-pressed.png"
        L29_2 = L29_2 .. L30_2
        L28_2.overFile = L29_2
        L28_2.onRelease = L24_2
        L26_2 = L26_2(L27_2, L28_2)
        L17_1 = L26_2
        L26_2 = L3_2.mode
        if L26_2 == 1 then
          L26_2 = L17_1
          L27_2 = L1_1
          L27_2 = L27_2.adjustX
          L28_2 = L3_2.width
          L28_2 = L28_2 - 55
          L27_2 = L27_2(L28_2)
          L26_2.x = L27_2
        else
          L26_2 = L17_1
          L27_2 = L3_2.width
          L27_2 = L27_2 - 55
          L26_2.x = L27_2
        end
        L26_2 = L17_1
        L27_2 = L2_2.contentHeight
        L28_2 = L17_1
        L28_2 = L28_2.height
        L28_2 = L28_2 / 2
        L27_2 = L27_2 - L28_2
        L27_2 = L27_2 - 7
        L26_2.y = L27_2
        if L22_2 == nil then
          L26_2 = L17_1
          L27_2 = L2_2.contentHeight
          L27_2 = L27_2 * 2
          L27_2 = L27_2 / 3
          L26_2.y = L27_2
        end
        L26_2 = A0_2.target
        L26_2 = L26_2.delegate
        L26_2 = L26_2.buttons1
        L27_2 = L2_2.id
        L28_2 = L17_1
        L26_2[L27_2] = L28_2
        L27_2 = L1_2
        L26_2 = L1_2.insert
        L28_2 = L17_1
        L28_2 = L28_2.view
        L26_2(L27_2, L28_2)
      end
    end
    if L22_2 ~= nil then
      L26_2 = L6_2.isDecide
      if L26_2 ~= true then
        L26_2 = L12_1
        L27_2 = L26_2
        L26_2 = L26_2.new
        L28_2 = {}
        L28_2.width = 80
        L28_2.height = 22
        L28_2.label = L22_2
        L29_2 = Constants
        L29_2 = L29_2.Path_Assets
        L30_2 = "BattleItems/battle_outcome_button.png"
        L29_2 = L29_2 .. L30_2
        L28_2.defaultFile = L29_2
        L29_2 = Constants
        L29_2 = L29_2.Path_Assets
        L30_2 = "BattleItems/battle_outcome_button-pressed.png"
        L29_2 = L29_2 .. L30_2
        L28_2.overFile = L29_2
        L29_2 = buttonFunction2
        L28_2.onRelease = L29_2
        L26_2 = L26_2(L27_2, L28_2)
        L18_1 = L26_2
        L26_2 = L3_2.mode
        if L26_2 == 1 then
          L26_2 = L18_1
          L27_2 = L1_1
          L27_2 = L27_2.adjustX
          L28_2 = L3_2.width
          L28_2 = L28_2 - 55
          L28_2 = L28_2 - 85
          L27_2 = L27_2(L28_2)
          L26_2.x = L27_2
        else
          L26_2 = L18_1
          L27_2 = L3_2.width
          L27_2 = L27_2 - 55
          L27_2 = L27_2 - 85
          L26_2.x = L27_2
        end
        L26_2 = L18_1
        L27_2 = L2_2.contentHeight
        L28_2 = L18_1
        L28_2 = L28_2.height
        L28_2 = L28_2 / 2
        L27_2 = L27_2 - L28_2
        L27_2 = L27_2 - 7
        L26_2.y = L27_2
        L26_2 = A0_2.target
        L26_2 = L26_2.delegate
        L26_2 = L26_2.buttons2
        L27_2 = L2_2.id
        L28_2 = L18_1
        L26_2[L27_2] = L28_2
        L27_2 = L1_2
        L26_2 = L1_2.insert
        L28_2 = L18_1
        L28_2 = L28_2.view
        L26_2(L27_2, L28_2)
      end
    end
    if L23_2 ~= nil then
      L26_2 = L6_2.isDecide
      if L26_2 ~= true then
        L26_2 = L12_1
        L27_2 = L26_2
        L26_2 = L26_2.new
        L28_2 = {}
        L28_2.width = 80
        L28_2.height = 22
        L28_2.label = L23_2
        L29_2 = Constants
        L29_2 = L29_2.Path_Assets
        L30_2 = "BattleItems/battle_outcome_button.png"
        L29_2 = L29_2 .. L30_2
        L28_2.defaultFile = L29_2
        L29_2 = Constants
        L29_2 = L29_2.Path_Assets
        L30_2 = "BattleItems/battle_outcome_button-pressed.png"
        L29_2 = L29_2 .. L30_2
        L28_2.overFile = L29_2
        L28_2.onRelease = L25_2
        L26_2 = L26_2(L27_2, L28_2)
        L19_1 = L26_2
        L26_2 = L3_2.mode
        if L26_2 == 1 then
          L26_2 = L19_1
          L27_2 = L1_1
          L27_2 = L27_2.adjustX
          L28_2 = L3_2.width
          L28_2 = L28_2 - 140
          L28_2 = L28_2 - 85
          L27_2 = L27_2(L28_2)
          L26_2.x = L27_2
        else
          L26_2 = L19_1
          L27_2 = L3_2.width
          L27_2 = L27_2 - 55
          L27_2 = L27_2 - 85
          L26_2.x = L27_2
        end
        L26_2 = L19_1
        L27_2 = L2_2.contentHeight
        L28_2 = L19_1
        L28_2 = L28_2.height
        L28_2 = L28_2 / 2
        L27_2 = L27_2 - L28_2
        L27_2 = L27_2 - 7
        L26_2.y = L27_2
        L26_2 = A0_2.target
        L26_2 = L26_2.delegate
        L26_2 = L26_2.buttons3
        L27_2 = L2_2.id
        L28_2 = L19_1
        L26_2[L27_2] = L28_2
        L27_2 = L1_2
        L26_2 = L1_2.insert
        L28_2 = L19_1
        L28_2 = L28_2.view
        L26_2(L27_2, L28_2)
      end
    end
  end
end

onRowRender = L22_1

function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.target
  L1_2 = L1_2.delegate
  self = L1_2
  L1_2 = A0_2.phase
  if "submitted" == L1_2 then
    L1_2 = self
    L1_2 = L1_2.messageField
    L1_2 = L1_2.text
    if L1_2 ~= "" then
      L1_2 = self
      L1_2 = L1_2.messageField
      L1_2 = L1_2.text
      if L1_2 ~= nil then
        L1_2 = self
        L1_2 = L1_2.messageField
        L1_2 = L1_2.text
        L2_2 = L1_2
        L1_2 = L1_2.len
        L1_2 = L1_2(L2_2)
        if 0 < L1_2 then
          L1_2 = self
          L1_2 = L1_2.messageField
          L1_2 = L1_2.text
          L2_2 = self
          L3_2 = L2_2
          L2_2 = L2_2.getChannel
          L2_2 = L2_2(L3_2)
          L3_2 = L21_1
          L4_2 = self
          
          function L5_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
            L0_3 = hub
            L1_3 = L0_3
            L0_3 = L0_3.publish
            L2_3 = {}
            L3_3 = {}
            L3_3.push_message_type = "chat"
            L4_3 = L1_2
            L3_3.text = L4_3
            L3_3.messageType = 1
            L4_3 = mainPlayer
            L4_3 = L4_3.name
            L3_3.sender = L4_3
            L4_3 = os
            L4_3 = L4_3.time
            L4_3 = L4_3()
            L5_3 = mainPlayer
            L5_3 = L5_3.timeDelta
            L4_3 = L4_3 + L5_3
            L3_3.creationDate = L4_3
            L4_3 = os
            L4_3 = L4_3.time
            L4_3 = L4_3()
            L3_3.id = L4_3
            L4_3 = mainPlayer
            L4_3 = L4_3.avatar
            L4_3 = L4_3.id
            L3_3.avatar_id = L4_3
            L4_3 = system
            L4_3 = L4_3.getTimer
            L4_3 = L4_3()
            L3_3.timestamp = L4_3
            L4_3 = L2_2
            L3_3.channel = L4_3
            L2_3.message = L3_3
            L0_3(L1_3, L2_3)
          end
          
          L3_2(L4_2, L5_2)
        end
      end
    end
    L1_2 = self
    L1_2 = L1_2.messageField
    L1_2.text = ""
    L1_2 = native
    L1_2 = L1_2.setKeyboardFocus
    L2_2 = nil
    L1_2(L2_2)
  else
    L1_2 = A0_2.phase
    if "ended" == L1_2 then
      L1_2 = native
      L1_2 = L1_2.setKeyboardFocus
      L2_2 = nil
      L1_2(L2_2)
    end
  end
end

textListener = L22_1

function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.messageField
  L1_2 = L1_2.text
  if L1_2 ~= "" then
    L1_2 = A0_2.messageField
    L1_2 = L1_2.text
    if L1_2 ~= nil then
      L1_2 = A0_2.messageField
      L1_2 = L1_2.text
      L2_2 = L1_2
      L1_2 = L1_2.len
      L1_2 = L1_2(L2_2)
      if 0 < L1_2 then
        L1_2 = A0_2.messageField
        L1_2 = L1_2.text
        L3_2 = A0_2
        L2_2 = A0_2.getChannel
        L2_2 = L2_2(L3_2)
        L3_2 = L21_1
        L4_2 = A0_2
        
        function L5_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
          L0_3 = hub
          L1_3 = L0_3
          L0_3 = L0_3.publish
          L2_3 = {}
          L3_3 = {}
          L3_3.push_message_type = "chat"
          L4_3 = L1_2
          L3_3.text = L4_3
          L3_3.messageType = 1
          L4_3 = mainPlayer
          L4_3 = L4_3.name
          L3_3.sender = L4_3
          L4_3 = os
          L4_3 = L4_3.time
          L4_3 = L4_3()
          L5_3 = mainPlayer
          L5_3 = L5_3.timeDelta
          L4_3 = L4_3 + L5_3
          L3_3.creationDate = L4_3
          L4_3 = os
          L4_3 = L4_3.time
          L4_3 = L4_3()
          L3_3.id = L4_3
          L4_3 = mainPlayer
          L4_3 = L4_3.avatar
          L4_3 = L4_3.id
          L3_3.avatar_id = L4_3
          L4_3 = system
          L4_3 = L4_3.getTimer
          L4_3 = L4_3()
          L3_3.timestamp = L4_3
          L4_3 = L2_2
          L3_3.channel = L4_3
          L2_3.message = L3_3
          L0_3(L1_3, L2_3)
        end
        
        L3_2(L4_2, L5_2)
      end
    end
  end
  L1_2 = A0_2.messageField
  L1_2.text = ""
end

didPressSend = L22_1

function L22_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = "tribe"
  L2_2 = A0_2.trainer
  if L2_2 then
    L2_2 = L1_2
    L3_2 = mainPlayer
    L3_2 = L3_2.coachTribeID
    L1_2 = L2_2 .. L3_2
  else
    L2_2 = L1_2
    L3_2 = mainPlayer
    L3_2 = L3_2.tribe
    L3_2 = L3_2.id
    L1_2 = L2_2 .. L3_2
  end
  return L1_2
end

getChannel = L22_1

function L22_1(A0_2)
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
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L2_3 = L2_3[A0_3]
    L3_3 = A0_2
    L3_3 = L3_3[A1_3]
    L4_3 = L2_3.creationDate
    L5_3 = L3_3.creationDate
    L4_3 = L4_3 > L5_3
    return L4_3
  end
  
  L2_2(L3_2, L4_2)
  return L1_2
end

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = A0_2.trainer
  if L2_2 then
    L2_2 = hub
    L1_2 = L2_2.coachMessages
  else
    L2_2 = hub
    L1_2 = L2_2.messages
  end
  if L1_2 then
    L2_2 = L22_1
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    A0_2.sortedMessages = L2_2
    L2_2 = hub
    L2_2.unreadMessage = 0
    if L1_2 ~= nil then
      L2_2 = L20_1
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if 1 <= L2_2 then
        L2_2 = hub
        L3_2 = A0_2.sortedMessages
        L3_2 = L3_2[1]
        L3_2 = L1_2[L3_2]
        L3_2 = L3_2.creationDate
        L2_2.timeStamp = L3_2
        L2_2 = log3
        L3_2 = "TIME STAMP"
        L4_2 = hub
        L4_2 = L4_2.timeStamp
        L2_2(L3_2, L4_2)
        L2_2 = mainPlayer
        L3_2 = L2_2
        L2_2 = L2_2.setSettingForKey
        L4_2 = "messageTimeStamp"
        L5_2 = hub
        L5_2 = L5_2.timeStamp
        L2_2(L3_2, L4_2, L5_2)
        L2_2 = mainPlayer
        L3_2 = L2_2
        L2_2 = L2_2.saveSettings
        L2_2(L3_2)
      end
    end
    L2_2 = A0_2.list
    L3_2 = L2_2
    L2_2 = L2_2.deleteAllRows
    L2_2(L3_2)
    L2_2 = A0_2.sortedMessages
    L2_2 = #L2_2
    L3_2 = A0_2.sortedMessages
    L3_2 = #L3_2
    if 40 < L3_2 then
      L2_2 = 40
    end
    L3_2 = 1
    L4_2 = L2_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2.sortedMessages
      L7_2 = L7_2[L6_2]
      L7_2 = L1_2[L7_2]
      L8_2 = A0_2.list
      L9_2 = L8_2
      L8_2 = L8_2.insertRow
      L10_2 = {}
      L12_2 = A0_2
      L11_2 = A0_2.messageHeight
      L13_2 = L7_2
      L11_2 = L11_2(L12_2, L13_2)
      L11_2 = 20 + L11_2
      L10_2.rowHeight = L11_2
      L10_2.id = L6_2
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
    L3_2 = L3_2.scrollToY
    L5_2 = {}
    L5_2.y = 0
    L5_2.number = 0
    L3_2(L4_2, L5_2)
  end
end

showOlderMessage = L23_1

function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  chatView = A0_2
  L2_2 = nil
  L3_2 = display
  L3_2 = L3_2.contentWidth
  L2_2 = L3_2 - 40
  L3_2 = L2_2 - 120
  messageFieldWidth = L3_2
  L3_2 = messageFieldWidth
  L3_2 = L3_2 / 2
  L3_2 = 35 + L3_2
  messageFieldX = L3_2
  L3_2 = 63
  messageFieldY = L3_2
  L3_2 = display
  L3_2 = L3_2.contentWidth
  L3_2 = L3_2 / 2
  messageBGX = L3_2
  L3_2 = 80
  sendWidth = L3_2
  L3_2 = display
  L3_2 = L3_2.newRoundedRect
  L4_2 = A0_2.view
  L5_2 = 0
  L6_2 = 0
  L7_2 = L2_2
  L8_2 = 34
  L9_2 = 8
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2.messageFieldBG = L3_2
  L3_2 = A0_2.messageFieldBG
  L3_2.strokeWidth = 2
  L3_2 = A0_2.messageFieldBG
  L4_2 = L3_2
  L3_2 = L3_2.setStrokeColor
  L5_2 = Constants
  L5_2 = L5_2.blueColor
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = A0_2.messageFieldBG
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.lightBlueColor
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = A0_2.messageFieldBG
  L4_2 = messageBGX
  L3_2.x = L4_2
  L3_2 = A0_2.messageFieldBG
  L4_2 = A0_2.messageFieldBG
  L4_2 = L4_2.height
  L4_2 = L4_2 / 2
  L4_2 = L4_2 + A1_2
  L3_2.y = L4_2
  L3_2 = A0_2.messageField
  if L3_2 == nil then
    L3_2 = native
    L3_2 = L3_2.newTextField
    L4_2 = messageFieldX
    L5_2 = A0_2.messageFieldBG
    L5_2 = L5_2.y
    L6_2 = messageFieldWidth
    L7_2 = 30
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    A0_2.messageField = L3_2
    L3_2 = A0_2.messageField
    L4_2 = textListener
    L3_2.userInput = L4_2
    L3_2 = A0_2.messageField
    L4_2 = L3_2
    L3_2 = L3_2.addEventListener
    L5_2 = "userInput"
    L6_2 = textListener
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2.messageField
    L3_2.isVisible = false
    L3_2 = A0_2.messageField
    L3_2.isEditable = true
    L3_2 = A0_2.messageField
    L4_2 = Constants
    L4_2 = L4_2.nativeFontForTextFields
    L4_2 = L4_2()
    L3_2.font = L4_2
    L3_2 = A0_2.messageField
    L4_2 = L3_2
    L3_2 = L3_2.setTextColor
    L5_2 = Constants
    L5_2 = L5_2.darkBlueColor
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2()
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    L3_2 = A0_2.messageField
    L3_2.delegate = A0_2
    L3_2 = A0_2.view
    L4_2 = L3_2
    L3_2 = L3_2.insert
    L5_2 = A0_2.messageField
    L3_2(L4_2, L5_2)
    L3_2 = L12_1
    L4_2 = L3_2
    L3_2 = L3_2.new
    L5_2 = {}
    L6_2 = sendWidth
    L5_2.width = L6_2
    L5_2.height = 22
    L6_2 = L1_1
    L6_2 = L6_2.Send
    L5_2.label = L6_2
    L6_2 = Constants
    L6_2 = L6_2.Path_Assets
    L7_2 = "BattleItems/battle_outcome_button.png"
    L6_2 = L6_2 .. L7_2
    L5_2.defaultFile = L6_2
    L6_2 = Constants
    L6_2 = L6_2.Path_Assets
    L7_2 = "BattleItems/battle_outcome_button-pressed.png"
    L6_2 = L6_2 .. L7_2
    L5_2.overFile = L6_2
    
    function L6_2()
      local L0_3, L1_3
      L0_3 = didPressSend
      L1_3 = A0_2
      L0_3(L1_3)
    end
    
    L5_2.onRelease = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    A0_2.send = L3_2
    L3_2 = A0_2.view
    L4_2 = L3_2
    L3_2 = L3_2.insert
    L5_2 = A0_2.send
    L5_2 = L5_2.view
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.send
    L4_2 = L2_2 - 30
    L3_2.x = L4_2
    L3_2 = A0_2.send
    L4_2 = A0_2.messageFieldBG
    L4_2 = L4_2.y
    L4_2 = L4_2 + 1
    L3_2.y = L4_2
  end
end

function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = {}
  L2_2.MessageView = A0_2
  L1_2.params = L2_2
  L2_2 = L4_1
  L2_2 = L2_2.showOverlay
  L3_2 = "Scenes.TraineesOverlay"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.messageField
  L2_2.isVisible = false
end

function L25_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.messageField
  if L2_2 then
    L2_2 = A0_2.messageField
    L2_2.isVisible = A1_2
  end
end

setTextFieldVisibility = L25_1

function L25_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.list
  L2_2.isVisible = A1_2
  L2_2 = A0_2.messageFieldBG
  L2_2.isVisible = A1_2
  L2_2 = A0_2.messageField
  L2_2.isVisible = A1_2
  L2_2 = A0_2.send
  L2_2.isVisible = A1_2
  L2_2 = A0_2.showTraineesListButton
  L2_2 = L2_2.view
  L2_2.isVisible = A1_2
  L2_2 = A0_2.schoolDescription
  L3_2 = not A1_2
  L2_2.isVisible = L3_2
  L2_2 = A0_2.traineeProgressBar
  L2_2 = L2_2.view
  L2_2.isVisible = A1_2
  L2_2 = A0_2.infoButton
  L2_2.isVisible = A1_2
end

setChatItemsVisibility = L25_1

function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L12_1
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = {}
  L4_2 = L1_1
  L4_2 = L4_2["New Trainee"]
  L3_2.label = L4_2
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "Buttons/FC-Select-Deck6.png"
  L4_2 = L4_2 .. L5_2
  L3_2.defaultFile = L4_2
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "Buttons/FC-gui-select.png"
  L4_2 = L4_2 .. L5_2
  L3_2.overFile = L4_2
  L3_2.width = 80
  L3_2.height = 30
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = L24_1
    L1_3 = A0_2
    L0_3(L1_3)
  end
  
  L3_2.onRelease = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.showTraineesListButton = L1_2
  L1_2 = A0_2.view
  L2_2 = L1_2
  L1_2 = L1_2.insert
  L3_2 = A0_2.showTraineesListButton
  L3_2 = L3_2.view
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.showTraineesListButton
  L2_2 = A0_2.messageFieldBG
  L2_2 = L2_2.x
  L3_2 = A0_2.messageFieldBG
  L3_2 = L3_2.width
  L3_2 = L3_2 / 2
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2.showTraineesListButton
  L3_2 = L3_2.width
  L3_2 = L3_2 / 2
  L2_2 = L2_2 + L3_2
  L1_2.x = L2_2
  L1_2 = A0_2.showTraineesListButton
  L2_2 = A0_2.messageFieldBG
  L2_2 = L2_2.y
  L3_2 = A0_2.messageFieldBG
  L3_2 = L3_2.height
  L3_2 = L3_2 / 2
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2.showTraineesListButton
  L3_2 = L3_2.height
  L3_2 = L3_2 / 2
  L2_2 = L2_2 - L3_2
  L2_2 = L2_2 - 10
  L1_2.y = L2_2
  L1_2 = {}
  L2_2 = A0_2.view
  L1_2.parent = L2_2
  L2_2 = L1_1
  L2_2 = L2_2["School Description"]
  L1_2.text = L2_2
  L1_2.x = 0
  L1_2.y = 0
  L2_2 = Constants
  L2_2 = L2_2.fontForTitle
  L2_2 = L2_2()
  L1_2.font = L2_2
  L1_2.fontSize = 12
  L2_2 = display
  L2_2 = L2_2.contentWidth
  L2_2 = L2_2 * 0.6
  L1_2.width = L2_2
  L1_2.align = "center"
  L2_2 = mainPlayer
  L2_2 = L2_2.level
  L3_2 = Constants
  L3_2 = L3_2.UnlockLevel_School
  if L2_2 < L3_2 then
    L2_2 = L1_2.text
    L3_2 = L1_1
    L3_2 = L3_2["School Level Description"]
    L2_2 = L2_2 .. L3_2
    L1_2.text = L2_2
  else
    L2_2 = L1_2.text
    L3_2 = L1_1
    L3_2 = L3_2["Alert About Status button"]
    L2_2 = L2_2 .. L3_2
    L1_2.text = L2_2
  end
  L2_2 = display
  L2_2 = L2_2.newText
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2.schoolDescription = L2_2
  L2_2 = A0_2.schoolDescription
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = Constants
  L4_2 = L4_2.darkBlueColor
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = A0_2.schoolDescription
  L3_2 = display
  L3_2 = L3_2.contentCenterX
  L2_2.x = L3_2
  L2_2 = A0_2.schoolDescription
  L3_2 = display
  L3_2 = L3_2.contentCenterY
  L4_2 = A0_2.schoolDescription
  L4_2 = L4_2.height
  L3_2 = L3_2 - L4_2
  L2_2.y = L3_2
  L2_2 = {}
  L2_2.id = "Trainee progress"
  L3_2 = display
  L3_2 = L3_2.contentWidth
  L3_2 = L3_2 * 0.45
  L2_2.width = L3_2
  L2_2.height = 30
  L3_2 = getTrainerProgressionAmount
  L3_2 = L3_2()
  L2_2.initialValue = L3_2
  L3_2 = Constants
  L3_2 = L3_2.Maximum_Trainees_Per_Level
  L2_2.maxValue = L3_2
  L2_2.alpha = 0.7
  L3_2 = Theme
  L3_2 = L3_2.potionBarColor
  L2_2.initialBarColor = L3_2
  L3_2 = Theme
  L3_2 = L3_2.potionBarBorderColor
  L2_2.borderColor = L3_2
  L3_2 = L1_1
  L3_2 = L3_2.localizedString
  L4_2 = "Trained Progression Label"
  L5_2 = {}
  L6_2 = L1_1
  L6_2 = L6_2.adjustNumber
  L7_2 = mainPlayer
  L7_2 = L7_2.numberOfTrainedPlayers
  L6_2 = L6_2(L7_2)
  L5_2.trained = L6_2
  L6_2 = L1_1
  L6_2 = L6_2.adjustNumber
  L7_2 = getCapacityOfTrainerProgression
  L7_2, L8_2, L9_2 = L7_2()
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2.capacity = L6_2
  L6_2 = L1_1
  L6_2 = L6_2.adjustNumber
  L7_2 = getLevelOfTrainerProgression
  L7_2, L8_2, L9_2 = L7_2()
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2.level = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.label = L3_2
  L3_2 = Theme
  L3_2 = L3_2.potionBarLabelColor
  L2_2.labelColor = L3_2
  L3_2 = L13_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.traineeProgressBar = L3_2
  L3_2 = A0_2.view
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.traineeProgressBar
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.traineeProgressBar
  L3_2 = L3_2.view
  L4_2 = A0_2.showTraineesListButton
  L4_2 = L4_2.y
  L3_2.y = L4_2
  L3_2 = {}
  L4_2 = mainPlayer
  L4_2 = L4_2.trainer
  L3_2.initialStatus = L4_2
  
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setChatItemsVisibility
    L2_3 = mainPlayer
    L2_3 = L2_3.trainer
    L0_3(L1_3, L2_3)
  end
  
  L3_2.callbackFunction = L4_2
  L4_2 = A0_2.messageField
  L3_2.textFieldObject = L4_2
  L4_2 = L14_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.trainerStatusButton = L4_2
  L4_2 = A0_2.view
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = A0_2.trainerStatusButton
  L6_2 = L6_2.view
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.trainerStatusButton
  L5_2 = A0_2.messageFieldBG
  L5_2 = L5_2.x
  L6_2 = A0_2.messageFieldBG
  L6_2 = L6_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L6_2 = A0_2.trainerStatusButton
  L6_2 = L6_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 - L6_2
  L4_2.x = L5_2
  L4_2 = A0_2.trainerStatusButton
  L5_2 = A0_2.showTraineesListButton
  L5_2 = L5_2.y
  L4_2.y = L5_2
  L4_2 = A0_2.trainerStatusButton
  L5_2 = A0_2.messageFieldBG
  L5_2 = L5_2.x
  L6_2 = A0_2.messageFieldBG
  L6_2 = L6_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L6_2 = A0_2.trainerStatusButton
  L6_2 = L6_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 - L6_2
  L4_2.onStatusXPos = L5_2
  L4_2 = A0_2.trainerStatusButton
  L5_2 = A0_2.showTraineesListButton
  L5_2 = L5_2.y
  L4_2.onStatusYPos = L5_2
  L4_2 = A0_2.trainerStatusButton
  L5_2 = A0_2.schoolDescription
  L5_2 = L5_2.x
  L4_2.offStatusXPos = L5_2
  L4_2 = A0_2.trainerStatusButton
  L5_2 = A0_2.schoolDescription
  L5_2 = L5_2.y
  L6_2 = A0_2.schoolDescription
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L5_2 = L5_2 + 10
  L6_2 = A0_2.trainerStatusButton
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L4_2.offStatusYPos = L5_2
  L4_2 = mainPlayer
  L4_2 = L4_2.level
  L5_2 = Constants
  L5_2 = L5_2.UnlockLevel_School
  if L4_2 < L5_2 then
    L4_2 = A0_2.trainerStatusButton
    L4_2.isVisible = false
  end
  L4_2 = display
  L4_2 = L4_2.contentWidth
  L4_2 = L4_2 - 40
  L5_2 = A0_2.trainerStatusButton
  L5_2 = L5_2.width
  L4_2 = L4_2 - L5_2
  L5_2 = A0_2.showTraineesListButton
  L5_2 = L5_2.width
  L4_2 = L4_2 - L5_2
  L5_2 = A0_2.traineeProgressBar
  L5_2 = L5_2.width
  L4_2 = L4_2 - L5_2
  L4_2 = L4_2 / 2
  L5_2 = A0_2.traineeProgressBar
  L5_2 = L5_2.view
  L6_2 = A0_2.showTraineesListButton
  L6_2 = L6_2.x
  L7_2 = A0_2.showTraineesListButton
  L7_2 = L7_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L6_2 = L6_2 + L4_2
  L7_2 = A0_2.traineeProgressBar
  L7_2 = L7_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L5_2.x = L6_2
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = A0_2.view
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "General/InfoButton.png"
  L7_2 = L7_2 .. L8_2
  L8_2 = 14
  L9_2 = 14
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  A0_2.infoButton = L5_2
  L5_2 = A0_2.infoButton
  L6_2 = A0_2.traineeProgressBar
  L6_2 = L6_2.x
  L7_2 = A0_2.traineeProgressBar
  L7_2 = L7_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L5_2.x = L6_2
  L5_2 = A0_2.infoButton
  L6_2 = A0_2.traineeProgressBar
  L6_2 = L6_2.y
  L7_2 = A0_2.traineeProgressBar
  L7_2 = L7_2.height
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 + 2
  L5_2.y = L6_2
  L5_2 = A0_2.infoButton
  L6_2 = L5_2
  L5_2 = L5_2.addEventListener
  L7_2 = "touch"
  
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = A0_3.phase
    if L1_3 == "ended" then
      L1_3 = A0_2
      L1_3 = L1_3.messageField
      L1_3.isVisible = false
      L1_3 = L4_1
      L1_3 = L1_3.showOverlay
      L2_3 = "Scenes.WarningOverlay"
      L3_3 = {}
      L4_3 = {}
      L5_3 = L1_1
      L5_3 = L5_3["Training Reward Desc"]
      L4_3.description = L5_3
      L5_3 = Constants
      L5_3 = L5_3.Path_Assets
      L6_3 = "Shop/4. Gold Pack.png"
      L5_3 = L5_3 .. L6_3
      L4_3.image = L5_3
      L5_3 = L1_1
      L5_3 = L5_3["Training Reward"]
      L4_3.title = L5_3
      L4_3.imageWidth = 130
      L4_3.imageHeight = 130
      L5_3 = Constants
      L5_3 = L5_3.Coach_base_reward
      L6_3 = getLevelOfTrainerProgression
      L6_3 = L6_3()
      L5_3 = L5_3 * L6_3
      L4_3.goldAmount = L5_3
      L5_3 = A0_2
      L5_3 = L5_3.messageField
      L4_3.textFieldObject = L5_3
      L3_3.params = L4_3
      L1_3(L2_3, L3_3)
      L1_3 = true
      return L1_3
    end
  end
  
  L5_2(L6_2, L7_2, L8_2)
end

function L26_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A4_2 then
    L5_2 = {}
    A4_2 = L5_2
  end
  L5_2 = setmetatable
  L6_2 = A4_2
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  A0_2.__index = A0_2
  L5_2 = {}
  A0_2.sortedMessages = L5_2
  L5_2 = {}
  A4_2.results = L5_2
  L5_2 = {}
  A4_2.buttons1 = L5_2
  L5_2 = {}
  A4_2.buttons2 = L5_2
  L5_2 = {}
  A4_2.buttons3 = L5_2
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  A4_2.view = L5_2
  L5_2 = trainer
  A4_2.trainer = L5_2
  A4_2.isChiefMessage = A3_2
  if A1_2 == 2 then
    L5_2 = A4_2.trainer
    if L5_2 then
      L5_2 = L23_1
      L6_2 = A4_2
      L7_2 = 50
      L5_2(L6_2, L7_2)
      L5_2 = L25_1
      L6_2 = A4_2
      L5_2(L6_2)
    else
      L5_2 = L23_1
      L6_2 = A4_2
      L7_2 = 1
      L5_2(L6_2, L7_2)
    end
  end
  A4_2.size = A2_2
  if A2_2 == 2 then
    L5_2 = display
    L5_2 = L5_2.contentWidth
    L5_2 = L5_2 - 11
    A4_2.width = L5_2
    L5_2 = display
    L5_2 = L5_2.contentHeight
    L5_2 = L5_2 - 70
    A4_2.height = L5_2
    L5_2 = math
    L5_2 = L5_2.floor
    L6_2 = display
    L6_2 = L6_2.contentWidth
    L6_2 = L6_2 - 20
    L6_2 = L6_2 / 6.4
    L5_2 = L5_2(L6_2)
    A4_2.charsPerLine = L5_2
    A4_2.fontSize = 12
    A4_2.lineHeight = 18
    L5_2 = A4_2.isChiefMessage
    if L5_2 then
      A4_2.lineHeight = 32
    end
  else
    A4_2.width = 260
    A4_2.height = 235
    A4_2.charsPerLine = 45
    A4_2.fontSize = 10
    A4_2.lineHeight = 15
  end
  L5_2 = A4_2.height
  if A1_2 == 2 then
    L6_2 = trainer
    if L6_2 then
      L5_2 = L5_2 - 86
    else
      L5_2 = L5_2 - 36
    end
  end
  A4_2.mode = A1_2
  L6_2 = L0_1
  L6_2 = L6_2.newTableView
  L7_2 = {}
  L8_2 = A4_2.width
  L7_2.width = L8_2
  L7_2.height = L5_2
  L7_2.id = "messages_tableview"
  L7_2.noLines = true
  L8_2 = onRowRender
  L7_2.onRowRender = L8_2
  L7_2.hideScrollBar = true
  L7_2.hideBackground = true
  L6_2 = L6_2(L7_2)
  A4_2.list = L6_2
  L6_2 = A4_2.list
  L7_2 = A4_2.width
  L7_2 = L7_2 / 2
  L6_2.x = L7_2
  if A1_2 == 2 then
    L6_2 = trainer
    if L6_2 then
      L6_2 = A4_2.list
      L7_2 = L5_2 / 2
      L7_2 = 86 + L7_2
      L6_2.y = L7_2
    else
      L6_2 = A4_2.list
      L7_2 = L5_2 / 2
      L7_2 = 36 + L7_2
      L6_2.y = L7_2
    end
  else
    L6_2 = A4_2.list
    L7_2 = L5_2 / 2
    L7_2 = -2 + L7_2
    L6_2.y = L7_2
  end
  L6_2 = A4_2.list
  L6_2.delegate = A4_2
  L6_2 = A4_2.view
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = A4_2.list
  L6_2(L7_2, L8_2)
  if A1_2 == 2 then
    L6_2 = graphics
    L6_2 = L6_2.newMask
    L7_2 = Constants
    L7_2 = L7_2.Path_Assets
    L8_2 = "Tabbar/FC-tabbar-search-mask"
    L9_2 = Constants
    L9_2 = L9_2.deviceSpecificFilePostfix
    L9_2 = L9_2()
    L10_2 = ".png"
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
    L6_2 = L6_2(L7_2)
    L7_2 = A4_2.list
    L8_2 = L7_2
    L7_2 = L7_2.setMask
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = A4_2.list
    L8_2 = display
    L8_2 = L8_2.contentCenterX
    L8_2 = L8_2 - 6
    L9_2 = A4_2.width
    L9_2 = L9_2 / 2
    L8_2 = L8_2 - L9_2
    L7_2.maskX = L8_2
    L7_2 = A4_2.list
    L8_2 = display
    L8_2 = L8_2.contentCenterY
    L8_2 = L8_2 - 95
    L9_2 = L5_2 / 2
    L8_2 = L8_2 - L9_2
    L7_2.maskY = L8_2
    L8_2 = A4_2
    L7_2 = A4_2.showOlderMessage
    L7_2(L8_2)
  elseif A1_2 == 1 then
    L6_2 = false
    isLoading = L6_2
    L6_2 = graphics
    L6_2 = L6_2.newMask
    L7_2 = Constants
    L7_2 = L7_2.Path_Assets
    L8_2 = "Tabbar/FC-tabbar-mask"
    L9_2 = Constants
    L9_2 = L9_2.deviceSpecificFilePostfix
    L9_2 = L9_2()
    L10_2 = ".png"
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
    L6_2 = L6_2(L7_2)
    L7_2 = A4_2.list
    L8_2 = L7_2
    L7_2 = L7_2.setMask
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = A4_2.list
    L8_2 = display
    L8_2 = L8_2.contentCenterX
    L8_2 = L8_2 - 6
    L9_2 = A4_2.width
    L9_2 = L9_2 / 2
    L8_2 = L8_2 - L9_2
    L7_2.maskX = L8_2
    L7_2 = A4_2.list
    L8_2 = display
    L8_2 = L8_2.contentCenterY
    L8_2 = L8_2 - 57
    L9_2 = L5_2 / 2
    L8_2 = L8_2 - L9_2
    L7_2.maskY = L8_2
  end
  
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = A4_2
    L1_3 = L1_3.mode
    if L1_3 == 2 then
      L1_3 = A4_2
      L2_3 = L1_3
      L1_3 = L1_3.showOlderMessage
      L1_3(L2_3)
    end
  end
  
  A4_2.messageListener = L6_2
  L6_2 = A4_2.trainer
  if L6_2 then
    L6_2 = Runtime
    L7_2 = L6_2
    L6_2 = L6_2.addEventListener
    L8_2 = "coachMessage"
    L9_2 = A4_2.messageListener
    L6_2(L7_2, L8_2, L9_2)
  else
    L6_2 = Runtime
    L7_2 = L6_2
    L6_2 = L6_2.addEventListener
    L8_2 = "message"
    L9_2 = A4_2.messageListener
    L6_2(L7_2, L8_2, L9_2)
  end
  return A4_2
end

new = L26_1

function L26_1(A0_2)
  local L1_2, L2_2
  L1_2 = hide
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2.messageCallback = nil
  L1_2 = A0_2.view
  L2_2 = L1_2
  L1_2 = L1_2.removeSelf
  L1_2(L2_2)
  A0_2.view = nil
  A0_2.list = nil
  A0_2.mode = nil
  A0_2.results = nil
  A0_2.send = nil
  A0_2.messageField = nil
  L1_2 = {}
  A0_2.sortedMessages = L1_2
end

destroyView = L26_1

function L26_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L26_1

function L26_1()
  local L0_2, L1_2, L2_2
  L0_2 = math
  L0_2 = L0_2.floor
  L1_2 = mainPlayer
  L1_2 = L1_2.numberOfTrainedPlayers
  L2_2 = Constants
  L2_2 = L2_2.Maximum_Trainees_Per_Level
  L1_2 = L1_2 / L2_2
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2 + 1
  return L0_2
end

getLevelOfTrainerProgression = L26_1

function L26_1()
  local L0_2, L1_2
  L0_2 = getLevelOfTrainerProgression
  L0_2 = L0_2()
  L1_2 = Constants
  L1_2 = L1_2.Maximum_Trainees_Per_Level
  L1_2 = L0_2 * L1_2
  return L1_2
end

getCapacityOfTrainerProgression = L26_1

function L26_1()
  local L0_2, L1_2
  L0_2 = mainPlayer
  L0_2 = L0_2.numberOfTrainedPlayers
  L1_2 = getLevelOfTrainerProgression
  L1_2 = L1_2()
  L0_2 = L0_2 / L1_2
  return L0_2
end

getTrainerProgressionAmount = L26_1
