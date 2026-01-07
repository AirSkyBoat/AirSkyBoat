-----------------------------------
-- Area: Arrapago Reef
-- Door: Runic Seal
-- !pos 36 -10 620 54
-----------------------------------
local ID = require("scripts/zones/Arrapago_Reef/IDs")
require("scripts/globals/besieged")
require("scripts/globals/missions")
require("scripts/globals/instance")
require("scripts/globals/assault")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    printf("[Runic_Seal] onTrigger for %s at %s", player:getName(), npc:getName())
    player:PrintToPlayer("Runic Seal onTrigger fired.", 0, "Debug")
    local targetZone = xi.zone.ILRUSI_ATOLL

    -- Gather details (safe + 5.1-friendly)
    local pname   = player:getName()
    local pid     = player:getID()
    local leader  = player:getLeaderID()
    local isLead  = (pid == leader)
    local psize   = player:getPartySize()
    local pzone   = player:getZoneID()
    local pmjob   = player:getMainJob()  -- job ID (safe to print as number)
    local pmlvl   = player:getMainLvl()

    local nname   = npc:getName()
    local nid     = npc:getID()
    local nx, ny, nz = npc:getXPos(), npc:getYPos(), npc:getZPos()

    local px, py, pz = player:getXPos(), player:getYPos(), player:getZPos()

    -- Server console log
    printf("[RunicSeal] onTrigger: player=%s(id=%d) lead=%s party=%d job=%d lvl=%d curZone=%d " ..
           "npc=%s(id=%d) npcPos=(%.2f,%.2f,%.2f) playerPos=(%.2f,%.2f,%.2f) targetZone=%s",
           tostring(pname), pid, tostring(isLead), psize, pmjob, pmlvl, pzone,
           tostring(nname), nid, nx, ny, nz, px, py, pz, tostring(targetZone))

    local ok, reason = xi.instance.onTrigger(player, npc, targetZone)
    if not ok then
        player:PrintToPlayer("Runic Seal rejected: " .. tostring(reason or "no reason"), 0, "Debug")
        player:messageSpecial(ID.text.NOTHING_HAPPENS)
    end
end

entity.onEventUpdate = function(player, csid, option, target)
    xi.assault.onAssaultUpdate(player, csid, option)
    xi.instance.onEventUpdate(player, csid, option)
end

entity.onEventFinish = function(player, csid, option, target)
    xi.instance.onEventFinish(player, csid, option)
    local inst = player:getInstance()
    if inst and xi.assault then
    end
    if xi.assault.onInstanceCreatedCallback then
        xi.assault.onInstanceCreatedCallback(player, inst)        -- apply cap/armband
    end
end

return entity
