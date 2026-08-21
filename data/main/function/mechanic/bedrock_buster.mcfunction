advancement revoke @a only main:mechanics/bedrock_buster

execute @n[type=item_frame,tag=BedrockBuster] run summon tnt ~ ~ ~ {Glowing:1b,fuse:80,explosion_power:4}
kill @n[type=item_frame,tag=BedrockBuster]

schedule function main:mechanic/bedrock_buster_use 79t