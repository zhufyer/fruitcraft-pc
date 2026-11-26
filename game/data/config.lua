local L0_1

function L0_1(...)
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2
  L0_2 = "SD"
  _imageQuality = L0_2
  L0_2 = "release"
  _buildType = L0_2
  L0_2 = "mycountry"
  _serverType = L0_2
  L0_2 = "myket"
  _storeType = L0_2
  L0_2 = "fa"
  _mainLang = L0_2
  L0_2 = "hello@fruitcraft.ir"
  _supportEmail = L0_2
  L0_2 = "fruitcraft.co"
  _webSite = L0_2
  L0_2 = true
  _ignoresDeviceLang = L0_2
  L0_2 = false
  _crossPromotionsEnabled = L0_2
  L0_2 = true
  _analyticsEnabled = L0_2
  L0_2 = false
  _isWinter = L0_2
  L0_2 = nil
  _LatestURLForSKComponent = L0_2
  L0_2 = os
  L0_2 = L0_2.date
  L1_2 = "%z"
  L0_2 = L0_2(L1_2)
  _timezone = L0_2
  L0_2 = _timezone
  L0_2 = L0_2 == "+0330"
  _isMyCountry = L0_2
  L0_2 = _isMyCountry
  if L0_2 then
    L0_2 = "fa"
    _mainLang = L0_2
  else
    L0_2 = "en"
    _mainLang = L0_2
  end
  L0_2 = _storeType
  if L0_2 ~= "sibche" then
    L0_2 = _storeType
    if L0_2 ~= "appstore" then
      L0_2 = _storeType
      if L0_2 ~= "google" then
        goto lbl_62
      end
    end
  end
  L0_2 = _isMyCountry
  if not L0_2 then
    L0_2 = "global"
    _serverType = L0_2
  else
    ::lbl_62::
    L0_2 = "mycountry"
    _serverType = L0_2
  end
  L0_2 = _storeType
  if L0_2 == "google" then
    L0_2 = _isMyCountry
    if L0_2 then
      L0_2 = "parsian"
      _storeType = L0_2
    end
  end
  L0_2 = _serverType
  if L0_2 == "global" then
    L0_2 = "fruitcraft.co"
    _webSite = L0_2
  else
    L0_2 = "fruitcraft"
    L1_2 = ".i"
    L2_2 = "r"
    L0_2 = L0_2 .. L1_2 .. L2_2
    _webSite = L0_2
  end
  L0_2 = _G
  L1_2 = {}
  L2_2 = "fuck"
  L3_2 = "jende"
  L4_2 = "khaye"
  L5_2 = "tokhom"
  L6_2 = "haromi"
  L7_2 = "kos "
  L8_2 = "motherfucker"
  L9_2 = "bitch"
  L10_2 = "ass hole"
  L11_2 = "asshole"
  L12_2 = "bastard"
  L13_2 = "\218\169\216\179 \218\169\216\180"
  L14_2 = "\218\169\216\179\218\169\216\180"
  L15_2 = "\218\169\217\136\217\134 \218\169\216\180"
  L16_2 = "\218\169\217\136\217\134\218\169\216\180"
  L17_2 = "\218\175\216\167\219\140\219\140\216\175"
  L18_2 = " \218\169\217\136\216\179 "
  L19_2 = "\218\169\217\136\216\181"
  L20_2 = "\216\172\217\134\216\175\217\135"
  L21_2 = "\216\173\216\177\217\136\217\133\216\178\216\167\216\175\217\135"
  L22_2 = "\216\173\216\177\216\167\217\133\216\178\216\167\216\175\217\135"
  L23_2 = "\217\130\216\173\216\168\217\135"
  L24_2 = "\218\169\219\140\216\177"
  L25_2 = " \218\169\217\136\216\179\216\170 "
  L26_2 = " \218\169\219\140\216\177\219\140 "
  L27_2 = "\216\175\219\140\217\136\216\171"
  L28_2 = " \218\169\217\136\217\134 "
  L29_2 = " \218\169\217\136\217\134\219\140 "
  L30_2 = "\218\169\217\136\217\134\216\175\217\135"
  L31_2 = " \216\177\219\140\216\175\217\133 "
  L32_2 = " \216\177\219\140\216\175\219\140 "
  L33_2 = " \216\180\216\167\216\180\219\140\216\175\217\133 "
  L34_2 = "\217\190\216\175\216\177 \216\179\218\175"
  L35_2 = "\217\190\216\175\216\177\216\179\218\175"
  L36_2 = "\216\179\218\175 \217\190\216\175\216\177"
  L37_2 = "\216\179\218\175 \216\170\217\136\217\132\217\135"
  L38_2 = "\216\170\217\136\217\132\217\135 \216\179\218\175"
  L39_2 = "\216\168\219\140\217\132\216\167\216\174"
  L40_2 = "\216\179 \218\169 \216\179"
  L41_2 = "\216\179\218\169\218\169\216\179\219\140"
  L42_2 = "\216\179\218\169\216\179\219\140 "
  L43_2 = "\216\179\218\169\216\179 "
  L44_2 = "\217\132\216\178\219\140\217\134\218\175"
  L45_2 = " \217\132\216\178 "
  L46_2 = "\218\169\217\136\216\179\216\170\217\136\217\134"
  L47_2 = "\218\169 \217\136 \216\179"
  L48_2 = "\218\169 \216\179"
  L49_2 = "\218\169 \219\140 \216\177"
  L50_2 = "\217\130\216\177\217\133 \216\179\216\167\217\130"
  L51_2 = "\217\130\216\177\217\133\216\179\216\167\217\130"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  L1_2[9] = L10_2
  L1_2[10] = L11_2
  L1_2[11] = L12_2
  L1_2[12] = L13_2
  L1_2[13] = L14_2
  L1_2[14] = L15_2
  L1_2[15] = L16_2
  L1_2[16] = L17_2
  L1_2[17] = L18_2
  L1_2[18] = L19_2
  L1_2[19] = L20_2
  L1_2[20] = L21_2
  L1_2[21] = L22_2
  L1_2[22] = L23_2
  L1_2[23] = L24_2
  L1_2[24] = L25_2
  L1_2[25] = L26_2
  L1_2[26] = L27_2
  L1_2[27] = L28_2
  L1_2[28] = L29_2
  L1_2[29] = L30_2
  L1_2[30] = L31_2
  L1_2[31] = L32_2
  L1_2[32] = L33_2
  L1_2[33] = L34_2
  L1_2[34] = L35_2
  L1_2[35] = L36_2
  L1_2[36] = L37_2
  L1_2[37] = L38_2
  L1_2[38] = L39_2
  L1_2[39] = L40_2
  L1_2[40] = L41_2
  L1_2[41] = L42_2
  L1_2[42] = L43_2
  L1_2[43] = L44_2
  L1_2[44] = L45_2
  L1_2[45] = L46_2
  L1_2[46] = L47_2
  L1_2[47] = L48_2
  L1_2[48] = L49_2
  L1_2[49] = L50_2
  L1_2[50] = L51_2
  L2_2 = "\217\190\217\129\219\140\217\136\216\178"
  L3_2 = "kir"
  L4_2 = "kos kesh"
  L5_2 = "jende"
  L6_2 = "haroomzade"
  L7_2 = "harumzade"
  L8_2 = "\218\169\216\179\216\174\217\132"
  L9_2 = "\218\169\216\179 \217\133\216\186\216\178"
  L10_2 = "\216\173\216\177\217\136\217\133\219\140"
  L11_2 = "\216\173\216\177\217\136\217\133\217\138"
  L1_2[51] = L2_2
  L1_2[52] = L3_2
  L1_2[53] = L4_2
  L1_2[54] = L5_2
  L1_2[55] = L6_2
  L1_2[56] = L7_2
  L1_2[57] = L8_2
  L1_2[58] = L9_2
  L1_2[59] = L10_2
  L1_2[60] = L11_2
  L0_2._profanityList = L1_2
  L0_2 = system
  L0_2 = L0_2.getInfo
  L1_2 = "gpuSupportsHighPrecisionFragmentShaders"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= false then
    L0_2 = system
    L0_2 = L0_2.getInfo
    L1_2 = "model"
    L0_2 = L0_2(L1_2)
    if L0_2 ~= "GT-I9105P" then
      L0_2 = system
      L0_2 = L0_2.getInfo
      L1_2 = "model"
      L0_2 = L0_2(L1_2)
      if L0_2 ~= "GT-I9100" then
        L0_2 = system
        L0_2 = L0_2.getInfo
        L1_2 = "model"
        L0_2 = L0_2(L1_2)
        if L0_2 ~= "GT-I9082" then
          L0_2 = system
          L0_2 = L0_2.getInfo
          L1_2 = "model"
          L0_2 = L0_2(L1_2)
          if L0_2 ~= "GT-I9105" then
            goto lbl_181
          end
        end
      end
    end
  end
  L0_2 = false
  _isFillterSupport = L0_2
  goto lbl_183
  ::lbl_181::
  L0_2 = true
  _isFillterSupport = L0_2
  ::lbl_183::
  L0_2 = {}
  L1_2 = _imageQuality
  if L1_2 == "HD" then
    L0_2["@2x"] = 1.5
    L0_2["@4x"] = 3
  else
    L0_2["@2x"] = 1.5
  end
  L1_2 = string
  L1_2 = L1_2.sub
  L2_2 = system
  L2_2 = L2_2.getInfo
  L3_2 = "model"
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  L4_2 = 4
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 == "iPad" then
    L1_2 = {}
    L2_2 = {}
    L2_2.width = 360
    L2_2.height = 480
    L2_2.scale = "letterBox"
    L2_2.xAlign = "center"
    L2_2.yAlign = "center"
    L2_2.imageSuffix = L0_2
    L2_2.antialias = true
    L1_2.content = L2_2
    L2_2 = {}
    L3_2 = {}
    L4_2 = {}
    L5_2 = "badge"
    L6_2 = "sound"
    L7_2 = "alert"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L3_2.types = L4_2
    L2_2.iphone = L3_2
    L1_2.notification = L2_2
    application = L1_2
  else
    L1_2 = string
    L1_2 = L1_2.sub
    L2_2 = system
    L2_2 = L2_2.getInfo
    L3_2 = "model"
    L2_2 = L2_2(L3_2)
    L3_2 = 1
    L4_2 = 2
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    if L1_2 == "iP" then
      L1_2 = display
      L1_2 = L1_2.pixelHeight
      if 960 < L1_2 then
        L1_2 = {}
        L2_2 = {}
        L2_2.width = 320
        L2_2.height = 568
        L2_2.scale = "letterBox"
        L2_2.xAlign = "center"
        L2_2.yAlign = "center"
        L2_2.imageSuffix = L0_2
        L2_2.antialias = true
        L1_2.content = L2_2
        L2_2 = {}
        L3_2 = {}
        L4_2 = {}
        L5_2 = "badge"
        L6_2 = "sound"
        L7_2 = "alert"
        L4_2[1] = L5_2
        L4_2[2] = L6_2
        L4_2[3] = L7_2
        L3_2.types = L4_2
        L2_2.iphone = L3_2
        L1_2.notification = L2_2
        application = L1_2
    end
    else
      L1_2 = string
      L1_2 = L1_2.sub
      L2_2 = system
      L2_2 = L2_2.getInfo
      L3_2 = "model"
      L2_2 = L2_2(L3_2)
      L3_2 = 1
      L4_2 = 2
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      if L1_2 ~= "iP" then
        L1_2 = display
        L1_2 = L1_2.pixelHeight
        L2_2 = display
        L2_2 = L2_2.pixelWidth
        L1_2 = L1_2 / L2_2
        if L1_2 ~= 1.5 then
          goto lbl_304
        end
      end
      L1_2 = {}
      L2_2 = {}
      L2_2.width = 320
      L2_2.height = 480
      L2_2.scale = "letterBox"
      L2_2.xAlign = "center"
      L2_2.yAlign = "center"
      L2_2.imageSuffix = L0_2
      L2_2.antialias = true
      L1_2.content = L2_2
      L2_2 = {}
      L3_2 = {}
      L3_2.projectNumber = "560122492411"
      L2_2.google = L3_2
      L3_2 = {}
      L4_2 = {}
      L5_2 = "badge"
      L6_2 = "sound"
      L7_2 = "alert"
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L4_2[3] = L7_2
      L3_2.types = L4_2
      L2_2.iphone = L3_2
      L1_2.notification = L2_2
      application = L1_2
      goto lbl_345
      ::lbl_304::
      L1_2 = display
      L1_2 = L1_2.pixelHeight
      L2_2 = display
      L2_2 = L2_2.pixelWidth
      L1_2 = L1_2 / L2_2
      if 1.72 < L1_2 then
        L1_2 = {}
        L2_2 = {}
        L2_2.width = 320
        L2_2.height = 568
        L2_2.scale = "letterBox"
        L2_2.xAlign = "center"
        L2_2.yAlign = "center"
        L2_2.imageSuffix = L0_2
        L1_2.content = L2_2
        application = L1_2
      else
        L1_2 = {}
        L2_2 = {}
        L2_2.width = 320
        L2_2.height = 512
        L2_2.scale = "letterBox"
        L2_2.xAlign = "center"
        L2_2.yAlign = "center"
        L2_2.imageSuffix = L0_2
        L1_2.content = L2_2
        L2_2 = {}
        L3_2 = {}
        L3_2.projectNumber = "560122492411"
        L2_2.google = L3_2
        L3_2 = {}
        L4_2 = {}
        L5_2 = "badge"
        L6_2 = "sound"
        L7_2 = "alert"
        L4_2[1] = L5_2
        L4_2[2] = L6_2
        L4_2[3] = L7_2
        L3_2.types = L4_2
        L2_2.iphone = L3_2
        L1_2.notification = L2_2
        application = L1_2
      end
    end
  end
  ::lbl_345::
end

L0_1()

function L0_1(...)
  local L0_2, L1_2
  L0_2 = application
  if L0_2 then
    L0_2 = type
    L1_2 = application
    L0_2 = L0_2(L1_2)
    if L0_2 == "table" then
      goto lbl_11
    end
  end
  L0_2 = {}
  application = L0_2
  ::lbl_11::
  L0_2 = application
  L1_2 = {}
  L1_2.appName = "Fruitcraft"
  L1_2.appVersion = "1.10.10760"
  L1_2.appPackageId = "com.tod.fruitcraft"
  L1_2.mode = "release"
  L1_2.build = "unknown"
  L1_2.coronaBuild = "null"
  L0_2.metadata = L1_2
end

L0_1()
