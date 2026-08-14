#Run at everyone who doesn't have the remove hearts tag, if they don't, and their deaths are more than 0, add the tag
execute as @a[tag=!remove_hearts] if score @s deaths >= 1 deaths run tag @s add remove_hearts
execute as @a[tag=remove_hearts] run function main:mechanic/heart_container/hpdown