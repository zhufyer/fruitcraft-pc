local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Utils.bit"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Utils.base64"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "json"
L2_1 = L2_1(L3_1)

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = {}
  L2_2 = "IJghf65l"
  L3_2 = "ScCk"
  L4_2 = "0XMgyDez"
  L5_2 = "ltVGADXT"
  L6_2 = "MhcdCrav"
  L7_2 = "Fx7bN9mr"
  L8_2 = "vXhRdLWr"
  L9_2 = "mwBSDp1n"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  L2_2 = L1_2[8]
  L3_2 = L1_2[5]
  L4_2 = L1_2[4]
  L5_2 = L1_2[6]
  L6_2 = L1_2[3]
  L7_2 = L1_2[1]
  L8_2 = L1_2[7]
  L9_2 = L1_2[2]
  L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
  L3_2 = ""
  L4_2 = 0
  L5_2 = #A0_2
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2
    L9_2 = string
    L9_2 = L9_2.char
    L10_2 = L0_1
    L10_2 = L10_2.bxor
    L11_2 = string
    L11_2 = L11_2.byte
    L12_2 = A0_2
    L13_2 = L7_2 + 1
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = string
    L12_2 = L12_2.byte
    L13_2 = L2_2
    L14_2 = #L2_2
    L14_2 = L7_2 % L14_2
    L14_2 = L14_2 + 1
    L12_2, L13_2, L14_2 = L12_2(L13_2, L14_2)
    L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    L3_2 = L8_2 .. L9_2
  end
  L4_2 = L1_1
  L4_2 = L4_2.encode
  L5_2 = L3_2
  return L4_2(L5_2)
end

xorEncrypt = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 ~= nil and A0_2 ~= "" then
    L1_2 = L1_1
    L1_2 = L1_2.decode
    L2_2 = xorEncrypt
    L3_2 = L1_1
    L3_2 = L3_2.decode
    L4_2 = A0_2
    L3_2, L4_2 = L3_2(L4_2)
    L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
    return L1_2(L2_2, L3_2, L4_2)
  end
  return
end

xorDecrypt = L3_1

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = ""
  L3_2 = 0
  L4_2 = #A0_2
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2
    L8_2 = string
    L8_2 = L8_2.char
    L9_2 = L0_1
    L9_2 = L9_2.bxor
    L10_2 = string
    L10_2 = L10_2.byte
    L11_2 = A0_2
    L12_2 = L6_2 + 1
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = string
    L11_2 = L11_2.byte
    L12_2 = A1_2
    L13_2 = #A1_2
    L13_2 = L6_2 % L13_2
    L13_2 = L13_2 + 1
    L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
    L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    L2_2 = L7_2 .. L8_2
  end
  return L2_2
end

xorEncryptWithKey = L3_1

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 ~= nil then
    L2_2 = xorEncryptWithKey
    L3_2 = A0_2
    L4_2 = A1_2
    return L2_2(L3_2, L4_2)
  end
  return
end

xorDecryptWithKey = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = string
  L1_2 = L1_2.match
  L2_2 = A0_2
  L3_2 = "^([^%d]*%d)(%d*)(.-)$"
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
  if A0_2 ~= nil then
    L4_2 = L1_2
    L6_2 = L2_2
    L5_2 = L2_2.reverse
    L5_2 = L5_2(L6_2)
    L6_2 = L5_2
    L5_2 = L5_2.gsub
    L7_2 = "(%d%d%d)"
    L8_2 = "%1,"
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = L5_2
    L5_2 = L5_2.reverse
    L5_2 = L5_2(L6_2)
    L6_2 = L3_2
    L4_2 = L4_2 .. L5_2 .. L6_2
    return L4_2
  end
end

stringThousandCommaSeperated = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 ~= nil then
    L1_2 = string
    L1_2 = L1_2.gsub
    L2_2 = A0_2
    L3_2 = "[^\128-\193]"
    L4_2 = ""
    L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2)
    return L2_2
  else
    L1_2 = 0
    return L1_2
  end
end

stringUTFLength = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 then
    L1_2 = string
    L1_2 = L1_2.gsub
    L2_2 = A0_2
    L3_2 = "\n"
    L4_2 = "\r\n"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2 = L1_2
    L1_2 = string
    L1_2 = L1_2.gsub
    L2_2 = A0_2
    L3_2 = "([^%w %-%_%.%~])"
    
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = string
      L1_3 = L1_3.format
      L2_3 = "%%%02X"
      L3_3 = string
      L3_3 = L3_3.byte
      L4_3 = A0_3
      L3_3, L4_3 = L3_3(L4_3)
      return L1_3(L2_3, L3_3, L4_3)
    end
    
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2 = L1_2
    L1_2 = string
    L1_2 = L1_2.gsub
    L2_2 = A0_2
    L3_2 = " "
    L4_2 = "+"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2 = L1_2
  end
  return A0_2
end

