-- NoBonusXP.lua
local addonName, addonTable = ...
addonTable = addonTable or {}

-- Import XP tables and item IDs
local xpTablePrePatch = addonTable.xpTablePrePatch
local heroicXpTable = addonTable.heroicXpTable
local raidXpTable = addonTable.raidXpTable
local xpBonusItemIDs = addonTable.xpBonusItemIDs
local threadItemIDs = addonTable.threadItemIDs
local cacheItemIDs = addonTable.cacheItemIDs
local prismaticGemItemIDs = addonTable.PrismaticGemItemIDs
local metaGemItemIDs = addonTable.MetaGemItemIDs
local cogGemItemIDs = addonTable.CogGemItemIDs
local tinkerGemItemIDs = addonTable.TinkerGemItemIDs

-- Armor and weapon slots mapping
local equipSlots = {
    ["INVTYPE_HEAD"] = "HeadSlot",
    ["INVTYPE_SHOULDER"] = "ShoulderSlot",
    ["INVTYPE_CHEST"] = "ChestSlot",
    ["INVTYPE_WRIST"] = "WristSlot",
    ["INVTYPE_HAND"] = "HandsSlot",
    ["INVTYPE_WAIST"] = "WaistSlot",
    ["INVTYPE_LEGS"] = "LegsSlot",
    ["INVTYPE_FEET"] = "FeetSlot",
    ["INVTYPE_WEAPON"] = "MainHandSlot",
    ["INVTYPE_2HWEAPON"] = "MainHandSlot",
    ["INVTYPE_SHIELD"] = "SecondaryHandSlot",
    ["INVTYPE_WEAPONOFFHAND"] = "SecondaryHandSlot",
    ["INVTYPE_HOLDABLE"] = "SecondaryHandSlot",
    ["INVTYPE_RANGED"] = "RangedSlot",
    ["INVTYPE_THROWN"] = "RangedSlot",
    ["INVTYPE_RANGEDRIGHT"] = "RangedSlot",
    ["INVTYPE_RELIC"] = "RangedSlot"
}

local function HasTimerunnersAdvantage()
    for i = 1, 40 do
        local auraData = C_UnitAuras.GetBuffDataByIndex("player", i, "HELPFUL")
        if not auraData then break end
        if auraData.spellId == 440393 then
            return true
        end
    end
    return false
end

local function IsXPBonusItem(itemID)
    return xpBonusItemIDs[itemID] ~= nil
end

local function IsThreadItem(itemID)
    for _, id in ipairs(threadItemIDs) do
        if id == itemID then
            return true
        end
    end
    return false
end

local function IsCacheItem(itemID)
    for _, id in ipairs(cacheItemIDs) do
        if id == itemID then
            return true
        end
    end
    return false
end

local function IsThreadOrCacheItem(itemID)
    return IsThreadItem(itemID) or IsCacheItem(itemID)
end

local function IsPrismaticGemItem(itemID)
    for _, id in ipairs(prismaticGemItemIDs) do
        if id == itemID then
            return true
        end
    end
    return false
end

local function IsTinkerRelatedItem(itemID)
    for _, id in ipairs(metaGemItemIDs) do
        if id == itemID then
            return true
        end
    end
    for _, id in ipairs(cogGemItemIDs) do
        if id == itemID then
            return true
        end
    end
    for _, id in ipairs(tinkerGemItemIDs) do
        if id == itemID then
            return true
        end
    end
    return false
end

local function CompareAndLootGear()
    local numItems = GetInboxNumItems()
    local foundUpgrade = false

    for mailIndex = 1, numItems do
        for attachmentIndex = 1, ATTACHMENTS_MAX_RECEIVE do
            local itemLink = GetInboxItemLink(mailIndex, attachmentIndex)
            if itemLink then
                local itemName, _, _, _, _, itemType, _, _, itemEquipLoc = GetItemInfo(itemLink)
                if (itemType == "Armor" or itemType == "Weapon") and equipSlots[itemEquipLoc] then
                    local newItemLevel = GetDetailedItemLevelInfo(itemLink)
                    local slotId = GetInventorySlotInfo(equipSlots[itemEquipLoc])
                    if slotId then
                        local currentItemLink = GetInventoryItemLink("player", slotId)
                        if currentItemLink then
                            local currentItemLevel = GetDetailedItemLevelInfo(currentItemLink)
                            if newItemLevel > currentItemLevel then
                                TakeInboxItem(mailIndex, attachmentIndex)
                                foundUpgrade = true
                            end
                        else
                            TakeInboxItem(mailIndex, attachmentIndex)
                            foundUpgrade = true
                        end
                    end
                end
            end
        end
    end

    if foundUpgrade then
        C_Timer.After(0.5, CompareAndLootGear)
    end
