# We set the list to be empty.
execute if data storage wayfound:structures registry run data remove storage wayfound:structures registry
data modify storage wayfound:structures registry.list set value []
data modify storage wayfound:temp local set value {}

# Runs the register functions call
function #wayfound_integrations:register_structures

# Sets the size.
execute store result storage wayfound:structures registry.size int 1 run data get storage wayfound:structures registry.list