-----------------------------------
-- Persists NM time of deaths to the database. They must be added to the list here
-- to get this extra behaviour.
-- This is useful if you don't want players rushing to NM spawns after a server
-- restart or a crash (or trying to force crashes/restarts to get NM pops)

-- TODO List:
-- Need to find a way to access linked/event based spawn NMs to persist them as well
-- For now though, they are commented out and will use their existing code

-- NOTE: All nmTODpersist calls should be accounted for with this module
-----------------------------------
require('modules/module_utils')
-----------------------------------
local m = Module:new('persist_nm_time_of_deaths')

local nmsToPersist =
{
    -- -- Arrapago Reef
    -- {
    --     'Arrapago_Reef',
    --     'Lamie_No9',
    --     function()
    --         -- Every 72 hours
    --         -- https://www.bg-wiki.com/ffxi/Lamie_No_9
    --         return 259200
    --     end
    -- },

    -- Attohwa Chasm
    {
        'Attohwa_Chasm',
        'Sekhmet',
        function()
            -- Every 60 - 90 minutes
            -- https://www.bg-wiki.com/ffxi/Sekhmet
            return math.random(3600, 5400)
        end
    },
    {
        'Attohwa_Chasm',
        'Tiamat',
        function()
            -- Every 3 - 5 days, 30 minute windows
            -- https://www.bg-wiki.com/ffxi/Tiamat
            return 259200 + math.random(0, 96) * 1800
        end
    },
    {
        'Attohwa_Chasm',
        'Xolotl',
        function()
            -- Every 21 - 24 hours
            -- https://www.bg-wiki.com/ffxi/Xolotl
            return math.random(75600, 86400)
        end
    },

    -- Batallia Downs
    {
        'Batallia_Downs',
        'Ahtu',
        function()
            -- Every 2 - 4 hours
            -- https://www.bg-wiki.com/ffxi/Ahtu
            return math.random(7200, 14400)
        end
    },
    -- {
    --     'Batallia_Downs',
    --     'Lumber_Jack',
    --     function()
    --         -- Every 21 - 24 hours
    --         -- TODO: Trigger Weeping Willow TOD from this
    --         --       Trigger despawn + respawn of Willow if not engage in 10 minutes
    --         -- https://www.bg-wiki.com/ffxi/Lumber_Jack
    --         return math.random(75600, 86400)
    --     end
    -- },
    {
        'Batallia_Downs',
        'Skirling_Liger',
        function()
            -- Every 60 minutes (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Skirling_Liger
            return 3600
        end
    },
    -- {
    --     'Batallia_Downs',
    --     'Weeping_Willow',
    --     function()
    --         -- Every 21 - 24 hours
    --         -- TODO: Needs to be tied to Lumber_Jack
    --         return math.random(75600, 86400)
    --     end
    -- },

    -- Beaucedine Glacier
    {
        'Beaucedine_Glacier',
        'Calcabrina',
        function()
            -- Every 90 - 100 minutes (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Calcabrina
            return math.random(5400, 6000)
        end
    },
    {
        'Beaucedine_Glacier',
        'Humbaba',
        function()
            -- Every 60-70 minutes (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Humbaba
            return math.random(3600, 4200)
        end
    },

    -- Bhaflau Thickets
    {
        'Bhaflau_Thickets',
        'Harvestman',
        function()
            -- Every 2 hours (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Harvestman
            return 7200
        end
    },

    -- Bibiki Bay
    {
        'Bibiki_Bay',
        'Shankha',
        function()
            -- Every 90 - 120 minutes
            -- https://www.bg-wiki.com/ffxi/Shankha
            return math.random(5400, 7200)
        end
    },

    -- Bostaunieux Oubliette
    {
        'Bostaunieux_Oubliette',
        'Bloodsucker',
        function()
            -- Every 72 hours
            -- https://www.bg-wiki.com/index.php?title=Bloodsucker_(Notorious_Monster)&oldid=46177
            return 259200
        end
    },
    {
        'Bostaunieux_Oubliette',
        'Drexerion_the_Condemned',
        function()
            -- Every 60 - 72 hours
            -- https://www.bg-wiki.com/ffxi/Drexerion_the_Condemned
            return math.random(216000, 259200)
        end
    },
    {
        'Bostaunieux_Oubliette',
        'Phanduron_the_Condemned',
        function()
            -- Every 60 - 72 hours
            -- https://www.bg-wiki.com/ffxi/Phanduron_the_Condemned
            return math.random(216000, 259200)
        end
    },

    -- Buburimu Peninsula
    {
        'Buburimu_Peninsula',
        'Wake_Warder_Wanda',
        function()
            -- Every 60 minutes
            -- https://www.bg-wiki.com/ffxi/Wake_Warder_Wanda
            return 3600
        end
    },

    -- Caedarva Mire
    {
        'Caedarva_Mire',
        'Aynu-kaysey',
        function()
            -- Every 2 hours
            -- https://www.bg-wiki.com/ffxi/Aynu-kaysey
            return 7200
        end
    },

    -- Cape Terrigan
    {
        'Cape_Terrigan',
        'Kreutzet',
        function()
            -- Every 9 - 12 hours
            -- https://www.bg-wiki.com/ffxi/Kreutzet
            return math.random(32400, 43200)
        end
    },

    -- Carpenter's Landing
    {
        'Carpenters_Landing',
        'Tempest_Tigon',
        function()
            -- Every 1 - 2 hours (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Tempest_Tigon
            return math.random(3600, 7200)
        end
    },

    -- Castle Oztroja
    -- {
    --     'Castle_Oztroja',
    --     'Tzee_Xicu_the_Manifest',
    --     function()
    --         -- Every 21 - 24 hours
    --         -- TODO: Trigger Yagudo Avatar TOD from this
    --         --       This is technically a lotto of Yagudo Avatar
    --         -- https://www.bg-wiki.com/ffxi/Tzee_Xicu_the_Manifest
    --         return math.random(75600, 86400)
    --     end
    -- },
    -- {
    --     'Castle_Oztroja',
    --     'Yagudo_Avatar',
    --     function()
    --         -- Every 21 - 24 hours
    --         -- TODO: Triggers Tzee Xicu Lottery
    --         -- https://www.bg-wiki.com/ffxi/Yagudo_Avatar
    --         return math.random(75600, 86400)
    --     end
    -- },

    -- Castle Oztroja [S]
    {
        'Castle_Oztroja_[S]',
        'Dee_Zelko_the_Esoteric',
        function()
            -- Every 4 - 6 hours (https://www.bg-wiki.com/ffxi/Category:Stronghold_Invasion)
            -- https://www.bg-wiki.com/ffxi/Dee_Zelko_the_Esoteric
            return math.random(14400, 21600)
        end
    },
    {
        'Castle_Oztroja_[S]',
        'Fleshgnasher',
        function()
            -- Every 4 - 6 hours (https://www.bg-wiki.com/ffxi/Category:Stronghold_Invasion)
            -- https://www.bg-wiki.com/ffxi/Fleshgnasher
            return math.random(14400, 21600)
        end
    },
    {
        'Castle_Oztroja_[S]',
        'Loo_Kutto_the_Pensive',
        function()
            -- Every 4 - 6 hours (https://www.bg-wiki.com/ffxi/Category:Stronghold_Invasion)
            -- https://www.bg-wiki.com/ffxi/Loo_Kutto_the_Pensive
            return math.random(14400, 21600)
        end
    },
    {
        'Castle_Oztroja_[S]',
        'Maa_Illmu_the_Bestower',
        function()
            -- Every 4 - 6 hours (https://www.bg-wiki.com/ffxi/Category:Stronghold_Invasion)
            -- https://www.bg-wiki.com/ffxi/Maa_Illmu_the_Bestower
            return math.random(14400, 21600)
        end
    },
    {
        'Castle_Oztroja_[S]',
        'Marquis_Forneus',
        function()
            -- Every 4 - 6 hours (https://www.bg-wiki.com/ffxi/Category:Stronghold_Invasion)
            -- https://www.bg-wiki.com/ffxi/Marquis_Forneus
            return math.random(14400, 21600)
        end
    },
    {
        'Castle_Oztroja_[S]',
        'Suu_Xicu_the_Cantabile',
        function()
            -- Every 4 - 6 hours (https://www.bg-wiki.com/ffxi/Category:Stronghold_Invasion)
            -- https://www.bg-wiki.com/ffxi/Suu_Xicu_the_Cantabile
            return math.random(14400, 21600)
        end
    },
    {
        'Castle_Oztroja_[S]',
        'Vee_Ladu_the_Titterer',
        function()
            -- Every 4 - 6 hours (https://www.bg-wiki.com/ffxi/Category:Stronghold_Invasion)
            -- https://www.bg-wiki.com/ffxi/Vee_Ladu_the_Titterer
            return math.random(14400, 21600)
        end
    },

    -- Castle Zvahl Baileys
    {
        'Castle_Zvahl_Baileys',
        'Duke_Haborym',
        function()
            -- Every 21 - 24 hours
            -- https://www.bg-wiki.com/ffxi/Duke_Haborym
            return math.random(75600, 86400)
        end
    },
    {
        'Castle_Zvahl_Baileys',
        'Grand_Duke_Batym',
        function()
            -- Every 21 - 24 hours
            -- https://www.bg-wiki.com/ffxi/Grand_Duke_Batym
            return math.random(75600, 86400)
        end
    },
    {
        'Castle_Zvahl_Baileys',
        'Likho',
        function()
            -- Every 90 - 120 minutes
            -- https://www.bg-wiki.com/ffxi/Likho
            return math.random(5400, 7200)
        end
    },
    {
        'Castle_Zvahl_Baileys',
        'Marquis_Allocen',
        function()
            -- Every 21 - 24 hours
            -- https://www.bg-wiki.com/ffxi/Marquis_Allocen
            return math.random(75600, 86400)
        end
    },
    {
        'Castle_Zvahl_Baileys',
        'Marquis_Amon',
        function()
            -- Every 21 - 24 hours
            -- https://www.bg-wiki.com/ffxi/Marquis_Amon
            return math.random(75600, 86400)
        end
    },

    -- Crawler's Nest
    {
        'Crawlers_Nest',
        'Aqrabuamelu',
        function()
            -- Every 120 minutes (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Aqrabuamelu
            return 7200
        end
    },
    {
        'Crawlers_Nest',
        'Dynast_Beetle',
        function()
            -- Every 90 - 120 minutes (Unverifed)
            -- https://ffxiclopedia.fandom.com/wiki/Dynast_Beetle
            return math.random(5400, 7200)
        end
    },

    -- East Ronfaure
    {
        'East_Ronfaure',
        'Rambukk',
        function()
            -- Every 15 - 60 minutes
            -- https://www.bg-wiki.com/ffxi/Rambukk
            return math.random(900, 3600)
        end
    },

    -- East Ronfaure [S]
    {
        'East_Ronfaure_[S]',
        'Melusine',
        function()
            -- Every 120 - 140 minutes (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Melusine
            return math.random(7200, 8400)
        end
    },
    {
        'East_Ronfaure_[S]',
        'Myradrosh',
        function()
            -- Every 90 - 100 minutes (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Myradrosh
            return math.random(5400, 6000)
        end
    },

    -- East Sarutabaruta
    {
        'East_Sarutabaruta',
        'Duke_Decapod',
        function()
            -- Every 60 - 70 minutes
            -- https://ffxiclopedia.fandom.com/wiki/Duke_Decapod
            return math.random(3600, 4200)
        end
    },

    -- Eastern Altepa Desert
    {
        'Eastern_Altepa_Desert',
        'Cactrot_Rapido',
        function()
            -- Every 2 - 3 days
            -- https://www.bg-wiki.com/ffxi/Cactrot_Rapido
            return math.random(172800, 259200)
        end
    },
    {
        'Eastern_Altepa_Desert',
        'Centurio_XII-I',
        function()
            -- Every 21 hours
            -- https://www.bg-wiki.com/ffxi/Centurio_XII-I
            return 75600
        end
    },
    {
        'Eastern_Altepa_Desert',
        'Nandi',
        function()
            -- Every 60 - 70 minutes (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Nandi
            return math.random(3600, 4200)
        end
    },

    -- Fei'Yin
    {
        'FeiYin',
        'Capricious_Cassie',
        function()
            -- Every 21 - 24 hours
            -- https://www.bg-wiki.com/index.php?title=Capricious_Cassie&oldid=23324
            return math.random(75600, 86400)
        end
    },

    -- Fort Ghelsba
    {
        'Fort_Ghelsba',
        'Kegpaunch_Doshgnosh',
        function()
            -- Every 60 - 90 minutes
            -- https://www.bg-wiki.com/ffxi/Kegpaunch_Doshgnosh
            return math.random(3600, 5400)
        end
    },
    {
        'Fort_Ghelsba',
        'Orcish_Panzer',
        function()
            -- Every 60 - 70 minutes
            -- https://www.bg-wiki.com/ffxi/Orcish_Panzer
            return math.random(3600, 4200)
        end
    },

    -- Garlaige Citadel
    {
        'Garlaige_Citadel',
        'Old_Two-Wings',
        function()
            -- Every 21 - 24 hours
            -- https://www.bg-wiki.com/ffxi/Old_Two-Wings
            return math.random(75600, 86400)
        end
    },
    {
        'Garlaige_Citadel',
        'Serket',
        function()
            -- Every 21 - 24 hours
            -- https://www.bg-wiki.com/ffxi/Serket
            return math.random(75600, 86400)
        end
    },
    {
        'Garlaige_Citadel',
        'Skewer_Sam',
        function()
            -- Every 21 - 24 hours
            -- https://www.bg-wiki.com/ffxi/Skewer_Sam
            return math.random(75600, 86400)
        end
    },

    -- Ghelsba Outpost
    {
        'Ghelsba_Outpost',
        'Orcish_Barricader',
        function()
            -- Every 60 - 90 minutes
            -- https://www.bg-wiki.com/ffxi/Orcish_Barricader
            return math.random(3600, 5400)
        end
    },

    -- Giddeus
    {
        'Giddeus',
        'Quu_Xijo_the_Illusory',
        function()
            -- Every 60 - 70 minutes (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Quu_Xijo_the_Illusory
            return math.random(3600, 4200)
        end
    },
    {
        'Giddeus',
        'Zhuu_Buxu_the_Silent',
        function()
            -- Every 20 minutes
            -- https://www.bg-wiki.com/index.php?title=Zhuu_Buxu_the_Silent&direction=next&oldid=100940
            return 1200
        end
    },

    -- Gusgen Mines
    {
        'Gusgen_Mines',
        'Juggler_Hecatomb',
        function()
            -- Every 21 - 24 hours
            -- https://www.bg-wiki.com/ffxi/Juggler_Hecatomb
            return math.random(75600, 86400)
        end
    },

    -- Gustav Tunnel
    {
        'Gustav_Tunnel',
        'Bune',
        function()
            -- Every 21 - 24 hours
            -- https://www.bg-wiki.com/ffxi/Bune
            return math.random(75600, 86400)
        end
    },

    -- Ifrit's Cauldron
    {
        'Ifrits_Cauldron',
        'Ash_Dragon',
        function()
            -- Every 3 - 5 days (Unverified)
            -- NOTE: Most refernces state ~72 hours, not 3-5 days
            -- https://www.bg-wiki.com/ffxi/Ash_Dragon
            return math.random(259200, 432000)
        end
    },

    -- Inner Horutoto Ruins
    {
        'Inner_Horutoto_Ruins',
        'Maltha',
        function()
            -- Every 60 - 90 minutes
            -- https://www.bg-wiki.com/ffxi/Maltha
            return math.random(3600, 5400)
        end
    },

    -- Jugner Forest
    -- {
    --     'Jugner_Forest',
    --     'Fraelissa',
    --     function()
    --         -- Every 60 minutes
    --         -- TODO: Should trigger lottery for Fradubio
    --         -- https://www.bg-wiki.com/ffxi/Fraelissa
    --         return 3600
    --     end
    -- },
    -- {
    --     'Jugner_Forest',
    --     'King_Arthro',
    --     function()
    --         -- Every 21 - 24 hours
    --         -- TODO: Trigger Knight Crab TOD from this
    --         --       Knight Crabs need to trigger Arthro
    --         -- https://www.bg-wiki.com/ffxi/King_Arthro
    --         return math.random(75600, 86400)
    --     end
    -- },
    -- {
    --     'Jugner_Forest',
    --     'Knight_Crab',
    --     function()
    --         -- Every 21 - 24 hours
    --         -- TODO: Triggers King Arthro spawn when all killed
    --         --       Needs to be tied to KA
    --         -- https://www.bg-wiki.com/ffxi/Knight_Crab
    --         return math.random(75600, 86400)
    --     end
    -- },
    {
        'Jugner_Forest',
        'Meteormauler_Zhagtegg',
        function()
            -- Every 21 hours
            -- https://www.bg-wiki.com/ffxi/Meteormauler_Zhagtegg
            return 75600
        end
    },
    {
        'Jugner_Forest',
        'Sappy_Sycamore',
        function()
            -- Every 60 - 70 minutes
            -- https://ffxiclopedia.fandom.com/wiki/Sappy_Sycamore
            return math.random(3600, 4200)
        end
    },

    -- King Ranperre's Tomb
    {
        'King_Ranperres_Tomb',
        'Barbastelle',
        function()
            -- Every 50 - 90 minutes
            -- https://www.bg-wiki.com/ffxi/Barbastelle
            return math.random(3000, 5400)
        end
    },
    -- {
    --     'King_Ranperres_Tomb',
    --     'Cemetery_Cherry',
    --     function()
    --         -- Every 21 - 24 hours
    --         -- TODO: Trigger Cherry Sappling TOD from this
    --         --       Cherry Sapplings need to trigger Cemetery Cherry
    --         -- https://www.bg-wiki.com/ffxi/Cemetery_Cherry
    --         return math.random(75600, 86400)
    --     end
    -- },
    {
        'King_Ranperres_Tomb',
        'Vrtra',
        function()
            -- Every 3 - 5 days, 30 minute windows
            -- https://www.bg-wiki.com/ffxi/Vrtra
            return 259200 + math.random(0, 96) * 1800
        end
    },

    -- Konschtat Highlands
    {
        'Konschtat_Highlands',
        'Bendigeit_Vran',
        function()
            -- Once per Night Cycle (17:00 - 5:00), New Moon
            -- NOTE: Setting to 45 minutes to limit spawns
            -- https://www.bg-wiki.com/ffxi/Bendigeit_Vran
            return 2700
        end
    },
    {
        'Konschtat_Highlands',
        'Ghillie_Dhu',
        function()
            -- Every 60 - 70 minutes (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Ghillie_Dhu
            return math.random(3600, 4200)
        end
    },
    {
        'Konschtat_Highlands',
        'Haty',
        function()
            -- Once per Night Cycle (17:00 - 5:00), Full Moon
            -- NOTE: Setting to 45 minute sto limit spawns
            -- https://ffxiclopedia.fandom.com/wiki/Haty
            return 2700
        end
    },
    {
        'Konschtat_Highlands',
        'Highlander_Lizard',
        function()
            -- Every 20 - 30 minutes
            -- https://www.bg-wiki.com/ffxi/Highlander_Lizard
            return math.random(1200, 1800)
        end
    },

    -- Korroloka Tunnel
    {
        'Korroloka_Tunnel',
        'Thoon',
        function()
            -- Every 1 - 2 hours
            -- https://www.bg-wiki.com/ffxi/Thoon
            return math.random(3600, 7200)
        end
    },

    -- Kuftal Tunnel
    {
        'Kuftal_Tunnel',
        'Guivre',
        function()
            -- Every 21 - 24 hours
            -- https://www.bg-wiki.com/ffxi/Guivre
            return math.random(75600, 86400)
        end
    },

    -- La Theine Plateau
    {
        'La_Theine_Plateau',
        'Slumbering_Samwell',
        function()
            -- Every 60 - 70 minutes (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Slumbering_Samwell?oldid=1401714
            return math.random(3600, 4200)
        end
    },

    -- Labyrinth of Onzozo
    {
        'Labyrinth_of_Onzozo',
        'Mysticmaker_Profblix',
        function()
            -- Every 120 to 150 minutes, 5 minute windows (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Mysticmaker_Profblix
            return 7200 + math.random(0, 6) * 300
        end
    },

    -- Lufaise Meadows
    -- {
    --     'Lufaise_Meadows',
    --     'Padfoot',
    --     function()
    --         -- Every 21 to 24 hours
    --         -- TODO: Only if real Padfoot, then depop and set TOD for all Clones
    --         -- https://www.bg-wiki.com/ffxi/Padfoot
    --         return math.random(75600, 86400)
    --     end
    -- },
    {
        'Manaclipper',
        'Zoredonite',
        function()
            -- Every 12 hours (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Zoredonite
            return 43200
        end
    },

    -- Maze of Shakhrami
    -- {
    --     'Maze_of_Shakhrami',
    --     'Argus',
    --     function()
    --         -- Every 18 - 30 hours
    --         -- TODO: Needs to be tied to Leech King TOD
    --         -- https://www.bg-wiki.com/index.php?title=Argus&oldid=312911
    --         return math.random(64800, 108000)
    --     end
    -- },
    -- {
    --     'Maze_of_Shakhrami',
    --     'Leech_King',
    --     function()
    --         -- Every 18 - 30 hours
    --         -- TODO: Needs to be tied to Argus TOD
    --         -- https://www.bg-wiki.com/index.php?title=Leech_King&oldid=314846
    --         return math.random(64800, 108000)
    --     end
    -- },

    -- Meriphataud Mountains
    {
        'Meriphataud_Mountains',
        'Chonchon',
        function()
            -- Every 60 - 90 minutes
            -- https://www.bg-wiki.com/ffxi/Chonchon
            return math.random(3600, 5400)
        end
    },
    {
        'Meriphataud_Mountains',
        'Coo_Keja_the_Unseen',
        function()
            -- Every 21 hours
            -- https://www.bg-wiki.com/ffxi/Coo_Keja_the_Unseen
            return 75600
        end
    },
    {
        'Meriphataud_Mountains',
        'Waraxe_Beak',
        function()
            -- Every 21 - 24 hours
            -- https://www.bg-wiki.com/ffxi/Waraxe_Beak
            return math.random(75600, 86400)
        end
    },

    -- Misareaux Coast
    -- {
    --     'Misareaux_Coast',
    --     'Odqan',
    --     function()
    --         -- Every 2 - 5 hours
    --         -- TODO: Also a lottery of cluster bombs
    --         -- https://ffxiclopedia.fandom.com/wiki/Odqan
    --         return math.random(7200, 18000)
    --     end
    -- },

    -- Monastic Cavern
    -- {
    --     'Monastic_Cavern',
    --     'Orcish_Overlord',
    --     function()
    --         -- Every 21 - 24 hours
    --         -- TODO: Triggers Overlord Bakgodek Lottery
    --         -- https://www.bg-wiki.com/ffxi/Orcish_Overlord
    --         return math.random(75600, 86400)
    --     end
    -- },
    -- {
    --     'Monastic_Cavern',
    --     'Overlord_Bakgodek',
    --     function()
    --         -- Every 21 - 24 hours
    --         -- TODO: Trigger Orcish Overlord TOD from this
    --         --       This is technically a lotto of Orcish Overlord
    --         -- https://www.bg-wiki.com/ffxi/Overlord_Bakgodek
    --         return math.random(75600, 86400)
    --     end
    -- },

    -- North Gustaberg
    {
        'North_Gustaberg',
        'Bedrock_Barry',
        function()
            -- Every 60 minutes (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Bedrock_Barry
            return 3600
        end
    },

    -- Ordelle's Caves
    {
        'Ordelles_Caves',
        'Morbolger',
        function()
            -- Every 21 - 24 hours
            -- https://www.bg-wiki.com/index.php?title=Morbolger&oldid=315089
            return math.random(75600, 86400)
        end
    },

    -- Outer Horutoto Ruins
    {
        'Outer_Horutoto_Ruins',
        'Legalox_Heftyhind',
        function()
            -- Every 60 - 90 minutes
            -- https://www.bg-wiki.com/index.php?title=Legalox_Heftyhind&direction=next&oldid=127669
            return math.random(3600, 5400)
        end
    },

    -- Palborough Mines
    {
        'Palborough_Mines',
        'NoMho_Crimsonarmor',
        function()
            -- Every 21 - 24 hours
            -- https://www.bg-wiki.com/ffxi/No%27Mho_Crimsonarmor
            return math.random(75600, 86400)
        end
    },
    {
        'Palborough_Mines',
        'QuVho_Deathhurler',
        function()
            -- Every 60 - 70 minutes (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Qu%27Vho_Deathhurler
            return math.random(3600, 4200)
        end
    },

    -- Pashhow Marshlands
    {
        'Pashhow_Marshlands',
        'BoWho_Warmonger',
        function()
            -- Every 21 hours
            -- https://www.bg-wiki.com/ffxi/Bo%27Who_Warmonger
            return 75600
        end
    },
    {
        'Pashhow_Marshlands',
        'Toxic_Tamlyn',
        function()
            -- Every 60 minutes (Unverified)
            -- NOTE: Also requires Rainy Weather to spawn
            -- https://ffxiclopedia.fandom.com/wiki/Toxic_Tamlyn
            return 3600
        end
    },

    -- Phanauet Channel
    -- {
    --     'Phanauet_Channel',
    --     'Stubborn_Dredvodd',
    --     function()
    --         -- Every 125 - 130 hours (Unverified)
    --         -- https://ffxiclopedia.fandom.com/wiki/Stubborn_Dredvodd
    --         return math.random(450000, 468000)
    --     end
    -- },

    -- Phomiuna Aquaducts
    -- {
    --     'Phomiuna_Aqueducts',
    --     'Eba',
    --     function()
    --         -- Every 8 - 12 hours
    --         -- TODO: This is tied to Mahisha like Argus/Leech King
    --         -- https://www.bg-wiki.com/ffxi/Eba
    --         return math.random(28800, 43200)
    --     end
    -- },
    -- {
    --     'Phomiuna_Aqueducts',
    --     'Mahisha',
    --     function()
    --         -- Every 8 - 12 hours
    --         -- TODO: This is tied to Eba like Argus/Leech King
    --         -- https://www.bg-wiki.com/ffxi/Mahisha
    --         return math.random(28800, 43200)
    --     end
    -- },
    -- {
    --     'Phomiuna_Aqueducts',
    --     'Tres_Duendes',
    --     function()
    --         -- Every 21 - 24 hours
    --         -- TODO: Depop the Formor Black Mage in same Room on Spawn
    --         -- https://www.bg-wiki.com/ffxi/Tres_Duendes
    --         return math.random(75600, 86400)
    --     end
    -- },

    -- Promyvion - Dem
    {
        'Promyvion-Dem',
        'Satiator',
        function()
            -- Every 1 - 6 hours (Unverified)
            -- https://www.bg-wiki.com/ffxi/Satiator
            return math.random(3600, 21600)
        end
    },

    -- Promyvion - Holla
    {
        'Promyvion-Holla',
        'Cerebrator',
        function()
            -- Every 1 - 6 hours (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Cerebrator
            return math.random(3600, 21600)
        end
    },

    -- Promyvion - Mea
    {
        'Promyvion-Mea',
        'Coveter',
        function()
            -- Every 1 - 6 hours (Unverified)
            -- https://www.bg-wiki.com/ffxi/Coveter
            return math.random(3600, 21600)
        end
    },

    -- Qufim Island
    -- {
    --     'Qufim_Island',
    --     'Dosetsu_Tree',
    --     function()
    --         -- Every 21 hours
    --         -- https://www.bg-wiki.com/ffxi/Dosetsu_Tree
    --         return 75600
    --     end
    -- },

    -- Quicksand Caves
    {
        'Quicksand_Caves',
        'Antican_Consul',
        function()
            -- Every 21 - 24 hours
            -- https://www.bg-wiki.com/ffxi/Antican_Consul
            return math.random(75600, 86400)
        end
    },
    {
        'Quicksand_Caves',
        'Proconsul_XII',
        function()
            -- Every 2 hours (Unverified)
            -- https://www.bg-wiki.com/ffxi/Proconsul_XII
            return 7200
        end
    },

    -- Qulun Dome
    -- {
    --     'Qulun_Dome',
    --     'Diamond_Quadav',
    --     function()
    --         -- Every 21 - 24 hours
    --         -- TODO: Triggers Za'Dha Adamantking Lottery
    --         -- https://www.bg-wiki.com/ffxi/Diamond_Quadav
    --         return math.random(75600, 86400)
    --     end
    -- },
    -- {
    --     'Qulun_Dome',
    --     'ZaDha_Adamantking',
    --     function()
    --         -- Every 21 - 24 hours
    --         -- TODO: Trigger Diamond Quadav TOD from this
    --         --       This is technically a lotto of Diamond Quadav
    --         -- https://www.bg-wiki.com/ffxi/Za%27Dha_Adamantking
    --         return math.random(75600, 86400)
    --     end
    -- },

    -- Riverne-Site #A01
    -- {
    --     'Riverne-Site_A01',
    --     'Carmine_Dobsonfly',
    --     function()
    --         -- Every 21 - 24 hours
    --         -- TODO: Only after 10th fly dies should TOD be set for all flies
    --         -- https://www.bg-wiki.com/ffxi/Carmine_Dobsonfly
    --         return math.random(75600, 86400)
    --     end
    -- },

    -- Riverne-Site #B01
    {
        'Riverne-Site_B01',
        'Boroka',
        function()
            -- Every 21 - 24 hours
            -- https://www.bg-wiki.com/ffxi/Boroka
            return math.random(75600, 86400)
        end
    },

    -- Rolanberry Fields
    {
        'Rolanberry_Fields',
        'Simurgh',
        function()
            -- Every 21 - 24 hours
            -- https://www.bg-wiki.com/index.php?title=Simurgh&oldid=315897
            return math.random(75600, 86400)
        end
    },

    -- Ro'Maeve
    {
        'RoMaeve',
        'Shikigami_Weapon',
        function()
            -- Every 21 hours
            -- https://ffxiclopedia.fandom.com/wiki/Shikigami_Weapon
            return 75600
        end
    },

    -- Sauromugue Champaign
    {
        'Sauromugue_Champaign',
        'Roc',
        function()
            -- Every 21 - 24 hours
            -- https://www.bg-wiki.com/ffxi/Roc
            return math.random(75600, 86400)
        end
    },
    {
        'Sauromugue_Champaign',
        'Thunderclaw_Thuban',
        function()
            -- Every 90 - 120 minutes
            -- https://www.bg-wiki.com/ffxi/Thunderclaw_Thuban
            return math.random(5400, 7200)
        end
    },

    -- Sauromugue Champaign [S]
    {
        'Sauromugue_Champaign_[S]',
        'Coquecigrue',
        function()
            -- Every 2 - 4 hours (Unverified)
            -- https://www.bg-wiki.com/ffxi/Coquecigrue
            return math.random(7200, 14400)
        end
    },

    -- South Gustaberg
    {
        'South_Gustaberg',
        'Tococo',
        function()
            -- Every 60 - 70 minutes
            -- https://www.bg-wiki.com/ffxi/Tococo
            return math.random(3600, 4200)
        end
    },

    -- Tahrongi Canyon
    {
        'Tahrongi_Canyon',
        'Habrok',
        function()
            -- Every 20 minutes (Unverified)
            -- NOTE: Requires Wind Weather for spawn
            -- https://ffxiclopedia.fandom.com/wiki/Habrok
            return 1200
        end
    },

    -- The Boyahda Tree
    {
        'The_Boyahda_Tree',
        'Ancient_Goobbue',
        function()
            -- Every 21 - 24 hours
            -- https://www.bg-wiki.com/ffxi/Ancient_Goobbue
            return math.random(75600, 86400)
        end
    },

    -- The Eldieme Necropolis
    -- {
    --     'The_Eldieme_Necropolis',
    --     'Anemone',
    --     function()
    --         -- Every 21 - 24 hours
    --         -- https://ffxiclopedia.fandom.com/wiki/Anemone
    --         return math.random(75600, 86400)
    --     end
    -- },

    -- The Sanctuary of Zi'Tah
    {
        'The_Sanctuary_of_ZiTah',
        'Elusive_Edwin',
        function()
            -- Every 90 - 120 minutes
            -- https://www.bg-wiki.com/ffxi/Elusive_Edwin
            return math.random(5400, 7200)
        end
    },
    {
        'The_Sanctuary_of_ZiTah',
        'Huwasi',
        function()
            -- Every 2 hours
            -- https://www.bg-wiki.com/ffxi/Huwasi
            return 7200
        end
    },

    -- The Shrine of Ru'Avitau
    {
        'The_Shrine_of_RuAvitau',
        'Faust',
        function()
            -- Every 3 - 6 hours
            -- https://www.bg-wiki.com/ffxi/Faust
            return math.random(10800, 21600)
        end
    },
    {
        'The_Shrine_of_RuAvitau',
        'Mother_Globe',
        function()
            -- Every 3 - 6 hours
            -- https://ffxiclopedia.fandom.com/wiki/Mother_Globe
            return math.random(10800, 21600)
        end
    },

    -- Toraimorai Canal
    {
        'Toraimorai_Canal',
        'Brazen_Bones',
        function()
            -- Every 2 - 4 hours (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Brazen_Bones
            return math.random(7200, 14400)
        end
    },
    {
        'Toraimorai_Canal',
        'Oni_Carcass',
        function()
            -- Every 21 - 24 hours
            -- https://www.bg-wiki.com/ffxi/Oni_Carcass
            return math.random(75600, 86400)
        end
    },

    -- Uleguerand Range
    {
        'Uleguerand_Range',
        'Jormungand',
        function()
            -- Every 3 - 5 days, 30 minute windows
            -- https://www.bg-wiki.com/ffxi/Jormungand
            return 259200 + math.random(0, 96) * 1800
        end
    },
    {
        'Uleguerand_Range',
        'Mountain_Worm',
        function()
            -- Every 21 - 24 hours (Unverified)
            -- https://www.bg-wiki.com/ffxi/Mountain_Worm_(NM)
            return math.random(75600, 86400)
        end
    },

    -- Upper Delkfutt's Tower
    {
        'Upper_Delkfutts_Tower',
        'Alkyoneus',
        function()
            -- Every 21 - 24 hours
            -- https://ffxiclopedia.fandom.com/wiki/Alkyoneus?oldid=195005
            return math.random(75600, 86400)
        end
    },
    {
        'Upper_Delkfutts_Tower',
        'Pallas',
        function()
            -- Every 21 - 24 hours
            -- https://ffxiclopedia.fandom.com/wiki/Pallas?direction=prev&oldid=203558
            return math.random(75600, 86400)
        end
    },

    -- Valkurm Dunes
    {
        'Valkurm_Dunes',
        'Hippomaritimus',
        function()
            -- Every 60 - 90 minutes (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Hippomaritimus
            return math.random(3600, 5400)
        end
    },
    {
        'Valkurm_Dunes',
        'Metal_Shears',
        function()
            -- Every 60 - 70 minutes
            -- https://www.bg-wiki.com/ffxi/Metal_Shears
            return math.random(3600, 4200)
        end
    },

    -- VeLugannon Palace
    {
        'VeLugannon_Palace',
        'Zipacna',
        function()
            -- Every 3 - 4 hours (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Zipacna
            return math.random(10800, 14400)
        end
    },

    -- Vunkerl Inlet [S]
    {
        'Vunkerl_Inlet_[S]',
        'Warabouc',
        function()
            -- Every 120 - 130 minutes (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Warabouc
            return math.random(7200, 7800)
        end
    },

    -- Wajaom Woodlands
    {
        'Wajaom_Woodlands',
        'Gharial',
        function()
            -- Every 2 hours (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Gharial
            return 7200
        end
    },

    -- West Ronfaure
    {
        'West_Ronfaure',
        'Amanita',
        function()
            -- Every 60 - 70 minutes
            -- https://www.bg-wiki.com/ffxi/Amanita
            return math.random(3600, 4200)
        end
    },

    -- West Sarutabaruta
    {
        'West_Sarutabaruta',
        'Numbing_Norman',
        function()
            -- Every 60 - 70 minutes (Unverified)
            -- https://www.bg-wiki.com/ffxi/Numbing_Norman
            return math.random(3600, 4200)
        end
    },

    -- Western Altepa Desert
    {
        'Western_Altepa_Desert',
        'King_Vinegarroon',
        function()
            -- Every 21 hours (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/King_Vinegarroon
            return 75600
        end
    },

    -- Xarcabard
    {
        'Xarcabard',
        'Duke_Focalor',
        function()
            -- Every 2 hours
            -- https://www.bg-wiki.com/index.php?title=Duke_Focalor&direction=next&oldid=127242
            return 7200
        end
    },

    -- Yhoator Jungle
    {
        'Yhoator_Jungle',
        'Bisque-heeled_Sunberry',
        function()
            -- Every 1 - 2 hours
            -- https://www.bg-wiki.com/ffxi/Bisque-heeled_Sunberry
            return math.random(3600, 7200)
        end
    },
    {
        'Yhoator_Jungle',
        'Bright-handed_Kunberry',
        function()
            -- Every 21 hours
            -- https://www.bg-wiki.com/ffxi/Bright-handed_Kunberry
            return 75600
        end
    },
    {
        'Yhoator_Jungle',
        'Powderer_Penny',
        function()
            -- Every 90 - 120 minutes (Unverified)
            -- https://ffxiclopedia.fandom.com/wiki/Powderer_Penny
            return math.random(5400, 7200)
        end
    },
    {
        'Yhoator_Jungle',
        'Woodland_Sage',
        function()
            -- Every 21 - 24 hours
            -- https://www.bg-wiki.com/ffxi/Woodland_Sage
            return math.random(75600, 86400)
        end
    },

    -- Yuhtunga Jungle
    -- {
    --     'Yhoator_Jungle',
    --     'Bayawak',
    --     function()
    --         -- Every 90 - 120 minutes
    --         -- https://www.bg-wiki.com/ffxi/Bayawak
    --         return math.random(5400, 7200)
    --     end
    -- },
    {
        'Yuhtunga_Jungle',
        'Koropokkur',
        function()
            -- Every 60 - 90 minutes
            -- https://www.bg-wiki.com/ffxi/Koropokkur
            return math.random(3600, 5400)
        end
    },
    {
        'Yuhtunga_Jungle',
        'Meww_the_Turtlerider',
        function()
            -- Every 21 hours
            -- https://www.bg-wiki.com/ffxi/Meww_the_Turtlerider
            return 75600
        end
    },
    {
        'Yuhtunga_Jungle',
        'Pyuu_the_Spatemaker',
        function()
            -- Every 90 - 120 minutes
            -- https://www.bg-wiki.com/ffxi/Pyuu_the_Spatemaker
            return math.random(5400, 7200)
        end
    },
}

-- NOTE: At the time we iterate over these entries, the Lua zone and mob objects won't be ready,
--     : so we deal with everything as strings for now.
for _, entry in pairs(nmsToPersist) do
    local zoneName    = entry[1]
    local mobName     = entry[2]
    local varName     = '[Respawn]' .. mobName
    local respawnFunc = entry[3]

    m:addOverride(string.format('xi.zones.%s.mobs.%s.onMobDespawn', zoneName, mobName),
    function(mob)
        super(mob)

        local respawn = respawnFunc()
        mob:setRespawnTime(respawn)
        SetServerVariable(varName, (os.time() + respawn))
        print(string.format('Writing respawn time to server vars: %s %i', varName, respawn))
    end)

    m:addOverride(string.format('xi.zones.%s.Zone.onInitialize', zoneName),
    function(zone)
        super(zone)

        local mob = zone:queryEntitiesByName(mobName)[1]
        local respawn = GetServerVariable(varName)
        print(string.format('Getting respawn time from server vars: %s %i', varName, respawn))

        if os.time() < respawn then
            UpdateNMSpawnPoint(mob:getID())
            mob:setRespawnTime(respawn - os.time())
        else
            SpawnMob(mob:getID())
        end
    end)
end

return m
