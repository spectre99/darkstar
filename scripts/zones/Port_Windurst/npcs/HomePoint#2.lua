-----------------------------------
-- Area: Port Windurst
--  NPC: HomePoint#2
-- !pos -207 -8.159 210 240
-----------------------------------
require("scripts/globals/settings");
local ID = require("scripts/zones/Port_Windurst/IDs");
require("scripts/globals/homepoint");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    homepointMenu(player, 8701, 23);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)

    if (csid == 8701) then

        if (option == 1) then
            player:setHomePoint();
            player:messageSpecial(ID.text.HOMEPOINT_SET);
        else
            hpTeleport(player, option);
        end
    end
end;