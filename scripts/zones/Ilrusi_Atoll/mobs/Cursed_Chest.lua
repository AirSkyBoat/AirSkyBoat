-----------------------------------
-- Area: Ilrusi Atoll
--  Mob: Cursed Chest
-----------------------------------
local ID = require("scripts/zones/Ilrusi_Atoll/IDs")
local entity = {}
print("[GS][Chest][LOAD] mob Cursed_Chest.lua loaded")


local function CheckForDrawnIn(centerX, centerY, centerZ, playerX, playerY, playerZ, rayon, maxRayon)
    local difX = playerX - centerX
    local difY = playerY - centerY
    local difZ = playerZ - centerZ
    local distance = math.sqrt(math.pow(difX, 2) + math.pow(difY, 2) + math.pow(difZ, 2))

    --print(string.format("[GS][Mob][CheckForDrawnIn] distance=%.2f  min=%.2f  max=%.2f", distance, rayon, maxRayon))

    if distance > rayon and distance < maxRayon then
        --print("[GS][Mob][CheckForDrawnIn] returning TRUE")
        return true
    else
        --print("[GS][Mob][CheckForDrawnIn] returning FALSE")
        return false
    end
end

entity.onTrigger = function(player, mob)
    local instance = player:getInstance()

    print("ontrigger triggered in mobs/cursed_chest.lua")

    if instance:getLocalVar("figureheadChestOpened") == 1 then
        print("[GS][Chest][onTrigger] already opened -> EXIT")
        return
    end


    if mob:checkDistance(mob) > 3 then
        print("[GS][Chest][onTrigger] too far -> MUST_BE_CLOSER_CHEST")
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
       
        --TODO: a player an ctrl+a the winningchest and kill it, prevent that or make a if else statement
        --make the chest not appear yellow and still be targetable
        --cursed chest doesnt aggro a lvl 99 whereas on retail it does. it would be easy to make it aggro but keeping the name yellow(unclaimed) while doing so might be harder
        --check if the portal and lockbox spawns and you can tele out with awards

        mob:entityAnimationPacket("open")
        player:messageSpecial(ID.text.CHEST)


        player:timer(3000, function()
        player:messageSpecial(ID.text.GOLDEN)
        end)

        player:timer(20000, function()
        instance:setProgress(1)
        end)
        print("ending mob onTrigger")
       
       
 
    else
        print("[GS][Chest][onTrigger] mob:ontrigger NO MATCH")
        --mob:hideName(false)
        mob:setModelId(258)
        
        mob:setAnimationSub(1)
        mob:setStatus(xi.status.UPDATE)
        --mob:setStatus(xi.status.NORMAL)
        
        --mob:setStatus(xi.status.UPDATE)
        mob:setMobMod(xi.mobMod.NO_AGGRO, 0)
      
    end
    
    print("ending mob onTrigger")
end

 

entity.onMobSpawn = function(mob)
    local mobID    = mob:getID()
    local instance = mob:getInstance()
    local figureheadChestID = instance and instance:getLocalVar("figureheadChestID")

    
    --mob:hideName(false) 
    mob:setStatus(xi.status.NORMAL)
    mob:setAnimationSub(0)
    mob:setMobMod(xi.mobMod.NO_DESPAWN, 1)
    mob:setMobMod(xi.mobMod.NO_AGGRO, 1)
        

    print("[GS][Mob][onMobSpawn] finished init; status=NORMAL hidden=true animSub=0")
end

entity.onMobEngaged = function(mob, target)
    mob:setStatus(1)
    mob:hideName(false)
    mob:setModelId(258)
    mob:setAnimationSub(0)
    
end

entity.onMobDisengage = function(mob)
    --print("[GS][Mob][onMobDisengage] mob=", mob:getID())
    --local spawn = mob:getSpawnPos()
    --mob:setRotation(spawn.rot)
    --mob:hideName(true)
    --mob:setStatus(xi.status.NORMAL)
    --mob:setAnimationSub(0)
    --print("[GS][Mob][onMobDisengage] reset to chest state (hidden, animSub=0, status=NORMAL)")
end

entity.onMobFight = function(mob, target)
   if mob:getAnimationSub() ~= 1 then
        mob:setAnimationSub(1)
    end
    if mob:checkDistance(target) < 21.6 then
        mob:setMobMod(xi.mobMod.DRAW_IN, 3)
        mob:setLocalVar("despawn", 0)
    else
        mob:setMobMod(dsp.mobMod.DRAW_IN, 0)
        if mob:getLocalVar("despawn") == 0 then
            mob:setLocalVar("despawn", os.time() + 30)
        end
    end
    if mob:getLocalVar("despawn") ~= 0 then
        if mob:getLocalVar("despawn") < os.time() then
            mob:setStatus(dsp.status.NORMAL)
            mob:disengage()
            mob:AnimationSub(0)
            mob:setHP(mob:getMaxHP())
            mob:setModelId(960)
            mob:hideName(true)
        end
    end
end

entity.onMobDeath = function(mob, player, optParams)
    print("[GS][Mob][onMobDeath] mob=", mob:getID(), " killer=", player and player:getName() or "nil") 
end

entity.onMobDespawn = function(mob)
end

return entity
