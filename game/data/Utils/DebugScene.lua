local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "widget"
L1_1 = L1_1(L2_1)
L2_1 = L0_1.newScene
L2_1 = L2_1()
L3_1 = require
L4_1 = "Utils.Log"
L3_1(L4_1)

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2.view
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = A0_2.view
  L5_2 = 0
  L6_2 = 0
  L7_2 = display
  L7_2 = L7_2.contentWidth
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = 1
  L7_2 = 1
  L8_2 = 1
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L4_2 = native
  L4_2 = L4_2.newTextBox
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L5_2 = L5_2 / 2
  L6_2 = display
  L6_2 = L6_2.contentHeight
  L6_2 = L6_2 - 30
  L6_2 = L6_2 / 2
  L6_2 = 30 + L6_2
  L7_2 = display
  L7_2 = L7_2.contentWidth
  L8_2 = display
  L8_2 = L8_2.contentHeight
  L8_2 = L8_2 - 30
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  A0_2.textBox = L4_2
  L4_2 = A0_2.textBox
  L4_2.text = ""
  L4_2 = A0_2.view
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = A0_2.textBox
  L4_2(L5_2, L6_2)
  L4_2 = A0_2.textBox
  L4_2.isVisible = false
  L4_2 = L1_1
  L4_2 = L4_2.newButton
  L5_2 = {}
  L5_2.label = "X"
  L5_2.fontSize = 11
  L5_2.emboss = false
  L5_2.width = 50
  L5_2.height = 30
  
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L0_3 = L0_3.gotoScene
    L1_3 = L0_1
    L1_3 = L1_3.getSceneName
    L2_3 = "previous"
    L1_3, L2_3 = L1_3(L2_3)
    L0_3(L1_3, L2_3)
  end
  
  L5_2.onRelease = L6_2
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2.view
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = display
  L5_2 = L5_2.contentCenterX
  L4_2.x = L5_2
  L4_2.y = 15
  L5_2 = L1_1
  L5_2 = L5_2.newButton
  L6_2 = {}
  L6_2.label = "Clear"
  L6_2.fontSize = 11
  L6_2.emboss = false
  L6_2.width = 50
  L6_2.height = 30
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = clearLog
    L0_3()
    L0_3 = A0_2
    L0_3 = L0_3.textBox
    L1_3 = readLog
    L1_3 = L1_3()
    L0_3.text = L1_3
  end
  
  L6_2.onRelease = L7_2
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2.view
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = display
  L6_2 = L6_2.contentCenterX
  L6_2 = L6_2 + 100
  L5_2.x = L6_2
  L5_2.y = 15
  L6_2 = display
  L6_2 = L6_2.newText
  L7_2 = A0_2.view
  L8_2 = "0 KB"
  L9_2 = 0
  L10_2 = 0
  L11_2 = "Arial"
  L12_2 = 13
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  A0_2.memLabel = L6_2
  L6_2 = A0_2.memLabel
  L7_2 = L6_2
  L6_2 = L6_2.setFillColor
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2.memLabel
  L7_2 = display
  L7_2 = L7_2.contentCenterX
  L7_2 = L7_2 / 2
  L6_2.x = L7_2
  L6_2 = A0_2.memLabel
  L6_2.y = 15
end

L2_1.create = L3_1

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = A0_2.textBox
    L5_2 = readLog
    L5_2 = L5_2()
    L4_2.text = L5_2
    L4_2 = string
    L4_2 = L4_2.format
    L5_2 = "memUsage = %.3f KB"
    L6_2 = collectgarbage
    L7_2 = "count"
    L6_2, L7_2 = L6_2(L7_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = A0_2.memLabel
    L5_2.text = L4_2
    L5_2 = A0_2.textBox
    L5_2.isVisible = true
  end
end

L2_1.show = L3_1

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = A0_2.textBox
    L4_2.isVisible = false
  end
end

L2_1.hide = L3_1

function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.view
end

L2_1.destroy = L3_1
L4_1 = L2_1
L3_1 = L2_1.addEventListener
L5_1 = "create"
L6_1 = L2_1
L3_1(L4_1, L5_1, L6_1)
L4_1 = L2_1
L3_1 = L2_1.addEventListener
L5_1 = "show"
L6_1 = L2_1
L3_1(L4_1, L5_1, L6_1)
L4_1 = L2_1
L3_1 = L2_1.addEventListener
L5_1 = "hide"
L6_1 = L2_1
L3_1(L4_1, L5_1, L6_1)
L4_1 = L2_1
L3_1 = L2_1.addEventListener
L5_1 = "destroy"
L6_1 = L2_1
L3_1(L4_1, L5_1, L6_1)
return L2_1
