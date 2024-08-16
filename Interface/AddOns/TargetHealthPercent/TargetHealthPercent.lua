--
TargetHealthPercentConfig = {}
TargetHealthPercent = {}

local TargetHealthPercentAddon = CreateFrame("Frame", "TargetHealthPercentAddon", UIParent)

local DefaultConfig = {}
local RegisteredEvents = {}
TargetHealthPercentAddon:SetScript("OnEvent", function (self, event, ...) if (RegisteredEvents[event]) then return RegisteredEvents[event](self, event, ...) end end)

function RegisteredEvents:ADDON_LOADED(event, addon, ...)
	if (addon == "TargetHealthPercent") then
		SLASH_THP1 = '/thp'
		SlashCmdList["THP"] = function (msg, editbox)
			TargetHealthPercent.SlashCmdHandler(msg, editbox)	
		end
		setmetatable(TargetHealthPercentConfig, {__index = DefaultConfig})
		TargetHealthPercentUI.CreatethpBar()
		TargetHealthPercentUI.CreateConfigMenu()
		print("TargetHealthPercent v5.1 Loaded. Type /thp for usage")
	end
end

function RegisteredEvents:PLAYER_LOGIN(event)
	TargetHealthPercent.InitializeBar()
end

for k, v in pairs(RegisteredEvents) do
	TargetHealthPercentAddon:RegisterEvent(k)
end


function TargetHealthPercent.InitializeBar()

	--TargetHealthPercentBar:SetAlpha(TargetHealthPercent.GetConfigValue("barAlpha"))
	TargetHealthPercentBar:SetScale(TargetHealthPercent.GetConfigValue("barScale"))	
	
	TargetHealthPercent.ShowOrHideBar()
	
	--Consider these globals inside the addon, used to rate-limit OnUpdate script
	TargetHealthPercent.UPDATE_INTERVAL = 0.09
	TargetHealthPercent.TIME_SINCE_LAST_UPDATE = 0
	TargetHealthPercentAddon:SetScript("OnUpdate", TargetHealthPercent.OnUpdate)
		
	-- show config panel at load
	--InterfaceOptionsFrame_OpenToCategory("TargetHealthPercent")
	
	collectgarbage(collect)
	UpdateAddOnMemoryUsage()
end

function TargetHealthPercent.OnUpdate(self, elapsed)
	TargetHealthPercent.TIME_SINCE_LAST_UPDATE = TargetHealthPercent.TIME_SINCE_LAST_UPDATE + elapsed
	while (TargetHealthPercent.TIME_SINCE_LAST_UPDATE > TargetHealthPercent.UPDATE_INTERVAL) do
		TargetHealthPercent.UpdateBar()
		TargetHealthPercent.TIME_SINCE_LAST_UPDATE = TargetHealthPercent.TIME_SINCE_LAST_UPDATE - TargetHealthPercent.UPDATE_INTERVAL
	end
end

