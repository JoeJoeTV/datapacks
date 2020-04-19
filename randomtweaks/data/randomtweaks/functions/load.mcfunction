execute unless score #randomtweaks uninstall matches 1.. unless score #randomtweaks setup matches 1.. run function randomtweaks:setup

execute unless score #randomtweaks uninstall matches 1.. run schedule function randomtweaks:durabilitynotifier/notify 3s

execute unless score #randomtweaks uninstall matches 1.. run tellraw @a [{"text":"+ ","color":"white"},{"text":"Random","color":"light_purple"},{"text":"Tweaks","color":"dark_aqua"}]