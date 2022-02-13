#> k.network:network/database/cycles/cur.id/check.id
# Retrieve Id #
execute store result score .curID k.nIDs run data get storage k.network:database Users[0].Id
# Rotate Ids #
execute unless score .curID k.nIDs = @s k.nIDs run function k.network:network/database/cycles/cur.id/rot.ids