# Initial objectives
scoreboard objectives add wayfound.raycast dummy
scoreboard objectives add wayfound.iter dummy


# Delay our loading so we are fine!
schedule function wayfound:internal/delayed_load 20t replace