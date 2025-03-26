ESX = nil
QBcore = nil
PlayerData = nil
local PlayerJob = nil
local spawnedTables = {}

CreateThread(function()
    if Config.UseESX then
        ESX = exports["es_extended"]:getSharedObject()
        while not ESX.IsPlayerLoaded() do
            Wait(100)
        end
        PlayerData = ESX.GetPlayerData()
        CreateThread(function()
            while true do
                if PlayerData ~= nil then
                    PlayerJob = PlayerData.job.name
                    break
                end
                Wait(100)
            end
        end)
        RegisterNetEvent('esx:setJob', function(job)
            PlayerJob = job.name
        end)

    elseif Config.UseQBCore then
        QBCore = exports['qb-core']:GetCoreObject()
        CreateThread(function ()
			while true do
                PlayerData = QBCore.Functions.GetPlayerData()
				if PlayerData.citizenid ~= nil then
					PlayerJob = PlayerData.job.name
					break
				end
				Wait(100)
			end
		end)
        RegisterNetEvent('QBCore:Client:OnJobUpdate', function(job)
            PlayerJob = job.name
        end)
    end
end)

RegisterNetEvent('qb-process:Notify', function(message, type)
	if Config.UseCustomNotify then
        TriggerEvent('qb-process:CustomNotify',message, type)
	elseif Config.UseESX then
		ESX.ShowNotification(message)
	elseif Config.UseQBCore then
		QBCore.Functions.Notify(message, type)
	end
end)

CreateThread(function()
    if Config.UseThirdEye then
        for Category, Data in pairs(Config.LocationInfo) do
            for index, Data2 in pairs(Data) do
                if index == 'Location' then
                    local string = tostring(Data2)
                    if Config.ThirdEyeName == 'ox_target' then
                        exports.ox_target:addBoxZone({
                            coords = vec3(Data2.x, Data2.y, Data2.z),
                            size = vec3(2, 2, 2),
                            rotation = Data2.w,
                            debug = drawZones,
                            options = {
                                {
                                    name = string,
                                    label = Config.Lang['OpenMenu'],
                                    onSelect = function()
                                        TriggerEvent('qb-process:CategoryMenu', Data, 1)
                                    end
                                }
                            }
                        })
                    else
                        exports[Config.ThirdEyeName]:AddBoxZone(string, vector3(Data2.x, Data2.y, Data2.z), 2, 2, {
                            name = string,
                            heading = Data2.w,
                            debugPoly = false,
                            minZ = Data2.z - 1.5,
                            maxZ = Data2.z + 1.5
                        },
                        {
                            options = {
                                {
                                    label = Config.Lang['OpenMenu'],
                                    action = function()
                                        TriggerEvent('qb-process:CategoryMenu', Data, 1)
                                    end
                                },
                            },
                            distance = 2
                        })
                    end
                end
            end
        end
    end
    if Config.Show3DText then
        for Category, Data in pairs(Config.LocationInfo) do
            for index, Data2 in pairs(Data) do
                if index == 'Location' then
                    CreateThread(function()
                        while true do 
                            local Player = PlayerPedId()
                            local Pos = GetEntityCoords(Player)
                            local Sleep = 2000
                            local Lvec3 = vector3(Data2.x, Data2.y, Data2.z)
                            local Dist = #(Pos - Lvec3)
                            if Dist <= 50 then
                                Sleep = 500
                                if Dist <= 10 then
                                    Sleep = 100
                                    if Dist <= 5 then
                                        Sleep = 0
                                        if IsControlJustReleased(0, 38) then
                                            TriggerEvent('qb-process:CategoryMenu', Data, Dist)
                                        end
                                        DrawText3Ds(Data2.x, Data2.y, Data2.z, Config.Lang['PressEOpenMenu'])
                                    end
                                end
                            end
                            Wait(Sleep)
                        end
                    end)
                end
            end
        end
    end
end)

CreateThread(function()
    for Category, Data in pairs(Config.LocationInfo) do
        local loc = Data.Location
        if Data.SpawnTableProp then
            CreateThread(function()
                spawnedTables[loc] = false
                while true do
                    local sleep = 3000
                    local dist = #(GetEntityCoords(PlayerPedId())-vector3(loc.x,loc.y,loc.z))
                    if dist <= 50 then
                        sleep = 1000
                        if dist <= 25 then
                            if not DoesEntityExist(spawnedTables[loc]) then
                                spawnedTables[loc] = CreateObject(Config.PropName, loc.x, loc.y, loc.z-1, true, true, false)
                                SetEntityHeading(spawnedTables[loc], loc.w)
                                FreezeEntityPosition(spawnedTables[loc], true)
                            end
                        end
                    elseif DoesEntityExist(spawnedTables[loc]) then
                        DeleteEntity(spawnedTables[loc])
                    end
                    Wait(sleep)
                end
            end)
        end
    end
end)

