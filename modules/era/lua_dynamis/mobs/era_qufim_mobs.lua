-----------------------------------
-- Antaeus Era Module
-----------------------------------
require('scripts/globals/dynamis')
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}

local antaeusBuffs =
{
    ['scolopendra_killed']  =  { xi.mod.REGEN,       40 }, -- Lower regen if killed
    ['stringes_killed']     =  { xi.mod.CRITHITRATE, 5  }, -- Base attack if killed
    ['fire_killed']         =  { xi.mod.FIRE_NULL,    0 }, -- Tier 0 EEM if killed
    ['ice_killed']          =  { xi.mod.ICE_NULL,     0 }, -- Tier 0 EEM if killed
    ['air_killed']          =  { xi.mod.WIND_NULL,    0 }, -- Tier 0 EEM if killed
    ['earth_killed']        =  { xi.mod.EARTH_NULL,   0 }, -- Tier 0 EEM if killed
    ['thunder_killed']      =  { xi.mod.LTNG_NULL,    0 }, -- Tier 0 EEM if killed
    ['water_killed']        =  { xi.mod.WATER_NULL,   0 }, -- Tier 0 EEM if killed
    ['light_killed']        =  { xi.mod.LIGHT_NULL,   0 }, -- Tier 0 EEM if killed
    ['dark_killed']         =  { xi.mod.DARK_NULL,    0 }, -- Tier 0 EEM if killed
}

xi.dynamis.onSpawnAntaeus = function(mob)
    mob:setRoamFlags(xi.roamFlag.SCRIPTED)
    xi.dynamis.setMegaBossStats(mob)

    mob:addImmunity(xi.immunity.SLEEP)
    mob:addImmunity(xi.immunity.LIGHT_SLEEP)
    mob:addImmunity(xi.immunity.DARK_SLEEP)
    mob:addImmunity(xi.immunity.BIND)
    mob:addImmunity(xi.immunity.GRAVITY)
    mob:addImmunity(xi.immunity.SILENCE)
    mob:addImmunity(xi.immunity.TERROR)

    mob:setMobMod(xi.mobMod.WEAPON_BONUS, 50)
    mob:setMobMod(xi.mobMod.SPECIAL_SKILL, 1636) -- use treb
    mob:setMobMod(xi.mobMod.SPECIAL_COOL, 12)    -- 7-8 seconds between casts
    mob:setMobMod(xi.mobMod.STANDBACK_RANGE, 16) -- Range to standback

    -- Set mods for NMs
    mob:setMod(xi.mod.RECEIVED_DAMAGE_CAP, 100)       -- Damage cap value
    mob:setMod(xi.mod.RECEIVED_DAMAGE_VARIANT, 10)    -- Damage cap variant
    mob:setMod(xi.mod.REGEN, (0.03 * mob:getMaxHP())) -- 3.0% hp/tick (Kraken NM)
    mob:setMod(xi.mod.CRITHITRATE, 100)               -- Strings (Bat NM)
    mob:setMod(xi.mod.FIRE_NULL, 100)                 -- Fire Elemental
    mob:setMod(xi.mod.ICE_NULL, 100)                  -- Ice Elemental
    mob:setMod(xi.mod.WIND_NULL, 100)                 -- Wind Elemental
    mob:setMod(xi.mod.EARTH_NULL, 100)                -- Earth Elemental
    mob:setMod(xi.mod.LTNG_NULL, 100)                 -- Lightning Elemental
    mob:setMod(xi.mod.WATER_NULL, 100)                -- Water Elemental
    mob:setMod(xi.mod.LIGHT_NULL, 100)                -- Light Elemental
    mob:setMod(xi.mod.DARK_NULL, 100)                 -- Dark Elemental
    mob:setMod(xi.mod.REGAIN, 50)
end

xi.dynamis.onEngagedAntaeus = function(mob, target)
    local zone = mob:getZone()

    -- Checks for the zone vars and sets mods accordingly
    for var, buffTable in pairs(antaeusBuffs) do
        if zone:getLocalVar(var) == 1 then
            mob:setMod(buffTable[1], buffTable[2])
        end
    end

    if zone:getLocalVar('suttung_killed') == 1 then
        mob:setMod(xi.mod.RECEIVED_DAMAGE_CAP, 0)    -- Damage cap value
        mob:setMod(xi.mod.RECEIVED_DAMAGE_VARIANT, 0) -- Damage cap variant
    end
end

xi.dynamis.onFightAntaeus = function(mob, target)
end

xi.dynamis.onSpawnScolopendra = function(mob, target)
    xi.dynamis.setNMStats(mob)
    mob:addImmunity(xi.immunity.DISPEL)
    mob:setMod(xi.mod.DOUBLE_ATTACK, 100) -- 100% Double Attack
    mob:setMod(xi.mod.DEFP, 30)           -- 30% Increased Defense
    mob:setMod(xi.mod.LIGHT_EEM, 5)       -- Extremely resistant to sleep
    mob:setMod(xi.mod.REGAIN, 50)
    mob:setDelay(3200)
end

xi.dynamis.onSpawnSuttung = function(mob, target)
    xi.dynamis.setNMStats(mob)
    mob:setMod(xi.mod.DOUBLE_ATTACK, 20) -- increased double attack rate
    mob:setMod(xi.mod.RECEIVED_DAMAGE_CAP, 100)       -- Damage cap value
    mob:setMod(xi.mod.RECEIVED_DAMAGE_VARIANT, 10)    -- Damage cap value
end

xi.dynamis.onSpawnStringes = function(mob, target)
    xi.dynamis.setNMStats(mob)
    mob:setMod(xi.mod.CRITHITRATE, 100) -- 100% Crit
end

xi.dynamis.elementals = function(mob)
    local eleTable =
    {
        { 'DE_Fire Ele.'   , xi.mod.WATER_NULL },
        { 'DE_Water Ele.'  , xi.mod.LTNG_NULL },
        { 'DE_Thunder Ele.', xi.mod.EARTH_NULL },
        { 'DE_Earth Ele.'  , xi.mod.WIND_NULL },
        { 'DE_Air Ele.'    , xi.mod.ICE_NULL },
        { 'DE_Ice Ele.'    , xi.mod.FIRE_NULL },
        { 'DE_Light Ele.'  , xi.mod.DARK_NULL },
        { 'DE_Dark Ele.'   , xi.mod.LIGHT_NULL },
    }

    for num, element in pairs(eleTable) do
        if mob:getName() == element[1] then
            mob:setMod(element[2], 0) -- Allow it to take damage from weak element
        else
            mob:setMod(element[2], 100) -- Immune to all damage except the element its weak too
        end
    end
end
