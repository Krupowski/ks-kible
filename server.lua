ESX.RegisterUsableItem('toiletpaper', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getInventoryItem('toiletpaper').count >= 1 then
        xPlayer.removeInventoryItem('toiletpaper', 1)
        TriggerClientEvent('ks-kible:useToilet', source)
    else
        TriggerClientEvent('esx:showNotification', source, 'Nie masz papieru toaletowego!')
    end
end)
