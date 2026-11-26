local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Views.ActivityIndicatorView"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Language"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Utils.Toolbox"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "json"
L3_1 = L3_1(L4_1)
L4_1 = {}
L5_1 = require
L6_1 = "Data.ErrorMessages_en_US"
L5_1 = L5_1(L6_1)
L4_1.en = L5_1
L5_1 = require
L6_1 = "Data.ErrorMessages_fa_IR"
L5_1 = L5_1(L6_1)
L4_1.fa = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = log3
    L2_3 = "Failed to get error messages :"
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
    L1_3 = A1_2
    if L1_3 then
      L1_3 = A1_2
      L1_3()
    end
  end
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "getErrorMessages"
    L4_3 = L2_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = processErrorFile
      L4_3 = L2_3
      L5_3 = L1_1
      L5_3 = L5_3.lang
      L3_3(L4_3, L5_3)
      L3_3 = saveErrorMessagesFiles
      L4_3 = L1_1
      L4_3 = L4_3.lang
      L5_3 = L4_1
      L6_3 = L1_1
      L6_3 = L6_3.lang
      L5_3 = L5_3[L6_3]
      L3_3(L4_3, L5_3)
      L3_3 = A0_2
      if L3_3 then
        L3_3 = A0_2
        L3_3()
      end
    end
  end
  
  L4_2 = {}
  L5_2 = Constants
  L5_2 = L5_2.ErrorMessagesLanguageAlternative
  L6_2 = L1_1
  L6_2 = L6_2.lang
  L5_2 = L5_2[L6_2]
  L4_2.lang_id = L5_2
  L5_2 = {}
  L5_2.body = L4_2
  L6_2 = log3
  L7_2 = "Sending request to get ErrorMessages"
  L6_2(L7_2)
  L6_2 = network
  L6_2 = L6_2.getDefaultHeader
  L6_2 = L6_2()
  L5_2.headers = L6_2
  L6_2 = network
  L6_2 = L6_2.request
  L7_2 = Constants
  L7_2 = L7_2.API_Path
  L8_2 = Constants
  L8_2 = L8_2.API_Get_Error_Messages
  L7_2 = L7_2 .. L8_2
  L8_2 = "POST"
  L9_2 = L3_2
  L10_2 = L5_2
  L11_2 = "getErrorMessages"
  L12_2 = nil
  L13_2 = L2_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

getErrorMessagesFilesFromServer = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = log3
  L3_2 = "processing error Messages file"
  L2_2(L3_2)
  L2_2 = A1_2
  if A0_2 == nil then
    return
  end
  if L2_2 == nil then
    L3_2 = errorLog
    L4_2 = "couldn't find proper language name"
    L3_2(L4_2)
    return
  end
  if A0_2 == nil then
    L3_2 = errorLog
    L4_2 = "couldn't decode json of error messages"
    L3_2(L4_2)
    return
  end
  L3_2 = L4_1
  L3_2[L2_2] = A0_2
  L3_2 = L4_1
  L3_2 = L3_2[L2_2]
  L4_2 = mainPlayer
  L4_2 = L4_2.latestConstantsVersion
  L3_2.version = L4_2
end

processErrorFile = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = log3
  L2_2 = "Error Message server Version :"
  L3_2 = A0_2
  L4_2 = ", Error Message localFile Version : ,"
  L5_2 = L4_1
  L6_2 = L1_1
  L6_2 = L6_2.lang
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.version
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L4_1
  L2_2 = L1_1
  L2_2 = L2_2.lang
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.version
  if L1_2 == nil then
    L1_2 = true
    return L1_2
  end
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = tonumber
  L3_2 = L4_1
  L4_2 = L1_1
  L4_2 = L4_2.lang
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.version
  L2_2 = L2_2(L3_2)
  if L1_2 > L2_2 then
    L1_2 = true
    return L1_2
  else
    L1_2 = false
    return L1_2
  end
end

checkErrorMessagesFilesVersion = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = system
  L2_2 = L2_2.pathForFile
  L3_2 = Constants
  L3_2 = L3_2.Path_ErrorMessages
  L3_2 = L3_2[A0_2]
  L4_2 = system
  L4_2 = L4_2.DocumentsDirectory
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = io
  L3_2 = L3_2.open
  L4_2 = L2_2
  L5_2 = "w"
  L3_2 = L3_2(L4_2, L5_2)
  if A1_2 == nil then
    L4_2 = errorLog
    L5_2 = "Recieved Error Messages are nil"
    L4_2(L5_2)
    return
  end
  L4_2 = L3_1
  L4_2 = L4_2.encode
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L6_2 = L3_2
  L5_2 = L3_2.write
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = io
  L5_2 = L5_2.close
  L6_2 = L3_2
  L5_2(L6_2)
  L3_2 = nil
end

saveErrorMessagesFiles = L5_1