urlEncode = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = string
  L1_2 = L1_2.gsub
  L2_2 = A0_2
  L3_2 = "+"
  L4_2 = " "
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L1_2 = string
  L1_2 = L1_2.gsub
  L2_2 = A0_2
  L3_2 = "%%(%x%x)"
  
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = string
    L1_3 = L1_3.char
    L2_3 = tonumber
    L3_3 = A0_3
    L4_3 = 16
    L2_3, L3_3, L4_3 = L2_3(L3_3, L4_3)
    return L1_3(L2_3, L3_3, L4_3)
  end
  
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L1_2 = string
  L1_2 = L1_2.gsub
  L2_2 = A0_2
  L3_2 = "\r\n"
  L4_2 = "\n"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  return A0_2
end

urlDecode = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ""
  if A0_2 ~= nil then
    L2_2 = 1
    L3_2 = string
    L3_2 = L3_2.len
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = string
      L6_2 = L6_2.sub
      L7_2 = A0_2
      L8_2 = L5_2
      L9_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      if L6_2 == "0" then
        L7_2 = L1_2
        L8_2 = "\219\176"
        L1_2 = L7_2 .. L8_2
      elseif L6_2 == "1" then
        L7_2 = L1_2
        L8_2 = "\219\177"
        L1_2 = L7_2 .. L8_2
      elseif L6_2 == "2" then
        L7_2 = L1_2
        L8_2 = "\219\178"
        L1_2 = L7_2 .. L8_2
      elseif L6_2 == "3" then
        L7_2 = L1_2
        L8_2 = "\219\179"
        L1_2 = L7_2 .. L8_2
      elseif L6_2 == "4" then
        L7_2 = L1_2
        L8_2 = "\219\180"
        L1_2 = L7_2 .. L8_2
      elseif L6_2 == "5" then
        L7_2 = L1_2
        L8_2 = "\219\181"
        L1_2 = L7_2 .. L8_2
      elseif L6_2 == "6" then
        L7_2 = L1_2
        L8_2 = "\219\182"
        L1_2 = L7_2 .. L8_2
      elseif L6_2 == "7" then
        L7_2 = L1_2
        L8_2 = "\219\183"
        L1_2 = L7_2 .. L8_2
      elseif L6_2 == "8" then
        L7_2 = L1_2
        L8_2 = "\219\184"
        L1_2 = L7_2 .. L8_2
      elseif L6_2 == "9" then
        L7_2 = L1_2
        L8_2 = "\219\185"
        L1_2 = L7_2 .. L8_2
      elseif L6_2 == "," then
        L7_2 = L1_2
        L8_2 = "\216\140"
        L1_2 = L7_2 .. L8_2
      elseif L6_2 == "?" then
        L7_2 = L1_2
        L8_2 = "\216\159"
        L1_2 = L7_2 .. L8_2
      else
        L7_2 = L1_2
        L8_2 = L6_2
        L1_2 = L7_2 .. L8_2
      end
    end
    return L1_2
  else
    L2_2 = nil
    return L2_2
  end
end

convertEnglishNumberToPersian = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ""
  if A0_2 ~= nil then
    L2_2 = 1
    L3_2 = string
    L3_2 = L3_2.len
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = utf8sub
      L7_2 = A0_2
      L8_2 = L5_2
      L9_2 = 1
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      if L6_2 == "\219\176" then
        L7_2 = L1_2
        L8_2 = "0"
        L1_2 = L7_2 .. L8_2
      elseif L6_2 == "\219\177" then
        L7_2 = L1_2
        L8_2 = "1"
        L1_2 = L7_2 .. L8_2
      elseif L6_2 == "\219\178" then
        L7_2 = L1_2
        L8_2 = "2"
        L1_2 = L7_2 .. L8_2
      elseif L6_2 == "\219\179" then
        L7_2 = L1_2
        L8_2 = "3"
        L1_2 = L7_2 .. L8_2
      elseif L6_2 == "\219\180" then
        L7_2 = L1_2
        L8_2 = "4"
        L1_2 = L7_2 .. L8_2
      elseif L6_2 == "\219\181" then
        L7_2 = L1_2
        L8_2 = "5"
        L1_2 = L7_2 .. L8_2
      elseif L6_2 == "\219\182" then
        L7_2 = L1_2
        L8_2 = "6"
        L1_2 = L7_2 .. L8_2
      elseif L6_2 == "\219\183" then
        L7_2 = L1_2
        L8_2 = "7"
        L1_2 = L7_2 .. L8_2
      elseif L6_2 == "\219\184" then
        L7_2 = L1_2
        L8_2 = "8"
        L1_2 = L7_2 .. L8_2
      elseif L6_2 == "\219\185" then
        L7_2 = L1_2
        L8_2 = "9"
        L1_2 = L7_2 .. L8_2
      elseif L6_2 == "\216\140" then
        L7_2 = L1_2
        L8_2 = ","
        L1_2 = L7_2 .. L8_2
      elseif L6_2 == "\216\159" then
        L7_2 = L1_2
        L8_2 = "?"
        L1_2 = L7_2 .. L8_2
      else
        L7_2 = L1_2
        L8_2 = L6_2
        L1_2 = L7_2 .. L8_2
      end
    end
    return L1_2
  else
    L2_2 = nil
    return L2_2
  end
end

