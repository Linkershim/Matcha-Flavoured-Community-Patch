# Check if player is still in village, if they are not, reset their score and revoke the advacement so they may get it again next time they come
execute at @a run execute if score @p eerie >= 1 eerie run execute if predicate main:not_in_village run advancement revoke @p only main:mechanics/enter_village
execute at @a run execute if score @p eerie >= 1 eerie run execute if predicate main:not_in_village run scoreboard players set @p eerie 0

#Check if the player is in a village strucutre, if so, let the entity face them
execute at @n[type=minecraft:mannequin,tag=haunted] run execute if score @p eerie >= 1 eerie run function main:environmental/village_entity_movement
#If the player is ina  village structure, and close to him, play Dry Hands
execute at @n[type=minecraft:mannequin,tag=haunted,tag=!music_played] run execute if score @p[distance=..30,gamemode=survival] eerie >= 1 eerie run function main:environmental/play_village_jukebox
#If they get too close, and don't come through the door, kill everything
execute at @n[type=minecraft:mannequin,tag=haunted] run execute at @n[type=marker,tag=jukebox] run execute if entity @p[distance=..2,gamemode=survival] run function main:environmental/kill_village_entity
execute at @n[type=minecraft:mannequin,tag=haunted] run execute if entity @p[distance=..5,gamemode=survival] run function main:environmental/kill_village_entity

#Kills any playing music
execute at @a run execute if score @p eerie >= 1 eerie run stopsound @p music

#This makes it kinda random beucase the tick and time doesn't always line up, the best I could do ig
execute at @a run execute if score @p eerie >= 1 eerie run execute if stopwatch eerie 1..1.02 run execute if block ~ ~-.5 ~ minecraft:coarse_dirt run playsound minecraft:block.wood.step player @p ~-2 ~4 ~ 0.5
execute at @a run execute if score @p eerie >= 1 eerie run execute if stopwatch eerie 1.25..1.27 run execute if block ~ ~-.5 ~ minecraft:coarse_dirt run playsound minecraft:block.wood.step player @p ~-1 ~4 ~ 0.5
execute at @a run execute if score @p eerie >= 1 eerie run execute if stopwatch eerie 1.5..1.53 run execute if block ~ ~-.5 ~ minecraft:coarse_dirt run playsound minecraft:block.wood.step player @p ~ ~4 ~ 0.5
execute at @a run execute if score @p eerie >= 1 eerie run execute if stopwatch eerie 1.75..1.78 run execute if block ~ ~-.5 ~ minecraft:coarse_dirt run playsound minecraft:block.wood.step player @p ~1 ~4 ~ 0.5

execute at @a run execute if score @p eerie >= 1 eerie run execute if stopwatch eerie 1..1.02 run execute if block ~ ~-.5 ~ minecraft:oak_planks run playsound minecraft:block.grass.break player @p ^5 ^ ^ 1
execute at @a run execute if score @p eerie >= 1 eerie run execute if stopwatch eerie 100..100.02 run execute if block ~ ~-.5 ~ minecraft:oak_planks run playsound minecraft:block.grass.break player @p ^5 ^ ^ 1

execute at @a run execute if score @p eerie >= 1 eerie run execute if stopwatch eerie 1..1.02 run execute if block ~ ~-.5 ~ minecraft:oak_planks run playsound minecraft:ambient.cave ambient @p ~ ~ ~

execute at @a run execute if score @p eerie >= 1 eerie run execute if stopwatch eerie 1..1.02 run execute if block ~ ~-.5 ~ minecraft:gravel run playsound minecraft:block.gravel.break player @p ^ ^-3 ^ 1
execute at @a run execute if score @p eerie >= 1 eerie run execute if stopwatch eerie 100..100.02 run execute if block ~ ~-.5 ~ minecraft:gravel run playsound minecraft:block.stone.place player @p ^ ^-3 ^ 1

execute at @a run execute if score @p eerie >= 1 eerie run execute if stopwatch eerie 1..1.02 run execute if block ~ ~-.5 ~ minecraft:suspicious_gravel run playsound minecraft:block.wooden_door.open player @p ^ ^ ^-3 1

execute at @a run execute if score @p eerie >= 1 eerie run execute if stopwatch eerie 1..1.02 run execute if block ~ ~-.5 ~ minecraft:grass_block run playsound minecraft:block.grass.break player @p ~ ~-4 ~ 0.5
execute at @a run execute if score @p eerie >= 1 eerie run execute if stopwatch eerie 1.25..1.27 run execute if block ~ ~-.5 ~ minecraft:grass_block run playsound minecraft:block.stone.place player @p ~3 ~-4 ~ 0.5
execute at @a run execute if score @p eerie >= 1 eerie run execute if stopwatch eerie 1.5..1.53 run execute if block ~ ~-.5 ~ minecraft:grass_block run playsound minecraft:block.stone.place player @p ~2 ~-4 ~ 0.5
execute at @a run execute if score @p eerie >= 1 eerie run execute if stopwatch eerie 1.75..1.78 run execute if block ~ ~-.5 ~ minecraft:grass_block run playsound minecraft:block.stone.place player @p ~1 ~-4 ~ 0.5
execute at @a run execute if score @p eerie >= 1 eerie run execute if stopwatch eerie 1.75..1.78 run execute if block ~ ~-.5 ~ minecraft:grass_block run playsound minecraft:block.stone.place player @p ~ ~-4 ~ 0.5