# Copy Id Put for the check #
execute store result score !TriggeredId IdSystem run scoreboard players get @s MyID

# Check Ids #
function koorinetwork:network/database/sending/check_ids
scoreboard players reset !TriggeredId IdSystem

# Say if it exists or not #
#Exists
execute if score !IdExists IdSystem matches 1 run tellraw @s {"text": "The Id you entered already exists, please choose another.","color": "red"}
#Doesn't Exists
execute if score !IdNotFound IdSystem matches 1 run function koorinetwork:id_system/set_id

# Remove Tags #
scoreboard players reset !IdExists IdSystem
scoreboard players reset !IdNotFound IdSystem

# Set Busy Status to Off #
schedule function koorinetwork:network/database/disable_busy_status 5t