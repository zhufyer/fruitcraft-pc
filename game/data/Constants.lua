local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1
L0_1 = module
L1_1 = (...)
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)
L0_1 = require
L1_1 = "Language"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "json"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Utils.base64"
L2_1 = L2_1(L3_1)
L3_1 = "137"
version = L3_1
L3_1 = "710404a3-9ed6-4d7a-ab0e-517d1ebf6431"
Crisp_Website_Id = L3_1
L3_1 = "3c25619f4ab5050438b96768b2285e121eba0ec3"
GameAnalytics_iOS_SecretKey = L3_1
L3_1 = "o14kbtv8r1zekpih6rm5ibm8wkzckyie"
Sibche_APIKey = L3_1
L3_1 = "a2tIN1hwZW8yN1BKaFk0cw=="
Sibche_APIPassword = L3_1
L3_1 = L2_1.decode
L4_1 = "aHR0cDovL215LnNpYmNoZS5pci8="
L3_1 = L3_1(L4_1)
Sibche_BaseURL = L3_1
L3_1 = "sibche2://micropayment/"
L4_1 = Sibche_APIKey
L5_1 = "/"
L3_1 = L3_1 .. L4_1 .. L5_1
Sibche_BaseURLForPurchase = L3_1
L3_1 = "http://"
L4_1 = _webSite
L3_1 = L3_1 .. L4_1
App_Website = L3_1
L3_1 = "https://www.facebook.com/fruitcraftapp"
APP_FacebookPage = L3_1
L3_1 = "https://www.instagram.com/fruitcraft"
APP_InstagramPage = L3_1
L3_1 = 3
API_RetryCount = L3_1
L3_1 = false
isNeedToUpdateCards = L3_1
L3_1 = _storeType
if L3_1 == "appstore" then
  L3_1 = "1"
  StoreID = L3_1
  L3_1 = "https://apps.apple.com/us/app/fruity-battles/id1359111778"
  Path_AppLinkInStore = L3_1
  L3_1 = "http://goo.gl/kNFMif"
  Social_SharingURL = L3_1
else
  L3_1 = _storeType
  if L3_1 == "sibche" then
    L3_1 = "2"
    StoreID = L3_1
    L3_1 = "https://apps.apple.com/us/app/fruity-battles/id1359111778"
    Path_AppLinkInStore = L3_1
    L3_1 = "http://goo.gl/kNFMif"
    Social_SharingURL = L3_1
  else
    L3_1 = _storeType
    if L3_1 == "google" then
      L3_1 = "3"
      StoreID = L3_1
      L3_1 = "https://play.google.com/store/apps/details?id=com.tod.fruitcraft"
      Path_AppLinkInStore = L3_1
      L3_1 = "http://goo.gl/kNFMif"
      Social_SharingURL = L3_1
    else
      L3_1 = _storeType
      if L3_1 == "bazar" then
        L3_1 = "4"
        StoreID = L3_1
        L3_1 = L2_1.decode
        L4_1 = "aHR0cHM6Ly9jYWZlYmF6YWFyLmlyL2FwcC9jb20udG9kLmZydWl0Y3JhZnQ="
        L3_1 = L3_1(L4_1)
        Path_AppLinkInStore = L3_1
        L3_1 = "http://goo.gl/kNFMif"
        Social_SharingURL = L3_1
      else
        L3_1 = _storeType
        if L3_1 == "samsung" then
          L3_1 = "7"
          StoreID = L3_1
          L3_1 = "http://goo.gl/kNFMif"
          Social_SharingURL = L3_1
        else
          L3_1 = _storeType
          if L3_1 == "myket" then
            L3_1 = "8"
            StoreID = L3_1
            L3_1 = L2_1.decode
            L4_1 = "aHR0cHM6Ly9teWtldC5pci9hcHAvY29tLnRvZC5mcnVpdGNyYWZ0"
            L3_1 = L3_1(L4_1)
            Path_AppLinkInStore = L3_1
            L3_1 = L2_1.decode
            L4_1 = "bW8tZ2FtZS5pci9teWtldC5odG1s"
            L3_1 = L3_1(L4_1)
            Social_SharingURL = L3_1
          else
            L3_1 = _storeType
            if L3_1 == "iraqapps" then
              L3_1 = "10"
              StoreID = L3_1
              L3_1 = L2_1.decode
              L4_1 = "aHR0cDovL2lyYW5hcHBzLmlyL2FwcC9jb20udG9kLmZydWl0Y3JhZnQ="
              L3_1 = L3_1(L4_1)
              Path_AppLinkInStore = L3_1
              L3_1 = "http://goo.gl/kNFMif"
              Social_SharingURL = L3_1
            else
              L3_1 = _storeType
              if L3_1 == "parsian" then
                L3_1 = "12"
                StoreID = L3_1
                L3_1 = "https://play.google.com/store/apps/details?id=com.tod.fruitcraft"
                Path_AppLinkInStore = L3_1
                L3_1 = "http://goo.gl/kNFMif"
                Social_SharingURL = L3_1
              else
                L3_1 = _storeType
                if L3_1 == "zarinpal" then
                  L3_1 = "13"
                  StoreID = L3_1
                  L3_1 = "http://goo.gl/kNFMif"
                  Path_AppLinkInStore = L3_1
                  L3_1 = "http://goo.gl/kNFMif"
                  Social_SharingURL = L3_1
                else
                  L3_1 = _storeType
                  if L3_1 == "tod" then
                    L3_1 = "9"
                    StoreID = L3_1
                    L3_1 = L2_1.decode
                    L4_1 = "aHR0cDovL21vLWdhbWUuaXI="
                    L3_1 = L3_1(L4_1)
                    Path_AppLinkInStore = L3_1
                    L3_1 = "http://goo.gl/kNFMif"
                    Social_SharingURL = L3_1
                  else
                    L3_1 = _storeType
                    if L3_1 == "test" then
                      L3_1 = "0"
                      StoreID = L3_1
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
L3_1 = "statistics/log"
API_SendLogEvents = L3_1
L3_1 = "payment/purchase"
API_PurchaseProduct = L3_1
L3_1 = "user/getvcbalance/client/iOS/"
API_GetVCBalance = L3_1
L3_1 = "user/login/client/iOS/"
API_SibcheLogin = L3_1
L3_1 = "user/iforgot"
API_ForgotPassword = L3_1
L3_1 = "user/register/client/iOS/"
API_SibcheRegister = L3_1
L3_1 = "store/buygoldpack"
API_BuyGoldPack = L3_1
L3_1 = "device/constants"
API_Constants = L3_1
L3_1 = "cards/fruitsjsonexport"
API_FruitsExport = L3_1
L3_1 = "cards/cardsjsonexport"
API_CardsExport = L3_1
L3_1 = "player/languagepatch"
API_LanguageUpdate = L3_1
L3_1 = "store/checksubscription"
API_CheckSubscription = L3_1
L3_1 = "store/cancelsubscription"
API_CancelSubscription = L3_1
L3_1 = "store/buyprogressbundle"
API_BuyProgressBundle = L3_1
L3_1 = "metadata/TutorialData.json"
API_TutorialExport = L3_1
L3_1 = "i18n/en-US/Tutorial.json"
API_TutorialLangEnExport = L3_1
L3_1 = "i18n/fa-IR/Tutorial.json"
API_TutorialLangFaExport = L3_1
L3_1 = "metadata/CardComboData.json"
API_ComboExport = L3_1
L3_1 = "i18n/en-US/CardComboLanguage.json"
API_ComboLangEnExport = L3_1
L3_1 = "i18n/fa-IR/CardComboLanguage.json"
API_ComboLangFaExport = L3_1
L3_1 = "cards/heroitemsjsonexport"
API_HeroItemsExport = L3_1
L3_1 = "i18n/en-US/BaseHeroItemsLanguage.json"
API_HeroItemsLangEnExport = L3_1
L3_1 = "i18n/fa-IR/BaseHeroItemsLanguage.json"
API_HeroItemsLangFaExport = L3_1
L3_1 = "store/buyheroitem"
API_BuyHeroItem = L3_1
L3_1 = "cards/equipheroitems"
API_SetHeroItems = L3_1
L3_1 = "i18n/fa-IR/BaseFruitLanguage.json"
API_FruitLangFaExport = L3_1
L3_1 = "i18n/en-US/BaseFruitLanguage.json"
API_FruitLangEnExport = L3_1
L3_1 = "player/tutorial"
API_TutorialStateSet = L3_1
L3_1 = "auction/loadmyauctions"
API_AuctionUserSales = L3_1
L3_1 = "auction/loadmyparticipatedauctions"
API_AuctionUserInvolved = L3_1
L3_1 = "auction/search"
API_AuctionSearch = L3_1
L3_1 = "auction/bid"
API_AuctionBid = L3_1
L3_1 = "auction/follow"
API_AuctionFollow = L3_1
L3_1 = "auction/sellnow"
API_AuctionSell = L3_1
L3_1 = "auction/setcardforauction"
API_AuctionCreate = L3_1
L3_1 = "player/log"
API_Send_Log = L3_1
L3_1 = L2_1.decode
L4_1 = "aXJhbi5mcnVpdGNyYWZ0Lmly"
L3_1 = L3_1(L4_1)
API_Host = L3_1
L3_1 = _serverType
if L3_1 == "local" then
  L3_1 = L2_1.decode
  L4_1 = "ZnJ1aXQxLmFyaWFoYW1yYWguaXI="
  L3_1 = L3_1(L4_1)
  API_Host = L3_1
  L3_1 = L2_1.decode
  L4_1 = "ZnJ1aXQxLmFyaWFoYW1yYWguaXI="
  L3_1 = L3_1(L4_1)
  API_Chat_Host = L3_1
  L3_1 = 1337
  Chat_Port = L3_1
else
  L3_1 = _serverType
  if L3_1 == "mycountry" then
    L3_1 = L2_1.decode
    L4_1 = "aXJhbi5mcnVpdGNyYWZ0Lmly"
    L3_1 = L3_1(L4_1)
    API_Host = L3_1
    L3_1 = L2_1.decode
    L4_1 = "aXJhbmNoYXQuZnJ1aXRjcmFmdC5pcg=="
    L3_1 = L3_1(L4_1)
    API_Chat_Host = L3_1
    L3_1 = 1337
    Chat_Port = L3_1
  else
    L3_1 = _serverType
    if L3_1 == "global" then
      L3_1 = "global.fruitcraft.co"
      API_Host = L3_1
      L3_1 = "globalchat.fruitcraft.co"
      API_Chat_Host = L3_1
      L3_1 = 1337
      Chat_Port = L3_1
    else
      L3_1 = _serverType
      if L3_1 == "test" then
        L3_1 = L2_1.decode
        L4_1 = "ZnJ1aXQ0LmFyaWFoYW1yYWguaXI="
        L3_1 = L3_1(L4_1)
        API_Host = L3_1
        L3_1 = 1337
        Chat_Port = L3_1
      end
    end
  end
end
L3_1 = log3
L4_1 = "API Chat Host:"
L5_1 = API_Chat_Host
L3_1(L4_1, L5_1)
L3_1 = "https://"
L4_1 = API_Host
L5_1 = "/"
L3_1 = L3_1 .. L4_1 .. L5_1
API_Path = L3_1
L3_1 = "https://"
L4_1 = API_Host
L5_1 = "/"
L3_1 = L3_1 .. L4_1 .. L5_1
API_Path_Secure = L3_1
L3_1 = "player/load"
API_LoadPath = L3_1
L3_1 = "player/deposittobank"
API_DepositToBank = L3_1
L3_1 = "player/withdrawfrombank"
API_WithdrawFromBank = L3_1
L3_1 = "player/comeback"
API_PlayerComeback = L3_1
L3_1 = "player/redeemgift"
API_RedeemGift = L3_1
L3_1 = "cards/collectgold"
API_CollectGold = L3_1
L3_1 = "cards/assign"
API_AssignCards = L3_1
L3_1 = "cards/cooloff"
API_CooloffCard = L3_1
L3_1 = "cards/enhance"
API_EnhanceCard = L3_1
L3_1 = "cards/nectarify"
API_EnhanceCardWithNectar = L3_1
L3_1 = "cards/evolve"
API_EvolveCard = L3_1
L3_1 = "cards/collection"
API_CardCollection = L3_1
L3_1 = "cards/potionize"
API_Card_AddPotion = L3_1
L3_1 = "sendmessage.php"
API_SendMessage = L3_1
L3_1 = "message/systemmessages"
API_FetchMessages = L3_1
L3_1 = "message/systemmessages"
API_FetchSystemMessages = L3_1
L3_1 = "message/tribebroadcast"
API_FetchTribeBroadcastMessages = L3_1
L3_1 = "tribe/upgrade"
API_UpgradeBuilding = L3_1
L3_1 = "tribe/reportchat"
API_TribeReportChat = L3_1
L3_1 = "player/claimfbreward"
API_ClaimFBReward = L3_1
L3_1 = "player/claiminstagramreward"
API_ClaimInstagramReward = L3_1
L3_1 = "player/setemail"
API_SetEmail = L3_1
L3_1 = "bot/challengeresponse"
API_SubmitCaptcha = L3_1
L3_1 = "bot/getcaptcha"
API_Captcha = L3_1
L3_1 = "tribe/joinrequest"
API_JoinRequest = L3_1
L3_1 = "tribe/promote"
API_PromoteUser = L3_1
L3_1 = "tribe/demote"
API_DemoteUser = L3_1
L3_1 = "tribe/kick"
API_KickUser = L3_1
L3_1 = "tribe/poke"
API_PokeUser = L3_1
L3_1 = "tribe/decidejoin"
API_AcceptJoinRequest = L3_1
L3_1 = "tribe/decidejoin"
API_RejectJoinRequest = L3_1
L3_1 = "tribe/decideinvite"
API_AcceptInviteRequest = L3_1
L3_1 = "tribe/decideinvite"
API_RejectInviteRequest = L3_1
L3_1 = "tribe/invisible"
API_TribeInvisible = L3_1
L3_1 = "tribe/invite"
API_SendInviteRequest = L3_1
L3_1 = "tribe/recommended"
API_RecommendedTribes = L3_1
L3_1 = "tribe/find"
API_FindTribe = L3_1
L3_1 = "tribe/members"
API_TribeMembers = L3_1
L3_1 = "tribe/edit"
API_EditTribe = L3_1
L3_1 = "tribe/create"
API_CreateTribe = L3_1
L3_1 = "tribe/donate"
API_Donate = L3_1
L3_1 = "tribe/leave"
API_LeaveTribe = L3_1
L3_1 = "tribe/coach"
API_TribeCoach = L3_1
L3_1 = "tribe/broadcast"
API_BroadcastChiefMassage = L3_1
L3_1 = "ranking/global"
API_FetchGlobalRankings = L3_1
L3_1 = "ranking/local"
API_FetchLocalRankings = L3_1
L3_1 = "ranking/tribe"
API_FetchTribeRanking = L3_1
L3_1 = "ranking/tribebasedonseed"
API_FetchTribeRankingBasedOnSeed = L3_1
L3_1 = "ranking/rising"
API_FetchRisingRanking = L3_1
L3_1 = "ranking/league"
API_FetchLeagueRanking = L3_1
L3_1 = "ranking/leaguehistory"
API_FetchLeagueHistory = L3_1
L3_1 = "battle/getopponents"
API_FetchBattleOpponenet = L3_1
L3_1 = "battle/battle"
API_Battle = L3_1
L3_1 = "live-battle/livebattle"
API_Live_Battle = L3_1
L3_1 = "live-battle/help"
API_Live_Battle_help_ = L3_1
L3_1 = "live-battle/setcardforlivebattle"
API_Live_Battle_SetCard = L3_1
L3_1 = "battle/quest"
API_Quest = L3_1
L3_1 = "battle/scout"
API_Scout = L3_1
L3_1 = "live-battle/livebattle"
API_LiveBattle = L3_1
L3_1 = "live-battle/livebattleack"
API_LiveBattleAck = L3_1
L3_1 = "live-battle/livebattlechoose"
API_LiveBattleChoose = L3_1
L3_1 = "live-battle/livebattlejoin"
API_LiveBattleHelpJoin = L3_1
L3_1 = "live-battle/triggerability"
API_LiveBattleTriggerAbility = L3_1
L3_1 = "player/registerachievement"
API_RegisterAchievements = L3_1
L3_1 = "store/buycardpack"
API_BuyCardPack = L3_1
L3_1 = "store/getshopitems"
API_GetProductList = L3_1
L3_1 = "store/buyboostpack"
API_Buy_Boost_Pack = L3_1
L3_1 = "store/buyavatarpack"
API_Buy_Avatar_Pack = L3_1
L3_1 = "cardpool/"
API_ImageStorage = L3_1
L3_1 = "player/getplayerinfo"
API_PROFILE_GET_PLAYER_INFO = L3_1
L3_1 = "player/setplayerinfo"
API_PROFILE_SET_PLAYER_INFO = L3_1
L3_1 = "player/setmobilenumber"
API_SET_MOBILE_NUMBER = L3_1
L3_1 = "player/verifymobilenumber"
API_VERIFY_MOBILE_NUMBER = L3_1
L3_1 = "player/prepare"
API_SET_SPLASH = L3_1
L3_1 = "player/fillpotion"
API_PLAYER_FILL_POTION = L3_1
L3_1 = "player/claimadvertismentreward"
API_CLAIM_AD_REWARD = L3_1
L3_1 = "player/turnthewheel"
API_TURN_THE_WHEEL = L3_1
L3_1 = "Assets/"
Path_Assets = L3_1
L3_1 = "Assets"
Path_AssetsName = L3_1
L3_1 = _imageQuality
L4_1 = "SD"
if L3_1 == L4_1 then
  L3_1 = "Assets-SD/"
  Path_Assets = L3_1
  L3_1 = "Assets-SD"
  Path_AssetsName = L3_1
  L3_1 = _storeType
  if L3_1 ~= "sibche" then
    L3_1 = _storeType
    if L3_1 ~= "appstore" then
      goto lbl_471
    end
  end
  L3_1 = "com.tod.fruitybattles"
  App_UID = L3_1
  goto lbl_489
  ::lbl_471::
  L3_1 = "com.tod.fruitcraft"
  App_UID = L3_1
