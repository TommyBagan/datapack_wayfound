# Check if one of the structures are in the world, this is our litmus test. If it isn't there - don't attempt to load!
data modify storage wayfound:temp local.result set value 0b
function wayfound:internal/check_if_structure_valid {id:"terralith:fortified_village"}
execute if data storage wayfound:temp {local:{result:0b}} run return fail

function wayfound_integrations:register_structure {namespace:"terralith",structure_id:"desert_outpost",name:"Desert Outpost",type:"dungeon",version:0}
function wayfound_integrations:register_structure {namespace:"terralith",structure_id:"fortified_desert_village",name:"Dryland Parish",type:"settlement",version:0}
function wayfound_integrations:register_structure {namespace:"terralith",structure_id:"fortified_village",name:"Grassland Parish",type:"settlement",version:0}
function wayfound_integrations:register_structure {namespace:"terralith",structure_id:"mage_complex",name:"Mage Tower",type:"dungeon",version:0}
function wayfound_integrations:register_structure {namespace:"terralith",structure_id:"mage_tower",name:"Mage Tower",type:"dungeon",version:0}
function wayfound_integrations:register_structure {namespace:"terralith",structure_id:"valley_lodge",name:"The Lodge",type:"settlement",version:0}
