tag @s add ptpp.plr.primary
execute as @a[tag=plib.plr.hasid,tag=!ptpp.plr.destination] if score @s plib.plr.id = @a[tag=ptpp.plr.primary,limit=1] tpa unless score @s plib.plr.id = @a[tag=ptpp.plr.primary,limit=1] plib.plr.id run tag @s add ptpp.plr.secondary
#Error Msg
## If Player ID = requested ID set tag
execute as @a[tag=plib.plr.hasid,tag=!ptpp.plr.destination] if score @s plib.plr.id = @a[tag=ptpp.plr.primary,limit=1] tpa if score @s plib.plr.id = @a[tag=ptpp.plr.primary,limit=1] plib.plr.id run tag @a[tag=ptpp.plr.primary,limit=1] add ptpp.plr.issender 

#Error MSG for same ID
execute unless entity @a[tag=ptpp.plr.secondary] if entity @a[tag=ptpp.plr.issender] run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"] ","color":"white"},{"text":"Du kannst dich nicht zu dir selbst teleportieren!","color":"red"}]
#Error MSG for non existing player
execute unless entity @a[tag=ptpp.plr.secondary] unless entity @a[tag=ptpp.plr.issender] run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Ein Spieler mit dieser ID existiert nicht, oder der Spieler mit dieser ID ist nicht auf dem Server!","color":"red"}]

execute as @s[tag=ptpp.plr.primary,tag=!ptpp.plr.issender] if entity @a[tag=ptpp.plr.secondary,limit=1] run scoreboard players operation @s ptpp.plr.id.dest = @s tpa 
execute as @s[tag=ptpp.plr.primary,tag=!ptpp.plr.issender] if entity @a[tag=ptpp.plr.secondary,limit=1] run tag @s add ptpp.plr.request

execute as @a[tag=ptpp.plr.secondary,limit=1] run scoreboard players operation @s ptpp.plr.id.rqst = @a[tag=ptpp.plr.primary,limit=1,tag=plib.plr.hasid] plib.plr.id 
execute as @a[tag=ptpp.plr.secondary,limit=1] run tag @s add ptpp.plr.destination
#execute as @s if entity @a[tag=ptpp.plr.secondary,tag=ptpp.plr.destination,limit=1] run schedule function tplus:commands/user/tp/request_timeout 30s
execute if entity @a[tag=ptpp.plr.secondary,tag=ptpp.plr.destination,limit=1] run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du hast eine Teleportanfrage an ","color":"white"},{"selector":"@a[tag=ptpp.plr.secondary,limit=1]","color":"gold"},{"text":" gesendet.","color":"white"}]
execute if entity @a[tag=ptpp.plr.secondary,tag=ptpp.plr.destination,limit=1] run tellraw @a[tag=ptpp.plr.secondary,limit=1] ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du hast eine Teleportanfrage von "},{"selector":"@a[tag=ptpp.plr.primary,limit=1]","color":"gold"},{"text":" bekommen. \n"},{"text":"[ANNEHMEN]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":"Teleportanfrage annehmen"},"clickEvent":{"action":"run_command","value":"/trigger tpaccept"}},{"text":" ","bold":true,"color":"white"},{"text":"[ABLEHNEN]","bold":true,"color":"dark_red","hoverEvent":{"action":"show_text","value":"Teleportanfrage ablehnen"},"clickEvent":{"action":"run_command","value":"/trigger tpdeny"}}]

tag @a[tag=ptpp.plr.primary] remove ptpp.plr.primary
tag @a[tag=ptpp.plr.secondary] remove ptpp.plr.secondary
tag @a[tag=ptpp.plr.issender] remove ptpp.plr.issender