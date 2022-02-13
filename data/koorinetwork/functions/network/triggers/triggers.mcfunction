# Register To Network #
scoreboard players enable @s[tag=!RegisteredToNetwork] RegisterNetwork
execute if score @s RegisterNetwork matches 1.. run function koorinetwork:network/triggered_registration

# Tell ID #
scoreboard players enable @s MyID
execute unless score @s MyID matches 0 run function koorinetwork:network/triggers/tell_id

# If registered #
execute if entity @s[tag=RegisteredToNetwork] run function koorinetwork:network/triggers/network_triggers