else
  L3_1 = "Assets/"
  Path_Assets = L3_1
  L3_1 = "Assets"
  Path_AssetsName = L3_1
  L3_1 = _storeType
  if L3_1 ~= "sibche" then
    L3_1 = _storeType
    if L3_1 ~= "appstore" then
      goto lbl_487
    end
  end
  L3_1 = "com.tod.fruitybattles"
  App_UID = L3_1
  goto lbl_489
  ::lbl_487::
  L3_1 = "com.tod.fruitcrafthd"
  App_UID = L3_1
end
::lbl_489::
L3_1 = "error/messages"
API_Get_Error_Messages = L3_1
L3_1 = {}
L4_1 = "en"
L5_1 = "en-US"
L3_1[L4_1] = L5_1
L4_1 = "fa"
L5_1 = "fa-IR"
L3_1[L4_1] = L5_1
ErrorMessagesLanguageAlternative = L3_1
L3_1 = "attacks_in_today.txt"
Path_AttacksInTodayFile = L3_1
L3_1 = "settings.txt"
Path_SettingsFile = L3_1
L3_1 = "langSetting.txt"
Path_LanguageSettingsFile = L3_1
L3_1 = "achevements.txt"
Path_AchievementsFile = L3_1
L3_1 = "constants.txt"
Path_ConstantsFile = L3_1
L3_1 = "cards.txt"
Path_CardsFile = L3_1
L3_1 = "fruits.txt"
Path_FruitsFile = L3_1
L3_1 = "cookies.txt"
Path_Cookies = L3_1
L3_1 = {}
L4_1 = "en"
L5_1 = "Errors_en_US.txt"
L3_1[L4_1] = L5_1
L4_1 = "fa"
L5_1 = "Errors_fa_IR.txt"
L3_1[L4_1] = L5_1
Path_ErrorMessages = L3_1
L3_1 = "imageCache"
Path_ImageCache = L3_1
L3_1 = Path_ImageCache
L4_1 = "/Assets-SD/Heroes/"
L3_1 = L3_1 .. L4_1
Path_HeroesOnDocument = L3_1
L3_1 = Path_Assets
L4_1 = "Heroes/"
L3_1 = L3_1 .. L4_1
Path_HeroesOnResource = L3_1
L3_1 = Path_Assets
L4_1 = "General/missing.png"
L3_1 = L3_1 .. L4_1
Path_MissingImage = L3_1
L3_1 = Path_Assets
L4_1 = "Tutorial/Dandelion.png"
L3_1 = L3_1 .. L4_1
Path_MentorImage = L3_1
L3_1 = Path_Assets
L4_1 = "Cards/"
L3_1 = L3_1 .. L4_1
Resource_CardDirectory = L3_1
L3_1 = Path_Assets
L4_1 = "General/missing.png"
L3_1 = L3_1 .. L4_1
Resource_DeffenceBuildingImage = L3_1
L3_1 = Path_Assets
L4_1 = "General/missing.png"
L3_1 = L3_1 .. L4_1
Resource_AttackBuildingImage = L3_1
L3_1 = Path_Assets
L4_1 = "General/missing.png"
L3_1 = L3_1 .. L4_1
Resource_EvolutionBuildingImage = L3_1
L3_1 = Path_Assets
L4_1 = "General/missing.png"
L3_1 = L3_1 .. L4_1
Resource_CooldownBuildingImage = L3_1
L3_1 = 10
Max_Player_level_For_Tasks = L3_1
L3_1 = "6:44 21:00"
bonus_Time_Begining = L3_1
L3_1 = "7:14 22:00"
bonus_Time_Ending = L3_1
L3_1 = 0
Player_Status_Offline = L3_1
L3_1 = 1
Player_Status_Online = L3_1
L3_1 = 2
Player_Status_Busy = L3_1
L3_1 = 3
Player_Status_Invisible = L3_1
L3_1 = 1
FakeTribe_OffenseBuildingLevel = L3_1
L3_1 = 1
FakeTribe_DefenseBuildingLevel = L3_1
L3_1 = true
Can_Open_Avatar_Pack = L3_1
L3_1 = true
Can_Open_Boosts_Pack = L3_1
L3_1 = "rounds"
League_Rounds = L3_1
L3_1 = false
Can_Open_Local_Ranking = L3_1
L3_1 = 0.75
Auction_MinPriceModifier = L3_1
L3_1 = 1.5
Auction_MaxPriceModifier = L3_1
L3_1 = 0.05
Auction_BidModifier = L3_1
L3_1 = 8
Auction_PowerToGoldRatio = L3_1
L3_1 = 9
Wage_Percent = L3_1
L3_1 = 35
Quest_InitialQuestPower = L3_1
L3_1 = 40
Quest_InitialQuestGold = L3_1
L3_1 = 230
Quest_CostPerPowerRatio = L3_1
L3_1 = 0.002
Quest_CostPerPowerRatioExponent = L3_1
L3_1 = 14
Quest_DefenceMultiplier = L3_1
L3_1 = 10
Quest_BossStep = L3_1
L3_1 = 2
Quest_BossPowerMultiplier = L3_1
L3_1 = 30
Quest_PurgeStep = L3_1
L3_1 = 0.4761
Quest_Coef = L3_1
L3_1 = 1.0786
Quest_Exponent = L3_1
L3_1 = 40
Quest_DefenceMin = L3_1
L3_1 = 0.05
Scout_CostRelCoef = L3_1
L3_1 = 20000
Scout_CostMax = L3_1
L3_1 = 80
Scout_CostBase = L3_1
L3_1 = 1.3
Battle_XPRewardMultiplier = L3_1
L3_1 = 5
Battle_XPDividerOffset = L3_1
L3_1 = 10
Battle_XPDividerLogBase = L3_1
L3_1 = false
Shop_GoldPacksDescendingOrder = L3_1
L3_1 = 1
Combo_Cost_Modifier = L3_1
L3_1 = 3
UnlockLevel_Battle = L3_1
L3_1 = 2
UnlockLevel_Hero = L3_1
L3_1 = 4
UnlockLevel_HeroItems = L3_1
L3_1 = 2
UnlockLevel_Enhance = L3_1
L3_1 = 5
UnlockLevel_Mine = L3_1
L3_1 = 6
UnlockLevel_Tribe = L3_1
L3_1 = 7
UnlockLevel_Auction = L3_1
L3_1 = 8
UnlockLevel_League = L3_1
L3_1 = 8
UnlockLevel_StoreCompetitions = L3_1
L3_1 = 9
UnlockLevel_LiveBattle = L3_1
L3_1 = 12
UnlockLevel_Boosts = L3_1
L3_1 = 15
UnlockLevel_Combos = L3_1
L3_1 = 15
UnlockLevel_Potions = L3_1
L3_1 = 50
UnlockLevel_School = L3_1
L3_1 = true
StoreCompeition_Bazaar_Active = L3_1
L3_1 = true
StoreCompeition_Myket_Active = L3_1
L3_1 = 0.1
StoreCompeition_Bazaar_LostScore = L3_1
L3_1 = 0.3
StoreCompeition_Bazaar_QuestScore = L3_1
L3_1 = 0.6
StoreCompeition_Bazaar_OfflineBattleScore = L3_1
L3_1 = 1
StoreCompeition_Bazaar_LiveBattleScore = L3_1
L3_1 = 1637962615
StoreCompeition_Bazaar_StartTimestamp = L3_1
L3_1 = 1638063415
StoreCompeition_Bazaar_EndTimestamp = L3_1
L3_1 = 1637962615
StoreCompeition_Myket_StartTimestamp = L3_1
L3_1 = 1638063415
StoreCompeition_Myket_EndTimestamp = L3_1
L3_1 = 4
MaximumLevelToShowNewSeriesOfCards = L3_1
L3_1 = 50
Potion_Capacity = L3_1
L3_1 = 5
Maximum_Trainees_Per_Level = L3_1
L3_1 = 0.1
Veteran_Cooldown_Modifier = L3_1
L3_1 = 20
Tribe_ChiefMessageTitleCharacterLimit = L3_1
L3_1 = 200
Tribe_ChiefMessageBodyCharacterLimit = L3_1
L3_1 = {}
L4_1 = 4
L5_1 = 10
L6_1 = 20
L7_1 = 50
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L3_1[4] = L7_1
PackUnlocks = L3_1
L3_1 = false
Is_Winter = L3_1
L3_1 = false
Is_Norouz = L3_1
L3_1 = false
Is_Fall = L3_1
L3_1 = 150
CardPack_HeroBasePrice = L3_1
L3_1 = 50
CardPack_HeroPriceMultiplier = L3_1
L3_1 = {}
L4_1 = {}
L5_1 = "id"
L6_1 = 1
L4_1[L5_1] = L6_1
L5_1 = "name"
L6_1 = "Minions"
L4_1[L5_1] = L6_1
L5_1 = {}
L6_1 = "id"
L7_1 = 2
L5_1[L6_1] = L7_1
L6_1 = "name"
L7_1 = "Weapons"
L5_1[L6_1] = L7_1
L3_1[1] = L4_1
L3_1[2] = L5_1
ItemTypes = L3_1
L3_1 = {}
L4_1 = "2001"
L5_1 = 100
L3_1[L4_1] = L5_1
L4_1 = "2002"
L5_1 = 200
L3_1[L4_1] = L5_1
L4_1 = "2003"
L5_1 = 300
L3_1[L4_1] = L5_1
L4_1 = "2004"
L5_1 = 400
L3_1[L4_1] = L5_1
L4_1 = "2005"
L5_1 = 500
L3_1[L4_1] = L5_1
L4_1 = "2006"
L5_1 = 600
L3_1[L4_1] = L5_1
L4_1 = "2007"
L5_1 = 700
L3_1[L4_1] = L5_1
L4_1 = "2008"
L5_1 = 800
L3_1[L4_1] = L5_1
L4_1 = "2009"
L5_1 = 900
L3_1[L4_1] = L5_1
L4_1 = "2010"
L5_1 = 1000
L3_1[L4_1] = L5_1
L4_1 = "2011"
L5_1 = 1100
L3_1[L4_1] = L5_1
ACHIEVEMENTS_REWARDS = L3_1
L3_1 = 7
Bank_Building_Max_Upgrade_level = L3_1
L3_1 = 8
Mine_Building_Max_Upgrade_level = L3_1
L3_1 = 44
Offence_Building_Max_Upgrade_level = L3_1
L3_1 = 44
Defence_Building_Max_Upgrade_level = L3_1
L3_1 = {}
L4_1 = 0
L5_1 = {}
L6_1 = "startTime"
L7_1 = "06:44"
L5_1[L6_1] = L7_1
L6_1 = "endTime"
L7_1 = "07:14"
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 1
L5_1 = {}
L6_1 = "startTime"
L7_1 = "21:00"
L5_1[L6_1] = L7_1
L6_1 = "endTime"
L7_1 = "22:00"
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
Golden_Times = L3_1

