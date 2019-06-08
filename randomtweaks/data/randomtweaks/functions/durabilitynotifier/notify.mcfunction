#maybe if data entity @s SelectedItem.tag.Damage
execute as @a if data entity @s SelectedItem.tag.Damage run function #randomtweaks:notifyitems
execute as @s if data entity @s SelectedItem.tag.Damage run scoreboard players reset @s plib.pc.value
execute as @s if data entity @s SelectedItem.tag.Damage run scoreboard players reset @s plib.pc.maxn
execute as @s if data entity @s SelectedItem.tag.Damage run scoreboard players reset @s plib.pc.mul
execute as @a[tag=durabilitywarning] run title @s actionbar ["",{"text":"Das Item in deiner Haupthand hat weniger als ","color":"gold"},{"text":" 10%","color":"dark_red"},{"text":" Haltbarkeit","color":"gold"}]
tag @a[tag=durabilitywarning] remove durabilitywarning
schedule function randomtweaks:durabilitynotifier/notify 3s