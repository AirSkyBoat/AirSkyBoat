-----------------------------------
-- Appraisal Utilities
-- desc: Common functionality for Appraisals
-----------------------------------
require("scripts/globals/assault")
require("scripts/globals/npc_util")
-----------------------------------
xi = xi or {}
xi.appraisal = xi.appraisal or {}
-----------------------------------

xi.appraisal.origin =
{
    NYZUL_BASIC                 = 100,
    NYZUL_BAT_EYE               = 101,
    NYZUL_SHADOW_EYE            = 102,
    NYZUL_BOMB_KING             = 103,
    NYZUL_JUGGLER_HECATOMB      = 104,
    NYZUL_SMOTHERING_SCHMIDT    = 105,
    NYZUL_HELLION               = 106,
    NYZUL_LEAPING_LIZZY         = 107,
    NYZUL_TOM_TIT_TAT           = 108,
    NYZUL_JAGGEDY_EARED_JACK    = 109,
    NYZUL_CACTUAR_CANTAUTOR     = 110,
    NYZUL_GARGANTUA             = 111,
    NYZUL_GYRE_CARLIN           = 112,
    NYZUL_ASPHYXIATED_AMSEL     = 113,
    NYZUL_FROSTMANE             = 114,
    NYZUL_PEALLAIDH             = 115,
    NYZUL_CARNERO               = 116,
    NYZUL_FALCATUS_ARANEI       = 117,
    NYZUL_EMERGENT_ELM          = 118,
    NYZUL_OLD_TWO_WINGS         = 119,
    NYZUL_AIATAR                = 120,
    NYZUL_INTULO                = 121,
    NYZUL_ORCTRAP               = 122,
    NYZUL_VALKURM_EMPEROR       = 123,
    NYZUL_CRUSHED_KRAUSE        = 124,
    NYZUL_STINGING_SOPHIE       = 125,
    NYZUL_SERPOPARD_ISHTAR      = 126,
    NYZUL_WESTERN_SHADOW        = 127,
    NYZUL_BLOODTEAR_BALDURF     = 128,
    NYZUL_ZIZZY_ZILLAH          = 129,
    NYZUL_ELLYLLON              = 130,
    NYZUL_MISCHIEVOUS_MICHOLAS  = 131,
    NYZUL_LEECH_KING            = 132,
    NYZUL_EASTERN_SHADOW        = 133,
    NYZUL_NUNYENUNC             = 134,
    NYZUL_HELLDIVER             = 135,
    NYZUL_TAISAIJIN             = 136,
    NYZUL_FUNGUS_BEETLE         = 137,
    NYZUL_FRIAR_RUSH            = 138,
    NYZUL_PULVERIZED_PFEFFER    = 139,
    NYZUL_ARGUS                 = 140,
    NYZUL_BLOODPOOL_VORAX       = 141,
    NYZUL_NIGHTMARE_VASE        = 142,
    NYZUL_DAGGERCLAW_DRACOS     = 143,
    NYZUL_NORTHERN_SHADOW       = 144,
    NYZUL_FRAELISSA             = 145,
    NYZUL_ROC                   = 146,
    NYZUL_SABOTENDER_BAILARIN   = 147,
    NYZUL_AQUARIUS              = 148,
    NYZUL_ENERGETIC_ERUCA       = 149,
    NYZUL_SPINY_SPIPI           = 150,
    NYZUL_TRICKSTER_KINETIX     = 151,
    NYZUL_DROOLING_DAISY        = 152,
    NYZUL_BONNACON              = 153,

    NYZUL_GOLDEN_BAT            = 155,
    NYZUL_STEELFLEECE_BALDARICH = 156,
    NYZUL_SABOTENDER_MARIACHI   = 157,
    NYZUL_UNGUR                 = 158,
    NYZUL_SWAMFISK              = 159,
    NYZUL_BUBURIMBOO            = 160,
    NYZUL_KEEPER_OF_HALIDOM     = 161,
    NYZUL_SERKET                = 162,
    NYZUL_DUNE_WIDOW            = 163,
    NYZUL_ODQAN                 = 164,
    NYZUL_BURNED_BERGMANN       = 165,

    NYZUL_TYRANNIC_TUNNOK       = 167,
    NYZUL_BLOODSUCKER           = 168,
    NYZUL_TOTTERING_TOBY        = 169,
    NYZUL_SOUTHERN_SHADOW       = 170,
    NYZUL_SHARP_EARED_ROPIPI    = 171,

    NYZUL_PANZER_PERCIVAL       = 173,
    NYZUL_VOUIVRE               = 174,
    NYZUL_JOLLY_GREEN           = 175,
    NYZUL_TUMBLING_TRUFFLE      = 176,
    NYZUL_CAPRICIOUS_CASSIE     = 177,
    NYZUL_AMIKIRI               = 178,
    NYZUL_STRAY_MARY            = 179,
    NYZUL_SEWER_SYRUP           = 180,
    NYZUL_UNUT                  = 181,
    NYZUL_SIMURGH               = 182,
    NYZUL_PELICAN               = 183,
    NYZUL_CARGO_CRAB_COLIN      = 184,
    NYZUL_WOUNDED_WURFEL        = 185,
    NYZUL_PEG_POWLER            = 186,

    NYZUL_JADED_JODY            = 188,
    NYZUL_MAIGHDEAN_UAINE       = 189,

}

xi.appraisal.unappraisedItems =
{
    xi.item.UNAPPRAISED_SWORD,
    xi.item.UNAPPRAISED_DAGGER,
    xi.item.UNAPPRAISED_POLEARM,
    xi.item.UNAPPRAISED_AXE,
    xi.item.UNAPPRAISED_BOW,
    xi.item.UNAPPRAISED_GLOVES,
    xi.item.UNAPPRAISED_FOOTWEAR,
    xi.item.UNAPPRAISED_HEADPIECE,
    xi.item.UNAPPRAISED_EARRING,
    xi.item.UNAPPRAISED_RING,
    xi.item.UNAPPRAISED_CAPE,
    xi.item.UNAPPRAISED_SASH,
    xi.item.UNAPPRAISED_SHIELD,
    xi.item.UNAPPRAISED_NECKLACE,
    xi.item.UNAPPRAISED_INGOT,
    xi.item.UNAPPRAISED_POTION,
    xi.item.UNAPPRAISED_CLOTH,
    xi.item.UNAPPRAISED_BOX,
}

