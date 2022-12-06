-----------------------------------
-- Ability: Reward
-- Feeds pet to restore its HP.
-- Obtained: Beastmaster Level 12
-- Recast Time: 1:30
-- Duration: Instant
-----------------------------------
require("scripts/globals/msg")
require("scripts/globals/items")
require("scripts/globals/pets")
require("scripts/globals/status")
-----------------------------------
local abilityObject = {}

abilityObject.onAbilityCheck = function(player, target, ability)
    local pet = player:getPet()

    if not pet then
        return xi.msg.basic.REQUIRES_A_PET, 0
    elseif not player:isJugPet() and pet:getObjType() ~= xi.objType.MOB then
        return xi.msg.basic.NO_EFFECT_ON_PET, 0
    else
        local id = player:getEquipID(xi.slot.AMMO)
        if (id >= 17016 and id <= 17023) then
            local playerLevel = player:getMainLvl()
            local itemLevels = {}
            itemLevels[xi.items.PET_FOOD_ALPHA_BISCUIT] = 12
            itemLevels[xi.items.PET_FOOD_BETA_BISCUIT] = 24
            itemLevels[xi.items.PET_FOOD_GAMMA_BISCUIT] = 36
            itemLevels[xi.items.PET_FOOD_DELTA_BISCUIT] = 48
            itemLevels[xi.items.PET_FOOD_EPSILON_BISCUIT] = 60
            itemLevels[xi.items.PET_FOOD_ZETA_BISCUIT] = 72
            itemLevels[xi.items.PET_FOOD_ETA_BISCUIT] = 84
            itemLevels[xi.items.PET_FOOD_THETA_BISCUIT] = 96

            if playerLevel < itemLevels[id] then return xi.msg.basic.MUST_HAVE_FOOD, 0 end
            return 0, 0
        else
            return xi.msg.basic.MUST_HAVE_FOOD, 0
        end
    end
end

