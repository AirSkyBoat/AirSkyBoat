-----------------------------------
-- Area: Throne Room
-- BCNM 60 - Kindred Spirits
-- !pos -111 -6 0.1 165
-----------------------------------
local ID = require("scripts/zones/Throne_Room/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId        = xi.zone.THRONE_ROOM,
    battlefieldId = xi.battlefield.id.KINDRED_SPIRITS,
    maxPlayers    = 6,
    levelCap      = 60,
    timeLimit     = utils.minutes(30),
    index         = 2,
    entryNpc      = "_4l1",
    exitNpcs      = { "_4l2", "_4l3", "_4l4" },
    requiredItems = { xi.item.MOON_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content.groups =
{
    { mobs = { "Demons_Elemental" } },
    { mobs = { "Demons_Avatar" } },
}

content:addEssentialMobs({ "Count_Andromalius", "Duke_Amduscias", "Grand_Marquis_Chomiel", "Duke_Dantalian" })
content.loot =
{

    {
        { item = xi.item.DEMON_HORN, weight = xi.loot.weight.NORMAL },
    },

    {
        { item = xi.item.FORSETIS_AXE, weight = xi.loot.weight.NORMAL },
        { item = xi.item.ARAMISS_RAPIER, weight = xi.loot.weight.NORMAL },
        { item = xi.item.SPARTAN_CESTI, weight = xi.loot.weight.NORMAL },
        { item = xi.item.SAIREN, weight = xi.loot.weight.NORMAL },
        { item = xi.item.ARCHALAUSS_POLE, weight = xi.loot.weight.NORMAL },
    },

    {
        { item = xi.item.LIGHT_BOOMERANG, weight = xi.loot.weight.NORMAL },
        { item = xi.item.ARMBRUST, weight = xi.loot.weight.NORMAL },
        { item = xi.item.SCHWARZ_LANCE, weight = xi.loot.weight.NORMAL },
        { item = xi.item.OMOKAGE, weight = xi.loot.weight.NORMAL },
        { item = xi.item.ARCHALAUSS_POLE, weight = xi.loot.weight.NORMAL },
    },

    {
        { item = xi.item.VASSAGOS_SCYTHE, weight = xi.loot.weight.NORMAL },
        { item = xi.item.KABRAKANS_AXE, weight = xi.loot.weight.NORMAL },
        { item = xi.item.DRAGVANDIL, weight = xi.loot.weight.NORMAL },
        { item = xi.item.HAMELIN_FLUTE, weight = xi.loot.weight.NORMAL },
    },

    {
        { item = xi.item.NONE, weight = xi.loot.weight.HIGH },
        { item = xi.item.SCROLL_OF_CARNAGE_ELEGY, weight = xi.loot.weight.NORMAL },
        { item = xi.item.ICE_SPIRIT_PACT, weight = xi.loot.weight.NORMAL },
    },
}

return content:register()
