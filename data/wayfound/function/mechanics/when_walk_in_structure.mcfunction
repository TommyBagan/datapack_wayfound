# Reset the event
advancement revoke @s only wayfound:events/walk_in_structure

# Allocate temporary storage
data modify storage wayfound:temp local set value {}

# Ensures the player has an associated last visited structure
scoreboard players add @s wayfound.last_iter 0

# We are in a structure, so identify which structure and store in local.structure
scoreboard players set @s wayfound.iter 0
scoreboard players set @s wayfound.result 0
execute store result score @s wayfound.size run data get storage wayfound:structures registry.size

# We only need to summon one geoffry
kill @e[tag=wayfound.geoffry,type=minecraft:armor_stand]
summon armor_stand ~ ~ ~ {NoGravity:1b,NoBasePlate:true,Invisible:1b,Tags:["wayfound.geoffry"]}
execute store result score @s wayfound.result run function wayfound:internal/lookup_structure
kill @e[tag=wayfound.geoffry,type=minecraft:armor_stand]

# If there were no found structures, back out
execute if score @s wayfound.result matches 0 run return run data remove storage wayfound:temp local

# If we found the same structure as before, we won't continue
execute if score @s wayfound.last_iter = @s wayfound.iter run return run data remove storage wayfound:temp local

# We have found the structure in local.structure, so we output a title
function wayfound:internal/output_structure_title with storage wayfound:temp local.structure
execute store result score @s wayfound.last_iter run scoreboard players get @s wayfound.iter

# Deallocate temporary storage
data remove storage wayfound:temp local