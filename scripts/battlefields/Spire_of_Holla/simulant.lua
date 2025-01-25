-----------------------------------
-- ENM: Simulant
-- Spire of Holla
-----------------------------------
require('scripts/missions/cop/helpers')
local spireOfDemID = zones[xi.zone.SPIRE_OF_HOLLA]
-----------------------------------

local content = Battlefield:new({
    zoneId        = xi.zone.SPIRE_OF_HOLLA,
    battlefieldId = xi.battlefield.id.SIMULANT,
    maxPlayers    = 18,
    levelCap      = 30,
    timeLimit     = utils.minutes(30),
    index         = 1,
    entryNpc      = '_0j0',
    exitNpcs      = { '_0j1', '_0j2', '_0j3' },
    requiredKeyItems = { xi.ki.CENSER_OF_ABANDONMENT, message = spireOfDemID.text.THE_PARTY_WILL_BE_REMOVED + 8 },
    grantXP = 1500,
    armouryCrates =
    {
        spireOfDemID.mob.WREAKER + 7,
        spireOfDemID.mob.WREAKER + 12,
        spireOfDemID.mob.WREAKER + 17,
    },
})

function content:entryRequirement(player, npc, isRegistrant, trade)
    local currentRequirements = not player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_MOTHERCRYSTALS)
    return currentRequirements
end

function content:checkSkipCutscene(player)
    return player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_MOTHERCRYSTALS)
end

content:addEssentialMobs({ 'Cogitator' })

content.groups =
{
    {
        mobs = { 'Cogitator' },
        superlink = true,
        spawned = true,
        death = utils.bind(content.handleAllMonstersDefeated, content),
    },
    {
        mobs = { 'Weeper' },
        superlink = true,
        spawned = false,
    },
}

content.loot =
{
    {
        { item =    0, weight = 200 }, --  Nothing
        { item = 5287, weight = 100 }, --  Bitter Cluster
        { item = 5286, weight = 100 }, --  Burning Cluster
        { item = 5288, weight = 100 }, --  Fleeting Cluster
        { item = 5289, weight = 100 }, --  Profane Cluster
        { item = 5290, weight = 100 }, --  Startling Cluster
        { item = 5291, weight = 100 }, --  Somber Cluster
        { item = 5292, weight = 100 }, --  Radiant Cluster
        { item = 5293, weight = 100 }, --  Malevolent Cluster
    },
    {
        { item =    0, weight = 200 }, --  Nothing
        { item = 5287, weight = 100 }, --  Bitter Cluster
        { item = 5286, weight = 100 }, --  Burning Cluster
        { item = 5288, weight = 100 }, --  Fleeting Cluster
        { item = 5293, weight = 100 }, --  Malevolent Cluster
        { item = 5289, weight = 100 }, --  Profane Cluster
        { item = 5292, weight = 100 }, --  Radiant Cluster
        { item = 5291, weight = 100 }, --  Somber Cluster
        { item = 5290, weight = 100 }, --  Startling Cluster
    },
    {
        { item =    0, weight = 200 }, --  Nothing
        { item = 5287, weight = 100 }, --  Bitter Cluster
        { item = 5286, weight = 100 }, --  Burning Cluster
        { item = 5288, weight = 100 }, --  Fleeting Cluster
        { item = 5293, weight = 100 }, --  Malevolent Cluster
        { item = 5289, weight = 100 }, --  Profane Cluster
        { item = 5292, weight = 100 }, --  Radiant Cluster
        { item = 5291, weight = 100 }, --  Somber Cluster
        { item = 5290, weight = 100 }, --  Startling Cluster
    },
    {
        { item =    0, weight = 500 }, --  Nothing
        { item = 1798, weight = 100 }, --  Vernal Vision (Evasion Earring)
        { item = 1799, weight = 100 }, --  Punctilious Vision (Parrying Earring)
        { item = 1802, weight = 100 }, --  Audacious Vision (Divine Earring)
        { item = 1807, weight = 100 }, --  Vivid Vision (Healing Earring)
        { item = 1810, weight = 100 }, --  Endearing Vision (Singing Earring)
    },
}

return content:register()
