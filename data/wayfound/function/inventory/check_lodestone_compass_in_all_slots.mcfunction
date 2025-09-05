# Check each inventory slot, and for any lodestone compasses, check if they point to structures.
# If they are newly paired, we determine the structure and alter the compass accordingly.

# Allocate temporary storage
data modify storage wayfound:temp local set value {}

# TODO: Check offhand

# Check hotbar
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.0":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:0,item_area:"hotbar.0"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.1":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:1,item_area:"hotbar.1"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.2":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:2,item_area:"hotbar.2"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.3":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:3,item_area:"hotbar.3"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.4":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:4,item_area:"hotbar.4"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.5":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:5,item_area:"hotbar.5"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.6":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:6,item_area:"hotbar.6"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.7":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:7,item_area:"hotbar.7"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.8":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:8,item_area:"hotbar.8"}

# Check other slots
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.0":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:9,item_area:"inventory.0"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.1":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:10,item_area:"inventory.1"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.2":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:11,item_area:"inventory.2"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.3":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:12,item_area:"inventory.3"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.4":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:13,item_area:"inventory.4"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.5":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:14,item_area:"inventory.5"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.6":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:15,item_area:"inventory.6"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.7":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:16,item_area:"inventory.7"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.8":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:17,item_area:"inventory.8"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.9":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:18,item_area:"inventory.9"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.10":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:19,item_area:"inventory.10"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.11":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:20,item_area:"inventory.11"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.12":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:21,item_area:"inventory.12"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.13":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:22,item_area:"inventory.13"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.14":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:23,item_area:"inventory.14"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.15":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:24,item_area:"inventory.15"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.16":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:25,item_area:"inventory.16"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.17":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:26,item_area:"inventory.17"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.18":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:27,item_area:"inventory.18"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.19":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:28,item_area:"inventory.19"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.20":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:29,item_area:"inventory.20"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.21":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:30,item_area:"inventory.21"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.22":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:31,item_area:"inventory.22"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.23":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:32,item_area:"inventory.23"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.24":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:33,item_area:"inventory.24"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.25":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:34,item_area:"inventory.25"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.26":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {Slot:35,item_area:"inventory.26"}

# Deallocate temporary storage
data remove storage wayfound:temp local