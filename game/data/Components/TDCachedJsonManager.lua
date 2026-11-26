local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "lfs"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "json"
L1_1 = L1_1(L2_1)

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = system
  L0_2 = L0_2.pathForFile
  L1_2 = ""
  L2_2 = system
  L2_2 = L2_2.DocumentsDirectory
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = L0_1
  L1_2 = L1_2.chdir
  L2_2 = L0_2
  L1_2, L2_2 = L1_2(L2_2)
  if L1_2 then
    L3_2 = goToDestinationDirectory
    L4_2 = Constants
    L4_2 = L4_2.Path_ImageCache
    L3_2(L4_2)
    L3_2 = goToDestinationDirectory
    L4_2 = "Assets-SD"
    L3_2(L4_2)
    L3_2 = goToDestinationDirectory
    L4_2 = "Heroes"
    L3_2(L4_2)
  else
    L3_2 = log
    L4_2 = "Cached image general setup error:"
    L5_2 = errorString
    L3_2(L4_2, L5_2)
  end
end

generalSetup = L2_1

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1
  L1_2 = L1_2.chdir
  L2_2 = A0_2
  L1_2, L2_2 = L1_2(L2_2)
  chdirError = L2_2
  success = L1_2
  L1_2 = success
  if not L1_2 then
    L1_2 = L0_1
    L1_2 = L1_2.mkdir
    L2_2 = A0_2
    L1_2, L2_2 = L1_2(L2_2)
    if L1_2 then
      L3_2 = L0_1
      L3_2 = L3_2.chdir
      L4_2 = A0_2
      L3_2, L4_2 = L3_2(L4_2)
      chdirError = L4_2
      sucess = L3_2
    else
      L3_2 = log
      L4_2 = "Cached image error:"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
end

goToDestinationDirectory = L2_1
L2_1 = generalSetup
L2_1()

function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = system
  L1_2 = L1_2.pathForFile
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = io
    L2_2 = L2_2.open
    L3_2 = L1_2
    L4_2 = "r"
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= nil then
      L3_2 = io
      L3_2 = L3_2.close
      L4_2 = L2_2
      L3_2(L4_2)
      L3_2 = true
      return L3_2
    else
      L3_2 = false
      return L3_2
    end
  end
end

function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A0_2.isError
  if L4_2 then
    L4_2 = log3
    L5_2 = "Error to download json file"
    L6_2 = A0_2.isError
    L4_2(L5_2, L6_2)
  else
    L4_2 = L1_1
    L4_2 = L4_2.decode
    L5_2 = A0_2.response
    L4_2 = L4_2(L5_2)
    if L4_2 ~= nil then
      L5_2 = system
      L5_2 = L5_2.pathForFile
      L6_2 = Constants
      L6_2 = L6_2.Path_ImageCache
      L7_2 = "/"
      L8_2 = A1_2
      L6_2 = L6_2 .. L7_2 .. L8_2
      L7_2 = system
      L7_2 = L7_2.DocumentsDirectory
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = io
      L6_2 = L6_2.open
      L7_2 = L5_2
      L8_2 = "w"
      L6_2 = L6_2(L7_2, L8_2)
      if not L6_2 then
        L7_2 = nil
        return L7_2
      end
      L7_2 = L1_1
      L7_2 = L7_2.encode
      L8_2 = L4_2
      L7_2 = L7_2(L8_2)
      L9_2 = L6_2
      L8_2 = L6_2.write
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
      L9_2 = L6_2
      L8_2 = L6_2.read
      L10_2 = "*a"
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L8_2 = io
        L8_2 = L8_2.close
        L9_2 = L6_2
        L8_2(L9_2)
        L6_2 = nil
        L5_2 = nil
        L8_2 = Runtime
        L9_2 = L8_2
        L8_2 = L8_2.dispatchEvent
        L10_2 = {}
        L11_2 = "jsonDownloaded"
        L12_2 = A3_2
        L11_2 = L11_2 .. L12_2
        L10_2.name = L11_2
        L10_2.target = A2_2
        L8_2(L9_2, L10_2)
      end
    end
  end
end

function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L6_2 = {}
  L7_2 = parentGroup
  L6_2._parent = L7_2
  L6_2.pathTothefile = A1_2
  L7_2 = width
  L6_2._width = L7_2
  L7_2 = height
  L6_2._height = L7_2
  L6_2._x = 0
  L6_2._y = 0
  L7_2 = callBack
  L6_2._callBack = L7_2
  L6_2._isRemoved = false
  if A3_2 then
    L7_2 = system
    L7_2 = L7_2.pathForFile
    L8_2 = ""
    L9_2 = system
    L9_2 = L9_2.DocumentsDirectory
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L0_1
    L8_2 = L8_2.chdir
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L9_2 = goToDestinationDirectory
      L10_2 = L7_2
      L11_2 = "/"
      L12_2 = Constants
      L12_2 = L12_2.Path_ImageCache
      L13_2 = "/"
      L14_2 = "Assets-SD"
      L15_2 = "/"
      L16_2 = "Heroes"
      L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
      L9_2(L10_2)
      L9_2 = goToDestinationDirectory
      L10_2 = A3_2
      L9_2(L10_2)
    end
  end
  L7_2 = L2_1
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  if L7_2 then
    if A2_2 then
      L6_2.baseDir = "ResourceDirectory"
    end
  else
    L8_2 = doesJsonFileExistOnDocument
    L9_2 = A1_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      if A2_2 then
        L6_2.baseDir = "DocumentsDirectory"
      end
    else
      if A2_2 then
        L6_2.baseDir = "Missing"
      end
      L8_2 = network
      L8_2 = L8_2.plainNetworkRequest
      L9_2 = Constants
      L9_2 = L9_2.API_Path
      L10_2 = Constants
      L10_2 = L10_2.API_ImageStorage
      L11_2 = A1_2
      L9_2 = L9_2 .. L10_2 .. L11_2
      L10_2 = "GET"
      
      function L11_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3
        L1_3 = L3_1
        L2_3 = A0_3
        L3_3 = A1_2
        L4_3 = A4_2
        L5_3 = A5_2
        L1_3(L2_3, L3_3, L4_3, L5_3)
      end
      
      L8_2(L9_2, L10_2, L11_2)
    end
  end
  return L6_2
end

new = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = system
  L1_2 = L1_2.pathForFile
  L2_2 = Constants
  L2_2 = L2_2.Path_ImageCache
  L3_2 = "/"
  L4_2 = A0_2
  L2_2 = L2_2 .. L3_2 .. L4_2
  L3_2 = system
  L3_2 = L3_2.DocumentsDirectory
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = io
    L2_2 = L2_2.open
    L3_2 = L1_2
    L4_2 = "r"
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L3_2 = nil
      return L3_2
    end
    L4_2 = L2_2
    L3_2 = L2_2.read
    L5_2 = "*a"
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = io
    L4_2 = L4_2.close
    L5_2 = L2_2
    L4_2(L5_2)
    if L3_2 ~= "" then
      L4_2 = true
      return L4_2
    else
      L4_2 = false
      return L4_2
    end
  end
  L2_2 = false
  return L2_2
end

doesJsonFileExistOnDocument = L4_1