RegisterNetEvent('qb-process:CategoryMenu', function(Data, Dist)
    if Dist >= 5 or not Data.Location then return end
    if not seeMenu(Data) then 
        TriggerEvent('qb-process:Notify',Config.Lang['noaccess'], Config.Lang['error'])
        return
    end
    local menu = {}
    if Config.NHMenu then
        table.insert(menu, {
            header = Config.Lang['menu_header'],
        })
    elseif Config.QBMenu then
        table.insert(menu, {
            header = Config.Lang['menu_header'],
            isMenuHeader = true
        })
    end
    for i = 1, #Data.Categories do
        if Config.NHMenu then
            table.insert(menu, {
                context = Data.Categories[i],
                event = 'qb-process:CraftMenu',
                args = {Data.Categories[i]}
            })
        elseif Config.QBMenu then
            table.insert(menu, {
                header = Data.Categories[i],
                    params = {
                        event = 'qb-process:CraftMenu',
                        args = Data.Categories[i]
                    }
                })
        elseif Config.OXLib then
            table.insert(menu, {
                title = Data.Categories[i],
                onSelect = function()
                    TriggerEvent("qb-process:CraftMenu", Data.Categories[i])
                end,
            })
        end

    end
    if Config.NHMenu then
        table.insert(menu, {
            context = Config.Lang['cancel'],
            event = '',
        })
        TriggerEvent("nh-context:createMenu", menu)
    elseif Config.QBMenu then
        table.insert(menu, {
        header = Config.Lang['cancel'],
            params = {event = ''}
        })
        TriggerEvent("qb-menu:client:openMenu", menu)
    elseif Config.OXLib then
        lib.registerContext({
            id = 'SimpleCraftCategorymenu_ox',
            title = Config.Lang['menu_header'],
            options = menu,
            position = 'top-right',
        }, function(selected, scrollIndex, args)
        end)
        lib.showContext('SimpleCraftCategorymenu_ox')
    end
end)

RegisterNetEvent('qb-process:CraftMenu', function(Data)
    if not Data then return end
    local info = {}
    for category, information in pairs(Config.ItemMenu) do
        if category == Data then
            info = information
            break
        end
    end
    if not info.ItemList then return end

    local menu = {}
    if Config.NHMenu then
        table.insert(menu, {
            header = Config.Lang['menu_header_items'],
        })
    elseif Config.QBMenu then
        table.insert(menu, {
            header = Config.Lang['menu_header_items'],
            isMenuHeader = true
        })
    end
    for item, data in pairs(info.ItemList) do
        data.name = item
        if Config.NHMenu then
            table.insert(menu, {
                context = item,
                event = 'qb-process:CraftItemList',
                args = {data}
            })
        elseif Config.QBMenu then
            table.insert(menu, {
                header = item,
                params = {
                    event = 'qb-process:CraftItemList',
                    args = data
                }
            })
        elseif Config.OXLib then
            table.insert(menu, {
                title = item,
                onSelect = function()
                    TriggerEvent("qb-process:CraftItemList", data)
                end,
            })
        end
    end
    if Config.NHMenu then
        table.insert(menu, {
            context = Config.Lang['cancel'],
            event = '',
        })
        TriggerEvent("nh-context:createMenu", menu)
    elseif Config.QBMenu then
        table.insert(menu, {
        header = Config.Lang['cancel'],
            params = {event = ''}
        })
        TriggerEvent("qb-menu:client:openMenu", menu)
    elseif Config.OXLib then
        lib.registerContext({
            id = 'SimpleCraftItemmenu_ox',
            title = Config.Lang['menu_header_items'],
            options = menu,
            menu = 'SimpleCraftCategorymenu_ox',
            position = 'top-right',
        }, function(selected, scrollIndex, args)
        end)
        lib.showContext('SimpleCraftItemmenu_ox')
    end
end)

