execute at @a[advancements={main:mechanics/hit_copper_eye=true}] run playsound minecraft:block.enchantment_table.use block @p ~ ~ ~ 1 2
execute positioned ^-1 ^ ^ run execute as @a[distance=..1] run tp @s ~ ~3 ~
execute as @a[distance=..1] run tp @s ~ ~3 ~
execute positioned ^1 ^ ^ run execute as @a[distance=..1] run tp @s ~ ~3 ~
summon minecraft:wind_charge ~ ~3.25 ~ {Motion:[0.0,-1.0,0.0]}
execute positioned ^-1 ^ ^ run summon minecraft:wind_charge ~ ~3.25 ~ {Motion:[0.0,-1.0,0.0]}
execute positioned ^1 ^ ^ run summon minecraft:wind_charge ~ ~3.25 ~ {Motion:[0.0,-1.0,0.0]}
particle minecraft:trial_spawner_detection ~ ~2 ~ .5 .5 .5 0 20
fill ^1 ^ ^ ^-1 ^ ^2 copper_grate
setblock ^ ^ ^2 target
particle block{block_state:"minecraft:copper_grate"} ^ ^ ^1 1 .5 1 .01 30 normal
playsound minecraft:entity.iron_golem.hurt block @a ~ ~-3 ~ 0.4
execute at @n[type=marker] run function main:abbey/kill_copper_eye