-----------------------------------
-- Pulling the Strings
-- Mine Shaft #2716 battlefield
-----------------------------------
local ID = zones[xi.zone.MINE_SHAFT_2716]
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.MINE_SHAFT_2716,
    battlefieldId    = xi.battlefield.id.PULLING_THE_STRINGS,
    maxPlayers       = 1,
    levelCap         = 60,
    allowSubjob      = false,
    timeLimit        = utils.minutes(15),
    index            = 3,
    grantXP          = 2000,
    entryNpc         = '_0d0',
    exitNpc          = { '_0d1', '_0d2', '_0d3' }, -- copied from existing mine shaft 2716 battlefield
    requiredKeyItems = { xi.ki.SHAFT_GATE_OPERATING_DIAL, message = ID.text.THE_PARTY_WILL_BE_REMOVED + 8 },
    experimental     = false,
})

function content:checkRequirements(player, npc, registrant, trade)
    for i = xi.job.WAR, xi.job.PUP do
        if player:getMainJob() == i then
            return true
        end
    end
end

content:addEssentialMobs({ 'Fantoccini' })

content.groups =
{
    {
        mobs = { 'Moblin_Fantocciniman' },
        stationary = true,
        superlink = true,
    },
    {
        mobs = { 'Fantoccini_Monster' },
        spawned = false,
        superlink = true,
    },
    {
        mobs = { 'Fantoccini_Wyvern' },
        spawned = false,
        superlink = true,
    },
    {
        mobs = { 'Fantoccini_Avatar' },
        spawned = false,
        superlink = true,
    },
    {
        mobs = { 'Fantoccini_Puppet' },
        spawned = false,
        superlink = true,
    },
    {
        mobs = { 'Fantoccini_Automaton' },
        spawned = false,
        superlink = true,
    },
    {
        mobs = { 'Fantoccini' },
        superlink = true,
        death = utils.bind(content.handleAllMonstersDefeated, content),
    },
}

return content:register()
