
local EQUIPMENT = script.parent
local STAT_NAME = "GasMask"


function OnEquipped(equipment, player)
	player:AddResource(STAT_NAME, 1)
end

function OnUnequipped(equipment, player)
	player:RemoveResource(STAT_NAME, 1)
end

EQUIPMENT.equippedEvent:Connect(OnEquipped)
EQUIPMENT.unequippedEvent:Connect(OnUnequipped)