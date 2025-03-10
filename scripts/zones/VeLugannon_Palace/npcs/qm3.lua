-----------------------------------
-- Area: VeLugannon Palace
--  NPC: qm3 (???) 17502583
-- Note: Involved in Bartholomew's Knife mini-quest
-- !pos 0.21 0.57 -322.4 177
-----------------------------------
local ID = require("scripts/zones/VeLugannon_Palace/IDs")
require("scripts/globals/npc_util")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
    if npcUtil.tradeHas(trade, xi.item.BUCCANEERS_KNIFE) then -- Buccaneer's Knife
        if player:getWornUses(xi.item.BUCCANEERS_KNIFE) == 0 then
            player:incrementItemWear(xi.item.BUCCANEERS_KNIFE)
            if math.random(1, 100) <= 5 then -- 5% chance to obtain on trade.
                player:confirmTrade()
                player:messageSpecial(ID.text.KNIFE_CHANGES_SHAPE, xi.item.BUCCANEERS_KNIFE)
                npcUtil.giveItem(player, xi.item.BARTHOLOMEWS_KNIFE) -- Btm. Knife
            else
                player:tradeComplete(false)
                player:messageSpecial(ID.text.NOTHING_HAPPENS)
            end
        else
            player:tradeComplete(false)
            player:messageSpecial(ID.text.NOTHING_HAPPENS)
        end
    end
end

entity.onTrigger = function(player, npc)
    player:startEvent(2)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
