local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1
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
L10_1 = "Constants"
L9_1(L10_1)
L9_1 = require
L10_1 = "Components.TDButtonView"
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
L20_1 = nil
L21_1 = false
isLoading = L21_1

function L21_1(A0_2)
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

function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = mainPlayer
  L1_2 = L1_2.settings
  L1_2 = L1_2.messageTimeStamp
  if L1_2 == nil then
    L1_2 = mainPlayer
    L2_2 = L1_2
    L1_2 = L1_2.setSettingForKey
    L3_2 = "messageTimeStamp"
    L4_2 = 0
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = mainPlayer
    L2_2 = L1_2
    L1_2 = L1_2.saveSettings
    L1_2(L2_2)
  end
  L1_2 = A0_2.creationDate
  L2_2 = mainPlayer
  L2_2 = L2_2.settings
  L2_2 = L2_2.messageTimeStamp
  if L1_2 > L2_2 then
    L1_2 = hub
    L2_2 = hub
    L2_2 = L2_2.unreadMessage
    L2_2 = L2_2 + 1
    L1_2.unreadMessage = L2_2
  end
  L1_2 = hub
  L2_2 = math
  L2_2 = L2_2.min
  L3_2 = hub
  L3_2 = L3_2.unreadMessage
  L4_2 = 20
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.unreadMessage = L2_2
  L1_2 = log3
  L2_2 = "message received  = "
  L3_2 = L6_1
  L3_2 = L3_2.encode
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = _profanityList
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2.text
    L7_2 = L6_2
    L6_2 = L6_2.gsub
    L8_2 = L5_2
    L9_2 = "***"
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    A0_2.text = L6_2
  end
  L1_2 = hub
  L1_2 = L1_2.battleMessages
  L2_2 = A0_2.id
  L1_2[L2_2] = A0_2
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.dispatchEvent
  L3_2 = {}
  L3_2.name = "message"
  L3_2.message = A0_2
  L1_2(L2_2, L3_2)
end

messageCallback = L22_1

function L22_1(A0_2)
  local L1_2, L2_2
  L1_2 = log3
  L2_2 = "hide called"
  L1_2(L2_2)
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
  local L1_2
  L1_2 = A0_2.messageField
  if L1_2 ~= nil then
    L1_2 = isLoading
    if not L1_2 then
      L1_2 = A0_2.messageField
      L1_2.isVisible = true
    end
  end
end

show = L22_1

function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = {}
  A0_2.results = L2_2
  L2_2 = false
  isLoading = L2_2
  L2_2 = log3
  L3_2 = "Number of messages "
  L4_2 = battleMessages
  L4_2 = #L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.list
  L3_2 = L2_2
  L2_2 = L2_2.deleteAllRows
  L2_2(L3_2)
  L2_2 = battleMessages
  L2_2 = #L2_2
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
    L3_2 = battleMessages
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L6_2.messageType
      if L7_2 ~= -1 then
        L7_2 = A0_2.results
        L8_2 = L6_2.id
        L7_2[L8_2] = L6_2
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
  if L2_2 ~= 12 then
    L2_2 = A1_2.messageType
    if L2_2 ~= 13 then
      L2_2 = A1_2.messageType
      if L2_2 ~= 7 then
        L2_2 = A1_2.messageType
        if L2_2 ~= 8 then
          L2_2 = A1_2.messageType
          if L2_2 ~= 3 then
            L2_2 = A1_2.messageType
            if L2_2 ~= 10 then
              L2_2 = A1_2.messageType
              if L2_2 ~= 11 then
                L2_2 = A1_2.messageType
                if L2_2 ~= 9 then
                  L2_2 = A1_2.messageType
                  if L2_2 ~= 15 then
                    L2_2 = A1_2.messageType
                    if L2_2 ~= 14 then
                      L2_2 = A1_2.messageType
                      if L2_2 ~= 13 then
                        L2_2 = A1_2.messageType
                        if L2_2 ~= 5 then
                          L2_2 = A1_2.messageType
                          if L2_2 ~= 6 then
                            goto lbl_82
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L2_2 = L1_1
  L2_2 = L2_2.lang
  if L2_2 ~= "fa" then
    L2_2 = L1_1
    L2_2 = L2_2.lang
    if L2_2 ~= "ar" then
      goto lbl_68
    end
  end
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = L8_1
  L3_2 = L3_2.stringUTFLength
  L4_2 = A1_2.text
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2.charsPerLine
  L3_2 = L3_2 / L4_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 + 1
  L3_2 = A0_2.lineHeight
  L2_2 = L2_2 * L3_2
  L2_2 = L2_2 + 10
  do return L2_2 end
  goto lbl_162
  ::lbl_68::
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = L8_1
  L3_2 = L3_2.stringUTFLength
  L4_2 = A1_2.text
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2.charsPerLine
  L3_2 = L3_2 / L4_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 + 1
  L3_2 = A0_2.lineHeight
  L2_2 = L2_2 * L3_2
  do return L2_2 end
  goto lbl_162
  ::lbl_82::
  L2_2 = A1_2.messageType
  if L2_2 ~= 4 then
    L2_2 = A1_2.messageType
    if L2_2 ~= 2 then
      goto lbl_104
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
  L2_2 = L2_2 + 20
  do return L2_2 end
  goto lbl_162
  ::lbl_104::
  L2_2 = A1_2.messageType
  if L2_2 == 1 then
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
      L2_2 = L2_2 + 20
      return L2_2
  end
  else
    L2_2 = L1_1
    L2_2 = L2_2.lang
    if L2_2 ~= "fa" then
      L2_2 = L1_1
      L2_2 = L2_2.lang
      if L2_2 ~= "ar" then
        goto lbl_149
      end
    end
    L2_2 = math
    L2_2 = L2_2.floor
    L3_2 = L8_1
    L3_2 = L3_2.stringUTFLength
    L4_2 = A1_2.text
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2.charsPerLine
    L3_2 = L3_2 / L4_2
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2 + 1
    L3_2 = A0_2.lineHeight
    L2_2 = L2_2 * L3_2
    L2_2 = L2_2 + 10
    do return L2_2 end
    goto lbl_162
    ::lbl_149::
    L2_2 = math
    L2_2 = L2_2.floor
    L3_2 = L8_1
    L3_2 = L3_2.stringUTFLength
    L4_2 = A1_2.text
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2.charsPerLine
    L3_2 = L3_2 / L4_2
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2 + 1
    L3_2 = A0_2.lineHeight
    L2_2 = L2_2 * L3_2
    return L2_2
  end
  ::lbl_162::
