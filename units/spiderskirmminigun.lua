VFS.Include("utils/to_make_op_things.lua")
local utils=GG.to_make_op_things

local ud=utils.get_unit_lua("spiderskirm")
ud.metalCost=ud.metalCost*10
ud.health=ud.health*10

local wd=ud.weaponDefs.ADV_ROCKET
wd.burst=nil
wd.burstrate=nil
wd.reloadtime=0.1666
ud.speed=ud.speed*0.9
ud.name=ud.name .. " Minigun"
ud.customParams.def_scale=2.5

utils.set_morth_mul("spiderskirm","spiderskirmminigun")
utils.add_build("sillycon","spiderskirmminigun")
return {spiderskirmminigun=ud}