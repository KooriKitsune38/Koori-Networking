#> k.network:network/database/cycles/cur.id/check.id

# Busy On
data modify storage k.network:database DatabaseStatus.Busy set value 1b

# Retrieve Id #
execute store result score .curID k.nIDs run data get storage k.network:database Users[0].Id
# Rotate Ids #
execute unless score .curID k.nIDs = @s k.nIDs run function k.network:network/database/cycles/cur.id/rot.ids

# Busy Off
data modify storage k.network:database DatabaseStatus.Busy set value 0b