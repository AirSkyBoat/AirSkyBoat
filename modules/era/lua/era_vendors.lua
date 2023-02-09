-----------------------------------
-- 75 Era Vendor Shops
-----------------------------------
require("scripts/globals/shop")
require("modules/module_utils")
require("scripts/globals/keyitems")

local m = Module:new("era_vendors")

xi = xi or {}
xi.eraShops = xi.eraShops or {}

-- --------------------------------
-- Bastok
-- --------------------------------
--Bastok Markets
xi.eraShops.Mjoll =
{
    17321,    16, 1, -- Silver Arrow
    17318,     3, 2, -- Wooden Arrow
    17320,     7, 3, -- Iron Arrow
    5069,    199, 3, -- Scroll of Dark Threnody
    5063,   1000, 3, -- Scroll of Ice Threnody
}

xi.eraShops.Charging_Chocobo =
{
    12801, 58738, 1,    -- Mythril Cuisses
    12929, 36735, 1,    -- Mythril Leggings
    12817, 14131, 2,    -- Brass Cuisses
    12800, 34776, 2,    -- Cuisses
    12945,  8419, 2,    -- Brass Greaves
    12928, 21859, 2,    -- Plate Leggings
    13080, 16891, 2,    -- Gorget
    12832,   191, 3,    -- Bronze Subligar
    12816,  1646, 3,    -- Scale Cuisses
    12960,   117, 3,    -- Bronze Leggings
    12944,   998, 3,    -- Scale Greaves
}

xi.eraShops.Zhikkom =
{
    16537, 31648, 1, -- Mythril Sword
    16545, 21535, 1, -- Broadsword
    16513, 11845, 1, -- Tuck
    16558, 62560, 1, -- Falchion
    16473,  5713, 1, -- Kukri
    16536,  7286, 2, -- Iron Sword
    16552,  4163, 2, -- Scimitar
    16466,  2231, 2, -- Knife
    16465,   150, 3, -- Bronze Knife
    16517,  9406, 3, -- Degens
    16551,   713, 3, -- Saparas
    16530,   618, 3, -- Xiphos
    16565,  1711, 3, -- Spatha
    16512,  3215, 3, -- Bilbo
}

xi.eraShops.Peritrage =
{
    17218, 14158, 1, -- Zamburak
    17298,   294, 1, -- Tathlum
    17217,  2166, 2, -- Crossbow
    17337,    22, 2, -- Mythril Bolt
    17216,   165, 3, -- Light Crossbow
    17336,     5, 3, -- Crossbow Bolt
}

xi.eraShops.Ciqala =
{
    16392,  4818, 1, -- Metal Knuckles
    17044,  6033, 1, -- Warhammer
    16643, 11285, 1, -- Battleaxe
    16705,  4186, 1, -- Greataxe
    16391,   828, 2, -- Brass Knuckles
    17043,  2083, 2, -- Brass Hammer
    16641,  1435, 2, -- Brass Axe
    16704,   618, 2, -- Butterfly Axe
    16390,   224, 3, -- Bronze Knuckles
    17042,   312, 3, -- Bronze Hammer
    16640,   290, 3, -- Bronze Axe
    17049,    47, 3, -- Maple Wand
    17088,    58, 3, -- Ash Staff
}

xi.eraShops.Hortense =
{
    4976,    64, 3, -- Scroll of Foe Requiem
    4977,   441, 3, -- Scroll of Foe Requiem II
    4978,  3960, 3, -- Scroll of Foe Requiem III
    4979,  6912, 3, -- Scroll of Foe Requiem IV
    4986,    37, 3, -- Scroll of Army's Paeon
    4987,   321, 3, -- Scroll of Army's Paeon II
    4988,  3240, 3, -- Scroll of Army's Paeon III
    4989,  5940, 3, -- Scroll of Army's Paeon IV
    5002,    21, 3, -- Scroll of Valor Minuet
    5003,  1101, 3, -- Scroll of Valor Minuet II
    5004,  5544, 3, -- Scroll of Valor Minuet III
}

xi.eraShops.Sororo =
{
    4641,  1165, 1, -- Diaga
    4662,  7025, 1, -- Stoneskin
    4664,   837, 1, -- Slow
    4610,   585, 2, -- Cure II
    4636,   140, 2, -- Banish
    4646,  1165, 2, -- Banishga
    4661,  2097, 2, -- Blink
    4608,    61, 3, -- Cure
    4615,  1363, 3, -- Curaga
    4622,   180, 3, -- Poisona
    4623,   324, 3, -- Paralyna
    4624,   990, 3, -- Blindna
    4606,    82, 3, -- Dia
    4651,   219, 3, -- Protect
    4656,  1584, 3, -- Shell
    4721, 29700, 3, -- Repose
    4663,   368, 3, -- Aquaveil
}

