tag @s add pcp.floor.amt.1
tag @e[type=minecraft:item,distance=..1,nbt={OnGround:1b,Item:{id:"minecraft:redstone_block",Count:1b}}] add pcp.floor.amt.2

#Check if Second Item is near first item and if dropper is valid
execute align xz positioned ~0.5 ~ ~0.5 if entity @e[type=minecraft:item,tag=pcp.floor.amt.2,distance=..0.6] if block ~ ~-0.5 ~ minecraft:dropper[facing=up]{Items:[]} run tag @s add pcp.floor.amt.craft.valid
#Check if no other act/amt/etc. are at this position
execute as @s[tag=pcp.floor.amt.craft.valid] at @s align xz positioned ~0.5 ~-1 ~0.5 unless entity @e[tag=dropper,distance=..0.4] run tag @s add pcp.floor.amt.craft

#Kill Second Item
execute as @s[tag=pcp.floor.amt.craft] at @s run kill @e[type=minecraft:item,tag=pcp.floor.amt.2,distance=..1,limit=1,nbt={Item:{Count:1b}}]
#Summon Main Armor Stand
execute as @s[tag=pcp.floor.amt.craft] at @s align xyz run summon minecraft:armor_stand ~0.5 ~-1 ~0.5 {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["pcp.amt","pcp.amt.stand","nokill","dropper"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:enchanting_table",Count:1b,tag:{Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}}]}
#Summon Right Click Detect Villager
execute as @s[tag=pcp.floor.amt.craft] at @s align xyz run summon minecraft:villager ~0.5 ~-1 ~0.5 {ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}],OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Willing:0b,Tags:["pcp.amt","pcp.amt.villager","nokill","permanent_invisible"],VillagerData:{level:1,profession:"minecraft:nitwit",type:"minecraft:plains"},Offers:{}}
#Set Name of Dropper
execute as @s[tag=pcp.floor.amt.craft] at @s align xyz run data merge block ~ ~-1 ~ {CustomName:"{\"text\":\"Verbesserter Zaubertisch\"}"}
#Play Sound
execute as @s[tag=pcp.floor.amt.craft] at @s align xyz run playsound minecraft:entity.player.levelup voice @a[distance=..10]

#Kill First/Main Item
kill @s[tag=pcp.floor.amt.craft,nbt={Item:{Count:1b}}]

#Remove Tags from Items
tag @e[type=minecraft:item,tag=pcp.floor.amt.1,nbt=!{Item:{Count:1b}}] remove pcp.floor.amt.1
tag @e[type=minecraft:item,tag=pcp.floor.amt.2,nbt=!{Item:{Count:1b}}] remove pcp.floor.amt.2
tag @e[type=minecraft:item,tag=pcp.floor.amt.craft] remove pcp.floor.amt.craft
tag @e[type=minecraft:item,tag=pcp.floor.amt.craft.valid] remove pcp.floor.amt.craft.valid









#execute as @a at @s run tag @e[type=minecraft:item,distance=..6,nbt={OnGround:1b,Item:{id:"minecraft:enchanting_table",Count:1b}}] add pcp.floor.amt.1
#execute as @a at @s run tag @e[type=minecraft:item,distance=..6,nbt={OnGround:1b,Item:{id:"minecraft:redstone_block",Count:1b}}] add pcp.floor.amt.2

#execute as @e[type=minecraft:item,tag=pcp.floor.amt.1] at @s align xz positioned ~0.5 ~ ~0.5 if entity @e[type=minecraft:item,tag=pcp.floor.amt.2,distance=..0.6] if block ~ ~-0.5 ~ minecraft:dropper[facing=up]{Items:[]} run tag @s add pcp.floor.amt.craft.valid
#execute as @e[type=minecraft:item,tag=pcp.floor.amt.craft.valid] at @s align xz positioned ~0.5 ~-1 ~0.5 unless entity @e[tag=dropper,distance=..0.4] run tag @s add pcp.floor.amt.craft

#execute as @e[type=minecraft:item,tag=pcp.floor.amt.craft] at @s run kill @e[type=minecraft:item,tag=pcp.floor.amt.2,distance=..1,limit=1,nbt={Item:{Count:1b}}]
#execute as @e[type=minecraft:item,tag=pcp.floor.amt.craft] at @s align xyz run summon armor_stand ~0.5 ~-1 ~0.5 {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["pcp.amt","pcp.amt.stand","nokill","dropper"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:enchanting_table",Count:1b,tag:{Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}}]}
#execute as @e[type=minecraft:item,tag=pcp.floor.amt.craft] at @s align xyz run summon villager ~0.5 ~-1 ~0.5 {ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}],OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Willing:0b,Tags:["pcp.amt","pcp.amt.villager","nokill","permanent_invisible"],VillagerData:{level:1,profession:"minecraft:nitwit",type:"minecraft:plains"},Offers:{}}
#execute as @e[type=minecraft:item,tag=pcp.floor.amt.craft] at @s align xyz run data merge block ~ ~-1 ~ {CustomName:"{\"text\":\"Verbesserter Zaubertisch\"}"}
#execute as @e[type=minecraft:item,tag=pcp.floor.amt.craft] at @s align xyz run playsound minecraft:entity.player.levelup voice @a[distance=..10]
#kill @e[type=minecraft:item,tag=pcp.floor.amt.craft,nbt={Item:{Count:1b}}]
#tag @e[type=minecraft:item,tag=pcp.floor.amt.1,nbt=!{Item:{Count:1b}}] remove pcp.floor.amt.1
#tag @e[type=minecraft:item,tag=pcp.floor.amt.2,nbt=!{Item:{Count:1b}}] remove pcp.floor.amt.2
#tag @e[type=minecraft:item,tag=pcp.floor.amt.craft] remove pcp.floor.amt.craft