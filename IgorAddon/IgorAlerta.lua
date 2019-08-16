SLASH_TURNOFF1 = "/turnoff1"
SlashCmdList["TURNOFF"] = function()
 		DisableAddOn("IgorAddon")
 	end


local f = CreateFrame("Frame")
f:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
f:SetScript("OnEvent", function(self, event)
	-- pass a variable number of arguments
	self:OnEvent(event, CombatLogGetCurrentEventInfo())
end)

function f:OnEvent(event, ...)
	local timestamp, subevent, _, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags = ...
	englishFaction = UnitFactionGroup(sourceName)
	level = UnitLevel(sourceName)
	englishClass = UnitClass(sourceName)
	
	if englishFaction == "Horde" then
		
  StaticPopupDialogs["ALERTA_PVP"] = {
  text = "Alerta!: Inimigo na area",
  --  sourceName," - ", level, englishClass -- 
  button1 = "Dispensar",
  -- OnAccept = , --
  timeout = 5,
  whileDead = true,
  hideOnEscape = true,
}


StaticPopup_Show ("ALERTA_PVP")	


end

end
