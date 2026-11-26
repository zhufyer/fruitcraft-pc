local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1
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
L3_1 = "Models.Tribe"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "composer"
L3_1 = L3_1(L4_1)
L4_1 = require
L5_1 = "Views.ActivityIndicatorView"
L4_1 = L4_1(L5_1)
L5_1 = require
L6_1 = "Utils.Toolbox"
L5_1 = L5_1(L6_1)
L6_1 = require
L7_1 = "Models.AchievementManager"
L6_1 = L6_1(L7_1)
L7_1 = require
L8_1 = "Components.TDButtonView"
L7_1 = L7_1(L8_1)
L8_1 = require
L9_1 = "Components.TDCarouselView"
L8_1 = L8_1(L9_1)
L9_1 = nil
L10_1 = nil
L11_1 = nil
L12_1 = nil
L13_1 = nil
L14_1 = nil
L15_1 = nil
L16_1 = nil

function L17_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.phase
  if "submitted" == L1_2 then
    L1_2 = native
    L1_2 = L1_2.setKeyboardFocus
    L2_2 = nil
    L1_2(L2_2)
  end
end

function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = hub
  L2_2 = hub
  L2_2 = L2_2.unreadMessage
  L2_2 = L2_2 + 1
  L1_2.unreadMessage = L2_2
  L1_2 = hub
  L2_2 = math
  L2_2 = L2_2.min
  L3_2 = hub
  L3_2 = L3_2.unreadMessage
  L4_2 = 20
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.unreadMessage = L2_2
  L1_2 = log3
  L2_2 = "message received  = "
  L3_2 = L1_1
  L3_2 = L3_2.encode
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = hub
  L1_2 = L1_2.messages
  L2_2 = A0_2.id
  L1_2[L2_2] = A0_2
  L1_2 = Runtime
  L2_2 = L1_2
  L1_2 = L1_2.dispatchEvent
  L3_2 = {}
  L3_2.name = "message"
  L3_2.message = A0_2
  L1_2(L2_2, L3_2)
end

messageCallback = L18_1

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L4_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = mainPlayer
  L2_2.tribe = A1_2
  L2_2 = L6_1
  L2_2 = L2_2.checkJoinedTribe
  L2_2()
  L2_2 = mainPlayer
  L2_2.positionInTribe = 3
  L2_2 = L3_1
  L2_2 = L2_2.removeScene
  L3_2 = "Scenes.RankingsScene"
  L2_2(L3_2)
  L2_2 = showSimpleDialog
  L3_2 = "Create Tribe"
  L4_2 = "Tribe is created"
  L5_2 = nil
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L0_3 = L0_3.nameField
    L0_3.isVisible = true
    L0_3 = A0_2
    L0_3 = L0_3.descriptionField
    L0_3.isVisible = true
    L0_3 = A0_2
    L0_3 = L0_3.dscFieldBG
    L0_3.isVisible = false
    L0_3 = L3_1
    L0_3 = L0_3.gotoScene
    L1_3 = "Scenes.Home"
    L0_3(L1_3)
  end
  
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = hub
  L3_2 = L2_2
  L2_2 = L2_2.removeHub
  L2_2(L3_2)
  L2_2 = hub
  L2_2 = L2_2.init
  L2_2()
end

didCreateTribeCallback = L18_1

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L4_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = showSimpleDialog
  L3_2 = "Create Tribe"
  L4_2 = A1_2
  L5_2 = nil
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L0_3 = L0_3.nameField
    L0_3.isVisible = true
    L0_3 = A0_2
    L0_3 = L0_3.descriptionField
    L0_3.isVisible = true
    L0_3 = A0_2
    L0_3 = L0_3.dscFieldBG
    L0_3.isVisible = true
  end
  
  L2_2(L3_2, L4_2, L5_2, L6_2)
end

