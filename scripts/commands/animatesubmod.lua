-----------------------------------
-- func: animatesubmob
-- desc: Changes the animationSub of the given MOB. (For testing.)
-----------------------------------
cmdprops =
{
    permission = 1,
    parameters = "ss"
}

local function error(player, msg)
    player:PrintToPlayer(msg)
    player:PrintToPlayer("!animatesubmob (mobID) <animationID|ANIM_NAME>")
end

function onTrigger(player, arg1, arg2)
    local targ
    local animationId

    if arg2 == nil then
        -- No mobID provided: use cursor target as the mob, arg1 is the animation value
        targ = player:getCursorTarget()
        animationId = arg1
    else
        -- mobID and animation provided
        local mobId = tonumber(arg1)
        if not mobId then
            return error(player, "Invalid mobID.")
        end

        -- Try to resolve within the player's instance first, then globally
        local inst = player:getInstance()
        targ = (inst and GetMobByID(mobId, inst)) or GetMobByID(mobId)
        animationId = arg2
    end

    -- validate target
    if not targ then
        return error(player, "You must either enter a valid mobID or target a MOB.")
    end
    if not targ.isMob or not targ:isMob() then
        return error(player, "Targeted entity is not a MOB.")
    end

    -- validate animationID (numeric or xi.anim enum name)
    if animationId ~= nil then
        animationId = tonumber(animationId) or (xi.anim and xi.anim[string.upper(animationId)] or nil)
    end
    if animationId == nil then
        return error(player, "Invalid animationID.")
    end

    local oldAnimation = targ:getAnimationSub()
    targ:setAnimationSub(animationId)

    player:PrintToPlayer(string.format(
        "MOB ID: %i - %s | Old animationSub: %i | New animationSub: %i",
        targ:getID(), targ:getName(), oldAnimation, animationId
    ))
end
