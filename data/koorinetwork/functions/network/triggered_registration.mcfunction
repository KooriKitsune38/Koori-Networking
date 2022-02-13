scoreboard players reset @s RegisterNetwork

# Errors #
#no_nick
#execute unless data entity @s[nbt={SelectedItem:{id:"minecraft:written_book"}}] SelectedItem.tag.title run function koorinetwork:network/database/trigger/no_nickname_error
#no_paper
#execute unless entity @s[nbt={SelectedItem:{id:"minecraft:written_book"}}] run function koorinetwork:network/database/trigger/no_paper_error 
#no_id
execute unless score @s IdSystem matches -2147483648..2147483647 run function koorinetwork:network/database/trigger/no_id_error
#already_registered
execute if entity @s[tag=RegisteredToNetwork] run function koorinetwork:network/database/trigger/already_registered
#busy_database
execute if data storage koorinetwork:database DatabaseStatus[{Busy:1b}] run function koorinetwork:network/busy_database_error

# Execute unless you are already registered and holding paper with nickname #
#execute unless entity @s[tag=RegisteredToNetwork] if data entity @s[nbt={SelectedItem:{id:"minecraft:written_book"}}] SelectedItem.tag.title unless data storage koorinetwork:database DatabaseStatus[{Busy:1b}] run function koorinetwork:network/new_user
execute unless entity @s[tag=RegisteredToNetwork] if score @s IdSystem matches -2147483648..2147483647 unless data storage koorinetwork:database DatabaseStatus[{Busy:1b}] run function koorinetwork:network/new_user