convertPersianNumberToEnglish = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = string
  L1_2 = L1_2.find
  L2_2 = "([\216\182\216\181\216\171\217\130\217\129\216\186\216\185\217\135\216\174\216\173\216\172\218\134\216\180\216\179\219\140\216\168\217\132\216\167\216\170\217\134\217\133\218\169\218\175\216\184\216\183\216\178\216\177\216\176\216\175\217\190\217\136\217\131\216\164\216\166\217\138\218\152\216\165\216\163\216\162\216\169\226\128\143 \226\128\143\226\128\143\219\177\219\178\219\179\219\180\219\181\219\182\219\183\219\184\219\185\219\176])"
  L3_2 = string
  L3_2 = L3_2.sub
  L4_2 = A0_2
  L5_2 = 1
  L6_2 = 1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = 1
  L5_2 = true
  L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if L1_2 == nil and L2_2 == nil then
    L3_2 = false
    return L3_2
  else
    L3_2 = true
    return L3_2
  end
end

isFirstCharachterInPersian = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 ~= nil then
    L1_2 = A0_2
    L2_2 = string
    L2_2 = L2_2.find
    L3_2 = L1_2
    L4_2 = "([\216\182\216\181\216\171\217\130\217\129\216\186\216\185\217\135\216\174\216\173\216\172\218\134\216\180\216\179\219\140\216\168\217\132\216\167\216\170\217\134\217\133\218\169\218\175\216\184\216\183\216\178\216\177\216\176\216\175\217\190\217\136\217\131\216\164\216\166\217\138\218\152\216\165\216\163\216\162\216\169])"
    L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
    L5_2 = string
    L5_2 = L5_2.find
    L6_2 = L1_2
    L7_2 = "([a-zA-Z])"
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
    if L2_2 == nil then
      L8_2 = false
      return L8_2
    end
    if L5_2 == nil then
      L8_2 = true
      return L8_2
    end
    if L2_2 < L5_2 then
      L8_2 = true
      return L8_2
    end
    L8_2 = false
    return L8_2
  end
  L1_2 = false
  return L1_2
end

isStringPersianInAndroid = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = string
  L1_2 = L1_2.len
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if 7 < L1_2 then
    L1_2 = string
    L1_2 = L1_2.sub
    L2_2 = A0_2
    L3_2 = 1
    L4_2 = string
    L4_2 = L4_2.len
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2 - 4
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2 = L1_2
    L1_2 = A0_2
    L2_2 = " K"
    A0_2 = L1_2 .. L2_2
  end
  return A0_2
end

addKForLargeNumber = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 == nil then
    L1_2 = 0
    return L1_2
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == "string" then
    L1_2 = tonumber
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    A0_2 = L1_2
  end
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L1_2 = A0_2
  L2_2 = string
  L2_2 = L2_2.len
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if 4 < L2_2 then
    L2_2 = string
    L2_2 = L2_2.len
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if 10 < L2_2 then
      L2_2 = string
      L2_2 = L2_2.sub
      L3_2 = L1_2
      L4_2 = 1
      L5_2 = string
      L5_2 = L5_2.len
      L6_2 = A0_2
      L5_2 = L5_2(L6_2)
      L5_2 = L5_2 - 9
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      L1_2 = L2_2
      L2_2 = L1_2
      L3_2 = "B"
      L1_2 = L2_2 .. L3_2
    else
      L2_2 = string
      L2_2 = L2_2.len
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      if 7 < L2_2 then
        L2_2 = string
        L2_2 = L2_2.sub
        L3_2 = L1_2
        L4_2 = 1
        L5_2 = string
        L5_2 = L5_2.len
        L6_2 = A0_2
        L5_2 = L5_2(L6_2)
        L5_2 = L5_2 - 6
        L2_2 = L2_2(L3_2, L4_2, L5_2)
        L1_2 = L2_2
        L2_2 = L1_2
        L3_2 = "M"
        L1_2 = L2_2 .. L3_2
      else
        L2_2 = string
        L2_2 = L2_2.len
        L3_2 = A0_2
        L2_2 = L2_2(L3_2)
        if 4 < L2_2 then
          L2_2 = string
          L2_2 = L2_2.sub
          L3_2 = L1_2
          L4_2 = 1
          L5_2 = string
          L5_2 = L5_2.len
          L6_2 = A0_2
          L5_2 = L5_2(L6_2)
          L5_2 = L5_2 - 3
          L2_2 = L2_2(L3_2, L4_2, L5_2)
          L1_2 = L2_2
          L2_2 = L1_2
          L3_2 = "K"
          L1_2 = L2_2 .. L3_2
        end
      end
    end
  end
  L2_2 = stringThousandCommaSeperated
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L1_2 = L2_2
  return L1_2
end

