function main:environmental/load_day_cycle_extender
function main:setup/scoreboard
function main:setup/gamerules
tellraw @a {"bold":false,"color":"#65E082","text":"🍵 Matcha Flavoured is now loaded"}
tellraw @a [{"bold":false,"color":"#8fb398","text":"If you get lost or confused"},{"bold":true,"color":"#61bb78","text":" check the advancements"}]
execute if score current_world_settings_difficulty difficulty_score matches 1 run tellraw @a ["",{"text":"[⛏]","color":"green"},{"text":" Your gamemode is "},{"text":"Easy","bold":true,"color":"green"},{"text":". For players who want to relax. \n"},{"text":"(You can change this in the world settings, make sure you restart the world after)","color":"gray"}]
execute if score current_world_settings_difficulty difficulty_score matches 2 run tellraw @a ["",{"text":"[\u2620]","color":"gold"},{"text":" Your gamemode is "},{"text":"Normal","bold":true,"color":"gold"},{"text":". For players who want a challenge. \n"},{"text":"(You can change this in the world settings, make sure you restart the world after)","color":"gray"}]
execute if score current_world_settings_difficulty difficulty_score matches 3 run tellraw @a ["",{"text":"[\u2620\u2620\u2620]","color":"red"},{"text":" Your gamemode is "},{"text":"Hard","bold":true,"color":"red"},{"text":". For players who want an unfair challenge. \n"},{"text":"(You can change this in the world settings, make sure you restart the world after)","color":"gray"}]
# execute as @a run function main:setup/update_players