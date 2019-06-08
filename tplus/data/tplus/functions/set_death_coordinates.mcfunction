execute as @s store result score @s ptpp.back.x run data get entity @s Pos[0]
execute as @s store result score @s ptpp.back.y run data get entity @s Pos[1]
execute as @s store result score @s ptpp.back.z run data get entity @s Pos[2]
tag @s[tag=!ptpp.hasback] add ptpp.hasback

#Nether
execute as @s at @s if entity @s[nbt={Dimension:-1}] run tellraw @s [{"text":"Du bist bei "},{"score":{"name":"@s","objective":"ptpp.back.x"},"color":"red","hoverEvent":{"action":"show_text","value":{"text":"X"}}},{"text":" "},{"score":{"name":"@s","objective":"ptpp.back.y"},"color":"green","hoverEvent":{"action":"show_text","value":{"text":"Y"}}},{"text":" "},{"score":{"name":"@s","objective":"ptpp.back.z"},"color":"blue","hoverEvent":{"action":"show_text","value":{"text":"Z"}}},{"text":" im Nether gestorben."}]

#Overworld
execute as @s at @s if entity @s[nbt={Dimension:0}] run tellraw @s [{"text":"Du bist bei "},{"score":{"name":"@s","objective":"ptpp.back.x"},"color":"red","hoverEvent":{"action":"show_text","value":{"text":"X"}}},{"text":" "},{"score":{"name":"@s","objective":"ptpp.back.y"},"color":"green","hoverEvent":{"action":"show_text","value":{"text":"Y"}}},{"text":" "},{"score":{"name":"@s","objective":"ptpp.back.z"},"color":"blue","hoverEvent":{"action":"show_text","value":{"text":"Z"}}},{"text":" in der Oberwelt gestorben."}]

#End
execute as @s at @s if entity @s[nbt={Dimension:1}] run tellraw @s [{"text":"Du bist bei "},{"score":{"name":"@s","objective":"ptpp.back.x"},"color":"red","hoverEvent":{"action":"show_text","value":{"text":"X"}}},{"text":" "},{"score":{"name":"@s","objective":"ptpp.back.y"},"color":"green","hoverEvent":{"action":"show_text","value":{"text":"Y"}}},{"text":" "},{"score":{"name":"@s","objective":"ptpp.back.z"},"color":"blue","hoverEvent":{"action":"show_text","value":{"text":"Z"}}},{"text":" im Ende gestorben."}]

#tellraw @s [{"text":"You died at "},{"score":{"name":"@s","objective":"ptpp.back.x"},"color":"red","hoverEvent":{"action":"show_text","value":{"text":"X"}}},{"text":" "},{"score":{"name":"@s","objective":"ptpp.back.y"},"color":"green","hoverEvent":{"action":"show_text","value":{"text":"Y"}}},{"text":" "},{"score":{"name":"@s","objective":"ptpp.back.z"},"color":"blue","hoverEvent":{"action":"show_text","value":{"text":"Z"}}},{"text":" in the Overworld"}]
