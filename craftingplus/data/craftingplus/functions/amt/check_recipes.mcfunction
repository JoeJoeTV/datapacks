#test for AMT's ready for checking
execute as @e[type=minecraft:villager,tag=pcp.amt,tag=pcp.amt.villager,distance=..5,limit=1,sort=nearest] at @s run execute as @e[type=minecraft:armor_stand,tag=pcp.amt,tag=pcp.amt.stand,sort=nearest,distance=..1,limit=1] at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless block ~ ~ ~ minecraft:dropper[facing=up]{Items:[]} if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:1b,Count:0b}]} if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:4b}]} run tag @s add pcp.amt.check
#check if recipe is valid(lapis lazuli found and no spell on item) and add tag
execute as @e[type=minecraft:armor_stand,tag=pcp.amt,tag=pcp.amt.stand,tag=pcp.amt.check] at @s if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:1b,id:"minecraft:lapis_lazuli"}]} if data block ~ ~ ~ Items[{Slot:4b}].tag.StoredSpell.id if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:4b,tag:{Spell:{id:""}}}]} run tag @s add pcp.amt.check.valid
execute as @e[type=minecraft:armor_stand,tag=pcp.amt,tag=pcp.amt.stand,tag=pcp.amt.check] at @s if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:1b,id:"minecraft:lapis_lazuli"}]} unless data block ~ ~ ~ Items[{Slot:4b}].tag.StoredSpell.id run tag @s add pcp.amt.check.valid
#check if spell should be removed(sould sand) and add tag
execute as @e[type=minecraft:armor_stand,tag=pcp.amt,tag=pcp.amt.stand,tag=pcp.amt.check] at @s if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:1b,id:"minecraft:soul_sand"}]} if data block ~ ~ ~ Items[{Slot:4b}].tag.StoredSpell.id unless block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:4b,tag:{Spell:{id:""}}}]} run tag @s add pcp.amt.check.remove

#store item count of item to be consumed
execute as @e[type=minecraft:armor_stand,tag=pcp.amt,tag=pcp.amt.stand,tag=pcp.amt.check] at @s store result score @s pcp.amt.cnt.uitm run data get block ~ ~ ~ Items[{Slot:1b}].Count

#remove spell
execute as @e[type=minecraft:armor_stand,tag=pcp.amt,tag=pcp.amt.stand,tag=pcp.amt.check,tag=pcp.amt.check.remove,tag=!pcp.amt.check.valid] at @s run function craftingplus:amt/remove_spell

#check for recipes
execute as @e[type=minecraft:armor_stand,tag=pcp.amt,tag=pcp.amt.stand,tag=pcp.amt.check,tag=pcp.amt.check.valid,tag=!pcp.amt.check.remove] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function #craftingplus:amt/recipes
execute as @e[type=minecraft:armor_stand,tag=pcp.amt,tag=pcp.amt.stand,tag=pcp.amt.check,tag=pcp.amt.check.valid,tag=!pcp.amt.check.remove,tag=pcp.amt.check.success] at @s run data modify block ~ ~ ~ Items[{Slot:0b}] set value {}
execute as @e[type=minecraft:armor_stand,tag=pcp.amt,tag=pcp.amt.stand,tag=pcp.amt.check,tag=pcp.amt.check.valid,tag=!pcp.amt.check.remove,tag=pcp.amt.check.success] at @s run data modify block ~ ~ ~ Items[{Slot:2b}] set value {}
execute as @e[type=minecraft:armor_stand,tag=pcp.amt,tag=pcp.amt.stand,tag=pcp.amt.check,tag=pcp.amt.check.valid,tag=!pcp.amt.check.remove,tag=pcp.amt.check.success] at @s run data modify block ~ ~ ~ Items[{Slot:3b}] set value {}
execute as @e[type=minecraft:armor_stand,tag=pcp.amt,tag=pcp.amt.stand,tag=pcp.amt.check,tag=pcp.amt.check.valid,tag=!pcp.amt.check.remove,tag=pcp.amt.check.success] at @s run data modify block ~ ~ ~ Items[{Slot:5b}] set value {}
execute as @e[type=minecraft:armor_stand,tag=pcp.amt,tag=pcp.amt.stand,tag=pcp.amt.check,tag=pcp.amt.check.valid,tag=!pcp.amt.check.remove,tag=pcp.amt.check.success] at @s run data modify block ~ ~ ~ Items[{Slot:6b}] set value {}
execute as @e[type=minecraft:armor_stand,tag=pcp.amt,tag=pcp.amt.stand,tag=pcp.amt.check,tag=pcp.amt.check.valid,tag=!pcp.amt.check.remove,tag=pcp.amt.check.success] at @s run data modify block ~ ~ ~ Items[{Slot:7b}] set value {}
execute as @e[type=minecraft:armor_stand,tag=pcp.amt,tag=pcp.amt.stand,tag=pcp.amt.check,tag=pcp.amt.check.valid,tag=!pcp.amt.check.remove,tag=pcp.amt.check.success] at @s run data modify block ~ ~ ~ Items[{Slot:8b}] set value {}
execute as @e[type=minecraft:armor_stand,tag=pcp.amt,tag=pcp.amt.stand,tag=pcp.amt.check,tag=pcp.amt.check.valid,tag=!pcp.amt.check.remove,tag=pcp.amt.check.success] at @s store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get @s pcp.amt.cnt.uitm
execute as @e[type=minecraft:armor_stand,tag=pcp.amt,tag=pcp.amt.stand,tag=pcp.amt.check,tag=pcp.amt.check.valid,tag=!pcp.amt.check.remove,tag=pcp.amt.check.success] at @s run playsound minecraft:entity.player.levelup block @a[distance=..6,scores={plib.vr.talk=1..}] ~ ~ ~ 5 0

scoreboard players reset @e[type=minecraft:armor_stand,tag=pcp.amt,tag=pcp.amt.stand,tag=pcp.amt.check] pcp.amt.cnt.uitm

tag @e[tag=pcp.amt.check.success] remove pcp.amt.check.success
tag @e[tag=pcp.amt.check.remove] remove pcp.amt.check.remove
tag @e[tag=pcp.amt.check.valid] remove pcp.amt.check.valid
tag @e[tag=pcp.amt.check] remove pcp.amt.check