local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1
L0_1 = require
L1_1 = "composer"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Models.Player"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Language"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "widget"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "json"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Views.ActivityIndicatorView"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Models.ErrorController"
L6_1 = L6_1(L7_1)
L7_1 = L0_1.newScene
L7_1 = L7_1()
L8_1 = nil
L9_1 = nil
L10_1 = nil

function L11_1()
  local L0_2, L1_2
  L0_2 = emailField
  L0_2.isVisible = true
  L0_2 = passwordField
  L0_2.isVisible = true
  L0_2 = nameField
  L0_2.isVisible = true
  L0_2 = repeatPasswordField
  L0_2.isVisible = true
end

function L12_1()
  local L0_2, L1_2
  L0_2 = emailField
  L0_2.isVisible = false
  L0_2 = passwordField
  L0_2.isVisible = false
  L0_2 = nameField
  L0_2.isVisible = false
  L0_2 = repeatPasswordField
  L0_2.isVisible = false
  L0_2 = native
  L0_2 = L0_2.setKeyboardFocus
  L1_2 = nil
  L0_2(L1_2)
end

function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = system
  L2_2 = L2_2.pathForFile
  L3_2 = A1_2
  L4_2 = system
  L4_2 = L4_2.DocumentsDirectory
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = io
  L3_2 = L3_2.open
  L4_2 = L2_2
  L5_2 = "w"
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = L4_1
    L4_2 = L4_2.encode
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L6_2 = L3_2
    L5_2 = L3_2.write
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = io
    L5_2 = L5_2.close
    L6_2 = L3_2
    L5_2(L6_2)
    L5_2 = true
    return L5_2
  else
    L4_2 = false
    return L4_2
  end
end

saveTable = L13_1

function L13_1()
  local L0_2, L1_2, L2_2
  L0_2 = L12_1
  L0_2()
  L0_2 = L5_1
  L0_2 = L0_2.hide
  L0_2()
  L0_2 = saveTable
  L1_2 = {}
  L2_2 = emailField
  L2_2 = L2_2.text
  L1_2.email = L2_2
  L2_2 = passwordField
  L2_2 = L2_2.text
  L1_2.password = L2_2
  L2_2 = "userAcount.json"
  L0_2(L1_2, L2_2)
  L0_2 = showSimpleDialog
  L1_2 = "\216\171\216\168\216\170 \217\134\216\167\217\133"
  L2_2 = "\216\171\216\168\216\170 \217\134\216\167\217\133 \216\167\217\134\216\172\216\167\217\133 \216\180\216\175. \216\170\216\167\219\140\219\140\216\175\219\140\217\135 \216\168\217\135 \216\167\219\140\217\133\219\140\217\132 \216\180\217\133\216\167 \216\167\216\177\216\179\216\167\217\132 \216\180\216\175"
  L0_2(L1_2, L2_2)
end

successToRegisterCallback = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = _G
  L1_2.notLoading = false
  L1_2 = L12_1
  L1_2()
  L1_2 = L5_1
  L1_2 = L1_2.hide
  L1_2()
  L1_2 = showSimpleDialog
  L2_2 = "\216\171\216\168\216\170 \217\134\216\167\217\133"
  L3_2 = A0_2
  L4_2 = nil
  
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Utils.SibcheRegisterOverlay"
    L2_3 = {}
    L2_3.isModal = true
    L2_3.effect = "fade"
    L3_3 = {}
    L4_3 = purchaseItemUID
    L3_3.UID = L4_3
    L4_3 = {}
    L5_3 = nameField
    L5_3 = L5_3.text
    L4_3.username = L5_3
    L5_3 = emailField
    L5_3 = L5_3.text
    L4_3.email = L5_3
    L5_3 = passwordField
    L5_3 = L5_3.text
    L4_3.password = L5_3
    L3_3.textFieldContent = L4_3
    L2_3.params = L3_3
    L0_3(L1_3, L2_3)
    L0_3 = L11_1
    L0_3()
  end
  
  L1_2(L2_2, L3_2, L4_2, L5_2)
end

failedToRegisterCallback = L13_1

