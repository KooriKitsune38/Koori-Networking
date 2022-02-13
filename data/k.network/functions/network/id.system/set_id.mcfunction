#> k.network:network/id.system/set_id
# Copy Score #
execute store result score @s k.nIDs run scoreboard players get @s MyID

# Tell it's done #
tellraw @s {"text":"ID Set Successfully!","color": "green"}

# Add Tag #
tag @s add k.nHasID

# Sound #
playsound minecraft:block.note_block.iron_xylophone master @a ~ ~ ~ 1 2
playsound minecraft:block.portal.travel master @a ~ ~ ~ .15 1.7
execute anchored eyes run particle composter ^ ^ ^.2 .2 .2 .2 1 20 force