execute as @s[tag=plib.plr.hasid,tag=!ptpp.plr.request] run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"] ","color":"white"},{"text":"Du hast keine ausstehenden Teleportanfragen!","color":"red"}]
execute as @s[tag=plib.plr.hasid,tag=ptpp.plr.request] run function tplus:commands/user/tp/cancel_request

scoreboard players set @s tpcancel 0