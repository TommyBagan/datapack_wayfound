# {Slot:<byte>}
# Update the copy
$data modify storage wayfound:temp local.target set from entity @s Inventory[{Slot:$(Slot)b}].components."minecraft:lodestone_tracker".target
function wayfound:modifier/copy_lodestone_tracker_component with storage wayfound:temp local

# Prepare for structure checks
data modify storage wayfound:temp local.x set from storage wayfound:temp local.target.pos[0]
data modify storage wayfound:temp local.y set from storage wayfound:temp local.target.pos[1]
data modify storage wayfound:temp local.z set from storage wayfound:temp local.target.pos[2]
data modify storage wayfound:temp local.dimension set from storage wayfound:temp local.target.dimension

# We only need to summon one geoffry
function wayfound:internal/summon_geoffry with storage wayfound:temp local
execute store result score @s wayfound.result run function wayfound:internal/is_target_in_a_structure with storage wayfound:temp local
kill @e[tag=wayfound.geoffry,type=minecraft:armor_stand]

# Reset the name of the Lodestone compass if the target isn't in a structure
execute if score @s wayfound.result matches 0 run return run function wayfound:modifier/reset_name_lodestone_compass with storage wayfound:temp local

# We are in a structure, so identify which structure and store in local.structure
scoreboard players set @s wayfound.iter 0
scoreboard players set @s wayfound.result 0
execute store result score @s wayfound.size run data get storage wayfound:structures registry.size

# We only need to summon one geoffry
function wayfound:internal/summon_geoffry with storage wayfound:temp local
execute store result score @s wayfound.result run function wayfound:internal/lookup_structure
kill @e[tag=wayfound.geoffry,type=minecraft:armor_stand]

# If there were no found structures, back out
execute if score @s wayfound.result matches 0 run return 0

# We name the item
data modify storage wayfound:temp local.structure.item_area set from storage wayfound:temp local.item_area
function wayfound:modifier/name_lodestone_compass with storage wayfound:temp local.structure

return 1