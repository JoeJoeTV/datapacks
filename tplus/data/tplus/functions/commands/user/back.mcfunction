execute as @s[tag=ptpp.hasback] store result score @s plib.stp.x run scoreboard players get @s ptpp.back.x
execute as @s[tag=ptpp.hasback] store result score @s plib.stp.y run scoreboard players get @s ptpp.back.y
execute as @s[tag=ptpp.hasback] store result score @s plib.stp.z run scoreboard players get @s ptpp.back.z
execute as @s[tag=ptpp.hasback] run function pistonlib:score_tp/tp_to_score

execute as @s[tag=ptpp.hasback] run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"] ","color":"white"},{"text":"Du hast dich zu deinem Todespunkt teleportiert!","color":"white"}]
execute as @s[tag=!ptpp.hasback] run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"] ","color":"white"},{"text":"Es gibt keinen Todespunkt, zu dem du dich teleportieren kannst!","color":"red"}]

scoreboard players set @s[scores={back=1..}] back 0