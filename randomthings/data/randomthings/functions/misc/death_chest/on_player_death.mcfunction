execute as @s at @s run tag @e[type=minecraft:item,distance=..2.5,nbt={Age:0s}] add rth.playerDeathItem
#execute as @s at @s run tag @e[type=minecraft:experience_orb,distance=..7,nbt={Age:0s}] add rth.playerDeathXPOrb

execute as @s at @s if entity @e[type=minecraft:item,tag=rth.playerDeathItem,distance=..2.5,nbt={Age:0s}] run tag @s add rth.hasDeathItems

execute as @s[tag=rth.hasDeathItems] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,ArmorItems:[{id:"minecraft:egg",Count:1b,tag:{}}],Tags:["rth.death_chest.marker","nokill"],DisabledSlots:4144959}

execute as @s[tag=rth.hasDeathItems] at @s align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,sort=nearest,limit=1,distance=..1] at @s run function randomthings:misc/death_chest/find_free_spot

execute as @s[tag=rth.hasDeathItems] run tag @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=rth.death_chest.found_space,sort=nearest,limit=1] add rth.death_chest.chest1
execute if entity @s[tag=rth.hasDeathItems] as @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=rth.death_chest.found_space,sort=nearest,limit=1] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon armor_stand ~-1 ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,ArmorItems:[{id:"minecraft:egg",Count:1b,tag:{}}],Tags:["rth.death_chest.marker","rth.death_chest.chest2","nokill"],DisabledSlots:4144959}
execute if entity @s[tag=rth.hasDeathItems] as @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=rth.death_chest.chest1,sort=nearest,limit=1] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run setblock ~ ~ ~ minecraft:chest[facing=north,type=right]
execute if entity @s[tag=rth.hasDeathItems] as @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=rth.death_chest.chest2,sort=nearest,limit=1] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run setblock ~ ~ ~ minecraft:chest[facing=north,type=left]

execute as @s[tag=rth.hasDeathItems] at @s if entity @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=rth.death_chest.chest1,sort=nearest,limit=1] if entity @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=rth.death_chest.chest2,sort=nearest,limit=1] run tp @e[type=minecraft:item,distance=..10,tag=rth.playerDeathItem] @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=rth.death_chest.chest1,sort=nearest,limit=1]

execute if entity @s[tag=rth.hasDeathItems] as @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=rth.death_chest.chest1,sort=nearest,limit=1] at @s run execute as @e[type=minecraft:item,distance=..2,tag=rth.playerDeathItem] run function randomthings:misc/death_chest/store_item

execute if entity @s[tag=rth.hasDeathItems] as @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=!rth.death_chest.found_space,sort=nearest,limit=1] at @s run tag @e[type=minecraft:item,distance=..2.5,tag=rth.playerDeathItem] remove rth.playerDeathItem

tag @s[tag=rth.hasDeathItems] remove rth.hasDeathItems
kill @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,sort=nearest,limit=2]