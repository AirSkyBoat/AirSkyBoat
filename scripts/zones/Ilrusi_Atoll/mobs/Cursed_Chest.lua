-----------------------------------
-- Area: Ilrusi Atoll
--  Mob: Cursed Chest
-----------------------------------
local ID = require("scripts/zones/Ilrusi_Atoll/IDs")
local goldenSalvage = require("scripts/zones/Ilrusi_Atoll/instances/golden_salvage")
local entity = {}
print("[GS][Chest][LOAD] mob Cursed_Chest.lua loaded")

entity.onTrigger = function(player, mob)
    local instance = player:getInstance()

    print("ontrigger triggered in mobs/cursed_chest.lua")

    if instance:getLocalVar("figureheadChestOpened") == 1 then
        print("[GS][Chest][onTrigger] already opened -> EXIT")
        return
    end


    if player:checkDistance(mob) > 3 then
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
        --despawn the chests after winning
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
        mob:setModelId(258)
        mob:setAnimationSub(1)
        mob:setStatus(xi.status.UPDATE)
        mob:setMobMod(xi.mobMod.NO_AGGRO, 0)
    end
    
    print("ending mob onTrigger")
end

 

entity.onMobSpawn = function(mob)
    local mobID    = mob:getID()
    local instance = mob:getInstance()
    local figureheadChestID = instance and instance:getLocalVar("figureheadChestID")
    local randomRotation = math.random() * 2 * math.pi
    mob:setRotation(randomRotation)

    
    --mob:hideName(false) 
    mob:setStatus(xi.status.NORMAL)
    mob:setAnimationSub(0)
    mob:setMobMod(xi.mobMod.NO_DESPAWN, 1)
    mob:setMobMod(xi.mobMod.NO_AGGRO, 1)
    DisallowRespawn(mob:getID(), true)
        

    print("[GS][Mob][onMobSpawn] finished init; status=NORMAL hidden=true animSub=0")
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
    print("[GS][Mob][onMobDeath] mob=", mob:getID(), " killer=", player and player:getName() or "nil") 
end

entity.onMobDespawn = function(mob)
    GetNPCByID(mob:getID(), mob:getInstance()):setStatus(xi.status.DISAPPEAR)
    
end

return entity
