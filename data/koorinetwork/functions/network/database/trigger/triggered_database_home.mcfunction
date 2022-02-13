scoreboard players reset @s Database

# Errors #
#busy_database
execute if data storage koorinetwork:database DatabaseStatus[{Busy:1b}] run function koorinetwork:network/busy_database_error

# Open Home #
execute unless data storage koorinetwork:database DatabaseStatus[{Busy:1b}] run function koorinetwork:network/database/open_home