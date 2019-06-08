execute as @s[scores={plib.rc.max=1..}] at @s run tp @s ^ ^ ^1.5
execute as @s[scores={plib.rc.max=1..}] at @s run summon evoker_fangs ~ ~ ~ {Tags:["spell_summoned"],Warmup:100}
execute as @s[scores={plib.rc.max=1..}] at @s run tp @e[type=minecraft:evoker_fangs,tag=spell_summoned,distance=..0.3,limit=1,sort=nearest] ~ ~ ~ ~90 ~
execute as @s[scores={plib.rc.max=1..}] at @s store result entity @e[type=minecraft:evoker_fangs,tag=spell_summoned,distance=..0.3,limit=1,sort=nearest] Warmup int 1 run scoreboard players get @s rth.mw.dummy

#DEBUG:
#execute as @s[scores={plib.rc.max=1..}] at @s run tellraw @a ["",{"text":"DELAY:","color":"green"},{"text":" "},{"score":{"name":"@s","objective":"rth.mw.dummy"},"color":"red"}]

execute as @s[scores={plib.rc.max=1..}] at @s run scoreboard players remove @s plib.rc.max 1
execute as @s[scores={plib.rc.max=1..}] at @s run scoreboard players add @s rth.mw.dummy 2
execute as @s[scores={plib.rc.max=1..}] at @s run function randomthings:items/magic_wand/spells/evoker_fangs_line/summon_evoker_fang