
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Kalzulkoh - Wyrmrest Accord"] = "Default",
		["Zartbertu - Wyrmrest Accord"] = "Default",
		["Huufar - Wyrmrest Accord"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["runOnce"] = {
				["forceReloadAllDefaultPriorities_20220228"] = true,
				["forceReloadClassDefaultOptions_20220306_73"] = true,
				["forceReloadClassDefaultOptions_20220306_103"] = true,
				["forceReloadClassDefaultOptions_20220306_105"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225"] = true,
				["updateMaxRefreshToNewSpecOptions_20220222"] = true,
				["forceReloadClassDefaultOptions_20220306_71"] = true,
				["forceSpellFlashBrightness_20221030"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
				["forceReloadClassDefaultOptions_20220306_577"] = true,
				["forceReloadClassDefaultOptions_20220306_581"] = true,
				["forceEnableEnhancedRecheckBoomkin_20210712"] = true,
				["forceReloadClassDefaultOptions_20220306_104"] = true,
				["forceReloadClassDefaultOptions_20220306_72"] = true,
				["forceReloadClassDefaultOptions_20220306_102"] = true,
			},
			["iconStore"] = {
				["minimapPos"] = 247.5741750281506,
			},
			["specs"] = {
				[73] = {
					["settings"] = {
						["shield_wall_amount"] = 50,
						["rallying_cry_amount"] = 50,
						["overlap_ignore_pain"] = false,
						["last_stand_condition"] = false,
						["shockwave_interrupt"] = true,
						["shield_wall_health"] = 50,
						["rallying_cry_condition"] = false,
						["last_stand_offensively"] = false,
						["stack_shield_block"] = false,
						["stance_weaving"] = false,
						["shield_wall_condition"] = false,
						["last_stand_amount"] = 50,
						["last_stand_health"] = 50,
						["rallying_cry_health"] = 50,
						["reserve_rage"] = 35,
					},
				},
				[104] = {
					["settings"] = {
						["vigil_damage"] = 50,
						["catweave_bear"] = false,
						["maul_anyway"] = true,
						["ironfur_damage_threshold"] = 5,
						["maul_rage"] = 20,
					},
				},
				[577] = {
					["settings"] = {
						["retreat_and_return"] = "off",
						["retreat_filler"] = false,
						["fel_rush_filler"] = true,
						["demon_blades_acknowledged"] = false,
					},
				},
				[581] = {
					["settings"] = {
						["infernal_charges"] = 1,
						["frailty_stacks"] = 1,
					},
				},
				[102] = {
					["settings"] = {
						["vigil_damage"] = 50,
						["delay_berserking"] = false,
						["starlord_cancel"] = false,
					},
				},
				[71] = {
					["settings"] = {
						["shockwave_interrupt"] = true,
						["heroic_charge"] = false,
					},
				},
				[103] = {
					["settings"] = {
						["rip_duration"] = 9,
						["use_funnel"] = false,
						["vigil_damage"] = 50,
					},
				},
				[72] = {
					["settings"] = {
						["check_ww_range"] = false,
						["shockwave_interrupt"] = true,
						["heroic_charge"] = false,
					},
					["package"] = "Fury",
				},
			},
			["packs"] = {
				["Vengeance"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230209,
					["spec"] = 581,
					["desc"] = "",
					["profile"] = "actions.precombat+=/variable,name=spirit_bomb_soul_fragments_not_in_meta,op=setif,value=4,value_else=5,condition=talent.fracture\nactions.precombat+=/variable,name=spirit_bomb_soul_fragments_in_meta,op=setif,value=3,value_else=4,condition=talent.fracture\n## actions.precombat+=/variable,name=vulnerability_frailty_stack,op=setif,value=1,value_else=0,condition=talent.vulnerability\n## actions.precombat+=/variable,name=cooldown_frailty_requirement_st,op=setif,value=6*variable.vulnerability_frailty_stack,value_else=variable.vulnerability_frailty_stack,condition=talent.soulcrush\n## actions.precombat+=/variable,name=cooldown_frailty_requirement_aoe,op=setif,value=5*variable.vulnerability_frailty_stack,value_else=variable.vulnerability_frailty_stack,condition=talent.soulcrush\nactions.precombat+=/sigil_of_flame\nactions.precombat+=/immolation_aura,if=active_enemies=1||!talent.fallout\n\nactions+=/disrupt\nactions+=/consume_magic\nactions+=/infernal_strike,use_off_gcd=1,if=charges=max_charges&target.distance>10\nactions+=/demon_spikes,use_off_gcd=1,if=!buff.demon_spikes.up&tanking\nactions+=/metamorphosis\nactions+=/fel_devastation,if=!talent.fiery_demise.enabled\nactions+=/fiery_brand,if=!talent.fiery_demise.enabled&!dot.fiery_brand.ticking\nactions+=/bulk_extraction\nactions+=/potion\nactions+=/use_item,slot=trinket1\nactions+=/use_item,slot=trinket2\nactions+=/variable,name=the_hunt_on_cooldown,value=talent.the_hunt&cooldown.the_hunt.remains||!talent.the_hunt\nactions+=/variable,name=elysian_decree_on_cooldown,value=talent.elysian_decree&cooldown.elysian_decree.remains||!talent.elysian_decree\nactions+=/variable,name=soul_carver_on_cooldown,value=talent.soul_carver&cooldown.soul_carver.remains||!talent.soul_carver\nactions+=/variable,name=fel_devastation_on_cooldown,value=talent.fel_devastation&cooldown.fel_devastation.remains||!talent.fel_devastation\nactions+=/variable,name=fiery_demise_fiery_brand_is_ticking_on_current_target,value=talent.fiery_brand&talent.fiery_demise&dot.fiery_brand.ticking\nactions+=/variable,name=fiery_demise_fiery_brand_is_not_ticking_on_current_target,value=talent.fiery_brand&((talent.fiery_demise&!dot.fiery_brand.ticking)||!talent.fiery_demise)\nactions+=/variable,name=fiery_demise_fiery_brand_is_ticking_on_any_target,value=talent.fiery_brand&talent.fiery_demise&active_dot.fiery_brand_dot>0\nactions+=/variable,name=fiery_demise_fiery_brand_is_not_ticking_on_any_target,value=talent.fiery_brand&((talent.fiery_demise&active_dot.fiery_brand_dot=0)||!talent.fiery_demise)\nactions+=/variable,name=spirit_bomb_soul_fragments,op=setif,value=variable.spirit_bomb_soul_fragments_in_meta,value_else=variable.spirit_bomb_soul_fragments_not_in_meta,condition=buff.metamorphosis.up\n## actions+=/variable,name=cooldown_frailty_requirement,op=setif,value=variable.cooldown_frailty_requirement_aoe,value_else=variable.cooldown_frailty_requirement_st,condition=talent.spirit_bomb&(spell_targets.spirit_bomb>1||variable.fiery_demise_fiery_brand_is_ticking_on_any_target)\nactions+=/the_hunt,if=variable.fiery_demise_fiery_brand_is_not_ticking_on_current_target&frailty_threshold_met\nactions+=/elysian_decree,if=variable.fiery_demise_fiery_brand_is_not_ticking_on_current_target&frailty_threshold_met\nactions+=/soul_carver,if=!talent.fiery_demise&soul_fragments<=3&frailty_threshold_met\nactions+=/soul_carver,if=variable.fiery_demise_fiery_brand_is_ticking_on_current_target&soul_fragments<=3&frailty_threshold_met\nactions+=/fel_devastation,if=variable.fiery_demise_fiery_brand_is_ticking_on_current_target&dot.fiery_brand.remains<3\nactions+=/fiery_brand,if=variable.fiery_demise_fiery_brand_is_not_ticking_on_any_target&variable.the_hunt_on_cooldown&variable.elysian_decree_on_cooldown&((talent.soul_carver&(cooldown.soul_carver.up||cooldown.soul_carver.remains<10))||(talent.fel_devastation&(cooldown.fel_devastation.up||cooldown.fel_devastation.remains<10)))\nactions+=/immolation_aura,if=talent.fiery_demise&variable.fiery_demise_fiery_brand_is_ticking_on_any_target\nactions+=/sigil_of_flame,if=talent.fiery_demise&variable.fiery_demise_fiery_brand_is_ticking_on_any_target\nactions+=/spirit_bomb,if=soul_fragments>=variable.spirit_bomb_soul_fragments&(spell_targets>1||variable.fiery_demise_fiery_brand_is_ticking_on_any_target)\nactions+=/soul_cleave,if=(soul_fragments<=1&spell_targets>1)||spell_targets=1\nactions+=/sigil_of_flame\nactions+=/immolation_aura\nactions+=/fracture\nactions+=/shear\nactions+=/throw_glaive\nactions+=/felblade",
					["version"] = 20230209,
					["warnings"] = "The import for 'default' required some automated changes.\nLine 12: Converted 'talent.the_hunt' to 'talent.the_hunt.enabled' (1x).\nLine 12: Converted 'talent.the_hunt' to 'talent.the_hunt.enabled' (1x).\nLine 13: Converted 'talent.elysian_decree' to 'talent.elysian_decree.enabled' (1x).\nLine 13: Converted 'talent.elysian_decree' to 'talent.elysian_decree.enabled' (1x).\nLine 14: Converted 'talent.soul_carver' to 'talent.soul_carver.enabled' (1x).\nLine 14: Converted 'talent.soul_carver' to 'talent.soul_carver.enabled' (1x).\nLine 15: Converted 'talent.fel_devastation' to 'talent.fel_devastation.enabled' (1x).\nLine 15: Converted 'talent.fel_devastation' to 'talent.fel_devastation.enabled' (1x).\nLine 16: Converted 'talent.fiery_brand' to 'talent.fiery_brand.enabled' (1x).\nLine 16: Converted 'talent.fiery_demise' to 'talent.fiery_demise.enabled' (1x).\nLine 17: Converted 'talent.fiery_brand' to 'talent.fiery_brand.enabled' (1x).\nLine 17: Converted 'talent.fiery_demise' to 'talent.fiery_demise.enabled' (1x).\nLine 17: Converted 'talent.fiery_demise' to 'talent.fiery_demise.enabled' (1x).\nLine 18: Converted 'talent.fiery_brand' to 'talent.fiery_brand.enabled' (1x).\nLine 18: Converted 'talent.fiery_demise' to 'talent.fiery_demise.enabled' (1x).\nLine 19: Converted 'talent.fiery_brand' to 'talent.fiery_brand.enabled' (1x).\nLine 19: Converted 'talent.fiery_demise' to 'talent.fiery_demise.enabled' (1x).\nLine 19: Converted 'talent.fiery_demise' to 'talent.fiery_demise.enabled' (1x).\nLine 23: Converted 'talent.fiery_demise' to 'talent.fiery_demise.enabled' (1x).\nLine 26: Converted 'talent.soul_carver' to 'talent.soul_carver.enabled' (1x).\nLine 26: Converted 'talent.fel_devastation' to 'talent.fel_devastation.enabled' (1x).\nLine 27: Converted 'talent.fiery_demise' to 'talent.fiery_demise.enabled' (1x).\nLine 28: Converted 'talent.fiery_demise' to 'talent.fiery_demise.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 1: Converted 'talent.fracture' to 'talent.fracture.enabled' (1x).\nLine 2: Converted 'talent.fracture' to 'talent.fracture.enabled' (1x).\nLine 4: Converted 'talent.fallout' to 'talent.fallout.enabled' (1x).\n\nImported 2 action lists.\n",
					["lists"] = {
						["default"] = {
							{
								["action"] = "disrupt",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "consume_magic",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "charges = max_charges & target.distance > 10",
								["action"] = "infernal_strike",
							}, -- [3]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "! buff.demon_spikes.up & tanking",
								["action"] = "demon_spikes",
							}, -- [4]
							{
								["action"] = "metamorphosis",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! talent.fiery_demise.enabled",
								["action"] = "fel_devastation",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! talent.fiery_demise.enabled & ! dot.fiery_brand.ticking",
								["action"] = "fiery_brand",
							}, -- [7]
							{
								["action"] = "bulk_extraction",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [11]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.the_hunt.enabled & cooldown.the_hunt.remains || ! talent.the_hunt.enabled",
								["var_name"] = "the_hunt_on_cooldown",
							}, -- [12]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.elysian_decree.enabled & cooldown.elysian_decree.remains || ! talent.elysian_decree.enabled",
								["var_name"] = "elysian_decree_on_cooldown",
							}, -- [13]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.soul_carver.enabled & cooldown.soul_carver.remains || ! talent.soul_carver.enabled",
								["var_name"] = "soul_carver_on_cooldown",
							}, -- [14]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.fel_devastation.enabled & cooldown.fel_devastation.remains || ! talent.fel_devastation.enabled",
								["var_name"] = "fel_devastation_on_cooldown",
							}, -- [15]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.fiery_brand.enabled & talent.fiery_demise.enabled & dot.fiery_brand.ticking",
								["var_name"] = "fiery_demise_fiery_brand_is_ticking_on_current_target",
							}, -- [16]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.fiery_brand.enabled & ( ( talent.fiery_demise.enabled & ! dot.fiery_brand.ticking ) || ! talent.fiery_demise.enabled )",
								["var_name"] = "fiery_demise_fiery_brand_is_not_ticking_on_current_target",
							}, -- [17]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.fiery_brand.enabled & talent.fiery_demise.enabled & active_dot.fiery_brand_dot > 0",
								["var_name"] = "fiery_demise_fiery_brand_is_ticking_on_any_target",
							}, -- [18]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.fiery_brand.enabled & ( ( talent.fiery_demise.enabled & active_dot.fiery_brand_dot = 0 ) || ! talent.fiery_demise.enabled )",
								["var_name"] = "fiery_demise_fiery_brand_is_not_ticking_on_any_target",
							}, -- [19]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "spirit_bomb_soul_fragments",
								["value"] = "variable.spirit_bomb_soul_fragments_in_meta",
								["value_else"] = "variable.spirit_bomb_soul_fragments_not_in_meta",
								["criteria"] = "buff.metamorphosis.up",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "variable.fiery_demise_fiery_brand_is_not_ticking_on_current_target & frailty_threshold_met",
								["action"] = "the_hunt",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "variable.fiery_demise_fiery_brand_is_not_ticking_on_current_target & frailty_threshold_met",
								["action"] = "elysian_decree",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "! talent.fiery_demise.enabled & soul_fragments <= 3 & frailty_threshold_met",
								["action"] = "soul_carver",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "variable.fiery_demise_fiery_brand_is_ticking_on_current_target & soul_fragments <= 3 & frailty_threshold_met",
								["action"] = "soul_carver",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "variable.fiery_demise_fiery_brand_is_ticking_on_current_target & dot.fiery_brand.remains < 3",
								["action"] = "fel_devastation",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "variable.fiery_demise_fiery_brand_is_not_ticking_on_any_target & variable.the_hunt_on_cooldown & variable.elysian_decree_on_cooldown & ( ( talent.soul_carver.enabled & ( cooldown.soul_carver.up || cooldown.soul_carver.remains < 10 ) ) || ( talent.fel_devastation.enabled & ( cooldown.fel_devastation.up || cooldown.fel_devastation.remains < 10 ) ) )",
								["action"] = "fiery_brand",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "talent.fiery_demise.enabled & variable.fiery_demise_fiery_brand_is_ticking_on_any_target",
								["action"] = "immolation_aura",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "talent.fiery_demise.enabled & variable.fiery_demise_fiery_brand_is_ticking_on_any_target",
								["action"] = "sigil_of_flame",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "soul_fragments >= variable.spirit_bomb_soul_fragments & ( spell_targets > 1 || variable.fiery_demise_fiery_brand_is_ticking_on_any_target )",
								["action"] = "spirit_bomb",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "( soul_fragments <= 1 & spell_targets > 1 ) || spell_targets = 1",
								["action"] = "soul_cleave",
							}, -- [30]
							{
								["action"] = "sigil_of_flame",
								["enabled"] = true,
							}, -- [31]
							{
								["action"] = "immolation_aura",
								["enabled"] = true,
							}, -- [32]
							{
								["action"] = "fracture",
								["enabled"] = true,
							}, -- [33]
							{
								["action"] = "shear",
								["enabled"] = true,
							}, -- [34]
							{
								["action"] = "throw_glaive",
								["enabled"] = true,
							}, -- [35]
							{
								["action"] = "felblade",
								["enabled"] = true,
							}, -- [36]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "spirit_bomb_soul_fragments_not_in_meta",
								["value"] = "4",
								["value_else"] = "5",
								["criteria"] = "talent.fracture.enabled",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "spirit_bomb_soul_fragments_in_meta",
								["value"] = "3",
								["value_else"] = "4",
								["criteria"] = "talent.fracture.enabled",
							}, -- [2]
							{
								["action"] = "sigil_of_flame",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 || ! talent.fallout.enabled",
								["action"] = "immolation_aura",
							}, -- [4]
						},
					},
					["author"] = "SimC",
				},
				["Feral"] = {
					["builtIn"] = true,
					["date"] = 20230525,
					["author"] = "SimC",
					["desc"] = "2023-05-25:  Update priority to use Rip Duration and Ferocious Bite funnel settings.\n\n2023-05-20:  Tweak 'wait' entry for passive Combo Point generation.\n\n2023-05-15:  Combo Points can increase over time during Berserk.\n\n2023-05-14:  Make Heart of the Wild annoy me less.\n\n2023-05-11:  Minor updates to finisher and cooldown usage.\n\n2023-05-08:  Incremental updates from SimC.\n\n2023-05-06:  Minor updates.\n\n2023-05-03:  Restore missing aoe_builder action list.\n\n2023-05-03:  Update again from SimC.\n\n2023-03-27:  Test updates from SimC.\n\n2023-02-27:  Adjust funneling to use PW if there are multiple un-Ripped targets.\n\n2023-02-25:  Testing a funnel option (spend CP on Ferocious Bite instead of Primal Wrath if Rip won't fall off).\n\n2023-02-21:  Adjusted Berserk logic to prevent freezing/errors.\n\n2023-02-15:  Priority will use finishers at 4+ Combo Points when Lion's Strength is talented, consistent with latest SimulationCraft updates.",
					["lists"] = {
						["aoe_builder"] = {
							{
								["enabled"] = true,
								["action"] = "brutal_slash",
								["cycle_targets"] = 1,
								["criteria"] = "cooldown.brutal_slash.full_recharge_time < 4 || target.time_to_die < 5",
								["description"] = "avoid capping brs charges, and in the event of adds, offload charges within reason",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ( buff.clearcasting.react || ( spell_targets.thrash_cat > 10 || ( spell_targets.thrash_cat > 5 & ! talent.double_clawed_rake.enabled ) ) & ! talent.thrashing_claws.enabled )",
								["action"] = "thrash_cat",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "action.rake.ready & ! buff.sudden_ambush.up & ( dot.rake.refreshable || dot.rake.pmultiplier < 1.4 ) & ! buff.prowl.up & ! buff.apex_predators_craving.up",
								["action"] = "shadowmeld",
							}, -- [3]
							{
								["enabled"] = true,
								["description"] = "this line checks if theres an upgradeable rake",
								["criteria"] = "action.rake.ready & ! buff.sudden_ambush.up & dot.rake.pmultiplier < 1.4 & ! buff.prowl.up & ! buff.apex_predators_craving.up",
								["action"] = "shadowmeld",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "rake",
								["cycle_targets"] = 1,
								["criteria"] = "buff.sudden_ambush.up & persistent_multiplier > dot.rake.pmultiplier",
								["description"] = "not a perfect solution, but it checks lowest dot for pandemic/stealth snapshot first",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "rake",
								["cycle_targets"] = 1,
								["criteria"] = "buff.sudden_ambush.up & persistent_multiplier > dot.rake.pmultiplier || refreshable",
								["description"] = "and if lowest dot is fine, it checks the remaining dots and targets a mob without stealth snapshot (not necessarily 2nd lowest)",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "thrash_cat",
							}, -- [7]
							{
								["action"] = "brutal_slash",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "lunar_inspiration",
								["criteria"] = "refreshable & spell_targets.swipe_cat < 5",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["action"] = "swipe_cat",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "lunar_inspiration",
								["criteria"] = "refreshable",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "shred",
								["cycle_targets"] = 1,
								["criteria"] = "action.shred.damage > action.thrash_cat.damage & ! buff.sudden_ambush.up",
								["description"] = "if we have brs and nothing better to cast, check if thrash DD beats shred (or if SA is up)",
							}, -- [12]
							{
								["action"] = "thrash_cat",
								["enabled"] = true,
							}, -- [13]
						},
						["finisher"] = {
							{
								["enabled"] = true,
								["criteria"] = "( ! funneling & ( dot.primal_wrath.refreshable & ! talent.circle_of_life_and_death.enabled ) || dot.primal_wrath.remains < 6 || talent.tear_open_wounds.enabled ) & spell_targets.primal_wrath > 1 & talent.primal_wrath.enabled",
								["action"] = "primal_wrath",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "rip",
								["criteria"] = "refreshable & target.time_to_die > settings.rip_duration",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! action.tigers_fury.ready & buff.apex_predators_craving.down",
								["for_next"] = 1,
								["action"] = "pool_resource",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["cycle_targets"] = 1,
								["criteria"] = "buff.apex_predators_craving.down & ( ! buff.bs_inc.up || ( buff.bs_inc.up & ! talent.soul_of_the_forest.enabled ) )",
								["max_energy"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["criteria"] = "( buff.bs_inc.up & talent.soul_of_the_forest.enabled ) || buff.apex_predators_craving.up",
								["cycle_targets"] = 1,
							}, -- [5]
						},
						["clearcasting"] = {
							{
								["enabled"] = true,
								["criteria"] = "refreshable & ! talent.thrashing_claws.enabled",
								["action"] = "thrash_cat",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.swipe_cat > 1",
								["action"] = "swipe_cat",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.brutal_slash > 2",
								["action"] = "brutal_slash",
							}, -- [3]
							{
								["action"] = "shred",
								["enabled"] = true,
							}, -- [4]
						},
						["builder"] = {
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "buff.clearcasting.react",
								["list_name"] = "clearcasting",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.brutal_slash.full_recharge_time < 4",
								["action"] = "brutal_slash",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "action.rake.ready & ! buff.sudden_ambush.up & ( dot.rake.refreshable || dot.rake.pmultiplier < 1.4 ) & ! buff.prowl.up & ! buff.apex_predators_craving.up",
								["action"] = "shadowmeld",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "refreshable || ( buff.sudden_ambush.up & persistent_multiplier > dot.rake.pmultiplier & dot.rake.remains > 6 )",
								["action"] = "rake",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "lunar_inspiration",
								["criteria"] = "refreshable",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "thrash_cat",
								["criteria"] = "refreshable & ! talent.thrashing_claws.enabled",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["action"] = "brutal_slash",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.swipe_cat > 1 || talent.wild_slashes.enabled",
								["action"] = "swipe_cat",
							}, -- [8]
							{
								["action"] = "shred",
								["enabled"] = true,
							}, -- [9]
						},
						["berserk"] = {
							{
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["criteria"] = "combo_points = 5 & dot.rip.remains > 8 & variable.zerk_biteweave & spell_targets.swipe_cat > 1",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "proc bt if 0/1 stack if 5/6 combo points",
								["criteria"] = "combo_points = 5 & ! ( buff.overflowing_power.stack <= 1 & active_bt_triggers = 2 & buff.bloodtalons.stack <= 1 )",
								["list_name"] = "finisher",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "its currently a gain to just contiuously try to proc bt in aoe",
								["strict"] = 1,
								["criteria"] = "spell_targets.swipe_cat > 1",
								["list_name"] = "bloodtalons",
							}, -- [3]
							{
								["enabled"] = true,
								["description"] = "go into stealth to buff rake snapshot-- feral frenzy line is to eliminate an edge case involving ff being casted instead due to higher prio",
								["criteria"] = "! ( buff.bt_rake.up & active_bt_triggers = 2 ) & ( action.rake.ready & gcd.remains = 0 & ! buff.sudden_ambush.up & ( dot.rake.refreshable || dot.rake.pmultiplier < 1.4 ) & ! buff.shadowmeld.up & cooldown.feral_frenzy.remains < 44 & ! buff.apex_predators_craving.up )",
								["action"] = "prowl",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! ( buff.bt_rake.up & active_bt_triggers = 2 ) & action.rake.ready & ! buff.sudden_ambush.up & ( dot.rake.refreshable || dot.rake.pmultiplier < 1.4 ) & ! buff.prowl.up & ! buff.apex_predators_craving.up",
								["action"] = "shadowmeld",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! ( buff.bt_rake.up & active_bt_triggers = 2 ) & ( refreshable || ( buff.sudden_ambush.up & persistent_multiplier > dot.rake.pmultiplier & ! dot.rake.refreshable ) )",
								["action"] = "rake",
							}, -- [6]
							{
								["enabled"] = true,
								["description"] = "in single target, you just proc bt when an opportunity arises",
								["criteria"] = "active_bt_triggers = 2 & buff.bt_shred.down",
								["action"] = "shred",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_bt_triggers = 2 & buff.bt_brutal_slash.down",
								["action"] = "brutal_slash",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_bt_triggers = 2 & buff.bt_moonfire.down",
								["action"] = "lunar_inspiration",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_bt_triggers = 2 & buff.bt_thrash.down & ! talent.thrashing_claws.enabled & variable.need_bt & ( refreshable || talent.brutal_slash.enabled )",
								["action"] = "thrash_cat",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "refreshable",
								["action"] = "lunar_inspiration",
							}, -- [11]
							{
								["enabled"] = true,
								["description"] = "don't overcap brs charges, but keep it available for bt",
								["criteria"] = "cooldown.brutal_slash.charges > 1",
								["action"] = "brutal_slash",
							}, -- [12]
							{
								["action"] = "shred",
								["enabled"] = true,
							}, -- [13]
						},
						["owlweaving"] = {
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["line_cd"] = "4*gcd",
							}, -- [1]
						},
						["default"] = {
							{
								["action"] = "skull_bash",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "soothe",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.bs_inc.down & ! buff.prowl.up",
								["action"] = "prowl",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up",
								["action"] = "cat_form",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.bloodtalons.enabled & buff.bloodtalons.stack < 2",
								["var_name"] = "need_bt",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.swipe_cat = 1",
								["var_name"] = "align_3minutes",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "fight_remains > cooldown.convoke_the_spirits.remains + 3 & ( ( talent.ashamanes_guidance.enabled & fight_remains < ( cooldown.convoke_the_spirits.remains + 60 ) ) || ( ! talent.ashamanes_guidance.enabled & fight_remains < ( cooldown.convoke_the_spirits.remains + 120 ) ) )",
								["var_name"] = "lastconvoke",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "fight_remains > ( 30 + ( cooldown.bs_inc.remains / 1.6 ) ) & ( ( talent.berserk_heart_of_the_lion.enabled & fight_remains < ( 90 + ( cooldown.bs_inc.remains / 1.6 ) ) ) || ( ! talent.berserk_heart_of_the_lion.enabled & fight_remains < ( 180 + cooldown.bs_inc.remains ) ) )",
								["var_name"] = "lastzerk",
							}, -- [8]
							{
								["var_name"] = "zerk_biteweave",
								["op"] = "reset",
								["action"] = "variable",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! talent.convoke_the_spirits.enabled & ( ! buff.tigers_fury.up || energy.deficit > 65 )",
								["action"] = "tigers_fury",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.convoke_the_spirits.enabled & ( ! variable.lastconvoke || ( variable.lastconvoke & ! buff.tigers_fury.up ) )",
								["action"] = "tigers_fury",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "rake",
								["criteria"] = "1.4 * persistent_multiplier > dot.rake.pmultiplier & ( buff.prowl.up || buff.shadowmeld.up )",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["action"] = "natures_vigil",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "adaptive_swarm",
								["criteria"] = "( ( ! dot.adaptive_swarm_damage.ticking || dot.adaptive_swarm_damage.remains < 2 ) & ( dot.adaptive_swarm_damage.stack < 3 || ! dot.adaptive_swarm_heal.stack > 1 ) & ! action.adaptive_swarm_heal.in_flight & ! action.adaptive_swarm_damage.in_flight & ! action.adaptive_swarm.in_flight ) & target.time_to_die > 5 || active_enemies > 2 & ! dot.adaptive_swarm_damage.ticking & energy < 35 & target.time_to_die > 5 & ! ( variable.need_bt & active_bt_triggers = 2 )",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cooldown",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "feral_frenzy",
								["criteria"] = "combo_points < 2 || combo_points < 3 & buff.bs_inc.up",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "ferocious_bite",
								["criteria"] = "buff.apex_predators_craving.up & ( spell_targets.swipe_cat = 1 || ! talent.primal_wrath.enabled || ! buff.sabertooth.up ) & ! ( variable.need_bt & active_bt_triggers = 2 )",
								["cycle_targets"] = 1,
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "buff.bs_inc.remains > gcd.remains",
								["list_name"] = "berserk",
							}, -- [18]
							{
								["enabled"] = true,
								["sec"] = "combo_points.time_to_max",
								["action"] = "wait",
								["criteria"] = "combo_points = 4 & buff.predator_revealed.react & energy.deficit > 40 & spell_targets.swipe_cat = 1 & combo_points.time_to_max < gcd.max",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["description"] = "its acceptable to proc bt when at 4cps in single target for a small gain (0.1-0.2% with t30 4p)",
								["criteria"] = "combo_points = 5 || combo_points = 4 & ! ( buff.bloodtalons.stack <= 1 & active_bt_triggers = 2 & spell_targets.swipe_cat = 1 )",
								["list_name"] = "finisher",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "variable.need_bt & ! buff.bs_inc.up & combo_points < 5",
								["action"] = "call_action_list",
								["list_name"] = "bloodtalons",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "spell_targets.swipe_cat > 1 & talent.primal_wrath.enabled",
								["list_name"] = "aoe_builder",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "combo_points < 5 & ! buff.bs_inc.up",
								["action"] = "call_action_list",
								["list_name"] = "builder",
							}, -- [23]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.prowl.down",
								["action"] = "mark_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["name"] = "algethar_puzzle_box",
								["action"] = "algethar_puzzle_box",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.any_form.up & buff.cat_form.down",
								["action"] = "heart_of_the_wild",
							}, -- [3]
							{
								["action"] = "prowl",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "cat_form",
								["enabled"] = true,
							}, -- [5]
						},
						["bloodtalons"] = {
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.brutal_slash.full_recharge_time < 4 || target.time_to_die < 5 ) & ( buff.bt_brutal_slash.down & ( buff.bs_inc.up || variable.need_bt ) )",
								["action"] = "brutal_slash",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "action.rake.ready & gcd.remains = 0 & ! buff.sudden_ambush.up & ( dot.rake.refreshable || dot.rake.pmultiplier < 1.4 ) & ! buff.shadowmeld.up & buff.bt_rake.down & ! buff.prowl.up & ! buff.apex_predators_craving.up",
								["action"] = "prowl",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "action.rake.ready & ! buff.sudden_ambush.up & ( dot.rake.refreshable || dot.rake.pmultiplier < 1.4 ) & ! buff.prowl.up & buff.bt_rake.down & cooldown.feral_frenzy.remains < 44 & ! buff.apex_predators_craving.up",
								["action"] = "shadowmeld",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "rake",
								["criteria"] = "( refreshable || buff.sudden_ambush.up & persistent_multiplier > dot.rake.pmultiplier ) & buff.bt_rake.down",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "rake",
								["criteria"] = "buff.sudden_ambush.up & persistent_multiplier > dot.rake.pmultiplier & buff.bt_rake.down",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_shred.down & buff.clearcasting.react & spell_targets.swipe_cat = 1",
								["action"] = "shred",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "thrash_cat",
								["criteria"] = "refreshable & buff.bt_thrash.down & buff.clearcasting.react & spell_targets.swipe_cat = 1 & ! talent.thrashing_claws.enabled",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_brutal_slash.down",
								["action"] = "brutal_slash",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & buff.bt_moonfire.down & spell_targets.swipe_cat = 1",
								["action"] = "lunar_inspiration",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "thrash_cat",
								["criteria"] = "refreshable & buff.bt_thrash.down & ! talent.thrashing_claws.enabled",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_shred.down & spell_targets.swipe_cat = 1 & ! talent.wild_slashes.enabled",
								["action"] = "shred",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_swipe.down & talent.wild_slashes.enabled",
								["action"] = "swipe_cat",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "lunar_inspiration",
								["cycle_targets"] = 1,
								["max_cycle_targets"] = "3",
								["criteria"] = "buff.bt_moonfire.down & spell_targets.swipe_cat < 5",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_swipe.down",
								["action"] = "swipe_cat",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "lunar_inspiration",
								["criteria"] = "buff.bt_moonfire.down",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "shred",
								["cycle_targets"] = 1,
								["criteria"] = "action.shred.damage > action.thrash_cat.damage & buff.bt_shred.down & ! buff.sudden_ambush.up",
								["description"] = "If we have BrS and nothing better to cast, check if shred beats thrash DD (or if SA is up)",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.bt_thrash.down",
								["action"] = "thrash_cat",
							}, -- [17]
						},
						["cooldown"] = {
							{
								["enabled"] = true,
								["criteria"] = "boss & fight_remains < 35 || ( ! variable.align_3minutes )",
								["name"] = "algethar_puzzle_box",
								["action"] = "algethar_puzzle_box",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.align_3minutes & ( cooldown.bs_inc.remains < 3 & ( ! variable.lastzerk || ! variable.lastconvoke || ( variable.lastconvoke & cooldown.convoke_the_spirits.remains < 13 ) ) )",
								["name"] = "algethar_puzzle_box",
								["action"] = "algethar_puzzle_box",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "boss || fight_remains > 25",
								["action"] = "incarnation",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "fight_remains > 18 || boss & ( ! variable.lastzerk || fight_remains < 23 || variable.lastzerk & ! variable.lastconvoke || variable.lastconvoke & cooldown.convoke_the_spirits.remains < 10 )",
								["action"] = "berserk",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! variable.align_3minutes || buff.bs_inc.up",
								["action"] = "berserking",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.bs_inc.up || boss & fight_remains < 32 || ( boss & fight_remains < cooldown.bs_inc.remains & variable.lastconvoke & cooldown.convoke_the_spirits.remains < 10 )",
								["action"] = "potion",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 5 || boss & ( fight_remains < 5 || dot.rip.remains > 5 & buff.tigers_fury.up & ( combo_points < 2 || buff.bs_inc.up & combo_points = 2 ) & ( ! variable.lastconvoke || ! variable.lastzerk || buff.bs_inc.up ) )",
								["action"] = "convoke_the_spirits",
							}, -- [7]
							{
								["enabled"] = true,
								["name"] = "manic_grieftorch",
								["cycle_targets"] = 1,
								["action"] = "manic_grieftorch",
								["criteria"] = "energy.deficit > 40",
							}, -- [8]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [9]
						},
						["berserk_builders"] = {
							{
								["enabled"] = true,
								["action"] = "rake",
								["criteria"] = "refreshable",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.swipe_cat > 1",
								["action"] = "swipe_cat",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_bt_triggers = 2 & buff.bt_brutal_slash.down",
								["action"] = "brutal_slash",
							}, -- [3]
							{
								["action"] = "shred",
								["enabled"] = true,
							}, -- [4]
						},
					},
					["version"] = 20230525,
					["warnings"] = "The import for 'berserk' required some automated changes.\nLine 10: Converted 'talent.thrashing_claws' to 'talent.thrashing_claws.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 8: Converted operations in 'fight_remains>(30+(cooldown.bs_inc.remains%1.6))&((talent.berserk_heart_of_the_lion.enabled&fight_remains<(90+(cooldown.bs_inc.remains%1.6)))||(!talent.berserk_heart_of_the_lion.enabled&fight_remains<(180+cooldown.bs_inc.remains)))' to 'fight_remains>(30+(cooldown.bs_inc.remains/1.6))&((talent.berserk_heart_of_the_lion.enabled&fight_remains<(90+(cooldown.bs_inc.remains/1.6)))||(!talent.berserk_heart_of_the_lion.enabled&fight_remains<(180+cooldown.bs_inc.remains)))'.\n\nThe import for 'aoe_builder' required some automated changes.\nLine 2: Converted 'talent.thrashing_claws' to 'talent.thrashing_claws.enabled' (1x).\n\nImported 11 action lists.\n",
					["spec"] = 103,
					["profile"] = "actions.precombat+=/mark_of_the_wild,if=buff.prowl.down\nactions.precombat+=/use_item,name=algethar_puzzle_box\nactions.precombat+=/heart_of_the_wild,if=buff.any_form.up&buff.cat_form.down\nactions.precombat+=/prowl\nactions.precombat+=/cat_form\n\nactions+=/skull_bash\nactions+=/soothe\nactions+=/prowl,if=buff.bs_inc.down&!buff.prowl.up\nactions+=/cat_form,if=!buff.cat_form.up\n## berserk and power infusion cds dont line up very well, so we are better off just sending on cooldown\n## actions+=/invoke_external_buff,name=power_infusion\nactions+=/variable,name=need_bt,value=talent.bloodtalons.enabled&buff.bloodtalons.stack<2\nactions+=/variable,name=align_3minutes,value=spell_targets.swipe_cat=1\nactions+=/variable,name=lastconvoke,value=fight_remains>cooldown.convoke_the_spirits.remains+3&((talent.ashamanes_guidance.enabled&fight_remains<(cooldown.convoke_the_spirits.remains+60))||(!talent.ashamanes_guidance.enabled&fight_remains<(cooldown.convoke_the_spirits.remains+120)))\nactions+=/variable,name=lastzerk,value=fight_remains>(30+(cooldown.bs_inc.remains%1.6))&((talent.berserk_heart_of_the_lion.enabled&fight_remains<(90+(cooldown.bs_inc.remains%1.6)))||(!talent.berserk_heart_of_the_lion.enabled&fight_remains<(180+cooldown.bs_inc.remains)))\nactions+=/variable,name=zerk_biteweave,op=reset\nactions+=/tigers_fury,if=!talent.convoke_the_spirits.enabled&(!buff.tigers_fury.up||energy.deficit>65)\nactions+=/tigers_fury,if=talent.convoke_the_spirits.enabled&(!variable.lastconvoke||(variable.lastconvoke&!buff.tigers_fury.up))\nactions+=/rake,cycle_targets=1,if=1.4*persistent_multiplier>dot.rake.pmultiplier&(buff.prowl.up||buff.shadowmeld.up)\nactions+=/natures_vigil\nactions+=/adaptive_swarm,cycle_targets=1,if=((!dot.adaptive_swarm_damage.ticking||dot.adaptive_swarm_damage.remains<2)&(dot.adaptive_swarm_damage.stack<3||!dot.adaptive_swarm_heal.stack>1)&!action.adaptive_swarm_heal.in_flight&!action.adaptive_swarm_damage.in_flight&!action.adaptive_swarm.in_flight)&target.time_to_die>5||active_enemies>2&!dot.adaptive_swarm_damage.ticking&energy<35&target.time_to_die>5&!(variable.need_bt&active_bt_triggers=2)\nactions+=/call_action_list,name=cooldown\nactions+=/feral_frenzy,cycle_targets=1,if=combo_points<2||combo_points<3&buff.bs_inc.up\nactions+=/ferocious_bite,cycle_targets=1,if=buff.apex_predators_craving.up&(spell_targets.swipe_cat=1||!talent.primal_wrath.enabled||!buff.sabertooth.up)&!(variable.need_bt&active_bt_triggers=2)\nactions+=/call_action_list,name=berserk,strict=1,if=buff.bs_inc.remains>gcd.remains\nactions+=/wait,sec=combo_points.time_to_max,if=combo_points=4&buff.predator_revealed.react&energy.deficit>40&spell_targets.swipe_cat=1&combo_points.time_to_max<gcd.max\n# its acceptable to proc bt when at 4cps in single target for a small gain (0.1-0.2% with t30 4p)\nactions+=/call_action_list,name=finisher,if=combo_points=5||combo_points=4&!(buff.bloodtalons.stack<=1&active_bt_triggers=2&spell_targets.swipe_cat=1)\nactions+=/call_action_list,name=bloodtalons,if=variable.need_bt&!buff.bs_inc.up&combo_points<5\nactions+=/run_action_list,name=aoe_builder,strict=1,if=spell_targets.swipe_cat>1&talent.primal_wrath.enabled\nactions+=/call_action_list,name=builder,if=combo_points<5&!buff.bs_inc.up\n\n# avoid capping brs charges, and in the event of adds, offload charges within reason\nactions.aoe_builder+=/brutal_slash,cycle_targets=1,if=cooldown.brutal_slash.full_recharge_time<4||target.time_to_die<5\nactions.aoe_builder+=/thrash_cat,if=refreshable&(buff.clearcasting.react||(spell_targets.thrash_cat>10||(spell_targets.thrash_cat>5&!talent.double_clawed_rake.enabled))&!talent.thrashing_claws)\nactions.aoe_builder+=/shadowmeld,if=action.rake.ready&!buff.sudden_ambush.up&(dot.rake.refreshable||dot.rake.pmultiplier<1.4)&!buff.prowl.up&!buff.apex_predators_craving.up\n# this line checks if theres an upgradeable rake\nactions.aoe_builder+=/shadowmeld,if=action.rake.ready&!buff.sudden_ambush.up&dot.rake.pmultiplier<1.4&!buff.prowl.up&!buff.apex_predators_craving.up\n# not a perfect solution, but it checks lowest dot for pandemic/stealth snapshot first\nactions.aoe_builder+=/rake,cycle_targets=1,if=buff.sudden_ambush.up&persistent_multiplier>dot.rake.pmultiplier\n# and if lowest dot is fine, it checks the remaining dots and targets a mob without stealth snapshot (not necessarily 2nd lowest)\nactions.aoe_builder+=/rake,cycle_targets=1,if=buff.sudden_ambush.up&persistent_multiplier>dot.rake.pmultiplier||refreshable\nactions.aoe_builder+=/thrash_cat,if=refreshable\nactions.aoe_builder+=/brutal_slash\nactions.aoe_builder+=/moonfire_cat,cycle_targets=1,if=refreshable&spell_targets.swipe_cat<5\nactions.aoe_builder+=/swipe_cat\nactions.aoe_builder+=/moonfire_cat,cycle_targets=1,if=refreshable\n# if we have brs and nothing better to cast, check if thrash DD beats shred (or if SA is up)\nactions.aoe_builder+=/shred,cycle_targets=1,if=action.shred.damage>action.thrash_cat.damage&!buff.sudden_ambush.up\nactions.aoe_builder+=/thrash_cat\n\nactions.berserk+=/ferocious_bite,cycle_targets=1,if=combo_points=5&dot.rip.remains>8&variable.zerk_biteweave&spell_targets.swipe_cat>1\n# proc bt if 0/1 stack if 5/6 combo points\nactions.berserk+=/call_action_list,name=finisher,if=combo_points=5&!(buff.overflowing_power.stack<=1&active_bt_triggers=2&buff.bloodtalons.stack<=1)\n# its currently a gain to just contiuously try to proc bt in aoe\nactions.berserk+=/call_action_list,name=bloodtalons,strict=1,if=spell_targets.swipe_cat>1\n# go into stealth to buff rake snapshot-- feral frenzy line is to eliminate an edge case involving ff being casted instead due to higher prio\nactions.berserk+=/prowl,if=!(buff.bt_rake.up&active_bt_triggers=2)&(action.rake.ready&gcd.remains=0&!buff.sudden_ambush.up&(dot.rake.refreshable||dot.rake.pmultiplier<1.4)&!buff.shadowmeld.up&cooldown.feral_frenzy.remains<44&!buff.apex_predators_craving.up)\nactions.berserk+=/shadowmeld,if=!(buff.bt_rake.up&active_bt_triggers=2)&action.rake.ready&!buff.sudden_ambush.up&(dot.rake.refreshable||dot.rake.pmultiplier<1.4)&!buff.prowl.up&!buff.apex_predators_craving.up\nactions.berserk+=/rake,if=!(buff.bt_rake.up&active_bt_triggers=2)&(refreshable||(buff.sudden_ambush.up&persistent_multiplier>dot.rake.pmultiplier&!dot.rake.refreshable))\n# in single target, you just proc bt when an opportunity arises\nactions.berserk+=/shred,if=active_bt_triggers=2&buff.bt_shred.down\nactions.berserk+=/brutal_slash,if=active_bt_triggers=2&buff.bt_brutal_slash.down\nactions.berserk+=/moonfire_cat,if=active_bt_triggers=2&buff.bt_moonfire.down\nactions.berserk+=/thrash_cat,if=active_bt_triggers=2&buff.bt_thrash.down&!talent.thrashing_claws&variable.need_bt&(refreshable||talent.brutal_slash.enabled)\nactions.berserk+=/moonfire_cat,if=refreshable\n# don't overcap brs charges, but keep it available for bt\nactions.berserk+=/brutal_slash,if=cooldown.brutal_slash.charges>1\nactions.berserk+=/shred\n\nactions.berserk_builders+=/rake,cycle_targets=1,if=refreshable\nactions.berserk_builders+=/swipe_cat,if=spell_targets.swipe_cat>1\nactions.berserk_builders+=/brutal_slash,if=active_bt_triggers=2&buff.bt_brutal_slash.down\nactions.berserk_builders+=/shred\n\nactions.bloodtalons+=/brutal_slash,if=(cooldown.brutal_slash.full_recharge_time<4||target.time_to_die<5)&(buff.bt_brutal_slash.down&(buff.bs_inc.up||variable.need_bt))\nactions.bloodtalons+=/prowl,if=action.rake.ready&gcd.remains=0&!buff.sudden_ambush.up&(dot.rake.refreshable||dot.rake.pmultiplier<1.4)&!buff.shadowmeld.up&buff.bt_rake.down&!buff.prowl.up&!buff.apex_predators_craving.up\nactions.bloodtalons+=/shadowmeld,if=action.rake.ready&!buff.sudden_ambush.up&(dot.rake.refreshable||dot.rake.pmultiplier<1.4)&!buff.prowl.up&buff.bt_rake.down&cooldown.feral_frenzy.remains<44&!buff.apex_predators_craving.up\nactions.bloodtalons+=/rake,cycle_targets=1,if=(refreshable||buff.sudden_ambush.up&persistent_multiplier>dot.rake.pmultiplier)&buff.bt_rake.down\nactions.bloodtalons+=/rake,cycle_targets=1,if=buff.sudden_ambush.up&persistent_multiplier>dot.rake.pmultiplier&buff.bt_rake.down\nactions.bloodtalons+=/shred,if=buff.bt_shred.down&buff.clearcasting.react&spell_targets.swipe_cat=1\nactions.bloodtalons+=/thrash_cat,cycle_targets=1,if=refreshable&buff.bt_thrash.down&buff.clearcasting.react&spell_targets.swipe_cat=1&!talent.thrashing_claws.enabled\nactions.bloodtalons+=/brutal_slash,if=buff.bt_brutal_slash.down\nactions.bloodtalons+=/moonfire_cat,if=refreshable&buff.bt_moonfire.down&spell_targets.swipe_cat=1\nactions.bloodtalons+=/thrash_cat,cycle_targets=1,if=refreshable&buff.bt_thrash.down&!talent.thrashing_claws.enabled\nactions.bloodtalons+=/shred,if=buff.bt_shred.down&spell_targets.swipe_cat=1&!talent.wild_slashes.enabled\nactions.bloodtalons+=/swipe_cat,if=buff.bt_swipe.down&talent.wild_slashes.enabled\nactions.bloodtalons+=/moonfire_cat,cycle_targets=1,max_cycle_targets=3,if=buff.bt_moonfire.down&spell_targets.swipe_cat<5\nactions.bloodtalons+=/swipe_cat,if=buff.bt_swipe.down\nactions.bloodtalons+=/moonfire_cat,cycle_targets=1,if=buff.bt_moonfire.down\n# If we have BrS and nothing better to cast, check if shred beats thrash DD (or if SA is up)\nactions.bloodtalons+=/shred,cycle_targets=1,if=action.shred.damage>action.thrash_cat.damage&buff.bt_shred.down&!buff.sudden_ambush.up\nactions.bloodtalons+=/thrash_cat,if=buff.bt_thrash.down\n\nactions.builder+=/run_action_list,name=clearcasting,strict=1,if=buff.clearcasting.react\nactions.builder+=/brutal_slash,if=cooldown.brutal_slash.full_recharge_time<4\n## TODO: edit this to use wait instead; stop pooling if we can use a clearcasting proc\n## actions.builder+=/pool_resource,if=!action.rake.ready&(dot.rake.refreshable||(buff.sudden_ambush.up&persistent_multiplier>dot.rake.pmultiplier&dot.rake.remains>6))&!buff.clearcasting.react\nactions.builder+=/shadowmeld,if=action.rake.ready&!buff.sudden_ambush.up&(dot.rake.refreshable||dot.rake.pmultiplier<1.4)&!buff.prowl.up&!buff.apex_predators_craving.up\nactions.builder+=/rake,if=refreshable||(buff.sudden_ambush.up&persistent_multiplier>dot.rake.pmultiplier&dot.rake.remains>6)\n## repeating here is necessary, otherwise moonfire will occassionally be casted instead\n## actions.builder+=/run_action_list,name=clearcasting,strict=1,if=buff.clearcasting.react\nactions.builder+=/moonfire_cat,cycle_targets=1,if=refreshable\nactions.builder+=/thrash_cat,cycle_targets=1,if=refreshable&!talent.thrashing_claws.enabled\nactions.builder+=/brutal_slash\nactions.builder+=/swipe_cat,if=spell_targets.swipe_cat>1||talent.wild_slashes.enabled\nactions.builder+=/shred\n\nactions.clearcasting+=/thrash_cat,if=refreshable&!talent.thrashing_claws.enabled\nactions.clearcasting+=/swipe_cat,if=spell_targets.swipe_cat>1\nactions.clearcasting+=/brutal_slash,if=spell_targets.brutal_slash>2\nactions.clearcasting+=/shred\n\nactions.cooldown+=/use_item,name=algethar_puzzle_box,if=boss&fight_remains<35||(!variable.align_3minutes)\nactions.cooldown+=/use_item,name=algethar_puzzle_box,if=variable.align_3minutes&(cooldown.bs_inc.remains<3&(!variable.lastzerk||!variable.lastconvoke||(variable.lastconvoke&cooldown.convoke_the_spirits.remains<13)))\nactions.cooldown+=/incarnation,if=boss||fight_remains>25\nactions.cooldown+=/berserk,if=fight_remains>18||boss&(!variable.lastzerk||fight_remains<23||variable.lastzerk&!variable.lastconvoke||variable.lastconvoke&cooldown.convoke_the_spirits.remains<10)\nactions.cooldown+=/berserking,if=!variable.align_3minutes||buff.bs_inc.up\nactions.cooldown+=/potion,if=buff.bs_inc.up||boss&fight_remains<32||(boss&fight_remains<cooldown.bs_inc.remains&variable.lastconvoke&cooldown.convoke_the_spirits.remains<10)\nactions.cooldown+=/convoke_the_spirits,if=target.time_to_die>5||boss&(fight_remains<5||dot.rip.remains>5&buff.tigers_fury.up&(combo_points<2||buff.bs_inc.up&combo_points=2)&(!variable.lastconvoke||!variable.lastzerk||buff.bs_inc.up))\nactions.cooldown+=/use_item,name=manic_grieftorch,cycle_targets=1,if=energy.deficit>40\nactions.cooldown+=/use_items\n\nactions.finisher+=/primal_wrath,if=(!funneling&(dot.primal_wrath.refreshable&!talent.circle_of_life_and_death.enabled)||dot.primal_wrath.remains<6||talent.tear_open_wounds.enabled)&spell_targets.primal_wrath>1&talent.primal_wrath.enabled\nactions.finisher+=/rip,cycle_targets=1,if=refreshable&target.time_to_die>settings.rip_duration\nactions.finisher+=/pool_resource,for_next=1,if=!action.tigers_fury.ready&buff.apex_predators_craving.down\nactions.finisher+=/ferocious_bite,max_energy=1,cycle_targets=1,if=buff.apex_predators_craving.down&(!buff.bs_inc.up||(buff.bs_inc.up&!talent.soul_of_the_forest.enabled))\nactions.finisher+=/ferocious_bite,cycle_targets=1,if=(buff.bs_inc.up&talent.soul_of_the_forest.enabled)||buff.apex_predators_craving.up\n\nactions.owlweaving+=/sunfire,line_cd=4*gcd",
				},
				["Restoration Druid"] = {
					["builtIn"] = true,
					["date"] = 20230325,
					["spec"] = 105,
					["desc"] = "Healer priorities are DPS-focused only.\n\n2023-03-23:  Minor tweaks to Cat Form priority from SimulationCraft.",
					["profile"] = "actions.precombat+=/heart_of_the_wild\nactions.precombat+=/prowl,if=talent.rake.enabled\nactions.precombat+=/cat_form,if=time=0&buff.moonkin_form.down&talent.rake.enabled\nactions.precombat+=/moonkin_form,if=time=0&buff.cat_form.down&talent.moonkin_form.enabled\n\n# Executed every time the actor is available.\nactions+=/skull_bash\nactions+=/solar_beam\nactions+=/berserking\n## actions+=/natures_vigil,if=!buff.prowl.up&!buff.shadowmeld.up\n## actions+=/regrowth,if=!buff.prowl.up&!buff.shadowmeld.up&settings.heal_in_groups,line_cd=7\nactions+=/use_items,if=!buff.prowl.up&!buff.shadowmeld.up\nactions+=/potion,if=!buff.prowl.up&!buff.shadowmeld.up\nactions+=/run_action_list,name=cat,if=talent.rake.enabled||buff.cat_form.up\nactions+=/run_action_list,name=owl,if=active_enemies>2&talent.moonkin_form.enabled&talent.convoke_the_spirits.enabled&cooldown.convoke_the_spirits.remains<=gcd.max&(buff.heart_of_the_wild.up||cooldown.heart_of_the_wild.remains>60-30*talent.cenarius_guidance.enabled||!talent.heart_of_the_wild.enabled)\nactions+=/moonkin_form,if=talent.moonkin_form.enabled&buff.cat_form.down\nactions+=/convoke_the_spirits,if=(buff.heart_of_the_wild.up||cooldown.heart_of_the_wild.remains>60-30*talent.cenarius_guidance.enabled||!talent.heart_of_the_wild.enabled)\nactions+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=2&dot.adaptive_swarm_damage.remains>2\nactions+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=1&dot.adaptive_swarm_damage.remains>2\nactions+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=3&dot.adaptive_swarm_damage.remains>2\nactions+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=4&dot.adaptive_swarm_damage.remains>2\nactions+=/adaptive_swarm,cycle_targets=1,if=!dot.adaptive_swarm_damage.ticking\nactions+=/sunfire,cycle_targets=1,if=refreshable&target.time_to_die>5&talent.improved_sunfire.enabled\nactions+=/moonfire,cycle_targets=1,if=refreshable&time_to_die>12\nactions+=/starsurge,if=active_enemies<8\nactions+=/sunfire,cycle_targets=1,if=refreshable&target.time_to_die>7&active_enemies<7\nactions+=/starfire,if=spell_targets.starfire>1\nactions+=/wrath\n\nactions.cat+=/rake,if=buff.shadowmeld.up||buff.prowl.up||buff.sudden_ambush.up\nactions.cat+=/heart_of_the_wild,if=(cooldown.convoke_the_spirits.remains<30||!talent.convoke_the_spirits.enabled)&!buff.heart_of_the_wild.up\nactions.cat+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=2&dot.adaptive_swarm_damage.remains>2\nactions.cat+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=1&dot.adaptive_swarm_damage.remains>2\nactions.cat+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=3&dot.adaptive_swarm_damage.remains>2\nactions.cat+=/adaptive_swarm,cycle_targets=1,if=dot.adaptive_swarm_damage.stack=4&dot.adaptive_swarm_damage.remains>2\nactions.cat+=/adaptive_swarm,cycle_targets=1,if=!dot.adaptive_swarm_damage.ticking\nactions.cat+=/run_action_list,name=owl,if=active_enemies>2&talent.moonkin_form.enabled&talent.convoke_the_spirits.enabled&cooldown.convoke_the_spirits.remains<=gcd.max&(buff.heart_of_the_wild.up||cooldown.heart_of_the_wild.remains>60-30*talent.cenarius_guidance.enabled||!talent.heart_of_the_wild.enabled)\nactions.cat+=/cat_form,if=(active_enemies<2||!talent.moonkin_form.enabled)&(!buff.cat_form.up&talent.convoke_the_spirits.enabled&cooldown.convoke_the_spirits.remains<=gcd.max&(buff.heart_of_the_wild.up||cooldown.heart_of_the_wild.remains>60-30*talent.cenarius_guidance.enabled||!talent.heart_of_the_wild.enabled))\nactions.cat+=/convoke_the_spirits,if=(buff.heart_of_the_wild.up||cooldown.heart_of_the_wild.remains>60-30*talent.cenarius_guidance.enabled||!talent.heart_of_the_wild.enabled)\nactions.cat+=/rake,if=remains<=gcd&combo_points<5&(talent.deep_focus.enabled&active_dot.rake<=1&dot.rake.refreshable)\nactions.cat+=/rip,if=remains<=gcd&combo_points=5&(talent.deep_focus.enabled&active_dot.rip<=1&dot.rip.refreshable)\nactions.cat+=/thrash_cat,target_if=refreshable&target.time_to_die>5&spell_targets.thrash_cat>4\nactions.cat+=/sunfire,cycle_targets=1,if=(refreshable&target.time_to_die>5)&!prev_gcd.1.cat_form&(active_enemies=1||talent.improved_sunfire.enabled)\nactions.cat+=/cat_form,if=!buff.cat_form.up&energy>50&((dot.thrash_cat.refreshable&spell_targets.swipe_cat>=9&talent.thrash.enabled)||(talent.deep_focus.enabled&dot.rip.refreshable&active_dot.rip<=1&active_enemies>=5))\nactions.cat+=/moonfire,cycle_targets=1,if=(refreshable&time_to_die>12&!ticking||(prev_gcd.1.sunfire&remains<duration*0.8&spell_targets.sunfire=1))&!prev_gcd.1.cat_form\nactions.cat+=/sunfire,if=prev_gcd.1.moonfire&remains<duration*0.8\nactions.cat+=/starsurge,if=active_enemies=1||(active_enemies<8&!buff.cat_form.up)\nactions.cat+=/starfire,if=time_to_die<10&spell_targets.starfire>1&(!talent.improved_swipe.enabled||spell_targets.swipe_cat>=9)\nactions.cat+=/cat_form,if=!buff.cat_form.up&energy>50\nactions.cat+=/ferocious_bite,if=(combo_points>3&target.1.time_to_die<3)||(combo_points=5&energy>=50&dot.rip.remains>10)&spell_targets.swipe_cat<4\nactions.cat+=/thrash_cat,cycle_targets=1,if=refreshable&target.time_to_die>5&spell_targets.thrash_cat>2\nactions.cat+=/rake,cycle_targets=1,if=dot.adaptive_swarm_damage.ticking&refreshable\nactions.cat+=/rip,cycle_targets=1,if=((refreshable||energy>90&remains<=10)&(combo_points=5&time_to_die>remains+24||(remains+combo_points*4<time_to_die&remains+4+combo_points*4>time_to_die))||!ticking&combo_points>2+spell_targets.swipe_cat*2)\nactions.cat+=/ferocious_bite,max_energy=1,if=combo_points=combo_points.max&(dot.rip.ticking||!talent.rip)\nactions.cat+=/rake,cycle_targets=1,if=(refreshable&time_to_die>10&spell_targets.swipe_cat<10)&(combo_points<5||remains<1)\nactions.cat+=/sunfire,cycle_targets=1,if=refreshable&target.time_to_die>5&active_enemies<7&!talent.improved_sunfire.enabled\nactions.cat+=/thrash_cat,cycle_targets=1,if=refreshable&target.time_to_die>5\nactions.cat+=/swipe_cat,if=active_enemies>1&combo_points<5&talent.improved_swipe.enabled\nactions.cat+=/shred,if=energy>60&combo_points<5\n\nactions.owl+=/moonkin_form,if=!buff.moonkin_form.up\nactions.owl+=/convoke_the_spirits",
					["version"] = 20230325,
					["warnings"] = "The import for 'cat' required some automated changes.\nLine 25: Converted 'talent.rip' to 'talent.rip.enabled' (1x).\n\nImported 4 action lists.\n",
					["author"] = "Makahiki",
					["lists"] = {
						["cat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.shadowmeld.up || buff.prowl.up || buff.sudden_ambush.up",
								["action"] = "rake",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.convoke_the_spirits.remains < 30 || ! talent.convoke_the_spirits.enabled ) & ! buff.heart_of_the_wild.up",
								["action"] = "heart_of_the_wild",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "dot.adaptive_swarm_damage.stack = 2 & dot.adaptive_swarm_damage.remains > 2",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "dot.adaptive_swarm_damage.stack = 1 & dot.adaptive_swarm_damage.remains > 2",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "dot.adaptive_swarm_damage.stack = 3 & dot.adaptive_swarm_damage.remains > 2",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "dot.adaptive_swarm_damage.stack = 4 & dot.adaptive_swarm_damage.remains > 2",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! dot.adaptive_swarm_damage.ticking",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 2 & talent.moonkin_form.enabled & talent.convoke_the_spirits.enabled & cooldown.convoke_the_spirits.remains <= gcd.max & ( buff.heart_of_the_wild.up || cooldown.heart_of_the_wild.remains > 60 - 30 * talent.cenarius_guidance.enabled || ! talent.heart_of_the_wild.enabled )",
								["list_name"] = "owl",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( active_enemies < 2 || ! talent.moonkin_form.enabled ) & ( ! buff.cat_form.up & talent.convoke_the_spirits.enabled & cooldown.convoke_the_spirits.remains <= gcd.max & ( buff.heart_of_the_wild.up || cooldown.heart_of_the_wild.remains > 60 - 30 * talent.cenarius_guidance.enabled || ! talent.heart_of_the_wild.enabled ) )",
								["action"] = "cat_form",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( buff.heart_of_the_wild.up || cooldown.heart_of_the_wild.remains > 60 - 30 * talent.cenarius_guidance.enabled || ! talent.heart_of_the_wild.enabled )",
								["action"] = "convoke_the_spirits",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "remains <= gcd.max & combo_points < 5 & ( talent.deep_focus.enabled & active_dot.rake <= 1 & dot.rake.refreshable )",
								["action"] = "rake",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "remains <= gcd.max & combo_points = 5 & ( talent.deep_focus.enabled & active_dot.rip <= 1 & dot.rip.refreshable )",
								["action"] = "rip",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 5 & spell_targets.thrash_cat > 4",
								["action"] = "thrash_cat",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable & target.time_to_die > 5 ) & ! prev_gcd.1.cat_form & ( active_enemies = 1 || talent.improved_sunfire.enabled )",
								["action"] = "sunfire",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up & energy > 50 & ( ( dot.thrash_cat.refreshable & spell_targets.swipe_cat >= 9 & talent.thrash.enabled ) || ( talent.deep_focus.enabled & dot.rip.refreshable & active_dot.rip <= 1 & active_enemies >= 5 ) )",
								["action"] = "cat_form",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable & time_to_die > 12 & ! ticking || ( prev_gcd.1.sunfire & remains < duration * 0.8 & spell_targets.sunfire = 1 ) ) & ! prev_gcd.1.cat_form",
								["action"] = "moonfire",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.moonfire & remains < duration * 0.8",
								["action"] = "sunfire",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 || ( active_enemies < 8 & ! buff.cat_form.up )",
								["action"] = "starsurge",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "time_to_die < 10 & spell_targets.starfire > 1 & ( ! talent.improved_swipe.enabled || spell_targets.swipe_cat >= 9 )",
								["action"] = "starfire",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up & energy > 50",
								["action"] = "cat_form",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "( combo_points > 3 & time_to_die < 3 ) || ( combo_points = 5 & energy >= 50 & dot.rip.remains > 10 ) & spell_targets.swipe_cat < 4",
								["action"] = "ferocious_bite",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 5 & spell_targets.thrash_cat > 2",
								["action"] = "thrash_cat",
								["cycle_targets"] = 1,
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "dot.adaptive_swarm_damage.ticking & refreshable",
								["action"] = "rake",
								["cycle_targets"] = 1,
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "( ( refreshable || energy > 90 & remains <= 10 ) & ( combo_points = 5 & time_to_die > remains + 24 || ( remains + combo_points * 4 < time_to_die & remains + 4 + combo_points * 4 > time_to_die ) ) || ! ticking & combo_points > 2 + spell_targets.swipe_cat * 2 )",
								["action"] = "rip",
								["cycle_targets"] = 1,
							}, -- [24]
							{
								["enabled"] = true,
								["max_energy"] = 1,
								["action"] = "ferocious_bite",
								["criteria"] = "combo_points = combo_points.max & ( dot.rip.ticking || ! talent.rip.enabled )",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "( refreshable & time_to_die > 10 & spell_targets.swipe_cat < 10 ) & ( combo_points < 5 || remains < 1 )",
								["action"] = "rake",
								["cycle_targets"] = 1,
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 5 & active_enemies < 7 & ! talent.improved_sunfire.enabled",
								["action"] = "sunfire",
								["cycle_targets"] = 1,
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 5",
								["action"] = "thrash_cat",
								["cycle_targets"] = 1,
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & combo_points < 5 & talent.improved_swipe.enabled",
								["action"] = "swipe_cat",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "energy > 60 & combo_points < 5",
								["action"] = "shred",
							}, -- [30]
						},
						["owl"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.moonkin_form.up",
								["action"] = "moonkin_form",
							}, -- [1]
							{
								["action"] = "convoke_the_spirits",
								["enabled"] = true,
							}, -- [2]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "skull_bash",
							}, -- [1]
							{
								["action"] = "solar_beam",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.prowl.up & ! buff.shadowmeld.up",
								["action"] = "use_items",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! buff.prowl.up & ! buff.shadowmeld.up",
								["action"] = "potion",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "talent.rake.enabled || buff.cat_form.up",
								["list_name"] = "cat",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 2 & talent.moonkin_form.enabled & talent.convoke_the_spirits.enabled & cooldown.convoke_the_spirits.remains <= gcd.max & ( buff.heart_of_the_wild.up || cooldown.heart_of_the_wild.remains > 60 - 30 * talent.cenarius_guidance.enabled || ! talent.heart_of_the_wild.enabled )",
								["list_name"] = "owl",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.moonkin_form.enabled & buff.cat_form.down",
								["action"] = "moonkin_form",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( buff.heart_of_the_wild.up || cooldown.heart_of_the_wild.remains > 60 - 30 * talent.cenarius_guidance.enabled || ! talent.heart_of_the_wild.enabled )",
								["action"] = "convoke_the_spirits",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "dot.adaptive_swarm_damage.stack = 2 & dot.adaptive_swarm_damage.remains > 2",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "dot.adaptive_swarm_damage.stack = 1 & dot.adaptive_swarm_damage.remains > 2",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "dot.adaptive_swarm_damage.stack = 3 & dot.adaptive_swarm_damage.remains > 2",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "dot.adaptive_swarm_damage.stack = 4 & dot.adaptive_swarm_damage.remains > 2",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! dot.adaptive_swarm_damage.ticking",
								["action"] = "adaptive_swarm",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 5 & talent.improved_sunfire.enabled",
								["action"] = "sunfire",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & time_to_die > 12",
								["action"] = "moonfire",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 8",
								["action"] = "starsurge",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & target.time_to_die > 7 & active_enemies < 7",
								["action"] = "sunfire",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.starfire > 1",
								["action"] = "starfire",
							}, -- [19]
							{
								["action"] = "wrath",
								["enabled"] = true,
							}, -- [20]
						},
						["precombat"] = {
							{
								["action"] = "heart_of_the_wild",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.rake.enabled",
								["action"] = "prowl",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "time = 0 & buff.moonkin_form.down & talent.rake.enabled",
								["action"] = "cat_form",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "time = 0 & buff.cat_form.down & talent.moonkin_form.enabled",
								["action"] = "moonkin_form",
							}, -- [4]
						},
					},
				},
				["Balance"] = {
					["source"] = "https://balance-simc.github.io/Balance-SimC/md.html?file=balance.txt",
					["builtIn"] = true,
					["date"] = 20230528,
					["author"] = "SimC",
					["desc"] = "2023-05-28:  Minor update for Spoils trinket.\n\n2023-05-22:  Tweak Fury of Elune.\n\n2023-05-20:  Starlord canceling is a thing again.\n\n2023-05-13:  Use new action.X.energize_amount syntax from SimC.\n\n2023-05-08:  Updates from SimC impacting Starsurge usage.\n\n2023-05-06:  Minor updates.\n\n2023-05-02:  Updates for 10.1 from SimC.\n\n2023-04-17:  Adjust on_use_trinket variable.\n\n2023-02-25:  Added single-target use of Starfall with Touch the Cosmos.",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "solar_beam",
							}, -- [1]
							{
								["action"] = "soothe",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "time < gcd.max & ( eclipse.any_next || eclipse.lunar_next )",
								["action"] = "wrath",
								["line_cd"] = "5",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "refreshable & time < 2 * gcd.max & buff.eclipse_lunar.up",
								["action"] = "stellar_flare",
								["line_cd"] = "5",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.stellar_flare.enabled & time < 2 * gcd.max & buff.eclipse_lunar.up",
								["action"] = "starfire",
								["line_cd"] = "5",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.starfall > 1",
								["var_name"] = "is_aoe",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "6 / spell_haste + talent.natures_balance.enabled + talent.orbit_breaker.enabled * dot.moonfire.ticking * ( buff.orbit_breaker.stack > ( 27 - 2 * buff.solstice.up ) ) * 40",
								["var_name"] = "passive_asp",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.remains >= 20 || variable.no_cd_talent || boss & fight_remains < 15",
								["action"] = "berserking",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! druid.no_cds & ( buff.ca_inc.remains >= 20 || variable.no_cd_talent || boss & fight_remains < 30 )",
								["action"] = "potion",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "variable.on_use_trinket != 1 & ! trinket.t2.ready_cooldown || ( variable.on_use_trinket = 1 || variable.on_use_trinket = 3 ) & buff.ca_inc.up || variable.no_cd_talent || boss & fight_remains < 20 || variable.on_use_trinket = 0",
								["slots"] = "trinket1",
								["action"] = "trinket1",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "variable.on_use_trinket != 2 & ! trinket.t1.ready_cooldown || variable.on_use_trinket = 2 & buff.ca_inc.up || variable.no_cd_talent || boss & fight_remains < 20 || variable.on_use_trinket = 0",
								["slots"] = "trinket2",
								["action"] = "trinket2",
							}, -- [11]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "natures_vigil",
								["enabled"] = true,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "variable.is_aoe",
								["action"] = "run_action_list",
								["list_name"] = "aoe",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "st",
							}, -- [15]
						},
						["precombat"] = {
							{
								["action"] = "moonkin_form",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "mark_of_the_wild",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! talent.celestial_alignment.enabled & ! talent.incarnation_chosen_of_elune.enabled || druid.no_cds",
								["var_name"] = "no_cd_talent",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "0",
								["var_name"] = "on_use_trinket",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "add",
								["action"] = "variable",
								["value"] = "1",
								["criteria"] = "trinket.t1.has_use_buff & trinket.t1.cooldown.duration > 0 || trinket.t1.is.spoils_of_neltharus",
								["var_name"] = "on_use_trinket",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "add",
								["action"] = "variable",
								["value"] = "2",
								["criteria"] = "trinket.t2.has_use_buff & trinket.t2.cooldown.duration > 0 || trinket.t2.is.spoils_of_neltharus",
								["var_name"] = "on_use_trinket",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( eclipse.any_next || eclipse.lunar_next )",
								["action"] = "wrath",
							}, -- [7]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "! boss & refreshable & ( target.time_to_die - remains ) > 6 & astral_power.deficit > variable.passive_asp + 3",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "refreshable & ( target.time_to_die - remains ) > 6 - ( spell_targets / 2 ) & astral_power.deficit > variable.passive_asp + 3",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "boss & refreshable & ( target.time_to_die - remains ) > 6 & astral_power.deficit > variable.passive_asp + 3",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! druid.no_cds & ( cooldown.ca_inc.remains < 5 & ! buff.ca_inc.up & ( target.time_to_die > 10 || boss & fight_remains < 25 + 10 * talent.incarnation_chosen_of_elune.enabled ) )",
								["var_name"] = "cd_condition_aoe",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "stellar_flare",
								["criteria"] = "refreshable & ( target.time_to_die - remains - spell_targets.starfire ) > 8 + spell_targets.starfire & astral_power.deficit > variable.passive_asp + 8 & spell_targets.starfire < ( 11 - talent.umbral_intensity.rank - talent.astral_smolder.rank ) & variable.cd_condition_aoe",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "cancel_buff",
								["criteria"] = "buff.starlord.remains < 2 & ( variable.cd_condition_aoe & ( talent.orbital_strike.enabled & astral_power.deficit < variable.passive_asp + 8 * spell_targets || buff.touch_the_cosmos.up ) || astral_power.deficit < ( variable.passive_asp + 8 + 12 * ( buff.eclipse_lunar.remains < 4 || buff.eclipse_solar.remains < 4 ) ) )",
								["buff_name"] = "starlord",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_aoe & ( talent.orbital_strike.enabled & astral_power.deficit < variable.passive_asp + 8 * spell_targets || buff.touch_the_cosmos.up ) || astral_power.deficit < ( variable.passive_asp + 8 + 12 * ( buff.eclipse_lunar.remains < 4 || buff.eclipse_solar.remains < 4 ) )",
								["action"] = "starfall",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_aoe",
								["action"] = "celestial_alignment",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_aoe",
								["action"] = "incarnation",
							}, -- [9]
							{
								["action"] = "warrior_of_elune",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "spell_targets.starfire < 3",
								["var_name"] = "enter_solar",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "variable.enter_solar & ( eclipse.any_next || buff.eclipse_solar.remains < action.starfire.execute_time )",
								["action"] = "starfire",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! variable.enter_solar & ( eclipse.any_next || buff.eclipse_lunar.remains < action.wrath.execute_time )",
								["action"] = "wrath",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20 & ( ! talent.fungal_growth.enabled || ! talent.waning_twilight.enabled || dot.fungal_growth.remains < 2 & target.time_to_die > 7 & ! prev_gcd.1.wild_mushroom )",
								["action"] = "wild_mushroom",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 2 & ( buff.ca_inc.remains > 3 || cooldown.ca_inc.remains > 30 & buff.primordial_arcanic_pulsar.value <= 280 || buff.primordial_arcanic_pulsar.value >= 560 & astral_power > 50 ) || boss & fight_remains < 10",
								["action"] = "fury_of_elune",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 40 & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time )",
								["action"] = "full_moon",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "cancel_buff",
								["criteria"] = "buff.starlord.remains < 2 & ( target.time_to_die > 4 & ( buff.starweavers_warp.up || talent.starlord.enabled & buff.starlord.stack < 3 ) )",
								["buff_name"] = "starlord",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 4 & ( buff.starweavers_warp.up || talent.starlord.enabled & buff.starlord.stack < 3 )",
								["action"] = "starfall",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.starweavers_weft.up & spell_targets.starfire < 3",
								["action"] = "starsurge",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "stellar_flare",
								["criteria"] = "refreshable & ( target.time_to_die - remains - spell_targets.starfire ) > 8 + spell_targets.starfire & astral_power.deficit > variable.passive_asp + 8 & spell_targets.starfire < ( 11 - talent.umbral_intensity.rank - talent.astral_smolder.rank )",
								["cycle_targets"] = 1,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 50",
								["action"] = "astral_communion",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "astral_power < 50 & spell_targets.starfall < 3 + talent.elunes_guidance.enabled & ( buff.eclipse_lunar.remains > 4 || buff.eclipse_solar.remains > 4 )",
								["action"] = "convoke_the_spirits",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 10",
								["action"] = "new_moon",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20 & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time )",
								["action"] = "half_moon",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20",
								["action"] = "force_of_nature",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "buff.starweavers_weft.up & spell_targets.starfire < 17",
								["action"] = "starsurge",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets > 3 & buff.eclipse_lunar.up || eclipse.in_lunar",
								["action"] = "starfire",
							}, -- [27]
							{
								["action"] = "wrath",
								["enabled"] = true,
							}, -- [28]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "fallthru",
							}, -- [29]
						},
						["fallthru"] = {
							{
								["enabled"] = true,
								["criteria"] = "variable.is_aoe",
								["action"] = "starfall",
							}, -- [1]
							{
								["action"] = "starsurge",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "dot.moonfire.remains > remains * 22 / 18",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["action"] = "moonfire",
								["enabled"] = true,
							}, -- [4]
						},
						["st"] = {
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "refreshable & remains < 2 & ( target.time_to_die - remains ) > 6",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "refreshable & remains < 2 & ( target.time_to_die - remains ) > 6",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "stellar_flare",
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + 8 & remains < 2 & ( target.time_to_die - remains ) > 8",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! druid.no_cds & ( cooldown.ca_inc.remains < 15 & ! buff.ca_inc.up & ( target.time_to_die > 15 || boss & fight_remains < 25 + 10 * talent.incarnation_chosen_of_elune.enabled ) )",
								["var_name"] = "cd_condition_st",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "cancel_buff",
								["criteria"] = "buff.starlord.remains < 2 & ( buff.primordial_arcanic_pulsar.value >= 550 & ! buff.ca_inc.up & buff.starweavers_warp.up || buff.primordial_arcanic_pulsar.value >= 560 & buff.starweavers_weft.up )",
								["buff_name"] = "starlord",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.primordial_arcanic_pulsar.value >= 550 & ! buff.ca_inc.up & buff.starweavers_warp.up",
								["action"] = "starfall",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.primordial_arcanic_pulsar.value >= 560 & buff.starweavers_weft.up",
								["action"] = "starsurge",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_st",
								["action"] = "celestial_alignment",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.cd_condition_st",
								["action"] = "incarnation",
							}, -- [9]
							{
								["action"] = "warrior_of_elune",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.primordial_arcanic_pulsar.value < 520 & cooldown.ca_inc.remains > 5",
								["var_name"] = "solar_eclipse_st",
							}, -- [11]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "eclipse.any_next || variable.solar_eclipse_st & buff.eclipse_solar.up & ( buff.eclipse_solar.remains < action.starfire.cast_time ) || ! variable.solar_eclipse_st & buff.eclipse_lunar.up & ( buff.eclipse_lunar.remains < action.wrath.cast_time )",
								["var_name"] = "enter_eclipse",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "variable.enter_eclipse & variable.solar_eclipse_st",
								["action"] = "starfire",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "variable.enter_eclipse",
								["action"] = "wrath",
							}, -- [14]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.ca_inc.remains > 4 || ( cooldown.ca_inc.remains > 30 || variable.no_cd_talent ) & ( buff.eclipse_lunar.remains > 4 || buff.eclipse_solar.remains > 4 )",
								["var_name"] = "convoke_condition",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "action.convoke_the_spirits.known & cooldown.convoke_the_spirits.ready & variable.convoke_condition",
								["action"] = "starsurge",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "variable.convoke_condition",
								["action"] = "convoke_the_spirits",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 55",
								["action"] = "astral_communion",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20",
								["action"] = "force_of_nature",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 2 & ( buff.ca_inc.remains > 3 || cooldown.ca_inc.remains > 30 & buff.primordial_arcanic_pulsar.value <= 280 || buff.primordial_arcanic_pulsar.value >= 560 & astral_power > 50 ) || boss & fight_remains < 10",
								["action"] = "fury_of_elune",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "buff.starweavers_warp.up",
								["action"] = "starfall",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "cancel_buff",
								["criteria"] = "buff.starlord.remains < 2 & ( talent.starlord.enabled & buff.starlord.stack < 3 || talent.rattle_the_stars.enabled & buff.rattled_stars.up & buff.rattled_stars.remains < gcd.max )",
								["buff_name"] = "starlord",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "talent.starlord.enabled & buff.starlord.stack < 3 || talent.rattle_the_stars.enabled & buff.rattled_stars.up & buff.rattled_stars.remains < gcd.max",
								["action"] = "starsurge",
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "sunfire",
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + 3",
								["cycle_targets"] = 1,
							}, -- [24]
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + 3",
								["cycle_targets"] = 1,
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "stellar_flare",
								["criteria"] = "refreshable & astral_power.deficit > variable.passive_asp + 8",
								["cycle_targets"] = 1,
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 10",
								["action"] = "new_moon",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 20 & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time )",
								["action"] = "half_moon",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "astral_power.deficit > variable.passive_asp + 40 & ( buff.eclipse_lunar.remains > execute_time || buff.eclipse_solar.remains > execute_time )",
								["action"] = "full_moon",
							}, -- [29]
							{
								["enabled"] = true,
								["action"] = "cancel_buff",
								["criteria"] = "buff.starlord.remains < 2 & ( buff.starweavers_weft.up || astral_power.deficit < variable.passive_asp + action.wrath.energize_amount + ( action.starfire.energize_amount + variable.passive_asp ) * ( buff.eclipse_solar.remains < ( gcd.max * 3 ) ) || talent.astral_communion.enabled & cooldown.astral_communion.remains < 3 || fight_remains < 5 )",
								["buff_name"] = "starlord",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "buff.starweavers_weft.up || astral_power.deficit < variable.passive_asp + action.wrath.energize_amount + ( action.starfire.energize_amount + variable.passive_asp ) * ( buff.eclipse_solar.remains < ( gcd.max * 3 ) ) || talent.astral_communion.enabled & cooldown.astral_communion.remains < 3 || fight_remains < 5",
								["action"] = "starsurge",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "talent.fungal_growth.enabled & ( boss || target.time_to_die > ( full_recharge_time - 7 ) || fight_remains < 10 )",
								["action"] = "wild_mushroom",
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "buff.ca_inc.up & buff.warrior_of_elune.up & buff.warrior_of_elune.stack = 1",
								["action"] = "starfire",
							}, -- [33]
							{
								["action"] = "wrath",
								["enabled"] = true,
							}, -- [34]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "fallthru",
							}, -- [35]
						},
					},
					["version"] = 20230528,
					["warnings"] = "The import for 'default' required some automated changes.\nLine 5: Converted 'talent.stellar_flare' to 'talent.stellar_flare.enabled' (1x).\nLine 7: Converted 'talent.natures_balance' to 'talent.natures_balance.enabled' (1x).\nLine 7: Converted 'talent.orbit_breaker' to 'talent.orbit_breaker.enabled' (1x).\nLine 7: Converted operations in '6%spell_haste+talent.natures_balance.enabled+talent.orbit_breaker.enabled*dot.moonfire.ticking*(buff.orbit_breaker.stack>(27-2*buff.solstice.up))*40' to '6/spell_haste+talent.natures_balance.enabled+talent.orbit_breaker.enabled*dot.moonfire.ticking*(buff.orbit_breaker.stack>(27-2*buff.solstice.up))*40'.\nLine 10: Converted 'trinket.2.ready_cooldown' to 'trinket.t2.ready_cooldown' (1x).\nLine 11: Converted 'trinket.1.ready_cooldown' to 'trinket.t1.ready_cooldown' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 3: Converted 'talent.celestial_alignment' to 'talent.celestial_alignment.enabled' (1x).\nLine 3: Converted 'talent.incarnation_chosen_of_elune' to 'talent.incarnation_chosen_of_elune.enabled' (1x).\nLine 5: Converted 'trinket.1.has_use_buff' to 'trinket.t1.has_use_buff' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 5: Converted 'trinket.1.is.spoils_of_neltharus' to 'trinket.t1.is.spoils_of_neltharus' (1x).\nLine 6: Converted 'trinket.2.has_use_buff' to 'trinket.t2.has_use_buff' (1x).\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 6: Converted 'trinket.2.is.spoils_of_neltharus' to 'trinket.t2.is.spoils_of_neltharus' (1x).\n\nThe import for 'aoe' required some automated changes.\nLine 2: Converted operations in 'refreshable&(target.time_to_die-remains)>6-(spell_targets%2)&astral_power.deficit>variable.passive_asp+3' to 'refreshable&(target.time_to_die-remains)>6-(spell_targets/2)&astral_power.deficit>variable.passive_asp+3'.\nLine 4: Converted 'talent.incarnation_chosen_of_elune' to 'talent.incarnation_chosen_of_elune.enabled' (1x).\nLine 6: Converted 'talent.orbital_strike' to 'talent.orbital_strike.enabled' (1x).\nLine 7: Converted 'talent.orbital_strike' to 'talent.orbital_strike.enabled' (1x).\nLine 14: Converted 'talent.fungal_growth' to 'talent.fungal_growth.enabled' (1x).\nLine 14: Converted 'talent.waning_twilight' to 'talent.waning_twilight.enabled' (1x).\nLine 17: Converted 'talent.starlord' to 'talent.starlord.enabled' (1x).\nLine 18: Converted 'talent.starlord' to 'talent.starlord.enabled' (1x).\nLine 22: Converted 'talent.elunes_guidance' to 'talent.elunes_guidance.enabled' (1x).\n\nThe import for 'fallthru' required some automated changes.\nLine 3: Converted operations in 'dot.moonfire.remains>remains*22%18' to 'dot.moonfire.remains>remains*22/18'.\n\nThe import for 'st' required some automated changes.\nLine 4: Converted 'talent.incarnation_chosen_of_elune' to 'talent.incarnation_chosen_of_elune.enabled' (1x).\nLine 22: Converted 'talent.starlord' to 'talent.starlord.enabled' (1x).\nLine 22: Converted 'talent.rattle_the_stars' to 'talent.rattle_the_stars.enabled' (1x).\nLine 23: Converted 'talent.starlord' to 'talent.starlord.enabled' (1x).\nLine 23: Converted 'talent.rattle_the_stars' to 'talent.rattle_the_stars.enabled' (1x).\nLine 30: Converted 'talent.astral_communion' to 'talent.astral_communion.enabled' (1x).\nLine 31: Converted 'talent.astral_communion' to 'talent.astral_communion.enabled' (1x).\nLine 32: Converted 'talent.fungal_growth' to 'talent.fungal_growth.enabled' (1x).\n\nImported 5 action lists.\n",
					["profile"] = "actions.precombat+=/moonkin_form\nactions.precombat+=/mark_of_the_wild\nactions.precombat+=/variable,name=no_cd_talent,value=!talent.celestial_alignment&!talent.incarnation_chosen_of_elune||druid.no_cds\nactions.precombat+=/variable,name=on_use_trinket,value=0\nactions.precombat+=/variable,name=on_use_trinket,op=add,value=1,if=trinket.1.has_use_buff&trinket.1.cooldown.duration>0||trinket.1.is.spoils_of_neltharus\nactions.precombat+=/variable,name=on_use_trinket,op=add,value=2,if=trinket.2.has_use_buff&trinket.2.cooldown.duration>0||trinket.2.is.spoils_of_neltharus\nactions.precombat+=/wrath,if=(eclipse.any_next||eclipse.lunar_next)\n\n# Executed every time the actor is available.\nactions+=/solar_beam\nactions+=/soothe\nactions+=/wrath,if=time<gcd.max&(eclipse.any_next||eclipse.lunar_next),line_cd=5\nactions+=/stellar_flare,if=refreshable&time<2*gcd.max&buff.eclipse_lunar.up,line_cd=5\nactions+=/starfire,if=!talent.stellar_flare&time<2*gcd.max&buff.eclipse_lunar.up,line_cd=5\nactions+=/variable,name=is_aoe,value=spell_targets.starfall>1\nactions+=/variable,name=passive_asp,value=6%spell_haste+talent.natures_balance+talent.orbit_breaker*dot.moonfire.ticking*(buff.orbit_breaker.stack>(27-2*buff.solstice.up))*40\nactions+=/berserking,if=buff.ca_inc.remains>=20||variable.no_cd_talent||boss&fight_remains<15\nactions+=/potion,if=!druid.no_cds&(buff.ca_inc.remains>=20||variable.no_cd_talent||boss&fight_remains<30)\nactions+=/use_items,slots=trinket1,if=variable.on_use_trinket!=1&!trinket.2.ready_cooldown||(variable.on_use_trinket=1||variable.on_use_trinket=3)&buff.ca_inc.up||variable.no_cd_talent||boss&fight_remains<20||variable.on_use_trinket=0\nactions+=/use_items,slots=trinket2,if=variable.on_use_trinket!=2&!trinket.1.ready_cooldown||variable.on_use_trinket=2&buff.ca_inc.up||variable.no_cd_talent||boss&fight_remains<20||variable.on_use_trinket=0\nactions+=/use_items\nactions+=/natures_vigil\n## actions+=/invoke_external_buff,name=power_infusion\nactions+=/run_action_list,name=aoe,if=variable.is_aoe\nactions+=/run_action_list,name=st\n\nactions.aoe+=/moonfire,cycle_targets=1,if=!boss&refreshable&(target.time_to_die-remains)>6&astral_power.deficit>variable.passive_asp+3\nactions.aoe+=/sunfire,cycle_targets=1,if=refreshable&(target.time_to_die-remains)>6-(spell_targets%2)&astral_power.deficit>variable.passive_asp+3\nactions.aoe+=/moonfire,cycle_targets=1,if=boss&refreshable&(target.time_to_die-remains)>6&astral_power.deficit>variable.passive_asp+3\nactions.aoe+=/variable,name=cd_condition_aoe,value=!druid.no_cds&(cooldown.ca_inc.remains<5&!buff.ca_inc.up&(target.time_to_die>10||boss&fight_remains<25+10*talent.incarnation_chosen_of_elune))\nactions.aoe+=/stellar_flare,cycle_targets=1,if=refreshable&(target.time_to_die-remains-spell_targets.starfire)>8+spell_targets.starfire&astral_power.deficit>variable.passive_asp+8&spell_targets.starfire<(11-talent.umbral_intensity.rank-talent.astral_smolder.rank)&variable.cd_condition_aoe\nactions.aoe+=/cancel_buff,name=starlord,if=buff.starlord.remains<2&(variable.cd_condition_aoe&(talent.orbital_strike&astral_power.deficit<variable.passive_asp+8*spell_targets||buff.touch_the_cosmos.up)||astral_power.deficit<(variable.passive_asp+8+12*(buff.eclipse_lunar.remains<4||buff.eclipse_solar.remains<4)))\nactions.aoe+=/starfall,if=variable.cd_condition_aoe&(talent.orbital_strike&astral_power.deficit<variable.passive_asp+8*spell_targets||buff.touch_the_cosmos.up)||astral_power.deficit<(variable.passive_asp+8+12*(buff.eclipse_lunar.remains<4||buff.eclipse_solar.remains<4))\nactions.aoe+=/celestial_alignment,if=variable.cd_condition_aoe\nactions.aoe+=/incarnation,if=variable.cd_condition_aoe\nactions.aoe+=/warrior_of_elune\nactions.aoe+=/variable,name=enter_solar,value=spell_targets.starfire<3\nactions.aoe+=/starfire,if=variable.enter_solar&(eclipse.any_next||buff.eclipse_solar.remains<action.starfire.execute_time)\nactions.aoe+=/wrath,if=!variable.enter_solar&(eclipse.any_next||buff.eclipse_lunar.remains<action.wrath.execute_time)\nactions.aoe+=/wild_mushroom,if=astral_power.deficit>variable.passive_asp+20&(!talent.fungal_growth||!talent.waning_twilight||dot.fungal_growth.remains<2&target.time_to_die>7&!prev_gcd.1.wild_mushroom)\nactions.aoe+=/fury_of_elune,if=target.time_to_die>2&(buff.ca_inc.remains>3||cooldown.ca_inc.remains>30&buff.primordial_arcanic_pulsar.value<=280||buff.primordial_arcanic_pulsar.value>=560&astral_power>50)||boss&fight_remains<10\nactions.aoe+=/full_moon,if=astral_power.deficit>variable.passive_asp+40&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.aoe+=/cancel_buff,name=starlord,if=buff.starlord.remains<2&(target.time_to_die>4&(buff.starweavers_warp.up||talent.starlord&buff.starlord.stack<3))\nactions.aoe+=/starfall,if=target.time_to_die>4&(buff.starweavers_warp.up||talent.starlord&buff.starlord.stack<3)\nactions.aoe+=/starsurge,if=buff.starweavers_weft.up&spell_targets.starfire<3\nactions.aoe+=/stellar_flare,cycle_targets=1,if=refreshable&(target.time_to_die-remains-spell_targets.starfire)>8+spell_targets.starfire&astral_power.deficit>variable.passive_asp+8&spell_targets.starfire<(11-talent.umbral_intensity.rank-talent.astral_smolder.rank)\nactions.aoe+=/astral_communion,if=astral_power.deficit>variable.passive_asp+50\nactions.aoe+=/convoke_the_spirits,if=astral_power<50&spell_targets.starfall<3+talent.elunes_guidance&(buff.eclipse_lunar.remains>4||buff.eclipse_solar.remains>4)\nactions.aoe+=/new_moon,if=astral_power.deficit>variable.passive_asp+10\nactions.aoe+=/half_moon,if=astral_power.deficit>variable.passive_asp+20&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.aoe+=/force_of_nature,if=astral_power.deficit>variable.passive_asp+20\nactions.aoe+=/starsurge,if=buff.starweavers_weft.up&spell_targets.starfire<17\nactions.aoe+=/starfire,if=spell_targets>3&buff.eclipse_lunar.up||eclipse.in_lunar\nactions.aoe+=/wrath\nactions.aoe+=/run_action_list,name=fallthru\n\nactions.fallthru=starfall,if=variable.is_aoe\nactions.fallthru+=/starsurge\nactions.fallthru+=/sunfire,cycle_targets=1,if=dot.moonfire.remains>remains*22%18\nactions.fallthru+=/moonfire\n\nactions.st+=/sunfire,cycle_targets=1,if=refreshable&remains<2&(target.time_to_die-remains)>6\nactions.st+=/moonfire,cycle_targets=1,if=refreshable&remains<2&(target.time_to_die-remains)>6\nactions.st+=/stellar_flare,cycle_targets=1,if=refreshable&astral_power.deficit>variable.passive_asp+8&remains<2&(target.time_to_die-remains)>8\nactions.st+=/variable,name=cd_condition_st,value=!druid.no_cds&(cooldown.ca_inc.remains<15&!buff.ca_inc.up&(target.time_to_die>15||boss&fight_remains<25+10*talent.incarnation_chosen_of_elune))\nactions.st+=/cancel_buff,name=starlord,if=buff.starlord.remains<2&(buff.primordial_arcanic_pulsar.value>=550&!buff.ca_inc.up&buff.starweavers_warp.up||buff.primordial_arcanic_pulsar.value>=560&buff.starweavers_weft.up)\nactions.st+=/starfall,if=buff.primordial_arcanic_pulsar.value>=550&!buff.ca_inc.up&buff.starweavers_warp.up\nactions.st+=/starsurge,if=buff.primordial_arcanic_pulsar.value>=560&buff.starweavers_weft.up\nactions.st+=/celestial_alignment,if=variable.cd_condition_st\nactions.st+=/incarnation,if=variable.cd_condition_st\nactions.st+=/warrior_of_elune\nactions.st+=/variable,name=solar_eclipse_st,value=buff.primordial_arcanic_pulsar.value<520&cooldown.ca_inc.remains>5\nactions.st+=/variable,name=enter_eclipse,value=eclipse.any_next||variable.solar_eclipse_st&buff.eclipse_solar.up&(buff.eclipse_solar.remains<action.starfire.cast_time)||!variable.solar_eclipse_st&buff.eclipse_lunar.up&(buff.eclipse_lunar.remains<action.wrath.cast_time)\nactions.st+=/starfire,if=variable.enter_eclipse&variable.solar_eclipse_st\nactions.st+=/wrath,if=variable.enter_eclipse\nactions.st+=/variable,name=convoke_condition,value=buff.ca_inc.remains>4||(cooldown.ca_inc.remains>30||variable.no_cd_talent)&(buff.eclipse_lunar.remains>4||buff.eclipse_solar.remains>4)\nactions.st+=/starsurge,if=action.convoke_the_spirits.known&cooldown.convoke_the_spirits.ready&variable.convoke_condition\nactions.st+=/convoke_the_spirits,if=variable.convoke_condition\nactions.st+=/astral_communion,if=astral_power.deficit>variable.passive_asp+55\nactions.st+=/force_of_nature,if=astral_power.deficit>variable.passive_asp+20\nactions.st+=/fury_of_elune,if=target.time_to_die>2&(buff.ca_inc.remains>3||cooldown.ca_inc.remains>30&buff.primordial_arcanic_pulsar.value<=280||buff.primordial_arcanic_pulsar.value>=560&astral_power>50)||boss&fight_remains<10\nactions.st+=/starfall,if=buff.starweavers_warp.up\nactions.st+=/cancel_buff,name=starlord,if=buff.starlord.remains<2&(talent.starlord&buff.starlord.stack<3||talent.rattle_the_stars&buff.rattled_stars.up&buff.rattled_stars.remains<gcd.max)\nactions.st+=/starsurge,if=talent.starlord&buff.starlord.stack<3||talent.rattle_the_stars&buff.rattled_stars.up&buff.rattled_stars.remains<gcd.max\nactions.st+=/sunfire,cycle_targets=1,if=refreshable&astral_power.deficit>variable.passive_asp+3\nactions.st+=/moonfire,cycle_targets=1,if=refreshable&astral_power.deficit>variable.passive_asp+3\nactions.st+=/stellar_flare,cycle_targets=1,if=refreshable&astral_power.deficit>variable.passive_asp+8\nactions.st+=/new_moon,if=astral_power.deficit>variable.passive_asp+10\nactions.st+=/half_moon,if=astral_power.deficit>variable.passive_asp+20&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.st+=/full_moon,if=astral_power.deficit>variable.passive_asp+40&(buff.eclipse_lunar.remains>execute_time||buff.eclipse_solar.remains>execute_time)\nactions.st+=/cancel_buff,name=starlord,if=buff.starlord.remains<2&(buff.starweavers_weft.up||astral_power.deficit<variable.passive_asp+action.wrath.energize_amount+(action.starfire.energize_amount+variable.passive_asp)*(buff.eclipse_solar.remains<(gcd.max*3))||talent.astral_communion&cooldown.astral_communion.remains<3||fight_remains<5)\nactions.st+=/starsurge,if=buff.starweavers_weft.up||astral_power.deficit<variable.passive_asp+action.wrath.energize_amount+(action.starfire.energize_amount+variable.passive_asp)*(buff.eclipse_solar.remains<(gcd.max*3))||talent.astral_communion&cooldown.astral_communion.remains<3||fight_remains<5\nactions.st+=/wild_mushroom,if=talent.fungal_growth&(boss||target.time_to_die>(full_recharge_time-7)||fight_remains<10)\nactions.st+=/starfire,if=buff.ca_inc.up&buff.warrior_of_elune.up&buff.warrior_of_elune.stack=1\nactions.st+=/wrath\nactions.st+=/run_action_list,name=fallthru",
					["spec"] = 102,
				},
				["Havoc"] = {
					["source"] = "SimulationCraft",
					["builtIn"] = true,
					["date"] = 20230227,
					["spec"] = 577,
					["desc"] = "2023-02-18:  Options regarding Fel Rush and Vengeful Retreat were revised. Only the filler/movement recommendations can be turned off using Havoc's specialization settings.  The entries associated with Isolated Prey, Momentum, Unbound Chaos, Initiative, and Vengeful Retreat may always be recommended if those talents are selected.\n\n2023-02-27:  If Fel Rush and Vengeful Retreat are disabled (despite Momentum and Tactical Retreat being talented), the priority will allow Essence Break to be recommended.",
					["profile"] = "actions.precombat+=/variable,name=trinket_sync_slot,value=1,if=trinket.1.has_stat.any_dps&(!trinket.2.has_stat.any_dps||trinket.1.cooldown.duration>=trinket.2.cooldown.duration)\nactions.precombat+=/variable,name=trinket_sync_slot,value=2,if=trinket.2.has_stat.any_dps&(!trinket.1.has_stat.any_dps||trinket.2.cooldown.duration>trinket.1.cooldown.duration)\nactions.precombat+=/arcane_torrent,if=fury.deficit>15\nactions.precombat+=/use_item,name=algethar_puzzle_box,if=cooldown.metamorphosis.remains<5\nactions.precombat+=/sigil_of_flame\nactions.precombat+=/immolation_aura\n\nactions=disrupt\nactions+=/consume_magic\n# Blade Dance with First Blood, Trail of Ruin, or at 2+ targets\nactions+=/variable,name=blade_dance,value=talent.first_blood||talent.trail_of_ruin||talent.chaos_theory&buff.chaos_theory.down||spell_targets.blade_dance1>1\nactions+=/variable,name=pooling_for_blade_dance,value=variable.blade_dance&fury<(75-talent.demon_blades*20)&cooldown.blade_dance.remains<gcd.max\nactions+=/variable,name=pooling_for_eye_beam,value=talent.demonic&!talent.blind_fury&cooldown.eye_beam.remains<(gcd.max*2)&fury.deficit>20\nactions+=/variable,name=waiting_for_momentum,value=talent.momentum&!buff.momentum.up\nactions+=/call_action_list,name=cooldown,if=gcd.remains=0\n## actions+=/pick_up_fragment,type=demon,if=demon_soul_fragments>0\n## actions+=/pick_up_fragment,mode=nearest,if=talent.demonic_appetite&fury.deficit>=35&(!cooldown.eye_beam.ready||fury<30)\nactions+=/annihilation,if=buff.inner_demon.up&cooldown.metamorphosis.remains<=gcd*3\nactions+=/vengeful_retreat,use_off_gcd=1,if=talent.initiative&talent.essence_break&time>1&gcd.remains<0.4&(cooldown.essence_break.remains>15||cooldown.essence_break.remains<gcd.max&(!talent.demonic||buff.metamorphosis.up||cooldown.eye_beam.remains>15+(10*talent.cycle_of_hatred)))\nactions+=/vengeful_retreat,use_off_gcd=1,if=talent.initiative&!talent.essence_break&time>1&!buff.momentum.up\nactions+=/fel_rush,if=(buff.unbound_chaos.up||variable.waiting_for_momentum&(!talent.unbound_chaos||!cooldown.immolation_aura.ready))&(charges=2||(raid_event.movement.in>10&raid_event.adds.in>10))\n# Essence Break allowed without Momentum/Tactical Retreat if Fel Rush and Vengeful Retreat are disabled.\nactions+=/essence_break,if=(active_enemies>desired_targets||raid_event.adds.in>40)&(!variable.waiting_for_momentum||action.fel_rush.disabled&action.vengeful_retreat.disabled)&fury>40&(cooldown.eye_beam.remains>8||buff.metamorphosis.up)&(!talent.tactical_retreat||buff.tactical_retreat.up||action.vengeful_retreat.disabled)\nactions+=/death_sweep,if=variable.blade_dance&(!talent.essence_break||cooldown.essence_break.remains>(cooldown.death_sweep.duration-4))\nactions+=/fel_barrage,if=active_enemies>desired_targets||raid_event.adds.in>30\nactions+=/glaive_tempest,if=active_enemies>desired_targets||raid_event.adds.in>10\nactions+=/annihilation,if=buff.inner_demon.up&cooldown.eye_beam.remains<=gcd\nactions+=/eye_beam,if=active_enemies>desired_targets||raid_event.adds.in>(40-talent.cycle_of_hatred*15)&!debuff.essence_break.up\nactions+=/blade_dance,if=variable.blade_dance&(cooldown.eye_beam.remains>5||!talent.demonic||(raid_event.adds.in>cooldown&raid_event.adds.in<25))\nactions+=/throw_glaive,if=talent.soulrend&(active_enemies>desired_targets||raid_event.adds.in>full_recharge_time+9)&spell_targets>=(2-talent.furious_throws)&!debuff.essence_break.up\nactions+=/annihilation,if=!variable.pooling_for_blade_dance\nactions+=/throw_glaive,if=talent.serrated_glaive&cooldown.eye_beam.remains<4&!debuff.serrated_glaive.up&!debuff.essence_break.up\nactions+=/immolation_aura,if=!buff.immolation_aura.up&(!talent.ragefire||active_enemies>desired_targets||raid_event.adds.in>15)\nactions+=/fel_rush,if=talent.isolated_prey&active_enemies=1&fury.deficit>=35\nactions+=/felblade,if=fury.deficit>=40\nactions+=/sigil_of_flame,if=active_enemies>desired_targets\nactions+=/chaos_strike,if=!variable.pooling_for_blade_dance&!variable.pooling_for_eye_beam\nactions+=/fel_rush,if=settings.fel_rush_filler&!talent.momentum&talent.demon_blades&!cooldown.eye_beam.ready&(charges=2||(raid_event.movement.in>10&raid_event.adds.in>10))\nactions+=/demons_bite,cycle_targets=1,if=talent.burning_wound&debuff.burning_wound.remains<4&active_dot.burning_wound<(spell_targets>?3)\nactions+=/fel_rush,if=settings.fel_rush_filler&!talent.momentum&!talent.demon_blades&spell_targets>1&(charges=2||(raid_event.movement.in>10&raid_event.adds.in>10))\nactions+=/sigil_of_flame,if=raid_event.adds.in>15&fury.deficit>=30\nactions+=/demons_bite\nactions+=/fel_rush,if=settings.fel_rush_filler&(movement.distance>15||(buff.out_of_range.up&!talent.momentum))\nactions+=/vengeful_retreat,if=settings.retreat_filler&!talent.initiative&movement.distance>15\nactions+=/throw_glaive,if=(talent.demon_blades||buff.out_of_range.up)&!debuff.essence_break.up\n\nactions.cooldown+=/sigil_of_misery,if=talent.misery_in_defeat&!target.is_boss&target.time_to_die>10&(cooldown.metamorphosis.remains<6||talent.demonic&cooldown.eye_beam.remains<6||buff.metamorphosis.remains>10)\n# Cast Metamorphosis if we will get a full Eye Beam refresh or if the encounter is almost over\nactions.cooldown+=/metamorphosis,if=!talent.demonic&((!talent.chaotic_transformation||cooldown.eye_beam.remains>20)&active_enemies>desired_targets||raid_event.adds.in>60||boss&fight_remains<25)\nactions.cooldown+=/metamorphosis,if=talent.demonic&(!talent.chaotic_transformation||cooldown.eye_beam.remains>20&(!variable.blade_dance||cooldown.blade_dance.remains>gcd.max)||boss&fight_remains<25)\nactions.cooldown+=/potion,if=buff.metamorphosis.remains>25||buff.metamorphosis.up&cooldown.metamorphosis.ready||boss&fight_remains<60\n# Default use item logic\nactions.cooldown+=/use_items,slots=trinket1,if=variable.trinket_sync_slot=1&(buff.metamorphosis.up||(!talent.demonic.enabled&cooldown.metamorphosis.remains>(fight_remains>?trinket.1.cooldown.duration%2))||fight_remains<=20)||(variable.trinket_sync_slot=2&!trinket.2.cooldown.ready)||!variable.trinket_sync_slot\nactions.cooldown+=/use_items,slots=trinket2,if=variable.trinket_sync_slot=2&(buff.metamorphosis.up||(!talent.demonic.enabled&cooldown.metamorphosis.remains>(fight_remains>?trinket.2.cooldown.duration%2))||fight_remains<=20)||(variable.trinket_sync_slot=1&!trinket.1.cooldown.ready)||!variable.trinket_sync_slot\nactions.cooldown+=/the_hunt,if=(!talent.momentum||!buff.momentum.up)\nactions.cooldown+=/elysian_decree,if=(active_enemies>desired_targets||raid_event.adds.in>30)",
					["version"] = 20230227,
					["warnings"] = "The import for 'cooldown' required some automated changes.\nLine 1: Converted 'talent.misery_in_defeat' to 'talent.misery_in_defeat.enabled' (1x).\nLine 1: Converted 'talent.demonic' to 'talent.demonic.enabled' (1x).\nLine 2: Converted 'talent.demonic' to 'talent.demonic.enabled' (1x).\nLine 2: Converted 'talent.chaotic_transformation' to 'talent.chaotic_transformation.enabled' (1x).\nLine 3: Converted 'talent.demonic' to 'talent.demonic.enabled' (1x).\nLine 3: Converted 'talent.chaotic_transformation' to 'talent.chaotic_transformation.enabled' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 5: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 5: Converted 'trinket.2.cooldown.ready' to 'trinket.t2.cooldown.ready' (1x).\nLine 5: Converted 'trinket.2.cooldown.ready' to 'trinket.t2.cooldown.ready'.\nLine 5: Converted operations in 'variable.trinket_sync_slot=1&(buff.metamorphosis.up||(!talent.demonic.enabled&cooldown.metamorphosis.remains>(fight_remains>?trinket.t1.cooldown.duration%2))||fight_remains<=20)||(variable.trinket_sync_slot=2&!trinket.t2.cooldown.ready)||!variable.trinket_sync_slot' to 'variable.trinket_sync_slot=1&(buff.metamorphosis.up||(!talent.demonic.enabled&cooldown.metamorphosis.remains>(fight_remains>?trinket.t1.cooldown.duration/2))||fight_remains<=20)||(variable.trinket_sync_slot=2&!trinket.t2.cooldown.ready)||!variable.trinket_sync_slot'.\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 6: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 6: Converted 'trinket.1.cooldown.ready' to 'trinket.t1.cooldown.ready' (1x).\nLine 6: Converted 'trinket.1.cooldown.ready' to 'trinket.t1.cooldown.ready'.\nLine 6: Converted operations in 'variable.trinket_sync_slot=2&(buff.metamorphosis.up||(!talent.demonic.enabled&cooldown.metamorphosis.remains>(fight_remains>?trinket.t2.cooldown.duration%2))||fight_remains<=20)||(variable.trinket_sync_slot=1&!trinket.t1.cooldown.ready)||!variable.trinket_sync_slot' to 'variable.trinket_sync_slot=2&(buff.metamorphosis.up||(!talent.demonic.enabled&cooldown.metamorphosis.remains>(fight_remains>?trinket.t2.cooldown.duration/2))||fight_remains<=20)||(variable.trinket_sync_slot=1&!trinket.t1.cooldown.ready)||!variable.trinket_sync_slot'.\nLine 7: Converted 'talent.momentum' to 'talent.momentum.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 3: Converted 'talent.first_blood' to 'talent.first_blood.enabled' (1x).\nLine 3: Converted 'talent.trail_of_ruin' to 'talent.trail_of_ruin.enabled' (1x).\nLine 3: Converted 'talent.chaos_theory' to 'talent.chaos_theory.enabled' (1x).\nLine 4: Converted 'talent.demon_blades' to 'talent.demon_blades.enabled' (1x).\nLine 5: Converted 'talent.demonic' to 'talent.demonic.enabled' (1x).\nLine 5: Converted 'talent.blind_fury' to 'talent.blind_fury.enabled' (1x).\nLine 6: Converted 'talent.momentum' to 'talent.momentum.enabled' (1x).\nLine 9: Converted 'talent.initiative' to 'talent.initiative.enabled' (1x).\nLine 9: Converted 'talent.essence_break' to 'talent.essence_break.enabled' (1x).\nLine 9: Converted 'talent.demonic' to 'talent.demonic.enabled' (1x).\nLine 9: Converted 'talent.cycle_of_hatred' to 'talent.cycle_of_hatred.enabled' (1x).\nLine 10: Converted 'talent.initiative' to 'talent.initiative.enabled' (1x).\nLine 10: Converted 'talent.essence_break' to 'talent.essence_break.enabled' (1x).\nLine 11: Converted 'talent.unbound_chaos' to 'talent.unbound_chaos.enabled' (1x).\nLine 12: Converted 'talent.tactical_retreat' to 'talent.tactical_retreat.enabled' (1x).\nLine 13: Converted 'talent.essence_break' to 'talent.essence_break.enabled' (1x).\nLine 17: Converted 'talent.cycle_of_hatred' to 'talent.cycle_of_hatred.enabled' (1x).\nLine 18: Converted 'talent.demonic' to 'talent.demonic.enabled' (1x).\nLine 19: Converted 'talent.soulrend' to 'talent.soulrend.enabled' (1x).\nLine 19: Converted 'talent.furious_throws' to 'talent.furious_throws.enabled' (1x).\nLine 21: Converted 'talent.serrated_glaive' to 'talent.serrated_glaive.enabled' (1x).\nLine 22: Converted 'talent.ragefire' to 'talent.ragefire.enabled' (1x).\nLine 23: Converted 'talent.isolated_prey' to 'talent.isolated_prey.enabled' (1x).\nLine 27: Converted 'talent.momentum' to 'talent.momentum.enabled' (1x).\nLine 27: Converted 'talent.demon_blades' to 'talent.demon_blades.enabled' (1x).\nLine 28: Converted 'talent.burning_wound' to 'talent.burning_wound.enabled' (1x).\nLine 29: Converted 'talent.momentum' to 'talent.momentum.enabled' (1x).\nLine 29: Converted 'talent.demon_blades' to 'talent.demon_blades.enabled' (1x).\nLine 32: Converted 'talent.momentum' to 'talent.momentum.enabled' (1x).\nLine 33: Converted 'talent.initiative' to 'talent.initiative.enabled' (1x).\nLine 34: Converted 'talent.demon_blades' to 'talent.demon_blades.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 1: Converted 'trinket.1.has_stat.any_dps' to 'trinket.t1.has_stat.any_dps' (1x).\nLine 1: Converted 'trinket.2.has_stat.any_dps' to 'trinket.t2.has_stat.any_dps' (1x).\nLine 1: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 1: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\nLine 1: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 1: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 2: Converted 'trinket.2.has_stat.any_dps' to 'trinket.t2.has_stat.any_dps' (1x).\nLine 2: Converted 'trinket.1.has_stat.any_dps' to 'trinket.t1.has_stat.any_dps' (1x).\nLine 2: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration' (1x).\nLine 2: Converted 'trinket.2.cooldown.duration' to 'trinket.t2.cooldown.duration'.\nLine 2: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration' (1x).\nLine 2: Converted 'trinket.1.cooldown.duration' to 'trinket.t1.cooldown.duration'.\n\nImported 3 action lists.\n",
					["lists"] = {
						["default"] = {
							{
								["action"] = "disrupt",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "consume_magic",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.first_blood.enabled || talent.trail_of_ruin.enabled || talent.chaos_theory.enabled & buff.chaos_theory.down || spell_targets.blade_dance1 > 1",
								["description"] = "Blade Dance with First Blood, Trail of Ruin, or at 2+ targets",
								["var_name"] = "blade_dance",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.blade_dance & fury < ( 75 - talent.demon_blades.enabled * 20 ) & cooldown.blade_dance.remains < gcd.max",
								["var_name"] = "pooling_for_blade_dance",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.demonic.enabled & ! talent.blind_fury.enabled & cooldown.eye_beam.remains < ( gcd.max * 2 ) & fury.deficit > 20",
								["var_name"] = "pooling_for_eye_beam",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.momentum.enabled & ! buff.momentum.up",
								["var_name"] = "waiting_for_momentum",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "gcd.remains = 0",
								["action"] = "call_action_list",
								["list_name"] = "cooldown",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.inner_demon.up & cooldown.metamorphosis.remains <= gcd.max * 3",
								["action"] = "annihilation",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.initiative.enabled & talent.essence_break.enabled & time > 1 & gcd.remains < 0.4 & ( cooldown.essence_break.remains > 15 || cooldown.essence_break.remains < gcd.max & ( ! talent.demonic.enabled || buff.metamorphosis.up || cooldown.eye_beam.remains > 15 + ( 10 * talent.cycle_of_hatred.enabled ) ) )",
								["action"] = "vengeful_retreat",
								["use_off_gcd"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.initiative.enabled & ! talent.essence_break.enabled & time > 1 & ! buff.momentum.up",
								["action"] = "vengeful_retreat",
								["use_off_gcd"] = 1,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( buff.unbound_chaos.up || variable.waiting_for_momentum & ( ! talent.unbound_chaos.enabled || ! cooldown.immolation_aura.ready ) ) & ( charges = 2 || ( raid_event.movement.in > 10 & raid_event.adds.in > 10 ) )",
								["action"] = "fel_rush",
							}, -- [11]
							{
								["enabled"] = true,
								["description"] = "Essence Break allowed without Momentum/Tactical Retreat if Fel Rush and Vengeful Retreat are disabled.",
								["criteria"] = "( active_enemies > desired_targets || raid_event.adds.in > 40 ) & ( ! variable.waiting_for_momentum || action.fel_rush.disabled & action.vengeful_retreat.disabled ) & fury > 40 & ( cooldown.eye_beam.remains > 8 || buff.metamorphosis.up ) & ( ! talent.tactical_retreat.enabled || buff.tactical_retreat.up || action.vengeful_retreat.disabled )",
								["action"] = "essence_break",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "variable.blade_dance & ( ! talent.essence_break.enabled || cooldown.essence_break.remains > ( cooldown.death_sweep.duration - 4 ) )",
								["action"] = "death_sweep",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > desired_targets || raid_event.adds.in > 30",
								["action"] = "fel_barrage",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > desired_targets || raid_event.adds.in > 10",
								["action"] = "glaive_tempest",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.inner_demon.up & cooldown.eye_beam.remains <= gcd.max",
								["action"] = "annihilation",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > desired_targets || raid_event.adds.in > ( 40 - talent.cycle_of_hatred.enabled * 15 ) & ! debuff.essence_break.up",
								["action"] = "eye_beam",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "variable.blade_dance & ( cooldown.eye_beam.remains > 5 || ! talent.demonic.enabled || ( raid_event.adds.in > action_cooldown & raid_event.adds.in < 25 ) )",
								["action"] = "blade_dance",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "talent.soulrend.enabled & ( active_enemies > desired_targets || raid_event.adds.in > full_recharge_time + 9 ) & spell_targets >= ( 2 - talent.furious_throws.enabled ) & ! debuff.essence_break.up",
								["action"] = "throw_glaive",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_for_blade_dance",
								["action"] = "annihilation",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "talent.serrated_glaive.enabled & cooldown.eye_beam.remains < 4 & ! debuff.serrated_glaive.up & ! debuff.essence_break.up",
								["action"] = "throw_glaive",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "! buff.immolation_aura.up & ( ! talent.ragefire.enabled || active_enemies > desired_targets || raid_event.adds.in > 15 )",
								["action"] = "immolation_aura",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "talent.isolated_prey.enabled & active_enemies = 1 & fury.deficit >= 35",
								["action"] = "fel_rush",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit >= 40",
								["action"] = "felblade",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > desired_targets",
								["action"] = "sigil_of_flame",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "! variable.pooling_for_blade_dance & ! variable.pooling_for_eye_beam",
								["action"] = "chaos_strike",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "settings.fel_rush_filler & ! talent.momentum.enabled & talent.demon_blades.enabled & ! cooldown.eye_beam.ready & ( charges = 2 || ( raid_event.movement.in > 10 & raid_event.adds.in > 10 ) )",
								["action"] = "fel_rush",
							}, -- [27]
							{
								["enabled"] = true,
								["action"] = "demons_bite",
								["criteria"] = "talent.burning_wound.enabled & debuff.burning_wound.remains < 4 & active_dot.burning_wound < ( spell_targets >? 3 )",
								["cycle_targets"] = 1,
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "settings.fel_rush_filler & ! talent.momentum.enabled & ! talent.demon_blades.enabled & spell_targets > 1 & ( charges = 2 || ( raid_event.movement.in > 10 & raid_event.adds.in > 10 ) )",
								["action"] = "fel_rush",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 15 & fury.deficit >= 30",
								["action"] = "sigil_of_flame",
							}, -- [30]
							{
								["action"] = "demons_bite",
								["enabled"] = true,
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "settings.fel_rush_filler & ( movement.distance > 15 || ( buff.out_of_range.up & ! talent.momentum.enabled ) )",
								["action"] = "fel_rush",
							}, -- [32]
							{
								["enabled"] = true,
								["criteria"] = "settings.retreat_filler & ! talent.initiative.enabled & movement.distance > 15",
								["action"] = "vengeful_retreat",
							}, -- [33]
							{
								["enabled"] = true,
								["criteria"] = "( talent.demon_blades.enabled || buff.out_of_range.up ) & ! debuff.essence_break.up",
								["action"] = "throw_glaive",
							}, -- [34]
						},
						["cooldown"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.misery_in_defeat.enabled & ! target.is_boss & target.time_to_die > 10 & ( cooldown.metamorphosis.remains < 6 || talent.demonic.enabled & cooldown.eye_beam.remains < 6 || buff.metamorphosis.remains > 10 )",
								["action"] = "sigil_of_misery",
							}, -- [1]
							{
								["enabled"] = true,
								["description"] = "Cast Metamorphosis if we will get a full Eye Beam refresh or if the encounter is almost over",
								["criteria"] = "! talent.demonic.enabled & ( ( ! talent.chaotic_transformation.enabled || cooldown.eye_beam.remains > 20 ) & active_enemies > desired_targets || raid_event.adds.in > 60 || boss & fight_remains < 25 )",
								["action"] = "metamorphosis",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.demonic.enabled & ( ! talent.chaotic_transformation.enabled || cooldown.eye_beam.remains > 20 & ( ! variable.blade_dance || cooldown.blade_dance.remains > gcd.max ) || boss & fight_remains < 25 )",
								["action"] = "metamorphosis",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.metamorphosis.remains > 25 || buff.metamorphosis.up & cooldown.metamorphosis.ready || boss & fight_remains < 60",
								["action"] = "potion",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.trinket_sync_slot = 1 & ( buff.metamorphosis.up || ( ! talent.demonic.enabled & cooldown.metamorphosis.remains > ( fight_remains >? trinket.t1.cooldown.duration / 2 ) ) || fight_remains <= 20 ) || ( variable.trinket_sync_slot = 2 & ! trinket.t2.cooldown.ready ) || ! variable.trinket_sync_slot",
								["description"] = "Default use item logic",
								["slots"] = "trinket1",
								["action"] = "trinket1",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.trinket_sync_slot = 2 & ( buff.metamorphosis.up || ( ! talent.demonic.enabled & cooldown.metamorphosis.remains > ( fight_remains >? trinket.t2.cooldown.duration / 2 ) ) || fight_remains <= 20 ) || ( variable.trinket_sync_slot = 1 & ! trinket.t1.cooldown.ready ) || ! variable.trinket_sync_slot",
								["slots"] = "trinket2",
								["action"] = "trinket2",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( ! talent.momentum.enabled || ! buff.momentum.up )",
								["action"] = "the_hunt",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "( active_enemies > desired_targets || raid_event.adds.in > 30 )",
								["action"] = "elysian_decree",
							}, -- [8]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "1",
								["criteria"] = "trinket.t1.has_stat.any_dps & ( ! trinket.t2.has_stat.any_dps || trinket.t1.cooldown.duration >= trinket.t2.cooldown.duration )",
								["var_name"] = "trinket_sync_slot",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "2",
								["criteria"] = "trinket.t2.has_stat.any_dps & ( ! trinket.t1.has_stat.any_dps || trinket.t2.cooldown.duration > trinket.t1.cooldown.duration )",
								["var_name"] = "trinket_sync_slot",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "fury.deficit > 15",
								["action"] = "arcane_torrent",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.metamorphosis.remains < 5",
								["name"] = "algethar_puzzle_box",
								["action"] = "algethar_puzzle_box",
							}, -- [4]
							{
								["action"] = "sigil_of_flame",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "immolation_aura",
								["enabled"] = true,
							}, -- [6]
						},
					},
					["author"] = "SimC",
				},
				["Arms"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230209,
					["author"] = "SimulationCraft",
					["desc"] = "",
					["lists"] = {
						["single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind > 1",
								["action"] = "sweeping_strikes",
							}, -- [1]
							{
								["action"] = "mortal_strike",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "remains <= gcd.max || talent.tide_of_blood.enabled & cooldown.skullsplitter.remains <= gcd.max & ( cooldown.colossus_smash.remains <= gcd.max || debuff.colossus_smash.up ) & dot.rend.remains < dot.rend.duration * 0.85",
								["action"] = "rend",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.warlords_torment.enabled & rage.pct < 33 & ( cooldown.colossus_smash.ready || debuff.colossus_smash.up || buff.test_of_might.up ) || ! talent.warlords_torment.enabled & ( cooldown.colossus_smash.ready || debuff.colossus_smash.up )",
								["action"] = "avatar",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.colossus_smash.remains <= gcd.max || cooldown.warbreaker.remains <= gcd.max",
								["action"] = "spear_of_bastion",
							}, -- [5]
							{
								["action"] = "warbreaker",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "colossus_smash",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.test_of_might.up || talent.test_of_might.enabled & debuff.colossus_smash.up & rage.pct < 33 || ! talent.test_of_might.enabled & debuff.colossus_smash.up",
								["action"] = "thunderous_roar",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.hurricane.enabled & ( buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up ) || talent.unhinged.enabled & ( buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up )",
								["action"] = "bladestorm",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.tide_of_blood.enabled & dot.rend.remains & ( debuff.colossus_smash.up || cooldown.colossus_smash.remains > gcd.max * 4 & buff.test_of_might.up || ! talent.test_of_might.enabled & cooldown.colossus_smash.remains > gcd.max * 4 ) || rage < 30",
								["action"] = "skullsplitter",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.sudden_death.react",
								["action"] = "execute",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "talent.sonic_boom.enabled",
								["action"] = "shockwave",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.anger_management.enabled || talent.test_of_might.enabled & debuff.colossus_smash.up",
								["action"] = "ignore_pain",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_of_swords.enabled & talent.battlelord.enabled & rage.pct > 80 & debuff.colossus_smash.up",
								["action"] = "whirlwind",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "charges = 2 & ! talent.battlelord.enabled & ( debuff.colossus_smash.down || rage.pct < 25 ) || talent.battlelord.enabled",
								["action"] = "overpower",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_of_swords.enabled || talent.fervor_of_battle.enabled & active_enemies > 1",
								["action"] = "whirlwind",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "talent.battlelord.enabled & talent.blood_and_thunder.enabled",
								["action"] = "thunder_clap",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.down & rage.pct < 50 & ! talent.battlelord.enabled || rage.pct < 25",
								["action"] = "overpower",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.merciless_bonegrinder.up",
								["action"] = "whirlwind",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier29_2pc & ! talent.crushing_force.enabled",
								["action"] = "cleave",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "rage > 30 & ( ! talent.fervor_of_battle.enabled || talent.fervor_of_battle.enabled & active_enemies = 1 )",
								["action"] = "slam",
							}, -- [21]
							{
								["action"] = "bladestorm",
								["enabled"] = true,
							}, -- [22]
							{
								["action"] = "cleave",
								["enabled"] = true,
							}, -- [23]
							{
								["action"] = "wrecking_throw",
								["enabled"] = true,
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "remains < duration * 0.3",
								["action"] = "rend",
							}, -- [25]
						},
						["default"] = {
							{
								["enabled"] = true,
								["criteria"] = "time <= 0.5 || movement.distance > 5",
								["action"] = "charge",
							}, -- [1]
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "gcd.remains = 0 & debuff.colossus_smash.remains > 8 || boss & fight_remains < 25",
								["action"] = "potion",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.avatar.remains < 3",
								["action"] = "algethar_puzzle_box",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.avatar.up",
								["action"] = "irideus_fragment",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! buff.avatar.up & ! debuff.colossus_smash.up",
								["action"] = "manic_grieftorch",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "gcd.remains = 0 & debuff.colossus_smash.remains > 8 || boss & fight_remains < 25",
								["action"] = "gladiators_badge",
							}, -- [7]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.mortal_strike.remains > 1.5 & rage < 50",
								["action"] = "arcane_torrent",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.down & cooldown.mortal_strike.remains",
								["action"] = "lights_judgment",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.down & cooldown.mortal_strike.remains",
								["action"] = "bag_of_tricks",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.remains > 6",
								["action"] = "berserking",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.up",
								["action"] = "ancestral_call",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.up",
								["action"] = "blood_fury",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.up",
								["action"] = "ancestral_call",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "raid_event.adds.exists || active_enemies > 2",
								["list_name"] = "hac",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["cycle_targets"] = 1,
								["strict"] = 1,
								["criteria"] = "( talent.massacre.enabled & target.health.pct < 35 ) || target.health.pct < 20",
								["list_name"] = "execute",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "! raid_event.adds.exists",
								["list_name"] = "single_target",
							}, -- [18]
						},
						["precombat"] = {
							{
								["action"] = "battle_stance",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "battle_shout",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "algethar_puzzle_box",
								["action"] = "algethar_puzzle_box",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! talent.titans_torment.enabled & ! talent.blademasters_torment.enabled",
								["action"] = "avatar",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.reckless_abandon.enabled",
								["action"] = "recklessness",
							}, -- [5]
						},
						["execute"] = {
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind > 1",
								["action"] = "sweeping_strikes",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "remains <= gcd.max & ( ! talent.warbreaker.enabled & cooldown.colossus_smash.remains < 4 || talent.warbreaker.enabled & cooldown.warbreaker.remains < 4 ) & target.time_to_die > 12",
								["action"] = "rend",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.colossus_smash.ready || debuff.colossus_smash.up || boss & fight_remains < 20",
								["action"] = "avatar",
							}, -- [3]
							{
								["action"] = "warbreaker",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "colossus_smash",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up",
								["action"] = "thunderous_roar",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "debuff.colossus_smash.up || buff.test_of_might.up",
								["action"] = "spear_of_bastion",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "rage < 40",
								["action"] = "skullsplitter",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind > 2 & dot.deep_wounds.remains < gcd.max",
								["action"] = "cleave",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "rage < 40 & buff.martial_prowess.stack < 2",
								["action"] = "overpower",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "debuff.executioners_precision.stack = 2 || dot.deep_wounds.remains <= gcd.max",
								["action"] = "mortal_strike",
							}, -- [11]
							{
								["action"] = "execute",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "talent.sonic_boom.enabled",
								["action"] = "shockwave",
							}, -- [13]
							{
								["action"] = "overpower",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "bladestorm",
								["enabled"] = true,
							}, -- [15]
						},
						["hac"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.juggernaut.up & buff.juggernaut.remains < gcd.max",
								["action"] = "execute",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & talent.thunder_clap.enabled & talent.blood_and_thunder.enabled & talent.rend.enabled & dot.rend.remains <= dot.rend.duration * 0.3",
								["action"] = "thunder_clap",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 2 & ( cooldown.bladestorm.remains > 15 || ! talent.bladestorm.enabled )",
								["action"] = "sweeping_strikes",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & remains <= gcd.max & ( target.health.pct > 20 || talent.massacre.enabled & target.health.pct > 35 ) || talent.tide_of_blood.enabled & cooldown.skullsplitter.remains <= gcd.max & ( cooldown.colossus_smash.remains <= gcd.max || debuff.colossus_smash.up ) & dot.rend.remains < dot.rend.duration * 0.85",
								["action"] = "rend",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 15 || talent.blademasters_torment.enabled & active_enemies > 1 || boss & fight_remains < 20",
								["action"] = "avatar",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 22 || active_enemies > 1",
								["action"] = "warbreaker",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "colossus_smash",
								["criteria"] = "( target.health.pct < 20 || talent.massacre.enabled & target.health.pct < 35 )",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["action"] = "colossus_smash",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up ) & raid_event.adds.in > 15 || active_enemies > 1 & dot.deep_wounds.remains",
								["action"] = "thunderous_roar",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up ) & raid_event.adds.in > 15",
								["action"] = "spear_of_bastion",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "talent.unhinged.enabled & ( buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up )",
								["action"] = "bladestorm",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ( buff.test_of_might.up || ! talent.test_of_might.enabled & debuff.colossus_smash.up ) & raid_event.adds.in > 30 || active_enemies > 1 & dot.deep_wounds.remains",
								["action"] = "bladestorm",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 || ! talent.battlelord.enabled & buff.merciless_bonegrinder.up & cooldown.mortal_strike.remains > gcd.max",
								["action"] = "cleave",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 || talent.storm_of_swords.enabled & ( buff.merciless_bonegrinder.up || buff.hurricane.up )",
								["action"] = "whirlwind",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "rage < 40 || talent.tide_of_blood.enabled & dot.rend.remains & ( buff.sweeping_strikes.up & active_enemies >= 2 || debuff.colossus_smash.up || buff.test_of_might.up )",
								["action"] = "skullsplitter",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.sweeping_strikes.up & talent.dreadnaught.enabled",
								["action"] = "overpower",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "mortal_strike",
								["criteria"] = "debuff.executioners_precision.stack = 2 || dot.deep_wounds.remains <= gcd.max || talent.dreadnaught.enabled & talent.battlelord.enabled & active_enemies <= 2",
								["cycle_targets"] = 1,
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "execute",
								["criteria"] = "buff.sudden_death.react || active_enemies <= 2 & ( target.health.pct < 20 || talent.massacre.enabled & target.health.pct < 35 ) || buff.sweeping_strikes.up",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 15",
								["action"] = "thunderous_roar",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 & talent.sonic_boom.enabled",
								["action"] = "shockwave",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & ( charges = 2 & ! talent.battlelord.enabled & ( debuff.colossus_smash.down || rage.pct < 25 ) || talent.battlelord.enabled )",
								["action"] = "overpower",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & ! talent.battlelord.enabled & rage.pct > 70",
								["action"] = "slam",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "charges = 2 & ( ! talent.test_of_might.enabled || talent.test_of_might.enabled & debuff.colossus_smash.down || talent.battlelord.enabled ) || rage < 70",
								["action"] = "overpower",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2",
								["action"] = "thunder_clap",
							}, -- [24]
							{
								["action"] = "mortal_strike",
								["enabled"] = true,
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & dot.rend.remains < duration * 0.3",
								["action"] = "rend",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "talent.storm_of_swords.enabled || talent.fervor_of_battle.enabled & active_enemies > 1",
								["action"] = "whirlwind",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "! talent.crushing_force.enabled",
								["action"] = "cleave",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "talent.battlelord.enabled & talent.anger_management.enabled & rage > 30 & ( target.health.pct > 20 || talent.massacre.enabled & target.health.pct > 35 )",
								["action"] = "ignore_pain",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "talent.crushing_force.enabled & rage > 30 & ( talent.fervor_of_battle.enabled & active_enemies = 1 || ! talent.fervor_of_battle.enabled )",
								["action"] = "slam",
							}, -- [30]
							{
								["enabled"] = true,
								["criteria"] = "talent.sonic_boom.enabled",
								["action"] = "shockwave",
							}, -- [31]
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 30",
								["action"] = "bladestorm",
							}, -- [32]
							{
								["action"] = "wrecking_throw",
								["enabled"] = true,
							}, -- [33]
						},
					},
					["version"] = 20230209,
					["warnings"] = "The import for 'single_target' required some automated changes.\nLine 3: Converted 'talent.tide_of_blood' to 'talent.tide_of_blood.enabled' (1x).\nLine 4: Converted 'talent.warlords_torment' to 'talent.warlords_torment.enabled' (1x).\nLine 4: Converted 'talent.warlords_torment' to 'talent.warlords_torment.enabled' (1x).\nLine 8: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 8: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 9: Converted 'talent.hurricane' to 'talent.hurricane.enabled' (1x).\nLine 9: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 9: Converted 'talent.unhinged' to 'talent.unhinged.enabled' (1x).\nLine 9: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 10: Converted 'talent.tide_of_blood' to 'talent.tide_of_blood.enabled' (1x).\nLine 10: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 13: Converted 'talent.anger_management' to 'talent.anger_management.enabled' (1x).\nLine 13: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 14: Converted 'talent.storm_of_swords' to 'talent.storm_of_swords.enabled' (1x).\nLine 14: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 15: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 15: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 16: Converted 'talent.storm_of_swords' to 'talent.storm_of_swords.enabled' (1x).\nLine 16: Converted 'talent.fervor_of_battle' to 'talent.fervor_of_battle.enabled' (1x).\nLine 17: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 17: Converted 'talent.blood_and_thunder' to 'talent.blood_and_thunder.enabled' (1x).\nLine 18: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 20: Converted 'talent.crushing_force' to 'talent.crushing_force.enabled' (1x).\nLine 21: Converted 'talent.fervor_of_battle' to 'talent.fervor_of_battle.enabled' (1x).\nLine 21: Converted 'talent.fervor_of_battle' to 'talent.fervor_of_battle.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 4: Converted 'talent.titans_torment' to 'talent.titans_torment.enabled' (1x).\nLine 4: Converted 'talent.blademasters_torment' to 'talent.blademasters_torment.enabled' (1x).\nLine 5: Converted 'talent.reckless_abandon' to 'talent.reckless_abandon.enabled' (1x).\n\nThe import for 'execute' required some automated changes.\nLine 2: Converted 'talent.warbreaker' to 'talent.warbreaker.enabled' (1x).\nLine 2: Converted 'talent.warbreaker' to 'talent.warbreaker.enabled' (1x).\nLine 6: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 13: Converted 'talent.sonic_boom' to 'talent.sonic_boom.enabled' (1x).\n\nThe import for 'hac' required some automated changes.\nLine 2: Converted 'talent.thunder_clap' to 'talent.thunder_clap.enabled' (1x).\nLine 2: Converted 'talent.blood_and_thunder' to 'talent.blood_and_thunder.enabled' (1x).\nLine 2: Converted 'talent.rend' to 'talent.rend.enabled' (1x).\nLine 3: Converted 'talent.bladestorm' to 'talent.bladestorm.enabled' (1x).\nLine 4: Converted 'talent.massacre' to 'talent.massacre.enabled' (1x).\nLine 4: Converted 'talent.tide_of_blood' to 'talent.tide_of_blood.enabled' (1x).\nLine 5: Converted 'talent.blademasters_torment' to 'talent.blademasters_torment.enabled' (1x).\nLine 7: Converted 'talent.massacre' to 'talent.massacre.enabled' (1x).\nLine 9: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 10: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 11: Converted 'talent.unhinged' to 'talent.unhinged.enabled' (1x).\nLine 11: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 12: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 13: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 14: Converted 'talent.storm_of_swords' to 'talent.storm_of_swords.enabled' (1x).\nLine 15: Converted 'talent.tide_of_blood' to 'talent.tide_of_blood.enabled' (1x).\nLine 16: Converted 'talent.dreadnaught' to 'talent.dreadnaught.enabled' (1x).\nLine 17: Converted 'talent.dreadnaught' to 'talent.dreadnaught.enabled' (1x).\nLine 17: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 18: Converted 'talent.massacre' to 'talent.massacre.enabled' (1x).\nLine 20: Converted 'talent.sonic_boom' to 'talent.sonic_boom.enabled' (1x).\nLine 21: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 21: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 22: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 23: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 23: Converted 'talent.test_of_might' to 'talent.test_of_might.enabled' (1x).\nLine 23: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 27: Converted 'talent.storm_of_swords' to 'talent.storm_of_swords.enabled' (1x).\nLine 27: Converted 'talent.fervor_of_battle' to 'talent.fervor_of_battle.enabled' (1x).\nLine 28: Converted 'talent.crushing_force' to 'talent.crushing_force.enabled' (1x).\nLine 29: Converted 'talent.battlelord' to 'talent.battlelord.enabled' (1x).\nLine 29: Converted 'talent.anger_management' to 'talent.anger_management.enabled' (1x).\nLine 29: Converted 'talent.massacre' to 'talent.massacre.enabled' (1x).\nLine 30: Converted 'talent.crushing_force' to 'talent.crushing_force.enabled' (1x).\nLine 30: Converted 'talent.fervor_of_battle' to 'talent.fervor_of_battle.enabled' (1x).\nLine 30: Converted 'talent.fervor_of_battle' to 'talent.fervor_of_battle.enabled' (1x).\nLine 31: Converted 'talent.sonic_boom' to 'talent.sonic_boom.enabled' (1x).\n\nImported 5 action lists.\n",
					["spec"] = 71,
					["profile"] = "actions.precombat+=/battle_stance\nactions.precombat+=/battle_shout\nactions.precombat+=/use_item,name=algethar_puzzle_box\nactions.precombat+=/avatar,if=!talent.titans_torment&!talent.blademasters_torment\nactions.precombat+=/recklessness,if=!talent.reckless_abandon\n\nactions+=/charge,if=time<=0.5||movement.distance>5\nactions+=/pummel\nactions+=/potion,if=gcd.remains=0&debuff.colossus_smash.remains>8||boss&fight_remains<25\nactions+=/algethar_puzzle_box,if=cooldown.avatar.remains<3\nactions+=/irideus_fragment,if=buff.avatar.up\nactions+=/manic_grieftorch,if=!buff.avatar.up&!debuff.colossus_smash.up\nactions+=/gladiators_badge,if=gcd.remains=0&debuff.colossus_smash.remains>8||boss&fight_remains<25\nactions+=/use_items\nactions+=/arcane_torrent,if=cooldown.mortal_strike.remains>1.5&rage<50\nactions+=/lights_judgment,if=debuff.colossus_smash.down&cooldown.mortal_strike.remains\nactions+=/bag_of_tricks,if=debuff.colossus_smash.down&cooldown.mortal_strike.remains\nactions+=/berserking,if=debuff.colossus_smash.remains>6\nactions+=/ancestral_call,if=debuff.colossus_smash.up\nactions+=/blood_fury,if=debuff.colossus_smash.up\nactions+=/ancestral_call,if=debuff.colossus_smash.up\nactions+=/run_action_list,name=hac,strict=1,if=raid_event.adds.exists||active_enemies>2\nactions+=/call_action_list,name=execute,cycle_targets=1,strict=1,if=(talent.massacre.enabled&target.health.pct<35)||target.health.pct<20\nactions+=/run_action_list,name=single_target,strict=1,if=!raid_event.adds.exists\n\nactions.execute+=/sweeping_strikes,if=spell_targets.whirlwind>1\nactions.execute+=/rend,if=remains<=gcd&(!talent.warbreaker&cooldown.colossus_smash.remains<4||talent.warbreaker&cooldown.warbreaker.remains<4)&target.time_to_die>12\nactions.execute+=/avatar,if=cooldown.colossus_smash.ready||debuff.colossus_smash.up||boss&fight_remains<20\nactions.execute+=/warbreaker\nactions.execute+=/colossus_smash\nactions.execute+=/thunderous_roar,if=buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up\nactions.execute+=/spear_of_bastion,if=debuff.colossus_smash.up||buff.test_of_might.up\nactions.execute+=/skullsplitter,if=rage<40\nactions.execute+=/cleave,if=spell_targets.whirlwind>2&dot.deep_wounds.remains<gcd\nactions.execute+=/overpower,if=rage<40&buff.martial_prowess.stack<2\nactions.execute+=/mortal_strike,if=debuff.executioners_precision.stack=2||dot.deep_wounds.remains<=gcd\nactions.execute+=/execute\nactions.execute+=/shockwave,if=talent.sonic_boom\nactions.execute+=/overpower\nactions.execute+=/bladestorm\n\nactions.hac+=/execute,if=buff.juggernaut.up&buff.juggernaut.remains<gcd\nactions.hac+=/thunder_clap,if=active_enemies>2&talent.thunder_clap&talent.blood_and_thunder&talent.rend&dot.rend.remains<=dot.rend.duration*0.3\nactions.hac+=/sweeping_strikes,if=active_enemies>=2&(cooldown.bladestorm.remains>15||!talent.bladestorm)\nactions.hac+=/rend,if=active_enemies=1&remains<=gcd&(target.health.pct>20||talent.massacre&target.health.pct>35)||talent.tide_of_blood&cooldown.skullsplitter.remains<=gcd&(cooldown.colossus_smash.remains<=gcd||debuff.colossus_smash.up)&dot.rend.remains<dot.rend.duration*0.85\nactions.hac+=/avatar,if=raid_event.adds.in>15||talent.blademasters_torment&active_enemies>1||boss&fight_remains<20\nactions.hac+=/warbreaker,if=raid_event.adds.in>22||active_enemies>1\nactions.hac+=/colossus_smash,cycle_targets=1,if=(target.health.pct<20||talent.massacre&target.health.pct<35)\nactions.hac+=/colossus_smash\nactions.hac+=/thunderous_roar,if=(buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up)&raid_event.adds.in>15||active_enemies>1&dot.deep_wounds.remains\nactions.hac+=/spear_of_bastion,if=(buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up)&raid_event.adds.in>15\nactions.hac+=/bladestorm,if=talent.unhinged&(buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up)\nactions.hac+=/bladestorm,if=active_enemies>1&(buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up)&raid_event.adds.in>30||active_enemies>1&dot.deep_wounds.remains\nactions.hac+=/cleave,if=active_enemies>2||!talent.battlelord&buff.merciless_bonegrinder.up&cooldown.mortal_strike.remains>gcd\nactions.hac+=/whirlwind,if=active_enemies>2||talent.storm_of_swords&(buff.merciless_bonegrinder.up||buff.hurricane.up)\nactions.hac+=/skullsplitter,if=rage<40||talent.tide_of_blood&dot.rend.remains&(buff.sweeping_strikes.up&active_enemies>=2||debuff.colossus_smash.up||buff.test_of_might.up)\nactions.hac+=/overpower,if=buff.sweeping_strikes.up&talent.dreadnaught\nactions.hac+=/mortal_strike,cycle_targets=1,if=debuff.executioners_precision.stack=2||dot.deep_wounds.remains<=gcd||talent.dreadnaught&talent.battlelord&active_enemies<=2\nactions.hac+=/execute,cycle_targets=1,if=buff.sudden_death.react||active_enemies<=2&(target.health.pct<20||talent.massacre&target.health.pct<35)||buff.sweeping_strikes.up\nactions.hac+=/thunderous_roar,if=raid_event.adds.in>15\nactions.hac+=/shockwave,if=active_enemies>2&talent.sonic_boom\nactions.hac+=/overpower,if=active_enemies=1&(charges=2&!talent.battlelord&(debuff.colossus_smash.down||rage.pct<25)||talent.battlelord)\nactions.hac+=/slam,if=active_enemies=1&!talent.battlelord&rage.pct>70\nactions.hac+=/overpower,if=charges=2&(!talent.test_of_might||talent.test_of_might&debuff.colossus_smash.down||talent.battlelord)||rage<70\nactions.hac+=/thunder_clap,if=active_enemies>2\nactions.hac+=/mortal_strike\nactions.hac+=/rend,if=active_enemies=1&dot.rend.remains<duration*0.3\nactions.hac+=/whirlwind,if=talent.storm_of_swords||talent.fervor_of_battle&active_enemies>1\nactions.hac+=/cleave,if=!talent.crushing_force\nactions.hac+=/ignore_pain,if=talent.battlelord&talent.anger_management&rage>30&(target.health.pct>20||talent.massacre&target.health.pct>35)\nactions.hac+=/slam,if=talent.crushing_force&rage>30&(talent.fervor_of_battle&active_enemies=1||!talent.fervor_of_battle)\nactions.hac+=/shockwave,if=talent.sonic_boom\nactions.hac+=/bladestorm,if=raid_event.adds.in>30\nactions.hac+=/wrecking_throw\n\nactions.single_target+=/sweeping_strikes,if=spell_targets.whirlwind>1\nactions.single_target+=/mortal_strike\nactions.single_target+=/rend,if=remains<=gcd||talent.tide_of_blood&cooldown.skullsplitter.remains<=gcd&(cooldown.colossus_smash.remains<=gcd||debuff.colossus_smash.up)&dot.rend.remains<dot.rend.duration*0.85\nactions.single_target+=/avatar,if=talent.warlords_torment&rage.pct<33&(cooldown.colossus_smash.ready||debuff.colossus_smash.up||buff.test_of_might.up)||!talent.warlords_torment&(cooldown.colossus_smash.ready||debuff.colossus_smash.up)\nactions.single_target+=/spear_of_bastion,if=cooldown.colossus_smash.remains<=gcd||cooldown.warbreaker.remains<=gcd\nactions.single_target+=/warbreaker\nactions.single_target+=/colossus_smash\nactions.single_target+=/thunderous_roar,if=buff.test_of_might.up||talent.test_of_might&debuff.colossus_smash.up&rage.pct<33||!talent.test_of_might&debuff.colossus_smash.up\nactions.single_target+=/bladestorm,if=talent.hurricane&(buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up)||talent.unhinged&(buff.test_of_might.up||!talent.test_of_might&debuff.colossus_smash.up)\nactions.single_target+=/skullsplitter,if=talent.tide_of_blood&dot.rend.remains&(debuff.colossus_smash.up||cooldown.colossus_smash.remains>gcd*4&buff.test_of_might.up||!talent.test_of_might&cooldown.colossus_smash.remains>gcd*4)||rage<30\nactions.single_target+=/execute,if=buff.sudden_death.react\nactions.single_target+=/shockwave,if=talent.sonic_boom.enabled\nactions.single_target+=/ignore_pain,if=talent.anger_management||talent.test_of_might&debuff.colossus_smash.up\nactions.single_target+=/whirlwind,if=talent.storm_of_swords&talent.battlelord&rage.pct>80&debuff.colossus_smash.up\nactions.single_target+=/overpower,if=charges=2&!talent.battlelord&(debuff.colossus_smash.down||rage.pct<25)||talent.battlelord\nactions.single_target+=/whirlwind,if=talent.storm_of_swords||talent.fervor_of_battle&active_enemies>1\nactions.single_target+=/thunder_clap,if=talent.battlelord&talent.blood_and_thunder\nactions.single_target+=/overpower,if=debuff.colossus_smash.down&rage.pct<50&!talent.battlelord||rage.pct<25\nactions.single_target+=/whirlwind,if=buff.merciless_bonegrinder.up\nactions.single_target+=/cleave,if=set_bonus.tier29_2pc&!talent.crushing_force\nactions.single_target+=/slam,if=rage>30&(!talent.fervor_of_battle||talent.fervor_of_battle&active_enemies=1)\nactions.single_target+=/bladestorm\nactions.single_target+=/cleave\nactions.single_target+=/wrecking_throw\nactions.single_target+=/rend,if=remains<duration*0.3",
				},
				["Protection Warrior"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230127,
					["spec"] = 73,
					["desc"] = "",
					["profile"] = "actions.precombat+=/defensive_stance,if=buff.stance.down\nactions.precombat+=/battle_shout\nactions.precombat+=/use_item,name=algethar_puzzle_box\nactions.precombat+=/avatar,if=!talent.titans_torment\nactions.precombat+=/recklessness,if=!talent.reckless_abandon\n\n# Executed every time the actor is available.\nactions+=/pummel\nactions+=/spell_reflection\nactions+=/shield_charge,if=time=0\nactions+=/charge,if=time=0\nactions+=/use_items\nactions+=/avatar\n# Usage of Shield Wall is governed by specialization settings; see /hekili > Protection.\nactions+=/shield_wall,if=buff.avatar.down||!talent.immovable_object\nactions+=/blood_fury\nactions+=/berserking\nactions+=/arcane_torrent\nactions+=/lights_judgment\nactions+=/fireblood\nactions+=/ancestral_call\nactions+=/bag_of_tricks\nactions+=/potion,if=buff.avatar.up||buff.avatar.up&target.health.pct<=20\nactions+=/ignore_pain,if=target.health.pct>=20&(rage.deficit<=15&cooldown.shield_slam.ready||rage.deficit<=40&cooldown.shield_charge.ready&talent.champions_bulwark.enabled||rage.deficit<=20&cooldown.shield_charge.ready||rage.deficit<=30&cooldown.demoralizing_shout.ready&talent.booming_voice.enabled||rage.deficit<=20&cooldown.avatar.ready||rage.deficit<=45&cooldown.demoralizing_shout.ready&talent.booming_voice.enabled&buff.last_stand.up&talent.unnerving_focus.enabled||rage.deficit<=30&cooldown.avatar.ready&buff.last_stand.up&talent.unnerving_focus.enabled||rage.deficit<=20||rage.deficit<=40&cooldown.shield_slam.ready&buff.violent_outburst.up&talent.heavy_repercussions.enabled&talent.impenetrable_wall.enabled||rage.deficit<=55&cooldown.shield_slam.ready&buff.violent_outburst.up&buff.last_stand.up&talent.unnerving_focus.enabled&talent.heavy_repercussions.enabled&talent.impenetrable_wall.enabled||rage.deficit<=17&cooldown.shield_slam.ready&talent.heavy_repercussions.enabled||rage.deficit<=18&cooldown.shield_slam.ready&talent.impenetrable_wall.enabled),use_off_gcd=1\n# Usage of Last Stand is also governed by specialization settings; see /hekili > Protection.\nactions+=/last_stand,if=talent.unnerving_focus&(target.health.pct>=90||target.health.pct<=20)||talent.bolster&buff.shield_block.down||!talent.bolster&!talent.unnerving_focus\n# Usage of Rallying Cry is governed by specialization settings; see /hekili > Protection.\nactions+=/rallying_cry\nactions+=/ravager\nactions+=/demoralizing_shout,if=talent.booming_voice.enabled\nactions+=/spear_of_bastion\nactions+=/thunderous_roar\nactions+=/shockwave,if=talent.sonic_boom.enabled&buff.avatar.up&talent.unstoppable_force.enabled&!talent.rumbling_earth.enabled\nactions+=/shield_charge\nactions+=/shield_block,if=buff.shield_block.duration<=18&talent.enduring_defenses.enabled||buff.shield_block.duration<=12\nactions+=/run_action_list,name=aoe,strict=1,if=spell_targets.thunder_clap>=3\nactions+=/call_action_list,name=generic\n\nactions.aoe+=/thunder_clap,if=dot.rend.remains<=1&talent.blood_and_thunder&talent.rend\nactions.aoe+=/thunder_clap,if=buff.violent_outburst.up&spell_targets.thunderclap>5&buff.avatar.up&talent.unstoppable_force.enabled\nactions.aoe+=/revenge,if=rage>=70&talent.seismic_reverberation.enabled&spell_targets.revenge>=3\nactions.aoe+=/shield_slam,if=rage<=60||buff.violent_outburst.up&spell_targets.thunderclap<=4\nactions.aoe+=/thunder_clap\nactions.aoe+=/revenge,if=rage>=30||rage>=40&talent.barbaric_training.enabled\n\nactions.generic=shield_slam\nactions.generic+=/thunder_clap,if=dot.rend.remains<=1&buff.violent_outburst.down\nactions.generic+=/execute,if=buff.sudden_death.up&talent.sudden_death.enabled\nactions.generic+=/revenge,if=buff.vanguards_determination.down\nactions.generic+=/thunder_clap,if=(spell_targets.thunder_clap>1||cooldown.shield_slam.remains&!buff.violent_outburst.up)\nactions.generic+=/revenge,if=(rage>=60&target.health.pct>20||buff.revenge.up&target.health.pct<=20&rage<=18&cooldown.shield_slam.remains||buff.revenge.up&target.health.pct>20)||(rage>=60&target.health.pct>35||buff.revenge.up&target.health.pct<=35&rage<=18&cooldown.shield_slam.remains||buff.revenge.up&target.health.pct>35)&talent.massacre.enabled\nactions.generic+=/execute,if=spell_targets.revenge=1\nactions.generic+=/revenge\nactions.generic+=/thunder_clap,if=(spell_targets.thunder_clap>=1||cooldown.shield_slam.remains&buff.violent_outburst.up)\nactions.generic+=/devastate",
					["version"] = 20230127,
					["warnings"] = "The import for 'aoe' required some automated changes.\nLine 1: Converted 'talent.blood_and_thunder' to 'talent.blood_and_thunder.enabled' (1x).\nLine 1: Converted 'talent.rend' to 'talent.rend.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 7: Converted 'talent.immovable_object' to 'talent.immovable_object.enabled' (1x).\nLine 17: Converted 'talent.unnerving_focus' to 'talent.unnerving_focus.enabled' (1x).\nLine 17: Converted 'talent.bolster' to 'talent.bolster.enabled' (1x).\nLine 17: Converted 'talent.bolster' to 'talent.bolster.enabled' (1x).\nLine 17: Converted 'talent.unnerving_focus' to 'talent.unnerving_focus.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 4: Converted 'talent.titans_torment' to 'talent.titans_torment.enabled' (1x).\nLine 5: Converted 'talent.reckless_abandon' to 'talent.reckless_abandon.enabled' (1x).\n\nImported 4 action lists.\n",
					["lists"] = {
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "dot.rend.remains <= 1 & talent.blood_and_thunder.enabled & talent.rend.enabled",
								["action"] = "thunder_clap",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.violent_outburst.up & spell_targets.thunderclap > 5 & buff.avatar.up & talent.unstoppable_force.enabled",
								["action"] = "thunder_clap",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "rage >= 70 & talent.seismic_reverberation.enabled & spell_targets.revenge >= 3",
								["action"] = "revenge",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "rage <= 60 || buff.violent_outburst.up & spell_targets.thunderclap <= 4",
								["action"] = "shield_slam",
							}, -- [4]
							{
								["action"] = "thunder_clap",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "rage >= 30 || rage >= 40 & talent.barbaric_training.enabled",
								["action"] = "revenge",
							}, -- [6]
						},
						["generic"] = {
							{
								["action"] = "shield_slam",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "dot.rend.remains <= 1 & buff.violent_outburst.down",
								["action"] = "thunder_clap",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.sudden_death.up & talent.sudden_death.enabled",
								["action"] = "execute",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.vanguards_determination.down",
								["action"] = "revenge",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( spell_targets.thunder_clap > 1 || cooldown.shield_slam.remains & ! buff.violent_outburst.up )",
								["action"] = "thunder_clap",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( rage >= 60 & target.health.pct > 20 || buff.revenge.up & target.health.pct <= 20 & rage <= 18 & cooldown.shield_slam.remains || buff.revenge.up & target.health.pct > 20 ) || ( rage >= 60 & target.health.pct > 35 || buff.revenge.up & target.health.pct <= 35 & rage <= 18 & cooldown.shield_slam.remains || buff.revenge.up & target.health.pct > 35 ) & talent.massacre.enabled",
								["action"] = "revenge",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.revenge = 1",
								["action"] = "execute",
							}, -- [7]
							{
								["action"] = "revenge",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( spell_targets.thunder_clap >= 1 || cooldown.shield_slam.remains & buff.violent_outburst.up )",
								["action"] = "thunder_clap",
							}, -- [9]
							{
								["action"] = "devastate",
								["enabled"] = true,
							}, -- [10]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Executed every time the actor is available.",
								["action"] = "pummel",
							}, -- [1]
							{
								["action"] = "spell_reflection",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "time = 0",
								["action"] = "shield_charge",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "time = 0",
								["action"] = "charge",
							}, -- [4]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "avatar",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["description"] = "Usage of Shield Wall is governed by specialization settings, see /hekili > Protection.",
								["criteria"] = "buff.avatar.down || ! talent.immovable_object.enabled",
								["action"] = "shield_wall",
							}, -- [7]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "berserking",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [11]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "bag_of_tricks",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.avatar.up || buff.avatar.up & target.health.pct <= 20",
								["action"] = "potion",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "ignore_pain",
								["criteria"] = "target.health.pct >= 20 & ( rage.deficit <= 15 & cooldown.shield_slam.ready || rage.deficit <= 40 & cooldown.shield_charge.ready & talent.champions_bulwark.enabled || rage.deficit <= 20 & cooldown.shield_charge.ready || rage.deficit <= 30 & cooldown.demoralizing_shout.ready & talent.booming_voice.enabled || rage.deficit <= 20 & cooldown.avatar.ready || rage.deficit <= 45 & cooldown.demoralizing_shout.ready & talent.booming_voice.enabled & buff.last_stand.up & talent.unnerving_focus.enabled || rage.deficit <= 30 & cooldown.avatar.ready & buff.last_stand.up & talent.unnerving_focus.enabled || rage.deficit <= 20 || rage.deficit <= 40 & cooldown.shield_slam.ready & buff.violent_outburst.up & talent.heavy_repercussions.enabled & talent.impenetrable_wall.enabled || rage.deficit <= 55 & cooldown.shield_slam.ready & buff.violent_outburst.up & buff.last_stand.up & talent.unnerving_focus.enabled & talent.heavy_repercussions.enabled & talent.impenetrable_wall.enabled || rage.deficit <= 17 & cooldown.shield_slam.ready & talent.heavy_repercussions.enabled || rage.deficit <= 18 & cooldown.shield_slam.ready & talent.impenetrable_wall.enabled )",
								["use_off_gcd"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["description"] = "Usage of Last Stand is also governed by specialization settings, see /hekili > Protection.",
								["criteria"] = "talent.unnerving_focus.enabled & ( target.health.pct >= 90 || target.health.pct <= 20 ) || talent.bolster.enabled & buff.shield_block.down || ! talent.bolster.enabled & ! talent.unnerving_focus.enabled",
								["action"] = "last_stand",
							}, -- [17]
							{
								["enabled"] = true,
								["description"] = "Usage of Rallying Cry is governed by specialization settings, see /hekili > Protection.",
								["action"] = "rallying_cry",
							}, -- [18]
							{
								["action"] = "ravager",
								["enabled"] = true,
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "talent.booming_voice.enabled",
								["action"] = "demoralizing_shout",
							}, -- [20]
							{
								["action"] = "spear_of_bastion",
								["enabled"] = true,
							}, -- [21]
							{
								["action"] = "thunderous_roar",
								["enabled"] = true,
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "talent.sonic_boom.enabled & buff.avatar.up & talent.unstoppable_force.enabled & ! talent.rumbling_earth.enabled",
								["action"] = "shockwave",
							}, -- [23]
							{
								["action"] = "shield_charge",
								["enabled"] = true,
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "buff.shield_block.duration <= 18 & talent.enduring_defenses.enabled || buff.shield_block.duration <= 12",
								["action"] = "shield_block",
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "spell_targets.thunder_clap >= 3",
								["list_name"] = "aoe",
							}, -- [26]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "generic",
							}, -- [27]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.stance.down",
								["action"] = "defensive_stance",
							}, -- [1]
							{
								["action"] = "battle_shout",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "algethar_puzzle_box",
								["action"] = "algethar_puzzle_box",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! talent.titans_torment.enabled",
								["action"] = "avatar",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.reckless_abandon.enabled",
								["action"] = "recklessness",
							}, -- [5]
						},
					},
					["author"] = "SimulationCraft",
				},
				["Guardian"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230508,
					["author"] = "SimC",
					["desc"] = "2023-05-08:  Add Tier 30 weapon.\n\n2023-03-06:  Revisited if_build and catweave_bear; restored missing mitigation priority for bigger defensive CDs.  Fix vicious_cycle talent check.\n\n2023-02-25:  Updated for 'if_build' changes with tweaks to support the \"Use Maul and Raze in Ironfur Build\" option.\n\n2023-02-21:   Routine update including changes to \"Catweave\" options.",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["criteria"] = "! buff.prowl.up",
								["action"] = "skull_bash",
								["description"] = "Executed every time the actor is available.",
							}, -- [1]
							{
								["action"] = "soothe",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "trinket1",
								["slot"] = "trinket1",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "trinket2",
								["slot"] = "trinket2",
							}, -- [4]
							{
								["enabled"] = true,
								["name"] = "djaruun_pillar_of_the_elder_flame",
								["action"] = "djaruun_pillar_of_the_elder_flame",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "( ( talent.heart_of_the_wild.enabled & buff.heart_of_the_wild.up ) || ( ( buff.berserk_bear.up || buff.incarnation_guardian_of_ursoc.up ) & ( ! druid.catweave_bear & ! druid.owlweave_bear ) ) )",
								["action"] = "potion",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.cat_form.up & ! druid.catweave_bear || ! tanking & druid.catweave_bear & ( ! talent.tooth_and_claw.enabled || buff.tooth_and_claw.remains > 1.5 ) & ( buff.incarnation_guardian_of_ursoc.down & buff.berserk_bear.down & cooldown.thrash_bear.remains > 0 & cooldown.mangle.remains > 0 & dot.moonfire.remains >= 2 || buff.cat_form.up & energy > 25 || buff.heart_of_the_wild.up & energy > 90 )",
								["action"] = "run_action_list",
								["list_name"] = "catweave",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! buff.bear_form.up",
								["action"] = "bear_form",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "mitigation",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "bear",
							}, -- [10]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "talent.thorns_of_iron.enabled & talent.reinforced_fur.enabled",
								["var_name"] = "if_build",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! ( talent.thorns_of_iron.enabled & talent.reinforced_fur.enabled ) || settings.maul_anyway",
								["var_name"] = "maul_build",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.prowl.up",
								["action"] = "mark_of_the_wild",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ( druid.catweave_bear & buff.cat_form.up || druid.owlweave_bear & buff.moonkin_form.up )",
								["action"] = "heart_of_the_wild",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.cat_form.up",
								["action"] = "prowl",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! buff.any_form.up",
								["action"] = "bear_form",
							}, -- [6]
						},
						["mitigation"] = {
							{
								["enabled"] = true,
								["criteria"] = "tanking & ! variable.if_build & incoming_damage_5s > ironfur_damage_threshold & buff.ironfur.remains < 3 * haste",
								["action"] = "ironfur",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 65",
								["action"] = "regrowth",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "health.pct < 65",
								["action"] = "renewal",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "tanking & health.pct < 65",
								["action"] = "frenzied_regeneration",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "tanking & health.pct < 75 & incoming_damage_5s > 0.1 * health.max",
								["action"] = "barkskin",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.survival_instincts.down & buff.barkskin.down & health.pct < 60 & incoming_damage_5s > 0.25 * health.max",
								["action"] = "survival_instincts",
							}, -- [6]
						},
						["catweave"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ! buff.heart_of_the_wild.up & ! buff.cat_form.up",
								["action"] = "heart_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.cat_form.up",
								["action"] = "cat_form",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.prowl.up",
								["action"] = "rake",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.heart_of_the_wild.enabled & ! buff.heart_of_the_wild.up",
								["action"] = "heart_of_the_wild",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! dot.rake.ticking & combo_points < 5",
								["action"] = "rake",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! dot.rip.ticking & combo_points >= 3",
								["action"] = "rip",
							}, -- [6]
							{
								["action"] = "convoke_the_spirits",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "combo_points >= 4 & energy > 50",
								["action"] = "ferocious_bite",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "combo_points < 5 & spell_targets.swipe_cat > 1",
								["action"] = "swipe_cat",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "combo_points < 5",
								["action"] = "shred",
							}, -- [10]
						},
						["bear"] = {
							{
								["enabled"] = true,
								["action"] = "moonfire",
								["criteria"] = "( ( ! ticking & time_to_die > 12 ) || ( refreshable & time_to_die > 12 ) ) & active_enemies < 8",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["action"] = "bristling_fur",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.bear_form.up",
								["action"] = "barkskin",
							}, -- [3]
							{
								["action"] = "convoke_the_spirits",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "incarnation",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.incarnation_guardian_of_ursoc.down & cooldown.incarnation_guardian_of_ursoc.remains > 60 || buff.incarnation_guardian_of_ursoc.up || talent.convoke_the_spirits.enabled",
								["action"] = "rage_of_the_sleeper",
							}, -- [7]
							{
								["action"] = "lunar_beam",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "( buff.berserk_bear.up || buff.incarnation_guardian_of_ursoc.up )",
								["action"] = "berserking",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.rage_of_the_sleeper.up & buff.tooth_and_claw.stack > 0 & active_enemies <= 6 & variable.maul_build",
								["action"] = "maul",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.rage_of_the_sleeper.up & buff.tooth_and_claw.stack > 0 & variable.maul_build",
								["action"] = "raze",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "ironfur",
								["criteria"] = "! variable.if_build & ( ! tanking & ! buff.ironfur.up || rage > 90 )",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "variable.if_build & ( rage > 90 || ( buff.incarnation.up || buff.berserk_bear.up ) & rage > 20 )",
								["action"] = "ironfur",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.galactic_guardian.up & buff.galactic_guardian.remains <= 2",
								["action"] = "moonfire",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.gore.up & active_enemies < 11 || buff.vicious_cycle_mangle.stack = 3",
								["action"] = "mangle",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "( ( buff.incarnation.up || buff.berserk_bear.up ) & active_enemies <= 5 & ( buff.tooth_and_claw.stack >= 2 ) ) & variable.maul_build & ! talent.thorns_of_iron.enabled",
								["action"] = "maul",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "( ( buff.incarnation.up || buff.berserk_bear.up ) & ( buff.tooth_and_claw.stack >= 2 ) ) & variable.maul_build & ! talent.thorns_of_iron.enabled",
								["action"] = "raze",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "thrash_bear",
								["criteria"] = "refreshable || dot.thrash_bear.stack < 3 || active_enemies >= 5",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "rage.deficit > 10 & settings.mangle_more",
								["action"] = "mangle",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.incarnation_guardian_of_ursoc.down & buff.berserk_bear.down & active_enemies >= 11",
								["action"] = "swipe_bear",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "( buff.tooth_and_claw.up & active_enemies <= 5 )",
								["action"] = "maul",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies <= 5 & buff.vicious_cycle_maul.stack >= 3 || active_enemies < 4 & ! talent.vicious_cycle.enabled & variable.maul_build & ! talent.thorns_of_iron.enabled",
								["action"] = "maul",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "( buff.tooth_and_claw.up )",
								["action"] = "raze",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "buff.vicious_cycle_maul.stack >= 3 & variable.maul_build & ! talent.thorns_of_iron.enabled || ! talent.vicious_cycle.enabled & variable.maul_build & ! talent.thorns_of_iron.enabled",
								["action"] = "raze",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "( buff.incarnation.up & active_enemies <= 4 ) || ( buff.incarnation.up & talent.soul_of_the_forest.enabled & active_enemies <= 5 ) || ( ( rage < 90 ) & active_enemies < 11 ) || ( ( rage < 85 ) & active_enemies < 11 & talent.soul_of_the_forest.enabled )",
								["action"] = "mangle",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "thrash_bear",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "dot.thrash_bear.stack > 2",
								["action"] = "pulverize",
							}, -- [27]
							{
								["action"] = "thrash_bear",
								["enabled"] = true,
							}, -- [28]
							{
								["action"] = "swipe_bear",
								["enabled"] = true,
							}, -- [29]
						},
					},
					["version"] = 20230508,
					["warnings"] = "The import for 'default' required some automated changes.\nLine 7: Converted 'talent.tooth_and_claw' to 'talent.tooth_and_claw.enabled' (1x).\n\nImported 5 action lists.\n",
					["spec"] = 104,
					["profile"] = "actions.precombat+=/variable,name=if_build,value=talent.thorns_of_iron.enabled&talent.reinforced_fur.enabled\nactions.precombat+=/variable,name=maul_build,value=!(talent.thorns_of_iron.enabled&talent.reinforced_fur.enabled)||settings.maul_anyway\nactions.precombat+=/mark_of_the_wild,if=!buff.prowl.up\nactions.precombat+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&(druid.catweave_bear&buff.cat_form.up||druid.owlweave_bear&buff.moonkin_form.up)\nactions.precombat+=/prowl,if=buff.cat_form.up\nactions.precombat+=/bear_form,if=!buff.any_form.up\n\n# Executed every time the actor is available.\nactions=skull_bash,if=!buff.prowl.up\nactions+=/soothe\nactions+=/use_item,slot=trinket1\nactions+=/use_item,slot=trinket2\nactions+=/use_item,name=djaruun_pillar_of_the_elder_flame\nactions+=/potion,if=((talent.heart_of_the_wild.enabled&buff.heart_of_the_wild.up)||((buff.berserk_bear.up||buff.incarnation_guardian_of_ursoc.up)&(!druid.catweave_bear&!druid.owlweave_bear)))\nactions+=/run_action_list,name=catweave,if=buff.cat_form.up&!druid.catweave_bear||!tanking&druid.catweave_bear&(!talent.tooth_and_claw||buff.tooth_and_claw.remains>1.5)&(buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down&cooldown.thrash_bear.remains>0&cooldown.mangle.remains>0&dot.moonfire.remains>=2||buff.cat_form.up&energy>25||buff.heart_of_the_wild.up&energy>90)\nactions+=/bear_form,if=!buff.bear_form.up\nactions+=/call_action_list,name=mitigation\nactions+=/run_action_list,name=bear\n\nactions.bear+=/moonfire,cycle_targets=1,if=((!ticking&time_to_die>12)||(refreshable&time_to_die>12))&active_enemies<8\nactions.bear+=/bristling_fur\nactions.bear+=/barkskin,if=buff.bear_form.up\nactions.bear+=/convoke_the_spirits\nactions.bear+=/berserk_bear\nactions.bear+=/incarnation\nactions.bear+=/rage_of_the_sleeper,if=buff.incarnation_guardian_of_ursoc.down&cooldown.incarnation_guardian_of_ursoc.remains>60||buff.incarnation_guardian_of_ursoc.up||talent.convoke_the_spirits.enabled\nactions.bear+=/lunar_beam\nactions.bear+=/berserking,if=(buff.berserk_bear.up||buff.incarnation_guardian_of_ursoc.up)\nactions.bear+=/maul,if=buff.rage_of_the_sleeper.up&buff.tooth_and_claw.stack>0&active_enemies<=6&variable.maul_build\nactions.bear+=/raze,if=buff.rage_of_the_sleeper.up&buff.tooth_and_claw.stack>0&variable.maul_build\nactions.bear+=/ironfur,cycle_targets=1,if=!variable.if_build&(!tanking&!buff.ironfur.up||rage>90)\nactions.bear+=/ironfur,if=variable.if_build&(rage>90||(buff.incarnation.up||buff.berserk_bear.up)&rage>20)\nactions.bear+=/moonfire,if=buff.galactic_guardian.up&buff.galactic_guardian.remains<=2\nactions.bear+=/mangle,if=buff.gore.up&active_enemies<11||buff.vicious_cycle_mangle.stack=3\nactions.bear+=/maul,if=((buff.incarnation.up||buff.berserk_bear.up)&active_enemies<=5&(buff.tooth_and_claw.stack>=2))&variable.maul_build&!talent.thorns_of_iron.enabled\nactions.bear+=/raze,if=((buff.incarnation.up||buff.berserk_bear.up)&(buff.tooth_and_claw.stack>=2))&variable.maul_build&!talent.thorns_of_iron.enabled\nactions.bear+=/thrash_bear,cycle_targets=1,if=refreshable||dot.thrash_bear.stack<3||active_enemies>=5\nactions.bear+=/mangle,if=rage.deficit>10&settings.mangle_more\nactions.bear+=/swipe,if=buff.incarnation_guardian_of_ursoc.down&buff.berserk_bear.down&active_enemies>=11\nactions.bear+=/maul,if=(buff.tooth_and_claw.up&active_enemies<=5)\nactions.bear+=/maul,if=active_enemies<=5&buff.vicious_cycle_maul.stack>=3||active_enemies<4&!talent.vicious_cycle.enabled&variable.maul_build&!talent.thorns_of_iron.enabled\nactions.bear+=/raze,if=(buff.tooth_and_claw.up)\nactions.bear+=/raze,if=buff.vicious_cycle_maul.stack>=3&variable.maul_build&!talent.thorns_of_iron.enabled||!talent.vicious_cycle.enabled&variable.maul_build&!talent.thorns_of_iron.enabled\nactions.bear+=/mangle,if=(buff.incarnation.up&active_enemies<=4)||(buff.incarnation.up&talent.soul_of_the_forest.enabled&active_enemies<=5)||((rage<90)&active_enemies<11)||((rage<85)&active_enemies<11&talent.soul_of_the_forest.enabled)\nactions.bear+=/thrash_bear,if=active_enemies>1\nactions.bear+=/pulverize,if=dot.thrash_bear.stack>2\nactions.bear+=/thrash_bear\nactions.bear+=/swipe_bear\n\nactions.catweave=heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up&!buff.cat_form.up\nactions.catweave+=/cat_form,if=!buff.cat_form.up\nactions.catweave+=/rake,if=buff.prowl.up\nactions.catweave+=/heart_of_the_wild,if=talent.heart_of_the_wild.enabled&!buff.heart_of_the_wild.up\nactions.catweave+=/rake,if=!dot.rake.ticking&combo_points<5\nactions.catweave+=/rip,if=!dot.rip.ticking&combo_points>=3\nactions.catweave+=/convoke_the_spirits\nactions.catweave+=/ferocious_bite,if=combo_points>=4&energy>50\nactions.catweave+=/swipe_cat,if=combo_points<5&spell_targets.swipe_cat>1\nactions.catweave+=/shred,if=combo_points<5\n\nactions.mitigation=ironfur,if=tanking&!variable.if_build&incoming_damage_5s>ironfur_damage_threshold&buff.ironfur.remains<3*haste\nactions.mitigation+=/regrowth,if=health.pct<65\nactions.mitigation+=/renewal,if=health.pct<65\nactions.mitigation+=/frenzied_regeneration,if=tanking&health.pct<65\nactions.mitigation+=/barkskin,if=tanking&health.pct<75&incoming_damage_5s>0.1*health.max\nactions.mitigation+=/survival_instincts,if=buff.survival_instincts.down&buff.barkskin.down&health.pct<60&incoming_damage_5s>0.25*health.max",
				},
				["Fury"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20230209,
					["author"] = "SimC",
					["desc"] = "",
					["lists"] = {
						["single_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind > 1 & talent.improved_whirlwind.enabled & ! buff.meat_cleaver.up || raid_event.adds.in < 2 & talent.improved_whirlwind.enabled & ! buff.meat_cleaver.up",
								["action"] = "whirlwind",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.ashen_juggernaut.up & buff.ashen_juggernaut.remains < gcd.max",
								["action"] = "execute",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & ( spell_targets.whirlwind > 1 || raid_event.adds.in > 15 )",
								["action"] = "thunderous_roar",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & ( spell_targets.whirlwind > 1 || raid_event.adds.in > 15 ) & ( talent.dancing_blades.enabled & buff.dancing_blades.remains < 5 || ! talent.dancing_blades.enabled )",
								["action"] = "odyns_fury",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "talent.anger_management.enabled & ( buff.recklessness.up || buff.enrage.remains < gcd.max || rage.pct > 85 )",
								["action"] = "rampage",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up",
								["action"] = "execute",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up || talent.tenderize.enabled",
								["action"] = "onslaught",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "talent.wrath_and_fury.enabled & buff.enrage.up",
								["action"] = "crushing_blow",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "talent.reckless_abandon.enabled & ( buff.recklessness.up || buff.enrage.remains < gcd.max || rage.pct > 85 )",
								["action"] = "rampage",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "talent.anger_management.enabled",
								["action"] = "rampage",
							}, -- [10]
							{
								["action"] = "execute",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & talent.reckless_abandon.enabled & ! talent.wrath_and_fury.enabled",
								["action"] = "bloodbath",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.down || ( talent.annihilator.enabled & ! buff.recklessness.up )",
								["action"] = "bloodthirst",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "charges > 1 & talent.wrath_and_fury.enabled",
								["action"] = "raging_blow",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "charges > 1 & talent.wrath_and_fury.enabled",
								["action"] = "crushing_blow",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.down || ! talent.wrath_and_fury.enabled",
								["action"] = "bloodbath",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & talent.reckless_abandon.enabled",
								["action"] = "crushing_blow",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "! talent.wrath_and_fury.enabled",
								["action"] = "bloodthirst",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "charges > 1",
								["action"] = "raging_blow",
							}, -- [19]
							{
								["action"] = "rampage",
								["enabled"] = true,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "talent.annihilator.enabled",
								["action"] = "slam",
							}, -- [21]
							{
								["action"] = "bloodbath",
								["enabled"] = true,
							}, -- [22]
							{
								["action"] = "raging_blow",
								["enabled"] = true,
							}, -- [23]
							{
								["action"] = "crushing_blow",
								["enabled"] = true,
							}, -- [24]
							{
								["action"] = "bloodthirst",
								["enabled"] = true,
							}, -- [25]
							{
								["action"] = "whirlwind",
								["enabled"] = true,
							}, -- [26]
							{
								["action"] = "wrecking_throw",
								["enabled"] = true,
							}, -- [27]
							{
								["action"] = "storm_bolt",
								["enabled"] = true,
							}, -- [28]
						},
						["multi_target"] = {
							{
								["enabled"] = true,
								["criteria"] = "raid_event.adds.in > 15 || active_enemies > 1 || boss & fight_remains < 12",
								["action"] = "recklessness",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & talent.titanic_rage.enabled & ( ! buff.meat_cleaver.up || buff.avatar.up || buff.recklessness.up )",
								["action"] = "odyns_fury",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.whirlwind > 1 & talent.improved_whirlwind.enabled & ! buff.meat_cleaver.up || raid_event.adds.in < 2 & talent.improved_whirlwind.enabled & ! buff.meat_cleaver.up",
								["action"] = "whirlwind",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.ashen_juggernaut.up & buff.ashen_juggernaut.remains < gcd.max",
								["action"] = "execute",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & ( spell_targets.whirlwind > 1 || raid_event.adds.in > 15 )",
								["action"] = "thunderous_roar",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & buff.enrage.up & raid_event.adds.in > 15",
								["action"] = "odyns_fury",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "talent.wrath_and_fury.enabled & buff.enrage.up",
								["action"] = "crushing_blow",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up",
								["action"] = "execute",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & raid_event.adds.in > 15",
								["action"] = "odyns_fury",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.up || buff.enrage.remains < gcd.max || ( rage > 110 & talent.overwhelming_rage.enabled ) || ( rage > 80 & ! talent.overwhelming_rage.enabled )",
								["action"] = "rampage",
							}, -- [10]
							{
								["action"] = "execute",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & talent.reckless_abandon.enabled & ! talent.wrath_and_fury.enabled",
								["action"] = "bloodbath",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.down || ( talent.annihilator.enabled & ! buff.recklessness.up )",
								["action"] = "bloodthirst",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! talent.annihilator.enabled & buff.enrage.up || talent.tenderize.enabled",
								["action"] = "onslaught",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "charges > 1 & talent.wrath_and_fury.enabled",
								["action"] = "raging_blow",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "charges > 1 & talent.wrath_and_fury.enabled",
								["action"] = "crushing_blow",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.down || ! talent.wrath_and_fury.enabled",
								["action"] = "bloodbath",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & talent.reckless_abandon.enabled",
								["action"] = "crushing_blow",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! talent.wrath_and_fury.enabled",
								["action"] = "bloodthirst",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "charges >= 1",
								["action"] = "raging_blow",
							}, -- [20]
							{
								["action"] = "rampage",
								["enabled"] = true,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "talent.annihilator.enabled",
								["action"] = "slam",
							}, -- [22]
							{
								["action"] = "bloodbath",
								["enabled"] = true,
							}, -- [23]
							{
								["action"] = "raging_blow",
								["enabled"] = true,
							}, -- [24]
							{
								["action"] = "crushing_blow",
								["enabled"] = true,
							}, -- [25]
							{
								["action"] = "whirlwind",
								["enabled"] = true,
							}, -- [26]
						},
						["default"] = {
							{
								["enabled"] = true,
								["criteria"] = "time <= 0.5 || movement.distance > 5",
								["action"] = "charge",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( raid_event.movement.distance > 25 & raid_event.movement.in > 45 )",
								["action"] = "heroic_leap",
							}, -- [2]
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "conquerors_banner",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.recklessness.remains < 3 || ( talent.anger_management.enabled & cooldown.avatar.remains < 3 )",
								["action"] = "algethar_puzzle_box",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.up",
								["action"] = "irideus_fragment",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.avatar.down",
								["action"] = "manic_grieftorch",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.recklessness.remains > 10 & ( buff.recklessness.up || boss & fight_remains < 11 || boss & fight_remains > 65 )",
								["action"] = "gladiators_badge",
							}, -- [9]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.recklessness.remains < 3 || buff.recklessness.up",
								["action"] = "ravager",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "rage < 40 & ! buff.recklessness.up",
								["action"] = "arcane_torrent",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.down",
								["action"] = "lights_judgment",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.recklessness.up",
								["action"] = "berserking",
							}, -- [14]
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "ancestral_call",
								["enabled"] = true,
							}, -- [16]
							{
								["action"] = "fireblood",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "talent.titans_torment.enabled & buff.enrage.up & raid_event.adds.in > 15 || ! talent.titans_torment.enabled & ( buff.recklessness.up || boss & fight_remains < 20 )",
								["action"] = "avatar",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "! raid_event.adds.exists & ( talent.annihilator.enabled & cooldown.avatar.remains < 1 || cooldown.avatar.remains > 40 || ! talent.avatar.enabled || boss & fight_remains < 12 )",
								["action"] = "recklessness",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "! raid_event.adds.exists & ! talent.annihilator.enabled || boss & fight_remains < 12",
								["action"] = "recklessness",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "buff.enrage.up & ( buff.recklessness.up || buff.avatar.up || boss & fight_remains < 20 || active_enemies > 1 ) & raid_event.adds.in > 15",
								["action"] = "spear_of_bastion",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies > 2",
								["list_name"] = "multi_target",
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "single_target",
							}, -- [23]
						},
						["precombat"] = {
							{
								["action"] = "berserker_stance",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "battle_shout",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "algethar_puzzle_box",
								["action"] = "algethar_puzzle_box",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! talent.titans_torment.enabled",
								["action"] = "avatar",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! talent.reckless_abandon.enabled",
								["action"] = "recklessness",
							}, -- [5]
						},
					},
					["version"] = 20230209,
					["warnings"] = "The import for 'single_target' required some automated changes.\nLine 1: Converted 'talent.improved_whirlwind' to 'talent.improved_whirlwind.enabled' (1x).\nLine 1: Converted 'talent.improved_whirlwind' to 'talent.improved_whirlwind.enabled' (1x).\nLine 4: Converted 'talent.dancing_blades' to 'talent.dancing_blades.enabled' (1x).\nLine 4: Converted 'talent.dancing_blades' to 'talent.dancing_blades.enabled' (1x).\nLine 5: Converted 'talent.anger_management' to 'talent.anger_management.enabled' (1x).\nLine 7: Converted 'talent.tenderize' to 'talent.tenderize.enabled' (1x).\nLine 8: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 9: Converted 'talent.reckless_abandon' to 'talent.reckless_abandon.enabled' (1x).\nLine 10: Converted 'talent.anger_management' to 'talent.anger_management.enabled' (1x).\nLine 12: Converted 'talent.reckless_abandon' to 'talent.reckless_abandon.enabled' (1x).\nLine 12: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 13: Converted 'talent.annihilator' to 'talent.annihilator.enabled' (1x).\nLine 14: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 15: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 16: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 17: Converted 'talent.reckless_abandon' to 'talent.reckless_abandon.enabled' (1x).\nLine 18: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 21: Converted 'talent.annihilator' to 'talent.annihilator.enabled' (1x).\n\nThe import for 'multi_target' required some automated changes.\nLine 2: Converted 'talent.titanic_rage' to 'talent.titanic_rage.enabled' (1x).\nLine 3: Converted 'talent.improved_whirlwind' to 'talent.improved_whirlwind.enabled' (1x).\nLine 3: Converted 'talent.improved_whirlwind' to 'talent.improved_whirlwind.enabled' (1x).\nLine 7: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 10: Converted 'talent.overwhelming_rage' to 'talent.overwhelming_rage.enabled' (1x).\nLine 10: Converted 'talent.overwhelming_rage' to 'talent.overwhelming_rage.enabled' (1x).\nLine 12: Converted 'talent.reckless_abandon' to 'talent.reckless_abandon.enabled' (1x).\nLine 12: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 13: Converted 'talent.annihilator' to 'talent.annihilator.enabled' (1x).\nLine 14: Converted 'talent.annihilator' to 'talent.annihilator.enabled' (1x).\nLine 14: Converted 'talent.tenderize' to 'talent.tenderize.enabled' (1x).\nLine 15: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 16: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 17: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 18: Converted 'talent.reckless_abandon' to 'talent.reckless_abandon.enabled' (1x).\nLine 19: Converted 'talent.wrath_and_fury' to 'talent.wrath_and_fury.enabled' (1x).\nLine 22: Converted 'talent.annihilator' to 'talent.annihilator.enabled' (1x).\n\nThe import for 'default' required some automated changes.\nLine 6: Converted 'talent.anger_management' to 'talent.anger_management.enabled' (1x).\nLine 18: Converted 'talent.titans_torment' to 'talent.titans_torment.enabled' (1x).\nLine 18: Converted 'talent.titans_torment' to 'talent.titans_torment.enabled' (1x).\nLine 19: Converted 'talent.annihilator' to 'talent.annihilator.enabled' (1x).\nLine 19: Converted 'talent.avatar' to 'talent.avatar.enabled' (1x).\nLine 20: Converted 'talent.annihilator' to 'talent.annihilator.enabled' (1x).\n\nThe import for 'precombat' required some automated changes.\nLine 4: Converted 'talent.titans_torment' to 'talent.titans_torment.enabled' (1x).\nLine 5: Converted 'talent.reckless_abandon' to 'talent.reckless_abandon.enabled' (1x).\n\nImported 4 action lists.\n",
					["profile"] = "actions.precombat+=/berserker_stance\nactions.precombat+=/battle_shout\nactions.precombat+=/use_item,name=algethar_puzzle_box\nactions.precombat+=/avatar,if=!talent.titans_torment\nactions.precombat+=/recklessness,if=!talent.reckless_abandon\n\nactions+=/charge,if=time<=0.5||movement.distance>5\nactions+=/heroic_leap,if=(raid_event.movement.distance>25&raid_event.movement.in>45)\nactions+=/pummel\nactions+=/potion\nactions+=/conquerors_banner\nactions+=/algethar_puzzle_box,if=cooldown.recklessness.remains<3||(talent.anger_management&cooldown.avatar.remains<3)\nactions+=/irideus_fragment,if=buff.recklessness.up\nactions+=/manic_grieftorch,if=buff.avatar.down\nactions+=/gladiators_badge,if=cooldown.recklessness.remains>10&(buff.recklessness.up||boss&fight_remains<11||boss&fight_remains>65)\nactions+=/use_items\nactions+=/ravager,if=cooldown.recklessness.remains<3||buff.recklessness.up\nactions+=/arcane_torrent,if=rage<40&!buff.recklessness.up\nactions+=/lights_judgment,if=buff.recklessness.down\nactions+=/berserking,if=buff.recklessness.up\nactions+=/blood_fury\nactions+=/ancestral_call\nactions+=/fireblood\n## actions+=/bag_of_tricks,if=buff.recklessness.down&buff.enrage.up\nactions+=/avatar,if=talent.titans_torment&buff.enrage.up&raid_event.adds.in>15||!talent.titans_torment&(buff.recklessness.up||boss&fight_remains<20)\nactions+=/recklessness,if=!raid_event.adds.exists&(talent.annihilator&cooldown.avatar.remains<1||cooldown.avatar.remains>40||!talent.avatar||boss&fight_remains<12)\nactions+=/recklessness,if=!raid_event.adds.exists&!talent.annihilator||boss&fight_remains<12\nactions+=/spear_of_bastion,if=buff.enrage.up&(buff.recklessness.up||buff.avatar.up||boss&fight_remains<20||active_enemies>1)&raid_event.adds.in>15\nactions+=/call_action_list,name=multi_target,strict=1,if=active_enemies>2\nactions+=/call_action_list,name=single_target\n\nactions.multi_target+=/recklessness,if=raid_event.adds.in>15||active_enemies>1||boss&fight_remains<12\nactions.multi_target+=/odyns_fury,if=active_enemies>1&talent.titanic_rage&(!buff.meat_cleaver.up||buff.avatar.up||buff.recklessness.up)\nactions.multi_target+=/whirlwind,if=spell_targets.whirlwind>1&talent.improved_whirlwind&!buff.meat_cleaver.up||raid_event.adds.in<2&talent.improved_whirlwind&!buff.meat_cleaver.up\nactions.multi_target+=/execute,if=buff.ashen_juggernaut.up&buff.ashen_juggernaut.remains<gcd\nactions.multi_target+=/thunderous_roar,if=buff.enrage.up&(spell_targets.whirlwind>1||raid_event.adds.in>15)\nactions.multi_target+=/odyns_fury,if=active_enemies>1&buff.enrage.up&raid_event.adds.in>15\nactions.multi_target+=/crushing_blow,if=talent.wrath_and_fury&buff.enrage.up\nactions.multi_target+=/execute,if=buff.enrage.up\nactions.multi_target+=/odyns_fury,if=buff.enrage.up&raid_event.adds.in>15\nactions.multi_target+=/rampage,if=buff.recklessness.up||buff.enrage.remains<gcd||(rage>110&talent.overwhelming_rage)||(rage>80&!talent.overwhelming_rage)\nactions.multi_target+=/execute\nactions.multi_target+=/bloodbath,if=buff.enrage.up&talent.reckless_abandon&!talent.wrath_and_fury\nactions.multi_target+=/bloodthirst,if=buff.enrage.down||(talent.annihilator&!buff.recklessness.up)\nactions.multi_target+=/onslaught,if=!talent.annihilator&buff.enrage.up||talent.tenderize\nactions.multi_target+=/raging_blow,if=charges>1&talent.wrath_and_fury\nactions.multi_target+=/crushing_blow,if=charges>1&talent.wrath_and_fury\nactions.multi_target+=/bloodbath,if=buff.enrage.down||!talent.wrath_and_fury\nactions.multi_target+=/crushing_blow,if=buff.enrage.up&talent.reckless_abandon\nactions.multi_target+=/bloodthirst,if=!talent.wrath_and_fury\nactions.multi_target+=/raging_blow,if=charges>=1\nactions.multi_target+=/rampage\nactions.multi_target+=/slam,if=talent.annihilator\nactions.multi_target+=/bloodbath\nactions.multi_target+=/raging_blow\nactions.multi_target+=/crushing_blow\nactions.multi_target+=/whirlwind\n\nactions.single_target+=/whirlwind,if=spell_targets.whirlwind>1&talent.improved_whirlwind&!buff.meat_cleaver.up||raid_event.adds.in<2&talent.improved_whirlwind&!buff.meat_cleaver.up\nactions.single_target+=/execute,if=buff.ashen_juggernaut.up&buff.ashen_juggernaut.remains<gcd\nactions.single_target+=/thunderous_roar,if=buff.enrage.up&(spell_targets.whirlwind>1||raid_event.adds.in>15)\nactions.single_target+=/odyns_fury,if=buff.enrage.up&(spell_targets.whirlwind>1||raid_event.adds.in>15)&(talent.dancing_blades&buff.dancing_blades.remains<5||!talent.dancing_blades)\nactions.single_target+=/rampage,if=talent.anger_management&(buff.recklessness.up||buff.enrage.remains<gcd||rage.pct>85)\nactions.single_target+=/execute,if=buff.enrage.up\nactions.single_target+=/onslaught,if=buff.enrage.up||talent.tenderize\nactions.single_target+=/crushing_blow,if=talent.wrath_and_fury&buff.enrage.up\nactions.single_target+=/rampage,if=talent.reckless_abandon&(buff.recklessness.up||buff.enrage.remains<gcd||rage.pct>85)\nactions.single_target+=/rampage,if=talent.anger_management\nactions.single_target+=/execute\nactions.single_target+=/bloodbath,if=buff.enrage.up&talent.reckless_abandon&!talent.wrath_and_fury\nactions.single_target+=/bloodthirst,if=buff.enrage.down||(talent.annihilator&!buff.recklessness.up)\nactions.single_target+=/raging_blow,if=charges>1&talent.wrath_and_fury\nactions.single_target+=/crushing_blow,if=charges>1&talent.wrath_and_fury\nactions.single_target+=/bloodbath,if=buff.enrage.down||!talent.wrath_and_fury\nactions.single_target+=/crushing_blow,if=buff.enrage.up&talent.reckless_abandon\nactions.single_target+=/bloodthirst,if=!talent.wrath_and_fury\nactions.single_target+=/raging_blow,if=charges>1\nactions.single_target+=/rampage\nactions.single_target+=/slam,if=talent.annihilator\nactions.single_target+=/bloodbath\nactions.single_target+=/raging_blow\nactions.single_target+=/crushing_blow\nactions.single_target+=/bloodthirst\nactions.single_target+=/whirlwind\nactions.single_target+=/wrecking_throw\nactions.single_target+=/storm_bolt",
					["spec"] = 72,
				},
			},
		},
	},
}
