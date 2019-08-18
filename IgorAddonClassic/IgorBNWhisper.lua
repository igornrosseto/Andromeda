local frame = CreateFrame("FRAME")

function frame:OnEvent(self, event, ...)

local msg, sender = ...

	if (self == "CHAT_MSG_BN_WHISPER") then
		PlaySoundFile("Interface\\AddOns\\IgorAddonClassic\\Audio\\Audio12MSN.mp3")
		elseif (self == "CHAT_MSG_WHISPER") then
		PlaySoundFile("Interface\\AddOns\\IgorAddonClassic\\Audio\\Audio12MSN.mp3")
	end
end

	frame:SetScript("OnEvent", frame.OnEvent)
	frame:RegisterEvent("CHAT_MSG_BN_WHISPER")
	frame:RegisterEvent("CHAT_MSG_WHISPER")
