local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Constants"
L0_1 = L0_1(L1_1)
L1_1 = {}

function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = pcall
  
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = A1_2
    L0_3 = L0_3[L1_3]
    return L0_3
  end
  
  L2_2, L3_2 = L2_2(L3_2)
  if L2_2 then
    return L3_2
  end
  L4_2 = nil
  return L4_2
end

function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if not A0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 ~= "table" and L1_2 ~= "userdata" then
    L2_2 = false
    return L2_2
  end
  L2_2 = type
  L3_2 = L2_1
  L4_2 = A0_2
  L5_2 = "insert"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2 = L2_2 == "function"
  return L2_2
end

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1
  L1_2 = L1_2.Path_Assets
  if not L1_2 then
    L1_2 = ""
  end
  if A0_2 and L1_2 ~= "" then
    L2_2 = string
    L2_2 = L2_2.sub
    L3_2 = A0_2
    L4_2 = 1
    L5_2 = #L1_2
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    if L2_2 == L1_2 then
      L2_2 = string
      L2_2 = L2_2.sub
      L3_2 = A0_2
      L4_2 = #L1_2
      L4_2 = L4_2 + 1
      return L2_2(L3_2, L4_2)
    end
  end
  return A0_2
end

function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if not A0_2 or A0_2 == "" then
    L1_2 = false
    return L1_2
  end
  L1_2 = system
  L1_2 = L1_2.pathForFile
  L2_2 = A0_2
  L3_2 = system
  L3_2 = L3_2.DocumentsDirectory
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = io
  L2_2 = L2_2.open
  L3_2 = L1_2
  L4_2 = "rb"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.close
    L3_2(L4_2)
    L3_2 = true
    return L3_2
  end
  L3_2 = false
  return L3_2
end

function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if not A0_2 or A0_2 == "" then
    L2_2 = A0_2
    L3_2 = A1_2
    return L2_2, L3_2
  end
  L2_2 = A1_2 or L2_2
  if not A1_2 then
    L2_2 = system
    L2_2 = L2_2.ResourceDirectory
  end
  L3_2 = A1_2 == nil
  if L3_2 then
    L4_2 = L4_1
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = L0_1
    L5_2 = L5_2.Path_ImageCache
    L6_2 = "/"
    L7_2 = L4_2
    L5_2 = L5_2 .. L6_2 .. L7_2
    L6_2 = L5_1
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = L5_2
      L7_2 = system
      L7_2 = L7_2.DocumentsDirectory
      return L6_2, L7_2
    end
  end
  L4_2 = A0_2
  L5_2 = L2_2
  return L4_2, L5_2
end

L1_1.resolveImageSource = L6_1

function L6_1(...)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = select
  L2_2 = "#"
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = ...
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if L1_2 == 0 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = {}
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = ...
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L2_2[6] = L8_2
  L2_2[7] = L9_2
  L2_2[8] = L10_2
  L2_2[9] = L11_2
  L2_2[10] = L12_2
  L3_2 = 1
  L4_2 = nil
  L5_2 = type
  L6_2 = L2_2[1]
  L5_2 = L5_2(L6_2)
  if L5_2 ~= "string" and 2 <= L1_2 then
    L5_2 = type
    L6_2 = L2_2[2]
    L5_2 = L5_2(L6_2)
    if L5_2 == "string" then
      L5_2 = L3_1
      L6_2 = L2_2[1]
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L4_2 = L2_2[1]
        L3_2 = 2
      end
    end
  end
  L5_2 = L2_2[L3_2]
  L6_2 = type
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if L6_2 ~= "string" then
    L6_2 = nil
    return L6_2
  end
  L6_2 = nil
  L7_2 = nil
  L8_2 = nil
  L9_2 = L3_2 + 1
  L10_2 = L2_2[L9_2]
  L11_2 = type
  L12_2 = L10_2
  L11_2 = L11_2(L12_2)
  if L11_2 == "number" then
    L7_2 = L10_2
    L11_2 = L9_2 + 1
    L8_2 = L2_2[L11_2]
  else
    L6_2 = L10_2
    L11_2 = L9_2 + 1
    L7_2 = L2_2[L11_2]
    L11_2 = L9_2 + 2
    L8_2 = L2_2[L11_2]
  end
  L11_2 = type
  L12_2 = L7_2
  L11_2 = L11_2(L12_2)
  if L11_2 == "number" then
    L11_2 = type
    L12_2 = L8_2
    L11_2 = L11_2(L12_2)
    if L11_2 == "number" then
      goto lbl_70
    end
  end
  L11_2 = nil
  do return L11_2 end
  ::lbl_70::
  L11_2 = {}
  L11_2.parent = L4_2
  L11_2.filename = L5_2
  L11_2.baseDir = L6_2
  L11_2.width = L7_2
  L11_2.height = L8_2
  return L11_2
end

function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2.parent
  if L4_2 then
    if A3_2 then
      L4_2 = A0_2
      L5_2 = A1_2.parent
      L6_2 = A2_2
      L7_2 = A3_2
      L8_2 = A1_2.width
      L9_2 = A1_2.height
      return L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    else
      L4_2 = A0_2
      L5_2 = A1_2.parent
      L6_2 = A2_2
      L7_2 = A1_2.width
      L8_2 = A1_2.height
      return L4_2(L5_2, L6_2, L7_2, L8_2)
    end
  end
  if A3_2 then
    L4_2 = A0_2
    L5_2 = A2_2
    L6_2 = A3_2
    L7_2 = A1_2.width
    L8_2 = A1_2.height
    return L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L4_2 = A0_2
  L5_2 = A2_2
  L6_2 = A1_2.width
  L7_2 = A1_2.height
  return L4_2(L5_2, L6_2, L7_2)
end

function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = display
  L0_2 = L0_2._imageSourceOverrideApplied
  if L0_2 then
    return
  end
  L0_2 = display
  L0_2 = L0_2.newImageRect
  L1_2 = display
  L1_2._originalNewImageRect = L0_2
  
  function L1_2(...)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = L6_1
    L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = ...
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    if not L1_3 then
      L2_3 = L0_2
      L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = ...
      return L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    end
    L2_3 = L1_1
    L2_3 = L2_3.resolveImageSource
    L3_3 = L1_3.filename
    L4_3 = L1_3.baseDir
    L2_3, L3_3 = L2_3(L3_3, L4_3)
    L4_3 = L3_3
    L5_3 = L1_3.baseDir
    if L5_3 == nil then
      L5_3 = system
      L5_3 = L5_3.ResourceDirectory
      if L4_3 == L5_3 then
        L4_3 = nil
      end
    end
    L5_3 = L7_1
    L6_3 = L0_2
    L7_3 = L1_3
    L8_3 = L2_3
    L9_3 = L4_3
    return L5_3(L6_3, L7_3, L8_3, L9_3)
  end
  
  L2_2 = display
  L2_2.newImageRect = L1_2
  L2_2 = display
  L2_2._imageSourceOverrideApplied = true
end

L1_1.applyNewImageRectOverride = L8_1
L8_1 = L1_1.applyNewImageRectOverride
L8_1()
return L1_1