end

messageHeight = L22_1

function L22_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2.messageType
  if L2_2 ~= 13 then
    L2_2 = A1_2.messageType
    if L2_2 ~= 7 then
      L2_2 = A1_2.messageType
      if L2_2 ~= 8 then
        L2_2 = A1_2.messageType
        if L2_2 ~= 5 then
          L2_2 = A1_2.messageType
          if L2_2 ~= 6 then
            goto lbl_20
          end
        end
      end
    end
  end
  L2_2 = A0_2.width
  L2_2 = L2_2 - 35
  do return L2_2 end
  goto lbl_67
  ::lbl_20::
  L2_2 = A1_2.messageType
  if L2_2 ~= 4 then
    L2_2 = A1_2.messageType
    if L2_2 ~= 2 then
      L2_2 = A1_2.messageType
      if L2_2 ~= 3 then
        L2_2 = A1_2.messageType
        if L2_2 ~= 10 then
          L2_2 = A1_2.messageType
          if L2_2 ~= 11 then
            L2_2 = A1_2.messageType
            if L2_2 ~= 9 then
              L2_2 = A1_2.messageType
              if L2_2 ~= 12 then
                L2_2 = A1_2.messageType
                if L2_2 ~= 15 then
                  L2_2 = A1_2.messageType
                  if L2_2 ~= 14 then
                    L2_2 = A1_2.messageType
                    if L2_2 ~= 13 then
                      goto lbl_54
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L2_2 = A0_2.width
  L2_2 = L2_2 - 125
  do return L2_2 end
  goto lbl_67
  ::lbl_54::
  L2_2 = A1_2.messageType
  if L2_2 == 1 then
    L2_2 = A1_2.link
    if L2_2 then
      L2_2 = A0_2.width
      L2_2 = L2_2 - 125
      return L2_2
  end
  else
    L2_2 = A0_2.width
    L2_2 = L2_2 - 35
    return L2_2
  end
  ::lbl_67::
end

messageWidth = L22_1

function L22_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2.messageType
  if L2_2 ~= 13 then
    L2_2 = A1_2.messageType
    if L2_2 ~= 7 then
      L2_2 = A1_2.messageType
      if L2_2 ~= 8 then
        L2_2 = A1_2.messageType
        if L2_2 ~= 5 then
          L2_2 = A1_2.messageType
          if L2_2 ~= 6 then
            goto lbl_21
          end
        end
      end
    end
  end
  L2_2 = A0_2.width
  L2_2 = L2_2 / 2
  L2_2 = L2_2 - 8
  do return L2_2 end
  goto lbl_71
  ::lbl_21::
  L2_2 = A1_2.messageType
  if L2_2 ~= 4 then
    L2_2 = A1_2.messageType
    if L2_2 ~= 2 then
      L2_2 = A1_2.messageType
      if L2_2 ~= 3 then
        L2_2 = A1_2.messageType
        if L2_2 ~= 10 then
          L2_2 = A1_2.messageType
          if L2_2 ~= 11 then
            L2_2 = A1_2.messageType
            if L2_2 ~= 9 then
              L2_2 = A1_2.messageType
              if L2_2 ~= 12 then
                L2_2 = A1_2.messageType
                if L2_2 ~= 15 then
                  L2_2 = A1_2.messageType
                  if L2_2 ~= 14 then
                    L2_2 = A1_2.messageType
                    if L2_2 ~= 13 then
                      goto lbl_56
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L2_2 = A0_2.width
  L2_2 = L2_2 / 2
  L2_2 = L2_2 - 54
  do return L2_2 end
  goto lbl_71
  ::lbl_56::
  L2_2 = A1_2.messageType
  if L2_2 == 1 then
    L2_2 = A1_2.link
    if L2_2 then
      L2_2 = A0_2.width
      L2_2 = L2_2 / 2
      L2_2 = L2_2 - 54
      return L2_2
  end
  else
    L2_2 = A0_2.width
    L2_2 = L2_2 / 2
    L2_2 = L2_2 - 8
    return L2_2
  end
  ::lbl_71::
