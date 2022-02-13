# Set Database Status To Busy #
data modify storage koorinetwork:database DatabaseStatus[0].Busy set value 1b

# Retrieve Id #
execute store result score !CurrentId IdSystem run data get storage koorinetwork:database Users[0].Id

# Check if the Id Exsists #
#Exist
execute if score !CurrentId IdSystem = !TriggeredId IdSystem run scoreboard players set !IdExists IdSystem 1

#Doesn't Exist
execute if score !CurrentId IdSystem = !FirstIdChecked IdSystem run scoreboard players set !IdNotFound IdSystem 1

# Get First Id Checked #
execute unless score !FirstIdChecked IdSystem matches -2147483648..2147483647 store result score !FirstIdChecked IdSystem run data get storage koorinetwork:database Users[0].Id

# Rotate Ids #
execute unless score !IdExists IdSystem matches 1 unless score !IdNotFound IdSystem matches 1 run function koorinetwork:network/database/sending/rotate_ids

# Reset Score #
scoreboard players reset !CurrentId IdSystem
scoreboard players reset !FirstIdChecked IdSystem