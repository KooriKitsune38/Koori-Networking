#> k.network:network/reg/new.user

# Block Player #
effect give @s slowness 1 255 true
effect give @s slow_falling 1 255 true

# Summon Item #
tag @s add .temp
loot spawn ~ ~ ~ loot k.network:registration_head
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head"}},sort=nearest,limit=1,distance=..1.2] run function k.network:network/reg/reg.head
tag @s remove .temp

# Tag Player
tag @s add k.nRegistered

# Tell it's done #
tellraw @s {"text":"Registration Completed!","color": "green"}

# Sound #
playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1 2
playsound minecraft:block.portal.travel master @a ~ ~ ~ .15 1.7
execute anchored eyes run particle composter ^ ^ ^.2 .2 .2 .2 1 20 force