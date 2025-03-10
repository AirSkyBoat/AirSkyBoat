-----------------------------------
-- Acting in Good Faith
-----------------------------------
-- !addquest 2 64
-- Gantineaux : !pos -83 -9 3 238
-- Eperdur   : !pos 129 -6 96 231
-- qm1        : !pos -460.85, -1.5, 425.14
--            : !pos -24.10, -9.303, 258.993
--            : !pos -19.624,-1.631,60.368
--            : !pos 256.757, -20.489, 335.920
-----------------------------------
require('scripts/globals/interaction/quest')
require('scripts/globals/npc_util')
require('scripts/globals/quests')
require('scripts/globals/zone')
local ID = require("scripts/zones/The_Eldieme_Necropolis/IDs")
-----------------------------------

local quest = Quest:new(xi.quest.log_id.WINDURST, xi.quest.id.windurst.ACTING_IN_GOOD_FAITH)

quest.reward =
{
    item = xi.items.SCROLL_OF_TELEPORT_MEA,
    fame = 30,
    fameArea = xi.quest.fame_area.WINDURST,
}

quest.sections =
{
    {
        check = function(player, status, vars)
            return status == QUEST_AVAILABLE and
                player:getFameLevel(xi.quest.fame_area.WINDURST) >= 4 and
                player:getMainLvl() >= 10
        end,

        [xi.zone.WINDURST_WATERS] =
        {
            ['Gantineux'] = quest:progressEvent(10019),

            onEventFinish =
            {
                [10019] = function(player, csid, option, npc)
                    quest:begin(player)
                    npcUtil.giveKeyItem(player, xi.ki.SPIRIT_INCENSE)
                end,
            },
        },
    },

    {
        check = function(player, status, vars)
            return status == QUEST_ACCEPTED
        end,

        [xi.zone.WINDURST_WATERS] =
        {
            ['Gantineux'] =
            {
                onTrigger = function(player, npc)
                    if player:hasKeyItem(xi.ki.SPIRIT_INCENSE) then
                        return quest:progressEvent(10020)
                    elseif player:hasKeyItem(xi.ki.GANTINEUXS_LETTER) then
                        return quest:progressEvent(10022)
                    else
                        return quest:progressEvent(10021)
                    end
                end,
            },

            onEventFinish =
            {
                [10021] = function(player, csid, option, npc)
                    npcUtil.giveKeyItem(player, xi.ki.GANTINEUXS_LETTER)
                end,
            },
        },

        [xi.zone.NORTHERN_SAN_DORIA] =
        {
            ['Eperdur'] =
            {
                onTrigger = function(player, npc)
                    if player:hasKeyItem(xi.ki.GANTINEUXS_LETTER) then
                        return quest:progressEvent(680)
                    end
                end,
            },

            onEventFinish =
            {
                [680] = function(player, csid, option, npc)
                    if quest:complete(player) then
                        player:delKeyItem(xi.ki.GANTINEUXS_LETTER)
                    end
                end,
            },
        },

        [xi.zone.THE_ELDIEME_NECROPOLIS] =
        {
            ['qm1'] =
            {
                onTrigger = function(player, npc)
                    if player:hasKeyItem(xi.ki.SPIRIT_INCENSE) then
                        return quest:progressEvent(50)
                    end
                end,
            },

            onEventFinish =
            {
                [50] = function(player, csid, option, npc)
                    player:messageSpecial(ID.text.SPIRIT_INCENSE_EMITS_PUTRID_ODOR, xi.ki.SPIRIT_INCENSE)
                    player:delKeyItem(xi.ki.SPIRIT_INCENSE)

                    npc:setPos(unpack(ID.npc.QM1_POS[math.random(1, 4)]))
                end,
            },
        },
    },
}

return quest
