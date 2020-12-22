--[[local propFlashlight = script:GetCustomProperty("Flashlight")

function LightOnOff(light)
	if bindingPressed == "ability_extra_43" then
		print("Debug")
		if light.intensity == 0 then
			light.intensity = 77
		else
			light.intensity = 0
		end
	else
		print(bindingPressed)
	end
end

function OnPlayerJoined(player)
	local light = World.SpawnAsset(propFlashlight)
	light.AttachToPlayer(light, player, "camera")
	light:SetTransform(player:GetWorldTransform())
	player.bindingPressedEvent:Connect(LightOnOff)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)]]