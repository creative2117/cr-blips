Citizen.CreateThread(function()

    for k, v in pairs(config.blips) do
        config.blips[k].blip = AddBlipForCoord(config.blips[k].coords.x, config.blips[k].coords.y, config.blips[k].coords.z)
        SetBlipSprite(config.blips[k].blip, config.blips[k].id)
        SetBlipDisplay(config.blips[k].blip, 4)
        SetBlipScale(config.blips[k].blip, config.blips[k].scale)
        SetBlipColour(config.blips[k].blip, config.blips[k].colour)
        SetBlipAsShortRange(config.blips[k].blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(config.blips[k].title)
        EndTextCommandSetBlipName(config.blips[k].blip)
    end
end)