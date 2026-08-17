execute if items entity @p container.* *[minecraft:item_model="minecraft:heart_container"] run scoreboard players add @p Hearts 2
execute if items entity @p container.* *[minecraft:item_model="minecraft:heart_container"] run effect give @p regeneration 3 10 true
execute if items entity @p container.* *[minecraft:item_model="minecraft:heart_container"] run clear @p *[minecraft:item_model="minecraft:heart_container"] 1
playsound minecraft:item.totem.use player @a ~ ~ ~ .5 0 0
advancement revoke @p only main:mechanics/heart_container_obtained
#If they still have the Crystal Heart, run the function again
execute at @p run execute if items entity @p container.* *[minecraft:item_model="minecraft:heart_container"] run function main:mechanic/heart_container/process_heart_container