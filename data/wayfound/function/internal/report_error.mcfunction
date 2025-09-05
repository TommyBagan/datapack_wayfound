# Reports error in formatted fashion.
$tellraw @a [{text:"Encountered error when $(action): ",color:"white"},{text:"$(error)",color:"red",hover_event:{action:"show_text",value:[{"text":"Stack trace is here: \n",color:"white"},{"storage":"wayfound:temp",nbt:"local",color:"red"}]}}]
tellraw @a [{text:"Please ensure the latest version of Wayfound is installed. If you have the latest version, please ", color: "white"},{text:"report this to our GitHub Issue Page.",color:"blue",underlined:true,click_event:{action:"open_url",url:"https://github.com/TommyBagan/datapack_wayfound/issues"}}]

# Clears local storage for next run
data remove storage wayfound:temp local

# Always return fail, so it's passed up the stack.
return fail