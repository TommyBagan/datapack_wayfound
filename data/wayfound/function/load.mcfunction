# Initial objectives
scoreboard objectives add wayfound.raycast dummy
scoreboard objectives add wayfound.iter dummy
scoreboard objectives add wayfound.size dummy
scoreboard objectives add wayfound.result dummy
scoreboard objectives add wayfound.target.original.x dummy
scoreboard objectives add wayfound.target.original.y dummy
scoreboard objectives add wayfound.target.original.z dummy
scoreboard objectives add wayfound.target.copy.x dummy
scoreboard objectives add wayfound.target.copy.y dummy
scoreboard objectives add wayfound.target.copy.z dummy

# Delay our loading so we are fine!
schedule function wayfound:internal/delayed_load 20t replace