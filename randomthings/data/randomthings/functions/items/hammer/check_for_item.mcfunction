tag @e[type=minecraft:item,limit=1,distance=..7,nbt={Age:0s}] add rth.hammer.minedItem
execute as @e[type=minecraft:item,tag=rth.hammer.minedItem,limit=1,distance=..7] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"block air",ReapplicationDelay:0,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:3,DurationOnUse:0f,Tags:["rth.hammer.marker"]}
execute as @e[type=minecraft:area_effect_cloud,tag=rth.hammer.marker,limit=1,distance=..7] at @s align xyz positioned ~0.5 ~0.5 ~0.5 rotated as @a[tag=rth.has.hammer,tag=rth.used.hammer,limit=1,distance=..7] run tp @s ~ ~ ~ ~ ~

execute if entity @s[tag=rth.has.hammer.stone] as @e[type=minecraft:area_effect_cloud,tag=rth.hammer.marker,limit=1,distance=..7] at @s rotated as @s run function randomthings:items/hammer/destroy_blocks/stone
execute if entity @s[tag=rth.has.hammer.iron] as @e[type=minecraft:area_effect_cloud,tag=rth.hammer.marker,limit=1,distance=..7] at @s rotated as @s run function randomthings:items/hammer/destroy_blocks/iron
execute if entity @s[tag=rth.has.hammer.gold] as @e[type=minecraft:area_effect_cloud,tag=rth.hammer.marker,limit=1,distance=..7] at @s rotated as @s run function randomthings:items/hammer/destroy_blocks/gold
execute if entity @s[tag=rth.has.hammer.diamond] as @e[type=minecraft:area_effect_cloud,tag=rth.hammer.marker,limit=1,distance=..7] at @s rotated as @s run function randomthings:items/hammer/destroy_blocks/diamond

tag @e[tag=rth.hammer.minedItem] remove rth.hammer.minedItem
kill @e[type=minecraft:area_effect_cloud,tag=rth.hammer.marker,limit=1,distance=..7]