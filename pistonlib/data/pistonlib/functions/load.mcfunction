#Make sure the objectives are available at start
execute unless score #pistonlib uninstall matches 1.. run scoreboard objectives add setup dummy
scoreboard objectives add uninstall dummy

execute unless score #pistonlib uninstall matches 1.. run tellraw @a ["",{"text":"[","color":"white"},{"text":"Piston","color":"green"},{"text":"Lib","color":"gray"},{"text":"]","color":"white"},{"text":" Geladene Datenpakete:","color":"gold"}]

execute unless score #pistonlib setup matches 1.. unless score #pistonlib uninstall matches 1.. run function pistonlib:setup

execute unless score #pistonlib uninstall matches 1.. run function pistonlib:refresh_invisibility

execute unless score #pistonlib uninstall matches 1.. run tellraw @a [{"text":"+ ","color":"white"},{"text":"Piston","color":"green"},{"text":"Lib","color":"gray"}]

execute if score #pistonlib setup matches 1.. unless score #pistonlib uninstall matches 1.. run function #pistonlib:load