xi.appraisal.appraisalItems =
{
    [xi.item.UNAPPRAISED_SWORD] =
    {
        [xi.assault.mission.AZURE_EXPERIMENTS] =
        {
            items =
            {
                { 1000, xi.item.MACUAHUITL_M1 },
            },
        },

        [xi.assault.mission.RED_VERSUS_BLUE] =
        {
            items =
            {
                { 1000, xi.item.KILIJ },
            },
        },

        [xi.assault.mission.SAGELORD_ELIMINATION] =
        {
            items =
            {
                { 550, xi.item.GUST_CLAYMORE },
                { 400, xi.item.UCHIGATANA_P1 },
                {  50, xi.item.DJINNBRINGER  },
            },
        },

        [xi.assault.mission.BREAKING_MORALE] =
        {
            items =
            {
                { 450, xi.item.GUST_CLAYMORE   },
                { 300, xi.item.UCHIGATANA_P1   },
                { 200, xi.item.PEALING_ANELACE },
                { 100, xi.item.KAGIROI         },
                {  50, xi.item.STORM_SCIMITAR  },
            },
        },

        [xi.assault.mission.THE_DOUBLE_AGENT] =
        {
            items =
            {
                { 100, xi.item.DJINNBRINGER    },
                { 450, xi.item.GUST_CLAYMORE   },
                {  50, xi.item.PEALING_NAGAN   },
                { 350, xi.item.UCHIGATANA_P1   },
                {  50, xi.item.KAGIROI         },
            },
        },

        [xi.assault.mission.BLITZKRIEG] =
        {
            items =
            {
                { 450, xi.item.GUST_CLAYMORE  },
                { 300, xi.item.UCHIGATANA_P1  },
                { 200, xi.item.DURANDAL       },
                {  50, xi.item.SANGUINE_SWORD },
            },
        },

        [xi.assault.mission.WAMOURA_FARM_RAID] =
        {
            items =
            {
                { 450, xi.item.GUST_CLAYMORE },
                { 300, xi.item.UCHIGATANA_P1 },
                { 200, xi.item.HOTARUMARU    },
                {  50, xi.item.KUMOKIRIMARU  },
            },
        },

        [xi.assault.mission.SEAGULL_GROUNDED] =
        {
            items =
            {
                { 650, xi.item.GUST_CLAYMORE  },
                { 300, xi.item.UCHIGATANA_P1  },
                {  50, xi.item.KOSETSUSAMONJI },
            },
        },

        [xi.assault.mission.STOP_THE_BLOODSHED] =
        {
            items =
            {
                { 650, xi.item.GUST_CLAYMORE    },
                { 300, xi.item.UCHIGATANA_P1    },
                {  50, xi.item.IMMORTALS_SHOTEL },
            },
        },

        [xi.appraisal.origin.NYZUL_FROSTMANE] =
        {
            items =
            {
                { 600, xi.item.CLAYMORE      },
                { 350, xi.item.GUST_CLAYMORE },
                {  50, xi.item.LOCKHEART     },
            },
        },

        [xi.appraisal.origin.NYZUL_CARNERO] =
        {
            items =
            {
                { 750, xi.item.BRONZE_SWORD       },
                { 250, xi.item.KATAYAMA_ICHIMONJI },
            },
        },

        [xi.appraisal.origin.NYZUL_EMERGENT_ELM] =
        {
            items =
            {
                { 600, xi.item.BRONZE_SWORD   },
                { 350, xi.item.XIPHOS         },
                {  50, xi.item.GLOOM_CLAYMORE },
            },
        },

        [xi.appraisal.origin.NYZUL_ZIZZY_ZILLAH] =
        {
            items =
            {
                { 600, xi.item.BRONZE_SWORD  },
                { 350, xi.item.UCHIGATANA_P1 },
                {  50, xi.item.NAMIKIRIMARU  },
            },
        },

        [xi.appraisal.origin.NYZUL_KEEPER_OF_HALIDOM] =
        {
            items =
            {
                { 650, xi.item.BRONZE_SWORD  },
                { 320, xi.item.UCHIGATANA_P1 },
                {  30, xi.item.DAIHANNYA     },
            },
        },

        [xi.appraisal.origin.NYZUL_AMIKIRI] =
        {
            items =
            {
                { 750, xi.item.BRONZE_SWORD },
                { 250, xi.item.KAMEWARI     },
            },
        },

        [xi.appraisal.origin.NYZUL_CARGO_CRAB_COLIN] =
        {
            items =
            {
                { 850, xi.item.BRONZE_SWORD },
                { 150, xi.item.NADRS        },
            },
        },
    },

    [xi.item.UNAPPRAISED_DAGGER] =
    {
        [xi.assault.mission.COUNTING_SHEEP] =
        {
            items =
            {
                { 300, xi.item.KYOFU              },
                { 250, xi.item.HUSHED_DAGGER      },
                { 200, xi.item.SPARK_DAGGER       },
                { 100, xi.item.KATARS             },
                {  50, xi.item.PONDEROUS_GULLY    },
                {  50, xi.item.PONDEROUS_MANOPLES },
                {  50, xi.item.PAHLUWAN_KATARS    },
            },
        },

        [xi.assault.mission.SUPPLIES_RECOVERY] =
        {
            items =
            {
                { 400, xi.item.KYOFU            },
                { 250, xi.item.HUSHED_DAGGER    },
                { 250, xi.item.SPARK_DAGGER     },
                {  50, xi.item.ARGENT_DAGGER    },
                {  50, xi.item.PALLADIUM_DAGGER },
            },
        },

        [xi.assault.mission.EVADE_AND_ESCAPE] =
        {
            items =
            {
                { 350, xi.item.KYOFU              },
                { 270, xi.item.HUSHED_DAGGER      },
                { 270, xi.item.SPARK_DAGGER       },
                {  50, xi.item.KARASUAGEHA        },
                {  30, xi.item.KATARS             },
                {  10, xi.item.TOJAKU             },
                {  10, xi.item.PONDEROUS_GULLY    },
                {  10, xi.item.PONDEROUS_MANOPLES },
            },
        },

        -- Low sample rate. Droprates derived from logical similarities
        [xi.assault.mission.SEARAT_SALVATION] =
        {
            items =
            {
                { 350, xi.item.KYOFU              },
                { 270, xi.item.SPARK_DAGGER       },
                { 150, xi.item.HUSHED_DAGGER      },
                {  80, xi.item.KATARS             },
                {  50, xi.item.PONDEROUS_GULLY    },
                {  40, xi.item.PONDEROUS_MANOPLES },
                {  30, xi.item.TOJAKU             },
                {  30, xi.item.ASSASSINS_JAMBIYA  },
            },
        },

        [xi.appraisal.origin.NYZUL_TOM_TIT_TAT] =
        {
            items =
            {
                { 700, xi.item.BRONZE_KNIFE  },
                { 250, xi.item.KUNAI         },
                {  50, xi.item.FRUIT_PUNCHES },
            },
        },

        [xi.appraisal.origin.NYZUL_ORCTRAP] =
        {
            items =
            {
                { 950, xi.item.BRONZE_KNIFE },
                {  50, xi.item.NIKKARIAOE   },
            },
        },

        [xi.appraisal.origin.NYZUL_STINGING_SOPHIE] =
        {
            items =
            {
                { 950, xi.item.BRONZE_KNIFE },
                {  50, xi.item.BEESTINGER   },
            },
        },

        [xi.appraisal.origin.NYZUL_WESTERN_SHADOW] =
        {
            items =
            {
                { 950, xi.item.KUNAI       },
                {  50, xi.item.RETALIATORS },
            },
        },

        [xi.appraisal.origin.NYZUL_MISCHIEVOUS_MICHOLAS] =
        {
            items =
            {
                { 950, xi.item.BRONZE_KNIFE  },
                {  50, xi.item.KIDNEY_DAGGER },
            },
        },

        [xi.appraisal.origin.NYZUL_NIGHTMARE_VASE] =
        {
            items =
            {
                { 900, xi.item.KUNAI   },
                { 100, xi.item.SHINOGI },
            },
        },

        [xi.appraisal.origin.NYZUL_DAGGERCLAW_DRACOS] =
        {
            items =
            {
                { 900, xi.item.BRONZE_KNUCKLES },
                { 100, xi.item.SONIC_KNUCKLES  },
            },
        },

        [xi.appraisal.origin.NYZUL_SABOTENDER_MARIACHI] =
        {
            items =
            {
                { 900, xi.item.BRONZE_KNIFE },
                { 100, xi.item.BANO_DEL_SOL },
            },
        },
    },

    [xi.item.UNAPPRAISED_POLEARM] =
    {
        [xi.assault.mission.BREAKING_MORALE] =
        {
            items =
            {
                { 1000, xi.item.SPARK_SPEAR },
            },
        },

        [xi.assault.mission.THE_DOUBLE_AGENT] =
        {
            items =
            {
                { 1000, xi.item.SPARK_SPEAR },
            },
        },

        [xi.assault.mission.TROLL_FUGITIVES] =
        {
            items =
            {
                { 1000, xi.item.SICKLE }
            },
        },

        [xi.assault.mission.SIEGEMASTER_ASSASSINATION] =
        {
            items =
            {
                { 200, xi.item.IMPERIAL_WAND    },
                { 200, xi.item.BRASS_ZAGHNAL    },
                { 150, xi.item.HOLLY_STAFF_P1   },
                { 350, xi.item.SPARK_SPEAR      },
                { 100, xi.item.STEELSPLITTER   },
                { 100, xi.item.WILLOW_WAND_P1   },
                { 100, xi.item.PEALING_BUZDYGAN },
            },
        },

        [xi.assault.mission.SEAGULL_GROUNDED] =
        {
            items =
            {
                { 1000, xi.item.SPARK_SPEAR },
            },
        },

        [xi.assault.mission.REQUIEM] =
        {
            items =
            {
                { 200, xi.item.HOLLY_STAFF_P1 },
                { 400, xi.item.BRASS_ZAGHNAL  },
                { 200, xi.item.WILLOW_WAND_P1 },
                {  50, xi.item.PUK_LANCE      },
                { 150, xi.item.SPARK_SPEAR    },
            },
        },

        [xi.assault.mission.SAVING_PRIVATE_RYAAF] =
        {
            items =
            {
                { 250, xi.item.HOLLY_STAFF_P1 },
                { 250, xi.item.BRASS_ZAGHNAL  },
                { 200, xi.item.SPARK_SPEAR    },
                { 150, xi.item.HOLLY_POLE_P1  },
                { 100, xi.item.WILLOW_WAND_P1 },
                {  50, xi.item.YIGIT_STAFF    },
            },
        },

        [xi.assault.mission.STOP_THE_BLOODSHED] =
        {
            items =
            {
                { 750, xi.item.SPARK_SPEAR },
                { 250, xi.item.SPARK_LANCE },
            },
        },

        [xi.assault.mission.EXTERMINATION] =
        {
            items =
            {
                { 200, xi.item.SPARK_SPEAR       },
                { 200, xi.item.WILLOW_WAND_P1    },
                { 150, xi.item.HOLLY_STAFF_P1    },
                { 350, xi.item.BRASS_ZAGHNAL     },
                { 100, xi.item.VOLUNTEERS_SCYTHE },
            },
        },

        [xi.appraisal.origin.NYZUL_JUGGLER_HECATOMB] =
        {
            items =
            {
                { 900, xi.item.ASH_CLUB      },
                { 100, xi.item.HEAVY_HALBERD },
            },
        },

        [xi.appraisal.origin.NYZUL_HELLION] =
        {
            items =
            {
                { 700, xi.item.MAPLE_WAND  },
                { 300, xi.item.A_LOUTRANCE },
            },
        },

        [xi.appraisal.origin.NYZUL_FALCATUS_ARANEI] =
        {
            items =
            {
                { 700, xi.item.MAPLE_WAND     },
                { 200, xi.item.BRONZE_ZAGHNAL },
                { 100, xi.item.WEBCUTTER      },
            },
        },

        [xi.appraisal.origin.NYZUL_NUNYENUNC] =
        {
            items =
            {
                { 900, xi.item.ASH_CLUB      },
                { 100, xi.item.PILGRIMS_WAND },
            },
        },

        [xi.appraisal.origin.NYZUL_ROC] =
        {
            items =
            {
                { 900, xi.item.MAPLE_WAND  },
                { 100, xi.item.DRYAD_STAFF },
            },
        },

        [xi.appraisal.origin.NYZUL_SWAMFISK] =
        {
            items =
            {
                { 900, xi.item.MAPLE_WAND   },
                { 100, xi.item.GELONG_STAFF },
            },
        },

        [xi.appraisal.origin.NYZUL_VOUIVRE] =
        {
            items =
            {
                { 900, xi.item.ASH_CLUB },
                { 100, xi.item.GAE_BOLG },
            },
        },
    },

    [xi.item.UNAPPRAISED_AXE] =
    {
        [xi.assault.mission.REQUIEM] =
        {
            items =
            {
                { 1000, xi.item.PICKAXE },
            },
        },

        [xi.assault.mission.SAVING_PRIVATE_RYAAF] =
        {
            items =
            {
                { 1000, xi.item.PICKAXE },
            },
        },

        [xi.assault.mission.BUILDING_BRIDGES] =
        {
            items =
            {
                { 400, xi.item.HATCHET          },
                { 300, xi.item.PROMINENCE_AXE   },
                { 100, xi.item.TOMAHAWK_P1      },
                { 100, xi.item.FURNACE_TABARZIN },
                {  50, xi.item.BLIZZARD_TOPOROK },
                {  50, xi.item.MARID_ANCUS      },
            },
        },

        [xi.assault.mission.EXTERMINATION] =
        {
            items =
            {
                { 1000, xi.item.PICKAXE },
            },
        },

        [xi.assault.mission.TROLL_FUGITIVES] =
        {
            items =
            {
                { 600, xi.item.HATCHET        },
                { 100, xi.item.TOMAHAWK_P1    },
                { 150, xi.item.WAMOURA_AXE    },
                { 150, xi.item.PROMINENCE_AXE },
            },
        },

        [xi.assault.mission.SIEGEMASTER_ASSASSINATION] =
        {
            items =
            {
                { 1000, xi.item.PICKAXE },
            },
        },

        -- Terribly low drop rate sample
        [xi.assault.mission.APKALLU_SEIZURE] =
        {
            items =
            {
                { 400, xi.item.HATCHET        },
                { 300, xi.item.PICKAXE        },
                { 100, xi.item.TOMAHAWK_P1    },
                { 100, xi.item.PROMINENCE_AXE },
                {  50, xi.item.ERIKS_AXE      },
                -- {  50, xi.item.RAMPAGER       }, -- Not verified
            },
        },

        [xi.appraisal.origin.NYZUL_BAT_EYE] =
        {
            items =
            {
                { 950, xi.item.BONE_AXE  },
                {  50, xi.item.STORM_AXE },
            },
        },

        [xi.appraisal.origin.NYZUL_NORTHERN_SHADOW] =
        {
            items =
            {
                { 900, xi.item.BUTTERFLY_AXE },
                { 100, xi.item.EXECUTIONER   },
            },
        },

        [xi.appraisal.origin.NYZUL_AQUARIUS] =
        {
            items =
            {
                { 900, xi.item.BONE_AXE  },
                { 100, xi.item.FRANSISCA },
            },
        },

        [xi.appraisal.origin.NYZUL_TRICKSTER_KINETIX] =
        {
            items =
            {
                { 900, xi.item.BONE_AXE },
                { 100, xi.item.TABAR    },
            },
        },

        [xi.appraisal.origin.NYZUL_TYRANNIC_TUNNOK] =
        {
            items =
            {
                { 900, xi.item.BONE_AXE },
                { 100, xi.item.LOHAR    },
            },
        },

        [xi.appraisal.origin.NYZUL_PANZER_PERCIVAL] =
        {
            items =
            {
                { 900, xi.item.BUTTERFLY_AXE },
                { 100, xi.item.NECKCHOPPER   },
            },
        },

        [xi.appraisal.origin.NYZUL_PEG_POWLER] =
        {
            items =
            {
                { 900, xi.item.BUTTERFLY_AXE },
                { 100, xi.item.SCHWARZ_AXT   },
            },
        },
    },

    [xi.item.UNAPPRAISED_BOW] =
    {
        [xi.assault.mission.LAMIA_NO_13] =
        {
            items =
            {
                { 430, xi.item.LONGBOW_P1   },
                { 430, xi.item.CROSSBOW_P1  },
                { 140, xi.item.IMPERIAL_BOW },
            },
        },

        [xi.assault.mission.SHOOTING_DOWN_THE_BARON] =
        {
            items =
            {
                { 330, xi.item.CROSSBOW_P1    },
                { 550, xi.item.LONGBOW_P1     },
                { 100, xi.item.CULVERIN       },
                {  10, xi.item.CULVERIN_P1    },
                {  10, xi.item.STORM_ZAMBURAK },
            },
        },

        [xi.appraisal.origin.NYZUL_GYRE_CARLIN] =
        {
            items =
            {
                { 900, xi.item.SHORTBOW },
                { 100, xi.item.RIKONODO },
            },
        },

        [xi.appraisal.origin.NYZUL_EASTERN_SHADOW] =
        {
            items =
            {
                { 900, xi.item.LONGBOW   },
                { 100, xi.item.VALIS_BOW },
            },
        },

        [xi.appraisal.origin.NYZUL_HELLDIVER] =
        {
            items =
            {
                { 900, xi.item.SELF_BOW },
                { 100, xi.item.WINGEDGE },
            },
        },

        [xi.appraisal.origin.NYZUL_UNGUR] =
        {
            items =
            {
                { 900, xi.item.CROSSBOW        },
                { 100, xi.item.UNGUR_BOOMERANG },
            },
        },

        [xi.appraisal.origin.NYZUL_FRAELISSA] =
        {
            items =
            {
                { 900, xi.item.CROSSBOW      },
                { 100, xi.item.ALMOGAVAR_BOW },
            },
        },
    },

    [xi.item.UNAPPRAISED_GLOVES] =
    {
        [xi.assault.mission.ORICHALCUM_SURVEY] =
        {
            items =
            {
                { 1000, xi.item.STORM_GAGES },
            },
        },

        [xi.assault.mission.SEAGULL_GROUNDED] =
        {
            items =
            {
                { 280, xi.item.BRONZE_MITTENS_P1 },
                { 300, xi.item.LEATHER_GLOVES    },
                { 200, xi.item.COTTON_GLOVES     },
                { 180, xi.item.CUFFS             },
                {  50, xi.item.STORM_MANOPOLAS   },
            },
        },

        [xi.assault.mission.REQUIEM] =
        {
            items =
            {
                { 300, xi.item.LEATHER_GLOVES    },
                { 280, xi.item.BRONZE_MITTENS_P1 },
                { 200, xi.item.COTTON_GLOVES     },
                { 180, xi.item.CUFFS             },
                {  50, xi.item.STORM_GAGES       },
            },
        },

        [xi.appraisal.origin.NYZUL_PEALLAIDH] =
        {
            items =
            {
                { 900, xi.item.LEATHER_GLOVES   },
                { 100, xi.item.NIGHTMARE_GLOVES },
            },
        },

        [xi.appraisal.origin.NYZUL_ENERGETIC_ERUCA] =
        {
            items =
            {
                { 900, xi.item.COTTON_GLOVES },
                { 100, xi.item.HANZO_TEKKO   },
            },
        },
    },

    [xi.item.UNAPPRAISED_FOOTWEAR] =
    {
        [xi.assault.mission.LAMIA_NO_13] =
        {
            items =
            {
                { 200, xi.item.ASH_CLOGS          },
                { 380, xi.item.BRONZE_LEGGINGS_P1 },
                { 180, xi.item.LEATHER_HIGHBOOTS  },
                {  60, xi.item.SOLEA              },
                { 180, xi.item.STORM_GAMBIERAS    },
            },
        },

        [xi.assault.mission.EXTERMINATION] =
        {
            items =
            {
                {  50, xi.item.STORM_CRACKOWS     },
                { 350, xi.item.ASH_CLOGS          },
                { 250, xi.item.BRONZE_LEGGINGS_P1 },
                { 350, xi.item.LEATHER_HIGHBOOTS  },
            },
        },

        [xi.appraisal.origin.NYZUL_LEAPING_LIZZY] =
        {
            items =
            {
                { 950, xi.item.LEATHER_HIGHBOOTS },
                {  50, xi.item.LEAPING_BOOTS     },
            },
        },

        [xi.appraisal.origin.NYZUL_CACTUAR_CANTAUTOR] =
        {
            items =
            {
                { 900, xi.item.LEATHER_HIGHBOOTS },
                { 100, xi.item.KUNG_FU_SHOES     },
            },
        },

        [xi.appraisal.origin.NYZUL_BONNACON] =
        {
            items =
            {
                { 900, xi.item.ASH_CLOGS       },
                { 100, xi.item.TREDECIM_SCYTHE }, -- Tredecim Scythe or Cure Clogs
            },
        },

        [xi.appraisal.origin.NYZUL_TOTTERING_TOBY] =
        {
            items =
            {
                { 900, xi.item.ASH_CLOGS         },
                { 100, xi.item.STUMBLING_SANDALS },
            },
        },

        [xi.appraisal.origin.NYZUL_SIMURGH] =
        {
            items =
            {
                { 900, xi.item.LEATHER_HIGHBOOTS },
                { 100, xi.item.TROTTER_BOOTS     },
            },
        },
    },

    [xi.item.UNAPPRAISED_HEADPIECE] =
    {
        [xi.assault.mission.SAGELORD_ELIMINATION] =
        {
            items =
            {
                { 150, xi.item.BRONZE_CAP_P1   },
                { 200, xi.item.CIRCLET         },
                { 300, xi.item.COTTON_HEADGEAR },
                { 300, xi.item.LEATHER_BANDANA },
                {  50, xi.item.STORM_ZUCCHETTO },
            },
        },

        [xi.assault.mission.TROLL_FUGITIVES] =
        {
            items =
            {
                {  50, xi.item.STORM_TURBAN    },
                { 200, xi.item.COTTON_HEADGEAR },
                { 150, xi.item.BRONZE_CAP_P1   },
                { 300, xi.item.LEATHER_BANDANA },
                { 300, xi.item.CIRCLET         },
            },
        },

        [xi.appraisal.origin.NYZUL_VALKURM_EMPEROR] =
        {
            items =
            {
                { 900, xi.item.COPPER_HAIRPIN  },
                { 100, xi.item.EMPRESS_HAIRPIN },
            },
        },

        [xi.appraisal.origin.NYZUL_ELLYLLON] =
        {
            items =
            {
                { 900, xi.item.LEATHER_BANDANA },
                { 100, xi.item.MUSHROOM_HELM   },
            },
        },

        [xi.appraisal.origin.NYZUL_TAISAIJIN] =
        {
            items =
            {
                { 900, xi.item.LEATHER_BANDANA },
                { 100, xi.item.SPELUNKERS_HAT  },
            },
        },

        [xi.appraisal.origin.NYZUL_DROOLING_DAISY] =
        {
            items =
            {
                { 900, xi.item.BONE_HAIRPIN   },
                { 100, xi.item.DODGE_HEADBAND },
            },
        },

        [xi.appraisal.origin.NYZUL_SHARP_EARED_ROPIPI] =
        {
            items =
            {
                { 900, xi.item.COPPER_HAIRPIN    },
                { 100, xi.item.ENTRANCING_RIBBON },
            },
        },

        [xi.appraisal.origin.NYZUL_TUMBLING_TRUFFLE] =
        {
            items =
            {
                { 900, xi.item.LEATHER_BANDANA },
                { 100, xi.item.FUNGUS_HAT      },
            },
        },
    },

    [xi.item.UNAPPRAISED_EARRING] =
    {
        [xi.assault.mission.EXCAVATION_DUTY] =
        {
            items =
            {
                { 250, xi.item.SHELL_EARRING   },
                { 210, xi.item.BONE_EARRING    },
                { 250, xi.item.BEETLE_EARRING  },
                { 200, xi.item.SILVER_EARRING  },
                {  60, xi.item.RERAISE_EARRING },
                {  30, xi.item.STORM_LOOP      },
            },
        },

        [xi.assault.mission.APKALLU_BREEDING] =
        {
            items =
            {
                { 220, xi.item.MAGNIFYING_EARRING },
                { 200, xi.item.BONE_EARRING       },
                { 210, xi.item.BEETLE_EARRING     },
                { 270, xi.item.ELUSIVE_EARRING    },
                {  60, xi.item.SILVER_EARRING     },
                {  40, xi.item.SHELL_EARRING      },
            },
        },

        [xi.assault.mission.GOLDEN_SALVAGE] =
        {
            items =
            {
                { 220, xi.item.SHELL_EARRING  },
                { 200, xi.item.BONE_EARRING   },
                { 210, xi.item.BEETLE_EARRING },
                { 270, xi.item.SILVER_EARRING },
                {  60, xi.item.HEIMS_EARRING  },
                {  40, xi.item.STORM_EARRING  },
            },
        },

        [xi.appraisal.origin.NYZUL_LEECH_KING] =
        {
            items =
            {
                { 900, xi.item.SHELL_EARRING     },
                { 100, xi.item.BLOODBEAD_EARRING },
            },
        },

        [xi.appraisal.origin.NYZUL_CAPRICIOUS_CASSIE] =
        {
            items =
            {
                { 900, xi.item.BONE_EARRING   },
                { 100, xi.item.CASSIE_EARRING },
            },
        },

        [xi.appraisal.origin.NYZUL_MAIGHDEAN_UAINE] =
        {
            items =
            {
                { 900, xi.item.BEETLE_EARRING  },
                { 100, xi.item.OPTICAL_EARRING },
            },
        },
    },

    [xi.item.UNAPPRAISED_RING] =
    {
        [xi.assault.mission.LEUJAOAM_CLEANSING] =
        {
            items =
            {
                { 500, xi.item.COPPER_RING   },
                { 300, xi.item.BRASS_RING    },
                { 150, xi.item.ARCHERS_RING  },
                {  50, xi.item.IMPERIAL_RING },
            },
        },

        [xi.assault.mission.IMPERIAL_TREASURE_RETRIEVAL] =
        {
            items =
            {
                { 500, xi.item.COPPER_RING  },
                { 300, xi.item.BRASS_RING   },
                {  50, xi.item.HORIZON_RING },
            },
        },

        [xi.assault.mission.IMPERIAL_AGENT_RESCUE] =
        {
            items =
            {
                { 500, xi.item.COPPER_RING },
                { 300, xi.item.BRASS_RING  },
                { 150, xi.item.ETHER_RING  },
                {  50, xi.item.STORM_RING  },
            },
        },

        [xi.appraisal.origin.NYZUL_BOMB_KING] =
        {
            items =
            {
                { 600, xi.item.COPPER_RING },
                { 300, xi.item.BRASS_RING  },
                { 100, xi.item.BOMB_RING   },
            },
        },

        [xi.appraisal.origin.NYZUL_SMOTHERING_SCHMIDT] =
        {
            items =
            {
                { 600, xi.item.COPPER_RING   },
                { 300, xi.item.BRASS_RING    },
                { 100, xi.item.MALFLOOD_RING },
            },
        },

        [xi.appraisal.origin.NYZUL_ASPHYXIATED_AMSEL] =
        {
            items =
            {
                { 900, xi.item.BRASS_RING   },
                { 100, xi.item.MALGUST_RING },
            },
        },

        [xi.appraisal.origin.NYZUL_CRUSHED_KRAUSE] =
        {
            items =
            {
                { 900, xi.item.COPPER_RING  },
                { 100, xi.item.MALDUST_RING },
            },
        },

        [xi.appraisal.origin.NYZUL_PULVERIZED_PFEFFER] =
        {
            items =
            {
                { 900, xi.item.COPPER_RING   },
                { 100, xi.item.MALFROST_RING },
            },
        },

        [xi.appraisal.origin.NYZUL_SERKET] =
        {
            items =
            {
                { 900, xi.item.BRASS_RING  },
                { 100, xi.item.SERKET_RING },
            },
        },

        [xi.appraisal.origin.NYZUL_BURNED_BERGMANN] =
        {
            items =
            {
                { 900, xi.item.COPPER_RING   },
                { 100, xi.item.MALFLAME_RING },
            },
        },

        [xi.appraisal.origin.NYZUL_BLOODSUCKER] =
        {
            items =
            {
                { 900, xi.item.COPPER_RING    },
                { 100, xi.item.BLOODBEAD_RING },
            },
        },

        [xi.appraisal.origin.NYZUL_SEWER_SYRUP] =
        {
            items =
            {
                { 900, xi.item.BRASS_RING },
                { 100, xi.item.JELLY_RING },
            },
        },

        [xi.appraisal.origin.NYZUL_WOUNDED_WURFEL] =
        {
            items =
            {
                { 900, xi.item.COPPER_RING   },
                { 100, xi.item.MALFLASH_RING },
            },
        },
    },

    [xi.item.UNAPPRAISED_CAPE] =
    {
        [xi.assault.mission.ESCORT_PROFESSOR_CHANOIX] =
        {
            items =
            {
                { 350, xi.item.COTTON_CAPE_P1    },
                { 300, xi.item.DHALMEL_MANTLE_P1 },
                { 250, xi.item.LIZARD_MANTLE_P1  },
                {  50, xi.item.RED_CAPE_P1       },
                {  50, xi.item.STORM_MANTLE      },
            },
        },

        [xi.assault.mission.IMPERIAL_TREASURE_RETRIEVAL] =
        {
            items =
            {
                { 250, xi.item.LIZARD_MANTLE_P1  },
                { 300, xi.item.DHALMEL_MANTLE_P1 },
                { 250, xi.item.COTTON_CAPE_P1    },
                { 150, xi.item.SNIPERS_MANTLE    },
                {  50, xi.item.VOLITIONAL_MANTLE },
            },
        },

        [xi.assault.mission.LEBROS_SUPPLIES] =
        {
            items =
            {
                { 300, xi.item.DHALMEL_MANTLE_P1 },
                { 250, xi.item.COTTON_CAPE_P1    },
                { 250, xi.item.LIZARD_MANTLE_P1  },
                {  50, xi.item.STORM_CAPE        },
                { 150, xi.item.ENHANCING_MANTLE  },
            },
        },

        [xi.assault.mission.STOP_THE_BLOODSHED] =
        {
            items =
            {
                { 350, xi.item.COTTON_CAPE_P1    },
                { 150, xi.item.LIZARD_MANTLE_P1  },
                { 400, xi.item.DHALMEL_MANTLE_P1 },
                {  50, xi.item.AILERON_MANTLE    },
                {  50, xi.item.TEMPLARS_MANTLE   },
            },
        },

        [xi.appraisal.origin.NYZUL_OLD_TWO_WINGS] =
        {
            items =
            {
                { 900, xi.item.LIZARD_MANTLE_P1 },
                { 100, xi.item.BAT_CAPE         },
            },
        },

        [xi.appraisal.origin.NYZUL_FRAELISSA] =
        {
            items =
            {
                { 900, xi.item.COTTON_CAPE_P1   },
                { 100, xi.item.BELLICOSE_MANTLE },
            },
        },

        [xi.appraisal.origin.NYZUL_SPINY_SPIPI] =
        {
            items =
            {
                { 900, xi.item.RABBIT_MANTLE  },
                { 100, xi.item.MIST_SILK_CAPE },
            },
        },

        [xi.appraisal.origin.NYZUL_GOLDEN_BAT] =
        {
            items =
            {
                { 900, xi.item.COTTON_CAPE_P1 },
                { 100, xi.item.NIGHT_CAPE     },
            },
        },
    },

    [xi.item.UNAPPRAISED_SASH] =
    {
        [xi.assault.mission.SHANARHA_GRASS_CONSERVATION] =
        {
            items =
            {
                { 250, xi.item.TALISMAN_OBI         },
                { 250, xi.item.LUGWORM_BELT         },
                { 150, xi.item.SILVER_OBI_P1        },
                { 150, xi.item.LITTLE_WORM_BELT     },
                { 100, xi.item.DEDUCTIVE_GOLD_OBI   },
                {  50, xi.item.ENTHRALLING_GOLD_OBI },
                {  50, xi.item.STORM_BELT           },
            },
        },

        [xi.assault.mission.APKALLU_BREEDING] =
        {
            items =
            {
                { 600, xi.item.TALISMAN_OBI  },
                { 150, xi.item.LUGWORM_BELT  },
                { 100, xi.item.SILVER_OBI_P1 },
                {  50, xi.item.GRACE_CORSET  },
                {  50, xi.item.GLEEMANS_BELT },
            },
        },

        [xi.assault.mission.DEMOLITION_DUTY] =
        {
            items =
            {
                { 200, xi.item.TALISMAN_OBI   },
                { 200, xi.item.LUGWORM_BELT   },
                { 300, xi.item.SILVER_OBI_P1  },
                { 100, xi.item.CZARS_BELT     },
                { 100, xi.item.MAHARAJAS_BELT },
                {  50, xi.item.SULTANS_BELT   },
                {  50, xi.item.STORM_SASH     },
            },
        },
    },

    [xi.item.UNAPPRAISED_SHIELD] =
    {
        [xi.assault.mission.SAVING_PRIVATE_RYAAF] =
        {
            items =
            {
                { 250, xi.item.MAPLE_SHIELD    },
                { 200, xi.item.ELM_SHIELD      },
                { 200, xi.item.OAK_SHIELD      },
                { 150, xi.item.LAUAN_SHIELD    },
                { 150, xi.item.MAHOGANY_SHIELD },
                {  50, xi.item.STORM_SHIELD    },
            },
        },

        [xi.appraisal.origin.NYZUL_BLOODTEAR_BALDURF] =
        {
            items =
            {
                { 900, xi.item.OAK_SHIELD    },
                { 100, xi.item.VIKING_SHIELD },
            },
        },

        [xi.appraisal.origin.NYZUL_FUNGUS_BEETLE] =
        {
            items =
            {
                { 900, xi.item.LAUAN_SHIELD },
                { 100, xi.item.CLIPEUS      },
            },
        },

        [xi.appraisal.origin.NYZUL_STEELFLEECE_BALDARICH] =
        {
            items =
            {
                { 900, xi.item.OAK_SHIELD    },
                { 100, xi.item.VIKING_SHIELD },
            },
        },

        [xi.appraisal.origin.NYZUL_SOUTHERN_SHADOW] =
        {
            items =
            {
                { 900, xi.item.ELM_SHIELD    },
                { 100, xi.item.MASTER_SHIELD },
            },
        },

        [xi.appraisal.origin.NYZUL_PELICAN] =
        {
            items =
            {
                { 900, xi.item.ASPIS        },
                { 100, xi.item.ASTRAL_ASPIS },
            },
        },
    },

    [xi.item.UNAPPRAISED_NECKLACE] =
    {
        [xi.assault.mission.ORICHALCUM_SURVEY] =
        {
            items =
            {
                { 550, xi.item.FEATHER_COLLAR },
                { 300, xi.item.GORGET_P1      },
                { 100, xi.item.JAGD_GORGET    },
                {  50, xi.item.STORM_MUFFLER  },
            },
        },

        [xi.assault.mission.PREEMPTIVE_STRIKE] =
        {
            items =
            {
                { 550, xi.item.FEATHER_COLLAR },
                { 300, xi.item.GORGET_P1      },
                { 100, xi.item.SPECTACLES     },
                {  50, xi.item.STORM_TORQUE   },
            },
        },

        [xi.appraisal.origin.NYZUL_SHADOW_EYE] =
        {
            items =
            {
                { 950, xi.item.REGEN_COLLAR },
                {  50, xi.item.MOON_AMULET  },
            },
        },

        [xi.appraisal.origin.NYZUL_JAGGEDY_EARED_JACK] =
        {
            items =
            {
                { 900, xi.item.LEATHER_GORGET },
                { 100, xi.item.RABBIT_CHARM   },
            },
        },

        [xi.appraisal.origin.NYZUL_GARGANTUA] =
        {
            items =
            {
                { 900, xi.item.FEATHER_COLLAR  },
                { 100, xi.item.ELEMENTAL_CHARM },
            },
        },

        [xi.appraisal.origin.NYZUL_SERPOPARD_ISHTAR] =
        {
            items =
            {
                { 900, xi.item.FEATHER_COLLAR   },
                { 100, xi.item.CERULEAN_PENDANT },
            },
        },

        [xi.appraisal.origin.NYZUL_ARGUS] =
        {
            items =
            {
                { 900, xi.item.REGEN_COLLAR  },
                { 100, xi.item.PEACOCK_CHARM },
            },
        },

        [xi.appraisal.origin.NYZUL_BLOODPOOL_VORAX] =
        {
            items =
            {
                { 900, xi.item.GORGET_P1        },
                { 100, xi.item.BLOODBEAD_AMULET },
            },
        },

        [xi.appraisal.origin.NYZUL_BUBURIMBOO] =
        {
            items =
            {
                { 900, xi.item.GORGET_P1       },
                { 100, xi.item.BUBURIMU_GORGET },
            },
        },

        [xi.appraisal.origin.NYZUL_DUNE_WIDOW] =
        {
            items =
            {
                { 900, xi.item.REGEN_COLLAR  },
                { 100, xi.item.SPIDER_TORQUE },
            },
        },
    },

    [xi.item.UNAPPRAISED_INGOT] =
    {

    },

    [xi.item.UNAPPRAISED_POTION] =
    {

    },

    [xi.item.UNAPPRAISED_CLOTH] =
    {

    },

    [xi.item.UNAPPRAISED_BOX] =
    {
        [xi.assault.mission.LEUJAOAM_CLEANSING] =
        {
            items =
            {
                { 100, xi.item.WHITE_ROCK        },
                { 200, xi.item.TSURARA           },
                {  20, xi.item.PHALAENOPSIS      },
                {  50, xi.item.GARDENIA_SEED     },
                {  80, xi.item.GLASS_SHEET       },
                { 200, xi.item.MERROW_SCALE      },
                { 150, xi.item.SOULFLAYER_STAFF  },
                { 100, xi.item.ICE_CRYSTAL       },
                {  10, xi.item.TOOLBAG_JUSATSU   },
                {  30, xi.item.IRON_BULLET_POUCH },
                {  60, xi.item.LAKERDA           },
            },
        },

        [xi.assault.mission.ORICHALCUM_SURVEY] =
        {
            items =
            {
                { 100, xi.item.EGGPLANT              },
                {  90, xi.item.GARDENIA_SEED         },
                { 100, xi.item.ICE_CRYSTAL           },
                {  70, xi.item.KABURA_QUIVER         },
                { 130, xi.item.SQUARE_OF_LINEN_CLOTH },
                {  80, xi.item.MERROW_SCALE          },
                {  50, xi.item.PHALAENOPSIS          },
                { 100, xi.item.POROGGO_HAT           },
                {  60, xi.item.SOULFLAYER_STAFF      },
                { 150, xi.item.TSURARA               },
                {  70, xi.item.WHITE_ROCK            },
            },
        },

        [xi.assault.mission.ESCORT_PROFESSOR_CHANOIX] =
        {
            items =
            {
                { 100, xi.item.EGGPLANT              },
                {  90, xi.item.GARDENIA_SEED         },
                { 100, xi.item.ICE_CRYSTAL           },
                {  70, xi.item.KABURA_QUIVER         },
                { 130, xi.item.SQUARE_OF_LINEN_CLOTH },
                {  80, xi.item.TITANICTUS_SHELL      },
                {  50, xi.item.PHALAENOPSIS          },
                { 100, xi.item.POROGGO_HAT           },
                {  60, xi.item.SOULFLAYER_STAFF      },
                { 150, xi.item.TSURARA               },
                {  70, xi.item.WHITE_ROCK            },
            },
        },

        [xi.assault.mission.SHANARHA_GRASS_CONSERVATION] =
        {
            items =
            {
                {  50, xi.item.EGGPLANT            },
                {  90, xi.item.GARDENIA_SEED       },
                {  50, xi.item.ICE_CRYSTAL         },
                {  70, xi.item.SILVER_BULLET_POUCH },
                {  80, xi.item.MERROW_SCALE        },
                {  50, xi.item.PHALAENOPSIS        },
                {  50, xi.item.POROGGO_HAT         },
                {  60, xi.item.SOULFLAYER_STAFF    },
                {  50, xi.item.TSURARA             },
                {  70, xi.item.WHITE_ROCK          },
                {  50, xi.item.LAMP_MARIMO         },
                { 150, xi.item.TOOLBAG_HIRAISHIN   },
                { 150, xi.item.TOOLBAG_UCHITAKE    },
            },
        },

        [xi.assault.mission.COUNTING_SHEEP] =
        {
            items =
            {
                {  50, xi.item.EGGPLANT             },
                {  50, xi.item.GARDENIA_SEED        },
                {  50, xi.item.ICE_CRYSTAL          },
                { 150, xi.item.SPARTAN_BULLET_POUCH },
                {  70, xi.item.MERROW_SCALE         },
                {  50, xi.item.PHALAENOPSIS         },
                {  50, xi.item.POROGGO_HAT          },
                {  60, xi.item.SOULFLAYER_STAFF     },
                {  50, xi.item.TSURARA              },
                {  70, xi.item.WHITE_ROCK           },
                {  50, xi.item.IRON_BULLET_POUCH    },
                { 150, xi.item.VENOM_BOLT_QUIVER    },
                { 150, xi.item.GLASS_SHEET          },
            },
        },

        -- Low sample rate. Borrowing similar Leujaoam Sanctum tables
        [xi.assault.mission.SUPPLIES_RECOVERY] =
        {
            items =
            {
                {  50, xi.item.EGGPLANT             },
                {  50, xi.item.GARDENIA_SEED        },
                {  50, xi.item.ICE_CRYSTAL          },
                { 150, xi.item.SPARTAN_BULLET_POUCH },
                {  70, xi.item.MERROW_SCALE         },
                {  50, xi.item.PHALAENOPSIS         },
                {  50, xi.item.POROGGO_HAT          },
                {  60, xi.item.SOULFLAYER_STAFF     },
                {  50, xi.item.TSURARA              },
                {  70, xi.item.WHITE_ROCK           },
                {  50, xi.item.IRON_BULLET_POUCH    },
                { 150, xi.item.VENOM_BOLT_QUIVER    },
                { 150, xi.item.GLASS_SHEET          },
            },
        },

        [xi.assault.mission.IMPERIAL_AGENT_RESCUE] =
        {
            items =
            {
                {  70, xi.item.DATE                         },
                {  50, xi.item.EGGPLANT                     },
                { 100, xi.item.CLUMP_OF_IMPERIAL_TEA_LEAVES },
                {  40, xi.item.CHUNK_OF_KAOLIN              },
                { 200, xi.item.MAMOOL_JA_COLLAR             },
                { 150, xi.item.POROGGO_HAT                  },
                {  60, xi.item.SPRIG_OF_SAGE                },
                {  50, xi.item.SQUARE_OF_SILK_CLOTH         },
                {  10, xi.item.TOOLBAG_KAWAHORI_OGI         },
                {  10, xi.item.TOOLBAG_SHIHEI               },
                {  10, xi.item.TOOLBAG_TSURARA              },
                { 100, xi.item.WILD_ONION                   },
                {  10, xi.item.TOOLBAG_UCHITAKE             },
                { 140, xi.item.ISTAKOZ                      },
            },
        },

        [xi.assault.mission.PREEMPTIVE_STRIKE] =
        {
            items =
            {
                { 170, xi.item.EGGPLANT                     },
                { 150, xi.item.SPRIG_OF_SAGE                },
                { 150, xi.item.CLUMP_OF_IMPERIAL_TEA_LEAVES },
                {  70, xi.item.WILD_ONION                   },
                { 100, xi.item.SPOOL_OF_RED_GRASS_THREAD    },
                {  70, xi.item.MAMOOL_JA_COLLAR             },
                {  40, xi.item.TOOLBAG_SAIRUI_RAN           },
                {  30, xi.item.TOOLBAG_SHIHEI               },
                {  40, xi.item.TOOLBAG_JUSATSU              },
                { 100, xi.item.CHUNK_OF_KAOLIN              },
                {  80, xi.item.POROGGO_HAT                  },
            },
        },

        [xi.assault.mission.BREAKING_MORALE] =
        {
            items =
            {
                { 100, xi.item.DATE                    },
                {  25, xi.item.EGGPLANT                },
                {  25, xi.item.IMPERIAL_TEA_LEAVES     },
                {  25, xi.item.CHUNK_OF_KAOLIN         },
                {  25, xi.item.LAMIAN_ARMLET           },
                { 100, xi.item.MAMOOL_JA_COLLAR        },
                { 100, xi.item.TROLL_PAULDRON          },
                { 100, xi.item.POROGGO_HAT             },
                {  25, xi.item.SPRIG_OF_SAGE           },
                {  25, xi.item.SOULFLAYER_STAFF        },
                { 100, xi.item.TOOLBAG_JUSATSU         },
                { 100, xi.item.TOOLBAG_KAGINAWA        },
                { 100, xi.item.TOOLBAG_MIZU_DEPPO      },
                { 100, xi.item.TOOLBAG_SHIHEI          },
                {  25, xi.item.SQUARE_OF_WAMOURA_CLOTH },
                {  25, xi.item.WILD_ONION              },
            },
        },

        [xi.assault.mission.THE_DOUBLE_AGENT] =
        {
            items =
            {
                { 250, xi.item.DATE                     },
                {  40, xi.item.CHUNK_OF_IMPERIAL_CERMET },
                {  40, xi.item.KAOLIN                   },
                {  40, xi.item.LAMIAN_ARMET             },
                { 280, xi.item.MAMOOL_JA_COLLAR         },
                { 230, xi.item.POROGGO_HAT              },
                {  40, xi.item.TOOLBAG_HIRAISHIN        },
                {  20, xi.item.TOOLBAG_MIZU_DEPPO       },
                {  20, xi.item.TOOLBAG_SHINOBI_TABI     },
                {  20, xi.item.TOOLBAG_SHIHEI           },
            },
        },

        [xi.assault.mission.EXCAVATION_DUTY] =
        {
            items =
            {
                { 150, xi.item.CHUNK_OF_COPPER_ORE    },
                { 100, xi.item.RED_ROCK               },
                {  50, xi.item.SQUARE_OF_VELVET_CLOTH },
                {  80, xi.item.PINCH_OF_BOMB_ASH      },
                {  80, xi.item.PINCH_OF_SULFUR        },
                {  50, xi.item.SPRIG_OF_HOLY_BASIL    },
                { 200, xi.item.TROLL_PAULDRON         },
                { 150, xi.item.CHUNK_OF_FLAN_MEAT     },
                {  10, xi.item.TROLL_BRONZE_INGOT     },
                {  20, xi.item.SILVER_BULLET_POUCH    },
                {  10, xi.item.SPARTAN_BULLET_POUCH   },
                {  20, xi.item.IRON_BULLET_POUCH      },
                {  40, xi.item.BRONZE_BULLET_POUCH    },
                {  30, xi.item.BULLET_POUCH           },
            },
        },

        [xi.assault.mission.LEBROS_SUPPLIES] =
        {
            items =
            {
                { 200, xi.item.PINCH_OF_SULFUR     },
                { 200, xi.item.CHUNK_OF_FLAN_MEAT  },
                {  50, xi.item.BULLET_POUCH        },
                { 200, xi.item.TROLL_PAULDRON      },
                { 100, xi.item.SPARTAN_BULLET      },
                { 250, xi.item.SPRIG_OF_HOLY_BASIL },
            },
        },

        [xi.assault.mission.TROLL_FUGITIVES] =
        {
            items =
            {
                { 100, xi.item.PINCH_OF_BOMB_ASH   },
                { 150, xi.item.CHUNK_OF_COPPER_ORE },
                {  80, xi.item.CHUNK_OF_FLAN_MEAT  },
                {  60, xi.item.SPRIG_OF_HOLY_BASIL },
                {  20, xi.item.IRON_BULLET_POUCH   },
                {  10, xi.item.SILVER_BULLET_POUCH },
                {  50, xi.item.PETRIFIED_LOG       },
                { 100, xi.item.RED_ROCK            },
                { 250, xi.item.PINCH_OF_SULFUR     },
                {  80, xi.item.TROLL_BRONZE_INGOT  },
                { 100, xi.item.TROLL_PAULDRON      },
            },
        },

        [xi.assault.mission.EVADE_AND_ESCAPE] =
        {
            items =
            {
                {  35, xi.item.CHUNK_OF_COPPER_ORE  },
                {  35, xi.item.PINCH_OF_SULFUR      },
                {  35, xi.item.RED_ROCK             },
                {  35, xi.item.PINCH_OF_BOMB_ASH    },
                {  35, xi.item.TROLL_BROWNZE_SHEET  },
                {  35, xi.item.TROLL_BRONZE_INGOT   },
                { 300, xi.item.TROLL_PAULDRON       },
                {  35, xi.item.SPRIG_OF_HOLY_BASIL  },
                {  35, xi.item.IRON_BULLET_POUCH    },
                {  35, xi.item.SILVER_BULLET_POUCH  },
                { 100, xi.item.BRONZE_BULLET_POUCH  },
                {  35, xi.item.BULLET_POUCH         },
                { 100, xi.item.SPARTAN_BULLET_POUCH },
                { 150, xi.item.FLAN_MEAT            },
            },
        },

        [xi.assault.mission.APKALLU_BREEDING] =
        {
            items =
            {
                {  35, xi.item.CHUNK_OF_COPPER_ORE  },
                {  35, xi.item.PINCH_OF_SULFUR      },
                {  35, xi.item.RED_ROCK             },
                {  35, xi.item.PINCH_OF_BOMB_ASH    },
                {  35, xi.item.TROLL_BROWNZE_SHEET  },
                {  35, xi.item.TROLL_BRONZE_INGOT   },
                { 300, xi.item.TROLL_PAULDRON       },
                {  35, xi.item.SPRIG_OF_HOLY_BASIL  },
                {  35, xi.item.IRON_BULLET_POUCH    },
                {  35, xi.item.SILVER_BULLET_POUCH  },
                { 100, xi.item.BRONZE_BULLET_POUCH  },
                {  35, xi.item.BULLET_POUCH         },
                { 100, xi.item.SPARTAN_BULLET_POUCH },
                { 150, xi.item.APKALLU_EGG          },
            },
        },

        [xi.assault.mission.REQUIEM] =
        {
            items =
            {
                {  40, xi.item.IGNEOUS_ROCK             },
                {  50, xi.item.ROTTEN_QUIVER            },
                {  50, xi.item.HOLY_BOLT_QUIVER         },
                { 200, xi.item.BONE_CHIP                },
                {  50, xi.item.CLEANING_TOOL_SET        },
                {  20, xi.item.HANDFUL_OF_DRAGON_SCALES },
                {  90, xi.item.QIQIRN_SANDBAG           },
                { 150, xi.item.IMP_WING                 },
                { 200, xi.item.BRONZE_BOLT              },
                { 150, xi.item.SPRIG_OF_APPLE_MINT      },
            },
        },

        [xi.assault.mission.SEAGULL_GROUNDED] =
        {
            items =
            {
                {  10, xi.item.CLEANING_TOOL_SET       },
                {  20, xi.item.SPOOL_OF_RAINBOW_THREAD },
                { 250, xi.item.BONE_CHIP               },
                {  50, xi.item.SPRIG_OF_APPLE_MINT     },
                {  30, xi.item.IGNEOUS_ROCK            },
                { 200, xi.item.QIQIRN_SANDBAG          },
                {  50, xi.item.IMP_WING                },
                { 100, xi.item.ROTTEN_QUIVER           },
                {  60, xi.item.BRONZE_BOLT_QUIVER      },
                { 100, xi.item.WILD_ONION              },
                {  50, xi.item.HOLY_BOLT_QUIVER        },
                {  30, xi.item.SLEEP_BOLT_QUIVER       },
            },
        },

        [xi.assault.mission.SAVING_PRIVATE_RYAAF] =
        {
            items =
            {
                {  30, xi.item.CHUNK_OF_GOLD_ORE     },
                { 340, xi.item.QIQIRN_SANDBAG        },
                { 200, xi.item.SPRIG_OF_APPLE_MINT   },
                {  30, xi.item.BLOODY_BOLT_QUIVER    },
                {  30, xi.item.HOLY_BOLT_QUIVER      },
                {  30, xi.item.MYTHRIL_BOLT_QUIVER   },
                {  30, xi.item.SLEEP_BOLT_QUIVER     },
                {  30, xi.item.DARKSTEEL_BOLT_QUIVER },
                { 250, xi.item.IMP_WING              },
                {  30, xi.item.QIQIRN_SANDBAG        },
            },
        },

        -- Low sample rate. Borrowing similar Periqia tables for now
        [xi.assault.mission.SHOOTING_DOWN_THE_BARON] =
        {
            items =
            {
                {  30, xi.item.CHUNK_OF_GOLD_ORE     },
                { 340, xi.item.QIQIRN_SANDBAG        },
                { 200, xi.item.SPRIG_OF_APPLE_MINT   },
                {  30, xi.item.BLOODY_BOLT_QUIVER    },
                {  30, xi.item.HOLY_BOLT_QUIVER      },
                {  30, xi.item.MYTHRIL_BOLT_QUIVER   },
                {  30, xi.item.SLEEP_BOLT_QUIVER     },
                {  30, xi.item.DARKSTEEL_BOLT_QUIVER },
                { 250, xi.item.IMP_WING              },
                {  30, xi.item.QIQIRN_SANDBAG        },
            },
        },

        -- Low sample rate. Borrowing similar Periqia tables for now
        [xi.assault.mission.BUILDING_BRIDGES] =
        {
            items =
            {
                {  30, xi.item.CHUNK_OF_GOLD_ORE     },
                { 340, xi.item.QIQIRN_SANDBAG        },
                { 200, xi.item.SPRIG_OF_APPLE_MINT   },
                {  30, xi.item.BLOODY_BOLT_QUIVER    },
                {  30, xi.item.HOLY_BOLT_QUIVER      },
                {  30, xi.item.MYTHRIL_BOLT_QUIVER   },
                {  30, xi.item.SLEEP_BOLT_QUIVER     },
                {  30, xi.item.DARKSTEEL_BOLT_QUIVER },
                { 250, xi.item.IMP_WING              },
                {  30, xi.item.QIQIRN_SANDBAG        },
            },
        },

        -- Low sample rate. Borrowing similar Periqia tables for now
        [xi.assault.mission.BUILDING_BRIDGES] =
        {
            items =
            {
                {  30, xi.item.CHUNK_OF_GOLD_ORE     },
                { 340, xi.item.QIQIRN_SANDBAG        },
                { 200, xi.item.SPRIG_OF_APPLE_MINT   },
                {  30, xi.item.BLOODY_BOLT_QUIVER    },
                {  30, xi.item.HOLY_BOLT_QUIVER      },
                {  30, xi.item.MYTHRIL_BOLT_QUIVER   },
                {  30, xi.item.SLEEP_BOLT_QUIVER     },
                {  30, xi.item.DARKSTEEL_BOLT_QUIVER },
                { 250, xi.item.IMP_WING              },
                {  30, xi.item.QIQIRN_SANDBAG        },
            },
        },

        [xi.assault.mission.GOLDEN_SALVAGE] =
        {
            items =
            {
                {  10, xi.item.RUSTY_BUCKET               },
                { 240, xi.item.QUTRUB_GORGET              },
                { 200, xi.item.LAMIAN_ARMLET              },
                {  60, xi.item.AHT_URHGAN_BRASS_INGOT     },
                {  20, xi.item.STONE_QUIVER               },
                {  60, xi.item.BONE_QUIVER                },
                {  20, xi.item.BEETLE_QUIVER              },
                {  10, xi.item.HORN_QUIVER                },
                {  50, xi.item.SCORPION_QUIVER            },
                {  50, xi.item.DEMON_QUIVER               },
                {  30, xi.item.IRON_QUIVER                },
                {  40, xi.item.SILVER_QUIVER              },
                {  10, xi.item.FLASK_OF_DISTILLED_WATER   },
                {  50, xi.item.SCROLL_OF_PUPPETS_OPERETTA },
                {  50, xi.item.KABURA_QUIVER              },
                {  10, xi.item.SLEEP_QUIVER               },
                { 140, xi.item.ISTAKOZ                    },
                {  10, xi.item.WILLOW_FISHING_ROD         },
                {  10, xi.item.LITTLE_WORM                },
            },
        },

        [xi.assault.mission.LAMIA_NO_13] =
        {
            items =
            {
                {  20, xi.item.SPRIG_OF_APPLE_MINT    },
                { 250, xi.item.QUTRUB_GORGET          },
                { 250, xi.item.LAMIAN_ARMLET          },
                {  20, xi.item.AHT_URHGAN_BRASS_INGOT },
                {  20, xi.item.STONE_QUIVER           },
                {  60, xi.item.BONE_QUIVER            },
                {  20, xi.item.BEETLE_QUIVER          },
                {  20, xi.item.DEMON_QUIVER           },
                {  40, xi.item.SILVER_QUIVER          },
                {  60, xi.item.LIGHT_SPIRIT_PACT      },
                {  20, xi.item.KABURA_QUIVER          },
                {  20, xi.item.SLEEP_QUIVER           },
                { 190, xi.item.ISTAKOZ                },
                {  10, xi.item.RUSTY_BUCKET           },
            },
        },

        [xi.assault.mission.EXTERMINATION] =
        {
            items =
            {
                { 150, xi.item.RUSTY_BUCKET             },
                { 250, xi.item.LITTLE_WORM              },
                { 250, xi.item.FLASK_OF_DISTILLED_WATER },
                { 100, xi.item.LAMIAN_ARMLET            },
                {  50, xi.item.KING_TRUFFLE             },
                {  50, xi.item.QUTRUB_GORGET            },
                {  20, xi.item.SILVER_QUIVER            },
                {  20, xi.item.SLEEP_QUIVER             },
                {  40, xi.item.STONE_QUIVER             },
                {  30, xi.item.BONE_QUIVER              },
                {  40, xi.item.BEETLE_QUIVER            },
            },
        },

        -- Borrowing similar Ilrusi Atoll tables due to low sample rate
        [xi.assault.mission.DEMOLITION_DUTY] =
        {
            items =
            {
                { 150, xi.item.RUSTY_BUCKET             },
                { 250, xi.item.LITTLE_WORM              },
                { 250, xi.item.FLASK_OF_DISTILLED_WATER },
                { 100, xi.item.LAMIAN_ARMLET            },
                {  50, xi.item.KING_TRUFFLE             },
                {  50, xi.item.QUTRUB_GORGET            },
                {  20, xi.item.SILVER_QUIVER            },
                {  20, xi.item.SLEEP_QUIVER             },
                {  40, xi.item.STONE_QUIVER             },
                {  30, xi.item.BONE_QUIVER              },
                {  40, xi.item.BEETLE_QUIVER            },
            },
        },

        -- Borrowing similar Ilrusi Atoll tables due to low sample rate
        [xi.assault.mission.SEARAT_SALVATION] =
        {
            items =
            {
                { 150, xi.item.RUSTY_BUCKET             },
                { 250, xi.item.LITTLE_WORM              },
                { 250, xi.item.FLASK_OF_DISTILLED_WATER },
                { 100, xi.item.LAMIAN_ARMLET            },
                {  50, xi.item.KING_TRUFFLE             },
                {  50, xi.item.QUTRUB_GORGET            },
                {  20, xi.item.SILVER_QUIVER            },
                {  20, xi.item.SLEEP_QUIVER             },
                {  40, xi.item.STONE_QUIVER             },
                {  30, xi.item.BONE_QUIVER              },
                {  40, xi.item.BEETLE_QUIVER            },
            },
        },

        -- Borrowing similar Ilrusi Atoll tables due to low sample rate
        [xi.assault.mission.APKALLU_SEIZURE] =
        {
            items =
            {
                { 150, xi.item.RUSTY_BUCKET             },
                { 250, xi.item.LITTLE_WORM              },
                { 250, xi.item.FLASK_OF_DISTILLED_WATER },
                { 100, xi.item.LAMIAN_ARMLET            },
                {  50, xi.item.KING_TRUFFLE             },
                {  50, xi.item.QUTRUB_GORGET            },
                {  20, xi.item.SILVER_QUIVER            },
                {  20, xi.item.SLEEP_QUIVER             },
                {  40, xi.item.STONE_QUIVER             },
                {  30, xi.item.BONE_QUIVER              },
                {  40, xi.item.BEETLE_QUIVER            },
            },
        },

        [xi.appraisal.origin.NYZUL_AIATAR] =
        {
            items =
            {
                { 800, xi.item.LEATHER_TROUSERS },
                { 100, xi.item.FALCONERS_HOSE   },
                { 100, xi.item.SABLE_CUISSES    },
            },
        },

        [xi.appraisal.origin.NYZUL_INTULO] =
        {
            items =
            {
                { 900, xi.item.SLACKS       },
                { 100, xi.item.MAGIC_SLACKS },
            },
        },

        [xi.appraisal.origin.NYZUL_FRIAR_RUSH] =
        {
            items =
            {
                { 900, xi.item.BOMB_ARM  },
                { 100, xi.item.BOMB_CORE },
            },
        },

        [xi.appraisal.origin.NYZUL_SABOTENDER_BAILARIN] =
        {
            items =
            {
                { 900, xi.item.DART       },
                { 100, xi.item.BAILATHORN },
            },
        },

        [xi.appraisal.origin.NYZUL_ODQAN] =
        {
            items =
            {
                { 900, xi.item.LEATHER_TROUSERS },
                { 100, xi.item.BRAVOS_SUBLIGAR  },
            },
        },

        [xi.appraisal.origin.NYZUL_STRAY_MARY] =
        {
            items =
            {
                { 900, xi.item.CORNETTE   },
                { 100, xi.item.MARYS_HORN },
            },
        },

        [xi.appraisal.origin.NYZUL_UNUT] =
        {
            items =
            {
                { 900, xi.item.LINEN_SLOPS   },
                { 100, xi.item.LUNA_SUBLIGAR },
            },
        },

        [xi.appraisal.origin.NYZUL_JADED_JODY] =
        {
            items =
            {
                { 900, xi.item.SLACKS        },
                { 100, xi.item.JET_SERAWEELS },
            },
        },
    },
}

