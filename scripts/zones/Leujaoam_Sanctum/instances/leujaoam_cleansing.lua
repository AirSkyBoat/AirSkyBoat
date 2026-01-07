-----------------------------------
-- Assault: Leujaoam Cleansing
-- instance 6900
-----------------------------------
local ID = require("scripts/zones/Leujaoam_Sanctum/IDs")
require("scripts/globals/assault")
require("scripts/globals/instance")
-----------------------------------
local instanceObject = {}

instanceObject.registryRequirements = function(player)
    return player:hasKeyItem(xi.ki.LEUJAOAM_ASSAULT_ORDERS) and
        player:getCurrentAssault() == xi.assault.mission.LEUJAOAM_CLEANSING and
        player:getCharVar("assaultEntered") == 0 and
        player:hasKeyItem(xi.ki.ASSAULT_ARMBAND) and
        player:getMainLvl() > 50
end

instanceObject.entryRequirements = function(player)
    return player:hasKeyItem(xi.ki.LEUJAOAM_ASSAULT_ORDERS) and
        player:getCurrentAssault() == xi.assault.mission.LEUJAOAM_CLEANSING and
        player:getCharVar("assaultEntered") == 0 and
        player:getMainLvl() > 50
end

instanceObject.onInstanceCreated = function(instance)
end

instanceObject.onInstanceCreatedCallback = function(player, instance)
    xi.assault.onInstanceCreatedCallback(player, instance)
    xi.instance.onInstanceCreatedCallback(player, instance)
end

instanceObject.afterInstanceRegister = function(player)
    --TODO: does the assault start and time to complete text already play? otherwise this might be a good place to put it
    local instance = player:getInstance()

    xi.assault.afterInstanceRegister(player, xi.items.CAGE_OF_AZOUPH_FIREFLIES)
    GetNPCByID(ID.npc.RUNE_OF_RELEASE, instance):setPos(476.000, 8.479, 40.000, 49)
    GetNPCByID(ID.npc.ANCIENT_LOCKBOX, instance):setPos(476.000, 8.479, 39.000, 49)
end

instanceObject.onInstanceTimeUpdate = function(instance, elapsed)
    xi.instance.updateInstanceTime(instance, elapsed, ID.text)
end

instanceObject.onInstanceFailure = function(instance)
    xi.assault.onInstanceFailure(instance)
end

instanceObject.onInstanceProgressUpdate = function(instance, progress)
    if progress >= 15 then
        instance:complete()
    end
end

instanceObject.onInstanceComplete = function(instance)
    local chars = instance:getChars()

    for i, v in pairs(chars) do
        v:messageSpecial(ID.text.RUNE_UNLOCKED_POS, 8, 8)
        print("[GS] unlock message to", v:getName())
    end

    GetNPCByID(ID.npc.RUNE_OF_RELEASE, instance):setStatus(xi.status.NORMAL)
    GetNPCByID(ID.npc.ANCIENT_LOCKBOX, instance):setStatus(xi.status.NORMAL)
    print("[GS] Rune/Lockbox set to NORMAL")
end

instanceObject.onEventFinish = function(player, csid, option)
    xi.assault.instanceOnEventFinish(player, csid, xi.zone.ILRUSI_ATOLL)
end

return instanceObject
