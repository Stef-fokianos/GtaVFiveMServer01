local GUI                       = {}
local PlayerData                = {}
local CurrentAction
local HasAlreadyEnteredMarker   = false
local LastZone

ESX                             = nil
GUI.Time                        = 0

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    Citizen.Wait(5000)
    PlayerData = ESX.GetPlayerData()
end)

function TeleportFadeEffect(entity, coords)

    Citizen.CreateThread(function()

        DoScreenFadeOut(800)

        while not IsScreenFadedOut() do
            Citizen.Wait(0)
        end

        ESX.Game.Teleport(entity, coords, function()
            DoScreenFadeIn(800)
        end)
    end)
end

AddEventHandler('esx_tpems:hasEnteredMarker', function(zone)

    if zone == 'HumaneLabEntrance' then
        TeleportFadeEffect(GetPlayerPed(-1), Config.Zones.HumaneLabIn.Pos)
    end

    if zone == 'HumaneLabExit' then
        TeleportFadeEffect(GetPlayerPed(-1), Config.Zones.HumaneLabOut.Pos)
    end
end)

-- Display markers
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        local coords = GetEntityCoords(GetPlayerPed(-1))
        
        for k,v in pairs(Config.Zones) do
            if(v.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos, true) < Config.DrawDistance) then
                DrawMarker(v.Type, v.Pos, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.Marker.x, Config.Marker.y, Config.Marker.z, Config.Marker.r, Config.Marker.g, Config.Marker.b, 100, false, true, 2, false, false, false, false)
            end
        end
    end
end)

-- Activate TP while in markers
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)

        local coords      = GetEntityCoords(GetPlayerPed(-1))
        local isInMarker  = false
        local currentZone = nil

        for k,v in pairs(Config.Zones) do
            if k ~= 'HumaneLabIn' and k~= 'HumaneLabOut' then
                if(GetDistanceBetweenCoords(coords, v.Pos, true) < Config.Marker.x) then
                    isInMarker  = true
                    currentZone = k
                end
            end
        end

        if isInMarker and not HasAlreadyEnteredMarker then
            HasAlreadyEnteredMarker = true
            LastZone                = currentZone
            TriggerEvent('esx_tpems:hasEnteredMarker', currentZone)
        end

        if not isInMarker and HasAlreadyEnteredMarker then
            HasAlreadyEnteredMarker = false
            TriggerEvent('esx_tpems:hasExitedMarker', lastZone)
        end
    end
end)
