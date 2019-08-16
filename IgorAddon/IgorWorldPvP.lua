local frame = CreateFrame("FRAME")

function frame:OnEvent(self, event, ...)

	if (self == "CHAT_MSG_SYSTEM") then
		
		local System = event;
		
		if System == "You have opted into World PvP." then
			print("World PvP: HARDICORE Mode ON!")
			PlaySoundFile("Interface\\AddOns\\IgorAddon\\Audio\\Audio10pvpOn.mp3")
		elseif System == "Você optou por participar de JxJ no Mundo." then
			print("World PvP: HARDICORE Mode ON!")
			PlaySoundFile("Interface\\AddOns\\IgorAddon\\Audio\\Audio10pvpOn.mp3") 
		end
	end
end
	
	frame:SetScript("OnEvent", frame.OnEvent)
	frame:RegisterEvent("CHAT_MSG_SYSTEM")