execute unless score #randomthings setup matches 1.. run function randomthings:setup

execute if score #randomthings setup matches 1.. run function randomthings:blocks/block_breaker/load
execute if score #randomthings setup matches 1.. run function randomthings:mana/load

tellraw @a [{"text":"+ ","color":"white"},{"text":"Random","color":"light_purple"},{"text":"Things","color":"gray"}]