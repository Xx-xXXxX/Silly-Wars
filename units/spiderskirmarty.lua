VFS.Include("LuaRules/Utilities/to_make_op_things.lua")
local utils=Spring.Utilities.to_make_op_things


utils.set_morth_mul("silly_morth","spiderskirm","spiderskirmarty")
utils.add_build("silly_build","sillycon","spiderskirmarty")


return utils.copy_tweak("spiderskirm","spiderskirmarty",function (ud)
    ud.name="Ranged " .. ud.name
    ud.description="Ranged " .. ud.description
    ud.speed=ud.speed*0.8
    ud.metalCost=ud.metalCost*4
    ud.health=ud.health*2
    ud.weaponDefs.ADV_ROCKET.range=1200
    ud.customParams.def_scale=(ud.customParams.def_scale or 1)*2
    ud.customParams.tactical_ai_defs_copy="veharty"
    utils.set_ded_BIG_UNIT(ud)
end)