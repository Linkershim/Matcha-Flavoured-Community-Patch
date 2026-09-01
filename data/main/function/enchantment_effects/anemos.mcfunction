# Abort this function if Anemos is on Cooldown
execute if score @s AnemosCooldown matches 1.. run return fail

execute anchored eyes run summon wind_charge ^ ^ ^.75 {Tags:["motion_projectile"]}
execute as @n[tag=motion_projectile] at @s rotated as @p run function main:backend/apply_motion

# Set the player's cooldown to 10 ticks, i.e. 0.5s, same as a normal Wind Charge
scoreboard players add @s AnemosCooldown 10

# This sets the Wind Charge to be owned by the player with the enchantment, which means advancements can detect it in the abbey!!!! Yessss! This took me so long, dude
data modify entity @n[type=minecraft:wind_charge] Owner set from entity @s UUID