function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.phase
  if "began" == L1_2 then
    L1_2 = log3
    L2_2 = "TEXT EDITING IS BEGAN"
    L1_2(L2_2)
    L1_2 = A0_2.target
    L1_2 = L1_2.delegate
    L1_2 = L1_2.view
    L2_2 = transition
    L2_2 = L2_2.to
    L3_2 = L1_2
    L4_2 = {}
    L5_2 = A0_2.target
    L5_2 = L5_2.id
    L5_2 = L5_2 * -20
    L4_2.y = L5_2
    L4_2.time = 500
    L2_2(L3_2, L4_2)
    L2_2 = transition
    L2_2 = L2_2.to
    L3_2 = nameField
    L4_2 = {}
    L5_2 = L9_1
    L5_2 = L5_2.y
    L5_2 = L5_2 - 75
    L6_2 = A0_2.target
    L6_2 = L6_2.id
    L6_2 = 20 * L6_2
    L5_2 = L5_2 - L6_2
    L5_2 = L5_2 + 10
    L4_2.y = L5_2
    L4_2.time = 500
    L2_2(L3_2, L4_2)
    L2_2 = transition
    L2_2 = L2_2.to
    L3_2 = emailField
    L4_2 = {}
    L5_2 = L9_1
    L5_2 = L5_2.y
    L5_2 = L5_2 - 35
    L6_2 = A0_2.target
    L6_2 = L6_2.id
    L6_2 = 20 * L6_2
    L5_2 = L5_2 - L6_2
    L5_2 = L5_2 + 10
    L4_2.y = L5_2
    L4_2.time = 500
    L2_2(L3_2, L4_2)
    L2_2 = transition
    L2_2 = L2_2.to
    L3_2 = passwordField
    L4_2 = {}
    L5_2 = L9_1
    L5_2 = L5_2.y
    L5_2 = L5_2 + 10
    L6_2 = A0_2.target
    L6_2 = L6_2.id
    L6_2 = 20 * L6_2
    L5_2 = L5_2 - L6_2
    L5_2 = L5_2 + 10
    L4_2.y = L5_2
    L4_2.time = 500
    L2_2(L3_2, L4_2)
    L2_2 = transition
    L2_2 = L2_2.to
    L3_2 = repeatPasswordField
    L4_2 = {}
    L5_2 = L9_1
    L5_2 = L5_2.y
    L5_2 = L5_2 + 50
    L6_2 = A0_2.target
    L6_2 = L6_2.id
    L6_2 = 20 * L6_2
    L5_2 = L5_2 - L6_2
    L5_2 = L5_2 + 10
    L4_2.y = L5_2
    L4_2.time = 500
    L2_2(L3_2, L4_2)
    L2_2 = L8_1
    L3_2 = L8_1
    L3_2 = L3_2.height
    L3_2 = L3_2 / 2
    L2_2.y = L3_2
  end
  L1_2 = A0_2.phase
  if "submitted" == L1_2 then
    L1_2 = A0_2.target
    L1_2 = L1_2.delegate
    L1_2 = L1_2.view
    L1_2.y = 0
    L2_2 = nameField
    L3_2 = L9_1
    L3_2 = L3_2.y
    L3_2 = L3_2 - 75
    L3_2 = L3_2 + 10
    L2_2.y = L3_2
    L2_2 = emailField
    L3_2 = L9_1
    L3_2 = L3_2.y
    L3_2 = L3_2 - 35
    L3_2 = L3_2 + 10
    L2_2.y = L3_2
    L2_2 = passwordField
    L3_2 = L9_1
    L3_2 = L3_2.y
    L3_2 = L3_2 + 10
    L3_2 = L3_2 + 10
    L2_2.y = L3_2
    L2_2 = repeatPasswordField
    L3_2 = L9_1
    L3_2 = L3_2.y
    L3_2 = L3_2 + 50
    L3_2 = L3_2 + 10
    L2_2.y = L3_2
    L2_2 = L8_1
    L3_2 = L1_2.y
    L4_2 = L8_1
    L4_2 = L4_2.height
    L4_2 = L4_2 / 2
    L3_2 = L3_2 + L4_2
    L2_2.y = L3_2
    L2_2 = native
    L2_2 = L2_2.setKeyboardFocus
    L3_2 = nil
    L2_2(L3_2)
  end
