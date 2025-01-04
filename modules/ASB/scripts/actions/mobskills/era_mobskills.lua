-----------------------------------
-- AirSkyBoat Lua Module
-- Used to change mobskills luas to era values and use era weaponskills global.
-----------------------------------
local m = Module:new('era_mobskills')

m:addOverride('xi.globals.mobskills.call_wyvern.onMobWeaponSkill', function(target, mob, skill)
    if mob:isInDynamis() then
        local mobInfo = xi.dynamis.mobList[mob:getZoneID()][mob:getZone():getLocalVar((string.format('MobIndex_%s', mob:getID())))]

        if mobInfo ~= nil and mobInfo.info[2] == 'Apocalyptic Beast' then
            if mob:getLocalVar('CALL_WYVERN') == 1 then
                skill:setMsg(xi.msg.basic.NONE)
                return 0
            end

            for i = 5, 1, -1 do
                xi.dynamis.spawnDynamicPet(mob:getTarget(), mob, xi.job.DRG)
            end
        else
            xi.dynamis.spawnDynamicPet(mob:getTarget(), mob, xi.job.DRG)
        end
    else
        mob:spawnPet()
    end

    skill:setMsg(xi.msg.basic.NONE)

    return 0
end)

local function petInactive(pet)
    return
        pet:hasStatusEffect(xi.effect.LULLABY) or
        pet:hasStatusEffect(xi.effect.STUN) or
        pet:hasStatusEffect(xi.effect.PETRIFICATION) or
        pet:hasStatusEffect(xi.effect.SLEEP_II) or
        pet:hasStatusEffect(xi.effect.SLEEP_I) or
        pet:hasStatusEffect(xi.effect.TERROR)
end

m:addOverride('xi.globals.mobskills.astral_flow.onMobSkillCheck', function(target, mob, skill)
    if mob:isInDynamis() then
        -- must have pet
        if not mob:hasPet() then
            return 1
        end

        local pet = mob:getPet()

        -- pet must be an avatar, and active
        if pet:getEcosystem() ~= 5 or petInactive(pet) then
            return 1
        end

        return 0
    end

    return 0
end)

m:addOverride('xi.globals.mobskills.astral_flow.onMobWeaponSkill', function(target, mob, skill)
        local abilityIds =
    {
        919, -- [modelId: 791] Carbuncle
        839, -- [modelId: 792] Fenrir
        913, -- [modelId: 793] Ifrit
        914, -- [modelId: 794] Titan
        915, -- [modelId: 795] Leviathan
        916, -- [modelId: 796] Garuda
        917, -- [modelId: 797] Shiva
        918, -- [modelId: 798] Ramuh
    }

    local avatarOffsets =
    {
        [17444883] = 3, -- Vermilion-eared Noberry
        [17444890] = 3, -- Vermilion-eared Noberry
        [17444897] = 3, -- Vermilion-eared Noberry
        [17453078] = 3, -- Duke Dantalian
        [17453085] = 3, -- Duke Dantalian
        [17453092] = 3, -- Duke Dantalian
        [17506670] = 5, -- Kirin
    }

    skill:setMsg(xi.msg.basic.USES)

    if mob:isInDynamis() then
        -- Check for Apocalyptic Beast and Dagourmarche special cases
        local mobInfo = xi.dynamis.mobList[mob:getZoneID()][mob:getZone():getLocalVar((string.format('MobIndex_%s', mob:getID())))]

        if mobInfo ~= nil and mobInfo.info[2] == 'Apocalyptic Beast' then
            if mob:getLocalVar('ASTRAL_FLOW') == 1 then
                skill:setMsg(xi.msg.basic.NONE)
                return xi.effect.NONE
            end

            xi.dynamis.spawnDynamicPet(target, mob, xi.job.SMN)
        elseif mobInfo ~= nil and mobInfo.info[2] == 'Dagourmarche' then
            xi.dynamis.spawnDynamicPet(target, mob, xi.job.SMN)
        else
        -- Use this for normal mobs in dynamis
            if mob:getPet() == nil then
                print('Mob pet is nil')
                xi.dynamis.spawnDynamicPet(target, mob, xi.job.SMN)
                -- mob:getPet():setLocalVar('avatar_astral_flow', 1)
            end

            local pet = mob:getPet()
            skill:setMsg(xi.msg.basic.USES)

            -- no effect if pet is inactive
            if petInactive(pet) then
                return xi.effect.ASTRAL_FLOW
            end

            local modelId = pet:getModelId()
            local abilityId = abilityIds[modelId - 790]
            if abilityId ~= nil then
                pet:useMobAbility(abilityId)
            end

            return xi.effect.ASTRAL_FLOW
        end
    else
        local mobID  = mob:getID()
        local avatar = mobID + 2 -- default offset

        if avatarOffsets[mobID] then
            avatar = mobID + avatarOffsets[mobID]
        end

        if not GetMobByID(avatar):isSpawned() then
            GetMobByID(avatar):setSpawn(mob:getXPos() + 1, mob:getYPos(), mob:getZPos() + 1, mob:getRotPos())
            SpawnMob(avatar):updateEnmity(mob:getTarget())
        end
    end

    return xi.effect.ASTRAL_FLOW
end)

return m
