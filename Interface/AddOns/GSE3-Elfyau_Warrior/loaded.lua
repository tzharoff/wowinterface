-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
local ModName, Sequences = ...
local GSE = GSE
---- PRINT MISSING GSE
	if GSE == nil then
	print("Addon requires GSE3. You can get it from Curseforge @https://www.curseforge.com/wow/addons/gse-gnome-sequencer-enhanced-advanced-macros")
	return;
	end
local L = GSE.L
local Statics = GSE.Static
local GSEPlugin = LibStub("AceAddon-3.0"):NewAddon(ModName, "AceEvent-3.0")
-----------------------------------------------------------------------------

if GSE.isEmpty(Sequences) then
  local Sequences = {}
end

-----------------------------------------------------------------------------

---- Put the macros here [[MACRO HERE]]
---- We are storing more detail to give more control.
---- To find the ClassID - /gse showspec will tell you what the ClassID and SpecID is for your character


Sequences["Fury"] = [[dieUkaakvjNsvk7svQAyk1XevlJeEMsmnPY1aPTPIVrIghQQZrkhuGfcIhkKjcLUiuTrkQpIKrQiNKqReLEjOMjP6MIYofXpL0qfPJsjlLkEQGMkjDvuLTsv(QIASs0zvWAbQ9sr(RQu5WezXe8yL0Kr0LH0MrXNrLrRkoTewneVwvnBH62iSBQ0VPudNchhWYvPNlLPtuxhP2ou8DQQXlvDEGSEfAt5MunfAibk2wI0KQPqpPBHKqmAZKQjztHzsRx7MjvtYMcXJrjqDLJSPDLnLKBkmefGg1DfTzs1uiEW7mp)om73VykKeg28xskUikUqmmwVqlw3AsiL9EJjV4CTXGwRxoDRGQEG0e5E0TaFfcTr2kPxjrV62fT8vDjnaKcz6vR4MqaBB1m6LHf9IXoTz5NcpeRlznAHQdrSgk)3g6se0iur06f72uLpnMSpMimfIbo)7UpLkYxh2pgnDzfZcZxP(2mM2Mc5ml6h2kzrigrodRqYAqbxmUB5PPwyCqf84UyCHGjxvFG3vdc1KmYtpYKUZ34zk1P70SuWR9n3JyXzGobww33GHw5Z2k9u5CZbtT7hz4c0DM4rhyDBwS4W6IpuayPzZSyX3mSpZOwSbBASBiyXfxcG2B0oq7cyotHZ)HRN)hxstrc)lJ88fmZVCeWWSlb)HI4sQCfmiLs6DUaJxrElkOOeeXhI4RrWWrhikYt6xosvtiEmBipjORyPnWdRgxVdGN)hxclnlm9JwqANWgI5HhmecpU9v0ebn(5ZZXSHOK(q6HrjVHIhH41kQNWpUT1uWHsaSLZy9ssNPAY0BgaeEsBfWKRCfheWLlGPbbKImOYkk9Dv715gCO9kZ)BhDXhaJNEhadyg)R9r12OeIkFNKuBRBGflUknFPJQbu2FgfBwmTiyk8xbG60V(IcoQXnrHFjeQbruSEQccKOAWq7uo(jQBugSc0IGLUgJ2VWZwj)ixW8WkRX17a45)XL0IIux1a8bXaTUC4J6Lp4HdVVU(yWUD0fFa80qmtxIgTJMArCBW9KKEedncqQyVncaeCsAF4Qsv3cqu1eIhZgYtc6z1AmvlsOQI8GsaSLZy9ssNPAWYoFxqQyVncaeCsAF4Qsv3cqu1eIhZgYtc6z1AmvlIR4GaUCbmniaevlmiJ9EL5)TJU4dGXtVdGbmJ)1(u5wSSpQ2gLqu57S4RffPUQb4dIbATpMXGcxPimOcrm0gGUs6DUaJxrElkOOeeXhI4RrWWrhikYt6xI07y(WzGsaSLZy9ssNPAG)UUsRv4mnRnHkR0396ebrhZvshUyCrcgykxbdsPKENlW4vK3Ickkbr8Hi(AemC0bII8K(LmukYIaMLUgJ2VWZwj)PJMJp(K1LUaMtERKSYgGc1InytJD7Ol(a4PHyMUenAhn1I42G7jj9igAeGuXEBeai4K0(WvLQUfGOQjepMnKNe0ZQ1yQwexXbbC5cyAqaiQwyqgF8H0dJsslUiPZGCWHqUYvCqaxUaMgeqkY)SwrteeXhI4RrWWrhigfad4MdjsDvliTty7mJlgb24N7EG2fWCU9e4soSbWWNAFmJbfUs5xvrKUk0v9oIAIhhh(iSoO5aLIWGOA85QHf3fiqaMLUgJ2VWZwj)U3BVKEhbWwoJ1ljDMQjdlZIAHeQGxbcxf1t4h32Ak4qja2YzSEjPZunz6ndaInjQgm0oLJFIkCMMAfIlfoRdMAFmJbfUnp)j8nd7Z8PYLMAFYBLK1LxWgwGwTd4bGytEG6mn1ZnIWfQGxbcxf1t4h32Ak4qja2YzSEjPZunz6ndaInjQgm0oLJFIkCMMAfIRuOcEfiCvupHFCBRPGdLaylNX6LKot1KP3mai2KOAWq7uo(jQW(5wWHolDbmN8wjznH1bt9bBzNqOTvPLflUknFPJQbu2FgfBwmTiyk8xbG60V(IcoQXnrHFjeQbruSEQccKOAWq7uo(jQBugSc0IGLUgJ2VWZwj)Pyu)ikNdukcdIQXNRgwCxGabyw6AmA)cpBL87EV9s6DeaB5mwVK0zQMmSmlQvkoRdMAFmJbfUnp)j8nd7Z8PYTyzFYBLK1LxWgwGwTd4bGytEG6mn1ZnIWfQGxbcxf1t4h32Ak4qja2YzSEjPZunz6ndaInjQgm0oLJFIkCMMAfIRuOcEfiCvupHFCBRPGdLaylNX6LKot1KP3mai2KOAWq7uo(jQW(5wWHolDbmN8wjznH1bt9bBzNqO9bAxaZrLqAUzaZ4FTTUTdwzqyUy9jWLC6foqfmERZIniSLFDdSSp5TsY6cowrPFjsVJ5dNbkbWwoJ1ljfOqs1fkLGoqkIlivTdQaTOmp)32U4fGOQjepMnKNaKcGmiq(NAGToq7cyo3EcCjNLUaMtERKSYIBZZFcpMukCtooHbMnaggFb1hdDcd7Z8bB536HFhyp7tD5Wp786TqyOGtG8sy6u7NKuDHwzOFWUVE66OKnfwejvAJwfwHyqBGhYXxjMBoyGB7125T2A(9rRiolCgkSfloCpF1x4z8ZDmyzULAAU4ZT3WZ4VW65UeYd3gQr3ea2nKrbm)impArdMNbZWIZioqTH8A4)bjqp)dvzOPCy3FZk5(e06W3eBSNDQCIn2dctdixzbwmKQrdeeqb4gJfGbbf(MnHuqe0HbsH(2YfMIG0lAOa4WnKorpuLtE1IY5AlHtsi8F7tqCSCH5zfxo0Np74dO9JakWXDkjbP9Pssgad957bIjN0hfiv(fjo1qmh2914KNy3LMi8MIiWNZ1orOFO72jegaZHiR8C9hYb)2HpQx(koFj)LAsziZze44eUsQoKd0)D1ikGqYh9oj56en4(YZCu(Qv)ejKrT3QCU5kdxlpm(U(iiArFQ1uox3796qBme)Y)OYDAPc6fivycaS4ndsDBnysqQS899wtelqQHRZK)yAdZ0t2NkRLjztYMcLbzGAkmQQRJhPkwtmjBYe]]
Sequences["Arms"] = [[deumhaaksLtjczyi1XiLLPaptknnQQRjrBdv9nsACIOZbXbbPfsupurMicxufBKu1hvPrQkoPcTsvLxkQzsj3ekTtvv)ergkQCuLQLkcEQumvjCvrARuPVkKXQGolvzTqXEvu)veQdRKflvpwPmzu6Ya2mK(SqnAk60q1QrYRjXSLu3Mi7MGFtPgoI64Oy5e65cMoqxhuBxs(oigVQ05PI1tHN1MlMBiVCQTxSZfZnUlr8vVgimxmdo3GDTjAhMlMbNBo1asacGt2WcGZ)AZnnamWacBaH5I5Md0ednAUHDcihVw1IEfmCb1TaAIcDwwr7ykiy3qKG9OXPEbbmKXv0)LHoPq9ZUpQ15YX4wbcgfOpJKo4xAa0(BoyjSX5)XujeWR0O4G1uQGrc4wEsOpPuJ7e7ajkhEE24aQrT8a5GUZuUZOujJgQ0PC9BgHtOsCOmxebxgzN3Le8WB1oBDJZs7tul)O8I1bJIcIbQb9AcktbufueOkwsY4PcmQq21)rh1l9v4AMerMGLiOEnddsd76SHTIjNvioaqiRuvOpGuzp4fov(Ns1zl7kDAuZMjLSkD0lw60kuIkvyyp4f2Ear09NR1ChNmLf9g(ZrMgEjgt7T(b8BOXy63b5AJfSyX5HWCvPQrG8aqHKSFIG5leblxJPOa(hVGBf(NgofksY(jcMVqeSCnMIc4F8cUv4FA4uwQO98KPKVbpH0gEPT8wgqJqvn4LGjEB1bXA4hHPKVbpYJIhyGQyfi1glGYK7fsruD7AKK9temFHiy5AmffW)4fCn4cA(kij7Niy(crWY1ykkG)Xl4AWf083vr75jtjFdEcPn8sB5TmGgHQAWlbt8wt9iOqmvtriOk1yZQzcZVvifd2fLiHl(nRE7KbDzJtkHOJbTKIldzrrl)HDd37cj2pV(To6wKDuIneGdyqrgCb7D7DyblwCEimxvQAeiO1Eow07W8i4gzyqOvkiy1uQAGHyfCRWbl24Yhe0ktvBNim0QSv5)CaApZ4kav5IZc14cUnbHVKn5LZjRXqj8sl)H1RdquJhHKTojizpAwXrlJ6bruX6KaeeFcPn8sB5TmGgY4kKYgNucr7nW7OxS0PTZEWE0tAmzgouFb4leb7agm1StHlMaz9xtjRJmnS9LKCVN(3qlR1aHJ3oUNNAZVr06oIlQ2o7bRo(6ptvBNim0QSv5)CaApZ4kav5IZc14cUnbHVKn5LZjRXqj8slZkZ(aaeSRalxJPOa(hVGRP57ZVyGJwgnSdgk2vDay8iapDqvv0EEYuY3Gpb3iEN2o7b7rpPXKz4q9fGVqeSdyWuZofUycK1FnLSoY0W2xsY9E6FdTSwdeoE74EEQn)grR7iUOA7ShS64TJ75jYIkO82YBzaT3yxvR1tmSG7LdHGoeJf7t94R(NMpeuRpctjFdEKoS04r2rgpFz84GQyYqxCxTGC(Wm3pVGRMmke(swsoaidIgWG3FYGAW2xsY9E6Fyi3DzAzDsOvzp9tCr1kuIkv4(cW4reD)5Ct)exuTG5WtkgSlkreRHQhkgs9km1oq13APXqr0nXDpeT6IDGJWr5rn8xoapLoTDfuaFshp3dc)zSd(m4jc16QQdNtSs5tXx8rJeFocdXf)Pqs0If7hcVDzaLcOAQrLK7D9SAhWBF3VomjWYUybfnb8haHDZRbOVR60hPrXmm9NKe604hHzntoDIlLfoLa7nYNb0BaUbTKCaMoE3a(3CnUa0WYbYAZwoyk2ZGmMTikSKe(hsttljCOeeaHsliOJRlY0s7dARoS(a(hRpPGGGGGGavlwmlPJGbd4gyDdzc(8qYc6qLPUK)kraaIpXX7xoec58Z)vDj6syiahWGIexZKtPLF3FDtLh3xmyAlynGmU0issOYqMcZcu1nckSHgH3xC11r)B4qWv7anrz3)RK8DJt3OhHkVbNr6cwbhgUhfHhHoeuNUWsPTatMqQ7ryg8h8h9cNWKjM4fsTIsgxmGqq)YCtDTPOnGDnEVbrsssKCoi8AKxZGZGZnGoKbMBMizzDMkgj9pdopda]]
Sequences["Protection"] = [[deu3haake6uQQmms6yaSmuvpJs10KKRHQSnQY3OugNGoNICqGSqG6HQKjkHlQKnIGpIOrcLtsQwPk1lfPzsu3KQANc1pjyOuXrjXsvvLNcQPkrxvrTvv4RsPXkKZskRLq7fq)vvvDyvzXi1JrXKvQldXMvrFwugnfDAPA1QkVMiZgQUTi2nf(nvA4q64kSCk55cmDqUoQSDj13fvJxkopswpknqaalbcJ(OWDFBGLaHpEw9hnosaWsGqaH9FmwUbalbcbeEHJKGyaD5YzabmgaqyyKbhIbdsaWsGWlq)70ceEtPMB(E49lChj15Hu9VaLKKbpkonnenXraeKJgGowPLoXSa1QUYLBQoamoMnNsqXqcadDnGTLIYNoYSWikZsr1SwrRBPiaXOOjjR4j3LtzzuQ8FrU0QOYkPys1w41cQqNg1cEkDzoW1kmeLSIyPdYXTCSheyxMXwnacwkTK1AyoGIyQr9BtPvWVbjkvdiMMsvsgA7uFZPVmcQ9nSMl54xQt4MQI86sxjFMmgYcQrdaMq5wr1ULKS4wgWof0VupWfHBvp2e(QwOY8E3UeHgxwKuRWTQxfA55PeBckrAqfHXgniDuBsOps8vvM)YXn1avnHJw0LAx8ZfdCUNS3abmXeyeVx74aMKgY(buLV8YrQxwTWO66geYYzkEucn5soz0IESy0rOGN7JL(nDe6Tmg1XQG0Y8hR4jTM4S2(vPBoJ50OSzf3g76w4n)H9dOkF5LJlsKp6ghZ9LOIRyJ)5NDORKorw4eeBaez26e4Fzrg69CwHXTGLCFnnEFaIROgHIuSD()fB0G0rTjH(iXxvz(lh3udu1eoArxQDXpxmW5(WHDEwTEYEdeWetGr8ETJdDHaioeMPGpafCeYPgHI(4mPnMvZ3eiZn)XkEsRjoRTFv6MZyonkBwXTXUUfEZFy)aQYx(dhnyHaVCCrI8r34yUVevCzjHegSfR1gUqItFCaZjzMG4DwdIpneRQiZwNa)llYqeZTobq4sCAHEVBxII(4mPXfYMV2t0Rn0bNPMVjOmfswtySzcXTg4q5R0Wo1uq9au0et0abmXeyeVx74agMJzJTSQDpvf6EFUzi)uZ5es5XIrhHcEUpwfKCOef9XzsJlKnFTNOxBOdotnFtqzkKSMWyZeIBnWHYxPHDQPGIUUbHSCMIhLqJu9GfHzstpJYgNac2I1HZLQRIROcV91eIpZq(bZt)X7Znd5NAoNqkpa0Z2Qqbp3hl(1R3RjS1izkOOdEjWkW4x0M5rSGXoCclplTBsa4aw7pEuxpmsvDBN6yD(HSuFQ0KyRYTVSmdvxfxHtbjtwLCCORNE73PqXt6ezfpP1GUs6eDkfgFI)T5IIiW)YIme(VW3BUcdmLNS3GF4qCCMyJ0qDYgYmRtJY2cMNyBGW(TNcCyKUx630rOLNNsSRCQrOOpotAdAuezvCl2GCLHVJwfKwOI6yc4AwCcP8yHtU4r(zx8j9rMtD4oon)XkEsRjoRTFv6MZyonkBwXTXUUfEZFy)aQYx(dhnyHaVCK6LvlmQUUbHSCMIhLqtEUeg24qqkMbehYeClzvSrdshfZo31BEwfI3s)Moc9wgJ6yvqkHsKgurySrdsh12aKMNmOdS0RexsQUUbHSCMIh5yakAsBCOIJR4rSOBWofuAFe4MzosqI8r34yUVrVxwTyfA8KbmhxrncHaBHf4hFMH8dMN(JhaORKoXVRoIqCK2aUXKsveMQ7PFHCkXU8Hd78CgfonhlMJp3aohfZWNIzJUbkripiqrtET)a8xdk2n4Cvq92vejHmACqXY1Pm4u5CoztCz8DIn0ibVcBqPXWJzocV)L6Y(1)uXwO2vy0sZvbCAkpSfiSN8OCMIUsrJk(wsI3)GBO5Ec34fHXvZiO1AaG8GoOGblq6GhA7m0XgrPUQuQwaRauwEMeDDchfyWG3GgpJUbR9)(ah6NcBWktZzZcBZiasdeyMu(cLtpJo3Gwqw0px6VYYYYYsdb6i(zUTFZtlB0ssPwzJRHWJeE6(vNobjrbz9ovgFIInhlq3W87yXr9su)7qEl2KPNzI1NiDGHMUwmz1oOHzbfrxPbHf4V)fR(HtpHm3km1NumbGp69ynlZjgcIMeztejMss6G6qZt20SMPS1nKqa9XXnNI74V4peCsZtZUmhbD74EeiZZBjPHIGix3eYUnkuHyxtEaqFaHacbegIcfbi8LGS86QuxigieqGa]]

-----------------------------------------------------------------------------
-- These are just descriptive so could put anything in here
local macroNames = {"Fury", "Arms", "Protection"}

-----------------------------------------------------------------------------

local function loadSequences(event, arg)
  if arg == ModName then
---- Force overwrite of macros ignoring the players merge preference
    for k,v in pairs(Sequences) do
	GSE.ImportSerialisedSequence(v, false)
    end


---- Tell GSE to reload the new stuff
    GSE.PerformReloadSequences()


---- Print Success Message
    GSE.Print("Hello, " .. UnitName("player") .. " " .. UnitLevel("player") .. "  - Elfyau's Warrior Macro Set has been loaded.", ModName)
  end
end


if GSE.RegisterAddon(ModName, C_AddOns.GetAddOnMetadata(ModName, "Version"), macroNames) then
  loadSequences("Load", ModName)
end

GSEPlugin:RegisterMessage(Statics.ReloadMessage,  loadSequences)
