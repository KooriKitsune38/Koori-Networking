#> k.network:network/database/cycles/cur.id/rot.ids

# Prepend slot
data modify storage k.network:database Users append from storage k.network:database Users[0]
data remove storage k.network:database Users[0]

# Rotate
function k.network:network/database/cycles/cur.id/check.id