-----------------------------------
-- Area: Valkurm Dunes
--  NPC: Barnacled Box
-----------------------------------
local ID = require("scripts/zones/Valkurm_Dunes/IDs")
-----------------------------------
local entity = {}

local sharedLoot =
{
    -- All items are assigned a "weight" here
    item1 =
    {
        [          xi.item.CORAL_FRAGMENT] =  50,
        [          xi.item.DRILL_CALAMARY] = 200,
        [             xi.item.DWARF_PUGIL] = 100,
        [xi.item.HIGH_QUALITY_PUGIL_SCALES] =  50,
        --[             xi.item.PAMTAM_KELP] = 250, (ToAU Era, giving weight to SHALL_SHELL as similar value item)
        [               xi.item.SALINATOR] = 100,
        [             xi.item.SHALL_SHELL] = 400,
        [               xi.item.ZEBRA_EEL] = 100,
    },
    item2 =
    {
        [  xi.item.ARROWWOOD_LOG] = 200,
        [xi.item.BUTTERFLY_CORAL] = 150,
        [ xi.item.CORAL_FRAGMENT] =  50,
        [ xi.item.DRILL_CALAMARY] = 150,
        [    xi.item.DWARF_PUGIL] = 150,
        [     xi.item.NEBIMONITE] = 100,
        [    xi.item.SHALL_SHELL] = 200,
    },
    item3 =
    {
        [         xi.item.FUSCINA] = 880,
        [  xi.item.MERCURIAL_KRIS] =  28,
        [xi.item.PIECE_OF_OXBLOOD] =  92,
    },
    item4 =
    {
        [xi.item.ALBATROSS_RING] = 1000,
    }
}

local convertToWeighted = function(loot)
    -- Takes a loot table formatted like the members of `sharedloot` and returns a weighted version that can be indexed
    local weightedLoot = {}

    for item, weight in pairs(loot) do
        for i = 1, weight do
            table.insert(weightedLoot, item)
        end
    end

    return weightedLoot
end

-- Generate weighted loot tables now (on server init) so it doesn't have to be done at runtime
local wItem1 = convertToWeighted(sharedLoot.item1)
local wItem2 = convertToWeighted(sharedLoot.item2)
local wItem3 = convertToWeighted(sharedLoot.item3)
local wItem4 = convertToWeighted(sharedLoot.item4)

local weightedRandomSelect = function(w_loot)
    -- Takes a weighted loot table and returns a single random result
    return w_loot[math.random(#w_loot)]
end

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local chestOwner = npc:getLocalVar("leaderID")

    -- First reward is 1 item from the item1 pool
    local boxitem1 = weightedRandomSelect(wItem1)
    -- Second reward is 1 item from the item2 pool
    local boxitem2 = weightedRandomSelect(wItem2)
    -- Third reward is a 1 item from the item3 pool
    local boxitem3 = weightedRandomSelect(wItem3)
    -- Final reward is the Albatross Ring
    local boxitem4 = weightedRandomSelect(wItem4)

    --Distribute rewards
    if npc:getLocalVar("open") == 0 and player:getLeaderID() == chestOwner then
        npc:entityAnimationPacket("open")
        npc:setLocalVar("open", 1)
        player:addTreasure(boxitem1, npc)
        player:addTreasure(boxitem2, npc)
        player:addTreasure(boxitem3, npc)
        player:addTreasure(boxitem4, npc)
        npc:timer(15000, function(npcArg)
            npcArg:entityAnimationPacket("kesu")
        end)

        npc:timer(16000, function(npcArg)
            npcArg:setStatus(xi.status.DISAPPEAR)
        end)
    end

    local shimmering = GetNPCByID(ID.npc.SHIMMERING_POINT)
    shimmering:setStatus(xi.status.DISAPPEAR)
    local party = player:getParty()
    for _, member in pairs(party) do
        if member:hasStatusEffect(xi.effect.LEVEL_RESTRICTION) then
            member:delStatusEffect(xi.effect.LEVEL_RESTRICTION)
        end

        member:changeMusic(0, 0)
        member:changeMusic(1, 0)
        member:changeMusic(2, 101)
        member:changeMusic(3, 102)
        member:setLocalVar("Chart", 0)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
