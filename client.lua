CreateThread(function()
    while true do
        Wait(0)
        SetMaxWantedLevel(0)
        local playerId = PlayerId()
        if GetPlayerWantedLevel(playerId) > 0 then
            ClearPlayerWantedLevel(playerId)
            SetPlayerWantedLevel(playerId, 0, false)
            SetPlayerWantedLevelNow(playerId, false)
        end
    end
end)

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

AddEventHandler("playerSpawned", function()
    ClearPlayerWantedLevel(PlayerId())
    SetPlayerWantedLevel(PlayerId(), 0, false)
    SetPlayerWantedLevelNow(PlayerId(), false)
end)
