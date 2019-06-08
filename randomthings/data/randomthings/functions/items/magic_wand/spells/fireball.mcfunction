tag @s[type=minecraft:player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{StoredSpell:{id:"randomthings:fireball"}}}},scores={rth.mana=40..}] add rth.has.spell
tag @s[type=minecraft:player,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{StoredSpell:{id:"randomthings:fireball"}}}]},scores={rth.mana=40..}] add rth.has.spell

execute as @s[tag=rth.has.spell] at @s run function pistonlib:get_motion_by_rotation
execute as @s[tag=rth.has.spell] at @s anchored eyes positioned ^ ^ ^ run summon minecraft:fireball ~ ~ ~ {direction:[0.0,0.0,0.0],Tags:["rth.summoned"]}
execute as @s[tag=rth.has.spell] at @s anchored eyes positioned ^ ^ ^ store result entity @e[type=minecraft:fireball,tag=rth.summoned,distance=..0.5,limit=1] power[0] double 0.000002 run scoreboard players get @s plib.mc.x
execute as @s[tag=rth.has.spell] at @s anchored eyes positioned ^ ^ ^ store result entity @e[type=minecraft:fireball,tag=rth.summoned,distance=..0.5,limit=1] power[1] double 0.000002 run scoreboard players get @s plib.mc.y
execute as @s[tag=rth.has.spell] at @s anchored eyes positioned ^ ^ ^ store result entity @e[type=minecraft:fireball,tag=rth.summoned,distance=..0.5,limit=1] power[2] double 0.000002 run scoreboard players get @s plib.mc.z
execute as @s[tag=rth.has.spell] at @s anchored eyes positioned ^ ^ ^ run tag @e[type=minecraft:fireball,tag=rth.summoned,distance=..0.5,limit=1] remove rth.summoned
execute as @s[tag=rth.has.spell] run scoreboard players reset @s plib.mc.x
execute as @s[tag=rth.has.spell] run scoreboard players reset @s plib.mc.y
execute as @s[tag=rth.has.spell] run scoreboard players reset @s plib.mc.z

execute as @s[tag=rth.has.spell] run scoreboard players remove @s[scores={rth.mana=40..}] rth.mana 40
tag @s[tag=rth.has.spell] remove rth.has.spell