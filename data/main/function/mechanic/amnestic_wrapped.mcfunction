execute at @e[type=minecraft:armor_stand,tag=amnestic] run data merge entity @n[type=villager] {LastRestock:0,Xp:0,VillagerData:{level:1,profession:"minecraft:none"}}
advancement revoke @a only main:mechanics/amnestic
kill @e[type=minecraft:armor_stand,tag=amnestic]