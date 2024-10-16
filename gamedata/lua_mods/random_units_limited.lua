VFS.Include("LuaRules/Utilities/to_make_op_things.lua")
local utils=Spring.Utilities.to_make_op_things

utils.add_fn_to_fn_list("def_post","random_units_limited",function ()
    local lowerkeys=utils.lowerkeys
    local rand_range=4
    local bias=1
    local function sinrand()
        return math.sin((math.random()*2-1)*math.pi/2)
    end
    local function cbrtrand()
        return (math.random()*2-1)^(1/3)
    end
    local to_get_op_value=sinrand
    -- holy math.tan(  * math.pi/2) /(math.pi/2)
    local function get_rand_mult()
        return bias*rand_range^(to_get_op_value() )
    end
    Spring.Utilities.to_make_very_op_things.random_units(get_rand_mult)
end)

return {option_notes="Random Units Values! "}