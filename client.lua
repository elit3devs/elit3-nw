local function SetWantedLevelZero()
    local playerId = PlayerId()
    SetMaxWantedLevel(Elit3NW.MaxWantedLevel)
    SetPlayerWantedLevel(playerId, 0, false)
    SetPlayerWantedLevelNow(playerId, false)
    ClearPlayerWantedLevel(playerId)
end

CreateThread(function()
    while true do
        Wait(0)
        local playerId = PlayerId()
        if GetPlayerWantedLevel(playerId) > 0 then
            SetWantedLevelZero()
        end
    end
end)

CreateThread(function()
    while true do
        Wait(1000)
        SetMaxWantedLevel(Elit3NW.MaxWantedLevel)
    end
end)

if Elit3NW.DisableDispatch then
    CreateThread(function()
        while true do
            Wait(0)
            EnableDispatchService(1, false)
            EnableDispatchService(2, false)
            EnableDispatchService(3, false)
            EnableDispatchService(4, false)
            EnableDispatchService(5, false)
            EnableDispatchService(6, false)
            EnableDispatchService(7, false)
            EnableDispatchService(8, false)
            EnableDispatchService(9, false)
            EnableDispatchService(10, false)
            EnableDispatchService(11, false)
            EnableDispatchService(12, false)
            EnableDispatchService(13, false)
        end
    end)
end

if Elit3NW.DisableServices then
    CreateThread(function()
        while true do
            Wait(0)
            SetVehicleParkedMultiplierDensityMultiplierThisFrame(0.0)
            SetParkedVehicleDensityMultiplierThisFrame(0.0)
            SetRandomVehicleDensityMultiplierThisFrame(0.0)
            SetPedDensityMultiplierThisFrame(0.0)
            SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)
        end
    end)
end

if Elit3NW.ClearOnSpawn then
    AddEventHandler("playerSpawned", function()
        SetWantedLevelZero()
    end)
end

SetMaxWantedLevel(Elit3NW.MaxWantedLevel)
