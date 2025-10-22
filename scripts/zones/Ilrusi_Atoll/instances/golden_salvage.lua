-----------------------------------
-- Assault: Golden Salvage
-- TODO:    chests on boats can spawn in at atleast 4 random spots on each boat
--          test party play for bugs (I have not done this)
--          
-----------------------------------
require("scripts/globals/instance")
require("scripts/globals/assault")
local ID = require("scripts/zones/Ilrusi_Atoll/IDs")
-----------------------------------
local instanceObject = {}

instanceObject.registryRequirements = function(player)
    return player:hasKeyItem(xi.ki.ILRUSI_ASSAULT_ORDERS) and
        player:getCurrentAssault() == xi.assault.mission.GOLDEN_SALVAGE and
        player:getCharVar("assaultEntered") == 0 and
        player:hasKeyItem(xi.ki.ASSAULT_ARMBAND) and
        player:getMainLvl() > 50
end

instanceObject.entryRequirements = function(player)
    return player:hasKeyItem(xi.ki.ILRUSI_ASSAULT_ORDERS) and
        player:getCurrentAssault() == xi.assault.mission.GOLDEN_SALVAGE and
        player:getCharVar("assaultEntered") == 0 and
        player:getMainLvl() > 50
end

instanceObject.afterInstanceRegister = function(player)
    local instance = player:getInstance()  
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

    -- spawn all chests first
    local allChestIDs = {}
    for i = ID.npc.ILRUSI_CURSED_CHEST_OFFSET, ID.npc.ILRUSI_CURSED_CHEST_OFFSET + 11 do
        table.insert(allChestIDs, i)
        SpawnMob(i, instance)
    end

    -- create a list of the remaining chest IDs (excluding boat chests)
    local boatChestIDs = {17002505, 17002509, 17002512, 17002514}
    local remainingChestIDs = {}
    for _, chestID in ipairs(allChestIDs) do
        if not table.contains(boatChestIDs, chestID) then
            table.insert(remainingChestIDs, chestID)
        end
    end

    -- randomly assign the remaining chests to the spawn points
    for _, chestID in ipairs(remainingChestIDs) do
        if #spawnPoints > 0 then
            local randomIndex = math.random(1, #spawnPoints)
            local coords = spawnPoints[randomIndex]
            table.remove(spawnPoints, randomIndex) -- remove the used spawn point

            -- position the mob and its associated NPC
            local mob = GetMobByID(chestID, instance)
            local npc = GetNPCByID(chestID, instance)
            if mob and npc then
                mob:setPos(coords[1], coords[2], coords[3], coords[4]) -- set mob position
                npc:setPos(coords[1], coords[2], coords[3], coords[4]) -- set NPC position
            end 
        end
    end

    GetNPCByID(ID.npc.RUNE_OF_RELEASE, instance):setPos(380, -7.885, 65, 148)
    GetNPCByID(ID.npc.ANCIENT_LOCKBOX, instance):setPos(380, -7.752, 62, 148)
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
    if instance:getProgress() >= 1 then
        instance:complete()
    end
end

instanceObject.onInstanceComplete = function(instance)
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
end

instanceObject.onEventFinish = function(player, csid, option)
    xi.assault.instanceOnEventFinish(player, csid, xi.zone.ILRUSI_ATOLL)
end

return instanceObject
