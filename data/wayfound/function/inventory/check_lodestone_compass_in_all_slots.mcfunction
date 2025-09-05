# Check each inventory slot, and for any lodestone compasses, check if they point to structures.
# If they are newly paired, we determine the structure and alter the compass accordingly.

# Allocate temporary storage
data modify storage wayfound:temp local set value {}

# Check offhand
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"weapon.offhand":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"equipment.offhand",item_area:"weapon.offhand"}

# Check hotbar
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.0":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:0b}]",item_area:"hotbar.0"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.1":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:1b}]",item_area:"hotbar.1"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.2":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:2b}]",item_area:"hotbar.2"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.3":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:3b}]",item_area:"hotbar.3"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.4":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:4b}]",item_area:"hotbar.4"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.5":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:5b}]",item_area:"hotbar.5"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.6":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:6b}]",item_area:"hotbar.6"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.7":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:7b}]",item_area:"hotbar.7"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"hotbar.8":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:8b}]",item_area:"hotbar.8"}

# Check other slots
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.0":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:9b}]",item_area:"inventory.0"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.1":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:10b}]",item_area:"inventory.1"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.2":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:11b}]",item_area:"inventory.2"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.3":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:12b}]",item_area:"inventory.3"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.4":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:13b}]",item_area:"inventory.4"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.5":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:14b}]",item_area:"inventory.5"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.6":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:15b}]",item_area:"inventory.6"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.7":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:16b}]",item_area:"inventory.7"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.8":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:17b}]",item_area:"inventory.8"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.9":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:18b}]",item_area:"inventory.9"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.10":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:19b}]",item_area:"inventory.10"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.11":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:20b}]",item_area:"inventory.11"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.12":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:21b}]",item_area:"inventory.12"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.13":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:22b}]",item_area:"inventory.13"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.14":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:23b}]",item_area:"inventory.14"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.15":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:24b}]",item_area:"inventory.15"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.16":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:25b}]",item_area:"inventory.16"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.17":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:26b}]",item_area:"inventory.17"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.18":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:27b}]",item_area:"inventory.18"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.19":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:28b}]",item_area:"inventory.19"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.20":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:29b}]",item_area:"inventory.20"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.21":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:30b}]",item_area:"inventory.21"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.22":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:31b}]",item_area:"inventory.22"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.23":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:32b}]",item_area:"inventory.23"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.24":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:33b}]",item_area:"inventory.24"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.25":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:34b}]",item_area:"inventory.25"}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{"inventory.26":{items:"minecraft:compass"}}}} run function wayfound:inventory/check_lodestone_compass_for_slot {slot:"Inventory[{Slot:35b}]",item_area:"inventory.26"}

# Deallocate temporary storage
data remove storage wayfound:temp local