# This function determines if a function is valid use some sneaky predicate logic. Called with {id:"<namespace>:<structure>"}

# Remove all jeffs!
execute if entity @e[tag=wayfound.jeff] run kill @e[tag=wayfound.jeff]

# Summon in a jeff in the overworld.
summon minecraft:armor_stand 0.0 1000.0 0.0 {Tags:["wayfound.jeff"],Invisible:1b,NoGravity:true}

# This should always return true. It will only fail, if the structure id doesn't exist.
$execute as @e[type=armor_stand,limit=1,tag=wayfound.jeff] run execute if predicate {condition:"any_of",terms:[{condition:"value_check",range:0,value:0},{condition:"entity_properties",entity:"this",predicate:{location:{structures:"$(id)"}}}]} run tag @s add wayfound.structure_exists

# Structure is indeed valid!
execute if entity @e[tag=wayfound.structure_exists] run data modify storage wayfound:temp local.result set value 1b

execute if entity @e[tag=wayfound.jeff] run kill @e[tag=wayfound.jeff]