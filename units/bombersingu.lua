VFS.Include("utils/to_make_op_things.lua")
local utils=GG.to_make_op_things

utils.set_morth_mul("bomberheavy","bombersingu")
utils.add_build("sillycon","bombersingu")

return utils.copy_tweak("bomberheavy","bombersingu",function (ud)
    ud.name="Impulse Likho"
    ud.description="Impulse Likho"
    ud.metalCost=3000
    ud.health=3000
    local wd=ud.weaponDefs.ARM_PIDR
    wd.damage = {
        default = 800.1,
        planes  = 800.1,
    }
    wd.areaOfEffect=280
    --wd.impulseboost=-1
    wd.impulseFactor=-40
    wd.explosionSpeed=280*4
    wd.edgeEffectiveness=0.5
    
end)