function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = ""
  bonus_Time_Begining = L0_2
  L0_2 = ""
  bonus_Time_Ending = L0_2
  L0_2 = 0
  while true do
    L1_2 = Golden_Times
    if not L1_2 then
      break
    end
    L1_2 = Golden_Times
    L1_2 = L1_2[L0_2]
    if not L1_2 then
      break
    end
    L1_2 = Golden_Times
    L1_2 = L1_2[L0_2]
    L1_2 = L1_2.startTime
    if not L1_2 then
      break
    end
    L1_2 = Golden_Times
    L1_2 = L1_2[L0_2]
    L1_2 = L1_2.startTime
    if L1_2 then
      L1_2 = bonus_Time_Begining
      L2_2 = " "
      L3_2 = Golden_Times
      L3_2 = L3_2[L0_2]
      L3_2 = L3_2.startTime
      L1_2 = L1_2 .. L2_2 .. L3_2
      bonus_Time_Begining = L1_2
    end
    L1_2 = Golden_Times
    L1_2 = L1_2[L0_2]
    L1_2 = L1_2.endTime
    if L1_2 then
      L1_2 = bonus_Time_Ending
      L2_2 = " "
      L3_2 = Golden_Times
      L3_2 = L3_2[L0_2]
      L3_2 = L3_2.endTime
      L1_2 = L1_2 .. L2_2 .. L3_2
      bonus_Time_Ending = L1_2
    end
    L0_2 = L0_2 + 1
  end
end

setBonusTimeSeries = L3_1
L3_1 = {}
L4_1 = 0
L5_1 = {}
L6_1 = "gold"
L7_1 = 0
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 20000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 0
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 15000
L5_1[L6_1] = L7_1
L6_1 = "mainhall"
L7_1 = 0
L5_1[L6_1] = L7_1
L6_1 = "bank"
L7_1 = 0
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 1
L5_1 = {}
L6_1 = "gold"
L7_1 = 20000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 50000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 40000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 40000
L5_1[L6_1] = L7_1
L6_1 = "mainhall"
L7_1 = 30000
L5_1[L6_1] = L7_1
L6_1 = "bank"
L7_1 = 2000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 2
L5_1 = {}
L6_1 = "gold"
L7_1 = 40000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 75000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 60000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 60000
L5_1[L6_1] = L7_1
L6_1 = "mainhall"
L7_1 = 80000
L5_1[L6_1] = L7_1
L6_1 = "bank"
L7_1 = 5000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 3
L5_1 = {}
L6_1 = "gold"
L7_1 = 80000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 110000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 90000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 90000
L5_1[L6_1] = L7_1
L6_1 = "mainhall"
L7_1 = 120000
L5_1[L6_1] = L7_1
L6_1 = "bank"
L7_1 = 30000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 4
L5_1 = {}
L6_1 = "gold"
L7_1 = 300000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 170000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 135000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 135000
L5_1[L6_1] = L7_1
L6_1 = "mainhall"
L7_1 = 180000
L5_1[L6_1] = L7_1
L6_1 = "bank"
L7_1 = 100000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 5
L5_1 = {}
L6_1 = "gold"
L7_1 = 1500000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 250000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 200000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 200000
L5_1[L6_1] = L7_1
L6_1 = "mainhall"
L7_1 = 270000
L5_1[L6_1] = L7_1
L6_1 = "bank"
L7_1 = 250000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 6
L5_1 = {}
L6_1 = "gold"
L7_1 = 3500000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 380000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 300000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 300000
L5_1[L6_1] = L7_1
L6_1 = "mainhall"
L7_1 = 400000
L5_1[L6_1] = L7_1
L6_1 = "bank"
L7_1 = 1000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 7
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 570000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 455000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 450000
L5_1[L6_1] = L7_1
L6_1 = "mainhall"
L7_1 = 600000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 8
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 850000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 680000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 680000
L5_1[L6_1] = L7_1
L6_1 = "mainhall"
L7_1 = 910000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 9
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 1300000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 1025000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 1025000
L5_1[L6_1] = L7_1
L6_1 = "mainhall"
L7_1 = 1350000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 10
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 2000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 1800000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 1250000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 11
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 4000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 3600000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 1500000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 12
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 8000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 7200000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 1750000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 13
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 16000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 14400000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 2000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 14
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 32000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 28800000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 2250000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 15
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 64000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 32000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 2500000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 16
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 128000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 64000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 2750000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 17
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 256000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 128000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 3000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 18
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 400000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 256000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 3500000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 19
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 500000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 400000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 4000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 20
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 600000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 500000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 4500000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 21
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 700000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 600000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 5000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 22
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 800000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 700000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 6000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 23
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 900000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 800000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 7000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 24
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 1000000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 900000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 8000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 25
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 1200000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 1000000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 26
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 1400000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 1200000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 10000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 27
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 1600000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 1400000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 12000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 28
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 1800000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 1600000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 15000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 29
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 2000000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 1800000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 20000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 30
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 2500000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 2100000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 50000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 31
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 3000000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 2400000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 100000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 32
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 3500000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 2700000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 300000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 33
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 4000000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 3200000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 500000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 34
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 4700000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 3700000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 1000000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 35
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 5400000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4200000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 1500000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 36
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 6100000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4700000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 3000000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 37
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 6800000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 5400000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 4500000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 38
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 7500000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 6100000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 9000000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 39
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 8400000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 6800000000
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 12500000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 40
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 9300000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 7600000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 41
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 10400000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 8400000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 42
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 11500000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 9200000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 43
L5_1 = {}
L6_1 = "gold"
L7_1 = 9000000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 13000000000
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 10000000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
Building_UpgradeCosts = L3_1
L3_1 = {}
L4_1 = 0
L5_1 = {}
L6_1 = "gold"
L7_1 = 0
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 0
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 0
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 0
L5_1[L6_1] = L7_1
L6_1 = "mainhall"
L7_1 = 0
L5_1[L6_1] = L7_1
L6_1 = "bank"
L7_1 = 0
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 1
L5_1 = {}
L6_1 = "gold"
L7_1 = 200
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 5
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 5
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 5
L5_1[L6_1] = L7_1
L6_1 = "mainhall"
L7_1 = 15
L5_1[L6_1] = L7_1
L6_1 = "bank"
L7_1 = 1000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 2
L5_1 = {}
L6_1 = "gold"
L7_1 = 1000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 10
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 10
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 9
L5_1[L6_1] = L7_1
L6_1 = "mainhall"
L7_1 = 20
L5_1[L6_1] = L7_1
L6_1 = "bank"
L7_1 = 5000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 3
L5_1 = {}
L6_1 = "gold"
L7_1 = 3000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 15
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 15
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 13
L5_1[L6_1] = L7_1
L6_1 = "mainhall"
L7_1 = 25
L5_1[L6_1] = L7_1
L6_1 = "bank"
L7_1 = 10000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 4
L5_1 = {}
L6_1 = "gold"
L7_1 = 10000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 20
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 20
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 17
L5_1[L6_1] = L7_1
L6_1 = "mainhall"
L7_1 = 30
L5_1[L6_1] = L7_1
L6_1 = "bank"
L7_1 = 30000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 5
L5_1 = {}
L6_1 = "gold"
L7_1 = 40000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 25
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 25
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 19
L5_1[L6_1] = L7_1
L6_1 = "mainhall"
L7_1 = 35
L5_1[L6_1] = L7_1
L6_1 = "bank"
L7_1 = 100000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 6
L5_1 = {}
L6_1 = "gold"
L7_1 = 100000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 30
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 30
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 22
L5_1[L6_1] = L7_1
L6_1 = "mainhall"
L7_1 = 40
L5_1[L6_1] = L7_1
L6_1 = "bank"
L7_1 = 250000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 7
L5_1 = {}
L6_1 = "gold"
L7_1 = 300000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 35
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 35
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 24
L5_1[L6_1] = L7_1
L6_1 = "mainhall"
L7_1 = 45
L5_1[L6_1] = L7_1
L6_1 = "bank"
L7_1 = 1000000
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 8
L5_1 = {}
L6_1 = "gold"
L7_1 = 500000
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 40
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 40
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 26
L5_1[L6_1] = L7_1
L6_1 = "mainhall"
L7_1 = 50
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 9
L5_1 = {}
L6_1 = "offensive"
L7_1 = 45
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 45
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 28
L5_1[L6_1] = L7_1
L6_1 = "mainhall"
L7_1 = 55
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 10
L5_1 = {}
L6_1 = "offensive"
L7_1 = 50
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 50
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 30
L5_1[L6_1] = L7_1
L6_1 = "mainhall"
L7_1 = 60
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 11
L5_1 = {}
L6_1 = "offensive"
L7_1 = 55
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 55
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 31
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 12
L5_1 = {}
L6_1 = "offensive"
L7_1 = 60
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 60
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 32
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 13
L5_1 = {}
L6_1 = "offensive"
L7_1 = 65
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 65
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 33
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 14
L5_1 = {}
L6_1 = "offensive"
L7_1 = 70
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 70
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 34
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 15
L5_1 = {}
L6_1 = "offensive"
L7_1 = 75
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 75
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 35
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 16
L5_1 = {}
L6_1 = "offensive"
L7_1 = 77
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 77
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 36
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 17
L5_1 = {}
L6_1 = "offensive"
L7_1 = 79
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 79
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 37
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 18
L5_1 = {}
L6_1 = "offensive"
L7_1 = 82
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 82
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 38
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 19
L5_1 = {}
L6_1 = "offensive"
L7_1 = 84
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 84
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 39
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 20
L5_1 = {}
L6_1 = "offensive"
L7_1 = 85
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 85
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 40
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 21
L5_1 = {}
L6_1 = "offensive"
L7_1 = 86
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 86
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 41
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 22
L5_1 = {}
L6_1 = "offensive"
L7_1 = 87
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 87
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 42
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 23
L5_1 = {}
L6_1 = "offensive"
L7_1 = 88
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 88
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 50
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 24
L5_1 = {}
L6_1 = "offensive"
L7_1 = 89
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 89
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 44
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 25
L5_1 = {}
L6_1 = "offensive"
L7_1 = 90
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 90
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 45
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 26
L5_1 = {}
L6_1 = "offensive"
L7_1 = 91
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 91
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 46
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 27
L5_1 = {}
L6_1 = "offensive"
L7_1 = 92
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 92
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 47
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 28
L5_1 = {}
L6_1 = "offensive"
L7_1 = 93
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 93
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 48
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 29
L5_1 = {}
L6_1 = "offensive"
L7_1 = 94
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 94
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 49
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 30
L5_1 = {}
L6_1 = "offensive"
L7_1 = 95
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 95
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 50
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 31
L5_1 = {}
L6_1 = "offensive"
L7_1 = 96
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 96
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 49
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 32
L5_1 = {}
L6_1 = "offensive"
L7_1 = 97
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 97
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 48
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 33
L5_1 = {}
L6_1 = "offensive"
L7_1 = 98
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 98
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 47
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 34
L5_1 = {}
L6_1 = "offensive"
L7_1 = 99
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 99
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 46
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 35
L5_1 = {}
L6_1 = "offensive"
L7_1 = 100
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 100
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 45
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 36
L5_1 = {}
L6_1 = "offensive"
L7_1 = 101
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 101
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 44
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 37
L5_1 = {}
L6_1 = "offensive"
L7_1 = 102
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 102
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 43
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 38
L5_1 = {}
L6_1 = "offensive"
L7_1 = 103
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 103
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 42
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 39
L5_1 = {}
L6_1 = "offensive"
L7_1 = 104
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 104
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 41
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 40
L5_1 = {}
L6_1 = "offensive"
L7_1 = 105
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 105
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 40
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 41
L5_1 = {}
L6_1 = "offensive"
L7_1 = 106
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 106
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 40
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 42
L5_1 = {}
L6_1 = "offensive"
L7_1 = 107
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 107
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 40
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 43
L5_1 = {}
L6_1 = "offensive"
L7_1 = 108
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 108
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 40
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 44
L5_1 = {}
L6_1 = "offensive"
L7_1 = 110
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 110
L5_1[L6_1] = L7_1
L6_1 = "cooldown"
L7_1 = 40
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
Building_Benefits = L3_1
L3_1 = {}
L4_1 = 0
L5_1 = {}
L6_1 = "gold"
L7_1 = 0
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 0
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 0
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 1
L5_1 = {}
L6_1 = "gold"
L7_1 = 1
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 1
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 1
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 2
L5_1 = {}
L6_1 = "gold"
L7_1 = 2
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 1
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 1
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 3
L5_1 = {}
L6_1 = "gold"
L7_1 = 3
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 2
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 2
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 4
L5_1 = {}
L6_1 = "gold"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 2
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 2
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 5
L5_1 = {}
L6_1 = "gold"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 2
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 2
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 6
L5_1 = {}
L6_1 = "gold"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 3
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 3
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 7
L5_1 = {}
L6_1 = "gold"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 3
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 3
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 8
L5_1 = {}
L6_1 = "gold"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "offensive"
L7_1 = 3
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 3
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 9
L5_1 = {}
L6_1 = "offensive"
L7_1 = 3
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 3
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 10
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 11
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 12
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 13
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 14
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 15
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 16
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 17
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 18
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 19
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 20
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 21
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 22
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 23
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 24
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 25
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 26
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 27
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 28
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 29
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 30
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 31
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 32
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 33
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 34
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 35
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 36
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 37
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 38
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 39
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 40
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 41
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 42
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 43
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
L4_1 = 44
L5_1 = {}
L6_1 = "offensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L6_1 = "defensive"
L7_1 = 4
L5_1[L6_1] = L7_1
L3_1[L4_1] = L5_1
Building_MaxAssign = L3_1

function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = rawset
  L3_2 = A0_2
  L4_2 = A1_2
  L5_2 = {}
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = rawget
  L3_2 = A0_2
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end

