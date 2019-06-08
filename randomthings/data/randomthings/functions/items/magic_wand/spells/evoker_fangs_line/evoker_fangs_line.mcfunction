tag @s[type=minecraft:player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{StoredSpell:{id:"randomthings:evoker_fangs_line"}}}},scores={rth.mana=65..}] add rth.has.spell
tag @s[type=minecraft:player,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{StoredSpell:{id:"randomthings:evoker_fangs_line"}}}]},scores={rth.mana=65..}] add rth.has.spell

#START RAYTRACE

execute as @s[tag=rth.has.spell] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:1b,CustomNameVisible:0b,Particle:"block air",ReapplicationDelay:-1,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:3,DurationOnUse:0f,Age:0,WaitTime:3,Tags:["rth.spl.efl.stand","rth.spl.efl.moving","nokill"]} 

execute as @s[tag=rth.has.spell] at @s run execute as @s at @s anchored feet rotated ~ 0 positioned ^ ^ ^ run tp @e[type=minecraft:area_effect_cloud,tag=rth.spl.efl.stand,tag=rth.spl.efl.moving,limit=1,sort=nearest] ~ ~ ~ ~ ~

#Use plib.rc.max as temporary value
execute as @s[tag=rth.has.spell] at @s run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=rth.spl.efl.stand,tag=rth.spl.efl.moving,limit=1,sort=nearest] plib.rc.max 6

#Use rth.mw.dummy as delay counter
execute as @s[tag=rth.has.spell] at @s run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=rth.spl.efl.stand,tag=rth.spl.efl.moving,limit=1,sort=nearest] rth.mw.dummy 1

execute as @s[tag=rth.has.spell] at @s run execute as @e[type=minecraft:area_effect_cloud,tag=rth.spl.efl.stand,tag=rth.spl.efl.moving,limit=1,sort=nearest] at @s run function randomthings:items/magic_wand/spells/evoker_fangs_line/summon_evoker_fang

execute as @s[tag=rth.has.spell] at @s run kill @e[type=minecraft:area_effect_cloud,tag=rth.spl.efl.stand,tag=rth.spl.efl.moving,limit=1,sort=nearest]

#END SPELL

execute as @s[tag=rth.has.spell] run scoreboard players remove @s[scores={rth.mana=65..}] rth.mana 65
tag @s[tag=rth.has.spell] remove rth.has.spell