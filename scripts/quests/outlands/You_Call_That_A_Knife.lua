--------------------------------------------------
-- You Call That a Knife?
--------------------------------------------------
-- Log ID: 5 (Outlands), Quest ID: 6
-- Mhebi Juhbily : !pos 40.3811 -11 -160.0374 73
--
-- Additional NPCs:
--  Vah Keshura :
--  Chef Nonberry : !pos -135.225 -1 -92.232 159
--------------------------------------------------
require('scripts/globals/zone')
require('scripts/globals/quests')
require("scripts/globals/titles")
require('scripts/globals/npc_util')
require('scripts/globals/interaction/quest')
---------------------------------------------
local ID = require("scripts/zones/Temple_of_Uggalepih/IDs")
---------------------------------------------
local quest = Quest:new(xi.quest.log_id.OUTLANDS, xi.quest.id.outlands.YOU_CALL_THAT_A_KNIFE)
local cooksLastSpawnedTime = "CooksLastSpawnTime"
local cooksCooldownTime = 600 -- 10 Mins
local questProg = "Prog"
local tradedSandfish = 1
local spokeWithVah = 2
local finalWordsWithMhebi = 3

local spawnedMobs =
{
    ID.mob.COOK_SOLBERRY,
    ID.mob.COOK_NALBERRY,
    ID.mob.COOK_MINBERRY,
    ID.mob.COOK_FULBERRY,
    ID.mob.COOK_FULBERRYS_ELEMENTAL,
}
local spawnParams =
{
    radius = 6,
    hide = -1,
}

quest.reward =
{
    fameArea = xi.quest.fame_area.WINDURST,
    fame     = 100,
    title    = xi.title.YA_DONE_GOOD,
    gil      = 7200,
}

