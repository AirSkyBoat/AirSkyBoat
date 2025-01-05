-----------------------------------
-- Area: Al'Taieu
--  NPC: qm_jailer_of_justice (???)
-- Allows players to spawn the Jailer of Justice by trading the Second Virtue, Deed of Moderation, and HQ Xzomit Organ to a ???.
-- !pos , -278 0 -463
-----------------------------------
local ID = zones[xi.zone.ALTAIEU]
-----------------------------------
local m = Module:new('zones_altaieu_npcs_qm_jailer_of_justice')

m:addOverride('xi.zones.AlTaieu.npcs.qm_jailer_of_justice.onTrade', function(player, npc, trade)
    local joj = GetMobByID(ID.mob.JAILER_OF_JUSTICE)
    -- replace with item enums when LSB adds them
    local secondVirtue, deedOfModeration, hqXzomitOrgan = 1853, 1854, 1855

    if
        joj and not joj:isSpawned() and
        trade:hasItemQty(secondVirtue, 1) and -- second_virtue
        trade:hasItemQty(deedOfModeration, 1) and -- deed_of_moderation
        trade:hasItemQty(hqXzomitOrgan, 1) and -- hq_xzomit_organ
        trade:getItemCount() == 3 and
        npcUtil.popFromQM(player, npc, { ID.mob.JAILER_OF_JUSTICE }, { claim = true })
    then
        player:tradeComplete()
    end
end)

return m
