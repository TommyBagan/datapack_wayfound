# Reset the event
advancement revoke @s only wayfound:events/use_compass_on_lodestone

# Perform raycast to get the block the player is looking at
scoreboard players set @s wayfound.raycast 0
execute as @s anchored eyes positioned ^ ^ ^ run function wayfound:internal/ray_step
