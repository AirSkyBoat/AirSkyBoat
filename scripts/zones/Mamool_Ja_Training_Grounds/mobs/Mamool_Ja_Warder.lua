-----------------------------------
-- Area: Mamool Ja Training Grounds (Imperial Agent Rescue)
--  MOB: Mamool Ja Warder (NIN, WHM, BST)
-----------------------------------
mixins = { require("scripts/mixins/weapon_break") }
local ID = require("scripts/zones/Mamool_Ja_Training_Grounds/IDs")
require("scripts/globals/assault")
require("scripts/globals/utils")
-----------------------------------

local entity = {}

-- Skill IDs
local FIRESPIT_ID    = 1923
local STAFF_THROW_ID = 1925
local AXE_THROW_ID   = 1736


entity.onMobSpawn = function(mob)
    xi.assault.adjustMobLevel(mob)

    mob:setLocalVar("Warder_WeaponThrown", 0)

    -- Debug: show skill lists and special skill configured for this mob
    local skillListId    = mob:getMobMod(xi.mobMod.SKILL_LIST)
    local atkSkillListId = mob:getMobMod(xi.mobMod.ATTACK_SKILL_LIST)
    local specialId      = mob:getMobMod(xi.mobMod.SPECIAL_SKILL)
    local specialCool    = mob:getMobMod(xi.mobMod.SPECIAL_COOL)

    local mobName = mob.getName and mob:getName() or "Mamool_Ja_Warder"
    print(string.format(
        "[Warder] onSpawn mob=%s(%d) job=%d skillList=%d attackSkillList=%d special=%d specialCool=%dms",
        mobName, mob:getID(), mob:getMainJob(),
        skillListId, atkSkillListId, specialId, specialCool
    ))

    mob:addListener("WEAPONSKILL_USE", "WARDER_THROW_TRACK", function(m, target, wsid, tp, action)
        if wsid == STAFF_THROW_ID or wsid == AXE_THROW_ID then
            if m:getLocalVar("Warder_WeaponThrown") ~= 1 then
                m:setLocalVar("Warder_WeaponThrown", 1)
                -- print(string.format("[Warder] weapon thrown via wsid=%d", wsid))
            end
        end
    end)

    if mob:getMainJob() == xi.job.NIN then
        mob:setLocalVar("BreakChance", 0) -- Nin mobs dont have a weapon to break
    elseif mob:getMainJob() == xi.job.BST then
        local instance = mob:getInstance()
        local pet = mob:getID() + 1

        mob:setPet(GetMobByID(pet, instance))
        mob:timer(5000, function(mobArg)
            local pos = mob:getPos()
            GetMobByID(pet, instance):setSpawn(pos.x + math.random(-2, 2), pos.y, pos.z + math.random(-2, 2))
            SpawnMob(pet, instance)
        end)
    end
end

entity.onMobDeath = function(mob, player, optParams)
end

entity.onMobWeaponSkillPrepare = function(mob, target)
    local job = mob:getMainJob()

    -- weapon_break mixin: 0 = weapon out, 1 = weapon broken
    local broken = (mob:getAnimationSub() == 1)
    local thrown = (mob:getLocalVar("Warder_WeaponThrown") == 1)

    -- Compute bias%
    local bias = 0
    if job == xi.job.WHM or job == xi.job.BST then
        if broken or thrown then
            bias = 75 -- 50% chance to force Firespit when weaponless
        end
    elseif job == xi.job.NIN then
        bias = 75 -- always bias Firespit for NIN
    end

    if bias > 0 and math.random(1, 100) <= bias then
        return FIRESPIT_ID
    end

    return 0 -- let the engine pick from the mob's configured skill list
end

entity.onMobSkillTarget = function(target, mob, skill)
    local triggerSkills = { 1733, 1736, 1923, 1925 }
    local skillID = skill:getID()

    -- Debug: entry + basic info
    local mobName = mob.getName and mob:getName() or "Mamool_Ja_Warder"

    if utils.contains(skillID, triggerSkills) then
        local roll = math.random(1, 100)
        print(string.format("[Warder] skill is trigger WS; RNG roll=%d (needs > 50)", roll))

        if roll > 20 then
            local instance = mob:getInstance()
            for _, gateid in ipairs(ID.mob[xi.assault.mission.IMPERIAL_AGENT_RESCUE].GATES) do
                local gate = GetMobByID(gateid, instance)
                if gate then
                    local alive = gate:isAlive()
                    local dist = mob:checkDistance(gate)
                    local facing = mob:isFacing(gate)
                    print(string.format("[Warder] check gate=%d alive=%s dist=%.2f facing=%s",
                        gateid, tostring(alive), dist or -1, tostring(facing)))

                    if alive and dist <= 10 and facing then
                        print(string.format("[Warder] redirecting WS to gate %d", gateid))
                        return gate
                    end
                else
                    print(string.format("[Warder] gate %d not found in instance", gateid))
                end
            end
            print("[Warder] no qualifying gate found (alive/in range/facing)")
        else
            print(string.format("[Warder] RNG check failed (%d) - keep original target", roll))
        end
    else
        print(string.format("[Warder] skill %d is not a trigger WS", skillID))
    end

    return target
end

return entity