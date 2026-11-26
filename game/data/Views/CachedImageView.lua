local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Constants"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.Toolbox"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "lfs"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Models.ResourceManager"
L3_1 = L3_1(L4_1)
L4_1 = ""
L5_1 = display
L5_1 = L5_1.pixelHeight
L6_1 = display
L6_1 = L6_1.contentWidth
L5_1 = L5_1 / L6_1
if 1.5 < L5_1 then
  L4_1 = "@2x"
end
if 3 < L5_1 then
  L6_1 = _imageQuality
  if L6_1 == "HD" then
    L4_1 = "@4x"
  end
end

function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = system
  L0_2 = L0_2.pathForFile
  L1_2 = ""
  L2_2 = system
  L2_2 = L2_2.DocumentsDirectory
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = L2_1
  L1_2 = L1_2.chdir
  L2_2 = L0_2
  L1_2, L2_2 = L1_2(L2_2)
  if L1_2 then
    L3_2 = goToDestinationDirectory
    L4_2 = L0_1
    L4_2 = L4_2.Path_ImageCache
    L3_2(L4_2)
    L3_2 = goToDestinationDirectory
    L4_2 = "Assets-SD"
    L3_2(L4_2)
    L3_2 = goToDestinationDirectory
    L4_2 = "Avatars"
    L3_2(L4_2)
    L3_2 = goToDestinationDirectory
    L4_2 = L0_2
    L5_2 = "/"
    L6_2 = L0_1
    L6_2 = L6_2.Path_ImageCache
    L7_2 = "/"
    L8_2 = "Assets-SD"
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
    L3_2(L4_2)
    L3_2 = goToDestinationDirectory
    L4_2 = "Cards"
    L3_2(L4_2)
    L3_2 = goToDestinationDirectory
    L4_2 = "fruits"
    L3_2(L4_2)
    L3_2 = goToDestinationDirectory
    L4_2 = L0_2
    L5_2 = "/"
    L6_2 = L0_1
    L6_2 = L6_2.Path_ImageCache
    L7_2 = "/"
    L8_2 = "Assets-SD"
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
    L3_2(L4_2)
    L3_2 = goToDestinationDirectory
    L4_2 = "Heroes"
    L3_2(L4_2)
    L3_2 = goToDestinationDirectory
    L4_2 = L0_2
    L5_2 = "/"
    L6_2 = L0_1
    L6_2 = L6_2.Path_ImageCache
    L7_2 = "/"
    L8_2 = "Assets-SD"
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
    L3_2(L4_2)
    L3_2 = goToDestinationDirectory
    L4_2 = "Ladder"
    L3_2(L4_2)
    L3_2 = goToDestinationDirectory
    L4_2 = L0_2
    L5_2 = "/"
    L6_2 = L0_1
    L6_2 = L6_2.Path_ImageCache
    L7_2 = "/"
    L8_2 = "Assets-SD"
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
    L3_2(L4_2)
    L3_2 = goToDestinationDirectory
    L4_2 = "Shop"
    L3_2(L4_2)
  else
    L3_2 = log
    L4_2 = "Cached image general setup error:"
    L5_2 = errorString
    L3_2(L4_2, L5_2)
  end
end

generalSetup = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1
  L1_2 = L1_2.chdir
  L2_2 = A0_2
  L1_2, L2_2 = L1_2(L2_2)
  chdirError = L2_2
  success = L1_2
  L1_2 = success
  if not L1_2 then
    L1_2 = L2_1
    L1_2 = L1_2.mkdir
    L2_2 = A0_2
    L1_2, L2_2 = L1_2(L2_2)
    if L1_2 then
      L3_2 = L2_1
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

