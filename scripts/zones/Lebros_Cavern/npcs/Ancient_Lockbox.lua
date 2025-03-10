-----------------------------------
-- Area: Lebros Cavern
-- Ancient Lockbox
-----------------------------------
require("scripts/globals/appraisal")
require("scripts/globals/assault")
-----------------------------------

local entity = {}

entity.onTrigger = function(player, npc)
    local qItem =
    {
        [xi.assault.mission.EXCAVATION_DUTY] =
        {
            {
                { itemid = xi.item.UNAPPRAISED_BOX,     droprate = 300 },
                { itemid = xi.item.UNAPPRAISED_EARRING, droprate = 700 },
            },
        },

        [xi.assault.mission.LEBROS_SUPPLIES] =
        {
            {
                { itemid = xi.item.UNAPPRAISED_BOX,  droprate = 300 },
                { itemid = xi.item.UNAPPRAISED_CAPE, droprate = 700 },
            },
        },

        [xi.assault.mission.TROLL_FUGITIVES] =
        {
            {
                { itemid = xi.item.UNAPPRAISED_AXE,       droprate = 300 },
                { itemid = xi.item.UNAPPRAISED_POLEARM,   droprate = 200 },
                { itemid = xi.item.UNAPPRAISED_HEADPIECE, droprate = 100 },
                { itemid = xi.item.UNAPPRAISED_BOX,       droprate = 400 },
            },
        },

        [xi.assault.mission.EVADE_AND_ESCAPE] =
        {
            {
                { itemid = xi.item.UNAPPRAISED_DAGGER, droprate = 700 },
                { itemid = xi.item.UNAPPRAISED_BOX,    droprate = 300 },
            },
        },

        [xi.assault.mission.SIEGEMASTER_ASSASSINATION] =
        {
            {
                { itemid = xi.item.UNAPPRAISED_POLEARM, droprate = 500 },
                { itemid = xi.item.UNAPPRAISED_AXE,     droprate = 100 },
                { itemid = xi.item.UNAPPRAISED_BOX,     droprate = 400 },
            },
        },

        [xi.assault.mission.APKALLU_BREEDING] =
        {
            {
                { itemid = xi.item.UNAPPRAISED_EARRING, droprate = 300 },
                { itemid = xi.item.UNAPPRAISED_SASH,    droprate = 300 },
                { itemid = xi.item.UNAPPRAISED_BOX,     droprate = 400 },
            },
        },
    }

    local regItem =
    {
        [xi.assault.mission.EXCAVATION_DUTY] =
        {
            {
                { itemid = xi.item.REMEDY, droprate = 900 },
                { itemid = 0,               droprate = 100 },
            },

            {
                { itemid = xi.item.REMEDY, droprate = 200 },
                { itemid = 0,               droprate = 800 },
            },

            {
                { itemid = xi.item.HI_POTION_P3, droprate = 400 },
                { itemid = 0, droprate = 600 },
            },

            {
                { itemid = xi.item.HI_POTION_P3, droprate = 200 },
                { itemid = 0, droprate = 800 },
            },
        },

        [xi.assault.mission.LEBROS_SUPPLIES] =
        {
            {
                { itemid = xi.item.REMEDY, droprate = 800 },
                { itemid = 0,               droprate = 200 },
            },

            {
                { itemid = xi.item.RERAISER, droprate = 200 },
                { itemid = 0,                 droprate = 800 },
            },

            {
                { itemid = xi.item.HI_POTION_TANK, droprate = 100 },
                { itemid = 0,                       droprate = 900 },
            },
        },

        [xi.assault.mission.TROLL_FUGITIVES] =
        {
            {
                { itemid = xi.item.HI_POTION_P3, droprate = 800 },
                { itemid = 0, droprate = 200 },
            },

            {
                { itemid = xi.item.RERAISER, droprate = 200 },
                { itemid = 0,                 droprate = 800 },
            },

            {
                { itemid = xi.item.HI_POTION_TANK, droprate = 100 },
                { itemid = 0,                       droprate = 900 },
            },

            {
                { itemid = xi.item.HI_ETHER_TANK, droprate = 100 },
                { itemid = 0,                      droprate = 900 },
            },
        },

        [xi.assault.mission.EVADE_AND_ESCAPE] =
        {
            {
                { itemid = xi.item.HI_POTION_P3, droprate = 1000 },
            },

            {
                { itemid = xi.item.RERAISER, droprate = 250 },
                { itemid = 0,                 droprate = 750 },
            },

            {
                { itemid = xi.item.HI_POTION_TANK, droprate = 250 },
                { itemid = 0,                       droprate = 750 },
            },

            {
                { itemid = xi.item.HI_ETHER_TANK, droprate = 250 },
                { itemid = 0,                      droprate = 750 },
            },
        },

        [xi.assault.mission.SIEGEMASTER_ASSASSINATION] =
        {
            {
                { itemid = xi.item.HI_POTION_P3, droprate = 1000 },
            },

            {
                { itemid = xi.item.RERAISER, droprate = 100 },
                { itemid = 0,                 droprate = 900 },
            },

            {
                { itemid = xi.item.HI_POTION_TANK, droprate = 250 },
                { itemid = 0,                       droprate = 750 },
            },

            {
                { itemid = xi.item.HI_ETHER_TANK, droprate = 250 },
                { itemid = 0,                      droprate = 750 },
            },
        },
    }

    local area = player:getCurrentAssault()
    xi.appraisal.assaultChestTrigger(player, npc, qItem[area], regItem[area])
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
