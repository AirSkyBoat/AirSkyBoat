-----------------------------------
-- Zone: Ilrusi_Atoll (55)
-----------------------------------
local ID = require('scripts/zones/Ilrusi_Atoll/IDs')
-----------------------------------
local zoneObject = {}

zoneObject.onInitialize = function(zone)
end

zoneObject.onInstanceZoneIn = function(player, instance)
    local cs = -1

    if player:getInstance() == nil then
        player:setPos(0, 0, 0, 0, 79)
        return cs
    end

    local pos = player:getPos()
    if pos.x == 0 and pos.y == 0 and pos.z == 0 then
        local entrypos = instance:getEntryPos()
        player:setPos(entrypos.x, entrypos.y, entrypos.z, entrypos.rot)
    end

    return cs
end

zoneObject.onTriggerAreaEnter = function(player, triggerArea)
end

zoneObject.onEventUpdate = function(player, csid, option)
end

zoneObject.onEventFinish = function(player, csid, option)
    if csid == 102 then
        -- Move the player back to the rune/exit map (keep existing behavior)
        -- Then perform defensive per-player cleanup now that the player is in the normal zone.

        -- Try to obtain the instance and the recorded fireflies item (if any)
        local inst = player:getInstance()
        local firefliesItem = 0
        if inst then
            firefliesItem = inst:getLocalVar("firefliesItem") or 0
        end

        -- Fallback to the known zone fireflies constant if not recorded on the instance
        if firefliesItem == 0 and xi.items and xi.items.CAGE_OF_REEF_FIREFLIES then
            firefliesItem = xi.items.CAGE_OF_REEF_FIREFLIES
        end

        -- Clear per-player markers so they can re-register at the rune
        player:setCharVar("assaultEntered", 0)
        player:setCharVar("Assault_Armband", 0)
        -- Do not force-clear AssaultComplete here; that value indicates a legitimate completion path

        -- Remove level restriction effect if present
        if player:hasStatusEffect(xi.effect.LEVEL_RESTRICTION) then
            player:delStatusEffect(xi.effect.LEVEL_RESTRICTION)
        end

        -- Remove temporary fireflies if applicable
        if firefliesItem ~= 0 then
            xi.assault.delTempItem(player, firefliesItem)
        end

        -- Remove currentAssault only for failures/teleouts:
        -- If the instance exists and is completed, keep the currentAssault so the NPC can process completion.
        -- Otherwise (no instance or not completed), delete so player can re-register.
        local cur = player:getCurrentAssault()
        if cur and cur ~= 0 then
            local completed = false
            if inst then
                completed = inst:completed()
            end

            if not completed and player:getCharVar("AssaultComplete") == 0 then
                player:delAssault(cur)
            end
        end

        -- Finally place player at the rune map (existing behavior)
        player:setPos(0, 0, 0, 0, 54)
    end
end

zoneObject.onInstanceLoadFailed = function()
    return 79
end

return zoneObject
