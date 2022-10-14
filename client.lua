RegisterNetEvent('710-liveryChanger', function()
	local ped = PlayerPedId()
	local PlayerVehicle = GetVehiclePedIsIn(ped, false)
	if GetVehicleLiveryCount(PlayerVehicle) ~= -1 then
		local vehicleLiverys = GetVehicleLiveryCount(PlayerVehicle) 
		if vehicleLiverys > 1 then
			debugPrint(vehicleLiverys)
			debugPrint(GetVehicleLivery(PlayerVehicle))
			if GetVehicleLivery(PlayerVehicle) < vehicleLiverys then 
				SetVehicleLivery(PlayerVehicle, GetVehicleLivery(PlayerVehicle) + 1)
			else
				SetVehicleLivery(PlayerVehicle, 1)
			end
		end
	end
end)