tag @s add ptpp.plr.primary
execute as @a[tag=plib.plr.hasid,tag=ptpp.plr.request] if score @s plib.plr.id = @a[tag=plib.plr.hasid,tag=ptpp.plr.primary,limit=1] ptpp.plr.id.rqst if score @s ptpp.plr.id.dest = @a[tag=plib.plr.hasid,tag=ptpp.plr.primary,limit=1] plib.plr.id run tag @s add ptpp.plr.secondary

execute unless entity @a[tag=plib.plr.hasid,tag=ptpp.plr.secondary] run tellraw @s ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"] ","color":"white"},{"text":"Der Spieler, der die Teleportanfrage gesendet hat ist nicht auf dem Server oder die Anfrage ist ungültig!","color":"red"}]

execute if entity @a[tag=plib.plr.hasid,tag=ptpp.plr.secondary] run tp @a[tag=ptpp.plr.request,tag=ptpp.plr.secondary,limit=1] @s[tag=ptpp.plr.primary]
execute if entity @a[tag=plib.plr.hasid,tag=ptpp.plr.secondary] run tellraw @a[tag=ptpp.plr.request,tag=ptpp.plr.secondary,limit=1] ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" Du wurdest zu ","color":"white"},{"selector":"@s","color":"gold"},{"text":" teleportiert!","color":"white"}]
execute if entity @a[tag=plib.plr.hasid,tag=ptpp.plr.secondary] run tellraw @s[tag=ptpp.plr.primary] ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"LUS","color":"dark_green"},{"text":"]","color":"white"},{"text":" "},{"selector":"@a[tag=ptpp.plr.request,tag=ptpp.plr.secondary,limit=1]","color":"gold"},{"text":" wurde zu dir teleportiert!","color":"white"}]

execute if entity @a[tag=plib.plr.hasid,tag=ptpp.plr.secondary] run scoreboard players set @s[tag=ptpp.plr.primary] ptpp.plr.id.rqst 0
execute if entity @a[tag=plib.plr.hasid,tag=ptpp.plr.secondary] run scoreboard players set @a[tag=ptpp.plr.request,tag=ptpp.plr.secondary,limit=1] ptpp.plr.id.dest 0
execute if entity @a[tag=plib.plr.hasid,tag=ptpp.plr.secondary] run tag @s[tag=ptpp.plr.primary,tag=ptpp.plr.destination] remove ptpp.plr.destination
execute if entity @a[tag=plib.plr.hasid,tag=ptpp.plr.secondary] run tag @a[tag=ptpp.plr.request,tag=ptpp.plr.secondary] remove ptpp.plr.request
tag @s[tag=ptpp.plr.primary] remove ptpp.plr.primary
tag @a[tag=ptpp.plr.secondary] remove ptpp.plr.secondary