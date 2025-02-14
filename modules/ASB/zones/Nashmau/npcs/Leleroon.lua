-----------------------------------
-- Area: Nashmau
--  NPC: Leleroon
-- Corsair AF2 and AF3 quests
-- !pos -14.687 0.000 25.114 53
-----------------------------------
require('modules/module_utils')

local m = Module:new('nashmau_Leleroon')
-- Leleroon NASHMAU
m:addOverride('xi.zones.Nashmau.npcs.Leleroon.onTrade', function(player, npc, trade) -- removes trade functions for COR_AF2_Navigating_the_Unfriendly_Seas
end)

return m
