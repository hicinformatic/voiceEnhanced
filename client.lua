local isTalking = false
local bind = GetConvar('voice_defaultCycle', 'F11')
local colors = Config.Colors.default
local icon = Config.Icons.default
local rangem = Config.Marker.default
local ranges = Config.Sphere.default
local preview = false

function Marker(x, y, z, rangem, ranges, colors)
    if Config.Sphere.enable then
        DrawSphere(x, y, z, ranges+Config.Sphere.offset, colors.r, colors.g, colors.b, Config.Sphere.opacity)
    end
    if Config.Marker.enable then
        DrawMarker(
            Config.Marker.type, x, y, z - 1.2,
            Config.Marker.dirX, Config.Marker.dirY, Config.Marker.dirZ,
            Config.Marker.rotX, Config.Marker.rotY, Config.Marker.rotZ,
            rangem*Config.Marker.coef, rangem*Config.Marker.coef, 1.0, 
            colors.r, colors.g, colors.b, colors.a, 
            Config.Marker.faceCamera,
            Config.Marker.p19,
            Config.Marker.rotate,
            Config.Marker.textureDict,
            Config.Marker.textureName,
            Config.Marker.drawOnEnts
        )
    end
end

function text(text, scale)
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextOutline()
    SetTextJustification(0)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(Config.Icons.x, Config.Icons.y)
end

AddEventHandler("pma-voice:setTalkingMode", function(newTalkingRange)
    Citizen.Wait(0)
    if newTalkingRange == 1 then
        icon = Config.Icons.whisper
        rangem = Config.Marker.whisper
        ranges = Config.Sphere.whisper
        colors = Config.Colors.whisper
    elseif newTalkingRange == 3 then
        icon = Config.Icons.shout
        rangem = Config.Marker.shout
        ranges = Config.Sphere.shout
        colors = Config.Colors.shout
    else
        icon = Config.Icons.default
        rangem = Config.Marker.default
        ranges = Config.Sphere.default
        colors = Config.Colors.default
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(50)
        if NetworkIsPlayerTalking(PlayerId()) then
            isTalking = true
        else
            isTalking = false
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if isTalking then
            text(icon, Config.Icons.scale * Config.Icons.coef)
        else
            text(icon, Config.Icons.scale)
        end
    end
end)

RegisterCommand('+rangepreview', function()
    preview = true
    while preview do
        Wait(0)
        local coords = GetEntityCoords(PlayerPedId())
        Marker(coords.x, coords.y, coords.z, rangem, ranges, colors)
    end
end, false)

RegisterCommand('-rangepreview', function()
    preview = false
end, false)

RegisterKeyMapping('+rangepreview', 'Range preview', 'keyboard', bind)