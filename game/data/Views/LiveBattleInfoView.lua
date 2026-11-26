local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Utils.Toolbox"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Constants"
L3_1 = L3_1(L4_1)
L4_1 = 90
L5_1 = 30
L6_1 = L3_1.Path_Assets
L7_1 = "CardScene/maxRarityFrame.png"
L6_1 = L6_1 .. L7_1
L7_1 = nil
L8_1 = nil

function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if not A1_2 then
    L5_2 = {}
    A1_2 = L5_2
  end
  L5_2 = setmetatable
  L6_2 = A1_2
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  A0_2.__index = A0_2
  L5_2 = {}
  A1_2.cards = L5_2
  L5_2 = {}
  A1_2.isEmptySlot = L5_2
  A1_2.slotCounter = 0
  L5_2 = display
  L5_2 = L5_2.newGroup
  L5_2 = L5_2()
  A1_2.group = L5_2
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = L4_1
  end
  A1_2.width = L5_2
  L5_2 = A1_2.width
  L5_2 = L5_2 * 0.333
  A1_2.height = L5_2
  L5_2 = L6_1
  A1_2.imgFileName = L5_2
  A1_2.name = A4_2
  L5_2 = A1_2.name
  if L5_2 == nil then
    A1_2.name = ""
  end
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = L3_1
  L6_2 = L6_2.Path_Assets
  L7_2 = "LiveBattle/Help Frame.png"
  L6_2 = L6_2 .. L7_2
  L7_2 = A1_2.width
  L8_2 = A1_2.height
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  A1_2.img = L5_2
  L5_2 = A1_2.img
  L6_2 = A1_2.width
  L6_2 = L6_2 * 0.5
  L5_2.x = L6_2
  L5_2 = A1_2.img
  L6_2 = A1_2.height
  L6_2 = L6_2 * 0.5
  L5_2.y = L6_2
  L5_2 = A1_2.group
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = A1_2.img
  L5_2(L6_2, L7_2)
  L5_2 = A1_2.img
  L6_2 = L5_2
  L5_2 = L5_2.toBack
  L5_2(L6_2)
  L5_2 = A1_2.width
  L5_2 = L5_2 / 5
  L7_1 = L5_2
  L5_2 = L7_1
  L5_2 = L5_2 * 0.555
  cardHeight = L5_2
  L5_2 = A1_2.width
  L5_2 = L5_2 / 8
  L7_1 = L5_2
  L5_2 = A1_2.width
  L6_2 = L7_1
  L6_2 = 5 * L6_2
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 / 6
  L8_1 = L5_2
  L5_2 = 1
  L6_2 = 5
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A1_2.cards
    L10_2 = display
    L10_2 = L10_2.newImageRect
    L11_2 = L3_1
    L11_2 = L11_2.Path_Assets
    L12_2 = "LiveBattle/Empty.png"
    L11_2 = L11_2 .. L12_2
    L12_2 = L7_1
    L13_2 = cardHeight
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L9_2[L8_2] = L10_2
    L9_2 = A1_2.cards
    L9_2 = L9_2[L8_2]
    L10_2 = A1_2.img
    L10_2 = L10_2.x
    L11_2 = A1_2.img
    L11_2 = L11_2.width
    L11_2 = L11_2 / 2
    L10_2 = L10_2 - L11_2
    L11_2 = L8_1
    L11_2 = L8_2 * L11_2
    L10_2 = L10_2 + L11_2
    L11_2 = A1_2.cards
    L11_2 = L11_2[L8_2]
    L11_2 = L11_2.width
    L11_2 = L11_2 / 2
    L10_2 = L10_2 + L11_2
    L11_2 = L8_2 - 1
    L12_2 = A1_2.cards
    L12_2 = L12_2[L8_2]
    L12_2 = L12_2.width
    L11_2 = L11_2 * L12_2
    L10_2 = L10_2 + L11_2
    L9_2.x = L10_2
    L9_2 = A1_2.cards
    L9_2 = L9_2[L8_2]
    L10_2 = A1_2.img
    L10_2 = L10_2.y
    L10_2 = L10_2 * 0.5
    L10_2 = L10_2 + 1
    L9_2.y = L10_2
    L9_2 = A1_2.group
    L10_2 = L9_2
    L9_2 = L9_2.insert
    L11_2 = A1_2.cards
    L11_2 = L11_2[L8_2]
    L9_2(L10_2, L11_2)
  end
  L5_2 = L2_1
  L5_2 = L5_2.stringUTFLength
  L6_2 = A1_2.name
  L5_2 = L5_2(L6_2)
  if 10 < L5_2 then
    L5_2 = L2_1
    L5_2 = L5_2.isStringPersianInAndroid
    L6_2 = A1_2.name
    L7_2 = L6_2
    L6_2 = L6_2.sub
    L8_2 = 1
    L9_2 = 1
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    if L5_2 then
      L5_2 = "..."
      L6_2 = L2_1
      L6_2 = L6_2.utf8sub
      L7_2 = A1_2.name
      L8_2 = 0
      L9_2 = 8
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2 = L5_2 .. L6_2
      A1_2.name = L5_2
    else
      L5_2 = L2_1
      L5_2 = L5_2.utf8sub
      L6_2 = A1_2.name
      L7_2 = 0
      L8_2 = 8
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L6_2 = "..."
      L5_2 = L5_2 .. L6_2
      A1_2.name = L5_2
    end
  end
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = A1_2.name
  L7_2 = 0
  L8_2 = A1_2.img
  L8_2 = L8_2.y
  L8_2 = L8_2 * 1.375
  L8_2 = L8_2 + 1
  L9_2 = L3_1
  L9_2 = L9_2.fontForTitle
  L9_2 = L9_2()
  L10_2 = 8
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  nameText = L5_2
  L5_2 = nameText
  L6_2 = A1_2.cards
  L6_2 = L6_2[1]
  L6_2 = L6_2.x
  L7_2 = A1_2.cards
  L7_2 = L7_2[1]
  L7_2 = L7_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L7_2 = nameText
  L7_2 = L7_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L6_2 = L6_2 - 1
  L5_2.x = L6_2
  L5_2 = nameText
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = A1_2.group
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = nameText
  L5_2(L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = "0"
  L7_2 = 0
  L8_2 = A1_2.img
  L8_2 = L8_2.y
  L8_2 = L8_2 * 1.375
  L8_2 = L8_2 + 1
  L9_2 = L3_1
  L9_2 = L9_2.fontForTitle
  L9_2 = L9_2()
  L10_2 = 8
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  A1_2.powerText = L5_2
  L5_2 = A1_2.powerText
  L6_2 = A1_2.cards
  L6_2 = L6_2[5]
  L6_2 = L6_2.x
  L7_2 = A1_2.cards
  L7_2 = L7_2[1]
  L7_2 = L7_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L7_2 = A1_2.powerText
  L7_2 = L7_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 + 2
  L5_2.x = L6_2
  L5_2 = A1_2.powerText
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = 0
  L8_2 = 0
  L9_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = A1_2.group
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = A1_2.powerText
  L5_2(L6_2, L7_2)
  A1_2.power = 0
  return A1_2
end

new = L9_1

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2.slotCounter = A1_2
  L3_2 = A0_2.slotCounter
  if L3_2 < 6 then
    L3_2 = A0_2.slotCounter
    if 0 < L3_2 then
      L3_2 = A0_2.cards
      L4_2 = A0_2.slotCounter
      L3_2 = L3_2[L4_2]
      L3_2 = L3_2.x
      L4_2 = A0_2.cards
      L5_2 = A0_2.slotCounter
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.y
      L5_2 = display
      L5_2 = L5_2.remove
      L6_2 = A0_2.cards
      L7_2 = A0_2.slotCounter
      L6_2 = L6_2[L7_2]
      L5_2(L6_2)
      L5_2 = A0_2.cards
      L6_2 = A0_2.slotCounter
      L7_2 = display
      L7_2 = L7_2.newImageRect
      L8_2 = L3_1
      L8_2 = L8_2.Path_Assets
      L9_2 = "LiveBattle/Card hit.png"
      L8_2 = L8_2 .. L9_2
      L9_2 = L7_1
      L10_2 = A0_2.height
      L10_2 = L10_2 / 3
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L5_2[L6_2] = L7_2
      L5_2 = A0_2.cards
      L6_2 = A0_2.slotCounter
      L5_2 = L5_2[L6_2]
      L5_2.x = L3_2
      L5_2 = A0_2.cards
      L6_2 = A0_2.slotCounter
      L5_2 = L5_2[L6_2]
      L5_2.y = L4_2
      L5_2 = A0_2.group
      L6_2 = L5_2
      L5_2 = L5_2.insert
      L7_2 = A0_2.cards
      L8_2 = A0_2.slotCounter
      L7_2 = L7_2[L8_2]
      L5_2(L6_2, L7_2)
      L5_2 = A0_2.cards
      L6_2 = A0_2.slotCounter
      L5_2 = L5_2[L6_2]
      L6_2 = L3_1
      L6_2 = L6_2.Path_Assets
      L7_2 = "LiveBattle/Card hit.png"
      L6_2 = L6_2 .. L7_2
      L5_2.filename = L6_2
      L6_2 = A0_2
      L5_2 = A0_2.addPower
      L7_2 = A2_2
      L5_2(L6_2, L7_2)
    end
  end
end

setCard = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.power
  L2_2 = A1_2 + L2_2
  A0_2.power = L2_2
  L2_2 = A0_2.powerText
  L3_2 = L1_1
  L3_2 = L3_2.adjustNumber
  L4_2 = L2_1
  L4_2 = L4_2.shortenLongNumber
  L5_2 = A0_2.power
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.text = L3_2
  L2_2 = nameText
  if L2_2 then
    L2_2 = A0_2.powerText
    L2_2 = L2_2.width
    L3_2 = nameText
    L3_2 = L3_2.width
    L2_2 = L2_2 + L3_2
    L3_2 = A0_2.width
    if L2_2 > L3_2 then
      L2_2 = L2_1
      L2_2 = L2_2.fixedTextSize
      L3_2 = nameText
      L4_2 = 8
      L5_2 = {}
      L6_2 = 0
      L7_2 = 0
      L8_2 = 0
      L5_2[1] = L6_2
      L5_2[2] = L7_2
      L5_2[3] = L8_2
      L6_2 = A0_2.group
      L7_2 = A0_2.width
      L7_2 = L7_2 * 2
      L7_2 = L7_2 / 3
      L7_2 = L7_2 - 5
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
      nameText = L2_2
      L2_2 = nameText
      L3_2 = A0_2.cards
      L3_2 = L3_2[1]
      L3_2 = L3_2.x
      L4_2 = A0_2.cards
      L4_2 = L4_2[1]
      L4_2 = L4_2.width
      L4_2 = L4_2 / 2
      L3_2 = L3_2 - L4_2
      L4_2 = nameText
      L4_2 = L4_2.width
      L4_2 = L4_2 / 2
      L3_2 = L3_2 + L4_2
      L3_2 = L3_2 - 1
      L2_2.x = L3_2
    end
  end
  L2_2 = A0_2.powerText
  L3_2 = A0_2.cards
  L3_2 = L3_2[5]
  L3_2 = L3_2.x
  L4_2 = A0_2.cards
  L4_2 = L4_2[1]
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2.powerText
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L3_2 = L3_2 - L4_2
  L3_2 = L3_2 + 2
  L2_2.x = L3_2
end

addPower = L9_1

function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A4_2 then
    if A1_2 == 1 then
      L6_2 = A0_2
      L5_2 = A0_2.addPower
      L7_2 = A2_2
      L5_2(L6_2, L7_2)
    end
    return
  end
  if A0_2 then
    L5_2 = A0_2.tempX
    if L5_2 == nil then
      L5_2 = A0_2.tempY
      if L5_2 == nil then
        L5_2 = A0_2.tempWidth
        if L5_2 == nil then
          L5_2 = A0_2.tempHeight
          if L5_2 == nil then
            L5_2 = A0_2.cards
            L5_2 = L5_2[5]
            if L5_2 then
              L5_2 = A0_2.cards
              L5_2 = L5_2[5]
              L5_2 = L5_2.x
              if L5_2 then
                L5_2 = A0_2.cards
                L5_2 = L5_2[5]
                L5_2 = L5_2.width
                if L5_2 then
                  L5_2 = A0_2.cards
                  L5_2 = L5_2[5]
                  L5_2 = L5_2.height
                  if L5_2 then
                    L5_2 = A0_2.cards
                    L5_2 = L5_2[5]
                    L5_2 = L5_2.x
                    A0_2.tempX = L5_2
                    L5_2 = A0_2.cards
                    L5_2 = L5_2[5]
                    L5_2 = L5_2.y
                    A0_2.tempY = L5_2
                    L5_2 = A0_2.cards
                    L5_2 = L5_2[5]
                    L5_2 = L5_2.width
                    A0_2.tempWidth = L5_2
                    L5_2 = A0_2.cards
                    L5_2 = L5_2[5]
                    L5_2 = L5_2.height
                    A0_2.tempHeight = L5_2
                end
              end
            end
            else
              return
            end
          end
        end
      end
    end
  end
  L5_2 = L0_1
  L5_2 = L5_2.getSceneName
  L6_2 = "current"
  L5_2 = L5_2(L6_2)
  if L5_2 ~= "Scenes.LiveBattle" then
    return
  end
  L5_2 = display
  L5_2 = L5_2.newRoundedRect
  L6_2 = A0_2.group
  L7_2 = A0_2.tempX
  L8_2 = A0_2.tempY
  L9_2 = A0_2.tempWidth
  L9_2 = L9_2 - 2
  L10_2 = A0_2.tempHeight
  L10_2 = L10_2 - 2
  L11_2 = 2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if A1_2 == 1 then
    L7_2 = L5_2
    L6_2 = L5_2.setFillColor
    L8_2 = Theme
    L8_2 = L8_2.heroPowerAbilityFillBarColor
    L8_2 = L8_2[1]
    L9_2 = Theme
    L9_2 = L9_2.heroPowerAbilityFillBarColor
    L9_2 = L9_2[2]
    L10_2 = Theme
    L10_2 = L10_2.heroPowerAbilityFillBarColor
    L10_2 = L10_2[3]
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = A0_2.isPowerApplied
    if L6_2 ~= true then
      L7_2 = A0_2
      L6_2 = A0_2.addPower
      L8_2 = A2_2
      L6_2(L7_2, L8_2)
      A0_2.isPowerApplied = true
    end
  elseif A1_2 == 2 then
    L7_2 = L5_2
    L6_2 = L5_2.setFillColor
    L8_2 = Theme
    L8_2 = L8_2.heroWisdomAbilityFillBarColor
    L8_2 = L8_2[1]
    L9_2 = Theme
    L9_2 = L9_2.heroWisdomAbilityFillBarColor
    L9_2 = L9_2[2]
    L10_2 = Theme
    L10_2 = L10_2.heroWisdomAbilityFillBarColor
    L10_2 = L10_2[3]
    L6_2(L7_2, L8_2, L9_2, L10_2)
  elseif A1_2 == 3 then
    L7_2 = L5_2
    L6_2 = L5_2.setFillColor
    L8_2 = Theme
    L8_2 = L8_2.heroBlessingAbilityFillBarColor
    L8_2 = L8_2[1]
    L9_2 = Theme
    L9_2 = L9_2.heroBlessingAbilityFillBarColor
    L9_2 = L9_2[2]
    L10_2 = Theme
    L10_2 = L10_2.heroBlessingAbilityFillBarColor
    L10_2 = L10_2[3]
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L5_2.strokeWidth = 1
  L7_2 = L5_2
  L6_2 = L5_2.setStrokeColor
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0.2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2.alpha = 0
  L5_2.xScale = 1.3
  L5_2.yScale = 1.3
  L6_2 = 1
  L7_2 = transition
  L7_2 = L7_2.to
  L8_2 = L5_2
  L9_2 = {}
  L9_2.time = 800
  L9_2.xScale = 1
  L9_2.yScale = 1
  L9_2.alpha = 0.5
  
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = transition
    L0_3 = L0_3.to
    L1_3 = L5_2
    L2_3 = {}
    L2_3.time = 600
    L2_3.alpha = 0
    L2_3.xScale = 0.9
    L2_3.yScale = 0.9
    
    function L3_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = L5_2
      L0_4.xScale = 1
      L0_4 = L5_2
      L0_4.yScale = 1
      L0_4 = L6_2
      L0_4 = L0_4 + 1
      L6_2 = L0_4
      L0_4 = L6_2
      L1_4 = A3_2
      if L0_4 <= L1_4 then
        L0_4 = A0_2
        L1_4 = L0_4
        L0_4 = L0_4.applyHeroAbility
        L2_4 = A1_2
        L3_4 = A2_2
        L4_4 = A3_2
        L4_4 = L4_4 - 1
        L0_4(L1_4, L2_4, L3_4, L4_4)
      else
        L0_4 = A0_2
        L0_4.isPowerApplied = nil
        L0_4 = A0_2
        L0_4.tempX = nil
        L0_4 = A0_2
        L0_4.tempY = nil
        L0_4 = A0_2
        L0_4.tempWidth = nil
        L0_4 = A0_2
        L0_4.tempHeight = nil
      end
    end
    
    L2_3.onComplete = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L9_2.onComplete = L10_2
  L7_2(L8_2, L9_2)
end

applyHeroAbility = L9_1
