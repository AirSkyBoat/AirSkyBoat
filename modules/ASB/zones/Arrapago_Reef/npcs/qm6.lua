-----------------------------------
-- Area: Arrapago Reef
--  NPC: ??? (H-10 / COR boat)
-- Involved in Quests: 'Luck of the Draw', 'Equipped for All Occasions', 'Navigating the Unfriendly Seas'
-- !pos 468.767 -12.292 111.817 54
-----------------------------------
-- Removes trade, trigger and event functions for COR_AF2_Navigating_the_Unfriendly_Seas
-----------------------------------
require('modules/module_utils')

local m = Module:new('arrapago_reef_qm6')
-- QM6 Arrapago Reef
m:addOverride('xi.zones.Arrapago_Reef.npcs.qm6.onTrade', function(player, npc, trade) -- removes trade functions for COR_AF2_Navigating_the_Unfriendly_Seas
end)

m:addOverride('xi.zones.Arrapago_Reef.npcs.qm6.onTrigger', function(player, npc) -- removes trigger functions for COR_AF2_Navigating_the_Unfriendly_Seas
end)

m:addOverride('xi.zones.Arrapago_Reef.npcs.qm6.onEventFinish', function(player, csid, option, npc) -- removes trigger functions for COR_AF2_Navigating_the_Unfriendly_Seas
end)

return m
