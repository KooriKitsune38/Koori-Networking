#> k.network:network/database/cycles/full.search/rot.ids
# Rotate Ids #
data modify storage k.network:database Users append from storage k.network:database Users[0]
data remove storage k.network:database Users[0]

# Rotate if not the same id #
function k.network:network/database/schedule_check