-----------------------------------
-- ENM: You Are What You Eat
-- Spire of Dem
-----------------------------------
require('scripts/missions/cop/helpers')
local spireOfDemID = zones[xi.zone.SPIRE_OF_DEM]
-----------------------------------

local content = Battlefield:new({
    zoneId        = xi.zone.SPIRE_OF_DEM,
    battlefieldId = xi.battlefield.id.YOU_ARE_WHAT_YOU_EAT,
    maxPlayers    = 18,
    levelCap      = 30,
    timeLimit     = utils.minutes(30),
    index         = 1,
    entryNpc      = '_0j0',
    exitNpcs      = { '_0j1', '_0j2', '_0j3' },
    requiredKeyItems = { xi.ki.CENSER_OF_ANTIPATHY, message = spireOfDemID.text.THE_PARTY_WILL_BE_REMOVED + 8 },
    grantXP = 1500,
    armouryCrates =
    {
        spireOfDemID.mob.PROGENERATOR + 20,
        spireOfDemID.mob.PROGENERATOR + 26,
        spireOfDemID.mob.PROGENERATOR + 32,
    },
})

function content:entryRequirement(player, npc, isRegistrant, trade)
    local currentRequirements = not player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_MOTHERCRYSTALS)
    return currentRequirements
end

function content:checkSkipCutscene(player)
    return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_MOTHERCRYSTALS)
end

content:addEssentialMobs({ 'Ingester' })

content.groups =
{
    {
        mobs = { 'Ingester' },
        superlink = true,
        spawned = true,
        death = utils.bind(content.handleAllMonstersDefeated, content),
    },
    {
        mobs = { 'Neosatiator' },
        superlink = true,
        spawned = false,
    },
    {
        mobs = { 'Neogorger' },
        superlink = true,
        spawned = false,
    },
    {
        mobs = { 'Neoingester' },
        superlink = true,
        spawned = false,
    },
    {
        mobs = { 'Wanderer' },
        superlink = true,
        spawned = false,
    },
}

content.loot =
{
    {
        { item =    0, weight = 200 }, -- Nothing
        { item = 5287, weight = 100 }, -- Bitter Cluster
        { item = 5286, weight = 100 }, -- Burning Cluster
        { item = 5288, weight = 100 }, -- Fleeting Cluster
        { item = 5293, weight = 100 }, -- Malevolent Cluster
        { item = 5289, weight = 100 }, -- Profane Cluster
        { item = 5292, weight = 100 }, -- Radiant Cluster
        { item = 5291, weight = 100 }, -- Somber Cluster
        { item = 5290, weight = 100 }, -- Startling Cluster
    },
    {
        { item =    0, weight = 200 }, -- Nothing
        { item = 5287, weight = 100 }, -- Bitter Cluster
        { item = 5286, weight = 100 }, -- Burning Cluster
        { item = 5288, weight = 100 }, -- Fleeting Cluster
        { item = 5293, weight = 100 }, -- Malevolent Cluster
        { item = 5289, weight = 100 }, -- Profane Cluster
        { item = 5292, weight = 100 }, -- Radiant Cluster
        { item = 5291, weight = 100 }, -- Somber Cluster
        { item = 5290, weight = 100 }, -- Startling Cluster
    },
    {
        { item =    0, weight = 200 }, -- Nothing
        { item = 5287, weight = 100 }, -- Bitter Cluster
        { item = 5286, weight = 100 }, -- Burning Cluster
        { item = 5288, weight = 100 }, -- Fleeting Cluster
        { item = 5293, weight = 100 }, -- Malevolent Cluster
        { item = 5289, weight = 100 }, -- Profane Cluster
        { item = 5292, weight = 100 }, -- Radiant Cluster
        { item = 5291, weight = 100 }, -- Somber Cluster
        { item = 5290, weight = 100 }, -- Startling Cluster
    },
    {
        { item =    0, weight = 500 }, -- Nothing
        { item = 1800, weight = 100 }, -- Violent Vision (Buckler Earring)
        { item = 1803, weight = 100 }, -- Painful Vision (Dark Earring)
        { item = 1805, weight = 100 }, -- Timorous Vision (Enfeebling Earring)
        { item = 1808, weight = 100 }, -- Brilliant Vision (Summoning earring)
        { item = 1811, weight = 100 }, -- Venerable Vision (String Earring)
    },
}

return content:register()
