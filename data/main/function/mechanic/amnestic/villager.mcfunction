# Reset trigger
advancement revoke @s only main:mechanics/amnestic/villager

# Debug
#say triggered amnestic on villager

execute at @n[type=villager] run playsound minecraft:entity.villager.ambient neutral @a ~ ~ ~ 1 0.65

# Make the villager Unemployed
data merge entity @n[type=villager] {LastRestock:0,Xp:0,VillagerData:{level:1,profession:"minecraft:none"}}

# Local Flavors datapack compat
tag @n[type=villager] remove checked

# Double check that player is holding amnestics and is not in Creative before reducing the stack size of the held stack of amnestics by one
execute if predicate matcha:holding_amnestic run item modify entity @s weapon.mainhand matcha:decrement_stack