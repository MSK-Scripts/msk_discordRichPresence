MSK.RegisterCallback('msk_discordRichPresence:getPlayers', function(source, cb)
    local OnlinePlayers = {}

    for k, playerId in pairs(GetPlayers()) do
        OnlinePlayers[#OnlinePlayers + 1] = playerId
    end
    
    cb(OnlinePlayers)
end)