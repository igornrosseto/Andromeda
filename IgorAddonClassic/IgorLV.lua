local frame = CreateFrame("FRAME")

function frame:OnEvent(self, event, ...)

	level = UnitLevel("player")

	if (self == "PLAYER_LEVEL_UP") then
	print("Level up! New level: " .. (tostring(level + 1)))
	PlaySoundFile("Interface\\AddOns\\IgorAddonClassic\\Audio\\Audio13LV.mp3") 
	end
end


    frame:SetScript("OnEvent", frame.OnEvent)
	frame:RegisterEvent("PLAYER_LEVEL_UP")