end

messageX = L22_1

function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = A0_2.row
  L2_2 = A0_2.row
  L3_2 = A0_2.target
  L3_2 = L3_2.delegate
  L4_2 = L2_2.id
  if L4_2 == -1 then
    L4_2 = display
    L4_2 = L4_2.newRoundedRect
    L5_2 = L1_2
    L6_2 = 10
    L7_2 = 4
    L8_2 = L3_2.width
    L8_2 = L8_2 - 30
    L9_2 = L2_2.contentHeight
    L9_2 = L9_2 - 8
    L10_2 = 3
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L5_2 = L15_1
    L5_2 = L5_2 + 7
    L4_2.x = L5_2
    L5_2 = L2_2.contentHeight
    L5_2 = L5_2 / 2
    L4_2.y = L5_2
    L4_2.strokeWidth = 1
    L6_2 = L4_2
    L5_2 = L4_2.setStrokeColor
    L7_2 = Constants
    L7_2 = L7_2.blueColor
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L7_2()
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L5_2 = display
    L5_2 = L5_2.newText
    L6_2 = L1_2
    L7_2 = L1_1
    L7_2 = L7_2["No messages"]
    L8_2 = 0
    L9_2 = 0
    L10_2 = Constants
    L10_2 = L10_2.fontForSubtitle
    L10_2 = L10_2()
    L11_2 = 12
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L7_2 = L5_2
    L6_2 = L5_2.setFillColor
    L8_2 = Constants
    L8_2 = L8_2.darkBlueColor
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L8_2()
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L6_2 = L4_2.x
    L5_2.x = L6_2
    L6_2 = L4_2.height
    L6_2 = L6_2 / 2
    L5_2.y = L6_2
  else
    L4_2 = nil
    L5_2 = hub
    L5_2 = L5_2.battleMessages
    L6_2 = L18_1
    L7_2 = L2_2.id
    L6_2 = L6_2[L7_2]
    L4_2 = L5_2[L6_2]
    L5_2 = L4_2.text
    if L5_2 then
      L5_2 = pairs
      L6_2 = _profanityList
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      for L8_2, L9_2 in L5_2, L6_2, L7_2 do
        L10_2 = L4_2.text
        L11_2 = L10_2
        L10_2 = L10_2.gsub
        L12_2 = L9_2
        L13_2 = "***"
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        L4_2.text = L10_2
      end
    end
    L6_2 = L3_2
    L5_2 = L3_2.messageHeight
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L5_2 = 20 + L5_2
    L6_2 = display
    L6_2 = L6_2.newRect
    L7_2 = L1_2
    L8_2 = 5
    L9_2 = 5
    L10_2 = 15
    L11_2 = 15
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L8_2 = L6_2
    L7_2 = L6_2.setFillColor
    L9_2 = 1
    L10_2 = 1
    L11_2 = 1
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L6_2.rotation = 45
    L6_2.x = 12
    L7_2 = L2_2.contentHeight
    L7_2 = L7_2 / 2
    L6_2.y = L7_2
    L6_2.strokeWidth = 1
    L8_2 = L6_2
    L7_2 = L6_2.setStrokeColor
    L9_2 = Constants
    L9_2 = L9_2.blueColor
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L9_2()
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L7_2 = display
    L7_2 = L7_2.newRoundedRect
    L8_2 = L1_2
    L9_2 = 10
    L10_2 = 4
    L11_2 = L3_2.width
    L11_2 = L11_2 - 30
    L12_2 = L5_2 - 3
    L13_2 = 3
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L8_2 = L15_1
    L8_2 = L8_2 + 7
    L7_2.x = L8_2
    L8_2 = L5_2 / 2
    L7_2.y = L8_2
    L7_2.strokeWidth = 1
    L9_2 = L7_2
    L8_2 = L7_2.setStrokeColor
    L10_2 = Constants
    L10_2 = L10_2.blueColor
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L10_2()
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L8_2 = nil
    L9_2 = L4_2.text
    if L9_2 then
      L9_2 = system
      L9_2 = L9_2.getInfo
      L10_2 = "build"
      L9_2 = L9_2(L10_2)
      if "2013.1137" < L9_2 then
        L9_2 = system
        L9_2 = L9_2.getInfo
        L10_2 = "platformName"
        L9_2 = L9_2(L10_2)
        if L9_2 ~= "Android" then
          L9_2 = L1_1
          L9_2 = L9_2.lang
          if L9_2 == "fa" then
            goto lbl_149
          end
        end
      end
      L9_2 = L1_1
      L9_2 = L9_2.lang
      if L9_2 == "ar" then
        ::lbl_149::
        L9_2 = {}
        L9_2.parent = L1_2
        L10_2 = L4_2.text
        L9_2.text = L10_2
        L9_2.x = 0
        L9_2.y = 0
        L11_2 = L3_2
        L10_2 = L3_2.messageWidth
        L12_2 = L4_2
        L10_2 = L10_2(L11_2, L12_2)
        L9_2.width = L10_2
        L11_2 = L3_2
        L10_2 = L3_2.messageHeight
        L12_2 = L4_2
        L10_2 = L10_2(L11_2, L12_2)
        L9_2.height = L10_2
        L10_2 = Constants
        L10_2 = L10_2.fontForSubtitle
        L10_2 = L10_2()
        L9_2.font = L10_2
        L10_2 = L3_2.fontSize
        L9_2.fontSize = L10_2
        L9_2.align = "right"
        L10_2 = display
        L10_2 = L10_2.newText
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        L8_2 = L10_2
      else
        L9_2 = system
        L9_2 = L9_2.getInfo
        L10_2 = "platformName"
        L9_2 = L9_2(L10_2)
        if L9_2 == "Android" then
          L9_2 = display
          L9_2 = L9_2.newText
          L10_2 = L1_2
          L11_2 = L4_2.text
          L12_2 = 0
          L13_2 = 0
          L15_2 = L3_2
          L14_2 = L3_2.messageWidth
          L16_2 = L4_2
          L14_2 = L14_2(L15_2, L16_2)
          L16_2 = L3_2
          L15_2 = L3_2.messageHeight
          L17_2 = L4_2
          L15_2 = L15_2(L16_2, L17_2)
          L16_2 = Constants
          L16_2 = L16_2.fontForSubtitle
          L16_2 = L16_2()
          L17_2 = L3_2.fontSize
          L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
          L8_2 = L9_2
        else
          L9_2 = display
          L9_2 = L9_2.newText
          L10_2 = L1_2
          L11_2 = L4_2.text
          L12_2 = 0
          L13_2 = 0
          L15_2 = L3_2
          L14_2 = L3_2.messageWidth
          L16_2 = L4_2
          L14_2 = L14_2(L15_2, L16_2)
          L16_2 = L3_2
          L15_2 = L3_2.messageHeight
          L17_2 = L4_2
          L15_2 = L15_2(L16_2, L17_2)
          L16_2 = Constants
          L16_2 = L16_2.fontForSubtitle
          L16_2 = L16_2()
          L17_2 = L3_2.fontSize
          L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
          L8_2 = L9_2
        end
      end
      L10_2 = L3_2
      L9_2 = L3_2.messageX
      L11_2 = L4_2
      L9_2 = L9_2(L10_2, L11_2)
      L8_2.x = L9_2
      L9_2 = L1_1
      L9_2 = L9_2.lang
      if L9_2 == "en" then
        L9_2 = L5_2 / 2
        L9_2 = L9_2 - 3
        L8_2.y = L9_2
      else
        L9_2 = L1_1
        L9_2 = L9_2.lang
        if L9_2 ~= "fa" then
          L9_2 = L1_1
          L9_2 = L9_2.lang
          if L9_2 ~= "ar" then
            goto lbl_242
          end
        end
        L9_2 = L5_2 / 2
        L9_2 = L9_2 - 3
        L8_2.y = L9_2
      end
      ::lbl_242::
      L10_2 = L8_2
      L9_2 = L8_2.setFillColor
      L11_2 = Constants
      L11_2 = L11_2.darkBlueColor
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L11_2()
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    end
    L9_2 = nil
    L10_2 = nil
    L10_2 = L4_2.creationDate
    L11_2 = os
    L11_2 = L11_2.time
    L11_2 = L11_2()
    L12_2 = mainPlayer
    L12_2 = L12_2.timeDelta
    L11_2 = L11_2 + L12_2
    L12_2 = math
    L12_2 = L12_2.floor
    L13_2 = L11_2 - L10_2
    L13_2 = L13_2 / 60
    L12_2 = L12_2(L13_2)
    if L12_2 < 43200 then
      if L12_2 < 1440 then
        if L12_2 < 60 then
          if L12_2 <= 1 then
            L13_2 = L1_1
            L9_2 = L13_2["min ago"]
          else
            L13_2 = L1_1
            L13_2 = L13_2.localizedString
            L14_2 = "mins ago"
            L15_2 = {}
            L16_2 = L1_1
            L16_2 = L16_2.adjustNumber
            L17_2 = L12_2
            L16_2 = L16_2(L17_2)
            L15_2.num = L16_2
            L13_2 = L13_2(L14_2, L15_2)
            L9_2 = L13_2
          end
        else
          L13_2 = math
          L13_2 = L13_2.floor
          L14_2 = L12_2 / 60
          L13_2 = L13_2(L14_2)
          L9_2 = L13_2
          if 1 < L9_2 then
            L13_2 = L1_1
            L13_2 = L13_2.adjustNumber
            L14_2 = L9_2
            L13_2 = L13_2(L14_2)
            L9_2 = L13_2
            L13_2 = L1_1
            L13_2 = L13_2.localizedString
            L14_2 = "hours ago"
            L15_2 = {}
            L15_2.num = L9_2
            L13_2 = L13_2(L14_2, L15_2)
            L9_2 = L13_2
          else
            L13_2 = L1_1
            L9_2 = L13_2["hour ago"]
          end
        end
      else
        L13_2 = math
        L13_2 = L13_2.floor
        L14_2 = L12_2 / 1440
        L13_2 = L13_2(L14_2)
        L9_2 = L13_2
        if 1 < L9_2 then
          L13_2 = L1_1
          L13_2 = L13_2.adjustNumber
          L14_2 = L9_2
          L13_2 = L13_2(L14_2)
          L9_2 = L13_2
          L13_2 = L1_1
          L13_2 = L13_2.localizedString
          L14_2 = "days ago"
          L15_2 = {}
          L15_2.num = L9_2
          L13_2 = L13_2(L14_2, L15_2)
          L9_2 = L13_2
        else
          L13_2 = L1_1
          L9_2 = L13_2["day ago"]
        end
      end
    else
      L13_2 = math
      L13_2 = L13_2.floor
      L14_2 = L12_2 / 43200
      L13_2 = L13_2(L14_2)
      L9_2 = L13_2
      if 1 < L9_2 then
        L13_2 = L1_1
        L13_2 = L13_2.adjustNumber
        L14_2 = L9_2
        L13_2 = L13_2(L14_2)
        L9_2 = L13_2
        L13_2 = L1_1
        L13_2 = L13_2.localizedString
        L14_2 = "months ago"
        L15_2 = {}
        L15_2.num = L9_2
        L13_2 = L13_2(L14_2, L15_2)
        L9_2 = L13_2
      else
        L13_2 = L1_1
        L9_2 = L13_2["month ago"]
      end
    end
    L13_2 = nil
    L14_2 = L4_2.text
    if L14_2 then
      L14_2 = display
      L14_2 = L14_2.newText
      L15_2 = L1_2
      L16_2 = L9_2
      L17_2 = 0
      L18_2 = 0
      L19_2 = Constants
      L19_2 = L19_2.fontForSubtitle
      L19_2 = L19_2()
      L20_2 = 8
      L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L13_2 = L14_2
      L15_2 = L13_2
      L14_2 = L13_2.setFillColor
      L16_2 = 0.39215686
      L17_2 = 0.39215686
      L18_2 = 0.39215686
      L14_2(L15_2, L16_2, L17_2, L18_2)
      L14_2 = L13_2.width
      L14_2 = L14_2 / 2
      L14_2 = 13 + L14_2
      L13_2.x = L14_2
      L14_2 = L7_2.y
      L15_2 = L7_2.height
      L15_2 = L15_2 / 2
      L14_2 = L14_2 + L15_2
      L15_2 = L13_2.height
      L15_2 = L15_2 / 2
      L14_2 = L14_2 - L15_2
      L14_2 = L14_2 - 1
      L13_2.y = L14_2
    end
    L14_2 = L4_2.messageType
    if L14_2 == 1 then
      L14_2 = display
      L14_2 = L14_2.newText
      L15_2 = L1_2
      L16_2 = L4_2.sender
      L17_2 = 0
      L18_2 = 0
      L19_2 = Constants
      L19_2 = L19_2.fontForSubtitle
      L19_2 = L19_2()
      L20_2 = 8
      L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L16_2 = L14_2
      L15_2 = L14_2.setFillColor
      L17_2 = 0
      L18_2 = 0
      L19_2 = 0
      L15_2(L16_2, L17_2, L18_2, L19_2)
      L15_2 = L7_2.x
      L16_2 = L7_2.width
      L16_2 = L16_2 / 2
      L15_2 = L15_2 + L16_2
      L16_2 = L14_2.width
      L16_2 = L16_2 / 2
      L15_2 = L15_2 - L16_2
      L15_2 = L15_2 - 6
      L14_2.x = L15_2
      L15_2 = L7_2.y
      L16_2 = L7_2.height
      L16_2 = L16_2 / 2
      L15_2 = L15_2 + L16_2
      L16_2 = L14_2.height
      L16_2 = L16_2 / 2
      L15_2 = L15_2 - L16_2
      L15_2 = L15_2 - 1
      L14_2.y = L15_2
    end
  end