goToDestinationDirectory = L6_1
L6_1 = generalSetup
L6_1()

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = _M
  L2_2 = L2_2[A1_2]
  if L2_2 then
    return L2_2
  end
  L3_2 = rawget
  L4_2 = A0_2
  L5_2 = "_view"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A0_2._view
    if L4_2 ~= nil then
      L4_2 = A0_2._view
      L4_2 = L4_2[A1_2]
      if L4_2 ~= nil then
        L4_2 = A0_2._view
        L4_2 = L4_2[A1_2]
        return L4_2
      end
    end
  end
  L4_2 = rawget
  L5_2 = A0_2
  L6_2 = "_"
  L7_2 = A1_2
  L6_2 = L6_2 .. L7_2
  return L4_2(L5_2, L6_2)
end

function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = rawget
  L4_2 = A0_2
  L5_2 = "_view"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = L3_2[A1_2]
    if L4_2 ~= nil then
      L4_2 = A0_2._view
      if L4_2 ~= nil then
        L4_2 = A0_2._view
        L4_2[A1_2] = A2_2
      end
    end
  end
  L4_2 = rawset
  L5_2 = A0_2
  L6_2 = "_"
  L7_2 = A1_2
  L6_2 = L6_2 .. L7_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end

function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = display
  L1_2 = L1_2.remove
  L2_2 = A0_2._view
  L1_2(L2_2)
  A0_2._isRemoved = true
end

removeSelf = L8_1

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2
  L2_2 = log3
  L3_2 = "check forceUpdate for fileName "
  L4_2 = L1_2
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = L3_1
  L2_2 = L2_2.serverMD5Hashes
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = L2_2[L1_2]
  if L3_2 then
    L3_2 = L2_2[L1_2]
    L4_2 = L0_1
    L4_2 = L4_2.Path_ImageCache
    L5_2 = "/"
    L6_2 = L1_2
    L4_2 = L4_2 .. L5_2 .. L6_2
    L5_2 = L0_1
    L5_2 = L5_2.Path_Assets
    L6_2 = L1_2
    L5_2 = L5_2 .. L6_2
    L6_2 = nil
    L7_2 = L3_1
    L7_2 = L7_2.fileExists
    L8_2 = L4_2
    L9_2 = system
    L9_2 = L9_2.DocumentsDirectory
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = L3_1
      L7_2 = L7_2.calculateFileMD5
      L8_2 = L4_2
      L9_2 = system
      L9_2 = L9_2.DocumentsDirectory
      L7_2 = L7_2(L8_2, L9_2)
      L6_2 = L7_2
    else
      L7_2 = L3_1
      L7_2 = L7_2.fileExists
      L8_2 = L5_2
      L9_2 = system
      L9_2 = L9_2.ResourceDirectory
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L7_2 = L3_1
        L7_2 = L7_2.calculateFileMD5
        L8_2 = L5_2
        L9_2 = system
        L9_2 = L9_2.ResourceDirectory
        L7_2 = L7_2(L8_2, L9_2)
        L6_2 = L7_2
      end
    end
    if L6_2 then
      L7_2 = string
      L7_2 = L7_2.lower
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      L8_2 = string
      L8_2 = L8_2.lower
      L9_2 = L3_2
      L8_2 = L8_2(L9_2)
      if L7_2 ~= L8_2 then
        L7_2 = log3
        L8_2 = "MD5 mismatch for "
        L9_2 = L1_2
        L10_2 = " - forcing update"
        L8_2 = L8_2 .. L9_2 .. L10_2
        L7_2(L8_2)
        L7_2 = true
        return L7_2
    end
    elseif not L6_2 then
      L7_2 = log3
      L8_2 = "File not found locally: "
      L9_2 = L1_2
      L10_2 = " - forcing update"
      L8_2 = L8_2 .. L9_2 .. L10_2
      L7_2(L8_2)
      L7_2 = true
      return L7_2
    end
  end
  L3_2 = false
  return L3_2
end

