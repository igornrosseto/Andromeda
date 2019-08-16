local frame = CreateFrame("FRAME")

function frame:OnEvent(self, event, ...)

	if (self == "CHAT_MSG_SYSTEM") then

		local System = event;

		if System == "Looting changed to free-for-all." then

			PlaySoundFile("Interface\\AddOns\\IgorAddon\\Audio\\Audio26LootMethodFFA.mp3")
		 end
	end
end

	frame:SetScript("OnEvent", frame.OnEvent)
	frame:RegisterEvent("CHAT_MSG_SYSTEM")
