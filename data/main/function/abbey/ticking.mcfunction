#When the Ticking detects a copper eye marker without a target, its sets the target. If it sees that there is no longer a copper eye, it kills itsself
execute at @e[type=minecraft:marker,tag=copper_eye_door,tag=!marker_setup] run function main:abbey/setup_copper_eye_door
execute at @e[type=minecraft:marker,tag=copper_eye_door,tag=marker_setup] unless block ~ ~ ~ target run function main:abbey/kill_copper_eye

#When the Ticking detects a copper eye marker without a Target OR a Lantern, its sets the target and Lantern. If it sees that there is no longer a copper eye or lantern, it kills itsself
execute at @e[type=minecraft:marker,tag=copper_eye_lantern,tag=!marker_setup] run function main:abbey/setup_copper_eye_lantern
execute at @e[type=minecraft:marker,tag=copper_eye_lantern,tag=marker_setup] unless block ~ ~ ~ target run function main:abbey/kill_copper_eye
execute at @e[type=minecraft:marker,tag=copper_eye_lantern,tag=marker_setup] unless block ~ ~-2 ~ lantern run function main:abbey/kill_copper_eye


#When the Ticking detects a copper eye marker without a Traget or copper grate to its side, it sets them. If it sees that there is no longer a copper eye, it kills itsself
execute at @e[type=minecraft:marker,tag=copper_eye_grate,tag=!marker_setup] run function main:abbey/setup_copper_eye_grate
execute at @e[type=minecraft:marker,tag=copper_eye_grate,tag=marker_setup] unless block ~ ~ ~ target run function main:abbey/kill_copper_eye


#When the Ticking detects a copper eye marker without a Target or copper grate to its side, it sets them. If it sees that there is no longer a copper eye, it kills itsself
execute at @e[type=minecraft:marker,tag=copper_eye_grate_vertical,tag=!marker_setup] run function main:abbey/setup_copper_eye_grate
execute at @e[type=minecraft:marker,tag=copper_eye_grate_vertical,tag=marker_setup] unless block ~ ~ ~ target run function main:abbey/kill_copper_eye


#When the Ticking detects a copper eye marker without a Target or copper grate to its side, it sets them. If it sees that there is no longer a copper eye or grates that support it, it kills itsself
execute at @e[type=minecraft:marker,tag=copper_eye_grate_vertical_retract,tag=!marker_setup] run function main:abbey/setup_copper_eye_grate_vertical_retract
execute at @e[type=minecraft:marker,tag=copper_eye_grate_vertical_retract,tag=marker_setup] unless block ~ ~ ~ target run function main:abbey/kill_copper_eye
execute at @e[type=minecraft:marker,tag=copper_eye_grate_vertical_retract,tag=marker_setup] unless block ^1 ^ ^-1 waxed_weathered_copper_grate run function main:abbey/kill_copper_eye
execute at @e[type=minecraft:marker,tag=copper_eye_grate_vertical_retract,tag=marker_setup] unless block ^-1 ^ ^-1 waxed_weathered_copper_grate run function main:abbey/kill_copper_eye
execute at @e[type=minecraft:marker,tag=copper_eye_grate_vertical_retract,tag=marker_setup] unless block ^1 ^ ^-2 waxed_weathered_copper_grate run function main:abbey/kill_copper_eye
execute at @e[type=minecraft:marker,tag=copper_eye_grate_vertical_retract,tag=marker_setup] unless block ^-1 ^ ^-2 waxed_weathered_copper_grate run function main:abbey/kill_copper_eye
execute at @e[type=minecraft:marker,tag=copper_eye_grate_vertical_retract,tag=marker_setup] unless block ^1 ^ ^ waxed_weathered_copper_grate run function main:abbey/kill_copper_eye
execute at @e[type=minecraft:marker,tag=copper_eye_grate_vertical_retract,tag=marker_setup] unless block ^-1 ^ ^ waxed_weathered_copper_grate run function main:abbey/kill_copper_eye


#When the Ticking detects a copper eye marker without a Target or copper grate to its side, it sets them. If it sees that there is no longer a copper eye or grates that support it, it kills itsself
execute at @e[type=minecraft:marker,tag=copper_eye_grate_horizontal_retract,tag=!marker_setup] run function main:abbey/setup_copper_eye_grate_horizontal_retract
execute at @e[type=minecraft:marker,tag=copper_eye_grate_horizontal_retract,tag=marker_setup] unless block ~ ~ ~ target run function main:abbey/kill_copper_eye
execute at @e[type=minecraft:marker,tag=copper_eye_grate_horizontal_retract,tag=marker_setup] unless block ^1 ^ ^-1 waxed_weathered_copper_grate run function main:abbey/kill_copper_eye
execute at @e[type=minecraft:marker,tag=copper_eye_grate_horizontal_retract,tag=marker_setup] unless block ^-1 ^ ^-1 waxed_weathered_copper_grate run function main:abbey/kill_copper_eye
execute at @e[type=minecraft:marker,tag=copper_eye_grate_horizontal_retract,tag=marker_setup] unless block ^1 ^ ^-2 waxed_weathered_copper_grate run function main:abbey/kill_copper_eye
execute at @e[type=minecraft:marker,tag=copper_eye_grate_horizontal_retract,tag=marker_setup] unless block ^-1 ^ ^-2 waxed_weathered_copper_grate run function main:abbey/kill_copper_eye
execute at @e[type=minecraft:marker,tag=copper_eye_grate_horizontal_retract,tag=marker_setup] unless block ^1 ^ ^ waxed_weathered_copper_grate run function main:abbey/kill_copper_eye
execute at @e[type=minecraft:marker,tag=copper_eye_grate_horizontal_retract,tag=marker_setup] unless block ^-1 ^ ^ waxed_weathered_copper_grate run function main:abbey/kill_copper_eye