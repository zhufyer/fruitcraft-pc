local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Constants"
L0_1(L1_1)
L0_1 = require
L1_1 = "Language"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "json"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Components.DataManager"
L2_1 = L2_1(L3_1)
L3_1 = L2_1.dataWithName
L4_1 = "BaseFruitLanguage_"
L5_1 = L0_1.lang
L4_1 = L4_1 .. L5_1
L3_1 = L3_1(L4_1)
L4_1 = 0
fruitId = L4_1
L4_1 = 0
id = L4_1
L4_1 = "name not set"
name = L4_1
L4_1 = 0
power = L4_1
L4_1 = 0
cooldown = L4_1
L4_1 = Constants
L4_1 = L4_1.Path_MissingImage
image = L4_1
L4_1 = 1
rarity = L4_1
L4_1 = 0
veteran_level = L4_1
L4_1 = require
L5_1 = "Data.BaseFruits"
L4_1 = L4_1(L5_1)
fruits = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  L2_2 = setmetatable
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  A0_2.__index = A0_2
  L2_2 = fruits
  L3_2 = A1_2.fruitId
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.maxLevel
  A1_2.maxLevel = L2_2
  L2_2 = fruits
  L3_2 = A1_2.fruitId
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.description
  A1_2.description = L2_2
  return A1_2
end

new = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = _buildType
  if L0_2 == "release" then
    return
  end
  L0_2 = system
  L0_2 = L0_2.pathForFile
  L1_2 = "fruitDump.txt"
  L2_2 = system
  L2_2 = L2_2.DocumentsDirectory
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = io
  L1_2 = L1_2.open
  L2_2 = L0_2
  L3_2 = "w"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = print
  L3_2 = "============================     Dumping Fruit Data       ========================"
  L2_2(L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.write
  L4_2 = "         Constant version: "
  L5_2 = Constants
  L5_2 = L5_2.version
  L6_2 = "\n"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2(L3_2, L4_2)
  L2_2 = pairs
  L3_2 = fruits
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L13_2 = L1_2
      L12_2 = L1_2.write
      L14_2 = L5_2
      L15_2 = "."
      L16_2 = L10_2
      L17_2 = " :"
      L14_2 = L14_2 .. L15_2 .. L16_2 .. L17_2
      L15_2 = L11_2
      L16_2 = "\n"
      L15_2 = L15_2 .. L16_2
      L12_2(L13_2, L14_2, L15_2)
    end
    L8_2 = L1_2
    L7_2 = L1_2.write
    L9_2 = "---- \n"
    L7_2(L8_2, L9_2)
  end
  L2_2 = io
  L2_2 = L2_2.close
  L3_2 = L1_2
  L2_2(L3_2)
  L1_2 = nil
  L0_2 = nil
  L2_2 = print
  L3_2 = "============================     End of dump         ========================"
  L2_2(L3_2)
end

dumpFruits = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = _buildType
  if L0_2 == "release" then
    return
  end
  L0_2 = print
  L1_2 = "============================     Dumping Card Data       ========================"
  L0_2(L1_2)
  L0_2 = system
  L0_2 = L0_2.pathForFile
  L1_2 = "cardDump.txt"
  L2_2 = system
  L2_2 = L2_2.DocumentsDirectory
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = io
  L1_2 = L1_2.open
  L2_2 = L0_2
  L3_2 = "w"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.write
  L4_2 = "         Constant version: "
  L5_2 = Constants
  L5_2 = L5_2.version
  L6_2 = "\n"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2(L3_2, L4_2)
  L2_2 = pairs
  L3_2 = baseCards
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = pairs
    L8_2 = L6_2
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    for L10_2, L11_2 in L7_2, L8_2, L9_2 do
      L13_2 = L1_2
      L12_2 = L1_2.write
      L14_2 = L5_2
      L15_2 = "."
      L16_2 = L10_2
      L17_2 = " :"
      L14_2 = L14_2 .. L15_2 .. L16_2 .. L17_2
      L15_2 = L11_2
      L16_2 = "\n"
      L15_2 = L15_2 .. L16_2
      L12_2(L13_2, L14_2, L15_2)
    end
    L8_2 = L1_2
    L7_2 = L1_2.write
    L9_2 = "---- \n"
    L7_2(L8_2, L9_2)
  end
  L2_2 = io
  L2_2 = L2_2.close
  L3_2 = L1_2
  L2_2(L3_2)
  L1_2 = nil
  L0_2 = nil
  L2_2 = print
  L3_2 = "============================     End of dump         ========================"
  L2_2(L3_2)
end

dumpCards = L4_1
L4_1 = require
L5_1 = "Data.BaseCards"
L4_1 = L4_1(L5_1)
baseCards = L4_1
L4_1 = system
L4_1 = L4_1.pathForFile
L5_1 = Constants
L5_1 = L5_1.Path_FruitsFile
L6_1 = system
L6_1 = L6_1.DocumentsDirectory
L4_1 = L4_1(L5_1, L6_1)
L5_1 = io
L5_1 = L5_1.open
L6_1 = L4_1
L7_1 = "r+"
L5_1 = L5_1(L6_1, L7_1)
if L5_1 == nil then
  L6_1 = log2
  L7_1 = "local fruits file not found, using defaults"
  L6_1(L7_1)
else
  L7_1 = L5_1
  L6_1 = L5_1.read
  L8_1 = "*a"
  L6_1 = L6_1(L7_1, L8_1)
  L7_1 = io
  L7_1 = L7_1.close
  L8_1 = L5_1
  L7_1(L8_1)
  L7_1 = L1_1.decode
  L8_1 = L6_1
  L7_1 = L7_1(L8_1)
  if not L7_1 then
    L7_1 = {}
  end
  L8_1 = L7_1.version
  if L8_1 ~= nil then
    L8_1 = L7_1.version
    L9_1 = Constants
    L9_1 = L9_1.version
    if L8_1 >= L9_1 then
      L8_1 = {}
      fruits = L8_1
      L8_1 = pairs
      L9_1 = L7_1.data
      L8_1, L9_1, L10_1 = L8_1(L9_1)
      for L11_1, L12_1 in L8_1, L9_1, L10_1 do
        L13_1 = L12_1.name
        L13_1 = L3_1[L13_1]
        L12_1.name = L13_1
        L13_1 = L12_1.description
        L13_1 = L3_1[L13_1]
        L12_1.description = L13_1
        L13_1 = fruits
        L14_1 = tonumber
        L15_1 = L11_1
        L14_1 = L14_1(L15_1)
        L13_1[L14_1] = L12_1
      end
    end
  end
end
L5_1 = nil
L4_1 = nil
L6_1 = system
L6_1 = L6_1.pathForFile
L7_1 = Constants
L7_1 = L7_1.Path_CardsFile
L8_1 = system
L8_1 = L8_1.DocumentsDirectory
L6_1 = L6_1(L7_1, L8_1)
L4_1 = L6_1
L6_1 = io
L6_1 = L6_1.open
L7_1 = L4_1
L8_1 = "r+"
L6_1 = L6_1(L7_1, L8_1)
L5_1 = L6_1
if L5_1 == nil then
  L6_1 = log2
  L7_1 = "local cards file not found, using defaults"
  L6_1(L7_1)
else
  L7_1 = L5_1
  L6_1 = L5_1.read
  L8_1 = "*a"
  L6_1 = L6_1(L7_1, L8_1)
  L7_1 = io
  L7_1 = L7_1.close
  L8_1 = L5_1
  L7_1(L8_1)
  L7_1 = L1_1.decode
  L8_1 = L6_1
  L7_1 = L7_1(L8_1)
  if not L7_1 then
    L7_1 = {}
  end
  L8_1 = L7_1.version
  if L8_1 ~= nil then
    L8_1 = L7_1.version
    L9_1 = Constants
    L9_1 = L9_1.version
    if L8_1 >= L9_1 then
      L8_1 = nil
      L9_1 = nil
      L10_1 = {}
      baseCards = L10_1
      L10_1 = pairs
      L11_1 = L7_1.data
      L10_1, L11_1, L12_1 = L10_1(L11_1)
      for L13_1, L14_1 in L10_1, L11_1, L12_1 do
        L15_1 = string
        L15_1 = L15_1.match
        L16_1 = L14_1.name
        L17_1 = "([%w ]-) ?(%d*)$"
        L15_1, L16_1 = L15_1(L16_1, L17_1)
        L9_1 = L16_1
        L8_1 = L15_1
        L15_1 = L3_1[L8_1]
        L16_1 = " "
        L17_1 = L0_1.adjustNumber
        L18_1 = L9_1
        L17_1 = L17_1(L18_1)
        L15_1 = L15_1 .. L16_1 .. L17_1
        L14_1.name = L15_1
        L15_1 = baseCards
        L16_1 = tonumber
        L17_1 = L13_1
        L16_1 = L16_1(L17_1)
        L17_1 = new
        L18_1 = _M
        L19_1 = L14_1
        L17_1 = L17_1(L18_1, L19_1)
        L15_1[L16_1] = L17_1
      end
      L10_1 = log3
      L11_1 = "reading cards file"
      L10_1(L11_1)
  end
  else
    L8_1 = log3
    L9_1 = "!!!!!!!!!!!!!!!!!!!!! Stored base cards ignored"
    L8_1(L9_1)
  end
end
L5_1 = nil
L4_1 = nil

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = log3
  L2_2()
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "Update Fruit"
    L4_3 = A1_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 and L2_3 ~= nil then
      L3_3 = {}
      L4_3 = {}
      L5_3 = pairs
      L6_3 = L2_3
      L5_3, L6_3, L7_3 = L5_3(L6_3)
      for L8_3, L9_3 in L5_3, L6_3, L7_3 do
        L10_3 = tonumber
        L11_3 = L8_3
        L10_3 = L10_3(L11_3)
        L4_3[L10_3] = L9_3
      end
      L3_3.data = L4_3
      L5_3 = mainPlayer
      L5_3 = L5_3.latestConstantsVersion
      L3_3.version = L5_3
      L5_3 = system
      L5_3 = L5_3.pathForFile
      L6_3 = Constants
      L6_3 = L6_3.Path_FruitsFile
      L7_3 = system
      L7_3 = L7_3.DocumentsDirectory
      L5_3 = L5_3(L6_3, L7_3)
      L6_3 = io
      L6_3 = L6_3.open
      L7_3 = L5_3
      L8_3 = "w"
      L6_3 = L6_3(L7_3, L8_3)
      L8_3 = L6_3
      L7_3 = L6_3.write
      L9_3 = L1_1
      L9_3 = L9_3.encode
      L10_3 = L3_3
      L9_3, L10_3, L11_3, L12_3, L13_3 = L9_3(L10_3)
      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      L7_3 = io
      L7_3 = L7_3.close
      L8_3 = L6_3
      L7_3(L8_3)
      L6_3 = nil
      L5_3 = nil
      fruits = L4_3
      L7_3 = L2_1
      L7_3 = L7_3.dataWithName
      L8_3 = "BaseFruitLanguage_"
      L9_3 = L0_1
      L9_3 = L9_3.lang
      L8_3 = L8_3 .. L9_3
      L7_3 = L7_3(L8_3)
      L3_1 = L7_3
      L7_3 = pairs
      L8_3 = fruits
      L7_3, L8_3, L9_3 = L7_3(L8_3)
      for L10_3, L11_3 in L7_3, L8_3, L9_3 do
        L12_3 = L3_1
        L13_3 = L11_3.name
        L12_3 = L12_3[L13_3]
        L11_3.name = L12_3
        L12_3 = L3_1
        L13_3 = L11_3.description
        L12_3 = L12_3[L13_3]
        L11_3.description = L12_3
      end
      L7_3 = A0_2
      L7_3()
    end
  end
  
  L3_2 = network
  L3_2 = L3_2.request
  L4_2 = Constants
  L4_2 = L4_2.API_Path
  L5_2 = Constants
  L5_2 = L5_2.API_FruitsExport
  L4_2 = L4_2 .. L5_2
  L5_2 = "POST"
  L6_2 = L2_2
  L7_2 = nil
  L8_2 = "Update Fruits"
  L9_2 = nil
  L10_2 = A1_2
  L11_2 = nil
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end

updateFruit = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = log3
  L2_2()
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L1_3 = A0_3.isError
    if L1_3 then
      L1_3 = A1_2
      L1_3()
    else
      L1_3 = L1_1
      L1_3 = L1_3.decode
      L2_3 = A0_3.response
      L1_3 = L1_3(L2_3)
      L2_3 = L1_3.data
      if L2_3 ~= nil then
        L3_3 = system
        L3_3 = L3_3.pathForFile
        L4_3 = Constants
        L4_3 = L4_3.Path_CardsFile
        L5_3 = system
        L5_3 = L5_3.DocumentsDirectory
        L3_3 = L3_3(L4_3, L5_3)
        L4_3 = {}
        L4_3.data = L2_3
        L5_3 = mainPlayer
        L5_3 = L5_3.latestConstantsVersion
        L4_3.version = L5_3
        L5_3 = io
        L5_3 = L5_3.open
        L6_3 = L3_3
        L7_3 = "w"
        L5_3 = L5_3(L6_3, L7_3)
        L7_3 = L5_3
        L6_3 = L5_3.write
        L8_3 = L1_1
        L8_3 = L8_3.encode
        L9_3 = L4_3
        L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L8_3(L9_3)
        L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
        L6_3 = io
        L6_3 = L6_3.close
        L7_3 = L5_3
        L6_3(L7_3)
        L5_3 = nil
        L3_3 = nil
        L6_3 = nil
        L7_3 = nil
        L8_3 = {}
        baseCards = L8_3
        L8_3 = L2_1
        L8_3 = L8_3.dataWithName
        L9_3 = "BaseFruitLanguage_"
        L10_3 = L0_1
        L10_3 = L10_3.lang
        L9_3 = L9_3 .. L10_3
        L8_3 = L8_3(L9_3)
        L3_1 = L8_3
        L8_3 = pairs
        L9_3 = L2_3
        L8_3, L9_3, L10_3 = L8_3(L9_3)
        for L11_3, L12_3 in L8_3, L9_3, L10_3 do
          L13_3 = string
          L13_3 = L13_3.match
          L14_3 = L12_3.name
          L15_3 = "(%w*) (%d*)"
          L13_3, L14_3 = L13_3(L14_3, L15_3)
          L7_3 = L14_3
          L6_3 = L13_3
          L13_3 = L3_1
          L13_3 = L13_3[L6_3]
          L14_3 = " "
          L15_3 = L0_1
          L15_3 = L15_3.adjustNumber
          L16_3 = L7_3
          L15_3 = L15_3(L16_3)
          L13_3 = L13_3 .. L14_3 .. L15_3
          L12_3.name = L13_3
          L13_3 = baseCards
          L14_3 = tonumber
          L15_3 = L11_3
          L14_3 = L14_3(L15_3)
          L15_3 = new
          L16_3 = _M
          L17_3 = L12_3
          L15_3 = L15_3(L16_3, L17_3)
          L13_3[L14_3] = L15_3
        end
        L8_3 = A0_2
        L8_3()
      end
    end
  end
  
  L3_2 = Constants
  L3_2 = L3_2.isNeedToUpdateCards
  if L3_2 then
    L3_2 = network
    L3_2 = L3_2.plainNetworkRequest
    L4_2 = Constants
    L4_2 = L4_2.API_Path
    L5_2 = Constants
    L5_2 = L5_2.API_CardsExport
    L4_2 = L4_2 .. L5_2
    L5_2 = "GET"
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = A0_2
    L3_2()
  end
end

updateCards = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = log3
  L2_2()
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = log3
    L1_3 = "fruits update success"
    L0_3(L1_3)
    L0_3 = updateCards
    L1_3 = A0_2
    L2_3 = A1_2
    L3_3 = UpdateBaseCardData
    L0_3(L1_3, L2_3, L3_3)
  end
  
  L3_2 = updateFruit
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end

updateCharacters = L6_1

function L6_1()
  local L0_2, L1_2
  L0_2 = fruits
  return L0_2
end

allFruits = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "cost, function needs to be called with colon"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = Constants
  L2_2 = L2_2.Card_PriceModifier
  L3_2 = Constants
  L3_2 = L3_2.Card_MaxEnhanceModifier
  L2_2 = L2_2 / L3_2
  L3_2 = A0_2.powerLimit
  L2_2 = L2_2 * L3_2
  return L1_2(L2_2)
end

cost = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = self
  L3_2 = "costForRarity, function needs to be called with colon"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = math
  L2_2 = L2_2.pow
  L3_2 = 2
  L4_2 = 1.7 * A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L1_2 * 100
  return L1_2
end

costForRarity = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "evolvesTo, function needs to be called with colon"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.rarity
  L2_2 = A0_2.maxLevel
  if L1_2 < L2_2 then
    L1_2 = baseCardFromFruitAndLevel
    L2_2 = A0_2.fruitId
    L3_2 = A0_2.rarity
    L3_2 = L3_2 + 1
    return L1_2(L2_2, L3_2)
  else
    L1_2 = nil
    return L1_2
  end
end

evolvesTo = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "enhancementLimit, function needs to be called with colon"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2.powerLimit
  if L1_2 ~= nil then
    L1_2 = A0_2.powerLimit
    if 0 < L1_2 then
      L1_2 = A0_2.powerLimit
      return L1_2
  end
  else
    L1_2 = math
    L1_2 = L1_2.min
    L2_2 = math
    L2_2 = L2_2.floor
    L3_2 = math
    L3_2 = L3_2.pow
    L4_2 = 2
    L5_2 = A0_2.rarity
    L5_2 = 1.7 * L5_2
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = Constants
    L3_2 = L3_2.Card_MaxEnhanceModifier
    L2_2 = L2_2 * L3_2
    L3_2 = Constants
    L3_2 = L3_2.Card_EnhanceMaximumCardPower
    return L1_2(L2_2, L3_2)
  end
end

enhancementLimit = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "cardIsEvolvable, function needs to be called with colon"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = log3
  L2_2 = "card max level is"
  L3_2 = A0_2.maxLevel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.rarity
  L2_2 = A0_2.maxLevel
  if L1_2 < L2_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = false
  return L1_2
end

cardIsEvolvable = L6_1

function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "evolvableCards, the first parameter needs to be an array of card objects"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.visited
    if L7_2 == false then
      L6_2.visited = true
      L7_2 = pairs
      L8_2 = A0_2
      L7_2, L8_2, L9_2 = L7_2(L8_2)
      for L10_2, L11_2 in L7_2, L8_2, L9_2 do
        L12_2 = L11_2.baseId
        L13_2 = L6_2.baseId
        if L12_2 == L13_2 then
          L12_2 = L11_2.visited
          if not L12_2 then
            L12_2 = L6_2.baseId
            L12_2 = L1_2[L12_2]
            if L12_2 == nil then
              L12_2 = L6_2.baseId
              L13_2 = {}
              L14_2 = L6_2
              L13_2[1] = L14_2
              L1_2[L12_2] = L13_2
            end
            L12_2 = L6_2.baseId
            L12_2 = L1_2[L12_2]
            L12_2 = L12_2.insert
            L13_2 = L11_2
            L12_2(L13_2)
            L11_2.visited = true
          end
        end
      end
    end
  end
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L6_2.visited = nil
  end
  return L1_2
end

evolvableCards = L6_1

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = checkValidityAssert
  L3_2 = A0_2
  L4_2 = "sortCardsWithPower, the first parameter needs to be an array of card objects"
  L5_2 = _NAME
  L6_2 = "table"
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.cardUsedForBuilding
    if L8_2 ~= true then
      if A1_2 == true then
        L9_2 = L7_2
        L8_2 = L7_2.cooldownRemaining
        L8_2 = L8_2(L9_2)
        if not (L8_2 <= 0) then
          goto lbl_26
        end
      end
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
    end
    ::lbl_26::
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L2_2
  
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L2_3 = L2_3[A0_3]
    L3_3 = A0_2
    L3_3 = L3_3[A1_3]
    L4_3 = L2_3.power
    L5_3 = L3_3.power
    L4_3 = L4_3 > L5_3
    return L4_3
  end
  
  L3_2(L4_2, L5_2)
  return L2_2
end

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "maxAttackPowerOfPlayer, the first parameter needs to be a Player objects"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = checkValidityAssert
  L2_2 = A0_2.cards
  L3_2 = "maxAttackPowerOfPlayer, the provided player object needs to have a 'cards' array"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L6_1
  L2_2 = A0_2.cards
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = offensivePowerOfCardsOfPlayer
  L3_2 = A0_2
  L4_2 = {}
  L5_2 = A0_2.cards
  L6_2 = L1_2[1]
  L5_2 = L5_2[L6_2]
  L6_2 = A0_2.cards
  L7_2 = L1_2[2]
  L6_2 = L6_2[L7_2]
  L7_2 = A0_2.cards
  L8_2 = L1_2[3]
  L7_2 = L7_2[L8_2]
  L8_2 = A0_2.cards
  L9_2 = L1_2[4]
  L8_2 = L8_2[L9_2]
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  return L2_2(L3_2, L4_2)
end

maxAttackPowerOfPlayer = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "currentMaxPowerOfPlayer, the first parameter needs to be a Player objects"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = checkValidityAssert
  L2_2 = A0_2.cards
  L3_2 = "currentMaxPowerOfPlayer, the provided player object needs to have a 'cards' array"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L6_1
  L2_2 = A0_2.cards
  L3_2 = true
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = offensivePowerOfCardsOfPlayer
  L3_2 = A0_2
  L4_2 = {}
  L5_2 = A0_2.cards
  L6_2 = L1_2[1]
  L5_2 = L5_2[L6_2]
  L6_2 = A0_2.cards
  L7_2 = L1_2[2]
  L6_2 = L6_2[L7_2]
  L7_2 = A0_2.cards
  L8_2 = L1_2[3]
  L7_2 = L7_2[L8_2]
  L8_2 = A0_2.cards
  L9_2 = L1_2[4]
  L8_2 = L8_2[L9_2]
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L4_2[4] = L8_2
  return L2_2(L3_2, L4_2)
end

currentMaxPowerOfPlayer = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "maxDefensePowerOfPlayer, the first parameter needs to be a Player objects"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = checkValidityAssert
  L2_2 = A0_2.cards
  L3_2 = "maxDefensePowerOfPlayer, the provided player object needs to have a 'cards' array"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L6_1
  L2_2 = A0_2.cards
  L3_2 = true
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = 0
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2.cards
    L8_2 = L8_2[L7_2]
    L8_2 = L8_2.power
    L2_2 = L2_2 + L8_2
  end
  L3_2 = A0_2.tribe
  if L3_2 ~= nil then
    L3_2 = A0_2.tribe
    L3_2 = L3_2.buildings
    if L3_2 ~= nil then
      L3_2 = A0_2.tribe
      L3_2 = L3_2.buildings
      L3_2 = L3_2.defense
      if L3_2 ~= nil then
        L3_2 = A0_2.tribe
        L3_2 = L3_2.buildings
        L3_2 = L3_2.defense
        L4_2 = L3_2
        L3_2 = L3_2.benefitFromLevel
        L3_2 = L3_2(L4_2)
        L2_2 = L2_2 * L3_2
        L3_2 = A0_2.tribe
        L3_2 = L3_2.buildings
        L3_2 = L3_2.defense
        L4_2 = L3_2
        L3_2 = L3_2.benefitFromAssignedCards
        L3_2 = L3_2(L4_2)
        L2_2 = L2_2 + L3_2
      end
    end
  end
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L2_2 = L3_2
  return L2_2
end

maxDefensePowerOfPlayer = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = checkValidityAssert
  L3_2 = A0_2
  L4_2 = "offensivePowerOfCardsOfPlayer, the first parameter needs to be a Player objects"
  L5_2 = _NAME
  L6_2 = "table"
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = checkValidityAssert
  L3_2 = A1_2
  L4_2 = "offensivePowerOfCardsOfPlayer, the second parameter needs to be an array of Card objects"
  L5_2 = _NAME
  L6_2 = "table"
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = 0
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.power
    L2_2 = L2_2 + L8_2
  end
  L3_2 = A0_2.tribe
  if L3_2 ~= nil then
    L3_2 = A0_2.tribe
    L3_2 = L3_2.buildings
    if L3_2 ~= nil then
      L3_2 = A0_2.tribe
      L3_2 = L3_2.buildings
      L3_2 = L3_2.offense
      if L3_2 ~= nil then
        L3_2 = A0_2.tribe
        L3_2 = L3_2.buildings
        L3_2 = L3_2.offense
        L4_2 = L3_2
        L3_2 = L3_2.benefitFromLevel
        L3_2 = L3_2(L4_2)
        L2_2 = L2_2 * L3_2
        L3_2 = A0_2.tribe
        L3_2 = L3_2.buildings
        L3_2 = L3_2.offense
        L4_2 = L3_2
        L3_2 = L3_2.benefitFromAssignedCards
        L3_2 = L3_2(L4_2)
        L2_2 = L2_2 + L3_2
      end
    end
  end
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L2_2 = L3_2
  return L2_2
end

offensivePowerOfCardsOfPlayer = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "powerOfCards, the first parameter needs to be an array of Card objects"
  L4_2 = _NAME
  L5_2 = "table"
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = offensivePowerOfCardsOfPlayer
  L2_2 = mainPlayer
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end

powerOfCards = L7_1

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = checkValidityAssert
  L2_2 = A0_2
  L3_2 = "baseCardWithId, the first parameter needs to be the id of a base card"
  L4_2 = _NAME
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = baseCards
  L1_2 = L1_2[A0_2]
  if L1_2 == nil then
    L1_2 = log
    L2_2 = "Base card with ID "
    L3_2 = A0_2
    L4_2 = " doesn't exist"
    L2_2 = L2_2 .. L3_2 .. L4_2
    L1_2(L2_2)
  end
  L1_2 = baseCards
  L1_2 = L1_2[A0_2]
  return L1_2
end

baseCardWithId = L7_1

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = checkValidityAssert
  L3_2 = A0_2
  L4_2 = "baseCardFromFruitAndLevel, the first parameter needs to be the id of a fruit"
  L5_2 = _NAME
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = checkValidityAssert
  L3_2 = A1_2
  L4_2 = "baseCardFromFruitAndLevel, the second parameter needs to be the level of a fruit"
  L5_2 = _NAME
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = pairs
  L3_2 = baseCards
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.fruitId
    if L7_2 == A0_2 then
      L7_2 = L6_2.rarity
      if L7_2 == A1_2 then
        return L6_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end

baseCardFromFruitAndLevel = L7_1

function L7_1(A0_2)
  local L1_2, L2_2
  if A0_2 == 0 then
    L1_2 = ""
  elseif A0_2 == 1 then
    L2_2 = L0_1
    L1_2 = L2_2["Bundle Christmas Category"]
  elseif A0_2 == 2 then
    L2_2 = L0_1
    L1_2 = L2_2["Bundle Monster Category"]
  elseif A0_2 == 3 then
    L2_2 = L0_1
    L1_2 = L2_2["Bundle Crystal Category"]
  end
  return L1_2
end

categoryOfCards = L7_1
