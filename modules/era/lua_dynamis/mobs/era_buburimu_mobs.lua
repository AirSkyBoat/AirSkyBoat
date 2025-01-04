-----------------------------------
--  Buburimu Mobs Era Module  --
-----------------------------------
require('scripts/globals/dynamis')
-----------------------------------
xi = xi or {}
xi.dynamis = xi.dynamis or {}

-- This function is needed because we dont have a way to set a constant order for job_specials
local function apocRemoveAdditionalEffects(mob)
    local statusEffects =
    {
        xi.effect.MIGHTY_STRIKES,
        xi.effect.HUNDRED_FISTS,
        xi.effect.MANAFONT,
        xi.effect.CHAINSPELL,
        xi.effect.PERFECT_DODGE,
        xi.effect.INVINCIBLE,
        xi.effect.BLOOD_WEAPON,
        xi.effect.SOUL_VOICE,
        xi.effect.MEIKYO_SHISUI,
        xi.effect.ASTRAL_FLOW,
    }

    for _, effect in pairs(statusEffects) do
        if mob:hasStatusEffect(effect) then
            mob:delStatusEffect(effect)
        end
    end

    mob:setAutoAttackEnabled(true)
    mob:setMobAbilityEnabled(true)
    mob:clearActionQueue()
end

local apocSpellList =
{
    -- Manafont
    {
        xi.magic.spell.FIRAGA_III,
        xi.magic.spell.BLIZZAGA_III,
        xi.magic.spell.AEROGA_III,
        xi.magic.spell.STONEGA_III,
        xi.magic.spell.THUNDAGA_III,
        xi.magic.spell.WATERGA_III
    },
    -- Chainspell
    {
        xi.magic.spell.BLINDGA,
        xi.magic.spell.PARALYGA,
        xi.magic.spell.BINDGA,
        xi.magic.spell.BREAKGA,
        xi.magic.spell.SLEEPGA_II,
        xi.magic.spell.DEATH
    },
    -- Soul Voice
    {
        xi.magic.spell.HORDE_LULLABY,
        xi.magic.spell.MASSACRE_ELEGY,
        xi.magic.spell.MAGIC_FINALE,
        xi.magic.spell.VALOR_MINUET_IV,
        xi.magic.spell.VICTORY_MARCH,
        xi.magic.spell.BLADE_MADRIGAL
    },
}

local apocAbilities = -- Setup 2hr Lockouts
{
    { 'bloodspiller_killed' , xi.jsa.MIGHTY_STRIKES },  -- WAR
    { 'hamfist_killed'      , xi.jsa.HUNDRED_FISTS    },-- MNK
    { 'flesheater_killed'   , xi.jsa.BENEDICTION   },   -- WHM
    { 'flamecaller_killed'  , xi.jsa.MANAFONT },        -- BLM
    { 'gosspix_killed'      , xi.jsa.CHAINSPELL     },  -- RDM
    { 'bodysnatcher_killed' , xi.jsa.PERFECT_DODGE  },  -- THF
    { 'ironclad_killed'     , xi.jsa.INVINCIBLE },      -- PLD
    { 'shamblix_killed'     , xi.jsa.BLOOD_WEAPON },    -- DRK
    { 'woodnix_killed'      , 710 },                    -- BST
    { 'melomanic_killed'    , xi.jsa.SOUL_VOICE },      -- BRD
    { 'lyncean_killed'      , xi.jsa.EES_GOBLIN },      -- RNG
    { 'levinblade_killed'   , xi.jsa.MEIKYO_SHISUI },   -- SAM
    { 'fleetfoot_killed'    , xi.jsa.MIJIN_GAKURE   },  -- NIN
    { 'elvaansticker_killed', xi.jsa.CALL_WYVERN    },  -- DRG
    { 'bibliopage_killed'   , xi.jsa.ASTRAL_FLOW    },  -- SMN
}

local apocWeaponskillLockouts =
{
    { 'stihi_killed',       642 }, -- Flame Breath
    { 'vishap_killed',      643 }, -- Poison Breath
    { 'jurik_killed',       644 }, -- Wind Breath
    { 'barong_killed',      645 }, -- Body Slam
    { 'tarasca_killed',     646 }, -- Heavy Stomp
    { 'alklha_killed',      647 }, -- Chaos Blade
    { 'basilic_killed',     648 }, -- Petro Eyes
    { 'aitvaras_killed',    649 }, -- Voidsong
    { 'koschei_killed',     650 }, -- Thornsong
    { 'stollenwurm_killed', 651 }, -- Lodesong
}

xi.dynamis.onSpawnApoc = function(mob)
    local zone = mob:getZone()
    xi.dynamis.setMegaBossStats(mob)
    -- Set Mods
    mob:addImmunity(xi.immunity.GRAVITY)
    mob:addImmunity(xi.immunity.TERROR)
    mob:addImmunity(xi.immunity.SILENCE)
    mob:addImmunity(xi.immunity.SLEEP)
    mob:addImmunity(xi.immunity.LIGHT_SLEEP)
    mob:addImmunity(xi.immunity.DARK_SLEEP)
    mob:setMod(xi.mod.DARK_EEM, 5) -- Lowest EEM tier for max resist
    mob:setMod(xi.mod.STUNRES, 10)
    mob:setMod(xi.mod.BINDRES, 20)
    mob:setMod(xi.mod.REGAIN, 50)  -- 'minor level of regain'
    mob:setMod(xi.mod.REFRESH, 250)
    mob:setMod(xi.mod.MACC, 200)
    mob:setMod(xi.mod.MATT, 50)
    mob:setMod(xi.mod.FASTCAST, 50)
    mob:setSpeed(78) -- 98% movement speed (It happens to also be 98) (78 to match 'era' movement speed)
    mob:setMobMod(xi.mobMod.WEAPON_BONUS, 60)
    mob:setMobMod(xi.mobMod.MAGIC_COOL, 15)

    mob:setDelay(2000)
    -- TODO: Set pathing for apoc beast
    mob:setBehaviour(xi.behavior.NO_TURN, 1)
    -- Make it so we can reference arbitrary mob
    zone:setLocalVar('Apocalyptic_Beast', mob:getID())
