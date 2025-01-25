-----------------------------------
-- Cactuar Suave
-- Chamber of Oracles KSNM30, Clotho Orb
-- !additem 1175
-----------------------------------
local chamberOfOraclesID = zones[xi.zone.CHAMBER_OF_ORACLES]
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.CHAMBER_OF_ORACLES,
    battlefieldId    = xi.battlefield.id.CACTUAR_SUAVE,
    maxPlayers       = 6,
    timeLimit        = utils.minutes(30),
    index            = 5,
    entryNpc         = 'SC_Entrance',
    exitNpc          = 'Shimmering_Circle',
    requiredItems    = { xi.item.CLOTHO_ORB, wearMessage = chamberOfOraclesID.text.A_CRACK_HAS_FORMED, wornMessage = chamberOfOraclesID.text.ORB_IS_CRACKED },
    armouryCrates    =
    {
        chamberOfOraclesID.mob.SECUTOR_XI_XXXII + 4,
        chamberOfOraclesID.mob.SECUTOR_XI_XXXII + 9,
        chamberOfOraclesID.mob.SECUTOR_XI_XXXII + 14,
    },
})

content:addEssentialMobs({ 'Sabotender_Campeon', 'Sabotender_Amante' })

content.loot =
{
    {
        { item = 916,  weight = 700 }, -- Cactuar Needle
        { item = 1236, weight = 250 }, -- Cactus Stems
        { item = 1592, weight =  50 }, -- Cactuar Root
    },
    {
        { item = 15152, weight = 250 }, -- Cactuar Ribbon
        { item = 17577, weight = 250 }, -- Capricorn staff
        { item = 17997, weight = 250 }, -- Argent Dagger
        { item = 18372, weight = 250 }, -- Balan's Sword
    },
    {
        { item = 17246, weight = 200 }, -- Ziska's Crossbow
        { item = 17825, weight = 200 }, -- Honebami
        { item = 17790, weight = 200 }, -- Unji
        { item = 17999, weight = 200 }, -- Taillefer's Dagger
        { item = 18089, weight = 200 }, -- Schiltron Spear
    },
    {
        { item = 644,  weight = 50 }, -- Chunk Of Mythril Ore
        { item = 645,  weight = 50 }, -- Chunk Of Darksteel Ore
        { item = 700,  weight = 50 }, -- Mahogany Log
        { item = 702,  weight = 50 }, -- Ebony Log
        { item = 703,  weight = 50 }, -- Petrified Log
        { item = 823,  weight = 50 }, -- Spool Of Gold Thread
        { item = 830,  weight = 50 }, -- Square Of Rainbow Cloth
        { item = 844,  weight = 50 }, -- Phoenix Feather
        { item = 866,  weight = 50 }, -- Handful Of Wyvern Scales
        { item = 887,  weight = 50 }, -- Coral Fragment
        { item = 895,  weight = 50 }, -- Ram Horn
        { item = 902,  weight = 50 }, -- Demon Horn
        { item = 942,  weight = 50 }, -- Philosophers Stone
        { item = 1465, weight = 50 }, -- Slab Of Granite
        { item = 1132, weight = 50 }, -- Square Of Raxa
        { item = 4174, weight = 50 }, -- Vile Elixir
        { item = 4175, weight = 50 }, -- Vile Elixir +1
        { item = 4613, weight = 50 }, -- Cure V
        { item = 4659, weight = 50 }, -- Shell IV
        { item = 4774, weight = 50 }, -- Thunder III
    },
    {
        { item = 0,    weight = 250 }, -- Nothing
        { item = 658,  weight = 100 }, -- Damascus Ingot
        { item = 836,  weight = 150 }, -- Square Of Damascene Cloth
        { item = 837,  weight = 100 }, -- Spool Of Malboro Fiber
        { item = 942,  weight = 100 }, -- Philosophers Stone
        { item = 844,  weight =  50 }, -- Phoenix Feather
        { item = 1132, weight = 250 }, -- Square Of Raxa
    },
}

return content:register()