function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2, A8_2)
  local L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L9_2 = L8_1
  L10_2 = A2_2
  L9_2 = L9_2(L10_2)
  A8_2 = L9_2
  L9_2 = {}
  L9_2._parent = A1_2
  L9_2.imageName = A2_2
  L9_2._width = A3_2
  L9_2._height = A4_2
  L9_2._x = 0
  L9_2._y = 0
  L9_2._callBack = A5_2
  L9_2._isRemoved = false
  if A7_2 then
    L10_2 = system
    L10_2 = L10_2.pathForFile
    L11_2 = ""
    L12_2 = system
    L12_2 = L12_2.DocumentsDirectory
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = L2_1
    L11_2 = L11_2.chdir
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    if L11_2 then
      L12_2 = goToDestinationDirectory
      L13_2 = L10_2
      L14_2 = "/"
      L15_2 = L0_1
      L15_2 = L15_2.Path_ImageCache
      L16_2 = "/"
      L17_2 = "Assets-SD"
      L18_2 = "/"
      L19_2 = "Heroes"
      L13_2 = L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2
      L12_2(L13_2)
      L12_2 = goToDestinationDirectory
      L13_2 = A7_2
      L12_2(L13_2)
    end
  end
  L10_2 = string
  L10_2 = L10_2.match
  L11_2 = A2_2
  L12_2 = "^(.*)(%.%w-)$"
  L10_2, L11_2 = L10_2(L11_2, L12_2)
  L12_2 = L10_2
  L13_2 = L4_1
  L14_2 = L11_2
  L12_2 = L12_2 .. L13_2 .. L14_2
  if not A8_2 then
    L13_2 = doesDocumentsFileExist
    L14_2 = L12_2
    L13_2 = L13_2(L14_2)
    if L13_2 then
      if A6_2 then
        L9_2.baseDir = "DocumentsDirectory"
        L13_2 = L4_1
        L9_2.imagePostfix = L13_2
      else
        L13_2 = display
        L13_2 = L13_2.newImageRect
        L14_2 = A1_2
        L15_2 = L0_1
        L15_2 = L15_2.Path_ImageCache
        L16_2 = "/"
        L17_2 = A2_2
        L15_2 = L15_2 .. L16_2 .. L17_2
        L16_2 = system
        L16_2 = L16_2.DocumentsDirectory
        L17_2 = A3_2
        L18_2 = A4_2
        L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
        L9_2._view = L13_2
      end
    else
      L13_2 = doesResourceFileExist
      L14_2 = A1_2
      L15_2 = A2_2
      L16_2 = A3_2
      L17_2 = A4_2
      L13_2, L14_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
      if L13_2 then
        if A6_2 then
          L9_2.baseDir = "ResourceDirectory"
          L15_2 = L4_1
          L9_2.imagePostfix = L15_2
        else
          L15_2 = system
          L15_2 = L15_2.getInfo
          L16_2 = "platformName"
          L15_2 = L15_2(L16_2)
          if L15_2 == "Android" then
            L9_2._view = L14_2
          else
            L15_2 = display
            L15_2 = L15_2.newImageRect
            L16_2 = A1_2
            L17_2 = A2_2
            L18_2 = A3_2
            L19_2 = A4_2
            L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
            L9_2._view = L15_2
          end
        end
      else
        if A6_2 then
          L9_2.baseDir = "Missing"
          L15_2 = L4_1
          L9_2.imagePostfix = L15_2
        else
          L15_2 = L0_1
          L15_2 = L15_2.Path_MissingImage
          L16_2 = mainPlayer
          L16_2 = L16_2.newCards
          if L16_2 then
            L16_2 = mainPlayer
            L16_2 = L16_2.showNewCards
            if L16_2 then
              L16_2 = display
              L16_2 = L16_2.newImageRect
              L17_2 = A1_2
              L18_2 = L15_2
              L19_2 = 50
              L20_2 = 50
              L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
              L9_2._view = L16_2
          end
          else
            L16_2 = display
            L16_2 = L16_2.newImageRect
            L17_2 = A1_2
            L18_2 = L15_2
            L19_2 = A3_2
            L20_2 = A4_2
            L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
            L9_2._view = L16_2
          end
        end
        L15_2 = log3
        L16_2 = "Requesting remote image"
        L17_2 = imageURL
        L18_2 = L12_2
        L17_2, L18_2, L19_2, L20_2, L21_2 = L17_2(L18_2)
        L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        L15_2 = display
        L15_2 = L15_2.loadRemoteImage
        L16_2 = imageURL
        L17_2 = L12_2
        L16_2 = L16_2(L17_2)
        L17_2 = "GET"
        
        function L18_2(A0_3)
          local L1_3, L2_3, L3_3
          L1_3 = fetchImageCallback
          L2_3 = L9_2
          L3_3 = A0_3
          L1_3(L2_3, L3_3)
        end
        
        L19_2 = L0_1
        L19_2 = L19_2.Path_ImageCache
        L20_2 = "/"
        L21_2 = L12_2
        L19_2 = L19_2 .. L20_2 .. L21_2
        L20_2 = system
        L20_2 = L20_2.DocumentsDirectory
        L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
      end
    end
  else
    if A6_2 then
      L9_2.baseDir = "Missing"
      L13_2 = L4_1
      L9_2.imagePostfix = L13_2
    else
      L13_2 = L0_1
      L13_2 = L13_2.Path_MissingImage
      L14_2 = mainPlayer
      L14_2 = L14_2.newCards
      if L14_2 then
        L14_2 = mainPlayer
        L14_2 = L14_2.showNewCards
        if L14_2 then
          L14_2 = display
          L14_2 = L14_2.newImageRect
          L15_2 = A1_2
          L16_2 = L13_2
          L17_2 = 50
          L18_2 = 50
          L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
          L9_2._view = L14_2
      end
      else
        L14_2 = display
        L14_2 = L14_2.newImageRect
        L15_2 = A1_2
        L16_2 = L13_2
        L17_2 = A3_2
        L18_2 = A4_2
        L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
        L9_2._view = L14_2
      end
    end
    L13_2 = log3
    L14_2 = "Requesting remote image (forceUpdate)"
    L15_2 = imageURL
    L16_2 = L12_2
    L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L15_2(L16_2)
    L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L13_2 = display
    L13_2 = L13_2.loadRemoteImage
    L14_2 = imageURL
    L15_2 = L12_2
    L14_2 = L14_2(L15_2)
    L15_2 = "GET"
    
    function L16_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = fetchImageCallback
      L2_3 = L9_2
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    
    L17_2 = L0_1
    L17_2 = L17_2.Path_ImageCache
    L18_2 = "/"
    L19_2 = L12_2
    L17_2 = L17_2 .. L18_2 .. L19_2
    L18_2 = system
    L18_2 = L18_2.DocumentsDirectory
    L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  end
  L13_2 = setmetatable
  L14_2 = L9_2
  L15_2 = {}
  L16_2 = L6_1
  L15_2.__index = L16_2
  L16_2 = L7_1
  L15_2.__newindex = L16_2
  L13_2(L14_2, L15_2)
  return L9_2
