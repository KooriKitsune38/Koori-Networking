# Error #
#busy_database
execute if score @s MyID matches 2.. if data storage koorinetwork:database DatabaseStatus[{Busy:1b}] run function koorinetwork:network/busy_database_error
#id_already_set
execute if entity @s[tag=IdRegistered] if score @s MyID matches 2.. run function koorinetwork:id_system/id_already_set
#must_be_positive
execute if score @s MyID matches ..-1 run function koorinetwork:id_system/negative_id_error
#no_id_yet
execute if score @s MyID matches 1 unless score @s IdSystem matches -2147483648..2147483647 run function koorinetwork:id_system/no_id_yet

# Tell if 1 #
execute if score @s MyID matches 1 if score @s IdSystem matches -2147483648..2147483647 run tellraw @s [{"text": "Your ID is: ","color": "gold"},{"score": {"name":"@s","objective": "IdSystem"},"color": "aqua"}]

# Store Id #
execute if score @s[tag=!IdRegistered] MyID matches 2.. unless data storage koorinetwork:database DatabaseStatus[{Busy:1b}] run function koorinetwork:id_system/id_requirements

# Reset #
scoreboard players reset @s MyID