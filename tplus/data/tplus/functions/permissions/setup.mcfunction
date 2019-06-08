##USER CMDs

##PERMISSION TO USE CMD BACK (BOOLEAN)
scoreboard objectives add perm.cmd.back dummy
##PERMISSION TO USE CMD HOME AND NUMBER OF HOMES (NUMMBER)
scoreboard objectives add perm.cmd.home dummy
##PERMISSION TO USE CMD SPAWN (BOOLEAN)
scoreboard objectives add perm.cmd.spawn dummy
##PERMISSION TO SEND TPA REQUESTS (BOOLEAN)
scoreboard objectives add perm.cmd.tpa dummy
##PERMISSION TO RECEIVE TPA REQUESTS (BOOLEAN)
scoreboard objectives add perm.cmd.tparecv dummy
##PERMISSION TO USE CMD WARP (BOOLEAN)
scoreboard objectives add perm.cmd.warp dummy

##ADMIN CMDs
##PERMISSION TO SET SPAWN (BOOLEAN)
scoreboard objectives add perm.cmd.setspwn dummy
##PERMISSION TO SET WARP (BOOLEAN)
scoreboard objectives add perm.cmd.setwarp dummy

#DEFAULT PERMISSIONS
scoreboard players set #default perm.cmd.back 1
scoreboard players set #default perm.cmd.home 7
scoreboard players set #default perm.cmd.spawn 1
scoreboard players set #default perm.cmd.tpa 1
scoreboard players set #default perm.cmd.tparecv 1
scoreboard players set #default perm.cmd.warp 1
scoreboard players set #default perm.cmd.setspwn 0
scoreboard players set #default perm.cmd.setwarp 0