failedCreateTribeCallback = L18_1

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L4_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = mainPlayer
  L2_2.tribe = A1_2
  L2_2 = showSimpleDialog
  L3_2 = "Edit Tribe"
  L4_2 = "Tribe is edited"
  L5_2 = nil
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L0_3 = L0_3.nameField
    L0_3.isVisible = true
    L0_3 = A0_2
    L0_3 = L0_3.descriptionField
    L0_3.isVisible = true
    L0_3 = A0_2
    L0_3 = L0_3.dscFieldBG
    L0_3.isVisible = true
  end
  
  L2_2(L3_2, L4_2, L5_2, L6_2)
end

successToEditTribeCallBack = L18_1

function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L4_1
  L2_2 = L2_2.hide
  L2_2()
  L2_2 = showSimpleDialog
  L3_2 = "Edit Tribe"
  L4_2 = A1_2
  L5_2 = nil
  
  function L6_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L0_3 = L0_3.nameField
    L0_3.isVisible = true
    L0_3 = A0_2
    L0_3 = L0_3.descriptionField
    L0_3.isVisible = true
    L0_3 = A0_2
    L0_3 = L0_3.dscFieldBG
    L0_3.isVisible = true
  end
  
  L2_2(L3_2, L4_2, L5_2, L6_2)
end

failedToEditTribeCallback = L18_1

function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.delegate
  L1_2 = L1_2.nameField
  L1_2.isVisible = false
  L1_2 = A0_2.delegate
  L1_2 = L1_2.descriptionField
  L1_2.isVisible = false
  L1_2 = A0_2.delegate
  L1_2 = L1_2.dscFieldBG
  L1_2.isVisible = false
  L1_2 = A0_2.delegate
  L1_2 = L1_2.nameField
  L1_2 = L1_2.text
  L2_2 = A0_2.delegate
  L2_2 = L2_2.descriptionField
  L2_2 = L2_2.text
  if L1_2 ~= nil and L1_2 ~= "" then
    L4_2 = L1_2
    L3_2 = L1_2.len
    L3_2 = L3_2(L4_2)
    if 0 < L3_2 and L2_2 ~= nil and L2_2 ~= "" then
      L4_2 = L2_2
      L3_2 = L2_2.len
      L3_2 = L3_2(L4_2)
      if 0 < L3_2 then
        L3_2 = L4_1
        L3_2 = L3_2.show
        L4_2 = L0_1
        L4_2 = L4_2["Creating Tribe"]
        L3_2(L4_2)
        L3_2 = L2_1
        L3_2 = L3_2.createTribe
        L4_2 = L1_2
        L5_2 = L2_2
        L6_2 = didCreateTribeCallback
        L7_2 = failedCreateTribeCallback
        L8_2 = A0_2.delegate
        L9_2 = L16_1
        L9_2 = L9_2.currentViewID
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    end
  end
  else
    L3_2 = log
    L4_2 = "The tribe name and description shouldn't be empty tribeName:"
    L5_2 = L1_2
    L6_2 = "description:"
    L7_2 = L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = showSimpleDialog
    L4_2 = "Create Tribe"
    L5_2 = "You must enter a name and description for your tribe."
    L6_2 = nil
    
    function L7_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L0_3 = L0_3.delegate
      L0_3 = L0_3.nameField
      L0_3.isVisible = true
      L0_3 = A0_2
      L0_3 = L0_3.delegate
      L0_3 = L0_3.descriptionField
      L0_3.isVisible = true
      L0_3 = A0_2
      L0_3 = L0_3.delegate
      L0_3 = L0_3.dscFieldBG
      L0_3.isVisible = true
    end
    
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = native
  L3_2 = L3_2.setKeyboardFocus
  L4_2 = nil
  L3_2(L4_2)
end

didPressCreateTribe = L18_1

