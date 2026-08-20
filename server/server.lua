CreateThread(function()
    SetMaxWantedLevel(0)
    while true do
        Wait(2000)
        SetMaxWantedLevel(0)
        local players = GetPlayers()
        for i = 1, #players do
            local src = tonumber(players[i])
            if src then
                SetPlayerWantedLevel(src, 0, false)
                SetPlayerWantedLevelNow(src, false)
            end
        end
    end
end)

AddEventHandler("playerJoining", function()
    local src = source
    SetPlayerWantedLevel(src, 0, false)
    SetPlayerWantedLevelNow(src, false)
end)
