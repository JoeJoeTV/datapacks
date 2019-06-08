execute at @s if block ~0.6 ~ ~ minecraft:dispenser[facing=west] if block ~ ~ ~ minecraft:air run tag @s add droppedfromdispenser
execute at @s if block ~-0.6 ~ ~ minecraft:dispenser[facing=east] if block ~ ~ ~ minecraft:air run tag @s add droppedfromdispenser
execute at @s if block ~ ~ ~0.6 minecraft:dispenser[facing=north] if block ~ ~ ~ minecraft:air run tag @s add droppedfromdispenser
execute at @s if block ~ ~ ~-0.6 minecraft:dispenser[facing=south] if block ~ ~ ~ minecraft:air run tag @s add droppedfromdispenser
execute at @s if block ~ ~0.6 ~ minecraft:dispenser[facing=up] if block ~ ~ ~ minecraft:air run tag @s add droppedfromdispenser
execute at @s if block ~ ~-0.6 ~ minecraft:dispenser[facing=down] if block ~ ~ ~ minecraft:air run tag @s add droppedfromdispenser

execute as @s[tag=droppedfromdispenser] at @s run function #randomtweaks:placeable

kill @s[tag=droppedfromdispenser,tag=placeable]
tag @s[tag=droppedfromdispenser] remove droppedfromdispenser
tag @s[tag=placeable] remove placeable