-- Port Bastok
xi.eraShops.Valeriano =
{
    4394,     10, -- Ginger Cookie
    17345,    43, -- Flute
    17347,   990, -- Piccolo
    5017,    585, -- Scroll of Scop's Operetta
    5018,  16920, -- Scroll of Puppet's Operetta
    5013,   2916, -- Scroll of Fowl Aubade
    5027,   2059, -- Scroll of Advancing March
    5072,  90000, -- Scroll of Goddess's Hymnus
}

xi.eraShops.Numa =
{
    12457, 5079, 1, -- Cotton Hachimaki
    12585, 7654, 1, -- Cotton Dogi
    12713, 4212, 1, -- Cotton Tekko
    12841, 6133, 1, -- Cotton Sitabaki
    12969, 3924, 1, -- Cotton Kyahan
    13205, 3825, 1, -- Silver Obi
    12456,  759, 2, -- Hachimaki
    12584, 1145, 2, -- Kenpogi
    12712,  630, 2, -- Tekko
    12840,  915, 2, -- Sitabaki
    12968,  584, 2, -- Kyahan
    704,    132, 2, -- Bamboo Stick
    605,    180, 3, -- Pickaxe
}

-- Metalworks
xi.eraShops.Nogga =
{
    17316,  675, 2, -- Bomb Arm
    17313, 1083, 3, -- Grenade
}

--Kazham
xi.eraShops.Toji_Mumosulah =
{
    112,    456, -- Yellow Jar
    13199,   95, -- Blood Stone
    13076, 3510, -- Fang Necklace
    13321, 1667, -- Bone Earring
    17351, 4747, -- Gemshorn
    16993,   69, -- Peeled Crayfish
    16998,   36, -- Insect Paste
    17876,  165, -- Fish Broth
    17880,  695, -- Seedbed Soil
    1021,   450, -- Hatchet
    4987,   328, -- Scroll of Army's Paeon II
    4988,  3312, -- Scroll of Army's Paeon III
    4964, 10549, -- Scroll of Monomi: Ichi
}

--Lower Jeuno
xi.eraShops.Amalasanda =
{
    704,     36, -- Bamboo Stick
    829,  35070, -- Silk Cloth
    626,     52, -- Black Pepper
    1240,  2000, -- Koma
    657,   8000, -- Tama-Hagane
    1415, 20000, -- Urushi
    4928,  1700, -- Katon: Ichi
    4934,  1700, -- Huton: Ichi
    4937,  1700, -- Doton: Ichi
    4943,  1700, -- Suiton: Ni
    1471,   190, -- Sticky Rice
    1554,   140, -- Turmeric
    1555,   317, -- Coriander
    1590,   700, -- Holy Basil
    1475,   244, -- Curry Powder
    5164,  2595, -- Ground Wasabi
    1652,   492, -- Rice Vinegar
    1161,    70, -- Uchitake
    1170,    70, -- Makibishi
    1176,    70, -- Mizu-Deppo
}

xi.eraShops.Creepstix =
{
    5023,   8160, -- Scroll of Goblin Gavotte
    4734,   7074, -- Scroll of Protectra II
    4738,   1700, -- Scroll of Shellra
}

xi.eraShops.Hasim =
{
    4668,   1760,    -- Scroll of Barfire
    4669,   3624,    -- Scroll of Barblizzard
    4670,    930,    -- Scroll of Baraero
    4671,    156,    -- Scroll of Barstone
    4672,   5754,    -- Scroll of Barthunder
    4673,    360,    -- Scroll of Barwater
    4674,   1760,    -- Scroll of Barfira
    4675,   3624,    -- Scroll of Barblizzara
    4676,    930,    -- Scroll of Baraera
    4677,    156,    -- Scroll of Barstonra
    4678,   5754,    -- Scroll of Barthundra
    4679,    360,    -- Scroll of Barwatera
    4680,    244,    -- Scroll of Barsleep
    4612,  23400,    -- Scroll of Cure IV
    4616,  11200,    -- Scroll of Curaga II
    4617,  19932,    -- Scroll of Curaga III
    4653,  32000,    -- Scroll of Protect III
}

xi.eraShops.Stinknix =
{
    943,    294, -- Poison Dust
    944,   1035, -- Venom Dust
    945,   2000, -- Paralysis Dust
    17320,    7, -- Iron Arrow
    17336,    5, -- Crossbow Bolt
    17313, 1107, -- Grenade
}

