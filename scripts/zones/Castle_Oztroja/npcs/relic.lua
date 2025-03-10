-----------------------------------
-- Area: Castle Oztroja
--  NPC: <this space intentionally left blank>
-- !pos -104 -73 85 151
-----------------------------------
local ID = require("scripts/zones/Castle_Oztroja/IDs")
require("scripts/globals/npc_util")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
    if
        player:getCharVar("RELIC_IN_PROGRESS") == xi.item.CAESTUS and
        npcUtil.tradeHas(trade, { xi.item.TEN_THOUSAND_BYNE_BILL, xi.item.MYSTIC_FRAGMENT, xi.item.SHARD_OF_NECROPSYCHE, xi.item.CAESTUS })
    then
        -- currency, shard, necropsyche, stage 4
        player:startEvent(59, xi.item.SPHARAI)
    end
end

entity.onTrigger = function(player, npc)
    player:messageSpecial(ID.text.NOTHING_OUT_OF_ORDINARY)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    if
        csid == 59 and
        npcUtil.giveItem(player, { xi.item.SPHARAI, { xi.item.ONE_HUNDRED_BYNE_BILL, 30 } })
    then
        player:confirmTrade()
        player:setCharVar("RELIC_IN_PROGRESS", 0)
    end
end

return entity
