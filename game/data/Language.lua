local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "json"
L0_1 = L0_1(L1_1)
L1_1 = _mainLang
L2_1 = {}
L3_1 = require
L4_1 = "Data.Language_en"
L3_1 = L3_1(L4_1)
L2_1.en = L3_1
L3_1 = L2_1.en
L2_1["en-GB"] = L3_1
L3_1 = require
L4_1 = "Data.Language_fa"
L3_1 = L3_1(L4_1)
L2_1.fa = L3_1
L3_1 = {}
L4_1 = {}
L5_1 = log
L6_1 = "language:"
L7_1 = system
L7_1 = L7_1.getPreference
L8_1 = "ui"
L9_1 = "language"
L7_1, L8_1, L9_1, L10_1 = L7_1(L8_1, L9_1)
L5_1(L6_1, L7_1, L8_1, L9_1, L10_1)
L5_1 = nil

function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = system
  L0_2 = L0_2.pathForFile
  L1_2 = "langSetting.txt"
  L2_2 = system
  L2_2 = L2_2.DocumentsDirectory
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = io
  L1_2 = L1_2.open
  L2_2 = L0_2
  L3_2 = "r+"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = log2
    L3_2 = "language settings file not found, creating"
    L2_2(L3_2)
    L2_2 = io
    L2_2 = L2_2.open
    L3_2 = L0_2
    L4_2 = "w+"
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  L3_2 = L1_2
  L2_2 = L1_2.read
  L4_2 = "*a"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = io
  L3_2 = L3_2.close
  L4_2 = L1_2
  L3_2(L4_2)
  L3_2 = L0_1
  L3_2 = L3_2.decode
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = {}
  end
  L4_1 = L3_2
  L3_2 = L4_1
  L3_2 = L3_2.langPref
  L5_1 = L3_2
  L3_2 = pairs
  L4_2 = L2_1
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L4_1
    L8_2 = L8_2[L6_2]
    if L8_2 then
      L8_2 = type
      L9_2 = L4_1
      L9_2 = L9_2[L6_2]
      L8_2 = L8_2(L9_2)
      if L8_2 == "table" then
        L8_2 = pairs
        L9_2 = L4_1
        L9_2 = L9_2[L6_2]
        L8_2, L9_2, L10_2 = L8_2(L9_2)
        for L11_2, L12_2 in L8_2, L9_2, L10_2 do
          L13_2 = L2_1
          L13_2 = L13_2[L6_2]
          L13_2[L11_2] = L12_2
        end
      end
    end
  end
  L1_2 = nil
  L3_2 = system
  L3_2 = L3_2.getPreference
  L4_2 = "ui"
  L5_2 = "language"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = nil
  L5_2 = _ignoresDeviceLang
  if L5_2 then
    L4_2 = L5_1
  else
    L5_2 = L5_1
    L4_2 = L5_2 or L4_2
    if not L5_2 then
      L4_2 = L3_2
    end
  end
  if L4_2 ~= nil then
    L5_2 = L2_1
    L5_2 = L5_2[L4_2]
    if L5_2 ~= nil then
      L5_2 = log2
      L6_2 = "Using device or user lang"
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
      L5_2 = L3_1
      L5_2.lang = L4_2
  end
  else
    L5_2 = log2
    L6_2 = "Using default lang"
    L7_2 = L1_1
    L5_2(L6_2, L7_2)
    L5_2 = L3_1
    L6_2 = L1_1
    L5_2.lang = L6_2
  end
  L5_2 = L3_1
  L6_2 = L1_1
  L5_2.defaultLang = L6_2
  L5_2 = L3_1
  L5_2.charWidth = 1
  L5_2 = L3_1
  L5_2 = L5_2.lang
  if L5_2 ~= "fa" then
    L5_2 = L3_1
    L5_2 = L5_2.lang
    if L5_2 ~= "ar" then
      goto lbl_118
    end
  end
  L5_2 = L3_1
  L5_2.charWidth = 2
  ::lbl_118::
end

function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = log3
  L2_2()
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = A0_3.isError
    if L1_3 then
      L1_3 = log
      L2_3 = "Network error! Failed to update language"
      L1_3(L2_3)
      L1_3 = A1_2
      L2_3 = "Internal network error with status: "
      L3_3 = A0_3.status
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
    else
      L1_3 = log3
      L2_3 = "added language is : "
      L3_3 = A0_3.response
      L1_3(L2_3, L3_3)
      L1_3 = L0_1
      L1_3 = L1_3.decode
      L2_3 = A0_3.response
      L1_3 = L1_3(L2_3)
      if not L1_3 then
        L2_3 = log
        L3_3 = "Failed to update language: Response is not a valid JSON!"
        L2_3(L3_3)
        L2_3 = A1_2
        L3_3 = "Failed to update language with error: Response is not a valid JSON!"
        L2_3(L3_3)
        return
      end
      L2_3 = L1_3.status
      if L2_3 == true then
        L2_3 = L1_3.data
        if L2_3 ~= nil then
          L2_3 = pairs
          L3_3 = L1_3.data
          L2_3, L3_3, L4_3 = L2_3(L3_3)
          for L5_3, L6_3 in L2_3, L3_3, L4_3 do
            L7_3 = L4_1
            L7_3[L5_3] = L6_3
          end
          L2_3 = L3_1
          L2_3 = L2_3.saveSettings
          L2_3()
          L2_3 = L6_1
          L2_3()
          L2_3 = A0_2
          L2_3()
      end
      else
        L2_3 = L1_3.status
        if L2_3 == false then
          L2_3 = L1_3.error
          if not L2_3 then
            L2_3 = "Network Response returned false status"
          end
          L3_3 = log
          L4_3 = "Failed to update language with error:"
          L5_3 = L2_3
          L4_3 = L4_3 .. L5_3
          L3_3(L4_3)
          L3_3 = A1_2
          L4_3 = "Failed to update language fruits with error:"
          L5_3 = L2_3
          L4_3 = L4_3 .. L5_3
          L3_3(L4_3)
        end
      end
    end
  end
  
  L3_2 = require
  L4_2 = "Constants"
  L3_2 = L3_2(L4_2)
  L4_2 = network
  L4_2 = L4_2.request
  L5_2 = L3_2.API_Path
  L6_2 = L3_2.API_LanguageUpdate
  L5_2 = L5_2 .. L6_2
  L6_2 = "POST"
  L7_2 = L2_2
  L8_2 = nil
  L9_2 = "Update Languages"
  L10_2 = nil
  L11_2 = A1_2
  L12_2 = nil
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end