quest.sections =
{
    {
        check = function(player, status, vars)
            return (status == QUEST_AVAILABLE and player:getFameLevel(xi.quest.fame_area.WINDURST) >= 6 and quest:getVar(player, questProg) == 0)
        end,

        [xi.zone.KAZHAM] =
        {
            ['Mhebi_Juhbily'] =
            {
                onTrade = function(player, npc, trade)
                    if npcUtil.tradeHasExactly(trade, xi.items.SANDFISH) then
                        return quest:progressEvent(127, 72, xi.items.SANDFISH)
                    end
                end,
            },
            ['Pula_Rhatti']   = quest:event(269, 74, xi.items.SANDFISH),

            onEventFinish =
            {
                [127] = function(player, csid, option, npc)
                    if option == 511 then -- "Forthwith" (Player said yes to giving the Sandfish)
                        quest:setVar(player, questProg, tradedSandfish)
                        player:confirmTrade()
                    else
                        player:tradeComplete(false) -- "Nope" (Player didn't want to give the Sandfish)
                    end
                end,
            },
        },
    },

    {
        check = function(player, status, vars)
            return (status == QUEST_AVAILABLE and player:getFameLevel(xi.quest.fame_area.WINDURST) >= 6 and quest:getVar(player, questProg) == tradedSandfish)
        end,

        [xi.zone.KAZHAM] =
        {
            ['Mhebi_Juhbily'] = quest:event(318),
            ['_6y9']          = quest:progressEvent(128), -- Shed
            ['Pula_Rhatti']   = quest:event(269),

            onEventFinish =
            {
                [128] = function(player, csid, option, npc)
                    if option == 1 then -- The player accepted helping Mhebi
                        quest:begin(player) -- Officially start the Quest
                    end
                end,
            },
        },
    },

    {
        check = function(player, status, vars)
            return status == QUEST_ACCEPTED and not player:hasKeyItem(xi.ki.NONBERRYS_KNIFE)
        end,

        [xi.zone.KAZHAM] =
        {
            ['Mhebi_Juhbily'] = quest:event(129),
            ['Vah_Keshura']   =
            {
                onTrigger = function(player, npc)
                    if quest:getVar(player, questProg) == spokeWithVah then
                        return quest:event(131)
                    else
                        return quest:progressEvent(130)
                    end
                end,
            },

            onEventFinish =
            {
                [130] = function(player, csid, option, npc)
                    quest:setVar(player, questProg, spokeWithVah)
                end,
            },
        },

        [xi.zone.TEMPLE_OF_UGGALEPIH] =
        {
            ['Chef_Nonberry'] =
            {
                onTrade = function(player, npc, trade)
                    if npcUtil.tradeHasExactly(trade, xi.items.TONBERRY_BOARD) then
                        return quest:progressEvent(27) -- Can't cut!
                    elseif npcUtil.tradeContainsItemsWithFlags(trade, xi.itemFlag.EX) then
                        return quest:noAction()-- Do not accept any EX items!
                    elseif trade:getItemCount() == 1 then
                        return quest:event(28) -- Chop!
                    end
                end,
            },

            onEventFinish =
            {
                [27] = function(player, csid, option, npc)
                    player:confirmTrade()
                    npcUtil.giveKeyItem(player, xi.ki.NONBERRYS_KNIFE)
                end,

                [28] = function(player, csid, option, npc)
                    -- Spawn NMs: Cook Solberry, Cook Nalberry, Cook Fulberry and Cook Minberry
                    -- NOTE: 10 min cooldown on ability to spawn
                    local currentTime = os.time()
                    local timeSinceLastSpawn = currentTime - quest:getVar(player, cooksLastSpawnedTime)

                    if
                        (not GetMobByID(ID.mob.COOK_SOLBERRY):isSpawned()) and
                        (not GetMobByID(ID.mob.COOK_NALBERRY):isSpawned()) and
                        (not GetMobByID(ID.mob.COOK_MINBERRY):isSpawned()) and
                        (not GetMobByID(ID.mob.COOK_FULBERRY):isSpawned()) and
                        (not GetMobByID(ID.mob.COOK_FULBERRYS_ELEMENTAL):isSpawned()) and
                        timeSinceLastSpawn >= cooksCooldownTime
                    then
                        if npcUtil.popFromQM(player, npc, spawnedMobs, spawnParams) then
                            quest:setVar(player, cooksLastSpawnedTime, currentTime)
                        end
                    end

                    player:tradeComplete(true) -- Chef Nonberry will always Chop your item regardless of whether spawning was successful or not
                end,
            },
        },
    },

    {
        check = function(player, status, vars)
            return status == QUEST_ACCEPTED and player:hasKeyItem(xi.ki.NONBERRYS_KNIFE)
        end,

        [xi.zone.KAZHAM] =
        {
            ['Vah_Keshura']   = quest:event(132),
            ['Mhebi_Juhbily'] = quest:progressEvent(133),

            onEventFinish =
            {
                [133] = function(player, csid, option, npc)
                    if quest:complete(player) then
                        player:delKeyItem(xi.ki.NONBERRYS_KNIFE)
                    end
                end,
            },
        },
    },

    {
        check = function(player, status, vars)
            return status == QUEST_COMPLETED and quest:getVar(player, questProg) ~= finalWordsWithMhebi
        end,

        [xi.zone.KAZHAM] =
        {
            ['Mhebi_Juhbily'] = quest:progressEvent(134),

            onEventFinish =
            {
                [134] = function(player, csid, option, npc)
                    quest:setVar(player, questProg, finalWordsWithMhebi)
                    quest:setMustZone(player)
                end,
            },
        },
    },

    {
        check = function(player, status, vars)
            return status == QUEST_COMPLETED and quest:getVar(player, questProg) == finalWordsWithMhebi
        end,

        [xi.zone.KAZHAM] =
        {
            ['Mhebi_Juhbily'] =
            {
                onTrigger = function(player, npc)
                    print('Must Zone? ' .. tostring(quest:getMustZone(player)))

                    if quest:getMustZone(player) then
                        print('Hit')
                        return quest:event(134)
                    else
                        print('Special')
                        return quest:event(135):replaceDefault()
                    end
                end,
            },
        },
    },
}

return quest
