local PlayerData                = {}
ESX                             = nil

local heist = false
local tags = false
local searched = 0
local location1 = false
local location2 = false
local location3 = false
local location4 = false
local location5 = false
local location6 = false
local location7 = false
local location8 = false
local location9 = false
local location10 = false
local location11 = false
local location12 = false
local location13 = false
local location14 = false
local location15 = false
local location16 = false
local location17 = false
local location18 = false
local location19 = false
local location20 = false
local yacthped = nil
local retval = true

CreateThread(function()
    while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Wait(0)
    end
  end)  

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)


CreateThread(function() -- tags  
    while true do
        Wait(1)

        local ped = PlayerPedId()
            local yacht = AddBlipForCoord(-2084.88, -1018.12, 12.78)
                SetBlipSprite(yacht, 160)
                BeginTextCommandSetBlipName("STRING")
                AddTextComponentString(_U('blipname'))
                SetBlipAsShortRange(yacht, true)
                EndTextCommandSetBlipName(yacht)
                return
        end
    end)


    AddEventHandler('onResourceStart', function(resourceName)
        if GetCurrentResourceName() == resourceName then
            CreateThread(function()
                local coords = vector3(-2084.88, -1018.12, 12.78)
                local model = "a_m_m_soucent_02"
                local heading = 70.0
                RequestCollisionAtCoord(coords)
                RequestModel(model)
                while not HasModelLoaded(model) do
                    Wait(50)
                end
                yachtped = CreatePed('CIVMALE', model, coords, heading, true, true)
                GiveWeaponToPed(yachtped, GetHashKey('WEAPON_MICROSMG'), 100, false, true)
                SetCurrentPedWeapon(yachtped, GetHashKey('WEAPON_MICROSMG'), true)
            end)
        end
    end)

   CreateThread(function()
        while true do
          Wait(50)
            local ped = PlayerPedId()
            if not heist then
                if IsPlayerFreeAiming(PlayerId(), yachtped) then
                    TaskShootAtEntity(yachtped, PlyaerPedId, 0, '0xD6FF6D61') 
                    TriggerServerEvent("hinode_yachtrobbery:robbery")
                end
            end
        end
    end)
    
    AddEventHandler('onResourceStop', function (resource)
        if resource == GetCurrentResourceName() then
            SetEntityAsMissionEntity(yachtped, false, true)
            DeleteEntity(yachtped)
        end
    end)   



CreateThread(function()
    while true do
        Wait(100)
            local ped = PlayerPedId()
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2084.88, -1018.12, 12.78, true) > 100 then
                heist = false
                tags = false
            end
        end
    end)
        