RegisterNetEvent('qb-process:CraftItemList', function(data)
    if not data then return end
    local menu = {}
    local requirement = tostring(Config.Lang['required']..'\n')
    for i = 1, #data.CraftingItems do 
        local short = data.CraftingItems[i]
        local name = tostring(short.label..' x'..short.quantity..'\n')
        requirement = tostring(requirement..name)
    end
    if Config.NHMenu then
        table.insert(menu, {
            header = requirement,
        })
        table.insert(menu, {
            context = Config.Lang['confirm'],
            event = 'qb-process:CraftItem',
            args = {data}
        })
        table.insert(menu, {
            context = Config.Lang['cancel'],
            event = '',
        })
        TriggerEvent("nh-context:createMenu", menu)
    elseif Config.QBMenu then
        table.insert(menu, {
            header = requirement,
            isMenuHeader = true
        })
        table.insert(menu, {
            header = Config.Lang['confirm'],
            params = {
                event = 'qb-process:CraftItem',
                args = data
            }
        })
        table.insert(menu, {
        header = Config.Lang['cancel'],
            params = {event = ''}
        })
        TriggerEvent("qb-menu:client:openMenu", menu)
    elseif Config.OXLib then
        table.insert(menu, {
            title = Config.Lang['confirm'],
            onSelect = function()
                TriggerEvent("qb-process:CraftItem", data)
            end,
        })
        lib.registerContext({
            id = 'SimpleCraftItemConf_ox',
            options = menu,
            menu = 'SimpleCraftItemmenu_ox',
            title = requirement,
            position = 'top-right',
        }, function(selected, scrollIndex, args)
        end)
        lib.showContext('SimpleCraftItemConf_ox')
    end
end)

RegisterNetEvent('qb-process:CraftItem', function(Data)
    if not Data.NumberReceived then return end
    TriggerServerEvent('qb-process:Server:CraftItem', Data)
end)

-- Define la función para la animación
function PlayCraftingAnimation()
    local playerPed = PlayerPedId()
    RequestAnimDict("amb@prop_human_parking_meter@male@idle_a")
    while not HasAnimDictLoaded("amb@prop_human_parking_meter@male@idle_a") do
        Citizen.Wait(100)
    end
    TaskPlayAnim(playerPed, "amb@prop_human_parking_meter@male@idle_a", "idle_a", 8.0, -8.0, -1, 1, 0, false, false, false)
end

-- Modifica el evento de crafteo
RegisterNetEvent('qb-process:CraftItem')
AddEventHandler('qb-process:CraftItem', function(itemName, itemLabel, craftingItems)
    local playerPed = PlayerPedId()
    
    -- Inicia la animación
    PlayCraftingAnimation()
    
    -- Espera 5 segundos (5000 milisegundos)
    Citizen.Wait(5000)
    
    -- Detiene la animación
    ClearPedTasks(playerPed)
    
    -- Lógica de crafteo existente
    -- Aquí iría el código para dar el ítem al jugador y remover los ítems de crafteo
end)
    --
    
function seeMenu(data)
    if not data.RequireMenuItem or not data.RequiredMenuItemName or data.RequiredMenuItemName == '' then return true end
    if Config.UseESX then
        PlayerData = ESX.GetPlayerData()
        for k, v in ipairs(PlayerData.inventory) do
            if v.name == data.RequiredMenuItemName and v.count > 0 then
                return true
            end
        end
    elseif Config.UseQBCore then
        PlayerData = QBCore.Functions.GetPlayerData()
        for slot, item in pairs(PlayerData.items) do
            if PlayerData.items[slot] then
                if item.name == data.RequiredMenuItemName then
                    return true
                end
            end
        end
	end
	return false 
end

function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.30, 0.30)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry('STRING')
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end

AddEventHandler('onResourceStop', function(resource)
    if GetCurrentResourceName() == resource then
        if Config.UseThirdEye then
            for Category, Data in pairs(Config.LocationInfo) do
                for index, Data2 in pairs(Data) do
                    if index == 'Location' then
                        local string = tostring(Data2)
                        if Config.ThirdEyeName == 'ox_target' then
                            exports.ox_target:removeZone(string)
                        else
                            exports[Config.ThirdEyeName]:RemoveZone(string) 
                        end 
                    end
                end
            end
        end
        for k,v in pairs(spawnedTables)do
            if DoesEntityExist(v) then
                DeleteEntity(v)
            end
        end
    end
end)

