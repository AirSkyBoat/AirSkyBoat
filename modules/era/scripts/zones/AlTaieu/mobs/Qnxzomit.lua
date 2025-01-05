-----------------------------------
-- Area: Al'Taieu
--  Mob: Qnxzomit
-- Note: Pet for JOL and JOJ (both are level 80)
-----------------------------------
local ID = zones[xi.zone.ALTAIEU]
-----------------------------------
local m = Module:new('zones_altaieu_mobs_qnxzomit')

-- also these mobs should not cast ninja spells (are they actually ninjas?)

m:addOverride('xi.zones.AlTaieu.mobs.Qnxzomit.onMobSpawn', function(mob)
end)

m:addOverride('xi.zones.AlTaieu.mobs.Qnxzomit.onMobEngage', function(mob, target)
    -- only JoJ pops
    if mob:getID() < ID.mob.JAILER_OF_LOVE then
        mob:timer(30000, function(mobArg)
            if mobArg:isAlive() then
                mobArg:useMobAbility(xi.jsa.MIJIN_GAKURE)
                mobArg:timer(2000, function(mobArg2)
                    mobArg2:setHP(0)
                end)
            end
        end)

        mob:setMobMod(xi.mobMod.NO_STANDBACK, 1)
        mob:addStatusEffectEx(xi.effect.FLEE, 0, 100, 0, 60)
    end
end)

m:addOverride('xi.zones.AlTaieu.mobs.Qnxzomit.onMobDespawn', function(mob)
    -- only JoL pops
    if mob:getID() > ID.mob.JAILER_OF_LOVE then
        local jailerOfLove = GetMobByID(ID.mob.JAILER_OF_LOVE)

        if jailerOfLove then
            local xzomitsKilled = jailerOfLove:getLocalVar('JoL_Qn_xzomit_Killed')

            jailerOfLove:setLocalVar('JoL_Qn_xzomit_Killed', xzomitsKilled + 1)
        end
    end
end)

return m
