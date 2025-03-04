local GSE = GSE

local Statics = GSE.Static
local L = GSE.L

local iconSource = "Interface\\Addons\\GSE_GUI\\Assets\\GSE_Logo_Dark_512.blp"

local ldb = LibStub:GetLibrary("LibDataBroker-1.1")
local dataobj =
  ldb:NewDataObject(
  L["GSE"] .. " " .. L["Gnome Sequencer Enhanced"],
  {
    type = "data source",
    text = "GSE",
    icon = iconSource,
    OnLeave = dataObject_OnLeave
  }
)
local LibQTip = LibStub("LibQTip-1.0")
local LibSharedMedia = LibStub("LibSharedMedia-3.0")

local icon = LibStub("LibDBIcon-1.0")
icon:Register(L["GSE"] .. " " .. L["Gnome Sequencer Enhanced"], dataobj, GSEOptions.showMiniMap)

local LibDBCompartment = LibStub:GetLibrary("LibDBCompartment-1.0")
LibDBCompartment:Register(L["GSE"], dataobj)
local baseFont = CreateFont("baseFont")

-- Check for ElvUI
if GSE.isEmpty(ElvUI) then
  baseFont:SetFont(GameTooltipText:GetFont(), 10, "")
elseif LibSharedMedia:IsValid("font", ElvUI[1].db.general.font) then
  baseFont:SetFont(LibSharedMedia:Fetch("font", ElvUI[1].db.general.font), 10, "")
else
  baseFont:SetFont(GameTooltipText:GetFont(), 10, "")
end

local function CheckOOCQueueStatus()
  local output
  if GSE.isEmpty(GSE.OOCTimer) then
    output = GSEOptions.UNKNOWN .. L["Paused"] .. Statics.StringReset
  else
    if InCombatLockdown() then
      output = GSEOptions.TitleColour .. L["Paused - In Combat"] .. Statics.StringReset
    else
      output = GSEOptions.CommandColour .. L["Running"] .. Statics.StringReset
    end
  end
  return output
end

local function prepareTooltipOOCLine(tooltip, OOCEvent, row, oockey)
  tooltip:SetCell(row, 1, OOCEvent.action, "LEFT", 1)
  if OOCEvent.action == "UpdateSequence" then
    tooltip:SetCell(row, 3, OOCEvent.name, "RIGHT", 1)
  elseif OOCEvent.action == "Save" then
    tooltip:SetCell(row, 3, OOCEvent.sequencename, "RIGHT", 1)
  elseif OOCEvent.action == "Replace" then
    tooltip:SetCell(row, 3, OOCEvent.sequencename, "RIGHT", 1)
  elseif OOCEvent.action == "CheckMacroCreated" then
    tooltip:SetCell(row, 3, OOCEvent.sequencename, "RIGHT", 1)
  elseif OOCEvent.action == "updatemacro" then
    tooltip:SetCell(row, 3, OOCEvent.node.name, "RIGHT", 1)
  elseif OOCEvent.action == "updatevariable" then
    tooltip:SetCell(row, 3, OOCEvent.name, "RIGHT", 1)
  elseif OOCEvent.action == "importmacro" then
    tooltip:SetCell(row, 3, OOCEvent.node.name, "RIGHT", 1)
  elseif OOCEvent.action == "MergeSequence" then
    tooltip:SetCell(row, 3, OOCEvent.sequencename, "RIGHT", 1)
  end
  tooltip:SetLineScript(
    row,
    "OnMouseDown",
    function()
      table.remove(GSE.OOCQueue, oockey)
    end
  )
end

local function handleLeave(self)
  -- Dont close the tooltip if mouseover
  if self.tooltip and not self.tooltip:IsMouseOver() then
    self.tooltip:Release()
    self.tooltip = nil
  end
  return true
end

