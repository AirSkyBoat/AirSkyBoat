-----------------------------------
-- Area: Ilrusi Atoll
--  Mob: Cursed Chest
-- TODO: 
-----------------------------------
local ID = require("scripts/zones/Ilrusi_Atoll/IDs")
local entity = {}

entity.onTrigger = function(player, mob)
    local instance = player:getInstance()

    if instance:getLocalVar("figureheadChestOpened") == 1 then
        return
    end

    if player:checkDistance(mob) > 3 then
        player:messageSpecial(ID.text.MUST_BE_CLOSER_CHEST)
        return
    end

    local mobID    = mob:getID()
    local instance = player:getInstance()
    local figureheadChestID = instance:getLocalVar("figureheadChestID")
    local cursedChestMOBEntity = GetMobByID(mob:getID(), player:getInstance()) 

    if mobID == figureheadChestID then
        instance:setLocalVar("figureheadChestOpened", 1)
        print("[GS][Chest][onTrigger] MATCH -> GOLDEN")
        print(instance:getLocalVar("figureheadChestOpened"))

        mob:entityAnimationPacket("open")
        player:messageSpecial(ID.text.CHEST)

        player:timer(3000, function()
        player:messageSpecial(ID.text.GOLDEN)
        end)

        player:timer(20000, function()
        instance:setProgress(1)        
        end)
    else
        mob:setModelId(258)
        mob:setAnimationSub(1)
        mob:setStatus(xi.status.UPDATE)
        mob:setMobMod(xi.mobMod.NO_AGGRO, 0)
    end
end

 

entity.onMobSpawn = function(mob)
    local mobID    = mob:getID()
    local instance = mob:getInstance()
    local figureheadChestID = instance and instance:getLocalVar("figureheadChestID")
    local randomRotation = math.random(0, 255)

    mob:setRotation(randomRotation)
    mob:setStatus(xi.status.NORMAL)
    mob:setAnimationSub(0)
    mob:setMobMod(xi.mobMod.NO_DESPAWN, 1)
    mob:setMobMod(xi.mobMod.NO_AGGRO, 1)
    DisallowRespawn(mob:getID(), true)
end

entity.onMobEngaged = function(mob, target)
    mob:setStatus(1)
    mob:hideName(false)
    mob:setModelId(258)
    mob:setAnimationSub(0)   
end

entity.onMobDisengage = function(mob)
    mob:setStatus(xi.status.NORMAL)
    mob:setAnimationSub(0)
    mob:setModelId(960)
    mob:hideName(true)
    mob:setMobMod(xi.mobMod.NO_AGGRO, 1)  
end

entity.onMobFight = function(mob, target)
   if mob:getAnimationSub() ~= 1 then
        mob:setAnimationSub(1)
    end
    if mob:checkDistance(target) < 21.6 then
        mob:setMobMod(xi.mobMod.DRAW_IN, 3)
        mob:setLocalVar("despawn", 0)
    else
        mob:setMobMod(xi.mobMod.DRAW_IN, 0)
        if mob:getLocalVar("despawn") == 0 then
            mob:setLocalVar("despawn", os.time() + 30)
        end
    end
    if mob:getLocalVar("despawn") ~= 0 then
        if mob:getLocalVar("despawn") < os.time() then
            mob:disengage() 
        end
    end
end

entity.onMobDeath = function(mob, player, optParams)
end

entity.onMobDespawn = function(mob)
    GetNPCByID(mob:getID(), mob:getInstance()):setStatus(xi.status.DISAPPEAR) 
end

return entity
