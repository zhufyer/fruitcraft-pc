local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Constants"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Utils.Toolbox"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "widget"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "json"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.ActivityIndicatorView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Components.TDButtonView"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "composer"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Tutorial.HorizontalOverlayView"
L8_1 = L8_1(L9_1)
L9_1 = require
L10_1 = "Tutorial.VerticalOverlayView"
L9_1 = L9_1(L10_1)
L10_1 = require
L11_1 = "Views.EffectsManager"
L10_1 = L10_1(L11_1)
L11_1 = require
L12_1 = "Models.ErrorController"
L11_1 = L11_1(L12_1)
L12_1 = nil

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = log3
  L3_2 = "bank view repaint"
  L2_2(L3_2)
  L2_2 = log3
  L3_2 = mainPlayer
  L3_2 = L3_2.bankBuilding
  L3_2 = L3_2.gold
  L2_2(L3_2)
  L2_2 = A0_2.parent
  L2_2 = L2_2.bar
  L3_2 = L2_2
  L2_2 = L2_2.updateGold
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.setBankGoldImage
  L2_2(L3_2)
  L2_2 = A0_2.powerValueLabel
  L3_2 = L1_1
  L3_2 = L3_2.adjustNumber
  L4_2 = L2_1
  L4_2 = L4_2.stringThousandCommaSeperated
  L5_2 = ""
  L6_2 = mainPlayer
  L6_2 = L6_2.bankBuilding
  L6_2 = L6_2.gold
  L5_2 = L5_2 .. L6_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.text = L3_2
  L2_2 = A0_2.powerValueLabel
  L3_2 = L1_1
  L3_2 = L3_2.adjustX
  L4_2 = A0_2.currentPower
  L4_2 = L4_2.width
  L4_2 = 120 + L4_2
  L4_2 = L4_2 + 5
  L5_2 = A0_2.powerValueLabel
  L5_2 = L5_2.width
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L3_2 = L3_2(L4_2)
  L2_2.x = L3_2
  L2_2 = mainPlayer
  L2_2 = L2_2.bankBuilding
  L2_2 = L2_2.level
  L3_2 = L0_1
  L3_2 = L3_2.Bank_Building_Max_Upgrade_level
  if L2_2 <= L3_2 then
    L2_2 = A0_2.levelLabel
    L3_2 = L1_1
    L3_2 = L3_2.Level
    L4_2 = ": "
    L5_2 = L1_1
    L5_2 = L5_2.adjustNumber
    L6_2 = mainPlayer
    L6_2 = L6_2.bankBuilding
    L6_2 = L6_2.level
    L5_2 = L5_2(L6_2)
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2.text = L3_2
  end
  L2_2 = mainPlayer
  L2_2 = L2_2.bankBuilding
  L3_2 = L2_2
  L2_2 = L2_2.benefitFromLevel
  L2_2 = L2_2(L3_2)
  L12_1 = L2_2
  L2_2 = A0_2.statusValueLabel
  L3_2 = L1_1
  L3_2 = L3_2.adjustNumber
  L4_2 = L2_1
  L4_2 = L4_2.stringThousandCommaSeperated
  L5_2 = ""
  L6_2 = L12_1
  L5_2 = L5_2 .. L6_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.text = L3_2
  L2_2 = A0_2.statusValueLabel
  L3_2 = L1_1
  L3_2 = L3_2.adjustX
  L4_2 = A0_2.statusLabel
  L4_2 = L4_2.width
  L4_2 = 120 + L4_2
  L4_2 = L4_2 + 5
  L5_2 = A0_2.statusValueLabel
  L5_2 = L5_2.width
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L3_2 = L3_2(L4_2)
  L2_2.x = L3_2
  L2_2 = mainPlayer
  L2_2 = L2_2.gold
  if L2_2 ~= 0 then
    L2_2 = mainPlayer
    L2_2 = L2_2.bankBuilding
    L2_2 = L2_2.gold
    L3_2 = L12_1
    if not (L2_2 >= L3_2) then
      goto lbl_113
    end
  end
  L2_2 = A0_2.deposit_b
  L3_2 = L2_2
  L2_2 = L2_2.setEnabled
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.deposit_b
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = L0_1
  L4_2 = L4_2.darkGreyColor
  L4_2, L5_2, L6_2 = L4_2()
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2.deposit_b
  L2_2.alpha = 0.5
  goto lbl_125
  ::lbl_113::
  L2_2 = A0_2.deposit_b
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = 255
  L5_2 = 255
  L6_2 = 255
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2.deposit_b
  L2_2.alpha = 1
  L2_2 = A0_2.deposit_b
  L3_2 = L2_2
  L2_2 = L2_2.setEnabled
  L4_2 = true
  L2_2(L3_2, L4_2)
  ::lbl_125::
  L2_2 = mainPlayer
  L2_2 = L2_2.bankBuilding
  L2_2 = L2_2.gold
  if L2_2 == 0 then
    L2_2 = A0_2.withdrawal_b
    L3_2 = L2_2
    L2_2 = L2_2.setEnabled
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.withdrawal_b
    L3_2 = L2_2
    L2_2 = L2_2.setFillColor
    L4_2 = L0_1
    L4_2 = L4_2.darkGreyColor
    L4_2, L5_2, L6_2 = L4_2()
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2.withdrawal_b
    L2_2.alpha = 0.5
  else
    L2_2 = A0_2.withdrawal_b
    L3_2 = L2_2
    L2_2 = L2_2.setFillColor
    L4_2 = 255
    L5_2 = 255
    L6_2 = 255
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = A0_2.withdrawal_b
    L2_2.alpha = 1
    L2_2 = A0_2.withdrawal_b
    L3_2 = L2_2
    L2_2 = L2_2.setEnabled
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end