function dataobj:OnEnter()
  -- Acquire a tooltip with 3 columns, respectively aligned to left, center and right
  --local tooltip = LibQTip:Acquire("GSSE", 3, "LEFT", "CENTER", "RIGHT")
  local tooltip = LibQTip:Acquire("GSE", 3, "LEFT", "CENTER", "RIGHT")
  self.tooltip = tooltip
  tooltip:SetHighlightTexture("Interface\\FriendsFrame\\UI-FriendsFrame-HighlightBar")
  tooltip:EnableMouse(true)
  tooltip:SmartAnchorTo(self)
  tooltip.OnRelease = handleLeave
  tooltip:SetAutoHideDelay(1, self)
  tooltip:Clear()
  tooltip:SetFont(baseFont)
  --tooltip:SetHeaderFont(red17font)
  local y, _ = tooltip:AddLine()
  tooltip:SetCell(y, 1, L["GSE: Left Click to open the Sequence Editor"], "CENTER", 3)
  y, _ = tooltip:AddLine()
  tooltip:SetCell(y, 1, L["GSE: Middle Click to open the Keybinding Interface"], "CENTER", 3)
  y, _ = tooltip:AddLine()
  tooltip:SetCell(y, 1, L["GSE: Right Click to open the Sequence Debugger"], "CENTER", 3)

  -- If in party, add other users and their versions
  if not GSE.isEmpty(GSE.UnsavedOptions["PartyUsers"]) and GSEOptions.showGSEUsers then
    tooltip:AddSeparator()
    y, _ = tooltip:AddLine()
    tooltip:SetCell(y, 1, L["GSE Users"], "CENTER", 3)
    for k, v in pairs(GSE.UnsavedOptions["PartyUsers"]) do
      local userline, _ = tooltip:AddLine(k, nil, v)
      tooltip:SetLineScript(
        userline,
        "OnMouseDown",
        function(obj, button)
          GSE.RequestSequenceList(k)
        end
      )
    end
  end

  tooltip:AddSeparator()
  y, _ = tooltip:AddLine()
  tooltip:SetCell(y, 1, string.format("GCD: %ss", GSE.GetGCD()), "CENTER", 3)

  -- Show GSE OOCQueue Information
  if GSEOptions.showGSEoocqueue then
    tooltip:AddSeparator()
    y, _ = tooltip:AddLine()
    tooltip:SetCell(y, 1, string.format(L["The GSE Out of Combat queue is %s"], CheckOOCQueueStatus()), "CENTER", 3)
    local OOCStatusline = y
    tooltip:SetLineScript(
      y,
      "OnMouseDown",
      function(obj, button)
        GSE.ToggleOOCQueue()
        tooltip:SetCell(
          OOCStatusline,
          1,
          string.format(L["The GSE Out of Combat queue is %s"], CheckOOCQueueStatus()),
          "CENTER",
          3
        )
      end
    )
    tooltip:AddSeparator()
    y, _ = tooltip:AddLine()
    if #GSE.OOCQueue > 0 then
      tooltip:SetCell(y, 1, string.format(L["There are %i events in out of combat queue"], #GSE.OOCQueue), "CENTER", 3)
      tooltip:SetLineScript(
        y,
        "OnMouseDown",
        function()
          GSE.OOCQueue = {}
        end
      )
      for k, v in ipairs(GSE.OOCQueue) do
        y, _ = tooltip:AddLine()
        prepareTooltipOOCLine(tooltip, v, y, k)
      end
    else
      -- No Items
      tooltip:SetCell(y, 1, string.format(L["There are no events in out of combat queue"]), "CENTER", 3)
    end
  end

  tooltip:AddSeparator()
  y, _ = tooltip:AddLine()
  tooltip:SetCell(y, 1, string.format(L["GSE Version: %s"], GSE.VersionString), "CENTER", 3)
  -- Use smart anchoring code to anchor the tooltip to our frame
  tooltip:SmartAnchorTo(self)

  -- Show it, et voil� !
  tooltip:Show()
end

local function dataObject_OnLeave(self)
  -- this may throw an error - capture the error silently
  pcall(handleLeave, self)
end

function dataobj:OnLeave()
  dataObject_OnLeave(self)
end

function dataobj:OnClick(button)
  if GSE.CheckGUI() then
    if button == "LeftButton" then
      GSE.ShowSequences()
    elseif button == "MiddleButton" then
      GSE.ShowKeyBindings()
    elseif button == "RightButton" then
      GSE.GUIShowDebugWindow()
    end
  end
end

function GSE.miniMapShow()
  icon:Show(L["GSE"] .. " " .. L["Gnome Sequencer Enhanced"])
end

function GSE.miniMapHide()
  icon:Hide(L["GSE"] .. " " .. L["Gnome Sequencer Enhanced"])
end

--- This shows or hides the minimap icon.
function GSE.MiniMapControl(show)
  -- print(show)
  if show then
    GSE.miniMapHide()
  else
    GSE.miniMapShow()
  end
end

-- GSE.MiniMapControl(GSEOptions.showMiniMap.hide)

local GCDLDB =
  ldb:NewDataObject(
  L["GSE"] .. ": " .. L["Current GCD"],
  {
    type = "data source",
    text = string.format("GCD: %ss", GSE.GetGCD()),
    icon = iconSource,
    value = GSE.GetGCD(),
    suffix = "s"
  }
)

GSE.GCDLDB = GCDLDB

GSE.LDB = true
