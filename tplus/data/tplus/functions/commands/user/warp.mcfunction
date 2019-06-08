execute as @s[scores={warp=1}] store result score @s plib.stp.x run scoreboard players get 1 ptpp.warps.x
execute as @s[scores={warp=1}] store result score @s plib.stp.y run scoreboard players get 1 ptpp.warps.y
execute as @s[scores={warp=1}] store result score @s plib.stp.z run scoreboard players get 1 ptpp.warps.z
execute as @s[scores={warp=1}] run function pistonlib:score_tp/tp_to_score

execute as @s[scores={warp=2}] store result score @s plib.stp.x run scoreboard players get 2 ptpp.warps.x
execute as @s[scores={warp=2}] store result score @s plib.stp.y run scoreboard players get 2 ptpp.warps.y
execute as @s[scores={warp=2}] store result score @s plib.stp.z run scoreboard players get 2 ptpp.warps.z
execute as @s[scores={warp=2}] run function pistonlib:score_tp/tp_to_score

execute as @s[scores={warp=3}] store result score @s plib.stp.x run scoreboard players get 3 ptpp.warps.x
execute as @s[scores={warp=3}] store result score @s plib.stp.y run scoreboard players get 3 ptpp.warps.y
execute as @s[scores={warp=3}] store result score @s plib.stp.z run scoreboard players get 3 ptpp.warps.z
execute as @s[scores={warp=3}] run function pistonlib:score_tp/tp_to_score

execute as @s[scores={warp=4}] store result score @s plib.stp.x run scoreboard players get 4 ptpp.warps.x
execute as @s[scores={warp=4}] store result score @s plib.stp.y run scoreboard players get 4 ptpp.warps.y
execute as @s[scores={warp=4}] store result score @s plib.stp.z run scoreboard players get 4 ptpp.warps.z
execute as @s[scores={warp=4}] run function pistonlib:score_tp/tp_to_score

execute as @s[scores={warp=5}] store result score @s plib.stp.x run scoreboard players get 5 ptpp.warps.x
execute as @s[scores={warp=5}] store result score @s plib.stp.y run scoreboard players get 5 ptpp.warps.y
execute as @s[scores={warp=5}] store result score @s plib.stp.z run scoreboard players get 5 ptpp.warps.z
execute as @s[scores={warp=5}] run function pistonlib:score_tp/tp_to_score

execute as @s[scores={warp=6}] store result score @s plib.stp.x run scoreboard players get 6 ptpp.warps.x
execute as @s[scores={warp=6}] store result score @s plib.stp.y run scoreboard players get 6 ptpp.warps.y
execute as @s[scores={warp=6}] store result score @s plib.stp.z run scoreboard players get 6 ptpp.warps.z
execute as @s[scores={warp=6}] run function pistonlib:score_tp/tp_to_score

execute as @s[scores={warp=7}] store result score @s plib.stp.x run scoreboard players get 7 ptpp.warps.x
execute as @s[scores={warp=7}] store result score @s plib.stp.y run scoreboard players get 7 ptpp.warps.y
execute as @s[scores={warp=7}] store result score @s plib.stp.z run scoreboard players get 7 ptpp.warps.z
execute as @s[scores={warp=7}] run function pistonlib:score_tp/tp_to_score

execute as @s[scores={warp=1..7}] run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"] ","color":"white"},{"text":"Du wrudest zu ","color":"white"},{"text":"Warppunkt ","color":"gold"},{"score":{"name":"@s","objective":"warp"},"color":"gold"},{"text":" teleportiert!","color":"white"}]
execute as @s[scores={warp=8..}] run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"] ","color":"white"},{"text":"Der angegebene Warppunkt existiert nicht!","color":"red"}]

scoreboard players set @s[scores={warp=1..}] warp 0