repaint = L13_1

function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L3_2 = log3
  L4_2 = "bank view create"
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
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  A1_2.view = L3_2
  A1_2.parent = A2_2
  L3_2 = A1_2.parent
  L3_2 = L3_2.bar
  L4_2 = L3_2
  L3_2 = L3_2.updateGold
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = nil
  L4_2 = nil
  L5_2 = display
  L5_2 = L5_2.newRect
  L6_2 = A1_2.view
  L7_2 = 0
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 / 2
  L8_2 = L8_2 - 30
  L9_2 = display
  L9_2 = L9_2.contentWidth
  L9_2 = L9_2 - 30
  L10_2 = 1.5
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  A1_2.separate = L5_2
  L5_2 = A1_2.separate
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 / 2
  L5_2.x = L6_2
  L5_2 = A1_2.separate
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = L0_1
  L7_2 = L7_2.blueColor
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L5_2 = L1_1
  L5_2 = L5_2["Account Balance"]
  L6_2 = " :"
  L3_2 = L5_2 .. L6_2
  L5_2 = L1_1
  L5_2 = L5_2.localizedString
  L6_2 = "Bank Description"
  L7_2 = {}
  L8_2 = L1_1
  L8_2 = L8_2.adjustNumber
  L9_2 = L0_1
  L9_2 = L9_2.Wage_Percent
  L8_2 = L8_2(L9_2)
  L7_2.percent = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L5_2
  L5_2 = mainPlayer
  L5_2 = L5_2.bankBuilding
  L6_2 = L5_2
  L5_2 = L5_2.benefitFromLevel
  L5_2 = L5_2(L6_2)
  L12_1 = L5_2
  L5_2 = display
  L5_2 = L5_2.newText
  L6_2 = A1_2.view
  L7_2 = L1_1
  L7_2 = L7_2.adjustNumber
  L8_2 = L2_1
  L8_2 = L8_2.stringThousandCommaSeperated
  L9_2 = ""
  L10_2 = mainPlayer
  L10_2 = L10_2.bankBuilding
  L10_2 = L10_2.gold
  L9_2 = L9_2 .. L10_2
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L8_2(L9_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L8_2 = 0
  L9_2 = 0
  L10_2 = L0_1
  L10_2 = L10_2.fontForTitle
  L10_2 = L10_2()
  L11_2 = 12
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  A1_2.powerValueLabel = L5_2
  
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L5_1
    L1_3 = L1_3.hide
    L1_3()
    L1_3 = showSimpleDialog
    L2_3 = "Upgrade"
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L5_1
    L0_3 = L0_3.hide
    L0_3()
    L0_3 = showSimpleDialog
    L1_3 = "Upgrade"
    L2_3 = "Succes message for upgarde"
    L0_3(L1_3, L2_3)
    L0_3 = mainPlayer
    L0_3 = L0_3.bankBuilding
    L0_3 = L0_3.level
    L1_3 = L0_1
    L1_3 = L1_3.Bank_Building_Max_Upgrade_level
    if L0_3 == L1_3 then
      L0_3 = A1_2
      L0_3 = L0_3.costLabel
      if L0_3 ~= nil then
        L0_3 = A1_2
        L0_3 = L0_3.costLabel
        L0_3.isVisible = false
      end
      L0_3 = A1_2
      L0_3 = L0_3.upgradeButton
      if L0_3 ~= nil then
        L0_3 = A1_2
        L0_3 = L0_3.upgradeButton
        L0_3.isVisible = false
      end
    else
      L0_3 = A1_2
      L0_3 = L0_3.costLabel
      L1_3 = L1_1
      L1_3 = L1_3.adjustNumber
      L2_3 = L2_1
      L2_3 = L2_3.stringThousandCommaSeperated
      L3_3 = mainPlayer
      L3_3 = L3_3.bankBuilding
      L4_3 = L3_3
      L3_3 = L3_3.upgradeCost
      L3_3, L4_3 = L3_3(L4_3)
      L2_3, L3_3, L4_3 = L2_3(L3_3, L4_3)
      L1_3 = L1_3(L2_3, L3_3, L4_3)
      L0_3.text = L1_3
    end
    L0_3 = A1_2
    L1_3 = L0_3
    L0_3 = L0_3.repaint
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L5_1
    L1_3 = L1_3.hide
    L1_3()
    L1_3 = showSimpleDialog
    L2_3 = "Deposit"
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L5_1
    L1_3 = L1_3.hide
    L1_3()
    L1_3 = showSimpleDialog
    L2_3 = "Withdrawal"
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    
    function L1_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = A0_4.isError
      if L1_4 then
        L1_4 = log
        L2_4 = "Network error! Failed cooldown card."
        L1_4(L2_4)
        L1_4 = L7_2
        if L1_4 ~= nil then
          L1_4 = "Network error"
          L2_4 = L7_2
          L3_4 = L1_4
          L2_4(L3_4)
        end
      else
        L1_4 = L4_1
        L1_4 = L1_4.decode
        L2_4 = A0_4.response
        L1_4 = L1_4(L2_4)
        L2_4 = L1_4.status
        if L2_4 == true then
          L2_4 = L5_1
          L2_4 = L2_4.hide
          L2_4()
          L2_4 = log3
          L3_4 = "********************************************************"
          L2_4(L3_4)
          L2_4 = log3
          L3_4 = A0_4.response
          L2_4(L3_4)
          L2_4 = mainPlayer
          L3_4 = L1_4.data
          L3_4 = L3_4.player_gold
          L2_4.gold = L3_4
          L2_4 = mainPlayer
          L2_4 = L2_4.bankBuilding
          L3_4 = L1_4.data
          L3_4 = L3_4.bank_account_balance
          L2_4.gold = L3_4
          L2_4 = A1_2
          L3_4 = L2_4
          L2_4 = L2_4.repaint
          L4_4 = true
          L2_4(L3_4, L4_4)
        else
          L2_4 = L1_4.error
          if not L2_4 then
            L2_4 = "Network Response returned false status"
          end
          L3_4 = L1_4.data
          if L3_4 then
            L3_4 = L1_4.data
            L3_4 = L3_4.code
            if L3_4 then
              L3_4 = L11_1
              L3_4 = L3_4.getErrorMessage
              L4_4 = L1_4.data
              L3_4 = L3_4(L4_4)
              L2_4 = L3_4 or L2_4
              if not L3_4 then
                L3_4 = tostring
                L4_4 = L1_4.data
                L4_4 = L4_4.code
                L3_4 = L3_4(L4_4)
                L2_4 = L3_4
              end
            end
          else
            L3_4 = L1_4.error
            if L3_4 then
              L3_4 = L1_4.error
              L2_4 = L3_4 or L2_4
              if not L3_4 then
                L2_4 = "Response did not return success status"
              end
            end
          end
          L3_4 = L7_2
          L4_4 = L2_4
          L3_4(L4_4)
        end
      end
    end
    
    L2_3 = log3
    L3_3 = "Bank Button was pressed and released"
    L2_3(L3_3)
    L2_3 = A0_3.id
    if L2_3 == "Deposit" then
      L2_3 = {}
      L3_3 = network
      L3_3 = L3_3.getDefaultHeader
      L3_3 = L3_3()
      L2_3.headers = L3_3
      L3_3 = L5_1
      L3_3 = L3_3.show
      L4_3 = L1_1
      L4_3 = L4_3["Deposit Value To Bank"]
      L3_3(L4_3)
      L3_3 = network
      L3_3 = L3_3.request
      L4_3 = L0_1
      L4_3 = L4_3.API_Path
      L5_3 = L0_1
      L5_3 = L5_3.API_DepositToBank
      L4_3 = L4_3 .. L5_3
      L5_3 = "POST"
      L6_3 = L1_3
      L7_3 = L2_3
      L3_3(L4_3, L5_3, L6_3, L7_3)
    end
  end
  
  L10_2 = 100
  L11_2 = 30
  L12_2 = L6_1
  L13_2 = L12_2
  L12_2 = L12_2.new
  L14_2 = {}
  L15_2 = L1_1
  L15_2 = L15_2.Deposit
  L14_2.label = L15_2
  L15_2 = L0_1
  L15_2 = L15_2.Path_Assets
  L16_2 = "Buttons/FC-Select-Deck6.png"
  L15_2 = L15_2 .. L16_2
  L14_2.defaultFile = L15_2
  L15_2 = L0_1
  L15_2 = L15_2.Path_Assets
  L16_2 = "Buttons/FC-gui-select.png"
  L15_2 = L15_2 .. L16_2
  L14_2.overFile = L15_2
  L14_2.width = L10_2
  L14_2.height = L11_2
  L14_2.emboss = false
  L14_2.onRelease = L9_2
  L14_2.id = "Deposit"
  L12_2 = L12_2(L13_2, L14_2)
  A1_2.deposit_b = L12_2
  L12_2 = A1_2.deposit_b
  L12_2.delegate = A0_2
  L12_2 = A1_2.view
  L13_2 = L12_2
  L12_2 = L12_2.insert
  L14_2 = A1_2.deposit_b
  L14_2 = L14_2.view
  L12_2(L13_2, L14_2)
  L12_2 = A1_2.deposit_b
  L13_2 = display
  L13_2 = L13_2.contentWidth
  L13_2 = L13_2 * 3
  L13_2 = L13_2 / 4
  L13_2 = L13_2 - 10
  L12_2.x = L13_2
  L12_2 = A1_2.deposit_b
  L13_2 = A1_2.separate
  L13_2 = L13_2.y
  L14_2 = display
  L14_2 = L14_2.contentHeight
  L14_2 = L14_2 / 2
  L14_2 = L14_2 - 30
  L14_2 = L14_2 / 4
  L13_2 = L13_2 + L14_2
  L13_2 = L13_2 + 5
  L12_2.y = L13_2
  L12_2 = L6_1
  L13_2 = L12_2
  L12_2 = L12_2.new
  L14_2 = {}
  L15_2 = L1_1
  L15_2 = L15_2.Withdrawal
  L14_2.label = L15_2
  L15_2 = L0_1
  L15_2 = L15_2.Path_Assets
  L16_2 = "Buttons/FC-Select-Deck6.png"
  L15_2 = L15_2 .. L16_2
  L14_2.defaultFile = L15_2
  L15_2 = L0_1
  L15_2 = L15_2.Path_Assets
  L16_2 = "Buttons/FC-gui-select.png"
  L15_2 = L15_2 .. L16_2
  L14_2.overFile = L15_2
  L14_2.width = L10_2
  L14_2.height = L11_2
  L14_2.emboss = false
  
  function L15_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L7_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Scenes.WithdrawOverlay"
    L2_3 = {}
    L3_3 = {}
    L4_3 = A1_2
    L3_3.objectOfBankView = L4_3
    L2_3.params = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L14_2.onRelease = L15_2
  L14_2.id = "Withdrawal"
  L12_2 = L12_2(L13_2, L14_2)
  A1_2.withdrawal_b = L12_2
  L12_2 = A1_2.withdrawal_b
  L12_2.delegate = A0_2
  L12_2 = A1_2.view
  L13_2 = L12_2
  L12_2 = L12_2.insert
  L14_2 = A1_2.withdrawal_b
  L14_2 = L14_2.view
  L12_2(L13_2, L14_2)
  L12_2 = A1_2.withdrawal_b
  L13_2 = display
  L13_2 = L13_2.contentWidth
  L13_2 = L13_2 * 3
  L13_2 = L13_2 / 4
  L13_2 = L13_2 - 10
  L12_2.x = L13_2
  L12_2 = A1_2.withdrawal_b
  L13_2 = A1_2.separate
  L13_2 = L13_2.y
  L14_2 = display
  L14_2 = L14_2.contentHeight
  L14_2 = L14_2 / 2
  L14_2 = L14_2 - 30
  L14_2 = L14_2 * 3
  L14_2 = L14_2 / 4
  L13_2 = L13_2 + L14_2
  L13_2 = L13_2 - 10
  L12_2.y = L13_2
  L13_2 = A1_2
  L12_2 = A1_2.setBankGoldImage
  L12_2(L13_2)
  L12_2 = mainPlayer
  L12_2 = L12_2.bankBuilding
  L12_2 = L12_2.level
  L13_2 = L0_1
  L13_2 = L13_2.Bank_Building_Max_Upgrade_level
  if L12_2 < L13_2 then
    L12_2 = L6_1
    L13_2 = L12_2
    L12_2 = L12_2.new
    L14_2 = {}
    L14_2.width = 71
    L14_2.height = 42
    L15_2 = L1_1
    L15_2 = L15_2.Upgrade
    L14_2.label = L15_2
    L14_2.fontSize = 8
    L14_2.labelYOffset = -10
    L15_2 = L0_1
    L15_2 = L15_2.fontForTitle
    L15_2 = L15_2()
    L14_2.font = L15_2
    L15_2 = L0_1
    L15_2 = L15_2.Path_Assets
    L16_2 = "TribeUpgrade/FC-TU-upgrade.png"
    L15_2 = L15_2 .. L16_2
    L14_2.defaultFile = L15_2
    L15_2 = L0_1
    L15_2 = L15_2.Path_Assets
    L16_2 = "TribeUpgrade/FC-TU-upgradepressed.png"
    L15_2 = L15_2 .. L16_2
    L14_2.overFile = L15_2
    L14_2.emboss = false
    
    function L15_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = mainPlayer
      L1_3 = L0_3
      L0_3 = L0_3.checkPlayerCurrency
      L2_3 = mainPlayer
      L2_3 = L2_3.bankBuilding
      L3_3 = L2_3
      L2_3 = L2_3.upgradeCost
      L2_3, L3_3, L4_3 = L2_3(L3_3)
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      if L0_3 then
        L0_3 = L5_1
        L0_3 = L0_3.show
        L1_3 = L1_1
        L1_3 = L1_3.Upgrade
        L0_3(L1_3)
        L0_3 = mainPlayer
        L0_3 = L0_3.bankBuilding
        L1_3 = L0_3
        L0_3 = L0_3.upgrade
        L2_3 = L6_2
        L3_3 = L5_2
        L4_3 = A1_2
        L0_3(L1_3, L2_3, L3_3, L4_3)
      end
    end
    
    L14_2.onRelease = L15_2
    L12_2 = L12_2(L13_2, L14_2)
    A1_2.upgradeButton = L12_2
    L12_2 = A1_2.upgradeButton
    L13_2 = L1_1
    L13_2 = L13_2.adjustX
    L14_2 = display
    L14_2 = L14_2.contentWidth
    L15_2 = A1_2.upgradeButton
    L15_2 = L15_2.width
    L15_2 = L15_2 / 2
    L14_2 = L14_2 - L15_2
    L14_2 = L14_2 - 30
    L13_2 = L13_2(L14_2)
    L12_2.x = L13_2
    L12_2 = A1_2.upgradeButton
    L12_2.y = 42
    L12_2 = A1_2.view
    L13_2 = L12_2
    L12_2 = L12_2.insert
    L14_2 = A1_2.upgradeButton
    L14_2 = L14_2.view
    L12_2(L13_2, L14_2)
    L12_2 = mainPlayer
    L12_2 = L12_2.bankBuilding
    L12_2 = L12_2.level
    L13_2 = L0_1
    L13_2 = L13_2.Bank_Building_Max_Upgrade_level
    if L12_2 < L13_2 then
      L12_2 = display
      L12_2 = L12_2.newText
      L13_2 = A1_2.view
      L14_2 = L1_1
      L14_2 = L14_2.adjustNumber
      L15_2 = L2_1
      L15_2 = L15_2.stringThousandCommaSeperated
      L16_2 = mainPlayer
      L16_2 = L16_2.bankBuilding
      L17_2 = L16_2
      L16_2 = L16_2.upgradeCost
      L16_2, L17_2, L18_2, L19_2, L20_2 = L16_2(L17_2)
      L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
      L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L15_2 = 0
      L16_2 = 0
      L17_2 = L0_1
      L17_2 = L17_2.fontForTitle
      L17_2 = L17_2()
      L18_2 = 9
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      A1_2.costLabel = L12_2
      L12_2 = A1_2.costLabel
      L13_2 = L12_2
      L12_2 = L12_2.setFillColor
      L14_2 = L0_1
      L14_2 = L14_2.darkGreenColor
      L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L14_2()
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L12_2 = A1_2.costLabel
      L13_2 = L1_1
      L13_2 = L13_2.adjustX
      L14_2 = display
      L14_2 = L14_2.contentWidth
      L15_2 = A1_2.upgradeButton
      L15_2 = L15_2.width
      L15_2 = L15_2 / 2
      L14_2 = L14_2 - L15_2
      L14_2 = L14_2 - 20
      L15_2 = 15
      L13_2 = L13_2(L14_2, L15_2)
      L12_2.x = L13_2
      L12_2 = A1_2.costLabel
      L12_2.y = 48
    end
  end
  L12_2 = mainPlayer
  L12_2 = L12_2.bankBuilding
  L12_2 = L12_2.level
  L13_2 = L0_1
  L13_2 = L13_2.Bank_Building_Max_Upgrade_level
  if L12_2 == L13_2 then
    L12_2 = A1_2.upgradeButton
    if L12_2 ~= nil then
      L12_2 = A1_2.upgradeButton
      L12_2.isVisible = false
    end
    L12_2 = A1_2.costLabel
    if L12_2 ~= nil then
      L12_2 = A1_2.costLabel
      L12_2.isVisible = false
    end
  end
  L12_2 = mainPlayer
  L12_2 = L12_2.gold
  if L12_2 ~= 0 then
    L12_2 = mainPlayer
    L12_2 = L12_2.bankBuilding
    L12_2 = L12_2.gold
    L13_2 = L12_1
    if not (L12_2 >= L13_2) then
      goto lbl_364
    end
  end
  L12_2 = A1_2.deposit_b
  L13_2 = L12_2
  L12_2 = L12_2.setEnabled
  L14_2 = false
  L12_2(L13_2, L14_2)
  L12_2 = A1_2.deposit_b
  L13_2 = L12_2
  L12_2 = L12_2.setFillColor
  L14_2 = L0_1
  L14_2 = L14_2.darkGreyColor
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L14_2()
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L12_2 = A1_2.deposit_b
  L12_2.alpha = 0.5
  ::lbl_364::
  L12_2 = mainPlayer
  L12_2 = L12_2.bankBuilding
  L12_2 = L12_2.gold
  if L12_2 == 0 then
    L12_2 = A1_2.withdrawal_b
    L13_2 = L12_2
    L12_2 = L12_2.setEnabled
    L14_2 = false
    L12_2(L13_2, L14_2)
    L12_2 = A1_2.withdrawal_b
    L13_2 = L12_2
    L12_2 = L12_2.setFillColor
    L14_2 = L0_1
    L14_2 = L14_2.darkGreyColor
    L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L14_2()
    L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L12_2 = A1_2.withdrawal_b
    L12_2.alpha = 0.5
  end
  L12_2 = display
  L12_2 = L12_2.newText
  L13_2 = A1_2.view
  L14_2 = L3_2
  L15_2 = 0
  L16_2 = 0
  L17_2 = L0_1
  L17_2 = L17_2.fontForSubtitle
  L17_2 = L17_2()
  L18_2 = 12
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  A1_2.currentPower = L12_2
  L12_2 = A1_2.currentPower
  L13_2 = L12_2
  L12_2 = L12_2.setFillColor
  L14_2 = L0_1
  L14_2 = L14_2.darkBlueColor
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L14_2()
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L12_2 = A1_2.currentPower
  L13_2 = L1_1
  L13_2 = L13_2.adjustX
  L14_2 = A1_2.currentPower
  L14_2 = L14_2.width
  L14_2 = L14_2 / 2
  L14_2 = 120 + L14_2
  L13_2 = L13_2(L14_2)
  L12_2.x = L13_2
  L12_2 = A1_2.currentPower
  L13_2 = A1_2.currentPower
  L13_2 = L13_2.height
  L13_2 = L13_2 / 2
  L13_2 = 25 + L13_2
  L12_2.y = L13_2
  L12_2 = system
  L12_2 = L12_2.getInfo
  L13_2 = "platformName"
  L12_2 = L12_2(L13_2)
  if L12_2 == "iPhone OS" then
    L12_2 = A1_2.currentPower
    L13_2 = A1_2.currentPower
    L13_2 = L13_2.x
    L13_2 = L13_2 - 1
    L12_2.x = L13_2
  end
  L12_2 = A1_2.powerValueLabel
  L13_2 = L12_2
  L12_2 = L12_2.setFillColor
  L14_2 = L0_1
  L14_2 = L14_2.darkBlueColor
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L14_2()
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L12_2 = A1_2.powerValueLabel
  L13_2 = L1_1
  L13_2 = L13_2.adjustX
  L14_2 = A1_2.currentPower
  L14_2 = L14_2.x
  L15_2 = A1_2.currentPower
  L15_2 = L15_2.width
  L15_2 = L15_2 / 2
  L14_2 = L14_2 + L15_2
  L14_2 = L14_2 + 5
  L15_2 = A1_2.powerValueLabel
  L15_2 = L15_2.width
  L15_2 = L15_2 / 2
  L14_2 = L14_2 + L15_2
  L13_2 = L13_2(L14_2)
  L12_2.x = L13_2
  L12_2 = A1_2.powerValueLabel
  L13_2 = A1_2.currentPower
  L13_2 = L13_2.y
  L12_2.y = L13_2
  L12_2 = display
  L12_2 = L12_2.newText
  L13_2 = A1_2.view
  L14_2 = L1_1
  L14_2 = L14_2["Storage Limit"]
  L15_2 = " :"
  L14_2 = L14_2 .. L15_2
  L15_2 = 0
  L16_2 = 0
  L17_2 = L0_1
  L17_2 = L17_2.fontForSubtitle
  L17_2 = L17_2()
  L18_2 = 12
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  A1_2.statusLabel = L12_2
  L12_2 = A1_2.statusLabel
  L13_2 = L12_2
  L12_2 = L12_2.setFillColor
  L14_2 = L0_1
  L14_2 = L14_2.darkBlueColor
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L14_2()
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L12_2 = A1_2.statusLabel
  L13_2 = L1_1
  L13_2 = L13_2.adjustX
  L14_2 = A1_2.statusLabel
  L14_2 = L14_2.width
  L14_2 = L14_2 / 2
  L14_2 = 120 + L14_2
  L13_2 = L13_2(L14_2)
  L12_2.x = L13_2
  L12_2 = A1_2.statusLabel
  L13_2 = A1_2.statusLabel
  L13_2 = L13_2.height
  L13_2 = L13_2 / 2
  L13_2 = 45 + L13_2
  L12_2.y = L13_2
  L12_2 = display
  L12_2 = L12_2.newText
  L13_2 = A1_2.view
  L14_2 = L1_1
  L14_2 = L14_2.adjustNumber
  L15_2 = L2_1
  L15_2 = L15_2.stringThousandCommaSeperated
  L16_2 = ""
  L17_2 = L12_1
  L16_2 = L16_2 .. L17_2
  L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L15_2(L16_2)
  L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L15_2 = 0
  L16_2 = 0
  L17_2 = L0_1
  L17_2 = L17_2.fontForTitle
  L17_2 = L17_2()
  L18_2 = 12
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  A1_2.statusValueLabel = L12_2
  L12_2 = A1_2.statusValueLabel
  L13_2 = L12_2
  L12_2 = L12_2.setFillColor
  L14_2 = L0_1
  L14_2 = L14_2.darkBlueColor
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L14_2()
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L12_2 = A1_2.statusValueLabel
  L13_2 = L1_1
  L13_2 = L13_2.adjustX
  L14_2 = A1_2.statusLabel
  L14_2 = L14_2.x
  L15_2 = A1_2.statusLabel
  L15_2 = L15_2.width
  L15_2 = L15_2 / 2
  L14_2 = L14_2 + L15_2
  L14_2 = L14_2 + 5
  L15_2 = A1_2.statusValueLabel
  L15_2 = L15_2.width
  L15_2 = L15_2 / 2
  L14_2 = L14_2 + L15_2
  L13_2 = L13_2(L14_2)
  L12_2.x = L13_2
  L12_2 = A1_2.statusValueLabel
  L13_2 = A1_2.statusLabel
  L13_2 = L13_2.y
  L12_2.y = L13_2
  L12_2 = system
  L12_2 = L12_2.getInfo
  L13_2 = "build"
  L12_2 = L12_2(L13_2)
  if "2013.1137" < L12_2 then
    L12_2 = system
    L12_2 = L12_2.getInfo
    L13_2 = "platformName"
    L12_2 = L12_2(L13_2)
    if L12_2 ~= "Android" then
      L12_2 = L1_1
      L12_2 = L12_2.lang
      if L12_2 == "fa" then
        goto lbl_553
      end
    end
  end
  L12_2 = L1_1
  L12_2 = L12_2.lang
  if L12_2 == "ar" then
    ::lbl_553::
    L12_2 = {}
    L13_2 = A1_2.view
    L12_2.parent = L13_2
    L12_2.text = L4_2
    L12_2.x = 0
    L12_2.y = 0
    L12_2.width = 330
    L12_2.height = 60
    L13_2 = L0_1
    L13_2 = L13_2.fontForSubtitle
    L13_2 = L13_2()
    L12_2.font = L13_2
    L12_2.fontSize = 10
    L12_2.align = "right"
    L13_2 = display
    L13_2 = L13_2.newText
    L14_2 = L12_2
    L13_2 = L13_2(L14_2)
    A1_2.description = L13_2
  else
    L12_2 = display
    L12_2 = L12_2.newText
    L13_2 = A1_2.view
    L14_2 = L4_2
    L15_2 = 0
    L16_2 = 0
    L17_2 = 330
    L18_2 = 60
    L19_2 = L0_1
    L19_2 = L19_2.fontForSubtitle
    L19_2 = L19_2()
    L20_2 = 10
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    A1_2.description = L12_2
  end
  L12_2 = A1_2.description
  L13_2 = L12_2
  L12_2 = L12_2.setFillColor
  L14_2 = L0_1
  L14_2 = L14_2.darkBlueColor
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L14_2()
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L12_2 = A1_2.description
  L13_2 = L1_1
  L13_2 = L13_2.adjustX
  L14_2 = A1_2.description
  L14_2 = L14_2.width
  L14_2 = L14_2 / 2
  L14_2 = 120 + L14_2
  L13_2 = L13_2(L14_2)
  L12_2.x = L13_2
  L12_2 = A1_2.description
  L13_2 = A1_2.description
  L13_2 = L13_2.height
  L13_2 = L13_2 / 2
  L13_2 = 65 + L13_2
  L12_2.y = L13_2
  L12_2 = display
  L12_2 = L12_2.newImageRect
  L13_2 = A1_2.view
  L14_2 = L0_1
  L14_2 = L14_2.Path_Assets
  L15_2 = "Buildings/FC-listellipse-views.png"
  L14_2 = L14_2 .. L15_2
  L15_2 = 90
  L16_2 = 90
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
  L13_2 = L1_1
  L13_2 = L13_2.adjustX
  L14_2 = L12_2.width
  L14_2 = L14_2 / 2
  L14_2 = 20 + L14_2
  L13_2 = L13_2(L14_2)
  L12_2.x = L13_2
  L13_2 = L12_2.height
  L13_2 = L13_2 / 2
  L13_2 = 15 + L13_2
  L12_2.y = L13_2
  L13_2 = display
  L13_2 = L13_2.newText
  L14_2 = A1_2.view
  L15_2 = L1_1
  L15_2 = L15_2.Level
  L16_2 = ": "
  L17_2 = L1_1
  L17_2 = L17_2.adjustNumber
  L18_2 = mainPlayer
  L18_2 = L18_2.bankBuilding
  L18_2 = L18_2.level
  L17_2 = L17_2(L18_2)
  L15_2 = L15_2 .. L16_2 .. L17_2
  L16_2 = 0
  L17_2 = 0
  L18_2 = L0_1
  L18_2 = L18_2.fontForTitle
  L18_2 = L18_2()
  L19_2 = 12
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  A1_2.levelLabel = L13_2
  L13_2 = A1_2.levelLabel
  L14_2 = L13_2
  L13_2 = L13_2.setFillColor
  L15_2 = L0_1
  L15_2 = L15_2.darkBlueColor
  L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L15_2()
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L13_2 = A1_2.levelLabel
  L14_2 = L1_1
  L14_2 = L14_2.adjustX
  L15_2 = L12_2.width
  L15_2 = L15_2 / 2
  L15_2 = 20 + L15_2
  L14_2 = L14_2(L15_2)
  L13_2.x = L14_2
  L13_2 = A1_2.levelLabel
  L14_2 = L12_2.y
  L15_2 = L12_2.height
  L15_2 = L15_2 / 2
  L14_2 = L14_2 + L15_2
  L14_2 = L14_2 + 10
  L13_2.y = L14_2
  L13_2 = nil
  L14_2 = display
  L14_2 = L14_2.newImageRect
  L15_2 = A1_2.view
  L16_2 = L0_1
  L16_2 = L16_2.Path_Assets
  L17_2 = "Buildings/FC-bank.png"
  L16_2 = L16_2 .. L17_2
  L17_2 = 80
  L18_2 = 78
  L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
  L13_2 = L14_2
  L14_2 = L1_1
  L14_2 = L14_2.adjustX
  L15_2 = L12_2.width
  L15_2 = L15_2 / 2
  L15_2 = 20 + L15_2
  L14_2 = L14_2(L15_2)
  L13_2.x = L14_2
  L14_2 = L12_2.y
  L13_2.y = L14_2
  L14_2 = {}
  L15_2 = {}
  L16_2 = {}
  L17_2 = {}
  L18_2 = {}
  L14_2[1] = L15_2
  L14_2[2] = L16_2
  L14_2[3] = L17_2
  L14_2[4] = L18_2
  A1_2.cards = L14_2
  return A1_2
end

new = L13_1

function L13_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.repaint
  L1_2(L2_2)
  L1_2 = mainPlayer
  L1_2 = L1_2.settings
  L1_2 = L1_2.activeTutorial
  if L1_2 == "mine" then
    L1_2 = mainPlayer
    L1_2 = L1_2.settings
    L1_2 = L1_2.activeTutorialState
    if L1_2 == "showcaseBank" then
      L1_2 = L10_1
      L1_2 = L1_2.removePoint
      L1_2()
      L1_2 = L10_1
      L1_2 = L1_2.sparkle
      L2_2 = A0_2.view
      L3_2 = 2000
      L4_2 = A0_2.description
      L4_2 = L4_2.x
      L5_2 = A0_2.description
      L5_2 = L5_2.width
      L5_2 = L5_2 / 2
      L4_2 = L4_2 - L5_2
      L5_2 = A0_2.description
      L5_2 = L5_2.y
      L6_2 = A0_2.description
      L6_2 = L6_2.height
      L6_2 = L6_2 / 2
      L5_2 = L5_2 - L6_2
      L6_2 = A0_2.description
      L6_2 = L6_2.x
      L7_2 = A0_2.description
      L7_2 = L7_2.width
      L7_2 = L7_2 / 2
      L6_2 = L6_2 + L7_2
      L7_2 = A0_2.description
      L7_2 = L7_2.y
      L8_2 = A0_2.description
      L8_2 = L8_2.height
      L8_2 = L8_2 / 2
      L7_2 = L7_2 + L8_2
      L8_2 = 50
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
      L1_2 = mainPlayer
      L2_2 = L1_2
      L1_2 = L1_2.setSettingForKey
      L3_2 = "activeTutorialState"
      L4_2 = "finished"
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = timer
      L1_2 = L1_2.performWithDelay
      L2_2 = 2000
      
      function L3_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = L9_1
        L1_3 = L0_3
        L0_3 = L0_3.new
        L2_3 = {}
        L3_3 = L1_1
        L3_3 = L3_3.Gold
        L2_3.title = L3_3
        L2_3.touchEnabled = false
        L3_3 = L1_1
        L3_3 = L3_3["Finished mine tutorial text"]
        L2_3.text = L3_3
        L2_3.position = "left"
        L2_3.bgAlpha = 0.5
        L3_3 = L0_1
        L3_3 = L3_3.Path_MentorImage
        L2_3.imageName = L3_3
        L3_3 = L1_1
        L3_3 = L3_3.Done
        L2_3.button1Text = L3_3
        
        function L3_3()
          local L0_4, L1_4
        end
        
        L2_3.button1Action = L3_3
        L0_3(L1_3, L2_3)
      end
      
      L4_2 = 1
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end

show = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2.bankGold_img
  if L3_2 ~= nil then
    L3_2 = A0_2.bankGold_img
    L4_2 = L3_2
    L3_2 = L3_2.removeSelf
    L3_2 = L3_2(L4_2)
    if L3_2 ~= nil then
      L3_2 = A0_2.bankGold_img
      L4_2 = L3_2
      L3_2 = L3_2.removeSelf
      L3_2(L4_2)
    end
  end
  L3_2 = A0_2.bankGold_text
  if L3_2 ~= nil then
    L3_2 = A0_2.bankGold_text
    L4_2 = L3_2
    L3_2 = L3_2.removeSelf
    L3_2 = L3_2(L4_2)
    if L3_2 ~= nil then
      L3_2 = A0_2.bankGold_text
      L4_2 = L3_2
      L3_2 = L3_2.removeSelf
      L3_2(L4_2)
    end
  end
  L3_2 = mainPlayer
  L3_2 = L3_2.bankBuilding
  L4_2 = L3_2
  L3_2 = L3_2.benefitFromLevel
  L3_2 = L3_2(L4_2)
  L12_1 = L3_2
  L3_2 = mainPlayer
  L3_2 = L3_2.bankBuilding
  L3_2 = L3_2.gold
  L4_2 = L12_1
  L3_2 = L3_2 / L4_2
  if L3_2 == 0 then
    L2_2 = "bank_customer_state1"
    L1_2 = 1
  elseif 0 < L3_2 and L3_2 < 0.3333333333333333 then
    L2_2 = "bank_customer_state2"
    L1_2 = 2
  elseif 0.3333333333333333 < L3_2 and L3_2 < 0.6666666666666666 then
    L2_2 = "bank_customer_state3"
    L1_2 = 3
  else
    L2_2 = "bank_customer_state4"
    L1_2 = 4
  end
  L4_2 = display
  L4_2 = L4_2.newImageRect
  L5_2 = L0_1
  L5_2 = L5_2.Path_Assets
  L6_2 = "Bank/Bank Account"
  L7_2 = L1_2
  L8_2 = ".png"
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
  L6_2 = 140
  L7_2 = 93
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2.bankGold_img = L4_2
  L4_2 = A0_2.bankGold_img
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 / 4
  L5_2 = L5_2 + 10
  L4_2.x = L5_2
  L4_2 = A0_2.bankGold_img
  L5_2 = A0_2.separate
  L5_2 = L5_2.y
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 / 2
  L6_2 = L6_2 - 30
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L5_2 = L5_2 - 10
  L4_2.y = L5_2
  L4_2 = A0_2.view
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = A0_2.bankGold_img
  L4_2(L5_2, L6_2)
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = A0_2.view
  L6_2 = L1_1
  L6_2 = L6_2[L2_2]
  L7_2 = 0
  L8_2 = 0
  L9_2 = L0_1
  L9_2 = L9_2.fontForTitle
  L9_2 = L9_2()
  L10_2 = 15
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  A0_2.bankGold_text = L4_2
  L4_2 = A0_2.bankGold_text
  L5_2 = L4_2
  L4_2 = L4_2.setFillColor
  L6_2 = L0_1
  L6_2 = L6_2.darkBlueColor
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = A0_2.bankGold_text
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 / 4
  L5_2 = L5_2 + 10
  L4_2.x = L5_2
  L4_2 = A0_2.bankGold_text
  L5_2 = A0_2.bankGold_img
  L5_2 = L5_2.y
  L6_2 = A0_2.bankGold_img
  L6_2 = L6_2.height
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L5_2 = L5_2 + 10
  L4_2.y = L5_2
  L4_2 = display
  L4_2 = L4_2.newRect
  L5_2 = A0_2.view
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L6_2 = L6_2 / 2
  L7_2 = A0_2.separate
  L7_2 = L7_2.y
  L7_2 = L7_2 * 1.5
  L8_2 = 1.5
  L9_2 = display
  L9_2 = L9_2.contentHeight
  L9_2 = L9_2 / 2
  L9_2 = L9_2 - 30
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2.separateY = L4_2
  L4_2 = A0_2.separateY
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 / 2
  L4_2.x = L5_2
  L4_2 = A0_2.separateY
  L5_2 = L4_2
  L4_2 = L4_2.setFillColor
  L6_2 = L0_1
  L6_2 = L6_2.blueColor
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end

setBankGoldImage = L13_1
