#> k.network:network/database/schedule_check

# Set to be scheduling
scoreboard players set .scheduling k.nIDs 1

# Scan
function k.network:network/database/cycles/full.search/check.ids

# Cancel scheduling
scoreboard players set .scheduling k.nIDs 0

# Schedule InBox Mail #
schedule function k.network:network/database/schedule_check 300s