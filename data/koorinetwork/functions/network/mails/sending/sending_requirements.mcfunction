# Check if Id Exists #
function koorinetwork:network/database/sending/check_ids
scoreboard players reset !TriggeredId IdSystem

# Say if Id Exists or not #
#Exists
execute if score !IdExists IdSystem matches 1 run function koorinetwork:network/mails/sending/send_mail
#Doesn't Exists
execute if score !IdNotFound IdSystem matches 1 run tellraw @s {"text": "The Id you entered doesn't exist.","color": "red"}

# Remove Tags #
scoreboard players reset !IdExists IdSystem
scoreboard players reset !IdNotFound IdSystem

# Set Busy Status to Off #
schedule function koorinetwork:network/database/disable_busy_status 5t

# Play Sound #
playsound minecraft:entity.bee.sting master @s ~ ~ ~ .5 2