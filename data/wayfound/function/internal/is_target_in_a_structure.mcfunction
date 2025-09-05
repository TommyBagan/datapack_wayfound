# {dimension:<string>, x:<int>, y:<int>, z:<int>}
# Identify if we're in a structure
execute as @e[tag=wayfound.geoffry,type=minecraft:armor_stand,limit=1] at @e[tag=wayfound.geoffry,type=minecraft:armor_stand,limit=1] unless predicate wayfound:is_not_in_structure run return 1
return 0