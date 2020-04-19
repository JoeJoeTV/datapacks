tellraw @a ["",{"text":"[","color":"white"},{"text":"Piston","color":"green"},{"text":"Lib","color":"gray"},{"text":"]","color":"white"},{"text":" Uninstalling PistonLib...","color":"red"}]

#REMOVING SCOREBOARDS...

#VILLAGER RIGHT CLICK DETECTION
scoreboard objectives remove plib.vr.talk

#CARROT ON A STICK RIGHT CLICK DETECTION
scoreboard objectives remove plib.cr.click

#PERCENTAGE CALCULATION
scoreboard objectives remove plib.pc.value
scoreboard objectives remove plib.pc.maxn
scoreboard objectives remove plib.pc.mul

#TICK CONVERSION
scoreboard objectives remove plib.tc.tck
scoreboard objectives remove plib.tc.sec
scoreboard objectives remove plib.tc.min
scoreboard objectives remove plib.tc.d_t-s
scoreboard objectives remove plib.tc.d_s-m

#SCORE TP
scoreboard objectives remove plib.stp.x
scoreboard objectives remove plib.stp.y
scoreboard objectives remove plib.stp.z

#DEATH EVENT
scoreboard objectives remove plib.cnt.death

#PLAYER IDS
scoreboard objectives remove plib.plr.id

#GLOBAL PARAMETERS
scoreboard objectives remove plib.params

#GLOBAL CONFIG
scoreboard objectives remove conf.global

#JOIN EVENT/PLAYTIME
scoreboard objectives remove plib.play_ticks

#LEAVE GAME
scoreboard objectives remove plib.leave_game

#MOTION CALCULATION
scoreboard objectives remove plib.mc.x
scoreboard objectives remove plib.mc.y
scoreboard objectives remove plib.mc.z
scoreboard objectives remove plib.mc.x2
scoreboard objectives remove plib.mc.y2
scoreboard objectives remove plib.mc.z2

#HELP SYSTEM
scoreboard objectives remove help

#RAYCASTING
scoreboard objectives remove plib.rc.max

#Temporary Values
scoreboard objectives remove plib.tmp
scoreboard objectives remove plib.tmp2
scoreboard objectives remove plib.tmp3
scoreboard objectives remove plib.tmp4

#STAT SCOREBOARD OBJECTIVES
scoreboard objectives remove plib.stone_shovl
scoreboard objectives remove plib.stone_pick
scoreboard objectives remove plib.stone_axe

scoreboard objectives remove plib.iron_shovl
scoreboard objectives remove plib.iron_pick
scoreboard objectives remove plib.iron_axe

scoreboard objectives remove plib.gold_shovl
scoreboard objectives remove plib.gold_pick
scoreboard objectives remove plib.gold_axe

scoreboard objectives remove plib.dia_shovl
scoreboard objectives remove plib.dia_pick
scoreboard objectives remove plib.dia_axe

#UNINSTALL DEPENDANT DATAPACKS
function #pistonlib:uninstall

#FINISH UNINSTALL
scoreboard players set #pistonlib uninstall 1

scoreboard objectives remove uninstall
scoreboard objectives remove setup

tellraw @a ["",{"text":"[","color":"white"},{"text":"Piston","color":"green"},{"text":"Lib","color":"gray"},{"text":"]","color":"white"},{"text":" Successfully Uninstalled!","color":"red"}]

#DISABLE DATAPACK
datapack disable "file/pistonlib"