end

local function RetrieveItemsFromMail(filterFunction)
    if filterFunction == CompareAndLootGear then
        CompareAndLootGear()
        return
    end

    local numItems = GetInboxNumItems()

    local function ProcessNextMail(mailIndex, attachmentIndex)
        if mailIndex > numItems then
            return
        end

        local itemLink = GetInboxItemLink(mailIndex, attachmentIndex)
        if itemLink then
            local itemID = select(2, strsplit(":", itemLink))
            itemID = tonumber(itemID)
            if itemID then
                local itemName, _, _, _, _, _, _, _, _, _ = GetItemInfo(itemID)
                if not itemName then
                    C_Timer.After(0.1, function() ProcessNextMail(mailIndex, attachmentIndex) end)
                    return
                elseif filterFunction(itemID) then
                    TakeInboxItem(mailIndex, attachmentIndex)
                    C_Timer.After(0.1, function() ProcessNextMail(mailIndex, attachmentIndex) end)
                    return
                end
            end
        end

        attachmentIndex = attachmentIndex + 1
        if attachmentIndex > ATTACHMENTS_MAX_RECEIVE then
            mailIndex = mailIndex + 1
            attachmentIndex = 1
        end
        C_Timer.After(0.1, function() ProcessNextMail(mailIndex, attachmentIndex) end)
    end

    ProcessNextMail(1, 1)
end

local function LootBonusXPItems()
    local numItems = GetInboxNumItems()

    local function ProcessNextMail(mailIndex, attachmentIndex)
        if mailIndex > numItems then
            return
        end

        local itemLink = GetInboxItemLink(mailIndex, attachmentIndex)
        if itemLink then
            local itemID = select(2, strsplit(":", itemLink))
            itemID = tonumber(itemID)
            if itemID and IsXPBonusItem(itemID) then
                TakeInboxItem(mailIndex, attachmentIndex)
                C_Timer.After(0.1, function() ProcessNextMail(mailIndex, attachmentIndex) end)
                return
            end
        end

        attachmentIndex = attachmentIndex + 1
        if attachmentIndex > ATTACHMENTS_MAX_RECEIVE then
            mailIndex = mailIndex + 1
            attachmentIndex = 1
        end
        C_Timer.After(0.1, function() ProcessNextMail(mailIndex, attachmentIndex) end)
    end

    ProcessNextMail(1, 1)
end

local function OnEvent(self, event, ...)
    if not HasTimerunnersAdvantage() then return end

    if event == "LOOT_READY" then
        local numItems = GetNumLootItems()
        for i = 1, numItems do
            local itemLink = GetLootSlotLink(i)
            if itemLink then
                local itemID = select(2, strsplit(":", itemLink))
                itemID = tonumber(itemID)
                if itemID and not IsXPBonusItem(itemID) then
                    LootSlot(i)
                end
            end
        end

        -- Confirm the loot if it's required
        if GetCVar("autoLootDefault") == "1" then
            ConfirmLootSlot(1)
        end
    end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("LOOT_READY")
frame:SetScript("OnEvent", OnEvent)

-- XP Tracking Functions

local function GetExperienceGainPercent(spellID)
    local tooltip = CreateFrame("GameTooltip", "XPTooltip", nil, "GameTooltipTemplate")
    tooltip:SetOwner(UIParent, "ANCHOR_NONE")

    for i = 1, 40 do
        local auraData = C_UnitAuras.GetBuffDataByIndex("player", i, "HELPFUL")
        if not auraData then break end
        if auraData.spellId == spellID then
            tooltip:SetUnitBuff("player", i)
            for j = 1, tooltip:NumLines() do
                local line = _G["XPTooltipTextLeft" .. j]:GetText()
                if line and line:find("Experience") then
                    local xpGainStr = line:match("(%d+%%) Experience")
                    if xpGainStr then
                        return tonumber(xpGainStr:match("(%d+)"))
                    end
                end
            end
        end
    end

    return 0
end

local function CountItemsInMail(itemID)
    local itemCount = 0
    local numItems = GetInboxNumItems()
    for i = 1, numItems do
        for j = 1, ATTACHMENTS_MAX_RECEIVE do
            local itemLink = GetInboxItemLink(i, j)
            if itemLink then
                local itemString = string.match(itemLink, "item:(%d+):")
                if itemString and tonumber(itemString) == itemID then
                    local _, _, _, count = GetInboxItem(i, j)
                    itemCount = itemCount + (count or 1)
                end
            end
        end
    end
    return itemCount
