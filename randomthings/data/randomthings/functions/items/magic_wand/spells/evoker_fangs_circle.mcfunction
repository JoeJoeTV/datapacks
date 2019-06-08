tag @s[type=minecraft:player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{StoredSpell:{id:"randomthings:evoker_fangs_circle"}}}},scores={rth.mana=65..}] add rth.has.spell
tag @s[type=minecraft:player,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{StoredSpell:{id:"randomthings:evoker_fangs_circle"}}}]},scores={rth.mana=65..}] add rth.has.spell

execute as @s[tag=rth.has.spell] at @s rotated ~-180 0 run summon minecraft:evoker_fangs ^ ^ ^1 {Tags:["spell_summoned"]}
execute as @s[tag=rth.has.spell] at @s rotated ~-180 0 run summon minecraft:evoker_fangs ^ ^ ^2 {Tags:["spell_summoned"]}

execute as @s[tag=rth.has.spell] at @s rotated ~-120 0 run summon minecraft:evoker_fangs ^ ^ ^1 {Tags:["spell_summoned"]}
execute as @s[tag=rth.has.spell] at @s rotated ~-120 0 run summon minecraft:evoker_fangs ^ ^ ^2 {Tags:["spell_summoned"]}

execute as @s[tag=rth.has.spell] at @s rotated ~-60 0 run summon minecraft:evoker_fangs ^ ^ ^1 {Tags:["spell_summoned"]}
execute as @s[tag=rth.has.spell] at @s rotated ~-60 0 run summon minecraft:evoker_fangs ^ ^ ^2 {Tags:["spell_summoned"]}

execute as @s[tag=rth.has.spell] at @s rotated ~ 0 run summon minecraft:evoker_fangs ^ ^ ^1 {Tags:["spell_summoned"]}
execute as @s[tag=rth.has.spell] at @s rotated ~ 0 run summon minecraft:evoker_fangs ^ ^ ^2 {Tags:["spell_summoned"]}

execute as @s[tag=rth.has.spell] at @s rotated ~60 0 run summon minecraft:evoker_fangs ^ ^ ^1 {Tags:["spell_summoned"]}
execute as @s[tag=rth.has.spell] at @s rotated ~60 0 run summon minecraft:evoker_fangs ^ ^ ^2 {Tags:["spell_summoned"]}

execute as @s[tag=rth.has.spell] at @s rotated ~120 0 run summon minecraft:evoker_fangs ^ ^ ^1 {Tags:["spell_summoned"]}
execute as @s[tag=rth.has.spell] at @s rotated ~120 0 run summon minecraft:evoker_fangs ^ ^ ^2 {Tags:["spell_summoned"]}

tag @s[tag=rth.has.spell] add rth.spl.evfc
execute as @s[tag=rth.has.spell] at @s run execute as @e[type=minecraft:evoker_fangs,distance=..2.5,tag=spell_summoned,sort=nearest] at @s facing entity @a[limit=1,sort=nearest,tag=rth.has.spell,tag=rth.spl.evfc] feet rotated ~90 0 run tp @s ~ ~ ~ ~ ~ 

execute as @s[tag=rth.has.spell] run scoreboard players remove @s[scores={rth.mana=65..}] rth.mana 65
tag @s[tag=rth.has.spell] remove rth.has.spell
tag @s[tag=rth.spl.evfc] remove rth.spl.evfc