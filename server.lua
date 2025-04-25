ESX = nil
Citizen.CreateThread(function()
 while ESX == nil do
    ESX = exports["es_extended"]:getSharedObject()
  Citizen.Wait(0)
 end
end)


Citizen.CreateThread(function()
    
    while true do 
 
       for k, playerid in pairs(GetPlayers()) do
           local xPlayer = ESX.GetPlayerFromId(playerid)

           if xPlayer ~= nil then
               
               local vehicleCount = MySQL.Sync.fetchScalar("SELECT COUNT(plate) FROM owned_vehicles WHERE owner = @owner", 
               {
                   ['@owner'] = xPlayer.identifier
               }
               )

               local tax = vehicleCount * 250
               xPlayer.removeAccountMoney('bank', tax)
               -- msg
               TriggerClientEvent('tax:picturemsg', xPlayer.source, 'CHAR_SOCIAL_CLUB', 'Du hast ~r~' .. tax .. '$ ~s~an ~o~Darwin Autoversicherung ~s~gezahlt.', 'Darwin KFZ-Versicherung', 'Gebühren bezahlt')
           
           end
       end 

       Citizen.Wait(900000)
    end


end)