buildingGet = L3_1
L3_1 = setmetatable
L4_1 = Building_Benefits
L5_1 = {}
L6_1 = "__index"
L7_1 = buildingGet
L5_1[L6_1] = L7_1
L3_1(L4_1, L5_1)
L3_1 = setmetatable
L4_1 = Building_UpgradeCosts
L5_1 = {}
L6_1 = "__index"
L7_1 = buildingGet
L5_1[L6_1] = L7_1
L3_1(L4_1, L5_1)
L3_1 = setmetatable
L4_1 = Building_MaxAssign
L5_1 = {}
L6_1 = "__index"
L7_1 = buildingGet
L5_1[L6_1] = L7_1
L3_1(L4_1, L5_1)
L3_1 = setmetatable
L4_1 = Golden_Times
L5_1 = {}
L6_1 = "__index"
L7_1 = buildingGet
L5_1[L6_1] = L7_1
L3_1(L4_1, L5_1)
L3_1 = 3
GoldPackMultiplier = L3_1
L3_1 = 80
VeteranGoldPackMultiplier = L3_1
L3_1 = 20
VeteranGoldPackDivider = L3_1
L3_1 = {}
L4_1 = 1
L5_1 = 2.5
L3_1[L4_1] = L5_1
L4_1 = 2
L5_1 = 4.5
L3_1[L4_1] = L5_1
L4_1 = 3
L5_1 = 7
L3_1[L4_1] = L5_1
L4_1 = 4
L5_1 = 10
L3_1[L4_1] = L5_1
L4_1 = 5
L5_1 = 12.5
L3_1[L4_1] = L5_1
L4_1 = 6
L5_1 = 16
L3_1[L4_1] = L5_1
L4_1 = 7
L5_1 = 20
L3_1[L4_1] = L5_1
L4_1 = 8
L5_1 = 25
L3_1[L4_1] = L5_1
L4_1 = 9
L5_1 = 30
L3_1[L4_1] = L5_1
goldPack_Multiplier = L3_1
L3_1 = 0.7
Building_GoldMinePowerModifier1 = L3_1
L3_1 = 3
Building_GoldMinePowerModifier2 = L3_1
L3_1 = 0.1
Building_OffensePowerModifier = L3_1
L3_1 = 0.1
Building_DefensePowerModifier = L3_1
L3_1 = "achievement_id"
Achievements_RegisterId = L3_1
L3_1 = "achievement_blob"
achievements_Stats = L3_1
L3_1 = 100
Card_PriceModifier = L3_1
L3_1 = 0.1
Card_EnhancementCostModifier = L3_1
L3_1 = 0.2
Card_EnhancementModifier = L3_1
L3_1 = 45
Card_MaxEnhanceModifier = L3_1
L3_1 = 0.7
Card_EnhanceRarityModifier = L3_1
L3_1 = 0.02
Card_Vet_EnhancementModifier = L3_1
L3_1 = 1.5
Card_Vet_SacrificePowerModifier = L3_1
L3_1 = 0.4
Card_Vet_EnhanceRarityModifier = L3_1
L3_1 = 1450000000
Card_EnhanceMaximumCardPower = L3_1
L3_1 = 1
Card_EnhanceNectarModifier = L3_1
L3_1 = 100
MinimumNectarCostForEnhancement = L3_1
L3_1 = 1
Card_EvolutionCostModifier = L3_1
L3_1 = 2
Card_Vet_EvolutionCostModifier = L3_1
L3_1 = 1
Card_EvolutionEnhancePowerModifier = L3_1
L3_1 = 0.25
Card_CooldownCostModifier = L3_1
L3_1 = 0.2
Card_CooldownIncreaseModifier = L3_1
L3_1 = 0
Card_EnhanceWithNectarModifier = L3_1
L3_1 = -2
Card_EvolutionCostCorrectionModifier = L3_1
L3_1 = 5
Card_MonsterEvolutionMinRarity = L3_1
L3_1 = 400000000
Card_MonsterEvolutionMinCost = L3_1
L3_1 = 300000000
Card_MonsterEvolutionMaxPower = L3_1
L3_1 = 100000000
Card_MonsterEvolutionPowerModifier = L3_1
L3_1 = 100
MinPlayerLevelForChangingName = L3_1
L3_1 = 1000
PlayerChangeNameCostNectar = L3_1
L3_1 = 60000
Messages_PeriodicalCheckTimer = L3_1
L3_1 = 2048
Messages_MessageMaxLength = L3_1
L3_1 = 1.3
Player_LevelMultiplier = L3_1
L3_1 = 2.7
Player_LevelExpo = L3_1
L3_1 = 16
Player_MaxPlayerNameLength = L3_1
L3_1 = 2000
Player_FacebookLikeBonus = L3_1
L3_1 = 2000
Player_InstagramLikeBonus = L3_1
L3_1 = 15000
Player_TribeCreationCost = L3_1
L3_1 = 6
Player_TribeJoinLevelLimit = L3_1
L3_1 = 500
Player_PokeGold = L3_1
L3_1 = 100
Player_MinimumDonationAmount = L3_1
L3_1 = 5000
Player_InviterReward = L3_1
L3_1 = 1000
Player_InviteeReward = L3_1
L3_1 = 100
Ranking_NumberOfTopPlayersToFetch = L3_1
L3_1 = 5
Ranking_NumberOfNearPlayersToFetch = L3_1
L3_1 = 100
Ranking_NumberOfTopTribesToFetch = L3_1
L3_1 = 5
Ranking_NumberOfNearTribesToFetch = L3_1
L3_1 = 100
Ranking_NumberOfLocalTopPlayersToFetch = L3_1
L3_1 = 5
Ranking_NumberOfLocalNearPlayersToFetch = L3_1
L3_1 = "tribe_id"
Tribe_IDKey = L3_1
L3_1 = "name"
Tribe_NameKey = L3_1
L3_1 = "description"
Tribe_DescKey = L3_1
L3_1 = "member_id"
Tribe_MemberId = L3_1
L3_1 = "invitee_name"
Tribe_InviteeName = L3_1
L3_1 = "query"
Tribe_Query = L3_1
L3_1 = "status"
Tribe_Status = L3_1
L3_1 = 1
Tribe_Status_Open = L3_1
L3_1 = 2
Tribe_Status_Invite_Only = L3_1
L3_1 = 3
Tribe_Status_Closed = L3_1
L3_1 = "req_id"
Message_ReqId = L3_1
L3_1 = "new_member_id"
Message_NewMemberId = L3_1
L3_1 = "decision"
Message_Decision = L3_1
L3_1 = "status"
Response_StatusKey = L3_1
L3_1 = "data"
Response_DataKey = L3_1
L3_1 = "id"
Response_IDKey = L3_1
L3_1 = "name"
Response_NameKey = L3_1
L3_1 = "rank"
Response_RankKey = L3_1
L3_1 = "xp"
Response_XPKey = L3_1
L3_1 = "level"
Response_LevelKey = L3_1
L3_1 = "player_id"
Player_IDKey = L3_1
L3_1 = "gold"
Player_GoldKey = L3_1
L3_1 = "opponent_id"
Player_OpponentIdKey = L3_1
L3_1 = "attacks_in_today"
Player_AttacksInTodayKey = L3_1
L3_1 = "check"
Player_QKey = L3_1
L3_1 = "cards"
Player_CardsKey = L3_1
L3_1 = "udid"
Player_DeviceIDKey = L3_1
L3_1 = "device_name"
Player_DeviceNameKey = L3_1
L3_1 = "game_version"
Player_GameVersionKey = L3_1
L3_1 = "os_type"
Player_OSTypeKey = L3_1
L3_1 = "os_version"
Player_OSVersion = L3_1
L3_1 = "model"
Player_ModelKey = L3_1
L3_1 = "new_email"
Player_EmailKey = L3_1
L3_1 = "resp"
Player_CaptchaKey = L3_1
L3_1 = "status"
Player_Status = L3_1
L3_1 = true
TapSell_Enabled = L3_1
L3_1 = false
UnityAds_Enabled = L3_1
L3_1 = true
Chartboost_Enabled = L3_1
L3_1 = false
Admob_Enabled = L3_1
L3_1 = true
Adivery_Enabled = L3_1
L3_1 = {}
L4_1 = "TapSell"
L5_1 = 1
L3_1[L4_1] = L5_1
L4_1 = "UnityAds"
L5_1 = 2
L3_1[L4_1] = L5_1
L4_1 = "Chartboost"
L5_1 = 3
L3_1[L4_1] = L5_1
L4_1 = "Admob"
L5_1 = 4
L3_1[L4_1] = L5_1
L4_1 = "Adivery"
L5_1 = 5
L3_1[L4_1] = L5_1
Advertisement_Provider = L3_1
L3_1 = "log"
LogEvent_Key = L3_1
L3_1 = 2
Hero_AttributeMultiplier = L3_1
L3_1 = 0.01
Hero_BenefitModifier = L3_1
L3_1 = 4
Hero_Benefit_BlessingMaxMultiplier = L3_1
L3_1 = 1.1
Hero_Benefit_WisdomMaxMultiplier = L3_1
L3_1 = 5
Hero_Benefit_PowerMaxMultiplier = L3_1
L3_1 = 0.08
Hero_EvolveBaseNectar = L3_1
L3_1 = 0.016666667
Hero_FakePowerModifier = L3_1
L3_1 = 3
Hero_BenefitDecreaseModifier = L3_1
L3_1 = 3000
WheelOfFortune_GoldPriceModifier = L3_1

function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = 0
  L1_2 = 0
  L2_2 = 0.19607843
  return L0_2, L1_2, L2_2
end

veryDarkBlueColor = L3_1

function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = 0.08235294
  L1_2 = 0.32156863
  L2_2 = 0.42352941
  return L0_2, L1_2, L2_2
end

darkBlueColor = L3_1

function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = 0.17647059
  L1_2 = 0.41568627
  L2_2 = 0.23921569
  return L0_2, L1_2, L2_2
end

darkGreenColor = L3_1

function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = 0.9803921568627451
  L1_2 = 0.3764705882352941
  L2_2 = 0.6274509803921569
  return L0_2, L1_2, L2_2
end

pinkColor = L3_1

function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = 0.5
  L1_2 = 0.6
  L2_2 = 0.2
  return L0_2, L1_2, L2_2
end

newGreenColor = L3_1

function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = 0.7647058823529411
  L1_2 = 0.8352941176470589
  L2_2 = 0.8509803921568627
  return L0_2, L1_2, L2_2
end

greyBlueColor = L3_1

function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = 1
  L1_2 = 1
  L2_2 = 1
  L3_2 = 1
  return L0_2, L1_2, L2_2, L3_2
end

whiteColor = L3_1

function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = 0.30588235294118
  L1_2 = 0.52549019607843
  L2_2 = 0.10980392156863
  return L0_2, L1_2, L2_2
end

greenColorSceneBorder = L3_1

function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = 0.22352941
  L1_2 = 0.22352941
  L2_2 = 0.22352941
  return L0_2, L1_2, L2_2
end

blackColor = L3_1

function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = 0.85490196
  L1_2 = 0.92941176
  L2_2 = 0.97254902
  return L0_2, L1_2, L2_2
end

lightBlueColor = L3_1

function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = 0.89019608
  L1_2 = 0.94901961
  L2_2 = 0.98039216
  return L0_2, L1_2, L2_2
end

lightBlueColor2 = L3_1

function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = 0.68235294
  L1_2 = 0.84313725
  L2_2 = 0.93333333
  return L0_2, L1_2, L2_2
end

blueColor = L3_1

function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = 0.30588235
  L1_2 = 0.5254902
  L2_2 = 0.10980392
  return L0_2, L1_2, L2_2
end

greenColor = L3_1

function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = 0.4
  L1_2 = 0.68235294
  L2_2 = 0.14117647
  return L0_2, L1_2, L2_2
end

lightGreenColor = L3_1

function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = 0.1333333
  L1_2 = 0.50980392
  L2_2 = 0.6666667
  return L0_2, L1_2, L2_2
end

brightBlueColor = L3_1

function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = 0.90196078
  L1_2 = 0.90196078
  L2_2 = 0.90196078
  return L0_2, L1_2, L2_2
end

lightGreyColor = L3_1

function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = 0.39215686
  L1_2 = 0.39215686
  L2_2 = 0.39215686
  return L0_2, L1_2, L2_2
end

darkGreyColor = L3_1

function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = 0.74509804
  L1_2 = 0.74509804
  L2_2 = 0.74509804
  return L0_2, L1_2, L2_2
end

greyColor = L3_1

function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = 0.59607843
  L1_2 = 0.79607843
  L2_2 = 0.10196078
  L3_2 = 0.78431373
  return L0_2, L1_2, L2_2, L3_2
end

brightGreenColor = L3_1

function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = 0.21176471
  L1_2 = 0.63529412
  L2_2 = 0.83921569
  L3_2 = 0.39215686
  return L0_2, L1_2, L2_2, L3_2
end

lightBlueColor3 = L3_1

function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = 1
  L1_2 = 0
  L2_2 = 0.41960784
  L3_2 = 1
  return L0_2, L1_2, L2_2, L3_2
end

redColor = L3_1

function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = 0.94117647
  L1_2 = 0.22352941
  L2_2 = 0
  L3_2 = 1
  return L0_2, L1_2, L2_2, L3_2
end

yellowColor = L3_1

function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = 0.88627450980392
  L1_2 = 0.88627450980392
  L2_2 = 0.88235294117647
  L3_2 = 1
  return L0_2, L1_2, L2_2, L3_2
end

leagueInfoBackgroundColor = L3_1

function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = mainPlayer
  L0_2 = L0_2.level
  if L0_2 < 10 then
    L0_2 = 1
    return L0_2
  else
    L0_2 = mainPlayer
    L0_2 = L0_2.level
    if 10 <= L0_2 then
      L0_2 = mainPlayer
      L0_2 = L0_2.level
      if L0_2 < 20 then
        L0_2 = 2.5
        return L0_2
    end
    else
      L0_2 = mainPlayer
      L0_2 = L0_2.level
      if 20 <= L0_2 then
        L0_2 = mainPlayer
        L0_2 = L0_2.level
        if L0_2 < 30 then
          L0_2 = 4.5
          return L0_2
      end
      else
        L0_2 = mainPlayer
        L0_2 = L0_2.level
        if 30 <= L0_2 then
          L0_2 = mainPlayer
          L0_2 = L0_2.level
          if L0_2 < 40 then
            L0_2 = 7
            return L0_2
        end
        else
          L0_2 = mainPlayer
          L0_2 = L0_2.level
          if 40 <= L0_2 then
            L0_2 = mainPlayer
            L0_2 = L0_2.level
            if L0_2 < 50 then
              L0_2 = 10
              return L0_2
          end
          else
            L0_2 = mainPlayer
            L0_2 = L0_2.level
            if 50 <= L0_2 then
              L0_2 = mainPlayer
              L0_2 = L0_2.level
              if L0_2 < 60 then
                L0_2 = 12.5
                return L0_2
            end
            else
              L0_2 = mainPlayer
              L0_2 = L0_2.level
              if 60 <= L0_2 then
                L0_2 = mainPlayer
                L0_2 = L0_2.level
                if L0_2 < 70 then
                  L0_2 = 16
                  return L0_2
              end
              else
                L0_2 = mainPlayer
                L0_2 = L0_2.level
                if 70 <= L0_2 then
                  L0_2 = mainPlayer
                  L0_2 = L0_2.level
                  if L0_2 < 80 then
                    L0_2 = 20
                    return L0_2
                end
                else
                  L0_2 = mainPlayer
                  L0_2 = L0_2.level
                  if 80 <= L0_2 then
                    L0_2 = mainPlayer
                    L0_2 = L0_2.level
                    if L0_2 < 90 then
                      L0_2 = 25
                      return L0_2
                  end
                  else
                    L0_2 = mainPlayer
                    L0_2 = L0_2.level
                    if 90 <= L0_2 then
                      L0_2 = mainPlayer
                      L0_2 = L0_2.level
                      if L0_2 < 100 then
                        L0_2 = 30
                        return L0_2
                    end
                    else
                      L0_2 = mainPlayer
                      L0_2 = L0_2.level
                      if 300 <= L0_2 then
                        L0_2 = math
                        L0_2 = L0_2.floor
                        L1_2 = math
                        L1_2 = L1_2.floor
                        L2_2 = mainPlayer
                        L2_2 = L2_2.level
                        L2_2 = L2_2 - 300
                        L3_2 = VeteranGoldPackDivider
                        L2_2 = L2_2 / L3_2
                        L1_2 = L1_2(L2_2)
                        L2_2 = VeteranGoldPackMultiplier
                        L1_2 = L1_2 * L2_2
                        L0_2 = L0_2(L1_2)
                        L0_2 = 93 + L0_2
                        return L0_2
                      else
                        L0_2 = math
                        L0_2 = L0_2.floor
                        L1_2 = math
                        L1_2 = L1_2.floor
                        L2_2 = mainPlayer
                        L2_2 = L2_2.level
                        L2_2 = L2_2 - 90
                        L2_2 = L2_2 / 10
                        L1_2 = L1_2(L2_2)
                        L2_2 = GoldPackMultiplier
                        L1_2 = L1_2 * L2_2
                        L0_2 = L0_2(L1_2)
                        L0_2 = 30 + L0_2
                        return L0_2
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

