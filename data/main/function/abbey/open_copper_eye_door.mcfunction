execute at @a[advancements={main:mechanics/hit_copper_eye=true}] run playsound minecraft:block.enchantment_table.use block @p ~ ~ ~ 1 2
particle minecraft:trial_spawner_detection ~ ~.5 ~ .5 .5 .5 0 20
fill ~1 ~-2 ~1 ~-1 ~-3 ~-1 air replace minecraft:iron_bars
particle dust_plume ^ ^-3 ^ 1 .1 1 0 6
particle dust_plume ^1 ^-3 ^ 1 .1 1 0 6
particle dust_plume ^-1 ^-3 ^ 1 .1 1 0 6
playsound minecraft:entity.iron_golem.hurt block @a ~ ~-3 ~ 0.4
execute at @n[type=marker] run function main:abbey/kill_copper_eye