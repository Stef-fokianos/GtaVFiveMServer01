local status = nil
local InAction = true

local isRendering = false

function Initialize(scaleform)
    local scaleform = RequestScaleformMovie(scaleform)

    while not HasScaleformMovieLoaded(scaleform) do
      Citizen.Wait(0)
    end
    
    PushScaleformMovieFunction(scaleform, "SHOW_SHARD_WASTED_MP_MESSAGE")
    PushScaleformMovieFunctionParameterString("~r~WASTED")
    PushScaleformMovieFunctionParameterString("")
    PopScaleformMovieFunctionVoid()
    return scaleform

  end
 

function startScaleform()
    isRendering = true
end

function stopScaleform()
    isRendering = false
end

function renderScaleform(scaleform)
   	DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255, 0)
end

Citizen.CreateThread(function()
    local initalizedScaleform = Initialize("mp_big_message_freemode")
    while true do 
        if isRendering then
            renderScaleform(initalizedScaleform)
        end
        Citizen.Wait(1)
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        TriggerEvent("xNt:SetQueueMax", "stanmii", 1)
        TriggerEvent("xNt:SetQueueMax", "heal", 2)
        SendNUIMessage({
            show = IsPauseMenuActive(),
            health = GetEntityHealth(GetPlayerPed(-1)) - 100,
            armor = GetPedArmour(GetPlayerPed(-1)),
            stamina = 100 - GetPlayerSprintStaminaRemaining(PlayerId()),
            st = status,
            getvehicle = IsPedInAnyVehicle(GetPlayerPed(-1)),
            carhealth = GetVehicleEngineHealth(GetVehiclePedIsIn(GetPlayerPed(-1)), false),
            
        })
    end
end)
RegisterNetEvent('stx_fwui:updateStatus')
AddEventHandler('stx_fwui:updateStatus', function(Status)
    status = Status
    SendNUIMessage({
        action = "updateStatus",
        st = Status,
    })
end)
local stacheck = false

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(3000)


 local staminax = 100 - GetPlayerSprintStaminaRemaining(PlayerId())
       

         if (staminax < 16)  then
            stacheck = false


   
        

    exports.xNt:SendNotification({
        text = " <i class='fas fa-tired' style='font-size:12px;color:red'></i> กำลังเหนื่อย",
        theme = "gta",
        type = "info",
        timeout = 1200,
        layout = "bottomLeft",
        progressBar = false,
        queue = "stanmii",
        animation = {
            open ="gta_effects_fade_in",
            close ="gta_effects_fade_out"
        },
        sounds = {
            volume = 0.1,
            conditions ={"docVisible"},
            sources ={"sound/Heartbeatx.mp3"}
            
        },
        killer = true
        
    })

      
elseif (staminax > 16) then
  

    stacheck = true
     
end
    end
end)

