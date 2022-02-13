#> k.network:network/id.system/check.availability
# Check IDs
#> Store Triggered ID
scoreboard players operation .triggeredID k.nIDs = @s MyID
#> Check
function k.network:network/database/cycles/full.search/check.ids

# Say if it exists or not #
#Exists
execute if score .matchingID k.nIDs matches 1 run tellraw @s {"text": "The Id you entered already exists, please choose another.","color": "red"}
#Doesn't Exists
execute if score .nullID k.nIDs matches 1 run function k.network:network/id.system/set_id