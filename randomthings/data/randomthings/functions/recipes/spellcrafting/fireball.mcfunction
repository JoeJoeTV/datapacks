execute if score @s pcp.amt.cnt.uitm matches 6.. if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:4b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomItemID:"randomthings:magic_wand"}}]} if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:0b,id:"minecraft:diamond",Count:1b},{Slot:2b,id:"minecraft:diamond",Count:1b},{Slot:3b,id:"minecraft:fire_charge",Count:1b},{Slot:5b,id:"minecraft:fire_charge",Count:1b},{Slot:6b,id:"minecraft:blaze_powder",Count:1b},{Slot:7b,id:"minecraft:fire_charge",Count:1b},{Slot:8b,id:"minecraft:blaze_powder",Count:1b}]} run tag @s add pcp.tmp.success
execute as @s[tag=pcp.tmp.success] at @s run data modify block ~ ~ ~ Items[{Slot:4b}].tag.StoredSpell set value {id:"randomthings:fireball"}
execute as @s[tag=pcp.tmp.success] at @s run data modify block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore prepend value "{\"text\":\"Kleiner Meteorit\",\"color\":\"green\",\"italic\":false}"
execute as @s[tag=pcp.tmp.success] at @s run scoreboard players remove @s pcp.amt.cnt.uitm 6
tag @s[tag=pcp.tmp.success] add pcp.amt.check.success
tag @s[tag=pcp.tmp.success] remove pcp.tmp.success
