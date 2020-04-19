tellraw @a ["",{"text":"[","color":"white"},{"text":"Random","color":"light_purple"},{"text":"Things","color":"gray"},{"text":"]","color":"white"},{"text":" Uninstalling PistonLib...","color":"red"}]

#Countdown Score
scoreboard objectives remove rth.bb.timer
#MANA
scoreboard objectives remove rth.mana

#Kill persistent entities
kill @e[tag=rth.bb]

#FINISH UNINSTALL
scoreboard players set #randomthings uninstall 1

tellraw @a ["",{"text":"[","color":"white"},{"text":"Random","color":"light_purple"},{"text":"Things","color":"gray"},{"text":"]","color":"white"},{"text":" Successfully Uninstalled!","color":"red"}]

#DISABLE DATAPACK
datapack disable "file/randomthings"