end

new = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = system
  L1_2 = L1_2.pathForFile
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return A0_2
  end
  L2_2 = L0_1
  L2_2 = L2_2.Path_ImageCache
  L3_2 = "/"
  L4_2 = A0_2
  L1_2 = L2_2 .. L3_2 .. L4_2
  return L1_2
end

imageAddress = L9_1

function L9_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = system
  L4_2 = L4_2.getInfo
  L5_2 = "platformName"
  L4_2 = L4_2(L5_2)
  if L4_2 == "Android" then
    L4_2 = display
    L4_2 = L4_2.newImageRect
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A2_2
    L8_2 = A3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    if L4_2 then
      L5_2 = true
      L6_2 = L4_2
      return L5_2, L6_2
    else
      L5_2 = false
      return L5_2
    end
  end
  L4_2 = system
  L4_2 = L4_2.pathForFile
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = io
    L5_2 = L5_2.open
    L6_2 = L4_2
    L7_2 = "r"
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L6_2 = io
      L6_2 = L6_2.close
      L7_2 = L5_2
      L6_2(L7_2)
      L6_2 = true
      return L6_2
    else
      L6_2 = false
      return L6_2
    end
  end
  L5_2 = false
  return L5_2
end

doesResourceFileExist = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = system
  L1_2 = L1_2.pathForFile
  L2_2 = L0_1
  L2_2 = L2_2.Path_ImageCache
  L3_2 = "/"
  L4_2 = A0_2
  L2_2 = L2_2 .. L3_2 .. L4_2
  L3_2 = system
  L3_2 = L3_2.DocumentsDirectory
  L1_2 = L1_2(L2_2, L3_2)
  path = L1_2
  L1_2 = path
  if L1_2 then
    L1_2 = io
    L1_2 = L1_2.open
    L2_2 = path
    L3_2 = "r"
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= nil then
      L2_2 = io
      L2_2 = L2_2.close
      L3_2 = L1_2
      L2_2(L3_2)
      L2_2 = true
      return L2_2
    else
      L2_2 = false
      return L2_2
    end
  end
  L1_2 = false
  return L1_2
