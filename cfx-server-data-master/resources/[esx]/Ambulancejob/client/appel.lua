
ESX                             = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)



--
--
--      Rework appel ems ici 
--
--


local AppelPris = false
local AppelDejaPris = false
local AppelEnAttente = false 
local AppelCoords = nil




-- Prise de coords des appels
RegisterNetEvent("AppelemsGetCoords")
AddEventHandler("AppelemsGetCoords", function()
	ped = GetPlayerPed(-1)
	coords = GetEntityCoords(ped, true)
	ESX.TriggerServerCallback('EMS:GetID', function(idJoueur)
		TriggerServerEvent("Server:emsAppel", coords, idJoueur)
	end)

end)



-- Register de l'appel
RegisterNetEvent("AppelemsTropBien")
AddEventHandler("AppelemsTropBien", function(coords, id)
	AppelEnAttente = true
	AppelCoords = coords
	AppelID = id
	ESX.ShowAdvancedNotification("EMS", "~b~EMS request", "Someone need an ems !\n~g~Y~w~ to take the call\n~r~X~w~ to refuse", "CHAR_CALL911", 8)
end)



Citizen.CreateThread(function()
     while true do
		Citizen.Wait(1)
		-- Un IF en plus pour éviter la surcharge du script
		if AppelEnAttente then
			if IsControlJustPressed(1, 246) and AppelEnAttente then
				if ESX.PlayerData.job ~= nil and ESX.PlayerData.job.name == 'ambulance' then
					TriggerServerEvent('EMS:PriseAppelServeur')
					TriggerServerEvent("EMS:AjoutAppelTotalServeur")
					TriggerEvent('emsAppelPris', AppelID, AppelCoords)
					print(AppelID)
					print(AppelCoords)
					--TriggerEvent('emsAppelPris', AppelCoords)
				end 
			elseif IsControlJustPressed(1, 73) and AppelEnAttente then
				ESX.ShowAdvancedNotification("EMS", "~b~EMS request", "You have refused the call.", "CHAR_CALL911", 8)
				AppelEnAttente = false
				attente = false
				AppelDejaPris = false
			end
		end
		
		if IsControlJustPressed(1, 246) and AppelDejaPris == true then
			ESX.ShowAdvancedNotification("EMS", "~b~EMS request", "The call has already been answered, sorry.", "CHAR_CALL911", 8)
		end
     end
end)


RegisterNetEvent("EMS:AppelDejaPris")
AddEventHandler("EMS:AppelDejaPris", function(name)
	AppelEnAttente = false
	AppelDejaPris = true
	TriggerEvent("EMS:DernierAppel", name)
	Citizen.Wait(10000)
	AppelDejaPris = false
end)


-- Prise d'appel ems
RegisterNetEvent("emsAppelPris")
AddEventHandler("emsAppelPris", function(Xid, XAppelCoords)
	ESX.ShowAdvancedNotification("EMS", "~b~EMS request", "You took the call, follow the GPS route.", "CHAR_CALL911", 8)   
     afficherTextVolant(XAppelCoords, Xid)
end)


