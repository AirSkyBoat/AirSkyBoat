-----------------------------------
-- Area: Selbina
--  NPC: Zaldon
-- Involved in Quests: Under the sea, A Boy's Dream
-- Starts and Finishes: Inside the Belly
-- !pos -13 -7 -5 248
-----------------------------------
local ID = require("scripts/zones/Selbina/IDs")
require("scripts/globals/npc_util")
require("scripts/globals/quests")
require("scripts/globals/titles")
-----------------------------------
local entity = {}

entity.fishRewards =
{
    ----- Quest 1 -----
    [     xi.item.DARK_BASS] = { gil =  10, items = { { chance =  4.9, itemId =                 xi.item.GREEN_ROCK } } },
    [ xi.item.VEYDAL_WRASSE] = { gil = 225, items = { { chance =    5, itemId =                 xi.item.NEBIMONITE }, { chance = 5, itemId = xi.item.SEASHELL } } },
    [      xi.item.OGRE_EEL] = { gil =  16, items = { { chance =  2.6, itemId =             xi.item.TURQUOISE_RING } }, title = xi.title.CORDON_BLEU_FISHER },
    [ xi.item.GIANT_CATFISH] = { gil =  50, items = { { chance =  7.2, itemId =                 xi.item.EARTH_WAND } }, title = xi.title.CORDON_BLEU_FISHER },
    ----- Quest 2 -----
    [  xi.item.ZAFMLUG_BASS] = { gil =  15, items = { { chance =  1.4, itemId =                  xi.item.BLUE_ROCK } } },
    [   xi.item.GIANT_DONKO] = { gil =  96, items = { { chance =  4.7, itemId = xi.item.BROKEN_HALCYON_FISHING_ROD } } },
    [     xi.item.BLADEFISH] = { gil = 200, items = { { chance = 11.7, itemId =                 xi.item.ROBBER_RIG } } },
    [xi.item.BHEFHEL_MARLIN] = { gil = 150, items = { { chance =  3.0, itemId =             xi.item.BRIGANDS_CHART }, { chance = 4.4, itemId = xi.item.PIRATES_CHART } } },
    [  xi.item.SILVER_SHARK] = { gil = 250, items = { { chance =  1.3, itemId =                    xi.item.TRIDENT } }, title = xi.title.ACE_ANGLER },
    ----- Quest 3 -----
    [xi.item.JUNGLE_CATFISH] = { gil = 300, items = { { chance =    3, itemId =    xi.item.BROKEN_HUME_FISHING_ROD } } },
    [   xi.item.GAVIAL_FISH] = { gil = 250, items = { { chance =    5, itemId =              xi.item.DRONE_EARRING } } },
    [  xi.item.EMPEROR_FISH] = { gil = 300, items = { { chance =    1, itemId =             xi.item.CUIR_HIGHBOOTS } } },
    [  xi.item.MORINABALIGI] = { gil = 300, items = { { chance =    5, itemId =                xi.item.CUIR_GLOVES } } },
    [      xi.item.PIRARUCU] = { gil = 516, items = { { chance =    5, itemId =                xi.item.WYVERN_SKIN }, { chance = 2.5, itemId =         xi.item.PEISTE_SKIN } } },
    [     xi.item.MEGALODON] = { gil = 532, items = { { chance =    3, itemId = xi.item.BROKEN_MITHRAN_FISHING_ROD }, { chance =   3, itemId = xi.item.MITHRAN_FISHING_ROD } } },
    ----- Quest 4 -----
    [    xi.item.PTERYGOTUS] = { gil = 390, items = { { chance =  6.6, itemId =               xi.item.LAPIS_LAZULI } } },
    [  xi.item.KALKANBALIGI] = { gil = 390, items = { { chance =  3.3, itemId =                xi.item.FLAT_SHIELD } } },
    [      xi.item.TAKITARO] = { gil = 350, items = { { chance =  2.1, itemId =         xi.item.PHILOSOPHERS_STONE } } },
    [    xi.item.SEA_ZOMBIE] = { gil = 350, items = { { chance = 23.4, itemId =             xi.item.DRILL_CALAMARY } } },
    [   xi.item.CAVE_CHERAX] = { gil = 800, items = { { chance = 23.2, itemId =                xi.item.DWARF_PUGIL } } },
    [       xi.item.TRICORN] = { gil = 810, items = { { chance =    4, itemId =     xi.item.CHUNK_OF_DARKSTEEL_ORE } } },
    [   xi.item.TURNABALIGI] = { gil = 340, items = { { chance =  0.8, itemId =          xi.item.CHUNK_OF_DARK_ORE }, { chance = 1.6, itemId = xi.item.CHUNK_OF_ICE_ORE }, { chance = 1.3, itemId = xi.item.CHUNK_OF_WATER_ORE } } },
    [    xi.item.TITANICTUS] = { gil = 350, items = { { chance =  1.4, itemId =              xi.item.ANCIENT_SWORD } }, title = xi.title.LU_SHANG_LIKE_FISHER_KING },
    ----- Unlisted -----
    [  xi.item.GIANT_CHIRAI] = { gil = 550, items = { { chance =  1.2, itemId =        xi.item.SPOOL_OF_TWINTHREAD } } },
    [   xi.item.GUGRUSAURUS] = { gil = 880, items = { { chance =  0.4, itemId =                xi.item.SABER_SHOOT } } },
    [           xi.item.LIK] = { gil = 880, items = { { chance =  0.5, itemId =         xi.item.SPOOL_OF_OPAL_SILK } } },
    [   xi.item.RYUGU_TITAN] = { gil = 800, items = { { chance =    1, itemId =            xi.item.MERCURIAL_SWORD } } },
    [   xi.item.GERROTHORAX] = { gil = 423, items = { { chance =  1.2, itemId =                xi.item.RISKY_PATCH } } },
    [    xi.item.MONKE_ONKE] = { gil = 150, items = { { chance =    2, itemId =       xi.item.PINCH_OF_POISON_DUST } } },
    [   xi.item.KILICBALIGI] = { gil = 150, items = { { chance =    2, itemId =           xi.item.RUSTY_GREATSWORD } } },
    [xi.item.ARMORED_PISCES] = { gil = 475, items = { { chance =  0.4, itemId =         xi.item.STOLID_BREASTPLATE } } },
    [     xi.item.MOLA_MOLA] = { gil = 478, items = { { chance =  1.8, itemId =            xi.item.MERCURIAL_SPEAR } } },
    [       xi.item.AHTAPOT] = { gil = 350, items = { { chance = 18.8, itemId =              xi.item.DECAYED_INGOT }, { chance = 10.6, itemId = xi.item.MILDEWY_INGOT } } },
    [       xi.item.LAKERDA] = { gil =  51, items = { { chance =    2, itemId =                      xi.item.PEARL }, { chance = 10.6, itemId =   xi.item.BLACK_PEARL } } },
}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc, trade)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
