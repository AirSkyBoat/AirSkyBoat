-----------------------------------
-- The Scarlet King
-- Chamber of Oracles KSNM30, Atropos Orb
-- !additem 1175
-----------------------------------
local chamberOfOraclesID = zones[xi.zone.CHAMBER_OF_ORACLES]
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.CHAMBER_OF_ORACLES,
    battlefieldId    = xi.battlefield.id.SCARLET_KING,
    maxPlayers       = 6,
    timeLimit        = utils.minutes(30),
    index            = 7,
    entryNpc         = 'SC_Entrance',
    exitNpc          = 'Shimmering_Circle',
    requiredItems    = { xi.item.ATROPOS_ORB, wearMessage = chamberOfOraclesID.text.A_CRACK_HAS_FORMED, wornMessage = chamberOfOraclesID.text.ORB_IS_CRACKED },
    armouryCrates    =
    {
        chamberOfOraclesID.mob.SECUTOR_XI_XXXII + 4,
        chamberOfOraclesID.mob.SECUTOR_XI_XXXII + 9,
        chamberOfOraclesID.mob.SECUTOR_XI_XXXII + 14,
    },
})

content:addEssentialMobs({ 'Purson' })

content.loot =
{
    {
        { item = 1116, weight = 1000 }, -- Manticore Hair
    },
    {
        { item = 1163, weight = 1000 }, -- Manticore Hide
    },
    {
        { item = 1110,  weight = 200 }, -- Beetle Blood
        { item = 17579, weight = 200 }, -- WWyvern Perch
        { item = 17825, weight = 200 }, -- Honebami
        { item = 17997, weight = 200 }, -- Argent Dagger
        { item = 17998, weight = 200 }, -- Thanatos Baselard
    },
    {
        { item = 4659,  weight = 250 }, -- Shell IV
        { item = 17577, weight = 150 }, -- Capricorn Staff
        { item = 17938, weight = 150 }, -- Woodville's Axe
        { item = 18048, weight = 150 }, -- King Maker
        { item = 18211, weight = 150 }, -- Gawain's Axe
        { item = 18372, weight = 150 }, -- Balan's Sword
    },
    {
        { item =  4174,  weight = 350 }, -- Vile Elixir
        { item =  4175,  weight = 100 }, -- Vile Elixir +1
        { item =  4613,  weight = 100 }, -- Cure V
        { item = 19025,  weight = 250 }, -- Pole Grip
        { item = 19026,  weight = 100 }, -- Spear Strap
        { item = 19027,  weight = 100 }, -- Claymore Grip
    },
    {
        { item = 645,  weight =  50 }, -- Chunk Of Darksteel Ore
        { item = 646,  weight =  50 }, -- Chunk Of Adaman Ore
        { item = 700,  weight = 100 }, -- Mahogany Log
        { item = 703,  weight = 100 }, -- Petrified Log
        { item = 738,  weight =  50 }, -- Chunk Of Platinum Ore
        { item = 739,  weight =  50 }, -- Chunk Of Orichalcum Ore
        { item = 745,  weight =  25 }, -- Gold Ingot
        { item = 746,  weight =  50 }, -- Chunk Of Gold Ore
        { item = 830,  weight =  25 }, -- Square Of Rainbow Cloth
        { item = 844,  weight = 100 }, -- Phoenix Feather
        { item = 1132, weight = 100 }, -- Square Of Raxa
        { item = 4172, weight = 100 }, -- Reraiser
        { item = 4173, weight =  50 }, -- Hi-reraiser
        { item = 4774, weight = 150 }, -- Thunder III
    },
    {
        { item = 0,    weight = 650 }, -- Nothing
        { item = 658,  weight = 100 }, -- Damascus Ingot
        { item = 836,  weight =  50 }, -- Square Of Damascene Cloth
        { item = 837,  weight =  50 }, -- Spool Of Malboro Fiber
        { item = 942,  weight =  50 }, -- Philosophers Stone
        { item = 1132, weight = 100 }, -- Square Of Raxa
    }
}

return content:register()
