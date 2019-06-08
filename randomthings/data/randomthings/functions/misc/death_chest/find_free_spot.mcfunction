execute as @s at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #randomthings:death_chest/replaceable if block ~-1 ~ ~ #randomthings:death_chest/replaceable run tag @s add rth.death_chest.found_space

#DEBUG
#tellraw @a [{"text":"y: "},{"nbt":"Pos[1]","entity":"@s"},{"text":" Tags"},{"nbt":"Tags","entity":"@s"}]
#execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,NoAI:1b}
#scoreboard players set JoeJoeTV test -1

execute as @s[tag=!rth.death_chest.found_space] at @s run tp @s ~ ~1 ~

execute as @s at @s store result score @s plib.tmp3 run data get entity @s Pos[1]

execute as @s at @s if entity @s[tag=!rth.death_chest.found_space,scores={plib.tmp3=0..255}] run function randomthings:misc/death_chest/find_free_spot