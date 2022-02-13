#> k.network:network/id.system/triggered.id

# Error #
#id_already_set
execute if entity @s[tag=k.nHasID] unless score @s MyID matches 0..1 run function k.network:network/id.system/id_already_set
#no_id_yet
execute if score @s MyID matches 1 unless score @s k.nIDs matches -2147483648..2147483647 run function k.network:network/id.system/no_id_yet

# Tell if 1 #
execute if score @s MyID matches 1 if score @s k.nIDs matches -2147483648..2147483647 run tellraw @s [{"text": "Your ID is: ","color": "gold"},{"score": {"name":"@s","objective": "k.nIDs"},"color": "aqua"}]

# Store Id #
execute unless score @s[tag=!k.nHasID] MyID matches 0..1 run function k.network:network/id.system/check.availability

# Reset #
scoreboard players reset @s MyID