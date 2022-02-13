# Set Database Status To Busy #
data modify storage koorinetwork:database DatabaseStatus[0].Busy set value 1b

# Retrieve Id #
execute store result score !CurrentId IdSystem run data get storage koorinetwork:database Users[0].Id

# Check if there's a mail #
execute if data storage koorinetwork:database Users[0].Mails.Received[1] as @a if score @s IdSystem = !CurrentId IdSystem run function koorinetwork:network/mails/check/tell_its_available
# Check if there's a gift #
execute if data storage koorinetwork:database Users[0].Gifts.Received[1] as @a if score @s IdSystem = !CurrentId IdSystem run function koorinetwork:network/gifts/check/tell_its_available

# Get First Id Checked #
execute unless score !FirstIdChecked IdSystem matches -2147483648..2147483647 store result score !FirstIdChecked IdSystem run data get storage koorinetwork:database Users[0].Id

# Rotate Ids #
execute unless score !CurrentId IdSystem = !FirstIdChecked IdSystem run function koorinetwork:network/database/rotate_ids

# Reset Score #
scoreboard players reset !CurrentId IdSystem
scoreboard players reset !FirstIdChecked IdSystem

# Disable Busy Status #
data modify storage koorinetwork:database DatabaseStatus[0].Busy set value 0b

# Schedule InBox Mail #
schedule function koorinetwork:network/database/schedule_check 300s