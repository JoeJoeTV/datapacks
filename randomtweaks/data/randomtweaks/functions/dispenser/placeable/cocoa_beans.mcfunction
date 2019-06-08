execute as @s[tag=droppedfromdispenser,nbt={Item:{id:"minecraft:cocoa_beans"}}] if block ~1 ~ ~ minecraft:jungle_log[axis=y] run tag @s add placeable
execute as @s[tag=droppedfromdispenser,nbt={Item:{id:"minecraft:cocoa_beans"}}] if block ~-1 ~ ~ minecraft:jungle_log[axis=y] run tag @s add placeable
execute as @s[tag=droppedfromdispenser,nbt={Item:{id:"minecraft:cocoa_beans"}}] if block ~ ~ ~1 minecraft:jungle_log[axis=y] run tag @s add placeable
execute as @s[tag=droppedfromdispenser,nbt={Item:{id:"minecraft:cocoa_beans"}}] if block ~ ~ ~-1 minecraft:jungle_log[axis=y] run tag @s add placeable

execute as @s[tag=droppedfromdispenser,tag=placeable,nbt={Item:{id:"minecraft:cocoa_beans"}}] if block ~ ~ ~ minecraft:air if block ~1 ~ ~ minecraft:jungle_log[axis=y] run setblock ~ ~ ~ minecraft:cocoa[facing=east]
execute as @s[tag=droppedfromdispenser,tag=placeable,nbt={Item:{id:"minecraft:cocoa_beans"}}] if block ~ ~ ~ minecraft:air if block ~-1 ~ ~ minecraft:jungle_log[axis=y] run setblock ~ ~ ~ minecraft:cocoa[facing=west]
execute as @s[tag=droppedfromdispenser,tag=placeable,nbt={Item:{id:"minecraft:cocoa_beans"}}] if block ~ ~ ~ minecraft:air if block ~ ~ ~1 minecraft:jungle_log[axis=y] run setblock ~ ~ ~ minecraft:cocoa[facing=south]
execute as @s[tag=droppedfromdispenser,tag=placeable,nbt={Item:{id:"minecraft:cocoa_beans"}}] if block ~ ~ ~ minecraft:air if block ~ ~ ~-1 minecraft:jungle_log[axis=y] run setblock ~ ~ ~ minecraft:cocoa[facing=north]