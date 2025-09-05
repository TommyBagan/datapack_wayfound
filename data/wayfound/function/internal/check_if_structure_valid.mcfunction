# This function determines if a function is valid use some sneaky predicate logic. Called with {id:"<namespace>:<structure>"}
# This should always return true. It will only fail, if the structure id doesn't exist.
$execute if predicate {condition:"any_of",terms:[{condition:"value_check",range:0,value:0},{condition:"entity_properties",entity:"this",predicate:{location:{structures:"$(id)"}}}]} run data modify storage wayfound:temp local.result set value 1b