end

xi.dynamis.onSpawnBubuDragon = function(mob)
    xi.dynamis.setNMStats(mob)
    mob:setAutoAttackEnabled(false)
    mob:setRoamFlags(xi.roamFlag.NONE)

    mob:addImmunity(xi.immunity.GRAVITY)
    mob:addImmunity(xi.immunity.TERROR)
    mob:addImmunity(xi.immunity.SLEEP)
    mob:addImmunity(xi.immunity.SILENCE)
    mob:setMod(xi.mod.REGAIN, 1000)
    mob:setSpeed(60) -- 34% movement speed
    mob:setBehaviour(xi.behavior.NO_TURN, 1)

    -- This dragon is apparently insane according to the wiki
    -- Values are approximated based on era accounts
    if mob:getName() == 'DE_Aitvaras' then
        mob:setMobMod(xi.mobMod.WEAPON_BONUS, 150)
        mob:setMod(xi.mod.ATT, 550)
        mob:setMod(xi.mod.UDMGMAGIC, -4000) -- Capture shows reduced magic damage (estimated)
    end
end

xi.dynamis.onEngagedApoc = function(mob, target)
    local next2hr = os.time() + 5 -- Use 5 seconds after engage
    mob:setLocalVar('next2hrTime', next2hr)

    local apocTwoHourLockout = { }
    for var, abilities in pairs(apocAbilities) do
        if mob:getZone():getLocalVar(abilities[1]) ~= 1 then
            table.insert(apocTwoHourLockout, abilities[2])
        end
    end

    xi.dynamis.apoc2hrlist = { }
    xi.dynamis.apoc2hrlist = apocTwoHourLockout
end

xi.dynamis.onFightApoc = function(mob, target)
    if
        mob:getLocalVar('next2hrTime') <= os.time() and
        #xi.dynamis.apoc2hrlist > 0
    then
        local abilityChoice = mob:getLocalVar('ability_number') + 1 -- lua starts at 1 so add 1 and increment after ability is used
        local next2hr = os.time() + math.random(30, 45)

        if  abilityChoice > #xi.dynamis.apoc2hrlist then
            mob:setLocalVar('ability_number', 0)
        end

        apocRemoveAdditionalEffects(mob)                         -- Must remove the effect before applying a new one otherwise you get chainspell + manafont spamming -ga 3s
        mob:useMobAbility(xi.dynamis.apoc2hrlist[abilityChoice]) -- Use the mobs two hour
        mob:setLocalVar('ability_number', abilityChoice)         -- Set the next ability var
        mob:setLocalVar('next2hrTime', next2hr)                  -- Set the cooldown of the two hour
    end

    if
        mob:hasStatusEffect(xi.effect.MANAFONT) or
        mob:hasStatusEffect(xi.effect.CHAINSPELL) or
        mob:hasStatusEffect(xi.effect.SOUL_VOICE)
    then
        mob:setMagicCastingEnabled(true)
    else
        mob:setMagicCastingEnabled(false)
    end
end

-- Picks the spell list based on two hour effect
xi.dynamis.apocMagicPrepare = function(mob, mobTarget, spellId)
    local chosenSpellList = { }
    if mob:hasStatusEffect(xi.effect.MANAFONT) then -- First 2hr
        chosenSpellList = apocSpellList[1]
    elseif mob:hasStatusEffect(xi.effect.CHAINSPELL) then -- Second 2hr
        chosenSpellList = apocSpellList[2]
    elseif mob:hasStatusEffect(xi.effect.SOUL_VOICE) then -- Third 2hr
        chosenSpellList = apocSpellList[3]
    end

    return chosenSpellList[math.random(1, #chosenSpellList)] -- Return random spell in the list
end

xi.dynamis.apocWeaponSkillPrepare = function(mob, mobTarget)
    local apocWeaponskills = { }

    for var, abilities in pairs(apocWeaponskillLockouts) do
        if mob:getZone():getLocalVar(abilities[1]) ~= 1 then
            table.insert(apocWeaponskills, abilities[2])
        end
    end

    return apocWeaponskills[math.random(1, #apocWeaponskills)]
end

xi.dynamis.onFightDragon = function(mob, target)
    if mob:getZone():getLocalVar('MegaBoss_Killed') == 1 then
        mob:setMobMod(xi.mobMod.NO_DROPS, 1)
        DespawnMob(mob:getID())
    end
end

xi.dynamis.onRoamDragon = function(mob)
    if mob:getZone():getLocalVar('MegaBoss_Killed') == 1 then
        mob:setMobMod(xi.mobMod.NO_DROPS, 1)
        DespawnMob(mob:getID())
    end
end
