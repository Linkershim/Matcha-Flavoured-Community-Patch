execute at @e[type=minecraft:marker,tag=copper_eye_door,tag=marker_setup] unless block ~ ~ ~ target[power=0] run function main:abbey/open_copper_eye_door
execute at @e[type=minecraft:marker,tag=copper_eye_lantern,tag=marker_setup] unless block ~ ~ ~ target[power=0] run function main:abbey/break_copper_eye_lantern
execute at @e[type=minecraft:marker,tag=copper_eye_grate,tag=marker_setup] unless block ~ ~ ~ target[power=0] run function main:abbey/push_copper_eye_grate
execute at @e[type=minecraft:marker,tag=copper_eye_grate_vertical,tag=marker_setup] unless block ~ ~ ~ target[power=0] run function main:abbey/push_vertical_copper_eye_grate
execute at @e[type=minecraft:marker,tag=copper_eye_grate_vertical_retract,tag=marker_setup] unless block ~ ~ ~ target[power=0] run function main:abbey/pull_vertical_copper_eye_grate
execute at @e[type=minecraft:marker,tag=copper_eye_grate_horizontal_retract,tag=marker_setup] unless block ~ ~ ~ target[power=0] run function main:abbey/pull_horizontal_copper_eye_grate
advancement revoke @a only main:mechanics/hit_copper_eye