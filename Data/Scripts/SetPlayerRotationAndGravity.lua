--[[local propRotationModifier = script:GetCustomProperty("RotationModifier")
local propGravityModifier = script:GetCustomProperty("GravityModifier")
local propName = script:GetCustomProperty("Name")]]

--local parent = script.parent

--local player = script.


		
--function OnPlayerRespawn(player)
--	if player.team == 1 then	end
--end














local propParent = script:GetCustomProperty("Parent"):WaitForObject()


local function RotateOnSpawn(player)
	--local x, y, z = player:GetWorldRotation()
	
	player.parent = propParent
	player:SetWorldRotation(Rotation.New(0, 0, 0))
	--player:GetDefaultCamera():SetRotationOffset(Rotation.New(0, 0, 0))
	--player.gravityScale = player.gravityScale * -1
end






for _, p in pairs(Game.GetPlayers()) do
	RotateOnSpawn(p)
end






--[[propParent.SetPosition(p.GetWorldPosition())
	propParent.SetRotation(p.GetWorldRotation())
	p.parent = parent
	parent.Rotation = Rotation.NewRotation.New(0, 180, 0)]]
	
	--[[if p.GetAncestorByType("CoreObject") then
		UI.PrintToScreen("Object Found")
	end]]
	--p.respawnedEvent:Connect(RotateOnSpawn)
	--RotateOnSpawn(p)


local Number x = nil

--[[function Tick(deltaTime)
	for _, p in pairs(Game.GetPlayers()) do
		
		
		print(tostring(p:GetVelocity().x) .. " " .. p:GetVelocity().y .. " " .. p:GetVelocity().z)
	
	end
end]]
