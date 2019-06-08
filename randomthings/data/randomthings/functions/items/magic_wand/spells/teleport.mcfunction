tag @s[type=minecraft:player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{StoredSpell:{id:"randomthings:teleport"}}}},scores={rth.mana=50..}] add rth.has.spell
tag @s[type=minecraft:player,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{StoredSpell:{id:"randomthings:teleport"}}}]},scores={rth.mana=50..}] add rth.has.spell

execute as @s[tag=rth.has.spell] at @s run scoreboard players set @s plib.rc.max 1000
execute as @s[tag=rth.has.spell] at @s run function pistonlib:raycast/find_block
execute as @s[tag=rth.has.spell] at @s run tag @e[type=minecraft:area_effect_cloud,tag=plib.rc.stand,tag=!plib.rc.moving,tag=plib.rc.finished,tag=plib.rc.found_block,distance=..55,limit=1] add rth.spl.teleport
execute as @s[tag=rth.has.spell] at @s run execute as @e[type=minecraft:area_effect_cloud,tag=plib.rc.stand,tag=!plib.rc.moving,tag=plib.rc.finished,tag=plib.rc.found_block,tag=rth.spl.teleport,distance=..55,limit=1] at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

execute as @s[tag=rth.has.spell] at @s run particle minecraft:portal ~ ~ ~ 0.2 0 0.2 0.5 50
execute as @s[tag=rth.has.spell] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~

execute as @s[tag=rth.has.spell] at @s run tp @s @e[type=minecraft:area_effect_cloud,tag=plib.rc.stand,tag=!plib.rc.moving,tag=plib.rc.finished,tag=plib.rc.found_block,tag=rth.spl.teleport,distance=..55,limit=1]

execute as @s[tag=rth.has.spell] at @s run particle minecraft:witch ~ ~ ~ 0 0 0 2 50 normal
execute as @s[tag=rth.has.spell] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~

execute as @s[tag=rth.has.spell] if entity @e[type=minecraft:area_effect_cloud,tag=plib.rc.stand,tag=!plib.rc.moving,tag=plib.rc.finished,tag=plib.rc.found_block,tag=rth.spl.teleport,distance=..55,limit=1] run scoreboard players remove @s[scores={rth.mana=50..}] rth.mana 50
#Kill Raycasting Armor Stand
execute as @s[tag=rth.has.spell] at @s run kill @e[type=minecraft:area_effect_cloud,tag=plib.rc.stand,tag=plib.rc.finished,distance=..55,limit=1]

tag @s[tag=rth.has.spell] remove rth.has.spell