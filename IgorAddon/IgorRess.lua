local frame = CreateFrame("FRAME")

function frame:OnEvent(self, event, ...)

	if (self == "RESURRECT_REQUEST") then
	print("Ress inc!")
	PlaySoundFile("Interface\\AddOns\\IgorAddon\\Audio\\Audio16Ress.mp3")
	end
end
	
	frame:SetScript("OnEvent", frame.OnEvent)
	frame:RegisterEvent("RESURRECT_REQUEST")