shortenLongNumber = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = 1
  L4_2 = string
  L4_2 = L4_2.gsub
  L5_2 = A0_2
  L6_2 = ","
  L7_2 = ""
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L1_2 = L4_2
  L5_2 = A0_2
  L4_2 = A0_2.sub
  L7_2 = A0_2
  L6_2 = A0_2.len
  L6_2, L7_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2 = L4_2
  if L2_2 == "K" or L2_2 == "M" or L2_2 == "B" then
    L4_2 = string
    L4_2 = L4_2.gsub
    L5_2 = L1_2
    L6_2 = L2_2
    L7_2 = ""
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L1_2 = L4_2
  end
  if L2_2 == "K" then
    L3_2 = 1000
  elseif L2_2 == "M" then
    L3_2 = 1000000
  elseif L2_2 == "B" then
    L3_2 = 1000000000
  end
  L4_2 = convertPersianNumberToEnglish
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L1_2 = L4_2
  L4_2 = string
  L4_2 = L4_2.gsub
  L5_2 = L1_2
  L6_2 = ","
  L7_2 = ""
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L1_2 = L4_2
  L4_2 = tonumber
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L1_2 = L4_2 * L3_2
  return L1_2
end

convertShortenNumbers = L3_1

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = require
  L2_2 = "Language"
  L1_2 = L1_2(L2_2)
  if A0_2 == nil then
    L2_2 = ""
    return L2_2
  end
  L2_2 = nil
  if A0_2 < 120 then
    L3_2 = L1_2.adjustNumber
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = " s"
    L2_2 = L3_2 .. L4_2
  elseif A0_2 < 3600 then
    L3_2 = math
    L3_2 = L3_2.floor
    L4_2 = A0_2 / 60
    L3_2 = L3_2(L4_2)
    L4_2 = L1_2.adjustNumber
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = " m"
    L2_2 = L4_2 .. L5_2
  else
    L3_2 = math
    L3_2 = L3_2.floor
    L4_2 = A0_2 / 3600
    L3_2 = L3_2(L4_2)
    L4_2 = math
    L4_2 = L4_2.floor
    L5_2 = A0_2 / 60
    L4_2 = L4_2(L5_2)
    if 0 < L3_2 then
      L5_2 = L3_2 * 60
      L4_2 = L4_2 - L5_2
      if L4_2 < 10 then
        L5_2 = "0"
        L6_2 = L4_2
        L4_2 = L5_2 .. L6_2
      end
    end
    L5_2 = L1_2.adjustNumber
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    L6_2 = " : "
    L7_2 = L1_2.adjustNumber
    L8_2 = L4_2
    L7_2 = L7_2(L8_2)
    L2_2 = L5_2 .. L6_2 .. L7_2
  end
  return L2_2
end

getTimeStringFromNumberOfSeconds = L3_1

function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = system
  L0_2 = L0_2.getInfo
  L1_2 = "platformName"
  L0_2 = L0_2(L1_2)
  L1_2 = log3
  L2_2 = "platformName"
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
  L1_2 = nil
  if L0_2 == "iPhone OS" then
    L2_2 = system
    L2_2 = L2_2.getInfo
    L3_2 = "appVersionString"
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  elseif L0_2 == "Android" then
    L2_2 = system
    L2_2 = L2_2.getInfo
    L3_2 = "Version Name"
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  else
    L2_2 = system
    L2_2 = L2_2.getInfo
    L3_2 = "appVersionString"
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  if L1_2 == nil then
    L2_2 = system
    L2_2 = L2_2.getInfo
    L3_2 = "appVersionString"
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
    if L1_2 == nil then
      L2_2 = log
      L3_2 = "Received nil app version"
      L2_2(L3_2)
      L1_2 = "1.0"
    end
  end
  L2_2 = log3
  L3_2 = "APP VERSION"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  return L1_2
end

getAppVersion = L3_1

function L3_1(A0_2)
  local L1_2
  if not A0_2 then
    L1_2 = 0
    return L1_2
  elseif 240 < A0_2 then
    L1_2 = 4
    return L1_2
  elseif 225 < A0_2 then
    L1_2 = 3
    return L1_2
  elseif 192 < A0_2 then
    L1_2 = 2
    return L1_2
  else
    L1_2 = 1
    return L1_2
  end
end

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = 1
  while 1 < A1_2 do
    L4_2 = string
    L4_2 = L4_2.byte
    L5_2 = A0_2
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L3_1
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L3_2 = L3_2 + L5_2
    A1_2 = A1_2 - 1
  end
  L4_2 = L3_2
  while 0 < A2_2 do
    L5_2 = #A0_2
    if not (L4_2 <= L5_2) then
      break
    end
    L5_2 = string
    L5_2 = L5_2.byte
    L6_2 = A0_2
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L3_1
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L4_2 = L4_2 + L6_2
    A2_2 = A2_2 - 1
  end
  L6_2 = A0_2
  L5_2 = A0_2.sub
  L7_2 = L3_2
  L8_2 = L4_2 - 1
  return L5_2(L6_2, L7_2, L8_2)
end

utf8sub = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 == nil then
    L2_2 = nil
    return L2_2
  end
  if A1_2 == nil then
    A1_2 = "%s"
  end
  L2_2 = {}
  t = L2_2
  L2_2 = 1
  i = L2_2
  L2_2 = string
  L2_2 = L2_2.gmatch
  L3_2 = A0_2
  L4_2 = "([^"
  L5_2 = A1_2
  L6_2 = "]+)"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  for L5_2 in L2_2, L3_2, L4_2 do
    L6_2 = t
    L7_2 = i
    L6_2[L7_2] = L5_2
    L6_2 = i
    L6_2 = L6_2 + 1
    i = L6_2
  end
  L2_2 = t
  return L2_2
