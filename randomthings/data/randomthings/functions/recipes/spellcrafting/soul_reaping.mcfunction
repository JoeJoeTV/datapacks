execute if score @s pcp.amt.cnt.uitm matches 20.. if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:4b,id:"minecraft:golden_hoe",Count:1b}]} if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:0b,id:"minecraft:prismarine_crystals",Count:1b},{Slot:2b,id:"minecraft:prismarine_shard",Count:1b},{Slot:3b,id:"minecraft:wither_skeleton_skull",Count:1b},{Slot:5b,id:"minecraft:wither_skeleton_skull",Count:1b},{Slot:6b,id:"minecraft:ender_eye",Count:1b},{Slot:7b,id:"minecraft:nether_star",Count:1b},{Slot:8b,id:"minecraft:ender_eye",Count:1b}]} run tag @s add pcp.tmp.success
execute as @s[tag=pcp.tmp.success] at @s run data modify block ~ ~ ~ Items[{Slot:4b}].tag.StoredSpell set value {id:"randomthings:soul_reaping"}
execute as @s[tag=pcp.tmp.success] at @s run data modify block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore prepend value "{\"text\":\"Seelenraub\",\"color\":\"green\",\"italic\":false}"
execute as @s[tag=pcp.tmp.success] at @s run scoreboard players remove @s pcp.amt.cnt.uitm 20
tag @s[tag=pcp.tmp.success] add pcp.amt.check.success
tag @s[tag=pcp.tmp.success] remove pcp.tmp.success
