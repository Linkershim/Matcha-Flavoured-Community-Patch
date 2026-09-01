# Reset the trigger
advancement revoke @s only main:mechanics/heart_container_obtained

# If they have less than the max HP, clear the heart container
execute if score @s Hearts < maximum_hearts Hearts run function main:mechanic/heart_container/clear_heart_container

# Sanity check: clamp their score if it somehow exceeds the limits
execute if score @s Hearts > maximum_hearts Hearts run scoreboard players set @s Hearts 60
execute if score @s Hearts < minimum_hearts Hearts run scoreboard players set @s Hearts 20

# Convert the player's Hearts score into a format that the Macro function can read
execute store result storage matcha:hearts Hearts float 1 run scoreboard players get @s Hearts

# Set their max hp to match their Hearts score
function main:mechanic/heart_container/set_max_hp with storage matcha:hearts

# While it shouldn't be necessary, I'm emptying the storage again just to be safe
data remove storage matcha:hearts Hearts