#> k.network:network/database/cycles/full.search/check.ids

# Retrieve Ids
#> Current ID
execute store result score .curID k.nIDs run data get storage k.network:database Users[0].Id

# Check IDs
#> Exists
execute store success score .matchingID k.nIDs if score .curID k.nIDs = .triggeredID k.nIDs
#> Doesn't exist
execute store success score .nullID k.nIDs if score .curID k.nIDs = .firstID k.nIDs
#> Scheduling
execute if score .scheduling k.nIDs matches 1 run function k.network:network/database/feedback/check.availability

#> First ID Checked
execute unless score .firstID k.nIDs matches -2147483648..2147483647 store result score .firstID k.nIDs run data get storage k.network:database Users[0].Id

# Rotate Ids
execute unless score .matchingID k.nIDs matches 1 unless score .nullID k.nIDs matches 1 run function k.network:network/database/cycles/full.search/rot.ids

# Reset Score #
scoreboard players reset .firstID k.nIDs