function afficherTextVolant(XAcoords, XAid)

     local emsBlip = AddBlipForCoord(XAcoords)
	SetBlipSprite(emsBlip, 353)
	SetBlipColour(emsBlip, 43)
	SetBlipShrink(emsBlip, true)
     SetBlipScale(emsBlip, 1.2)
     SetBlipPriority(emsBlio, 50)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentSubstringPlayerName("~b~Call ems")
	EndTextCommandSetBlipName(emsBlip)

	-- Ajout du deuxième blip plus animer

	local emsBlip2 = AddBlipForCoord(XAcoords)
	SetBlipSprite(emsBlip2, 42)
	SetBlipColour(emsBlip2, 5)
	SetBlipShrink(emsBlip2, true)
	SetBlipScale(emsBlip2, 1.2)
	SetBlipAlpha(emsBlip2, 120)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentSubstringPlayerName("~b~Call ems")
	EndTextCommandSetBlipName(emsBlip2)
	-- Ajout de la route
     SetBlipRoute(emsBlip, true)
     SetThisScriptCanRemoveBlipsCreatedByAnyScript(true)
     local rea = true

     while rea do
          if GetDistanceBetweenCoords(XAcoords, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
               DrawMarker(32, XAcoords, 0, 0, 0, 0, 0, 0, 0.5, 0.5, 0.5, 66, 245, 87, 255, false, false, 2, true, false, false, false)
               Draw3DText(XAcoords.x, XAcoords.y, XAcoords.z, "~g~A person in need of resuscitation here ...\n~b~[E]~w~To revive.", 4, 0.1, 0.1)

               if IsControlJustReleased(0, 38) then
                    local playerPed = PlayerPedId()
				ESX.ShowNotification(_U('revive_inprogress'))
				local lib, anim = 'mini@cpr@char_a@cpr_str', 'cpr_pumpchest'
				for i=1, 15, 1 do
					Citizen.Wait(900)
				
					ESX.Streaming.RequestAnimDict(lib, function()
						TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)
					end)
				end
				TriggerServerEvent('esx_ambulancejob:removeItem', 'medikit')
				TriggerServerEvent('esx_ambulancejob:revive', XAid)
				RemoveAnimDict('mini@cpr@char_a@cpr_str')
                    RemoveAnimDict('cpr_pumpchest')
                    rea = false
                    RemoveBlip(emsBlip)
                    RemoveBlip(emsBlip2)
               end
          end

          Wait(10)
     end


end


function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
     local px,py,pz=table.unpack(GetGameplayCamCoords())
     local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
     local scale = (1/dist)*20
     local fov = (1/GetGameplayCamFov())*100
     local scale = scale*fov   
     SetTextScale(scaleX*scale, scaleY*scale)
     SetTextFont(fontId)
     SetTextProportional(1)
     SetTextColour(250, 250, 250, 255)		-- You can change the text color here
     SetTextDropshadow(1, 1, 1, 1, 255)
     SetTextEdge(2, 0, 0, 0, 150)
     SetTextDropShadow()
     SetTextOutline()
     SetTextEntry("STRING")
     SetTextCentre(1)
     AddTextComponentString(textInput)
     SetDrawOrigin(x,y,z+2, 0)
     DrawText(0.0, 0.0)
     ClearDrawOrigin()
end





local AppelTotal = 0
local NomAppel = "~r~personne"
local enService = false

RegisterNetEvent("EMS:AjoutUnAppel")
AddEventHandler("EMS:AjoutUnAppel", function(Appel)
	AppelTotal = Appel
end)


RegisterNetEvent("EMS:PriseDeService")
AddEventHandler("EMS:PriseDeService", function(service)
	enService = service
end)

RegisterNetEvent("EMS:DernierAppel")
AddEventHandler("EMS:DernierAppel", function(Appel)
	NomAppel = Appel
end)

function DrawAdvancedText(x,y ,w,h,sc, text, r,g,b,a,font,jus)
	SetTextFont(font)
	SetTextProportional(0)
	SetTextScale(sc, sc)
	N_0x4e096588b13ffeca(jus)
	SetTextColour(r, g, b, a)
	SetTextDropShadow(0, 0, 0, 0,255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x - 0.1+w, y - 0.02+h)
end


Citizen.CreateThread( function()	
	while true do
		Wait(10)
		if enService then
			DrawRect(0.888, 0.254, 0.196, 0.116, 0, 0, 0, 50)
			DrawAdvancedText(0.984, 0.214, 0.008, 0.0028, 0.4, "Last call pickup:", 0, 191, 255, 255, 6, 0)
			DrawAdvancedText(0.988, 0.236, 0.005, 0.0028, 0.4, "~b~"..NomAppel.." ~w~took the last EMS call", 255, 255, 255, 255, 6, 0)
			DrawAdvancedText(0.984, 0.274, 0.008, 0.0028, 0.4, "Total call taken into account", 0, 191, 255, 255, 6, 0)
			DrawAdvancedText(0.988, 0.294, 0.005, 0.0028, 0.4, AppelTotal, 255, 255, 255, 255, 6, 0)

		end
	end
end)