getShopMultiplier = L3_1

function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = getShopMultiplier
  L1_2 = L1_2()
  L2_2 = mainPlayer
  L2_2 = L2_2.nectarPrice
  L1_2 = L1_2 / L2_2
  if A0_2 == 10 then
    L2_2 = 30000 * L1_2
    return L2_2
  elseif A0_2 == 20 then
    L2_2 = 90000 * L1_2
    return L2_2
  elseif A0_2 == 50 then
    L2_2 = 300000 * L1_2
    return L2_2
  elseif A0_2 == 100 then
    L2_2 = 1000000 * L1_2
    return L2_2
  end
end

getBoostPackPrice = L3_1
L3_1 = {}
L4_1 = "REGULAR"
L5_1 = 0
L3_1[L4_1] = L5_1
L4_1 = "MOST_POPULAR"
L5_1 = 1
L3_1[L4_1] = L5_1
shopPacks_PopularityStatus = L3_1

function L3_1()
  local L0_2, L1_2
  L0_2 = "QuadonSoltanBold"
  return L0_2
end

fontForTitle = L3_1

function L3_1()
  local L0_2, L1_2
  L0_2 = "QuadonSoltan"
  return L0_2
end

fontForSubtitle = L3_1

function L3_1()
  local L0_2, L1_2, L2_2
  L1_2 = _storeType
  if L1_2 == "bazar" then
    L1_2 = L2_1
    L1_2 = L1_2.decode
    L2_2 = "aHR0cHM6Ly9jYWZlYmF6YWFyLmlyL2luc3RhbGwvP2w9ZmE="
    L1_2 = L1_2(L2_2)
    L0_2 = L1_2
  else
    L1_2 = _storeType
    if L1_2 == "myket" then
      L1_2 = L2_1
      L1_2 = L1_2.decode
      L2_2 = "aHR0cDovL215a2V0LmlyLw=="
      L1_2 = L1_2(L2_2)
      L0_2 = L1_2
    else
      L0_2 = "https://play.google.com/store/apps/details?id=com.tod.fruitcraft"
    end
  end
  return L0_2
end

marketURL = L3_1

function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = 13
  L1_2 = native
  L1_2 = L1_2.newFont
  L2_2 = Constants
  L2_2 = L2_2.fontForSubtitle
  L2_2 = L2_2()
  L3_2 = L0_2
  return L1_2(L2_2, L3_2)
end

nativeFontForTextFields = L3_1

function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = string
  L0_2 = L0_2.sub
  L1_2 = system
  L1_2 = L1_2.getInfo
  L2_2 = "model"
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = 4
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  if L0_2 == "iPad" then
    L0_2 = "360x480"
    return L0_2
  else
    L0_2 = string
    L0_2 = L0_2.sub
    L1_2 = system
    L1_2 = L1_2.getInfo
    L2_2 = "model"
    L1_2 = L1_2(L2_2)
    L2_2 = 1
    L3_2 = 2
    L0_2 = L0_2(L1_2, L2_2, L3_2)
    if L0_2 == "iP" then
      L0_2 = display
      L0_2 = L0_2.pixelHeight
      if 960 < L0_2 then
        L0_2 = "320x568"
        return L0_2
    end
    else
      L0_2 = string
      L0_2 = L0_2.sub
      L1_2 = system
      L1_2 = L1_2.getInfo
      L2_2 = "model"
      L1_2 = L1_2(L2_2)
      L2_2 = 1
      L3_2 = 2
      L0_2 = L0_2(L1_2, L2_2, L3_2)
      if L0_2 ~= "iP" then
        L0_2 = display
        L0_2 = L0_2.pixelHeight
        L1_2 = display
        L1_2 = L1_2.pixelWidth
        L0_2 = L0_2 / L1_2
        if L0_2 ~= 1.5 then
          goto lbl_54
        end
      end
      L0_2 = "320x480"
      do return L0_2 end
      goto lbl_66
      ::lbl_54::
      L0_2 = display
      L0_2 = L0_2.pixelHeight
      L1_2 = display
      L1_2 = L1_2.pixelWidth
      L0_2 = L0_2 / L1_2
      if 1.72 < L0_2 then
        L0_2 = "320x568"
        return L0_2
      else
        L0_2 = "320x512"
        return L0_2
      end
    end
  end
  ::lbl_66::
end

deviceSpecificFilePostfix = L3_1

function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = string
  L0_2 = L0_2.sub
  L1_2 = system
  L1_2 = L1_2.getInfo
  L2_2 = "model"
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = 4
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  if L0_2 == "iPad" then
    L0_2 = "480"
    return L0_2
  else
    L0_2 = string
    L0_2 = L0_2.sub
    L1_2 = system
    L1_2 = L1_2.getInfo
    L2_2 = "model"
    L1_2 = L1_2(L2_2)
    L2_2 = 1
    L3_2 = 2
    L0_2 = L0_2(L1_2, L2_2, L3_2)
    if L0_2 == "iP" then
      L0_2 = display
      L0_2 = L0_2.pixelHeight
      if 960 < L0_2 then
        L0_2 = "568"
        return L0_2
    end
    else
      L0_2 = string
      L0_2 = L0_2.sub
      L1_2 = system
      L1_2 = L1_2.getInfo
      L2_2 = "model"
      L1_2 = L1_2(L2_2)
      L2_2 = 1
      L3_2 = 2
      L0_2 = L0_2(L1_2, L2_2, L3_2)
      if L0_2 ~= "iP" then
        L0_2 = display
        L0_2 = L0_2.pixelHeight
        L1_2 = display
        L1_2 = L1_2.pixelWidth
        L0_2 = L0_2 / L1_2
        if L0_2 ~= 1.5 then
          goto lbl_54
        end
      end
      L0_2 = "480"
      do return L0_2 end
      goto lbl_66
      ::lbl_54::
      L0_2 = display
      L0_2 = L0_2.pixelHeight
      L1_2 = display
      L1_2 = L1_2.pixelWidth
      L0_2 = L0_2 / L1_2
      if 1.72 < L0_2 then
        L0_2 = "568"
        return L0_2
      else
        L0_2 = "512"
        return L0_2
      end
    end
  end
  ::lbl_66::
end

deviceWidthSpecificFilePostfix = L3_1

function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = string
  L0_2 = L0_2.sub
  L1_2 = system
  L1_2 = L1_2.getInfo
  L2_2 = "model"
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = 4
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  if L0_2 == "iPad" then
    L0_2 = "360"
    return L0_2
  else
    L0_2 = string
    L0_2 = L0_2.sub
    L1_2 = system
    L1_2 = L1_2.getInfo
    L2_2 = "model"
    L1_2 = L1_2(L2_2)
    L2_2 = 1
    L3_2 = 2
    L0_2 = L0_2(L1_2, L2_2, L3_2)
    if L0_2 == "iP" then
      L0_2 = display
      L0_2 = L0_2.pixelHeight
      if 960 < L0_2 then
        L0_2 = "320"
        return L0_2
    end
    else
      L0_2 = string
      L0_2 = L0_2.sub
      L1_2 = system
      L1_2 = L1_2.getInfo
      L2_2 = "model"
      L1_2 = L1_2(L2_2)
      L2_2 = 1
      L3_2 = 2
      L0_2 = L0_2(L1_2, L2_2, L3_2)
      if L0_2 ~= "iP" then
        L0_2 = display
        L0_2 = L0_2.pixelHeight
        L1_2 = display
        L1_2 = L1_2.pixelWidth
        L0_2 = L0_2 / L1_2
        if L0_2 ~= 1.5 then
          goto lbl_54
        end
      end
      L0_2 = "320"
      do return L0_2 end
      goto lbl_66
      ::lbl_54::
      L0_2 = display
      L0_2 = L0_2.pixelHeight
      L1_2 = display
      L1_2 = L1_2.pixelWidth
      L0_2 = L0_2 / L1_2
      if 1.72 < L0_2 then
        L0_2 = "320"
        return L0_2
      else
        L0_2 = "320"
        return L0_2
      end
    end
  end
  ::lbl_66::
end

deviceHeightSpecificFilePostfix = L3_1
L3_1 = 1
Player_Tribe_Permission_Chief = L3_1
L3_1 = 5
Opponent_numberOfFetchOpponent = L3_1

function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = _buildType
  if L0_2 == "release" then
    return
  end
  L0_2 = print
  L1_2 = "============================     Dumping Constants       ========================"
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "         Constant version: "
  L2_2 = version
  L1_2 = L1_2 .. L2_2
  L0_2(L1_2)
  L0_2 = pairs
  L1_2 = _M
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = print
    L6_2 = L3_2
    L7_2 = " :"
    L6_2 = L6_2 .. L7_2
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  L0_2 = print
  L1_2 = "============================     End of dump         ========================"
  L0_2(L1_2)
  L0_2 = dumpTribeData
  L0_2()
end

dumpConstants = L3_1

function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = _buildType
  if L0_2 == "release" then
    return
  end
  L0_2 = print
  L1_2 = "============================     Dumping Tribe Data       ========================"
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "         Constant version: "
  L2_2 = version
  L1_2 = L1_2 .. L2_2
  L0_2(L1_2)
  
  function L0_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L2_3 = print
    L3_3 = "     "
    L4_3 = A1_3
    L5_3 = ":"
    L3_3 = L3_3 .. L4_3 .. L5_3
    L2_3(L3_3)
    L2_3 = pairs
    L3_3 = A0_3
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      L7_3 = pairs
      L8_3 = L6_3
      L7_3, L8_3, L9_3 = L7_3(L8_3)
      for L10_3, L11_3 in L7_3, L8_3, L9_3 do
        L12_3 = print
        L13_3 = L5_3
        L14_3 = "."
        L15_3 = L10_3
        L16_3 = " :"
        L13_3 = L13_3 .. L14_3 .. L15_3 .. L16_3
        L14_3 = L11_3
        L12_3(L13_3, L14_3)
      end
    end
  end
  
  L1_2 = L0_2
  L2_2 = Building_UpgradeCosts
  L3_2 = "Building_UpgradeCosts"
  L1_2(L2_2, L3_2)
  L1_2 = L0_2
  L2_2 = Building_MaxAssign
  L3_2 = "Building_MaxAssign"
  L1_2(L2_2, L3_2)
  L1_2 = L0_2
  L2_2 = Building_Benefits
  L3_2 = "Building_Benefits"
  L1_2(L2_2, L3_2)
  L1_2 = L0_2
  L2_2 = Golden_Times
  L3_2 = "Golden_Times"
  L1_2(L2_2, L3_2)
  L1_2 = print
  L2_2 = "============================     End of dump         ========================"
  L1_2(L2_2)
end

