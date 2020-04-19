#ENABLE TRIGGERS
execute unless score #tplus uninstall matches 1.. run function tplus:enable_triggers

#ADMIN COMMANDS
execute unless score #tplus uninstall matches 1.. as @a[scores={setspawn=1..,perm.cmd.setspwn=1..}] run function tplus:commands/admin/setspawn
execute unless score #tplus uninstall matches 1.. as @a[scores={setwarp=1..,perm.cmd.setwarp=1..}] run function tplus:commands/admin/setwarp

#USER COMMANDS
execute unless score #tplus uninstall matches 1.. as @a[scores={sethome=1..,perm.cmd.home=1..}] run function tplus:commands/user/sethome
execute unless score #tplus uninstall matches 1.. as @a[scores={gethome=1..,perm.cmd.home=1..}] run function tplus:commands/user/gethome
execute unless score #tplus uninstall matches 1.. as @a[scores={home=1..,perm.cmd.home=1..}] run function tplus:commands/user/home
execute unless score #tplus uninstall matches 1.. as @a[scores={spawn=1..,perm.cmd.spawn=1..}] run function tplus:commands/user/spawn
execute unless score #tplus uninstall matches 1.. as @a[scores={warp=1..,perm.cmd.warp=1..}] run function tplus:commands/user/warp
execute unless score #tplus uninstall matches 1.. as @a[scores={back=1..,perm.cmd.back=1..}] run function tplus:commands/user/back
execute unless score #tplus uninstall matches 1.. as @a[scores={tpa=1..,perm.cmd.tpa=1..}] run function tplus:commands/user/tpa
execute unless score #tplus uninstall matches 1.. as @a[scores={tpaccept=1..,perm.cmd.tparecv=1..}] run function tplus:commands/user/tpaccept
execute unless score #tplus uninstall matches 1.. as @a[scores={tpdeny=1..,perm.cmd.tparecv=1..}] run function tplus:commands/user/tpdeny
execute unless score #tplus uninstall matches 1.. as @a[scores={tpcancel=1..,perm.cmd.tpa=1..}] run function tplus:commands/user/tpcancel

#TP RESET REQUESTS
execute unless score #tplus uninstall matches 1.. as @a[tag=plib.plr.hasid,tag=ptpp.plr.request,tag=ptpp.remove_request] run function tplus:commands/user/tp/request_reset_request
execute unless score #tplus uninstall matches 1.. as @a[tag=plib.plr.hasid,tag=ptpp.plr.destination,tag=ptpp.remove_request] run function tplus:commands/user/tp/request_reset_destination