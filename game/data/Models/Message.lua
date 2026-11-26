local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Utils.base64"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "json"
L1_1 = L1_1(L2_1)
json = L1_1
L1_1 = require
L2_1 = "Utils.Analytics"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Utils.Toolbox"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Models.ErrorController"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Models.Card"
L5_1 = L5_1(L6_1)
L6_1 = 0
id = L6_1
L6_1 = false
sender = L6_1
L6_1 = "message not set"
text = L6_1
L6_1 = 0
creationDate = L6_1
L6_1 = true
isRead = L6_1
L6_1 = 0
messageType = L6_1
L6_1 = false
action = L6_1
L6_1 = {}
messages = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = setmetatable
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  return A1_2
end

new = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L1_1
  L2_2 = L2_2.logEvent
  L3_2 = "System Messages Fetched"
  L2_2(L3_2)
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3
    L1_3 = A0_3.isError
    if L1_3 then
      L1_3 = log3
      L2_3 = "Network error! Failed to fetch message."
      L1_3(L2_3)
      L1_3 = A1_2
      if L1_3 ~= nil then
        L1_3 = A1_2
        L2_3 = "Network error"
        L1_3(L2_3)
      end
    else
      L1_3 = json
      L1_3 = L1_3.decode
      L2_3 = A0_3.response
      L1_3 = L1_3(L2_3)
      L2_3 = L1_3.status
      if L2_3 == true then
        L2_3 = L1_3.data
        L2_3 = L2_3.messages
        if L2_3 ~= nil then
          L2_3 = {}
          L3_3 = ipairs
          L4_3 = L1_3.data
          L4_3 = L4_3.messages
          L3_3, L4_3, L5_3 = L3_3(L4_3)
          for L6_3, L7_3 in L3_3, L4_3, L5_3 do
            L8_3 = _M
            L9_3 = L8_3
            L8_3 = L8_3.new
            L10_3 = {}
            L10_3.sender = ""
            L11_3 = L7_3.text
            L10_3.text = L11_3
            L11_3 = L7_3.created_at
            L10_3.creationDate = L11_3
            L11_3 = L7_3.message_type
            L10_3.messageType = L11_3
            L10_3.isRead = false
            L11_3 = L7_3.id
            L10_3.id = L11_3
            L8_3 = L8_3(L9_3, L10_3)
            L9_3 = L7_3.strmetadata
            L8_3.strmetadata = L9_3
            L9_3 = L8_3.messageType
            if L9_3 == 0 then
            else
              L9_3 = L8_3.messageType
              if L9_3 == 1 then
                L9_3 = L2_1
                L9_3 = L9_3.lang
                if L9_3 ~= "fa" then
                  L9_3 = L2_1
                  L9_3 = L9_3.lang
                  if L9_3 ~= "ar" then
                    goto lbl_65
                  end
                end
                L9_3 = L7_3.text_fa
                L8_3.text = L9_3
                goto lbl_71
                ::lbl_65::
                L9_3 = L2_1
                L9_3 = L9_3.lang
                if L9_3 == "en" then
                  L9_3 = L7_3.text
                  L8_3.text = L9_3
                end
                ::lbl_71::
                L9_3 = L7_3.strmetadata
                if L9_3 then
                  L9_3 = string
                  L9_3 = L9_3.find
                  L10_3 = L7_3.strmetadata
                  L11_3 = "://"
                  L12_3 = 1
                  L13_3 = true
                  L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3)
                  if L9_3 ~= nil then
                    L10_3 = L7_3.strmetadata
                    L8_3.link = L10_3
                  end
                end
              else
                L9_3 = L8_3.messageType
                if L9_3 == 2 then
                  L9_3 = L7_3.intmetadata1
                  L8_3.tribeId = L9_3
                  L9_3 = L7_3.strmetadata
                  L8_3.requesterName = L9_3
                  L9_3 = L7_3.intmetadata2
                  L8_3.requesterId = L9_3
                  L9_3 = L7_3.text
                  if L9_3 then
                    L9_3 = L7_3.text_fa
                    if L9_3 then
                      L9_3 = L7_3.text
                      if L9_3 ~= "" then
                        L9_3 = L7_3.text_fa
                        if L9_3 ~= "" then
                          L9_3 = L7_3.text
                          L10_3 = L9_3
                          L9_3 = L9_3.len
                          L9_3 = L9_3(L10_3)
                          if 0 < L9_3 then
                            L9_3 = L7_3.text_fa
                            L10_3 = L9_3
                            L9_3 = L9_3.len
                            L9_3 = L9_3(L10_3)
                            if 0 < L9_3 then
                              L9_3 = L2_1
                              L9_3 = L9_3.adjustNumber
                              L10_3 = L3_1
                              L10_3 = L10_3.stringThousandCommaSeperated
                              L11_3 = ""
                              L12_3 = L7_3.text
                              L11_3 = L11_3 .. L12_3
                              L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L10_3(L11_3)
                              L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                              L8_3.requesterRank = L9_3
                              L9_3 = L2_1
                              L9_3 = L9_3.adjustNumber
                              L10_3 = ""
                              L11_3 = L7_3.text_fa
                              L10_3 = L10_3 .. L11_3
                              L9_3 = L9_3(L10_3)
                              L8_3.requesterLevel = L9_3
                              L9_3 = L2_1
                              L9_3 = L9_3.localizedString
                              L10_3 = "wants to join tribe"
                              L11_3 = {}
                              L12_3 = L8_3.requesterName
                              L11_3.name = L12_3
                              L9_3 = L9_3(L10_3, L11_3)
                              L10_3 = " ("
                              L11_3 = L2_1
                              L11_3 = L11_3.Rank
                              L12_3 = ": "
                              L13_3 = L8_3.requesterRank
                              L14_3 = ", "
                              L15_3 = L2_1
                              L15_3 = L15_3.Level
                              L16_3 = ": "
                              L17_3 = L8_3.requesterLevel
                              L18_3 = ")"
                              L9_3 = L9_3 .. L10_3 .. L11_3 .. L12_3 .. L13_3 .. L14_3 .. L15_3 .. L16_3 .. L17_3 .. L18_3
                              L8_3.text = L9_3
                          end
                        end
                      end
                    end
                  end
                  else
                    L9_3 = L2_1
                    L9_3 = L9_3.localizedString
                    L10_3 = "wants to join tribe"
                    L11_3 = {}
                    L12_3 = L8_3.requesterName
                    L11_3.name = L12_3
                    L9_3 = L9_3(L10_3, L11_3)
                    L8_3.text = L9_3
                  end
                else
                  L9_3 = L8_3.messageType
                  if L9_3 == 3 then
                    L9_3 = L7_3.intmetadata1
                    L8_3.tribeId = L9_3
                    L9_3 = L7_3.strmetadata
                    L8_3.tribeName = L9_3
                    L9_3 = L2_1
                    L9_3 = L9_3.localizedString
                    L10_3 = "You have been approved to join tribe"
                    L11_3 = {}
                    L12_3 = L8_3.tribeName
                    L11_3.tribe = L12_3
                    L9_3 = L9_3(L10_3, L11_3)
                    L8_3.text = L9_3
                  else
                    L9_3 = L8_3.messageType
                    if L9_3 == 4 then
                      L9_3 = L7_3.intmetadata1
                      L8_3.tribeId = L9_3
                      L9_3 = L7_3.intmetadata2
                      L8_3.inviteerId = L9_3
                      L9_3 = L7_3.strmetadata
                      L8_3.elderName = L9_3
                      L9_3 = L7_3.text
                      L8_3.requesterRank = L9_3
                      L9_3 = L2_1
                      L9_3 = L9_3.localizedString
                      L10_3 = "Tribe invite message"
                      L11_3 = {}
                      L12_3 = L8_3.elderName
                      L11_3.name = L12_3
                      L9_3 = L9_3(L10_3, L11_3)
                      L10_3 = " ("
                      L11_3 = L2_1
                      L11_3 = L11_3.Rank
                      L12_3 = ": "
                      L13_3 = L8_3.requesterRank
                      L14_3 = ")"
                      L9_3 = L9_3 .. L10_3 .. L11_3 .. L12_3 .. L13_3 .. L14_3
                      L8_3.text = L9_3
                    else
                      L9_3 = L8_3.messageType
                      if L9_3 == 5 then
                        L9_3 = L7_3.intmetadata1
                        L8_3.recentAttack = L9_3
                        L9_3 = L7_3.intmetadata2
                        L8_3.attackerId = L9_3
                        L9_3 = L7_3.strmetadata
                        L8_3.attackerName = L9_3
                        L9_3 = math
                        L9_3 = L9_3.random
                        L10_3 = 3
                        L9_3 = L9_3(L10_3)
                        L10_3 = L2_1
                        L10_3 = L10_3.localizedString
                        L11_3 = "Attacked message"
                        L12_3 = L9_3
                        L11_3 = L11_3 .. L12_3
                        L12_3 = {}
                        L13_3 = L8_3.attackerName
                        L12_3.name = L13_3
                        L10_3 = L10_3(L11_3, L12_3)
                        L8_3.text = L10_3
                      else
                        L9_3 = L8_3.messageType
                        if L9_3 == 6 then
                          L9_3 = L7_3.intmetadata1
                          L8_3.tribeId = L9_3
                          L9_3 = L7_3.intmetadata2
                          L8_3.pokerId = L9_3
                          L9_3 = L7_3.strmetadata
                          L8_3.pokerName = L9_3
                          L9_3 = L2_1
                          L9_3 = L9_3.localizedString
                          L10_3 = "has poked you"
                          L11_3 = {}
                          L12_3 = L8_3.pokerName
                          L11_3.name = L12_3
                          L9_3 = L9_3(L10_3, L11_3)
                          L8_3.text = L9_3
                        else
                          L9_3 = L8_3.messageType
                          if L9_3 == 7 then
                            L9_3 = L2_1
                            L9_3 = L9_3.lang
                            if L9_3 ~= "fa" then
                              L9_3 = L2_1
                              L9_3 = L9_3.lang
                              if L9_3 ~= "ar" then
                                goto lbl_263
                              end
                            end
                            L9_3 = L7_3.text_fa
                            L8_3.text = L9_3
                            goto lbl_550
                            ::lbl_263::
                            L9_3 = L2_1
                            L9_3 = L9_3.lang
                            if L9_3 == "en" then
                              L9_3 = L7_3.text
                              L8_3.text = L9_3
                            end
                          else
                            L9_3 = L8_3.messageType
                            if L9_3 == 8 then
                            else
                              L9_3 = L8_3.messageType
                              if L9_3 == 9 then
                                L9_3 = L7_3.intmetadata1
                                L8_3.tribeId = L9_3
                                L9_3 = L7_3.intmetadata2
                                L8_3.pokerId = L9_3
                                L9_3 = L7_3.strmetadata
                                L8_3.kickerName = L9_3
                                L9_3 = L2_1
                                L9_3 = L9_3.localizedString
                                L10_3 = "Kick message"
                                L11_3 = {}
                                L12_3 = L8_3.kickerName
                                L11_3.name = L12_3
                                L9_3 = L9_3(L10_3, L11_3)
                                L8_3.text = L9_3
                              else
                                L9_3 = L8_3.messageType
                                if L9_3 == 10 then
                                  L9_3 = L7_3.intmetadata1
                                  L8_3.promotedId = L9_3
                                  L9_3 = L7_3.strmetadata
                                  L8_3.elderName = L9_3
                                  L9_3 = L7_3.text
                                  L8_3.promotedName = L9_3
                                  L9_3 = L8_3.promotedId
                                  L10_3 = mainPlayer
                                  L10_3 = L10_3.id
                                  if L9_3 == L10_3 then
                                    L9_3 = L2_1
                                    L9_3 = L9_3.localizedString
                                    L10_3 = "You have been promoted"
                                    L11_3 = {}
                                    L12_3 = L8_3.elderName
                                    L11_3.name = L12_3
                                    L9_3 = L9_3(L10_3, L11_3)
                                    L8_3.text = L9_3
                                  else
                                    L9_3 = L2_1
                                    L9_3 = L9_3.localizedString
                                    L10_3 = "Promote report"
                                    L11_3 = {}
                                    L12_3 = L8_3.elderName
                                    L11_3.elder = L12_3
                                    L12_3 = L8_3.promotedName
                                    L11_3.victim = L12_3
                                    L9_3 = L9_3(L10_3, L11_3)
                                    L8_3.text = L9_3
                                  end
                                else
                                  L9_3 = L8_3.messageType
                                  if L9_3 == 11 then
                                    L9_3 = L7_3.intmetadata1
                                    L8_3.demotedId = L9_3
                                    L9_3 = L7_3.strmetadata
                                    L8_3.elderName = L9_3
                                    L9_3 = L7_3.text
                                    L8_3.demotedName = L9_3
                                    L9_3 = L8_3.demotedId
                                    L10_3 = mainPlayer
                                    L10_3 = L10_3.id
                                    if L9_3 == L10_3 then
                                      L9_3 = L2_1
                                      L9_3 = L9_3.localizedString
                                      L10_3 = "You have been demoted"
                                      L11_3 = {}
                                      L12_3 = L8_3.elderName
                                      L11_3.name = L12_3
                                      L9_3 = L9_3(L10_3, L11_3)
                                      L8_3.text = L9_3
                                    else
                                      L9_3 = L2_1
                                      L9_3 = L9_3.localizedString
                                      L10_3 = "Demote report"
                                      L11_3 = {}
                                      L12_3 = L8_3.elderName
                                      L11_3.elder = L12_3
                                      L12_3 = L8_3.demotedName
                                      L11_3.victim = L12_3
                                      L9_3 = L9_3(L10_3, L11_3)
                                      L8_3.text = L9_3
                                    end
                                  else
                                    L9_3 = L8_3.messageType
                                    if L9_3 == 12 then
                                      L9_3 = L7_3.strmetadata
                                      L8_3.elderName = L9_3
                                      L9_3 = L2_1
                                      L9_3 = L9_3.localizedString
                                      L10_3 = "Tribe accept invite message"
                                      L11_3 = {}
                                      L12_3 = L8_3.elderName
                                      L11_3.name = L12_3
                                      L9_3 = L9_3(L10_3, L11_3)
                                      L8_3.text = L9_3
                                    else
                                      L9_3 = L8_3.messageType
                                      if L9_3 == 13 then
                                        L9_3 = L7_3.strmetadata
                                        L8_3.name = L9_3
                                        L9_3 = L7_3.text
                                        L8_3.tribeName = L9_3
                                        L9_3 = L2_1
                                        L9_3 = L9_3.localizedString
                                        L10_3 = "New member report"
                                        L11_3 = {}
                                        L12_3 = L8_3.name
                                        L11_3.name = L12_3
                                        L9_3 = L9_3(L10_3, L11_3)
                                        L8_3.text = L9_3
                                      else
                                        L9_3 = L8_3.messageType
                                        if L9_3 == 14 then
                                          L9_3 = L7_3.strmetadata
                                          L8_3.name = L9_3
                                          L9_3 = L2_1
                                          L9_3 = L9_3.adjustNumber
                                          L10_3 = L3_1
                                          L10_3 = L10_3.addKForLargeNumber
                                          L11_3 = L3_1
                                          L11_3 = L11_3.stringThousandCommaSeperated
                                          L12_3 = ""
                                          L13_3 = L7_3.intmetadata2
                                          L12_3 = L12_3 .. L13_3
                                          L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L11_3(L12_3)
                                          L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3 = L10_3(L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                                          L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
                                          L8_3.donateAmount = L9_3
                                          L9_3 = L2_1
                                          L9_3 = L9_3.localizedString
                                          L10_3 = "Donate report"
                                          L11_3 = {}
                                          L12_3 = L8_3.name
                                          L11_3.name = L12_3
                                          L12_3 = L8_3.donateAmount
                                          L11_3.num = L12_3
                                          L9_3 = L9_3(L10_3, L11_3)
                                          L8_3.text = L9_3
                                        else
                                          L9_3 = L8_3.messageType
                                          if L9_3 == 15 then
                                            L9_3 = L7_3.intmetadata1
                                            L8_3.tribeId = L9_3
                                            L9_3 = L7_3.intmetadata2
                                            L8_3.pokerId = L9_3
                                            L9_3 = L7_3.strmetadata
                                            L8_3.kickerName = L9_3
                                            L9_3 = L7_3.text
                                            L8_3.kickedName = L9_3
                                            L9_3 = L2_1
                                            L9_3 = L9_3.localizedString
                                            L10_3 = "Kick report"
                                            L11_3 = {}
                                            L12_3 = L8_3.kickedName
                                            L11_3.kicked = L12_3
                                            L12_3 = L8_3.kickerName
                                            L11_3.kicker = L12_3
                                            L9_3 = L9_3(L10_3, L11_3)
                                            L8_3.text = L9_3
                                          else
                                            L9_3 = L8_3.messageType
                                            if L9_3 == 16 then
                                              L9_3 = L7_3.intmetadata1
                                              L8_3.leagueId = L9_3
                                              L9_3 = L7_3.intmetadata2
                                              L8_3.round = L9_3
                                              L9_3 = type
                                              L10_3 = L7_3.strmetadata
                                              L9_3 = L9_3(L10_3)
                                              L9_3 = json
                                              L9_3 = L9_3.decode
                                              L10_3 = L7_3.strmetadata
                                              L9_3 = L9_3 == "string" and L9_3
                                              L10_3 = type
                                              L11_3 = L9_3
                                              L10_3 = L10_3(L11_3)
                                              L10_3 = L9_3 or L10_3
                                              if L10_3 ~= "table" or not L9_3 then
                                                L10_3 = {}
                                              end
                                              L8_3.rewards = L10_3
                                              L10_3 = {}
                                              L11_3 = ipairs
                                              L12_3 = L8_3.rewards
                                              L11_3, L12_3, L13_3 = L11_3(L12_3)
                                              for L14_3, L15_3 in L11_3, L12_3, L13_3 do
                                                L16_3 = log3
                                                L17_3 = L15_3
                                                L16_3(L17_3)
                                                L16_3 = L5_1
                                                L16_3 = L16_3.baseCardWithId
                                                L17_3 = L15_3
                                                L16_3 = L16_3(L17_3)
                                                if L16_3 then
                                                  L17_3 = table
                                                  L17_3 = L17_3.insert
                                                  L18_3 = L10_3
                                                  L19_3 = L16_3.name
                                                  L17_3(L18_3, L19_3)
                                                else
                                                  L17_3 = log3
                                                  L18_3 = "League reward references unknown base card id:"
                                                  L19_3 = L15_3
                                                  L17_3(L18_3, L19_3)
                                                end
                                              end
                                              L11_3 = table
                                              L11_3 = L11_3.concat
                                              L12_3 = L10_3
                                              L13_3 = ", "
                                              L11_3 = L11_3(L12_3, L13_3)
                                              L12_3 = log3
                                              L13_3 = "leagueRewards is : "
                                              L14_3 = L11_3
                                              L12_3(L13_3, L14_3)
                                              L12_3 = log3
                                              L13_3 = "league_Id :"
                                              L14_3 = mainPlayer
                                              L14_3 = L14_3.leagueId
                                              L15_3 = L8_3.leagueId
                                              L16_3 = L7_3.intmetadata1
                                              L17_3 = L8_3.round
                                              L12_3(L13_3, L14_3, L15_3, L16_3, L17_3)
                                              L12_3 = nil
                                              L13_3 = Constants
                                              L13_3 = L13_3.leagueInfoWithId
                                              L14_3 = L8_3.leagueId
                                              L13_3 = L13_3(L14_3)
                                              myLeagueInfo = L13_3
                                              L13_3 = myLeagueInfo
                                              if L13_3 then
                                                L13_3 = myLeagueInfo
                                                L13_3 = L13_3.League_Image
                                                if L13_3 ~= "League1.png" then
                                                  L13_3 = myLeagueInfo
                                                  L13_3 = L13_3.League_Name
                                                  L14_3 = " "
                                                  L15_3 = Constants
                                                  L15_3 = L15_3.getLeagueNumber
                                                  L16_3 = L8_3.leagueId
                                                  L15_3 = L15_3(L16_3)
                                                  L12_3 = L13_3 .. L14_3 .. L15_3
                                                else
                                                  L13_3 = myLeagueInfo
                                                  L12_3 = L13_3.League_Name
                                                end
                                              else
                                                L12_3 = ""
                                              end
                                              L13_3 = L2_1
                                              L13_3 = L13_3.localizedString
                                              L14_3 = "League Reward Message"
                                              L15_3 = {}
                                              L16_3 = L8_3.round
                                              L15_3.round = L16_3
                                              L15_3.leagueName = L12_3
                                              L15_3.rewards = L11_3
                                              L13_3 = L13_3(L14_3, L15_3)
                                              L8_3.text = L13_3
                                            else
                                              L8_3.messageType = -1
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
                  end
                end
              end
            end
            ::lbl_550::
            L9_3 = table
            L9_3 = L9_3.insert
            L10_3 = L2_3
            L11_3 = L8_3
            L9_3(L10_3, L11_3)
          end
          L3_3 = A0_2
          if L3_3 ~= nil then
            L3_3 = A0_2
            L4_3 = L2_3
            L3_3(L4_3)
          end
        else
          L2_3 = log3
          L3_3 = "failed to fetch system messages"
          L4_3 = A0_3.response
          L2_3(L3_3, L4_3)
          L2_3 = A1_2
          if L2_3 ~= nil then
            L2_3 = A1_2
            L3_3 = "Failed to fetch system messages"
            L2_3(L3_3)
          end
        end
      else
        L2_3 = L1_3.status
        if L2_3 == false then
          L2_3 = L1_3.error
          if not L2_3 then
            L2_3 = "Network Response returned false status"
          end
          L3_3 = L1_3.data
          if L3_3 then
            L3_3 = L1_3.data
            L3_3 = L3_3.code
            if L3_3 then
              L3_3 = L4_1
              L3_3 = L3_3.getErrorMessage
              L4_3 = L1_3.data
              L3_3 = L3_3(L4_3)
              L2_3 = L3_3 or L2_3
              if not L3_3 then
                L3_3 = tostring
                L4_3 = L1_3.data
                L4_3 = L4_3.code
                L3_3 = L3_3(L4_3)
                L2_3 = L3_3
              end
            end
          end
          L3_3 = A1_2
          L4_3 = L2_3
          L3_3(L4_3)
        end
      end
    end
  end
  
  L3_2 = {}
  L4_2 = network
  L4_2 = L4_2.getDefaultHeader
  L4_2 = L4_2()
  L3_2.headers = L4_2
  L4_2 = network
  L4_2 = L4_2.request
  L5_2 = Constants
  L5_2 = L5_2.API_Path
  L6_2 = Constants
  L6_2 = L6_2.API_FetchSystemMessages
  L5_2 = L5_2 .. L6_2
  L6_2 = "POST"
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = "fetch system messages"
  L10_2 = nil
  L11_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end

fetchSystemMessages = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    if A0_3 then
      L1_3 = A0_3.isError
      if L1_3 then
        L1_3 = A1_2
        if L1_3 ~= nil then
          L1_3 = A1_2
          L2_3 = "Network error"
          L1_3(L2_3)
        end
      else
        L1_3 = json
        L1_3 = L1_3.decode
        L2_3 = A0_3.response
        L1_3 = L1_3(L2_3)
        L2_3 = L1_3.status
        if L2_3 == true then
          L2_3 = L1_3.data
          L2_3 = L2_3.messages
          if L2_3 == nil then
            goto lbl_83
          end
          L2_3 = {}
          L3_3 = pairs
          L4_3 = L1_3.data
          L4_3 = L4_3.messages
          L3_3, L4_3, L5_3 = L3_3(L4_3)
          for L6_3, L7_3 in L3_3, L4_3, L5_3 do
            L8_3 = _M
            L9_3 = L8_3
            L8_3 = L8_3.new
            L10_3 = {}
            L10_3.sender = ""
            L11_3 = L7_3.text
            L10_3.text = L11_3
            L11_3 = L7_3.created_at
            L10_3.creationDate = L11_3
            L11_3 = L7_3.message_type
            L10_3.messageType = L11_3
            L10_3.isRead = false
            L11_3 = L7_3.id
            L10_3.id = L11_3
            L8_3 = L8_3(L9_3, L10_3)
            L9_3 = L7_3.strmetadata
            L8_3.title = L9_3
            L9_3 = L2_1
            L9_3 = L9_3.lang
            if L9_3 ~= "fa" then
              L9_3 = L2_1
              L9_3 = L9_3.lang
              if L9_3 ~= "ar" then
                goto lbl_57
              end
            end
            L9_3 = L7_3.text_fa
            L8_3.text = L9_3
            goto lbl_63
            ::lbl_57::
            L9_3 = L2_1
            L9_3 = L9_3.lang
            if L9_3 == "en" then
              L9_3 = L7_3.text
              L8_3.text = L9_3
            end
            ::lbl_63::
            L9_3 = table
            L9_3 = L9_3.insert
            L10_3 = L2_3
            L11_3 = L8_3
            L9_3(L10_3, L11_3)
          end
          L3_3 = A0_2
          if L3_3 ~= nil then
            L3_3 = A0_2
            L4_3 = L2_3
            L3_3(L4_3)
          end
        else
          L2_3 = A1_2
          if L2_3 then
            L2_3 = A1_2
            L3_3 = "Network error"
            L2_3(L3_3)
          end
        end
      end
    end
    ::lbl_83::
  end
  
  L3_2 = {}
  L4_2 = network
  L4_2 = L4_2.getDefaultHeader
  L4_2 = L4_2()
  L3_2.headers = L4_2
  L4_2 = network
  L4_2 = L4_2.request
  L5_2 = Constants
  L5_2 = L5_2.API_Path
  L6_2 = Constants
  L6_2 = L6_2.API_FetchTribeBroadcastMessages
  L5_2 = L5_2 .. L6_2
  L6_2 = "POST"
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = "fetch tribe broadcast messages"
  L10_2 = nil
  L11_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end

fetchTribeBroadcastMessages = L6_1