function TargetHealthPercent.UpdateBar()
	barDec = TargetHealthPercent.GetConfigValue("barDec")
	showHP = TargetHealthPercent.GetConfigValue("showHP")
	m = UnitHealthMax("target")
	
	local  TargetsPercentOfHealth = ( UnitHealth("target") / UnitHealthMax("target") * 100)
	if UnitHealthMax("target") == 0 then
	TargetsPercentOfHealth = 0
	end
	local text =""
	
	-- set decimal place
	if barDec == 0 then
		text = string.format("%.0f", TargetsPercentOfHealth) .."%"
		thpBar:SetSize(barWidth, barHight+4)
		thpBarBackground:SetSize(barWidth, barHight)
		thpBarText:SetSize(barWidth, barHight+0.5) 
	elseif barDec > 0 and barDec < 2 then 
		barDec = 1
		text = string.format("%.1f", TargetsPercentOfHealth) .."%"
		thpBar:SetSize(barWidth+10, barHight+4)
		thpBarBackground:SetSize(barWidth +10 , barHight)
		thpBarText:SetSize(barWidth +10 , barHight+0.5) 
	elseif barDec >= 2 and barDec < 3 then
		barDec = 2
		text = string.format("%.2f", TargetsPercentOfHealth) .."%"
		thpBar:SetSize(barWidth+20, barHight+4)
		thpBarBackground:SetSize(barWidth +20 , barHight)
		thpBarText:SetSize(barWidth +20 , barHight+0.5) 
	elseif barDec == 3 then
		text = string.format("%.3f", TargetsPercentOfHealth) .."%"
		thpBar:SetSize(barWidth+30, barHight+4)
		thpBarBackground:SetSize(barWidth +30 , barHight)
		thpBarText:SetSize(barWidth +30 , barHight+0.5) 
	end
	
	if showHP == true then
		if m <= 999 then
			text = text .. " " .. m
			
		elseif m <9999 then
			text = text .. " " .. string.format("%.1f", m/1000)  .. "k"
		elseif m <999999 then
			text = text .. " " .. string.format("%.0f", m/1000)  .. "k"
			
		elseif m <9999999 then
			text = text .. " " .. string.format("%.1f", m/1000000)  .. "m"
		elseif m <999999999 then
			text = text .. " " .. string.format("%.0f", m/1000000)  .. "m"
			
		elseif m <9999999999 then
			text = text .. " " .. string.format("%.1f", m/1000000000)  .. "b"
		elseif m <999999999999 then
			text = text .. " " .. string.format("%.0f", m/1000000000)  .. "b"
			
		end
	
		
		thpBar:SetSize(barWidth+60, barHight+4)
		thpBarBackground:SetSize(barWidth +60 , barHight)
		thpBarText:SetSize(barWidth +60 , barHight+0.5) 
	end
	--print(showHP)
	
	-- handle color
	TargetHealthPercent.HandleBarColor(TargetsPercentOfHealth)
	
	TargetHealthPercentText:SetText(text);
	TargetHealthPercent.ShowOrHideBar();
end

function TargetHealthPercent.ShowOrHideBar()
	
	if TargetHealthPercent.GetConfigValue("locked") then
		TargetHealthPercent.SetLock(true)
		thpBar:EnableMouse(false)
	else
		TargetHealthPercent.SetLock(false)
		thpBar:EnableMouse(true)
	end

	if TargetHealthPercent.GetConfigValue("showAlways") then
	
		TargetHealthPercentBar:Show()
		return
	end
	
	if TargetHealthPercent.GetConfigValue("showTarget") and TargetHealthPercent.GetConfigValue("showCombat") then
		if UnitHealthMax("target") > 0 and UnitAffectingCombat("player")  then
			TargetHealthPercentBar:Show()
						
		else			
			TargetHealthPercentBar:Hide()
		end
		return
	end
	
	if TargetHealthPercent.GetConfigValue("showTarget") then
		if UnitHealthMax("target") > 0   then
			TargetHealthPercentBar:Show()
			return			
		
		end
		--return
	end
	
	if TargetHealthPercent.GetConfigValue("showCombat") then
		if UnitAffectingCombat("player") then
			--print("I am in combat")
			TargetHealthPercentBar:Show()
			return
		else
			--print("I am not in combat")
			--TargetHealthPercentBar:Hide()
		end
	end
	TargetHealthPercentBar:Hide()
end

function TargetHealthPercent.SetLock(newValue)
	TargetHealthPercent.SetConfigValue("locked", newValue)
end