end

splitString = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "^%s*(.-)%s*$"
  L4_2 = "%1"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  return L1_2
end

trimString = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == nil then
    A1_2 = "large"
  end
  L2_2 = require
  L3_2 = "Language"
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A0_2 / 86400
  L3_2 = L3_2(L4_2)
  day = L3_2
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = day
  L4_2 = L4_2 * 86400
  L4_2 = A0_2 - L4_2
  L4_2 = L4_2 / 3600
  L3_2 = L3_2(L4_2)
  hour = L3_2
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = day
  L4_2 = L4_2 * 86400
  L4_2 = A0_2 - L4_2
  L5_2 = hour
  L5_2 = L5_2 * 60
  L5_2 = L5_2 * 60
  L4_2 = L4_2 - L5_2
  L4_2 = L4_2 / 60
  L3_2 = L3_2(L4_2)
  min = L3_2
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = day
  L4_2 = L4_2 * 86400
  L4_2 = A0_2 - L4_2
  L5_2 = hour
  L5_2 = L5_2 * 60
  L5_2 = L5_2 * 60
  L4_2 = L4_2 - L5_2
  L5_2 = min
  L5_2 = L5_2 * 60
  L4_2 = L4_2 - L5_2
  L3_2 = L3_2(L4_2)
  sec = L3_2
  L3_2 = day
  if L3_2 < 0 then
    L3_2 = 0
    day = L3_2
  end
  L3_2 = hour
  if L3_2 < 0 then
    L3_2 = 0
    hour = L3_2
  end
  L3_2 = min
  if L3_2 < 0 then
    L3_2 = 0
    min = L3_2
  end
  L3_2 = sec
  if L3_2 < 0 then
    L3_2 = 0
    sec = L3_2
  end
  L3_2 = nil
  if A1_2 == "large" then
    L4_2 = day
    if L4_2 ~= 0 then
      L4_2 = day
      if 1 < L4_2 then
        L4_2 = L2_2.localizedString
        L5_2 = "days"
        L6_2 = {}
        L7_2 = L2_2.adjustNumber
        L8_2 = day
        L7_2 = L7_2(L8_2)
        L6_2.num = L7_2
        L4_2 = L4_2(L5_2, L6_2)
        L5_2 = " "
        L3_2 = L4_2 .. L5_2
      else
        L4_2 = L2_2.localizedString
        L5_2 = "day"
        L6_2 = {}
        L7_2 = L2_2.adjustNumber
        L8_2 = day
        L7_2 = L7_2(L8_2)
        L6_2.num = L7_2
        L4_2 = L4_2(L5_2, L6_2)
        L5_2 = " "
        L3_2 = L4_2 .. L5_2
      end
      L4_2 = hour
      if 1 < L4_2 then
        L4_2 = L3_2
        L5_2 = L2_2.localizedString
        L6_2 = "hours"
        L7_2 = {}
        L8_2 = L2_2.adjustNumber
        L9_2 = hour
        L8_2 = L8_2(L9_2)
        L7_2.num = L8_2
        L5_2 = L5_2(L6_2, L7_2)
        L3_2 = L4_2 .. L5_2
      else
        L4_2 = L3_2
        L5_2 = L2_2.localizedString
        L6_2 = "hour"
        L7_2 = {}
        L8_2 = L2_2.adjustNumber
        L9_2 = hour
        L8_2 = L8_2(L9_2)
        L7_2.num = L8_2
        L5_2 = L5_2(L6_2, L7_2)
        L3_2 = L4_2 .. L5_2
      end
    else
      L4_2 = hour
      if 1 < L4_2 then
        L4_2 = L2_2.localizedString
        L5_2 = "hours"
        L6_2 = {}
        L7_2 = L2_2.adjustNumber
        L8_2 = hour
        L7_2 = L7_2(L8_2)
        L6_2.num = L7_2
        L4_2 = L4_2(L5_2, L6_2)
        L5_2 = " "
        L3_2 = L4_2 .. L5_2
      else
        L4_2 = L2_2.localizedString
        L5_2 = "hour"
        L6_2 = {}
        L7_2 = L2_2.adjustNumber
        L8_2 = hour
        L7_2 = L7_2(L8_2)
        L6_2.num = L7_2
        L4_2 = L4_2(L5_2, L6_2)
        L5_2 = " "
        L3_2 = L4_2 .. L5_2
      end
      L4_2 = min
      if 1 < L4_2 then
        L4_2 = L3_2
        L5_2 = L2_2.localizedString
        L6_2 = "mins"
        L7_2 = {}
        L8_2 = L2_2.adjustNumber
        L9_2 = min
        L8_2 = L8_2(L9_2)
        L7_2.num = L8_2
        L5_2 = L5_2(L6_2, L7_2)
        L3_2 = L4_2 .. L5_2
      else
        L4_2 = L3_2
        L5_2 = L2_2.localizedString
        L6_2 = "min"
        L7_2 = {}
        L8_2 = L2_2.adjustNumber
        L9_2 = min
        L8_2 = L8_2(L9_2)
        L7_2.num = L8_2
        L5_2 = L5_2(L6_2, L7_2)
        L3_2 = L4_2 .. L5_2
      end
    end
  elseif A1_2 == "normal" then
    L4_2 = day
    if L4_2 ~= 0 then
      L4_2 = day
      L5_2 = " d "
      L3_2 = L4_2 .. L5_2
      L4_2 = L3_2
      L5_2 = hour
      L6_2 = "h"
      L3_2 = L4_2 .. L5_2 .. L6_2
    else
      L4_2 = hour
      L5_2 = " h "
      L3_2 = L4_2 .. L5_2
      L4_2 = L3_2
      L5_2 = min
      L6_2 = "m"
      L3_2 = L4_2 .. L5_2 .. L6_2
    end
  elseif A1_2 == "small" then
    L4_2 = nil
    L5_2 = hour
    if L5_2 < 10 then
      L5_2 = "0"
      L6_2 = hour
      L4_2 = L5_2 .. L6_2
    else
      L4_2 = hour
    end
    L5_2 = min
    if L5_2 < 10 then
      L5_2 = "0"
      L6_2 = min
      L5_2 = L5_2 .. L6_2
      min = L5_2
    end
    L5_2 = sec
    if L5_2 < 10 then
      L5_2 = "0"
      L6_2 = sec
      L5_2 = L5_2 .. L6_2
      sec = L5_2
    end
    L5_2 = hour
    if 0 < L5_2 then
      L5_2 = L4_2
      L6_2 = ":"
      L7_2 = min
      L8_2 = ":"
      L9_2 = sec
      L3_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
    else
      L5_2 = min
      L6_2 = ":"
      L7_2 = sec
      L3_2 = L5_2 .. L6_2 .. L7_2
    end
  end
  return L3_2