dumpTribeData = L3_1
L3_1 = {}
L4_1 = "LATEST_CONSTANTS_VERSION"
L3_1[L4_1] = "version"
L4_1 = "FACEBOOK_LIKE_REWARD_AMOUNT"
L5_1 = "Player_FacebookLikeBonus"
L3_1[L4_1] = L5_1
L4_1 = "INSTAGRAM_LIKE_REWARD_AMOUNT"
L5_1 = "Player_InstagramLikeBonus"
L3_1[L4_1] = L5_1
L4_1 = "MESSAGE_MAX_LENGTH"
L5_1 = "Messages_MessageMaxLength"
L3_1[L4_1] = L5_1
L4_1 = "TRIBE_CREATION_COST"
L5_1 = "Player_TribeCreationCost"
L3_1[L4_1] = L5_1
L4_1 = "TRIBE_JOIN_LEVEL_LIMIT"
L5_1 = "Player_TribeJoinLevelLimit"
L3_1[L4_1] = L5_1
L4_1 = "INITIAL_QUEST_GOLD_REWARD"
L5_1 = "Quest_InitialQuestGold"
L3_1[L4_1] = L5_1
L4_1 = "INITIAL_QUEST_POWER"
L5_1 = "Quest_InitialQuestPower"
L3_1[L4_1] = L5_1
L4_1 = "COST_PER_POWER_RATIO"
L5_1 = "Quest_CostPerPowerRatio"
L3_1[L4_1] = L5_1
L4_1 = "COST_PER_POWER_RATIO_EXPONENT"
L5_1 = "Quest_CostPerPowerRatioExponent"
L3_1[L4_1] = L5_1
L4_1 = "QUEST_DEFENCE_MIN"
L5_1 = "Quest_DefenceMin"
L3_1[L4_1] = L5_1
L4_1 = "NEW_QUEST_COEF"
L5_1 = "Quest_Coef"
L3_1[L4_1] = L5_1
L4_1 = "NEW_QUEST_EXPONENT"
L5_1 = "Quest_Exponent"
L3_1[L4_1] = L5_1
L4_1 = "QUEST_DEFENCE_MULTIPLIER"
L5_1 = "Quest_DefenceMultiplier"
L3_1[L4_1] = L5_1
L4_1 = "QUEST_STEP"
L5_1 = "Quest_BossStep"
L3_1[L4_1] = L5_1
L4_1 = "QUEST_BOSS_POWER_MULTIPLIER"
L5_1 = "Quest_BossPowerMultiplier"
L3_1[L4_1] = L5_1
L4_1 = "OFFENSE_CARDPOWER_BONUS_MODIFIER"
L5_1 = "Building_OffensePowerModifier"
L3_1[L4_1] = L5_1
L4_1 = "DEFENSE_CARDPOWER_BONUS_MODIFIER"
L5_1 = "Building_DefensePowerModifier"
L3_1[L4_1] = L5_1
L4_1 = "ENHANCEMENT_COST_MODIFIER"
L5_1 = "Card_EnhancementCostModifier"
L3_1[L4_1] = L5_1
L4_1 = "ENHANCE_MODIFIER"
L5_1 = "Card_EnhancementModifier"
L3_1[L4_1] = L5_1
L4_1 = "ENHANCE_RARITY_MODIFIER"
L5_1 = "Card_EnhanceRarityModifier"
L3_1[L4_1] = L5_1
L4_1 = "VET_ENHANCE_MODIFIER"
L5_1 = "Card_Vet_EnhancementModifier"
L3_1[L4_1] = L5_1
L4_1 = "VET_ENHANCE_RARITY_MODIFIER"
L5_1 = "Card_Vet_EnhanceRarityModifier"
L3_1[L4_1] = L5_1
L4_1 = "CARD_PRICE_MODIFIER"
L5_1 = "Card_PriceModifier"
L3_1[L4_1] = L5_1
L4_1 = "CARD_MAX_ENHANCE_MODIFIER"
L5_1 = "Card_MaxEnhanceModifier"
L3_1[L4_1] = L5_1
L4_1 = "EVOLUTION_COST_MODIFIER"
L5_1 = "Card_EvolutionCostModifier"
L3_1[L4_1] = L5_1
L4_1 = "VET_EVOLUTION_COST_MODIFIER"
L5_1 = "Card_Vet_EvolutionCostModifier"
L3_1[L4_1] = L5_1
L4_1 = "ENHANCEMENT_EVOLUTION_POWER_MODIFIER"
L5_1 = "Card_EvolutionEnhancePowerModifier"
L3_1[L4_1] = L5_1
L4_1 = "ENHANCE_MAXIMUM_CARD_POWER"
L5_1 = "Card_EnhanceMaximumCardPower"
L3_1[L4_1] = L5_1
L4_1 = "CARD_COOLDOWN_BUY_MODIFIER"
L5_1 = "Card_CooldownCostModifier"
L3_1[L4_1] = L5_1
L4_1 = "CARD_COOLDOWN_INCREASE_MODIFIER"
L5_1 = "Card_CooldownIncreaseModifier"
L3_1[L4_1] = L5_1
L4_1 = "GOLD_MINE_POWER_MODIFIER1"
L5_1 = "Building_GoldMinePowerModifier1"
L3_1[L4_1] = L5_1
L4_1 = "GOLD_MINE_POWER_MODIFIER2"
L5_1 = "Building_GoldMinePowerModifier2"
L3_1[L4_1] = L5_1
L4_1 = "LEVEL_MULTIPLIER"
L5_1 = "Player_LevelMultiplier"
L3_1[L4_1] = L5_1
L4_1 = "POKE_GOLD"
L5_1 = "Player_PokeGold"
L3_1[L4_1] = L5_1
L4_1 = "MINIMUM_DONATION_AMOUNT"
L5_1 = "Player_MinimumDonationAmount"
L3_1[L4_1] = L5_1
L4_1 = "INVITATION_INVITER_REWARD"
L5_1 = "Player_InviterReward"
L3_1[L4_1] = L5_1
L4_1 = "INVITATION_INVITEE_REWARD"
L5_1 = "Player_InviteeReward"
L3_1[L4_1] = L5_1
L4_1 = "MAX_PLAYER_NAME_LENGTH"
L5_1 = "Player_MaxPlayerNameLength"
L3_1[L4_1] = L5_1
L4_1 = "ATTACK_XP_MODIFIER"
L5_1 = "Battle_XPRewardMultiplier"
L3_1[L4_1] = L5_1
L4_1 = "ATTACK_XP_DIVIDER_OFFSET"
L5_1 = "Battle_XPDividerOffset"
L3_1[L4_1] = L5_1
L4_1 = "ATTACK_XP_DIVIDER_LOG_BASE"
L5_1 = "Battle_XPDividerLogBase"
L3_1[L4_1] = L5_1
L4_1 = "GOLD_PACK_MULTIPLIER"
L5_1 = "GoldPackMultiplier"
L3_1[L4_1] = L5_1
L4_1 = "VETERAN_GOLD_PACK_MULTIPLIER"
L5_1 = "VeteranGoldPackMultiplier"
L3_1[L4_1] = L5_1
L4_1 = "VETERAN_GOLD_PACK_DIVIDER"
L5_1 = "VeteranGoldPackDivider"
L3_1[L4_1] = L5_1
L4_1 = "SCOUT_COST_MAX"
L5_1 = "Scout_CostMax"
L3_1[L4_1] = L5_1
L4_1 = "SCOUT_COST_BASE"
L5_1 = "Scout_CostBase"
L3_1[L4_1] = L5_1
L4_1 = "SCOUT_COST_REL_COEF"
L5_1 = "Scout_CostRelCoef"
L3_1[L4_1] = L5_1
L4_1 = "CAN_OPEN_AVATAR_PACK"
L5_1 = "Can_Open_Avatar_Pack"
L3_1[L4_1] = L5_1
L4_1 = "CAN_OPEN_BOOSTS_PACK"
L5_1 = "Can_Open_Boosts_Pack"
L3_1[L4_1] = L5_1
L4_1 = "XP_BOOST_TOTAL_TIME"
L5_1 = "Xp_Boost_Total_Time"
L3_1[L4_1] = L5_1
L4_1 = "POWER_BOOST_TOTAL_TIME"
L5_1 = "Power_Boost_Total_Time"
L3_1[L4_1] = L5_1
L4_1 = "UNLOCK_LEVEL_BOOSTS"
L5_1 = "UnlockLevel_Boosts"
L3_1[L4_1] = L5_1
L4_1 = "BONUS_TIME_BEGINING"
L5_1 = "bonus_Time_Begining"
L3_1[L4_1] = L5_1
L4_1 = "BONUS_TIME_ENDING"
L5_1 = "bonus_Time_Ending"
L3_1[L4_1] = L5_1
L4_1 = "VETERAN_COOLDOWN_MODIFIER"
L5_1 = "Veteran_Cooldown_Modifier"
L3_1[L4_1] = L5_1
L4_1 = "CARD_VET_SACRIFICE_POWER_MODIFIER"
L5_1 = "Card_Vet_SacrificePowerModifier"
L3_1[L4_1] = L5_1
L4_1 = "RATING_WIN_DIVISOR"
L5_1 = "RATING_WINNER_DIVISOR"
L3_1[L4_1] = L5_1
L4_1 = "TRIBE_TEMPORARY_BENEFIT_OFFENSE_BUILDING_LEVEL"
L5_1 = "FakeTribe_OffenseBuildingLevel"
L3_1[L4_1] = L5_1
L4_1 = "TRIBE_TEMPORARY_BENEFIT_DEFENSE_BUILDING_LEVEL"
L5_1 = "FakeTribe_DefenseBuildingLevel"
L3_1[L4_1] = L5_1
L4_1 = "GOLD_PACKS_SORT_DESC"
L5_1 = "Shop_GoldPacksDescendingOrder"
L3_1[L4_1] = L5_1
L4_1 = "CARD_COMBO_COST_MODIFIER"
L5_1 = "Combo_Cost_Modifier"
L3_1[L4_1] = L5_1
L4_1 = "POTION_CAPACITY"
L5_1 = "Potion_Capacity"
L3_1[L4_1] = L5_1
L4_1 = "TAPSELL_ENABLED"
L5_1 = "TapSell_Enabled"
L3_1[L4_1] = L5_1
L4_1 = "UNITYADS_ENABLED"
L5_1 = "UnityAds_Enabled"
L3_1[L4_1] = L5_1
L4_1 = "ADMOB_ENABLED"
L5_1 = "Admob_Enabled"
L3_1[L4_1] = L5_1
L4_1 = "CHARTBOOST_ENABLED"
L5_1 = "Chartboost_Enabled"
L3_1[L4_1] = L5_1
L4_1 = "ADIVERY_ENABLED"
L5_1 = "Adivery_Enabled"
L3_1[L4_1] = L5_1
L4_1 = "DAILY_REWARD_MAX_DAY"
L5_1 = "DAILY_REWARD_MAX_DAY"
L3_1[L4_1] = L5_1
L4_1 = "COACH_BASE_REWARD"
L5_1 = "Coach_base_reward"
L3_1[L4_1] = L5_1
L4_1 = "UNLOCK_LEVEL_COACH"
L5_1 = "UnlockLevel_School"
L3_1[L4_1] = L5_1
L4_1 = "CAN_OPEN_LOCAL_RANKING"
L5_1 = "Can_Open_Local_Ranking"
L3_1[L4_1] = L5_1
L4_1 = "IS_WINTER"
L5_1 = "Is_Winter"
L3_1[L4_1] = L5_1
L4_1 = "IS_NOROUZ"
L5_1 = "Is_Norouz"
L3_1[L4_1] = L5_1
L4_1 = "IS_FALL"
L5_1 = "Is_Fall"
L3_1[L4_1] = L5_1
L4_1 = "AUCTION_MIN_PRICE_MODIFIER"
L5_1 = "Auction_MinPriceModifier"
L3_1[L4_1] = L5_1
L4_1 = "AUCTION_MAX_PRICE_MODIFIER"
L5_1 = "Auction_MaxPriceModifier"
L3_1[L4_1] = L5_1
L4_1 = "AUCTION_BID_MODIFIER"
L5_1 = "Auction_BidModifier"
L3_1[L4_1] = L5_1
L4_1 = "POWER_TO_GOLD_RATIO"
L5_1 = "Auction_PowerToGoldRatio"
L3_1[L4_1] = L5_1
L4_1 = "HEROITEM_ATTRIBUTE_MULTIPLIER"
L5_1 = "Hero_AttributeMultiplier"
L3_1[L4_1] = L5_1
L4_1 = "HERO_CARD_PACK_PRICE_MULTIPLIER"
L5_1 = "CardPack_HeroPriceMultiplier"
L3_1[L4_1] = L5_1
L4_1 = "HERO_CARD_PACK_BASE_PRICE"
L5_1 = "CardPack_HeroBasePrice"
L3_1[L4_1] = L5_1
L4_1 = "HERO_EVOLVE_BASE_NECTAR"
L5_1 = "Hero_EvolveBaseNectar"
L3_1[L4_1] = L5_1
L4_1 = "UPDATE_BASE_CARDS_DATA"
L3_1[L4_1] = "isNeedToUpdateCards"
L4_1 = "HERO_BENEFIT_MODIFIER"
L5_1 = "Hero_BenefitModifier"
L3_1[L4_1] = L5_1
L4_1 = "HERO_BENEFIT_BLESSING_MAX_MULTIPLIER"
L5_1 = "Hero_Benefit_BlessingMaxMultiplier"
L3_1[L4_1] = L5_1
L4_1 = "HERO_BENEFIT_WISDOM_MAX_MULTIPLIER"
L5_1 = "Hero_Benefit_WisdomMaxMultiplier"
L3_1[L4_1] = L5_1
L4_1 = "HERO_BENEFIT_POWER_MAX_MULTIPLIER"
L5_1 = "Hero_Benefit_PowerMaxMultiplier"
L3_1[L4_1] = L5_1
L4_1 = "HERO_BENEFIT_DECREASE_MODIFIER"
L5_1 = "Hero_BenefitDecreaseModifier"
L3_1[L4_1] = L5_1
L4_1 = "ENHANCE_NECTARIFY_MODIFIER"
L5_1 = "Card_EnhanceWithNectarModifier"
L3_1[L4_1] = L5_1
L4_1 = "WHEELOFFORTUNE_GOLD_PRICE_MODIFIER"
L5_1 = "WheelOfFortune_GoldPriceModifier"
L3_1[L4_1] = L5_1
L4_1 = "EVOLUTION_COST_CORRECTION_MODIFIER"
L5_1 = "Card_EvolutionCostCorrectionModifier"
L3_1[L4_1] = L5_1
L4_1 = "MONSTER_EVOLUTION_FORMULA_CHANGE_MIN_RARITY"
L5_1 = "Card_MonsterEvolutionMinRarity"
L3_1[L4_1] = L5_1
L4_1 = "MONSTER_EVOLUTION_FORMULA_CHANGE_MIN_COST"
L5_1 = "Card_MonsterEvolutionMinCost"
L3_1[L4_1] = L5_1
L4_1 = "MONSTER_EVOLUTION_FORMULA_CHANGE_MAX_POWER"
L5_1 = "Card_MonsterEvolutionMaxPower"
L3_1[L4_1] = L5_1
L4_1 = "MONSTER_EVOLUTION_FORMULA_CHANGE_POWER_MODIFIER"
L5_1 = "Card_MonsterEvolutionPowerModifier"
L3_1[L4_1] = L5_1
L4_1 = "MIN_PLAYER_LEVEL_CHANGE_NAME"
L5_1 = "MinPlayerLevelForChangingName"
L3_1[L4_1] = L5_1
L4_1 = "PLAYER_CHANGE_NAME_COST_NECTAR"
L5_1 = "PlayerChangeNameCostNectar"
L3_1[L4_1] = L5_1
L4_1 = "StoreCompeition_Bazaar_Active"
L5_1 = "StoreCompeition_Bazaar_Active"
L3_1[L4_1] = L5_1
L4_1 = "StoreCompeition_Myket_Active"
L5_1 = "StoreCompeition_Myket_Active"
L3_1[L4_1] = L5_1
L4_1 = "StoreCompeition_Bazaar_LostScore"
L5_1 = "StoreCompeition_Bazaar_LostScore"
L3_1[L4_1] = L5_1
L4_1 = "StoreCompeition_Bazaar_QuestScore"
L5_1 = "StoreCompeition_Bazaar_QuestScore"
L3_1[L4_1] = L5_1
L4_1 = "StoreCompeition_Bazaar_OfflineBattleScore"
L5_1 = "StoreCompeition_Bazaar_OfflineBattleScore"
L3_1[L4_1] = L5_1
L4_1 = "StoreCompeition_Bazaar_LiveBattleScore"
L5_1 = "StoreCompeition_Bazaar_LiveBattleScore"
L3_1[L4_1] = L5_1
L4_1 = "StoreCompeition_Bazaar_StartTimestamp"
L5_1 = "StoreCompeition_Bazaar_StartTimestamp"
L3_1[L4_1] = L5_1
L4_1 = "StoreCompeition_Bazaar_EndTimestamp"
L5_1 = "StoreCompeition_Bazaar_EndTimestamp"
L3_1[L4_1] = L5_1
L4_1 = "StoreCompeition_Myket_StartTimestamp"
L5_1 = "StoreCompeition_Myket_StartTimestamp"
L3_1[L4_1] = L5_1
L4_1 = "StoreCompeition_Myket_EndTimestamp"
L5_1 = "StoreCompeition_Myket_EndTimestamp"
L3_1[L4_1] = L5_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = require
  L3_2 = "Utils.Toolbox"
  L2_2 = L2_2(L3_2)
  L3_2 = log3
  L4_2 = "Updating constants"
  L3_2(L4_2)
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L1_3 = A0_3.isError
    if L1_3 then
      L1_3 = log
      L2_3 = "Network error! Failed fetch constants."
      L1_3(L2_3)
      L1_3 = A1_2
      L2_3 = "Base Network error! Failed fetch constants: "
      L3_3 = A0_3.status
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
    else
      L1_3 = L1_1
      L1_3 = L1_3.decode
      L2_3 = A0_3.response
      L1_3 = L1_3(L2_3)
      L2_3 = L1_3.status
      if L2_3 == true then
        L2_3 = L1_3.data
        if L2_3 ~= nil then
          L2_3 = {}
          L3_3 = pairs
          L4_3 = L1_3.data
          L3_3, L4_3, L5_3 = L3_3(L4_3)
          for L6_3, L7_3 in L3_3, L4_3, L5_3 do
            L8_3 = L3_1
            L8_3 = L8_3[L6_3]
            if L8_3 ~= nil then
              L8_3 = _M
              L9_3 = L3_1
              L9_3 = L9_3[L6_3]
              L8_3[L9_3] = L7_3
              L8_3 = L3_1
              L8_3 = L8_3[L6_3]
              L2_3[L8_3] = L7_3
            elseif L6_3 == "gold_building_upgrade_cost" then
              L8_3 = pairs
              L9_3 = L7_3
              L8_3, L9_3, L10_3 = L8_3(L9_3)
              for L11_3, L12_3 in L8_3, L9_3, L10_3 do
                L13_3 = Building_UpgradeCosts
                L14_3 = L11_3 - 1
                L13_3 = L13_3[L14_3]
                L13_3.gold = L12_3
              end
            elseif L6_3 == "gold_building_capacity_list" then
              L8_3 = pairs
              L9_3 = L7_3
              L8_3, L9_3, L10_3 = L8_3(L9_3)
              for L11_3, L12_3 in L8_3, L9_3, L10_3 do
                L13_3 = Building_Benefits
                L14_3 = L11_3 - 1
                L13_3 = L13_3[L14_3]
                L13_3.gold = L12_3
              end
            elseif L6_3 == "cooldown_building_upgrade_cost" then
              L8_3 = pairs
              L9_3 = L7_3
              L8_3, L9_3, L10_3 = L8_3(L9_3)
              for L11_3, L12_3 in L8_3, L9_3, L10_3 do
                L13_3 = Building_UpgradeCosts
                L14_3 = L11_3 - 1
                L13_3 = L13_3[L14_3]
                L13_3.cooldown = L12_3
              end
            elseif L6_3 == "mainhall_building_upgrade_cost" then
              L8_3 = pairs
              L9_3 = L7_3
              L8_3, L9_3, L10_3 = L8_3(L9_3)
              for L11_3, L12_3 in L8_3, L9_3, L10_3 do
                L13_3 = Building_UpgradeCosts
                L14_3 = L11_3 - 1
                L13_3 = L13_3[L14_3]
                L13_3.mainhall = L12_3
              end
            elseif L6_3 == "mainhall_building_capacity_list" then
              L8_3 = pairs
              L9_3 = L7_3
              L8_3, L9_3, L10_3 = L8_3(L9_3)
              for L11_3, L12_3 in L8_3, L9_3, L10_3 do
                L13_3 = Building_Benefits
                L14_3 = L11_3 - 1
                L13_3 = L13_3[L14_3]
                L13_3.mainhall = L12_3
              end
            elseif L6_3 == "defense_building_upgrade_cost" then
              L8_3 = pairs
              L9_3 = L7_3
              L8_3, L9_3, L10_3 = L8_3(L9_3)
              for L11_3, L12_3 in L8_3, L9_3, L10_3 do
                L13_3 = Building_UpgradeCosts
                L14_3 = L11_3 - 1
                L13_3 = L13_3[L14_3]
                L13_3.defensive = L12_3
              end
            elseif L6_3 == "offense_building_upgrade_cost" then
              L8_3 = pairs
              L9_3 = L7_3
              L8_3, L9_3, L10_3 = L8_3(L9_3)
              for L11_3, L12_3 in L8_3, L9_3, L10_3 do
                L13_3 = Building_UpgradeCosts
                L14_3 = L11_3 - 1
                L13_3 = L13_3[L14_3]
                L13_3.offensive = L12_3
              end
            elseif L6_3 == "offense_building_bonus" then
              L8_3 = pairs
              L9_3 = L7_3
              L8_3, L9_3, L10_3 = L8_3(L9_3)
              for L11_3, L12_3 in L8_3, L9_3, L10_3 do
                L13_3 = Building_Benefits
                L14_3 = L11_3 - 1
                L13_3 = L13_3[L14_3]
                L14_3 = L12_3 * 100
                L13_3.offensive = L14_3
              end
            elseif L6_3 == "defense_building_bonus" then
              L8_3 = pairs
              L9_3 = L7_3
              L8_3, L9_3, L10_3 = L8_3(L9_3)
              for L11_3, L12_3 in L8_3, L9_3, L10_3 do
                L13_3 = Building_Benefits
                L14_3 = L11_3 - 1
                L13_3 = L13_3[L14_3]
                L14_3 = L12_3 * 100
                L13_3.defensive = L14_3
              end
            elseif L6_3 == "bank_building_upgrade_cost" then
              L8_3 = pairs
              L9_3 = L7_3
              L8_3, L9_3, L10_3 = L8_3(L9_3)
              for L11_3, L12_3 in L8_3, L9_3, L10_3 do
                L13_3 = Building_UpgradeCosts
                L14_3 = L11_3 - 1
                L13_3 = L13_3[L14_3]
                L13_3.bank = L12_3
              end
            elseif L6_3 == "bank_building_capacity_list" then
              L8_3 = pairs
              L9_3 = L7_3
              L8_3, L9_3, L10_3 = L8_3(L9_3)
              for L11_3, L12_3 in L8_3, L9_3, L10_3 do
                L13_3 = Building_Benefits
                L14_3 = L11_3 - 1
                L13_3 = L13_3[L14_3]
                L13_3.bank = L12_3
              end
            elseif L6_3 == "cooldown_modifiers" then
              L8_3 = Building_Benefits
              L8_3 = L8_3[0]
              L8_3.cooldown = 0
              L8_3 = pairs
              L9_3 = L7_3
              L8_3, L9_3, L10_3 = L8_3(L9_3)
              for L11_3, L12_3 in L8_3, L9_3, L10_3 do
                L13_3 = Building_Benefits
                L14_3 = tonumber
                L15_3 = L11_3
                L14_3 = L14_3(L15_3)
                L13_3 = L13_3[L14_3]
                L14_3 = 1 - L12_3
                L14_3 = L14_3 * 100
                L13_3.cooldown = L14_3
              end
            elseif L6_3 == "card_capacity_per_level" then
              L8_3 = ipairs
              L9_3 = L7_3
              L8_3, L9_3, L10_3 = L8_3(L9_3)
              for L11_3, L12_3 in L8_3, L9_3, L10_3 do
                L13_3 = Building_MaxAssign
                L14_3 = tonumber
                L15_3 = L11_3
                L14_3 = L14_3(L15_3)
                L14_3 = L14_3 - 1
                L13_3 = L13_3[L14_3]
                L13_3.defensive = L12_3
                L13_3 = Building_MaxAssign
                L14_3 = tonumber
                L15_3 = L11_3
                L14_3 = L14_3(L15_3)
                L14_3 = L14_3 - 1
                L13_3 = L13_3[L14_3]
                L13_3.offensive = L12_3
              end
            elseif L6_3 == "gold_building_card_capacity_per_level" then
              L8_3 = ipairs
              L9_3 = L7_3
              L8_3, L9_3, L10_3 = L8_3(L9_3)
              for L11_3, L12_3 in L8_3, L9_3, L10_3 do
                L13_3 = Building_MaxAssign
                L14_3 = tonumber
                L15_3 = L11_3
                L14_3 = L14_3(L15_3)
                L14_3 = L14_3 - 1
                L13_3 = L13_3[L14_3]
                L13_3.gold = L12_3
              end
            elseif L6_3 == "BONUS_TIMES" then
              L8_3 = ipairs
              L9_3 = L7_3
              L8_3, L9_3, L10_3 = L8_3(L9_3)
              for L11_3, L12_3 in L8_3, L9_3, L10_3 do
                L13_3 = Golden_Times
                L14_3 = tonumber
                L15_3 = L11_3
                L14_3 = L14_3(L15_3)
                L14_3 = L14_3 - 1
                L13_3 = L13_3[L14_3]
                L14_3 = L12_3.start_time
                L13_3.startTime = L14_3
                L13_3 = Golden_Times
                L14_3 = tonumber
                L15_3 = L11_3
                L14_3 = L14_3(L15_3)
                L14_3 = L14_3 - 1
                L13_3 = L13_3[L14_3]
                L14_3 = L12_3.end_time
                L13_3.endTime = L14_3
              end
            elseif L6_3 == "BOOST_MULTIPLIERS" then
              L8_3 = pairs
              L9_3 = L7_3
              L8_3, L9_3, L10_3 = L8_3(L9_3)
              for L11_3, L12_3 in L8_3, L9_3, L10_3 do
                L13_3 = BOOST_MULTIPLIERS
                L13_3[L11_3] = L12_3
              end
            elseif L6_3 == "BUILDING_BANK_MAX_LEVEL" then
              Bank_Building_Max_Upgrade_level = L7_3
            elseif L6_3 == "BUILDING_MINE_MAX_LEVEL" then
              Mine_Building_Max_Upgrade_level = L7_3
            elseif L6_3 == "BUILDING_OFFENCE_MAX_LEVEL" then
              Offence_Building_Max_Upgrade_level = L7_3
            elseif L6_3 == "BUILDING_DEFENCE_MAX_LEVEL" then
              Defence_Building_Max_Upgrade_level = L7_3
            else
              L8_3 = _M
              L8_3[L6_3] = L7_3
              L2_3[L6_3] = L7_3
            end
          end
          L3_3 = Golden_Times
          L2_3.Golden_Times = L3_3
          L3_3 = Building_UpgradeCosts
          L2_3.Building_UpgradeCosts = L3_3
          L3_3 = Building_Benefits
          L2_3.Building_Benefits = L3_3
          L3_3 = Building_MaxAssign
          L2_3.Building_MaxAssign = L3_3
          L3_3 = BOOST_MULTIPLIERS
          L2_3.BOOST_MULTIPLIERS = L3_3
          L3_3 = system
          L3_3 = L3_3.pathForFile
          L4_3 = Constants
          L4_3 = L4_3.Path_ConstantsFile
          L5_3 = system
          L5_3 = L5_3.DocumentsDirectory
          L3_3 = L3_3(L4_3, L5_3)
          L4_3 = io
          L4_3 = L4_3.open
          L5_3 = L3_3
          L6_3 = "w"
          L4_3 = L4_3(L5_3, L6_3)
          L6_3 = L4_3
          L5_3 = L4_3.write
          L7_3 = L1_1
          L7_3 = L7_3.encode
          L8_3 = L2_3
          L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3 = L7_3(L8_3)
          L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
          L5_3 = io
          L5_3 = L5_3.close
          L6_3 = L4_3
          L5_3(L6_3)
          L4_3 = nil
          L5_3 = A0_2
          L5_3()
      end
      else
        L2_3 = L1_3.status
        if L2_3 == false then
          L2_3 = L1_3.error
          if not L2_3 then
            L2_3 = "Network Response returned false status"
          end
          L3_3 = log
          L4_3 = "Failed to fetch constants with error:"
          L5_3 = L2_3
          L4_3 = L4_3 .. L5_3
          L3_3(L4_3)
          L3_3 = A1_2
          L4_3 = "Failed to fetch constants with error:"
          L5_3 = L2_3
          L4_3 = L4_3 .. L5_3
          L3_3(L4_3)
        end
      end
    end
  end
  
  L4_2 = {}
  L5_2 = _storeType
  L4_2.store_type = L5_2
  L5_2 = system
  L5_2 = L5_2.getInfo
  L6_2 = "platformVersion"
  L5_2 = L5_2(L6_2)
  L4_2.os_version = L5_2
  L5_2 = system
  L5_2 = L5_2.getInfo
  L6_2 = "model"
  L5_2 = L5_2(L6_2)
  L4_2.model = L5_2
  L5_2 = L2_2.getAppVersion
  L5_2 = L5_2()
  L4_2.game_version = L5_2
  L5_2 = version
  L4_2.constant_version = L5_2
  L5_2 = {}
  L5_2.body = L4_2
  L6_2 = network
  L6_2 = L6_2.request
  L7_2 = Constants
  L7_2 = L7_2.API_Path
  L8_2 = Constants
  L8_2 = L8_2.API_Constants
  L7_2 = L7_2 .. L8_2
  L8_2 = "POST"
  L9_2 = L3_2
  L10_2 = L5_2
  L11_2 = "updateConstants"
  L12_2 = nil
  L13_2 = A1_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end

