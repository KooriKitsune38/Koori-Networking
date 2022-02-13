#> k.network:triggers/triggers

# Register To Network #
scoreboard players enable @s[tag=!k.nRegistered] RegisterNetwork
execute if score @s RegisterNetwork matches 1.. run function k.network:network/reg/reg.trigger

# Tell ID #
scoreboard players enable @s MyID
execute unless score @s MyID matches 0 run function k.network:network/id.system/triggered.id

# If registered #
execute if entity @s[tag=k.nRegistered] run function k.network:triggers/network_triggers