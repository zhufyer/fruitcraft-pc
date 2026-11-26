local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = _buildType
if L0_1 == "debug" then
  L0_1 = true
  _debugMode = L0_1
  L0_1 = 4
  _verbosity = L0_1
else
  L0_1 = _buildType
  if L0_1 == "release" then
    L0_1 = false
    _debugMode = L0_1
    L0_1 = 0
    _verbosity = L0_1
  end
end
L0_1 = require
L1_1 = "Utils.Analytics"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "composer"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Utils.ansicolors"
L2_1 = L2_1(L3_1)
L3_1 = _debugMode
if L3_1 == true then
  L3_1 = require
  L4_1 = "debug"
  L3_1(L4_1)
end
L3_1 = ""
L4_1 = ""

function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2
  L2_2 = "\n"
  L3_2 = L3_1
  L1_2 = L1_2 .. L2_2 .. L3_2
  L3_1 = L1_2
  L1_2 = L4_1
  L2_2 = "\n"
  L3_2 = A0_2
  L1_2 = L1_2 .. L2_2 .. L3_2
  L4_1 = L1_2
end

L6_1 = nil
_logsTimer = L6_1

function L6_1(A0_2)
  local L1_2
end

startSendingLogsToServer = L6_1

function L6_1()
  local L0_2, L1_2
  L0_2 = _buildType
  if L0_2 == "release" then
    L0_2 = false
    _debugMode = L0_2
    L0_2 = 0
    _verbosity = L0_2
  end
  L0_2 = _logsTimer
  if L0_2 ~= nil then
    L0_2 = timer
    L0_2 = L0_2.cancel
    L1_2 = _logsTimer
    L0_2(L1_2)
  end
  L0_2 = nil
  _logsTimer = L0_2
end

stopSendingLogsToServer = L6_1

function L6_1()
  local L0_2, L1_2
  L0_2 = L3_1
  return L0_2
end

readLog = L6_1

function L6_1()
  local L0_2, L1_2
  L0_2 = ""
  L3_1 = L0_2
end

clearLog = L6_1

