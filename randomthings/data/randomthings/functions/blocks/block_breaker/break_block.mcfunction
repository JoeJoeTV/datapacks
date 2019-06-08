execute if block ~ ~ ~ minecraft:dropper[facing=north] unless block ~ ~ ~-1 #randomthings:block_breaker/unbreakable run setblock ~ ~ ~-1 minecraft:air destroy
execute if block ~ ~ ~ minecraft:dropper[facing=south] unless block ~ ~ ~1 #randomthings:block_breaker/unbreakable run setblock ~ ~ ~1 minecraft:air destroy
execute if block ~ ~ ~ minecraft:dropper[facing=down] unless block ~ ~-1 ~ #randomthings:block_breaker/unbreakable run setblock ~ ~-1 ~ minecraft:air destroy
execute if block ~ ~ ~ minecraft:dropper[facing=up] unless block ~ ~1 ~ #randomthings:block_breaker/unbreakable run setblock ~ ~1 ~ minecraft:air destroy
execute if block ~ ~ ~ minecraft:dropper[facing=west] unless block ~-1 ~ ~ #randomthings:block_breaker/unbreakable run setblock ~-1 ~ ~ minecraft:air destroy
execute if block ~ ~ ~ minecraft:dropper[facing=east] unless block ~1 ~ ~ #randomthings:block_breaker/unbreakable run setblock ~1 ~ ~ minecraft:air destroy