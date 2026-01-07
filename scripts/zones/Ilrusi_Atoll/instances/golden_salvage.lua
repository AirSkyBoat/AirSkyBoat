-----------------------------------
-- Assault: Golden Salvage
-- TODO: random the chest locations
-----------------------------------
require("scripts/globals/instance")
require("scripts/globals/assault")
local ID = require("scripts/zones/Ilrusi_Atoll/IDs")
-----------------------------------
local instanceObject = {}

instanceObject.registryRequirements = function(player)
    print("[GS] registryRequirements called for", player:getName())
    print("[GS] registry: hasOrders=", player:hasKeyItem(xi.ki.ILRUSI_ASSAULT_ORDERS),
        " currentAssault=", player:getCurrentAssault(),
        " entered=", player:getCharVar("assaultEntered"),
        " hasArmband=", player:hasKeyItem(xi.ki.ASSAULT_ARMBAND),
        " level=", player:getMainLvl())

    return player:hasKeyItem(xi.ki.ILRUSI_ASSAULT_ORDERS) and
        player:getCurrentAssault() == xi.assault.mission.GOLDEN_SALVAGE and
        player:getCharVar("assaultEntered") == 0 and
        player:hasKeyItem(xi.ki.ASSAULT_ARMBAND) and
        player:getMainLvl() > 50
end

instanceObject.entryRequirements = function(player)
    print("[GS] entryRequirements called for", player:getName())
    print("[GS] entry: hasOrders=", player:hasKeyItem(xi.ki.ILRUSI_ASSAULT_ORDERS),
        " currentAssault=", player:getCurrentAssault(),
        " entered=", player:getCharVar("assaultEntered"),
        " level=", player:getMainLvl())

    return player:hasKeyItem(xi.ki.ILRUSI_ASSAULT_ORDERS) and
        player:getCurrentAssault() == xi.assault.mission.GOLDEN_SALVAGE and
        player:getCharVar("assaultEntered") == 0 and
        player:getMainLvl() > 50
end

