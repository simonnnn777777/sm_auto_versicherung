

Citizen.CreateThread(function()
 while ESX == nil do
    ESX = exports["es_extended"]:getSharedObject()
  Citizen.Wait(0)
 end
end)

RegisterNetEvent('tax:picturemsg')
AddEventHandler('tax:picturemsg', function(icon, msg, title, subtitle)

     showPictureNotification(icon, msg, title, subtitle)

end)

function showPictureNotification(icon, msg, title, subtitle)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg);
    SetNotificationMessage(icon, icon, true, 1, title, subtitle);
    DrawNotification(false, true);
end
