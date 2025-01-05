-----------------------------------
-- Area: Al'Taieu
--  NPC: qm_jailer_of_love (???)
-- Allows players to spawn the Jailer of Love by trading the Fourth Virtue, Fifth Virtue and Sixth Virtue to a ???.
-- Allows players to spawn Absolute Virtue by killing Jailer of Love.
-- !pos , 431 -0 -603
-----------------------------------
local ID = zones[xi.zone.ALTAIEU]
-----------------------------------
local m = Module:new('zones_altaieu_npcs_qm_jailer_of_love')

m:addOverride('xi.zones.AlTaieu.npcs.qm_jailer_of_love.onTrade', function(player, npc, trade)
    local jol = GetMobByID(ID.mob.JAILER_OF_LOVE)
    local av = GetMobByID(ID.mob.ABSOLUTE_VIRTUE)
    local fourthVirtue, fifthVirtue, sixthVirtue = 1848, 1847, 1849

    if
        jol and not jol:isSpawned() and
        av and not av:isSpawned() and
        trade:hasItemQty(fourthVirtue, 1) and -- fourth_virtue
        trade:hasItemQty(fifthVirtue, 1) and -- fifth_virtue
        trade:hasItemQty(sixthVirtue, 1) and -- sixth_virtue
        trade:getItemCount() == 3 and
        npcUtil.popFromQM(player, npc, { ID.mob.JAILER_OF_LOVE }, { claim = true })
    then
        player:tradeComplete()
    end
end)

return m
