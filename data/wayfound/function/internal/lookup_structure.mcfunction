# Check bounds, return and unlock temporary storage.
execute if score @s wayfound.iter >= @s wayfound.size run return run function wayfound:internal/report_error {action:"looking up",error:"Couldn't find structure in the registry, something has gone wrong."}

# Grabs the structure from the registry
execute store result storage wayfound:temp local.index int 1 run scoreboard players get @s wayfound.iter
function wayfound:internal/grab_specific_structure with storage wayfound:temp local
data modify storage wayfound:temp local.structure_id set from storage wayfound:temp local.structure.id

# Check if we are in the current structure
execute store result score @s wayfound.result run function wayfound:internal/is_target_in_a_specific_structure with storage wayfound:temp local

# Exit if we are in a structure currently
execute if score @s wayfound.result matches 1 run return 1

# Increment and recursively call.
scoreboard players add @s wayfound.iter 1
return run function wayfound:internal/lookup_structure