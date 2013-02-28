-----------------------------------
--  Area: La Theine Plateau
--  NPC: ???
--  Involved in Quest: I Can Hear A Rainbow
-----------------------------------
package.loaded["scripts/zones/La_Theine_Plateau/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/quests");
require("scripts/globals/titles");
require("scripts/globals/settings");
require("scripts/zones/La_Theine_Plateau/TextIDs");

-----------------------------------
-- onTrade
-----------------------------------

function onTrade(player,npc,trade)

	if (player:getQuestStatus(WINDURST, I_CAN_HEAR_A_RAINBOW) == QUEST_ACCEPTED) then
		if (trade:hasItemQty(1125,1) and trade:getItemCount() == 1 and trade:getGil() == 0 and player:getVar("I_CAN_HEAR_A_RAINBOW") == 127) then
			player:startEvent(0x007c);
		end
	end
end;

-----------------------------------
-- onTrigger
-----------------------------------

function onTrigger(player,npc)

end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);

	if (csid == 0x007c) then
		player:tradeComplete();
		player:completeQuest(WINDURST, I_CAN_HEAR_A_RAINBOW);
		player:addTitle(RAINBOW_WEAVER);
		player:unlockJob(15);
		player:addSpell(296);
		player:messageSpecial(UNLOCK_SUMMONER);
		player:messageSpecial(UNLOCK_CARBUNCLE);
		player:setVar("ICanHearARainbow",0);
	end
end;



