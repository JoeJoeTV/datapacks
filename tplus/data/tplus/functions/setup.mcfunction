
#TRIGGER SCOREBOARDS
##USER
scoreboard objectives add sethome trigger {"text":"SETHOME","color":"green"}
scoreboard objectives add gethome trigger {"text":"GETHOME","color":"green"}
scoreboard objectives add home trigger {"text":"HOME","color":"green"}
scoreboard objectives add spawn trigger {"text":"SPAWN","color":"green"}
scoreboard objectives add warp trigger {"text":"WARP","color":"green"}
scoreboard objectives add back trigger {"text":"BACK","color":"green"}
scoreboard objectives add tpa trigger {"text":"TPA","color":"green"}
scoreboard objectives add tpaccept trigger {"text":"TPACCEPT","color":"green"}
scoreboard objectives add tpdeny trigger {"text":"TPDENY","color":"green"}
scoreboard objectives add tpcancel trigger {"text":"TPCANCEL","color":"green"}

##ADMIN
scoreboard objectives add setspawn trigger {"text":"SETSPAWN","color":"green"}
scoreboard objectives add setwarp trigger {"text":"SETWARP","color":"green"}

#COORDINATE STORAGE
##SPAWN
scoreboard objectives add ptpp.spawn.x dummy
scoreboard objectives add ptpp.spawn.y dummy
scoreboard objectives add ptpp.spawn.z dummy

##HOMES
scoreboard objectives add ptpp.home.1.x dummy
scoreboard objectives add ptpp.home.1.y dummy
scoreboard objectives add ptpp.home.1.z dummy
scoreboard objectives add ptpp.home.1.d dummy

scoreboard objectives add ptpp.home.2.x dummy
scoreboard objectives add ptpp.home.2.y dummy
scoreboard objectives add ptpp.home.2.z dummy
scoreboard objectives add ptpp.home.2.d dummy

scoreboard objectives add ptpp.home.3.x dummy
scoreboard objectives add ptpp.home.3.y dummy
scoreboard objectives add ptpp.home.3.z dummy
scoreboard objectives add ptpp.home.3.d dummy

scoreboard objectives add ptpp.home.4.x dummy
scoreboard objectives add ptpp.home.4.y dummy
scoreboard objectives add ptpp.home.4.z dummy
scoreboard objectives add ptpp.home.4.d dummy

scoreboard objectives add ptpp.home.5.x dummy
scoreboard objectives add ptpp.home.5.y dummy
scoreboard objectives add ptpp.home.5.z dummy
scoreboard objectives add ptpp.home.5.d dummy

scoreboard objectives add ptpp.home.6.x dummy
scoreboard objectives add ptpp.home.6.y dummy
scoreboard objectives add ptpp.home.6.z dummy
scoreboard objectives add ptpp.home.6.d dummy

scoreboard objectives add ptpp.home.7.x dummy
scoreboard objectives add ptpp.home.7.y dummy
scoreboard objectives add ptpp.home.7.z dummy
scoreboard objectives add ptpp.home.7.d dummy

##WARPS
scoreboard objectives add ptpp.warps.x dummy
scoreboard objectives add ptpp.warps.y dummy
scoreboard objectives add ptpp.warps.z dummy

##BACK
scoreboard objectives add ptpp.back.x dummy
scoreboard objectives add ptpp.back.y dummy
scoreboard objectives add ptpp.back.z dummy

#MISC
##TPA REQUEST STORAGE
scoreboard objectives add ptpp.plr.id.rqst dummy

scoreboard objectives add ptpp.plr.id.dest dummy

#SETUP PERMISSIONS
function tplus:permissions/setup


#FINISH SETUP
scoreboard players set #tplus setup 1
