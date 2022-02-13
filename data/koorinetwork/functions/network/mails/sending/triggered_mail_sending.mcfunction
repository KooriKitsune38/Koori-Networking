# Store Id #
execute store result score !TriggeredId IdSystem run scoreboard players get @s SendMail

# Errors #
#no_book_in_hand
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:written_book"}}] run function koorinetwork:network/mails/sending/trigger/book_fail
#too_many_books
execute if entity @s[nbt={SelectedItem:{id:"minecraft:written_book"}}] unless entity @s[nbt={SelectedItem:{Count:1b}}] run function koorinetwork:network/mails/sending/trigger/too_many_books
#set_a_number
execute if score @s SendMail matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:written_book"}}] run function koorinetwork:network/mails/sending/trigger/no_number_set
#sending_to_self
#execute if score @s SendMail = @s IdSystem if entity @s[nbt={SelectedItem:{id:"minecraft:written_book",Count:1b}}] run function koorinetwork:network/mails/sending/trigger/sending_to_self
#busy_database
execute if data storage koorinetwork:database DatabaseStatus[{Busy:1b}] run function koorinetwork:network/busy_database_error

# Send Mail #
execute if entity @s[nbt={SelectedItem:{id:"minecraft:written_book",Count:1b}}] unless data storage koorinetwork:database DatabaseStatus[{Busy:1b}] unless score @s SendMail matches 1 run function koorinetwork:network/mails/sending/sending_requirements
#execute unless score @s SendMail = @s IdSystem if entity @s[nbt={SelectedItem:{id:"minecraft:written_book",Count:1b}}] unless data storage koorinetwork:database DatabaseStatus[{Busy:1b}] unless score @s SendMail matches 1 run function koorinetwork:network/mails/sending/sending_requirements

# Reset Id #
scoreboard players reset @s SendMail