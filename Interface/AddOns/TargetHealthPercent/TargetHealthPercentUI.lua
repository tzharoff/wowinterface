--
TargetHealthPercentUI = {}

function TargetHealthPercentUI.CreatethpBar()
	barWidth = 38 
	barHight = 12 
	 thpBar = CreateFrame("Frame", "TargetHealthPercentBar", UIParent)
	thpBar:SetMovable(true)
	thpBar:EnableMouse(true)
	thpBar:SetSize(barWidth, barHight+4) -- set to (100 ,1) for non interactive
	
	thpBar:SetScript("OnMouseDown", 
		function (self, button)
			if button == "LeftButton" and not TargetHealthPercent.GetConfigValue("locked") then
				self:StartMoving();
			end
		end
	)
	
	thpBar:SetScript("OnMouseUp", 
		function (self, button)
			if button == "LeftButton" then
				self:StopMovingOrSizing();
			end
		end
	)
	
	thpBar:SetPoint("CENTER", 0, 0)
	thpBar:Hide()
	thpBar:EnableMouse(false)
	thpBarBackground = thpBar:CreateTexture("TargetHealthPercentBarBackground", "BACKGROUND")
	thpBarBackground:SetSize(barWidth , barHight+10) -- background size
	thpBarBackground:SetTexture(0, 0, 0, TargetHealthPercent.GetConfigValue("barAlpha")) -- how trasparent it is 0.0-1.0
	thpBarBackground:SetPoint("TOP", 0, -2)

		-- not used
	--local thpBarBorder = thpBar:CreateTexture("TargetHealthPercentBarBorder", "OVERLAY")
	--thpBarBorder:SetSize(111, 20)
	--thpBarBorder:SetTexture("Interface\\Tooltips\\UI-StatusBar-Border")
	--thpBarBorder:SetPoint("TOP", 0, 2)

	 thpBarText = thpBar:CreateFontString("TargetHealthPercentText", "OVERLAY", "GameFontHighlight")
	thpBarText:SetSize(barWidth , barHight+0.5) -- where text in realtion to bar
	thpBarText:SetPoint("TOP", 0, -2)

	local thpBarStatus = CreateFrame("StatusBar", "TargetHealthPercentStatusBar", thpBar)
	thpBarStatus:SetSize(barWidth , barHight -2)
	thpBarStatus:SetPoint("TOP", 0, -2)

	thpBarStatus:SetFrameLevel(thpBarStatus:GetParent():GetFrameLevel())


	local thpBarStatusTexture = thpBarStatus:CreateTexture("TargetHealthPercentStatusBarTexture", "BACKGROUND")
	

end