xi.eraShops.Susu =
{
    4647, 20000, -- Scroll of Banishga II
    4683,  2030, -- Scroll of Barblind
    4697,  2030, -- Scroll of Barblindra
    4682,   780, -- Scroll of Barparalyze
    4696,   780, -- Scroll of Barparalyzra
    4681,   400, -- Scroll of Barpoison
    4695,   400, -- Scroll of Barpoisonra
    4684,  4608, -- Scroll of Barsilence
    4698,  4608, -- Scroll of Barsilencera
    4680,   244, -- Scroll of Barsleep
    4694,   244, -- Scroll of Barsleepra
    4628,  8586, -- Scroll of Cursna
    4629, 35000, -- Scroll of Holy
    4625,  2330, -- Scroll of Silena
    4626, 19200, -- Scroll of Stona
    4627, 13300, -- Scroll of Viruna
}

xi.eraShops.Taza =
{
    4881, 10304, -- Scroll of Sleepga
    4658, 26244, -- Scroll of Shell III
    4735, 19200, -- Scroll of Protectra III
    4739, 14080, -- Scroll of Shellra II
    4740, 26244, -- Scroll of Shellra III
    4685, 15120, -- Scroll of Barpetrify
    4686,  9600, -- Scroll of Barvirus
    4699, 15120, -- Scroll of Barpetra
    4700,  9600, -- Scroll of Barvira
    4867, 18720, -- Scroll of Sleep II
    4769, 19932, -- Scroll of Stone III
    4779, 22682, -- Scroll of Water III
    4764, 27744, -- Scroll of Aero III
    4754, 33306, -- Scroll of Fire III
    4759, 39368, -- Scroll of Blizzard III
    4774, 45930, -- Scroll of Thunder III
}

--Nashmau
xi.eraShops.Mamaroon =
{
    4860,  27000,    -- Scroll of Stun
    4708,   5160,    -- Scroll of Enfire
    4709,   4098,    -- Scroll of Enblizzard
    4710,   2500,    -- Scroll of Enaero
    4711,   2030,    -- Scroll of Entone
    4712,   1515,    -- Scroll of Enthunder
    4713,   7074,    -- Scroll of Enwater
    4859,   9000,    -- Scroll of Shock Spikes
    2502,  29950,    -- White Puppet Turban
    2501,  29950,    -- Black Puppet Turban
}

xi.eraShops.Yoyoroon =
{
    2239,  4940,    -- Tension Spring
    2243,  4940,    -- Loudspeaker
    2246,  4940,    -- Accelerator
    2251,  4940,    -- Armor Plate
    2254,  4940,    -- Stabilizer
    2258,  4940,    -- Mana Jammer
    2262,  4940,    -- Auto-Repair Kit
    2266,  4940,    -- Mana Tank
    2240,  9925,    -- Inhibitor
    2242,  9925,    -- Mana Booster
    2247,  9925,    -- Scope
    2250,  9925,    -- Shock Absorber
    2255,  9925,    -- Volt Gun
    2260,  9925,    -- Stealth Screen
    2264,  9925,    -- Damage Gauge
    2268,  9925,    -- Mana Conserver
}

-- Norg
xi.eraShops.SolbyMaholby =
{
    17395,     9,    -- Lugworm
    4899,    450,    -- Earth Spirit Pact
}


-- Port Jeuno
xi.eraShops.Gekko =
{
    4150,  2387, -- Eye Drops
    4148,   290, -- Antidote
    4151,   720, -- Echo Drops
    4112,   837, -- Potion
    4128,  4445, -- Ether
    4365,   120, -- Rolanberry
    189,  36000, -- Autumn's End
    188,  31224, -- Acolyte's Grief
}

-- Rabao
xi.eraShops.Brave_Ox =
{
    4654,  77350, -- Protect IV
    4736,  73710, -- Protectra IV
    4868,  63700, -- Dispel
    4860,  31850, -- Stun
    4720,  31850, -- Flash
    4750, 546000, -- Reraise III
    4638,  78260, -- Banish III
    4701, 20092, -- Cura
    4702, 62192, -- Sacrifice
    4703, 64584, -- Esuna
    4704, 30967, -- Auspice
}

-- Tavnazian Safehold
xi.eraShops.MazuroOozuro =
{
    17005,   108,    -- Lufaise Fly
    17383,  2640,    -- Clothespole
    688,     200,    -- Arrowwood Log
    690,    7800,    -- Elm Log
}

