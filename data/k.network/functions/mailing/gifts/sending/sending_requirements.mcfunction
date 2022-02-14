#> k.network:mailing/gifts/sending/sending_requirements

# Check IDs
#> Store Triggered ID
scoreboard players operation .triggeredID k.nIDs = @s SendGift
#> Check
function k.network:network/database/cycles/full.search/check.ids

# Say if Id Exists or not #
#Exists
execute if score .matchingID k.nIDs matches 1 run function k.network:mailing/gifts/sending/send_gift
#Doesn't Exists
execute if score .nullID k.nIDs matches 1 run tellraw @s {"text": "The Id you entered doesn't exist.","color": "red"}

# Remove Tags #
scoreboard players reset .matchingID k.nIDs
scoreboard players reset .nullID k.nIDs

# Play Sound #
playsound minecraft:entity.fox.spit ambient @s ~ ~ ~ 2 2