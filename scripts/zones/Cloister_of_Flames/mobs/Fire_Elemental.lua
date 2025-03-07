-----------------------------------
-- Area: Cloister of Flames
-- Mob: Fire Elemental
-- Quest: Waking the Beast
-----------------------------------
local entity = {}

entity.onMobInitialize = function(mob)
    mob:addMod(xi.mod.UDMGPHYS, -2500)
    mob:setMobMod(xi.mobMod.MAGIC_RANGE, 40)

    mob:addImmunity(xi.immunity.SLEEP)
    mob:addImmunity(xi.immunity.GRAVITY)
    mob:addImmunity(xi.immunity.BIND)
    mob:addImmunity(xi.immunity.STUN)
    mob:addImmunity(xi.immunity.SILENCE)
    mob:addImmunity(xi.immunity.PARALYZE)
    mob:addImmunity(xi.immunity.BLIND)
    mob:addImmunity(xi.immunity.SLOW)
    mob:addImmunity(xi.immunity.POISON)
    mob:addImmunity(xi.immunity.ELEGY)
    mob:addImmunity(xi.immunity.REQUIEM)
    mob:addImmunity(xi.immunity.LIGHT_SLEEP)
    mob:addImmunity(xi.immunity.DARK_SLEEP)
    mob:addImmunity(xi.immunity.ASPIR)
    mob:addImmunity(xi.immunity.TERROR)
    mob:addImmunity(xi.immunity.DISPEL)
end

entity.onMobDeath = function(mob, player, optParams)
end

return entity
