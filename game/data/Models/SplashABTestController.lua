local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Utils.Toolbox"
L0_1 = L0_1(L1_1)

function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = log3
    L2_3 = "we sent deviceID and Name successfully to the server"
    L1_3(L2_3)
    L1_3 = network
    L1_3 = L1_3.checkForErrors
    L2_3 = A0_3
    L3_3 = "prepare"
    L4_3 = A1_2
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L3_3 = L2_3.better_splash_screen
      if L3_3 ~= nil then
        L3_3 = mainPlayer
        L4_3 = L2_3.better_splash_screen
        L3_3.newSplash = L4_3
        L3_3 = log3
        L4_3 = "player must see new loading page "
        L5_3 = mainPlayer
        L5_3 = L5_3.newSplash
        L3_3(L4_3, L5_3)
        L3_3 = A0_2
        if L3_3 ~= nil then
          L3_3 = A0_2
          L3_3()
        end
      end
    end
  end
  
  L3_2 = {}
  L4_2 = system
  L4_2 = L4_2.getInfo
  L5_2 = "deviceID"
  L4_2 = L4_2(L5_2)
  L3_2.udid = L4_2
  L4_2 = system
  L4_2 = L4_2.getInfo
  L5_2 = "name"
  L4_2 = L4_2(L5_2)
  L3_2.device_name = L4_2
  L4_2 = string
  L4_2 = L4_2.len
  L5_2 = L0_1
  L5_2 = L5_2.getAppVersion
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if 0 < L4_2 then
    L4_2 = L0_1
    L4_2 = L4_2.getAppVersion
    L4_2 = L4_2()
    L3_2.game_version = L4_2
  else
    L4_2 = log2
    L5_2 = "an empty app version was returned"
    L4_2(L5_2)
    L3_2.game_version = "2"
  end
  L4_2 = {}
  L4_2.body = L3_2
  L5_2 = log3
  L6_2 = "new loading screen"
  L5_2(L6_2)
  L5_2 = network
  L5_2 = L5_2.request
  L6_2 = Constants
  L6_2 = L6_2.API_Path
  L7_2 = Constants
  L7_2 = L7_2.API_SET_SPLASH
  L6_2 = L6_2 .. L7_2
  L7_2 = "POST"
  L8_2 = L2_2
  L9_2 = L4_2
  L10_2 = "Use New Splash"
  L11_2 = nil
  L12_2 = A1_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end

isShowNewSplash = L1_1
