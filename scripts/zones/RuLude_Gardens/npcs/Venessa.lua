-----------------------------------
-- Area: Ru'Lud Gardens
--  NPC: Venessa
-----------------------------------
local ID = require("scripts/zones/RuLude_Gardens/IDs")
require("scripts/globals/npc_util")
-----------------------------------
local entity = {}

local rewards =
{
    {   xi.item.BRILLIANT_VISION,  xi.item.SUMMONING_EARRING },
    {     xi.item.PAINFUL_VISION,       xi.item.DARK_EARRING },
    {    xi.item.TIMOROUS_VISION, xi.item.ENFEEBLING_EARRING },
    {   xi.item.VENERABLE_VISION,     xi.item.STRING_EARRING },
    {     xi.item.VIOLENT_VISION,    xi.item.BUCKLER_EARRING },
    {   xi.item.AUDACIOUS_VISION,     xi.item.DIVINE_EARRING },
    {   xi.item.ENDEARING_VISION,    xi.item.SINGING_EARRING },
    { xi.item.PUNCTILIOUS_VISION,   xi.item.PARRYING_EARRING },
    {      xi.item.VERNAL_VISION,    xi.item.EVASION_EARRING },
    {       xi.item.VIVID_VISION,    xi.item.HEALING_EARRING },
    {   xi.item.MALICIOUS_VISION,   xi.item.NINJUTSU_EARRING },
    { xi.item.PRETENTIOUS_VISION,  xi.item.ELEMENTAL_EARRING },
    {    xi.item.PRISTINE_VISION,       xi.item.WIND_EARRING },
    {      xi.item.SOLEMN_VISION,   xi.item.GUARDING_EARRING },
    {     xi.item.VALIANT_VISION, xi.item.AUGMENTING_EARRING },
    {   xi.item.IMPETUOUS_VISION,     xi.item.TOREADERS_RING },
    {     xi.item.TENUOUS_VISION,        xi.item.ASTRAL_ROPE },
    {       xi.item.SNIDE_VISION,      xi.item.SAFETY_MANTLE },
    {        xi.item.GRAVE_IMAGE,          xi.item.HABU_SKIN },
    {     xi.item.BEATIFIC_IMAGE,          xi.item.TIGER_EYE },
    {     xi.item.VALOROUS_IMAGE,    xi.item.RHEIYOH_LEATHER },
    {      xi.item.ANCIENT_IMAGE,     xi.item.OVERSIZED_FANG },
    {       xi.item.VIRGIN_IMAGE,      xi.item.SUPER_CERMENT },
}

entity.onTrade = function(player, npc, trade)
    local reward = 0

    -- Get what reward should be given according to traded item
    for _, prize in pairs(rewards) do
        if npcUtil.tradeHasExactly(trade, prize[1]) then
            reward = prize[2]
            player:setCharVar("veneReward", reward)
            player:startEvent(10066, reward)
        end
    end
end

entity.onTrigger = function(player, npc)
    -- Player has attempted the ENM at least once
    if
        player:getCurrentMission(xi.mission.log_id.COP) > xi.mission.id.cop.THE_RITES_OF_LIFE and
        player:getCharVar("[ENM]VenessaComplete") == 1
    then
        player:startEvent(10065)
    -- Player can do ENM but hasn't done it
    elseif player:getCurrentMission(xi.mission.log_id.COP) > xi.mission.id.cop.THE_RITES_OF_LIFE then
        player:startEvent(10064)
    -- Player has not progressed far enough in CoP
    else
        player:startEvent(10064, 99)
    end
end