end

onRowRender = L22_1

function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
          L1_2 = hub
          L2_2 = L1_2
          L1_2 = L1_2.publish
          L3_2 = {}
          L4_2 = {}
          L4_2.isLiveBattle = true
          L4_2.push_message_type = "chat"
          L5_2 = self
          L5_2 = L5_2.messageField
          L5_2 = L5_2.text
          L4_2.text = L5_2
          L4_2.messageType = 1
          L5_2 = mainPlayer
          L5_2 = L5_2.name
          L4_2.sender = L5_2
          L5_2 = os
          L5_2 = L5_2.time
          L5_2 = L5_2()
          L6_2 = mainPlayer
          L6_2 = L6_2.timeDelta
          L5_2 = L5_2 + L6_2
          L4_2.creationDate = L5_2
          L5_2 = os
          L5_2 = L5_2.time
          L5_2 = L5_2()
          L4_2.id = L5_2
          L5_2 = system
          L5_2 = L5_2.getTimer
          L5_2 = L5_2()
          L4_2.timestamp = L5_2
          L3_2.message = L4_2
          L1_2(L2_2, L3_2)
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
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
        L1_2 = hub
        L2_2 = L1_2
        L1_2 = L1_2.publish
        L3_2 = {}
        L4_2 = {}
        L4_2.isLiveBattle = true
        L4_2.push_message_type = "chat"
        L5_2 = A0_2.messageField
        L5_2 = L5_2.text
        L4_2.text = L5_2
        L4_2.messageType = 1
        L5_2 = mainPlayer
        L5_2 = L5_2.name
        L4_2.sender = L5_2
        L5_2 = os
        L5_2 = L5_2.time
        L5_2 = L5_2()
        L6_2 = mainPlayer
        L6_2 = L6_2.timeDelta
        L5_2 = L5_2 + L6_2
        L4_2.creationDate = L5_2
        L5_2 = os
        L5_2 = L5_2.time
        L5_2 = L5_2()
        L4_2.id = L5_2
        L5_2 = system
        L5_2 = L5_2.getTimer
        L5_2 = L5_2()
        L4_2.timestamp = L5_2
        L3_2.message = L4_2
        L1_2(L2_2, L3_2)
      end
    end
  end
  L1_2 = A0_2.messageField
  L1_2.text = ""
