execute as @s[scores={home=1..8}] at @s if score @s perm.cmd.home matches 1..8 store result score @s plib.tmp run data get entity @s Dimension

execute as @s[scores={home=1}] at @s if score @s perm.cmd.home matches 1.. if score @s plib.tmp = @s ptpp.home.1.d store result score @s plib.stp.x run scoreboard players get @s ptpp.home.1.x
execute as @s[scores={home=1}] at @s if score @s perm.cmd.home matches 1.. if score @s plib.tmp = @s ptpp.home.1.d store result score @s plib.stp.y run scoreboard players get @s ptpp.home.1.y
execute as @s[scores={home=1}] at @s if score @s perm.cmd.home matches 1.. if score @s plib.tmp = @s ptpp.home.1.d store result score @s plib.stp.z run scoreboard players get @s ptpp.home.1.z
execute as @s[scores={home=1}] at @s if score @s perm.cmd.home matches 1.. if score @s plib.tmp = @s ptpp.home.1.d run function pistonlib:score_tp/tp_to_score
execute as @s[scores={home=1}] at @s if score @s perm.cmd.home matches 1.. if score @s plib.tmp = @s ptpp.home.1.d run tag @s add tplus.home.success
execute as @s[scores={home=1}] at @s if score @s perm.cmd.home matches 1.. unless score @s plib.tmp = @s ptpp.home.1.d run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du kannst dich nur zu Homepunkten in der gleichen Dimension teleportieren!","color":"red"}]
execute as @s[scores={home=1}] at @s unless score @s perm.cmd.home matches 1.. run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du kannst keine Homepunkte haben!","color":"red"}]

execute as @s[scores={home=2}] at @s if score @s perm.cmd.home matches 2.. if score @s plib.tmp = @s ptpp.home.2.d store result score @s plib.stp.x run scoreboard players get @s ptpp.home.2.x
execute as @s[scores={home=2}] at @s if score @s perm.cmd.home matches 2.. if score @s plib.tmp = @s ptpp.home.2.d store result score @s plib.stp.y run scoreboard players get @s ptpp.home.2.y
execute as @s[scores={home=2}] at @s if score @s perm.cmd.home matches 2.. if score @s plib.tmp = @s ptpp.home.2.d store result score @s plib.stp.z run scoreboard players get @s ptpp.home.2.z
execute as @s[scores={home=2}] at @s if score @s perm.cmd.home matches 2.. if score @s plib.tmp = @s ptpp.home.2.d run function pistonlib:score_tp/tp_to_score
execute as @s[scores={home=2}] at @s if score @s perm.cmd.home matches 2.. if score @s plib.tmp = @s ptpp.home.2.d run tag @s add tplus.home.success
execute as @s[scores={home=2}] at @s if score @s perm.cmd.home matches 2.. unless score @s plib.tmp = @s ptpp.home.2.d run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du kannst dich nur zu Homepunkten in der gleichen Dimension teleportieren!","color":"red"}]
execute as @s[scores={home=2}] at @s unless score @s perm.cmd.home matches 2.. run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du kannst nur 1 Homepunkt haben!","color":"red"}]

execute as @s[scores={home=3}] at @s if score @s perm.cmd.home matches 3.. if score @s plib.tmp = @s ptpp.home.3.d store result score @s plib.stp.x run scoreboard players get @s ptpp.home.3.x
execute as @s[scores={home=3}] at @s if score @s perm.cmd.home matches 3.. if score @s plib.tmp = @s ptpp.home.3.d store result score @s plib.stp.y run scoreboard players get @s ptpp.home.3.y
execute as @s[scores={home=3}] at @s if score @s perm.cmd.home matches 3.. if score @s plib.tmp = @s ptpp.home.3.d store result score @s plib.stp.z run scoreboard players get @s ptpp.home.3.z
execute as @s[scores={home=3}] at @s if score @s perm.cmd.home matches 3.. if score @s plib.tmp = @s ptpp.home.3.d run function pistonlib:score_tp/tp_to_score
execute as @s[scores={home=3}] at @s if score @s perm.cmd.home matches 3.. if score @s plib.tmp = @s ptpp.home.3.d run tag @s add tplus.home.success
execute as @s[scores={home=3}] at @s if score @s perm.cmd.home matches 3.. unless score @s plib.tmp = @s ptpp.home.3.d run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du kannst dich nur zu Homepunkten in der gleichen Dimension teleportieren!","color":"red"}]
execute as @s[scores={home=3}] at @s unless score @s perm.cmd.home matches 3.. run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du kannst nur 2 Homepunkte haben!","color":"red"}]