function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = mainPlayer
  L1_2 = L1_2.tribe
  L2_2 = L16_1
  L2_2 = L2_2.currentViewID
  L1_2.status = L2_2
  L1_2 = A0_2.delegate
  L1_2 = L1_2.nameField
  L1_2.isVisible = false
  L1_2 = A0_2.delegate
  L1_2 = L1_2.descriptionField
  L1_2.isVisible = false
  L1_2 = A0_2.delegate
  L1_2 = L1_2.dscFieldBG
  L1_2.isVisible = false
  L1_2 = A0_2.delegate
  L1_2 = L1_2.nameField
  L1_2 = L1_2.text
  L2_2 = A0_2.delegate
  L2_2 = L2_2.descriptionField
  L2_2 = L2_2.text
  if L1_2 ~= nil and L1_2 ~= "" then
    L4_2 = L1_2
    L3_2 = L1_2.len
    L3_2 = L3_2(L4_2)
    if 0 < L3_2 and L2_2 ~= nil and L2_2 ~= "" then
      L4_2 = L2_2
      L3_2 = L2_2.len
      L3_2 = L3_2(L4_2)
      if 0 < L3_2 then
        L3_2 = L4_1
        L3_2 = L3_2.show
        L4_2 = L0_1
        L4_2 = L4_2["Updating Tribe"]
        L3_2(L4_2)
        L3_2 = mainPlayer
        L3_2 = L3_2.tribe
        L4_2 = L3_2
        L3_2 = L3_2.editTribe
        L5_2 = L1_2
        L6_2 = L2_2
        L7_2 = successToEditTribeCallBack
        
        function L8_2(A0_3)
          local L1_3, L2_3, L3_3
          L1_3 = failedToEditTribeCallback
          L2_3 = A0_2
          L2_3 = L2_3.delegate
          L3_3 = A0_3
          L1_3(L2_3, L3_3)
        end
        
        L9_2 = A0_2.delegate
        L10_2 = L16_1
        L10_2 = L10_2.currentViewID
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  end
  else
    L3_2 = log
    L4_2 = "The tribe name and description shouldn't be empty tribeName:"
    L5_2 = L1_2
    L6_2 = "description:"
    L7_2 = L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = showSimpleDialog
    L4_2 = "Edit Tribe"
    L5_2 = "You must enter a name and description for your tribe."
    L6_2 = nil
    
    function L7_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L0_3 = L0_3.delegate
      L0_3 = L0_3.nameField
      L0_3.isVisible = true
      L0_3 = A0_2
      L0_3 = L0_3.delegate
      L0_3 = L0_3.descriptionField
      L0_3.isVisible = true
      L0_3 = A0_2
      L0_3 = L0_3.delegate
      L0_3 = L0_3.dscFieldBG
      L0_3.isVisible = true
    end
    
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = native
  L3_2 = L3_2.setKeyboardFocus
  L4_2 = nil
  L3_2(L4_2)
end

didPressEditTribe = L18_1

function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = A0_2.view
  L1_2.parent = L2_2
  L2_2 = L0_1
  L2_2 = L2_2["Tribe Status"]
  L3_2 = ":"
  L2_2 = L2_2 .. L3_2
  L1_2.text = L2_2
  L1_2.y = 115
  L2_2 = Theme
  L2_2 = L2_2.textStyle
  L2_2 = L2_2[4]
  L2_2 = L2_2.font
  L1_2.font = L2_2
  L1_2.fontSize = 14
  L1_2.align = "right"
  L2_2 = display
  L2_2 = L2_2.newText
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2.carouselDescriptionText = L2_2
  L2_2 = A0_2.carouselDescriptionText
  L3_2 = L0_1
  L3_2 = L3_2.adjustX
  L4_2 = A0_2.carouselDescriptionText
  L4_2 = L4_2.width
  L4_2 = L4_2 / 2
  L4_2 = 10 + L4_2
  L5_2 = -10
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.x = L3_2
  L2_2 = A0_2.carouselDescriptionText
  L3_2 = L2_2
  L2_2 = L2_2.setFillColor
  L4_2 = Theme
  L4_2 = L4_2.colorsSet
  L4_2 = L4_2.darkBlueColor
  L4_2 = L4_2[1]
  L5_2 = Theme
  L5_2 = L5_2.colorsSet
  L5_2 = L5_2.darkBlueColor
  L5_2 = L5_2[2]
  L6_2 = Theme
  L6_2 = L6_2.colorsSet
  L6_2 = L6_2.darkBlueColor
  L6_2 = L6_2[3]
  L2_2(L3_2, L4_2, L5_2, L6_2)