L3_1.updateLangeuages = L7_1

function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = system
  L0_2 = L0_2.pathForFile
  L1_2 = "langSetting.txt"
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
  L4_2 = L0_1
  L4_2 = L4_2.encode
  L5_2 = L4_1
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = io
  L2_2 = L2_2.close
  L3_2 = L1_2
  L2_2(L3_2)
  L1_2 = nil
end

L3_1.saveSettings = L7_1

function L7_1(A0_2)
  local L1_2
  L1_2 = L3_1
  L1_2.lang = A0_2
  L1_2 = L4_1
  L1_2.langPref = A0_2
  L1_2 = L3_1
  L1_2 = L1_2.saveSettings
  L1_2()
end

L3_1.setLanguagePrefrence = L7_1
L7_1 = L6_1
L7_1()
L7_1 = {}

function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L2_1
  L3_2 = L3_1
  L3_2 = L3_2.lang
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2[A1_2]
  return L2_2
end

L7_1.__index = L8_1
L8_1 = setmetatable
L9_1 = L3_1
L10_1 = L7_1
L8_1(L9_1, L10_1)

function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L2_1
  L3_2 = L3_1
  L3_2 = L3_2.lang
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2[A0_2]
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 == "number" then
    L3_2 = L3_1
    L3_2 = L3_2.adjustNumber
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = type
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 == "number" then
      L8_2 = L3_1
      L8_2 = L8_2.adjustNumber
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      A1_2[L6_2] = L8_2
    end
  end
  if A1_2 then
    L3_2 = string
    L3_2 = L3_2.gsub
    L4_2 = L2_2
    L5_2 = "%$%$(%w+)"
    L6_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  end
  return L2_2
end

L3_1.localizedString = L8_1
L8_1 = require
L9_1 = "Utils.Toolbox"
L8_1 = L8_1(L9_1)

function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = L3_1
  L1_2 = L1_2.lang
  if L1_2 ~= "fa" then
    L1_2 = L3_1
    L1_2 = L1_2.lang
    if L1_2 ~= "ar" then
      goto lbl_15
    end
  end
  L1_2 = L8_1
  L1_2 = L1_2.convertEnglishNumberToPersian
  L2_2 = A0_2
  do return L1_2(L2_2) end
  goto lbl_16
  ::lbl_15::
  do return A0_2 end
  ::lbl_16::
end

L3_1.adjustNumber = L9_1

function L9_1()
  local L0_2, L1_2
  L0_2 = L3_1
  L0_2 = L0_2.lang
  if L0_2 ~= "fa" then
    L0_2 = L3_1
    L0_2 = L0_2.lang
    if L0_2 ~= "ar" then
      goto lbl_11
    end
  end
  L0_2 = true
  do return L0_2 end
  ::lbl_11::
  L0_2 = false
  return L0_2
end

L3_1.isLanguageRightToLeft = L9_1

function L9_1()
  local L0_2, L1_2
  L0_2 = L3_1
  L0_2 = L0_2.isLanguageRightToLeft
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = true
  return L0_2
end

L3_1.isLanguageLeftToRight = L9_1

function L9_1()
  local L0_2, L1_2
  L0_2 = L3_1
  L0_2 = L0_2.isLanguageRightToLeft
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = "right"
    return L0_2
  else
    L0_2 = "left"
    return L0_2
  end
end

L3_1.languageAlignment = L9_1

function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L3_1
  L2_2 = L2_2.isLanguageRightToLeft
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = display
    L2_2 = L2_2.contentWidth
    L2_2 = L2_2 - A0_2
    L3_2 = A1_2 or L3_2
    if not A1_2 then
      L3_2 = 0
    end
    L2_2 = L2_2 + L3_2
    return L2_2
  else
    return A0_2
  end
end

L3_1.adjustX = L9_1

function L9_1(A0_2)
  local L1_2
  L1_2 = L3_1
  L1_2 = L1_2.isLanguageRightToLeft
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2 * -1
    return L1_2
  else
    return A0_2
  end
end

L3_1.mirrorX = L9_1
return L3_1
