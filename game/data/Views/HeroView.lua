local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Core.BaseView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Spine.HeroAnimation"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Models.Card"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Components.TDCachedJsonManager"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.CachedImageView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Components.DataManager"
L5_1 = L5_1(L6_1)
L6_1 = L5_1.dataWithName
L7_1 = "BaseHeroItems"
L6_1 = L6_1(L7_1)
L7_1 = setmetatable
L8_1 = _M
L9_1 = {}
L9_1.__index = L0_1
L7_1(L8_1, L9_1)
L7_1 = nil

function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = system
  L1_2 = L1_2.DocumentsDirectory
  L2_2 = system
  L2_2 = L2_2.pathForFile
  L3_2 = A0_2
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = io
  L3_2 = L3_2.open
  L4_2 = L2_2
  L5_2 = "r"
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = nil
    return L4_2
  end
  L5_2 = L3_2
  L4_2 = L3_2.read
  L6_2 = "*a"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = io
  L5_2 = L5_2.close
  L6_2 = L3_2
  L5_2(L6_2)
  if L4_2 and L4_2 ~= "" then
    L5_2 = true
    return L5_2
  else
    L5_2 = false
    return L5_2
  end
  L5_2 = false
  return L5_2
end

function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = "Heroes/Items/"
  L4_2 = L3_1
  L5_2 = L4_2
  L4_2 = L4_2.new
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = L3_2
  L8_2 = A2_2
  L6_2 = L6_2 .. L7_2 .. L8_2
  L7_2 = true
  L8_2 = "Items"
  L9_2 = A0_2
  L10_2 = L7_1
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = string
  L5_2 = L5_2.match
  L6_2 = L4_2.baseDir
  L7_2 = "ResourceDirectory"
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L5_2 = log3
    L6_2 = "\226\128\162\226\128\162\226\128\162\226\128\162\226\128\162"
    L7_2 = A0_2.sceneName
    L8_2 = "\226\128\162\226\128\162\226\128\162\226\128\162\226\128\162"
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = log3
    L6_2 = "Resource Directory containing json file of: "
    L7_2 = A2_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2.heroItemsView
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.new
    L8_2 = "Items"
    L9_2 = Constants
    L9_2 = L9_2.Path_Assets
    L10_2 = L3_2
    L11_2 = A2_2
    L9_2 = L9_2 .. L10_2 .. L11_2
    L10_2 = A0_2.widthOfView
    L10_2 = 0.3 * L10_2
    L10_2 = L10_2 / 256
    L11_2 = system
    L11_2 = L11_2.ResourceDirectory
    L12_2 = determinePositionOfItem
    L13_2 = A0_2
    L14_2 = A1_2
    L12_2, L13_2, L14_2 = L12_2(L13_2, L14_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L5_2[A1_2] = L6_2
    L5_2 = A0_2.heroItemsView
    L5_2 = L5_2[A1_2]
    L6_2 = L5_2
    L5_2 = L5_2.addEnterFrame
    L5_2(L6_2)
    L5_2 = A0_2.contentGroup
    L6_2 = L5_2
    L5_2 = L5_2.insert
    L7_2 = A0_2.heroItemsView
    L7_2 = L7_2[A1_2]
    L7_2 = L7_2.view
    L5_2(L6_2, L7_2)
  else
    L5_2 = string
    L5_2 = L5_2.match
    L6_2 = L4_2.baseDir
    L7_2 = "DocumentsDirectory"
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L5_2 = L8_1
      L6_2 = Constants
      L6_2 = L6_2.Path_ImageCache
      L7_2 = "/Assets-SD/"
      L8_2 = L3_2
      L9_2 = A2_2
      L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = log3
        L6_2 = "Documents Directory containing json file of: "
        L7_2 = A2_2
        L5_2(L6_2, L7_2)
        L5_2 = A0_2.heroItemsView
        L6_2 = L1_1
        L7_2 = L6_2
        L6_2 = L6_2.new
        L8_2 = "Items"
        L9_2 = Constants
        L9_2 = L9_2.Path_ImageCache
        L10_2 = "/Assets-SD/"
        L11_2 = L3_2
        L12_2 = A2_2
        L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
        L10_2 = A0_2.widthOfView
        L10_2 = 0.3 * L10_2
        L10_2 = L10_2 / 256
        L11_2 = system
        L11_2 = L11_2.DocumentsDirectory
        L12_2 = determinePositionOfItem
        L13_2 = A0_2
        L14_2 = A1_2
        L12_2, L13_2, L14_2 = L12_2(L13_2, L14_2)
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        L5_2[A1_2] = L6_2
        L5_2 = A0_2.heroItemsView
        L5_2 = L5_2[A1_2]
        L6_2 = L5_2
        L5_2 = L5_2.addEnterFrame
        L5_2(L6_2)
        L5_2 = A0_2.contentGroup
        L6_2 = L5_2
        L5_2 = L5_2.insert
        L7_2 = A0_2.heroItemsView
        L7_2 = L7_2[A1_2]
        L7_2 = L7_2.view
        L5_2(L6_2, L7_2)
    end
    else
      L5_2 = log3
      L6_2 = "must download json file"
      L7_2 = A2_2
      L8_2 = ", event name is"
      L9_2 = "jsonDownloaded"
      L10_2 = L7_1
      L9_2 = L9_2 .. L10_2
      L5_2(L6_2, L7_2, L8_2, L9_2)
      A0_2.isDownloadedJsonItem = true
      A0_2.baseHeroItemId = A1_2
      L5_2 = Runtime
      L6_2 = L5_2
      L5_2 = L5_2.addEventListener
      L7_2 = "jsonDownloaded"
      L8_2 = L7_1
      L7_2 = L7_2 .. L8_2
      L8_2 = createItemImageAfterDownloadJson
      L5_2(L6_2, L7_2, L8_2)
    end
  end
end

findJsonAndRunItemAnimation = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = L6_1
  L4_2 = A0_2.target
  L4_2 = L4_2.baseHeroItemId
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.image
  L4_2 = ".json"
  L1_2 = L3_2 .. L4_2
  L2_2 = "Heroes/Items/"
  L3_2 = log3
  L4_2 = "Dowonload Json file of: "
  L5_2 = A0_2.target
  L5_2 = L5_2.name
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.target
  L3_2 = L3_2.heroItemsView
  L4_2 = A0_2.target
  L4_2 = L4_2.baseHeroItemId
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.new
  L7_2 = "Items"
  L8_2 = Constants
  L8_2 = L8_2.Path_ImageCache
  L9_2 = "/Assets-SD/"
  L10_2 = L2_2
  L11_2 = L1_2
  L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
  L9_2 = A0_2.target
  L9_2 = L9_2.widthOfView
  L9_2 = 0.3 * L9_2
  L9_2 = L9_2 / 256
  L10_2 = system
  L10_2 = L10_2.DocumentsDirectory
  L11_2 = determinePositionOfItem
  L12_2 = A0_2.target
  L13_2 = A0_2.target
  L13_2 = L13_2.baseHeroItemId
  L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L3_2[L4_2] = L5_2
  L3_2 = A0_2.target
  L3_2 = L3_2.heroItemsView
  L4_2 = A0_2.target
  L4_2 = L4_2.baseHeroItemId
  L3_2 = L3_2[L4_2]
  L4_2 = L3_2
  L3_2 = L3_2.addEnterFrame
  L3_2(L4_2)
  L3_2 = A0_2.target
  L3_2 = L3_2.contentGroup
  L4_2 = L3_2
  L3_2 = L3_2.insert
  L5_2 = A0_2.target
  L5_2 = L5_2.heroItemsView
  L6_2 = A0_2.target
  L6_2 = L6_2.baseHeroItemId
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.view
  L3_2(L4_2, L5_2)
  L3_2 = Runtime
  L4_2 = L3_2
  L3_2 = L3_2.removeEventListener
  L5_2 = "jsonDownloaded"
  L6_2 = L7_1
  L5_2 = L5_2 .. L6_2
  L6_2 = createItemImageAfterDownloadJson
  L3_2(L4_2, L5_2, L6_2)
end

createItemImageAfterDownloadJson = L9_1

function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = log3
  L2_2 = "Dowonload Json file of: "
  L3_2 = findTheFolderName
  L4_2 = A0_2.target
  L4_2 = L4_2.id
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2.target
  L4_2 = L4_2.id
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = Constants
  L1_2 = L1_2.Path_ImageCache
  L2_2 = "/Assets-SD/Heroes/"
  L3_2 = findTheFolderName
  L4_2 = A0_2.target
  L4_2 = L4_2.id
  L3_2 = L3_2(L4_2)
  L4_2 = "/"
  L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2
  L2_2 = A0_2.target
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.new
  L5_2 = findTheFolderName
  L6_2 = A0_2.target
  L6_2 = L6_2.id
  L5_2 = L5_2(L6_2)
  L6_2 = L1_2
  L7_2 = L2_1
  L7_2 = L7_2.baseCards
  L8_2 = A0_2.target
  L8_2 = L8_2.id
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.spineJson
  L6_2 = L6_2 .. L7_2
  L7_2 = A0_2.target
  L7_2 = L7_2.widthOfView
  L7_2 = 0.3 * L7_2
  L7_2 = L7_2 / 256
  L8_2 = system
  L8_2 = L8_2.DocumentsDirectory
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.heroCharacter = L3_2
  L2_2 = A0_2.target
  L2_2 = L2_2.jsonIsAvailableNow
  if not L2_2 then
    L2_2 = require
    L3_2 = "composer"
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.getSceneName
    L4_2 = "current"
    L3_2 = L3_2(L4_2)
    if L3_2 == "Scenes.ShopAnimationScene" then
      L3_2 = A0_2.target
      L3_2 = L3_2.heroCharacter
      L4_2 = L3_2
      L3_2 = L3_2.addEnterFrame
      L3_2(L4_2)
    end
  end
  L2_2 = A0_2.target
  L2_2 = L2_2.contentGroup
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = A0_2.target
  L4_2 = L4_2.heroCharacter
  L4_2 = L4_2.view
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.target
  L2_2.jsonIsAvailableNow = true
  L2_2 = Runtime
  L3_2 = L2_2
  L2_2 = L2_2.removeEventListener
  L4_2 = "jsonDownloaded"
  L5_2 = L7_1
  L4_2 = L4_2 .. L5_2
  L5_2 = L9_1
  L2_2(L3_2, L4_2, L5_2)
end

function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = L0_1
  L3_2 = L3_2.newWithParams
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = display
  L4_2 = L4_2.newGroup
  L4_2 = L4_2()
  L3_2.contentGroup = L4_2
  L4_2 = L3_2.view
  L5_2 = L4_2
  L4_2 = L4_2.insert
  L6_2 = L3_2.contentGroup
  L4_2(L5_2, L6_2)
  L4_2 = A1_2.widthOfView
  if not L4_2 then
    L4_2 = 256
  end
  L3_2.widthOfView = L4_2
  L4_2 = A1_2.heightOfView
  if not L4_2 then
    L4_2 = 256
  end
  L3_2.heightOfView = L4_2
  L4_2 = A1_2.spineCharacter
  if not L4_2 then
    L4_2 = false
  end
  L3_2.spineCharacter = L4_2
  L4_2 = A1_2.isShowingBackground
  if not L4_2 then
    L4_2 = false
  end
  L3_2.isShowingBackground = L4_2
  L4_2 = A1_2.id
  L3_2.id = L4_2
  L4_2 = A1_2.sceneName
  if not L4_2 then
    L4_2 = "Empty"
  end
  L3_2.sceneName = L4_2
  L4_2 = A1_2.shouldHideHeroItems
  if not L4_2 then
    L4_2 = false
  end
  L3_2.shouldHideHeroItems = L4_2
  L4_2 = {}
  L3_2.heroItemsTempPos = L4_2
  L4_2 = display
  L4_2 = L4_2.newRect
  L5_2 = L3_2.contentGroup
  L6_2 = 0
  L7_2 = 0
  L8_2 = L3_2.widthOfView
  L9_2 = L3_2.heightOfView
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2.background = L4_2
  L4_2 = L3_2.background
  L4_2.alpha = 0
  L4_2 = L3_2.isShowingBackground
  if L4_2 then
    L4_2 = L3_2.background
    L4_2.alpha = 1
    L4_2 = L3_2.background
    L5_2 = L4_2
    L4_2 = L4_2.setFillColor
    L6_2 = 1
    L7_2 = 0.9803921568627451
    L8_2 = 0.8666666666666667
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L4_2 = "Heroes/"
  L5_2 = findTheFolderName
  L6_2 = L3_2.id
  L5_2 = L5_2(L6_2)
  L6_2 = "/"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = L3_2.spineCharacter
  if L5_2 then
    L5_2 = L2_1
    L5_2 = L5_2.baseCards
    L6_2 = L3_2.id
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.image
    L7_1 = L5_2
    L5_2 = L3_1
    L6_2 = L5_2
    L5_2 = L5_2.new
    L7_2 = Constants
    L7_2 = L7_2.Path_Assets
    L8_2 = L4_2
    L9_2 = L2_1
    L9_2 = L9_2.baseCards
    L10_2 = L3_2.id
    L9_2 = L9_2[L10_2]
    L9_2 = L9_2.spineJson
    L7_2 = L7_2 .. L8_2 .. L9_2
    L8_2 = true
    L9_2 = findTheFolderName
    L10_2 = L3_2.id
    L9_2 = L9_2(L10_2)
    L10_2 = L3_2
    L11_2 = L7_1
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = string
    L6_2 = L6_2.match
    L7_2 = L5_2.baseDir
    L8_2 = "ResourceDirectory"
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = log3
      L7_2 = "Resource Directory containing json file of: "
      L8_2 = findTheFolderName
      L9_2 = L3_2.id
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2(L9_2)
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L6_2 = L1_1
      L7_2 = L6_2
      L6_2 = L6_2.new
      L8_2 = findTheFolderName
      L9_2 = L3_2.id
      L8_2 = L8_2(L9_2)
      L9_2 = Constants
      L9_2 = L9_2.Path_Assets
      L10_2 = L4_2
      L11_2 = L2_1
      L11_2 = L11_2.baseCards
      L12_2 = L3_2.id
      L11_2 = L11_2[L12_2]
      L11_2 = L11_2.spineJson
      L9_2 = L9_2 .. L10_2 .. L11_2
      L10_2 = L3_2.widthOfView
      L10_2 = 0.3 * L10_2
      L10_2 = L10_2 / 256
      L11_2 = system
      L11_2 = L11_2.ResourceDirectory
      L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      L3_2.heroCharacter = L6_2
      L6_2 = L3_2.contentGroup
      L7_2 = L6_2
      L6_2 = L6_2.insert
      L8_2 = L3_2.heroCharacter
      L8_2 = L8_2.view
      L6_2(L7_2, L8_2)
      L3_2.jsonIsAvailableNow = true
    else
      L6_2 = string
      L6_2 = L6_2.match
      L7_2 = L5_2.baseDir
      L8_2 = "DocumentsDirectory"
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        L6_2 = L8_1
        L7_2 = Constants
        L7_2 = L7_2.Path_ImageCache
        L8_2 = "/Assets-SD/"
        L9_2 = L4_2
        L10_2 = L2_1
        L10_2 = L10_2.baseCards
        L11_2 = L3_2.id
        L10_2 = L10_2[L11_2]
        L10_2 = L10_2.spineJson
        L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2
        L6_2 = L6_2(L7_2)
        if L6_2 then
          L6_2 = log3
          L7_2 = "Documents Directory containing json file of: "
          L8_2 = findTheFolderName
          L9_2 = L3_2.id
          L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2(L9_2)
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
          L6_2 = L1_1
          L7_2 = L6_2
          L6_2 = L6_2.new
          L8_2 = findTheFolderName
          L9_2 = L3_2.id
          L8_2 = L8_2(L9_2)
          L9_2 = Constants
          L9_2 = L9_2.Path_ImageCache
          L10_2 = "/Assets-SD/"
          L11_2 = L4_2
          L12_2 = L2_1
          L12_2 = L12_2.baseCards
          L13_2 = L3_2.id
          L12_2 = L12_2[L13_2]
          L12_2 = L12_2.spineJson
          L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
          L10_2 = L3_2.widthOfView
          L10_2 = 0.3 * L10_2
          L10_2 = L10_2 / 256
          L11_2 = system
          L11_2 = L11_2.DocumentsDirectory
          L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
          L3_2.heroCharacter = L6_2
          L6_2 = L3_2.contentGroup
          L7_2 = L6_2
          L6_2 = L6_2.insert
          L8_2 = L3_2.heroCharacter
          L8_2 = L8_2.view
          L6_2(L7_2, L8_2)
          L3_2.jsonIsAvailableNow = true
      end
      else
        L3_2.jsonIsAvailableNow = false
        L6_2 = Runtime
        L7_2 = L6_2
        L6_2 = L6_2.addEventListener
        L8_2 = "jsonDownloaded"
        L9_2 = L7_1
        L8_2 = L8_2 .. L9_2
        L9_2 = L9_1
        L6_2(L7_2, L8_2, L9_2)
      end
    end
  else
    L5_2 = L4_1
    L6_2 = L5_2
    L5_2 = L5_2.new
    L7_2 = L3_2.contentGroup
    L8_2 = Constants
    L8_2 = L8_2.Path_Assets
    L9_2 = "Cards/"
    L10_2 = findTheFolderName
    L11_2 = L3_2.id
    L10_2 = L10_2(L11_2)
    L11_2 = ".jpg"
    L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
    L9_2 = L3_2.widthOfView
    L10_2 = L3_2.heightOfView
    L11_2 = nil
    L12_2 = nil
    L13_2 = findTheFolderName
    L14_2 = L3_2.id
    L13_2, L14_2 = L13_2(L14_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L3_2.heroCharacterImage = L5_2
  end
  L5_2 = A1_2.heroState
  if L5_2 then
    L6_2 = L3_2
    L5_2 = L3_2.setHeroState
    L7_2 = A1_2.heroState
    L5_2(L6_2, L7_2)
  end
  L5_2 = L5_1
  L5_2 = L5_2.dataWithName
  L6_2 = "BaseHeroItems"
  L5_2 = L5_2(L6_2)
  L6_1 = L5_2
  return L3_2
end

new = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = string
  L1_2 = L1_2.find
  L2_2 = L2_1
  L2_2 = L2_2.baseCards
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.image
  L3_2 = "lvl"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = string
  L2_2 = L2_2.sub
  L3_2 = L2_1
  L3_2 = L3_2.baseCards
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.image
  L4_2 = 1
  L5_2 = L1_2 - 2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  return L2_2
end

findTheFolderName = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.shadow
  if L2_2 then
    L2_2 = A0_2.shadow
    L3_2 = L2_2
    L2_2 = L2_2.removeSelf
    L2_2(L3_2)
    A0_2.shadow = nil
  end
  L2_2 = A0_2.statusImage
  if L2_2 then
    L2_2 = A0_2.statusImage
    L3_2 = L2_2
    L2_2 = L2_2.removeSelf
    L2_2(L3_2)
    A0_2.statusImage = nil
  end
  L2_2 = display
  L2_2 = L2_2.newRect
  L3_2 = A0_2.contentGroup
  L4_2 = 0
  L5_2 = 0
  L6_2 = A0_2.widthOfView
  L7_2 = A0_2.heightOfView
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.shadow = L2_2
  L2_2 = A0_2.shadow
  L2_2.alpha = 0
  if A1_2 == 1 then
    L2_2 = A0_2.shadow
    L2_2.alpha = 1
    L2_2 = A0_2.shadow
    L3_2 = L2_2
    L2_2 = L2_2.setFillColor
    L4_2 = Theme
    L4_2 = L4_2.colorsSet
    L4_2 = L4_2.redColor
    L4_2 = L4_2[1]
    L5_2 = Theme
    L5_2 = L5_2.colorsSet
    L5_2 = L5_2.redColor
    L5_2 = L5_2[2]
    L6_2 = Theme
    L6_2 = L6_2.colorsSet
    L6_2 = L6_2.redColor
    L6_2 = L6_2[3]
    L7_2 = Theme
    L7_2 = L7_2.colorsSet
    L7_2 = L7_2.redColor
    L7_2 = L7_2[4]
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = createImage
    L3_2 = A0_2.contentGroup
    L4_2 = Constants
    L4_2 = L4_2.Path_Assets
    L5_2 = "Quest/lock.png"
    L4_2 = L4_2 .. L5_2
    L5_2 = A0_2.widthOfView
    L5_2 = 100 * L5_2
    L5_2 = L5_2 / 256
    L6_2 = A0_2.heightOfView
    L6_2 = 100 * L6_2
    L6_2 = L6_2 / 256
    L7_2 = 0
    L8_2 = 0
    L9_2 = system
    L9_2 = L9_2.ResourceDirectory
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    A0_2.statusImage = L2_2
  elseif A1_2 == 2 then
    L2_2 = A0_2.shadow
    L2_2.alpha = 1
    L2_2 = A0_2.shadow
    L3_2 = L2_2
    L2_2 = L2_2.setFillColor
    L4_2 = Theme
    L4_2 = L4_2.colorsSet
    L4_2 = L4_2.sunshineColor
    L4_2 = L4_2[1]
    L5_2 = Theme
    L5_2 = L5_2.colorsSet
    L5_2 = L5_2.sunshineColor
    L5_2 = L5_2[2]
    L6_2 = Theme
    L6_2 = L6_2.colorsSet
    L6_2 = L6_2.sunshineColor
    L6_2 = L6_2[3]
    L7_2 = Theme
    L7_2 = L7_2.colorsSet
    L7_2 = L7_2.sunshineColor
    L7_2 = L7_2[4]
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = createImage
    L3_2 = A0_2.contentGroup
    L4_2 = Constants
    L4_2 = L4_2.Path_Assets
    L5_2 = "General/FC-tick.png"
    L4_2 = L4_2 .. L5_2
    L5_2 = A0_2.widthOfView
    L5_2 = 50 * L5_2
    L5_2 = L5_2 / 256
    L6_2 = A0_2.heightOfView
    L6_2 = 50 * L6_2
    L6_2 = L6_2 / 256
    L7_2 = 0
    L8_2 = 0
    L9_2 = system
    L9_2 = L9_2.ResourceDirectory
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    A0_2.statusImage = L2_2
  end
end

setHeroState = L10_1

function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L7_2 = display
  L7_2 = L7_2.newImageRect
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A6_2
  L11_2 = A2_2
  L12_2 = A3_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2.x = A4_2
  L7_2.y = A5_2
  return L7_2
end

createImage = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = log3
  L3_2 = "Remove listener to enterFrame form the following hero"
  L4_2 = A0_2.id
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.heroCharacter
  if L2_2 then
    L2_2 = mainPlayer
    L2_2 = L2_2.heroSet
    if L2_2 then
      L2_2 = mainPlayer
      L2_2 = L2_2.heroSet
      L3_2 = A0_2.id
      L2_2 = L2_2[L3_2]
      if L2_2 then
        L2_2 = mainPlayer
        L2_2 = L2_2.heroSet
        L3_2 = A0_2.id
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.items
        if L2_2 then
          L2_2 = pairs
          L3_2 = mainPlayer
          L3_2 = L3_2.heroSet
          L4_2 = A0_2.id
          L3_2 = L3_2[L4_2]
          L3_2 = L3_2.items
          L2_2, L3_2, L4_2 = L2_2(L3_2)
          for L5_2, L6_2 in L2_2, L3_2, L4_2 do
            L7_2 = A0_2.heroItemsView
            if L7_2 then
              L7_2 = A0_2.heroItemsView
              L8_2 = L6_2.base_heroitem_id
              L7_2 = L7_2[L8_2]
              if L7_2 then
                if A1_2 then
                  L7_2 = A0_2.heroItemsView
                  L8_2 = L6_2.base_heroitem_id
                  L7_2 = L7_2[L8_2]
                  L8_2 = L7_2
                  L7_2 = L7_2.setToSetupPoseAnimation
                  L7_2(L8_2)
                  L7_2 = A0_2.heroItemsView
                  L8_2 = L6_2.base_heroitem_id
                  L7_2 = L7_2[L8_2]
                  L8_2 = L7_2
                  L7_2 = L7_2.removeEnterFrame
                  L7_2(L8_2)
                else
                  L7_2 = A0_2.heroItemsView
                  L8_2 = L6_2.base_heroitem_id
                  L7_2 = L7_2[L8_2]
                  L8_2 = L7_2
                  L7_2 = L7_2.removeEnterFrame
                  L7_2(L8_2)
                  L7_2 = A0_2.heroItemsView
                  L8_2 = L6_2.base_heroitem_id
                  L7_2 = L7_2[L8_2]
                  L7_2 = L7_2.view
                  L8_2 = L7_2
                  L7_2 = L7_2.removeSelf
                  L7_2(L8_2)
                  L7_2 = A0_2.heroItemsView
                  L8_2 = L6_2.base_heroitem_id
                  L7_2[L8_2] = nil
                end
              end
            end
          end
        end
      end
    end
    L2_2 = A0_2.heroRightHandView
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.removeRightHand
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
    L2_2 = A0_2.heroLeftHandView
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.removeLeftHand
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
    if A1_2 then
      L2_2 = A0_2.heroCharacter
      L3_2 = L2_2
      L2_2 = L2_2.setToSetupPoseAnimation
      L2_2(L3_2)
    end
    L2_2 = A0_2.heroCharacter
    L3_2 = L2_2
    L2_2 = L2_2.removeEnterFrame
    L2_2(L3_2)
  end
end

removeHero = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = log3
  L2_2 = "Add listener to enterFrame from the following hero"
  L3_2 = A0_2.id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.heroCharacter
  if L1_2 then
    L1_2 = A0_2.heroCharacter
    L2_2 = L1_2
    L1_2 = L1_2.addEnterFrame
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.setAndRunAnimationOfHeroItems
    L1_2(L2_2)
    L1_2 = A0_2.shouldHideHeroItems
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.countNumberOfHandItem
      L1_2, L2_2 = L1_2(L2_2)
      if L1_2 == 0 then
        L4_2 = A0_2
        L3_2 = A0_2.addRightHand
        L3_2(L4_2)
        L4_2 = A0_2
        L3_2 = A0_2.addLeftHand
        L3_2(L4_2)
      elseif L1_2 == 1 then
        L3_2 = mainPlayer
        L3_2 = L3_2.heroSet
        L4_2 = A0_2.id
        L3_2 = L3_2[L4_2]
        L3_2 = L3_2.items
        L3_2 = L3_2[L2_2]
        L3_2 = L3_2.position
        if L3_2 == 1 then
          L4_2 = A0_2
          L3_2 = A0_2.addLeftHand
          L3_2(L4_2)
        else
          L4_2 = A0_2
          L3_2 = A0_2.addRightHand
          L3_2(L4_2)
        end
      end
    end
  end
end

addListenerToHero = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2.heroItemsView = L1_2
  L1_2 = A0_2.shouldHideHeroItems
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.addLeftHand
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.addRightHand
    L1_2(L2_2)
  else
    L1_2 = mainPlayer
    L1_2 = L1_2.heroSet
    if L1_2 then
      L1_2 = mainPlayer
      L1_2 = L1_2.heroSet
      L2_2 = A0_2.id
      L1_2 = L1_2[L2_2]
      if L1_2 then
        L1_2 = mainPlayer
        L1_2 = L1_2.heroSet
        L2_2 = A0_2.id
        L1_2 = L1_2[L2_2]
        L1_2 = L1_2.items
        if L1_2 ~= nil then
          L1_2 = pairs
          L2_2 = mainPlayer
          L2_2 = L2_2.heroSet
          L3_2 = A0_2.id
          L2_2 = L2_2[L3_2]
          L2_2 = L2_2.items
          L1_2, L2_2, L3_2 = L1_2(L2_2)
          for L4_2, L5_2 in L1_2, L2_2, L3_2 do
            L6_2 = L6_1
            L7_2 = L5_2.base_heroitem_id
            L6_2 = L6_2[L7_2]
            L6_2 = L6_2.image
            L7_1 = L6_2
            L6_2 = L7_1
            L7_2 = ".json"
            L6_2 = L6_2 .. L7_2
            L8_2 = A0_2
            L7_2 = A0_2.findJsonAndRunItemAnimation
            L9_2 = L5_2.base_heroitem_id
            L10_2 = L6_2
            L7_2(L8_2, L9_2, L10_2)
          end
        end
      end
    end
  end
end

setAndRunAnimationOfHeroItems = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L6_1
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2.image
  L3_2 = ".json"
  L2_2 = L2_2 .. L3_2
  L3_2 = L6_1
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.image
  L7_1 = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.findJsonAndRunItemAnimation
  L5_2 = A1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  A0_2.baseHeroItemId = A1_2
  L3_2 = L6_1
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.category
  if L3_2 == 2 then
    L4_2 = A0_2
    L3_2 = A0_2.determinePositionOfItem
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = A0_2.heroRightHandView
      if L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2.removeRightHand
        L3_2(L4_2)
    end
    else
      L4_2 = A0_2
      L3_2 = A0_2.determinePositionOfItem
      L5_2 = A1_2
      L3_2 = L3_2(L4_2, L5_2)
      if not L3_2 then
        L3_2 = A0_2.heroLeftHandView
        if L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2.removeLeftHand
          L3_2(L4_2)
        end
      end
    end
  end
end

addItem = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.heroItemsView
  if L2_2 then
    L2_2 = A0_2.heroItemsView
    L2_2 = L2_2[A1_2]
    if L2_2 then
      L2_2 = A0_2.heroItemsView
      L2_2 = L2_2[A1_2]
      L3_2 = L2_2
      L2_2 = L2_2.removeEnterFrame
      L2_2(L3_2)
      L2_2 = A0_2.heroItemsView
      L2_2 = L2_2[A1_2]
      L2_2 = L2_2.view
      L3_2 = L2_2
      L2_2 = L2_2.removeSelf
      L2_2(L3_2)
      L2_2 = A0_2.heroItemsView
      L2_2.view = nil
      L2_2 = L6_1
      L2_2 = L2_2[A1_2]
      L2_2 = L2_2.category
      if L2_2 == 2 then
        L2_2 = A0_2.heroItemsTempPos
        L2_2 = L2_2[A1_2]
        if L2_2 == 1 then
          L3_2 = A0_2
          L2_2 = A0_2.addRightHand
          L2_2(L3_2)
        else
          L3_2 = A0_2
          L2_2 = A0_2.addLeftHand
          L2_2(L3_2)
        end
      end
    end
  end
end

removeItem = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = pairs
  L3_2 = mainPlayer
  L3_2 = L3_2.heroSet
  L4_2 = A0_2.id
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.items
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.base_heroitem_id
    if L7_2 ~= A1_2 then
      L7_2 = L6_1
      L8_2 = L6_2.base_heroitem_id
      L7_2 = L7_2[L8_2]
      L7_2 = L7_2.category
      L8_2 = L6_1
      L8_2 = L8_2[A1_2]
      L8_2 = L8_2.category
      if L7_2 == L8_2 then
        L7_2 = true
        L8_2 = L5_2
        return L7_2, L8_2
      end
    end
  end
  L2_2 = false
  return L2_2
end

hasSameCategory = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = mainPlayer
  L2_2 = L2_2.heroSet
  L3_2 = A0_2.id
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.items
  L2_2 = #L2_2
  if 1 < L2_2 then
    L2_2 = pairs
    L3_2 = mainPlayer
    L3_2 = L3_2.heroSet
    L4_2 = A0_2.id
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.items
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L6_2.base_heroitem_id
      if L7_2 == A1_2 then
        return L5_2
      end
    end
  else
    L2_2 = 1
    return L2_2
  end
end

findIndexOfItem = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2.hasSameCategory
  L4_2 = A1_2
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = mainPlayer
    L4_2 = L4_2.heroSet
    L5_2 = A0_2.id
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.items
    L4_2 = L4_2[L3_2]
    L4_2 = L4_2.position
    if L4_2 == 0 then
      L4_2 = mainPlayer
      L4_2 = L4_2.heroSet
      L5_2 = A0_2.id
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.items
      L4_2 = L4_2[L3_2]
      L4_2.position = 1
      L4_2 = A0_2.heroItemsTempPos
      L4_2[L3_2] = 1
      L4_2 = mainPlayer
      L4_2 = L4_2.heroSet
      L5_2 = A0_2.id
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.items
      L6_2 = A0_2
      L5_2 = A0_2.findIndexOfItem
      L7_2 = A1_2
      L5_2 = L5_2(L6_2, L7_2)
      L4_2 = L4_2[L5_2]
      L4_2.position = -1
    else
      L4_2 = mainPlayer
      L4_2 = L4_2.heroSet
      L5_2 = A0_2.id
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.items
      L6_2 = A0_2
      L5_2 = A0_2.findIndexOfItem
      L7_2 = A1_2
      L5_2 = L5_2(L6_2, L7_2)
      L4_2 = L4_2[L5_2]
      L5_2 = mainPlayer
      L5_2 = L5_2.heroSet
      L6_2 = A0_2.id
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.items
      L5_2 = L5_2[L3_2]
      L5_2 = L5_2.position
      L5_2 = L5_2 * -1
      L4_2.position = L5_2
    end
  else
    L4_2 = mainPlayer
    L4_2 = L4_2.heroSet
    L5_2 = A0_2.id
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.items
    L6_2 = A0_2
    L5_2 = A0_2.findIndexOfItem
    L7_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.position
    if L4_2 == 0 then
      L4_2 = mainPlayer
      L4_2 = L4_2.heroSet
      L5_2 = A0_2.id
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.items
      L6_2 = A0_2
      L5_2 = A0_2.findIndexOfItem
      L7_2 = A1_2
      L5_2 = L5_2(L6_2, L7_2)
      L4_2 = L4_2[L5_2]
      L4_2.position = 1
    end
  end
  L4_2 = A0_2.heroItemsTempPos
  L5_2 = mainPlayer
  L5_2 = L5_2.heroSet
  L6_2 = A0_2.id
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.items
  L7_2 = A0_2
  L6_2 = A0_2.findIndexOfItem
  L8_2 = A1_2
  L6_2 = L6_2(L7_2, L8_2)
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.position
  L4_2[A1_2] = L5_2
  L4_2 = mainPlayer
  L4_2 = L4_2.heroSet
  L5_2 = A0_2.id
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.items
  L6_2 = A0_2
  L5_2 = A0_2.findIndexOfItem
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2[L5_2]
  L4_2 = L4_2.position
  if L4_2 == 1 then
    L4_2 = true
    return L4_2
  else
    L4_2 = mainPlayer
    L4_2 = L4_2.heroSet
    L5_2 = A0_2.id
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.items
    L6_2 = A0_2
    L5_2 = A0_2.findIndexOfItem
    L7_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.position
    if L4_2 == -1 then
      L4_2 = false
      return L4_2
    end
  end
end

determinePositionOfItem = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = 0
  L3_2 = mainPlayer
  L3_2 = L3_2.heroSet
  if L3_2 then
    L3_2 = mainPlayer
    L3_2 = L3_2.heroSet
    L4_2 = A0_2.id
    L3_2 = L3_2[L4_2]
    if L3_2 then
      L3_2 = pairs
      L4_2 = mainPlayer
      L4_2 = L4_2.heroSet
      L5_2 = A0_2.id
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.items
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = L6_1
        L9_2 = L7_2.base_heroitem_id
        L8_2 = L8_2[L9_2]
        L8_2 = L8_2.category
        if L8_2 == 2 then
          L1_2 = L1_2 + 1
          L2_2 = L6_2
        end
      end
    end
  end
  L3_2 = L1_2
  L4_2 = L2_2
  return L3_2, L4_2
end

countNumberOfHandItem = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = "Items"
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "Heroes/Items/Empty Hand.json"
  L4_2 = L4_2 .. L5_2
  L5_2 = A0_2.widthOfView
  L5_2 = 0.3 * L5_2
  L5_2 = L5_2 / 256
  L6_2 = system
  L6_2 = L6_2.ResourceDirectory
  L7_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.heroRightHandView = L1_2
  L1_2 = A0_2.heroRightHandView
  L2_2 = L1_2
  L1_2 = L1_2.addEnterFrame
  L1_2(L2_2)
  L1_2 = A0_2.contentGroup
  L2_2 = L1_2
  L1_2 = L1_2.insert
  L3_2 = A0_2.heroRightHandView
  L3_2 = L3_2.view
  L1_2(L2_2, L3_2)
end

addRightHand = L10_1

function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.new
  L3_2 = "Items"
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "Heroes/Items/Empty Hand.json"
  L4_2 = L4_2 .. L5_2
  L5_2 = A0_2.widthOfView
  L5_2 = 0.3 * L5_2
  L5_2 = L5_2 / 256
  L6_2 = system
  L6_2 = L6_2.ResourceDirectory
  L7_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.heroLeftHandView = L1_2
  L1_2 = A0_2.heroLeftHandView
  L2_2 = L1_2
  L1_2 = L1_2.addEnterFrame
  L1_2(L2_2)
  L1_2 = A0_2.contentGroup
  L2_2 = L1_2
  L1_2 = L1_2.insert
  L3_2 = A0_2.heroLeftHandView
  L3_2 = L3_2.view
  L1_2(L2_2, L3_2)
end

addLeftHand = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.heroRightHandView
  L3_2 = L2_2
  L2_2 = L2_2.removeEnterFrame
  L2_2(L3_2)
  if not A1_2 then
    L2_2 = A0_2.heroRightHandView
    L2_2 = L2_2.view
    L3_2 = L2_2
    L2_2 = L2_2.removeSelf
    L2_2(L3_2)
    A0_2.heroRightHandView = nil
  end
end

removeRightHand = L10_1

function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.heroLeftHandView
  L3_2 = L2_2
  L2_2 = L2_2.removeEnterFrame
  L2_2(L3_2)
  if not A1_2 then
    L2_2 = A0_2.heroLeftHandView
    L2_2 = L2_2.view
    L3_2 = L2_2
    L2_2 = L2_2.removeSelf
    L2_2(L3_2)
    A0_2.heroLeftHandView = nil
  end
end

removeLeftHand = L10_1
