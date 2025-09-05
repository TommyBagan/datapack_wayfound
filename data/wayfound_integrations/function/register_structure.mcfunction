### Function Signature:
# register_structure {name:<string>,namespace:<string>,structure_id:<string>,type:<"dungeon"|"trial"|"settlement"|"ruins",version:0}
#
## Parameters:
# namespace - Unique namespace for all your structures.
# structure - Structure name, that when composed with the namespace, provides a unique id for your structure.
# type      - The type of structure, used for text formatting only. 
#               - The type "dungeon" is a structure filled with mobs and treasure.
#               - The type "trial" is a structure which more akin to a trial chamber, it's typically more challenging compared to a dungeon.
#               - The type "settlement" is a peaceful structure, typically containing villagers.
#               - The type "ruins" is a structure that may have mobs, but is focused thematically on representing something ancient and aged.
#                 We also use this for any archeological dig sites, and underwater ruins.
# name      - Name of your structure in American English.
# version   - Version of the API, I would reccommend setting it to 0.
#
## Expectations
# > Structures should be uniquely identifiable by <namespace>:<structure_id>; for example: "minecraft:stronghold".
# > Localised strings of the structure name must be provided by the unique id: "structures.<namespace>.<structure_id>", 
#   for example: "structures.minecraft.stronghold". If it isn't presesnt, we will fallback to "<name>".

# Stores the parameters for subsequent type checks
$data modify storage wayfound:temp local.parameters set value {name:"$(name)",namespace:"$(namespace)",structure_id:"$(structure_id)",type:"$(type)",version:$(version)}

# Ensure version number is supported.
execute unless data storage wayfound:temp {local:{parameters:{version:0}}} run return run function wayfound:internal/report_error {action:"loading",error:"Unsupported version used."}

# Ensure each parameter isn't an empty string.
execute if data storage wayfound:temp {local:{parameters:{name:""}}} run return run function wayfound:internal/report_error {action:"loading",error:"Parameter 'name' is an empty string."}
execute if data storage wayfound:temp {local:{parameters:{namespace:""}}} run return run function wayfound:internal/report_error {action:"loading",error:"Parameter 'namespace' is an empty string."}
execute if data storage wayfound:temp {local:{parameters:{structure_id:""}}} run return run function wayfound:internal/report_error {action:"loading",error:"Parameter 'structure_id' is an empty string."}
execute if data storage wayfound:temp {local:{parameters:{type:""}}} run return run function wayfound:internal/report_error {action:"loading",error:"Parameter 'type' is an empty string."}

# Ensures each parameter is a string.
data modify storage wayfound:temp local.result set value 1b
execute store success storage wayfound:temp local.result byte 1 run data modify storage wayfound:temp local.copy.name set string storage wayfound:temp local.parameters.name
execute if data storage wayfound:temp {local:{result:0b}} run return run function wayfound:internal/report_error {action:"loading",error:"Parameter 'name' is not a string."}
execute store success storage wayfound:temp local.result byte 1 run data modify storage wayfound:temp local.copy.namespace set string storage wayfound:temp local.parameters.namespace
execute if data storage wayfound:temp {local:{result:0b}} run return run function wayfound:internal/report_error {action:"loading",error:"Parameter 'namespace' is not a string."}
execute store success storage wayfound:temp local.result byte 1 run data modify storage wayfound:temp local.copy.structure_id set string storage wayfound:temp local.parameters.structure_id
execute if data storage wayfound:temp {local:{result:0b}} run return run function wayfound:internal/report_error {action:"loading",error:"Parameter 'structure_id' is not a string."}
execute store success storage wayfound:temp local.result byte 1 run data modify storage wayfound:temp local.copy.type set string storage wayfound:temp local.parameters.type
execute if data storage wayfound:temp {local:{result:0b}} run return run function wayfound:internal/report_error {action:"loading",error:"Parameter 'type' is not a string."}

# Ensures type is set to one of the options
data modify storage wayfound:temp local.mapped_type set value 0b
execute if data storage wayfound:temp {local:{parameters:{type:"dungeon"}}} run data modify storage wayfound:temp local.mapped_type set value 1
execute if data storage wayfound:temp {local:{parameters:{type:"trial"}}} run data modify storage wayfound:temp local.mapped_type set value 2
execute if data storage wayfound:temp {local:{parameters:{type:"settlement"}}} run data modify storage wayfound:temp local.mapped_type set value 3
execute if data storage wayfound:temp {local:{parameters:{type:"ruins"}}} run data modify storage wayfound:temp local.mapped_type set value 4
execute if data storage wayfound:temp {local:{mapped_type:0b}} run return run function wayfound:internal/report_error {action:"loading",error:"Parameter 'type' is not set to 'dungeon','trial','settlement' or 'ruins'."}


# Checks the structure is a valid namespace.
data modify storage wayfound:temp local.result set value 0b
$function wayfound:internal/check_if_structure_valid {id:"$(namespace):$(structure_id)"}
$execute if data storage wayfound:temp {local:{result:0b}} run return run function wayfound:internal/report_error {action:"loading",error:"Structure '$(namespace):$(structure_id)' is not a valid resource."}

# All looks good - so we appends the structure to the structure list!
function wayfound:internal/append_to_structure_list with storage wayfound:temp local.parameters

# Clears local storage
data remove storage wayfound:temp local
return 0