-----------------------------------
-- entitydiag
--   Dump diagnostics for the player's current target (mob or NPC)
-- Usage: !entitydiag          -> uses current cursor/target
--        !entitydiag <id>     -> optional absolute ID (mobid/npcid)
-----------------------------------

require("scripts/globals/status")     -- for STATUS_TYPE names if available
require("scripts/globals/zone")       -- for zone names
require("scripts/globals/utils") 
require("scripts/globals/status")    -- printf helpers if you have them

local bit = bit or require("bit")     -- on some stacks bit is global already

cmdprops =
{
    permission = 1,   -- GM
    parameters = "i"  -- optional numeric id
}

-- --- tiny helpers

local function safe(entity, method, ...)
    -- Call entity:method(...) but never crash if missing; returns ok, valueOrNil
    if not entity or not method or type(entity[method]) ~= "function" then
        return false, nil
    end
    local ok, val = pcall(entity[method], entity, ...)
    return ok, val
end

local function sbool(b)
    if b == nil then return "nil" end
    return b and "true" or "false"
end

local function enumName(enumTbl, val)
    if type(enumTbl) == "table" then
        for k, v in pairs(enumTbl) do
            if v == val then
                return ("xi.status.%s"):format(k)
            end
        end
    end
    return tostring(val)
end

local function tryGetPos(e)
    -- Handles stacks that expose either getPos() (table) or getXPos/Y/ZPos
    local okT, posT = safe(e, "getPos")
    if okT and type(posT) == "table" then
        return posT.x or 0, posT.y or 0, posT.z or 0, posT.rot or (posT.rotation or 0)
    end
    local _, x = safe(e, "getXPos")
    local _, y = safe(e, "getYPos")
    local _, z = safe(e, "getZPos")
    local _, r = safe(e, "getRotPos")
    return x or 0, y or 0, z or 0, r or 0
end

local function nameOfStatus(st)
    -- Prefer xi.status (standard in scripts/globals/status.lua)
    local statTbl = (rawget(_G, "xi") and xi.status) or nil
    if type(statTbl) == "table" then
        for k, v in pairs(statTbl) do
            if v == st then
                return ("xi.status.%s"):format(k)
            end
        end
    end
    -- Fallback: some builds expose STATUS_TYPE directly
    if type(STATUS_TYPE) == "table" then
        for k, v in pairs(STATUS_TYPE) do
            if v == st then
                return ("STATUS_TYPE.%s"):format(k)
            end
        end
    end
    return tostring(st)
end

local function mobOrNpcString(e)
    local _, isMob = safe(e, "isMob")
    local _, isNpc = safe(e, "isNPC")
    local _, isPc  = safe(e, "isPC")
    local kinds = {}
    if isMob then table.insert(kinds, "MOB") end
    if isNpc then table.insert(kinds, "NPC") end
    if isPc  then table.insert(kinds, "PC")  end
    if #kinds == 0 then return "UNKNOWN" end
    return table.concat(kinds, "|")
end

local function heyPrint(line)
    -- Print to console; also tell the GM for quick glance
    print(line)
end

local function hrule()
    heyPrint("--------------------------------------------")
end

local function dumpKV(label, val)
    heyPrint(string.format("%-22s : %s", label, tostring(val)))
end

-- --- main

