execute as @e[type=minecraft:item,nbt={Age:0s,Item:{tag:{MinedwithVeinMining:1b}}}] at @s run function randomthings:spells/veinmining/setup_item




#execute as @e[type=minecraft:item,nbt={Age:0s,Item:{tag:{MinedwithVeinMining:1b}}}] at @s run tag @s add MinedwithVeinMining 
#execute as @e[type=minecraft:item,nbt={Age:0s},tag=MinedwithVeinMining] at @s run data remove entity @s Item.tag.MinedwithVeinMining

#execute as @e[type=minecraft:item,tag=MinedwithVeinMining] at @s store result score @s plib.tmp run data get entity @s Item.tag
#execute as @e[type=minecraft:item,tag=MinedwithVeinMining] at @s unless score @s plib.tmp matches 1.. run data remove entity @s Item.tag

#scoreboard players reset @e[type=minecraft:item,tag=MinedwithVeinMining] plib.tmp

#execute as @e[type=minecraft:item,tag=MinedwithVeinMining] at @s run function randomthings:spells/veinmining/setup_vein
