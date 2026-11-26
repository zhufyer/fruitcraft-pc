local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Language"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.Toolbox"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Views.CardPackView"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Views.LiveBattleHeroBenefitOutcomeView"
L3_1 = L3_1(L4_1)
L4_1 = display
L4_1 = L4_1.contentWidth
L4_1 = L4_1 / 2
L5_1 = 80
L6_1 = nil
L7_1 = 12
L8_1 = 15

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L2_2 = log3
  L3_2 = "new live battle ticket create"
  L2_2(L3_2)
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = setmetatable
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  L2_2 = display
  L2_2 = L2_2.newGroup
  L2_2 = L2_2()
  A1_2.group = L2_2
  L2_2 = A1_2.width
  if not L2_2 then
    L2_2 = L4_1
  end
  A1_2.width = L2_2
  L2_2 = A1_2.height
  if not L2_2 then
    L2_2 = L5_1
  end
  A1_2.height = L2_2
  L2_2 = A1_2.battleResult
  if L2_2 == nil then
    L2_2 = log3
    L3_2 = "live battle result not define"
    L2_2(L3_2)
    A1_2.battleResult = false
  end
  L2_2 = A1_2.name
  if L2_2 == nil then
    L2_2 = log3
    L3_2 = "no name set for ticket owner"
    L2_2(L3_2)
    A1_2.name = ""
  end
  L2_2 = A1_2.goldGain
  if L2_2 == nil then
    L2_2 = log3
    L3_2 = "no gold gain define"
    L2_2(L3_2)
    A1_2.goldGain = 0
  end
  L2_2 = A1_2.battlePower
  if L2_2 == nil then
    L2_2 = log3
    L3_2 = "no battle power set for ticket owner"
    L2_2(L3_2)
    A1_2.battlePower = 0
  end
  L2_2 = A1_2.xpGain
  if L2_2 == nil then
    L2_2 = log3
    L3_2 = "no xp gain define"
    L2_2(L3_2)
    A1_2.xpGain = 0
  end
  L2_2 = A1_2.score
  if L2_2 == nil then
    L2_2 = log3
    L3_2 = "no score define"
    L2_2(L3_2)
    A1_2.score = 0
  end
  L2_2 = A1_2.cards
  if L2_2 == nil then
    L2_2 = log3
    L3_2 = "no cards define for players"
    L2_2(L3_2)
  end
  L2_2 = A1_2.heroBenefits
  if L2_2 == nil then
    L2_2 = {}
    A1_2.heroBenefits = L2_2
    L2_2 = A1_2.heroBenefits
    L2_2.power = 0
    L2_2 = A1_2.heroBenefits
    L2_2.wisdom = 0
    L2_2 = A1_2.heroBenefits
    L2_2.blessing = 0
  else
    L2_2 = A1_2.heroBenefits
    L3_2 = A1_2.heroBenefits
    L3_2 = L3_2.power_benefit
    L2_2.power = L3_2
    L2_2 = A1_2.heroBenefits
    L3_2 = A1_2.heroBenefits
    L3_2 = L3_2.cooldown_benefit
    L2_2.wisdom = L3_2
    L2_2 = A1_2.heroBenefits
    L3_2 = A1_2.heroBenefits
    L3_2 = L3_2.gold_benefit
    L2_2.blessing = L3_2
  end
  L2_2 = display
  L2_2 = L2_2.newRoundedRect
  L3_2 = A1_2.group
  L4_2 = A1_2.width
  L4_2 = L4_2 / 2
  L5_2 = A1_2.height
  L5_2 = L5_2 / 2
  L6_2 = A1_2.width
  L7_2 = A1_2.height
  L8_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A1_2.bg = L2_2
  L2_2 = A1_2.bg
  L2_2.strokeWidth = 2
  L2_2 = A1_2.bg
  L3_2 = L2_2
  L2_2 = L2_2.setStrokeColor
  L4_2 = Constants
  L4_2 = L4_2.greenColor
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  L2_2 = A1_2.bg
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = 1
  L5_2 = 1
  L6_2 = 1
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A1_2.bg
  L3_2 = L2_2
  L2_2 = L2_2.toBack
  L2_2(L3_2)
  L2_2 = display
  L2_2 = L2_2.newRoundedRect
  L3_2 = A1_2.group
  L4_2 = A1_2.width
  L4_2 = L4_2 + 20
  L4_2 = L4_2 / 2
  L5_2 = A1_2.height
  L5_2 = L5_2 / 2
  L6_2 = A1_2.width
  L6_2 = L6_2 - 20
  L7_2 = A1_2.height
  L8_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A1_2.bg1 = L2_2
  L2_2 = A1_2.bg1
  L2_2.strokeWidth = 2
  L2_2 = A1_2.bg1
  L3_2 = L2_2
  L2_2 = L2_2.setStrokeColor
  L4_2 = Constants
  L4_2 = L4_2.greenColor
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  L2_2 = A1_2.bg1
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = 1
  L5_2 = 1
  L6_2 = 1
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = display
  L2_2 = L2_2.newRoundedRect
  L3_2 = A1_2.group
  L4_2 = A1_2.width
  L4_2 = L4_2 - 95
  L4_2 = L4_2 / 2
  L4_2 = L4_2 + 90
  L5_2 = A1_2.height
  L5_2 = L5_2 - 10
  L5_2 = L5_2 / 2
  L5_2 = L5_2 + 5
  L6_2 = A1_2.width
  L6_2 = L6_2 - 95
  L7_2 = A1_2.height
  L7_2 = L7_2 - 10
  L8_2 = 3
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A1_2.info = L2_2
  L2_2 = A1_2.battleResult
  if L2_2 == true then
    L2_2 = A1_2.info
    L3_2 = L2_2
    L2_2 = L2_2.setFillColor
    L4_2 = 0.78431373
    L5_2 = 1
    L6_2 = 0.78431373
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = A1_2.info
    L3_2 = L2_2
    L2_2 = L2_2.setFillColor
    L4_2 = 1
    L5_2 = 0.78431373
    L6_2 = 0.78431373
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = A1_2.cards
  if L2_2 ~= nil then
    L2_2 = L2_1
    L3_2 = L2_2
    L2_2 = L2_2.new
    L4_2 = A1_2.cards
    L5_2 = A1_2.bg
    L5_2 = L5_2.height
    L5_2 = L5_2 - 20
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = L2_2.view
    L4_2 = A1_2.bg1
    L4_2 = L4_2.x
    L5_2 = A1_2.bg1
    L5_2 = L5_2.width
    L5_2 = L5_2 / 2
    L4_2 = L4_2 - L5_2
    L5_2 = A1_2.info
    L5_2 = L5_2.x
    L6_2 = A1_2.info
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L5_2 = L5_2 - L6_2
    L6_2 = A1_2.bg1
    L6_2 = L6_2.x
    L5_2 = L5_2 - L6_2
    L6_2 = A1_2.bg1
    L6_2 = L6_2.width
    L6_2 = L6_2 / 2
    L5_2 = L5_2 + L6_2
    L5_2 = L5_2 / 2
    L4_2 = L4_2 + L5_2
    L3_2.x = L4_2
    L3_2 = L2_2.view
    L4_2 = A1_2.bg
    L4_2 = L4_2.y
    L3_2.y = L4_2
    L3_2 = L2_2.card_width
    L6_1 = L3_2
    L3_2 = A1_2.group
    L4_2 = L3_2
    L3_2 = L3_2.insert
    L5_2 = L2_2.view
    L3_2(L4_2, L5_2)
    L3_2 = L2_2.heroCard
    if L3_2 then
      L3_2 = L2_2.heroCard
      A1_2.heroCard = L3_2
    end
  end
  L2_2 = 13
  L3_2 = L1_1
  L3_2 = L3_2.stringUTFLength
  L4_2 = A1_2.name
  L3_2 = L3_2(L4_2)
  if 11 < L3_2 then
    L2_2 = 9
  else
    L3_2 = L1_1
    L3_2 = L3_2.stringUTFLength
    L4_2 = A1_2.name
    L3_2 = L3_2(L4_2)
    if 10 < L3_2 then
      L2_2 = 10
    else
      L3_2 = L1_1
      L3_2 = L3_2.stringUTFLength
      L4_2 = A1_2.name
      L3_2 = L3_2(L4_2)
      if 9 < L3_2 then
        L2_2 = 11
      else
        L3_2 = L1_1
        L3_2 = L3_2.stringUTFLength
        L4_2 = A1_2.name
        L3_2 = L3_2(L4_2)
        if 8 < L3_2 then
          L2_2 = 12
        end
      end
    end
  end
  L3_2 = L1_1
  L3_2 = L3_2.stringUTFLength
  L4_2 = A1_2.name
  L3_2 = L3_2(L4_2)
  if 13 < L3_2 then
    L3_2 = L1_1
    L3_2 = L3_2.isStringPersianInAndroid
    L4_2 = A1_2.name
    L5_2 = L4_2
    L4_2 = L4_2.sub
    L6_2 = 1
    L7_2 = 1
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    if L3_2 then
      L3_2 = "..."
      L4_2 = L1_1
      L4_2 = L4_2.utf8sub
      L5_2 = A1_2.name
      L6_2 = 0
      L7_2 = 11
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L3_2 = L3_2 .. L4_2
      A1_2.name = L3_2
    else
      L3_2 = L1_1
      L3_2 = L3_2.utf8sub
      L4_2 = A1_2.name
      L5_2 = 0
      L6_2 = 11
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L4_2 = "..."
      L3_2 = L3_2 .. L4_2
      A1_2.name = L3_2
    end
  end
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A1_2.name
  L5_2 = 0
  L6_2 = 0
  L7_2 = A1_2.font
  if not L7_2 then
    L7_2 = Constants
    L7_2 = L7_2.fontForSubtitle
    L7_2 = L7_2()
  end
  L8_2 = A1_2.fontSize
  if not L8_2 then
    L8_2 = L2_2
  end
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = L1_1
  L4_2 = L4_2.isStringPersianInAndroid
  L5_2 = A1_2.name
  L6_2 = L5_2
  L5_2 = L5_2.sub
  L7_2 = 1
  L8_2 = 1
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  if L4_2 then
    L4_2 = A1_2.bg1
    L4_2 = L4_2.x
    L5_2 = A1_2.bg
    L5_2 = L5_2.x
    L4_2 = L4_2 - L5_2
    L4_2 = L4_2 + 2
    L3_2.x = L4_2
  else
    L4_2 = A1_2.bg1
    L4_2 = L4_2.x
    L5_2 = A1_2.bg
    L5_2 = L5_2.x
    L4_2 = L4_2 - L5_2
    L4_2 = L4_2 + 0.5
    L3_2.x = L4_2
  end
  L4_2 = A1_2.height
  L4_2 = L4_2 * 0.5
  L3_2.y = L4_2
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = gray
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.rotate
  L6_2 = 90
  L4_2(L5_2, L6_2)
  L4_2 = A1_2.group
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = L1_1
  L4_2 = L4_2.fixedTextSize
  L5_2 = L3_2
  L6_2 = L2_2
  L7_2 = {}
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L8_2 = A1_2.group
  L9_2 = A1_2.bg
  L9_2 = L9_2.height
  L9_2 = L9_2 - 5
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = L4_2
  L4_2 = nil
  L5_2 = A1_2.score
  if 0 < L5_2 then
    L5_2 = "+"
    L6_2 = L0_1
    L6_2 = L6_2.adjustNumber
    L7_2 = L1_1
    L7_2 = L7_2.stringThousandCommaSeperated
    L8_2 = A1_2.score
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L7_2(L8_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L4_2 = L5_2 .. L6_2
  else
    L5_2 = L0_1
    L5_2 = L5_2.adjustNumber
    L6_2 = L1_1
    L6_2 = L6_2.stringThousandCommaSeperated
    L7_2 = A1_2.score
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L6_2(L7_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L4_2 = L5_2
  end
  L5_2 = display
  L5_2 = L5_2.newImageRect
  L6_2 = A1_2.group
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "LiveBattle/score.png"
  L7_2 = L7_2 .. L8_2
  L8_2 = 19
  L9_2 = 26
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = A1_2.info
  L6_2 = L6_2.x
  L7_2 = L5_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 + L7_2
  L6_2 = L6_2 + 5
  L5_2.x = L6_2
  L6_2 = A1_2.bg
  L6_2 = L6_2.y
  L6_2 = L6_2 * 0.6
  L5_2.y = L6_2
  L6_2 = L7_1
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = A1_2.group
  L9_2 = L4_2
  L10_2 = 0
  L11_2 = 0
  L12_2 = A1_2.font
  if not L12_2 then
    L12_2 = Constants
    L12_2 = L12_2.fontForSubtitle
    L12_2 = L12_2()
  end
  L13_2 = A1_2.fontSize
  if not L13_2 then
    L13_2 = L6_2
  end
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = L5_2.x
  L9_2 = L5_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L8_2 = L8_2 + 4
  L9_2 = L7_2.width
  L9_2 = L9_2 / 2
  L8_2 = L8_2 + L9_2
  L7_2.x = L8_2
  L8_2 = L5_2.y
  L7_2.y = L8_2
  L9_2 = L7_2
  L8_2 = L7_2.setFillColor
  L10_2 = gray
  L8_2(L9_2, L10_2)
  L8_2 = nil
  L9_2 = A1_2.battlePower
  if 0 < L9_2 then
    L9_2 = "+"
    L10_2 = L0_1
    L10_2 = L10_2.adjustNumber
    L11_2 = L1_1
    L11_2 = L11_2.shortenLongNumber
    L12_2 = A1_2.battlePower
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L11_2(L12_2)
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L8_2 = L9_2 .. L10_2
  else
    L9_2 = L0_1
    L9_2 = L9_2.adjustNumber
    L10_2 = L1_1
    L10_2 = L10_2.shortenLongNumber
    L11_2 = A1_2.battlePower
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L10_2(L11_2)
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L8_2 = L9_2
  end
  L9_2 = display
  L9_2 = L9_2.newImageRect
  L10_2 = A1_2.group
  L11_2 = Constants
  L11_2 = L11_2.Path_Assets
  L12_2 = "LiveBattle/battle.png"
  L11_2 = L11_2 .. L12_2
  L12_2 = 20
  L13_2 = 20
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  L10_2 = A1_2.info
  L10_2 = L10_2.x
  L11_2 = A1_2.info
  L11_2 = L11_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 - L11_2
  L11_2 = L9_2.width
  L11_2 = L11_2 / 2
  L10_2 = L10_2 + L11_2
  L10_2 = L10_2 + 5
  L9_2.x = L10_2
  L10_2 = L5_2.y
  L9_2.y = L10_2
  L10_2 = L7_1
  L11_2 = display
  L11_2 = L11_2.newText
  L12_2 = A1_2.group
  L13_2 = L8_2
  L14_2 = 0
  L15_2 = 0
  L16_2 = A1_2.font
  if not L16_2 then
    L16_2 = Constants
    L16_2 = L16_2.fontForSubtitle
    L16_2 = L16_2()
  end
  L17_2 = A1_2.fontSize
  if not L17_2 then
    L17_2 = L10_2
  end
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L12_2 = L9_2.x
  L13_2 = L9_2.width
  L13_2 = L13_2 / 2
  L12_2 = L12_2 + L13_2
  L12_2 = L12_2 + 4
  L13_2 = L11_2.width
  L13_2 = L13_2 / 2
  L12_2 = L12_2 + L13_2
  L11_2.x = L12_2
  L12_2 = L9_2.y
  L11_2.y = L12_2
  L13_2 = L11_2
  L12_2 = L11_2.setFillColor
  L14_2 = gray
  L12_2(L13_2, L14_2)
  L12_2 = nil
  L13_2 = A1_2.goldGain
  if 0 < L13_2 then
    L13_2 = "+"
    L14_2 = L0_1
    L14_2 = L14_2.adjustNumber
    L15_2 = L1_1
    L15_2 = L15_2.shortenLongNumber
    L16_2 = A1_2.goldGain
    L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L15_2(L16_2)
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L12_2 = L13_2 .. L14_2
  else
    L13_2 = L0_1
    L13_2 = L13_2.adjustNumber
    L14_2 = L1_1
    L14_2 = L14_2.shortenLongNumber
    L15_2 = A1_2.goldGain
    L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L14_2(L15_2)
    L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L12_2 = L13_2
  end
  L13_2 = display
  L13_2 = L13_2.newImageRect
  L14_2 = A1_2.group
  L15_2 = Constants
  L15_2 = L15_2.Path_Assets
  L16_2 = "BattleItems/FC-Outcome-gold.png"
  L15_2 = L15_2 .. L16_2
  L16_2 = 20
  L17_2 = 20
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L14_2 = L9_2.x
  L13_2.x = L14_2
  L14_2 = A1_2.bg
  L14_2 = L14_2.y
  L14_2 = L14_2 * 1.4
  L13_2.y = L14_2
  L14_2 = L7_1
  L15_2 = display
  L15_2 = L15_2.newText
  L16_2 = A1_2.group
  L17_2 = L12_2
  L18_2 = 0
  L19_2 = 0
  L20_2 = A1_2.font
  if not L20_2 then
    L20_2 = Constants
    L20_2 = L20_2.fontForSubtitle
    L20_2 = L20_2()
  end
  L21_2 = A1_2.fontSize
  if not L21_2 then
    L21_2 = L14_2
  end
  L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L16_2 = L13_2.x
  L17_2 = L13_2.width
  L17_2 = L17_2 / 2
  L16_2 = L16_2 + L17_2
  L16_2 = L16_2 + 4
  L17_2 = L15_2.width
  L17_2 = L17_2 / 2
  L16_2 = L16_2 + L17_2
  L15_2.x = L16_2
  L16_2 = L13_2.y
  L15_2.y = L16_2
  L17_2 = L15_2
  L16_2 = L15_2.setFillColor
  L18_2 = gray
  L16_2(L17_2, L18_2)
  L16_2 = nil
  L17_2 = A1_2.xpGain
  if 0 < L17_2 then
    L17_2 = "+"
    L18_2 = L0_1
    L18_2 = L18_2.adjustNumber
    L19_2 = L1_1
    L19_2 = L19_2.stringThousandCommaSeperated
    L20_2 = A1_2.xpGain
    L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L19_2(L20_2)
    L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L16_2 = L17_2 .. L18_2
  else
    L17_2 = L0_1
    L17_2 = L17_2.adjustNumber
    L18_2 = L1_1
    L18_2 = L18_2.stringThousandCommaSeperated
    L19_2 = A1_2.xpGain
    L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L18_2(L19_2)
    L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L16_2 = L17_2
  end
  L17_2 = display
  L17_2 = L17_2.newImageRect
  L18_2 = A1_2.group
  L19_2 = Constants
  L19_2 = L19_2.Path_Assets
  L20_2 = "BattleItems/FC-Outcome-XP.png"
  L19_2 = L19_2 .. L20_2
  L20_2 = 20
  L21_2 = 20
  L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2)
  L18_2 = L5_2.x
  L17_2.x = L18_2
  L18_2 = L13_2.y
  L17_2.y = L18_2
  L18_2 = L7_1
  L19_2 = display
  L19_2 = L19_2.newText
  L20_2 = A1_2.group
  L21_2 = L16_2
  L22_2 = 0
  L23_2 = 0
  L24_2 = A1_2.font
  if not L24_2 then
    L24_2 = Constants
    L24_2 = L24_2.fontForSubtitle
    L24_2 = L24_2()
  end
  L25_2 = A1_2.fontSize
  if not L25_2 then
    L25_2 = L18_2
  end
  L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  L20_2 = L17_2.x
  L21_2 = L17_2.width
  L21_2 = L21_2 / 2
  L20_2 = L20_2 + L21_2
  L20_2 = L20_2 + 4
  L21_2 = L19_2.width
  L21_2 = L21_2 / 2
  L20_2 = L20_2 + L21_2
  L19_2.x = L20_2
  L20_2 = L17_2.y
  L19_2.y = L20_2
  L21_2 = L19_2
  L20_2 = L19_2.setFillColor
  L22_2 = gray
  L20_2(L21_2, L22_2)
  L20_2 = {}
  L21_2 = A1_2.heroBenefits
  L21_2 = L21_2.power
  L20_2.power = L21_2
  L21_2 = A1_2.heroBenefits
  L21_2 = L21_2.wisdom
  L20_2.wisdom = L21_2
  L21_2 = A1_2.heroBenefits
  L21_2 = L21_2.blessing
  L20_2.blessing = L21_2
  L21_2 = A1_2.bg1
  L21_2 = L21_2.width
  L21_2 = L21_2 - 2
  L20_2.width = L21_2
  L20_2.height = 30
  L20_2.cornerRadius = 3
  L21_2 = L3_1
  L22_2 = L21_2
  L21_2 = L21_2.new
  L23_2 = L20_2
  L21_2 = L21_2(L22_2, L23_2)
  L22_2 = A1_2.group
  L23_2 = L22_2
  L22_2 = L22_2.insert
  L24_2 = L21_2.view
  L22_2(L23_2, L24_2)
  L22_2 = L21_2.view
  L23_2 = A1_2.bg1
  L23_2 = L23_2.x
  L22_2.x = L23_2
  L22_2 = L21_2.view
  L23_2 = A1_2.bg1
  L23_2 = L23_2.y
  L24_2 = A1_2.bg1
  L24_2 = L24_2.height
  L24_2 = L24_2 / 2
  L23_2 = L23_2 + L24_2
  L24_2 = L21_2.view
  L24_2 = L24_2.height
  L24_2 = L24_2 / 2
  L23_2 = L23_2 + L24_2
  L23_2 = L23_2 - 2
  L22_2.y = L23_2
  return A1_2
end

new = L9_1
