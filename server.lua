local Framework = exports['710-lib']:GetFrameworkObject()
local JobCheck = true --- set true if you want it to check the jobs below false if everyone can use this command.

RegisterCommand('changelivery', function(source, args, rawCommand)
    local Player = Framework.PlayerDataS(source)
    local PlayerJob = Player.Job.name
    if JobCheck then
        if PlayerJob == 'police' or PlayerJob == 'ambulance' or PlayerJob == 'mechanic' then
            TriggerClientEvent('710-liveryChanger', source)
        else 
            Player.Notify('You are not allowed to use this command', 'error')
        end
    else
        TriggerClientEvent('710-liveryChanger', source)
    end
end, false)