function TargetHealthPercentUI.CreateConfigMenu()
	local configPanel = CreateFrame("Frame", "TargetHealthPercentConfigFrame", UIParent)
	configPanel.name = "TargetHealthPercent"
	configPanel.okay = function (self) return end
	configPanel.cancel = function (self) return end

	local addonName, addonTitle, addonNotes = GetAddOnInfo('TargetHealthPercent')
	local configPanelText = configPanel:CreateFontString(nil, 'ARTWORK', 'GameFontNormalLarge')
	configPanelText:SetPoint('TOPLEFT', 16, -16)
	configPanelText:SetText(addonTitle)

	local configPanelDesc = configPanel:CreateFontString(nil, 'ARTWORK', 'GameFontHighlightSmall')
	--configPanelDesc:SetHeight(32)
	configPanelDesc:SetPoint('TOPLEFT', configPanelText, 'BOTTOMLEFT', 0, -8)
	configPanelDesc:SetPoint('RIGHT', configPanel, -32, 0)
	configPanelDesc:SetNonSpaceWrap(true)
	configPanelDesc:SetJustifyH('LEFT')
	configPanelDesc:SetJustifyV('TOP')
	configPanelDesc:SetText(addonNotes)
	
	local showLockDesc = configPanel:CreateFontString(nil, 'ARTWORK', 'GameFontNormal')
	showLockDesc:SetPoint('TOPLEFT', configPanelDesc, 'BOTTOMLEFT', -2, -10)
	showLockDesc:SetText("Locks or unlocks bar")

	local showLock = TargetHealthPercentUI.CreateCheckButton("Locked", configPanel,"Locked", "locked", 'InterfaceOptionsCheckButtonTemplate')
	showLock:SetPoint('TOPLEFT', showLockDesc, 'BOTTOMLEFT', 0, -5)

	local showOptionDesc = configPanel:CreateFontString(nil, 'ARTWORK', 'GameFontNormal')
	showOptionDesc:SetPoint('TOPLEFT', showLock, 'BOTTOMLEFT', -2, -10)
	showOptionDesc:SetText("When to show Bar")

	local showAlways = TargetHealthPercentUI.CreateCheckButton("Always", configPanel,"Always Show", "showAlways", 'InterfaceOptionsCheckButtonTemplate')
	showAlways:SetPoint('TOPLEFT', showOptionDesc, 'BOTTOMLEFT', 0, 0)

	local showTarget = TargetHealthPercentUI.CreateCheckButton("Have Target", configPanel,"Show bar only when you have some thing targeted ", "showTarget", 'InterfaceOptionsCheckButtonTemplate')
	showTarget:SetPoint('TOPLEFT', showAlways, 'BOTTOMLEFT', 10, 0)
	TargetHealthPercentUI.SetupInverseDependentControl(showAlways, showTarget)

	local showCombat = TargetHealthPercentUI.CreateCheckButton("In Combat", configPanel,"Show Bar while in combat", "showCombat", 'InterfaceOptionsCheckButtonTemplate')
	showCombat:SetPoint('TOPLEFT', showTarget, 'BOTTOMLEFT', 0, 0)
	TargetHealthPercentUI.SetupInverseDependentControl(showAlways, showCombat)


	local barAlphaDesc = configPanel:CreateFontString(nil, 'ARTWORK', 'GameFontNormal')
	barAlphaDesc:SetPoint('TOPLEFT', showCombat, 'BOTTOMLEFT', -10, -10)
	barAlphaDesc:SetText("Bar Alpha (Opacity): ")

	local barAlphaSlider = CreateFrame("Slider", configPanel:GetName() .. "BarAlphaSlider", configPanel, "OptionsSliderTemplate")
	barAlphaSlider:SetMinMaxValues(0.0, 1.0)
	barAlphaSlider:SetValueStep(0.01)
	barAlphaSlider:SetValue(TargetHealthPercent.GetConfigValue("barAlpha"))
	_G[barAlphaSlider:GetName() .. "High"]:SetText("1.0")
	_G[barAlphaSlider:GetName() .. "Low"]:SetText("0.0")
	barAlphaSlider:SetScript("OnValueChanged", TargetHealthPercentUI.BarAlphaSliderChanged)
	barAlphaSlider:SetPoint('TOPLEFT', barAlphaDesc, 'BOTTOMLEFT', 10, 0)

	local barScaleDesc = configPanel:CreateFontString(nil, 'ARTWORK', 'GameFontNormal')
	barScaleDesc:SetPoint('TOPLEFT', barAlphaSlider, 'BOTTOMLEFT', -10, -10)
	barScaleDesc:SetText("Bar Scale: ")

	local barScaleSlider = CreateFrame("Slider", configPanel:GetName() .. "barScaleSlider", configPanel, "OptionsSliderTemplate")
	barScaleSlider:SetMinMaxValues(.25, 3.0)
	barScaleSlider:SetValueStep(1.0)
	--barScaleSlider:SetValueStep(0.01)
	barScaleSlider:SetValue(TargetHealthPercent.GetConfigValue("barScale"))
	

	
	_G[barScaleSlider:GetName() .. "High"]:SetText("3.0")
	_G[barScaleSlider:GetName() .. "Low"]:SetText("0.25")
	barScaleSlider:SetScript("OnValueChanged", TargetHealthPercentUI.BarScaleSliderChanged)
	barScaleSlider:SetPoint('TOPLEFT', barScaleDesc, 'BOTTOMLEFT', 10, 0)
	
	local barDecDesc = configPanel:CreateFontString(nil, 'ARTWORK', 'GameFontNormal')
	barDecDesc:SetPoint('TOPLEFT', barScaleSlider, 'BOTTOMLEFT', -10, -10)
	barDecDesc:SetText("Number of places pass the decimal: ")

	local barDecSlider = CreateFrame("Slider", configPanel:GetName() .. "barDecSlider", configPanel, "OptionsSliderTemplate")
	barDecSlider:SetMinMaxValues(0, 3)
	barDecSlider:SetValueStep(1)
	barDecSlider:SetValue(TargetHealthPercent.GetConfigValue("barDec"))
	
	_G[barDecSlider:GetName() .. "High"]:SetText("3")
	_G[barDecSlider:GetName() .. "Low"]:SetText("0")
	barDecSlider:SetScript("OnValueChanged", TargetHealthPercentUI.BarDecSliderChanged)
	barDecSlider:SetPoint('TOPLEFT', barDecDesc, 'BOTTOMLEFT', 10, 0)
	
	local showColorDesc = configPanel:CreateFontString(nil, 'ARTWORK', 'GameFontNormal')
	showColorDesc:SetPoint('TOPLEFT', barDecSlider, 'BOTTOMLEFT', -10, -20)
	showColorDesc:SetText("Change the color of the bar when target gets below a set percent")

	local showColor35 = TargetHealthPercentUI.CreateCheckButton("Target below 35%", configPanel,"Change the color of the bar to orange when target gets below 35%", "showColor35", 'InterfaceOptionsCheckButtonTemplate')
	showColor35:SetPoint('TOPLEFT', showColorDesc, 'BOTTOMLEFT', 0, -5)
	
	local showColor25 = TargetHealthPercentUI.CreateCheckButton("Target below 25%", configPanel,"Change the color of the bar to red when target gets below 25%", "showColor25", 'InterfaceOptionsCheckButtonTemplate')
	showColor25:SetPoint('TOPLEFT', showColor35, 'BOTTOMLEFT', 0, -5)
	
	local showUse20 = TargetHealthPercentUI.CreateCheckButton("Target below 20%", configPanel,"Change the percent at with the bar turn to red, makes it more useful for 20% excute classes, *must have Target below 25% option unchecked to work", "showUse20", 'InterfaceOptionsCheckButtonTemplate')
	showUse20:SetPoint('TOPLEFT', showColor25, 'BOTTOMLEFT', 0, -5)
	
	local showUse80 = TargetHealthPercentUI.CreateCheckButton("Use Orange for 99-90% (Hunters)", configPanel,"Changes the back ground to green when targets HP is between 99-80, this is for Marksmanship hunters that use Careful Aim talent", "showUse80", 'InterfaceOptionsCheckButtonTemplate')
	showUse80:SetPoint('TOPLEFT', showColor25, 'BOTTOMLEFT', 150, 55)
	
	-- show HP
	local showHPDesc = configPanel:CreateFontString(nil, 'ARTWORK', 'GameFontNormal')
	showHPDesc:SetPoint('TOPLEFT', showUse20, 'BOTTOMLEFT', 0, -5)
	showHPDesc:SetText("Show Max HP")

	local showHP = TargetHealthPercentUI.CreateCheckButton("Show Max HP", configPanel,"show the max health the target has", "showHP", 'InterfaceOptionsCheckButtonTemplate')
	showHP:SetPoint('TOPLEFT', showHPDesc, 'BOTTOMLEFT', 0, -5)
	
	InterfaceOptions_AddCategory(configPanel)