end

createCarouselDescription = L18_1

function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L1_2.displayType = "text"
  L1_2.arrowWidth = 35
  L1_2.arrowHeight = 35
  L1_2.textFontSize = 12
  L1_2.paddingAmount = 12
  L2_2 = Theme
  L2_2 = L2_2.colorsSet
  L2_2 = L2_2.darkBlueColor
  L1_2.textColor = L2_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = Constants
  L4_2 = L4_2.Tribe_Status_Open
  L3_2.id = L4_2
  L4_2 = L0_1
  L4_2 = L4_2.Open
  L3_2.value = L4_2
  L4_2 = {}
  L5_2 = Constants
  L5_2 = L5_2.Tribe_Status_Invite_Only
  L4_2.id = L5_2
  L5_2 = L0_1
  L5_2 = L5_2["Invite only"]
  L4_2.value = L5_2
  L5_2 = {}
  L6_2 = Constants
  L6_2 = L6_2.Tribe_Status_Closed
  L5_2.id = L6_2
  L6_2 = L0_1
  L6_2 = L6_2.Closed
  L5_2.value = L6_2
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L1_2.contents = L2_2
  L2_2 = mainPlayer
  L2_2 = L2_2.tribe
  if L2_2 then
    L2_2 = mainPlayer
    L2_2 = L2_2.tribe
    L2_2 = L2_2.status
    if L2_2 then
      L2_2 = mainPlayer
      L2_2 = L2_2.tribe
      L2_2 = L2_2.status
      L1_2.activeID = L2_2
  end
  else
    L1_2.activeID = 1
  end
  L2_2 = L8_1
  L3_2 = L2_2
  L2_2 = L2_2.new
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L16_1 = L2_2
  L2_2 = L16_1
  L3_2 = display
  L3_2 = L3_2.contentCenterX
  L2_2.x = L3_2
  L2_2 = L16_1
  L2_2.y = 115
  L2_2 = A0_2.view
  L3_2 = L2_2
  L2_2 = L2_2.insert
  L4_2 = L16_1
  L4_2 = L4_2.view
  L2_2(L3_2, L4_2)
end

createCarousel = L18_1

