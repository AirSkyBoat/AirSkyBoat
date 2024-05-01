-----------------------------------
-- Area: Sacrarium
--   NM: Elel
-----------------------------------
mixins = { require("scripts/mixins/job_special") }
-----------------------------------
local entity = {}

entity.onMobDisengage = function(mob)
    if
        not (mob:getWeather() == xi.weather.GLOOM or
        mob:getWeather() == xi.weather.DARKNESS) or
        (VanadielHour() >= 4 and
        VanadielHour() < 20)
    then
        DespawnMob(mob:getID())
    end
end

entity.onMobRoam = function(mob)
    if
        not (mob:getWeather() == xi.weather.GLOOM or
        mob:getWeather() == xi.weather.DARKNESS) or
        (VanadielHour() >= 4 and
        VanadielHour() < 20)
    then
        DespawnMob(mob:getID())
    end
end

entity.onMobDeath = function(mob, player, optParams)
end

entity.onMobDespawn = function(mob)
    xi.mob.nmTODPersist(mob, 7200) -- 2 Hours
    DisallowRespawn(mob:getID(), true) -- prevents accidental 'pop' during no dark weather and immediate despawn
end

return entity
