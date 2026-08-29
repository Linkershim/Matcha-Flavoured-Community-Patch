# Reset trigger
advancement revoke @s only main:mechanics/amnestic/villager

# Debug
#say triggered amnestic on villager

execute at @n[type=villager] run playsound minecraft:entity.villager.ambient neutral @a ~ ~ ~ 1 0.65

# Make the villager Unemployed
data merge entity @n[type=villager] {LastRestock:0,Xp:0,VillagerData:{level:1,profession:"minecraft:none"}}

# Local Flavors datapack compat
tag @n[type=villager] remove checked

# Remove one amnestic
execute unless @s[gamemode=survival] run clear @s *[minecraft:item_model="minecraft:amnestic_wrapped"] 1