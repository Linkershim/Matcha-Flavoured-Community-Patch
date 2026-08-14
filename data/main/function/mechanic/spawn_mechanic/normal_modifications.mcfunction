#No Armour & Weapon Drops
execute as @s run data merge entity @n[type=#main:mundane_hostiles] {drop_chances:{feet:0.0f,legs:0.0f,chest:0.0f,head:0.0f,mainhand:0.0f}}
execute as @s run data merge entity @n[type=minecraft:zombified_piglin] {drop_chances:{feet:0.0f,legs:0.0f,chest:0.0f,head:0.0f,mainhand:0.0f}}
execute as @s run data merge entity @n[type=minecraft:piglin] {drop_chances:{feet:0.0f,legs:0.0f,chest:0.0f,head:0.0f,mainhand:0.0f}}
#Weak Skeletons
execute as @s[type=#minecraft:skeletons] run attribute @s minecraft:max_health base set 10
execute as @s[type=#minecraft:skeletons] run data merge entity @s {equipment:{mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"punch":1}}}},drop_chances:{mainhand:0.000}}
#Weak Creepers
execute as @s[type=minecraft:creeper] run attribute @s minecraft:max_health base set 16
#Weak but Fast Cavespiders
execute as @s[type=minecraft:cave_spider] run attribute @s minecraft:max_health base set 4
execute as @s[type=minecraft:cave_spider] run attribute @s minecraft:movement_speed base set 0.4
#Fast Zombies (Only regular zombies)
execute as @s[type=minecraft:zombie,nbt={IsBaby:0b}] run attribute @s minecraft:movement_speed base set 0.34
execute as @s[type=minecraft:zombie,nbt={IsBaby:0b}] run attribute @s minecraft:max_health base set 10
execute as @s[type=minecraft:zombie,nbt={IsBaby:0b}] run attribute @s minecraft:step_height base set 1
# Baby Zombies
execute as @s[type=minecraft:zombie,nbt={IsBaby:1b}] run attribute @s minecraft:max_health base set 4
execute as @s[type=minecraft:husk,nbt={IsBaby:1b}] run attribute @s minecraft:max_health base set 4
# #Strong and Slow Husks, slow but nothing can stop them moving forward
execute as @s[type=minecraft:husk,nbt={IsBaby:0b}] run attribute @s minecraft:max_health base set 40
execute as @s[type=minecraft:husk,nbt={IsBaby:0b}] run data merge entity @s {Health:40}
execute as @s[type=minecraft:husk,nbt={IsBaby:0b}] run attribute @s minecraft:movement_speed base set 0.21
execute as @s[type=minecraft:husk,nbt={IsBaby:0b}] run attribute @s minecraft:attack_damage base set 10
execute as @s[type=minecraft:husk,nbt={IsBaby:0b}] run attribute @s minecraft:armor base set 12
execute as @s[type=minecraft:husk,nbt={IsBaby:0b}] run attribute @s minecraft:follow_range base set 50
execute as @s[type=minecraft:husk,nbt={IsBaby:0b}] run attribute @s minecraft:knockback_resistance base set 1
execute as @s[type=minecraft:husk,nbt={IsBaby:0b}] run attribute @s minecraft:movement_efficiency base set 1
execute as @s[type=minecraft:husk,nbt={IsBaby:0b}] run attribute @s minecraft:water_movement_efficiency base set 1
execute as @s[type=minecraft:husk,nbt={IsBaby:0b}] run attribute @s minecraft:step_height base set 1
execute as @s[type=minecraft:husk,nbt={IsBaby:0b}] run attribute @s minecraft:spawn_reinforcements base set 0.1
#Weak Silverfish
execute as @s[type=minecraft:silverfish] run attribute @s minecraft:max_health base set 2
#Jumping Spiders
execute as @s[type=minecraft:spider] run attribute @s minecraft:jump_strength base set 0.85
execute as @s[type=minecraft:spider] run attribute @s minecraft:fall_damage_multiplier base set 0
execute at @s[type=minecraft:spider] run effect give @n minecraft:weaving infinite 0 true