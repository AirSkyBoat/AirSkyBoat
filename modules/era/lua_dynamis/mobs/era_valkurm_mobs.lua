-----------------------------------
-- Valkurm Mobs Era Module
-----------------------------------
require('scripts/globals/dynamis')
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}

local dragontraps = { 'dragontrap1_killed', 'dragontrap2_killed', 'dragontrap3_killed' }
local morbols = { 'morbol1_killed', 'morbol2_killed' }
local flies = { 'fly1_killed', 'fly2_killed', 'fly3_killed' }

local function checkFlytrapKills(mob)
    local zone = mob:getZone()
    local killed = 0
    for _, flytrap in pairs(dragontraps) do
        if zone:getLocalVar(flytrap) == 1 then
            killed = killed + 1
        end
    end

    return killed
end

local function checkMorbolKills(mob)
    local zone = mob:getZone()
    local killed = 0
    for _, morbol in pairs(morbols) do
        if zone:getLocalVar(morbol) == 1 then
            killed = killed + 1
        end
    end

    return killed
end

xi.dynamis.nightmareFlyCheck = function(zone)
    local playersInZone = zone:getPlayers()
    local req = 0
    for _, fly in pairs(flies) do
        if zone:getLocalVar(fly) == 1 then
            req = req + 1
        end
    end

    if req == 3 and zone:getLocalVar('SJUnlock') ~= 1 then
        for _, playerEntity in pairs(playersInZone) do
            if  playerEntity:hasStatusEffect(xi.effect.SJ_RESTRICTION) then -- Does player have SJ restriction?
                playerEntity:delStatusEffect(xi.effect.SJ_RESTRICTION) -- Remove SJ restriction
            end
        end

        zone:setLocalVar('SJUnlock', 1)
    end
end

local checkCirrateSkills =
{
    -- stcemqestcint_killed is only a drain and tp change for the same skill ID
    -- Var check           weak, strong
    { 'dragontrap1_killed',    1608, 1609 },
    { 'nanatina_killed',       1606, 1607 },
    { 'fairy_ring_killed',     1604, 1605 },
    { 'stcemqestcint_killed',  1611, 1611 },
}

xi.dynamis.onSpawnCirrate = function(mob)
    mob:setRoamFlags(xi.roamFlag.SCRIPTED)
    xi.dynamis.setMegaBossStats(mob)
    -- Set Mods
    mob:addImmunity(xi.immunity.SLEEP)
    mob:addImmunity(xi.immunity.LIGHT_SLEEP)
    mob:addImmunity(xi.immunity.DARK_SLEEP)
    mob:addImmunity(xi.immunity.BIND)
    mob:addImmunity(xi.immunity.GRAVITY)
    mob:addImmunity(xi.immunity.SILENCE)
    mob:addImmunity(xi.immunity.TERROR)
    mob:setSpeed(150)
    mob:setMobMod(xi.mobMod.WEAPON_BONUS, 50)
    mob:setMobMod(xi.mobMod.NO_STANDBACK, 1)
    mob:setMobSkillAttack(6505) -- use its skill list as its auto attack
end

xi.dynamis.onEngagedCirrate = function(mob, target)
    local zoneID = mob:getZoneID()
    local zone = mob:getZone()
    local flytrapKills = checkFlytrapKills(mob)
    local morbolKills = checkMorbolKills(mob)
    if
        flytrapKills < 3 and
        morbolKills == 0 and
        mob:getLocalVar('spawnedPets') == 0
    then
        mob:setLocalVar('spawnedPets', 1)
        xi.dynamis.nmDynamicSpawn(289, 24, true, zoneID, target, mob)
        xi.dynamis.nmDynamicSpawn(290, 24, true, zoneID, target, mob)
    end

    if zone:getLocalVar('fairy_ring_killed') == 1 then
        mob:setSpeed(60)
    end
end

xi.dynamis.onFightCirrate = function(mob, target)
end

