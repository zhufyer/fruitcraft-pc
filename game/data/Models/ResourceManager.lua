local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Constants"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "json"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "crypto"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Utils.Network"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "lfs"
L4_1 = L4_1(L5_1)
L5_1 = {}
serverMD5Hashes = L5_1
L5_1 = nil

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = A0_2
  L1_2 = A0_2.match
  L3_2 = "^(.*)/[^/]+$"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 or L1_2 == "" then
    L2_2 = true
    return L2_2
  end
  L2_2 = system
  L2_2 = L2_2.pathForFile
  L3_2 = ""
  L4_2 = system
  L4_2 = L4_2.DocumentsDirectory
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = log3
    L4_2 = "Unable to locate documents directory for caching files"
    L3_2(L4_2)
    L3_2 = false
    return L3_2
  end
  L3_2 = L4_1
  L3_2 = L3_2.chdir
  L4_2 = L2_2
  L3_2, L4_2 = L3_2(L4_2)
  if not L3_2 then
    L5_2 = log3
    L6_2 = "Unable to enter documents directory: "
    L7_2 = tostring
    L8_2 = L4_2
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 .. L7_2
    L5_2(L6_2)
    L5_2 = false
    return L5_2
  end
  L5_2 = string
  L5_2 = L5_2.gmatch
  L6_2 = L1_2
  L7_2 = "[^/]+"
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  for L8_2 in L5_2, L6_2, L7_2 do
    L9_2 = L4_1
    L9_2 = L9_2.chdir
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if not L9_2 then
      L10_2 = L4_1
      L10_2 = L10_2.mkdir
      L11_2 = L8_2
      L10_2, L11_2 = L10_2(L11_2)
      if not L10_2 then
        L12_2 = log3
        L13_2 = "Failed to create folder '"
        L14_2 = L8_2
        L15_2 = "' for path '"
        L16_2 = A0_2
        L17_2 = "': "
        L18_2 = tostring
        L19_2 = L11_2
        L18_2 = L18_2(L19_2)
        L13_2 = L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2
        L12_2(L13_2)
        L12_2 = L4_1
        L12_2 = L12_2.chdir
        L13_2 = L2_2
        L12_2(L13_2)
        L12_2 = false
        return L12_2
      end
      L12_2 = L4_1
      L12_2 = L12_2.chdir
      L13_2 = L8_2
      L12_2(L13_2)
    end
  end
  L5_2 = L4_1
  L5_2 = L5_2.chdir
  L6_2 = L2_2
  L5_2(L6_2)
  L5_2 = true
  return L5_2
end

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = log3
  L3_2 = "Start load Config.json"
  L2_2(L3_2)
  L5_1 = A0_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "Get Config.json"
    L4_3 = A1_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L2_3.files
      serverMD5Hashes = L3_3
      L3_3 = checkAndUpdateAllFiles
      L3_3()
    end
  end
  
  L3_2 = L0_1
  L3_2 = L3_2.API_Path
  L4_2 = "config.json"
  L3_2 = L3_2 .. L4_2
  L4_2 = log3
  L5_2 = "Fetching config from: "
  L6_2 = L3_2
  L5_2 = L5_2 .. L6_2
  L4_2(L5_2)
  L4_2 = {}
  L5_2 = L3_1
  L5_2 = L5_2.getDefaultHeader
  L5_2 = L5_2()
  if not L5_2 then
    L5_2 = {}
  end
  L4_2.headers = L5_2
  L5_2 = L4_2.headers
  L5_2["Content-Type"] = "application/json"
  L5_2 = network
  L5_2 = L5_2.plainNetworkRequest
  L6_2 = L3_2
  L7_2 = "GET"
  L8_2 = L2_2
  L9_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end