function L6_1(A0_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = _verbosity
  if A0_2 <= L2_2 then
    L2_2 = _debugMode
    if L2_2 then
      L2_2 = debug
      L2_2 = L2_2.getinfo
      L3_2 = 3
      L4_2 = "Sln"
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = "?"
      L4_2 = L2_2.name
      if L4_2 then
        L3_2 = L2_2.name
      end
      L4_2 = string
      L4_2 = L4_2.format
      L5_2 = "[%s][%s]:%d-->"
      L6_2 = L2_2.short_src
      L7_2 = L3_2
      L8_2 = L2_2.currentline
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = (...)
      if L5_2 then
        L6_2 = ipairs
        L7_2 = {}
        L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = ...
        L7_2[1] = L8_2
        L7_2[2] = L9_2
        L7_2[3] = L10_2
        L7_2[4] = L11_2
        L7_2[5] = L12_2
        L7_2[6] = L13_2
        L7_2[7] = L14_2
        L6_2, L7_2, L8_2 = L6_2(L7_2)
        for L9_2, L10_2 in L6_2, L7_2, L8_2 do
          L11_2 = type
          L12_2 = L10_2
          L11_2 = L11_2(L12_2)
          if L11_2 ~= "string" then
            L11_2 = type
            L12_2 = L10_2
            L11_2 = L11_2(L12_2)
            if L11_2 ~= "number" then
              goto lbl_48
            end
          end
          L11_2 = L4_2
          L12_2 = " "
          L13_2 = L10_2
          L4_2 = L11_2 .. L12_2 .. L13_2
          goto lbl_69
          ::lbl_48::
          L11_2 = type
          L12_2 = L10_2
          L11_2 = L11_2(L12_2)
          if L11_2 == "boolean" then
            if L10_2 then
              L11_2 = L4_2
              L12_2 = " true"
              L4_2 = L11_2 .. L12_2
            else
              L11_2 = L4_2
              L12_2 = " false"
              L4_2 = L11_2 .. L12_2
            end
          else
            L11_2 = L4_2
            L12_2 = " "
            L13_2 = type
            L14_2 = L10_2
            L13_2 = L13_2(L14_2)
            L4_2 = L11_2 .. L12_2 .. L13_2
          end
          ::lbl_69::
        end
      end
      L6_2 = ""
      L7_2 = system
      L7_2 = L7_2.getInfo
      L8_2 = "platformName"
      L7_2 = L7_2(L8_2)
      if L7_2 == "Mac OS X" then
        L6_2 = ""
      else
        L7_2 = system
        L7_2 = L7_2.getInfo
        L8_2 = "platformName"
        L7_2 = L7_2(L8_2)
        if L7_2 == "Win" then
          L7_2 = os
          L7_2 = L7_2.date
          L7_2 = L7_2()
          L6_2 = L7_2
        else
          L7_2 = os
          L7_2 = L7_2.date
          L7_2 = L7_2()
          L6_2 = L7_2
        end
      end
      if A0_2 == 0.5 then
        L7_2 = system
        L7_2 = L7_2.getInfo
        L8_2 = "platformName"
        L7_2 = L7_2(L8_2)
        if L7_2 == "Win" then
          L7_2 = print
          L8_2 = "\027[0m\027[31m"
          L9_2 = L6_2
          L10_2 = " error"
          L8_2 = L8_2 .. L9_2 .. L10_2
          L9_2 = "\027[0m\027[31m"
          L10_2 = L4_2
          L9_2 = L9_2 .. L10_2
          L10_2 = "\027[0m\027"
          L7_2(L8_2, L9_2, L10_2)
        else
          L7_2 = print
          L8_2 = L6_2
          L9_2 = "error"
          L8_2 = L8_2 .. L9_2
          L9_2 = L2_1
          L10_2 = "%{red}"
          L11_2 = L4_2
          L10_2 = L10_2 .. L11_2
          L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2)
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        end
      elseif A0_2 == 3.5 then
        L7_2 = system
        L7_2 = L7_2.getInfo
        L8_2 = "platformName"
        L7_2 = L7_2(L8_2)
        if L7_2 == "Win" then
          L7_2 = print
          L8_2 = "\027[0m\027[33m"
          L9_2 = L6_2
          L10_2 = " warning"
          L8_2 = L8_2 .. L9_2 .. L10_2
          L9_2 = "\027[0m\027[33m"
          L10_2 = L4_2
          L9_2 = L9_2 .. L10_2
          L10_2 = "\027[0m\027"
          L7_2(L8_2, L9_2, L10_2)
        else
          L7_2 = print
          L8_2 = L6_2
          L9_2 = "warning"
          L8_2 = L8_2 .. L9_2
          L9_2 = L2_1
          L10_2 = "%{yellow}"
          L11_2 = L4_2
          L10_2 = L10_2 .. L11_2
          L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2)
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        end
      else
        L7_2 = print
        L8_2 = L6_2
        L9_2 = L4_2
        L8_2 = L8_2 .. L9_2
        L7_2(L8_2)
      end
      L7_2 = L5_1
      L8_2 = L6_2
      L9_2 = L4_2
      L8_2 = L8_2 .. L9_2
      L7_2(L8_2)
    end
  end
end

function L7_1(...)
  local L1_2, L2_2, L3_2
  L1_2 = _debugMode
  if L1_2 then
    L1_2 = L6_1
    L2_2 = 0
    L3_2 = ...
    L1_2(L2_2, L3_2)
  else
    L1_2 = print
    L2_2 = os
    L2_2 = L2_2.date
    L2_2 = L2_2()
    L3_2 = ...
    L1_2(L2_2, L3_2)
  end
end

log = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 ~= "string" then
    L1_2 = type
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 ~= "number" then
      goto lbl_23
    end
  end
  L1_2 = print
  L2_2 = os
  L2_2 = L2_2.date
  L2_2 = L2_2()
  L3_2 = "\027[0m\027[31m"
  L4_2 = "error"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L3_2 = "\027[0m\027[31m"
  L4_2 = A0_2
  L3_2 = L3_2 .. L4_2
  L4_2 = "\027[0m\027"
  L1_2(L2_2, L3_2, L4_2)
  ::lbl_23::
