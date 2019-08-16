local frame = CreateFrame("FRAME")

function frame:OnEvent(self, event, ...)

	if (self == "BONUS_ROLL_RESULT") then
		local rewardType = event;
		if (rewardType == "money") or (rewardType == "artifact_power") then
		print("#chatiado")
		PlaySoundFile("Interface\\AddOns\\IgorAddon\\Audio\\Audio20Succ.mp3")
		elseif rewardType == "item" then
		print("Got Item!")
		PlaySoundFile("Interface\\AddOns\\IgorAddon\\Audio\\Audio9BonusRollSucess.mp3")
		end
	end
end

	frame:SetScript("OnEvent", frame.OnEvent)
	frame:RegisterEvent("BONUS_ROLL_RESULT")