xi.appraisal.appraiseItem = function(player, npc, trade, gil, appraisalCsid)
    if player:getGil() >= gil then
        for _, tradedItem in pairs(xi.appraisal.unappraisedItems) do
            if npcUtil.tradeHasExactly(trade, tradedItem) then
                local tradeID        = trade:getItemId()
                local info           = xi.appraisal.appraisalItems[tradeID]
                local appraisalID    = trade:getItem():getAppraisalID()
                local appraisedItem  = xi.appraisal.itemPick(player, info, appraisalID)

                if appraisedItem ~= 0 then
                    player:startEvent(appraisalCsid, 1, appraisedItem)
                    player:setLocalVar("Appraisal", appraisedItem) -- anticheat
                    player:confirmTrade()
                end

                break
            end
        end
    end
end

xi.appraisal.itemPick = function(player, info, appraisalID)
    -- possible drops
    local items = info[appraisalID].items

    -- sum weights
    local sum = 0
    for i = 1, #items do
        sum = sum + items[i][1]
    end

    -- pick weighted result
    local item = 0
    local pick = math.random(1, sum)
    sum = 0

    for i = 1, #items do
        sum = sum + items[i][1]
        if sum >= pick then
            item = items[i][2]
            break
        end
    end

    return item
end

xi.appraisal.appraisalOnEventFinish = function(player, csid, option, gil, appraisalCsid, npc)
    if csid == appraisalCsid then
        local appraisedItem = player:getLocalVar("Appraisal")
        player:addTreasure(appraisedItem, npc)
        player:delGil(gil)
        player:setLocalVar("Appraisal", 0)
    end
