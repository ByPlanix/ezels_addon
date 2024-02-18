AddEventHandler('EZELS:OnLocalPlayerEnteredElsVehicle', function()
    LocalPlayer.state.invHotkeys = false
end)

AddEventHandler('EZELS:OnLocalPlayerExitedElsVehicle', function()
    LocalPlayer.state.invHotkeys = true
end)
