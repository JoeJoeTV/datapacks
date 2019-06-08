tag @a[nbt={SelectedItem:{tag:{CustomItemID:"randomthings:hammer"}}}] add rth.has.hammer
tag @a[tag=rth.has.hammer,scores={plib.stone_pick=1..}] add rth.used.hammer
tag @a[tag=rth.has.hammer,scores={plib.iron_pick=1..}] add rth.used.hammer
tag @a[tag=rth.has.hammer,scores={plib.gold_pick=1..}] add rth.used.hammer
tag @a[tag=rth.has.hammer,scores={plib.dia_pick=1..}] add rth.used.hammer

tag @a[tag=rth.has.hammer,tag=rth.used.hammer,nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}}] add rth.has.hammer.stone
tag @a[tag=rth.has.hammer,tag=rth.used.hammer,nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}] add rth.has.hammer.iron
tag @a[tag=rth.has.hammer,tag=rth.used.hammer,nbt={SelectedItem:{id:"minecraft:gold_pickaxe"}}] add rth.has.hammer.gold
tag @a[tag=rth.has.hammer,tag=rth.used.hammer,nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] add rth.has.hammer.diamond

execute as @a[tag=rth.has.hammer,tag=rth.used.hammer] at @s run function randomthings:items/hammer/check_for_item

tag @a[tag=rth.has.hammer] remove rth.has.hammer
tag @a[tag=rth.used.hammer] remove rth.used.hammer

tag @a[tag=rth.has.hammer.stone] remove rth.has.hammer.stone
tag @a[tag=rth.has.hammer.iron] remove rth.has.hammer.iron
tag @a[tag=rth.has.hammer.gold] remove rth.has.hammer.gold
tag @a[tag=rth.has.hammer.diamond] remove rth.has.hammer.diamond