function L18_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A2_2 then
    L3_2 = {}
    A2_2 = L3_2
  end
  L3_2 = setmetatable
  L4_2 = A2_2
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  A0_2.__index = A0_2
  A2_2.type = A1_2
  L3_2 = display
  L3_2 = L3_2.newGroup
  L3_2 = L3_2()
  A2_2.view = L3_2
  L3_2 = system
  L3_2 = L3_2.getInfo
  L4_2 = "build"
  L3_2 = L3_2(L4_2)
  if "2013.1137" < L3_2 then
    L3_2 = system
    L3_2 = L3_2.getInfo
    L4_2 = "platformName"
    L3_2 = L3_2(L4_2)
    if L3_2 ~= "Android" then
      L3_2 = L0_1
      L3_2 = L3_2.lang
      if L3_2 == "fa" then
        goto lbl_35
      end
    end
  end
  L3_2 = L0_1
  L3_2 = L3_2.lang
  if L3_2 == "ar" then
    ::lbl_35::
    L3_2 = {}
    L4_2 = A2_2.view
    L3_2.parent = L4_2
    L3_2.text = "Forming a tribe is ..."
    L3_2.x = 0
    L3_2.y = 0
    L4_2 = display
    L4_2 = L4_2.contentWidth
    L4_2 = L4_2 - 40
    L3_2.width = L4_2
    L3_2.height = 200
    L4_2 = Constants
    L4_2 = L4_2.fontForSubtitle
    L4_2 = L4_2()
    L3_2.font = L4_2
    L3_2.fontSize = 14
    L3_2.align = "right"
    L4_2 = display
    L4_2 = L4_2.newText
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    A2_2.descriptionText = L4_2
  else
    L3_2 = display
    L3_2 = L3_2.newText
    L4_2 = A2_2.view
    L5_2 = "Forming a tribe is ..."
    L6_2 = 0
    L7_2 = 0
    L8_2 = display
    L8_2 = L8_2.contentWidth
    L8_2 = L8_2 - 40
    L9_2 = 200
    L10_2 = Constants
    L10_2 = L10_2.fontForSubtitle
    L10_2 = L10_2()
    L11_2 = 14
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    A2_2.descriptionText = L3_2
  end
  L3_2 = A2_2.descriptionText
  L4_2 = L3_2
  L3_2 = L3_2.setFillColor
  L5_2 = Constants
  L5_2 = L5_2.darkBlueColor
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2()
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = A2_2
  L3_2 = A2_2.createCarouselDescription
  L3_2(L4_2)
  L4_2 = A2_2
  L3_2 = A2_2.createCarousel
  L3_2(L4_2)
  L3_2 = A2_2.type
  if L3_2 == "create" then
    L3_2 = L5_1
    L3_2 = L3_2.stringThousandCommaSeperated
    L4_2 = ""
    L5_2 = Constants
    L5_2 = L5_2.Player_TribeCreationCost
    L4_2 = L4_2 .. L5_2
    L3_2 = L3_2(L4_2)
    L4_2 = L5_1
    L4_2 = L4_2.addKForLargeNumber
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
    L4_2 = L0_1
    L4_2 = L4_2.adjustNumber
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
    L4_2 = A2_2.descriptionText
    L5_2 = L0_1
    L5_2 = L5_2.localizedString
    L6_2 = "Create Tribe Description"
    L7_2 = {}
    L7_2.price = L3_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2.text = L5_2
  else
    L3_2 = A2_2.type
    if L3_2 == "edit" then
      L3_2 = A2_2.descriptionText
      L4_2 = L0_1
      L4_2 = L4_2["Edit Tribe Description"]
      L3_2.text = L4_2
    end
  end
  L3_2 = A2_2.descriptionText
  L4_2 = L0_1
  L4_2 = L4_2.adjustX
  L5_2 = A2_2.descriptionText
  L5_2 = L5_2.width
  L5_2 = L5_2 / 2
  L5_2 = 20 + L5_2
  L6_2 = -15
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.x = L4_2
  L3_2 = A2_2.descriptionText
  L4_2 = A2_2.descriptionText
  L4_2 = L4_2.height
  L4_2 = L4_2 / 2
  L4_2 = 140 + L4_2
  L3_2.y = L4_2
  L3_2 = display
  L3_2 = L3_2.newText
  L4_2 = A2_2.view
  L5_2 = L0_1
  L5_2 = L5_2["Tribe Name"]
  L6_2 = ":"
  L5_2 = L5_2 .. L6_2
  L6_2 = 0
  L7_2 = 0
  L8_2 = Constants
  L8_2 = L8_2.fontForTitle
  L8_2 = L8_2()
  L9_2 = 14
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = L3_2
  L4_2 = L3_2.setFillColor
  L6_2 = Constants
  L6_2 = L6_2.darkBlueColor
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2()
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = L0_1
  L4_2 = L4_2.adjustX
  L5_2 = L3_2.width
  L5_2 = L5_2 / 2
  L5_2 = 10 + L5_2
  L6_2 = -10
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.x = L4_2
  L4_2 = L3_2.height
  L4_2 = L4_2 / 2
  L4_2 = 5 + L4_2
  L3_2.y = L4_2
  L4_2 = system
  L4_2 = L4_2.getInfo
  L5_2 = "platformName"
  L4_2 = L4_2(L5_2)
  if L4_2 == "iPhone OS" then
    L4_2 = L3_2.height
    L4_2 = L4_2 / 2
    L4_2 = 8 + L4_2
    L3_2.y = L4_2
  end
  L4_2 = display
  L4_2 = L4_2.newText
  L5_2 = A2_2.view
  L6_2 = L0_1
  L6_2 = L6_2["Tribe Description"]
  L7_2 = ":"
  L6_2 = L6_2 .. L7_2
  L7_2 = 0
  L8_2 = 0
  L9_2 = Constants
  L9_2 = L9_2.fontForTitle
  L9_2 = L9_2()
  L10_2 = 14
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L4_2
  L5_2 = L4_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = L0_1
  L5_2 = L5_2.adjustX
  L6_2 = L4_2.width
  L6_2 = L6_2 / 2
  L6_2 = 10 + L6_2
  L7_2 = -10
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.x = L5_2
  L5_2 = L4_2.height
  L5_2 = L5_2 / 2
  L5_2 = 55 + L5_2
  L4_2.y = L5_2
  L5_2 = display
  L5_2 = L5_2.newRect
  L6_2 = A2_2.view
  L7_2 = L0_1
  L7_2 = L7_2.adjustX
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 - 235
  L8_2 = L8_2 / 2
  L8_2 = 105 + L8_2
  L9_2 = 0
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = 70
  L9_2 = display
  L9_2 = L9_2.contentWidth
  L9_2 = L9_2 - 235
  L10_2 = 50
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  A2_2.dscFieldBG = L5_2
  L5_2 = A2_2.dscFieldBG
  L5_2.strokeWidth = 2
  L5_2 = A2_2.dscFieldBG
  L6_2 = L5_2
  L5_2 = L5_2.setStrokeColor
  L7_2 = Constants
  L7_2 = L7_2.blueColor
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = A2_2.dscFieldBG
  L6_2 = L5_2
  L5_2 = L5_2.setFillColor
  L7_2 = Constants
  L7_2 = L7_2.lightBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = native
  L5_2 = L5_2.newTextField
  L6_2 = 0
  L7_2 = 0
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 - 235
  L9_2 = 30
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  A2_2.nameField = L5_2
  L5_2 = A2_2.nameField
  L6_2 = A2_2.dscFieldBG
  L6_2 = L6_2.x
  L5_2.x = L6_2
  L5_2 = A2_2.nameField
  L6_2 = A2_2.dscFieldBG
  L6_2 = L6_2.y
  L7_2 = A2_2.dscFieldBG
  L7_2 = L7_2.height
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L7_2 = A2_2.nameField
  L7_2 = L7_2.height
  L7_2 = L7_2 / 2
  L6_2 = L6_2 - L7_2
  L6_2 = L6_2 - 5
  L5_2.y = L6_2
  L5_2 = A2_2.nameField
  L6_2 = L17_1
  L5_2.userInput = L6_2
  L5_2 = A2_2.nameField
  L6_2 = L5_2
  L5_2 = L5_2.addEventListener
  L7_2 = "userInput"
  L8_2 = L17_1
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A2_2.nameField
  L5_2.isVisible = false
  L5_2 = A2_2.nameField
  L6_2 = Constants
  L6_2 = L6_2.nativeFontForTextFields
  L6_2 = L6_2()
  L5_2.font = L6_2
  L5_2 = A2_2.nameField
  L6_2 = L5_2
  L5_2 = L5_2.setTextColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = A2_2.view
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = A2_2.nameField
  L5_2(L6_2, L7_2)
  L5_2 = native
  L5_2 = L5_2.newTextBox
  L6_2 = 0
  L7_2 = 0
  L8_2 = display
  L8_2 = L8_2.contentWidth
  L8_2 = L8_2 - 235
  L9_2 = 50
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  A2_2.descriptionField = L5_2
  L5_2 = A2_2.descriptionField
  L6_2 = A2_2.dscFieldBG
  L6_2 = L6_2.x
  L5_2.x = L6_2
  L5_2 = A2_2.descriptionField
  L6_2 = A2_2.dscFieldBG
  L6_2 = L6_2.y
  L5_2.y = L6_2
  L5_2 = A2_2.descriptionField
  L5_2.isVisible = false
  L5_2 = A2_2.descriptionField
  L5_2.isEditable = true
  L5_2 = A2_2.descriptionField
  L5_2.hasBackground = false
  L5_2 = A2_2.descriptionField
  L6_2 = L17_1
  L5_2.userInput = L6_2
  L5_2 = A2_2.descriptionField
  L6_2 = L5_2
  L5_2 = L5_2.addEventListener
  L7_2 = "userInput"
  L8_2 = L17_1
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A2_2.descriptionField
  L6_2 = Constants
  L6_2 = L6_2.nativeFontForTextFields
  L6_2 = L6_2()
  L5_2.font = L6_2
  L5_2 = A2_2.descriptionField
  L6_2 = L5_2
  L5_2 = L5_2.setTextColor
  L7_2 = Constants
  L7_2 = L7_2.darkBlueColor
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2()
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = A2_2.view
  L6_2 = L5_2
  L5_2 = L5_2.insert
  L7_2 = A2_2.descriptionField
  L5_2(L6_2, L7_2)
  L5_2 = L16_1
  if L5_2 then
    L5_2 = L16_1
    L6_2 = A2_2.descriptionField
    L6_2 = L6_2.x
    L5_2.x = L6_2
  end
  L5_2 = nil
  L6_2 = nil
  L7_2 = A2_2.type
  if L7_2 == "create" then
    L7_2 = L0_1
    L5_2 = L7_2["Create Tribe"]
    L7_2 = A2_2.nameField
    L7_2.text = ""
    L7_2 = A2_2.descriptionField
    L7_2.text = ""
    L6_2 = didPressCreateTribe
  else
    L7_2 = A2_2.type
    if L7_2 == "edit" then
      L7_2 = L0_1
      L5_2 = L7_2["Edit Tribe"]
      L7_2 = A2_2.nameField
      L8_2 = mainPlayer
      L8_2 = L8_2.tribe
      L8_2 = L8_2.name
      L7_2.text = L8_2
      L7_2 = A2_2.descriptionField
      L8_2 = mainPlayer
      L8_2 = L8_2.tribe
      L8_2 = L8_2.description
      L7_2.text = L8_2
      L6_2 = didPressEditTribe
    end
  end
  L7_2 = L7_1
  L8_2 = L7_2
  L7_2 = L7_2.new
  L9_2 = {}
  L9_2.label = L5_2
  L9_2.width = 104
  L9_2.height = 33
  L10_2 = Constants
  L10_2 = L10_2.Path_Assets
  L11_2 = "BattleItems/next.png"
  L10_2 = L10_2 .. L11_2
  L9_2.defaultFile = L10_2
  L9_2.onRelease = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  L7_2.delegate = A2_2
  L8_2 = A2_2.view
  L9_2 = L8_2
  L8_2 = L8_2.insert
  L10_2 = L7_2.view
  L8_2(L9_2, L10_2)
  L8_2 = display
  L8_2 = L8_2.contentCenterX
  L7_2.x = L8_2
  L8_2 = A2_2.descriptionText
  L8_2 = L8_2.y
  L9_2 = L7_2.height
  L9_2 = L9_2 / 2
  L8_2 = L8_2 - L9_2
  L7_2.y = L8_2
  return A2_2
end

new = L18_1

function L18_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.view
  L3_2.x = A1_2
  L3_2 = A0_2.view
  L3_2.y = A2_2
end

setPosition = L18_1

function L18_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.descriptionField
  L1_2.isVisible = false
  L1_2 = A0_2.nameField
  L1_2.isVisible = false
  L1_2 = native
  L1_2 = L1_2.setKeyboardFocus
  L2_2 = nil
  L1_2(L2_2)
end

hide = L18_1

function L18_1(A0_2)
  local L1_2
  L1_2 = A0_2.descriptionField
  L1_2.isVisible = true
  L1_2 = A0_2.nameField
  L1_2.isVisible = true
end

show = L18_1

function L18_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.descriptionField
  L2_2 = L1_2
  L1_2 = L1_2.removeSelf
  L1_2(L2_2)
  L1_2 = A0_2.nameField
  L2_2 = L1_2
  L1_2 = L1_2.removeSelf
  L1_2(L2_2)
  L1_2 = L16_1
  if L1_2 then
    L1_2 = L16_1
    L2_2 = L1_2
    L1_2 = L1_2.removeSelf
    L1_2(L2_2)
    L1_2 = nil
    L16_1 = L1_2
  end
end

remove = L18_1