end

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = network
    L1_3 = L1_3.parseResposeHeader
    L2_3 = A0_3.responseHeaders
    L1_3(L2_3)
    L1_3 = A0_3.isError
    if L1_3 then
      L1_3 = log
      L2_3 = "Network error! Failed cooldown card."
      L1_3(L2_3)
      L1_3 = A1_2
      if L1_3 ~= nil then
        L1_3 = A1_2
        L2_3 = "Network error"
        L1_3(L2_3)
      end
    else
      L1_3 = log3
      L2_3 = " !!!!!server Response!!!!!!"
      L3_3 = A0_3.response
      L1_3(L2_3, L3_3)
      L1_3 = L4_1
      L1_3 = L1_3.decode
      L2_3 = A0_3.response
      L1_3 = L1_3(L2_3)
      L2_3 = L1_3.status
      if L2_3 == true then
        L2_3 = A0_2
        if L2_3 ~= nil then
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
          L3_3 = L1_3.data
          if L3_3 then
            L3_3 = L1_3.data
            L3_3 = L3_3.code
            if L3_3 then
              L3_3 = L6_1
              L3_3 = L3_3.getErrorMessage
              L4_3 = L1_3.data
              L3_3 = L3_3(L4_3)
              L2_3 = L3_3 or L2_3
              if not L3_3 then
                L3_3 = tostring
                L4_3 = L1_3.data
                L4_3 = L4_3.code
                L3_3 = L3_3(L4_3)
                L2_3 = L3_3
              end
            end
          else
            L3_3 = L1_3.error
            if L3_3 then
              L3_3 = L1_3.error
              L2_3 = L3_3 or L2_3
              if not L3_3 then
                L2_3 = "Response did not return success status"
              end
            end
          end
          L3_3 = A1_2
          if L3_3 ~= nil then
            L3_3 = A1_2
            L4_3 = L2_3
            L3_3(L4_3)
          end
        end
      end
    end
  end
  
  L3_2 = nameField
  L3_2 = L3_2.text
  if L3_2 == "" then
    L3_2 = showSimpleDialog
    L4_2 = "\216\171\216\168\216\170 \217\134\216\167\217\133"
    L5_2 = "\217\134\216\167\217\133 \218\169\216\167\216\177\216\168\216\177\219\140 \216\177\216\167 \217\136\216\167\216\177\216\175 \217\134\217\133\216\167\219\140\219\140\216\175"
    L6_2 = nil
    
    function L7_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = L0_1
      L0_3 = L0_3.showOverlay
      L1_3 = "Utils.SibcheRegisterOverlay"
      L2_3 = {}
      L2_3.isModal = true
      L3_3 = {}
      L4_3 = purchaseItemUID
      L3_3.UID = L4_3
      L4_3 = {}
      L5_3 = nameField
      L5_3 = L5_3.text
      L4_3.username = L5_3
      L5_3 = emailField
      L5_3 = L5_3.text
      L4_3.email = L5_3
      L3_3.textFieldContent = L4_3
      L2_3.params = L3_3
      L0_3(L1_3, L2_3)
    end
    
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = emailField
    L3_2 = L3_2.text
    if L3_2 == "" then
      L3_2 = showSimpleDialog
      L4_2 = "\216\171\216\168\216\170 \217\134\216\167\217\133"
      L5_2 = "\217\190\216\179\216\170 \216\167\217\132\218\169\216\170\216\177\217\136\217\134\219\140\218\169 \216\177\216\167 \217\136\216\167\216\177\216\175 \217\134\217\133\216\167\219\140\219\140\216\175"
      L6_2 = nil
      
      function L7_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
        L0_3 = L0_1
        L0_3 = L0_3.showOverlay
        L1_3 = "Utils.SibcheRegisterOverlay"
        L2_3 = {}
        L2_3.isModal = true
        L3_3 = {}
        L4_3 = purchaseItemUID
        L3_3.UID = L4_3
        L4_3 = {}
        L5_3 = nameField
        L5_3 = L5_3.text
        L4_3.username = L5_3
        L5_3 = emailField
        L5_3 = L5_3.text
        L4_3.email = L5_3
        L3_3.textFieldContent = L4_3
        L2_3.params = L3_3
        L0_3(L1_3, L2_3)
      end
      
      L3_2(L4_2, L5_2, L6_2, L7_2)
    else
      L3_2 = passwordField
      L3_2 = L3_2.text
      if L3_2 == "" then
        L3_2 = showSimpleDialog
        L4_2 = "\216\171\216\168\216\170 \217\134\216\167\217\133"
        L5_2 = "\216\177\217\133\216\178 \216\185\216\168\217\136\216\177 \216\177\216\167 \217\136\216\167\216\177\216\175 \217\134\217\133\216\167\219\140\219\140\216\175"
        L6_2 = nil
        
        function L7_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
          L0_3 = L0_1
          L0_3 = L0_3.showOverlay
          L1_3 = "Utils.SibcheRegisterOverlay"
          L2_3 = {}
          L2_3.isModal = true
          L3_3 = {}
          L4_3 = purchaseItemUID
          L3_3.UID = L4_3
          L4_3 = {}
          L5_3 = nameField
          L5_3 = L5_3.text
          L4_3.username = L5_3
          L5_3 = emailField
          L5_3 = L5_3.text
          L4_3.email = L5_3
          L3_3.textFieldContent = L4_3
          L2_3.params = L3_3
          L0_3(L1_3, L2_3)
        end
        
        L3_2(L4_2, L5_2, L6_2, L7_2)
      else
        L3_2 = repeatPasswordField
        L3_2 = L3_2.text
        if L3_2 == "" then
          L3_2 = showSimpleDialog
          L4_2 = "\216\171\216\168\216\170 \217\134\216\167\217\133"
          L5_2 = "\216\177\217\133\216\178 \216\185\216\168\217\136\216\177 \217\133\216\172\216\175\216\175 \216\177\216\167 \217\136\216\167\216\177\216\175 \217\134\217\133\216\167\219\140\219\140\216\175"
          L6_2 = nil
          
          function L7_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
            L0_3 = L0_1
            L0_3 = L0_3.showOverlay
            L1_3 = "Utils.SibcheRegisterOverlay"
            L2_3 = {}
            L2_3.isModal = true
            L3_3 = {}
            L4_3 = purchaseItemUID
            L3_3.UID = L4_3
            L4_3 = {}
            L5_3 = nameField
            L5_3 = L5_3.text
            L4_3.username = L5_3
            L5_3 = emailField
            L5_3 = L5_3.text
            L4_3.email = L5_3
            L3_3.textFieldContent = L4_3
            L2_3.params = L3_3
            L0_3(L1_3, L2_3)
          end
          
          L3_2(L4_2, L5_2, L6_2, L7_2)
        else
          L3_2 = passwordField
          L3_2 = L3_2.text
          L4_2 = repeatPasswordField
          L4_2 = L4_2.text
          if L3_2 ~= L4_2 then
            L3_2 = showSimpleDialog
            L4_2 = "\216\171\216\168\216\170 \217\134\216\167\217\133"
            L5_2 = "\216\177\217\133\216\178 \216\185\216\168\217\136\216\177 \217\133\216\172\216\175\216\175 \216\177\216\167 \216\167\216\180\216\170\216\168\216\167\217\135 \217\136\216\167\216\177\216\175 \218\169\216\177\216\175\217\135 \216\167\219\140\216\175"
            L6_2 = nil
            
            function L7_2()
              local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
              L0_3 = L0_1
              L0_3 = L0_3.showOverlay
              L1_3 = "Utils.SibcheRegisterOverlay"
              L2_3 = {}
              L2_3.isModal = true
              L3_3 = {}
              L4_3 = purchaseItemUID
              L3_3.UID = L4_3
              L4_3 = {}
              L5_3 = nameField
              L5_3 = L5_3.text
              L4_3.username = L5_3
              L5_3 = emailField
              L5_3 = L5_3.text
              L4_3.email = L5_3
              L3_3.textFieldContent = L4_3
              L2_3.params = L3_3
              L0_3(L1_3, L2_3)
            end
            
            L3_2(L4_2, L5_2, L6_2, L7_2)
          else
            L3_2 = string
            L3_2 = L3_2.find
            L4_2 = emailField
            L4_2 = L4_2.text
            L5_2 = "@"
            L3_2 = L3_2(L4_2, L5_2)
            if L3_2 then
              L3_2 = string
              L3_2 = L3_2.find
              L4_2 = emailField
              L4_2 = L4_2.text
              L5_2 = "www."
              L3_2 = L3_2(L4_2, L5_2)
              if not L3_2 then
                goto lbl_92
              end
            end
            L3_2 = showSimpleDialog
            L4_2 = "\216\171\216\168\216\170 \217\134\216\167\217\133"
            L5_2 = "\217\132\216\183\217\129\216\167\217\134 \217\190\216\179\216\170 \216\167\217\132\218\169\216\170\216\177\217\136\217\134\219\140\218\169 \216\181\216\173\219\140\216\173 \216\177\216\167 \217\136\216\167\216\177\216\175 \218\169\217\134\219\140\216\175"
            L6_2 = nil
            
            function L7_2()
              local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
              L0_3 = L0_1
              L0_3 = L0_3.showOverlay
              L1_3 = "Utils.SibcheRegisterOverlay"
              L2_3 = {}
              L2_3.isModal = true
              L3_3 = {}
              L4_3 = purchaseItemUID
              L3_3.UID = L4_3
              L4_3 = {}
              L5_3 = nameField
              L5_3 = L5_3.text
              L4_3.username = L5_3
              L5_3 = emailField
              L5_3 = L5_3.text
              L4_3.email = L5_3
              L3_3.textFieldContent = L4_3
              L2_3.params = L3_3
              L0_3(L1_3, L2_3)
            end
            
            L3_2(L4_2, L5_2, L6_2, L7_2)
            goto lbl_162
            ::lbl_92::
            L3_2 = string
            L3_2 = L3_2.len
            L4_2 = passwordField
            L4_2 = L4_2.text
            L3_2 = L3_2(L4_2)
            if L3_2 < 6 then
              L3_2 = showSimpleDialog
              L4_2 = "\216\171\216\168\216\170 \217\134\216\167\217\133"
              L5_2 = "\216\177\217\133\216\178 \216\185\216\168\217\136\216\177 \216\173\216\175\216\167\217\130\217\132 \219\182 \216\173\216\177\217\129 \216\167\216\179\216\170"
              L6_2 = nil
              
              function L7_2()
                local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
                L0_3 = L0_1
                L0_3 = L0_3.showOverlay
                L1_3 = "Utils.SibcheRegisterOverlay"
                L2_3 = {}
                L2_3.isModal = true
                L3_3 = {}
                L4_3 = purchaseItemUID
                L3_3.UID = L4_3
                L4_3 = {}
                L5_3 = nameField
                L5_3 = L5_3.text
                L4_3.username = L5_3
                L5_3 = emailField
                L5_3 = L5_3.text
                L4_3.email = L5_3
                L3_3.textFieldContent = L4_3
                L2_3.params = L3_3
                L0_3(L1_3, L2_3)
              end
              
              L3_2(L4_2, L5_2, L6_2, L7_2)
            else
              L3_2 = log3
              L4_2 = " request hasn been sent"
              L3_2(L4_2)
              L3_2 = "email_address="
              L4_2 = emailField
              L4_2 = L4_2.text
              L3_2 = L3_2 .. L4_2
              postData = L3_2
              L3_2 = postData
              L4_2 = "&password="
              L5_2 = passwordField
              L5_2 = L5_2.text
              L3_2 = L3_2 .. L4_2 .. L5_2
              postData = L3_2
              L3_2 = postData
              L4_2 = "&username="
              L5_2 = nameField
              L5_2 = L5_2.text
              L3_2 = L3_2 .. L4_2 .. L5_2
              postData = L3_2
              L3_2 = postData
              L4_2 = "&UDID="
              L5_2 = system
              L5_2 = L5_2.getInfo
              L6_2 = "deviceID"
              L5_2 = L5_2(L6_2)
              L3_2 = L3_2 .. L4_2 .. L5_2
              postData = L3_2
              L3_2 = {}
              params = L3_2
              L3_2 = params
              L4_2 = postData
              L3_2.body = L4_2
              L3_2 = params
              L4_2 = network
              L4_2 = L4_2.getDefaultHeader
              L4_2 = L4_2()
              L3_2.headers = L4_2
              L3_2 = network
              L3_2 = L3_2.request
              L4_2 = Constants
              L4_2 = L4_2.Sibche_BaseURL
              L5_2 = Constants
              L5_2 = L5_2.API_SibcheRegister
              L4_2 = L4_2 .. L5_2
              L5_2 = "POST"
              L6_2 = L2_2
              L7_2 = params
              L3_2(L4_2, L5_2, L6_2, L7_2)
              L3_2 = L12_1
              L3_2()
              L3_2 = L5_1
              L3_2 = L3_2.show
              L4_2 = "\216\171\216\168\216\170 \217\134\216\167\217\133"
              L3_2(L4_2)
            end
          end
        end
      end
    end
  end
  ::lbl_162::
