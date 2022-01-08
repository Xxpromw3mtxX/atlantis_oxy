ESX = nil
local randomPed
local randomDelivery
local randomPedHash
local oxyPed

AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() == resourceName) then
        DeletePed(oxyPed)
    end
end)  

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

    randomPed = math.random(1, #Config.npcLocations)
    randomDelivery = math.randmon(1, #Config.deliveryPoints)
    randomPedHash = math.random(1, #Config.pedModels)

    createNPC(Config.pedModels[randomPedHash].type, Config.pedModels[randomPedHash].model, Config.npcLocations[randomPed].position, Config.npcLocations[randomPed].heading, false)
end)

function createNPC(pType, hash, location, heading, isSynced)
	oxyPed = CreatePed(pType, hash, location, heading, isSynced)
	FreezeEntityPosition(oxyPed, true)
	SetEntityInvincible(oxyPed, true)
	SetBlockingOfNonTemporaryEvents(oxyPed, true)
	TaskStartScenarioInPlace(oxyPed, "WORLD_HUMAN_COP_IDLES", 0, true)
end