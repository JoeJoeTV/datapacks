execute if score @s pcp.amt.cnt.uitm matches 10.. if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:4b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomItemID:"randomthings:magic_wand"}}]} if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:0b,id:"minecraft:ender_eye",Count:1b},{Slot:2b,id:"minecraft:ender_eye",Count:1b},{Slot:3b,id:"minecraft:ender_pearl",Count:1b},{Slot:5b,id:"minecraft:ender_pearl",Count:1b},{Slot:6b,id:"minecraft:gold_nugget",Count:1b},{Slot:7b,id:"minecraft:ender_pearl",Count:1b},{Slot:8b,id:"minecraft:gold_nugget",Count:1b}]} run tag @s add pcp.tmp.success
execute as @s[tag=pcp.tmp.success] at @s run data modify block ~ ~ ~ Items[{Slot:4b}].tag.StoredSpell set value {id:"randomthings:teleport"}
execute as @s[tag=pcp.tmp.success] at @s run data modify block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore prepend value "{\"text\":\"Die Sicht des Endermans\",\"color\":\"green\",\"italic\":false}"
execute as @s[tag=pcp.tmp.success] at @s run scoreboard players remove @s pcp.amt.cnt.uitm 10
tag @s[tag=pcp.tmp.success] add pcp.amt.check.success
tag @s[tag=pcp.tmp.success] remove pcp.tmp.success
