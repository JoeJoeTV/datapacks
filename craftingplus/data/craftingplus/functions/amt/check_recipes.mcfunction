#check if recipe is valid(lapis lazuli found and no spell on item) and add tag
execute if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:1b,id:"minecraft:lapis_lazuli"}]} if data block ~ ~ ~ Items[{Slot:4b}].tag.StoredSpell.id if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:4b,tag:{Spell:{id:""}}}]} run tag @s add pcp.amt.check.valid
execute if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:1b,id:"minecraft:lapis_lazuli"}]} unless data block ~ ~ ~ Items[{Slot:4b}].tag.StoredSpell.id run tag @s add pcp.amt.check.valid
#check if spell should be removed(sould sand) and add tag
execute if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:1b,id:"minecraft:soul_sand"}]} if data block ~ ~ ~ Items[{Slot:4b}].tag.StoredSpell.id unless block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:4b,tag:{Spell:{id:""}}}]} run tag @s add pcp.amt.check.remove

#store item count of item to be consumed
execute store result score @s pcp.amt.cnt.uitm run data get block ~ ~ ~ Items[{Slot:1b}].Count

#remove spell
execute as @s[tag=pcp.amt.check.remove,tag=!pcp.amt.check.valid] at @s run function craftingplus:amt/remove_spell

#check for recipes
tag @s[tag=pcp.amt.check.valid,tag=!pcp.amt.check.remove] add pcp.amt.check.valid_success

execute as @e[tag=pcp.amt.check.valid_success] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function #craftingplus:amt/recipes
execute as @e[tag=pcp.amt.check.valid_success,tag=pcp.amt.check.success] at @s run data modify block ~ ~ ~ Items[{Slot:0b}] set value {}
execute as @e[tag=pcp.amt.check.valid_success,tag=pcp.amt.check.success] at @s run data modify block ~ ~ ~ Items[{Slot:2b}] set value {}
execute as @e[tag=pcp.amt.check.valid_success,tag=pcp.amt.check.success] at @s run data modify block ~ ~ ~ Items[{Slot:3b}] set value {}
execute as @e[tag=pcp.amt.check.valid_success,tag=pcp.amt.check.success] at @s run data modify block ~ ~ ~ Items[{Slot:5b}] set value {}
execute as @e[tag=pcp.amt.check.valid_success,tag=pcp.amt.check.success] at @s run data modify block ~ ~ ~ Items[{Slot:6b}] set value {}
execute as @e[tag=pcp.amt.check.valid_success,tag=pcp.amt.check.success] at @s run data modify block ~ ~ ~ Items[{Slot:7b}] set value {}
execute as @e[tag=pcp.amt.check.valid_success,tag=pcp.amt.check.success] at @s run data modify block ~ ~ ~ Items[{Slot:8b}] set value {}
execute as @e[tag=pcp.amt.check.valid_success,tag=pcp.amt.check.success] at @s store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get @s pcp.amt.cnt.uitm
execute as @e[tag=pcp.amt.check.valid_success,tag=pcp.amt.check.success] at @s run playsound minecraft:entity.player.levelup block @a[distance=..6,scores={plib.vr.talk=1..}] ~ ~ ~ 5 0

scoreboard players reset @s pcp.amt.cnt.uitm

tag @s[tag=pcp.amt.check.success] remove pcp.amt.check.success
tag @s[tag=pcp.amt.check.remove] remove pcp.amt.check.remove
tag @s[tag=pcp.amt.check.valid] remove pcp.amt.check.valid
tag @s[tag=pcp.amt.check.valid_success] remove pcp.amt.check.valid_success