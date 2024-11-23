VFS.Include("LuaRules/Utilities/wacky_utils.lua")
local utils=Spring.Utilities.wacky_utils

VFS.Include("LuaRules/Utilities/to_make_op_things.lua")
local utils_op=Spring.Utilities.to_make_op_things

VFS.Include("LuaRules/Utilities/to_make_very_op_things.lua")
local to_make_very_op_things=Spring.Utilities.to_make_very_op_things

return utils_op.CopyTweakSillyBuildMorph("cloakraid","cloakraidepic",function (ud)
    to_make_very_op_things.good_scale_unit(ud,100)
    ud.name="Epic " .. ud.name
    ud.description=ud.description .. ", but bigger"
    ud.iconType="cloakraidepic"
end)