function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L4_1
  L0_2 = L0_2.en
  L0_2 = L0_2.version
  L1_2 = log3
  L2_2 = "reading error files "
  L1_2(L2_2)
  L1_2 = system
  L1_2 = L1_2.pathForFile
  L2_2 = Constants
  L2_2 = L2_2.Path_ErrorMessages
  L3_2 = L1_1
  L3_2 = L3_2.lang
  L2_2 = L2_2[L3_2]
  L3_2 = system
  L3_2 = L3_2.DocumentsDirectory
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = io
  L2_2 = L2_2.open
  L3_2 = L1_2
  L4_2 = "r+"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.read
    L5_2 = "*a"
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = io
    L4_2 = L4_2.close
    L5_2 = L2_2
    L4_2(L5_2)
    if L3_2 ~= nil then
      L4_2 = processErrorFile
      L5_2 = L3_1
      L5_2 = L5_2.decode
      L6_2 = L3_2
      L5_2 = L5_2(L6_2)
      L6_2 = L1_1
      L6_2 = L6_2.lang
      L4_2(L5_2, L6_2)
    end
  else
    L3_2 = L4_1
    L3_2 = L3_2.en
    L3_2.version = L0_2
    L3_2 = L4_1
    L3_2 = L3_2.fa
    L3_2.version = L0_2
    L3_2 = warningLog
    L4_2 = "Error Messages Not Found"
    L3_2(L4_2)
  end
end

readErrorMessagesFiles = L5_1

function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = log3
  L1_2 = "loading default errors file "
  L0_2(L1_2)
  L0_2 = L4_1
  L1_2 = require
  L2_2 = "Data.ErrorMessages_en_US"
  L1_2 = L1_2(L2_2)
  L0_2.en = L1_2
  L0_2 = L4_1
  L1_2 = require
  L2_2 = "Data.ErrorMessages_fa_IR"
  L1_2 = L1_2(L2_2)
  L0_2.fa = L1_2
  L0_2 = L4_1
  L0_2 = L0_2.en
  L1_2 = Constants
  L1_2 = L1_2.version
  L0_2.version = L1_2
  L0_2 = L4_1
  L0_2 = L0_2.fa
  L1_2 = Constants
  L1_2 = L1_2.version
  L0_2.version = L1_2
end

loadDefaultErrorMessagesFile = L5_1

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.code
  L2_2 = log3
  L3_2 = "looking up for error message of code :"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = L4_1
  L3_2 = L1_1
  L3_2 = L3_2.lang
  L2_2 = L2_2[L3_2]
  L3_2 = tostring
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2[L3_2]
  if L2_2 == nil then
    L2_2 = errorLog
    L3_2 = "could not find error message for code :"
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2.arguments
  if L2_2 then
    L2_2 = type
    L3_2 = A0_2.arguments
    L2_2 = L2_2(L3_2)
    if L2_2 == "table" then
      L2_2 = A0_2.arguments
      L2_2 = L2_2[1]
      if L2_2 ~= nil then
        L2_2 = log3
        L3_2 = "finding error msg with params"
        L2_2(L3_2)
        L2_2 = getErrorMessageByParams
        L3_2 = tostring
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        L4_2 = A0_2.arguments
        return L2_2(L3_2, L4_2)
    end
  end
  else
    L2_2 = log3
    L3_2 = "finding error msg without params"
    L2_2(L3_2)
    L2_2 = L4_1
    L3_2 = L1_1
    L3_2 = L3_2.lang
    L2_2 = L2_2[L3_2]
    L3_2 = tostring
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2[L3_2]
    return L2_2
  end
end

getErrorMessage = L5_1

function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = L4_1
  L3_2 = L1_1
  L3_2 = L3_2.lang
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2[A0_2]
  L3_2 = type
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 == "number" then
    L3_2 = L4_1
    L4_2 = L1_1
    L4_2 = L4_2.lang
    L3_2 = L3_2[L4_2]
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
      L8_2 = L1_1
      L8_2 = L8_2.adjustNumber
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      A1_2[L6_2] = L8_2
    end
  end
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = L2_2
  L5_2 = tostring
  L6_2 = A1_2[1]
  L5_2 = L5_2(L6_2)
  L6_2 = tostring
  L7_2 = A1_2[2]
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = " "
  end
  L7_2 = tostring
  L8_2 = A1_2[3]
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    L7_2 = " "
  end
  L8_2 = tostring
  L9_2 = A1_2[4]
  L8_2 = L8_2(L9_2)
  if not L8_2 then
    L8_2 = " "
  end
  L9_2 = tostring
  L10_2 = A1_2[5]
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    L9_2 = " "
  end
  L10_2 = tostring
  L11_2 = A1_2[6]
  L10_2 = L10_2(L11_2)
  if not L10_2 then
    L10_2 = " "
  end
  L11_2 = tostring
  L12_2 = A1_2[7]
  L11_2 = L11_2(L12_2)
  if not L11_2 then
    L11_2 = " "
  end
  return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end

getErrorMessageByParams = L5_1
