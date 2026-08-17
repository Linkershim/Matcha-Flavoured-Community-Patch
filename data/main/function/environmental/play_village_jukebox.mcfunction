execute at @n[type=minecraft:mannequin,tag=haunted] run tag @n add music_played
execute at @n[type=marker,tag=jukebox] run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace redstone_block
schedule function main:environmental/kill_village_hopper 2t 