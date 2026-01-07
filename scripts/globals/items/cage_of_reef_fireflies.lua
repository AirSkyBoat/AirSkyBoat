-----------------------------------
-- ID: 5347
-- Reef Fireflies
-- Transports the user to Ilrusi Atoll Staging Point
-----------------------------------
require("scripts/globals/teleports")
require("scripts/globals/zone")
-----------------------------------
local itemObject = {}

itemObject.onItemCheck = function(target)
    if target:getZoneID() == xi.zone.ILRUSI_ATOLL then
        return 0
    end

    return xi.msg.basic.ITEM_UNABLE_TO_USE_2
end

itemObject.onItemUse = function(target)
    -- If the player is in an instance, count the instance as a failure when they use the fireflies.
    local instance = target:getInstance()
    if instance then
        print("[FIREFLIES] Player using Reef Fireflies inside instance; failing instance.")
        instance:fail()
    end

    target:addStatusEffectEx(xi.effect.TELEPORT, 0, xi.teleport.id.REEF, 0, 1)
end

itemObject.onItemDrop = function(target, item)
    target:addTempItem(xi.items.CAGE_OF_REEF_FIREFLIES)
end

return itemObject