tellraw @a ["",{"text":"[","color":"white"},{"text":"Random","color":"light_purple"},{"text":"Tweaks","color":"dark_aqua"},{"text":"]","color":"white"},{"text":" Uninstalling PistonLib...","color":"red"}]


#FINISH UNINSTALL
scoreboard players set #randomtweaks uninstall 1

tellraw @a ["",{"text":"[","color":"white"},{"text":"Random","color":"light_purple"},{"text":"Tweaks","color":"dark_aqua"},{"text":"]","color":"white"},{"text":" Successfully Uninstalled!","color":"red"}]

#DISABLE DATAPACK
datapack disable "file/randomtweaks"
