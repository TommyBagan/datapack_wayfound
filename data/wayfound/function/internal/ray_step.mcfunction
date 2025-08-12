# We check if the block is a lodestone block, if so grab the coordinates
execute if block ~ ~ ~ minecraft:lodestone positioned ~ ~ ~ run return run function wayfound:mechanics/found_lodestone

# Extend the raycast further.
scoreboard players add @s wayfound.raycast 1

# We didn't find anything
execute if score @s wayfound.raycast matches 21.. run return fail

# Recurse at the next position.
execute positioned ^ ^ ^0.5 run function wayfound:internal/ray_step