function TargetHealthPercent.HandleBarColor(TargetsPercentOfHealth)
	-- handle bg color change 
	local showColor35 = TargetHealthPercent.GetConfigValue("showColor35")
	local showColor25 = TargetHealthPercent.GetConfigValue("showColor25")
	local showUse20 = TargetHealthPercent.GetConfigValue("showUse20")
	local showUse80 = TargetHealthPercent.GetConfigValue("showUse80")
	local showHP = TargetHealthPercent.GetConfigValue("showHP")
	
	--print ("showColor35 = " ..  tostring(showColor35) .. ", showColor25 = " ..  tostring(showColor25) )
	-- both are checked
	
	--Default
		thpBarBackground:SetColorTexture(0, 0, 0, TargetHealthPercent.GetConfigValue("barAlpha")) -- black
	
	-- hunters careful aim
	if TargetsPercentOfHealth < 99.99 and TargetsPercentOfHealth > 90.00 and showUse80 then
		thpBarBackground:SetColorTexture(1, 0.49, 0.04, TargetHealthPercent.GetConfigValue("barAlpha"))  -- orange		
		--1.00 	0.49 	0.04
	end
	-- rogues back stabe
	if TargetsPercentOfHealth < 35 and showColor35  then 		 
		thpBarBackground:SetColorTexture(1, 0.49, 0.04, TargetHealthPercent.GetConfigValue("barAlpha")) -- orange		
	end
	--affliction warlocks drain life excute
	if TargetsPercentOfHealth < 25 and showColor25 then 		 
		thpBarBackground:SetColorTexture(1, 0, 0, TargetHealthPercent.GetConfigValue("barAlpha")) -- red
	end
	-- warriors excute
	if TargetsPercentOfHealth < 20 and showUse20 then 		 
		thpBarBackground:SetColorTexture(1, 0, 0, TargetHealthPercent.GetConfigValue("barAlpha")) -- red
	end
	--Default
	if TargetsPercentOfHealth == 0 or TargetsPercentOfHealth == 100   then 		 
		thpBarBackground:SetColorTexture(0, 0, 0, TargetHealthPercent.GetConfigValue("barAlpha")) -- red
	end
	
	

	
	--[[
	if showColor35 and showColor25 then
		
		
		if showUse20 then 
			if TargetsPercentOfHealth >= 35 then
				-- black
				thpBarBackground:SetColorTexture(0, 0, 0, TargetHealthPercent.GetConfigValue("barAlpha")) 
			elseif TargetsPercentOfHealth < 35 and TargetsPercentOfHealth > 20 then
				-- orange 
				thpBarBackground:SetColorTexture(1, 0.6, 0, TargetHealthPercent.GetConfigValue("barAlpha")) 		
			elseif TargetsPercentOfHealth < 20 and TargetsPercentOfHealth > 0 then
				-- red
				thpBarBackground:SetColorTexture(1, 0, 0, TargetHealthPercent.GetConfigValue("barAlpha")) 
			else
				-- black with no target
				thpBarBackground:SetColorTexture(0, 0, 0, TargetHealthPercent.GetConfigValue("barAlpha"))
			end
			-- all done
			return
		else
			if TargetsPercentOfHealth >= 35 then
				-- black
				thpBarBackground:SetColorTexture(0, 0, 0, TargetHealthPercent.GetConfigValue("barAlpha")) 
			elseif TargetsPercentOfHealth < 35 and TargetsPercentOfHealth > 25 then
				-- orange 
				thpBarBackground:SetColorTexture(1, 0.6, 0, TargetHealthPercent.GetConfigValue("barAlpha")) 		
			elseif TargetsPercentOfHealth < 25 and TargetsPercentOfHealth > 0 then
				-- red
				thpBarBackground:SetColorTexture(1, 0, 0, TargetHealthPercent.GetConfigValue("barAlpha")) 
			else
				-- black with no target
				thpBarBackground:SetColorTexture(0, 0, 0, TargetHealthPercent.GetConfigValue("barAlpha"))
			end
			-- all done
			return
		end
	end
	
	-- only 35 is checked
	if showColor35  then
		if TargetsPercentOfHealth >= 35 then
			-- black
			thpBarBackground:SetColorTexture(0, 0, 0, TargetHealthPercent.GetConfigValue("barAlpha")) 
		elseif TargetsPercentOfHealth < 35 and TargetsPercentOfHealth > 0 then
			-- orange 
			thpBarBackground:SetColorTexture(1, 0.6, 0, TargetHealthPercent.GetConfigValue("barAlpha")) 		
		else
			-- black with no target
			thpBarBackground:SetColorTexture(0, 0, 0, TargetHealthPercent.GetConfigValue("barAlpha"))
		end
		-- all done
		return
	end
	
		-- only 25 is checked
	if showColor25  then
	
		if showUse20 then 
			if TargetsPercentOfHealth >= 20 then
				-- black
				thpBarBackground:SetColorTexture(0, 0, 0, TargetHealthPercent.GetConfigValue("barAlpha")) 
			elseif TargetsPercentOfHealth < 20 and TargetsPercentOfHealth > 0 then
				-- red 
				thpBarBackground:SetColorTexture(1, 0, 0, TargetHealthPercent.GetConfigValue("barAlpha")) 		
			else
				-- black with no target
				thpBarBackground:SetColorTexture(0, 0, 0, TargetHealthPercent.GetConfigValue("barAlpha"))
			end
			-- all done
			return
		else
			if TargetsPercentOfHealth >= 25 then
				-- black
				thpBarBackground:SetColorTexture(0, 0, 0, TargetHealthPercent.GetConfigValue("barAlpha")) 
			elseif TargetsPercentOfHealth < 25 and TargetsPercentOfHealth > 0 then
				-- red 
				thpBarBackground:SetColorTexture(1, 0, 0, TargetHealthPercent.GetConfigValue("barAlpha")) 		
			else
				-- black with no target
				thpBarBackground:SetColorTexture(0, 0, 0, TargetHealthPercent.GetConfigValue("barAlpha"))
			end
			-- all done
			return
		end
	end
	
	-- nothing checked, turn black
	thpBarBackground:SetColorTexture(0, 0, 0, TargetHealthPercent.GetConfigValue("barAlpha"))
	return
	]]--