instanceObject.afterInstanceRegister = function(player)
    local instance = player:getInstance()
    print("randomly spawning chests")

    
    --[[
    local spawnPoints =
        {
            [1]  = {590,-15, 109,127},
            [2]  = {346, -2, 113, 49},
            [3]  = {351,-15, -14,134},
            [4]  = {288,-15,-105,248},
            [5]  = {331,-15,-181,202},
            [6]  = {330, -3, -34,163},
            [7]  = {221, -1, -32,226},
            [8]  = {546, -7, 161,156},
            [9]  = {334,-15,-145,132},
            [10] = {370,-16,-131, 75},
            [11] = {305, -2,  73, 54},
            [12] = {273, -2,  30, 99},
            [13] = {380, -2, 149, 78},
            [14] = {473, -2, 133,131},
            [15] = {462, -2, 181,130},
            [16] = {546, -8, 258, 81},
        }

    for i = ID.mob[GOLDEN_SALVAGE].ILRUSI_CURSED_CHEST_OFFSET, ID.mob[GOLDEN_SALVAGE].ILRUSI_CURSED_CHEST_OFFSET + 7 do
        local sPoint = math.random(1,#spawnPoints) -- Randoms the 1st 7 points for chests, last 4 are static on boats
        GetMobByID(i, instance):setSpawn(spawnPoints[sPoint])
        SpawnMob(i, instance)
        table.remove(spawnPoints,sPoint)
    end
    --]]
    
    


    
    xi.assault.afterInstanceRegister(player, xi.items.CAGE_OF_REEF_FIREFLIES)
end

instanceObject.onInstanceCreated = function(instance)

    local spawnPoints =
        {
            [1]  = {590,-15, 109,127},
            [2]  = {346, -2, 113, 49},
            [3]  = {351,-15, -14,134},
            [4]  = {288,-15,-105,248},
            [5]  = {331,-15,-181,202},
            [6]  = {330, -3, -34,163},
            [7]  = {221, -1, -32,226},
            [8]  = {546, -7, 161,156},
            [9]  = {334,-15,-145,132},
            [10] = {370,-16,-131, 75},
            [11] = {305, -2,  73, 54},
            [12] = {273, -2,  30, 99},
            [13] = {380, -2, 149, 78},
            [14] = {473, -2, 133,131},
            [15] = {462, -2, 181,130},
            [16] = {546, -8, 258, 81},
        }


    local figureheadChestID = math.random(ID.npc.ILRUSI_CURSED_CHEST_OFFSET, ID.npc.ILRUSI_CURSED_CHEST_OFFSET + 11)
    instance:setLocalVar("figureheadChestID", figureheadChestID)
    instance:setLocalVar("figureheadChestOpened", 0)

    function table.contains(tbl, val)
        for _, v in ipairs(tbl) do
            if v == val then
                return true
            end
        end
        return false
    end

    -- Spawn all chests first
    local allChestIDs = {}
    for i = ID.npc.ILRUSI_CURSED_CHEST_OFFSET, ID.npc.ILRUSI_CURSED_CHEST_OFFSET + 11 do
        table.insert(allChestIDs, i)
        SpawnMob(i, instance)
    end

    -- Create a list of the remaining chest IDs (excluding boat chests)
    local boatChestIDs = {17002505, 17002509, 17002512, 17002514}
    local remainingChestIDs = {}
    for _, chestID in ipairs(allChestIDs) do
        if not table.contains(boatChestIDs, chestID) then
            table.insert(remainingChestIDs, chestID)
        end
    end

    -- Randomly assign the remaining chests to the spawn points
    for _, chestID in ipairs(remainingChestIDs) do
        if #spawnPoints > 0 then
            local randomIndex = math.random(1, #spawnPoints)
            local coords = spawnPoints[randomIndex]
            table.remove(spawnPoints, randomIndex) -- Remove the used spawn point

            -- Position the mob and its associated NPC
            local mob = GetMobByID(chestID, instance)
            local npc = GetNPCByID(chestID, instance)
            if mob and npc then
                mob:setPos(coords[1], coords[2], coords[3], coords[4]) -- Set mob position
                npc:setPos(coords[1], coords[2], coords[3], coords[4]) -- Set NPC position
            end 
        end
    end

    

    print("[GS] placing Rune of Release and Ancient Lockbox")
    GetNPCByID(ID.npc.RUNE_OF_RELEASE, instance):setPos(420, -15, 70, 148)
    GetNPCByID(ID.npc.ANCIENT_LOCKBOX, instance):setPos(415, -15, 75, 148)
    GetNPCByID(ID.npc._1jp, instance):setAnimation(8)
    GetNPCByID(ID.npc._jja, instance):setAnimation(8)
    GetNPCByID(ID.npc._jjb, instance):setAnimation(8)

    instance:setProgress(0)

end

instanceObject.onInstanceCreatedCallback = function(player, instance)
    xi.assault.onInstanceCreatedCallback(player, instance)
    xi.instance.onInstanceCreatedCallback(player, instance)
    
end

instanceObject.onInstanceTimeUpdate = function(instance, elapsed)
    xi.instance.updateInstanceTime(instance, elapsed, ID.text)
end

instanceObject.onInstanceFailure = function(instance)
    xi.assault.onInstanceFailure(instance)
end

instanceObject.onInstanceProgressUpdate = function(instance, progress)
    --TODO: if progress == 1 then instance:complete(). use this instead of manual vars
    if instance:getProgress() >= 1 then
        instance:complete()
    end
end

instanceObject.onInstanceComplete = function(instance)
    -- Determine rune position from the instance's Rune of Release NPC and forward it
    local runeNpc = GetNPCByID(ID.npc.RUNE_OF_RELEASE, instance)
    local posX, posZ = 7, 7

    local figureheadChestID = instance:getLocalVar("figureheadChestID")

    for i = ID.npc.ILRUSI_CURSED_CHEST_OFFSET, ID.npc.ILRUSI_CURSED_CHEST_OFFSET + 11 do
        if i ~= figureheadChestID then
            local mob = GetMobByID(i, instance)
            if mob and mob:isSpawned() then
                DespawnMob(i, instance)
            end
        end
    end
    xi.assault.onInstanceComplete(instance, posX, posZ)
end

instanceObject.onEventUpdate = function(player, csid, option)
    print("[GS] onEventUpdate csid=", csid, " option=", option)
end

instanceObject.onEventFinish = function(player, csid, option)
    xi.assault.instanceOnEventFinish(player, csid, xi.zone.ILRUSI_ATOLL)
end



return instanceObject