function onTrigger(player, maybeId)
    local target = nil

    if type(maybeId) == "number" and maybeId > 0 then
        -- Try both NPC and MOB lookups through luautils; they return optional CLuaBaseEntity
        local luautils = _G.luautils
        if luautils and luautils.GetEntityByID then
            -- instance-aware path (3rd arg is optional filter; we just pass nils)
            local ok, ent = pcall(luautils.GetEntityByID, maybeId, nil, nil)
            if ok and ent and type(ent) == "userdata" then
                target = ent
            end
        end
        if not target and luautils and luautils.GetMobByID then
            local ok, ent = pcall(luautils.GetMobByID, maybeId, nil)
            if ok and ent and type(ent) == "userdata" then
                target = ent
            end
        end
        if not target and luautils and luautils.GetNPCByID then
            local ok, ent = pcall(luautils.GetNPCByID, maybeId, nil)
            if ok and ent and type(ent) == "userdata" then
                target = ent
            end
        end
    end

    if not target then
        -- Prefer cursor target if the stack exposes it; otherwise getTarget()
        local _, cur = safe(player, "getCursorTarget")
        if cur then target = cur end
    end
    if not target then
        local _, tgt = safe(player, "getTarget")
        if tgt then target = tgt end
    end

    if not target then
        player:printToPlayer("entitydiag: No target and no ID supplied.")
        return
    end

    local _, absId   = safe(target, "getID")
    local _, name    = safe(target, "getName")
    local _, zone    = safe(target, "getZoneID")
    local x, y, z, r = tryGetPos(target)
    local _, status  = safe(target, "getStatus")
    local _, inst    = safe(target, "getInstance")

    local targid = 0
    if absId then
        targid = bit.band(absId, 0x0FFF)
    end

    hrule()
    heyPrint("ENTITY DIAGNOSTICS")
    hrule()
    dumpKV("Name",              name or "<nil>")
    dumpKV("Abs ID",            absId or "<nil>")
    dumpKV("TargID (id & 0xFFF)", string.format("%d (0x%03X)", targid, targid))
    dumpKV("Kind (type flags)", mobOrNpcString(target))
    dumpKV("ZoneID",            zone or "<nil>")
    dumpKV("Instance?",         sbool(inst ~= nil))
    if inst then
        local okIID, iid = safe(inst, "getID")
        dumpKV("  InstanceID", okIID and iid or "<err>")
    end
    dumpKV("Status",            status and nameOfStatus(status) or "<nil>")
    dumpKV("Position (x,y,z)",  string.format("%.3f, %.3f, %.3f", x or 0, y or 0, z or 0))
    dumpKV("Rotation",          r or 0)
    hrule()

    -- MOB-only block
    local _, isMob = safe(target, "isMob")
    if isMob then
        local _, pool     = safe(target, "getPool")
        local _, family   = safe(target, "getFamily")
        local _, mType    = safe(target, "getMobType")
        local _, behav    = safe(target, "getBehaviour")
        local _, elem     = safe(target, "getElement")
        local _, spType   = safe(target, "getSpawnType")
        local _, respawn  = safe(target, "getRespawnTime")
        local _, speed    = safe(target, "getSpeed")
        local _, speedsub = safe(target, "getSpeedSub")
        local _, flags    = safe(target, "getEntityFlags")
        local _, aggro    = safe(target, "isAggro")
        local _, trues    = safe(target, "hasTrueDetection")
        local _, link     = safe(target, "isLinkable")

        heyPrint("MOB FIELDS")
        hrule()
        dumpKV("PoolID",          pool or "<nil>")
        dumpKV("FamilyID",        family or "<nil>")
        dumpKV("MobType(bitmask)",mType or "<nil>")
        dumpKV("Behaviour(bits)", behav or "<nil>")
        dumpKV("Element",         elem or "<nil>")
        dumpKV("SpawnType(bits)", spType or "<nil>")
        dumpKV("Respawn(ms)",     respawn or "<nil>")
        dumpKV("Speed",           speed or "<nil>")
        dumpKV("SpeedSub",        speedsub or "<nil>")
        dumpKV("EntityFlags",     flags or "<nil>")
        dumpKV("Aggro?",          sbool(aggro))
        dumpKV("TrueDetection?",  sbool(trues))
        dumpKV("Linking?",        sbool(link))
        hrule()

        -- Selected mobmods if available
        if xi and xi.mobMod then
            local function mobmod(lbl, k)
                local ok, v = safe(target, "getMobMod", k)
                if ok then dumpKV(lbl, v) end
            end
            heyPrint("MOB MODS (sample)")
            hrule()
            if xi.mobMod.DETECTION then mobmod("MOD_DETECTION", xi.mobMod.DETECTION) end
            if xi.mobMod.ALWAYS_AGGRO then mobmod("ALWAYS_AGGRO", xi.mobMod.ALWAYS_AGGRO) end
            if xi.mobMod.CHARMABLE then mobmod("CHARMABLE", xi.mobMod.CHARMABLE) end
            hrule()
        end
    end

    -- NPC-only block
    local _, isNpc = safe(target, "isNPC")
    if isNpc then
        local _, anim    = safe(target, "getAnimation")
        local _, animSub = safe(target, "getAnimationSub")
        local _, wides   = safe(target, "getWideScan")
        local _, flags   = safe(target, "getEntityFlags")
        heyPrint("NPC FIELDS")
        hrule()
        dumpKV("Animation",       anim or "<nil>")
        dumpKV("AnimationSub",    animSub or "<nil>")
        dumpKV("Widescan",        wides or "<nil>")
        dumpKV("EntityFlags",     flags or "<nil>")
        hrule()
    end

    -- Model / look (best effort; some stacks expose getModelId or getLook)
    local _, look = safe(target, "getLook")
    if look then
        heyPrint("LOOK (raw table)")
        hrule()
        for k,v in pairs(look) do
            dumpKV(tostring(k), v)
        end
        hrule()
    else
        local _, modelid = safe(target, "getModelId")
        if modelid then
            dumpKV("ModelID", modelid)
            hrule()
        end
    end

    player:PrintToPlayer("entitydiag: dumped to console for " .. (name or "<unknown>"))
end
