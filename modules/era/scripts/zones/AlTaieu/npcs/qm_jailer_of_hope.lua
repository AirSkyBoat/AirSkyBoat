-----------------------------------
-- Area: Al'Taieu
--  NPC: qm_jailer_of_hope (???)
-- Allows players to spawn the Jailer of Hope by trading the First Virtue, Deed of Placidity and HQ Phuabo Organ to a ???.
-- !pos -693 -1 -62 33
-----------------------------------
local ID = zones[xi.zone.ALTAIEU]
-----------------------------------
local m = Module:new('zones_altaieu_npcs_qm_jailer_of_hope')

m:addOverride('xi.zones.AlTaieu.npcs.qm_jailer_of_hope.onTrade', function(player, npc, trade)
    local joh = GetMobByID(ID.mob.JAILER_OF_HOPE)

    if
        joh and not joh:isSpawned() and
        trade:hasItemQty(xi.item.FIRST_VIRTUE, 1) and -- first_virtue
        trade:hasItemQty(xi.item.DEED_OF_PLACIDITY, 1) and -- deed_of_placidity
        trade:hasItemQty(xi.item.HIGH_QUALITY_PHUABO_ORGAN, 1) and -- high-quality_phuabo_organ
        trade:getItemCount() == 3 and
        npcUtil.popFromQM(player, npc, { ID.mob.JAILER_OF_HOPE }, { claim = false })
    then
        player:tradeComplete()
        GetMobByID(ID.mob.JAILER_OF_HOPE):timer(3000, function(mobArg)
            if
                player and
                player:isAlive() and
                player:getZoneID() == mobArg:getZoneID()
            then
                mobArg:updateClaim(player)
            else
                -- failsafe if the player pops and warps, or pops and dies
                -- get the jailer out of the water
                mobArg:hideName(false)
                mobArg:setUntargetable(false)
                mobArg:setAnimationSub(6)
            end
        end)
    end
end)

return m
