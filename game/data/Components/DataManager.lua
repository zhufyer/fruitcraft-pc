local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "json"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Data.ModuleList"
L1_1 = L1_1(L2_1)
L2_1 = nil
L3_1 = nil
L4_1 = nil
L5_1 = 1
L6_1 = nil

function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = ipairs
  L1_2 = L1_1
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = system
    L5_2 = L5_2.pathForFile
    L6_2 = L4_2.name
    L7_2 = ".data"
    L6_2 = L6_2 .. L7_2
    L7_2 = system
    L7_2 = L7_2.DocumentsDirectory
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = io
    L6_2 = L6_2.open
    L7_2 = L5_2
    L8_2 = "r+"
    L6_2 = L6_2(L7_2, L8_2)
    file = L6_2
    L6_2 = file
    if L6_2 ~= nil then
      L6_2 = file
      L7_2 = L6_2
      L6_2 = L6_2.read
      L8_2 = "*a"
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = io
      L7_2 = L7_2.close
      L8_2 = file
      L7_2(L8_2)
      L7_2 = L1_1
      L8_2 = L0_1
      L8_2 = L8_2.decode
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      L7_2[L3_2] = L8_2
    end
  end
end

initData = L7_1
L7_1 = initData
L7_1()

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ipairs
  L2_2 = L1_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.name
    if L6_2 == A0_2 then
      L6_2 = L5_2.data
      return L6_2
    end
  end
  L1_2 = nil
  return L1_2
end

dataWithName = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = ipairs
  L2_2 = L1_1
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.name
    if L6_2 == A0_2 then
      L6_2 = L5_2.version
      return L6_2
    end
  end
  L1_2 = -1
  return L1_2
end

moduleVersion = L7_1

function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A0_2 == nil then
    L3_2 = errorLog
    L4_2 = "module versions not provided"
    L3_2(L4_2)
    L3_2 = A1_2
    L3_2()
    return
  end
  L3_2 = log3
  L4_2 = "printing latest versions:"
  L3_2(L4_2)
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = log3
    L9_2 = L6_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L2_1 = A0_2
  L4_1 = A2_2
  L3_1 = A1_2
  L3_2 = L2_1
  if L3_2 == nil then
    L3_2 = errorLog
    L4_2 = "module versions not provided"
    L3_2(L4_2)
    L3_2 = A1_2
    L3_2()
    return
  end
  L3_2 = 1
  L5_1 = L3_2
  L3_2 = nil
  L6_1 = L3_2
  L3_2 = updateTopModule
  L3_2()
end

checkForUpdates = L7_1

function L7_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L5_1
  L1_2 = L1_1
  L1_2 = #L1_2
  if L0_2 > L1_2 then
    L0_2 = L3_1
    L0_2()
    L0_2 = log3
    L1_2 = "end of update top recursion"
    L0_2(L1_2)
    return
  end
  L0_2 = L1_1
  L1_2 = L5_1
  L0_2 = L0_2[L1_2]
  L6_1 = L0_2
  L0_2 = moduleHasUpdate
  L1_2 = L6_1
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = log3
    L1_2 = L6_1
    L1_2 = L1_2.name
    L2_2 = " has an update, calling API"
    L1_2 = L1_2 .. L2_2
    L0_2(L1_2)
    L0_2 = network
    L0_2 = L0_2.plainNetworkRequest
    L1_2 = Constants
    L1_2 = L1_2.API_Path
    L2_2 = L6_1
    L2_2 = L2_2.api
    L1_2 = L1_2 .. L2_2
    L2_2 = "GET"
    L3_2 = networkListener
    L0_2(L1_2, L2_2, L3_2)
    return
  else
    L0_2 = log3
    L1_2 = L6_1
    L1_2 = L1_2.name
    L2_2 = " has no update, skipping"
    L1_2 = L1_2 .. L2_2
    L0_2(L1_2)
    L0_2 = L5_1
    L0_2 = L0_2 + 1
    L5_1 = L0_2
    L0_2 = updateTopModule
    L0_2()
  end
end

updateTopModule = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.isError
  if L1_2 then
    L1_2 = errorCaller
    L1_2()
  else
    L1_2 = L0_1
    L1_2 = L1_2.decode
    L2_2 = A0_2.response
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = L6_1
      L2_2.data = L1_2
      L2_2 = L6_1
      L3_2 = L2_1
      L4_2 = L6_1
      L4_2 = L4_2.name
      L3_2 = L3_2[L4_2]
      L2_2.version = L3_2
      L2_2 = system
      L2_2 = L2_2.pathForFile
      L3_2 = L6_1
      L3_2 = L3_2.name
      L4_2 = ".data"
      L3_2 = L3_2 .. L4_2
      L4_2 = system
      L4_2 = L4_2.DocumentsDirectory
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = io
      L3_2 = L3_2.open
      L4_2 = L2_2
      L5_2 = "w"
      L3_2 = L3_2(L4_2, L5_2)
      L5_2 = L3_2
      L4_2 = L3_2.write
      L6_2 = L0_1
      L6_2 = L6_2.encode
      L7_2 = L6_1
      L6_2, L7_2 = L6_2(L7_2)
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = io
      L4_2 = L4_2.close
      L5_2 = L3_2
      L4_2(L5_2)
      L3_2 = nil
      L2_2 = nil
      L4_2 = L5_1
      L4_2 = L4_2 + 1
      L5_1 = L4_2
      L4_2 = updateTopModule
      L4_2()
    else
      L2_2 = errorCaller
      L2_2()
    end
  end
end

networkListener = L7_1

function L7_1()
  local L0_2, L1_2, L2_2
  L0_2 = errorLog
  L1_2 = "Network error! Failed to Update "
  L2_2 = L6_1
  L2_2 = L2_2.name
  L1_2 = L1_2 .. L2_2
  L0_2(L1_2)
  L0_2 = L4_1
  if L0_2 ~= nil then
    L0_2 = L4_1
    L1_2 = "Network error"
    L0_2(L1_2)
  end
end

errorCaller = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 then
    L1_2 = A0_2.version
    if L1_2 then
      L1_2 = A0_2.name
      if L1_2 then
        L1_2 = A0_2.api
        if L1_2 then
          L1_2 = L2_1
          L2_2 = A0_2.name
          L1_2 = L1_2[L2_2]
          if L1_2 then
            L1_2 = A0_2.version
            L2_2 = L2_1
            L3_2 = A0_2.name
            L2_2 = L2_2[L3_2]
            if L1_2 < L2_2 then
              L1_2 = true
              return L1_2
            end
          end
      end
    end
  end
  else
    L1_2 = errorLog
    L2_2 = "The given module is not valid:"
    L3_2 = A0_2.name
    L1_2(L2_2, L3_2)
  end
  L1_2 = false
  return L1_2
end

moduleHasUpdate = L7_1
