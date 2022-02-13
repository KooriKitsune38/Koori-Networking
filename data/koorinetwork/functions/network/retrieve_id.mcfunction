# Set Database Status To Busy #
data modify storage koorinetwork:database DatabaseStatus[0].Busy set value 1b

# Retrieve Id #
execute store result score !CurrentId IdSystem run data get storage koorinetwork:database Users[0].Id

# Rotate Ids #
execute unless score !CurrentId IdSystem = @s IdSystem run function koorinetwork:network/rotate_ids

# Reset Score #
scoreboard players reset !CurrentId IdSystem