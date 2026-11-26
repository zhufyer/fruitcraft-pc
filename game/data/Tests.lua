local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = require
  L1_2 = "Components.TDButtonView"
  L0_2 = L0_2(L1_2)
  L2_2 = L0_2
  L1_2 = L0_2.new
  L3_2 = {}
  L3_2.label = "Google Init"
  L3_2.width = 100
  L3_2.height = 30
  L4_2 = Constants
  L4_2 = L4_2.Path_Assets
  L5_2 = "BattleItems/battle_outcome_button.png"
  L4_2 = L4_2 .. L5_2
  L3_2.defaultFile = L4_2
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = log3
    L1_3 = "\203\154\203\154\203\154\203\154 calling init"
    L0_3(L1_3)
    L0_3 = todNative
    L0_3 = L0_3.initGoogle
    
    function L1_3(A0_4)
      local L1_4, L2_4, L3_4
      L1_4 = log3
      L2_4 = "\226\136\134\226\136\134\226\136\134\226\136\134\226\136\134 received response from GPlus login:"
      L3_4 = A0_4
      L1_4(L2_4, L3_4)
    end
    
    L0_3(L1_3)
  end
  
  L3_2.onRelease = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = display
  L2_2 = L2_2.contentCenterX
  L1_2.x = L2_2
  L2_2 = display
  L2_2 = L2_2.contentCenterY
  L2_2 = L2_2 - 40
  L1_2.y = L2_2
  L3_2 = L0_2
  L2_2 = L0_2.new
  L4_2 = {}
  L4_2.label = "Google Login"
  L4_2.width = 100
  L4_2.height = 30
  L5_2 = Constants
  L5_2 = L5_2.Path_Assets
  L6_2 = "BattleItems/battle_outcome_button.png"
  L5_2 = L5_2 .. L6_2
  L4_2.defaultFile = L5_2
  
  function L5_2()
    local L0_3, L1_3
    L0_3 = log3
    L1_3 = "\203\154\203\154\203\154\203\154 calling sign in"
    L0_3(L1_3)
    L0_3 = todNative
    L0_3 = L0_3.signInGoogle
    L0_3()
  end
  
  L4_2.onRelease = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = display
  L3_2 = L3_2.contentCenterX
  L2_2.x = L3_2
  L3_2 = display
  L3_2 = L3_2.contentCenterY
  L2_2.y = L3_2
  L4_2 = L0_2
  L3_2 = L0_2.new
  L5_2 = {}
  L5_2.label = "Google Signout"
  L5_2.width = 100
  L5_2.height = 30
  L6_2 = Constants
  L6_2 = L6_2.Path_Assets
  L7_2 = "BattleItems/battle_outcome_button.png"
  L6_2 = L6_2 .. L7_2
  L5_2.defaultFile = L6_2
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = log3
    L1_3 = "\203\154\203\154\203\154\203\154 calling sign out"
    L0_3(L1_3)
    L0_3 = todNative
    L0_3 = L0_3.signOutGoogle
    
    function L1_3(A0_4)
      local L1_4, L2_4, L3_4
      L1_4 = log3
      L2_4 = "\226\136\134\226\136\134\226\136\134\226\136\134\226\136\134 received response from GPlus sign out:"
      L3_4 = A0_4
      L1_4(L2_4, L3_4)
    end
    
    L0_3(L1_3)
  end
  
  L5_2.onRelease = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = display
  L4_2 = L4_2.contentCenterX
  L3_2.x = L4_2
  L4_2 = display
  L4_2 = L4_2.contentCenterY
  L4_2 = L4_2 + 40
  L3_2.y = L4_2
end

testGPlusOnIOS = L0_1