end

local function CalculatePotentialXP(heroicItemCount, raidItemCount, level, experienceGainPercent)
    local xpPerHeroicItem = heroicXpTable[level] or 0
    local xpPerRaidItem = raidXpTable[level] or 0
    local bonusMultiplier = 1 + (experienceGainPercent / 100)
    return (heroicItemCount * xpPerHeroicItem + raidItemCount * xpPerRaidItem) * bonusMultiplier
end

local function CalculateProjectedLevel(currentXP, xpToNextLevel, heroicItemCount, raidItemCount, level, experienceGainPercent, xpTable)
    local totalXP = currentXP
    local projectedLevel = level
    local bonusMultiplier = 1 + (experienceGainPercent / 100)

    local function applyXP(xpAmount)
        while xpAmount > 0 and projectedLevel < 70 do
            if totalXP + xpAmount >= xpToNextLevel then
                xpAmount = xpAmount - (xpToNextLevel - totalXP)
                totalXP = 0
                projectedLevel = projectedLevel + 1
                xpToNextLevel = xpTable[projectedLevel] or 0
            else
                totalXP = totalXP + xpAmount
                xpAmount = 0
            end
        end
    end

    for _ = 1, heroicItemCount do
        local xpFromHeroic = (heroicXpTable[projectedLevel] or 0) * bonusMultiplier
        applyXP(xpFromHeroic)
    end

    for _ = 1, raidItemCount do
        local xpFromRaid = (raidXpTable[projectedLevel] or 0) * bonusMultiplier
        applyXP(xpFromRaid)
    end

    return projectedLevel
end

local XPTrackerFrame

local function CreateXPTrackerFrame()
    local frame = CreateFrame("Frame", "XPTrackerFrame", UIParent, "BasicFrameTemplateWithInset")
    frame:SetSize(320, 480)
    frame:Hide()

    frame.title = frame:CreateFontString(nil, "OVERLAY")
    frame.title:SetFontObject("GameFontHighlight")
    frame.title:SetPoint("CENTER", frame.TitleBg, "CENTER", 0, 0)
    frame.title:SetText("No Bonus XP")

    -- Add text above buttons
    frame.headerText = frame:CreateFontString(nil, "OVERLAY")
    frame.headerText:SetFontObject("GameFontHighlight")
    frame.headerText:SetPoint("TOPLEFT", 10, -40)
    frame.headerText:SetText("Mail Filters:")

    -- Create buttons in a 2x2 grid and center them horizontally
    frame.buttons = {}
    local buttonWidth = 140
    local buttonHeight = 25
    local spacingX = 20
    local totalWidth = buttonWidth * 2 + spacingX
    local startX = (frame:GetWidth() - totalWidth) / 2

    local buttonConfigs = {
        { text = "Loot Threads", filter = IsThreadOrCacheItem },
        { text = "Loot Gems", filter = IsPrismaticGemItem },
        { text = "Loot Tinkers", filter = IsTinkerRelatedItem },
        { text = "Gear Upgrades", filter = CompareAndLootGear }
    }

    for i, config in ipairs(buttonConfigs) do
        local button = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
        button:SetSize(buttonWidth, buttonHeight)
        button:SetText(config.text)
        button:SetScript("OnClick", function() RetrieveItemsFromMail(config.filter) end)
        button:SetPoint("TOPLEFT", startX + ((i - 1) % 2) * (buttonWidth + spacingX), -70 - math.floor((i - 1) / 2) * (buttonHeight + 10))
        frame.buttons[i] = button
    end

    frame.text = frame:CreateFontString(nil, "OVERLAY")
    frame.text:SetFontObject("GameFontHighlight")
    frame.text:SetPoint("TOPLEFT", 10, -160)
    frame.text:SetJustifyH("LEFT")
    frame.text:SetText("")

    -- Create and hide the Loot Bonus XP Tokens button
    frame.lootBonusXPButton = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
    frame.lootBonusXPButton:SetSize(buttonWidth, buttonHeight)
    frame.lootBonusXPButton:SetText("Loot Bonus XP Tokens")
    frame.lootBonusXPButton:SetPoint("BOTTOM", frame, "BOTTOM", 0, 30)
    frame.lootBonusXPButton:Hide()
    frame.lootBonusXPButton:SetScript("OnClick", LootBonusXPItems)

    frame.message = frame:CreateFontString(nil, "OVERLAY")
    frame.message:SetFontObject("GameFontHighlight")
    frame.message:SetPoint("BOTTOM", frame, "BOTTOM", 0, 10)
    frame.message:SetJustifyH("CENTER")
    frame.message:SetText("")
    frame.message:SetFont(frame.message:GetFont(), 14)

    return frame
