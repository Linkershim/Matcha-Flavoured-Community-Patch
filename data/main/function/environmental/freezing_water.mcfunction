#execute at @a run data modify entity @p TicksFrozen append value 140 (It wont let me :c)
execute at @p[gamemode=!creative] if block ~ ~1 ~ water run execute if biome ~ ~ ~ snowy_beach run effect give @p slowness 10 4 true
execute at @p[gamemode=!creative] if block ~ ~1 ~ water run execute if biome ~ ~ ~ snowy_plains run effect give @p slowness 10 4 true
execute at @p[gamemode=!creative] if block ~ ~1 ~ water run execute if biome ~ ~ ~ snowy_taiga run effect give @p slowness 10 4 true
execute at @p[gamemode=!creative] if block ~ ~1 ~ water run execute if biome ~ ~ ~ snowy_slopes run effect give @p slowness 10 4 true
execute at @p[gamemode=!creative] if block ~ ~1 ~ water run execute if biome ~ ~ ~ frozen_ocean run effect give @p slowness 10 4 true
execute at @p[gamemode=!creative] if block ~ ~1 ~ water run execute if biome ~ ~ ~ frozen_river run effect give @p slowness 10 4 true

execute at @p[gamemode=!creative] if block ~ ~1 ~ water run execute if biome ~ ~ ~ snowy_beach run effect give @p blindness 2 0 true
execute at @p[gamemode=!creative] if block ~ ~1 ~ water run execute if biome ~ ~ ~ snowy_plains run effect give @p blindness 2 0 true
execute at @p[gamemode=!creative] if block ~ ~1 ~ water run execute if biome ~ ~ ~ snowy_taiga run effect give @p blindness 2 0 true
execute at @p[gamemode=!creative] if block ~ ~1 ~ water run execute if biome ~ ~ ~ snowy_slopes run effect give @p blindness 2 0 true
execute at @p[gamemode=!creative] if block ~ ~1 ~ water run execute if biome ~ ~ ~ frozen_ocean run effect give @p blindness 2 0 true
execute at @p[gamemode=!creative] if block ~ ~1 ~ water run execute if biome ~ ~ ~ frozen_river run effect give @p blindness 2 0 true

execute at @p[gamemode=!creative] if block ~ ~1 ~ water run execute if biome ~ ~ ~ snowy_beach run effect give @p darkness 10 0 true
execute at @p[gamemode=!creative] if block ~ ~1 ~ water run execute if biome ~ ~ ~ snowy_plains run effect give @p darkness 10 0 true
execute at @p[gamemode=!creative] if block ~ ~1 ~ water run execute if biome ~ ~ ~ snowy_taiga run effect give @p darkness 10 0 true
execute at @p[gamemode=!creative] if block ~ ~1 ~ water run execute if biome ~ ~ ~ snowy_slopes run effect give @p darkness 10 0 true
execute at @p[gamemode=!creative] if block ~ ~1 ~ water run execute if biome ~ ~ ~ frozen_ocean run effect give @p darkness 10 0 true
execute at @p[gamemode=!creative] if block ~ ~1 ~ water run execute if biome ~ ~ ~ frozen_river run effect give @p darkness 10 0 true

execute at @p if block ~ ~1 ~ water run execute if biome ~ ~ ~ snowy_beach run damage @p 2 freeze
execute at @p if block ~ ~1 ~ water run execute if biome ~ ~ ~ snowy_plains run damage @p 2 freeze
execute at @p if block ~ ~1 ~ water run execute if biome ~ ~ ~ snowy_taiga run damage @p 2 freeze
execute at @p if block ~ ~1 ~ water run execute if biome ~ ~ ~ snowy_slopes run damage @p 2 freeze
execute at @p if block ~ ~1 ~ water run execute if biome ~ ~ ~ frozen_ocean run damage @p 2 freeze
execute at @p if block ~ ~1 ~ water run execute if biome ~ ~ ~ frozen_river run damage @p 2 freeze