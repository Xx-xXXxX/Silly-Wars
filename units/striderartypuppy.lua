VFS.Include("LuaRules/Utilities/to_make_op_things.lua")
local utils=Spring.Utilities.to_make_op_things

utils.set_morth("silly_morth","striderarty","striderartypuppy")
utils.add_build("silly_build","bigsillycon","striderartypuppy")

local ud=utils.get_unit_lua("striderarty")

local puppyud=utils.get_unit_lua("jumpscout")

utils.set_free_unit(puppyud)
puppyud.name="Puppys' Merlin's Puppy"
local puppyudname="striderartypuppypuppy"

ud.name="Puppys' Merlin"
ud.metalCost=10000
ud.health=8000

ud.customParams.def_scale=1.5

local wd=ud.weaponDefs.ROCKET

wd.damage = {
default = 30.1,
planes  = 30.1,
}
wd.areaOfEffect            = 40
wd.model                   = [[puppymissile.s3o]]
utils.table_replace({
    damage_vs_shield = [[440.1]],
    force_ignore_ground = [[1]],

    spawns_name = puppyudname,
    spawns_expire = 10,
    spawn_blocked_by_shield = 1,
    light_radius = 0,
    nofriendlyfire=1,
})(wd.customParams)
ud.speed=ud.speed*0.9

return{
    ["striderartypuppy"]=ud,
    [puppyudname]=puppyud
}