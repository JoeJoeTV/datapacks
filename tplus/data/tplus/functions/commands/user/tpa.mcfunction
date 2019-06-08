execute as @s[tag=plib.plr.hasid,tag=ptpp.plr.request] run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du hast bereits eine Teleportanfrage gesendet!","color":"red"}]
execute as @s[tag=plib.plr.hasid,tag=!ptpp.plr.request] run function tplus:commands/user/tp/send_request

scoreboard players set @s tpa 0