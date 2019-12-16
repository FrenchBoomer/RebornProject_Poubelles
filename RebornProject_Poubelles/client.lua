TablePoubellesUtiliser = {}

if Langue == "fr" then
    LangueChoisie = Locales.fr
elseif Langue == "en" then
    LangueChoisie = Locales.en
elseif Langue == "es" then
    LangueChoisie = Locales.es
end

RegisterNetEvent("RebornProject:Notification")
AddEventHandler('RebornProject:Notification', function(texte)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(texte)
    DrawNotification(true, false)
end)

RegisterNetEvent("RebornProject:DisplayHelpText")
AddEventHandler('RebornProject:DisplayHelpText', function(texte)
  SetTextComponentFormat("STRING")
	AddTextComponentString(texte)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end)

CreateThread(function()
	while true do
		Wait(1000)
		oPlayer = GetPlayerPed(-1)
		local pedPos = GetEntityCoords(oPlayer)
		for k,v in ipairs(Config.objects) do
			local oSelectedObject = GetClosestObjectOfType(pedPos.x, pedPos.y, pedPos.z, 0.8, v.object, 0, 0, 0)
			local oEntityCoords = GetEntityCoords(oSelectedObject)
			local objectexits = DoesEntityExist(oSelectedObject)
			if objectexits then
				if GetDistanceBetweenCoords(oEntityCoords.x, oEntityCoords.y, oEntityCoords.z,pedPos) < DistanceDetectionObjets then
					if oSelectedObject ~= 0 then
						local objects = Config.objects
						if oSelectedObject ~= objects.object then
							objects.object = oSelectedObject
						end
					end
				end
			end
		end
	end
end)

function VerificationListePoubelle()
    for i=1, #TablePoubellesUtiliser do
    	print(TablePoubellesUtiliser[i])
        if objectcoords == TablePoubellesUtiliser[i] then
        	return true   
        end
        if (GetDistanceBetweenCoords(TablePoubellesUtiliser[i], GetEntityCoords(PlayerPedId())) < DistanceMinimumDeFouille) then
            return true
        end  
    end
end

CreateThread(function()
	while true do
		Wait(1)
		local objects = Config.objects
		if objects.object ~= nil then
			local player = oPlayer
			local getPlayerCoords = GetEntityCoords(player)
			objectcoords = GetEntityCoords(objects.object)
			if GetDistanceBetweenCoords(objectcoords.x, objectcoords.y, objectcoords.z,getPlayerCoords) < 1.0 then
					TriggerEvent("RebornProject:DisplayHelpText", LangueChoisie.toucheactivation)
				if IsControlJustPressed(0, ToucheClavier) then
					local VerificationPoubelle = VerificationListePoubelle()
					Wait(1000)
      				if VerificationPoubelle == true then
						TriggerEvent("RebornProject:Notification", LangueChoisie.NotificationDejaFaite)
					else
						TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BUM_BIN", 0, true)
						Wait(11000)
						table.insert(TablePoubellesUtiliser, objectcoords)
						TriggerServerEvent("RebornProject:RecuperationDansLaPoubelle")
						ClearPedTasksImmediately(GetPlayerPed(-1))
					end
				end
			end
		end
	end
end)