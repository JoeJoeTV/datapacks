execute as @s[tag=plib.plr.hasid,tag=!ptpp.plr.destination] run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"] ","color":"white"},{"text":"Du hast keine ausstehenden Teleportanfragen!","color":"red"}]
execute as @s[tag=plib.plr.hasid,tag=ptpp.plr.destination] run function tplus:commands/user/tp/deny_request

scoreboard players set @s tpdeny 0