abilityObject.onUseAbility = function(player, target, ability, action)
    -- 1st need to get the pet food is equipped in the range slot.
    local rangeObj         = player:getEquipID(xi.slot.AMMO)
    local minimumHealing   = 0
    local totalHealing     = 0
    local playerMnd        = player:getStat(xi.mod.MND)
    local rewardHealingMod = player:getMod(xi.mod.REWARD_HP_BONUS)
    local regenAmount      = 1 -- 1 is the minimum.
    local regenTime        = 180 -- 3 minutes
    local pet              = player:getPet()
    local petCurrentHP     = pet:getHP()
    local petMaxHP         = pet:getMaxHP()

    -- Need to start to calculate the HP to restore to the pet.
    -- Please note that I used this as base for the calculations:
    -- http://wiki.ffxiclopedia.org/wiki/Reward

    -- TODO: Create lookup table for these switches
    switch (rangeObj) : caseof {
        [xi.items.PET_FOOD_ALPHA_BISCUIT] = function (x)
            minimumHealing = 20
            if xi.settings.main.ENABLE_ABYSSEA == 1 then
                minimumHealing = 50
            end
            regenAmount = 1
            totalHealing = math.floor(minimumHealing + 2 * (playerMnd - 10))
            end,
        [xi.items.PET_FOOD_BETA_BISCUIT] = function (x)
            minimumHealing = 50
            if xi.settings.main.ENABLE_ABYSSEA == 1 then
                minimumHealing = 180
            end
            regenAmount = 3
            totalHealing = math.floor(minimumHealing + 1 * (playerMnd - 33))
            end,
        [xi.items.PET_FOOD_GAMMA_BISCUIT] = function (x)
            minimumHealing = 100
            if xi.settings.main.ENABLE_ABYSSEA == 1 then
                minimumHealing = 300
            end
            regenAmount = 5
            totalHealing = math.floor(minimumHealing + 1 * (playerMnd - 35)) -- TO BE VERIFIED.
            end,
        [xi.items.PET_FOOD_DELTA_BISCUIT] = function (x)
            minimumHealing = 150
            if xi.settings.main.ENABLE_ABYSSEA == 1 then
                minimumHealing = 530
            end
            regenAmount = 8
            totalHealing = math.floor(minimumHealing + 2 * (playerMnd - 40)) -- TO BE VERIFIED.
            end,
        [xi.items.PET_FOOD_EPSILON_BISCUIT] = function (x)
            minimumHealing = 300
            if xi.settings.main.ENABLE_ABYSSEA == 1 then
                minimumHealing = 750
            end
            regenAmount = 11
            totalHealing = math.floor(minimumHealing + 2 * (playerMnd - 45))
            end,
        [xi.items.PET_FOOD_ZETA_BISCUIT] = function (x)
            minimumHealing = 350
            if xi.settings.main.ENABLE_ABYSSEA == 1 then
                minimumHealing = 900
            end
            regenAmount = 14
            totalHealing = math.floor(minimumHealing + 3 * (playerMnd - 45))
            end,
        [xi.items.PET_FOOD_ETA_BISCUIT] = function (x)
            minimumHealing = 1200
            regenAmount = 17
            totalHealing = math.floor(minimumHealing + 4 * (playerMnd - 50))
            end,
        [xi.items.PET_FOOD_THETA_BISCUIT] = function (x)
            minimumHealing = 1600
            regenAmount    = 20
            totalHealing   = math.floor(minimumHealing + 4 * (playerMnd - 55))
        end,
    }

    -- Now calculating the bonus based on gear.
    switch (player:getEquipID(xi.slot.BODY)) : caseof {
        [xi.items.BEAST_JACKCOAT] = function (x)
            -- This will remove Paralyze, Poison and Blind from the pet.
            pet:delStatusEffect(xi.effect.PARALYSIS)
            pet:delStatusEffect(xi.effect.POISON)
            pet:delStatusEffect(xi.effect.BLINDNESS)
        end,
        [xi.items.BEAST_JACKCOAT_P1] = function (x)
            -- This will remove Paralyze, Poison, Blind, Weight, Slow and Silence from the pet.
            pet:delStatusEffect(xi.effect.PARALYSIS)
            pet:delStatusEffect(xi.effect.POISON)
            pet:delStatusEffect(xi.effect.BLINDNESS)
            pet:delStatusEffect(xi.effect.WEIGHT)
            pet:delStatusEffect(xi.effect.SLOW)
            pet:delStatusEffect(xi.effect.SILENCE)
        end,
        [xi.items.MONSTER_JACKCOAT] = function (x)
            -- This will remove Weight, Slow and Silence from the pet.
            pet:delStatusEffect(xi.effect.WEIGHT)
            pet:delStatusEffect(xi.effect.SLOW)
            pet:delStatusEffect(xi.effect.SILENCE)
        end,
        [xi.items.MONSTER_JACKCOAT_P1] = function (x)
            -- This will remove Paralyze, Poison, Blind, Weight, Slow and Silence from the pet.
            pet:delStatusEffect(xi.effect.PARALYSIS)
            pet:delStatusEffect(xi.effect.POISON)
            pet:delStatusEffect(xi.effect.BLINDNESS)
            pet:delStatusEffect(xi.effect.WEIGHT)
            pet:delStatusEffect(xi.effect.SLOW)
            pet:delStatusEffect(xi.effect.SILENCE)
        end,
    }

    -- Adding bonus to the total to heal.

    if rewardHealingMod ~= nil and rewardHealingMod > 0 then
        totalHealing = totalHealing + math.floor(totalHealing * rewardHealingMod / 100)
    end

    local diff = petMaxHP - petCurrentHP

    if diff < totalHealing then
        totalHealing = diff
    end

    pet:addHP(totalHealing)
    pet:wakeUp()

    -- Apply regen xi.effect.
    if xi.settings.main.ENABLE_COP == 1 then
        pet:delStatusEffect(xi.effect.REGEN)
        pet:addStatusEffect(xi.effect.REGEN, regenAmount, 3, regenTime) -- 3 = tick, each 3 seconds.
    end

    player:removeAmmo()

    pet:updateEnmityFromCure(pet, totalHealing)

    return totalHealing
end

return abilityObject
