-----------------------------------
-- Area: Al'Taieu
--   NM: Jailer of Hope
-----------------------------------
mixins = { require('scripts/mixins/job_special') }
-----------------------------------
local m = Module:new('zones_altaieu_mobs_jailer_of_hope')

m:addOverride('xi.zones.AlTaieu.mobs.Jailer_of_Hope.onMobSpawn', function(mob)
    mob:setSpellList(0) -- If it dies with the ability to cast spells, the next spawn would be able to cast from the start.
    mob:setMobMod(xi.mobMod.MAGIC_COOL, 20) -- This gives around 6 - 15 seconds between casts. Doesn't seem to work anywhere except in this function.
    mob:setAnimationSub(5)
    mob:hideName(true)
    mob:setUntargetable(true)
    mob:setMod(xi.mod.ATT, 540)
    mob:setMod(xi.mod.DEF, 520)
    mob:setMod(xi.mod.EVA, 323)
    mob:setMobMod(xi.mobMod.NO_AGGRO, 1)
    xi.mix.jobSpecial.config(mob, {
        specials =
        {
            { id = xi.jsa.MIGHTY_STRIKES, cooldown = 90, hpp = math.random(85, 95) }, -- 'May use Mighty Strikes multiple times.'
        },
    })
end)

m:addOverride('xi.zones.AlTaieu.mobs.Jailer_of_Hope.onMobEngage', function(mob, target)
    -- Coming out of water animation
    mob:hideName(false)
    mob:setUntargetable(false)
    mob:setAnimationSub(6)
    mob:setLocalVar('spellTime', 0)
    mob:setMobMod(xi.mobMod.NO_AGGRO, 0)
end)

m:addOverride('xi.zones.AlTaieu.mobs.Jailer_of_Hope.onSpellPrecast', function(mob, spell)
    if spell:getID() == 196 or 213 then
        spell:setMPCost(1)
    end
end)

m:addOverride('xi.zones.AlTaieu.mobs.Jailer_of_Hope.onMobWeaponSkillPrepare', function(mob, target)
    local rnd = math.random()
    if rnd < 0.5 then -- uses Aerial Collision 50%~ of the time
        return 1353 -- Aerial Collision
    elseif rnd < 0.65 then
        return 1355 -- Spine Lash
    elseif rnd < 0.80 then
        return 1356 -- Voiceless Storm
    else
        return 1358 -- Plasma Charge
    end
end)

m:addOverride('xi.zones.AlTaieu.mobs.Jailer_of_Hope.onMobWeaponSkill', function(target, mob, skill)
    if skill:getID() == 1358 then -- Set spell list for Burst2/Thundaga3 upon using Plasma Charge. Allow for 60 seconds.
        mob:setSpellList(140)
        mob:setLocalVar('spellTime', os.time() + 60)
    end

    local aerialCollisionCounter = mob:getLocalVar('aerialCollisionCounter')
    local aerialCollisionMax = mob:getLocalVar('aerialCollisionMax')
    if skill:getID() == 1353 then  -- mob uses arial collision back to back
        if
            aerialCollisionCounter == 0 and
            aerialCollisionMax == 0
        then
            aerialCollisionMax = 1
            mob:setLocalVar('aerialCollisionMax', aerialCollisionMax)
        end

        aerialCollisionCounter = aerialCollisionCounter + 1
        mob:setLocalVar('aerialCollisionCounter', aerialCollisionCounter)

        if aerialCollisionCounter > aerialCollisionMax then
            mob:setLocalVar('aerialCollisionCounter', 0)
            mob:setLocalVar('aerialCollisionMax', 0)
        else
            mob:timer(3000, function(mobArg)
                mobArg:useMobAbility(1353)
            end)
        end
    end
end)

m:addOverride('xi.zones.AlTaieu.mobs.Jailer_of_Hope.onMobFight', function(mob, target)
    if
        mob:getLocalVar('spellTime') < os.time() and
        mob:getLocalVar('spellTime') ~= 0
    then -- Checks for it being 0 because it gets set to 0 to avoid setting the spell list repeatedly
        mob:setSpellList(0)
        mob:setLocalVar('spellTime', 0)
    end
end)

return m
