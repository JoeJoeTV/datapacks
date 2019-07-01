data remove entity @s Item.tag.MinedwithAutoSmelt

execute store result score @s plib.tmp run data get entity @s Item.tag
execute unless score @s plib.tmp matches 1.. run data remove entity @s Item.tag

execute align xyz positioned ~0.5 ~0.5 ~0.5 run playsound minecraft:block.lava.extinguish master @a[distance=..15] ~ ~ ~ 0.5 2
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:large_smoke ~ ~ ~ 0.1 0.1 0.1 0.01 10 normal

scoreboard players reset @s plib.tmp