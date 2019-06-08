tag @s add ptpp.plr.primary
execute as @a[tag=plib.plr.hasid,tag=ptpp.plr.request] if score @s plib.plr.id = @a[tag=plib.plr.hasid,tag=ptpp.plr.primary,limit=1] ptpp.plr.id.rqst if score @s ptpp.plr.id.dest = @a[tag=plib.plr.hasid,tag=ptpp.plr.primary,limit=1] plib.plr.id run tag @s add ptpp.plr.secondary

execute if entity @a[tag=plib.plr.hasid,tag=ptpp.plr.secondary] run scoreboard players set @s[tag=ptpp.plr.primary] ptpp.plr.id.rqst 0
execute if entity @a[tag=plib.plr.hasid,tag=ptpp.plr.secondary] run scoreboard players set @a[tag=ptpp.plr.request,tag=ptpp.plr.secondary,limit=1] ptpp.plr.id.dest 0
execute if entity @a[tag=plib.plr.hasid,tag=ptpp.plr.secondary] run tag @s[tag=ptpp.plr.primary,tag=ptpp.plr.destination] remove ptpp.plr.destination
execute if entity @a[tag=plib.plr.hasid,tag=ptpp.plr.secondary] run tag @a[tag=ptpp.plr.request,tag=ptpp.plr.secondary] remove ptpp.plr.request
execute if entity @a[tag=plib.plr.hasid,tag=ptpp.plr.secondary] run tag @s[tag=ptpp.remove_request] remove ptpp.remove_request
tag @s[tag=ptpp.plr.primary] remove ptpp.plr.primary
tag @a[tag=ptpp.plr.secondary] remove ptpp.plr.secondary