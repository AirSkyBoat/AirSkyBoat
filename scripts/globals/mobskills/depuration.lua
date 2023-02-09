-----------------------------------
-- Depuration
-- Family: Aern
-- Type: Healing
-- Can be dispelled: N/A
-- Utsusemi/Blink absorb: N/A
-- Range: Self
-- Notes: Erases all negative effects on the mob.
-- Aerns will generally not attempt to use this ability if no erasable effects exist on them.
-----------------------------------
require("scripts/globals/mobskills")
require("scripts/globals/settings")
require("scripts/globals/status")
-----------------------------------
local mobskillObject = {}

mobskillObject.onMobSkillCheck = function(target, mob, skill)
    local dispel = target:eraseStatusEffect()

    if dispel ~= xi.effect.NONE then
        return 0
    end

    return 1
end

mobskill_object.onMobWeaponSkill = function(target, mob, skill)
    local effectcount = target:dispelAllStatusEffect()
    local finalCount = effectcount + target:eraseAllStatusEffect()
    target:eraseAllStatusEffect()

    skill:setMsg(xi.msg.basic.DISAPPEAR_NUM)
    return finalCount
end

return mobskillObject
