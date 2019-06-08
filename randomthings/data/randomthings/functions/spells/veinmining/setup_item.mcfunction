data remove entity @s Item.tag.MinedwithVeinMining

execute store result score @s plib.tmp run data get entity @s Item.tag
execute unless score @s plib.tmp matches 1.. run data remove entity @s Item.tag

scoreboard players reset @s plib.tmp

function randomthings:spells/veinmining/setup_vein