end

getRemainingTime = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = splitString
  L3_2 = A0_2
  L4_2 = "."
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = splitString
  L4_2 = A1_2
  L5_2 = "."
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil or L2_2 == nil then
    L4_2 = false
    return L4_2
  end
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L2_2[L7_2]
    if L9_2 == nil then
      L2_2[L7_2] = "0"
    end
    L9_2 = L3_2[L7_2]
    if L9_2 == nil then
      L3_2[L7_2] = "0"
    end
    L9_2 = tonumber
    L10_2 = L2_2[L7_2]
    L9_2 = L9_2(L10_2)
    L10_2 = tonumber
    L11_2 = L3_2[L7_2]
    L10_2 = L10_2(L11_2)
    if L9_2 < L10_2 then
      L9_2 = true
      return L9_2
    else
      L9_2 = tonumber
      L10_2 = L2_2[L7_2]
      L9_2 = L9_2(L10_2)
      L10_2 = tonumber
      L11_2 = L3_2[L7_2]
      L10_2 = L10_2(L11_2)
      if L9_2 > L10_2 then
        L9_2 = false
        return L9_2
      end
    end
  end
  L4_2 = true
  return L4_2
end

checkVersionIsCorrect = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end

lengthOfTable = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1
  L1_2 = L1_2.encode
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = log3
  L3_2 = "Table : "
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end

printTable = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L6_2 = log3
  L7_2 = "fixedTextSize called for"
  L8_2 = A0_2.text
  L6_2(L7_2, L8_2)
  L6_2 = A1_2
  L7_2 = A3_2
  L8_2 = A0_2
  L9_2 = A0_2.x
  L10_2 = A0_2.y
  L11_2 = log3
  L12_2 = "text width"
  L13_2 = A0_2.width
  L11_2(L12_2, L13_2)
  L11_2 = log3
  L12_2 = "limit width"
  L13_2 = A4_2
  L11_2(L12_2, L13_2)
  L11_2 = A0_2.width
  if A4_2 < L11_2 then
    L11_2 = log3
    L12_2 = "text need to resized"
    L11_2(L12_2)
  end
  while true do
    L11_2 = A0_2.width
    if not (A4_2 < L11_2) then
      break
    end
    L6_2 = L6_2 - 1
    L11_2 = log3
    L12_2 = "new font size, "
    L13_2 = L6_2
    L11_2(L12_2, L13_2)
    if L6_2 < 6 then
      L11_2 = errorLog
      L12_2 = "text size is too long"
      L11_2(L12_2)
      break
    end
    L11_2 = display
    L11_2 = L11_2.remove
    L12_2 = A0_2
    L11_2(L12_2)
    L11_2 = display
    L11_2 = L11_2.newText
    L12_2 = L8_2.text
    L13_2 = 0
    L14_2 = 0
    L15_2 = A5_2 or L15_2
    if not A5_2 then
      L15_2 = Constants
      L15_2 = L15_2.fontForSubtitle
      L15_2 = L15_2()
    end
    L16_2 = L6_2
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    A0_2 = L11_2
    L11_2 = L8_2.rotation
    A0_2.rotation = L11_2
    if A2_2 then
      L11_2 = A2_2[4]
      if L11_2 then
        L12_2 = A0_2
        L11_2 = A0_2.setFillColor
        L13_2 = A2_2[1]
        L14_2 = A2_2[2]
        L15_2 = A2_2[3]
        L16_2 = A2_2[4]
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
      else
        L12_2 = A0_2
        L11_2 = A0_2.setFillColor
        L13_2 = A2_2[1]
        L14_2 = A2_2[2]
        L15_2 = A2_2[3]
        L11_2(L12_2, L13_2, L14_2, L15_2)
      end
    end
    L11_2 = L8_2.alpha
    if L11_2 then
      L11_2 = L8_2.alpha
      A0_2.alpha = L11_2
    end
    if L7_2 then
      L12_2 = L7_2
      L11_2 = L7_2.insert
      L13_2 = A0_2
      L11_2(L12_2, L13_2)
    else
      L11_2 = log3
      L12_2 = "parent group was nil"
      L11_2(L12_2)
    end
    A0_2.x = L9_2
    A0_2.y = L10_2
    L11_2 = log3
    L12_2 = "new text width"
    L13_2 = A0_2.width
    L11_2(L12_2, L13_2)
  end
  L11_2 = log3
  L12_2 = "Final label x and y"
  L13_2 = A0_2.x
  L14_2 = A0_2.y
  L11_2(L12_2, L13_2, L14_2)
  return A0_2