end

function L8_1(...)
  local L1_2, L2_2, L3_2
  L1_2 = L6_1
  L2_2 = 1
  L3_2 = ...
  L1_2(L2_2, L3_2)
end

log1 = L8_1

function L8_1(...)
  local L1_2, L2_2, L3_2
  L1_2 = L6_1
  L2_2 = 2
  L3_2 = ...
  L1_2(L2_2, L3_2)
end

log2 = L8_1

function L8_1(...)
  local L1_2, L2_2, L3_2
  L1_2 = L6_1
  L2_2 = 3
  L3_2 = ...
  L1_2(L2_2, L3_2)
end

log3 = L8_1

function L8_1(...)
  local L1_2, L2_2, L3_2
  L1_2 = L6_1
  L2_2 = 3
  L3_2 = ...
  L1_2(L2_2, L3_2)
end

log4 = L8_1

function L8_1(...)
  local L1_2, L2_2, L3_2
  L1_2 = L6_1
  L2_2 = 0.5
  L3_2 = ...
  L1_2(L2_2, L3_2)
end

errorLog = L8_1

function L8_1(...)
  local L1_2, L2_2, L3_2
  L1_2 = L6_1
  L2_2 = 3.5
  L3_2 = ...
  L1_2(L2_2, L3_2)
end

warningLog = L8_1

function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L8_2 = type
  L9_2 = A1_2
  L8_2 = L8_2(L9_2)
  if L8_2 ~= "string" then
    L8_2 = type
    L9_2 = A1_2
    L8_2 = L8_2(L9_2)
    if L8_2 ~= "number" then
      goto lbl_28
    end
  end
  L8_2 = type
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  if L8_2 ~= "string" then
    L8_2 = type
    L9_2 = A0_2
    L8_2 = L8_2(L9_2)
    if L8_2 ~= "number" then
      goto lbl_28
    end
  end
  L8_2 = L6_1
  L9_2 = 2
  L10_2 = A0_2
  L11_2 = " :"
  L12_2 = A1_2
  L10_2 = L10_2 .. L11_2 .. L12_2
  L8_2(L9_2, L10_2)
  ::lbl_28::
  L8_2 = {}
  L8_2.title = A0_2
  L8_2.text = A1_2
  L8_2.buttonText = A2_2
  L8_2.action = A3_2
  L8_2.buttonText2 = A4_2
  L8_2.action2 = A5_2
  L8_2.isTutorial = A6_2
  if A7_2 then
    L9_2 = pairs
    L10_2 = A7_2
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L8_2[L12_2] = L13_2
    end
  end
  L9_2 = type
  L10_2 = A0_2
  L9_2 = L9_2(L10_2)
  if L9_2 == "string" then
    L9_2 = type
    L10_2 = A1_2
    L9_2 = L9_2(L10_2)
    if L9_2 == "string" then
      L9_2 = L1_1
      L9_2 = L9_2.showOverlay
      L10_2 = "Scenes.AlertOverlay"
      L11_2 = {}
      L11_2.params = L8_2
      L9_2(L10_2, L11_2)
  end
  else
    L9_2 = L6_1
    L10_2 = 0
    L11_2 = "Title or Text are not strings"
    L12_2 = A0_2
    L13_2 = A1_2
    L9_2(L10_2, L11_2, L12_2, L13_2)
    L9_2 = L1_1
    L9_2 = L9_2.showOverlay
    L10_2 = "Scenes.AlertOverlay"
    L11_2 = {}
    L12_2 = {}
    L12_2.title = "Error"
    L12_2.text = "showSimpleDialogError"
    L11_2.params = L12_2
    L9_2(L10_2, L11_2)
  end
end

showSimpleDialog = L8_1

