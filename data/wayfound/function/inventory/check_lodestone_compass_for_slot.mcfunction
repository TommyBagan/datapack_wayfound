# {Slot: <byte>, item_area: <string>}
# Exit early if there is no lodestone_tracker component
scoreboard players set @s wayfound.result 0
$execute store success score @s wayfound.result run data get entity @s Inventory[{Slot:$(Slot)b}].components."minecraft:lodestone_tracker"
execute if score @s wayfound.result matches 0 run return 0

# We store this for later :)
$data modify storage wayfound:temp local.item_area set value "$(item_area)"

# Skip if this is the first time
scoreboard players set @s wayfound.result 0
$execute store success score @s wayfound.result run data get entity @s Inventory[{Slot:$(Slot)b}].components."minecraft:custom_data"."wayfound:target"
$execute if score @s wayfound.result matches 0 run return run function wayfound:inventory/alter_lodestone_compass_for_slot {Slot:$(Slot)}

# Setup some scoreboard values for grabbing the lodestone compass targets
scoreboard players set @s wayfound.target.original.x 0
scoreboard players set @s wayfound.target.original.y -1000000
scoreboard players set @s wayfound.target.original.z 0
scoreboard players set @s wayfound.target.copy.x 0
scoreboard players set @s wayfound.target.copy.y 1000000
scoreboard players set @s wayfound.target.copy.z 0

# Store the original coordinates
$execute store result score @s wayfound.target.original.x run data get entity @s Inventory[{Slot:$(Slot)b}].components."minecraft:lodestone_tracker".target.pos[0]
$execute store result score @s wayfound.target.original.y run data get entity @s Inventory[{Slot:$(Slot)b}].components."minecraft:lodestone_tracker".target.pos[1]
$execute store result score @s wayfound.target.original.z run data get entity @s Inventory[{Slot:$(Slot)b}].components."minecraft:lodestone_tracker".target.pos[2]

# Store the copied coordinates
$execute store result score @s wayfound.target.copy.x run data get entity @s Inventory[{Slot:$(Slot)b}].components."minecraft:custom_data"."wayfound:target".pos[0]
$execute store result score @s wayfound.target.copy.y run data get entity @s Inventory[{Slot:$(Slot)b}].components."minecraft:custom_data"."wayfound:target".pos[1]
$execute store result score @s wayfound.target.copy.z run data get entity @s Inventory[{Slot:$(Slot)b}].components."minecraft:custom_data"."wayfound:target".pos[2]

# Compare the copied and current coordinates, if they are the same we can avoid lookups.
scoreboard players set @s wayfound.result 0
execute if score @s wayfound.target.original.x = @s wayfound.target.copy.x run scoreboard players add @s wayfound.result 1
execute if score @s wayfound.target.original.y = @s wayfound.target.copy.y run scoreboard players add @s wayfound.result 1
execute if score @s wayfound.target.original.z = @s wayfound.target.copy.z run scoreboard players add @s wayfound.result 1

# If we don't match the coordinates, we alter the compass and skip the dimension check
$execute if score @s wayfound.result matches ..2 run return run function wayfound:inventory/alter_lodestone_compass_for_slot {Slot:$(Slot)}

# Compare the copied dimension, if they are the same the result will be 0
$data modify storage wayfound:temp local.copied_dimension set from entity @s Inventory[{Slot:$(Slot)b}].components."minecraft:lodestone_tracker".target.dimension
$execute store success score @s wayfound.result run data modify storage wayfound:temp local.copied_dimension set from entity @s Inventory[{Slot:$(Slot)b}].components."minecraft:custom_data"."wayfound:target"."dimension"
execute if score @s wayfound.result matches 0 run return 0

# We can alter update the lodestone compass
$function wayfound:inventory/alter_lodestone_compass_for_slot {Slot:$(Slot)}
