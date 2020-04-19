tellraw @a ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"lus","color":"dark_green"},{"text":"]","color":"white"},{"text":" Uninstalling PistonLib...","color":"red"}]


#TRIGGER SCOREBOARDS
##USER
scoreboard objectives remove sethome
scoreboard objectives remove gethome
scoreboard objectives remove home
scoreboard objectives remove spawn
scoreboard objectives remove warp
scoreboard objectives remove back
scoreboard objectives remove tpa
scoreboard objectives remove tpaccept
scoreboard objectives remove tpdeny
scoreboard objectives remove tpcancel

##ADMIN
scoreboard objectives remove setspawn
scoreboard objectives remove setwarp

#COORDINATE STORAGE
##SPAWN
scoreboard objectives remove ptpp.spawn.x
scoreboard objectives remove ptpp.spawn.y
scoreboard objectives remove ptpp.spawn.z

##HOMES
scoreboard objectives remove ptpp.home.1.x
scoreboard objectives remove ptpp.home.1.y
scoreboard objectives remove ptpp.home.1.z
scoreboard objectives remove ptpp.home.1.d

scoreboard objectives remove ptpp.home.2.x
scoreboard objectives remove ptpp.home.2.y
scoreboard objectives remove ptpp.home.2.z
scoreboard objectives remove ptpp.home.2.d

scoreboard objectives remove ptpp.home.3.x
scoreboard objectives remove ptpp.home.3.y
scoreboard objectives remove ptpp.home.3.z
scoreboard objectives remove ptpp.home.3.d

scoreboard objectives remove ptpp.home.4.x
scoreboard objectives remove ptpp.home.4.y
scoreboard objectives remove ptpp.home.4.z
scoreboard objectives remove ptpp.home.4.d

scoreboard objectives remove ptpp.home.5.x
scoreboard objectives remove ptpp.home.5.y
scoreboard objectives remove ptpp.home.5.z
scoreboard objectives remove ptpp.home.5.d

scoreboard objectives remove ptpp.home.6.x
scoreboard objectives remove ptpp.home.6.y
scoreboard objectives remove ptpp.home.6.z
scoreboard objectives remove ptpp.home.6.d

scoreboard objectives remove ptpp.home.7.x
scoreboard objectives remove ptpp.home.7.y
scoreboard objectives remove ptpp.home.7.z
scoreboard objectives remove ptpp.home.7.d

##WARPS
scoreboard objectives remove ptpp.warps.x
scoreboard objectives remove ptpp.warps.y
scoreboard objectives remove ptpp.warps.z

##BACK
scoreboard objectives remove ptpp.back.x
scoreboard objectives remove ptpp.back.y
scoreboard objectives remove ptpp.back.z

#MISC
##TPA REQUEST STORAGE
scoreboard objectives remove ptpp.plr.id.rqst

scoreboard objectives remove ptpp.plr.id.dest

##USER CMDs

##PERMISSION TO USE CMD BACK (BOOLEAN)
scoreboard objectives remove perm.cmd.back
##PERMISSION TO USE CMD HOME AND NUMBER OF HOMES (NUMMBER)
scoreboard objectives remove perm.cmd.home
##PERMISSION TO USE CMD SPAWN (BOOLEAN)
scoreboard objectives remove perm.cmd.spawn
##PERMISSION TO SEND TPA REQUESTS (BOOLEAN)
scoreboard objectives remove perm.cmd.tpa
##PERMISSION TO RECEIVE TPA REQUESTS (BOOLEAN)
scoreboard objectives remove perm.cmd.tparecv
##PERMISSION TO USE CMD WARP (BOOLEAN)
scoreboard objectives remove perm.cmd.warp

##ADMIN CMDs
##PERMISSION TO SET SPAWN (BOOLEAN)
scoreboard objectives remove perm.cmd.setspwn
##PERMISSION TO SET WARP (BOOLEAN)
scoreboard objectives remove perm.cmd.setwarp

#FINISH UNINSTALL
scoreboard players set #tplus uninstall 1

tellraw @a ["",{"text":"[","color":"white"},{"text":"TP","color":"dark_purple"},{"text":"lus","color":"dark_green"},{"text":"]","color":"white"},{"text":" Successfully Uninstalled!","color":"red"}]

#DISABLE DATAPACK
datapack disable "file/tplus"