end

xi.appraisal.canGetUnappraisedItem = function(player, area)
    local instance = player:getInstance()
    local result   = false
    local cap      = instance:getLevelCap()

    if cap == 0 or cap >= xi.assault.missionInfo[area].suggestedLevel then
        result = true
    end

    return result
end

xi.appraisal.pickUnappraisedItem = function(player, npc, qItemTable)
    if npc:getLocalVar("UnappraisedItem") == 0 then
        for i = 1, #qItemTable, 1 do
            local lootGroup = qItemTable[i]
            if lootGroup then
                local max = 0
                for _, entry in pairs(lootGroup) do
                    max = max + entry.droprate
                end

                local roll = math.random(1, max)

                for _, entry in pairs(lootGroup) do
                    max = max - entry.droprate
                    if roll > max then
                        if entry.itemid > 0 then
                            npc:setLocalVar("UnappraisedItem", entry.itemid)
                        end

                        break
                    end
                end
            end
        end
    end
end

xi.appraisal.assaultChestTrigger = function(player, npc, qItemTable, regItemTable)
    local instance = player:getInstance()
    local chars    = instance:getChars()
    local area     = player:getCurrentAssault()

    if instance:completed() and npc:getLocalVar("open") == 0 then
        if xi.appraisal.canGetUnappraisedItem(player, area) then
            xi.appraisal.pickUnappraisedItem(player, npc, qItemTable)
            local unappraisedItem = npc:getLocalVar("UnappraisedItem")
            if player:getFreeSlotsCount() == 0 then
                player:messageSpecial(zones[player:getZoneID()].text.ITEM_CANNOT_BE_OBTAINED, unappraisedItem)
                return
            else
                player:addItem({ id = unappraisedItem, appraisal = area })
                for _, players in pairs(chars) do
                    players:messageName(zones[player:getZoneID()].text.PLAYER_OBTAINS_ITEM, player, unappraisedItem)
                end
            end
        end

        npc:entityAnimationPacket("open")
        npc:setLocalVar("open", 1)
        npc:setUntargetable(true)
        npc:timer(15000, function(npcArg)
            npcArg:entityAnimationPacket("kesu")
        end)

        npc:timer(16000, function(npcArg)
            npcArg:setStatus(xi.status.DISAPPEAR)
        end)

        for i = 1, #regItemTable, 1 do
            local lootGroup = regItemTable[i]
            if lootGroup then
                local max = 0
                for _, entry in pairs(lootGroup) do
                    max = max + entry.droprate
                end

                local roll = math.random(1, max)
                for _, entry in pairs(lootGroup) do
                    max = max - entry.droprate
                    if roll > max then
                        if entry.itemid ~= 0 then
                            player:addTreasure(entry.itemid, npc)
                        end

                        break
                    end
                end
            end
        end
    end
end
