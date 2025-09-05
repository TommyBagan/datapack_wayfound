# {item_area:<string>, text: <string>, fallback: <string>, type:<uint>}
$scoreboard players set @s wayfound.result $(type)
# dungeon
$execute if score @s wayfound.result matches 1 run return run item modify entity @s $(item_area) {function:"set_name",name:{translate:"$(text)",fallback:"$(fallback)",color:red,italic:false},entity:"this"}
# trial
$execute if score @s wayfound.result matches 2 run return run item modify entity @s $(item_area) {function:"set_name",name:{translate:"$(text)",fallback:"$(fallback)",color:blue,italic:false},entity:"this"}
# settlement
$execute if score @s wayfound.result matches 3 run return run item modify entity @s $(item_area) {function:"set_name",name:{translate:"$(text)",fallback:"$(fallback)",color:green,italic:false},entity:"this"}
# ruins
$execute if score @s wayfound.result matches 4 run return run item modify entity @s $(item_area) {function:"set_name",name:{translate:"$(text)",fallback:"$(fallback)",color:gray,italic:false},entity:"this"}