end

didPressRegister = L14_1

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = A0_2.view
  L3_2 = display
  L3_2 = L3_2.newRect
  L4_2 = A0_2.view
  L5_2 = -200
  L6_2 = -200
  L7_2 = 1000
  L8_2 = 1000
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L8_1 = L3_2
  L3_2 = L8_1
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L3_2 = L8_1
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L3_2.y = L4_2
  L3_2 = L8_1
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0.58823529
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = L8_1
  L4_2 = L3_2
  L3_2 = L3_2.addEventListener
  L5_2 = "touch"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L8_1
  L4_2 = L3_2
  L3_2 = L3_2.addEventListener
  L5_2 = "tap"
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = true
    return L0_3
  end
  
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = display
  L3_2 = L3_2.newRoundedRect
  L4_2 = A0_2.view
  L5_2 = 0
  L6_2 = 0
  L7_2 = 280
  L8_2 = 295
  L9_2 = 3
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L9_1 = L3_2
  L3_2 = L9_1
  L3_2.strokeWidth = 2
  L3_2 = L9_1
  L4_2 = L3_2
  L3_2 = L3_2.setStrokeColor
  L5_2 = Constants
  L5_2 = L5_2.greenColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L3_2 = L9_1
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = 1
  L6_2 = 1
  L7_2 = 1
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L9_1
  L4_2 = display
  L4_2 = L4_2.contentWidth
  L4_2 = L4_2 / 2
  L3_2.x = L4_2
  L3_2 = L9_1
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L4_2 = L4_2 / 2
  L3_2.y = L4_2
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A0_2.view
  L5_2 = "\217\136\216\177\217\136\216\175"
  L6_2 = 0
  L7_2 = 0
  L8_2 = Constants
  L8_2 = L8_2.fontForTitle
  L8_2 = L8_2()
  L9_2 = 20
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = Constants
  L6_2 = L6_2.darkBlueColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L4_2 = L9_1
  L4_2 = L4_2.x
  L3_2.x = L4_2
  L4_2 = display
  L4_2 = L4_2.contentHeight
  L5_2 = L9_1
  L5_2 = L5_2.height
  L4_2 = L4_2 - L5_2
  L4_2 = L4_2 / 2
  L4_2 = L4_2 + 10
  L5_2 = L3_2.height
  L5_2 = L5_2 / 2
  L4_2 = L4_2 + L5_2
  L3_2.y = L4_2
  L4_2 = L3_1
  L4_2 = L4_2.newButton
  L5_2 = {}
  L5_2.width = 30
  L5_2.height = 30
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "General/FC-backBotton.png"
  L6_2 = L6_2 .. L7_2
  L5_2.defaultFile = L6_2
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "General/FC-backBotton-pressed.png"
  L6_2 = L6_2 .. L7_2
  L5_2.overFile = L6_2
  
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = L0_1
    L0_3 = L0_3.showOverlay
    L1_3 = "Utils.SibcheLoginOverlay"
    L2_3 = {}
    L2_3.isModal = true
    L3_3 = {}
    L4_3 = purchaseItemUID
    L3_3.UID = L4_3
    L2_3.params = L3_3
    L0_3(L1_3, L2_3)
  end
  
  L5_2.onRelease = L6_2
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2.view
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L4_2.delegate = A0_2
  L5_2 = display
  L5_2 = L5_2.contentWidth
  L6_2 = L9_1
  L6_2 = L6_2.width
  L5_2 = L5_2 - L6_2
  L5_2 = L5_2 / 2
  L5_2 = L5_2 + 10
  L6_2 = L4_2.width
  L6_2 = L6_2 / 2
  L5_2 = L5_2 + L6_2
  L4_2.x = L5_2
  L5_2 = L3_2.y
  L4_2.y = L5_2
  L5_2 = L3_1
  L5_2 = L5_2.newButton
  L6_2 = {}
  L6_2.width = 30
  L6_2.height = 30
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "BattleItems/close.png"
  L7_2 = L7_2 .. L8_2
  L6_2.defaultFile = L7_2
  L7_2 = Constants
  L7_2 = L7_2.Path_Assets
  L8_2 = "BattleItems/close-pressed.png"
  L7_2 = L7_2 .. L8_2
  L6_2.overFile = L7_2
  
  function L7_2()
    local L0_3, L1_3
    L0_3 = L0_1
    L0_3 = L0_3.hideOverlay
    L0_3()
    L0_3 = native
    L0_3 = L0_3.cancelWebPopup
    L0_3()
  end
  
  L6_2.onRelease = L7_2
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2.view
  L7_2 = L6_2
  L6_2 = L6_2.insert
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L5_2.delegate = A0_2
  L6_2 = display
  L6_2 = L6_2.contentWidth
  L7_2 = L9_1
  L7_2 = L7_2.width
  L6_2 = L6_2 + L7_2
  L6_2 = L6_2 / 2
  L6_2 = L6_2 - 10
  L7_2 = L5_2.width
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L5_2.x = L6_2
  L6_2 = L3_2.y
  L5_2.y = L6_2
  L6_2 = display
  L6_2 = L6_2.newRoundedRect
  L7_2 = A0_2.view
  L8_2 = 0
  L9_2 = 0
  L10_2 = L9_1
  L10_2 = L10_2.width
  L10_2 = L10_2 - 20
  L11_2 = L9_1
  L11_2 = L11_2.height
  L11_2 = L11_2 - 60
  L12_2 = 3
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = L6_2
  L7_2 = L6_2.setFillColor
  L9_2 = Constants
  L9_2 = L9_2.lightBlueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = L6_2
  L7_2 = L6_2.setStrokeColor
  L9_2 = Constants
  L9_2 = L9_2.blueColor
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2()
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L6_2.strokeWidth = 1
  L7_2 = L9_1
  L7_2 = L7_2.x
  L6_2.x = L7_2
  L7_2 = L9_1
  L7_2 = L7_2.y
  L7_2 = L7_2 + 20
  L6_2.y = L7_2
  L7_2 = display
  L7_2 = L7_2.newText
  L8_2 = A0_2.view
  L9_2 = "\217\134\216\167\217\133 \218\169\216\167\216\177\216\168\216\177\219\140 :"
  L10_2 = 0
  L11_2 = 0
  L12_2 = Constants
  L12_2 = L12_2.fontForSubtitle
  L12_2 = L12_2()
  L13_2 = 13
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L9_2 = L7_2
  L8_2 = L7_2.setFillColor
  L10_2 = Constants
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 / 2
  L8_2 = L8_2 + 85
  L7_2.x = L8_2
  L8_2 = L9_1
  L8_2 = L8_2.y
  L8_2 = L8_2 - 90
  L7_2.y = L8_2
  L8_2 = native
  L8_2 = L8_2.newTextField
  L9_2 = display
  L9_2 = L9_2.contentWidth
  L9_2 = L9_2 / 2
  L9_2 = L9_2 - 120
  L10_2 = L9_1
  L10_2 = L10_2.y
  L10_2 = L10_2 - 75
  L11_2 = 240
  L12_2 = 20
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  nameField = L8_2
  L8_2 = nameField
  L9_2 = L13_1
  L8_2.userInput = L9_2
  L8_2 = nameField
  L9_2 = L8_2
  L8_2 = L8_2.addEventListener
  L10_2 = "userInput"
  L11_2 = L13_1
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = nameField
  L8_2.isVisible = false
  L8_2 = nameField
  L9_2 = Constants
  L9_2 = L9_2.nativeFontForTextFields
  L9_2 = L9_2()
  L8_2.font = L9_2
  L8_2 = nameField
  L9_2 = L8_2
  L8_2 = L8_2.setFillColor
  L10_2 = Constants
  L10_2 = L10_2.darkBlueColor
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2()
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = nameField
  L8_2.delegate = A0_2
  L8_2 = nameField
  L8_2.id = 1
  L8_2 = display
  L8_2 = L8_2.newText
  L9_2 = A0_2.view
  L10_2 = "\217\190\216\179\216\170 \216\167\217\132\218\169\216\170\216\177\217\136\217\134\219\140\218\169 :"
  L11_2 = 0
  L12_2 = 0
  L13_2 = Constants
  L13_2 = L13_2.fontForSubtitle
  L13_2 = L13_2()
  L14_2 = 13
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L10_2 = L8_2
  L9_2 = L8_2.setFillColor
  L11_2 = Constants
  L11_2 = L11_2.darkBlueColor
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L11_2()
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L9_2 = display
  L9_2 = L9_2.contentWidth
  L9_2 = L9_2 / 2
  L9_2 = L9_2 + 85
  L8_2.x = L9_2
  L9_2 = L9_1
  L9_2 = L9_2.y
  L9_2 = L9_2 - 50
  L8_2.y = L9_2
  L9_2 = native
  L9_2 = L9_2.newTextField
  L10_2 = display
  L10_2 = L10_2.contentWidth
  L10_2 = L10_2 / 2
  L10_2 = L10_2 - 120
  L11_2 = L9_1
  L11_2 = L11_2.y
  L11_2 = L11_2 - 35
  L12_2 = 240
  L13_2 = 20
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  emailField = L9_2
  L9_2 = emailField
  L10_2 = L13_1
  L9_2.userInput = L10_2
  L9_2 = emailField
  L10_2 = L9_2
  L9_2 = L9_2.addEventListener
  L11_2 = "userInput"
  L12_2 = L13_1
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = emailField
  L9_2.isVisible = false
  L9_2 = emailField
  L10_2 = Constants
  L10_2 = L10_2.nativeFontForTextFields
  L10_2 = L10_2()
  L9_2.font = L10_2
  L9_2 = emailField
  L10_2 = L9_2
  L9_2 = L9_2.setFillColor
  L11_2 = Constants
  L11_2 = L11_2.darkBlueColor
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L11_2()
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L9_2 = emailField
  L9_2.delegate = A0_2
  L9_2 = emailField
  L9_2.id = 2
  L9_2 = display
  L9_2 = L9_2.newText
  L10_2 = A0_2.view
  L11_2 = "\216\177\217\133\216\178 \216\185\216\168\217\136\216\177 :"
  L12_2 = 0
  L13_2 = 0
  L14_2 = Constants
  L14_2 = L14_2.fontForSubtitle
  L14_2 = L14_2()
  L15_2 = 13
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L11_2 = L9_2
  L10_2 = L9_2.setFillColor
  L12_2 = Constants
  L12_2 = L12_2.darkBlueColor
  L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2 = display
  L10_2 = L10_2.contentWidth
  L10_2 = L10_2 / 2
  L10_2 = L10_2 + 100
  L9_2.x = L10_2
  L10_2 = L9_1
  L10_2 = L10_2.y
  L10_2 = L10_2 - 3
  L9_2.y = L10_2
  L10_2 = native
  L10_2 = L10_2.newTextField
  L11_2 = display
  L11_2 = L11_2.contentWidth
  L11_2 = L11_2 / 2
  L11_2 = L11_2 - 120
  L12_2 = L9_1
  L12_2 = L12_2.y
  L12_2 = L12_2 + 10
  L13_2 = 240
  L14_2 = 20
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  passwordField = L10_2
  L10_2 = passwordField
  L11_2 = L13_1
  L10_2.userInput = L11_2
  L10_2 = passwordField
  L11_2 = L10_2
  L10_2 = L10_2.addEventListener
  L12_2 = "userInput"
  L13_2 = L13_1
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = passwordField
  L10_2.isVisible = false
  L10_2 = passwordField
  L11_2 = Constants
  L11_2 = L11_2.nativeFontForTextFields
  L11_2 = L11_2()
  L10_2.font = L11_2
  L10_2 = passwordField
  L11_2 = L10_2
  L10_2 = L10_2.setFillColor
  L12_2 = Constants
  L12_2 = L12_2.darkBlueColor
  L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2()
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L10_2 = passwordField
  L10_2.delegate = A0_2
  L10_2 = passwordField
  L10_2.id = 3
  L10_2 = passwordField
  L10_2.isSecure = true
  L10_2 = display
  L10_2 = L10_2.newText
  L11_2 = A0_2.view
  L12_2 = "\216\170\218\169\216\177\216\167\216\177 \216\177\217\133\216\178 \216\185\216\168\217\136\216\177 :"
  L13_2 = 0
  L14_2 = 0
  L15_2 = Constants
  L15_2 = L15_2.fontForSubtitle
  L15_2 = L15_2()
  L16_2 = 13
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L12_2 = L10_2
  L11_2 = L10_2.setFillColor
  L13_2 = Constants
  L13_2 = L13_2.darkBlueColor
  L13_2, L14_2, L15_2, L16_2 = L13_2()
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L11_2 = display
  L11_2 = L11_2.contentWidth
  L11_2 = L11_2 / 2
  L11_2 = L11_2 + 85
  L10_2.x = L11_2
  L11_2 = L9_1
  L11_2 = L11_2.y
  L11_2 = L11_2 + 37
  L10_2.y = L11_2
  L11_2 = native
  L11_2 = L11_2.newTextField
  L12_2 = display
  L12_2 = L12_2.contentWidth
  L12_2 = L12_2 / 2
  L12_2 = L12_2 - 120
  L13_2 = L9_1
  L13_2 = L13_2.y
  L13_2 = L13_2 + 50
  L14_2 = 240
  L15_2 = 20
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  repeatPasswordField = L11_2
  L11_2 = repeatPasswordField
  L12_2 = L13_1
  L11_2.userInput = L12_2
  L11_2 = repeatPasswordField
  L12_2 = L11_2
  L11_2 = L11_2.addEventListener
  L13_2 = "userInput"
  L14_2 = L13_1
  L11_2(L12_2, L13_2, L14_2)
  L11_2 = repeatPasswordField
  L11_2.isVisible = false
  L11_2 = repeatPasswordField
  L12_2 = Constants
  L12_2 = L12_2.nativeFontForTextFields
  L12_2 = L12_2()
  L11_2.font = L12_2
  L11_2 = repeatPasswordField
  L12_2 = L11_2
  L11_2 = L11_2.setFillColor
  L13_2 = Constants
  L13_2 = L13_2.darkBlueColor
  L13_2, L14_2, L15_2, L16_2 = L13_2()
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L11_2 = repeatPasswordField
  L11_2.delegate = A0_2
  L11_2 = repeatPasswordField
  L11_2.id = 4
  L11_2 = repeatPasswordField
  L11_2.isSecure = true
  L11_2 = L3_1
  L11_2 = L11_2.newButton
  L12_2 = {}
  L12_2.label = "\216\171\216\168\216\170 \217\134\216\167\217\133"
  L13_2 = Constants
  L13_2 = L13_2.fontForTitle
  L13_2 = L13_2()
  L12_2.font = L13_2
  L12_2.fontSize = 11
  L13_2 = {}
  L14_2 = {}
  L15_2 = Constants
  L15_2 = L15_2.darkGreenColor
  L15_2, L16_2 = L15_2()
  L14_2[1] = L15_2
  L14_2[2] = L16_2
  L13_2.default = L14_2
  L12_2.labelColor = L13_2
  L12_2.emboss = false
  L12_2.width = 100
  L12_2.height = 30
  L13_2 = Constants
  L13_2 = L13_2.Path_Assets
  L14_2 = "BattleItems/battle_outcome_button.png"
  L13_2 = L13_2 .. L14_2
  L12_2.defaultFile = L13_2
  L13_2 = Constants
  L13_2 = L13_2.Path_Assets
  L14_2 = "BattleItems/battle_outcome_button-pressed.png"
  L13_2 = L13_2 .. L14_2
  L12_2.overFile = L13_2
  
  function L13_2()
    local L0_3, L1_3, L2_3
    L0_3 = didPressRegister
    L1_3 = successToRegisterCallback
    L2_3 = failedToRegisterCallback
    L0_3(L1_3, L2_3)
  end
  
  L12_2.onRelease = L13_2
  L11_2 = L11_2(L12_2)
  L11_2.delegate = A0_2
  L12_2 = A0_2.view
  L13_2 = L12_2
  L12_2 = L12_2.insert
  L14_2 = L11_2
  L12_2(L13_2, L14_2)
  L12_2 = display
  L12_2 = L12_2.contentCenterX
  L11_2.x = L12_2
  L12_2 = L6_2.y
  L13_2 = L6_2.height
  L13_2 = L13_2 / 2
  L12_2 = L12_2 + L13_2
  L13_2 = L11_2.height
  L13_2 = L13_2 / 2
  L12_2 = L12_2 - L13_2
  L12_2 = L12_2 - 15
  L11_2.y = L12_2
  L12_2 = A1_2.params
  if L12_2 then
    L12_2 = A1_2.params
    L12_2 = L12_2.UID
    purchaseItemUID = L12_2
    L12_2 = A1_2.params
    L12_2 = L12_2.textFieldContent
    if L12_2 then
      L12_2 = nameField
      L13_2 = A1_2.params
      L13_2 = L13_2.textFieldContent
      L13_2 = L13_2.username
      L12_2.text = L13_2
      L12_2 = emailField
      L13_2 = A1_2.params
      L13_2 = L13_2.textFieldContent
      L13_2 = L13_2.email
      L12_2.text = L13_2
      L12_2 = passwordField
      L13_2 = A1_2.params
      L13_2 = L13_2.textFieldContent
      L13_2 = L13_2.password
      L12_2.text = L13_2
      L12_2 = repeatPasswordField
      L13_2 = A1_2.params
      L13_2 = L13_2.textFieldContent
      L13_2 = L13_2.password
      L12_2.text = L13_2
    end
  end
end

L7_1.create = L14_1

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "did" then
    L4_2 = L11_1
    L4_2()
  end
end

L7_1.show = L14_1

function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.view
  L3_2 = A1_2.phase
  if L3_2 == "will" then
    L4_2 = _G
    L4_2.notLoading = false
    L4_2 = L12_1
    L4_2()
  end
end

L7_1.hide = L14_1

function L14_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.view
end

L7_1.destroy = L14_1
L15_1 = L7_1
L14_1 = L7_1.addEventListener
L16_1 = "create"
L17_1 = L7_1
L14_1(L15_1, L16_1, L17_1)
L15_1 = L7_1
L14_1 = L7_1.addEventListener
L16_1 = "show"
L17_1 = L7_1
L14_1(L15_1, L16_1, L17_1)
L15_1 = L7_1
L14_1 = L7_1.addEventListener
L16_1 = "hide"
L17_1 = L7_1
L14_1(L15_1, L16_1, L17_1)
L15_1 = L7_1
L14_1 = L7_1.addEventListener
L16_1 = "destroy"
L17_1 = L7_1
L14_1(L15_1, L16_1, L17_1)
return L7_1
