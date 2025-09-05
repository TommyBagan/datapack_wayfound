# {namespace:<string>,structure_id:<string>,name:<string>,type:...}
$data modify storage wayfound:temp local.prepped_structure set value {id:"$(namespace):$(structure_id)",text:"structures.$(namespace).$(structure_id)",fallback:"$(name)"}
data modify storage wayfound:temp local.prepped_structure.type set from storage wayfound:temp local.mapped_type
data modify storage wayfound:structures registry.list append from storage wayfound:temp local.prepped_structure
