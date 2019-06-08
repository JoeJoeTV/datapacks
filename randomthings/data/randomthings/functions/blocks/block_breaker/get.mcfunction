execute as @a at @s run tag @e[type=minecraft:item,distance=..6,nbt={OnGround:1b,Item:{id:"minecraft:diamond_pickaxe",Count:1b}}] add rth.floor.bb.1
execute as @a at @s run tag @e[type=minecraft:item,distance=..6,nbt={OnGround:1b,Item:{id:"minecraft:redstone_block",Count:1b}}] add rth.floor.bb.2

execute as @e[type=minecraft:item,tag=rth.floor.bb.1] at @s align xz positioned ~0.5 ~ ~0.5 if entity @e[type=minecraft:item,tag=rth.floor.bb.2,distance=..0.6] if block ~ ~-0.5 ~ minecraft:dropper{Items:[]} run tag @s add rth.floor.bb.craft.valid
execute as @e[type=minecraft:item,tag=rth.floor.bb.craft.valid] at @s align xz positioned ~0.5 ~-1 ~0.5 unless entity @e[tag=dropper,distance=..0.4] run tag @s add rth.floor.bb.craft


execute as @e[type=minecraft:item,tag=rth.floor.bb.craft] at @s run kill @e[type=minecraft:item,tag=rth.floor.bb.2,distance=..1,limit=1,nbt={Item:{Count:1b}}]
execute as @e[type=minecraft:item,tag=rth.floor.bb.craft] at @s align xyz run summon armor_stand ~0.5 ~-1 ~0.5 {Marker:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["rth.bb","rth.bb.stand","nokill","dropper"],DisabledSlots:4144959}
execute as @e[type=minecraft:item,tag=rth.floor.bb.craft] at @s align xyz run summon armor_stand ~0.5 ~ ~0.5 {Marker:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["rth.bb","rth.bb.name","nokill"],DisabledSlots:4144959,CustomName:"{\"text\":\"Block Zerbrecher\"}",CustomNameVisible:1b}


execute as @e[type=minecraft:item,tag=rth.floor.bb.craft] at @s align xyz run data merge block ~ ~-1 ~ {Lock:"§locked",CustomName:"{\"text\":\"Block Zerbrecher\"}"}
execute as @e[type=minecraft:item,tag=rth.floor.bb.craft] at @s align xyz run playsound minecraft:entity.player.levelup voice @a[distance=..10]
kill @e[type=minecraft:item,tag=rth.floor.bb.craft,nbt={Item:{Count:1b}}]
tag @e[type=minecraft:item,tag=rth.floor.bb.1,nbt=!{Item:{Count:1b}}] remove rth.floor.bb.1
tag @e[type=minecraft:item,tag=rth.floor.bb.2,nbt=!{Item:{Count:1b}}] remove rth.floor.bb.2
tag @e[type=minecraft:item,tag=rth.floor.bb.craft] remove rth.floor.bb.craft
tag @e[type=minecraft:item,tag=rth.floor.bb.craft.valid] remove rth.floor.bb.craft.valid