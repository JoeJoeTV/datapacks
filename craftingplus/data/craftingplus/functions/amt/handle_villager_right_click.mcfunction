#Test for AMT's ready for checking recipes
execute as @e[type=minecraft:villager,tag=pcp.amt,tag=pcp.amt.villager,distance=..5,limit=1,sort=nearest] at @s as @e[type=minecraft:armor_stand,tag=pcp.amt,tag=pcp.amt.stand,sort=nearest,distance=..1,limit=1] at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless block ~ ~ ~ minecraft:dropper[facing=up]{Items:[]} if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:1b,Count:0b}]} if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:4b}]} run tag @s add pcp.amt.check
#Execute check_recipes function at available armor stands
execute as @e[type=minecraft:armor_stand,tag=pcp.amt,tag=pcp.amt.stand,tag=pcp.amt.check] at @s run function craftingplus:amt/check_recipes
#Remove Check tag
tag @s[tag=pcp.amt.check] remove pcp.amt.check