xi.dynamis.onWeaponskillPrepCirrate = function(mob)
    -- Check for extremely_bad_breath first
    local chanceForKO = math.random(100)
    local inverseHPCheck = (100 - mob:getHPP()) / 5
    inverseHPCheck = utils.clamp(inverseHPCheck, 1, 5)

    if chanceForKO < inverseHPCheck then
        return 1610 -- extremely_bad_breath
    end

    local cirrateWeaponskills = { }

    for var, abilities in pairs(checkCirrateSkills) do
        if mob:getZone():getLocalVar(abilities[1]) ~= 1 then
            table.insert(cirrateWeaponskills, abilities[3]) -- If they are not dead use stronger
        else
            table.insert(cirrateWeaponskills, abilities[2]) -- If they are dead use weaker versions
        end
    end

    return cirrateWeaponskills[math.random(1, #cirrateWeaponskills)]
end

xi.dynamis.onSpawnFairy = function(mob)
    xi.dynamis.setNMStats(mob)
    mob:setMobSkillAttack(6503) -- use mephitic spare as its auto attack
    -- mob:setDelay(6000) -- use mephitic spare as its auto attack
    mob:setRoamFlags(xi.roamFlag.NONE)
    mob:setSpeed(70)
    mob:addImmunity(xi.immunity.SLEEP)
    mob:addImmunity(xi.immunity.LIGHT_SLEEP)
    mob:addImmunity(xi.immunity.DARK_SLEEP)
    mob:addImmunity(xi.immunity.TERROR)
end

xi.dynamis.onSpawnDragontrap = function(mob)
    xi.dynamis.setNMStats(mob)
    mob:setRoamFlags(xi.roamFlag.NONE)
    mob:setMod(xi.mod.REGAIN, 500)
    mob:setSpeed(60)
    mob:setDelay(2000)
    mob:addImmunity(xi.immunity.SLEEP)
    mob:addImmunity(xi.immunity.LIGHT_SLEEP)
    mob:addImmunity(xi.immunity.DARK_SLEEP)
    mob:addImmunity(xi.immunity.TERROR)
    mob:addImmunity(xi.immunity.BIND)
    mob:addImmunity(xi.immunity.GRAVITY)
    mob:setMobFlags(7) -- Sets double size
end

xi.dynamis.onSpawnDragontrapChild = function(mob)
    xi.dynamis.setNMStats(mob)
    mob:setRoamFlags(xi.roamFlag.NONE)
    mob:setMod(xi.mod.REGAIN, 500)
    mob:setSpeed(60)
    mob:setDelay(2000)
    mob:addImmunity(xi.immunity.TERROR)
    mob:addImmunity(xi.immunity.BIND)
    mob:addImmunity(xi.immunity.GRAVITY)

    mob:setMod(xi.mod.MAGIC_NULL, 100)    -- Takes no magic damage
end

xi.dynamis.onEngageMorbol = function(mob, target)
    mob:addImmunity(xi.immunity.DARK_SLEEP) -- Testimony says immune to dark sleep
    mob:addImmunity(xi.immunity.GRAVITY)
    mob:addImmunity(xi.immunity.BIND)

    local cirrate = GetMobByID(mob:getLocalVar('ParentID'))
    if cirrate then
        mob:setSpeed(cirrate:getSpeed())
    end
end

xi.dynamis.onSpawnStcemqestcint = function(mob)
    xi.dynamis.setNMStats(mob)
    mob:addImmunity(xi.immunity.SLEEP)
    mob:addImmunity(xi.immunity.LIGHT_SLEEP)
    mob:addImmunity(xi.immunity.DARK_SLEEP)
    mob:setRoamFlags(xi.roamFlag.NONE)
    mob:setMobSkillAttack(6504) -- use gouging_branch as its auto attack
end

xi.dynamis.onSpawnNantina = function(mob)
    xi.dynamis.setNMStats(mob)
    mob:addImmunity(xi.immunity.SLEEP)
    mob:addImmunity(xi.immunity.LIGHT_SLEEP)
    mob:addImmunity(xi.immunity.DARK_SLEEP)
    mob:addImmunity(xi.immunity.TERROR)
    mob:setRoamFlags(xi.roamFlag.NONE)
    mob:setMobSkillAttack(6508) -- use skill list as auto
    mob:setLocalVar('nantina_skill_count', 0)
end

xi.dynamis.onWeaponskillPrepNantina = function(mob)
    -- Blow x9 > Uppercut x3 > Attract
    local skillCount = mob:getLocalVar('nantina_skill_count')
    if skillCount < 9 then
        mob:setLocalVar('nantina_skill_count', skillCount + 1)
        return 1617 -- blow
    elseif skillCount < 12 then
        mob:setLocalVar('nantina_skill_count', skillCount + 1)
        return 1618 -- uppercut
    else
        mob:setLocalVar('nantina_skill_count', 0)
        return 1619 -- attractant
    end
end
