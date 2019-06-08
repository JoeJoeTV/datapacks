data remove block ~ ~ ~ Items[{Slot:4b}].tag.StoredSpell
data remove block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore[0]
scoreboard players remove @s pcp.amt.cnt.uitm 1
execute store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get @s pcp.amt.cnt.uitm
playsound minecraft:entity.item.pickup block @a[distance=..6,scores={plib.vr.talk=1..}] ~ ~ ~ 5 0