loadConfig = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = string
  L1_2 = L1_2.sub
  L2_2 = A0_2
  L3_2 = 1
  L4_2 = string
  L4_2 = L4_2.len
  L5_2 = L0_1
  L5_2 = L5_2.Path_Assets
  L4_2, L5_2 = L4_2(L5_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = L0_1
  L2_2 = L2_2.Path_Assets
  if L1_2 == L2_2 then
    return A0_2
  end
  L1_2 = L0_1
  L1_2 = L1_2.Path_Assets
  L2_2 = A0_2
  L1_2 = L1_2 .. L2_2
  return L1_2
end

bundledAssetPath = L7_1

function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = pairs
  L1_2 = serverMD5Hashes
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = log3
    L6_2 = "check fileName: "
    L7_2 = L3_2
    L8_2 = " with server md5: "
    L9_2 = L4_2
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
    L5_2(L6_2)
    L5_2 = L0_1
    L5_2 = L5_2.Path_ImageCache
    L6_2 = "/"
    L7_2 = L3_2
    L5_2 = L5_2 .. L6_2 .. L7_2
    L6_2 = bundledAssetPath
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    L7_2 = nil
    L8_2 = nil
    L9_2 = fileExists
    L10_2 = L5_2
    L11_2 = system
    L11_2 = L11_2.DocumentsDirectory
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L7_2 = L5_2
      L9_2 = system
      L8_2 = L9_2.DocumentsDirectory
      L9_2 = log3
      L10_2 = "file is cached in document directory "
      L11_2 = L3_2
      L10_2 = L10_2 .. L11_2
      L9_2(L10_2)
    else
      L9_2 = fileExists
      L10_2 = L6_2
      L11_2 = system
      L11_2 = L11_2.ResourceDirectory
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        L7_2 = L6_2
        L9_2 = system
        L8_2 = L9_2.ResourceDirectory
        L9_2 = log3
        L10_2 = "file is cached in resource directory "
        L11_2 = L3_2
        L10_2 = L10_2 .. L11_2
        L9_2(L10_2)
      else
        L9_2 = log3
        L10_2 = "No local file available for "
        L11_2 = L3_2
        L10_2 = L10_2 .. L11_2
        L9_2(L10_2)
      end
    end
    L9_2 = nil
    if L7_2 then
      L10_2 = calculateFileMD5
      L11_2 = L7_2
      L12_2 = L8_2
      L10_2 = L10_2(L11_2, L12_2)
      L9_2 = L10_2
    end
    L10_2 = L9_2 == nil
    if L10_2 then
      L11_2 = downloadFile
      L12_2 = L3_2
      L11_2(L12_2)
    end
  end
  L0_2 = L5_1
  if L0_2 then
    L0_2 = L5_1
    L0_2()
  end
end

checkAndUpdateAllFiles = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = system
  L2_2 = L2_2.pathForFile
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = io
  L3_2 = L3_2.open
  L4_2 = L2_2
  L5_2 = "rb"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L5_2 = L3_2
    L4_2 = L3_2.close
    L4_2(L5_2)
    L4_2 = true
    return L4_2
  end
  L4_2 = false
  return L4_2
end

fileExists = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = system
  L2_2 = L2_2.pathForFile
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = log3
    L4_2 = "md5 file not found"
    L3_2(L4_2)
    L3_2 = nil
    return L3_2
  end
  L3_2 = io
  L3_2 = L3_2.open
  L4_2 = L2_2
  L5_2 = "rb"
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = log3
    L5_2 = "md5 file not found2"
    L4_2(L5_2)
    L4_2 = nil
    return L4_2
  end
  L5_2 = L3_2
  L4_2 = L3_2.read
  L6_2 = "*all"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L3_2
  L5_2 = L3_2.close
  L5_2(L6_2)
  if not L4_2 then
    L5_2 = log3
    L6_2 = "md5 file haven't content"
    L5_2(L6_2)
    L5_2 = nil
    return L5_2
  end
  L5_2 = L2_1
  L5_2 = L5_2.digest
  L6_2 = L2_1
  L6_2 = L6_2.md5
  L7_2 = L4_2
  L8_2 = false
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = log3
  L7_2 = "md5 file md5 is: "
  L8_2 = L5_2
  L7_2 = L7_2 .. L8_2
  L6_2(L7_2)
  return L5_2
end

calculateFileMD5 = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L0_1
  L1_2 = L1_2.API_Path
  L2_2 = L0_1
  L2_2 = L2_2.API_ImageStorage
  L3_2 = A0_2
  L4_2 = "?t="
  L5_2 = os
  L5_2 = L5_2.time
  L5_2 = L5_2()
  L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2 .. L5_2
  L2_2 = L0_1
  L2_2 = L2_2.Path_ImageCache
  L3_2 = "/"
  L4_2 = A0_2
  L2_2 = L2_2 .. L3_2 .. L4_2
  L3_2 = log3
  L4_2 = "Download file: "
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = log3
  L4_2 = "Download fileName: "
  L5_2 = A0_2
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = log3
  L4_2 = "Download destination: "
  L5_2 = L2_2
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = L6_1
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = log3
    L4_2 = "Aborting download because cache directory could not be prepared for "
    L5_2 = A0_2
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    return
  end
  L3_2 = display
  L3_2 = L3_2.loadRemoteImage
  L4_2 = L1_2
  L5_2 = "GET"
  
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = A0_3.isError
    if L1_3 then
      L1_3 = log
      L2_3 = "Failed to download "
      L3_3 = A0_2
      L4_3 = ": "
      L5_3 = tostring
      L6_3 = A0_3.status
      L5_3 = L5_3(L6_3)
      L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
      L1_3(L2_3)
    else
      L1_3 = log
      L2_3 = "Success to download "
      L3_3 = A0_2
      L4_3 = ": "
      L5_3 = tostring
      L6_3 = A0_3.status
      L5_3 = L5_3(L6_3)
      L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
      L1_3(L2_3)
      L1_3 = A0_3.target
      if L1_3 ~= nil then
        L1_3 = A0_3.target
        L2_3 = L1_3
        L1_3 = L1_3.removeSelf
        L1_3(L2_3)
      end
    end
  end
  
  L7_2 = L2_2
  L8_2 = system
  L8_2 = L8_2.DocumentsDirectory
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end

downloadFile = L7_1
