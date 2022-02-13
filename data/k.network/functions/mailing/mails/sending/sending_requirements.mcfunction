#> k.network:mailing/mails/sending/sending_requirements

# Check IDs
#> Store Triggered ID
scoreboard players operation .triggeredID k.nIDs = @s SendMail
#> Check
function k.network:network/database/cycles/full.search/check.ids

# Say if Id Exists or not #
#Exists
execute if score .matchingID k.nIDs matches 1 run function k.network:mailing/mails/sending/send_mail
#Doesn't Exists
execute if score .nullID k.nIDs matches 1 run tellraw @s {"text": "The Id you entered doesn't exist.","color": "red"}

# Play Sound #
playsound minecraft:entity.bee.sting master @s ~ ~ ~ .5 2