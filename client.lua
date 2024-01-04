Citizen.CreateThread(function()
    while true do
        local locked = false
        local ped = GetPlayerPed(-1)
        if IsPedInAnyVehicle(ped, false) then
            local vehicle = GetVehiclePedIsIn(ped, false)
            local class = GetVehicleClass(vehicle)
            if class == 18 and locked == false then
                locked = true
                LocalPlayer.state.invHotkeys = false
            end
        else
            locked = false
            LocalPlayer.state.invHotkeys = true
        end
        Wait(1000)
    end
end)