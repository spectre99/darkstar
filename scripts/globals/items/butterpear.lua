-----------------------------------------
-- ID: 5908
-- Item: Butterpear
-- Food Effect: 5Min, All Races
-----------------------------------------
-- Agility +4
-- Vitality +1
-- Resist Amnesia +20
-----------------------------------------
require("scripts/globals/status")
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if (target:hasStatusEffect(dsp.effect.FOOD) == true or target:hasStatusEffect(dsp.effect.FIELD_SUPPORT_FOOD) == true) then
        result = 246
    end
    return result
end

function onItemUse(target)
    target:addStatusEffect(dsp.effect.FOOD,0,0,300,5908)
end

function onEffectGain(target,effect)
    target:addMod(dsp.mod.AGI, 4)
    target:addMod(dsp.mod.VIT, 1)
    target:addMod(dsp.mod.AMNESIARES, 20)
end

function onEffectLose(target, effect)
    target:delMod(dsp.mod.AGI, 4)
    target:delMod(dsp.mod.VIT, 1)
    target:delMod(dsp.mod.AMNESIARES, 20)
end
