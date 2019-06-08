#Make sure every armor stand has a score
scoreboard players add @e[type=minecraft:armor_stand,tag=rth.bb,tag=rth.bb.stand] rth.bb.timer 0

#Check if timer is 0 and reset timer
execute as @e[type=minecraft:armor_stand,tag=rth.bb,tag=rth.bb.stand,scores={rth.bb.timer=0}] at @s if block ~ ~ ~ minecraft:dropper[triggered=true] run function randomthings:blocks/block_breaker/break_block
execute as @e[type=minecraft:armor_stand,tag=rth.bb,tag=rth.bb.stand,scores={rth.bb.timer=0}] at @s if block ~ ~ ~ minecraft:dropper[triggered=true] run scoreboard players operation @s rth.bb.timer = #rth.bb.delay conf.global

#Decrease Timer by 1
scoreboard players remove @e[type=minecraft:armor_stand,tag=rth.bb,tag=rth.bb.stand,scores={rth.bb.timer=1..}] rth.bb.timer 1

#Reschedule function
schedule function randomthings:blocks/block_breaker/update_timer 1t