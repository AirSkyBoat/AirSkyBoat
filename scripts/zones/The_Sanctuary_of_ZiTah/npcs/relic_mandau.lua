-----------------------------------
-- Area: The Sanctuary of Zi'Tah
--  NPC: <this space intentionally left blank>
-- !pos 646 -2 -165 121
-----------------------------------
local ID = require("scripts/zones/The_Sanctuary_of_ZiTah/IDs")
require("scripts/globals/npc_util")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
    local currentRelic = player:getCharVar("RELIC_IN_PROGRESS")

    -- Mandau
    if
        currentRelic == xi.item.BATARDEAU and
        npcUtil.tradeHas(trade, { xi.item.TEN_THOUSAND_BYNE_BILL, xi.item.ORNATE_FRAGMENT, xi.item.SHARD_OF_NECROPSYCHE, xi.item.BATARDEAU })
    then
        -- currency, shard, necropsyche, stage 4
        player:startEvent(207, xi.item.MANDAU)
    end
end

entity.onTrigger = function(player, npc)
    player:messageSpecial(ID.text.NOTHING_OUT_OF_ORDINARY)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    if
        csid == 207 and
        npcUtil.giveItem(player, { xi.item.MANDAU, { xi.item.ONE_HUNDRED_BYNE_BILL, 30 } })
    then
        player:confirmTrade()
        player:setCharVar("RELIC_IN_PROGRESS", 0)
    end
end

return entity
