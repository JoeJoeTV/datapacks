execute as @s store result score spawn ptpp.spawn.x run data get entity @s Pos[0]
execute as @s store result score spawn ptpp.spawn.y run data get entity @s Pos[1]
execute as @s store result score spawn ptpp.spawn.z run data get entity @s Pos[2]
execute as @s run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"] ","color":"white"},{"text":"Der Einstiegspunkt","color":"gold"},{"text":" wurde festgelegt zu: ","color":"white"},{"text":"X: ","color":"dark_red"},{"score":{"name":"spawn","objective":"ptpp.spawn.x"},"color":"dark_red"},{"text":" ","color":"white"},{"text":"Y: ","color":"dark_green"},{"score":{"name":"spawn","objective":"ptpp.spawn.y"},"color":"dark_green"},{"text":" ","color":"white"},{"text":"Z: ","color":"dark_blue"},{"score":{"name":"spawn","objective":"ptpp.spawn.z"},"color":"dark_blue"}]

scoreboard players set @s setspawn 0