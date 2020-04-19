execute unless score #randomthings uninstall matches 1.. unless score #randomthings setup matches 1.. run function randomthings:setup

execute unless score #randomthings uninstall matches 1.. if score #randomthings setup matches 1.. run function randomthings:blocks/block_breaker/load
execute unless score #randomthings uninstall matches 1.. if score #randomthings setup matches 1.. run function randomthings:mana/load

execute unless score #randomthings uninstall matches 1.. run tellraw @a [{"text":"+ ","color":"white"},{"text":"Random","color":"light_purple"},{"text":"Things","color":"gray"}]