execute as @s[nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}}] run tag @s add rtw.success
execute as @s[tag=rtw.success] store result score @s plib.pc.value run data get entity @s SelectedItem.tag.Damage
execute as @s[tag=rtw.success] run scoreboard players set @s plib.pc.maxn 32
execute as @s[tag=rtw.success] run scoreboard players set @s plib.pc.mul 100
execute as @s[tag=rtw.success] run function pistonlib:calculate_percentage
execute as @s[tag=rtw.success] if score @s plib.pc.value matches 90.. run tag @s add durabilitywarning
tag @s[tag=rtw.success] remove rtw.success
