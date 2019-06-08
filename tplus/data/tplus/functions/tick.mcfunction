#ENABLE TRIGGERS
function tplus:enable_triggers

#ADMIN COMMANDS
execute as @a[scores={setspawn=1..}] if score @s perm.cmd.setspwn matches 1.. run function tplus:commands/admin/setspawn
execute as @a[scores={setwarp=1..}] if score @s perm.cmd.setspwn matches 1.. run function tplus:commands/admin/setwarp

#USER COMMANDS
execute as @a[scores={sethome=1..}] if score @s perm.cmd.home matches 1.. run function tplus:commands/user/sethome
execute as @a[scores={gethome=1..}] if score @s perm.cmd.home matches 1.. run function tplus:commands/user/gethome
execute as @a[scores={home=1..}] if score @s perm.cmd.home matches 1.. run function tplus:commands/user/home
execute as @a[scores={spawn=1..}] if score @s perm.cmd.spawn matches 1.. run function tplus:commands/user/spawn
execute as @a[scores={warp=1..}] if score @s perm.cmd.warp matches 1.. run function tplus:commands/user/warp
execute as @a[scores={back=1..}] if score @s perm.cmd.back matches 1.. run function tplus:commands/user/back
execute as @a[scores={tpa=1..}] if score @s perm.cmd.tpa matches 1.. run function tplus:commands/user/tpa
execute as @a[scores={tpaccept=1..}] if score @s perm.cmd.tparecv matches 1.. run function tplus:commands/user/tpaccept
execute as @a[scores={tpdeny=1..}] if score @s perm.cmd.tparecv matches 1.. run function tplus:commands/user/tpdeny
execute as @a[scores={tpcancel=1..}] if score @s perm.cmd.tpa matches 1.. run function tplus:commands/user/tpcancel

#RESET TP REQUESTS
execute as @a[tag=plib.plr.hasid,tag=ptpp.plr.request,tag=ptpp.remove_request] run function tplus:commands/user/tp/request_reset_request
execute as @a[tag=plib.plr.hasid,tag=ptpp.plr.destination,tag=ptpp.remove_request] run function tplus:commands/user/tp/request_reset_destination