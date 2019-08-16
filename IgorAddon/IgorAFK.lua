local frame = CreateFrame("FRAME")

function frame:OnEvent(self, event, ...)

	if (self == "CHAT_MSG_SYSTEM") then
		
		local System = event;
		
		if (System == "You are now Away: AFK" or System == "Você está ausente: LDT") then
			PlayMusic("Interface\\AddOns\\IgorAddon\\Audio\\Audio19AFK.mp3") elseif
			StopMusic() then
		end
	end
end
	
	frame:SetScript("OnEvent", frame.OnEvent)
	frame:RegisterEvent("CHAT_MSG_SYSTEM")
