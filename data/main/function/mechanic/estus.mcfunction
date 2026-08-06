execute at @a run execute if items entity @p hotbar.* minecraft:blaze_powder run advancement revoke @p only main:mechanics/estus_obtained
execute at @a run execute if items entity @p inventory.* minecraft:blaze_powder run advancement revoke @p only main:mechanics/estus_obtained
execute at @a run execute if items entity @p inventory.* minecraft:blaze_powder run effect give @p regeneration 2 4 true
execute at @a run execute if items entity @p hotbar.* minecraft:blaze_powder run effect give @p regeneration 2 4 true
execute at @a run execute if items entity @p inventory.* minecraft:blaze_powder run effect give @p resistance 5 0 true
execute at @a run execute if items entity @p hotbar.* minecraft:blaze_powder run effect give @p resistance 5 0 true
execute at @a run execute if items entity @p inventory.* minecraft:blaze_powder run give @p glowstone_dust 1
execute at @a run execute if items entity @p hotbar.* minecraft:blaze_powder run give @p glowstone_dust 1
execute at @a run execute if items entity @a inventory.* minecraft:blaze_powder run particle dust{color:[1.000,0.667,0.090],scale:1} ~ ~1.5 ~ .25 .25 .25 .1 8 normal
execute at @a run execute if items entity @a hotbar.* minecraft:blaze_powder run particle dust{color:[1.000,0.667,0.090],scale:1} ~ ~1.5 ~ .25 .25 .25 .1 8 normal
execute at @a run execute if items entity @p inventory.* minecraft:blaze_powder run clear @p blaze_powder 1
execute at @a run execute if items entity @p hotbar.* minecraft:blaze_powder run clear @p blaze_powder 1