tag @s add placespawner
execute as @e[type=minecraft:item,tag=placespawner] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run setblock ~ ~ ~ minecraft:spawner
execute as @e[type=minecraft:item,tag=placespawner] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run data modify block ~ ~ ~ SpawnCount set from entity @s Item.tag.SpawnerData.SpawnCount
execute as @e[type=minecraft:item,tag=placespawner] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run data modify block ~ ~ ~ SpawnRange set from entity @s Item.tag.SpawnerData.SpawnRange
execute as @e[type=minecraft:item,tag=placespawner] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run data modify block ~ ~ ~ Delay set from entity @s Item.tag.SpawnerData.Delay
execute as @e[type=minecraft:item,tag=placespawner] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run data modify block ~ ~ ~ MinSpawnDelay set from entity @s Item.tag.SpawnerData.MinSpawnDelay
execute as @e[type=minecraft:item,tag=placespawner] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run data modify block ~ ~ ~ MaxSpawnDelay set from entity @s Item.tag.SpawnerData.MaxSpawnDelay
execute as @e[type=minecraft:item,tag=placespawner] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run data modify block ~ ~ ~ MaxNearbyEntities set from entity @s Item.tag.SpawnerData.MaxNearbyEntities
execute as @e[type=minecraft:item,tag=placespawner] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run data modify block ~ ~ ~ RequiredPlayerRange set from entity @s Item.tag.SpawnerData.RequiredPlayerRange
execute as @e[type=minecraft:item,tag=placespawner] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run data modify block ~ ~ ~ SpawnData set from entity @s Item.tag.SpawnerData.SpawnData
execute as @e[type=minecraft:item,tag=placespawner] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run data modify block ~ ~ ~ SpawnPotentials set from entity @s Item.tag.SpawnerData.SpawnPotentials
kill @e[type=minecraft:item,tag=placespawner] 