end

doesDocumentsFileExist = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = string
  L1_2 = L1_2.gsub
  L2_2 = A0_2
  L3_2 = " "
  L4_2 = "%%20"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L0_1
  L2_2 = L2_2.API_Path
  L3_2 = L0_1
  L3_2 = L3_2.API_ImageStorage
  L4_2 = L1_2
  L2_2 = L2_2 .. L3_2 .. L4_2
  return L2_2
end

imageURL = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.isError
  if L2_2 then
    L2_2 = log
    L3_2 = "Network error - download failed"
    L2_2(L3_2)
  else
    L2_2 = A1_2.target
    if L2_2 ~= nil then
      function L2_2()
        local L0_3, L1_3, L2_3, L3_3
        
        L0_3 = A0_2
        L0_3 = L0_3._isRemoved
        if L0_3 then
          L0_3 = display
          L0_3 = L0_3.remove
          L1_3 = A0_2
          L1_3 = L1_3._view
          L0_3(L1_3)
          L0_3 = A1_2
          L0_3 = L0_3.target
          L1_3 = L0_3
          L0_3 = L0_3.removeSelf
          L0_3(L1_3)
          return
        end
        L0_3 = display
        L0_3 = L0_3.remove
        L1_3 = A0_2
        L1_3 = L1_3._view
        L0_3(L1_3)
        L0_3 = A0_2
        L1_3 = A1_2
        L1_3 = L1_3.target
        L0_3._view = L1_3
        L0_3 = A0_2
        L0_3 = L0_3._index
        if L0_3 then
          L0_3 = A0_2
          L0_3 = L0_3._parent
          L1_3 = L0_3
          L0_3 = L0_3.insert
          L2_3 = A0_2
          L2_3 = L2_3._index
          L3_3 = A1_2
          L3_3 = L3_3.target
          L0_3(L1_3, L2_3, L3_3)
        else
          L0_3 = A0_2
          L0_3 = L0_3._parent
          L1_3 = L0_3
          L0_3 = L0_3.insert
          L2_3 = A1_2
          L2_3 = L2_3.target
          L0_3(L1_3, L2_3)
        end
        L0_3 = A0_2
        L0_3 = L0_3._view
        if L0_3 ~= nil then
          L0_3 = A0_2
          L0_3 = L0_3._view
          L1_3 = A0_2
          L1_3 = L1_3._width
          L0_3.width = L1_3
          L0_3 = A0_2
          L0_3 = L0_3._view
          L1_3 = A0_2
          L1_3 = L1_3._height
          L0_3.height = L1_3
          L0_3 = A0_2
          L0_3 = L0_3._view
          L1_3 = A0_2
          L1_3 = L1_3._x
          L0_3.x = L1_3
          L0_3 = A0_2
          L0_3 = L0_3._view
          L1_3 = A0_2
          L1_3 = L1_3._y
          L0_3.y = L1_3
        end
      end
      
      L3_2 = pcall
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
      else
        L3_2 = A1_2.target
        L4_2 = L3_2
        L3_2 = L3_2.removeSelf
        L3_2(L4_2)
      end
    else
    end
    L2_2 = A0_2._callBack
    if L2_2 then
      L2_2 = A0_2._callBack
      L2_2()
    end
  end
end

fetchImageCallback = L9_1
