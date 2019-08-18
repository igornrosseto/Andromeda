local frame = CreateFrame("FRAME")

function frame:OnEvent(self, event, ...)

	if (self == "AUTOFOLLOW_END") then
	print(" -- Auto-follow OFF -- ")
	end
	
	if (self == "AUTOFOLLOW_BEGIN") then
		print(" -- Auto-follow ON -- ")
		PlayMusic("Interface\\AddOns\\IgorAddonClassic\\Audio\\Audio18Follow.mp3") elseif
		StopMusic() then
	end
end
	
frame:SetScript("OnEvent", frame.OnEvent)
frame:RegisterEvent("AUTOFOLLOW_BEGIN")
frame:RegisterEvent("AUTOFOLLOW_END")