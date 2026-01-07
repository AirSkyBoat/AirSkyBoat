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
    
    xi.assault.afterInstanceRegister(player, xi.items.CAGE_OF_REEF_FIREFLIES)
end

instanceObject.onInstanceCreated = function(instance)

    --local figureheadChestID = math.random(ID.npc.ILRUSI_CURSED_CHEST_OFFSET, ID.npc.ILRUSI_CURSED_CHEST_OFFSET + 11)
    local figureheadChestID = 17002508
    instance:setLocalVar("figureheadChestID", figureheadChestID)
    instance:setLocalVar("figureheadChestOpened", 0)

    print("[GS] placing Rune of Release and Ancient Lockbox")
    GetNPCByID(ID.npc.RUNE_OF_RELEASE, instance):setPos(420, -15, 72, 148)
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

    xi.assault.onInstanceComplete(instance, posX, posZ)
end

instanceObject.onEventUpdate = function(player, csid, option)
    print("[GS] onEventUpdate csid=", csid, " option=", option)
end

instanceObject.onEventFinish = function(player, csid, option)
    xi.assault.instanceOnEventFinish(player, csid, xi.zone.ILRUSI_ATOLL)
end

return instanceObject
