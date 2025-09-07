
$scoreboard players set @s wayfound.result $(type)
# dungeon
$execute if score @s wayfound.result matches 1 run return run title @s title {translate:"$(text)",fallback:"$(fallback)",color:red,italic:false}
# trial
$execute if score @s wayfound.result matches 2 run return run title @s title {translate:"$(text)",fallback:"$(fallback)",color:blue,italic:false}
# settlement
$execute if score @s wayfound.result matches 3 run return run title @s title {translate:"$(text)",fallback:"$(fallback)",color:green,italic:false}
# ruins
$execute if score @s wayfound.result matches 4 run return run title @s title {translate:"$(text)",fallback:"$(fallback)",color:gray,italic:false}
