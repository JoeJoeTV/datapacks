data modify entity @s NoGravity set value 1b

#Re-Set block, so it can be used for loot command and comparing blocks
execute as @s at @s run function #randomthings:spells/veinmining/blocks
execute as @s at @s if block ~ ~ ~ minecraft:air run tag @s add rth.veinmining.no_block
#Search Player
execute as @s[tag=!rth.veinmining.no_block] at @s run tag @a[nbt={SelectedItem:{tag:{StoredSpell:{id:"randomthings:veinmining"}}}},sort=nearest,distance=..7,limit=1] add rth.veinmining.has.tool

execute as @s[tag=!rth.veinmining.no_block] at @s run tag @a[scores={plib.stone_shovl=1..},tag=rth.veinmining.has.tool,sort=nearest,distance=..7,limit=1] add rth.veinmining.breaker
execute as @s[tag=!rth.veinmining.no_block] at @s run tag @a[scores={plib.stone_pick=1..},tag=rth.veinmining.has.tool,sort=nearest,distance=..7,limit=1] add rth.veinmining.breaker
execute as @s[tag=!rth.veinmining.no_block] at @s run tag @a[scores={plib.stone_axe=1..},tag=rth.veinmining.has.tool,sort=nearest,distance=..7,limit=1] add rth.veinmining.breaker

execute as @s[tag=!rth.veinmining.no_block] at @s run tag @a[scores={plib.iron_shovl=1..},tag=rth.veinmining.has.tool,sort=nearest,distance=..7,limit=1] add rth.veinmining.breaker
execute as @s[tag=!rth.veinmining.no_block] at @s run tag @a[scores={plib.iron_pick=1..},tag=rth.veinmining.has.tool,sort=nearest,distance=..7,limit=1] add rth.veinmining.breaker
execute as @s[tag=!rth.veinmining.no_block] at @s run tag @a[scores={plib.iron_axe=1..},tag=rth.veinmining.has.tool,sort=nearest,distance=..7,limit=1] add rth.veinmining.breaker

execute as @s[tag=!rth.veinmining.no_block] at @s run tag @a[scores={plib.gold_shovl=1..},tag=rth.veinmining.has.tool,sort=nearest,distance=..7,limit=1] add rth.veinmining.breaker
execute as @s[tag=!rth.veinmining.no_block] at @s run tag @a[scores={plib.gold_pick=1..},tag=rth.veinmining.has.tool,sort=nearest,distance=..7,limit=1] add rth.veinmining.breaker
execute as @s[tag=!rth.veinmining.no_block] at @s run tag @a[scores={plib.gold_axe=1..},tag=rth.veinmining.has.tool,sort=nearest,distance=..7,limit=1] add rth.veinmining.breaker

execute as @s[tag=!rth.veinmining.no_block] at @s run tag @a[scores={plib.dia_shovl=1..},tag=rth.veinmining.has.tool,sort=nearest,distance=..7,limit=1] add rth.veinmining.breaker
execute as @s[tag=!rth.veinmining.no_block] at @s run tag @a[scores={plib.dia_pick=1..},tag=rth.veinmining.has.tool,sort=nearest,distance=..7,limit=1] add rth.veinmining.breaker
execute as @s[tag=!rth.veinmining.no_block] at @s run tag @a[scores={plib.dia_axe=1..},tag=rth.veinmining.has.tool,sort=nearest,distance=..7,limit=1] add rth.veinmining.breaker

execute as @s[tag=!rth.veinmining.no_block] at @s run tag @a[tag=rth.veinmining.breaker,sort=nearest,distance=..7,limit=1] remove rth.veinmining.has.tool

execute as @s[tag=!rth.veinmining.no_block] at @s align xyz positioned ~0.5 ~0.5 ~0.5 if entity @a[tag=rth.veinmining.breaker,sort=nearest,distance=..7,limit=1] run summon armor_stand ~ ~ ~ {Small:1b,Pose:{RightArm:[30f,0f,0f]},CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Glowing:0b,Marker:1b,Invisible:1b,Tags:["rth.spl.veinmine.main_block","rth.spl.veinmine.block","nokill",""],DisabledSlots:4144959}

execute as @s[tag=!rth.veinmining.no_block] at @s align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=minecraft:armor_stand,tag=rth.spl.veinmine.main_block,sort=nearest,distance=..0.4,limit=1] at @s run data modify entity @s HandItems[0] set from entity @a[tag=rth.veinmining.breaker,sort=nearest,distance=..6.4,limit=1] SelectedItem

execute as @s[tag=!rth.veinmining.no_block] at @s align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=minecraft:armor_stand,tag=rth.spl.veinmine.main_block,sort=nearest,distance=..0.4,limit=1] at @s if entity @a[tag=rth.veinmining.breaker,sort=nearest,distance=..7,limit=1] run function randomthings:spells/veinmining/mine_vein

tag @a[tag=rth.veinmining.breaker,sort=nearest,distance=..7,limit=1] remove rth.veinmining.breaker

kill @s