end

fixedTextSize = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = tonumber
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = tonumber
    L9_2 = A1_2
    L8_2 = L8_2(L9_2)
    if L7_2 == L8_2 then
      A0_2[L5_2] = nil
      return
    end
  end
  L2_2 = warningLog
  L3_2 = "not in table"
  L2_2(L3_2)
end

removeFromTable = L4_1

function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = log3
  L4_2 = "============================     Dumping quest info data       ========================"
  L3_2(L4_2)
  L3_2 = multiCheckValidityAssert
  L4_2 = {}
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L5_2 = "wrong arguman"
  L6_2 = _NAME
  L7_2 = {}
  L8_2 = "string"
  L9_2 = "table"
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = system
  L3_2 = L3_2.pathForFile
  L4_2 = A0_2
  L5_2 = A2_2 or L5_2
  if not A2_2 then
    L5_2 = system
    L5_2 = L5_2.DocumentsDirectory
  end
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = io
  L4_2 = L4_2.open
  L5_2 = L3_2
  L6_2 = "w"
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.write
  L7_2 = L2_1
  L7_2 = L7_2.encode
  L8_2 = A1_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = io
  L5_2 = L5_2.close
  L6_2 = L4_2
  L5_2(L6_2)
  L5_2 = log3
  L6_2 = "============================     End of dump         ========================"
  L5_2(L6_2)
end

write_json_to_file = L4_1

function L4_1()
  local L0_2, L1_2
end

read_json_from_file = L4_1

function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A0_2.height
  L4_2 = A2_2 / L4_2
  L5_2 = A0_2.width
  L5_2 = L5_2 * L4_2
  if A1_2 < L5_2 then
    L6_2 = A0_2.width
    L4_2 = A1_2 / L6_2
  end
  if not A3_2 and 1 < L4_2 then
    return
  end
  L7_2 = A0_2
  L6_2 = A0_2.scale
  L8_2 = L4_2
  L9_2 = L4_2
  L6_2(L7_2, L8_2, L9_2)
end

fitImage = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 then
    L2_2 = A0_2
    L3_2 = ipairs
    L4_2 = A1_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L2_2[L7_2]
      if L8_2 then
        L2_2 = L2_2[L7_2]
      else
        L8_2 = nil
        return L8_2
      end
    end
    L3_2 = true
    return L3_2
  else
    L3_2 = nil
    return L3_2
  end
end

checkUpperTableIndexNil = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = log3
  L2_2 = "Removing all event listeners for event named:"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = Runtime
  L1_2 = L1_2._functionListeners
  if L1_2 ~= nil then
    L1_2 = Runtime
    L1_2 = L1_2._functionListeners
    L1_2[A0_2] = nil
  end
  L1_2 = Runtime
  L1_2 = L1_2._tableListeners
  if L1_2 ~= nil then
    L1_2 = Runtime
    L1_2 = L1_2._tableListeners
    L1_2[A0_2] = nil
  end
end

removeRuntimeListenersForEvent = L4_1

function L4_1(A0_2)
  local L1_2
  A0_2._functionListeners = nil
  A0_2._tableListeners = nil
end

removeAllListeners = L4_1

function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = os
  L0_2 = L0_2.date
  L1_2 = "%z"
  L0_2 = L0_2(L1_2)
  L1_2 = tonumber
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L0_2 = L1_2
  if L0_2 == nil then
    L1_2 = 0
    return L1_2
  end
  L1_2 = true
  if L0_2 < 0 then
    L1_2 = false
    L2_2 = math
    L2_2 = L2_2.abs
    L3_2 = L0_2
    L2_2 = L2_2(L3_2)
    L0_2 = L2_2
  end
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = L0_2 / 100
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 * 100
  L3_2 = L0_2 - L3_2
  L4_2 = L2_2 * 3600
  L5_2 = L3_2 * 60
  L4_2 = L4_2 + L5_2
  if not L1_2 then
    L4_2 = -L4_2
  end
  return L4_2