end

didPressSend = L22_1

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
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = log3
  L2_2 = "Number of messages "
  L3_2 = L21_1
  L4_2 = hub
  L4_2 = L4_2.battleMessages
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L1_2 = L22_1
  L2_2 = hub
  L2_2 = L2_2.battleMessages
  L1_2 = L1_2(L2_2)
  L18_1 = L1_2
  L1_2 = hub
  L1_2.unreadMessage = 0
  L1_2 = hub
  L1_2 = L1_2.battleMessages
  if L1_2 ~= nil then
    L1_2 = L21_1
    L2_2 = hub
    L2_2 = L2_2.battleMessages
    L1_2 = L1_2(L2_2)
    if 1 <= L1_2 then
      L1_2 = hub
      L2_2 = hub
      L2_2 = L2_2.battleMessages
      L3_2 = L18_1
      L3_2 = L3_2[1]
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.creationDate
      L1_2.timeStamp = L2_2
      L1_2 = log3
      L2_2 = "TIME STAMP"
      L3_2 = hub
      L3_2 = L3_2.timeStamp
      L1_2(L2_2, L3_2)
      L1_2 = mainPlayer
      L2_2 = L1_2
      L1_2 = L1_2.setSettingForKey
      L3_2 = "messageTimeStamp"
      L4_2 = hub
      L4_2 = L4_2.timeStamp
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = mainPlayer
      L2_2 = L1_2
      L1_2 = L1_2.saveSettings
      L1_2(L2_2)
    end
  end
  L1_2 = A0_2.list
  L2_2 = L1_2
  L1_2 = L1_2.deleteAllRows
  L1_2(L2_2)
  L1_2 = L18_1
  L1_2 = #L1_2
  L2_2 = L18_1
  L2_2 = #L2_2
  if 40 < L2_2 then
    L1_2 = 40
  end
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = hub
    L6_2 = L6_2.battleMessages
    L7_2 = L18_1
    L7_2 = L7_2[L5_2]
    L6_2 = L6_2[L7_2]
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
    L9_2.id = L5_2
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
  L2_2 = A0_2.list
  L3_2 = L2_2
  L2_2 = L2_2.scrollToY
  L4_2 = {}
  L4_2.y = 0
  L4_2.number = 0
  L2_2(L3_2, L4_2)
