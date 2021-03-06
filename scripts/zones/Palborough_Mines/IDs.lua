-----------------------------------
-- Area: Palborough_Mines
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[dsp.zone.PALBOROUGH_MINES] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED            = 6381, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                      = 6387, -- Obtained: <item>.
        GIL_OBTAINED                       = 6388, -- Obtained <number> gil.
        KEYITEM_OBTAINED                   = 6390, -- Obtained key item: <keyitem>.
        NOTHING_OUT_OF_ORDINARY            = 6401, -- There is nothing out of the ordinary here.
        SENSE_OF_FOREBODING                = 6402, -- You are suddenly overcome with a sense of foreboding...
        CONQUEST_BASE                      = 7048, -- Tallying conquest results...
        FISHING_MESSAGE_OFFSET             = 7207, -- You can't fish here.
        THE_MACHINE_SEEMS_TO_BE_WORKING    = 7367, -- The machine seems to be working, but you cannot discern its purpose.
        SOMETHING_FALLS_OUT_OF_THE_MACHINE = 7370, -- Something falls out of the machine!
        YOU_CANT_CARRY_ANY_MORE_ITEMS      = 7373, -- There seems to be more left in the machine, but you can't carry any more items.
        MINING_IS_POSSIBLE_HERE            = 7394, -- Mining is possible here if you have <item>.
        CHEST_UNLOCKED                     = 7408, -- You unlock the chest!
        CHEST_FAIL                         = 7409, -- <name> fails to open the chest.
        CHEST_TRAP                         = 7410, -- The chest was trapped!
        CHEST_WEAK                         = 7411, -- You cannot open the chest when you are in a weakened state.
        CHEST_MIMIC                        = 7412, -- The chest was a mimic!
        CHEST_MOOGLE                       = 7413, -- You cannot open the chest while participating in the moogle event.
        CHEST_ILLUSION                     = 7414, -- The chest was but an illusion...
        CHEST_LOCKED                       = 7415, -- The chest appears to be locked. If only you had <item>, perhaps you could open it...
        HOMEPOINT_SET                      = 7455, -- Home point set!
    },
    mob =
    {
        BU_GHI_HOWLBLADE_PH = 
        {
            [17363177] = 17363181, -- 170.000 -15.000 179.000
            [17363178] = 17363181, -- 170.000 -16.000 165.000
            [17363179] = 17363181, -- 166.000 -16.000 135.000
            [17363180] = 17363181, -- 167.207 -18.027 159.374
        },
        ZI_GHI_BONEEATER_PH = 
        {
            [17363205] = 17363208, -- 130.386 -32.313 73.967
        },
        NI_GHU_NESTFENDER   = 17363318,
    },
    npc =
    {
        PALBOROUGH_TREASURE_CHEST = 17363371,
        MINING =
        {
            17363365,
            17363366,
            17363367,
            17363368,
            17363369,
            17363370,
        },
    },
}

return zones[dsp.zone.PALBOROUGH_MINES]