end

function TargetHealthPercentUI.BarAlphaSliderChanged(self, value)
	TargetHealthPercent.SetConfigValue("barAlpha", value)
	thpBarBackground:SetTexture(0, 0, 0, value)
end

function TargetHealthPercentUI.BarScaleSliderChanged(self, value)
	TargetHealthPercent.SetConfigValue("barScale", value)
	TargetHealthPercentBar:SetScale(value)
end

function TargetHealthPercentUI.BarDecSliderChanged(self, value)
	TargetHealthPercent.SetConfigValue("barDec", value)
	
end

function TargetHealthPercentUI.CreateCheckButton(name, parent, tooltipText, configKey, template)
	local button = CreateFrame('CheckButton', parent:GetName() .. name, parent, template)
	_G[button:GetName() .. 'Text']:SetText(name)
	button:SetChecked(TargetHealthPercent.GetConfigValue(configKey))
	button:SetScript('OnClick', function(self)
		if self:GetChecked() then
			TargetHealthPercent.SetConfigValue(configKey, true)
		else 
			TargetHealthPercent.SetConfigValue(configKey, false)
		end
		if ( self.dependentControls ) then
			if ( self:GetChecked() ) then
				for _, control in pairs(self.dependentControls) do
					control:Enable()
				end
			else
				for _, control in pairs(self.dependentControls) do
					control:Disable()
				end
			end
		end
		if ( self.inverseDependentControls ) then
			if ( self:GetChecked() ) then
				for _, control in pairs(self.inverseDependentControls) do
					control:Disable()
				end
			else
				for _, control in pairs(self.inverseDependentControls) do
					control:Enable()
				end
			end
		end
		TargetHealthPercent.ShowOrHideBar()

	end)
	button:SetScript('OnEnter', function(self)
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		GameTooltip:SetText(tooltipText, nil, nil, nil, 1, 1)
		GameTooltip:Show() end)
	button:SetScript('OnLeave', function(self) GameTooltip:Hide() end)

	return button
end

function TargetHealthPercentUI.SetupDependentControl (dependency, control)
	if ( not dependency ) then
		return
	end
	
	assert(control)
	
	dependency.dependentControls = dependency.dependentControls or {}
	tinsert(dependency.dependentControls, control)

	if ( control.type ~= CONTROLTYPE_DROPDOWN ) then
		control.Disable = function (self) getmetatable(self).__index.Disable(self) _G[self:GetName().."Text"]:SetTextColor(GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b) end
		control.Enable = function (self) getmetatable(self).__index.Enable(self) _G[self:GetName().."Text"]:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b) end
		if dependency:GetChecked() then
			control:Enable()
		else
			control:Disable()
		end
	else
		control.Disable = function (self) UIDropDownMenu_DisableDropDown(self) end
		control.Enable = function (self) UIDropDownMenu_EnableDropDown(self) end
	end

end

function TargetHealthPercentUI.SetupInverseDependentControl (dependency, control)
	if ( not dependency ) then
		return
	end
	
	assert(control)
	
	dependency.inverseDependentControls = dependency.inverseDependentControls or {}
	tinsert(dependency.inverseDependentControls, control)

	if ( control.type ~= CONTROLTYPE_DROPDOWN ) then
		control.Disable = function (self) getmetatable(self).__index.Disable(self) _G[self:GetName().."Text"]:SetTextColor(GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b) end
		control.Enable = function (self) getmetatable(self).__index.Enable(self) _G[self:GetName().."Text"]:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b) end
		if dependency:GetChecked() then
			control:Disable()
		else
			control:Enable()
		end
	else
		control.Disable = function (self) UIDropDownMenu_DisableDropDown(self) end
		control.Enable = function (self) UIDropDownMenu_EnableDropDown(self) end
	end

end