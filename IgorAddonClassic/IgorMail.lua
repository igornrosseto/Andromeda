local frame = CreateFrame("FRAME")

frame:RegisterEvent("MAIL_SHOW")

local function eventHandler(self, event, ...)

	if event == "MAIL_SHOW" then
		PlaySoundFile("Interface\\AddOns\\IgorAddonClassic\\Audio\\Audio2OpenMail.mp3")
	end
end
	
frame:SetScript("OnEvent", eventHandler)