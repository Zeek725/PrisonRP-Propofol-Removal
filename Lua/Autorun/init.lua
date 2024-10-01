--if Game.IsMultiplayer and CLIENT then return end

NG = {} -- NeuroGuide
NG.Path = table.pack(...)[1]

-- server-side code (also run in singleplayer)
if (Game.IsMultiplayer and SERVER) or not Game.IsMultiplayer then
    dofile(NG.Path.."/Lua/Scripts/Server/TerminalButtons.lua")
    
    Timer.Wait(function (...)
        dofile(NG.Path.."/Lua/Scripts/javierbombcode.lua")
    end, 5)
end

-- client-side code
if CLIENT then -- test
end