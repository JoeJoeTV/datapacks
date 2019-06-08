#Set temp score for slot count to 0
scoreboard players set @s plib.tmp 0

#Setup Chest 1
#Get Item count of Chest 1 and store it in plib.tmp2
execute as @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=rth.death_chest.chest1,sort=nearest,limit=1] at @s store result score @s plib.tmp2 run data get block ~ ~ ~ Items
#If Chest has items, store slot number of last slot in plib.tmp
execute as @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=rth.death_chest.chest1,sort=nearest,limit=1] at @s if score @s plib.tmp2 matches 1..26 if data block ~ ~ ~ Items[-1] store result score @s plib.tmp run data get block ~ ~ ~ Items[-1].Slot
execute if score @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=rth.death_chest.chest1,sort=nearest,limit=1] plib.tmp2 matches 27.. run tag @s add rth.death_chest.goto.chest2

#Setup Chest 2
#Get Item count of Chest 2 and store it in plib.tmp2
execute as @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=rth.death_chest.chest2,sort=nearest,limit=1] at @s store result score @s plib.tmp2 run data get block ~ ~ ~ Items
#If Chest has items, store slot number of last slot in plib.tmp
execute as @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=rth.death_chest.chest2,sort=nearest,limit=1] at @s if score @s plib.tmp2 matches 1..26 if data block ~ ~ ~ Items[-1] store result score @s plib.tmp run data get block ~ ~ ~ Items[-1].Slot
execute if score @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=rth.death_chest.chest2,sort=nearest,limit=1] plib.tmp2 matches 27.. run tag @s add rth.death_chest.goto.drop
tag @s[tag=rth.death_chest.goto.chest2,tag=rth.death_chest.goto.drop] remove rth.death_chest.goto.chest2

#Copy Stuff

#Goto Chest 1

#Add 1 to plib.tmp
execute at @s if entity @s[tag=!rth.death_chest.goto.chest2,tag=!rth.death_chest.goto.drop] as @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=rth.death_chest.chest1,sort=nearest,limit=1] at @s if data block ~ ~ ~ Items[-1] run scoreboard players add @s plib.tmp 1 
#Copy Item to ArmorItems[0]
execute as @s[tag=!rth.death_chest.goto.chest2,tag=!rth.death_chest.goto.drop] run data modify entity @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=rth.death_chest.chest1,sort=nearest,limit=1] ArmorItems[0].tag set from entity @s Item
#Add Slot tag to ArmorItems[0].tag
execute as @s[tag=!rth.death_chest.goto.chest2,tag=!rth.death_chest.goto.drop] at @s as @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=rth.death_chest.chest1,sort=nearest,limit=1] at @s store result entity @s ArmorItems[0].tag.Slot byte 1 run scoreboard players get @s plib.tmp
#Copy ArmorItems[0].tag (tmp slot) to chest
execute as @s[tag=!rth.death_chest.goto.chest2,tag=!rth.death_chest.goto.drop] at @s as @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=rth.death_chest.chest1,sort=nearest,limit=1] at @s run data modify block ~ ~ ~ Items append from entity @s ArmorItems[0].tag

#Goto Chest 2

#Add 1 to plib.tmp
execute as @s[tag=rth.death_chest.goto.chest2,tag=!rth.death_chest.goto.drop] at @s as @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=rth.death_chest.chest2,sort=nearest,limit=1] at @s if data block ~ ~ ~ Items[-1] run scoreboard players add @s plib.tmp 1 
#Copy Item to ArmorItems[0]
execute as @s[tag=rth.death_chest.goto.chest2,tag=!rth.death_chest.goto.drop] run data modify entity @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=rth.death_chest.chest2,sort=nearest,limit=1] ArmorItems[0].tag set from entity @s Item
#Add Slot tag to ArmorItems[0].tag
execute as @s[tag=rth.death_chest.goto.chest2,tag=!rth.death_chest.goto.drop] at @s as @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=rth.death_chest.chest2,sort=nearest,limit=1] at @s store result entity @s ArmorItems[0].tag.Slot byte 1 run scoreboard players get @s plib.tmp
#Copy ArmorItems[0].tag (tmp slot) to chest
execute as @s[tag=rth.death_chest.goto.chest2,tag=!rth.death_chest.goto.drop] at @s as @e[type=minecraft:armor_stand,tag=rth.death_chest.marker,tag=rth.death_chest.chest2,sort=nearest,limit=1] at @s run data modify block ~ ~ ~ Items append from entity @s ArmorItems[0].tag

#Teleport Drop Items ontop of chest
execute as @s[tag=!rth.death_chest.goto.chest2,tag=rth.death_chest.goto.drop] at @s run tp @s ~ ~1 ~

#Kill copied item
kill @s[tag=!rth.death_chest.goto.drop]