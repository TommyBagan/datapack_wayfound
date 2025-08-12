# Initial objectives
scoreboard objectives add wayfound.raycast dummy
scoreboard objectives add wayfound.iter dummy

# If the list doesn't exist, we set it to be empty
execute store success storage wayfound:structures exist int 1 run data get storage wayfound:structures list
execute if data storage wayfound:structures {exist:0} run data modify storage wayfound:structures list set value []

# Runs all the registry functions in 20 ticks, so all datapacks are loaded
schedule function #wayfound_integrations:register_structures 20t replace
