SetMaxWantedLevel(Elit3NW.MaxWantedLevel)

CreateThread(function()
    while true do
        Wait(2000)
        SetMaxWantedLevel(Elit3NW.MaxWantedLevel)
        local players = GetPlayers()
        for i = 1, #players do
            local playerId = tonumber(players[i])
            if playerId then
                local state = Player(playerId).state
                if state then
                    local ped = GetPlayerPed(playerId)
                    if ped and ped ~= 0 then
                        SetPlayerWantedLevel(playerId, 0, false)
                        SetPlayerWantedLevelNow(playerId, false)
                    end
                end
            end
        end
    end
end)

RegisterNetEvent("elit3-nw:playerSpawned", function()
    local source = source
    SetPlayerWantedLevel(source, 0, false)
    SetPlayerWantedLevelNow(source, false)
end)

AddEventHandler("playerJoining", function()
    local source = source
    SetPlayerWantedLevel(source, 0, false)
    SetPlayerWantedLevelNow(source, false)
end)
