tell @s Found me!

# Lodestone wasn't in the structure, so no point continuing!
execute if predicate wayfound:is_not_in_structure run return 0

tell @s I'm in the structure!

# Run function that loops over every registered structure, returns with the Index

# Using the index, we now setup the text component and lore for the renamed lodestone

# Potentially send a title?
