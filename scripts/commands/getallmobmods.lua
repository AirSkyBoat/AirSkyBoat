---------------------------------------------------------------------------------------------------
-- func: getallmobmod <modID|MOD_NAME|all|nonzero>
-- desc: prints all mobmods from a selected target mob that doesn't have a 0 value
-- 
---------------------------------------------------------------------------------------------------
cmdprops =
{
    permission = 1,
    parameters = "s"
}

function error(player, msg)
    player:PrintToPlayer(msg)
    player:PrintToPlayer("!getmobmod <modID|MOD_NAME|all|nonzero>")
end

function onTrigger(player, arg)
    -- validate target
    local target = player:getCursorTarget()
    if not target or not target:isMob() then
        error(player, "Current target is not a MOB (mobMods only exist on mobs).")
        return
    end

    -- build enum maps and ordered list
    local modNameByNum = {}
    local modsList = {} -- { {id=..., name=...}, ... }
    for name, id in pairs(xi.mobMod) do
        if type(id) == "number" then
            modNameByNum[id] = name
            table.insert(modsList, { id = id, name = name })
        end
    end
    table.sort(modsList, function(a, b) return a.id < b.id end)

    -- no/blank arg defaults to nonzero listing
    arg = arg or ""
    arg = string.upper(arg)

    -- handle list modes
    if arg == "" or arg == "NONZERO" or arg == "ALL" then
        local includeZero = (arg == "ALL")
        player:PrintToPlayer(string.format(
            "%s (ID %d): listing %s mobMods...",
            target:getName(), target:getID(), includeZero and "ALL" or "NON-ZERO"
        ))
        local count = 0
        for _, m in ipairs(modsList) do
            local val = target:getMobMod(m.id)
            if includeZero or val ~= 0 then
                player:PrintToPlayer(string.format("mobMod.%s = %d", m.name, val))
                count = count + 1
            end
        end
        player:PrintToPlayer(string.format("Total printed: %d", count))
        return
    end

    -- single lookup mode (by numeric id or enum name)
    local modId, modName
    local maybeNum = tonumber(arg)
    if maybeNum then
        modId = maybeNum
        modName = modNameByNum[modId]
    else
        if xi.mobMod[arg] then
            modId = xi.mobMod[arg]
            modName = arg
        end
    end

    if not modId or not modName then
        error(player, "Invalid mobMod identifier.")
        return
    end

    local val = target:getMobMod(modId)
    player:PrintToPlayer(string.format(
        "%s's mobMod %d (%s) = %d",
        target:getName(), modId, modName, val
    ))
end
