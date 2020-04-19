tellraw @a ["",{"text":"[","color":"white"},{"text":"Crafting","color":"yellow"},{"text":"+","color":"dark_green"},{"text":"]","color":"white"},{"text":" Uninstalling...","color":"red"}]

#Lapis/Soul Sand Count
scoreboard objectives remove pcp.amt.cnt.uitm

#Kill persistent entities
kill @e[tag=pcp.act]
kill @e[tag=pcp.amt]

#FINISH UNINSTALL
scoreboard players set #craftingplus uninstall 1

tellraw @a ["",{"text":"[","color":"white"},{"text":"Crafting","color":"yellow"},{"text":"+","color":"dark_green"},{"text":"]","color":"white"},{"text":" Successfully uninstalled!","color":"red"}]

#DISABLE DATAPACK
datapack disable "file/craftingplus"
