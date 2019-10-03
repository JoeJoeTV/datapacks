#HOW TO USE:
# -set 'plib.pc.value' to the value
# -set 'plib.pc.maxn' to the maximum number (to get percentage of)
# -set 'plib.pc.mul' to the multiplier
# -execute function relative to entity

scoreboard players operation @s plib.pc.value *= @s plib.pc.mul
scoreboard players operation @s plib.pc.value /= @s plib.pc.maxn