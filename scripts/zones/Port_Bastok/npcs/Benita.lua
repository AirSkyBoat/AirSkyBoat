-----------------------------------
-- Area: Port Bastok
--  NPC: Benita
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local rand = math.random(1, 2)

    if rand == 1 then
        player:startEvent(102)
    else
        player:startEvent(103)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    if csid == 174 then
        player:addQuest(xi.quest.log_id.BASTOK, xi.quest.id.bastok.THE_WISDOM_OF_ELDERS)
        player:setCharVar("TheWisdomVar", 1)
    elseif csid == 176 then
        if player:getFreeSlotsCount() == 0 then
            player:messageSpecial(ID.text.ITEM_CANNOT_BE_OBTAINED, 12500)
        else
            player:completeQuest(xi.quest.log_id.BASTOK, xi.quest.id.bastok.THE_WISDOM_OF_ELDERS)
            player:addFame(xi.quest.fame_area.BASTOK, 120)
            player:addItem(12500)
            player:messageSpecial(ID.text.ITEM_OBTAINED, 12500)
        end
    end
end

return entity
