SLASH_RELOADUI1 = "/rl" -- for quicker reloading
SlashCmdList.RELOADUI = ReloadUI

------

local frame = CreateFrame("FRAME") -- frame padrao chat


local function eventHandler(self, event, ...) -- funcao para manipular evento

linksecreto = math.random(1, 100)	 -- rng entre 1 e 100


	if event == "PLAYER_ENTERING_WORLD" and linksecreto == 1 then
		print("Link secreto obtido! https://goo.gl/i7whhC")
	end

	if event == "PLAYER_DEAD" then
	PlaySoundFile("Interface\\AddOns\\IgorAddonClassic\\Audio\\Audio8oof.mp3", "Dialog")
	end



end

frame:SetScript("OnEvent", eventHandler) -- Sets an event handler for a specific event type for this frame.
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("PLAYER_DEAD") -- detectar evento