RegisterNetEvent("hinode_yachtrobbery:start")
AddEventHandler("hinode_yachtrobbery:start", function()
  heist = true
  tags = true
  CreateThread(function()
    while true do 
      Wait(1)
        local ped = PlayerPedId()
        if not location1 and tags == true then
            DrawMarker(20, -2054.18, -1032.38, 8.97, 0, 0, 0, 0, 0, 155.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2054.18, -1032.38, 8.97, true) < 1 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location1 = true
                        searched = searched+1
                    end
                end
            end
        if not location2 and tags == true then
            DrawMarker(20, -2051.59, -1024.84, 8.97, 0, 0, 0, 0, 0, 155.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2051.59, -1024.84, 8.97, true) < 1 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location2 = true
                        searched = searched+1
                    end
                end
            end
        if not location3 and tags == true then
            DrawMarker(20, -2076.74, -1018.55, 8.97, 0, 0, 0, 0, 0, 155.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2076.74, -1018.55, 8.97, true) < 1 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location3 = true
                        searched = searched+1
                    end
                end
            end
        if not location4 and tags == true then
            DrawMarker(20, -2078.1, -1022.55, 8.97, 0, 0, 0, 0, 0, 70.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2078.1, -1022.55, 8.97, true) < 1 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location4 = true
                        searched = searched+1
                    end
                end
            end
        if not location5 and tags == true then
            DrawMarker(20, -2087.27, -1019.9, 8.97, 0, 0, 0, 0, 0, 70.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2087.27, -1019.9, 8.97, true) < 1 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location5 = true
                        searched = searched+1
                    end
                end
            end
        if not location6  and tags == true then
            DrawMarker(20, -2085.70, -1015.18, 8.97, 0, 0, 0, 0, 0, 70.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2085.70, -1015.18, 8.97, true) < 1 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location6 = true
                        searched = searched+1
                    end
                end
            end
        if not location7  and tags == true then
            DrawMarker(20, -2096.22, -1014.49, 8.97, 0, 0, 0, 0, 0, 70.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2096.22, -1014.49, 8.97, true) < 1 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location7 = true
                        searched = searched+1
                    end
                end
            end
        if not location8 and tags == true then
            DrawMarker(20, -2094.77, -1020.14, 8.97, 0, 0, 0, 0, 0, 155.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2094.77, -1020.14, 8.97, true) < 1 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location8 = true
                        searched = searched+1
                    end
                end
            end
        if location9 == false and tags == true then
            DrawMarker(20, -2090.70, -1010.64, 8.97, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2090.70, -1010.64, 8.97, true) < 1 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location9 = true
                        searched = searched+1
                    end
                end
            end
        if location10 == false and tags == true then
            DrawMarker(20, -2096.18, -1016.3, 5.88, 0, 0, 0, 0, 0, 155.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2096.18, -1016.3, 5.88, true) < 1 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location10 = true
                        searched = searched+1
                    end
                end
            end
        if location11 == false and tags == true then
            DrawMarker(20, -2096.1, -1008.06, 5.88, 0, 0, 0, 0, 0, 170.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2096.1, -1008.06, 5.88, true) < 1 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location11 = true
                        searched = searched+1
                    end
                end
            end
        if location12 == false and tags == true then
            DrawMarker(20, -2090.33, -1013.92, 5.88, 0, 0, 0, 0, 0, 70.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2090.33, -1013.92, 5.88, true) < 1 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location12 = true
                        searched = searched+1
                    end
                end
            end
        if location13 == false and tags == true then
            DrawMarker(20, -2089.00, -1009.75, 5.88, 0, 0, 0, 0, 0, 70.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2089.00, -1009.75, 5.88, true) < 1 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location13 = true
                        searched = searched+1
                    end
                end
            end
        if location14 == false and tags == true then
            DrawMarker(20, -2084.56, -1014.13, 5.88, 0, 0, 0, 0, 0, 70.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2084.56, -1014.13, 5.88, true) < 1 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location14 = true
                        searched = searched+1
                    end
                end
            end
        if location15 == false and tags == true then
            DrawMarker(20, -2082.85, -1012.15, 5.88, 0, 0, 0, 0, 0, 170.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2082.85, -1012.15, 5.88, true) < 1 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location15 = true
                        searched = searched+1
                    end
                end
            end
        if location16 == false and tags == true then
            DrawMarker(20, -2077.13, -1022.54, 5.88, 0, 0, 0, 0, 0, 70.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2077.13, -1022.54, 5.88, true) < 1 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location16 = true
                        searched = searched+1
                    end
                end
            end
        if location17 == false and tags == true then
            DrawMarker(20, -2071.12, -1020.73, 5.88, 0, 0, 0, 0, 0, 70.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2071.12, -1020.73, 5.88, true) < 1 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location17 = true
                        searched = searched+1
                    end
                end
            end
        if location18 == false and tags == true then
            DrawMarker(20, -2083.51, -1018.52, 12.78, 0, 0, 0, 0, 0, 70.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2083.51, -1018.52, 12.78, true) < 1 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location18 = true
                        searched = searched+1
                    end
                end
            end
        if location19 == false and tags == true then
            DrawMarker(20, -2073.03, -1018.47, 11.78, 0, 0, 0, 0, 0, 70.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2073.03, -1018.47, 11.78, true) < 1 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location19 = true
                        searched = searched+1
                    end
                end
            end
        if location20 == false and tags == true then
            DrawMarker(20, -2075.15, -1024.79, 11.78, 0, 0, 0, 0, 0, 70.0, 1.0, 1.0, 1.0, 0, 155, 253, 155, 0, 0, 2, 0, 0, 0, 0)
            if GetDistanceBetweenCoords(GetEntityCoords(ped), -2075.15, -1024.79, 11.78, true) < 1 then
                ESX.ShowHelpNotification(_U('search_robbery'))
                    if IsControlJustReleased(1, 51) then
                        Animacja()
                        location20 = true
                        searched = searched+1
                    end
                end
            end
        end
    end)
end)

CreateThread(function()
    while searched < 20 do 
        Wait(100)
            if searched == 20 then
                TriggerServerEvent("hinode_yachtrobbery:reward")
                heist = false
                tags = false
                Wait(19000)
                ESX.ShowHelpNotification(_U('suitcase_found'))
            end
        end
    end)

function Animacja()
  local ped = PlayerPedId()
  CreateThread(function()
    RequestAnimDict("mini@triathlon")
    Wait(100)
    TaskPlayAnim((ped), 'mini@triathlon', 'rummage_bag', 2.0, 2.0, -1, 81, 0, 0, 0, 0)
    FreezeEntityPosition(PlayerPedId(), true)
    Wait(19000)
    ClearPedTasks(ped)
    FreezeEntityPosition(PlayerPedId(), false)
  end)
end

RegisterNetEvent("hinode_yachtrobbery:notification")
AddEventHandler("hinode_yachtrobbery:notification", function(text)
    ESX.ShowHelpNotification(text)
end)

RegisterNetEvent("hinode_yachtrobbery:notify")
AddEventHandler("hinode_yachtrobbery:notify", function(text)
    ESX.ShowNotification(_U('notification'))
    PlaySoundFrontend(-1, "HACKING_SUCCESS", 0, 1)
end)

RegisterCommand("neq", function()
    TriggerEvent("hinode_yachtrobbery:lspd")
end)

function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Wait(0)
    end
end

