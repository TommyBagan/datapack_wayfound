# {dimension:<string>, x:<int>, y:<int>, z:<int>, structure_id:<string>}

# Identify if we're in a structure via an armor stand
$execute as @e[tag=wayfound.geoffry,type=minecraft:armor_stand,limit=1] at @e[tag=wayfound.geoffry,type=minecraft:armor_stand,limit=1] if predicate {condition:"location_check",predicate:{structures:["$(structure_id)"]}} run return 1
return 0