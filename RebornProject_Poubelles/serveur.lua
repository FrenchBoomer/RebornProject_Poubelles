if Langue == "fr" then
    LangueChoisie = Locales.fr
elseif Langue == "en" then
    LangueChoisie = Locales.en
elseif Langue == "es" then
    LangueChoisie = Locales.es
end

RegisterServerEvent('RebornProject:RecuperationDansLaPoubelle')
AddEventHandler('RebornProject:RecuperationDansLaPoubelle', function()
	local source = source
	local NombreAleatoire = math.random(1, 20)
	local ArgentAleatoire = math.random(ArgentMinimum, ArgentMaximum)
	TriggerEvent('es:getPlayerFromId', source, function(user)
		if NombreAleatoire == 1 then
			user.addMoney(ArgentAleatoire) -- A remplacer par ce que vous desirez donner au joueur
			TriggerClientEvent("RebornProject:Notification", source, LangueChoisie.notificationpoubelle1..ArgentAleatoire..LangueChoisie.logoargentnotif)
		elseif NombreAleatoire == 2 then
			TriggerClientEvent("RebornProject:Notification", source, LangueChoisie.notificationpoubelle2)
		elseif NombreAleatoire == 3 then
			user.addMoney(ArgentAleatoire) -- A remplacer par ce que vous desirez donner au joueur
			TriggerClientEvent("RebornProject:Notification", source, LangueChoisie.notificationpoubelle1..ArgentAleatoire..LangueChoisie.logoargentnotif)
		elseif NombreAleatoire == 4 then
			TriggerClientEvent("RebornProject:Notification", source, LangueChoisie.notificationpoubelle2)
		elseif NombreAleatoire == 5 then
			user.addMoney(ArgentAleatoire) -- A remplacer par ce que vous desirez donner au joueur
			TriggerClientEvent("RebornProject:Notification", source, LangueChoisie.notificationpoubelle1..ArgentAleatoire..LangueChoisie.logoargentnotif)
		elseif NombreAleatoire == 6 then
			TriggerClientEvent("RebornProject:Notification", source, LangueChoisie.notificationpoubelle2)
		elseif NombreAleatoire == 7 then
			user.addMoney(ArgentAleatoire) -- A remplacer par ce que vous desirez donner au joueur
			TriggerClientEvent("RebornProject:Notification", source, LangueChoisie.notificationpoubelle1..ArgentAleatoire..LangueChoisie.logoargentnotif)
		elseif NombreAleatoire == 8 then
			TriggerClientEvent("RebornProject:Notification", source, LangueChoisie.notificationpoubelle2)
		elseif NombreAleatoire == 9 then
			user.addMoney(ArgentAleatoire) -- A remplacer par ce que vous desirez donner au joueur
			TriggerClientEvent("RebornProject:Notification", source, LangueChoisie.notificationpoubelle1..ArgentAleatoire..LangueChoisie.logoargentnotif)
		elseif NombreAleatoire == 10 then
			TriggerClientEvent("RebornProject:Notification", source, LangueChoisie.notificationpoubelle2)
		elseif NombreAleatoire == 11 then
			user.addMoney(ArgentAleatoire) -- A remplacer par ce que vous desirez donner au joueur
			TriggerClientEvent("RebornProject:Notification", source, LangueChoisie.notificationpoubelle1..ArgentAleatoire..LangueChoisie.logoargentnotif)
		elseif NombreAleatoire == 12 then
			TriggerClientEvent("RebornProject:Notification", source, LangueChoisie.notificationpoubelle2)
		elseif NombreAleatoire == 13 then
			user.addMoney(ArgentAleatoire) -- A remplacer par ce que vous desirez donner au joueur
			TriggerClientEvent("RebornProject:Notification", source, LangueChoisie.notificationpoubelle1..ArgentAleatoire..LangueChoisie.logoargentnotif)
		elseif NombreAleatoire == 14 then
			TriggerClientEvent("RebornProject:Notification", source, LangueChoisie.notificationpoubelle2)
		elseif NombreAleatoire == 15 then
			user.addMoney(ArgentAleatoire) -- A remplacer par ce que vous desirez donner au joueur
			TriggerClientEvent("RebornProject:Notification", source, LangueChoisie.notificationpoubelle1..ArgentAleatoire..LangueChoisie.logoargentnotif)
		elseif NombreAleatoire == 16 then
			TriggerClientEvent("RebornProject:Notification", source, LangueChoisie.notificationpoubelle2)
		elseif NombreAleatoire == 17 then
			user.addMoney(ArgentAleatoire) -- A remplacer par ce que vous desirez donner au joueur
			TriggerClientEvent("RebornProject:Notification", source, LangueChoisie.notificationpoubelle1..ArgentAleatoire..LangueChoisie.logoargentnotif)
		elseif NombreAleatoire == 18 then
			TriggerClientEvent("RebornProject:Notification", source, LangueChoisie.notificationpoubelle2)
		elseif NombreAleatoire == 19 then
			user.addMoney(ArgentAleatoire) -- A remplacer par ce que vous desirez donner au joueur
			TriggerClientEvent("RebornProject:Notification", source, LangueChoisie.notificationpoubelle1..ArgentAleatoire..LangueChoisie.logoargentnotif)
		elseif NombreAleatoire == 20 then
			TriggerClientEvent("RebornProject:Notification", source, LangueChoisie.notificationpoubelle2)
		end
	end)
end)

-- NE PAS TOUCHER !!!

local CurrentVersion = '1.0.0'
local GithubResourceName = GetCurrentResourceName()
local Name = 'Walter White'

PerformHttpRequest('https://raw.githubusercontent.com/WalterWhite84/'.. GithubResourceName .. '/master/Version', function(Error, NewestVersion, Header)
    print('\n')
    print('\n')
    print('#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#')
    print("## Nom de la ressource : "..GithubResourceName)
    print('## Production: ' .. Name)
    print('## Derniere version : ' .. NewestVersion)
    print('## Version en cours : ' .. CurrentVersion)
    print('Lien de telechargement de telechargement du script : https://github.com/WalterWhite84/RebornProject_Poubelle')
    print('#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#-#')
    print('\n')
    print('\n')
end)

-- FIN