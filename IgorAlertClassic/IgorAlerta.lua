local f = CreateFrame("Frame")
f:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
f:SetScript("OnEvent", function(self, event)
	
self:OnEvent(event, CombatLogGetCurrentEventInfo())
end)

	
function f:OnEvent(event, ...)

	local timestamp, subevent, _, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags = ...

	local localizedClass, englishClass, localizedRace, englishRace, sex, name, realm = GetPlayerInfoByGUID(sourceGUID)

	local englishFaction, localizedFaction = UnitFactionGroup("player")

	local position = UnitInBattleground("player")

    if position == nil  then 

    	
		if englishFaction == "Horde" then

			if englishRace == "Human" then
			RaidNotice_AddMessage(RaidWarningFrame, name .. "-" .. englishClass .. "-" .. englishRace, ChatTypeInfo["RAID_WARNING"], 5)
			end

			if englishRace == "NightElf" then
			RaidNotice_AddMessage(RaidWarningFrame, name .. "-" .. englishClass .. "-" .. englishRace, ChatTypeInfo["RAID_WARNING"], 5)
			end

			if englishRace == "Dwarf" then
			RaidNotice_AddMessage(RaidWarningFrame, name .. "-" .. englishClass .. "-" .. englishRace, ChatTypeInfo["RAID_WARNING"], 5)
			end

			if englishRace == "Gnome" then
			RaidNotice_AddMessage(RaidWarningFrame, name .. "-" .. englishClass .. "-" .. englishRace, ChatTypeInfo["RAID_WARNING"], 5)
			end

			if englishRace == "VoidElf" then
			RaidNotice_AddMessage(RaidWarningFrame, name .. "-" .. englishClass .. "-" .. englishRace, ChatTypeInfo["RAID_WARNING"], 5)
			end

			if englishRace == "KulTiran" then
			RaidNotice_AddMessage(RaidWarningFrame, name .. "-" .. englishClass .. "-" .. englishRace, ChatTypeInfo["RAID_WARNING"], 5)
			end

			if englishRace == "DarkIronDwarf" then
			RaidNotice_AddMessage(RaidWarningFrame, name .. "-" .. englishClass .. "-" .. englishRace, ChatTypeInfo["RAID_WARNING"], 5)
			end

			if englishRace == "LightforgedDraenei" then
			RaidNotice_AddMessage(RaidWarningFrame, name .. "-" .. englishClass .. "-" .. englishRace, ChatTypeInfo["RAID_WARNING"], 5)
			
			end
  		end
	end
end
	
	