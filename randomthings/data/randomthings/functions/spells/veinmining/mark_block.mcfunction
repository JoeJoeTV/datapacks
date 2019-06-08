execute if entity @e[type=minecraft:armor_stand,tag=rth.spl.veinmine.main_block,sort=nearest,distance=..7,limit=1] unless entity @e[type=#randomthings:spells/veinmining/marker_entities,tag=rth.spl.veinmine.block,tag=rth.spl.veinmine.done,sort=nearest,distance=..0.4,limit=1] run tag @s add rth.veinmine.in_radius

kill @s[tag=!rth.veinmine.in_radius]

execute as @s[tag=rth.veinmine.in_radius] at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1 ~ ~ if blocks ~ ~ ~ ~ ~ ~ ~-1 ~ ~ all if entity @e[type=minecraft:armor_stand,tag=rth.spl.veinmine.main_block,sort=nearest,distance=..7,limit=1] unless entity @e[type=#randomthings:spells/veinmining/marker_entities,tag=rth.spl.veinmine.block,sort=nearest,distance=..0.4,limit=1] run tag @s add rth.spl.veinmine.foundx+1
execute as @s[tag=rth.veinmine.in_radius,tag=rth.spl.veinmine.foundx+1] align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1 ~ ~ run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,CustomNameVisible:0b,Particle:"block air",ReapplicationDelay:-1,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:3,DurationOnUse:0f,Age:0,WaitTime:4,Tags:["rth.spl.veinmine.block","nokill"]}
execute as @s[tag=rth.veinmine.in_radius,tag=rth.spl.veinmine.foundx+1] align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1 ~ ~ as @e[type=#randomthings:spells/veinmining/marker_entities,tag=rth.spl.veinmine.block,sort=nearest,distance=..0.3,limit=1] at @s run function randomthings:spells/veinmining/mark_block

execute as @s[tag=rth.veinmine.in_radius] at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1 ~ ~ if blocks ~ ~ ~ ~ ~ ~ ~1 ~ ~ all if entity @e[type=minecraft:armor_stand,tag=rth.spl.veinmine.main_block,sort=nearest,distance=..7,limit=1] unless entity @e[type=#randomthings:spells/veinmining/marker_entities,tag=rth.spl.veinmine.block,sort=nearest,distance=..0.4,limit=1] run tag @s add rth.spl.veinmine.foundx-1
execute as @s[tag=rth.veinmine.in_radius,tag=rth.spl.veinmine.foundx-1] align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1 ~ ~ run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,CustomNameVisible:0b,Particle:"block air",ReapplicationDelay:-1,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:3,DurationOnUse:0f,Age:0,WaitTime:4,Tags:["rth.spl.veinmine.block","nokill"]}
execute as @s[tag=rth.veinmine.in_radius,tag=rth.spl.veinmine.foundx-1] align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1 ~ ~ as @e[type=#randomthings:spells/veinmining/marker_entities,tag=rth.spl.veinmine.block,sort=nearest,distance=..0.3,limit=1] at @s run function randomthings:spells/veinmining/mark_block

execute as @s[tag=rth.veinmine.in_radius] at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~1 ~ if blocks ~ ~ ~ ~ ~ ~ ~ ~-1 ~ all if entity @e[type=minecraft:armor_stand,tag=rth.spl.veinmine.main_block,sort=nearest,distance=..7,limit=1] unless entity @e[type=#randomthings:spells/veinmining/marker_entities,tag=rth.spl.veinmine.block,sort=nearest,distance=..0.4,limit=1] run tag @s add rth.spl.veinmine.foundy+1
execute as @s[tag=rth.veinmine.in_radius,tag=rth.spl.veinmine.foundy+1] align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~1 ~ run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,CustomNameVisible:0b,Particle:"block air",ReapplicationDelay:-1,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:3,DurationOnUse:0f,Age:0,WaitTime:4,Tags:["rth.spl.veinmine.block","nokill"]}
execute as @s[tag=rth.veinmine.in_radius,tag=rth.spl.veinmine.foundy+1] align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~1 ~ as @e[type=#randomthings:spells/veinmining/marker_entities,tag=rth.spl.veinmine.block,sort=nearest,distance=..0.3,limit=1] at @s run function randomthings:spells/veinmining/mark_block

execute as @s[tag=rth.veinmine.in_radius] at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~-1 ~ if blocks ~ ~ ~ ~ ~ ~ ~ ~1 ~ all if entity @e[type=minecraft:armor_stand,tag=rth.spl.veinmine.main_block,sort=nearest,distance=..7,limit=1] unless entity @e[type=#randomthings:spells/veinmining/marker_entities,tag=rth.spl.veinmine.block,sort=nearest,distance=..0.4,limit=1] run tag @s add rth.spl.veinmine.foundy-1
execute as @s[tag=rth.veinmine.in_radius,tag=rth.spl.veinmine.foundy-1] align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~-1 ~ run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,CustomNameVisible:0b,Particle:"block air",ReapplicationDelay:-1,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:3,DurationOnUse:0f,Age:0,WaitTime:4,Tags:["rth.spl.veinmine.block","nokill"]}
execute as @s[tag=rth.veinmine.in_radius,tag=rth.spl.veinmine.foundy-1] align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~-1 ~ as @e[type=#randomthings:spells/veinmining/marker_entities,tag=rth.spl.veinmine.block,sort=nearest,distance=..0.3,limit=1] at @s run function randomthings:spells/veinmining/mark_block

execute as @s[tag=rth.veinmine.in_radius] at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~ ~1 if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~-1 all if entity @e[type=minecraft:armor_stand,tag=rth.spl.veinmine.main_block,sort=nearest,distance=..7,limit=1] unless entity @e[type=#randomthings:spells/veinmining/marker_entities,tag=rth.spl.veinmine.block,sort=nearest,distance=..0.4,limit=1] run tag @s add rth.spl.veinmine.foundz+1
execute as @s[tag=rth.veinmine.in_radius,tag=rth.spl.veinmine.foundz+1] align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~ ~1 run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,CustomNameVisible:0b,Particle:"block air",ReapplicationDelay:-1,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:3,DurationOnUse:0f,Age:0,WaitTime:4,Tags:["rth.spl.veinmine.block","nokill"]}
execute as @s[tag=rth.veinmine.in_radius,tag=rth.spl.veinmine.foundz+1] align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~ ~1 as @e[type=#randomthings:spells/veinmining/marker_entities,tag=rth.spl.veinmine.block,sort=nearest,distance=..0.3,limit=1] at @s run function randomthings:spells/veinmining/mark_block

execute as @s[tag=rth.veinmine.in_radius] at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~ ~-1 if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~1 all if entity @e[type=minecraft:armor_stand,tag=rth.spl.veinmine.main_block,sort=nearest,distance=..7,limit=1] unless entity @e[type=#randomthings:spells/veinmining/marker_entities,tag=rth.spl.veinmine.block,sort=nearest,distance=..0.4,limit=1] run tag @s add rth.spl.veinmine.foundz-1
execute as @s[tag=rth.veinmine.in_radius,tag=rth.spl.veinmine.foundz-1] align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~ ~-1 run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,CustomNameVisible:0b,Particle:"block air",ReapplicationDelay:-1,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:3,DurationOnUse:0f,Age:0,WaitTime:4,Tags:["rth.spl.veinmine.block","nokill"]}
execute as @s[tag=rth.veinmine.in_radius,tag=rth.spl.veinmine.foundz-1] align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~ ~-1 as @e[type=#randomthings:spells/veinmining/marker_entities,tag=rth.spl.veinmine.block,sort=nearest,distance=..0.3,limit=1] at @s run function randomthings:spells/veinmining/mark_block

tag @s[tag=rth.veinmine.in_radius] add rth.spl.veinmine.done

tag @s[tag=rth.spl.veinmine.foundx+1] remove rth.spl.veinmine.foundx+1
tag @s[tag=rth.spl.veinmine.foundx-1] remove rth.spl.veinmine.foundx-1
tag @s[tag=rth.spl.veinmine.foundy+1] remove rth.spl.veinmine.foundy+1
tag @s[tag=rth.spl.veinmine.foundy-1] remove rth.spl.veinmine.foundy-1
tag @s[tag=rth.spl.veinmine.foundz+1] remove rth.spl.veinmine.foundz+1
tag @s[tag=rth.spl.veinmine.foundz-1] remove rth.spl.veinmine.foundz-1

execute as @s[tag=rth.veinmine.in_radius] at @s run scoreboard players add @e[type=minecraft:armor_stand,tag=rth.spl.veinmine.main_block,sort=nearest,distance=..7,limit=1] plib.tmp2 1

#TODO:
# -Maybe add diagonals