local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Language"
L0_1 = L0_1(L1_1)
L1_1 = 3

function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2
  if not A1_2 then
    L6_2 = {}
    A1_2 = L6_2
  end
  L6_2 = setmetatable
  L7_2 = A1_2
  L8_2 = A0_2
  L6_2(L7_2, L8_2)
  A0_2.__index = A0_2
  L6_2 = display
  L6_2 = L6_2.newGroup
  L6_2 = L6_2()
  A1_2.group = L6_2
  A1_2.w = A2_2
  A1_2.h = A3_2
  A1_2.text = A4_2
  L6_2 = display
  L6_2 = L6_2.newImageRect
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "LiveBattle/Round Time.png"
  L7_2 = L7_2 .. L8_2
  L8_2 = A2_2
  L9_2 = A3_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  A1_2.box = L6_2
  L6_2 = {}
  L6_2.text = A4_2
  L7_2 = 14 * A2_2
  L7_2 = L7_2 / 110
  L6_2.x = L7_2
  L7_2 = 7 * A2_2
  L7_2 = L7_2 / 110
  L8_2 = L1_1
  L7_2 = L7_2 + L8_2
  L6_2.y = L7_2
  L6_2.width = A2_2
  L6_2.height = A3_2
  L7_2 = Constants
  L7_2 = L7_2.fontForSubtitle
  L7_2 = L7_2()
  L6_2.font = L7_2
  L7_2 = A3_2 * 14
  L7_2 = L7_2 / 40
  L6_2.fontSize = L7_2
  L6_2.align = "center"
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  A1_2.textField = L7_2
  L7_2 = {}
  L7_2.text = 1
  L8_2 = -35.6 * A2_2
  L8_2 = L8_2 / 110
  L7_2.x = L8_2
  L8_2 = 4 * A2_2
  L8_2 = L8_2 / 110
  L9_2 = L1_1
  L8_2 = L8_2 + L9_2
  L7_2.y = L8_2
  L7_2.width = A2_2
  L7_2.height = A3_2
  L8_2 = Constants
  L8_2 = L8_2.fontForTitle
  L8_2 = L8_2()
  L7_2.font = L8_2
  L8_2 = A3_2 * 14
  L8_2 = L8_2 / 30
  L7_2.fontSize = L8_2
  L7_2.align = "center"
  L6_2 = L7_2
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  A1_2.roundsTextField = L7_2
  L7_2 = A1_2.group
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = A1_2.box
  L7_2(L8_2, L9_2)
  L7_2 = A1_2.group
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = A1_2.textField
  L7_2(L8_2, L9_2)
  L7_2 = A1_2.group
  L8_2 = L7_2
  L7_2 = L7_2.insert
  L9_2 = A1_2.roundsTextField
  L7_2(L8_2, L9_2)
  L7_2 = A1_2.textField
  L8_2 = L7_2
  L7_2 = L7_2.toFront
  L7_2(L8_2)
  L7_2 = A1_2.group
  L7_2.x = 0
  L7_2 = A1_2.group
  L7_2.y = 0
  L7_2 = setTimer
  A1_2.setTimer = L7_2
  L7_2 = startTimer
  A1_2.startTime = L7_2
  L7_2 = stopTimer
  A1_2.stopTimer = L7_2
  L7_2 = setText
  A1_2.setText = L7_2
  L7_2 = onTimerFinished
  A1_2.onTimerFinished = L7_2
  L7_2 = onLastTimerFinished
  A1_2.onLastTimerFinished = L7_2
  A1_2.timeToWait = 0
  A1_2.nextRoundFunction = A5_2
  A1_2.timerId = 0
  return A1_2
end

new = L2_1

function L2_1(A0_2, A1_2)
  A0_2.timeToWait = A1_2
end

setTimer = L2_1

function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.roundsTextField
  L2_2.text = A1_2
end

setRoundText = L2_1

function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.roundsTextField
  L2_2.text = A1_2
end

setWinLoseText = L2_1

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = A0_2
    L1_3 = L1_3.timeToWait
    L1_3 = L1_3 - 1
    L0_3.timeToWait = L1_3
    L0_3 = A0_2
    L0_3 = L0_3.textField
    L1_3 = A0_2
    L1_3 = L1_3.timeToWait
    L0_3.text = L1_3
    L0_3 = A0_2
    L0_3 = L0_3.timeToWait
    if L0_3 then
    end
    L0_3 = A0_2
    L0_3 = L0_3.timeToWait
    if L0_3 == 0 then
      L0_3 = A0_2
      L0_3 = L0_3.textField
      L1_3 = A1_2
      L0_3.text = L1_3
      L0_3 = A0_2
      L0_3 = L0_3.nextRoundFunction
      L0_3()
    end
  end
  
  L3_2 = timer
  L3_2 = L3_2.performWithDelay
  L4_2 = 1000
  L5_2 = L2_2
  L6_2 = A0_2.timeToWait
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2.timerId = L3_2
end

startTimer = L2_1

function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = timer
  L1_2 = L1_2.cancel
  L2_2 = A0_2.timerId
  L1_2(L2_2)
end

stopTimer = L2_1
