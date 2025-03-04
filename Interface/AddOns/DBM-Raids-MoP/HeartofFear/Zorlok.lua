local mod	= DBM:NewMod(745, "DBM-Raids-MoP", 4, 330)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("20241103134004")
mod:SetCreatureID(62980)--63554 (Special invisible Vizier that casts the direction based spellid versions of attenuation)
mod:SetEncounterID(1507)
mod:SetZone(1009)

mod:RegisterCombat("combat")
mod:RegisterKill("yell", L.Defeat)

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 122852 122761 122740",
	"SPELL_AURA_APPLIED_DOSE 122852",
	"SPELL_AURA_REMOVED 122761 122740",
	"SPELL_CAST_START 122713 122474 122496 123721 122479 122497 123722 127834",
	"SPELL_CAST_SUCCESS 124018",
	"RAID_BOSS_EMOTE",
	"UNIT_SPELLCAST_SUCCEEDED boss1",
	"UNIT_DIED"
)

--[[WCL Reg expression
(ability.id = 123791 or ability.id = 122713) and type = "begincast" or (ability.name = "Inhale" or ability.name = "Exhale") and (type = "applydebuff" or type = "applystack?" or type = "removedebuff") or ability.id = 127834 or ability.name = "Convert" or ability.id = 124018
(ability.id = 123791 or ability.id = 122713 or ability.id = 122740 or ability.id = 127834) and type = "begincast" or ability.id = 124018
--]]
--Notes: Currently, his phase 2 chi blast abiliteis are not detectable via traditional combat log. maybe with transcriptor.
local warnInhale			= mod:NewStackAnnounce(122852, 2)
local warnConvert			= mod:NewTargetNoFilterAnnounce(122740, 4)
local warnEcho				= mod:NewAnnounce("warnEcho", 4, 127834)--Maybe come up with better icon later then just using attenuation icon
local warnEchoDown			= mod:NewAnnounce("warnEchoDown", 1, 127834)--Maybe come up with better icon later then just using attenuation icon

local specwarnPlatform		= mod:NewSpecialWarning("specwarnPlatform", nil, nil, nil, 1, 2)
local specwarnForce			= mod:NewSpecialWarningSpell(122713, nil, nil, nil, 1, 2)
--local specwarnConvert		= mod:NewSpecialWarningSwitch(122740, "-Healer")
local specwarnExhale		= mod:NewSpecialWarningTarget(122761, "Healer|Tank", nil, nil, 1, 2)
local specwarnAttenuation	= mod:NewSpecialWarning("specwarnAttenuation", nil, nil, nil, 3, 2)

--Timers aren't worth a crap, at all, but added anyways. if people complain about how inaccurate they are tell them to go to below thread.
--http://us.battle.net/wow/en/forum/topic/7004456927 for more info on lack of timers. (thread long deleted?)
local timerExhale			= mod:NewTargetTimer(6, 122761, nil, "Tank|Healer", nil, 5)
local timerForceCD			= mod:NewCDTimer(35, 122713, nil, nil, nil, 2)--35-50 second variation
local timerForceCast		= mod:NewCastTimer(4, 122713, nil, nil, nil, 5)
local timerForce			= mod:NewBuffActiveTimer(12.5, 122713, nil, nil, nil, 5)
local timerAttenuationCD	= mod:NewCDTimer(32.5, 127834, nil, nil, nil, 2)--32.5-41 second variations, when not triggered off exhale. It's ALWAYS 11 seconds after exhale.
local timerAttenuation		= mod:NewBuffActiveTimer(14, 127834, nil, nil, nil, 5)
local timerConvertCD		= mod:NewCDTimer(33, 122740, nil, nil, nil, 3)--33-50 second variations

local berserkTimer			= mod:NewBerserkTimer(660)

mod:AddSetIconOption("MindControlIcon", 122740, true, 0)--Unknown used icons
mod:AddBoolOption("ArrowOnAttenuation", true)

local MCTargets = {}
local MCIcon = 8
local platform = 0
local EchoAlive = false--Will be used for the very accurate phase 2 timers when an echo is left up on purpose. when convert is disabled the other 2 abilities trigger failsafes that make them predictable. it's the ONLY time phase 2 timers are possible. otherwise they are too variable to be useful
local lastDirection = "UNKNOWN"

local function showMCWarning()
	warnConvert:Show(table.concat(MCTargets, "<, >"))
	timerConvertCD:Start()
	table.wipe(MCTargets)
	MCIcon = 8
end

function mod:OnCombatStart(delay)
	lastDirection = "UNKNOWN"
	platform = 0
	EchoAlive = false
	table.wipe(MCTargets)
	if self:IsHeroic() then
		berserkTimer:Start(-delay)
	else
		berserkTimer:Start(600-delay)--still 10 min on normal. they only raised it to 11 minutes on heroic apparently.
	end
end