end

showOlderMessage = L23_1

function L23_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = log3
  L4_2 = "*****new*****Live Battle Message"
  L3_2(L4_2)
  if not A1_2 then
    L3_2 = {}
    A1_2 = L3_2
  end
  L3_2 = setmetatable
  L4_2 = A1_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  A0_2.__index = A0_2
  A1_2.battleId = A2_2
  L3_2 = L7_1
  L3_2 = L3_2.subscribeForBattleChat
  L4_2 = A2_2
  L3_2(L4_2)
  L3_2 = {}
  A1_2.results = L3_2
  L3_2 = {}
  A1_2.buttons1 = L3_2
  L3_2 = {}
  A1_2.buttons2 = L3_2
  L3_2 = A1_2.width
  if not L3_2 then
    L3_2 = display
    L3_2 = L3_2.contentWidth
    L3_2 = L3_2 - 11
  end
  A1_2.width = L3_2
  L3_2 = A1_2.height
  if not L3_2 then
    L3_2 = display
    L3_2 = L3_2.contentHeight
    L3_2 = L3_2 - 70
  end
  A1_2.height = L3_2
  L3_2 = A1_2.charsPerLine
  if not L3_2 then
    L3_2 = math
    L3_2 = L3_2.floor
    L4_2 = A1_2.width
    L4_2 = L4_2 - 49
    L4_2 = L4_2 / 6.4
    L3_2 = L3_2(L4_2)
  end
  A1_2.charsPerLine = L3_2
  A1_2.fontSize = 12
  A1_2.lineHeight = 18
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  A1_2.view = L3_2
  chatView = A1_2
  L3_2 = A1_2.width
  L3_2 = L3_2 - 29
  L10_1 = L3_2
  L3_2 = L10_1
  L3_2 = L3_2 - 50
  L11_1 = L3_2
  L3_2 = 40
  L12_1 = L3_2
  L3_2 = L11_1
  L3_2 = L3_2 / 2
  L3_2 = 50 + L3_2
  L13_1 = L3_2
  L3_2 = 78
  L14_1 = L3_2
  L3_2 = L10_1
  L3_2 = L3_2 / 2
  L15_1 = L3_2
  L3_2 = display
  L3_2 = L3_2.newRoundedRect
  L4_2 = A1_2.view
  L5_2 = 0
  L6_2 = 0
  L7_2 = L10_1
  L8_2 = 34
  L9_2 = 8
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2.strokeWidth = 2
  L5_2 = L3_2
  L4_2 = L3_2.setStrokeColor
  L6_2 = Constants
  L6_2 = L6_2.blueColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = Constants
  L6_2 = L6_2.lightBlueColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = L15_1
  L3_2.x = L4_2
  L4_2 = L3_2.height
  L4_2 = L4_2 / 2
  L4_2 = L4_2 + 1
  L3_2.y = L4_2
  L4_2 = A1_2.messageField
  if L4_2 == nil then
    L4_2 = native
    L4_2 = L4_2.newTextField
    L5_2 = 0
    L6_2 = L3_2.y
    L7_2 = L11_1
    L8_2 = 30
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    A1_2.messageField = L4_2
    L4_2 = A1_2.messageField
    L5_2 = L3_2.x
    L6_2 = L3_2.width
    L6_2 = L6_2 / 2
    L5_2 = L5_2 - L6_2
    L6_2 = L11_1
    L6_2 = L6_2 / 2
    L5_2 = L5_2 + L6_2
    L5_2 = L5_2 + 5
    L4_2.x = L5_2
    L4_2 = A1_2.messageField
    L5_2 = textListener
    L4_2.userInput = L5_2
    L4_2 = A1_2.messageField
    L5_2 = L4_2
    L4_2 = L4_2.addEventListener
    L6_2 = "userInput"
    L7_2 = textListener
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A1_2.messageField
    L4_2.isVisible = false
    L4_2 = A1_2.messageField
    L4_2.isEditable = true
    L4_2 = A1_2.messageField
    L5_2 = Constants
    L5_2 = L5_2.nativeFontForTextFields
    L5_2 = L5_2()
    L4_2.font = L5_2
    L4_2 = A1_2.messageField
    L5_2 = L4_2
    L4_2 = L4_2.setTextColor
    L6_2 = Constants
    L6_2 = L6_2.darkBlueColor
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2()
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L4_2 = A1_2.messageField
    L4_2.delegate = A1_2
    L4_2 = A1_2.view
    L5_2 = L4_2
    L4_2 = L4_2.insert
    L6_2 = A1_2.messageField
    L4_2(L5_2, L6_2)
    L4_2 = L9_1
    L5_2 = L4_2
    L4_2 = L4_2.new
    L6_2 = {}
    L7_2 = L12_1
    L6_2.width = L7_2
    L6_2.height = 22
    L7_2 = L1_1
    L7_2 = L7_2.Send
    L6_2.label = L7_2
    L7_2 = Constants
    L7_2 = L7_2.Path_Assets
    L8_2 = "BattleItems/battle_outcome_button.png"
    L7_2 = L7_2 .. L8_2
    L6_2.defaultFile = L7_2
    
    function L7_2()
      local L0_3, L1_3
      L0_3 = didPressSend
      L1_3 = A1_2
      L0_3(L1_3)
    end
    
    L6_2.onRelease = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    A1_2.send = L4_2
    L4_2 = A1_2.view
    L5_2 = L4_2
    L4_2 = L4_2.insert
    L6_2 = A1_2.send
    L6_2 = L6_2.view
    L4_2(L5_2, L6_2)
    L4_2 = A1_2.send
    L5_2 = L3_2.x
    L6_2 = L3_2.width
    L6_2 = L6_2 / 2
    L5_2 = L5_2 + L6_2
    L6_2 = A1_2.send
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L5_2 = L5_2 - L6_2
    L5_2 = L5_2 - 3
    L4_2.x = L5_2
    L4_2 = A1_2.send
    L5_2 = L3_2.y
    L5_2 = L5_2 + 1
    L4_2.y = L5_2
  end
  L4_2 = A1_2.height
  L4_2 = L4_2 - 36
  L5_2 = L0_1
  L5_2 = L5_2.newTableView
  L6_2 = {}
  L7_2 = A1_2.width
  L7_2 = L7_2 - 20
  L6_2.width = L7_2
  L6_2.height = L4_2
  L6_2.id = "messages_tableview"
  L6_2.noLines = true
  L7_2 = onRowRender
  L6_2.onRowRender = L7_2
  L6_2.hideScrollBar = true
  L7_2 = {}
  L8_2 = 1
  L9_2 = 1
  L10_2 = 1
  L11_2 = 0
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L6_2.backgroundColor = L7_2
  L5_2 = L5_2(L6_2)
  A1_2.list = L5_2
  L5_2 = A1_2.list
  L6_2 = A1_2.width
  L6_2 = L6_2 / 2
  L6_2 = L6_2 - 25
  L7_2 = A1_2.width
  L8_2 = A1_2.list
  L8_2 = L8_2.width
  L7_2 = L7_2 - L8_2
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L5_2.x = L6_2
  L5_2 = A1_2.list
  L6_2 = L4_2 / 2
  L6_2 = 36 + L6_2
  L5_2.y = L6_2
  L5_2 = A1_2.list
  L5_2.delegate = A1_2
  L5_2 = A1_2.view
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = A1_2.list
  L5_2(L6_2, L7_2)
  L5_2 = graphics
  L5_2 = L5_2.newMask
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "Tabbar/FC-tabbar-search-mask"
  L8_2 = Constants
  L8_2 = L8_2.deviceSpecificFilePostfix
  L8_2 = L8_2()
  L9_2 = ".png"
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
  L5_2 = L5_2(L6_2)
  L6_2 = A1_2.list
  L7_2 = L6_2
  L6_2 = L6_2.setMask
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A1_2.list
  L7_2 = display
  L7_2 = L7_2.contentCenterX
  L7_2 = L7_2 - 6
  L8_2 = A1_2.width
  L8_2 = L8_2 / 2
  L7_2 = L7_2 - L8_2
  L6_2.maskX = L7_2
  L6_2 = A1_2.list
  L7_2 = display
  L7_2 = L7_2.contentCenterY
  L7_2 = L7_2 - 95
  L8_2 = L4_2 / 2
  L7_2 = L7_2 - L8_2
  L6_2.maskY = L7_2
  L7_2 = A1_2
  L6_2 = A1_2.showOlderMessage
  L6_2(L7_2)
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
  L7_2 = A1_2.list
  L8_2 = L7_2
  L7_2 = L7_2.setMask
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = A1_2.list
  L8_2 = display
  L8_2 = L8_2.contentCenterX
  L8_2 = L8_2 - 6
  L9_2 = A1_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L7_2.maskX = L8_2
  L7_2 = A1_2.list
  L8_2 = display
  L8_2 = L8_2.contentCenterY
  L8_2 = L8_2 - 57
  L9_2 = L4_2 / 2
  L8_2 = L8_2 - L9_2
  L7_2.maskY = L8_2
  L7_2 = A1_2.list
  L16_1 = L7_2
  
  function L7_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = L1_3
    L1_3 = L1_3.showOlderMessage
    L1_3(L2_3)
  end
  
  A1_2.messageListener = L7_2
  L7_2 = Runtime
  L8_2 = L7_2
  L7_2 = L7_2.addEventListener
  L9_2 = "battleMessage"
  L10_2 = A1_2.messageListener
  L7_2(L8_2, L9_2, L10_2)
  return A1_2
end

new = L23_1

function L23_1(A0_2)
  local L1_2, L2_2
  L1_2 = L7_1
  L1_2 = L1_2.unsubscribeForBattleChat
  L2_2 = A0_2.battleId
  L1_2(L2_2)
  L1_2 = log3
  L2_2 = " destroyView function called !!!"
  L1_2(L2_2)
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
  A0_2.results = nil
  A0_2.send = nil
  A0_2.messageField = nil
end

destroyView = L23_1

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.addEventListener
  L3_2 = "battleMessage"
  L4_2 = A0_2.messageListener
  L1_2(L2_2, L3_2, L4_2)
end

setMessageListener = L23_1

function L23_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.removeEventListener
  L3_2 = "battleMessage"
  L4_2 = A0_2.messageListener
  L1_2(L2_2, L3_2, L4_2)
end

removeMessageListener = L23_1

function L23_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L23_1