entity.onEventUpdate = function(player, csid, option)
    local abandonmentTimer = player:getCharVar("[ENM]abandonmentTimer")
    local antipathyTimer = player:getCharVar("[ENM]antipathyTimer")
    local animusTimer = player:getCharVar("[ENM]animusTimer")
    local acrimonyTimer = player:getCharVar("[ENM]acrimonyTimer")

    if
        csid == 10064 or
        csid == 10065
    then
        -- Spit out time remaining on KI if on cooldown
        -- Spire of Holla ENM
        if
            option == 1 and VanadielTime() < abandonmentTimer and
            not player:hasKeyItem(xi.ki.CENSER_OF_ABANDONMENT)
        then
            player:updateEvent(1, 0, 0, 0, abandonmentTimer, 1, 0, 0)
        -- Spire of Dem ENM
        elseif
            option == 2 and VanadielTime() < antipathyTimer and
            not player:hasKeyItem(xi.ki.CENSER_OF_ANTIPATHY)
        then
            player:updateEvent(2, 0, 0, 0, antipathyTimer, 1, 0, 0)
        -- Spire of Mea ENM
        elseif
            option == 3 and VanadielTime() < animusTimer and
            not player:hasKeyItem(xi.ki.CENSER_OF_ANIMUS)
        then
            player:updateEvent(3, 0, 0, 0, animusTimer, 1, 0, 0)
        -- Spire of Vahzl ENM
        elseif
            option == 4 and VanadielTime() < acrimonyTimer and
            not player:hasKeyItem(xi.ki.CENSER_OF_ACRIMONY)
        then
            player:updateEvent(4, 0, 0, 0, acrimonyTimer, 1, 0, 0)
        end

        -- Cooldown is up, give player the KI
        -- Spire of Holla ENM
        if option == 1 and VanadielTime() >= abandonmentTimer then
            player:updateEvent(1, 0, 0, 1)
        -- Spire of Dem ENM
        elseif option == 2 and VanadielTime() >= antipathyTimer then
            player:updateEvent(2, 0, 0, 1)
        -- Spire of Mea ENM
        elseif option == 3 and VanadielTime() >= animusTimer then
            player:updateEvent(3, 0, 0, 1)
        -- Spire of Vahzl ENM
        elseif
            option == 4 and VanadielTime() >= acrimonyTimer and
            player:getCurrentMission(xi.mission.log_id.COP) > xi.mission.id.cop.SLANDEROUS_UTTERINGS
        then
            player:updateEvent(4, 0, 0, 1)
        end
    end
end

entity.onEventFinish = function(player, csid, option)
    -- Give player reward
    local objectTrade = player:getCharVar("veneReward")
    if csid == 10066 then
        if player:getFreeSlotsCount() == 0 then
            player:messageSpecial(ID.text.ITEM_CANNOT_BE_OBTAINED, objectTrade)
        else
            player:tradeComplete()
            player:addItem(objectTrade)
            player:messageSpecial(ID.text.ITEM_OBTAINED, objectTrade)
            player:setCharVar("veneReward", 0)
        end
    end

    local abandonmentTimer = player:getCharVar("[ENM]abandonmentTimer")
    local antipathyTimer = player:getCharVar("[ENM]antipathyTimer")
    local animusTimer = player:getCharVar("[ENM]animusTimer")
    local acrimonyTimer = player:getCharVar("[ENM]acrimonyTimer")

    -- Give player KI
    if csid == 10065 or csid == 10064 then
        -- Spire of Holla ENM
        if
            option == 1 and os.time() >= abandonmentTimer and
            not player:hasKeyItem(xi.ki.CENSER_OF_ABANDONMENT)
        then
            npcUtil.giveKeyItem(player, xi.keyItem.CENSER_OF_ABANDONMENT)
            player:setCharVar("[ENM]abandonmentTimer", VanadielTime() + (xi.settings.main.ENM_COOLDOWN * 3600)) -- Current time + (ENM_COOLDOWN*1hr in seconds)
        -- Spire of Dem ENM
        elseif
            option == 2 and os.time() >= antipathyTimer and
            not player:hasKeyItem(xi.ki.CENSER_OF_ANTIPATHY)
        then
            npcUtil.giveKeyItem(player, xi.keyItem.CENSER_OF_ANTIPATHY)
            player:setCharVar("[ENM]antipathyTimer", VanadielTime() + (xi.settings.main.ENM_COOLDOWN * 3600)) -- Current time + (ENM_COOLDOWN*1hr in seconds)
        -- Spire of Mea ENM
        elseif
            option == 3 and os.time() >= animusTimer and
            not player:hasKeyItem(xi.ki.CENSER_OF_ANIMUS)
        then
            npcUtil.giveKeyItem(player, xi.keyItem.CENSER_OF_ANIMUS)
            player:setCharVar("[ENM]animusTimer", VanadielTime() + (xi.settings.main.ENM_COOLDOWN * 3600)) -- Current time + (ENM_COOLDOWN*1hr in seconds)
        -- Spire of Vahzl ENM
        elseif
            option == 4 and os.time() >= acrimonyTimer and
            not player:hasKeyItem(xi.ki.CENSER_OF_ACRIMONY)
        then
            npcUtil.giveKeyItem(player, xi.keyItem.CENSER_OF_ACRIMONY)
            player:setCharVar("[ENM]acrimonyTimer", VanadielTime() + (xi.settings.main.ENM_COOLDOWN * 3600)) -- Current time + (ENM_COOLDOWN*1hr in seconds)
        end
    end
end

return entity
