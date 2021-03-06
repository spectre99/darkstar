-----------------------------------
-- Area: The Garden of Ru'Hmet
--  NM:  Jailer of Fortitude
-----------------------------------
local ID = require("scripts/zones/The_Garden_of_RuHmet/IDs");
require("scripts/globals/settings");
require("scripts/globals/limbus");
require("scripts/globals/status");
require("scripts/globals/magic");

function onMobSpawn(mob)
    -- Give it two hour
    mob:setMobMod(dsp.mobMod.MAIN_2HOUR, 1);
    mob:setMobMod(dsp.mobMod.MULTI_2HOUR, 1); -- not currently implemented
    -- Change animation to humanoid w/ prismatic core
    mob:AnimationSub(1);
    mob:setModelId(1169);
end;

function onMobFight(mob, target)
    local delay = mob:getLocalVar("delay");
    local LastCast = mob:getLocalVar("LAST_CAST");
    local spell = mob:getLocalVar("COPY_SPELL");

    if (mob:getBattleTime() - LastCast > 30) then
        mob:setLocalVar("COPY_SPELL", 0);
        mob:setLocalVar("delay", 0);
    end;

    if (not GetMobByID(ID.mob.KFGHRAH_WHM):isDead() or not GetMobByID(ID.mob.KFGHRAH_BLM):isDead()) then -- check for kf'ghrah
        if (spell > 0 and not mob:hasStatusEffect(dsp.effect.SILENCE)) then
            if (delay >= 3) then
                mob:castSpell(spell);
                mob:setLocalVar("COPY_SPELL", 0);
                mob:setLocalVar("delay", 0);
            else
                mob:setLocalVar("delay", delay+1);
            end
        end
    end
end;

function onMagicHit(caster,target,spell)
    if (spell:tookEffect() and (caster:isPC() or caster:isPet()) and spell:getSpellGroup() ~= dsp.magic.spellGroup.BLUE ) then
        -- Handle mimicked spells
        target:setLocalVar("COPY_SPELL", spell:getID());
        target:setLocalVar("LAST_CAST", target:getBattleTime());
        target:setLocalVar("reflectTime", target:getBattleTime());
        target:AnimationSub(1);
    end;

    return 1;
end;

function onMobDeath(mob, player, isKiller)
    -- Despawn the pets if alive
    DespawnMob(ID.mob.KFGHRAH_WHM);
    DespawnMob(ID.mob.KFGHRAH_BLM);
end;

function onMobDespawn(mob)
    local qm1 = GetNPCByID(ID.npc.JAILER_OF_FORTITUDE_QM);
    qm1:updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);

    -- Move it to a random location
    local qm1position = math.random(1,5);
    qm1:setPos(ID.npc.JAILER_OF_FORTITUDE_QM_POS[qm1position][1], ID.npc.JAILER_OF_FORTITUDE_QM_POS[qm1position][2], ID.npc.JAILER_OF_FORTITUDE_QM_POS[qm1position][3]);
end;