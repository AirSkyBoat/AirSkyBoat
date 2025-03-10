-----------------------------------
-- Area: Mamool Ja Training Grounds (Breaking Morale)
--  Mob: Mamool Ja Trainer
-----------------------------------
local ID = require("scripts/zones/Mamool_Ja_Training_Grounds/IDs")
local entity = {}

local lootTable =
{
    xi.item.FIGHTING_FISH_TANK,
    xi.item.GOBLIN_DIE,
    xi.item.PIECE_OF_ATTOHWA_GINSENG,
    xi.item.MAMOOL_JA_COLLAR,
    xi.item.DIVINATION_SPHERE,
    xi.item.TORN_EPISTLE,
    xi.item.GILT_GLASSES,
    xi.item.WILD_RABBIT_TAIL,
}

local respawnTable =
{
    [xi.item.FIGHTING_FISH_TANK]       = 17047813,
    [xi.item.GOBLIN_DIE]               = 17047814,
    [xi.item.PIECE_OF_ATTOHWA_GINSENG] = 17047815,
    [xi.item.MAMOOL_JA_COLLAR]         = 17047816,
    [xi.item.DIVINATION_SPHERE]        = 17047817,
    [xi.item.TORN_EPISTLE]             = 17047818,
    [xi.item.GILT_GLASSES]             = 17047819,
    [xi.item.WILD_RABBIT_TAIL]         = 17047820,
}

entity.onMobSpawn = function(mob)
    xi.assault.adjustMobLevel(mob)
    mob:setMod(xi.mod.FASTCAST, 100)
end

entity.onMobEngaged = function(mob, target)
end

entity.onMobDisengaged = function(mob)
    mob:resetLocalVars()
end

entity.onMobFight = function(mob, target)
    local effect = target:getStatusEffect(xi.effect.COSTUME):getPower()
    local instance = mob:getInstance()

    -- Insta cast Death on pets non-stop
    if target:isPet() then
        mob:castSpell(367)

    -- If target is in disguise, forget them
    elseif effect > 0 then
        mob:disengage()

    -- Warp them to jail
    else
        if mob:getLocalVar("control") == 0 then
            mob:showText(mob, ID.text.TRAINER_DIALOGUE_OFFSET)
            mob:setLocalVar("control", 1)
            target:startEvent(104)

            mob:timer(3000, function(mobArg)
                target:messageSpecial(ID.text.TRAINER_DIALOGUE_OFFSET - 2)
                target:setPos(51, 1.7, -294) -- Jail for bad boi
                local flag = false

                -- reset hate on all mobs attacking player
                for _, aggro in pairs(target:getNotorietyList()) do
                    aggro:clearEnmity(target)
                end

                for i = 1, #lootTable do
                    local item = lootTable[i]

                    if xi.assault.hasTempItem(target, item) then
                        GetNPCByID(respawnTable[item], instance):setStatus(xi.status.NORMAL)
                        xi.assault.delTempItem(target, item)
                        flag = true
                    end
                end

                if flag then
                    target:messageSpecial(ID.text.TRAINER_DIALOGUE_OFFSET - 1)
                end

                mob:setLocalVar("control", 0)
            end)
        end
    end
end

entity.onMobDeath = function(mob, player, optParams)
end

entity.onMobDespawn = function(mob)
end

return entity