-- Upper Jeuno
xi.eraShops.Antonia =
{
    17061,  6256,  -- Mythril Rod
    17027, 11232, -- Oak Cudgel
    17036, 18048, -- Mythril Mace
    17044,  6033,  -- Warhammer
    17098, 37440, -- Oak Pole
    16836, 44550, -- Halberd
    16774, 10596, -- Scythe
    17320,     7,    -- Iron Arrow
}

-- Windurst Waters
xi.eraShops.OrezEbrez =
{
    12466, 20000,1,     --Red Cap
    12458,  8972,1,     --Soil Hachimaki
    12455,  7026,1,     --Beetle Mask

    12472,   144,2,     --Circlet
    12465,  8024,2,     --Cotton Headgear
    12440,   396,2,     --Leather Bandana
    12473,  1863,2,     --Poet's Circlet
    12499, 14400,2,     --Flax Headband
    12457,  3272,2,     --Cotton Hachimaki
    12454,  3520,2,     --Bone Mask
    12474, 10924,2,     --Wool Hat

    12464,  1742,3,     --Headgear
    12456,   552,3,     --Hachimaki
    12498,  1800,3,     --Cotton Headband
    12448,   151,3,     --Bronze Cap
    12449,  1471,3,      --Brass Cap
}

-- Windurst Woods
xi.eraShops.Mono_Nchaa =
{
    17318,    3, 2, -- Wooden Arrow
    17308,   55, 2, -- Hawkeye
    17216,  165, 2, -- Light Crossbow
    17319,    4, 3, -- Bone Arrow
    17336,    5, 3, -- Crossbow Bolt
    5009,  2649, 3, -- Scroll of Hunter's Prelude
}


local lookupTable =
--[[
    Nation: {"nation",Zone,NPCName,customShopTable,nation,DIALOG_NAME}
    No Fame: {"nofame",Zone,NPCName,customShopTable,DIALOG_NAME}
    No Shop: {"none",Zone,NPCName}
    Standard: {"standard",Zone,NPCName,customShopTable,fameArea,DIALOG_NAME}
    Tenshodo: {"tenshodo",Zone,NPCName,customShopTable,fameArea,DIALOG_NAME}
--]]

