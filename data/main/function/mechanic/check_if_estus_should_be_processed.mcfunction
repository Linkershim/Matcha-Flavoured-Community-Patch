execute at @a run advancement revoke @p only main:mechanics/estus_obtained
execute if entity @p[gamemode=!creative] run function main:mechanic/process_estus

# In creative, items are refilled by the game. This means estus can never be cleared, and can cause serious issues, corrupting worlds.
# This is a band-aid fix for that issue. If you have a better idea, lmk