execute as @s[type=minecraft:player,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomItemID:"randomthings:magic_wand"}}},scores={rth.mana=1..}] if data entity @s SelectedItem.tag.StoredSpell.id run tag @s add rth.has.magic_wand
execute as @s[type=minecraft:player,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomItemID:"randomthings:magic_wand"}}]},scores={rth.mana=1..}] if data entity @s Inventory[{Slot:-106b}].tag.StoredSpell.id run tag @s add rth.has.magic_wand

execute as @s[tag=rth.has.magic_wand] run function #randomthings:items/magic_wand/spells
tag @s[tag=rth.has.magic_wand] remove rth.has.magic_wand