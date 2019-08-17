
local f = CreateFrame("Frame")
f:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
f:SetScript("OnEvent", function(self, event)
	-- pass a variable number of arguments
self:OnEvent(event, CombatLogGetCurrentEventInfo())
end)

 function f:OnEvent(event, ...)
	local timestamp, subevent, _, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags = ...

	local playerGUID = sourceGUID
	
	local localizedClass, englishClass, localizedRace, englishRace, sex, name, realm = GetPlayerInfoByGUID(playerGUID)

	
  StaticPopupDialogs["ALERTA_PVP"] = {
  text = "Alerta! - %s - %s",
  button1 = "Dispensar",
  timeout = 5,
  whileDead = true,
  hideOnEscape = true,
}

	if englishRace == "NightElf" then
	StaticPopup_Show ("ALERTA_PVP", englishRace, englishClass)	
	end

	if englishRace == "Human" then
	StaticPopup_Show ("ALERTA_PVP", englishRace, englishClass)
	end

	if englishRace == "Dwarf" then
	StaticPopup_Show ("ALERTA_PVP", englishRace, englishClass)	
	end

	if englishRace == "Gnome" then
	StaticPopup_Show ("ALERTA_PVP", englishRace, englishClass)	
	end

end

