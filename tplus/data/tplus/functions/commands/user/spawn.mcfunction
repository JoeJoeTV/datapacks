execute as @s store result score @s plib.stp.x run scoreboard players get spawn ptpp.spawn.x
execute as @s store result score @s plib.stp.y run scoreboard players get spawn ptpp.spawn.y
execute as @s store result score @s plib.stp.z run scoreboard players get spawn ptpp.spawn.z
execute as @s run function pistonlib:score_tp/tp_to_score

execute as @s run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"] ","color":"white"},{"text":"Du wurdest zum ","color":"white"},{"text":"Einstiegspunkt","color":"gold"},{"text":" teleportiert.","color":"white"}]

scoreboard players set @s spawn 0