# Check if one of the structures are in the world, this is our litmus test. If it isn't there - don't attempt to load!
data modify storage wayfound:temp local.result set value 0b
function wayfound:internal/check_if_structure_valid {id:"nova_structures:tavern_oak"}
execute if data storage wayfound:temp {local:{result:0b}} run return fail

function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"badlands_miner_outpost",name:"Badlands Miner Outpost",type:"dungeon",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"bunker",name:"Bunker",type:"ruins",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"catacomb",name:"Catacombs",type:"dungeon",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"cave_chamber_archeology_ruins",name:"Buried Ruins",type:"ruins",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"conduit_ruin",name:"Conduit Ruins",type:"ruins",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"creeping_crypt",name:"Creeping Crypt",type:"dungeon",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"desert_ruins",name:"Sandswept Ruins",type:"dungeon",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"end_castle",name:"Ender Castle",type:"trial",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"end_lighthouse",name:"Purpur Lighthouse",type:"dungeon",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"hamlet",name:"Hamlet",type:"dungeon",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"nether_keep",name:"Keep",type:"dungeon",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"nether_port",name:"Port of Swine",type:"dungeon",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"illager_hideout",name:"Illager Hideout",type:"dungeon",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"illager_manor",name:"Illager Manor",type:"dungeon",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"jungle_ruins",name:"Overgrown Ruins",type:"dungeon",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"lone_citadel",name:"Lone Citadel",type:"trial",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"mangrove_witch_hut",name:"Witch's Hut",type:"dungeon",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"pale_residence",name:"Pale Residence",type:"dungeon",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"piglin_donjon",name:"Piglin Donjon",type:"trial",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"piglin_outstation",name:"Piglin Outstation",type:"dungeon",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"ruin_town",name:"Old Ruins",type:"ruins",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"shrine_combat_tier_1",name:"Tier I Shrine",type:"trial",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"shrine_combat_tier_2",name:"Tier II Shrine",type:"trial",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"shrine_combat_tier_3",name:"Tier III Shrine",type:"trial",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"shrine_combat_tier_4",name:"Tier IV Shrine",type:"trial",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"shrine_combat_tier_5",name:"Tier V Shrine",type:"trial",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"shrine_combat_tier_6",name:"Tier VI Shrine",type:"trial",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"shrine_tower",name:"Shrine Tower",type:"ruins",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"stray_fort",name:"Stray Fort",type:"dungeon",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"stray_outlook",name:"Stray Outlook",type:"dungeon",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"tavern_acacia",name:"Orange Tavern",type:"settlement",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"tavern_birch",name:"Silverbirch Tavern",type:"settlement",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"tavern_cherry",name:"Blossoming Tavern",type:"settlement",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"tavern_dark_oak",name:"Fungal Tavern",type:"settlement",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"tavern_desert",name:"Parched Tavern",type:"settlement",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"tavern_jungle",name:"Chocolate Tavern",type:"settlement",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"tavern_mangrove",name:"Redmarsh Tavern",type:"settlement",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"tavern_oak",name:"Old Oak Tavern",type:"settlement",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"tavern_pale",name:"Petrified Tavern",type:"settlement",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"tavern_snowy",name:"Frosty Tavern",type:"settlement",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"tavern_spruce",name:"Timber Tavern",type:"settlement",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"tavern_swamp",name:"Backwater Tavern",type:"settlement",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"toxic_lair",name:"Toxic Lair",type:"trial",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"trial_dungeon",name:"Sunken Cells",type:"dungeon",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"trident_trial_monument",name:"Trident Trial",type:"trial",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"undead_crypt",name:"Undead Crypt",type:"dungeon",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"village_birch",name:"Whitewood Village",type:"settlement",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"village_jungle",name:"Bushy Village",type:"settlement",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"village_swamp",name:"Cauldron Village",type:"dungeon",version:0}
function wayfound_integrations:register_structure {namespace:"nova_structures",structure_id:"witch_villa",name:"Villa",type:"dungeon",version:0}