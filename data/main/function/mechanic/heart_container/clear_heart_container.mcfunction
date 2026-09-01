scoreboard players add @s Hearts 2
effect give @s regeneration 3 10 true
clear @s *[minecraft:item_model="minecraft:heart_container"] 1
playsound minecraft:item.totem.use player @a ~ ~ ~ .5 0 0

#If they still have a Crystal Heart, run the function again
execute if items entity @s container.* *[minecraft:item_model="minecraft:heart_container"] run function main:mechanic/heart_container/process_heart_container