function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = _debugMode
  if L3_2 == true then
    L3_2 = nil
    L4_2 = type
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    if L4_2 ~= "string" then
      L4_2 = type
      L5_2 = A1_2
      L4_2 = L4_2(L5_2)
      if L4_2 ~= "number" then
        goto lbl_38
      end
    end
    L4_2 = type
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if L4_2 ~= "string" then
      L4_2 = type
      L5_2 = A2_2
      L4_2 = L4_2(L5_2)
      if L4_2 ~= "number" then
        goto lbl_33
      end
    end
    L4_2 = assert
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = " , "
    L8_2 = A2_2
    L6_2 = L6_2 .. L7_2 .. L8_2
    L4_2(L5_2, L6_2)
    goto lbl_59
    ::lbl_33::
    L4_2 = assert
    L5_2 = A0_2
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
    goto lbl_59
    ::lbl_38::
    L4_2 = assert
    L5_2 = A0_2
    L6_2 = "Message not defined"
    L4_2(L5_2, L6_2)
  elseif A0_2 == nil or A0_2 == false then
    L3_2 = L7_1
    L4_2 = A1_2
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
    L3_2 = L0_1
    L3_2 = L3_2.logEvent
    L4_2 = "Fail "
    L5_2 = A2_2
    L4_2 = L4_2 .. L5_2
    L5_2 = {}
    L5_2.message = A1_2
    L3_2(L4_2, L5_2)
  end
  ::lbl_59::
end

checkAssert = L8_1

function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  if A3_2 ~= nil then
    if A0_2 == nil then
      L5_2 = type
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 ~= "string" then
        L5_2 = type
        L6_2 = L4_2
        L5_2 = L5_2(L6_2)
      end
      if L5_2 == "number" then
        L5_2 = "Nil value: "
        L6_2 = L4_2
        L4_2 = L5_2 .. L6_2
      end
    else
      L5_2 = type
      L6_2 = A0_2
      L5_2 = L5_2(L6_2)
      if L5_2 ~= A3_2 then
        L5_2 = type
        L6_2 = L4_2
        L5_2 = L5_2(L6_2)
        if L5_2 ~= "string" then
          L5_2 = type
          L6_2 = L4_2
          L5_2 = L5_2(L6_2)
          if L5_2 ~= "number" then
            goto lbl_38
          end
        end
        L5_2 = "uncorrected type: "
        L6_2 = L4_2
        L4_2 = L5_2 .. L6_2
      end
    end
    ::lbl_38::
    L5_2 = checkAssert
    L6_2 = A0_2 ~= nil
    L7_2 = L4_2
    L8_2 = A2_2
    L5_2(L6_2, L7_2, L8_2)
  else
    if A0_2 == nil then
      L5_2 = type
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 ~= "string" then
        L5_2 = type
        L6_2 = L4_2
        L5_2 = L5_2(L6_2)
        if L5_2 ~= "number" then
          goto lbl_67
        end
      end
      L5_2 = "Nil value: "
      L6_2 = L4_2
      L4_2 = L5_2 .. L6_2
    end
    ::lbl_67::
    L5_2 = checkAssert
    L6_2 = A0_2 ~= nil
    L7_2 = L4_2
    L8_2 = A2_2
    L5_2(L6_2, L7_2, L8_2)
  end
end

checkValidityAssert = L8_1

function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = pairs
  L5_2 = A3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if L8_2 ~= "" then
      L9_2 = checkValidityAssert
      L10_2 = A0_2[L7_2]
      L11_2 = A1_2
      L12_2 = " - "
      L13_2 = L7_2
      L11_2 = L11_2 .. L12_2 .. L13_2
      L12_2 = A2_2
      L13_2 = L8_2
      L9_2(L10_2, L11_2, L12_2, L13_2)
    else
      L9_2 = checkValidityAssert
      L10_2 = A0_2[L7_2]
      L11_2 = A1_2
      L12_2 = " - "
      L13_2 = L7_2
      L11_2 = L11_2 .. L12_2 .. L13_2
      L12_2 = A2_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
end

multiCheckValidityAssert = L8_1

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 ~= "number" then
    L1_2 = type
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 ~= "string" then
      goto lbl_18
    end
  end
  L1_2 = print
  L2_2 = L2_1
  L3_2 = "%{blue}"
  L4_2 = A0_2
  L3_2 = L3_2 .. L4_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  L1_2(L2_2, L3_2, L4_2)
  ::lbl_18::
end

blueLog = L8_1

function L8_1(A0_2)
  local L1_2
end

sendLogToServer = L8_1