updateConstants = L4_1

function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = log3
  L2_2()
  L2_2 = errorLog
  L3_2 = "*************"
  L2_2(L3_2)
  
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = require
    L1_3 = "Models.Card"
    L0_3 = L0_3(L1_3)
    L1_3 = L0_3.updateCharacters
    L2_3 = A0_2
    L3_3 = A1_2
    L1_3(L2_3, L3_3)
  end
  
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = log3
    L1_3 = "start update Language"
    L0_3(L1_3)
    L0_3 = L0_1
    L0_3 = L0_3.updateLangeuages
    L1_3 = L2_2
    L2_3 = A1_2
    L0_3(L1_3, L2_3)
  end
  
  L4_2 = updateConstants
  L5_2 = L3_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end

checkForUpdates = L4_1
L4_1 = {}
L5_1 = 0
L6_1 = nil
L4_1[L5_1] = L6_1
L5_1 = 1
L6_1 = {}
L7_1 = "League_Name"
L8_1 = "League Legend"
L8_1 = L0_1[L8_1]
L6_1[L7_1] = L8_1
L7_1 = "League_Image"
L8_1 = "League1.png"
L6_1[L7_1] = L8_1
L7_1 = "League_logoWidth"
L8_1 = 76
L6_1[L7_1] = L8_1
L7_1 = "League_logoHeight"
L8_1 = 80
L6_1[L7_1] = L8_1
L7_1 = "Server_League_Id_Min"
L8_1 = 1
L6_1[L7_1] = L8_1
L7_1 = "Server_League_Id_Max"
L8_1 = 1
L6_1[L7_1] = L8_1
L4_1[L5_1] = L6_1
L5_1 = 2
L6_1 = {}
L7_1 = "League_Name"
L8_1 = "League Platinium"
L8_1 = L0_1[L8_1]
L6_1[L7_1] = L8_1
L7_1 = "League_Image"
L8_1 = "League2.png"
L6_1[L7_1] = L8_1
L7_1 = "League_logoWidth"
L8_1 = 76
L6_1[L7_1] = L8_1
L7_1 = "League_logoHeight"
L8_1 = 80
L6_1[L7_1] = L8_1
L7_1 = "Server_League_Id_Min"
L8_1 = 2
L6_1[L7_1] = L8_1
L7_1 = "Server_League_Id_Max"
L8_1 = 6
L6_1[L7_1] = L8_1
L4_1[L5_1] = L6_1
L5_1 = 3
L6_1 = {}
L7_1 = "League_Name"
L8_1 = "League Crystal"
L8_1 = L0_1[L8_1]
L6_1[L7_1] = L8_1
L7_1 = "League_Image"
L8_1 = "League3.png"
L6_1[L7_1] = L8_1
L7_1 = "League_logoWidth"
L8_1 = 61
L6_1[L7_1] = L8_1
L7_1 = "League_logoHeight"
L8_1 = 80
L6_1[L7_1] = L8_1
L7_1 = "Server_League_Id_Min"
L8_1 = 7
L6_1[L7_1] = L8_1
L7_1 = "Server_League_Id_Max"
L8_1 = 11
L6_1[L7_1] = L8_1
L4_1[L5_1] = L6_1
L5_1 = 4
L6_1 = {}
L7_1 = "League_Name"
L8_1 = "League Gold"
L8_1 = L0_1[L8_1]
L6_1[L7_1] = L8_1
L7_1 = "League_Image"
L8_1 = "League4.png"
L6_1[L7_1] = L8_1
L7_1 = "League_logoWidth"
L8_1 = 62
L6_1[L7_1] = L8_1
L7_1 = "League_logoHeight"
L8_1 = 80
L6_1[L7_1] = L8_1
L7_1 = "Server_League_Id_Min"
L8_1 = 12
L6_1[L7_1] = L8_1
L7_1 = "Server_League_Id_Max"
L8_1 = 16
L6_1[L7_1] = L8_1
L4_1[L5_1] = L6_1
L5_1 = 5
L6_1 = {}
L7_1 = "League_Name"
L8_1 = "League Silver"
L8_1 = L0_1[L8_1]
L6_1[L7_1] = L8_1
L7_1 = "League_Image"
L8_1 = "League5.png"
L6_1[L7_1] = L8_1
L7_1 = "League_logoWidth"
L8_1 = 64
L6_1[L7_1] = L8_1
L7_1 = "League_logoHeight"
L8_1 = 80
L6_1[L7_1] = L8_1
L7_1 = "Server_League_Id_Min"
L8_1 = 17
L6_1[L7_1] = L8_1
L7_1 = "Server_League_Id_Max"
L8_1 = 21
L6_1[L7_1] = L8_1
L4_1[L5_1] = L6_1
L5_1 = 6
L6_1 = {}
L7_1 = "League_Name"
L8_1 = "League Bronze"
L8_1 = L0_1[L8_1]
L6_1[L7_1] = L8_1
L7_1 = "League_Image"
L8_1 = "League6.png"
L6_1[L7_1] = L8_1
L7_1 = "League_logoWidth"
L8_1 = 56
L6_1[L7_1] = L8_1
L7_1 = "League_logoHeight"
L8_1 = 80
L6_1[L7_1] = L8_1
L7_1 = "Server_League_Id_Min"
L8_1 = 22
L6_1[L7_1] = L8_1
L7_1 = "Server_League_Id_Max"
L8_1 = 26
L6_1[L7_1] = L8_1
L4_1[L5_1] = L6_1
League_Info = L4_1
L4_1 = 1200
League_Info_Image_Width = L4_1
L4_1 = 706
League_Info_Image_Height = L4_1

