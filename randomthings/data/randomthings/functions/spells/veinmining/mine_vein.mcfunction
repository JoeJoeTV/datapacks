data remove entity @s HandItems[0].tag.StoredSpell 

scoreboard players reset @s plib.tmp2

#Mark blocks from vein
execute as @s at @s run function randomthings:spells/veinmining/mark_block

#Break Blocks
execute as @e[type=#randomthings:spells/veinmining/marker_entities,tag=rth.spl.veinmine.block,tag=rth.spl.veinmine.done,sort=nearest,distance=..7] at @s as @e[type=minecraft:armor_stand,tag=rth.spl.veinmine.main_block,sort=nearest,distance=..7,limit=1] run function randomthings:spells/veinmining/break_block

execute as @s at @s if entity @e[type=#randomthings:spells/veinmining/marker_entities,tag=rth.spl.veinmine.block,tag=rth.spl.veinmine.done,sort=nearest,distance=..7] run kill @e[type=#randomthings:spells/veinmining/marker_entities,tag=rth.spl.veinmine.block,tag=rth.spl.veinmine.done,sort=nearest,distance=..7]

#problematische blöcke entfernen
#tag von player entfernen

#use function break_block
#break blocks
#use sound effect and particle
#use block loot table with mainhand item of armor stand


#kill @s