execute as @s[scores={home=4}] at @s if score @s perm.cmd.home matches 4.. if score @s plib.tmp = @s ptpp.home.4.d store result score @s plib.stp.x run scoreboard players get @s ptpp.home.4.x
execute as @s[scores={home=4}] at @s if score @s perm.cmd.home matches 4.. if score @s plib.tmp = @s ptpp.home.4.d store result score @s plib.stp.y run scoreboard players get @s ptpp.home.4.y
execute as @s[scores={home=4}] at @s if score @s perm.cmd.home matches 4.. if score @s plib.tmp = @s ptpp.home.4.d store result score @s plib.stp.z run scoreboard players get @s ptpp.home.4.z
execute as @s[scores={home=4}] at @s if score @s perm.cmd.home matches 4.. if score @s plib.tmp = @s ptpp.home.4.d run function pistonlib:score_tp/tp_to_score
execute as @s[scores={home=4}] at @s if score @s perm.cmd.home matches 4.. if score @s plib.tmp = @s ptpp.home.4.d run tag @s add tplus.home.success
execute as @s[scores={home=4}] at @s if score @s perm.cmd.home matches 4.. unless score @s plib.tmp = @s ptpp.home.4.d run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du kannst dich nur zu Homepunkten in der gleichen Dimension teleportieren!","color":"red"}]
execute as @s[scores={home=4}] at @s unless score @s perm.cmd.home matches 4.. run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du kannst nur 3 Homepunkte setzen!","color":"red"}]

execute as @s[scores={home=5}] at @s if score @s perm.cmd.home matches 5.. if score @s plib.tmp = @s ptpp.home.5.d store result score @s plib.stp.x run scoreboard players get @s ptpp.home.5.x
execute as @s[scores={home=5}] at @s if score @s perm.cmd.home matches 5.. if score @s plib.tmp = @s ptpp.home.5.d store result score @s plib.stp.y run scoreboard players get @s ptpp.home.5.y
execute as @s[scores={home=5}] at @s if score @s perm.cmd.home matches 5.. if score @s plib.tmp = @s ptpp.home.5.d store result score @s plib.stp.z run scoreboard players get @s ptpp.home.5.z
execute as @s[scores={home=5}] at @s if score @s perm.cmd.home matches 5.. if score @s plib.tmp = @s ptpp.home.5.d run function pistonlib:score_tp/tp_to_score
execute as @s[scores={home=5}] at @s if score @s perm.cmd.home matches 5.. if score @s plib.tmp = @s ptpp.home.5.d run tag @s add tplus.home.success
execute as @s[scores={home=5}] at @s if score @s perm.cmd.home matches 5.. unless score @s plib.tmp = @s ptpp.home.5.d run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du kannst dich nur zu Homepunkten in der gleichen Dimension teleportieren!","color":"red"}]
execute as @s[scores={home=5}] at @s unless score @s perm.cmd.home matches 5.. run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du kannst nur 4 Homepunkte setzen!","color":"red"}]

