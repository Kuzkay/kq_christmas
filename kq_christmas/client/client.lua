function ShowTooltip(message)
    SetTextComponentFormat("STRING")
    AddTextComponentString(message)
    EndTextCommandDisplayHelp(0, 0, 0, -1)
end

RegisterNetEvent('kq_christmas:client:showTooltip')
AddEventHandler('kq_christmas:client:showTooltip', function(message)
    ShowTooltip(message)
end)
