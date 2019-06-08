tag @s[type=minecraft:player,nbt={SelectedItem:{tag:{isManaItem:1b}}}] add rth.has.mana_item
tag @s[type=minecraft:player,nbt={Inventory:[{Slot:-106b,tag:{isManaItem:1b}}]}] add rth.has.mana_item
execute as @s[tag=rth.has.mana_item] run title @s actionbar ["",{"text":"MANA:","color":"green"},{"text":" "},{"score":{"name":"@s","objective":"rth.mana"},"color":"red"}]
tag @s[tag=rth.has.mana_item] remove rth.has.mana_item