local frame = CreateFrame("FRAME")

function frame:OnEvent(self, event, ...)

	if (self == "CHAT_MSG_SYSTEM") then

		local System = event;

		if System == "You are now flagged for PvP combat and will remain so until toggled off." then

			PlaySoundFile("Interface\\AddOns\\IgorAddon\\Audio\\Audio25Sharingan.mp3")
		 end
	end
end

	frame:SetScript("OnEvent", frame.OnEvent)
	frame:RegisterEvent("CHAT_MSG_SYSTEM")