execute as @s[scores={home=6}] at @s if score @s perm.cmd.home matches 6.. if score @s plib.tmp = @s ptpp.home.6.d store result score @s plib.stp.x run scoreboard players get @s ptpp.home.6.x
execute as @s[scores={home=6}] at @s if score @s perm.cmd.home matches 6.. if score @s plib.tmp = @s ptpp.home.6.d store result score @s plib.stp.y run scoreboard players get @s ptpp.home.6.y
execute as @s[scores={home=6}] at @s if score @s perm.cmd.home matches 6.. if score @s plib.tmp = @s ptpp.home.6.d store result score @s plib.stp.z run scoreboard players get @s ptpp.home.6.z
execute as @s[scores={home=6}] at @s if score @s perm.cmd.home matches 6.. if score @s plib.tmp = @s ptpp.home.6.d run function pistonlib:score_tp/tp_to_score
execute as @s[scores={home=6}] at @s if score @s perm.cmd.home matches 6.. if score @s plib.tmp = @s ptpp.home.6.d run tag @s add tplus.home.success
execute as @s[scores={home=6}] at @s if score @s perm.cmd.home matches 6.. unless score @s plib.tmp = @s ptpp.home.6.d run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du kannst dich nur zu Homepunkten in der gleichen Dimension teleportieren!","color":"red"}]
execute as @s[scores={home=6}] at @s unless score @s perm.cmd.home matches 6.. run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du kannst nur 5 Homepunkte setzen!","color":"red"}]

execute as @s[scores={home=7}] at @s if score @s perm.cmd.home matches 7.. if score @s plib.tmp = @s ptpp.home.7.d store result score @s plib.stp.x run scoreboard players get @s ptpp.home.7.x
execute as @s[scores={home=7}] at @s if score @s perm.cmd.home matches 7.. if score @s plib.tmp = @s ptpp.home.7.d store result score @s plib.stp.y run scoreboard players get @s ptpp.home.7.y
execute as @s[scores={home=7}] at @s if score @s perm.cmd.home matches 7.. if score @s plib.tmp = @s ptpp.home.7.d store result score @s plib.stp.z run scoreboard players get @s ptpp.home.7.z
execute as @s[scores={home=7}] at @s if score @s perm.cmd.home matches 7.. if score @s plib.tmp = @s ptpp.home.7.d run function pistonlib:score_tp/tp_to_score
execute as @s[scores={home=7}] at @s if score @s perm.cmd.home matches 7.. if score @s plib.tmp = @s ptpp.home.7.d run tag @s add tplus.home.success
execute as @s[scores={home=7}] at @s if score @s perm.cmd.home matches 7.. unless score @s plib.tmp = @s ptpp.home.7.d run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du kannst dich nur zu Homepunkten in der gleichen Dimension teleportieren!","color":"red"}]
execute as @s[scores={home=7}] at @s unless score @s perm.cmd.home matches 7.. run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du kannst nur 6 Homepunkte setzen!","color":"red"}]





#execute as @s[scores={home=2}] at @s if score @s perm.cmd.home matches 2.. store result score @s plib.stp.x run scoreboard players get @s ptpp.home.2.x
#execute as @s[scores={home=2}] at @s if score @s perm.cmd.home matches 2.. store result score @s plib.stp.y run scoreboard players get @s ptpp.home.2.y
#execute as @s[scores={home=2}] at @s if score @s perm.cmd.home matches 2.. store result score @s plib.stp.z run scoreboard players get @s ptpp.home.2.z
#execute as @s[scores={home=2}] at @s if score @s perm.cmd.home matches 2.. run function pistonlib:score_tp/tp_to_score
#execute as @s[scores={home=2}] at @s unless score @s perm.cmd.home matches 2.. run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du kannst nur 1 Homepunkt haben!","color":"red"}]

#execute as @s[scores={home=3}] at @s if score @s perm.cmd.home matches 3.. store result score @s plib.stp.x run scoreboard players get @s ptpp.home.3.x
#execute as @s[scores={home=3}] at @s if score @s perm.cmd.home matches 3.. store result score @s plib.stp.y run scoreboard players get @s ptpp.home.3.y
#execute as @s[scores={home=3}] at @s if score @s perm.cmd.home matches 3.. store result score @s plib.stp.z run scoreboard players get @s ptpp.home.3.z
#execute as @s[scores={home=3}] at @s if score @s perm.cmd.home matches 3.. run function pistonlib:score_tp/tp_to_score
#execute as @s[scores={home=3}] at @s unless score @s perm.cmd.home matches 3.. run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du kannst nur 2 Homepunkte haben!","color":"red"}]

