execute as @s at @s unless data block ~ ~ ~ Items[{Slot:3b}].tag.Damage run tag @s add rth.hammer.craft.success1
execute as @s at @s if data block ~ ~ ~ Items[{Slot:3b}].tag.Damage if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:3b,tag:{Damage:0}}]} run tag @s add rth.hammer.craft.success1

execute as @s at @s unless data block ~ ~ ~ Items[{Slot:4b}].tag.Damage run tag @s add rth.hammer.craft.success2
execute as @s at @s if data block ~ ~ ~ Items[{Slot:4b}].tag.Damage if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:4b,tag:{Damage:0}}]} run tag @s add rth.hammer.craft.success2

execute as @s at @s unless data block ~ ~ ~ Items[{Slot:5b}].tag.Damage run tag @s add rth.hammer.craft.success3
execute as @s at @s if data block ~ ~ ~ Items[{Slot:5b}].tag.Damage if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:5b,tag:{Damage:0}}]} run tag @s add rth.hammer.craft.success3

execute if entity @s[tag=rth.hammer.craft.success1,tag=rth.hammer.craft.success2,tag=rth.hammer.craft.success3] if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:0b,id:"minecraft:gold_ingot",Count:1b},{Slot:1b,id:"minecraft:gold_ingot",Count:1b},{Slot:2b,id:"minecraft:gold_ingot",Count:1b},{Slot:3b,id:"minecraft:golden_pickaxe",Count:1b},{Slot:4b,id:"minecraft:golden_pickaxe",Count:1b},{Slot:5b,id:"minecraft:golden_pickaxe",Count:1b},{Slot:7b,id:"minecraft:stick",Count:1b}]} unless block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:8b}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:golden_pickaxe",tag:{CustomModelData:420001,CustomItemID:"randomthings:hammer",display:{Name:"{\"text\":\"Goldhammer\",\"italic\":false}"}},Count:1b}]}

tag @s[tag=rth.hammer.craft.success1] remove rth.hammer.craft.success1
tag @s[tag=rth.hammer.craft.success2] remove rth.hammer.craft.success2
tag @s[tag=rth.hammer.craft.success3] remove rth.hammer.craft.success3