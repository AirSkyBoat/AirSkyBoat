-----------------------------------
-- Area: Wajaom Woodlands
--  NPC: Leypoint
-- Teleport point, Quest -- NAVIGATING THE UNFRIENDLY SEAS RELATED
-- !pos -200.027 -8.500 80.058 51
-----------------------------------
-- Removes trade, trigger and event functions for COR_AF2_Navigating_the_Unfriendly_Seas
-----------------------------------
require('modules/module_utils')

local m = Module:new('wajoam_woodlands_qm6')
-- Leypoint Wajaom Woodlands
m:addOverride('xi.zones.Wajaom_Woodlands.npcs.Leypoint.onTrade', function(player, npc, trade) -- removes trade functions for COR_AF2_Navigating_the_Unfriendly_Seas
end)

m:addOverride('xi.zones.Wajaom_Woodlands.npcs.Leypoint.onTrigger', function(player, npc) -- removes triggerfunctions for COR_AF2_Navigating_the_Unfriendly_Seas
end)

return m