function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = leagueInfoWithId
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Server_League_Id_Min
  L1_2 = A0_2 - L1_2
  L1_2 = L1_2 + 1
  L2_2 = nil
  if L1_2 == 1 then
    L2_2 = "I"
  elseif L1_2 == 2 then
    L2_2 = "II"
  elseif L1_2 == 3 then
    L2_2 = "III"
  elseif L1_2 == 4 then
    L2_2 = "IV"
  elseif L1_2 == 5 then
    L2_2 = "V"
  end
  return L2_2
end

getLeagueNumber = L4_1

function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 == nil then
    L1_2 = errorLog
    L2_2 = "leagueInfo id is nill"
    L1_2(L2_2)
    L1_2 = nil
    return L1_2
  end
  L1_2 = pairs
  L2_2 = League_Info
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.Server_League_Id_Min
    if A0_2 >= L6_2 then
      L6_2 = L5_2.Server_League_Id_Max
      if A0_2 <= L6_2 then
        return L5_2
      end
    end
  end
  L1_2 = League_Info
  L1_2 = L1_2[0]
  return L1_2
end

leagueInfoWithId = L4_1

function L4_1()
  local L0_2, L1_2
  L0_2 = mainPlayer
  L0_2 = L0_2.leagueId
  if L0_2 then
    L0_2 = mainPlayer
    L0_2 = L0_2.leagueId
    if L0_2 == 1 then
      L0_2 = "League1.png"
      League_Image = L0_2
      L0_2 = 76
      League_logoWidth = L0_2
      L0_2 = 80
      League_logoHeight = L0_2
    else
      L0_2 = mainPlayer
      L0_2 = L0_2.leagueId
      if 2 <= L0_2 then
        L0_2 = mainPlayer
        L0_2 = L0_2.leagueId
        if L0_2 <= 6 then
          L0_2 = "League2.png"
          League_Image = L0_2
          L0_2 = 76
          League_logoWidth = L0_2
          L0_2 = 80
          League_logoHeight = L0_2
      end
      else
        L0_2 = mainPlayer
        L0_2 = L0_2.leagueId
        if 7 <= L0_2 then
          L0_2 = mainPlayer
          L0_2 = L0_2.leagueId
          if L0_2 <= 11 then
            L0_2 = "League3.png"
            League_Image = L0_2
            L0_2 = 61
            League_logoWidth = L0_2
            L0_2 = 80
            League_logoHeight = L0_2
        end
        else
          L0_2 = mainPlayer
          L0_2 = L0_2.leagueId
          if 12 <= L0_2 then
            L0_2 = mainPlayer
            L0_2 = L0_2.leagueId
            if L0_2 <= 16 then
              L0_2 = "League4.png"
              League_Image = L0_2
              L0_2 = 62
              League_logoWidth = L0_2
              L0_2 = 80
              League_logoHeight = L0_2
          end
          else
            L0_2 = mainPlayer
            L0_2 = L0_2.leagueId
            if 17 <= L0_2 then
              L0_2 = mainPlayer
              L0_2 = L0_2.leagueId
              if L0_2 <= 21 then
                L0_2 = "League5.png"
                League_Image = L0_2
                L0_2 = 64
                League_logoWidth = L0_2
                L0_2 = 80
                League_logoHeight = L0_2
            end
            else
              L0_2 = mainPlayer
              L0_2 = L0_2.leagueId
              if 22 <= L0_2 then
                L0_2 = mainPlayer
                L0_2 = L0_2.leagueId
                if L0_2 <= 24 then
                  L0_2 = "League6.png"
                  League_Image = L0_2
                  L0_2 = 56
                  League_logoWidth = L0_2
                  L0_2 = 80
                  League_logoHeight = L0_2
                end
              end
            end
          end
        end
      end
    end
  end
end

setLeagueItemsSize = L4_1

function L4_1(A0_2)
  local L1_2
  if A0_2 then
    if A0_2 == 1 then
      L1_2 = "League ICON 1.png"
    elseif 2 <= A0_2 and A0_2 <= 6 then
      L1_2 = "League ICON 2.png"
    elseif 7 <= A0_2 and A0_2 <= 11 then
      L1_2 = "League ICON 3.png"
    elseif 12 <= A0_2 and A0_2 <= 16 then
      L1_2 = "League ICON 4.png"
    elseif 17 <= A0_2 and A0_2 <= 21 then
      L1_2 = "League ICON 5.png"
    elseif 22 <= A0_2 and A0_2 <= 24 then
      L1_2 = "League ICON 6.png"
    end
  end
  return L1_2
end

Get_League_Rank_Icon_Image = L4_1
L4_1 = 2
BONUS_XP_MULTIPLIER = L4_1
L4_1 = 2
BONUS_GOLD_MULTIPLIER = L4_1
L4_1 = 2
BONUS_SCORE_MULTIPLIER = L4_1
L4_1 = 27
LIVE_BATTLE_CHOOSE_TIMEOUT = L4_1
L4_1 = 67
LIVE_BATTLE_GAME_TIMEOUT = L4_1
L4_1 = 28
LIVE_BATTLE_FIRST_ROUND_TIME = L4_1
L4_1 = 10
LIVE_BATTLE_ROUND_TIME = L4_1
L4_1 = 37
LIVE_BATTLE_HELP_TIMEOUT = L4_1
L4_1 = 10000
QUEST_MAP_FINISHED_REWARD = L4_1
L4_1 = 3000
LIVE_BATTLE_LORD_COUNT = L4_1
L4_1 = 90
WAR_MASTER_WON_RATIO = L4_1
L4_1 = 70
COMMANDER_WON_RATIO = L4_1
L4_1 = 5
LEAGUE_WON_COUNT = L4_1
L4_1 = {}
L5_1 = "18"
L6_1 = 1.5
L4_1[L5_1] = L6_1
L5_1 = "19"
L6_1 = 2
L4_1[L5_1] = L6_1
L5_1 = "20"
L6_1 = 3
L4_1[L5_1] = L6_1
L5_1 = "21"
L6_1 = 5
L4_1[L5_1] = L6_1
L5_1 = "22"
L6_1 = 1.05
L4_1[L5_1] = L6_1
L5_1 = "23"
L6_1 = 1.1
L4_1[L5_1] = L6_1
L5_1 = "24"
L6_1 = 1.2
L4_1[L5_1] = L6_1
BOOST_MULTIPLIERS = L4_1
L4_1 = 18000
XP_BOOST_TOTAL_TIME = L4_1
L4_1 = 18000
POWER_BOOST_TOTAL_TIME = L4_1
L4_1 = 10
RATING_WINNER_DIVISOR = L4_1
L4_1 = "586e4ed4bc5c28712bd8d762"
TAPSELL_PLACEMENT_REWARDED = L4_1
L4_1 = "6619e8c3-2326-488f-a09f-21121170dd14"
ADIVERY_APP_ID = L4_1
L4_1 = "527fca09-670a-435c-a33d-1d8829e556c3"
ADIVERY_PLACEMENT_REWARDED = L4_1
L4_1 = "2771810"
UNITYADS_GAME_ID_ANDROID = L4_1
L4_1 = "2771812"
UNITYADS_GAME_ID_IOS = L4_1
L4_1 = "ca-app-pub-5018637481206902~1363603540"
ADMOB_APP_ID = L4_1
L4_1 = "ca-app-pub-5018637481206902/4165381925"
ADMOB_PLACEMENT_ID = L4_1
L4_1 = "ca-app-pub-5018637481206902/7354823488"
ADMOB_INTERSTITIAL_PLACEMENT_ID = L4_1
L4_1 = "ca-app-pub-5018637481206902/6943759940"
ADMOB_REWARDEDINTERSTITIAL_PLACEMENT_ID = L4_1
L4_1 = 30
DAILY_REWARD_MAX_DAY = L4_1
L4_1 = 100000
Coach_base_reward = L4_1
L4_1 = system
L5_1 = "pathForFile"
L4_1 = L4_1[L5_1]
L5_1 = Constants
L6_1 = "Path_ConstantsFile"
L5_1 = L5_1[L6_1]
L6_1 = system
L7_1 = "DocumentsDirectory"
L6_1 = L6_1[L7_1]
L4_1 = L4_1(L5_1, L6_1)
L5_1 = io
L6_1 = "open"
L5_1 = L5_1[L6_1]
L6_1 = L4_1
L7_1 = "r+"
L5_1 = L5_1(L6_1, L7_1)
L6_1 = nil
if L5_1 == L6_1 then
  L6_1 = log2
  L7_1 = "constants file not found, using defaults"
  L6_1(L7_1)
else
  L8_1 = "read"
  L7_1 = L5_1
  L6_1 = L5_1[L8_1]
  L8_1 = "*a"
  L6_1 = L6_1(L7_1, L8_1)
  L7_1 = io
  L8_1 = "close"
  L7_1 = L7_1[L8_1]
  L8_1 = L5_1
  L7_1(L8_1)
  L7_1 = L1_1.decode
  L8_1 = L6_1
  L7_1 = L7_1(L8_1)
  if not L7_1 then
    L7_1 = {}
  end
  L8_1 = L7_1.version
  L9_1 = version
  if L8_1 >= L9_1 then
    L8_1 = pairs
    L9_1 = L7_1
    L8_1, L9_1, L10_1 = L8_1(L9_1)
    for L11_1, L12_1 in L8_1, L9_1, L10_1 do
      L13_1 = "Building_MaxAssign"
      if L11_1 ~= L13_1 then
        L13_1 = "Building_UpgradeCosts"
        if L11_1 ~= L13_1 then
          L13_1 = "Building_Benefits"
          if L11_1 ~= L13_1 then
            L13_1 = "Golden_Times"
            if L11_1 ~= L13_1 then
              goto lbl_3552
            end
          end
        end
      end
      L13_1 = _M
      L13_1 = L13_1[L11_1]
      L14_1 = pairs
      L15_1 = L12_1
      L14_1, L15_1, L16_1 = L14_1(L15_1)
      for L17_1, L18_1 in L14_1, L15_1, L16_1 do
        L19_1 = pairs
        L20_1 = L18_1
        L19_1, L20_1, L21_1 = L19_1(L20_1)
        for L22_1, L23_1 in L19_1, L20_1, L21_1 do
          L24_1 = tonumber
          L25_1 = L17_1
          L24_1 = L24_1(L25_1)
          L24_1 = L13_1[L24_1]
          L24_1[L22_1] = L23_1
        end
      end
      L14_1 = _M
      L14_1[L11_1] = L13_1
      goto lbl_3554
      ::lbl_3552::
      L13_1 = _M
      L13_1[L11_1] = L12_1
      ::lbl_3554::
    end
  end
  L8_1 = log3
  L9_1 = "read constants from file and now dumping it"
  L8_1(L9_1)
end
L5_1 = nil
