-----------------------------------
-- Area: Balgas Dais
--  NPC: Armoury Crate
-- Balgas Dais Burning Cicrcle Armoury Crate
-----------------------------------
require("scripts/globals/battlefield")
require("scripts/globals/titles")
require("scripts/globals/quests")
-----------------------------------
local entity = {}

local loot =
{
    -- BCNM Steamed Sprouts
    [97] =
    {
        {
            { itemid = xi.item.GOLD_BEASTCOIN,    droprate = 500 },
            { itemid = xi.item.MYTHRIL_BEASTCOIN, droprate = 500 },
        },

        {
            { itemid = 0, droprate =  750 }, -- nothing
            { itemid = xi.item.VILE_ELIXIR, droprate =  250 },
        },

        {
            { itemid =     0, droprate =  600 }, -- nothing
            { itemid = xi.item.SURVIVAL_BELT,     droprate = 100 },
            { itemid = xi.item.GUARDING_GORGET,   droprate = 100 },
            { itemid = xi.item.ENHANCING_EARRING, droprate = 100 },
            { itemid = xi.item.BALANCE_BUCKLER,   droprate = 100 },
        },

        {
            { itemid = xi.item.WHITE_ROCK,       droprate = 125 },
            { itemid = xi.item.TRANSLUCENT_ROCK, droprate = 125 },
            { itemid = xi.item.PURPLE_ROCK,      droprate = 125 },
            { itemid = xi.item.RED_ROCK,         droprate = 125 },
            { itemid = xi.item.BLUE_ROCK,        droprate = 125 },
            { itemid = xi.item.YELLOW_ROCK,      droprate = 125 },
            { itemid = xi.item.GREEN_ROCK,       droprate = 125 },
            { itemid = xi.item.BLACK_ROCK,       droprate = 125 },
        },

        {
            { itemid = xi.item.GARNET,       droprate =  50 },
            { itemid = xi.item.BLACK_PEARL,  droprate =  50 },
            { itemid = xi.item.AMETRINE,     droprate =  50 },
            { itemid = xi.item.PAINITE,      droprate =  50 },
            { itemid = xi.item.PEARL,        droprate =  50 },
            { itemid = xi.item.OAK_LOG,      droprate = 100 },
            { itemid = xi.item.GOSHENITE,    droprate = 100 },
            { itemid = xi.item.SPHENE,       droprate = 100 },
            { itemid = xi.item.ROSEWOOD_LOG, droprate = 100 },
            { itemid = xi.item.TURQUOISE,    droprate = 100 },
            { itemid = xi.item.SAPPHIRE,     droprate = 100 },
            { itemid = xi.item.PERIDOT,      droprate = 150 },
        },

        {
            { itemid =     0, droprate =  125 }, -- nothing
            { itemid = xi.item.SCROLL_OF_REFRESH,     droprate = 125 },
            { itemid = xi.item.SCROLL_OF_ERASE,       droprate = 125 },
            { itemid = xi.item.SCROLL_OF_ABSORB_INT,  droprate = 125 },
            { itemid = xi.item.SCROLL_OF_PHALANX,     droprate = 125 },
            { itemid = xi.item.SCROLL_OF_ICE_SPIKES,  droprate = 125 },
            { itemid = xi.item.SCROLL_OF_UTSUSEMI_NI, droprate = 125 },
            { itemid = xi.item.FIRE_SPIRIT_PACT,      droprate = 125 },
        },
    },

    -- BCNM Divine Punishers
    [98] =
    {
        {
            { itemid = xi.item.FORSETIS_AXE,   droprate = 250 },
            { itemid = xi.item.ARAMISS_RAPIER, droprate = 250 },
            { itemid = xi.item.SPARTAN_CESTI,  droprate = 250 },
            { itemid = xi.item.DOMINION_MACE,  droprate = 250 },
        },

        {
            { itemid = 0, droprate = 250 }, -- nothing
            { itemid = xi.item.FUMA_KYAHAN,      droprate = 100 },
            { itemid = xi.item.PEACE_RING,       droprate = 200 },
            { itemid = xi.item.ENHANCING_MANTLE, droprate = 200 },
            { itemid = xi.item.MASTER_BELT,      droprate = 150 },
            { itemid = xi.item.OCHIUDOS_KOTE,    droprate = 100 },
        },

        {
            { itemid = 0, droprate = 850 }, -- nothing
            { itemid = xi.item.HI_RERAISER,    droprate = 100 },
            { itemid = xi.item.VILE_ELIXIR_P1, droprate =  50 },
        },

        {
            { itemid = xi.item.PURPLE_ROCK,      droprate = 166 },
            { itemid = xi.item.TRANSLUCENT_ROCK, droprate = 166 },
            { itemid = xi.item.RED_ROCK,         droprate = 167 },
            { itemid = xi.item.BLACK_ROCK,       droprate = 167 },
            { itemid = xi.item.YELLOW_ROCK,      droprate = 167 },
            { itemid = xi.item.WHITE_ROCK,       droprate = 167 },
        },

        {
            { itemid = xi.item.PAINITE,     droprate = 125 },
            { itemid = xi.item.AQUAMARINE,  droprate = 125 },
            { itemid = xi.item.FLUORITE,    droprate = 125 },
            { itemid = xi.item.ZIRCON,      droprate = 125 },
            { itemid = xi.item.SUNSTONE,    droprate = 125 },
            { itemid = xi.item.CHRYSOBERYL, droprate = 125 },
            { itemid = xi.item.MOONSTONE,   droprate = 125 },
            { itemid = xi.item.JADEITE,     droprate = 125 },
        },

        {
            { itemid = 0, droprate = 517 }, -- nothing
            { itemid = xi.item.MAHOGANY_LOG, droprate = 333 },
            { itemid = xi.item.EBONY_LOG,    droprate = 150 },
        },

        {
            { itemid = xi.item.STEEL_INGOT,     droprate = 350 },
            { itemid = xi.item.MYTHRIL_INGOT,   droprate = 150 },
            { itemid = xi.item.DARKSTEEL_INGOT, droprate = 150 },
            { itemid = xi.item.GOLD_INGOT,      droprate = 350 },
        },
    },

    -- BCNM Treasure and Tribulations
    [100] =
    {
        {
            { itemid = xi.item.GUARDIANS_RING, droprate =  75 },
            { itemid = xi.item.KAMPFER_RING,   droprate =  32 },
            { itemid = xi.item.CONJURERS_RING, droprate =  54 },
            { itemid = xi.item.SHINOBI_RING,   droprate =  32 },
            { itemid = xi.item.SLAYERS_RING,   droprate =  97 },
            { itemid = xi.item.SORCERERS_RING, droprate =  75 },
            { itemid = xi.item.SOLDIERS_RING,  droprate = 108 },
            { itemid = xi.item.TAMERS_RING,    droprate =  22 },
            { itemid = xi.item.TRACKERS_RING,  droprate =  65 },
            { itemid = xi.item.DRAKE_RING,     droprate =  32 },
            { itemid = xi.item.FENCERS_RING,   droprate =  32 },
            { itemid = xi.item.MINSTRELS_RING, droprate =  86 },
            { itemid = xi.item.MEDICINE_RING,  droprate =  86 },
            { itemid = xi.item.ROGUES_RING,    droprate =  75 },
            { itemid = xi.item.RONIN_RING,     droprate =  11 },
            { itemid = xi.item.PLATINUM_RING,   droprate = 32 },
        },

        {
            { itemid = xi.item.ASTRAL_RING,              droprate = 376 },
            { itemid = xi.item.PLATINUM_RING,            droprate =  22 },
            { itemid = xi.item.SCROLL_OF_QUAKE,          droprate =  65 },
            { itemid = xi.item.RAM_SKIN,                 droprate =  10 },
            { itemid = xi.item.RERAISER,                 droprate =  11 },
            { itemid = xi.item.MYTHRIL_INGOT,            droprate =  22 },
            { itemid = xi.item.LIGHT_SPIRIT_PACT,        droprate =  10 },
            { itemid = xi.item.SCROLL_OF_FREEZE,         droprate =  32 },
            { itemid = xi.item.SCROLL_OF_REGEN_II,       droprate =  43 },
            { itemid = xi.item.SCROLL_OF_RAISE_II,       droprate =  32 },
            { itemid = xi.item.PETRIFIED_LOG,            droprate =  11 },
            { itemid = xi.item.CORAL_FRAGMENT,           droprate =  11 },
            { itemid = xi.item.MAHOGANY_LOG,             droprate =  11 },
            { itemid = xi.item.CHUNK_OF_PLATINUM_ORE,    droprate =  43 },
            { itemid = xi.item.CHUNK_OF_GOLD_ORE,        droprate = 108 },
            { itemid = xi.item.CHUNK_OF_DARKSTEEL_ORE,   droprate =  32 },
            { itemid = xi.item.CHUNK_OF_MYTHRIL_ORE,     droprate =  65 },
            { itemid = xi.item.GOLD_INGOT,               droprate =  10 },
            { itemid = xi.item.DARKSTEEL_INGOT,          droprate =  11 },
            { itemid = xi.item.PLATINUM_INGOT,           droprate =  11 },
            { itemid = xi.item.EBONY_LOG,                droprate =  11 },
            { itemid = xi.item.RAM_HORN,                 droprate =  11 },
            { itemid = xi.item.DEMON_HORN,               droprate =  11 },
            { itemid = xi.item.MANTICORE_HIDE,           droprate =   9 },
            { itemid = xi.item.WYVERN_SKIN,              droprate =  11 },
            { itemid = xi.item.HANDFUL_OF_WYVERN_SCALES, droprate =  11 },
        },
    },

    -- BCNM Creeping Doom
    [104] =
    {
        {
            { itemid = xi.item.SPOOL_OF_SILK_THREAD, droprate = 1000 },
        },

        {
            { itemid = 65535, droprate = 1000, amount = 3000 }, -- gil
        },

        {
            { itemid = 0, droprate =  700 }, -- nothing
            { itemid = xi.item.SPOOL_OF_SILK_THREAD, droprate =  300 },
        },

        {
            { itemid = 0, droprate =  900 }, -- nothing
            { itemid = xi.item.SPOOL_OF_SILK_THREAD, droprate =  100 },
        },

        {
            { itemid = 0, droprate = 300 }, -- nothing
            { itemid = xi.item.SINGERS_EARRING,    droprate = 40 },
            { itemid = xi.item.ASHIGARU_EARRING,   droprate = 50 },
            { itemid = xi.item.MAGICIANS_EARRING,  droprate = 50 },
            { itemid = xi.item.WARLOCKS_EARRING,   droprate = 50 },
            { itemid = xi.item.HEALERS_EARRING,    droprate = 40 },
            { itemid = xi.item.ESQUIRES_EARRING,   droprate = 45 },
            { itemid = xi.item.WIZARDS_EARRING,    droprate = 50 },
            { itemid = xi.item.WYVERN_EARRING,     droprate = 40 },
            { itemid = xi.item.MERCENARYS_EARRING, droprate = 50 },
            { itemid = xi.item.KILLER_EARRING,     droprate = 45 },
            { itemid = xi.item.WRESTLERS_EARRING,  droprate = 45 },
            { itemid = xi.item.GENIN_EARRING,      droprate = 50 },
            { itemid = xi.item.BEATERS_EARRING,    droprate = 50 },
            { itemid = xi.item.PILFERERS_EARRING,  droprate = 45 },
            { itemid = xi.item.TRIMMERS_EARRING,   droprate = 50 },
        },

        {
            { itemid =     0, droprate =  700 }, -- nothing
            { itemid = xi.item.SINGERS_EARRING,    droprate = 20 },
            { itemid = xi.item.ASHIGARU_EARRING,   droprate = 20 },
            { itemid = xi.item.MAGICIANS_EARRING,  droprate = 20 },
            { itemid = xi.item.WARLOCKS_EARRING,   droprate = 20 },
            { itemid = xi.item.HEALERS_EARRING,    droprate = 20 },
            { itemid = xi.item.ESQUIRES_EARRING,   droprate = 20 },
            { itemid = xi.item.WIZARDS_EARRING,    droprate = 20 },
            { itemid = xi.item.WYVERN_EARRING,     droprate = 20 },
            { itemid = xi.item.MERCENARYS_EARRING, droprate = 20 },
            { itemid = xi.item.KILLER_EARRING,     droprate = 20 },
            { itemid = xi.item.WRESTLERS_EARRING,  droprate = 20 },
            { itemid = xi.item.GENIN_EARRING,      droprate = 20 },
            { itemid = xi.item.BEATERS_EARRING,    droprate = 20 },
            { itemid = xi.item.PILFERERS_EARRING,  droprate = 20 },
            { itemid = xi.item.TRIMMERS_EARRING,   droprate = 20 },
        },

        {
            { itemid = 0, droprate = 500 }, -- nothing
            { itemid = xi.item.SHEET_OF_BAST_PARCHMENT, droprate =  400 },
            { itemid = xi.item.HI_POTION,               droprate =  100 },
        },

        {
            { itemid = 0, droprate = 500 }, -- nothing
            { itemid = xi.item.CHESTNUT_LOG, droprate =  250 },
            { itemid = xi.item.HI_ETHER,     droprate =  250 },
        },

        {
            { itemid = 0, droprate = 250 }, -- nothing
            { itemid = xi.item.SCROLL_OF_ERASE,        droprate =  150 },
            { itemid = xi.item.SCROLL_OF_DISPEL,       droprate =  200 },
            { itemid = xi.item.SCROLL_OF_MAGIC_FINALE, droprate =  250 },
            { itemid = xi.item.SCROLL_OF_UTSUSEMI_NI,  droprate =  150 },
        },

        {
            { itemid = 0, droprate = 300 }, -- nothing
            { itemid = xi.item.AMBER_STONE,            droprate =   50 },
            { itemid = xi.item.CHUNK_OF_DARKSTEEL_ORE, droprate =   50 },
            { itemid = xi.item.ELM_LOG,                droprate =   50 },
            { itemid = xi.item.IRON_INGOT,             droprate =   50 },
            { itemid = xi.item.CHUNK_OF_IRON_ORE,      droprate =   50 },
            { itemid = xi.item.LAPIS_LAZULI,           droprate =   50 },
            { itemid = xi.item.MYTHRIL_INGOT,          droprate =   50 },
            { itemid = xi.item.CHUNK_OF_MYTHRIL_ORE,   droprate =   50 },
            { itemid = xi.item.ONYX,                   droprate =   50 },
            { itemid = xi.item.SARDONYX,               droprate =   50 },
            { itemid = xi.item.SILVER_INGOT,           droprate =   50 },
            { itemid = xi.item.CHUNK_OF_SILVER_ORE,    droprate =   50 },
            { itemid = xi.item.STEEL_INGOT,            droprate =   50 },
            { itemid = xi.item.TOURMALINE,             droprate =   50 },
            { itemid = xi.item.LIGHT_OPAL,             droprate =   50 },
        },

        {
            { itemid = 0, droprate =  300 }, -- nothing
            { itemid = xi.item.AMBER_STONE,            droprate = 50 },
            { itemid = xi.item.CHUNK_OF_DARKSTEEL_ORE, droprate = 50 },
            { itemid = xi.item.ELM_LOG,                droprate = 50 },
            { itemid = xi.item.IRON_INGOT,             droprate = 50 },
            { itemid = xi.item.CHUNK_OF_IRON_ORE,      droprate = 50 },
            { itemid = xi.item.LAPIS_LAZULI,           droprate = 50 },
            { itemid = xi.item.MYTHRIL_INGOT,          droprate = 50 },
            { itemid = xi.item.CHUNK_OF_MYTHRIL_ORE,   droprate = 50 },
            { itemid = xi.item.ONYX,                   droprate = 50 },
            { itemid = xi.item.SARDONYX,               droprate = 50 },
            { itemid = xi.item.SILVER_INGOT,           droprate = 50 },
            { itemid = xi.item.CHUNK_OF_SILVER_ORE,    droprate = 50 },
            { itemid = xi.item.STEEL_INGOT,            droprate = 50 },
            { itemid = xi.item.TOURMALINE,             droprate = 50 },
            { itemid = xi.item.LIGHT_OPAL,             droprate = 50 },
        },
    },

    -- BCNM Charming Trio
    [105] =
    {
        {
            { itemid = xi.item.MANNEQUIN_HANDS, droprate = 1000 },
        },

        {
            { itemid = xi.item.JAR_OF_TOAD_OIL,        droprate = 250 },
            { itemid = xi.item.POTION,                 droprate = 300 },
            { itemid = xi.item.POTION_P1,              droprate = 180 },
            { itemid = xi.item.AIR_SPIRIT_PACT,        droprate = 130 },
            { itemid = xi.item.SQUARE_OF_COTTON_CLOTH, droprate = 280 },
        },

        {
            { itemid = xi.item.MYTHRIL_BEASTCOIN,     droprate = 250 },
            { itemid = xi.item.GANKO,                 droprate = 190 },
            { itemid = xi.item.SQUARE_OF_WOOL_CLOTH,  droprate = 270 },
            { itemid = xi.item.PLATOON_DISC,          droprate = 145 },
            { itemid = xi.item.SQUARE_OF_GRASS_CLOTH, droprate = 295 },
            { itemid = xi.item.SQUARE_OF_LINEN_CLOTH, droprate = 260 },
        },

        {
            { itemid = 0, droprate = 800 },    -- Nothing
            { itemid = xi.item.PLATOON_CUTTER, droprate = 167 },
        },

        {
            { itemid = 0, droprate = 500 },    -- Nothing
            { itemid = xi.item.VIAL_OF_FIEND_BLOOD, droprate = 500 },
        },

        {
            { itemid = 0, droprate = 500 },    -- Nothing
            { itemid = xi.item.VIAL_OF_FIEND_BLOOD, droprate = 500 },
        },

        {
            { itemid = xi.item.PLATOON_EDGE,           droprate = 235 },
            { itemid = xi.item.PLATOON_GUN,            droprate = 235 },
            { itemid = xi.item.PLATOON_SPATHA,         droprate = 235 },
            { itemid = xi.item.PLATOON_POLE,           droprate = 235 },
            { itemid = xi.item.GUNROMARU,              droprate = 255 },
            { itemid = xi.item.MANNEQUIN_HEAD,         droprate = 260 },
            { itemid = xi.item.SCROLL_OF_DRAIN,        droprate = 250 },
            { itemid = xi.item.VIAL_OF_BEASTMAN_BLOOD, droprate = 190 },
        },
    },

    -- BCNM Harem Scarem
    [106] =
    {
        {
            { itemid = xi.item.DHALMEL_HIDE, droprate = 1000 },
        },

        {
            { itemid = 0, droprate = 500 }, -- nothing
            { itemid = xi.item.GIANT_FEMUR, droprate = 500 },
        },

        {
            { itemid = 0, droprate = 500 }, -- nothing
            { itemid = xi.item.SLICE_OF_DHALMEL_MEAT, droprate = 500 },
        },

        {
            { itemid = 0, droprate = 400 }, -- nothing
            { itemid = xi.item.MERCENARY_MANTLE, droprate = 150 },
            { itemid = xi.item.BEATERS_MANTLE,   droprate = 150 },
            { itemid = xi.item.ESQUIRES_MANTLE,  droprate = 150 },
            { itemid = xi.item.HEALERS_MANTLE,   droprate = 150 },
        },

        {
            { itemid = 0, droprate = 400 }, -- nothing
            { itemid = xi.item.WIZARDS_SHIELD, droprate = 200 },
            { itemid = xi.item.TRIMMERS_ASPIS, droprate = 200 },
            { itemid = xi.item.WYVERNS_TARGE,  droprate = 200 },
        },

        {
            { itemid = 0, droprate = 200 }, -- nothing
            { itemid = xi.item.SCROLL_OF_ERASE,        droprate = 200 },
            { itemid = xi.item.SCROLL_OF_DISPEL,       droprate = 200 },
            { itemid = xi.item.SCROLL_OF_MAGIC_FINALE, droprate = 200 },
            { itemid = xi.item.SCROLL_OF_UTSUSEMI_NI,  droprate = 200 },
        },

        {
            { itemid = 0, droprate = 250 }, -- nothing
            { itemid = xi.item.SQUARE_OF_VELVET_CLOTH, droprate = 250 },
            { itemid = xi.item.SQUARE_OF_LINEN_CLOTH,  droprate = 250 },
            { itemid = xi.item.SQUARE_OF_WOOL_CLOTH,   droprate = 250 },
        },

        {
            { itemid = 0, droprate = 600 }, -- nothing
            { itemid = xi.item.MANNEQUIN_HEAD,  droprate = 200 },
            { itemid = xi.item.MANNEQUIN_HANDS, droprate = 200 },
        },
    },

    -- KSNM Early Bird Catches the Wyrm
    [107] =
    {
        {
            { itemid = xi.item.LIBATION_ABJURATION, droprate = 312 },
            { itemid = xi.item.GUESPIERE,           droprate = 182 },
            { itemid = xi.item.HAVOC_SCYTHE,        droprate =  65 },
            { itemid = xi.item.LEOPARD_AXE,         droprate =  43 },
            { itemid = xi.item.NOKIZARU_SHURIKEN,   droprate = 181 },
            { itemid = xi.item.SHINSOKU,            droprate = 217 },
            { itemid = xi.item.SOMNUS_SIGNA,        droprate =  43 },
        },

        {
            { itemid = xi.item.DIVINE_LOG,              droprate =  94 },
            { itemid = xi.item.LACQUER_TREE_LOG,        droprate = 196 },
            { itemid = xi.item.PETRIFIED_LOG,           droprate = 572 },
            { itemid = xi.item.SQUARE_OF_SHINING_CLOTH, droprate =  43 },
        },

        {
            { itemid = xi.item.OBLATION_ABJURATION, droprate = 159 },
            { itemid = xi.item.BAYARDS_SWORD,       droprate = 151 },
            { itemid = xi.item.DREIZACK,            droprate = 167 },
            { itemid = xi.item.GRIM_STAFF,          droprate =  95 },
            { itemid = xi.item.GROSVENEURS_BOW,     droprate =  95 },
            { itemid = xi.item.STYLET,              droprate =  56 },
            { itemid = xi.item.UNSHO,               droprate = 341 },
        },

        {
            { itemid = xi.item.DRAGON_HEART,         droprate = 522 },
            { itemid = xi.item.SLICE_OF_DRAGON_MEAT, droprate = 346 },
            { itemid = xi.item.JUGGERNAUT,           droprate =  82 },
            { itemid = xi.item.SPEED_BELT,           droprate =  59 },
        },

        {
            { itemid = xi.item.CORAL_FRAGMENT,           droprate =  32 },
            { itemid = xi.item.CHUNK_OF_DARKSTEEL_ORE,   droprate =  71 },
            { itemid = xi.item.DEMON_HORN,               droprate =  79 },
            { itemid = xi.item.EBONY_LOG,                droprate =  56 },
            { itemid = xi.item.CHUNK_OF_GOLD_ORE,        droprate =  71 },
            { itemid = xi.item.SPOOL_OF_GOLD_THREAD,     droprate =  32 },
            { itemid = xi.item.HI_RERAISER,              droprate =  48 },
            { itemid = xi.item.MAHOGANY_LOG,             droprate = 127 },
            { itemid = xi.item.CHUNK_OF_MYTHRIL_ORE,     droprate = 111 },
            { itemid = xi.item.PETRIFIED_LOG,            droprate = 183 },
            { itemid = xi.item.PHILOSOPHERS_STONE,       droprate =  40 },
            { itemid = xi.item.CHUNK_OF_PLATINUM_ORE,    droprate =  56 },
            { itemid = xi.item.RAM_HORN,                 droprate =  24 },
            { itemid = xi.item.SQUARE_OF_RAXA,           droprate = 119 },
            { itemid = xi.item.RERAISER,                 droprate =  56 },
            { itemid = xi.item.VILE_ELIXIR_P1,           droprate =  40 },
            { itemid = xi.item.HANDFUL_OF_WYVERN_SCALES, droprate =  24 },
        },

        {
            { itemid = xi.item.WYRM_BEARD,          droprate = 210 },
            { itemid = xi.item.LOCK_OF_SIRENS_HAIR, droprate = 775 },
        },

        {
            { itemid = xi.item.MIND_POTION,         droprate =  94 },
            { itemid = xi.item.INTELLIGENCE_POTION, droprate = 130 },
            { itemid = xi.item.CHARISMA_POTION,     droprate = 116 },
            { itemid = xi.item.ICARUS_WING,         droprate =  51 },
            { itemid = xi.item.SQUARE_OF_RAXA,      droprate = 246 },
            { itemid = xi.item.PRELATIC_POLE,       droprate = 246 },
        },

        {
            { itemid = xi.item.HI_ETHER_III,   droprate = 290 },
            { itemid = xi.item.HI_POTION_P3,   droprate = 225 },
            { itemid = xi.item.HI_RERAISER,    droprate = 210 },
            { itemid = xi.item.VILE_ELIXIR_P1, droprate = 217 },
        },

        {
            { itemid = xi.item.CORAL_FRAGMENT,           droprate =  87 },
            { itemid = xi.item.CHUNK_OF_DARKSTEEL_ORE,   droprate =  80 },
            { itemid = xi.item.DEMON_HORN,               droprate =  58 },
            { itemid = xi.item.EBONY_LOG,                droprate =  72 },
            { itemid = xi.item.CHUNK_OF_GOLD_ORE,        droprate =  87 },
            { itemid = xi.item.SPOOL_OF_GOLD_THREAD,     droprate =  14 },
            { itemid = xi.item.HI_RERAISER,              droprate =  22 },
            { itemid = xi.item.MAHOGANY_LOG,             droprate =  80 },
            { itemid = xi.item.CHUNK_OF_MYTHRIL_ORE,     droprate =  36 },
            { itemid = xi.item.PETRIFIED_LOG,            droprate = 145 },
            { itemid = xi.item.PHOENIX_FEATHER,          droprate =   7 },
            { itemid = xi.item.CHUNK_OF_PLATINUM_ORE,    droprate =  51 },
            { itemid = xi.item.SQUARE_OF_RAINBOW_CLOTH,  droprate =  29 },
            { itemid = xi.item.RAM_HORN,                 droprate =  36 },
            { itemid = xi.item.SQUARE_OF_RAXA,           droprate =  72 },
            { itemid = xi.item.RERAISER,                 droprate =  29 },
            { itemid = xi.item.VILE_ELIXIR,              droprate =  29 },
            { itemid = xi.item.VILE_ELIXIR_P1,           droprate =   7 },
            { itemid = xi.item.HANDFUL_OF_WYVERN_SCALES, droprate =  22 },
        },

        {
            { itemid = xi.item.VIAL_OF_BLACK_BEETLE_BLOOD, droprate =  58 },
            { itemid = xi.item.SQUARE_OF_DAMASCENE_CLOTH,  droprate =  36 },
            { itemid = xi.item.DAMASCUS_INGOT,             droprate =  72 },
            { itemid = xi.item.SPOOL_OF_MALBORO_FIBER,     droprate =  22 },
            { itemid = xi.item.PHILOSOPHERS_STONE,         droprate = 275 },
            { itemid = xi.item.PHOENIX_FEATHER,            droprate = 196 },
            { itemid = xi.item.SQUARE_OF_RAXA,             droprate = 225 },
        },
    },

    -- BCNM Royal Succession
    [108] =
    {
        {
            { itemid = xi.item.BUNCH_OF_WILD_PAMAMAS, droprate = 1000 },
        },

        {
            { itemid = 0, droprate =  300 }, -- nothing
            { itemid = xi.item.DUSKY_STAFF,      droprate =  100 },
            { itemid = xi.item.JONGLEURS_DAGGER, droprate =  100 },
            { itemid = xi.item.CALVELEYS_DAGGER, droprate =  100 },
            { itemid = xi.item.SEALED_MACE,      droprate =  100 },
            { itemid = xi.item.HIMMEL_STOCK,     droprate =  100 },
            { itemid = xi.item.KAGEHIDE,         droprate =  100 },
            { itemid = xi.item.OHAGURO,          droprate =  100 },
        },

        {
            { itemid = 0, droprate =  100 }, -- nothing
            { itemid = xi.item.GENIN_EARRING, droprate =  300 },
            { itemid = xi.item.AGILE_GORGET,  droprate =  300 },
            { itemid = xi.item.JAGD_GORGET,   droprate =  300 },
        },

        {
            { itemid = 0, droprate =  370 }, -- nothing
            { itemid = xi.item.TURQUOISE,            droprate =  100 },
            { itemid = xi.item.BUNCH_OF_PAMAMAS,     droprate =  100 },
            { itemid = xi.item.SQUARE_OF_SILK_CLOTH, droprate =  110 },
            { itemid = xi.item.ROSEWOOD_LOG,         droprate =  140 },
            { itemid = xi.item.PEARL,                droprate =  180 },
        },

        {
            { itemid = xi.item.SCROLL_OF_PHALANX,    droprate =  250 },
            { itemid = xi.item.SCROLL_OF_ABSORB_INT, droprate =  250 },
            { itemid = xi.item.SCROLL_OF_REFRESH,    droprate =  250 },
            { itemid = xi.item.SCROLL_OF_ERASE,      droprate =  250 },
        },

        {
            { itemid = 0, droprate =  600 }, -- nothing
            { itemid = xi.item.GOLD_BEASTCOIN, droprate =  400 },
        },
    },

    -- BCNM Rapid Raptors
    [109] =
    {
        {
            { itemid = xi.item.RAPTOR_SKIN, droprate = 1000 },
        },

        {
            { itemid = xi.item.ADAMAN_INGOT, droprate = 1000 },
        },

        {
            { itemid = 0, droprate =  190 }, -- nothing
            { itemid = xi.item.SLY_GAUNTLETS,           droprate =  10 },
            { itemid = xi.item.SPIKED_FINGER_GAUNTLETS, droprate = 120 },
            { itemid = xi.item.RUSH_GLOVES,             droprate = 140 },
            { itemid = xi.item.RIVAL_RIBBON,            droprate = 140 },
            { itemid = xi.item.MANA_CIRCLET,            droprate = 150 },
            { itemid = xi.item.IVORY_MITTS,             droprate = 150 },
        },

        {
            { itemid = 0, droprate =   30 }, -- nothing
            { itemid = xi.item.STORM_GORGET,     droprate = 100 },
            { itemid = xi.item.INTELLECT_TORQUE, droprate = 100 },
            { itemid = xi.item.BENIGN_NECKLACE,  droprate = 120 },
            { itemid = xi.item.HEAVY_MANTLE,     droprate = 130 },
            { itemid = xi.item.HATEFUL_COLLAR,   droprate = 170 },
            { itemid = xi.item.ESOTERIC_MANTLE,  droprate = 170 },
            { itemid = xi.item.TEMPLARS_MANTLE,  droprate = 180 },
        },

        {
            { itemid = 0, droprate =  230 }, -- nothing
            { itemid = xi.item.MYTHRIL_INGOT,     droprate =  200 },
            { itemid = xi.item.CHUNK_OF_IRON_ORE, droprate =  200 },
            { itemid = xi.item.PETRIFIED_LOG,     droprate =  370 },
        },

        {
            { itemid = 0, droprate =  560 }, -- nothing
            { itemid = xi.item.RERAISER, droprate =  440 },
        },
    },

    -- BCNM Wild Wild Whiskers
    [110] =
    {
        {
            { itemid = xi.item.HIGH_QUALITY_COEURL_HIDE, droprate = 1000 },
        },

        {
            { itemid = xi.item.HIGH_QUALITY_COEURL_HIDE, droprate = 1000 },
        },

        {
            { itemid = xi.item.HIGH_QUALITY_COEURL_HIDE, droprate = 1000 },
        },

        {
            { itemid = xi.item.CHUNK_OF_ADAMAN_ORE, droprate = 1000 },
        },

        {
            { itemid = xi.item.HERMES_QUENCHER, droprate = 1000 },
        },

        {
            { itemid = xi.item.ICARUS_WING, droprate = 1000 },
        },

        {
            { itemid = xi.item.GLEEMANS_BELT,  droprate = 365 },
            { itemid = xi.item.PENITENTS_ROPE, droprate = 635 },
        },

        {
            { itemid = xi.item.TELEPORT_RING_MEA,   droprate = 426 },
            { itemid = xi.item.TELEPORT_RING_YHOAT, droprate = 574 },
        },

        {
            { itemid = 0, droprate =  848 }, -- nothing
            { itemid = xi.item.WALKURE_MASK, droprate = 58 },
            { itemid = xi.item.HI_RERAISER,  droprate = 78 },
            { itemid = xi.item.EBONY_LOG,    droprate = 16 },
        },

        {
            { itemid = xi.item.YELLOW_ROCK,      droprate =  9 },
            { itemid = xi.item.BLACK_ROCK,       droprate =  9 },
            { itemid = xi.item.AQUAMARINE,       droprate = 16 },
            { itemid = xi.item.RED_ROCK,         droprate = 16 },
            { itemid = xi.item.BLUE_ROCK,        droprate = 16 },
            { itemid = xi.item.PURPLE_ROCK,      droprate = 16 },
            { itemid = xi.item.MAHOGANY_LOG,     droprate = 33 },
            { itemid = xi.item.CHRYSOBERYL,      droprate = 33 },
            { itemid = xi.item.ZIRCON,           droprate = 33 },
            { itemid = xi.item.STEEL_INGOT,      droprate = 49 },
            { itemid = xi.item.DARKSTEEL_INGOT,  droprate = 49 },
            { itemid = xi.item.TRANSLUCENT_ROCK, droprate = 49 },
            { itemid = xi.item.SUNSTONE,         droprate = 49 },
            { itemid = xi.item.MOONSTONE,        droprate = 66 },
            { itemid = xi.item.MYTHRIL_INGOT,    droprate = 82 },
            { itemid = xi.item.FLUORITE,         droprate = 82 },
            { itemid = xi.item.GOLD_INGOT,       droprate = 98 },
            { itemid = xi.item.JADEITE,          droprate = 98 },
            { itemid = xi.item.PAINITE,          droprate = 98 },
            { itemid = xi.item.VILE_ELIXIR_P1,   droprate = 99 },
        },
    },

    -- Seaons Greetings
    [111] =
    {
        {
            { itemid = xi.item.THURSUSSTAB, droprate = 200 },
            { itemid = xi.item.RAMPAGER,    droprate = 200 },
            { itemid = xi.item.MORGENSTERN, droprate = 200 },
            { itemid = xi.item.SUBDUER,     droprate = 200 },
            { itemid = xi.item.EXPUNGER,    droprate = 200 },
        },
        {
            { itemid = xi.item.DURANDAL,        droprate = 250 },
            { itemid = xi.item.HOPLITES_HARP,   droprate = 250 },
            { itemid = xi.item.SORROWFUL_HARP,  droprate = 250 },
            { itemid = xi.item.ATTILAS_EARRING, droprate = 250 },
        },
        {
            { itemid = xi.item.ADAMAN_INGOT,     droprate = 333 },
            { itemid = xi.item.ORICHALCUM_INGOT, droprate = 333 },
            { itemid = xi.item.ROOT_SABOTS,      droprate = 333 },
        },
        {
            { itemid = xi.item.DIVINE_LOG,       droprate = 650 },
            { itemid = xi.item.LACQUER_TREE_LOG, droprate =  50 },
            { itemid = xi.item.SWORD_STRAP,      droprate = 100 },
            { itemid = xi.item.POLE_GRIP,        droprate = 100 },
            { itemid = xi.item.SPEAR_STRAP,      droprate = 100 },
        },
        {
            { itemid = xi.item.CHUNK_OF_MYTHRIL_ORE,     droprate = 66 },
            { itemid = xi.item.CHUNK_OF_DARKSTEEL_ORE,   droprate = 66 },
            { itemid = xi.item.MAHOGANY_LOG,             droprate = 66 },
            { itemid = xi.item.EBONY_LOG,                droprate = 66 },
            { itemid = xi.item.PETRIFIED_LOG,            droprate = 76 },
            { itemid = xi.item.CHUNK_OF_GOLD_ORE,        droprate = 66 },
            { itemid = xi.item.CHUNK_OF_PLATINUM_ORE,    droprate = 66 },
            { itemid = xi.item.HANDFUL_OF_WYVERN_SCALES, droprate = 66 },
            { itemid = xi.item.SQUARE_OF_RAINBOW_CLOTH,  droprate = 66 },
            { itemid = xi.item.CORAL_FRAGMENT,           droprate = 66 },
            { itemid = xi.item.RAM_HORN,                 droprate = 66 },
            { itemid = xi.item.DEMON_HORN,               droprate = 66 },
            { itemid = xi.item.SQUARE_OF_RAXA,           droprate = 66 },
            { itemid = xi.item.VILE_ELIXIR,              droprate = 66 },
            { itemid = xi.item.VILE_ELIXIR_P1,           droprate = 66 },
        },
        {
            { itemid = xi.item.DAMASCUS_INGOT,             droprate =  50 },
            { itemid = xi.item.SQUARE_OF_DAMASCENE_CLOTH,  droprate =  50 },
            { itemid = xi.item.PHOENIX_FEATHER,            droprate = 300 },
            { itemid = xi.item.PHILOSOPHERS_STONE,         droprate = 100 },
            { itemid = xi.item.VIAL_OF_BLACK_BEETLE_BLOOD, droprate = 150 },
            { itemid = xi.item.SQUARE_OF_RAXA,             droprate = 350 },
        },
    },

    -- Royale Ramble
    [112] =
    {
        {
            { itemid = xi.item.ORICHALCUM_INGOT, droprate = 1000 },
        },
        {
            { itemid = xi.item.COFFINMAKER,     droprate = 200 },
            { itemid = xi.item.DESTROYERS,      droprate = 300 },
            { itemid = xi.item.DISSECTOR,       droprate = 250 },
            { itemid = xi.item.GONDO_SHIZUNORI, droprate = 250 },
        },
        {
            { itemid = xi.item.HIERARCH_BELT,    droprate = 200 },
            { itemid = xi.item.PALMERINS_SHIELD, droprate = 250 },
            { itemid = xi.item.TRAINERS_GLOVES,  droprate = 250 },
            { itemid = xi.item.WARWOLF_BELT,     droprate = 300 },
        },
        {
            { itemid = 0, droprate = 300 }, -- Nothing
            { itemid = xi.item.CLAYMORE_GRIP, droprate =  70 },
            { itemid = xi.item.POLE_GRIP,     droprate = 100 },
            { itemid = xi.item.SWORD_STRAP,   droprate = 280 },
            { itemid = xi.item.TRUMP_CROWN,   droprate = 520 },
        },
        {
            { itemid = xi.item.KING_OF_CUPS_CARD,   droprate = 250 },
            { itemid = xi.item.KING_OF_BATONS_CARD, droprate = 350 },
            { itemid = xi.item.KING_OF_SWORDS_CARD, droprate = 250 },
            { itemid = xi.item.KING_OF_COINS_CARD,  droprate = 250 },
        },
        {
            { itemid = xi.item.CHUNK_OF_MYTHRIL_ORE,     droprate =  50 },
            { itemid = xi.item.CHUNK_OF_DARKSTEEL_ORE,   droprate =  50 },
            { itemid = xi.item.MAHOGANY_LOG,             droprate =  80 },
            { itemid = xi.item.EBONY_LOG,                droprate =  80 },
            { itemid = xi.item.PETRIFIED_LOG,            droprate = 130 },
            { itemid = xi.item.CHUNK_OF_GOLD_ORE,        droprate =  60 },
            { itemid = xi.item.CHUNK_OF_PLATINUM_ORE,    droprate =  60 },
            { itemid = xi.item.SPOOL_OF_GOLD_THREAD,     droprate =  60 },
            { itemid = xi.item.SQUARE_OF_RAINBOW_CLOTH,  droprate =  30 },
            { itemid = xi.item.SPOOL_OF_MALBORO_FIBER,   droprate =  20 },
            { itemid = xi.item.HANDFUL_OF_WYVERN_SCALES, droprate =  30 },
            { itemid = xi.item.CORAL_FRAGMENT,           droprate =  60 },
            { itemid = xi.item.RAM_HORN,                 droprate =  60 },
            { itemid = xi.item.DEMON_HORN,               droprate =  60 },
            { itemid = xi.item.PHILOSOPHERS_STONE,       droprate =  30 },
            { itemid = xi.item.SLAB_OF_GRANITE,          droprate =  20 },
            { itemid = xi.item.RERAISER,                 droprate =  40 },
            { itemid = xi.item.HI_RERAISER,              droprate =  30 },
            { itemid = xi.item.VILE_ELIXIR,              droprate =  40 },
            { itemid = xi.item.VILE_ELIXIR_P1,           droprate =  10 },
        },
        {
            { itemid = xi.item.DAMASCUS_INGOT,             droprate =  90 },
            { itemid = xi.item.SQUARE_OF_DAMASCENE_CLOTH,  droprate =  40 },
            { itemid = xi.item.SPOOL_OF_MALBORO_FIBER,     droprate =  50 },
            { itemid = xi.item.PHOENIX_FEATHER,            droprate = 300 },
            { itemid = xi.item.PHILOSOPHERS_STONE,         droprate = 200 },
            { itemid = xi.item.VIAL_OF_BLACK_BEETLE_BLOOD, droprate =  60 },
            { itemid = xi.item.SQUARE_OF_RAXA,             droprate = 260 },
        },
    },

    -- Moa Constrictors
     [113] =
     {
         {
             { itemid = xi.item.COCKATRICE_SKIN, droprate = 1000 },
         },
         {
             { itemid = xi.item.COCKATRICE_SKIN, droprate = 1000 },
         },
         {
             { itemid = 0, droprate = 800 }, -- Nothing
             { itemid = xi.item.DODO_SKIN, droprate = 200 },
         },
         {
             { itemid = xi.item.EXPUNGER,       droprate = 250 },
             { itemid = xi.item.MORGENSTERN,    droprate = 250 },
             { itemid = xi.item.HEART_SNATCHER, droprate = 250 },
             { itemid = xi.item.GRAVEDIGGER,    droprate = 250 },
         },
         {
             { itemid = xi.item.OSTREGER_MITTS, droprate = 250 },
             { itemid = xi.item.PINEAL_HAT,     droprate = 250 },
             { itemid = xi.item.EVOKERS_BOOTS,  droprate = 250 },
             { itemid = xi.item.TRACKERS_KECKS, droprate = 250 },
         },
         {
             { itemid = xi.item.ADAMAN_INGOT,     droprate = 250 },
             { itemid = xi.item.ORICHALCUM_INGOT, droprate = 350 },
             { itemid = xi.item.ABSORBING_SHIELD, droprate = 350 },
         },
         {
             { itemid = 0, droprate = 300 }, -- Nothing
             { itemid = xi.item.POLE_GRIP,     droprate = 500 },
             { itemid = xi.item.SPEAR_STRAP,   droprate = 100 },
             { itemid = xi.item.CLAYMORE_GRIP, droprate = 100 },
         },
         {
             { itemid = xi.item.CHUNK_OF_MYTHRIL_ORE,     droprate =  60 },
             { itemid = xi.item.CHUNK_OF_DARKSTEEL_ORE,   droprate =  60 },
             { itemid = xi.item.MAHOGANY_LOG,             droprate =  60 },
             { itemid = xi.item.EBONY_LOG,                droprate =  60 },
             { itemid = xi.item.PETRIFIED_LOG,            droprate =  60 },
             { itemid = xi.item.CHUNK_OF_GOLD_ORE,        droprate =  60 },
             { itemid = xi.item.CHUNK_OF_PLATINUM_ORE,    droprate =  60 },
             { itemid = xi.item.CHUNK_OF_GOLD_ORE,        droprate =  60 },
             { itemid = xi.item.SQUARE_OF_RAINBOW_CLOTH,  droprate = 110 },
             { itemid = xi.item.HANDFUL_OF_WYVERN_SCALES, droprate =  60 },
             { itemid = xi.item.CORAL_FRAGMENT,           droprate =  60 },
             { itemid = xi.item.RAM_HORN,                 droprate =  60 },
             { itemid = xi.item.DEMON_HORN,               droprate = 110 },
             { itemid = xi.item.HI_RERAISER,              droprate =  60 },
             { itemid = xi.item.VILE_ELIXIR,              droprate =  60 },
         },
         {
             { itemid = xi.item.DAMASCUS_INGOT,             droprate =  50 },
             { itemid = xi.item.SQUARE_OF_DAMASCENE_CLOTH,  droprate =  50 },
             { itemid = xi.item.PHOENIX_FEATHER,            droprate = 300 },
             { itemid = xi.item.PHILOSOPHERS_STONE,         droprate = 350 },
             { itemid = xi.item.VIAL_OF_BLACK_BEETLE_BLOOD, droprate =  50 },
             { itemid = xi.item.SQUARE_OF_RAXA,             droprate = 200 },
         },
     },
}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local battlefield = player:getBattlefield()
    if battlefield then
        xi.battlefield.HandleLootRolls(battlefield, loot[battlefield:getID()], nil, npc)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
