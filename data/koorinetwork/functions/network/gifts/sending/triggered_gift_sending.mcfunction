# Store Id #
execute store result score !TriggeredId IdSystem run scoreboard players get @s SendGift

# Errors #
#no_book_in_hand
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:shulker_box"}}] run function koorinetwork:network/gifts/sending/trigger/shulker_box_fail
#set_a_number
execute if score @s SendGift matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:shulker_box"}}] run function koorinetwork:network/gifts/sending/trigger/no_number_set
#sending_to_self
#execute if score @s SendGift = @s IdSystem if entity @s[nbt={SelectedItem:{id:"minecraft:shulker_box"}}] run function koorinetwork:network/gifts/sending/trigger/sending_to_self
#busy_database
execute if data storage koorinetwork:database DatabaseStatus[{Busy:1b}] run function koorinetwork:network/busy_database_error

# Send Mail #
execute if entity @s[nbt={SelectedItem:{id:"minecraft:shulker_box"}}] unless data storage koorinetwork:database DatabaseStatus[{Busy:1b}] unless score @s SendGift matches 1 run function koorinetwork:network/gifts/sending/sending_requirements
#execute unless score @s SendGift = @s IdSystem if entity @s[nbt={SelectedItem:{id:"minecraft:shulker_box"}}] unless data storage koorinetwork:database DatabaseStatus[{Busy:1b}] unless score @s SendGift matches 1 run function koorinetwork:network/gifts/sending/sending_requirements

# Reset Id #
scoreboard players reset @s SendGift