function mod:OnCombatEnd()
	if self.Options.ArrowOnAttenuation then
		DBM.Arrow:Hide()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 122852 and UnitName("target") == args.sourceName then--probalby won't work for healers but oh well. On heroic if i'm tanking echo i don't want this spam. I only care if i'm tanking zorlok. Healers won't miss this one anyways
		warnInhale:Show(args.destName, args.amount or 1)
	elseif spellId == 122761 then
		if self:CheckBossDistance(args.sourceGUID, true, 32698, 48) then--Only show exhale warning if the target is near you (ie on same platform as you). Otherwise, we ignore it since we are likely with the echo somewhere else and this doesn't concern us
			specwarnExhale:Show(args.destName)
			if self:IsTank() then
				specwarnExhale:Play("helpsoak")
			else
				specwarnExhale:Play("tankheal")
			end
			timerExhale:Start(args.destName)
		end
	elseif spellId == 122740 then
		MCTargets[#MCTargets + 1] = args.destName
		if self.Options.MindControlIcon then
			self:SetIcon(args.destName, MCIcon)
			MCIcon = MCIcon - 1
		end
		self:Unschedule(showMCWarning)
		self:Schedule(0.9, showMCWarning)
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	local spellId = args.spellId
	if spellId == 122761 then
		timerExhale:Cancel(args.destName)
	elseif spellId == 122740 then
		if self.Options.MindControlIcon then
			self:SetIcon(args.destName, 0)
		end
	end
end

function mod:SPELL_CAST_START(args)
	local spellId = args.spellId
	if spellId == 122713 then
		timerForce:Start()
	elseif args:IsSpellID(122474, 122496, 123721) then--All direction IDs are cast by an invisible version of Vizier.
		lastDirection = DBM_COMMON_L.LEFT
	elseif args:IsSpellID(122479, 122497, 123722) then--We monitor direction, but we need to announce off non invisible mob
		lastDirection = DBM_COMMON_L.RIGHT
	elseif spellId == 127834 then--This is only id that properly identifies CORRECT boss source
		--Example
		--http://worldoflogs.com/reports/rt-g8ncl718wga0jbuj/xe/?enc=bosses&boss=66791&x=%28spellid+%3D+127834+or+spellid+%3D+122496+or+spellid+%3D+122497%29+and+fulltype+%3D+SPELL_CAST_START
		local bossCID = args:GetSrcCreatureID()--Figure out CID because we need to know if it's main boss or echo casting it
		if self:CheckBossDistance(bossCID, true, 32698, 48) then--Now we know who is tanking that boss
			if self.Options.ArrowOnAttenuation then
				DBM.Arrow:ShowStatic(lastDirection == DBM_COMMON_L.LEFT and 90 or 270, 12)
			end
			specwarnAttenuation:Show(args.spellName, args.sourceName, lastDirection)
			if lastDirection == DBM_COMMON_L.LEFT then
				specwarnAttenuation:Play("moveleft")
			else
				specwarnAttenuation:Play("moveright")
			end
			timerAttenuation:Start()
		end
		if platform < 4 then
			timerAttenuationCD:Start()
		else
			if EchoAlive then--if echo isn't active don't do any timers
				if args:GetSrcCreatureID() == 65173 then--Echo
					timerAttenuationCD:Start(28, args.sourceGUID)--Because both echo and boss can use it in final phase and we want 2 bars
				else--Boss
					timerAttenuationCD:Start(54, args.sourceGUID)
				end
			end
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	local spellId = args.spellId
	if spellId == 124018 then
		platform = 4--He moved to middle, it's phase 2, although platform "4" is better then adding an extra variable.
		timerConvertCD:Cancel()
	end
end

function mod:RAID_BOSS_EMOTE(msg)
	if msg == L.Platform or msg:find(L.Platform) then
		platform = platform + 1
		if platform > 1 then--Don't show for first platform, it's pretty obvious
			specwarnPlatform:Show()
			specwarnPlatform:Play("phasechange")
		end
		timerForceCD:Cancel()
		timerAttenuationCD:Cancel()
		if platform == 1 then
			timerForceCD:Start(16)
		elseif platform == 2 then
			timerAttenuationCD:Start(23)
		elseif platform == 3 then
			timerConvertCD:Start(22.5)
		end
	end
end

--"<55.0 21:38:55> [CLEU] UNIT_DIED#true#0x0000000000000000#nil#-2147483648#-2147483648#0xF130FE9600003072#Echo of Force and Verve#68168#0", -- [10971]
function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 122933 then--Clear Throat (4 seconds before force and verve)
		specwarnForce:Show()
		specwarnForce:Play("findshield")
		timerForceCast:Start()
		if platform < 4 then
			timerForceCD:Start()
		else
			if EchoAlive then
				timerForceCD:Start(54)
			end
		end
	elseif (spellId == 127542 or spellId == 127541 or spellId == 130297) and not EchoAlive then--Echo of Zor'lok (127542 is platform 1 echo spawn, 127541 is platform 2 echo spawn, 130297 is phase 2 echos)
		EchoAlive = true
		warnEcho:Show()
		if platform == 1 then--Boss flew off from first platform to 2nd, and this means the echo that spawned is an Echo of Force and Verve
--			timerForceCD:Start()
		elseif platform == 2 then--Boss flew to 3rd platform and left an Echo of Attenuation behind on 2nd.
--			timerAttenuationCD:Start()
		end
	end
end

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 68168 then--Echo of Force and Verve
		EchoAlive = false
		warnEchoDown:Show()
		timerForceCD:Cancel()
	elseif cid == 65173 then--Echo of Attenuation
		EchoAlive = false
		warnEchoDown:Show()
		timerAttenuationCD:Cancel()--Always cancel this
		if platform == 4 then
			--No echo left up in final phase, cancel all timers because they are going to go back to clusterfuck random (as in may weave convert in but may not, and delay other abilities by as much as 30-50 seconds)
			timerForceCD:Cancel()
		end
	end
end
