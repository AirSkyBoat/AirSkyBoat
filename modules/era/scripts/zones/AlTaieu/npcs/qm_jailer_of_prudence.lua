-----------------------------------
-- Area: Al'Taieu
--  NPC: qm_jailer_of_prudence (???)
-- Allows players to spawn the Jailer of Prudence by trading the Third Virtue, Deed of Sensibility, and High-Quality Hpemde Organ to a ???.
-- !pos , 706 -1 22
-----------------------------------
local ID = zones[xi.zone.ALTAIEU]
-----------------------------------
local m = Module:new('zones_altaieu_npcs_qm_jailer_of_prudence')

m:addOverride('xi.zones.AlTaieu.npcs.qm_jailer_of_prudence.onTrade', function(player, npc, trade)
    local jop1 = GetMobByID(ID.mob.JAILER_OF_PRUDENCE)
    local jop2 = GetMobByID(ID.mob.JAILER_OF_PRUDENCE + 1)

    if
        jop1 and not jop1:isSpawned() and
        jop2 and not jop2:isSpawned() and
        not GetMobByID(ID.mob.JAILER_OF_PRUDENCE + 1):isSpawned() and
        trade:hasItemQty(xi.item.THIRD_VIRTUE, 1) and -- third_virtue
        trade:hasItemQty(xi.item.DEED_OF_SENSIBILITY, 1) and -- deed_of_sensibility
        trade:hasItemQty(xi.item.HIGH_QUALITY_HPEMDE_ORGAN, 1) and -- high-quality_hpemde_organ
        trade:getItemCount() == 3 and
        npcUtil.popFromQM(player, npc, { ID.mob.JAILER_OF_PRUDENCE, ID.mob.JAILER_OF_PRUDENCE + 1 }, { claim = true })
    then
        player:tradeComplete()
    end
end)

return m