#execute as @s[scores={home=4}] at @s if score @s perm.cmd.home matches 4.. store result score @s plib.stp.x run scoreboard players get @s ptpp.home.4.x
#execute as @s[scores={home=4}] at @s if score @s perm.cmd.home matches 4.. store result score @s plib.stp.y run scoreboard players get @s ptpp.home.4.y
#execute as @s[scores={home=4}] at @s if score @s perm.cmd.home matches 4.. store result score @s plib.stp.z run scoreboard players get @s ptpp.home.4.z
#execute as @s[scores={home=4}] at @s if score @s perm.cmd.home matches 4.. run function pistonlib:score_tp/tp_to_score
#execute as @s[scores={home=4}] at @s unless score @s perm.cmd.home matches 4.. run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du kannst nur 3 Homepunkte haben!","color":"red"}]

#execute as @s[scores={home=5}] at @s if score @s perm.cmd.home matches 5.. store result score @s plib.stp.x run scoreboard players get @s ptpp.home.5.x
#execute as @s[scores={home=5}] at @s if score @s perm.cmd.home matches 5.. store result score @s plib.stp.y run scoreboard players get @s ptpp.home.5.y
#execute as @s[scores={home=5}] at @s if score @s perm.cmd.home matches 5.. store result score @s plib.stp.z run scoreboard players get @s ptpp.home.5.z
#execute as @s[scores={home=5}] at @s if score @s perm.cmd.home matches 5.. run function pistonlib:score_tp/tp_to_score
#execute as @s[scores={home=5}] at @s unless score @s perm.cmd.home matches 5.. run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du kannst nur 4 Homepunkte haben!","color":"red"}]

#execute as @s[scores={home=6}] at @s if score @s perm.cmd.home matches 6.. store result score @s plib.stp.x run scoreboard players get @s ptpp.home.6.x
#execute as @s[scores={home=6}] at @s if score @s perm.cmd.home matches 6.. store result score @s plib.stp.y run scoreboard players get @s ptpp.home.6.y
#execute as @s[scores={home=6}] at @s if score @s perm.cmd.home matches 6.. store result score @s plib.stp.z run scoreboard players get @s ptpp.home.6.z
#execute as @s[scores={home=6}] at @s if score @s perm.cmd.home matches 6.. run function pistonlib:score_tp/tp_to_score
#execute as @s[scores={home=6}] at @s unless score @s perm.cmd.home matches 6.. run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du kannst nur 5 Homepunkte haben!","color":"red"}]

#execute as @s[scores={home=7}] at @s if score @s perm.cmd.home matches 7.. store result score @s plib.stp.x run scoreboard players get @s ptpp.home.7.x
#execute as @s[scores={home=7}] at @s if score @s perm.cmd.home matches 7.. store result score @s plib.stp.y run scoreboard players get @s ptpp.home.7.y
#execute as @s[scores={home=7}] at @s if score @s perm.cmd.home matches 7.. store result score @s plib.stp.z run scoreboard players get @s ptpp.home.7.z
#execute as @s[scores={home=7}] at @s if score @s perm.cmd.home matches 7.. run function pistonlib:score_tp/tp_to_score
#execute as @s[scores={home=7}] at @s unless score @s perm.cmd.home matches 7.. run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du kannst nur 6 Homepunkte haben!","color":"red"}]

execute as @s[scores={home=1..7},tag=tplus.home.success] run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"] ","color":"white"},{"text":"Du wurdest zum ","color":"white"},{"text":"Homepunkt ","color":"gold"},{"score":{"name":"@s","objective":"home"},"color":"gold"},{"text":" teleportiert","color":"white"}]
execute as @s[scores={home=8..}] run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"] ","color":"white"},{"text":"Der angegebene Homepunkt existiert nicht! (max. 7 Homepunkte)","color":"red"}]

scoreboard players set @s[scores={home=1..}] home 0
scoreboard players reset @s plib.tmp
tag @s[tag=tplus.home.success] remove tplus.home.success