end

timezone = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2 + A1_2
  L3_2 = os
  L3_2 = L3_2.time
  L3_2 = L3_2()
  L2_2 = L2_2 - L3_2
  L3_2 = nil
  L4_2 = nil
  L5_2 = nil
  if L2_2 < 0 then
    L3_2 = 0
    L4_2 = 0
    L5_2 = 0
  else
    L6_2 = math
    L6_2 = L6_2.floor
    L7_2 = L2_2 / 3600
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
    L6_2 = math
    L6_2 = L6_2.floor
    L7_2 = L3_2 * 60
    L7_2 = L7_2 * 60
    L7_2 = L2_2 - L7_2
    L7_2 = L7_2 / 60
    L6_2 = L6_2(L7_2)
    L4_2 = L6_2
    L6_2 = L3_2 * 60
    L6_2 = L6_2 * 60
    L6_2 = L2_2 - L6_2
    L7_2 = L4_2 * 60
    L5_2 = L6_2 - L7_2
    if L3_2 < 0 then
      L3_2 = 0
    end
    if L4_2 < 0 then
      L4_2 = 0
    end
    if L5_2 < 0 then
      L5_2 = 0
    end
    if L4_2 < 10 then
      L6_2 = "0"
      L7_2 = L4_2
      L4_2 = L6_2 .. L7_2
    end
    if L3_2 < 10 then
      L6_2 = "0"
      L7_2 = L3_2
      L3_2 = L6_2 .. L7_2
    end
    if L5_2 < 10 then
      L6_2 = "0"
      L7_2 = L5_2
      L5_2 = L6_2 .. L7_2
    end
  end
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = L5_2
  return L6_2, L7_2, L8_2, L9_2
end

remainTimeFromNow = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 then
    L2_2 = pairs
    L3_2 = A1_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      if L6_2 == A0_2 then
        L7_2 = true
        return L7_2
      end
    end
  end
  L2_2 = false
  return L2_2
end

doesElementExist = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 == nil then
    L1_2 = 0
    return L1_2
  end
  L1_2 = nil
  L2_2 = nil
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L2_2 = L7_2
    if L1_2 == nil then
      L1_2 = L7_2
    elseif L2_2 > L1_2 then
      L1_2 = L2_2
    end
  end
  return L1_2
end

maximumValueOfTable = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = require
  L3_2 = "Language"
  L2_2 = L2_2(L3_2)
  L3_2 = false
  L4_2 = system
  L4_2 = L4_2.getInfo
  L5_2 = "androidApiLevel"
  L4_2 = L4_2(L5_2)
  if L4_2 == nil then
    L5_2 = -1
    return L5_2
  end
  if 23 <= L4_2 then
    L5_2 = system
    L5_2 = L5_2.getInfo
    L6_2 = "androidGrantedAppPermissions"
    L5_2 = L5_2(L6_2)
    L6_2 = 1
    L7_2 = #L5_2
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = L5_2[L9_2]
      if L10_2 == "android.permission.GET_ACCOUNTS" then
        L3_2 = true
        break
      end
    end
  else
    L3_2 = true
  end
  if L3_2 ~= true then
    function L5_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
      
      L2_3 = pairs
      L3_3 = A0_3.grantedAppPermissions
      L2_3, L3_3, L4_3 = L2_3(L3_3)
      for L5_3, L6_3 in L2_3, L3_3, L4_3 do
        if L6_3 == "Contacts" or L6_3 == "android.permission.GET_ACCOUNTS" then
          L1_3 = true
          break
        end
      end
      if L1_3 then
        L2_3 = A0_2
        L2_3()
      else
        L2_3 = require
        L3_3 = "composer"
        L2_3 = L2_3(L3_3)
        L3_3 = showSimpleDialog
        L4_3 = L2_2
        L4_3 = L4_3["Settings Redirect Title"]
        L5_3 = L2_2
        L5_3 = L5_3["Permission Alert"]
        L6_3 = L2_2
        L6_3 = L6_3.OK
        
        function L7_3()
          local L0_4, L1_4
          L0_4 = L2_3
          L0_4 = L0_4.showOverlay
          L1_4 = A1_2
          L0_4(L1_4)
        end
        
        L3_3(L4_3, L5_3, L6_3, L7_3)
      end
    end
    
    L6_2 = {}
    L6_2.appPermission = "android.permission.GET_ACCOUNTS"
    L6_2.urgency = "Critical"
    L6_2.listener = L5_2
    L7_2 = L2_2["Rationale Title"]
    L6_2.rationaleTitle = L7_2
    L7_2 = L2_2["Rationale Description"]
    L6_2.rationaleDescription = L7_2
    L7_2 = L2_2["Settings Redirect Title"]
    L6_2.settingsRedirectTitle = L7_2
    L7_2 = L2_2["Settings Redirect Description"]
    L6_2.settingsRedirectDescription = L7_2
    L7_2 = native
    L7_2 = L7_2.showPopup
    L8_2 = "requestAppPermission"
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  else
    L5_2 = A0_2
    L5_2()
  end
end

checkContactsPermission = L4_1