end

function TargetHealthPercent.SlashCmdHandler(msg, editbox)
	--print("command is " .. msg .. "\n")
	if (string.lower(msg) == "config") then
		InterfaceOptionsFrame_OpenToCategory("TargetHealthPercent")
	elseif (string.lower(msg) == "dumpconfig") then
		print("With defaults")
		for k,v in pairs(DefaultConfig) do
			print(k,TargetHealthPercent.GetConfigValue(k))
		end
		print("Direct table")
		for k,v in pairs(TargetHealthPercentConfig) do
			print(k,v)
		end
	elseif (string.lower(msg) == "lock") then
		TargetHealthPercent.SetLock(true)
	elseif (string.lower(msg) == "unlock") then
		TargetHealthPercent.SetLock(false)
	elseif (string.lower(msg) == "reset") then
		TargetHealthPercent.SetConfigToDefaults()
	elseif (string.lower(msg) == "perf") then
		TargetHealthPercent.PrintPerformanceData()
	else
		TargetHealthPercent.ShowHelp()
	end
end

function TargetHealthPercent.ShowHelp()
	print("Slash commands (/thp):")
	print(" /thp lock: Locks Target Health Percent bar's position")
	print(" /thp unlock: unLocks Target Health Percent bar's position")
	print(" /thp config: Open addon config menu (also found in Addon tab in Blizzard's Interface menu)")
	print(" /thp reset:  Resets your config to defaults")
end

function TargetHealthPercent.PrintPerformanceData()
	UpdateAddOnMemoryUsage()
	local mem = GetAddOnMemoryUsage("TargetHealthPercent")
	print("TargetHealthPercent is currently using " .. mem .. " kbytes of memory")
	collectgarbage(collect)
	UpdateAddOnMemoryUsage()
	mem = GetAddOnMemoryUsage("TargetHealthPercent")
	print("TargetHealthPercent is currently using " .. mem .. " kbytes of memory after garbage collection")

end

function TargetHealthPercent.GetConfigValue(key)
	return TargetHealthPercentConfig[key]
end

function TargetHealthPercent.SetConfigValue(key, value)
	if (DefaultConfig[key] == value) then
		TargetHealthPercentConfig[key] = nil
	else 
		TargetHealthPercentConfig[key] = value
	end
end

function TargetHealthPercent.SetConfigToDefaults()
	print("Resetting config to defaults")
	TargetHealthPercentConfig = {}
	setmetatable(TargetHealthPercentConfig, {__index = DefaultConfig})

	TargetHealthPercentBar:ClearAllPoints()
	TargetHealthPercentBar:SetPoint('CENTER', UIParent)
	--TargetHealthPercentBar:SetAlpha(TargetHealthPercent.GetConfigValue("barAlpha"))
	TargetHealthPercentBar:SetScale(TargetHealthPercent.GetConfigValue("barScale"))

	TargetHealthPercent.ShowOrHideBar()
end

DefaultConfig = {
	showAlways = true,
	showTarget = true,
	showCombat = true,
	showColor35 = true,
	showColor25 = true,
	showUse20 = false,
	showUse80 = false,
	showHP = false,
	barText = "&hp",
	barAlpha = 1.0,
	barScale = 2.0,
	barDec = 0,
	locked = false
}
