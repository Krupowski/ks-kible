local toiletModel = `prop_toilet_01`

exports.ox_target:addModel(toiletModel, {
    {
        name = 'use_toilet',
        label = 'Użyj toalety',
        icon = 'restroom',
        distance = 1.5,
        canInteract = function(entity, distance, coords, name)
            return true 
        end,
        onSelect = function(data)
            TriggerEvent('esx_toilet:useToilet')
        end
    }
})


RegisterNetEvent('esx_toilet:useToilet')
AddEventHandler('esx_toilet:useToilet', function()
    local playerPed = PlayerPedId()
    RequestAnimDict('timetable@jimmy@doorknock@')
    while not HasAnimDictLoaded('timetable@jimmy@doorknock@') do
        Citizen.Wait(100)
    end

    TaskPlayAnim(playerPed, 'timetable@jimmy@doorknock@', 'knockdoor_idle', 8.0, -8.0, -1, 1, 0, false, false, false)

    lib.showTextUI('Używasz toalety...')
    lib.progressBar({
        duration = 5000,
        label = 'Załatwiasz się',
        canCancel = false,
        anim = {
            dict = 'timetable@jimmy@doorknock@',
            clip = 'knockdoor_idle'
        },
        disable = {
            move = true,
            combat = true,
        }
    })

    ClearPedTasks(playerPed)
    lib.hideTextUI()
    ESX.ShowNotification('Zakończyłeś używanie toalety.')
end)