end

local function ShortenNumber(value)
    if value >= 1000000 then
        return string.format("%.1fM", value / 1000000)
    elseif value >= 1000 then
        return string.format("%.1fK", value / 1000)
    else
        return tostring(value)
    end
end

local function UpdateXPTrackerFrame(frame, level, xpToNextLevel, xpToLevel70, experienceGainPercent, heroicItemCount, raidItemCount, potentialXP, projectedLevel)
    local text = string.format(
        "Current Level: |cff00ff00%d|r\n" ..
        "XP needed to the next level: |cff00ff00%s|r\n" ..
        "XP needed to level 70: |cff00ff00%s|r\n" ..
        "Experience Gain %%: |cff00ff00%d%%|r\n" ..
        "Heroic Tokens: |cff00ff00%d|r\n" ..
        "Raid Tokens: |cff00ff00%d|r\n" ..
        "Potential XP: |cff00ff00%s|r\n" ..
        "Projected Level: |cff00ff00%d|r",
        level, ShortenNumber(xpToNextLevel), ShortenNumber(xpToLevel70), experienceGainPercent,
        heroicItemCount, raidItemCount, ShortenNumber(potentialXP), projectedLevel
    )

    frame.text:SetText(text)

    if projectedLevel >= 70 then
        frame.lootBonusXPButton:Show()
        frame.message:Hide()
    else
        frame.lootBonusXPButton:Hide()
        frame.message:SetText("Do not open bonus xp tokens")
        frame.message:SetTextColor(1, 0, 0) -- Red color
        frame.message:Show()
    end

    frame:SetHeight(frame.text:GetStringHeight() + frame.message:GetStringHeight() + 230)
end

local function PrintXPInfo()
    if not HasTimerunnersAdvantage() then
        if XPTrackerFrame then
            XPTrackerFrame:Hide()
        end
        return
    end

    local level = UnitLevel("player")
    local currentXP = UnitXP("player")
    local nextLevelXP = UnitXPMax("player")
    local xpToNextLevel = nextLevelXP - currentXP
    local xpToLevel70 = 0

    for i = level, 69 do
        xpToLevel70 = xpToLevel70 + (xpTablePrePatch[i] or 0)
    end

    local experienceGainPercent = GetExperienceGainPercent(440393)
    local heroicItemCount = CountItemsInMail(224408)
    local raidItemCount = CountItemsInMail(220763)
    local potentialXP = CalculatePotentialXP(heroicItemCount, raidItemCount, level, experienceGainPercent)
    local projectedLevel = CalculateProjectedLevel(currentXP, xpToNextLevel, heroicItemCount, raidItemCount, level, experienceGainPercent, xpTablePrePatch)

    UpdateXPTrackerFrame(XPTrackerFrame, level, xpToNextLevel, xpToLevel70, experienceGainPercent, heroicItemCount, raidItemCount, potentialXP, projectedLevel)
end

local function PositionXPTrackerFrame()
    local mailFrame = MailFrame
    local padding = 10

    if mailFrame and mailFrame:IsShown() then
        XPTrackerFrame:ClearAllPoints()
        XPTrackerFrame:SetPoint("TOPLEFT", mailFrame, "TOPRIGHT", padding, 0)
    end
end

-- Event frame to listen for mail events
local eventFrame = CreateFrame("Frame")
eventFrame:RegisterEvent("MAIL_SHOW")
eventFrame:RegisterEvent("MAIL_INBOX_UPDATE")
eventFrame:RegisterEvent("PLAYER_INTERACTION_MANAGER_FRAME_HIDE")
eventFrame:SetScript("OnEvent", function(self, event, arg1)
    if event == "MAIL_SHOW" then
        if not XPTrackerFrame then
            XPTrackerFrame = CreateXPTrackerFrame()
        end

        C_Timer.After(0.1, function()
            PositionXPTrackerFrame()
            XPTrackerFrame:Show()
            PrintXPInfo()
        end)
        
    elseif event == "PLAYER_INTERACTION_MANAGER_FRAME_HIDE" and arg1 == Enum.PlayerInteractionType.MailInfo then
        if XPTrackerFrame then
            XPTrackerFrame:Hide()
        end
    elseif event == "MAIL_INBOX_UPDATE" then
        if XPTrackerFrame and XPTrackerFrame:IsShown() then
            PrintXPInfo()
        end
    end
end)
