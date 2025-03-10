-----------------------------------
-- Area: Mine Shaft #2716
-- NPC: Armoury Crate
-- Note: A loot offset is used to differentuate loot
--  tables based on race vs job as they share similar
--  int values to represent them. All race values are
--  offset by 20.
-----------------------------------
require("scripts/globals/battlefield")
-----------------------------------
local entity = {}

local lootOffset = 20

local loot =
{
    -- ENM: Bionic Bug
    [738] =
    {
        {
            { itemid =    0, droprate = 900 }, -- Nothing
            { itemid = xi.item.CLOUD_EVOKER, droprate = 100 },
        },
        {
            { itemid = xi.item.SQUARE_OF_ELTORO_LEATHER, droprate = 333 },
            { itemid = xi.item.PIECE_OF_CASSIA_LUMBER, droprate = 333 },
            { itemid = xi.item.DRAGON_BONE, droprate = 334 },
        },
        {
            { itemid =     0, droprate = 625 }, -- nothing
            { itemid = xi.item.MARTIAL_KNIFE, droprate =  75 },
            { itemid = xi.item.MARTIAL_SCYTHE, droprate =  75 },
            { itemid = xi.item.COMMANDERS_CAPE, droprate =  75 },
            { itemid = xi.item.FAERIE_HAIRPIN, droprate = 100 },
            { itemid = xi.item.SCROLL_OF_RAISE_III, droprate =  50 },
        },
        {
            { itemid =     0, droprate = 625 }, -- nothing
            { itemid = xi.item.MARTIAL_KNIFE, droprate =  75 },
            { itemid = xi.item.MARTIAL_SCYTHE, droprate =  75 },
            { itemid = xi.item.COMMANDERS_CAPE, droprate =  75 },
            { itemid = xi.item.FAERIE_HAIRPIN, droprate = 100 },
            { itemid = xi.item.SCROLL_OF_RAISE_III, droprate =  50 },
        },
    },

    -- Automaton Assault Hume
    [xi.race.HUME_M + lootOffset] =
    {
        {
            { itemid = 0,    droprate = 800 }, -- Nothing
            { itemid = xi.item.LUGWORM_SAND, droprate = 200 },
        },
        {
            { itemid = 0,     droprate = 900 }, -- Nothing
            { itemid = xi.item.BELINKYS_EARRING, droprate = 100 },
        },
        {
            { itemid = 0,     droprate = 900 }, -- Nothing
            { itemid = xi.item.QUANTZS_EARRING, droprate = 100 },
        },
    },

    -- Automaton Assault Elvaan
    [xi.race.ELVAAN_M + lootOffset] =
    {
        {
            { itemid = 0,    droprate = 800 }, -- Nothing
            { itemid = xi.item.LUGWORM_SAND, droprate = 200 },
        },
        {
            { itemid = 0,     droprate = 900 }, -- Nothing
            { itemid = xi.item.DESAMILIONS_EARRING, droprate = 100 },
        },
        {
            { itemid = 0,     droprate = 900 }, -- Nothing
            { itemid = xi.item.MELNINAS_EARRING, droprate = 100 },
        },
    },

    -- Automaton Assault Taru
    [xi.race.TARU_M + lootOffset] =
    {
        {
            { itemid = 0,    droprate = 800 }, -- Nothing
            { itemid = xi.item.LUGWORM_SAND, droprate = 200 },
        },
        {
            { itemid = 0,     droprate = 900 }, -- Nothing
            { itemid = xi.item.WAETOTOS_EARRING, droprate = 100 },
        },
        {
            { itemid = 0,     droprate = 900 }, -- Nothing
            { itemid = xi.item.MORUKAKAS_EARRING, droprate = 100 },
        },
    },

    -- Automaton Assault Mithra
    [xi.race.MITHRA + lootOffset] =
    {
        {
            { itemid = 0,    droprate = 800 }, -- Nothing
            { itemid = xi.item.LUGWORM_SAND, droprate = 200 },
        },
        {
            { itemid = 0,     droprate = 900 }, -- Nothing
            { itemid = xi.item.RYAKHOS_EARRING, droprate = 100 },
        },
        {
            { itemid = 0,     droprate = 900 }, -- Nothing
            { itemid = xi.item.FEYUHS_EARRING, droprate = 100 },
        },
    },

    -- Automaton Assault Galka
    [xi.race.GALKA + lootOffset] =
    {
        {
            { itemid = 0,    droprate = 800 }, -- Nothing
            { itemid = xi.item.LUGWORM_SAND, droprate = 200 },
        },
        {
            { itemid = 0,     droprate = 900 }, -- Nothing
            { itemid = xi.item.ZEDOMAS_EARRING, droprate = 100 },
        },
        {
            { itemid = 0,     droprate = 900 }, -- Nothing
            { itemid = xi.item.GAYANJS_EARRING, droprate = 100 },
        },
    },

    -- Pulling the Strings Specific Job Rewards
    [xi.job.WAR] =
    {
        {
            { itemid = 0, droprate = 750 },
            { itemid = xi.item.JANIZARY_EARRING, droprate = 250 },
        },
    },
    [xi.job.MNK] =
    {
        {
            { itemid = 0, droprate = 750 },
            { itemid = xi.item.COUNTER_EARRING, droprate = 250 },
        },
    },

    [xi.job.WHM] =
    {
        {
            { itemid = 0, droprate = 750 },
            { itemid = xi.item.HEALING_FEATHER, droprate = 250 },
        },
    },

    [xi.job.BLM] =
    {
        {
            { itemid = 0, droprate = 750 },
            { itemid = xi.item.SPIRIT_LANTERN, droprate = 250 },
        },
    },

    [xi.job.RDM] =
    {
        {
            { itemid = 0, droprate = 750 },
            { itemid = xi.item.SANATION_RING, droprate = 250 },
        },
    },

    [xi.job.THF] =
    {
        {
            { itemid = 0, droprate = 750 },
            { itemid = xi.item.ASSASSINS_RING, droprate = 250 },
        },
    },

    [xi.job.PLD] =
    {
        {
            { itemid = 0, droprate = 750 },
            { itemid = xi.item.VIAL_OF_REFRESH_MUSK, droprate = 250 },
        },
    },

    [xi.job.DRK] =
    {
        {
            { itemid = 0, droprate = 750 },
            { itemid = xi.item.TACTICAL_RING, droprate = 250 },
        },
    },

    [xi.job.BST] =
    {
        {
            { itemid = 0, droprate = 750 },
            { itemid = xi.item.PACIFIST_RING, droprate = 250 },
        },
    },

    [xi.job.BRD] =
    {
        {
            { itemid = 0, droprate = 750 },
            { itemid = xi.item.GETSUL_RING, droprate = 250 },
        },
    },

    [xi.job.RNG] =
    {
        {
            { itemid = 0, droprate = 750 },
            { itemid = xi.item.DEADEYE_EARRING, droprate = 250 },
        },
    },

    [xi.job.SAM] =
    {
        {
            { itemid = 0, droprate = 750 },
            { itemid = xi.item.GAMUSHARA_EARRING, droprate = 250 },
        },
    },

    [xi.job.NIN] =
    {
        {
            { itemid = 0, droprate = 750 },
            { itemid = xi.item.NARUKO_EARRING, droprate = 250 },
        },
    },

    [xi.job.DRG] =
    {
        {
            { itemid = 0, droprate = 750 },
            { itemid = xi.item.BAG_OF_WYVERN_FEED, droprate = 250 },
        },
    },

    [xi.job.SMN] =
    {
        {
            { itemid = 0, droprate = 750 },
            { itemid = xi.item.ASTRAL_POT, droprate = 250 },
        },
    },

    [xi.job.BLU] =
    {
        {
            { itemid = 0, droprate = 750 },
            { itemid = xi.item.DEATH_CHAKRAM, droprate = 250 },
        },
    },

    [xi.job.COR] =
    {
        {
            { itemid = 0, droprate = 750 },
            { itemid = xi.item.CORSAIR_BULLET_POUCH, droprate = 250 },
        },
    },

    [xi.job.PUP] =
    {
        {
            { itemid = 0, droprate = 200 },
            { itemid = xi.item.ATTUNER,            droprate = 100 },
            { itemid = xi.item.TACTICAL_PROCESSOR, droprate = 100 },
            { itemid = xi.item.DRUM_MAGAZINE,      droprate = 100 },
            { itemid = xi.item.EQUALIZER,          droprate = 100 },
            { itemid = xi.item.TARGET_MAKER,       droprate = 100 },
            { itemid = xi.item.MANA_CHANNELER,     droprate = 100 },
            { itemid = xi.item.ERASER,             droprate = 100 },
            { itemid = xi.item.SMOKER_SCREEN,      droprate = 100 },
        },
    },
}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local battlefield = player:getBattlefield()
    local bfID = player:getBattlefieldID()

    if bfID == 740 then
        local raceLoot = player:getRace()
        if raceLoot < 7 then
            if raceLoot % 2 == 0 then
                raceLoot = raceLoot - 1
            end
        end

        xi.battlefield.HandleLootRolls(battlefield, loot[raceLoot + lootOffset], nil, npc)

    elseif bfID == 739 then
        xi.battlefield.HandleLootRolls(battlefield, loot[player:getMainJob()], nil, npc)

    elseif battlefield then
        xi.battlefield.HandleLootRolls(battlefield, loot[battlefield:getID()], nil, npc)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