-- TODO: Check if standard merchants are working with fame
{
    -- Bastok Markets
    {"nation", "Bastok_Markets", "Mjoll", xi.eraShops.Mjoll, xi.nation.BASTOK, "MJOLL_SHOP_DIALOG", 1},
    {"nation", "Bastok_Markets", "Charging_Chocobo", xi.eraShops.Charging_Chocobo, xi.nation.BASTOK, "CHARGINGCHOCOBO_SHOP_DIALOG", 1},
    {"nation", "Bastok_Markets", "Zhikkom", xi.eraShops.Zhikkom, xi.nation.BASTOK, "ZHIKKOM_SHOP_DIALOG", 1},
    {"nation", "Bastok_Markets", "Peritrage", xi.eraShops.Peritrage, xi.nation.BASTOK, "PERITRAGE_SHOP_DIALOG", 1},
    {"nation", "Bastok_Markets", "Ciqala", xi.eraShops.Ciqala, xi.nation.BASTOK, "CIQALA_SHOP_DIALOG", 1},
    {"nation", "Bastok_Markets", "Hortense", xi.eraShops.Hortense, xi.nation.BASTOK, "HORTENSE_SHOP_DIALOG", 1},
    {"nation", "Bastok_Markets", "Sororo", xi.eraShops.Sororo, xi.nation.BASTOK, "SORORO_SHOP_DIALOG", 1},
    -- Port Bastok
    {"standard", "Port_Bastok", "Valeriano", xi.eraShops.Valeriano, xi.quest.fame_area.BASTOK, "VALERIANO_SHOP_DIALOG", 1},
    {"nation", "Port_Bastok", "Numa", xi.eraShops.Numa, xi.nation.BASTOK, "NUMA_SHOP_DIALOG", 1},
    -- Kazham
    {"standard", "Kazham", "Toji_Mumosulah", xi.eraShops.Toji_Mumosulah, "TOJIMUMOSULAH_SHOP_DIALOG", 1},
    -- Lower Jeuno
    {"tenshodo", "Lower_Jeuno", "Amalasanda", xi.eraShops.Amalasanda, xi.quest.fame_area.NORG, "AMALASANDA_SHOP_DIALOG", 1},
    {"standard", "Lower_Jeuno", "Creepstix", xi.eraShops.Creepstix, "JUNK_SHOP_DIALOG", 1},
    {"standard", "Lower_Jeuno", "Hasim", xi.eraShops.Hasim, "WAAG_DEEG_SHOP_DIALOG", 1},
    {"standard", "Lower_Jeuno", "Susu", xi.eraShops.Susu, "WAAG_DEEG_SHOP_DIALOG", 1},
    {"standard", "Lower_Jeuno", "Stinknix", xi.eraShops.Stinknix, "JUNK_SHOP_DIALOG", 1},
    {"standard", "Lower_Jeuno", "Taza", xi.eraShops.Taza, "WAAG_DEEG_SHOP_DIALOG", 1},
    -- Mhaura
    {"none", "Mhaura", "Tya_Padolih", xi.settings.main.ENABLE_WOTG},
    -- Nashmau
    {"none", "Nashmau","Chichiroon"},
    {"nofame", "Nashmau", "Mamaroon", xi.eraShops.Mamaroon, "MAMAROON_SHOP_DIALOG", xi.settings.main.ENABLE_TOAU},
    {"nofame", "Nashmau", "Yoyoroon", xi.eraShops.Yoyoroon, "YOYOROON_SHOP_DIALOG", xi.settings.main.ENABLE_TOAU},
    -- Norg
    {"standard", "Norg", "Solby-Maholby", xi.eraShops.SolbyMaholby, xi.quest.fame_area.NORG, "SOLBYMAHOLBY_SHOP_DIALOG", 1},
    -- Port Jeuno
    {"standard", "Port_Jeuno", "Gekko", xi.eraShops.Gekko, "DUTY_FREE_SHOP_DIALOG", 1},
    {"none", "Port_Jeuno", "Kindlix", 1},
    {"none", "Port_Jeuno", "Pyropox",1},
    -- Rabao
    {"standard", "Rabao", "Brave_Ox", xi.eraShops.Brave_Ox, "BRAVEOX_SHOP_DIALOG", 1},
    -- Selbina
    {"none", "Selbina", "Falgima", xi.settings.main.ENABLE_WOTG},

    -- Tavnazian Safehold
    {"nofame", "Tavnazian_Safehold", "Mazuro-Oozuro", xi.eraShops.MazuroOozuro, "MAZUROOOZURO_SHOP_DIALOG", 1},
    -- Upper Jeuno
    {"standard", "Upper_Jeuno", "Antonia", xi.eraShops.Antonia, "VIETTES_SHOP_DIALOG", 1},
    -- Windurst Waters
    {"nation", "Windurst_Waters", "Orez-Ebrez", xi.eraShops.OrezEbrez, xi.nation.WINDURST, "OREZEBREZ_SHOP_DIALOG", 1},
    -- Windurst Woods
    {"nation", "Windurst_Woods", "Mono_Nchaa", xi.eraShops.Mono_Nchaa, xi.nation.WINDURST, "MONONCHAA_SHOP_DIALOG", 1},
    {"standard", "Windurst_Woods", "Valeriano", xi.eraShops.Valeriano, "VALERIANO_SHOP_DIALOG", 1},
}

for _, shop in pairs(lookupTable) do
    local ID = require(string.format("scripts/zones/%s/IDs", shop[2]))
    local onTrigger = string.format("xi.zones.%s.npcs.%s.onTrigger", shop[2], shop[3])
    if
    shop[1] == 'nation' and
    shop[7] == 1
    then
        m:addOverride(onTrigger,
        function(player, npc)
            player:showText(npc, ID.text[shop[6]])
            xi.shop.nation(player, shop[4], shop[5])
        end)
    elseif
        shop[1] =='nofame' and
        shop[7] == 1
    then
        m:addOverride(onTrigger,
        function(player, npc)
            player:showText(npc, ID.text[shop[5]])
            xi.shop.general(player, shop[4])
        end)
    elseif
        shop[1] == 'none' and
        shop[4] == 1
    then
        m:addOverride(onTrigger,
        function(player, npc)
        end)
    elseif
        shop[1] == 'standard' and
        shop[7] == 1
    then
        m:addOverride(onTrigger,
        function(player, npc)
            player:showText(npc, ID.text[shop[5]])
            xi.shop.general(player, shop[4])
        end)
    elseif
        shop[1] == 'tenshodo' and
        shop[7] == 1
    then
        m:addOverride(onTrigger,
        function(player, npc)
            if player:hasKeyItem(xi.ki.TENSHODO_MEMBERS_CARD) then
                player:showText(npc, ID.text[shop[6]])
                xi.shop.general(player, shop[4], shop[5])
            end
        end)
    end
end

return m



    


